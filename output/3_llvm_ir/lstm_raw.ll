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
  %"cast_ptr" = bitcast ptr %"R3" to ptr
  %".190" = load float, ptr %"cast_ptr"
  %"cast_ptr.1" = bitcast ptr %"R10" to ptr
  %".191" = load float, ptr %"cast_ptr.1"
  %"fadd" = fadd float %".190", %".191"
  %".192" = bitcast ptr %"R3" to ptr
  store float %"fadd", ptr %".192"
  ; FADD R2, R16, R15
  %"cast_ptr.2" = bitcast ptr %"R16" to ptr
  %".195" = load float, ptr %"cast_ptr.2"
  %"cast_ptr.3" = bitcast ptr %"R15" to ptr
  %".196" = load float, ptr %"cast_ptr.3"
  %"fadd.1" = fadd float %".195", %".196"
  %".197" = bitcast ptr %"R2" to ptr
  store float %"fadd.1", ptr %".197"
  ; FADD R0, R20, R19
  %"cast_ptr.4" = bitcast ptr %"R20" to ptr
  %".200" = load float, ptr %"cast_ptr.4"
  %"cast_ptr.5" = bitcast ptr %"R19" to ptr
  %".201" = load float, ptr %"cast_ptr.5"
  %"fadd.2" = fadd float %".200", %".201"
  %".202" = bitcast ptr %"R0" to ptr
  store float %"fadd.2", ptr %".202"
  ; FADD R8, R24, R23
  %"cast_ptr.6" = bitcast ptr %"R24" to ptr
  %".205" = load float, ptr %"cast_ptr.6"
  %"cast_ptr.7" = bitcast ptr %"R23" to ptr
  %".206" = load float, ptr %"cast_ptr.7"
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
  store i32 0, ptr %"R28"
  ; @!P1 BRA `(.L_x_1)
  %".246" = load i1, ptr %"P1"
  %".247" = icmp ne i1 %".246", 1
  br i1 %".247", label %".L_x_1", label %".text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0"
.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0:
  ; IADD3 R42, -R20, c[0x0][0x1ac], RZ
  %".250" = load i32, ptr %"R20"
  %".251" = sub i32 0, %".250"
  %".252" = add i32 %".251", %"Arg_10"
  %".253" = add i32 %".252", 0
  store i32 %".253", ptr %"R42"
  ; IMAD.MOV.U32 R28, RZ, RZ, RZ
  %"imad_mul.13" = mul i32 0, 0
  %"imad_add.13" = add i32 %"imad_mul.13", 0
  store i32 %"imad_add.13", ptr %"R28"
  ; USHF.L.U64.HI UR5, UR7, 0x2, UR6
  %".258" = icmp ult i32 2, 64
  %"SHF_min.1" = select  i1 %".258", i32 2, i32 64
  %".259" = load i32, ptr %"UR6"
  %".260" = load i32, ptr %"UR7"
  %"zext.19" = zext i32 %".259" to i64
  %"zext.20" = zext i32 %".260" to i64
  %"zext.21" = zext i32 2 to i64
  %"shl.10" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.10", %"zext.20"
  %"shl.11" = shl i64 %"or.9", %"zext.21"
  %"lshr" = lshr i64 %"shl.11", 32
  %"trunc32.17" = trunc i64 %"lshr" to i32
  store i32 %"trunc32.17", ptr %"UR5"
  ; USHF.L.U32 UR4, UR7, 0x2, URZ
  %".263" = icmp ult i32 2, 32
  %"SHF_min.2" = select  i1 %".263", i32 2, i32 32
  %".264" = load i32, ptr %"UR7"
  %"zext.22" = zext i32 0 to i64
  %"zext.23" = zext i32 %".264" to i64
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
  %".268" = icmp ult i32 2, 32
  %"SHF_min.3" = select  i1 %".268", i32 2, i32 32
  %".269" = load i32, ptr %"R28"
  %"zext.25" = zext i32 0 to i64
  %"zext.26" = zext i32 %".269" to i64
  %"zext.27" = zext i32 2 to i64
  %"shl.14" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.14", %"zext.26"
  %"shl.15" = shl i64 %"or.11", %"zext.27"
  %"and.1" = and i64 %"shl.15", 4294967295
  %"trunc32.19" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.19", ptr %"R11"
  ; IMAD R30, R7, c[0x0][0x1ac], R28
  %".272" = load i32, ptr %"R7"
  %".273" = load i32, ptr %"R28"
  %"imad_mul.14" = mul i32 %".272", %"Arg_10"
  %"imad_add.14" = add i32 %"imad_mul.14", %".273"
  store i32 %"imad_add.14", ptr %"R30"
  ; IMAD R36, R11, c[0x0][0x1b0], R6
  %".276" = load i32, ptr %"R11"
  %".277" = load i32, ptr %"R6"
  %"imad_mul.15" = mul i32 %".276", %"Arg_11"
  %"imad_add.15" = add i32 %"imad_mul.15", %".277"
  store i32 %"imad_add.15", ptr %"R36"
  ; IMAD.WIDE R30, R30, R9, c[0x0][0x160]
  %".280" = load i32, ptr %"R30"
  %".281" = load i32, ptr %"R9"
  %"imad_ext1.8" = zext i32 %".280" to i64
  %"imad_ext2.8" = zext i32 %".281" to i64
  %"imad_mul.16" = mul i64 %"imad_ext1.8", %"imad_ext2.8"
  %".282" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.16" = add i64 %"imad_mul.16", %".282"
  %".283" = and i64 %"imad_add.16", 18446744069414584320
  %".284" = lshr i64 %".283", 32
  %"trunc32.20" = trunc i64 %".284" to i32
  %"trunc32.21" = trunc i64 %"imad_add.16" to i32
  store i32 %"trunc32.21", ptr %"R30"
  store i32 %"trunc32.20", ptr %"R31"
  ; IMAD.WIDE R36, R36, R9, c[0x0][0x178]
  %".288" = load i32, ptr %"R36"
  %".289" = load i32, ptr %"R9"
  %"imad_ext1.9" = zext i32 %".288" to i64
  %"imad_ext2.9" = zext i32 %".289" to i64
  %"imad_mul.17" = mul i64 %"imad_ext1.9", %"imad_ext2.9"
  %".290" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.17" = add i64 %"imad_mul.17", %".290"
  %".291" = and i64 %"imad_add.17", 18446744069414584320
  %".292" = lshr i64 %".291", 32
  %"trunc32.22" = trunc i64 %".292" to i32
  %"trunc32.23" = trunc i64 %"imad_add.17" to i32
  store i32 %"trunc32.23", ptr %"R36"
  store i32 %"trunc32.22", ptr %"R37"
  ; LDG.E.CONSTANT.SYS R35, [R30]
  %".296" = load i32, ptr %"R30"
  %"zext.28" = zext i32 %".296" to i64
  %".297" = load i32, ptr %"R31"
  %"zext.29" = zext i32 %".297" to i64
  %"shl.16" = shl i64 %"zext.29", 32
  %"or.12" = or i64 %"shl.16", %"zext.28"
  %"inttoptr_bytes.8" = inttoptr i64 %"or.12" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".298" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".299" = bitcast ptr %"R35" to ptr
  store float %".298", ptr %".299"
  ; IADD3 R32, P1, R36, UR4, RZ
  %".302" = load i32, ptr %"R36"
  %".303" = load i32, ptr %"UR4"
  %".304" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".302", i32 %".303")
  %".305" = extractvalue {i32, i1} %".304", 0
  %".306" = extractvalue {i32, i1} %".304", 1
  %".307" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".305", i32 0)
  %".308" = extractvalue {i32, i1} %".307", 0
  %".309" = extractvalue {i32, i1} %".307", 1
  %".310" = or i1 %".306", %".309"
  store i32 %".308", ptr %"R32"
  store i1 %".310", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R29, [R30+0x4]
  %".314" = load i32, ptr %"R30"
  %"zext.30" = zext i32 %".314" to i64
  %".315" = load i32, ptr %"R31"
  %"zext.31" = zext i32 %".315" to i64
  %"shl.17" = shl i64 %"zext.31", 32
  %"or.13" = or i64 %"shl.17", %"zext.30"
  %"ptr_plus_imm" = add i64 %"or.13", 4
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".316" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".317" = bitcast ptr %"R29" to ptr
  store float %".316", ptr %".317"
  ; IADD3.X R33, R37, UR5, RZ, P1, !PT
  %".320" = load i32, ptr %"R37"
  %".321" = load i32, ptr %"UR5"
  %".322" = load i1, ptr %"P1"
  %".323" = xor i1 1, -1
  %".324" = zext i1 %".322" to i32
  %".325" = zext i1 %".323" to i32
  %"add.1" = add i32 %".320", %".321"
  %"add.2" = add i32 %"add.1", 0
  %"add.3" = add i32 %"add.2", %".324"
  %"add.4" = add i32 %"add.3", %".325"
  store i32 %"add.4", ptr %"R33"
  ; IADD3 R38, P1, R32, UR4, RZ
  %".328" = load i32, ptr %"R32"
  %".329" = load i32, ptr %"UR4"
  %".330" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".328", i32 %".329")
  %".331" = extractvalue {i32, i1} %".330", 0
  %".332" = extractvalue {i32, i1} %".330", 1
  %".333" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".331", i32 0)
  %".334" = extractvalue {i32, i1} %".333", 0
  %".335" = extractvalue {i32, i1} %".333", 1
  %".336" = or i1 %".332", %".335"
  store i32 %".334", ptr %"R38"
  store i1 %".336", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R21, [R30+0x8]
  %".340" = load i32, ptr %"R30"
  %"zext.32" = zext i32 %".340" to i64
  %".341" = load i32, ptr %"R31"
  %"zext.33" = zext i32 %".341" to i64
  %"shl.18" = shl i64 %"zext.33", 32
  %"or.14" = or i64 %"shl.18", %"zext.32"
  %"ptr_plus_imm.1" = add i64 %"or.14", 8
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".342" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".343" = bitcast ptr %"R21" to ptr
  store float %".342", ptr %".343"
  ; IADD3.X R39, R33, UR5, RZ, P1, !PT
  %".346" = load i32, ptr %"R33"
  %".347" = load i32, ptr %"UR5"
  %".348" = load i1, ptr %"P1"
  %".349" = xor i1 1, -1
  %".350" = zext i1 %".348" to i32
  %".351" = zext i1 %".349" to i32
  %"add.5" = add i32 %".346", %".347"
  %"add.6" = add i32 %"add.5", 0
  %"add.7" = add i32 %"add.6", %".350"
  %"add.8" = add i32 %"add.7", %".351"
  store i32 %"add.8", ptr %"R39"
  ; LDG.E.CONSTANT.SYS R34, [R30+0xc]
  %".354" = load i32, ptr %"R30"
  %"zext.34" = zext i32 %".354" to i64
  %".355" = load i32, ptr %"R31"
  %"zext.35" = zext i32 %".355" to i64
  %"shl.19" = shl i64 %"zext.35", 32
  %"or.15" = or i64 %"shl.19", %"zext.34"
  %"ptr_plus_imm.2" = add i64 %"or.15", 12
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".356" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".357" = bitcast ptr %"R34" to ptr
  store float %".356", ptr %".357"
  ; IADD3 R22, P1, R38, UR4, RZ
  %".360" = load i32, ptr %"R38"
  %".361" = load i32, ptr %"UR4"
  %".362" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".360", i32 %".361")
  %".363" = extractvalue {i32, i1} %".362", 0
  %".364" = extractvalue {i32, i1} %".362", 1
  %".365" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".363", i32 0)
  %".366" = extractvalue {i32, i1} %".365", 0
  %".367" = extractvalue {i32, i1} %".365", 1
  %".368" = or i1 %".364", %".367"
  store i32 %".366", ptr %"R22"
  store i1 %".368", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R40, [R32]
  %".372" = load i32, ptr %"R32"
  %"zext.36" = zext i32 %".372" to i64
  %".373" = load i32, ptr %"R33"
  %"zext.37" = zext i32 %".373" to i64
  %"shl.20" = shl i64 %"zext.37", 32
  %"or.16" = or i64 %"shl.20", %"zext.36"
  %"inttoptr_bytes.12" = inttoptr i64 %"or.16" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".374" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".375" = bitcast ptr %"R40" to ptr
  store float %".374", ptr %".375"
  ; IADD3.X R23, R39, UR5, RZ, P1, !PT
  %".378" = load i32, ptr %"R39"
  %".379" = load i32, ptr %"UR5"
  %".380" = load i1, ptr %"P1"
  %".381" = xor i1 1, -1
  %".382" = zext i1 %".380" to i32
  %".383" = zext i1 %".381" to i32
  %"add.9" = add i32 %".378", %".379"
  %"add.10" = add i32 %"add.9", 0
  %"add.11" = add i32 %"add.10", %".382"
  %"add.12" = add i32 %"add.11", %".383"
  store i32 %"add.12", ptr %"R23"
  ; IADD3 R12, P1, R22, UR4, RZ
  %".386" = load i32, ptr %"R22"
  %".387" = load i32, ptr %"UR4"
  %".388" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".386", i32 %".387")
  %".389" = extractvalue {i32, i1} %".388", 0
  %".390" = extractvalue {i32, i1} %".388", 1
  %".391" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".389", i32 0)
  %".392" = extractvalue {i32, i1} %".391", 0
  %".393" = extractvalue {i32, i1} %".391", 1
  %".394" = or i1 %".390", %".393"
  store i32 %".392", ptr %"R12"
  store i1 %".394", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R36, [R36]
  %".398" = load i32, ptr %"R36"
  %"zext.38" = zext i32 %".398" to i64
  %".399" = load i32, ptr %"R37"
  %"zext.39" = zext i32 %".399" to i64
  %"shl.21" = shl i64 %"zext.39", 32
  %"or.17" = or i64 %"shl.21", %"zext.38"
  %"inttoptr_bytes.13" = inttoptr i64 %"or.17" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".400" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".401" = bitcast ptr %"R36" to ptr
  store float %".400", ptr %".401"
  ; IADD3.X R13, R23, UR5, RZ, P1, !PT
  %".404" = load i32, ptr %"R23"
  %".405" = load i32, ptr %"UR5"
  %".406" = load i1, ptr %"P1"
  %".407" = xor i1 1, -1
  %".408" = zext i1 %".406" to i32
  %".409" = zext i1 %".407" to i32
  %"add.13" = add i32 %".404", %".405"
  %"add.14" = add i32 %"add.13", 0
  %"add.15" = add i32 %"add.14", %".408"
  %"add.16" = add i32 %"add.15", %".409"
  store i32 %"add.16", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R38, [R38]
  %".412" = load i32, ptr %"R38"
  %"zext.40" = zext i32 %".412" to i64
  %".413" = load i32, ptr %"R39"
  %"zext.41" = zext i32 %".413" to i64
  %"shl.22" = shl i64 %"zext.41", 32
  %"or.18" = or i64 %"shl.22", %"zext.40"
  %"inttoptr_bytes.14" = inttoptr i64 %"or.18" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".414" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".415" = bitcast ptr %"R38" to ptr
  store float %".414", ptr %".415"
  ; IADD3 R18, P1, R12, UR4, RZ
  %".418" = load i32, ptr %"R12"
  %".419" = load i32, ptr %"UR4"
  %".420" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".418", i32 %".419")
  %".421" = extractvalue {i32, i1} %".420", 0
  %".422" = extractvalue {i32, i1} %".420", 1
  %".423" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".421", i32 0)
  %".424" = extractvalue {i32, i1} %".423", 0
  %".425" = extractvalue {i32, i1} %".423", 1
  %".426" = or i1 %".422", %".425"
  store i32 %".424", ptr %"R18"
  store i1 %".426", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R41, [R22]
  %".430" = load i32, ptr %"R22"
  %"zext.42" = zext i32 %".430" to i64
  %".431" = load i32, ptr %"R23"
  %"zext.43" = zext i32 %".431" to i64
  %"shl.23" = shl i64 %"zext.43", 32
  %"or.19" = or i64 %"shl.23", %"zext.42"
  %"inttoptr_bytes.15" = inttoptr i64 %"or.19" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".432" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".433" = bitcast ptr %"R41" to ptr
  store float %".432", ptr %".433"
  ; IADD3.X R19, R13, UR5, RZ, P1, !PT
  %".436" = load i32, ptr %"R13"
  %".437" = load i32, ptr %"UR5"
  %".438" = load i1, ptr %"P1"
  %".439" = xor i1 1, -1
  %".440" = zext i1 %".438" to i32
  %".441" = zext i1 %".439" to i32
  %"add.17" = add i32 %".436", %".437"
  %"add.18" = add i32 %"add.17", 0
  %"add.19" = add i32 %"add.18", %".440"
  %"add.20" = add i32 %"add.19", %".441"
  store i32 %"add.20", ptr %"R19"
  ; IADD3 R14, P1, R18, UR4, RZ
  %".444" = load i32, ptr %"R18"
  %".445" = load i32, ptr %"UR4"
  %".446" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".444", i32 %".445")
  %".447" = extractvalue {i32, i1} %".446", 0
  %".448" = extractvalue {i32, i1} %".446", 1
  %".449" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".447", i32 0)
  %".450" = extractvalue {i32, i1} %".449", 0
  %".451" = extractvalue {i32, i1} %".449", 1
  %".452" = or i1 %".448", %".451"
  store i32 %".450", ptr %"R14"
  store i1 %".452", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R43, [R12]
  %".456" = load i32, ptr %"R12"
  %"zext.44" = zext i32 %".456" to i64
  %".457" = load i32, ptr %"R13"
  %"zext.45" = zext i32 %".457" to i64
  %"shl.24" = shl i64 %"zext.45", 32
  %"or.20" = or i64 %"shl.24", %"zext.44"
  %"inttoptr_bytes.16" = inttoptr i64 %"or.20" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".458" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".459" = bitcast ptr %"R43" to ptr
  store float %".458", ptr %".459"
  ; IADD3.X R15, R19, UR5, RZ, P1, !PT
  %".462" = load i32, ptr %"R19"
  %".463" = load i32, ptr %"UR5"
  %".464" = load i1, ptr %"P1"
  %".465" = xor i1 1, -1
  %".466" = zext i1 %".464" to i32
  %".467" = zext i1 %".465" to i32
  %"add.21" = add i32 %".462", %".463"
  %"add.22" = add i32 %"add.21", 0
  %"add.23" = add i32 %"add.22", %".466"
  %"add.24" = add i32 %"add.23", %".467"
  store i32 %"add.24", ptr %"R15"
  ; IADD3 R10, P1, R14, UR4, RZ
  %".470" = load i32, ptr %"R14"
  %".471" = load i32, ptr %"UR4"
  %".472" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".470", i32 %".471")
  %".473" = extractvalue {i32, i1} %".472", 0
  %".474" = extractvalue {i32, i1} %".472", 1
  %".475" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".473", i32 0)
  %".476" = extractvalue {i32, i1} %".475", 0
  %".477" = extractvalue {i32, i1} %".475", 1
  %".478" = or i1 %".474", %".477"
  store i32 %".476", ptr %"R10"
  store i1 %".478", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R18, [R18]
  %".482" = load i32, ptr %"R18"
  %"zext.46" = zext i32 %".482" to i64
  %".483" = load i32, ptr %"R19"
  %"zext.47" = zext i32 %".483" to i64
  %"shl.25" = shl i64 %"zext.47", 32
  %"or.21" = or i64 %"shl.25", %"zext.46"
  %"inttoptr_bytes.17" = inttoptr i64 %"or.21" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".484" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".485" = bitcast ptr %"R18" to ptr
  store float %".484", ptr %".485"
  ; IADD3.X R11, R15, UR5, RZ, P1, !PT
  %".488" = load i32, ptr %"R15"
  %".489" = load i32, ptr %"UR5"
  %".490" = load i1, ptr %"P1"
  %".491" = xor i1 1, -1
  %".492" = zext i1 %".490" to i32
  %".493" = zext i1 %".491" to i32
  %"add.25" = add i32 %".488", %".489"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".492"
  %"add.28" = add i32 %"add.27", %".493"
  store i32 %"add.28", ptr %"R11"
  ; IADD3 R16, P1, R10, UR4, RZ
  %".496" = load i32, ptr %"R10"
  %".497" = load i32, ptr %"UR4"
  %".498" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".496", i32 %".497")
  %".499" = extractvalue {i32, i1} %".498", 0
  %".500" = extractvalue {i32, i1} %".498", 1
  %".501" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".499", i32 0)
  %".502" = extractvalue {i32, i1} %".501", 0
  %".503" = extractvalue {i32, i1} %".501", 1
  %".504" = or i1 %".500", %".503"
  store i32 %".502", ptr %"R16"
  store i1 %".504", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R14, [R14]
  %".508" = load i32, ptr %"R14"
  %"zext.48" = zext i32 %".508" to i64
  %".509" = load i32, ptr %"R15"
  %"zext.49" = zext i32 %".509" to i64
  %"shl.26" = shl i64 %"zext.49", 32
  %"or.22" = or i64 %"shl.26", %"zext.48"
  %"inttoptr_bytes.18" = inttoptr i64 %"or.22" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".510" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".511" = bitcast ptr %"R14" to ptr
  store float %".510", ptr %".511"
  ; IADD3.X R17, R11, UR5, RZ, P1, !PT
  %".514" = load i32, ptr %"R11"
  %".515" = load i32, ptr %"UR5"
  %".516" = load i1, ptr %"P1"
  %".517" = xor i1 1, -1
  %".518" = zext i1 %".516" to i32
  %".519" = zext i1 %".517" to i32
  %"add.29" = add i32 %".514", %".515"
  %"add.30" = add i32 %"add.29", 0
  %"add.31" = add i32 %"add.30", %".518"
  %"add.32" = add i32 %"add.31", %".519"
  store i32 %"add.32", ptr %"R17"
  ; IADD3 R24, P1, R16, UR4, RZ
  %".522" = load i32, ptr %"R16"
  %".523" = load i32, ptr %"UR4"
  %".524" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".522", i32 %".523")
  %".525" = extractvalue {i32, i1} %".524", 0
  %".526" = extractvalue {i32, i1} %".524", 1
  %".527" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".525", i32 0)
  %".528" = extractvalue {i32, i1} %".527", 0
  %".529" = extractvalue {i32, i1} %".527", 1
  %".530" = or i1 %".526", %".529"
  store i32 %".528", ptr %"R24"
  store i1 %".530", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".534" = load i32, ptr %"R10"
  %"zext.50" = zext i32 %".534" to i64
  %".535" = load i32, ptr %"R11"
  %"zext.51" = zext i32 %".535" to i64
  %"shl.27" = shl i64 %"zext.51", 32
  %"or.23" = or i64 %"shl.27", %"zext.50"
  %"inttoptr_bytes.19" = inttoptr i64 %"or.23" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".536" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".537" = bitcast ptr %"R10" to ptr
  store float %".536", ptr %".537"
  ; IADD3.X R25, R17, UR5, RZ, P1, !PT
  %".540" = load i32, ptr %"R17"
  %".541" = load i32, ptr %"UR5"
  %".542" = load i1, ptr %"P1"
  %".543" = xor i1 1, -1
  %".544" = zext i1 %".542" to i32
  %".545" = zext i1 %".543" to i32
  %"add.33" = add i32 %".540", %".541"
  %"add.34" = add i32 %"add.33", 0
  %"add.35" = add i32 %"add.34", %".544"
  %"add.36" = add i32 %"add.35", %".545"
  store i32 %"add.36", ptr %"R25"
  ; IADD3 R26, P1, R24, UR4, RZ
  %".548" = load i32, ptr %"R24"
  %".549" = load i32, ptr %"UR4"
  %".550" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".548", i32 %".549")
  %".551" = extractvalue {i32, i1} %".550", 0
  %".552" = extractvalue {i32, i1} %".550", 1
  %".553" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".551", i32 0)
  %".554" = extractvalue {i32, i1} %".553", 0
  %".555" = extractvalue {i32, i1} %".553", 1
  %".556" = or i1 %".552", %".555"
  store i32 %".554", ptr %"R26"
  store i1 %".556", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R16, [R16]
  %".560" = load i32, ptr %"R16"
  %"zext.52" = zext i32 %".560" to i64
  %".561" = load i32, ptr %"R17"
  %"zext.53" = zext i32 %".561" to i64
  %"shl.28" = shl i64 %"zext.53", 32
  %"or.24" = or i64 %"shl.28", %"zext.52"
  %"inttoptr_bytes.20" = inttoptr i64 %"or.24" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".562" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".563" = bitcast ptr %"R16" to ptr
  store float %".562", ptr %".563"
  ; IADD3.X R27, R25, UR5, RZ, P1, !PT
  %".566" = load i32, ptr %"R25"
  %".567" = load i32, ptr %"UR5"
  %".568" = load i1, ptr %"P1"
  %".569" = xor i1 1, -1
  %".570" = zext i1 %".568" to i32
  %".571" = zext i1 %".569" to i32
  %"add.37" = add i32 %".566", %".567"
  %"add.38" = add i32 %"add.37", 0
  %"add.39" = add i32 %"add.38", %".570"
  %"add.40" = add i32 %"add.39", %".571"
  store i32 %"add.40", ptr %"R27"
  ; IADD3 R30, P1, R26, UR4, RZ
  %".574" = load i32, ptr %"R26"
  %".575" = load i32, ptr %"UR4"
  %".576" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".574", i32 %".575")
  %".577" = extractvalue {i32, i1} %".576", 0
  %".578" = extractvalue {i32, i1} %".576", 1
  %".579" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".577", i32 0)
  %".580" = extractvalue {i32, i1} %".579", 0
  %".581" = extractvalue {i32, i1} %".579", 1
  %".582" = or i1 %".578", %".581"
  store i32 %".580", ptr %"R30"
  store i1 %".582", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R24, [R24]
  %".586" = load i32, ptr %"R24"
  %"zext.54" = zext i32 %".586" to i64
  %".587" = load i32, ptr %"R25"
  %"zext.55" = zext i32 %".587" to i64
  %"shl.29" = shl i64 %"zext.55", 32
  %"or.25" = or i64 %"shl.29", %"zext.54"
  %"inttoptr_bytes.21" = inttoptr i64 %"or.25" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".588" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".589" = bitcast ptr %"R24" to ptr
  store float %".588", ptr %".589"
  ; IADD3.X R31, R27, UR5, RZ, P1, !PT
  %".592" = load i32, ptr %"R27"
  %".593" = load i32, ptr %"UR5"
  %".594" = load i1, ptr %"P1"
  %".595" = xor i1 1, -1
  %".596" = zext i1 %".594" to i32
  %".597" = zext i1 %".595" to i32
  %"add.41" = add i32 %".592", %".593"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".596"
  %"add.44" = add i32 %"add.43", %".597"
  store i32 %"add.44", ptr %"R31"
  ; IADD3 R32, P1, R30, UR4, RZ
  %".600" = load i32, ptr %"R30"
  %".601" = load i32, ptr %"UR4"
  %".602" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".600", i32 %".601")
  %".603" = extractvalue {i32, i1} %".602", 0
  %".604" = extractvalue {i32, i1} %".602", 1
  %".605" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".603", i32 0)
  %".606" = extractvalue {i32, i1} %".605", 0
  %".607" = extractvalue {i32, i1} %".605", 1
  %".608" = or i1 %".604", %".607"
  store i32 %".606", ptr %"R32"
  store i1 %".608", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R26, [R26]
  %".612" = load i32, ptr %"R26"
  %"zext.56" = zext i32 %".612" to i64
  %".613" = load i32, ptr %"R27"
  %"zext.57" = zext i32 %".613" to i64
  %"shl.30" = shl i64 %"zext.57", 32
  %"or.26" = or i64 %"shl.30", %"zext.56"
  %"inttoptr_bytes.22" = inttoptr i64 %"or.26" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".614" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".615" = bitcast ptr %"R26" to ptr
  store float %".614", ptr %".615"
  ; IADD3.X R33, R31, UR5, RZ, P1, !PT
  %".618" = load i32, ptr %"R31"
  %".619" = load i32, ptr %"UR5"
  %".620" = load i1, ptr %"P1"
  %".621" = xor i1 1, -1
  %".622" = zext i1 %".620" to i32
  %".623" = zext i1 %".621" to i32
  %"add.45" = add i32 %".618", %".619"
  %"add.46" = add i32 %"add.45", 0
  %"add.47" = add i32 %"add.46", %".622"
  %"add.48" = add i32 %"add.47", %".623"
  store i32 %"add.48", ptr %"R33"
  ; IADD3 R22, P1, R32, UR4, RZ
  %".626" = load i32, ptr %"R32"
  %".627" = load i32, ptr %"UR4"
  %".628" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".626", i32 %".627")
  %".629" = extractvalue {i32, i1} %".628", 0
  %".630" = extractvalue {i32, i1} %".628", 1
  %".631" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".629", i32 0)
  %".632" = extractvalue {i32, i1} %".631", 0
  %".633" = extractvalue {i32, i1} %".631", 1
  %".634" = or i1 %".630", %".633"
  store i32 %".632", ptr %"R22"
  store i1 %".634", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R30, [R30]
  %".638" = load i32, ptr %"R30"
  %"zext.58" = zext i32 %".638" to i64
  %".639" = load i32, ptr %"R31"
  %"zext.59" = zext i32 %".639" to i64
  %"shl.31" = shl i64 %"zext.59", 32
  %"or.27" = or i64 %"shl.31", %"zext.58"
  %"inttoptr_bytes.23" = inttoptr i64 %"or.27" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".640" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".641" = bitcast ptr %"R30" to ptr
  store float %".640", ptr %".641"
  ; IADD3.X R23, R33, UR5, RZ, P1, !PT
  %".644" = load i32, ptr %"R33"
  %".645" = load i32, ptr %"UR5"
  %".646" = load i1, ptr %"P1"
  %".647" = xor i1 1, -1
  %".648" = zext i1 %".646" to i32
  %".649" = zext i1 %".647" to i32
  %"add.49" = add i32 %".644", %".645"
  %"add.50" = add i32 %"add.49", 0
  %"add.51" = add i32 %"add.50", %".648"
  %"add.52" = add i32 %"add.51", %".649"
  store i32 %"add.52", ptr %"R23"
  ; IADD3 R12, P1, R22, UR4, RZ
  %".652" = load i32, ptr %"R22"
  %".653" = load i32, ptr %"UR4"
  %".654" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".652", i32 %".653")
  %".655" = extractvalue {i32, i1} %".654", 0
  %".656" = extractvalue {i32, i1} %".654", 1
  %".657" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".655", i32 0)
  %".658" = extractvalue {i32, i1} %".657", 0
  %".659" = extractvalue {i32, i1} %".657", 1
  %".660" = or i1 %".656", %".659"
  store i32 %".658", ptr %"R12"
  store i1 %".660", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R32, [R32]
  %".664" = load i32, ptr %"R32"
  %"zext.60" = zext i32 %".664" to i64
  %".665" = load i32, ptr %"R33"
  %"zext.61" = zext i32 %".665" to i64
  %"shl.32" = shl i64 %"zext.61", 32
  %"or.28" = or i64 %"shl.32", %"zext.60"
  %"inttoptr_bytes.24" = inttoptr i64 %"or.28" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".666" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".667" = bitcast ptr %"R32" to ptr
  store float %".666", ptr %".667"
  ; IADD3.X R13, R23, UR5, RZ, P1, !PT
  %".670" = load i32, ptr %"R23"
  %".671" = load i32, ptr %"UR5"
  %".672" = load i1, ptr %"P1"
  %".673" = xor i1 1, -1
  %".674" = zext i1 %".672" to i32
  %".675" = zext i1 %".673" to i32
  %"add.53" = add i32 %".670", %".671"
  %"add.54" = add i32 %"add.53", 0
  %"add.55" = add i32 %"add.54", %".674"
  %"add.56" = add i32 %"add.55", %".675"
  store i32 %"add.56", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R22, [R22]
  %".678" = load i32, ptr %"R22"
  %"zext.62" = zext i32 %".678" to i64
  %".679" = load i32, ptr %"R23"
  %"zext.63" = zext i32 %".679" to i64
  %"shl.33" = shl i64 %"zext.63", 32
  %"or.29" = or i64 %"shl.33", %"zext.62"
  %"inttoptr_bytes.25" = inttoptr i64 %"or.29" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".680" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".681" = bitcast ptr %"R22" to ptr
  store float %".680", ptr %".681"
  ; LDG.E.CONSTANT.SYS R15, [R12]
  %".684" = load i32, ptr %"R12"
  %"zext.64" = zext i32 %".684" to i64
  %".685" = load i32, ptr %"R13"
  %"zext.65" = zext i32 %".685" to i64
  %"shl.34" = shl i64 %"zext.65", 32
  %"or.30" = or i64 %"shl.34", %"zext.64"
  %"inttoptr_bytes.26" = inttoptr i64 %"or.30" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".686" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".687" = bitcast ptr %"R15" to ptr
  store float %".686", ptr %".687"
  ; LDG.E.CONSTANT.SYS R17, [R12.64+UR4]
  %".690" = load i32, ptr %"R12"
  %"zext.66" = zext i32 %".690" to i64
  %".691" = load i32, ptr %"R13"
  %"zext.67" = zext i32 %".691" to i64
  %"shl.35" = shl i64 %"zext.67", 32
  %"or.31" = or i64 %"shl.35", %"zext.66"
  %"val_UR4" = load i32, ptr %"UR4"
  %"sext_UR4" = sext i32 %"val_UR4" to i64
  %"base_plus_reg_offset" = add i64 %"or.31", %"sext_UR4"
  %"inttoptr_bytes.27" = inttoptr i64 %"base_plus_reg_offset" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".692" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".693" = bitcast ptr %"R17" to ptr
  store float %".692", ptr %".693"
  ; IADD3 R42, R42, -0x4, RZ
  %".696" = load i32, ptr %"R42"
  %".697" = add i32 %".696", -4
  %".698" = add i32 %".697", 0
  store i32 %".698", ptr %"R42"
  ; ISETP.NE.AND P1, PT, R42, RZ, PT
  %".701" = load i32, ptr %"R42"
  %".702" = load i1, ptr %"PT"
  %"cmp.4" = icmp ne i32 %".701", 0
  %".703" = xor i1 %"cmp.4", -1
  %".704" = and i1 %"cmp.4", %".702"
  %".705" = and i1 %".703", %".702"
  store i1 %".704", ptr %"P1"
  ; IADD3 R28, R28, 0x4, RZ
  %".708" = load i32, ptr %"R28"
  %".709" = add i32 %".708", 4
  %".710" = add i32 %".709", 0
  store i32 %".710", ptr %"R28"
  ; FFMA R40, R35.reuse, R40, R2
  %"cast_ptr.8" = bitcast ptr %"R35" to ptr
  %".713" = load float, ptr %"cast_ptr.8"
  %"cast_ptr.9" = bitcast ptr %"R40" to ptr
  %".714" = load float, ptr %"cast_ptr.9"
  %"cast_ptr.10" = bitcast ptr %"R2" to ptr
  %".715" = load float, ptr %"cast_ptr.10"
  %"fmul" = fmul float %".713", %".714"
  %"fadd.4" = fadd float %"fmul", %".715"
  %".716" = bitcast ptr %"R40" to ptr
  store float %"fadd.4", ptr %".716"
  ; FFMA R36, R36, R35, R3
  %"cast_ptr.11" = bitcast ptr %"R36" to ptr
  %".719" = load float, ptr %"cast_ptr.11"
  %"cast_ptr.12" = bitcast ptr %"R35" to ptr
  %".720" = load float, ptr %"cast_ptr.12"
  %"cast_ptr.13" = bitcast ptr %"R3" to ptr
  %".721" = load float, ptr %"cast_ptr.13"
  %"fmul.1" = fmul float %".719", %".720"
  %"fadd.5" = fadd float %"fmul.1", %".721"
  %".722" = bitcast ptr %"R36" to ptr
  store float %"fadd.5", ptr %".722"
  ; FFMA R38, R35.reuse, R38, R0
  %"cast_ptr.14" = bitcast ptr %"R35" to ptr
  %".725" = load float, ptr %"cast_ptr.14"
  %"cast_ptr.15" = bitcast ptr %"R38" to ptr
  %".726" = load float, ptr %"cast_ptr.15"
  %"cast_ptr.16" = bitcast ptr %"R0" to ptr
  %".727" = load float, ptr %"cast_ptr.16"
  %"fmul.2" = fmul float %".725", %".726"
  %"fadd.6" = fadd float %"fmul.2", %".727"
  %".728" = bitcast ptr %"R38" to ptr
  store float %"fadd.6", ptr %".728"
  ; FFMA R8, R35, R41, R8
  %"cast_ptr.17" = bitcast ptr %"R35" to ptr
  %".731" = load float, ptr %"cast_ptr.17"
  %"cast_ptr.18" = bitcast ptr %"R41" to ptr
  %".732" = load float, ptr %"cast_ptr.18"
  %"cast_ptr.19" = bitcast ptr %"R8" to ptr
  %".733" = load float, ptr %"cast_ptr.19"
  %"fmul.3" = fmul float %".731", %".732"
  %"fadd.7" = fadd float %"fmul.3", %".733"
  %".734" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".734"
  ; FFMA R36, R43, R29, R36
  %"cast_ptr.20" = bitcast ptr %"R43" to ptr
  %".737" = load float, ptr %"cast_ptr.20"
  %"cast_ptr.21" = bitcast ptr %"R29" to ptr
  %".738" = load float, ptr %"cast_ptr.21"
  %"cast_ptr.22" = bitcast ptr %"R36" to ptr
  %".739" = load float, ptr %"cast_ptr.22"
  %"fmul.4" = fmul float %".737", %".738"
  %"fadd.8" = fadd float %"fmul.4", %".739"
  %".740" = bitcast ptr %"R36" to ptr
  store float %"fadd.8", ptr %".740"
  ; FFMA R18, R29.reuse, R18, R40
  %"cast_ptr.23" = bitcast ptr %"R29" to ptr
  %".743" = load float, ptr %"cast_ptr.23"
  %"cast_ptr.24" = bitcast ptr %"R18" to ptr
  %".744" = load float, ptr %"cast_ptr.24"
  %"cast_ptr.25" = bitcast ptr %"R40" to ptr
  %".745" = load float, ptr %"cast_ptr.25"
  %"fmul.5" = fmul float %".743", %".744"
  %"fadd.9" = fadd float %"fmul.5", %".745"
  %".746" = bitcast ptr %"R18" to ptr
  store float %"fadd.9", ptr %".746"
  ; FFMA R14, R29.reuse, R14, R38
  %"cast_ptr.26" = bitcast ptr %"R29" to ptr
  %".749" = load float, ptr %"cast_ptr.26"
  %"cast_ptr.27" = bitcast ptr %"R14" to ptr
  %".750" = load float, ptr %"cast_ptr.27"
  %"cast_ptr.28" = bitcast ptr %"R38" to ptr
  %".751" = load float, ptr %"cast_ptr.28"
  %"fmul.6" = fmul float %".749", %".750"
  %"fadd.10" = fadd float %"fmul.6", %".751"
  %".752" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".752"
  ; FFMA R8, R29, R10, R8
  %"cast_ptr.29" = bitcast ptr %"R29" to ptr
  %".755" = load float, ptr %"cast_ptr.29"
  %"cast_ptr.30" = bitcast ptr %"R10" to ptr
  %".756" = load float, ptr %"cast_ptr.30"
  %"cast_ptr.31" = bitcast ptr %"R8" to ptr
  %".757" = load float, ptr %"cast_ptr.31"
  %"fmul.7" = fmul float %".755", %".756"
  %"fadd.11" = fadd float %"fmul.7", %".757"
  %".758" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".758"
  ; FFMA R3, R16, R21, R36
  %"cast_ptr.32" = bitcast ptr %"R16" to ptr
  %".761" = load float, ptr %"cast_ptr.32"
  %"cast_ptr.33" = bitcast ptr %"R21" to ptr
  %".762" = load float, ptr %"cast_ptr.33"
  %"cast_ptr.34" = bitcast ptr %"R36" to ptr
  %".763" = load float, ptr %"cast_ptr.34"
  %"fmul.8" = fmul float %".761", %".762"
  %"fadd.12" = fadd float %"fmul.8", %".763"
  %".764" = bitcast ptr %"R3" to ptr
  store float %"fadd.12", ptr %".764"
  ; FFMA R11, R21.reuse, R24, R18
  %"cast_ptr.35" = bitcast ptr %"R21" to ptr
  %".767" = load float, ptr %"cast_ptr.35"
  %"cast_ptr.36" = bitcast ptr %"R24" to ptr
  %".768" = load float, ptr %"cast_ptr.36"
  %"cast_ptr.37" = bitcast ptr %"R18" to ptr
  %".769" = load float, ptr %"cast_ptr.37"
  %"fmul.9" = fmul float %".767", %".768"
  %"fadd.13" = fadd float %"fmul.9", %".769"
  %".770" = bitcast ptr %"R11" to ptr
  store float %"fadd.13", ptr %".770"
  ; FFMA R13, R21, R26, R14
  %"cast_ptr.38" = bitcast ptr %"R21" to ptr
  %".773" = load float, ptr %"cast_ptr.38"
  %"cast_ptr.39" = bitcast ptr %"R26" to ptr
  %".774" = load float, ptr %"cast_ptr.39"
  %"cast_ptr.40" = bitcast ptr %"R14" to ptr
  %".775" = load float, ptr %"cast_ptr.40"
  %"fmul.10" = fmul float %".773", %".774"
  %"fadd.14" = fadd float %"fmul.10", %".775"
  %".776" = bitcast ptr %"R13" to ptr
  store float %"fadd.14", ptr %".776"
  ; FFMA R21, R21, R30, R8
  %"cast_ptr.41" = bitcast ptr %"R21" to ptr
  %".779" = load float, ptr %"cast_ptr.41"
  %"cast_ptr.42" = bitcast ptr %"R30" to ptr
  %".780" = load float, ptr %"cast_ptr.42"
  %"cast_ptr.43" = bitcast ptr %"R8" to ptr
  %".781" = load float, ptr %"cast_ptr.43"
  %"fmul.11" = fmul float %".779", %".780"
  %"fadd.15" = fadd float %"fmul.11", %".781"
  %".782" = bitcast ptr %"R21" to ptr
  store float %"fadd.15", ptr %".782"
  ; FFMA R3, R32, R34, R3
  %"cast_ptr.44" = bitcast ptr %"R32" to ptr
  %".785" = load float, ptr %"cast_ptr.44"
  %"cast_ptr.45" = bitcast ptr %"R34" to ptr
  %".786" = load float, ptr %"cast_ptr.45"
  %"cast_ptr.46" = bitcast ptr %"R3" to ptr
  %".787" = load float, ptr %"cast_ptr.46"
  %"fmul.12" = fmul float %".785", %".786"
  %"fadd.16" = fadd float %"fmul.12", %".787"
  %".788" = bitcast ptr %"R3" to ptr
  store float %"fadd.16", ptr %".788"
  ; FFMA R2, R34.reuse, R22, R11
  %"cast_ptr.47" = bitcast ptr %"R34" to ptr
  %".791" = load float, ptr %"cast_ptr.47"
  %"cast_ptr.48" = bitcast ptr %"R22" to ptr
  %".792" = load float, ptr %"cast_ptr.48"
  %"cast_ptr.49" = bitcast ptr %"R11" to ptr
  %".793" = load float, ptr %"cast_ptr.49"
  %"fmul.13" = fmul float %".791", %".792"
  %"fadd.17" = fadd float %"fmul.13", %".793"
  %".794" = bitcast ptr %"R2" to ptr
  store float %"fadd.17", ptr %".794"
  ; FFMA R0, R34.reuse, R15, R13
  %"cast_ptr.50" = bitcast ptr %"R34" to ptr
  %".797" = load float, ptr %"cast_ptr.50"
  %"cast_ptr.51" = bitcast ptr %"R15" to ptr
  %".798" = load float, ptr %"cast_ptr.51"
  %"cast_ptr.52" = bitcast ptr %"R13" to ptr
  %".799" = load float, ptr %"cast_ptr.52"
  %"fmul.14" = fmul float %".797", %".798"
  %"fadd.18" = fadd float %"fmul.14", %".799"
  %".800" = bitcast ptr %"R0" to ptr
  store float %"fadd.18", ptr %".800"
  ; FFMA R8, R34, R17, R21
  %"cast_ptr.53" = bitcast ptr %"R34" to ptr
  %".803" = load float, ptr %"cast_ptr.53"
  %"cast_ptr.54" = bitcast ptr %"R17" to ptr
  %".804" = load float, ptr %"cast_ptr.54"
  %"cast_ptr.55" = bitcast ptr %"R21" to ptr
  %".805" = load float, ptr %"cast_ptr.55"
  %"fmul.15" = fmul float %".803", %".804"
  %"fadd.19" = fadd float %"fmul.15", %".805"
  %".806" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".806"
  ; @P1 BRA `(.L_x_2)
  %".809" = load i1, ptr %"P1"
  %".810" = icmp eq i1 %".809", 1
  br i1 %".810", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; @!P0 BRA `(.L_x_0)
  %".813" = load i1, ptr %"P0"
  %".814" = icmp ne i1 %".813", 1
  br i1 %".814", label %".L_x_0", label %".L_x_1_split_0x07b0"
.L_x_1_split_0x07b0:
  ; IMAD R10, R7, c[0x0][0x1ac], R28
  %".817" = load i32, ptr %"R7"
  %".818" = load i32, ptr %"R28"
  %"imad_mul.18" = mul i32 %".817", %"Arg_10"
  %"imad_add.18" = add i32 %"imad_mul.18", %".818"
  store i32 %"imad_add.18", ptr %"R10"
  ; IADD3 R20, -R20, RZ, RZ
  %".821" = load i32, ptr %"R20"
  %".822" = sub i32 0, %".821"
  %".823" = add i32 %".822", 0
  %".824" = add i32 %".823", 0
  store i32 %".824", ptr %"R20"
  ; IMAD R28, R28, c[0x0][0x1b0], RZ
  %".827" = load i32, ptr %"R28"
  %"imad_mul.19" = mul i32 %".827", %"Arg_11"
  %"imad_add.19" = add i32 %"imad_mul.19", 0
  store i32 %"imad_add.19", ptr %"R28"
  ; USHF.L.U64.HI UR5, UR7, 0x2, UR6
  %".830" = icmp ult i32 2, 64
  %"SHF_min.4" = select  i1 %".830", i32 2, i32 64
  %".831" = load i32, ptr %"UR6"
  %".832" = load i32, ptr %"UR7"
  %"zext.68" = zext i32 %".831" to i64
  %"zext.69" = zext i32 %".832" to i64
  %"zext.70" = zext i32 2 to i64
  %"shl.36" = shl i64 %"zext.68", 32
  %"or.32" = or i64 %"shl.36", %"zext.69"
  %"shl.37" = shl i64 %"or.32", %"zext.70"
  %"lshr.1" = lshr i64 %"shl.37", 32
  %"trunc32.24" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.24", ptr %"UR5"
  ; IMAD.WIDE R10, R10, R9, c[0x0][0x160]
  %".835" = load i32, ptr %"R10"
  %".836" = load i32, ptr %"R9"
  %"imad_ext1.10" = zext i32 %".835" to i64
  %"imad_ext2.10" = zext i32 %".836" to i64
  %"imad_mul.20" = mul i64 %"imad_ext1.10", %"imad_ext2.10"
  %".837" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.20" = add i64 %"imad_mul.20", %".837"
  %".838" = and i64 %"imad_add.20", 18446744069414584320
  %".839" = lshr i64 %".838", 32
  %"trunc32.25" = trunc i64 %".839" to i32
  %"trunc32.26" = trunc i64 %"imad_add.20" to i32
  store i32 %"trunc32.26", ptr %"R10"
  store i32 %"trunc32.25", ptr %"R11"
  ; USHF.L.U32 UR4, UR7, 0x2, URZ
  %".843" = icmp ult i32 2, 32
  %"SHF_min.5" = select  i1 %".843", i32 2, i32 32
  %".844" = load i32, ptr %"UR7"
  %"zext.71" = zext i32 0 to i64
  %"zext.72" = zext i32 %".844" to i64
  %"zext.73" = zext i32 2 to i64
  %"shl.38" = shl i64 %"zext.71", 32
  %"or.33" = or i64 %"shl.38", %"zext.72"
  %"shl.39" = shl i64 %"or.33", %"zext.73"
  %"and.2" = and i64 %"shl.39", 4294967295
  %"trunc32.27" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.27", ptr %"UR4"
  ; IMAD R13, R28, 0x4, R5
  %".847" = load i32, ptr %"R28"
  %".848" = load i32, ptr %"R5"
  %"imad_mul.21" = mul i32 %".847", 4
  %"imad_add.21" = add i32 %"imad_mul.21", %".848"
  store i32 %"imad_add.21", ptr %"R13"
  ; MOV R12, R10
  %".851" = load i32, ptr %"R10"
  store i32 %".851", ptr %"R12"
  ; IMAD.MOV.U32 R23, RZ, RZ, R11
  %".854" = load i32, ptr %"R11"
  %"imad_mul.22" = mul i32 0, 0
  %"imad_add.22" = add i32 %"imad_mul.22", %".854"
  store i32 %"imad_add.22", ptr %"R23"
  ; IMAD R18, R4, c[0x0][0x0], R13
  %".857" = load i32, ptr %"R4"
  %"nvvm_blockdim_x.1" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".858" = load i32, ptr %"R13"
  %"imad_mul.23" = mul i32 %".857", %"nvvm_blockdim_x.1"
  %"imad_add.23" = add i32 %"imad_mul.23", %".858"
  store i32 %"imad_add.23", ptr %"R18"
  br label %".L_x_3"
.L_x_3:
  ; IMAD.WIDE R10, R18, R9, c[0x0][0x178]
  %".862" = load i32, ptr %"R18"
  %".863" = load i32, ptr %"R9"
  %"imad_ext1.11" = zext i32 %".862" to i64
  %"imad_ext2.11" = zext i32 %".863" to i64
  %"imad_mul.24" = mul i64 %"imad_ext1.11", %"imad_ext2.11"
  %".864" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.24" = add i64 %"imad_mul.24", %".864"
  %".865" = and i64 %"imad_add.24", 18446744069414584320
  %".866" = lshr i64 %".865", 32
  %"trunc32.28" = trunc i64 %".866" to i32
  %"trunc32.29" = trunc i64 %"imad_add.24" to i32
  store i32 %"trunc32.29", ptr %"R10"
  store i32 %"trunc32.28", ptr %"R11"
  ; IMAD.MOV.U32 R13, RZ, RZ, R23
  %".870" = load i32, ptr %"R23"
  %"imad_mul.25" = mul i32 0, 0
  %"imad_add.25" = add i32 %"imad_mul.25", %".870"
  store i32 %"imad_add.25", ptr %"R13"
  ; IADD3 R14, P0, R10, UR4, RZ
  %".873" = load i32, ptr %"R10"
  %".874" = load i32, ptr %"UR4"
  %".875" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".873", i32 %".874")
  %".876" = extractvalue {i32, i1} %".875", 0
  %".877" = extractvalue {i32, i1} %".875", 1
  %".878" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".876", i32 0)
  %".879" = extractvalue {i32, i1} %".878", 0
  %".880" = extractvalue {i32, i1} %".878", 1
  %".881" = or i1 %".877", %".880"
  store i32 %".879", ptr %"R14"
  store i1 %".881", ptr %"P0"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".885" = load i32, ptr %"R10"
  %"zext.74" = zext i32 %".885" to i64
  %".886" = load i32, ptr %"R11"
  %"zext.75" = zext i32 %".886" to i64
  %"shl.40" = shl i64 %"zext.75", 32
  %"or.34" = or i64 %"shl.40", %"zext.74"
  %"inttoptr_bytes.28" = inttoptr i64 %"or.34" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".887" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".888" = bitcast ptr %"R10" to ptr
  store float %".887", ptr %".888"
  ; IADD3.X R15, R11, UR5, RZ, P0, !PT
  %".891" = load i32, ptr %"R11"
  %".892" = load i32, ptr %"UR5"
  %".893" = load i1, ptr %"P0"
  %".894" = xor i1 1, -1
  %".895" = zext i1 %".893" to i32
  %".896" = zext i1 %".894" to i32
  %"add.57" = add i32 %".891", %".892"
  %"add.58" = add i32 %"add.57", 0
  %"add.59" = add i32 %"add.58", %".895"
  %"add.60" = add i32 %"add.59", %".896"
  store i32 %"add.60", ptr %"R15"
  ; IADD3 R16, P0, R14, UR4, RZ
  %".899" = load i32, ptr %"R14"
  %".900" = load i32, ptr %"UR4"
  %".901" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".899", i32 %".900")
  %".902" = extractvalue {i32, i1} %".901", 0
  %".903" = extractvalue {i32, i1} %".901", 1
  %".904" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".902", i32 0)
  %".905" = extractvalue {i32, i1} %".904", 0
  %".906" = extractvalue {i32, i1} %".904", 1
  %".907" = or i1 %".903", %".906"
  store i32 %".905", ptr %"R16"
  store i1 %".907", ptr %"P0"
  ; LDG.E.CONSTANT.SYS R13, [R12]
  %".911" = load i32, ptr %"R12"
  %"zext.76" = zext i32 %".911" to i64
  %".912" = load i32, ptr %"R13"
  %"zext.77" = zext i32 %".912" to i64
  %"shl.41" = shl i64 %"zext.77", 32
  %"or.35" = or i64 %"shl.41", %"zext.76"
  %"inttoptr_bytes.29" = inttoptr i64 %"or.35" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".913" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".914" = bitcast ptr %"R13" to ptr
  store float %".913", ptr %".914"
  ; IADD3.X R17, R15, UR5, RZ, P0, !PT
  %".917" = load i32, ptr %"R15"
  %".918" = load i32, ptr %"UR5"
  %".919" = load i1, ptr %"P0"
  %".920" = xor i1 1, -1
  %".921" = zext i1 %".919" to i32
  %".922" = zext i1 %".920" to i32
  %"add.61" = add i32 %".917", %".918"
  %"add.62" = add i32 %"add.61", 0
  %"add.63" = add i32 %"add.62", %".921"
  %"add.64" = add i32 %"add.63", %".922"
  store i32 %"add.64", ptr %"R17"
  ; LDG.E.CONSTANT.SYS R14, [R14]
  %".925" = load i32, ptr %"R14"
  %"zext.78" = zext i32 %".925" to i64
  %".926" = load i32, ptr %"R15"
  %"zext.79" = zext i32 %".926" to i64
  %"shl.42" = shl i64 %"zext.79", 32
  %"or.36" = or i64 %"shl.42", %"zext.78"
  %"inttoptr_bytes.30" = inttoptr i64 %"or.36" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".927" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".928" = bitcast ptr %"R14" to ptr
  store float %".927", ptr %".928"
  ; LDG.E.CONSTANT.SYS R19, [R16]
  %".931" = load i32, ptr %"R16"
  %"zext.80" = zext i32 %".931" to i64
  %".932" = load i32, ptr %"R17"
  %"zext.81" = zext i32 %".932" to i64
  %"shl.43" = shl i64 %"zext.81", 32
  %"or.37" = or i64 %"shl.43", %"zext.80"
  %"inttoptr_bytes.31" = inttoptr i64 %"or.37" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".933" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".934" = bitcast ptr %"R19" to ptr
  store float %".933", ptr %".934"
  ; LDG.E.CONSTANT.SYS R21, [R16.64+UR4]
  %".937" = load i32, ptr %"R16"
  %"zext.82" = zext i32 %".937" to i64
  %".938" = load i32, ptr %"R17"
  %"zext.83" = zext i32 %".938" to i64
  %"shl.44" = shl i64 %"zext.83", 32
  %"or.38" = or i64 %"shl.44", %"zext.82"
  %"val_UR4.1" = load i32, ptr %"UR4"
  %"sext_UR4.1" = sext i32 %"val_UR4.1" to i64
  %"base_plus_reg_offset.1" = add i64 %"or.38", %"sext_UR4.1"
  %"inttoptr_bytes.32" = inttoptr i64 %"base_plus_reg_offset.1" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".939" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".940" = bitcast ptr %"R21" to ptr
  store float %".939", ptr %".940"
  ; IADD3 R20, R20, 0x1, RZ
  %".943" = load i32, ptr %"R20"
  %".944" = add i32 %".943", 1
  %".945" = add i32 %".944", 0
  store i32 %".945", ptr %"R20"
  ; ISETP.NE.AND P0, PT, R20, RZ, PT
  %".948" = load i32, ptr %"R20"
  %".949" = load i1, ptr %"PT"
  %"cmp.5" = icmp ne i32 %".948", 0
  %".950" = xor i1 %"cmp.5", -1
  %".951" = and i1 %"cmp.5", %".949"
  %".952" = and i1 %".950", %".949"
  store i1 %".951", ptr %"P0"
  ; MOV R25, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"R25"
  ; IADD3 R12, P1, R12, 0x4, RZ
  %".957" = load i32, ptr %"R12"
  %".958" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".957", i32 4)
  %".959" = extractvalue {i32, i1} %".958", 0
  %".960" = extractvalue {i32, i1} %".958", 1
  %".961" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".959", i32 0)
  %".962" = extractvalue {i32, i1} %".961", 0
  %".963" = extractvalue {i32, i1} %".961", 1
  %".964" = or i1 %".960", %".963"
  store i32 %".962", ptr %"R12"
  store i1 %".964", ptr %"P1"
  ; IMAD R18, R25, 0x4, R18
  %".968" = load i32, ptr %"R25"
  %".969" = load i32, ptr %"R18"
  %"imad_mul.26" = mul i32 %".968", 4
  %"imad_add.26" = add i32 %"imad_mul.26", %".969"
  store i32 %"imad_add.26", ptr %"R18"
  ; IADD3.X R23, RZ, R23, RZ, P1, !PT
  %".972" = load i32, ptr %"R23"
  %".973" = load i1, ptr %"P1"
  %".974" = xor i1 1, -1
  %".975" = zext i1 %".973" to i32
  %".976" = zext i1 %".974" to i32
  %"add.65" = add i32 0, %".972"
  %"add.66" = add i32 %"add.65", 0
  %"add.67" = add i32 %"add.66", %".975"
  %"add.68" = add i32 %"add.67", %".976"
  store i32 %"add.68", ptr %"R23"
  ; FFMA R3, R10, R13, R3
  %"cast_ptr.56" = bitcast ptr %"R10" to ptr
  %".979" = load float, ptr %"cast_ptr.56"
  %"cast_ptr.57" = bitcast ptr %"R13" to ptr
  %".980" = load float, ptr %"cast_ptr.57"
  %"cast_ptr.58" = bitcast ptr %"R3" to ptr
  %".981" = load float, ptr %"cast_ptr.58"
  %"fmul.16" = fmul float %".979", %".980"
  %"fadd.20" = fadd float %"fmul.16", %".981"
  %".982" = bitcast ptr %"R3" to ptr
  store float %"fadd.20", ptr %".982"
  ; FFMA R2, R13.reuse, R14, R2
  %"cast_ptr.59" = bitcast ptr %"R13" to ptr
  %".985" = load float, ptr %"cast_ptr.59"
  %"cast_ptr.60" = bitcast ptr %"R14" to ptr
  %".986" = load float, ptr %"cast_ptr.60"
  %"cast_ptr.61" = bitcast ptr %"R2" to ptr
  %".987" = load float, ptr %"cast_ptr.61"
  %"fmul.17" = fmul float %".985", %".986"
  %"fadd.21" = fadd float %"fmul.17", %".987"
  %".988" = bitcast ptr %"R2" to ptr
  store float %"fadd.21", ptr %".988"
  ; FFMA R0, R13.reuse, R19, R0
  %"cast_ptr.62" = bitcast ptr %"R13" to ptr
  %".991" = load float, ptr %"cast_ptr.62"
  %"cast_ptr.63" = bitcast ptr %"R19" to ptr
  %".992" = load float, ptr %"cast_ptr.63"
  %"cast_ptr.64" = bitcast ptr %"R0" to ptr
  %".993" = load float, ptr %"cast_ptr.64"
  %"fmul.18" = fmul float %".991", %".992"
  %"fadd.22" = fadd float %"fmul.18", %".993"
  %".994" = bitcast ptr %"R0" to ptr
  store float %"fadd.22", ptr %".994"
  ; FFMA R8, R13, R21, R8
  %"cast_ptr.65" = bitcast ptr %"R13" to ptr
  %".997" = load float, ptr %"cast_ptr.65"
  %"cast_ptr.66" = bitcast ptr %"R21" to ptr
  %".998" = load float, ptr %"cast_ptr.66"
  %"cast_ptr.67" = bitcast ptr %"R8" to ptr
  %".999" = load float, ptr %"cast_ptr.67"
  %"fmul.19" = fmul float %".997", %".998"
  %"fadd.23" = fadd float %"fmul.19", %".999"
  %".1000" = bitcast ptr %"R8" to ptr
  store float %"fadd.23", ptr %".1000"
  ; @P0 BRA `(.L_x_3)
  %".1003" = load i1, ptr %"P0"
  %".1004" = icmp eq i1 %".1003", 1
  br i1 %".1004", label %".L_x_3", label %".L_x_0"
.L_x_0:
  ; ULDC UR8, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"UR8"
  ; UISETP.GE.AND UP0, UPT, UR8, 0x1, UPT
  %".1009" = load i32, ptr %"UR8"
  %".1010" = load i1, ptr %"UPT"
  %"unsigned_cmp" = icmp uge i32 %".1009", 1
  %".1011" = xor i1 %"unsigned_cmp", -1
  %".1012" = and i1 %"unsigned_cmp", %".1010"
  %".1013" = and i1 %".1011", %".1010"
  store i1 %".1012", ptr %"UP0"
  store i1 %".1013", ptr %"UPT"
  ; PLOP3.LUT P0, PT, PT, PT, UP0, 0x80, 0x0
  %".1017" = and i1 1, 1
  %".1018" = and i1 %".1017", 1
  ; @!P0 BRA `(.L_x_4)
  %".1020" = load i1, ptr %"P0"
  %".1021" = icmp ne i1 %".1020", 1
  br i1 %".1021", label %".L_x_4", label %".L_x_0_split_0x09f0"
.L_x_0_split_0x09f0:
  ; UIADD3 UR4, UR8, -0x1, URZ
  %".1024" = load i32, ptr %"UR8"
  %".1025" = add i32 %".1024", -1
  %".1026" = add i32 %".1025", 0
  store i32 %".1026", ptr %"UR4"
  ; IMAD.MOV.U32 R22, RZ, RZ, RZ
  %"imad_mul.27" = mul i32 0, 0
  %"imad_add.27" = add i32 %"imad_mul.27", 0
  store i32 %"imad_add.27", ptr %"R22"
  ; ULOP3.LUT UP1, URZ, UR8, 0x3, URZ, 0xc0, !UPT
  %".1031" = load i32, ptr %"UR8"
  %".1032" = xor i1 1, -1
  %".1033" = and i32 %".1031", 3
  store i32 %".1033", ptr %"URZ"
  %".1035" = icmp ne i32 %".1033", 0
  store i1 %".1035", ptr %"UP1"
  ; UISETP.GE.U32.AND UP0, UPT, UR4, 0x3, UPT
  %".1038" = load i32, ptr %"UR4"
  %".1039" = load i1, ptr %"UPT"
  %"unsigned_cmp.1" = icmp uge i32 %".1038", 3
  %".1040" = xor i1 %"unsigned_cmp.1", -1
  %".1041" = and i1 %"unsigned_cmp.1", %".1039"
  %".1042" = and i1 %".1040", %".1039"
  store i1 %".1041", ptr %"UP0"
  store i1 %".1042", ptr %"UPT"
  ; ULOP3.LUT UR6, UR8, 0x3, URZ, 0xc0, !UPT
  %".1046" = load i32, ptr %"UR8"
  %".1047" = xor i1 1, -1
  %".1048" = and i32 %".1046", 3
  store i32 %".1048", ptr %"UR6"
  ; PLOP3.LUT P0, PT, PT, PT, UP1, 0x80, 0x0
  %".1051" = and i1 1, 1
  %".1052" = and i1 %".1051", 1
  ; PLOP3.LUT P1, PT, PT, PT, UP0, 0x80, 0x0
  %".1054" = and i1 1, 1
  %".1055" = and i1 %".1054", 1
  ; @!P1 BRA `(.L_x_5)
  %".1057" = load i1, ptr %"P1"
  %".1058" = icmp ne i1 %".1057", 1
  br i1 %".1058", label %".L_x_5", label %".L_x_0_split_0x0a70"
.L_x_0_split_0x0a70:
  ; USHF.R.S32.HI UR4, URZ, 0x1f, UR8
  %".1061" = icmp ult i32 31, 32
  %"SHF_min.6" = select  i1 %".1061", i32 31, i32 32
  %".1062" = load i32, ptr %"UR8"
  %"zext.84" = zext i32 %".1062" to i64
  %"zext.85" = zext i32 0 to i64
  %"zext.86" = zext i32 31 to i64
  %"shl.45" = shl i64 %"zext.84", 32
  %"or.39" = or i64 %"shl.45", %"zext.85"
  %"ashr.2" = ashr i64 %"or.39", %"zext.86"
  %"ashr.3" = ashr i64 %"ashr.2", 32
  %"trunc32.30" = trunc i64 %"ashr.3" to i32
  store i32 %"trunc32.30", ptr %"UR4"
  ; MOV R22, RZ
  store i32 0, ptr %"R22"
  ; ULDC UR7, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"UR7"
  ; USHF.L.U32 UR9, UR8, 0x2, URZ
  %".1069" = icmp ult i32 2, 32
  %"SHF_min.7" = select  i1 %".1069", i32 2, i32 32
  %".1070" = load i32, ptr %"UR8"
  %"zext.87" = zext i32 0 to i64
  %"zext.88" = zext i32 %".1070" to i64
  %"zext.89" = zext i32 2 to i64
  %"shl.46" = shl i64 %"zext.87", 32
  %"or.40" = or i64 %"shl.46", %"zext.88"
  %"shl.47" = shl i64 %"or.40", %"zext.89"
  %"and.3" = and i64 %"shl.47", 4294967295
  %"trunc32.31" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.31", ptr %"UR9"
  ; UIADD3 UR7, -UR6, UR7, URZ
  %".1073" = load i32, ptr %"UR6"
  %".1074" = sub i32 0, %".1073"
  %".1075" = load i32, ptr %"UR7"
  %".1076" = add i32 %".1074", %".1075"
  %".1077" = add i32 %".1076", 0
  store i32 %".1077", ptr %"UR7"
  ; USHF.L.U64.HI UR5, UR8, 0x2, UR4
  %".1080" = icmp ult i32 2, 64
  %"SHF_min.8" = select  i1 %".1080", i32 2, i32 64
  %".1081" = load i32, ptr %"UR4"
  %".1082" = load i32, ptr %"UR8"
  %"zext.90" = zext i32 %".1081" to i64
  %"zext.91" = zext i32 %".1082" to i64
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
  %".1086" = load i32, ptr %"R22"
  %"imad_shl" = shl i32 %".1086", 4
  %"imad_add.28" = add i32 %"imad_shl", 0
  store i32 %"imad_add.28", ptr %"R11"
  ; IMAD R28, R7, c[0x0][0x1b0], R22
  %".1089" = load i32, ptr %"R7"
  %".1090" = load i32, ptr %"R22"
  %"imad_mul.28" = mul i32 %".1089", %"Arg_11"
  %"imad_add.29" = add i32 %"imad_mul.28", %".1090"
  store i32 %"imad_add.29", ptr %"R28"
  ; IMAD R30, R11, c[0x0][0x1b0], R6
  %".1093" = load i32, ptr %"R11"
  %".1094" = load i32, ptr %"R6"
  %"imad_mul.29" = mul i32 %".1093", %"Arg_11"
  %"imad_add.30" = add i32 %"imad_mul.29", %".1094"
  store i32 %"imad_add.30", ptr %"R30"
  ; IMAD.WIDE R28, R28, R9, c[0x0][0x168]
  %".1097" = load i32, ptr %"R28"
  %".1098" = load i32, ptr %"R9"
  %"imad_ext1.12" = zext i32 %".1097" to i64
  %"imad_ext2.12" = zext i32 %".1098" to i64
  %"imad_mul.30" = mul i64 %"imad_ext1.12", %"imad_ext2.12"
  %".1099" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.31" = add i64 %"imad_mul.30", %".1099"
  %".1100" = and i64 %"imad_add.31", 18446744069414584320
  %".1101" = lshr i64 %".1100", 32
  %"trunc32.33" = trunc i64 %".1101" to i32
  %"trunc32.34" = trunc i64 %"imad_add.31" to i32
  store i32 %"trunc32.34", ptr %"R28"
  store i32 %"trunc32.33", ptr %"R29"
  ; IMAD.WIDE R30, R30, R9, c[0x0][0x180]
  %".1105" = load i32, ptr %"R30"
  %".1106" = load i32, ptr %"R9"
  %"imad_ext1.13" = zext i32 %".1105" to i64
  %"imad_ext2.13" = zext i32 %".1106" to i64
  %"imad_mul.31" = mul i64 %"imad_ext1.13", %"imad_ext2.13"
  %".1107" = ptrtoint ptr %"Arg_4" to i64
  %"imad_add.32" = add i64 %"imad_mul.31", %".1107"
  %".1108" = and i64 %"imad_add.32", 18446744069414584320
  %".1109" = lshr i64 %".1108", 32
  %"trunc32.35" = trunc i64 %".1109" to i32
  %"trunc32.36" = trunc i64 %"imad_add.32" to i32
  store i32 %"trunc32.36", ptr %"R30"
  store i32 %"trunc32.35", ptr %"R31"
  ; LDG.E.CONSTANT.SYS R35, [R28]
  %".1113" = load i32, ptr %"R28"
  %"zext.93" = zext i32 %".1113" to i64
  %".1114" = load i32, ptr %"R29"
  %"zext.94" = zext i32 %".1114" to i64
  %"shl.50" = shl i64 %"zext.94", 32
  %"or.42" = or i64 %"shl.50", %"zext.93"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.42" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".1115" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".1116" = bitcast ptr %"R35" to ptr
  store float %".1115", ptr %".1116"
  ; IADD3 R32, P1, R30, UR9, RZ
  %".1119" = load i32, ptr %"R30"
  %".1120" = load i32, ptr %"UR9"
  %".1121" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1119", i32 %".1120")
  %".1122" = extractvalue {i32, i1} %".1121", 0
  %".1123" = extractvalue {i32, i1} %".1121", 1
  %".1124" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1122", i32 0)
  %".1125" = extractvalue {i32, i1} %".1124", 0
  %".1126" = extractvalue {i32, i1} %".1124", 1
  %".1127" = or i1 %".1123", %".1126"
  store i32 %".1125", ptr %"R32"
  store i1 %".1127", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R26, [R28+0x4]
  %".1131" = load i32, ptr %"R28"
  %"zext.95" = zext i32 %".1131" to i64
  %".1132" = load i32, ptr %"R29"
  %"zext.96" = zext i32 %".1132" to i64
  %"shl.51" = shl i64 %"zext.96", 32
  %"or.43" = or i64 %"shl.51", %"zext.95"
  %"ptr_plus_imm.3" = add i64 %"or.43", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".1133" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".1134" = bitcast ptr %"R26" to ptr
  store float %".1133", ptr %".1134"
  ; IADD3.X R33, R31, UR5, RZ, P1, !PT
  %".1137" = load i32, ptr %"R31"
  %".1138" = load i32, ptr %"UR5"
  %".1139" = load i1, ptr %"P1"
  %".1140" = xor i1 1, -1
  %".1141" = zext i1 %".1139" to i32
  %".1142" = zext i1 %".1140" to i32
  %"add.69" = add i32 %".1137", %".1138"
  %"add.70" = add i32 %"add.69", 0
  %"add.71" = add i32 %"add.70", %".1141"
  %"add.72" = add i32 %"add.71", %".1142"
  store i32 %"add.72", ptr %"R33"
  ; IADD3 R36, P1, R32, UR9, RZ
  %".1145" = load i32, ptr %"R32"
  %".1146" = load i32, ptr %"UR9"
  %".1147" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1145", i32 %".1146")
  %".1148" = extractvalue {i32, i1} %".1147", 0
  %".1149" = extractvalue {i32, i1} %".1147", 1
  %".1150" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1148", i32 0)
  %".1151" = extractvalue {i32, i1} %".1150", 0
  %".1152" = extractvalue {i32, i1} %".1150", 1
  %".1153" = or i1 %".1149", %".1152"
  store i32 %".1151", ptr %"R36"
  store i1 %".1153", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R23, [R28+0x8]
  %".1157" = load i32, ptr %"R28"
  %"zext.97" = zext i32 %".1157" to i64
  %".1158" = load i32, ptr %"R29"
  %"zext.98" = zext i32 %".1158" to i64
  %"shl.52" = shl i64 %"zext.98", 32
  %"or.44" = or i64 %"shl.52", %"zext.97"
  %"ptr_plus_imm.4" = add i64 %"or.44", 8
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".1159" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".1160" = bitcast ptr %"R23" to ptr
  store float %".1159", ptr %".1160"
  ; IADD3.X R37, R33, UR5, RZ, P1, !PT
  %".1163" = load i32, ptr %"R33"
  %".1164" = load i32, ptr %"UR5"
  %".1165" = load i1, ptr %"P1"
  %".1166" = xor i1 1, -1
  %".1167" = zext i1 %".1165" to i32
  %".1168" = zext i1 %".1166" to i32
  %"add.73" = add i32 %".1163", %".1164"
  %"add.74" = add i32 %"add.73", 0
  %"add.75" = add i32 %"add.74", %".1167"
  %"add.76" = add i32 %"add.75", %".1168"
  store i32 %"add.76", ptr %"R37"
  ; LDG.E.CONSTANT.SYS R27, [R28+0xc]
  %".1171" = load i32, ptr %"R28"
  %"zext.99" = zext i32 %".1171" to i64
  %".1172" = load i32, ptr %"R29"
  %"zext.100" = zext i32 %".1172" to i64
  %"shl.53" = shl i64 %"zext.100", 32
  %"or.45" = or i64 %"shl.53", %"zext.99"
  %"ptr_plus_imm.5" = add i64 %"or.45", 12
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".1173" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".1174" = bitcast ptr %"R27" to ptr
  store float %".1173", ptr %".1174"
  ; IADD3 R38, P1, R36, UR9, RZ
  %".1177" = load i32, ptr %"R36"
  %".1178" = load i32, ptr %"UR9"
  %".1179" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1177", i32 %".1178")
  %".1180" = extractvalue {i32, i1} %".1179", 0
  %".1181" = extractvalue {i32, i1} %".1179", 1
  %".1182" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1180", i32 0)
  %".1183" = extractvalue {i32, i1} %".1182", 0
  %".1184" = extractvalue {i32, i1} %".1182", 1
  %".1185" = or i1 %".1181", %".1184"
  store i32 %".1183", ptr %"R38"
  store i1 %".1185", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R34, [R30]
  %".1189" = load i32, ptr %"R30"
  %"zext.101" = zext i32 %".1189" to i64
  %".1190" = load i32, ptr %"R31"
  %"zext.102" = zext i32 %".1190" to i64
  %"shl.54" = shl i64 %"zext.102", 32
  %"or.46" = or i64 %"shl.54", %"zext.101"
  %"inttoptr_bytes.37" = inttoptr i64 %"or.46" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".1191" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".1192" = bitcast ptr %"R34" to ptr
  store float %".1191", ptr %".1192"
  ; IADD3.X R39, R37, UR5, RZ, P1, !PT
  %".1195" = load i32, ptr %"R37"
  %".1196" = load i32, ptr %"UR5"
  %".1197" = load i1, ptr %"P1"
  %".1198" = xor i1 1, -1
  %".1199" = zext i1 %".1197" to i32
  %".1200" = zext i1 %".1198" to i32
  %"add.77" = add i32 %".1195", %".1196"
  %"add.78" = add i32 %"add.77", 0
  %"add.79" = add i32 %"add.78", %".1199"
  %"add.80" = add i32 %"add.79", %".1200"
  store i32 %"add.80", ptr %"R39"
  ; IADD3 R12, P1, R38, UR9, RZ
  %".1203" = load i32, ptr %"R38"
  %".1204" = load i32, ptr %"UR9"
  %".1205" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1203", i32 %".1204")
  %".1206" = extractvalue {i32, i1} %".1205", 0
  %".1207" = extractvalue {i32, i1} %".1205", 1
  %".1208" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1206", i32 0)
  %".1209" = extractvalue {i32, i1} %".1208", 0
  %".1210" = extractvalue {i32, i1} %".1208", 1
  %".1211" = or i1 %".1207", %".1210"
  store i32 %".1209", ptr %"R12"
  store i1 %".1211", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R40, [R32]
  %".1215" = load i32, ptr %"R32"
  %"zext.103" = zext i32 %".1215" to i64
  %".1216" = load i32, ptr %"R33"
  %"zext.104" = zext i32 %".1216" to i64
  %"shl.55" = shl i64 %"zext.104", 32
  %"or.47" = or i64 %"shl.55", %"zext.103"
  %"inttoptr_bytes.38" = inttoptr i64 %"or.47" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".1217" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".1218" = bitcast ptr %"R40" to ptr
  store float %".1217", ptr %".1218"
  ; IADD3.X R13, R39, UR5, RZ, P1, !PT
  %".1221" = load i32, ptr %"R39"
  %".1222" = load i32, ptr %"UR5"
  %".1223" = load i1, ptr %"P1"
  %".1224" = xor i1 1, -1
  %".1225" = zext i1 %".1223" to i32
  %".1226" = zext i1 %".1224" to i32
  %"add.81" = add i32 %".1221", %".1222"
  %"add.82" = add i32 %"add.81", 0
  %"add.83" = add i32 %"add.82", %".1225"
  %"add.84" = add i32 %"add.83", %".1226"
  store i32 %"add.84", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R36, [R36]
  %".1229" = load i32, ptr %"R36"
  %"zext.105" = zext i32 %".1229" to i64
  %".1230" = load i32, ptr %"R37"
  %"zext.106" = zext i32 %".1230" to i64
  %"shl.56" = shl i64 %"zext.106", 32
  %"or.48" = or i64 %"shl.56", %"zext.105"
  %"inttoptr_bytes.39" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".1231" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".1232" = bitcast ptr %"R36" to ptr
  store float %".1231", ptr %".1232"
  ; IADD3 R18, P1, R12, UR9, RZ
  %".1235" = load i32, ptr %"R12"
  %".1236" = load i32, ptr %"UR9"
  %".1237" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1235", i32 %".1236")
  %".1238" = extractvalue {i32, i1} %".1237", 0
  %".1239" = extractvalue {i32, i1} %".1237", 1
  %".1240" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1238", i32 0)
  %".1241" = extractvalue {i32, i1} %".1240", 0
  %".1242" = extractvalue {i32, i1} %".1240", 1
  %".1243" = or i1 %".1239", %".1242"
  store i32 %".1241", ptr %"R18"
  store i1 %".1243", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R38, [R38]
  %".1247" = load i32, ptr %"R38"
  %"zext.107" = zext i32 %".1247" to i64
  %".1248" = load i32, ptr %"R39"
  %"zext.108" = zext i32 %".1248" to i64
  %"shl.57" = shl i64 %"zext.108", 32
  %"or.49" = or i64 %"shl.57", %"zext.107"
  %"inttoptr_bytes.40" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".1249" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".1250" = bitcast ptr %"R38" to ptr
  store float %".1249", ptr %".1250"
  ; IADD3.X R19, R13, UR5, RZ, P1, !PT
  %".1253" = load i32, ptr %"R13"
  %".1254" = load i32, ptr %"UR5"
  %".1255" = load i1, ptr %"P1"
  %".1256" = xor i1 1, -1
  %".1257" = zext i1 %".1255" to i32
  %".1258" = zext i1 %".1256" to i32
  %"add.85" = add i32 %".1253", %".1254"
  %"add.86" = add i32 %"add.85", 0
  %"add.87" = add i32 %"add.86", %".1257"
  %"add.88" = add i32 %"add.87", %".1258"
  store i32 %"add.88", ptr %"R19"
  ; IADD3 R14, P1, R18, UR9, RZ
  %".1261" = load i32, ptr %"R18"
  %".1262" = load i32, ptr %"UR9"
  %".1263" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1261", i32 %".1262")
  %".1264" = extractvalue {i32, i1} %".1263", 0
  %".1265" = extractvalue {i32, i1} %".1263", 1
  %".1266" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1264", i32 0)
  %".1267" = extractvalue {i32, i1} %".1266", 0
  %".1268" = extractvalue {i32, i1} %".1266", 1
  %".1269" = or i1 %".1265", %".1268"
  store i32 %".1267", ptr %"R14"
  store i1 %".1269", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R41, [R12]
  %".1273" = load i32, ptr %"R12"
  %"zext.109" = zext i32 %".1273" to i64
  %".1274" = load i32, ptr %"R13"
  %"zext.110" = zext i32 %".1274" to i64
  %"shl.58" = shl i64 %"zext.110", 32
  %"or.50" = or i64 %"shl.58", %"zext.109"
  %"inttoptr_bytes.41" = inttoptr i64 %"or.50" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".1275" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".1276" = bitcast ptr %"R41" to ptr
  store float %".1275", ptr %".1276"
  ; IADD3.X R15, R19, UR5, RZ, P1, !PT
  %".1279" = load i32, ptr %"R19"
  %".1280" = load i32, ptr %"UR5"
  %".1281" = load i1, ptr %"P1"
  %".1282" = xor i1 1, -1
  %".1283" = zext i1 %".1281" to i32
  %".1284" = zext i1 %".1282" to i32
  %"add.89" = add i32 %".1279", %".1280"
  %"add.90" = add i32 %"add.89", 0
  %"add.91" = add i32 %"add.90", %".1283"
  %"add.92" = add i32 %"add.91", %".1284"
  store i32 %"add.92", ptr %"R15"
  ; IADD3 R10, P1, R14, UR9, RZ
  %".1287" = load i32, ptr %"R14"
  %".1288" = load i32, ptr %"UR9"
  %".1289" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1287", i32 %".1288")
  %".1290" = extractvalue {i32, i1} %".1289", 0
  %".1291" = extractvalue {i32, i1} %".1289", 1
  %".1292" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1290", i32 0)
  %".1293" = extractvalue {i32, i1} %".1292", 0
  %".1294" = extractvalue {i32, i1} %".1292", 1
  %".1295" = or i1 %".1291", %".1294"
  store i32 %".1293", ptr %"R10"
  store i1 %".1295", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R18, [R18]
  %".1299" = load i32, ptr %"R18"
  %"zext.111" = zext i32 %".1299" to i64
  %".1300" = load i32, ptr %"R19"
  %"zext.112" = zext i32 %".1300" to i64
  %"shl.59" = shl i64 %"zext.112", 32
  %"or.51" = or i64 %"shl.59", %"zext.111"
  %"inttoptr_bytes.42" = inttoptr i64 %"or.51" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".1301" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".1302" = bitcast ptr %"R18" to ptr
  store float %".1301", ptr %".1302"
  ; IADD3.X R11, R15, UR5, RZ, P1, !PT
  %".1305" = load i32, ptr %"R15"
  %".1306" = load i32, ptr %"UR5"
  %".1307" = load i1, ptr %"P1"
  %".1308" = xor i1 1, -1
  %".1309" = zext i1 %".1307" to i32
  %".1310" = zext i1 %".1308" to i32
  %"add.93" = add i32 %".1305", %".1306"
  %"add.94" = add i32 %"add.93", 0
  %"add.95" = add i32 %"add.94", %".1309"
  %"add.96" = add i32 %"add.95", %".1310"
  store i32 %"add.96", ptr %"R11"
  ; IADD3 R16, P1, R10, UR9, RZ
  %".1313" = load i32, ptr %"R10"
  %".1314" = load i32, ptr %"UR9"
  %".1315" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1313", i32 %".1314")
  %".1316" = extractvalue {i32, i1} %".1315", 0
  %".1317" = extractvalue {i32, i1} %".1315", 1
  %".1318" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1316", i32 0)
  %".1319" = extractvalue {i32, i1} %".1318", 0
  %".1320" = extractvalue {i32, i1} %".1318", 1
  %".1321" = or i1 %".1317", %".1320"
  store i32 %".1319", ptr %"R16"
  store i1 %".1321", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R14, [R14]
  %".1325" = load i32, ptr %"R14"
  %"zext.113" = zext i32 %".1325" to i64
  %".1326" = load i32, ptr %"R15"
  %"zext.114" = zext i32 %".1326" to i64
  %"shl.60" = shl i64 %"zext.114", 32
  %"or.52" = or i64 %"shl.60", %"zext.113"
  %"inttoptr_bytes.43" = inttoptr i64 %"or.52" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".1327" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".1328" = bitcast ptr %"R14" to ptr
  store float %".1327", ptr %".1328"
  ; IADD3.X R17, R11, UR5, RZ, P1, !PT
  %".1331" = load i32, ptr %"R11"
  %".1332" = load i32, ptr %"UR5"
  %".1333" = load i1, ptr %"P1"
  %".1334" = xor i1 1, -1
  %".1335" = zext i1 %".1333" to i32
  %".1336" = zext i1 %".1334" to i32
  %"add.97" = add i32 %".1331", %".1332"
  %"add.98" = add i32 %"add.97", 0
  %"add.99" = add i32 %"add.98", %".1335"
  %"add.100" = add i32 %"add.99", %".1336"
  store i32 %"add.100", ptr %"R17"
  ; IADD3 R24, P1, R16, UR9, RZ
  %".1339" = load i32, ptr %"R16"
  %".1340" = load i32, ptr %"UR9"
  %".1341" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1339", i32 %".1340")
  %".1342" = extractvalue {i32, i1} %".1341", 0
  %".1343" = extractvalue {i32, i1} %".1341", 1
  %".1344" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1342", i32 0)
  %".1345" = extractvalue {i32, i1} %".1344", 0
  %".1346" = extractvalue {i32, i1} %".1344", 1
  %".1347" = or i1 %".1343", %".1346"
  store i32 %".1345", ptr %"R24"
  store i1 %".1347", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".1351" = load i32, ptr %"R10"
  %"zext.115" = zext i32 %".1351" to i64
  %".1352" = load i32, ptr %"R11"
  %"zext.116" = zext i32 %".1352" to i64
  %"shl.61" = shl i64 %"zext.116", 32
  %"or.53" = or i64 %"shl.61", %"zext.115"
  %"inttoptr_bytes.44" = inttoptr i64 %"or.53" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".1353" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".1354" = bitcast ptr %"R10" to ptr
  store float %".1353", ptr %".1354"
  ; IADD3.X R25, R17, UR5, RZ, P1, !PT
  %".1357" = load i32, ptr %"R17"
  %".1358" = load i32, ptr %"UR5"
  %".1359" = load i1, ptr %"P1"
  %".1360" = xor i1 1, -1
  %".1361" = zext i1 %".1359" to i32
  %".1362" = zext i1 %".1360" to i32
  %"add.101" = add i32 %".1357", %".1358"
  %"add.102" = add i32 %"add.101", 0
  %"add.103" = add i32 %"add.102", %".1361"
  %"add.104" = add i32 %"add.103", %".1362"
  store i32 %"add.104", ptr %"R25"
  ; IADD3 R20, P1, R24, UR9, RZ
  %".1365" = load i32, ptr %"R24"
  %".1366" = load i32, ptr %"UR9"
  %".1367" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1365", i32 %".1366")
  %".1368" = extractvalue {i32, i1} %".1367", 0
  %".1369" = extractvalue {i32, i1} %".1367", 1
  %".1370" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1368", i32 0)
  %".1371" = extractvalue {i32, i1} %".1370", 0
  %".1372" = extractvalue {i32, i1} %".1370", 1
  %".1373" = or i1 %".1369", %".1372"
  store i32 %".1371", ptr %"R20"
  store i1 %".1373", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R16, [R16]
  %".1377" = load i32, ptr %"R16"
  %"zext.117" = zext i32 %".1377" to i64
  %".1378" = load i32, ptr %"R17"
  %"zext.118" = zext i32 %".1378" to i64
  %"shl.62" = shl i64 %"zext.118", 32
  %"or.54" = or i64 %"shl.62", %"zext.117"
  %"inttoptr_bytes.45" = inttoptr i64 %"or.54" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".1379" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".1380" = bitcast ptr %"R16" to ptr
  store float %".1379", ptr %".1380"
  ; IADD3.X R21, R25, UR5, RZ, P1, !PT
  %".1383" = load i32, ptr %"R25"
  %".1384" = load i32, ptr %"UR5"
  %".1385" = load i1, ptr %"P1"
  %".1386" = xor i1 1, -1
  %".1387" = zext i1 %".1385" to i32
  %".1388" = zext i1 %".1386" to i32
  %"add.105" = add i32 %".1383", %".1384"
  %"add.106" = add i32 %"add.105", 0
  %"add.107" = add i32 %"add.106", %".1387"
  %"add.108" = add i32 %"add.107", %".1388"
  store i32 %"add.108", ptr %"R21"
  ; IADD3 R28, P1, R20, UR9, RZ
  %".1391" = load i32, ptr %"R20"
  %".1392" = load i32, ptr %"UR9"
  %".1393" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1391", i32 %".1392")
  %".1394" = extractvalue {i32, i1} %".1393", 0
  %".1395" = extractvalue {i32, i1} %".1393", 1
  %".1396" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1394", i32 0)
  %".1397" = extractvalue {i32, i1} %".1396", 0
  %".1398" = extractvalue {i32, i1} %".1396", 1
  %".1399" = or i1 %".1395", %".1398"
  store i32 %".1397", ptr %"R28"
  store i1 %".1399", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R24, [R24]
  %".1403" = load i32, ptr %"R24"
  %"zext.119" = zext i32 %".1403" to i64
  %".1404" = load i32, ptr %"R25"
  %"zext.120" = zext i32 %".1404" to i64
  %"shl.63" = shl i64 %"zext.120", 32
  %"or.55" = or i64 %"shl.63", %"zext.119"
  %"inttoptr_bytes.46" = inttoptr i64 %"or.55" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".1405" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".1406" = bitcast ptr %"R24" to ptr
  store float %".1405", ptr %".1406"
  ; IADD3.X R29, R21, UR5, RZ, P1, !PT
  %".1409" = load i32, ptr %"R21"
  %".1410" = load i32, ptr %"UR5"
  %".1411" = load i1, ptr %"P1"
  %".1412" = xor i1 1, -1
  %".1413" = zext i1 %".1411" to i32
  %".1414" = zext i1 %".1412" to i32
  %"add.109" = add i32 %".1409", %".1410"
  %"add.110" = add i32 %"add.109", 0
  %"add.111" = add i32 %"add.110", %".1413"
  %"add.112" = add i32 %"add.111", %".1414"
  store i32 %"add.112", ptr %"R29"
  ; IADD3 R30, P1, R28, UR9, RZ
  %".1417" = load i32, ptr %"R28"
  %".1418" = load i32, ptr %"UR9"
  %".1419" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1417", i32 %".1418")
  %".1420" = extractvalue {i32, i1} %".1419", 0
  %".1421" = extractvalue {i32, i1} %".1419", 1
  %".1422" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1420", i32 0)
  %".1423" = extractvalue {i32, i1} %".1422", 0
  %".1424" = extractvalue {i32, i1} %".1422", 1
  %".1425" = or i1 %".1421", %".1424"
  store i32 %".1423", ptr %"R30"
  store i1 %".1425", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R20, [R20]
  %".1429" = load i32, ptr %"R20"
  %"zext.121" = zext i32 %".1429" to i64
  %".1430" = load i32, ptr %"R21"
  %"zext.122" = zext i32 %".1430" to i64
  %"shl.64" = shl i64 %"zext.122", 32
  %"or.56" = or i64 %"shl.64", %"zext.121"
  %"inttoptr_bytes.47" = inttoptr i64 %"or.56" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".1431" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".1432" = bitcast ptr %"R20" to ptr
  store float %".1431", ptr %".1432"
  ; IADD3.X R31, R29, UR5, RZ, P1, !PT
  %".1435" = load i32, ptr %"R29"
  %".1436" = load i32, ptr %"UR5"
  %".1437" = load i1, ptr %"P1"
  %".1438" = xor i1 1, -1
  %".1439" = zext i1 %".1437" to i32
  %".1440" = zext i1 %".1438" to i32
  %"add.113" = add i32 %".1435", %".1436"
  %"add.114" = add i32 %"add.113", 0
  %"add.115" = add i32 %"add.114", %".1439"
  %"add.116" = add i32 %"add.115", %".1440"
  store i32 %"add.116", ptr %"R31"
  ; IADD3 R32, P1, R30, UR9, RZ
  %".1443" = load i32, ptr %"R30"
  %".1444" = load i32, ptr %"UR9"
  %".1445" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1443", i32 %".1444")
  %".1446" = extractvalue {i32, i1} %".1445", 0
  %".1447" = extractvalue {i32, i1} %".1445", 1
  %".1448" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1446", i32 0)
  %".1449" = extractvalue {i32, i1} %".1448", 0
  %".1450" = extractvalue {i32, i1} %".1448", 1
  %".1451" = or i1 %".1447", %".1450"
  store i32 %".1449", ptr %"R32"
  store i1 %".1451", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R28, [R28]
  %".1455" = load i32, ptr %"R28"
  %"zext.123" = zext i32 %".1455" to i64
  %".1456" = load i32, ptr %"R29"
  %"zext.124" = zext i32 %".1456" to i64
  %"shl.65" = shl i64 %"zext.124", 32
  %"or.57" = or i64 %"shl.65", %"zext.123"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".1457" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".1458" = bitcast ptr %"R28" to ptr
  store float %".1457", ptr %".1458"
  ; IADD3.X R33, R31, UR5, RZ, P1, !PT
  %".1461" = load i32, ptr %"R31"
  %".1462" = load i32, ptr %"UR5"
  %".1463" = load i1, ptr %"P1"
  %".1464" = xor i1 1, -1
  %".1465" = zext i1 %".1463" to i32
  %".1466" = zext i1 %".1464" to i32
  %"add.117" = add i32 %".1461", %".1462"
  %"add.118" = add i32 %"add.117", 0
  %"add.119" = add i32 %"add.118", %".1465"
  %"add.120" = add i32 %"add.119", %".1466"
  store i32 %"add.120", ptr %"R33"
  ; IADD3 R12, P1, R32, UR9, RZ
  %".1469" = load i32, ptr %"R32"
  %".1470" = load i32, ptr %"UR9"
  %".1471" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1469", i32 %".1470")
  %".1472" = extractvalue {i32, i1} %".1471", 0
  %".1473" = extractvalue {i32, i1} %".1471", 1
  %".1474" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1472", i32 0)
  %".1475" = extractvalue {i32, i1} %".1474", 0
  %".1476" = extractvalue {i32, i1} %".1474", 1
  %".1477" = or i1 %".1473", %".1476"
  store i32 %".1475", ptr %"R12"
  store i1 %".1477", ptr %"P1"
  ; UMOV UR4, UR9
  %".1481" = load i32, ptr %"UR9"
  store i32 %".1481", ptr %"UR4"
  ; LDG.E.CONSTANT.SYS R30, [R30]
  %".1484" = load i32, ptr %"R30"
  %"zext.125" = zext i32 %".1484" to i64
  %".1485" = load i32, ptr %"R31"
  %"zext.126" = zext i32 %".1485" to i64
  %"shl.66" = shl i64 %"zext.126", 32
  %"or.58" = or i64 %"shl.66", %"zext.125"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".1486" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".1487" = bitcast ptr %"R30" to ptr
  store float %".1486", ptr %".1487"
  ; IADD3.X R13, R33, UR5, RZ, P1, !PT
  %".1490" = load i32, ptr %"R33"
  %".1491" = load i32, ptr %"UR5"
  %".1492" = load i1, ptr %"P1"
  %".1493" = xor i1 1, -1
  %".1494" = zext i1 %".1492" to i32
  %".1495" = zext i1 %".1493" to i32
  %"add.121" = add i32 %".1490", %".1491"
  %"add.122" = add i32 %"add.121", 0
  %"add.123" = add i32 %"add.122", %".1494"
  %"add.124" = add i32 %"add.123", %".1495"
  store i32 %"add.124", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R32, [R32]
  %".1498" = load i32, ptr %"R32"
  %"zext.127" = zext i32 %".1498" to i64
  %".1499" = load i32, ptr %"R33"
  %"zext.128" = zext i32 %".1499" to i64
  %"shl.67" = shl i64 %"zext.128", 32
  %"or.59" = or i64 %"shl.67", %"zext.127"
  %"inttoptr_bytes.50" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".1500" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".1501" = bitcast ptr %"R32" to ptr
  store float %".1500", ptr %".1501"
  ; LDG.E.CONSTANT.SYS R17, [R12]
  %".1504" = load i32, ptr %"R12"
  %"zext.129" = zext i32 %".1504" to i64
  %".1505" = load i32, ptr %"R13"
  %"zext.130" = zext i32 %".1505" to i64
  %"shl.68" = shl i64 %"zext.130", 32
  %"or.60" = or i64 %"shl.68", %"zext.129"
  %"inttoptr_bytes.51" = inttoptr i64 %"or.60" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".1506" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".1507" = bitcast ptr %"R17" to ptr
  store float %".1506", ptr %".1507"
  ; LDG.E.CONSTANT.SYS R19, [R12.64+UR4]
  %".1510" = load i32, ptr %"R12"
  %"zext.131" = zext i32 %".1510" to i64
  %".1511" = load i32, ptr %"R13"
  %"zext.132" = zext i32 %".1511" to i64
  %"shl.69" = shl i64 %"zext.132", 32
  %"or.61" = or i64 %"shl.69", %"zext.131"
  %"val_UR4.2" = load i32, ptr %"UR4"
  %"sext_UR4.2" = sext i32 %"val_UR4.2" to i64
  %"base_plus_reg_offset.2" = add i64 %"or.61", %"sext_UR4.2"
  %"inttoptr_bytes.52" = inttoptr i64 %"base_plus_reg_offset.2" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".1512" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".1513" = bitcast ptr %"R19" to ptr
  store float %".1512", ptr %".1513"
  ; UIADD3 UR7, UR7, -0x4, URZ
  %".1516" = load i32, ptr %"UR7"
  %".1517" = add i32 %".1516", -4
  %".1518" = add i32 %".1517", 0
  store i32 %".1518", ptr %"UR7"
  ; ISETP.NE.AND P1, PT, RZ, UR7, PT
  %".1521" = load i32, ptr %"UR7"
  %".1522" = load i1, ptr %"PT"
  %"cmp.6" = icmp ne i32 0, %".1521"
  %".1523" = xor i1 %"cmp.6", -1
  %".1524" = and i1 %"cmp.6", %".1522"
  %".1525" = and i1 %".1523", %".1522"
  store i1 %".1524", ptr %"P1"
  ; IADD3 R22, R22, 0x4, RZ
  %".1528" = load i32, ptr %"R22"
  %".1529" = add i32 %".1528", 4
  %".1530" = add i32 %".1529", 0
  store i32 %".1530", ptr %"R22"
  ; FFMA R3, R34, R35, R3
  %"cast_ptr.68" = bitcast ptr %"R34" to ptr
  %".1533" = load float, ptr %"cast_ptr.68"
  %"cast_ptr.69" = bitcast ptr %"R35" to ptr
  %".1534" = load float, ptr %"cast_ptr.69"
  %"cast_ptr.70" = bitcast ptr %"R3" to ptr
  %".1535" = load float, ptr %"cast_ptr.70"
  %"fmul.20" = fmul float %".1533", %".1534"
  %"fadd.24" = fadd float %"fmul.20", %".1535"
  %".1536" = bitcast ptr %"R3" to ptr
  store float %"fadd.24", ptr %".1536"
  ; FFMA R11, R35.reuse, R40, R2
  %"cast_ptr.71" = bitcast ptr %"R35" to ptr
  %".1539" = load float, ptr %"cast_ptr.71"
  %"cast_ptr.72" = bitcast ptr %"R40" to ptr
  %".1540" = load float, ptr %"cast_ptr.72"
  %"cast_ptr.73" = bitcast ptr %"R2" to ptr
  %".1541" = load float, ptr %"cast_ptr.73"
  %"fmul.21" = fmul float %".1539", %".1540"
  %"fadd.25" = fadd float %"fmul.21", %".1541"
  %".1542" = bitcast ptr %"R11" to ptr
  store float %"fadd.25", ptr %".1542"
  ; FFMA R15, R35.reuse, R36, R0
  %"cast_ptr.74" = bitcast ptr %"R35" to ptr
  %".1545" = load float, ptr %"cast_ptr.74"
  %"cast_ptr.75" = bitcast ptr %"R36" to ptr
  %".1546" = load float, ptr %"cast_ptr.75"
  %"cast_ptr.76" = bitcast ptr %"R0" to ptr
  %".1547" = load float, ptr %"cast_ptr.76"
  %"fmul.22" = fmul float %".1545", %".1546"
  %"fadd.26" = fadd float %"fmul.22", %".1547"
  %".1548" = bitcast ptr %"R15" to ptr
  store float %"fadd.26", ptr %".1548"
  ; FFMA R35, R35, R38, R8
  %"cast_ptr.77" = bitcast ptr %"R35" to ptr
  %".1551" = load float, ptr %"cast_ptr.77"
  %"cast_ptr.78" = bitcast ptr %"R38" to ptr
  %".1552" = load float, ptr %"cast_ptr.78"
  %"cast_ptr.79" = bitcast ptr %"R8" to ptr
  %".1553" = load float, ptr %"cast_ptr.79"
  %"fmul.23" = fmul float %".1551", %".1552"
  %"fadd.27" = fadd float %"fmul.23", %".1553"
  %".1554" = bitcast ptr %"R35" to ptr
  store float %"fadd.27", ptr %".1554"
  ; FFMA R0, R41, R26, R3
  %"cast_ptr.80" = bitcast ptr %"R41" to ptr
  %".1557" = load float, ptr %"cast_ptr.80"
  %"cast_ptr.81" = bitcast ptr %"R26" to ptr
  %".1558" = load float, ptr %"cast_ptr.81"
  %"cast_ptr.82" = bitcast ptr %"R3" to ptr
  %".1559" = load float, ptr %"cast_ptr.82"
  %"fmul.24" = fmul float %".1557", %".1558"
  %"fadd.28" = fadd float %"fmul.24", %".1559"
  %".1560" = bitcast ptr %"R0" to ptr
  store float %"fadd.28", ptr %".1560"
  ; FFMA R18, R26.reuse, R18, R11
  %"cast_ptr.83" = bitcast ptr %"R26" to ptr
  %".1563" = load float, ptr %"cast_ptr.83"
  %"cast_ptr.84" = bitcast ptr %"R18" to ptr
  %".1564" = load float, ptr %"cast_ptr.84"
  %"cast_ptr.85" = bitcast ptr %"R11" to ptr
  %".1565" = load float, ptr %"cast_ptr.85"
  %"fmul.25" = fmul float %".1563", %".1564"
  %"fadd.29" = fadd float %"fmul.25", %".1565"
  %".1566" = bitcast ptr %"R18" to ptr
  store float %"fadd.29", ptr %".1566"
  ; FFMA R14, R26.reuse, R14, R15
  %"cast_ptr.86" = bitcast ptr %"R26" to ptr
  %".1569" = load float, ptr %"cast_ptr.86"
  %"cast_ptr.87" = bitcast ptr %"R14" to ptr
  %".1570" = load float, ptr %"cast_ptr.87"
  %"cast_ptr.88" = bitcast ptr %"R15" to ptr
  %".1571" = load float, ptr %"cast_ptr.88"
  %"fmul.26" = fmul float %".1569", %".1570"
  %"fadd.30" = fadd float %"fmul.26", %".1571"
  %".1572" = bitcast ptr %"R14" to ptr
  store float %"fadd.30", ptr %".1572"
  ; FFMA R10, R26, R10, R35
  %"cast_ptr.89" = bitcast ptr %"R26" to ptr
  %".1575" = load float, ptr %"cast_ptr.89"
  %"cast_ptr.90" = bitcast ptr %"R10" to ptr
  %".1576" = load float, ptr %"cast_ptr.90"
  %"cast_ptr.91" = bitcast ptr %"R35" to ptr
  %".1577" = load float, ptr %"cast_ptr.91"
  %"fmul.27" = fmul float %".1575", %".1576"
  %"fadd.31" = fadd float %"fmul.27", %".1577"
  %".1578" = bitcast ptr %"R10" to ptr
  store float %"fadd.31", ptr %".1578"
  ; FFMA R0, R16, R23, R0
  %"cast_ptr.92" = bitcast ptr %"R16" to ptr
  %".1581" = load float, ptr %"cast_ptr.92"
  %"cast_ptr.93" = bitcast ptr %"R23" to ptr
  %".1582" = load float, ptr %"cast_ptr.93"
  %"cast_ptr.94" = bitcast ptr %"R0" to ptr
  %".1583" = load float, ptr %"cast_ptr.94"
  %"fmul.28" = fmul float %".1581", %".1582"
  %"fadd.32" = fadd float %"fmul.28", %".1583"
  %".1584" = bitcast ptr %"R0" to ptr
  store float %"fadd.32", ptr %".1584"
  ; FFMA R18, R23.reuse, R24, R18
  %"cast_ptr.95" = bitcast ptr %"R23" to ptr
  %".1587" = load float, ptr %"cast_ptr.95"
  %"cast_ptr.96" = bitcast ptr %"R24" to ptr
  %".1588" = load float, ptr %"cast_ptr.96"
  %"cast_ptr.97" = bitcast ptr %"R18" to ptr
  %".1589" = load float, ptr %"cast_ptr.97"
  %"fmul.29" = fmul float %".1587", %".1588"
  %"fadd.33" = fadd float %"fmul.29", %".1589"
  %".1590" = bitcast ptr %"R18" to ptr
  store float %"fadd.33", ptr %".1590"
  ; FFMA R14, R23, R20, R14
  %"cast_ptr.98" = bitcast ptr %"R23" to ptr
  %".1593" = load float, ptr %"cast_ptr.98"
  %"cast_ptr.99" = bitcast ptr %"R20" to ptr
  %".1594" = load float, ptr %"cast_ptr.99"
  %"cast_ptr.100" = bitcast ptr %"R14" to ptr
  %".1595" = load float, ptr %"cast_ptr.100"
  %"fmul.30" = fmul float %".1593", %".1594"
  %"fadd.34" = fadd float %"fmul.30", %".1595"
  %".1596" = bitcast ptr %"R14" to ptr
  store float %"fadd.34", ptr %".1596"
  ; FFMA R10, R23, R28, R10
  %"cast_ptr.101" = bitcast ptr %"R23" to ptr
  %".1599" = load float, ptr %"cast_ptr.101"
  %"cast_ptr.102" = bitcast ptr %"R28" to ptr
  %".1600" = load float, ptr %"cast_ptr.102"
  %"cast_ptr.103" = bitcast ptr %"R10" to ptr
  %".1601" = load float, ptr %"cast_ptr.103"
  %"fmul.31" = fmul float %".1599", %".1600"
  %"fadd.35" = fadd float %"fmul.31", %".1601"
  %".1602" = bitcast ptr %"R10" to ptr
  store float %"fadd.35", ptr %".1602"
  ; FFMA R3, R30, R27, R0
  %"cast_ptr.104" = bitcast ptr %"R30" to ptr
  %".1605" = load float, ptr %"cast_ptr.104"
  %"cast_ptr.105" = bitcast ptr %"R27" to ptr
  %".1606" = load float, ptr %"cast_ptr.105"
  %"cast_ptr.106" = bitcast ptr %"R0" to ptr
  %".1607" = load float, ptr %"cast_ptr.106"
  %"fmul.32" = fmul float %".1605", %".1606"
  %"fadd.36" = fadd float %"fmul.32", %".1607"
  %".1608" = bitcast ptr %"R3" to ptr
  store float %"fadd.36", ptr %".1608"
  ; FFMA R2, R27.reuse, R32, R18
  %"cast_ptr.107" = bitcast ptr %"R27" to ptr
  %".1611" = load float, ptr %"cast_ptr.107"
  %"cast_ptr.108" = bitcast ptr %"R32" to ptr
  %".1612" = load float, ptr %"cast_ptr.108"
  %"cast_ptr.109" = bitcast ptr %"R18" to ptr
  %".1613" = load float, ptr %"cast_ptr.109"
  %"fmul.33" = fmul float %".1611", %".1612"
  %"fadd.37" = fadd float %"fmul.33", %".1613"
  %".1614" = bitcast ptr %"R2" to ptr
  store float %"fadd.37", ptr %".1614"
  ; FFMA R0, R27.reuse, R17, R14
  %"cast_ptr.110" = bitcast ptr %"R27" to ptr
  %".1617" = load float, ptr %"cast_ptr.110"
  %"cast_ptr.111" = bitcast ptr %"R17" to ptr
  %".1618" = load float, ptr %"cast_ptr.111"
  %"cast_ptr.112" = bitcast ptr %"R14" to ptr
  %".1619" = load float, ptr %"cast_ptr.112"
  %"fmul.34" = fmul float %".1617", %".1618"
  %"fadd.38" = fadd float %"fmul.34", %".1619"
  %".1620" = bitcast ptr %"R0" to ptr
  store float %"fadd.38", ptr %".1620"
  ; FFMA R8, R27, R19, R10
  %"cast_ptr.113" = bitcast ptr %"R27" to ptr
  %".1623" = load float, ptr %"cast_ptr.113"
  %"cast_ptr.114" = bitcast ptr %"R19" to ptr
  %".1624" = load float, ptr %"cast_ptr.114"
  %"cast_ptr.115" = bitcast ptr %"R10" to ptr
  %".1625" = load float, ptr %"cast_ptr.115"
  %"fmul.35" = fmul float %".1623", %".1624"
  %"fadd.39" = fadd float %"fmul.35", %".1625"
  %".1626" = bitcast ptr %"R8" to ptr
  store float %"fadd.39", ptr %".1626"
  ; @P1 BRA `(.L_x_6)
  %".1629" = load i1, ptr %"P1"
  %".1630" = icmp eq i1 %".1629", 1
  br i1 %".1630", label %".L_x_6", label %".L_x_5"
.L_x_5:
  ; @!P0 BRA `(.L_x_4)
  %".1633" = load i1, ptr %"P0"
  %".1634" = icmp ne i1 %".1633", 1
  br i1 %".1634", label %".L_x_4", label %".L_x_5_split_0x0f80"
.L_x_5_split_0x0f80:
  ; IMAD R10, R22, c[0x0][0x1b0], RZ
  %".1637" = load i32, ptr %"R22"
  %"imad_mul.32" = mul i32 %".1637", %"Arg_11"
  %"imad_add.33" = add i32 %"imad_mul.32", 0
  store i32 %"imad_add.33", ptr %"R10"
  ; USHF.R.S32.HI UR4, URZ, 0x1f, UR8
  %".1640" = icmp ult i32 31, 32
  %"SHF_min.9" = select  i1 %".1640", i32 31, i32 32
  %".1641" = load i32, ptr %"UR8"
  %"zext.133" = zext i32 %".1641" to i64
  %"zext.134" = zext i32 0 to i64
  %"zext.135" = zext i32 31 to i64
  %"shl.70" = shl i64 %"zext.133", 32
  %"or.62" = or i64 %"shl.70", %"zext.134"
  %"ashr.4" = ashr i64 %"or.62", %"zext.135"
  %"ashr.5" = ashr i64 %"ashr.4", 32
  %"trunc32.37" = trunc i64 %"ashr.5" to i32
  store i32 %"trunc32.37", ptr %"UR4"
  ; IMAD R22, R7, c[0x0][0x1b0], R22
  %".1644" = load i32, ptr %"R7"
  %".1645" = load i32, ptr %"R22"
  %"imad_mul.33" = mul i32 %".1644", %"Arg_11"
  %"imad_add.34" = add i32 %"imad_mul.33", %".1645"
  store i32 %"imad_add.34", ptr %"R22"
  ; USHF.L.U32 UR7, UR8, 0x2, URZ
  %".1648" = icmp ult i32 2, 32
  %"SHF_min.10" = select  i1 %".1648", i32 2, i32 32
  %".1649" = load i32, ptr %"UR8"
  %"zext.136" = zext i32 0 to i64
  %"zext.137" = zext i32 %".1649" to i64
  %"zext.138" = zext i32 2 to i64
  %"shl.71" = shl i64 %"zext.136", 32
  %"or.63" = or i64 %"shl.71", %"zext.137"
  %"shl.72" = shl i64 %"or.63", %"zext.138"
  %"and.4" = and i64 %"shl.72", 4294967295
  %"trunc32.38" = trunc i64 %"and.4" to i32
  store i32 %"trunc32.38", ptr %"UR7"
  ; LEA R5, R10, R5, 0x2
  %".1652" = load i32, ptr %"R10"
  %".1653" = load i32, ptr %"R5"
  %"shl.73" = shl i32 %".1652", 2
  %"add.125" = add i32 %"shl.73", %".1653"
  store i32 %"add.125", ptr %"R5"
  ; IMAD.WIDE R10, R22, R9, c[0x0][0x168]
  %".1656" = load i32, ptr %"R22"
  %".1657" = load i32, ptr %"R9"
  %"imad_ext1.14" = zext i32 %".1656" to i64
  %"imad_ext2.14" = zext i32 %".1657" to i64
  %"imad_mul.34" = mul i64 %"imad_ext1.14", %"imad_ext2.14"
  %".1658" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.35" = add i64 %"imad_mul.34", %".1658"
  %".1659" = and i64 %"imad_add.35", 18446744069414584320
  %".1660" = lshr i64 %".1659", 32
  %"trunc32.39" = trunc i64 %".1660" to i32
  %"trunc32.40" = trunc i64 %"imad_add.35" to i32
  store i32 %"trunc32.40", ptr %"R10"
  store i32 %"trunc32.39", ptr %"R11"
  ; UIADD3 UR6, -UR6, URZ, URZ
  %".1664" = load i32, ptr %"UR6"
  %".1665" = sub i32 0, %".1664"
  %".1666" = add i32 %".1665", 0
  %".1667" = add i32 %".1666", 0
  store i32 %".1667", ptr %"UR6"
  ; USHF.L.U64.HI UR5, UR8, 0x2, UR4
  %".1670" = icmp ult i32 2, 64
  %"SHF_min.11" = select  i1 %".1670", i32 2, i32 64
  %".1671" = load i32, ptr %"UR4"
  %".1672" = load i32, ptr %"UR8"
  %"zext.139" = zext i32 %".1671" to i64
  %"zext.140" = zext i32 %".1672" to i64
  %"zext.141" = zext i32 2 to i64
  %"shl.74" = shl i64 %"zext.139", 32
  %"or.64" = or i64 %"shl.74", %"zext.140"
  %"shl.75" = shl i64 %"or.64", %"zext.141"
  %"lshr.3" = lshr i64 %"shl.75", 32
  %"trunc32.41" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.41", ptr %"UR5"
  ; IMAD R16, R4, c[0x0][0x0], R5
  %".1675" = load i32, ptr %"R4"
  %"nvvm_blockdim_x.2" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".1676" = load i32, ptr %"R5"
  %"imad_mul.35" = mul i32 %".1675", %"nvvm_blockdim_x.2"
  %"imad_add.36" = add i32 %"imad_mul.35", %".1676"
  store i32 %"imad_add.36", ptr %"R16"
  ; IMAD.MOV.U32 R19, RZ, RZ, R11
  %".1679" = load i32, ptr %"R11"
  %"imad_mul.36" = mul i32 0, 0
  %"imad_add.37" = add i32 %"imad_mul.36", %".1679"
  store i32 %"imad_add.37", ptr %"R19"
  br label %".L_x_7"
.L_x_7:
  ; IMAD.WIDE R4, R16, R9, c[0x0][0x180]
  %".1683" = load i32, ptr %"R16"
  %".1684" = load i32, ptr %"R9"
  %"imad_ext1.15" = zext i32 %".1683" to i64
  %"imad_ext2.15" = zext i32 %".1684" to i64
  %"imad_mul.37" = mul i64 %"imad_ext1.15", %"imad_ext2.15"
  %".1685" = ptrtoint ptr %"Arg_4" to i64
  %"imad_add.38" = add i64 %"imad_mul.37", %".1685"
  %".1686" = and i64 %"imad_add.38", 18446744069414584320
  %".1687" = lshr i64 %".1686", 32
  %"trunc32.42" = trunc i64 %".1687" to i32
  %"trunc32.43" = trunc i64 %"imad_add.38" to i32
  store i32 %"trunc32.43", ptr %"R4"
  store i32 %"trunc32.42", ptr %"R5"
  ; MOV R11, R19
  %".1691" = load i32, ptr %"R19"
  store i32 %".1691", ptr %"R11"
  ; IADD3 R12, P0, R4, UR7, RZ
  %".1694" = load i32, ptr %"R4"
  %".1695" = load i32, ptr %"UR7"
  %".1696" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1694", i32 %".1695")
  %".1697" = extractvalue {i32, i1} %".1696", 0
  %".1698" = extractvalue {i32, i1} %".1696", 1
  %".1699" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1697", i32 0)
  %".1700" = extractvalue {i32, i1} %".1699", 0
  %".1701" = extractvalue {i32, i1} %".1699", 1
  %".1702" = or i1 %".1698", %".1701"
  store i32 %".1700", ptr %"R12"
  store i1 %".1702", ptr %"P0"
  ; UMOV UR4, UR7
  %".1706" = load i32, ptr %"UR7"
  store i32 %".1706", ptr %"UR4"
  ; LDG.E.CONSTANT.SYS R4, [R4]
  %".1709" = load i32, ptr %"R4"
  %"zext.142" = zext i32 %".1709" to i64
  %".1710" = load i32, ptr %"R5"
  %"zext.143" = zext i32 %".1710" to i64
  %"shl.76" = shl i64 %"zext.143", 32
  %"or.65" = or i64 %"shl.76", %"zext.142"
  %"inttoptr_bytes.53" = inttoptr i64 %"or.65" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".1711" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".1712" = bitcast ptr %"R4" to ptr
  store float %".1711", ptr %".1712"
  ; IADD3.X R13, R5, UR5, RZ, P0, !PT
  %".1715" = load i32, ptr %"R5"
  %".1716" = load i32, ptr %"UR5"
  %".1717" = load i1, ptr %"P0"
  %".1718" = xor i1 1, -1
  %".1719" = zext i1 %".1717" to i32
  %".1720" = zext i1 %".1718" to i32
  %"add.126" = add i32 %".1715", %".1716"
  %"add.127" = add i32 %"add.126", 0
  %"add.128" = add i32 %"add.127", %".1719"
  %"add.129" = add i32 %"add.128", %".1720"
  store i32 %"add.129", ptr %"R13"
  ; IADD3 R14, P0, R12, UR7, RZ
  %".1723" = load i32, ptr %"R12"
  %".1724" = load i32, ptr %"UR7"
  %".1725" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1723", i32 %".1724")
  %".1726" = extractvalue {i32, i1} %".1725", 0
  %".1727" = extractvalue {i32, i1} %".1725", 1
  %".1728" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1726", i32 0)
  %".1729" = extractvalue {i32, i1} %".1728", 0
  %".1730" = extractvalue {i32, i1} %".1728", 1
  %".1731" = or i1 %".1727", %".1730"
  store i32 %".1729", ptr %"R14"
  store i1 %".1731", ptr %"P0"
  ; LDG.E.CONSTANT.SYS R11, [R10]
  %".1735" = load i32, ptr %"R10"
  %"zext.144" = zext i32 %".1735" to i64
  %".1736" = load i32, ptr %"R11"
  %"zext.145" = zext i32 %".1736" to i64
  %"shl.77" = shl i64 %"zext.145", 32
  %"or.66" = or i64 %"shl.77", %"zext.144"
  %"inttoptr_bytes.54" = inttoptr i64 %"or.66" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".1737" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".1738" = bitcast ptr %"R11" to ptr
  store float %".1737", ptr %".1738"
  ; IADD3.X R15, R13, UR5, RZ, P0, !PT
  %".1741" = load i32, ptr %"R13"
  %".1742" = load i32, ptr %"UR5"
  %".1743" = load i1, ptr %"P0"
  %".1744" = xor i1 1, -1
  %".1745" = zext i1 %".1743" to i32
  %".1746" = zext i1 %".1744" to i32
  %"add.130" = add i32 %".1741", %".1742"
  %"add.131" = add i32 %"add.130", 0
  %"add.132" = add i32 %"add.131", %".1745"
  %"add.133" = add i32 %"add.132", %".1746"
  store i32 %"add.133", ptr %"R15"
  ; LDG.E.CONSTANT.SYS R12, [R12]
  %".1749" = load i32, ptr %"R12"
  %"zext.146" = zext i32 %".1749" to i64
  %".1750" = load i32, ptr %"R13"
  %"zext.147" = zext i32 %".1750" to i64
  %"shl.78" = shl i64 %"zext.147", 32
  %"or.67" = or i64 %"shl.78", %"zext.146"
  %"inttoptr_bytes.55" = inttoptr i64 %"or.67" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".1751" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".1752" = bitcast ptr %"R12" to ptr
  store float %".1751", ptr %".1752"
  ; LDG.E.CONSTANT.SYS R17, [R14]
  %".1755" = load i32, ptr %"R14"
  %"zext.148" = zext i32 %".1755" to i64
  %".1756" = load i32, ptr %"R15"
  %"zext.149" = zext i32 %".1756" to i64
  %"shl.79" = shl i64 %"zext.149", 32
  %"or.68" = or i64 %"shl.79", %"zext.148"
  %"inttoptr_bytes.56" = inttoptr i64 %"or.68" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".1757" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".1758" = bitcast ptr %"R17" to ptr
  store float %".1757", ptr %".1758"
  ; LDG.E.CONSTANT.SYS R18, [R14.64+UR4]
  %".1761" = load i32, ptr %"R14"
  %"zext.150" = zext i32 %".1761" to i64
  %".1762" = load i32, ptr %"R15"
  %"zext.151" = zext i32 %".1762" to i64
  %"shl.80" = shl i64 %"zext.151", 32
  %"or.69" = or i64 %"shl.80", %"zext.150"
  %"val_UR4.3" = load i32, ptr %"UR4"
  %"sext_UR4.3" = sext i32 %"val_UR4.3" to i64
  %"base_plus_reg_offset.3" = add i64 %"or.69", %"sext_UR4.3"
  %"inttoptr_bytes.57" = inttoptr i64 %"base_plus_reg_offset.3" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".1763" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".1764" = bitcast ptr %"R18" to ptr
  store float %".1763", ptr %".1764"
  ; UIADD3 UR6, UR6, 0x1, URZ
  %".1767" = load i32, ptr %"UR6"
  %".1768" = add i32 %".1767", 1
  %".1769" = add i32 %".1768", 0
  store i32 %".1769", ptr %"UR6"
  ; ISETP.NE.AND P0, PT, RZ, UR6, PT
  %".1772" = load i32, ptr %"UR6"
  %".1773" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 0, %".1772"
  %".1774" = xor i1 %"cmp.7", -1
  %".1775" = and i1 %"cmp.7", %".1773"
  %".1776" = and i1 %".1774", %".1773"
  store i1 %".1775", ptr %"P0"
  ; IMAD.MOV.U32 R21, RZ, RZ, c[0x0][0x1b0]
  %"imad_mul.38" = mul i32 0, 0
  %"imad_add.39" = add i32 %"imad_mul.38", %"Arg_11"
  store i32 %"imad_add.39", ptr %"R21"
  ; IADD3 R10, P1, R10, 0x4, RZ
  %".1781" = load i32, ptr %"R10"
  %".1782" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1781", i32 4)
  %".1783" = extractvalue {i32, i1} %".1782", 0
  %".1784" = extractvalue {i32, i1} %".1782", 1
  %".1785" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1783", i32 0)
  %".1786" = extractvalue {i32, i1} %".1785", 0
  %".1787" = extractvalue {i32, i1} %".1785", 1
  %".1788" = or i1 %".1784", %".1787"
  store i32 %".1786", ptr %"R10"
  store i1 %".1788", ptr %"P1"
  ; LEA R16, R21, R16, 0x2
  %".1792" = load i32, ptr %"R21"
  %".1793" = load i32, ptr %"R16"
  %"shl.81" = shl i32 %".1792", 2
  %"add.134" = add i32 %"shl.81", %".1793"
  store i32 %"add.134", ptr %"R16"
  ; IMAD.X R19, RZ, RZ, R19, P1
  %".1796" = load i32, ptr %"R19"
  %".1797" = load i1, ptr %"P1"
  %"imad_mul.39" = mul i32 0, 0
  %"imad_add.40" = add i32 %"imad_mul.39", %".1796"
  %"imad_ext4" = zext i1 %".1797" to i32
  %"imad_add_x" = add i32 %"imad_add.40", %"imad_ext4"
  store i32 %"imad_add_x", ptr %"R19"
  ; FFMA R3, R4, R11, R3
  %"cast_ptr.116" = bitcast ptr %"R4" to ptr
  %".1800" = load float, ptr %"cast_ptr.116"
  %"cast_ptr.117" = bitcast ptr %"R11" to ptr
  %".1801" = load float, ptr %"cast_ptr.117"
  %"cast_ptr.118" = bitcast ptr %"R3" to ptr
  %".1802" = load float, ptr %"cast_ptr.118"
  %"fmul.36" = fmul float %".1800", %".1801"
  %"fadd.40" = fadd float %"fmul.36", %".1802"
  %".1803" = bitcast ptr %"R3" to ptr
  store float %"fadd.40", ptr %".1803"
  ; FFMA R2, R11.reuse, R12, R2
  %"cast_ptr.119" = bitcast ptr %"R11" to ptr
  %".1806" = load float, ptr %"cast_ptr.119"
  %"cast_ptr.120" = bitcast ptr %"R12" to ptr
  %".1807" = load float, ptr %"cast_ptr.120"
  %"cast_ptr.121" = bitcast ptr %"R2" to ptr
  %".1808" = load float, ptr %"cast_ptr.121"
  %"fmul.37" = fmul float %".1806", %".1807"
  %"fadd.41" = fadd float %"fmul.37", %".1808"
  %".1809" = bitcast ptr %"R2" to ptr
  store float %"fadd.41", ptr %".1809"
  ; FFMA R0, R11.reuse, R17, R0
  %"cast_ptr.122" = bitcast ptr %"R11" to ptr
  %".1812" = load float, ptr %"cast_ptr.122"
  %"cast_ptr.123" = bitcast ptr %"R17" to ptr
  %".1813" = load float, ptr %"cast_ptr.123"
  %"cast_ptr.124" = bitcast ptr %"R0" to ptr
  %".1814" = load float, ptr %"cast_ptr.124"
  %"fmul.38" = fmul float %".1812", %".1813"
  %"fadd.42" = fadd float %"fmul.38", %".1814"
  %".1815" = bitcast ptr %"R0" to ptr
  store float %"fadd.42", ptr %".1815"
  ; FFMA R8, R11, R18, R8
  %"cast_ptr.125" = bitcast ptr %"R11" to ptr
  %".1818" = load float, ptr %"cast_ptr.125"
  %"cast_ptr.126" = bitcast ptr %"R18" to ptr
  %".1819" = load float, ptr %"cast_ptr.126"
  %"cast_ptr.127" = bitcast ptr %"R8" to ptr
  %".1820" = load float, ptr %"cast_ptr.127"
  %"fmul.39" = fmul float %".1818", %".1819"
  %"fadd.43" = fadd float %"fmul.39", %".1820"
  %".1821" = bitcast ptr %"R8" to ptr
  store float %"fadd.43", ptr %".1821"
  ; @P0 BRA `(.L_x_7)
  %".1824" = load i1, ptr %"P0"
  %".1825" = icmp eq i1 %".1824", 1
  br i1 %".1825", label %".L_x_7", label %".L_x_4"
.L_x_4:
  ; FSETP.GE.AND P1, PT, |R0|, 0.60000002384185791016, PT
  %"cast_ptr.128" = bitcast ptr %"R0" to ptr
  %".1828" = load float, ptr %"cast_ptr.128"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".1828")
  %".1829" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".1830" = xor i1 %"fcmp_unordered", -1
  %".1831" = and i1 %"fcmp_unordered", %".1829"
  %".1832" = and i1 %".1830", %".1829"
  store i1 %".1831", ptr %"P1"
  ; IMAD R6, R7, c[0x0][0x1b0], R6
  %".1835" = load i32, ptr %"R7"
  %".1836" = load i32, ptr %"R6"
  %"imad_mul.40" = mul i32 %".1835", %"Arg_11"
  %"imad_add.41" = add i32 %"imad_mul.40", %".1836"
  store i32 %"imad_add.41", ptr %"R6"
  ; MOV R13, 0x3bbb989d
  %".1839" = bitcast ptr %"R13" to ptr
  store float 0x41cdddcc40000000, ptr %".1839"
  ; IMAD.MOV.U32 R14, RZ, RZ, 0x437c0000
  %"imad_mul.41" = mul i32 0, 0
  %"imad_add.42" = add i32 %"imad_mul.41", 1132199936
  store i32 %"imad_add.42", ptr %"R14"
  ; IMAD.WIDE R4, R6, R9, c[0x0][0x170]
  %".1844" = load i32, ptr %"R6"
  %".1845" = load i32, ptr %"R9"
  %"imad_ext1.16" = zext i32 %".1844" to i64
  %"imad_ext2.16" = zext i32 %".1845" to i64
  %"imad_mul.42" = mul i64 %"imad_ext1.16", %"imad_ext2.16"
  %".1846" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.43" = add i64 %"imad_mul.42", %".1846"
  %".1847" = and i64 %"imad_add.43", 18446744069414584320
  %".1848" = lshr i64 %".1847", 32
  %"trunc32.44" = trunc i64 %".1848" to i32
  %"trunc32.45" = trunc i64 %"imad_add.43" to i32
  store i32 %"trunc32.45", ptr %"R4"
  store i32 %"trunc32.44", ptr %"R5"
  ; FFMA.SAT R7, -R2, R13, 0.5
  %"cast_ptr.129" = bitcast ptr %"R2" to ptr
  %".1852" = load float, ptr %"cast_ptr.129"
  %".1853" = fneg float %".1852"
  %"cast_ptr.130" = bitcast ptr %"R13" to ptr
  %".1854" = load float, ptr %"cast_ptr.130"
  %"fmul.40" = fmul float %".1853", %".1854"
  %"fadd.44" = fadd float %"fmul.40", 0x3fe0000000000000
  %".1855" = bitcast ptr %"R7" to ptr
  store float %"fadd.44", ptr %".1855"
  ; @P1 FMUL R11, |R0|.reuse, 2.8853900432586669922
  %".1858" = load i1, ptr %"P1"
  %".1859" = icmp eq i1 %".1858", 1
  br i1 %".1859", label %".L_x_4_conditionalExpr_0x11f0", label %".L_x_4_split_0x1200"
.L_x_4_conditionalExpr_0x11f0:
  ; FMUL R11, |R0|.reuse, 2.8853900432586669922
  %"cast_ptr.131" = bitcast ptr %"R0" to ptr
  %".1862" = load float, ptr %"cast_ptr.131"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".1862")
  %"fmul.41" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".1863" = bitcast ptr %"R11" to ptr
  store float %"fmul.41", ptr %".1863"
  ; BRA `(.L_x_4_split_0x1200)
  br label %".L_x_4_split_0x1200"
.L_x_4_split_0x1200:
  ; LDG.E.CONSTANT.SYS R4, [R4]
  %".1868" = load i32, ptr %"R4"
  %"zext.152" = zext i32 %".1868" to i64
  %".1869" = load i32, ptr %"R5"
  %"zext.153" = zext i32 %".1869" to i64
  %"shl.82" = shl i64 %"zext.153", 32
  %"or.70" = or i64 %"shl.82", %"zext.152"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.70" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".1870" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".1871" = bitcast ptr %"R4" to ptr
  store float %".1870", ptr %".1871"
  ; FFMA.RM R7, R7, R14, 12582913
  %"cast_ptr.132" = bitcast ptr %"R7" to ptr
  %".1874" = load float, ptr %"cast_ptr.132"
  %"cast_ptr.133" = bitcast ptr %"R14" to ptr
  %".1875" = load float, ptr %"cast_ptr.133"
  %"fmul.42" = fmul float %".1874", %".1875"
  %"fadd.45" = fadd float %"fmul.42", 0x4168000020000000
  %".1876" = bitcast ptr %"R7" to ptr
  store float %"fadd.45", ptr %".1876"
  ; @P1 FSETP.GE.AND P0, PT, |R0|, 9.010913848876953125, PT
  %".1879" = load i1, ptr %"P1"
  %".1880" = icmp eq i1 %".1879", 1
  br i1 %".1880", label %".L_x_4_split_0x1200_conditionalExpr_0x1220", label %".L_x_4_split_0x1230"
.L_x_4_split_0x1200_conditionalExpr_0x1220:
  ; FSETP.GE.AND P0, PT, |R0|, 9.010913848876953125, PT
  %"cast_ptr.134" = bitcast ptr %"R0" to ptr
  %".1883" = load float, ptr %"cast_ptr.134"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".1883")
  %".1884" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".1885" = xor i1 %"fcmp_unordered.1", -1
  %".1886" = and i1 %"fcmp_unordered.1", %".1884"
  %".1887" = and i1 %".1885", %".1884"
  store i1 %".1886", ptr %"P0"
  ; BRA `(.L_x_4_split_0x1230)
  br label %".L_x_4_split_0x1230"
.L_x_4_split_0x1230:
  ; BMOV.32.CLEAR RZ, B0
  ; @P1 MOV R16, 0x3f800000
  %".1893" = load i1, ptr %"P1"
  %".1894" = icmp eq i1 %".1893", 1
  br i1 %".1894", label %".L_x_4_split_0x1230_conditionalExpr_0x1240", label %".L_x_4_split_0x1250"
.L_x_4_split_0x1230_conditionalExpr_0x1240:
  ; MOV R16, 0x3f800000
  %".1897" = bitcast ptr %"R16" to ptr
  store float 0x41cfc00000000000, ptr %".1897"
  ; BRA `(.L_x_4_split_0x1250)
  br label %".L_x_4_split_0x1250"
.L_x_4_split_0x1250:
  ; @P1 MUFU.EX2 R11, R11
  %".1902" = load i1, ptr %"P1"
  %".1903" = icmp eq i1 %".1902", 1
  br i1 %".1903", label %".L_x_4_split_0x1250_conditionalExpr_0x1250", label %".L_x_4_split_0x1260"
.L_x_4_split_0x1250_conditionalExpr_0x1250:
  ; MUFU.EX2 R11, R11
  %"cast_ptr.135" = bitcast ptr %"R11" to ptr
  %".1906" = load float, ptr %"cast_ptr.135"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1906")
  %".1907" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1907"
  ; BRA `(.L_x_4_split_0x1260)
  br label %".L_x_4_split_0x1260"
.L_x_4_split_0x1260:
  ; FADD R9, R7.reuse, -12583039
  %"cast_ptr.136" = bitcast ptr %"R7" to ptr
  %".1912" = load float, ptr %"cast_ptr.136"
  %"fadd.46" = fadd float %".1912", 0xc168000fe0000000
  %".1913" = bitcast ptr %"R9" to ptr
  store float %"fadd.46", ptr %".1913"
  ; SHF.L.U32 R7, R7, 0x17, RZ
  %".1916" = icmp ult i32 23, 32
  %"SHF_min.12" = select  i1 %".1916", i32 23, i32 32
  %".1917" = load i32, ptr %"R7"
  %"zext.154" = zext i32 0 to i64
  %"zext.155" = zext i32 %".1917" to i64
  %"zext.156" = zext i32 23 to i64
  %"shl.83" = shl i64 %"zext.154", 32
  %"or.71" = or i64 %"shl.83", %"zext.155"
  %"shl.84" = shl i64 %"or.71", %"zext.156"
  %"and.5" = and i64 %"shl.84", 4294967295
  %"trunc32.46" = trunc i64 %"and.5" to i32
  store i32 %"trunc32.46", ptr %"R7"
  ; BSSY B0, `(.L_x_8)
  ; FFMA.SAT R5, -R8, R13, 0.5
  %"cast_ptr.137" = bitcast ptr %"R8" to ptr
  %".1921" = load float, ptr %"cast_ptr.137"
  %".1922" = fneg float %".1921"
  %"cast_ptr.138" = bitcast ptr %"R13" to ptr
  %".1923" = load float, ptr %"cast_ptr.138"
  %"fmul.43" = fmul float %".1922", %".1923"
  %"fadd.47" = fadd float %"fmul.43", 0x3fe0000000000000
  %".1924" = bitcast ptr %"R5" to ptr
  store float %"fadd.47", ptr %".1924"
  ; FFMA R9, -R2, 1.4426950216293334961, -R9
  %"cast_ptr.139" = bitcast ptr %"R2" to ptr
  %".1927" = load float, ptr %"cast_ptr.139"
  %".1928" = fneg float %".1927"
  %"cast_ptr.140" = bitcast ptr %"R9" to ptr
  %".1929" = load float, ptr %"cast_ptr.140"
  %".1930" = fneg float %".1929"
  %"fmul.44" = fmul float %".1928", 0x3ff7154760000000
  %"fadd.48" = fadd float %"fmul.44", %".1930"
  %".1931" = bitcast ptr %"R9" to ptr
  store float %"fadd.48", ptr %".1931"
  ; FFMA R9, -R2, 1.925963033500011079e-08, R9
  %"cast_ptr.141" = bitcast ptr %"R2" to ptr
  %".1934" = load float, ptr %"cast_ptr.141"
  %".1935" = fneg float %".1934"
  %"cast_ptr.142" = bitcast ptr %"R9" to ptr
  %".1936" = load float, ptr %"cast_ptr.142"
  %"fmul.45" = fmul float %".1935", 0x3e54ae0c00000000
  %"fadd.49" = fadd float %"fmul.45", %".1936"
  %".1937" = bitcast ptr %"R9" to ptr
  store float %"fadd.49", ptr %".1937"
  ; FFMA.SAT R2, -R3, R13, 0.5
  %"cast_ptr.143" = bitcast ptr %"R3" to ptr
  %".1940" = load float, ptr %"cast_ptr.143"
  %".1941" = fneg float %".1940"
  %"cast_ptr.144" = bitcast ptr %"R13" to ptr
  %".1942" = load float, ptr %"cast_ptr.144"
  %"fmul.46" = fmul float %".1941", %".1942"
  %"fadd.50" = fadd float %"fmul.46", 0x3fe0000000000000
  %".1943" = bitcast ptr %"R2" to ptr
  store float %"fadd.50", ptr %".1943"
  ; MUFU.EX2 R12, R9
  %"cast_ptr.145" = bitcast ptr %"R9" to ptr
  %".1946" = load float, ptr %"cast_ptr.145"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1946")
  %".1947" = bitcast ptr %"R12" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".1947"
  ; @P1 FADD R13, R11, 1
  %".1950" = load i1, ptr %"P1"
  %".1951" = icmp eq i1 %".1950", 1
  br i1 %".1951", label %".L_x_4_split_0x1260_conditionalExpr_0x12e0", label %".L_x_4_split_0x12f0"
.L_x_4_split_0x1260_conditionalExpr_0x12e0:
  ; FADD R13, R11, 1
  %"cast_ptr.146" = bitcast ptr %"R11" to ptr
  %".1954" = load float, ptr %"cast_ptr.146"
  %"fadd.51" = fadd float %".1954", 0x3ff0000000000000
  %".1955" = bitcast ptr %"R13" to ptr
  store float %"fadd.51", ptr %".1955"
  ; BRA `(.L_x_4_split_0x12f0)
  br label %".L_x_4_split_0x12f0"
.L_x_4_split_0x12f0:
  ; FFMA.RM R2, R2, R14.reuse, 12582913
  %"cast_ptr.147" = bitcast ptr %"R2" to ptr
  %".1960" = load float, ptr %"cast_ptr.147"
  %"cast_ptr.148" = bitcast ptr %"R14" to ptr
  %".1961" = load float, ptr %"cast_ptr.148"
  %"fmul.47" = fmul float %".1960", %".1961"
  %"fadd.52" = fadd float %"fmul.47", 0x4168000020000000
  %".1962" = bitcast ptr %"R2" to ptr
  store float %"fadd.52", ptr %".1962"
  ; FFMA.RM R14, R5, R14, 12582913
  %"cast_ptr.149" = bitcast ptr %"R5" to ptr
  %".1965" = load float, ptr %"cast_ptr.149"
  %"cast_ptr.150" = bitcast ptr %"R14" to ptr
  %".1966" = load float, ptr %"cast_ptr.150"
  %"fmul.48" = fmul float %".1965", %".1966"
  %"fadd.53" = fadd float %"fmul.48", 0x4168000020000000
  %".1967" = bitcast ptr %"R14" to ptr
  store float %"fadd.53", ptr %".1967"
  ; FADD R10, R2, -12583039
  %"cast_ptr.151" = bitcast ptr %"R2" to ptr
  %".1970" = load float, ptr %"cast_ptr.151"
  %"fadd.54" = fadd float %".1970", 0xc168000fe0000000
  %".1971" = bitcast ptr %"R10" to ptr
  store float %"fadd.54", ptr %".1971"
  ; @P1 MUFU.RCP R13, R13
  %".1974" = load i1, ptr %"P1"
  %".1975" = icmp eq i1 %".1974", 1
  br i1 %".1975", label %".L_x_4_split_0x12f0_conditionalExpr_0x1320", label %".L_x_4_split_0x1330"
.L_x_4_split_0x12f0_conditionalExpr_0x1320:
  ; MUFU.RCP R13, R13
  %"cast_ptr.152" = bitcast ptr %"R13" to ptr
  %".1978" = load float, ptr %"cast_ptr.152"
  %".1979" = fdiv float 0x3ff0000000000000, %".1978"
  %".1980" = bitcast ptr %"R13" to ptr
  store float %".1979", ptr %".1980"
  ; BRA `(.L_x_4_split_0x1330)
  br label %".L_x_4_split_0x1330"
.L_x_4_split_0x1330:
  ; FADD R5, R14.reuse, -12583039
  %"cast_ptr.153" = bitcast ptr %"R14" to ptr
  %".1985" = load float, ptr %"cast_ptr.153"
  %"fadd.55" = fadd float %".1985", 0xc168000fe0000000
  %".1986" = bitcast ptr %"R5" to ptr
  store float %"fadd.55", ptr %".1986"
  ; SHF.L.U32 R14, R14, 0x17, RZ
  %".1989" = icmp ult i32 23, 32
  %"SHF_min.13" = select  i1 %".1989", i32 23, i32 32
  %".1990" = load i32, ptr %"R14"
  %"zext.157" = zext i32 0 to i64
  %"zext.158" = zext i32 %".1990" to i64
  %"zext.159" = zext i32 23 to i64
  %"shl.85" = shl i64 %"zext.157", 32
  %"or.72" = or i64 %"shl.85", %"zext.158"
  %"shl.86" = shl i64 %"or.72", %"zext.159"
  %"and.6" = and i64 %"shl.86", 4294967295
  %"trunc32.47" = trunc i64 %"and.6" to i32
  store i32 %"trunc32.47", ptr %"R14"
  ; FFMA R10, -R3, 1.4426950216293334961, -R10
  %"cast_ptr.154" = bitcast ptr %"R3" to ptr
  %".1993" = load float, ptr %"cast_ptr.154"
  %".1994" = fneg float %".1993"
  %"cast_ptr.155" = bitcast ptr %"R10" to ptr
  %".1995" = load float, ptr %"cast_ptr.155"
  %".1996" = fneg float %".1995"
  %"fmul.49" = fmul float %".1994", 0x3ff7154760000000
  %"fadd.56" = fadd float %"fmul.49", %".1996"
  %".1997" = bitcast ptr %"R10" to ptr
  store float %"fadd.56", ptr %".1997"
  ; FFMA R5, -R8.reuse, 1.4426950216293334961, -R5
  %"cast_ptr.156" = bitcast ptr %"R8" to ptr
  %".2000" = load float, ptr %"cast_ptr.156"
  %".2001" = fneg float %".2000"
  %"cast_ptr.157" = bitcast ptr %"R5" to ptr
  %".2002" = load float, ptr %"cast_ptr.157"
  %".2003" = fneg float %".2002"
  %"fmul.50" = fmul float %".2001", 0x3ff7154760000000
  %"fadd.57" = fadd float %"fmul.50", %".2003"
  %".2004" = bitcast ptr %"R5" to ptr
  store float %"fadd.57", ptr %".2004"
  ; FFMA R10, -R3, 1.925963033500011079e-08, R10
  %"cast_ptr.158" = bitcast ptr %"R3" to ptr
  %".2007" = load float, ptr %"cast_ptr.158"
  %".2008" = fneg float %".2007"
  %"cast_ptr.159" = bitcast ptr %"R10" to ptr
  %".2009" = load float, ptr %"cast_ptr.159"
  %"fmul.51" = fmul float %".2008", 0x3e54ae0c00000000
  %"fadd.58" = fadd float %"fmul.51", %".2009"
  %".2010" = bitcast ptr %"R10" to ptr
  store float %"fadd.58", ptr %".2010"
  ; FFMA R15, R7, R12, 1
  %"cast_ptr.160" = bitcast ptr %"R7" to ptr
  %".2013" = load float, ptr %"cast_ptr.160"
  %"cast_ptr.161" = bitcast ptr %"R12" to ptr
  %".2014" = load float, ptr %"cast_ptr.161"
  %"fmul.52" = fmul float %".2013", %".2014"
  %"fadd.59" = fadd float %"fmul.52", 0x3ff0000000000000
  %".2015" = bitcast ptr %"R15" to ptr
  store float %"fadd.59", ptr %".2015"
  ; FFMA R11, -R8, 1.925963033500011079e-08, R5
  %"cast_ptr.162" = bitcast ptr %"R8" to ptr
  %".2018" = load float, ptr %"cast_ptr.162"
  %".2019" = fneg float %".2018"
  %"cast_ptr.163" = bitcast ptr %"R5" to ptr
  %".2020" = load float, ptr %"cast_ptr.163"
  %"fmul.53" = fmul float %".2019", 0x3e54ae0c00000000
  %"fadd.60" = fadd float %"fmul.53", %".2020"
  %".2021" = bitcast ptr %"R11" to ptr
  store float %"fadd.60", ptr %".2021"
  ; @!P1 IMAD.MOV.U32 R8, RZ, RZ, 0x3c80f082
  %".2024" = load i1, ptr %"P1"
  %".2025" = icmp ne i1 %".2024", 1
  br i1 %".2025", label %".L_x_4_split_0x1330_conditionalExpr_0x13a0", label %".L_x_4_split_0x13b0"
.L_x_4_split_0x1330_conditionalExpr_0x13a0:
  ; IMAD.MOV.U32 R8, RZ, RZ, 0x3c80f082
  %"imad_mul.43" = mul i32 0, 0
  %"imad_add.44" = add i32 %"imad_mul.43", 1015083138
  store i32 %"imad_add.44", ptr %"R8"
  ; BRA `(.L_x_4_split_0x13b0)
  br label %".L_x_4_split_0x13b0"
.L_x_4_split_0x13b0:
  ; IADD3 R7, R15, 0x1800000, RZ
  %".2032" = load i32, ptr %"R15"
  %".2033" = add i32 %".2032", 25165824
  %".2034" = add i32 %".2033", 0
  store i32 %".2034", ptr %"R7"
  ; @!P1 FMUL R5, R0, R0
  %".2037" = load i1, ptr %"P1"
  %".2038" = icmp ne i1 %".2037", 1
  br i1 %".2038", label %".L_x_4_split_0x13b0_conditionalExpr_0x13c0", label %".L_x_4_split_0x13d0"
.L_x_4_split_0x13b0_conditionalExpr_0x13c0:
  ; FMUL R5, R0, R0
  %"cast_ptr.164" = bitcast ptr %"R0" to ptr
  %".2041" = load float, ptr %"cast_ptr.164"
  %"cast_ptr.165" = bitcast ptr %"R0" to ptr
  %".2042" = load float, ptr %"cast_ptr.165"
  %"fmul.54" = fmul float %".2041", %".2042"
  %".2043" = bitcast ptr %"R5" to ptr
  store float %"fmul.54", ptr %".2043"
  ; BRA `(.L_x_4_split_0x13d0)
  br label %".L_x_4_split_0x13d0"
.L_x_4_split_0x13d0:
  ; MUFU.EX2 R3, R10
  %"cast_ptr.166" = bitcast ptr %"R10" to ptr
  %".2048" = load float, ptr %"cast_ptr.166"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".2048")
  %".2049" = bitcast ptr %"R3" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".2049"
  ; @P1 FFMA R13, R13, -2, R16
  %".2052" = load i1, ptr %"P1"
  %".2053" = icmp eq i1 %".2052", 1
  br i1 %".2053", label %".L_x_4_split_0x13d0_conditionalExpr_0x13e0", label %".L_x_4_split_0x13f0"
.L_x_4_split_0x13d0_conditionalExpr_0x13e0:
  ; FFMA R13, R13, -2, R16
  %"cast_ptr.167" = bitcast ptr %"R13" to ptr
  %".2056" = load float, ptr %"cast_ptr.167"
  %"cast_ptr.168" = bitcast ptr %"R16" to ptr
  %".2057" = load float, ptr %"cast_ptr.168"
  %"fmul.55" = fmul float %".2056", 0xc000000000000000
  %"fadd.61" = fadd float %"fmul.55", %".2057"
  %".2058" = bitcast ptr %"R13" to ptr
  store float %"fadd.61", ptr %".2058"
  ; BRA `(.L_x_4_split_0x13f0)
  br label %".L_x_4_split_0x13f0"
.L_x_4_split_0x13f0:
  ; LOP3.LUT R9, R7, 0x7f800000, RZ, 0xc0, !PT
  %".2063" = load i32, ptr %"R7"
  %".2064" = xor i1 1, -1
  %".2065" = and i32 %".2063", 2139095040
  store i32 %".2065", ptr %"R9"
  ; @!P1 FFMA R8, R5, R8, -0.052303962409496307373
  %".2068" = load i1, ptr %"P1"
  %".2069" = icmp ne i1 %".2068", 1
  br i1 %".2069", label %".L_x_4_split_0x13f0_conditionalExpr_0x1400", label %".L_x_4_split_0x1410"
.L_x_4_split_0x13f0_conditionalExpr_0x1400:
  ; FFMA R8, R5, R8, -0.052303962409496307373
  %"cast_ptr.169" = bitcast ptr %"R5" to ptr
  %".2072" = load float, ptr %"cast_ptr.169"
  %"cast_ptr.170" = bitcast ptr %"R8" to ptr
  %".2073" = load float, ptr %"cast_ptr.170"
  %"fmul.56" = fmul float %".2072", %".2073"
  %"fadd.62" = fadd float %"fmul.56", 0xbfaac795c0000000
  %".2074" = bitcast ptr %"R8" to ptr
  store float %"fadd.62", ptr %".2074"
  ; BRA `(.L_x_4_split_0x1410)
  br label %".L_x_4_split_0x1410"
.L_x_4_split_0x1410:
  ; IMAD.SHL.U32 R2, R2, 0x800000, RZ
  %".2079" = load i32, ptr %"R2"
  %"imad_shl.1" = shl i32 %".2079", 8388608
  %"imad_add.45" = add i32 %"imad_shl.1", 0
  store i32 %"imad_add.45", ptr %"R2"
  ; @P1 FSEL R13, R13, 1, !P0
  %".2082" = load i1, ptr %"P1"
  %".2083" = icmp eq i1 %".2082", 1
  br i1 %".2083", label %".L_x_4_split_0x1410_conditionalExpr_0x1420", label %".L_x_4_split_0x1430"
.L_x_4_split_0x1410_conditionalExpr_0x1420:
  ; FSEL R13, R13, 1, !P0
  %"cast_ptr.171" = bitcast ptr %"R13" to ptr
  %".2086" = load float, ptr %"cast_ptr.171"
  %".2087" = load i1, ptr %"P0"
  %".2088" = xor i1 %".2087", -1
  %".2089" = icmp eq i1 %".2088", 1
  %"fsel" = select  i1 %".2089", float %".2086", float 0x3ff0000000000000
  %".2090" = bitcast ptr %"R13" to ptr
  store float %"fsel", ptr %".2090"
  ; BRA `(.L_x_4_split_0x1430)
  br label %".L_x_4_split_0x1430"
.L_x_4_split_0x1430:
  ; @!P1 FFMA R8, R5, R8, 0.1331529766321182251
  %".2095" = load i1, ptr %"P1"
  %".2096" = icmp ne i1 %".2095", 1
  br i1 %".2096", label %".L_x_4_split_0x1430_conditionalExpr_0x1430", label %".L_x_4_split_0x1440"
.L_x_4_split_0x1430_conditionalExpr_0x1430:
  ; FFMA R8, R5, R8, 0.1331529766321182251
  %"cast_ptr.172" = bitcast ptr %"R5" to ptr
  %".2099" = load float, ptr %"cast_ptr.172"
  %"cast_ptr.173" = bitcast ptr %"R8" to ptr
  %".2100" = load float, ptr %"cast_ptr.173"
  %"fmul.57" = fmul float %".2099", %".2100"
  %"fadd.63" = fadd float %"fmul.57", 0x3fc10b2820000000
  %".2101" = bitcast ptr %"R8" to ptr
  store float %"fadd.63", ptr %".2101"
  ; BRA `(.L_x_4_split_0x1440)
  br label %".L_x_4_split_0x1440"
.L_x_4_split_0x1440:
  ; MUFU.EX2 R11, R11
  %"cast_ptr.174" = bitcast ptr %"R11" to ptr
  %".2106" = load float, ptr %"cast_ptr.174"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".2106")
  %".2107" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".2107"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".2110" = load i32, ptr %"R9"
  %".2111" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".2110", 33554431
  %".2112" = xor i1 %"cmp.8", -1
  %".2113" = and i1 %"cmp.8", %".2111"
  %".2114" = and i1 %".2112", %".2111"
  store i1 %".2113", ptr %"P0"
  ; @!P1 FFMA R8, R5, R8, -0.33332768082618713379
  %".2117" = load i1, ptr %"P1"
  %".2118" = icmp ne i1 %".2117", 1
  br i1 %".2118", label %".L_x_4_split_0x1440_conditionalExpr_0x1460", label %".L_x_4_split_0x1470"
.L_x_4_split_0x1440_conditionalExpr_0x1460:
  ; FFMA R8, R5, R8, -0.33332768082618713379
  %"cast_ptr.175" = bitcast ptr %"R5" to ptr
  %".2121" = load float, ptr %"cast_ptr.175"
  %"cast_ptr.176" = bitcast ptr %"R8" to ptr
  %".2122" = load float, ptr %"cast_ptr.176"
  %"fmul.58" = fmul float %".2121", %".2122"
  %"fadd.64" = fadd float %"fmul.58", 0xbfd5553da0000000
  %".2123" = bitcast ptr %"R8" to ptr
  store float %"fadd.64", ptr %".2123"
  ; BRA `(.L_x_4_split_0x1470)
  br label %".L_x_4_split_0x1470"
.L_x_4_split_0x1470:
  ; @P1 LOP3.LUT R10, R13, 0x80000000, R0, 0xf8, !PT
  %".2128" = load i1, ptr %"P1"
  %".2129" = icmp eq i1 %".2128", 1
  br i1 %".2129", label %".L_x_4_split_0x1470_conditionalExpr_0x1470", label %".L_x_4_split_0x1480"
.L_x_4_split_0x1470_conditionalExpr_0x1470:
  ; LOP3.LUT R10, R13, 0x80000000, R0, 0xf8, !PT
  %".2132" = load i32, ptr %"R13"
  %".2133" = load i32, ptr %"R0"
  %".2134" = xor i1 1, -1
  %".2135" = or i32 %".2132", 2147483648
  %".2136" = or i32 %".2132", %".2133"
  %".2137" = and i32 %".2135", %".2136"
  store i32 %".2137", ptr %"R10"
  ; BRA `(.L_x_4_split_0x1480)
  br label %".L_x_4_split_0x1480"
.L_x_4_split_0x1480:
  ; @!P1 FFMA R7, R5, R8, RZ
  %".2142" = load i1, ptr %"P1"
  %".2143" = icmp ne i1 %".2142", 1
  br i1 %".2143", label %".L_x_4_split_0x1480_conditionalExpr_0x1480", label %".L_x_4_split_0x1490"
.L_x_4_split_0x1480_conditionalExpr_0x1480:
  ; FFMA R7, R5, R8, RZ
  %"cast_ptr.177" = bitcast ptr %"R5" to ptr
  %".2146" = load float, ptr %"cast_ptr.177"
  %"cast_ptr.178" = bitcast ptr %"R8" to ptr
  %".2147" = load float, ptr %"cast_ptr.178"
  %"fmul.59" = fmul float %".2146", %".2147"
  %"fadd.65" = fadd float %"fmul.59",              0x0
  %".2148" = bitcast ptr %"R7" to ptr
  store float %"fadd.65", ptr %".2148"
  ; BRA `(.L_x_4_split_0x1490)
  br label %".L_x_4_split_0x1490"
.L_x_4_split_0x1490:
  ; FFMA R2, R2, R3, 1
  %"cast_ptr.179" = bitcast ptr %"R2" to ptr
  %".2153" = load float, ptr %"cast_ptr.179"
  %"cast_ptr.180" = bitcast ptr %"R3" to ptr
  %".2154" = load float, ptr %"cast_ptr.180"
  %"fmul.60" = fmul float %".2153", %".2154"
  %"fadd.66" = fadd float %"fmul.60", 0x3ff0000000000000
  %".2155" = bitcast ptr %"R2" to ptr
  store float %"fadd.66", ptr %".2155"
  ; SHF.R.S32.HI R3, RZ, 0x1f, R6
  %".2158" = icmp ult i32 31, 32
  %"SHF_min.14" = select  i1 %".2158", i32 31, i32 32
  %".2159" = load i32, ptr %"R6"
  %"zext.160" = zext i32 %".2159" to i64
  %"zext.161" = zext i32 0 to i64
  %"zext.162" = zext i32 31 to i64
  %"shl.87" = shl i64 %"zext.160", 32
  %"or.73" = or i64 %"shl.87", %"zext.161"
  %"ashr.6" = ashr i64 %"or.73", %"zext.162"
  %"ashr.7" = ashr i64 %"ashr.6", 32
  %"trunc32.48" = trunc i64 %"ashr.7" to i32
  store i32 %"trunc32.48", ptr %"R3"
  ; @!P1 FFMA R10, R7, R0, R0
  %".2162" = load i1, ptr %"P1"
  %".2163" = icmp ne i1 %".2162", 1
  br i1 %".2163", label %".L_x_4_split_0x1490_conditionalExpr_0x14b0", label %".L_x_4_split_0x14c0"
.L_x_4_split_0x1490_conditionalExpr_0x14b0:
  ; FFMA R10, R7, R0, R0
  %"cast_ptr.181" = bitcast ptr %"R7" to ptr
  %".2166" = load float, ptr %"cast_ptr.181"
  %"cast_ptr.182" = bitcast ptr %"R0" to ptr
  %".2167" = load float, ptr %"cast_ptr.182"
  %"cast_ptr.183" = bitcast ptr %"R0" to ptr
  %".2168" = load float, ptr %"cast_ptr.183"
  %"fmul.61" = fmul float %".2166", %".2167"
  %"fadd.67" = fadd float %"fmul.61", %".2168"
  %".2169" = bitcast ptr %"R10" to ptr
  store float %"fadd.67", ptr %".2169"
  ; BRA `(.L_x_4_split_0x14c0)
  br label %".L_x_4_split_0x14c0"
.L_x_4_split_0x14c0:
  ; FFMA R5, R14, R11, 1
  %"cast_ptr.184" = bitcast ptr %"R14" to ptr
  %".2174" = load float, ptr %"cast_ptr.184"
  %"cast_ptr.185" = bitcast ptr %"R11" to ptr
  %".2175" = load float, ptr %"cast_ptr.185"
  %"fmul.62" = fmul float %".2174", %".2175"
  %"fadd.68" = fadd float %"fmul.62", 0x3ff0000000000000
  %".2176" = bitcast ptr %"R5" to ptr
  store float %"fadd.68", ptr %".2176"
  ; @P0 BRA `(.L_x_9)
  %".2179" = load i1, ptr %"P0"
  %".2180" = icmp eq i1 %".2179", 1
  br i1 %".2180", label %".L_x_9", label %".L_x_4_split_0x14e0_CALL_0x1510"
.L_x_4_split_0x14e0_CALL_0x1510:
  ; MOV R14, 0x1500
  store i32 5376, ptr %"R14"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1:
  ; SHF.L.U32 R0, R15, 0x1, RZ
  %".2187" = icmp ult i32 1, 32
  %"SHF_min.15" = select  i1 %".2187", i32 1, i32 32
  %".2188" = load i32, ptr %"R15"
  %"zext.163" = zext i32 0 to i64
  %"zext.164" = zext i32 %".2188" to i64
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
  %".2193" = icmp ult i32 24, 32
  %"SHF_min.16" = select  i1 %".2193", i32 24, i32 32
  %".2194" = load i32, ptr %"R0"
  %"zext.166" = zext i32 %".2194" to i64
  %"zext.167" = zext i32 0 to i64
  %"zext.168" = zext i32 24 to i64
  %"shl.90" = shl i64 %"zext.166", 32
  %"or.75" = or i64 %"shl.90", %"zext.167"
  %"lshr.4" = lshr i64 %"or.75", %"zext.168"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.50" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.50", ptr %"R16"
  ; ISETP.NE.U32.AND P0, PT, R16, RZ, PT
  %".2197" = load i32, ptr %"R16"
  %".2198" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".2197", 0
  %".2199" = xor i1 %"cmp.9", -1
  %".2200" = and i1 %"cmp.9", %".2198"
  %".2201" = and i1 %".2199", %".2198"
  store i1 %".2200", ptr %"P0"
  ; @P0 BRA `(.L_x_21)
  %".2204" = load i1, ptr %"P0"
  %".2205" = icmp eq i1 %".2204", 1
  br i1 %".2205", label %".L_x_21...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1:
  ; IMAD.SHL.U32 R0, R15, 0x2, RZ
  %".2208" = load i32, ptr %"R15"
  %"imad_shl.2" = shl i32 %".2208", 2
  %"imad_add.46" = add i32 %"imad_shl.2", 0
  store i32 %"imad_add.46", ptr %"R0"
  ; ISETP.NE.AND P0, PT, R0, RZ, PT
  %".2211" = load i32, ptr %"R0"
  %".2212" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".2211", 0
  %".2213" = xor i1 %"cmp.10", -1
  %".2214" = and i1 %"cmp.10", %".2212"
  %".2215" = and i1 %".2213", %".2212"
  store i1 %".2214", ptr %"P0"
  ; @P0 FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2218" = load i1, ptr %"P0"
  %".2219" = icmp eq i1 %".2218", 1
  br i1 %".2219", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %"cast_ptr.186" = bitcast ptr %"R15" to ptr
  %".2222" = load float, ptr %"cast_ptr.186"
  %"fmul.63" = fmul float %".2222", 0x43f0000000000000
  %"fadd.69" = fadd float %"fmul.63",              0x0
  %".2223" = bitcast ptr %"R8" to ptr
  store float %"fadd.69", ptr %".2223"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %"cast_ptr.187" = bitcast ptr %"R15" to ptr
  %".2228" = load float, ptr %"cast_ptr.187"
  %"fmul.64" = fmul float %".2228", 0x43f0000000000000
  %"fadd.70" = fadd float %"fmul.64",              0x0
  %".2229" = bitcast ptr %"R8" to ptr
  store float %"fadd.70", ptr %".2229"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1:
  ; @!P0 MUFU.RCP R0, R15
  %".2234" = load i1, ptr %"P0"
  %".2235" = icmp ne i1 %".2234", 1
  br i1 %".2235", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0:
  ; MUFU.RCP R0, R15
  %"cast_ptr.188" = bitcast ptr %"R15" to ptr
  %".2238" = load float, ptr %"cast_ptr.188"
  %".2239" = fdiv float 0x3ff0000000000000, %".2238"
  %".2240" = bitcast ptr %"R0" to ptr
  store float %".2239", ptr %".2240"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1:
  ; MUFU.RCP R0, R15
  %"cast_ptr.189" = bitcast ptr %"R15" to ptr
  %".2245" = load float, ptr %"cast_ptr.189"
  %".2246" = fdiv float 0x3ff0000000000000, %".2245"
  %".2247" = bitcast ptr %"R0" to ptr
  store float %".2246", ptr %".2247"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1:
  ; @P0 MUFU.RCP R9, R8
  %".2252" = load i1, ptr %"P0"
  %".2253" = icmp eq i1 %".2252", 1
  br i1 %".2253", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00:
  ; MUFU.RCP R9, R8
  %"cast_ptr.190" = bitcast ptr %"R8" to ptr
  %".2256" = load float, ptr %"cast_ptr.190"
  %".2257" = fdiv float 0x3ff0000000000000, %".2256"
  %".2258" = bitcast ptr %"R9" to ptr
  store float %".2257", ptr %".2258"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1:
  ; MUFU.RCP R9, R8
  %"cast_ptr.191" = bitcast ptr %"R8" to ptr
  %".2263" = load float, ptr %"cast_ptr.191"
  %".2264" = fdiv float 0x3ff0000000000000, %".2263"
  %".2265" = bitcast ptr %"R9" to ptr
  store float %".2264", ptr %".2265"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1:
  ; @P0 FFMA R11, R8, R9, -1
  %".2270" = load i1, ptr %"P0"
  %".2271" = icmp eq i1 %".2270", 1
  br i1 %".2271", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10:
  ; FFMA R11, R8, R9, -1
  %"cast_ptr.192" = bitcast ptr %"R8" to ptr
  %".2274" = load float, ptr %"cast_ptr.192"
  %"cast_ptr.193" = bitcast ptr %"R9" to ptr
  %".2275" = load float, ptr %"cast_ptr.193"
  %"fmul.65" = fmul float %".2274", %".2275"
  %"fadd.71" = fadd float %"fmul.65", 0xbff0000000000000
  %".2276" = bitcast ptr %"R11" to ptr
  store float %"fadd.71", ptr %".2276"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1:
  ; FFMA R11, R8, R9, -1
  %"cast_ptr.194" = bitcast ptr %"R8" to ptr
  %".2281" = load float, ptr %"cast_ptr.194"
  %"cast_ptr.195" = bitcast ptr %"R9" to ptr
  %".2282" = load float, ptr %"cast_ptr.195"
  %"fmul.66" = fmul float %".2281", %".2282"
  %"fadd.72" = fadd float %"fmul.66", 0xbff0000000000000
  %".2283" = bitcast ptr %"R11" to ptr
  store float %"fadd.72", ptr %".2283"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1:
  ; @P0 FADD.FTZ R12, -R11, -RZ
  %".2288" = load i1, ptr %"P0"
  %".2289" = icmp eq i1 %".2288", 1
  br i1 %".2289", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20:
  ; FADD.FTZ R12, -R11, -RZ
  %"cast_ptr.196" = bitcast ptr %"R11" to ptr
  %".2292" = load float, ptr %"cast_ptr.196"
  %".2293" = fneg float %".2292"
  %".2294" = call float @"llvm.fabs"(float %".2293")
  %".2295" = fcmp ogt float %".2294",              0x0
  %".2296" = fcmp olt float %".2294", 0x3810000000000000
  %".2297" = and i1 %".2295", %".2296"
  %".2298" = select  i1 %".2297", float              0x0, float %".2293"
  %".2299" = call float @"llvm.fabs"(float              0x0)
  %".2300" = fcmp ogt float %".2299",              0x0
  %".2301" = fcmp olt float %".2299", 0x3810000000000000
  %".2302" = and i1 %".2300", %".2301"
  %".2303" = select  i1 %".2302", float              0x0, float              0x0
  %"fadd.73" = fadd float %".2298", %".2303"
  %".2304" = call float @"llvm.fabs"(float %"fadd.73")
  %".2305" = fcmp ogt float %".2304",              0x0
  %".2306" = fcmp olt float %".2304", 0x3810000000000000
  %".2307" = and i1 %".2305", %".2306"
  %".2308" = select  i1 %".2307", float              0x0, float %"fadd.73"
  %".2309" = bitcast ptr %"R12" to ptr
  store float %".2308", ptr %".2309"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1:
  ; FADD.FTZ R12, -R11, -RZ
  %"cast_ptr.197" = bitcast ptr %"R11" to ptr
  %".2314" = load float, ptr %"cast_ptr.197"
  %".2315" = fneg float %".2314"
  %".2316" = call float @"llvm.fabs"(float %".2315")
  %".2317" = fcmp ogt float %".2316",              0x0
  %".2318" = fcmp olt float %".2316", 0x3810000000000000
  %".2319" = and i1 %".2317", %".2318"
  %".2320" = select  i1 %".2319", float              0x0, float %".2315"
  %".2321" = call float @"llvm.fabs"(float              0x0)
  %".2322" = fcmp ogt float %".2321",              0x0
  %".2323" = fcmp olt float %".2321", 0x3810000000000000
  %".2324" = and i1 %".2322", %".2323"
  %".2325" = select  i1 %".2324", float              0x0, float              0x0
  %"fadd.74" = fadd float %".2320", %".2325"
  %".2326" = call float @"llvm.fabs"(float %"fadd.74")
  %".2327" = fcmp ogt float %".2326",              0x0
  %".2328" = fcmp olt float %".2326", 0x3810000000000000
  %".2329" = and i1 %".2327", %".2328"
  %".2330" = select  i1 %".2329", float              0x0, float %"fadd.74"
  %".2331" = bitcast ptr %"R12" to ptr
  store float %".2330", ptr %".2331"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1:
  ; @P0 FFMA R12, R9, R12, R9
  %".2336" = load i1, ptr %"P0"
  %".2337" = icmp eq i1 %".2336", 1
  br i1 %".2337", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30:
  ; FFMA R12, R9, R12, R9
  %"cast_ptr.198" = bitcast ptr %"R9" to ptr
  %".2340" = load float, ptr %"cast_ptr.198"
  %"cast_ptr.199" = bitcast ptr %"R12" to ptr
  %".2341" = load float, ptr %"cast_ptr.199"
  %"cast_ptr.200" = bitcast ptr %"R9" to ptr
  %".2342" = load float, ptr %"cast_ptr.200"
  %"fmul.67" = fmul float %".2340", %".2341"
  %"fadd.75" = fadd float %"fmul.67", %".2342"
  %".2343" = bitcast ptr %"R12" to ptr
  store float %"fadd.75", ptr %".2343"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1:
  ; FFMA R12, R9, R12, R9
  %"cast_ptr.201" = bitcast ptr %"R9" to ptr
  %".2348" = load float, ptr %"cast_ptr.201"
  %"cast_ptr.202" = bitcast ptr %"R12" to ptr
  %".2349" = load float, ptr %"cast_ptr.202"
  %"cast_ptr.203" = bitcast ptr %"R9" to ptr
  %".2350" = load float, ptr %"cast_ptr.203"
  %"fmul.68" = fmul float %".2348", %".2349"
  %"fadd.76" = fadd float %"fmul.68", %".2350"
  %".2351" = bitcast ptr %"R12" to ptr
  store float %"fadd.76", ptr %".2351"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1:
  ; @P0 FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2356" = load i1, ptr %"P0"
  %".2357" = icmp eq i1 %".2356", 1
  br i1 %".2357", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %"cast_ptr.204" = bitcast ptr %"R12" to ptr
  %".2360" = load float, ptr %"cast_ptr.204"
  %"fmul.69" = fmul float %".2360", 0x43f0000000000000
  %"fadd.77" = fadd float %"fmul.69",              0x0
  %".2361" = bitcast ptr %"R0" to ptr
  store float %"fadd.77", ptr %".2361"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %"cast_ptr.205" = bitcast ptr %"R12" to ptr
  %".2366" = load float, ptr %"cast_ptr.205"
  %"fmul.70" = fmul float %".2366", 0x43f0000000000000
  %"fadd.78" = fadd float %"fmul.70",              0x0
  %".2367" = bitcast ptr %"R0" to ptr
  store float %"fadd.78", ptr %".2367"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...1:
  ; BRA `(.L_x_22)
  br label %".L_x_22...1"
.L_x_21...1:
  ; IADD3 R18, R16, -0xfd, RZ
  %".2374" = load i32, ptr %"R16"
  %".2375" = add i32 %".2374", -253
  %".2376" = add i32 %".2375", 0
  store i32 %".2376", ptr %"R18"
  ; ISETP.GT.U32.AND P0, PT, R18, 0x1, PT
  %".2379" = load i32, ptr %"R18"
  %".2380" = load i1, ptr %"PT"
  %"cmp.11" = icmp sgt i32 %".2379", 1
  %".2381" = xor i1 %"cmp.11", -1
  %".2382" = and i1 %"cmp.11", %".2380"
  %".2383" = and i1 %".2381", %".2380"
  store i1 %".2382", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".2386" = load i1, ptr %"P0"
  %".2387" = icmp eq i1 %".2386", 1
  br i1 %".2387", label %".L_x_23...1", label %".L_x_21_split_0x1a90...1"
.L_x_21_split_0x1a90...1:
  ; LOP3.LUT R0, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2390" = load i32, ptr %"R15"
  %".2391" = xor i1 1, -1
  %".2392" = and i32 %".2390", 8388607
  store i32 %".2392", ptr %"R0"
  ; MOV R13, 0x3
  store i32 3, ptr %"R13"
  ; LOP3.LUT R0, R0, 0x3f800000, RZ, 0xfc, !PT
  %".2397" = load i32, ptr %"R0"
  %".2398" = xor i1 1, -1
  %".2399" = or i32 %".2397", 1065353216
  store i32 %".2399", ptr %"R0"
  ; SHF.L.U32 R13, R13, R18, RZ
  %".2402" = load i32, ptr %"R18"
  %".2403" = icmp ult i32 %".2402", 32
  %"SHF_min.17" = select  i1 %".2403", i32 %".2402", i32 32
  %".2404" = load i32, ptr %"R13"
  %".2405" = load i32, ptr %"R18"
  %"zext.169" = zext i32 0 to i64
  %"zext.170" = zext i32 %".2404" to i64
  %"zext.171" = zext i32 %".2405" to i64
  %"shl.91" = shl i64 %"zext.169", 32
  %"or.76" = or i64 %"shl.91", %"zext.170"
  %"shl.92" = shl i64 %"or.76", %"zext.171"
  %"and.8" = and i64 %"shl.92", 4294967295
  %"trunc32.51" = trunc i64 %"and.8" to i32
  store i32 %"trunc32.51", ptr %"R13"
  ; MUFU.RCP R9, R0
  %".2408" = load i32, ptr %"R0"
  %"sint_to_f32" = sitofp i32 %".2408" to float
  %".2409" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".2410" = fptosi float %".2409" to i32
  store i32 %".2410", ptr %"R9"
  ; FFMA R8, R0, R9, -1
  %"cast_ptr.206" = bitcast ptr %"R0" to ptr
  %".2413" = load float, ptr %"cast_ptr.206"
  %"cast_ptr.207" = bitcast ptr %"R9" to ptr
  %".2414" = load float, ptr %"cast_ptr.207"
  %"fmul.71" = fmul float %".2413", %".2414"
  %"fadd.79" = fadd float %"fmul.71", 0xbff0000000000000
  %".2415" = bitcast ptr %"R8" to ptr
  store float %"fadd.79", ptr %".2415"
  ; FADD.FTZ R8, -R8, -RZ
  %"cast_ptr.208" = bitcast ptr %"R8" to ptr
  %".2418" = load float, ptr %"cast_ptr.208"
  %".2419" = fneg float %".2418"
  %".2420" = call float @"llvm.fabs"(float %".2419")
  %".2421" = fcmp ogt float %".2420",              0x0
  %".2422" = fcmp olt float %".2420", 0x3810000000000000
  %".2423" = and i1 %".2421", %".2422"
  %".2424" = select  i1 %".2423", float              0x0, float %".2419"
  %".2425" = call float @"llvm.fabs"(float              0x0)
  %".2426" = fcmp ogt float %".2425",              0x0
  %".2427" = fcmp olt float %".2425", 0x3810000000000000
  %".2428" = and i1 %".2426", %".2427"
  %".2429" = select  i1 %".2428", float              0x0, float              0x0
  %"fadd.80" = fadd float %".2424", %".2429"
  %".2430" = call float @"llvm.fabs"(float %"fadd.80")
  %".2431" = fcmp ogt float %".2430",              0x0
  %".2432" = fcmp olt float %".2430", 0x3810000000000000
  %".2433" = and i1 %".2431", %".2432"
  %".2434" = select  i1 %".2433", float              0x0, float %"fadd.80"
  %".2435" = bitcast ptr %"R8" to ptr
  store float %".2434", ptr %".2435"
  ; FFMA.RM R11, R9.reuse, R8.reuse, R9.reuse
  %"cast_ptr.209" = bitcast ptr %"R9" to ptr
  %".2438" = load float, ptr %"cast_ptr.209"
  %"cast_ptr.210" = bitcast ptr %"R8" to ptr
  %".2439" = load float, ptr %"cast_ptr.210"
  %"cast_ptr.211" = bitcast ptr %"R9" to ptr
  %".2440" = load float, ptr %"cast_ptr.211"
  %"fmul.72" = fmul float %".2438", %".2439"
  %"fadd.81" = fadd float %"fmul.72", %".2440"
  %".2441" = bitcast ptr %"R11" to ptr
  store float %"fadd.81", ptr %".2441"
  ; FFMA.RP R12, R9, R8, R9
  %"cast_ptr.212" = bitcast ptr %"R9" to ptr
  %".2444" = load float, ptr %"cast_ptr.212"
  %"cast_ptr.213" = bitcast ptr %"R8" to ptr
  %".2445" = load float, ptr %"cast_ptr.213"
  %"cast_ptr.214" = bitcast ptr %"R9" to ptr
  %".2446" = load float, ptr %"cast_ptr.214"
  %"fmul.73" = fmul float %".2444", %".2445"
  %"fadd.82" = fadd float %"fmul.73", %".2446"
  %".2447" = bitcast ptr %"R12" to ptr
  store float %"fadd.82", ptr %".2447"
  ; LOP3.LUT R8, R11.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".2450" = load i32, ptr %"R11"
  %".2451" = xor i1 1, -1
  %".2452" = and i32 %".2450", 8388607
  store i32 %".2452", ptr %"R8"
  ; FSETP.NEU.FTZ.AND P0, PT, R11, R12, PT
  %"cast_ptr.215" = bitcast ptr %"R11" to ptr
  %".2455" = load float, ptr %"cast_ptr.215"
  %"cast_ptr.216" = bitcast ptr %"R12" to ptr
  %".2456" = load float, ptr %"cast_ptr.216"
  %".2457" = load i1, ptr %"PT"
  %".2458" = call float @"llvm.fabs"(float %".2455")
  %".2459" = fcmp ogt float %".2458",              0x0
  %".2460" = fcmp olt float %".2458", 0x3810000000000000
  %".2461" = and i1 %".2459", %".2460"
  %".2462" = select  i1 %".2461", float              0x0, float %".2455"
  %".2463" = call float @"llvm.fabs"(float %".2456")
  %".2464" = fcmp ogt float %".2463",              0x0
  %".2465" = fcmp olt float %".2463", 0x3810000000000000
  %".2466" = and i1 %".2464", %".2465"
  %".2467" = select  i1 %".2466", float              0x0, float %".2456"
  %"fcmp_ordered" = fcmp une float %".2462", %".2467"
  %".2468" = xor i1 %"fcmp_ordered", -1
  %".2469" = and i1 %"fcmp_ordered", %".2457"
  %".2470" = and i1 %".2468", %".2457"
  store i1 %".2469", ptr %"P0"
  ; LOP3.LUT R8, R8, 0x800000, RZ, 0xfc, !PT
  %".2473" = load i32, ptr %"R8"
  %".2474" = xor i1 1, -1
  %".2475" = or i32 %".2473", 8388608
  store i32 %".2475", ptr %"R8"
  ; SEL R9, RZ, 0xffffffff, !P0
  %".2478" = load i1, ptr %"P0"
  %".2479" = xor i1 %".2478", -1
  %".2480" = icmp eq i1 %".2479", 1
  %"sel" = select  i1 %".2480", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R9"
  ; LOP3.LUT R13, R13, R8, RZ, 0xc0, !PT
  %".2483" = load i32, ptr %"R13"
  %".2484" = load i32, ptr %"R8"
  %".2485" = xor i1 1, -1
  %".2486" = and i32 %".2483", %".2484"
  store i32 %".2486", ptr %"R13"
  ; IMAD.MOV R9, RZ, RZ, -R9
  %".2489" = load i32, ptr %"R9"
  %".2490" = sub i32 0, %".2489"
  %"imad_mul.44" = mul i32 0, 0
  %"imad_add.47" = add i32 %"imad_mul.44", %".2490"
  store i32 %"imad_add.47", ptr %"R9"
  ; SHF.R.U32.HI R13, RZ, R18, R13
  %".2493" = load i32, ptr %"R18"
  %".2494" = icmp ult i32 %".2493", 32
  %"SHF_min.18" = select  i1 %".2494", i32 %".2493", i32 32
  %".2495" = load i32, ptr %"R13"
  %".2496" = load i32, ptr %"R18"
  %"zext.172" = zext i32 %".2495" to i64
  %"zext.173" = zext i32 0 to i64
  %"zext.174" = zext i32 %".2496" to i64
  %"shl.93" = shl i64 %"zext.172", 32
  %"or.77" = or i64 %"shl.93", %"zext.173"
  %"lshr.6" = lshr i64 %"or.77", %"zext.174"
  %"lshr.7" = lshr i64 %"lshr.6", 32
  %"trunc32.52" = trunc i64 %"lshr.7" to i32
  store i32 %"trunc32.52", ptr %"R13"
  ; LOP3.LUT P1, RZ, R9, R18, R8, 0xf8, !PT
  %".2499" = load i32, ptr %"R9"
  %".2500" = load i32, ptr %"R18"
  %".2501" = load i32, ptr %"R8"
  %".2502" = xor i1 1, -1
  %".2503" = or i32 %".2499", %".2500"
  %".2504" = or i32 %".2499", %".2501"
  %".2505" = and i32 %".2503", %".2504"
  store i32 %".2505", ptr %"RZ"
  %".2507" = icmp ne i32 %".2505", 0
  store i1 %".2507", ptr %"P1"
  ; LOP3.LUT P0, RZ, R13.reuse, 0x1, RZ, 0xc0, !PT
  %".2510" = load i32, ptr %"R13"
  %".2511" = xor i1 1, -1
  %".2512" = and i32 %".2510", 1
  store i32 %".2512", ptr %"RZ"
  %".2514" = icmp ne i32 %".2512", 0
  store i1 %".2514", ptr %"P0"
  ; LOP3.LUT P2, RZ, R13, 0x2, RZ, 0xc0, !PT
  %".2517" = load i32, ptr %"R13"
  %".2518" = xor i1 1, -1
  %".2519" = and i32 %".2517", 2
  store i32 %".2519", ptr %"RZ"
  %".2521" = icmp ne i32 %".2519", 0
  store i1 %".2521", ptr %"P2"
  ; IADD3 R9, R16, -0xfc, RZ
  %".2524" = load i32, ptr %"R16"
  %".2525" = add i32 %".2524", -252
  %".2526" = add i32 %".2525", 0
  store i32 %".2526", ptr %"R9"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".2529" = load i1, ptr %"P0"
  %".2530" = load i1, ptr %"P1"
  %".2531" = or i1 %".2529", %".2530"
  %".2532" = and i1 %".2531", 1
  ; LOP3.LUT P1, RZ, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2534" = load i32, ptr %"R15"
  %".2535" = xor i1 1, -1
  %".2536" = and i32 %".2534", 8388607
  store i32 %".2536", ptr %"RZ"
  %".2538" = icmp ne i32 %".2536", 0
  store i1 %".2538", ptr %"P1"
  ; SEL R0, RZ, 0x1, !P0
  %".2541" = load i1, ptr %"P0"
  %".2542" = xor i1 %".2541", -1
  %".2543" = icmp eq i1 %".2542", 1
  %"sel.1" = select  i1 %".2543", i32 0, i32 1
  store i32 %"sel.1", ptr %"R0"
  ; IADD3 R0, -R0, RZ, RZ
  %".2546" = load i32, ptr %"R0"
  %".2547" = sub i32 0, %".2546"
  %".2548" = add i32 %".2547", 0
  %".2549" = add i32 %".2548", 0
  store i32 %".2549", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, RZ, PT
  %".2552" = load i32, ptr %"R0"
  %".2553" = load i1, ptr %"PT"
  %"cmp.12" = icmp sge i32 %".2552", 0
  %".2554" = xor i1 %"cmp.12", -1
  %".2555" = and i1 %"cmp.12", %".2553"
  %".2556" = and i1 %".2554", %".2553"
  store i1 %".2555", ptr %"P0"
  ; SHF.R.U32.HI R0, RZ, R9, R8
  %".2559" = load i32, ptr %"R9"
  %".2560" = icmp ult i32 %".2559", 32
  %"SHF_min.19" = select  i1 %".2560", i32 %".2559", i32 32
  %".2561" = load i32, ptr %"R8"
  %".2562" = load i32, ptr %"R9"
  %"zext.175" = zext i32 %".2561" to i64
  %"zext.176" = zext i32 0 to i64
  %"zext.177" = zext i32 %".2562" to i64
  %"shl.94" = shl i64 %"zext.175", 32
  %"or.78" = or i64 %"shl.94", %"zext.176"
  %"lshr.8" = lshr i64 %"or.78", %"zext.177"
  %"lshr.9" = lshr i64 %"lshr.8", 32
  %"trunc32.53" = trunc i64 %"lshr.9" to i32
  store i32 %"trunc32.53", ptr %"R0"
  ; @!P0 IADD3 R0, R0, 0x1, RZ
  %".2565" = load i1, ptr %"P0"
  %".2566" = icmp ne i1 %".2565", 1
  br i1 %".2566", label %".L_x_21_split_0x1a90...1_conditionalExpr_0x1c30", label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...1"
.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30:
  ; IADD3 R0, R0, 0x1, RZ
  %".2569" = load i32, ptr %"R0"
  %".2570" = add i32 %".2569", 1
  %".2571" = add i32 %".2570", 0
  store i32 %".2571", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1)
  br label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...1"
.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1:
  ; IADD3 R0, R0, 0x1, RZ
  %".2576" = load i32, ptr %"R0"
  %".2577" = add i32 %".2576", 1
  %".2578" = add i32 %".2577", 0
  store i32 %".2578", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40)
  br label %".L_x_21_split_0x1c40...1"
.L_x_21_split_0x1c40...1:
  ; @!P1 IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".2583" = load i1, ptr %"P1"
  %".2584" = icmp ne i1 %".2583", 1
  br i1 %".2584", label %".L_x_21_split_0x1c40...1_conditionalExpr_0x1c40", label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...1"
.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".2587" = load i32, ptr %"R0"
  %"imad_shl.3" = shl i32 %".2587", 2
  %"imad_add.48" = add i32 %"imad_shl.3", 0
  store i32 %"imad_add.48", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1)
  br label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...1"
.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".2592" = load i32, ptr %"R0"
  %"imad_shl.4" = shl i32 %".2592", 2
  %"imad_add.49" = add i32 %"imad_shl.4", 0
  store i32 %"imad_add.49", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c50)
  br label %".L_x_21_split_0x1c50...1"
.L_x_21_split_0x1c50...1:
  ; LOP3.LUT R0, R0, 0x80000000, R15, 0xf8, !PT
  %".2597" = load i32, ptr %"R0"
  %".2598" = load i32, ptr %"R15"
  %".2599" = xor i1 1, -1
  %".2600" = or i32 %".2597", 2147483648
  %".2601" = or i32 %".2597", %".2598"
  %".2602" = and i32 %".2600", %".2601"
  store i32 %".2602", ptr %"R0"
  ; BRA `(.L_x_22)
  br label %".L_x_22...1"
.L_x_23...1:
  ; MUFU.RCP R0, R15
  %"cast_ptr.217" = bitcast ptr %"R15" to ptr
  %".2607" = load float, ptr %"cast_ptr.217"
  %".2608" = fdiv float 0x3ff0000000000000, %".2607"
  %".2609" = bitcast ptr %"R0" to ptr
  store float %".2608", ptr %".2609"
  br label %".L_x_22...1"
.L_x_22...1:
  ; BSYNC B1
  br label %".L_x_20...1"
.L_x_20...1:
  ; MOV R8, R14
  %".2615" = load i32, ptr %"R14"
  store i32 %".2615", ptr %"R8"
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
  %".2625" = load i32, ptr %"R0"
  %"imad_mul.46" = mul i32 0, 0
  %"imad_add.51" = add i32 %"imad_mul.46", %".2625"
  store i32 %"imad_add.51", ptr %"R7"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_9:
  ; MUFU.RCP R7, R15
  %"cast_ptr.218" = bitcast ptr %"R15" to ptr
  %".2630" = load float, ptr %"cast_ptr.218"
  %".2631" = fdiv float 0x3ff0000000000000, %".2630"
  %".2632" = bitcast ptr %"R7" to ptr
  store float %".2631", ptr %".2632"
  ; FFMA R0, R15, R7, -1
  %"cast_ptr.219" = bitcast ptr %"R15" to ptr
  %".2635" = load float, ptr %"cast_ptr.219"
  %"cast_ptr.220" = bitcast ptr %"R7" to ptr
  %".2636" = load float, ptr %"cast_ptr.220"
  %"fmul.74" = fmul float %".2635", %".2636"
  %"fadd.83" = fadd float %"fmul.74", 0xbff0000000000000
  %".2637" = bitcast ptr %"R0" to ptr
  store float %"fadd.83", ptr %".2637"
  ; FADD.FTZ R0, -R0, -RZ
  %"cast_ptr.221" = bitcast ptr %"R0" to ptr
  %".2640" = load float, ptr %"cast_ptr.221"
  %".2641" = fneg float %".2640"
  %".2642" = call float @"llvm.fabs"(float %".2641")
  %".2643" = fcmp ogt float %".2642",              0x0
  %".2644" = fcmp olt float %".2642", 0x3810000000000000
  %".2645" = and i1 %".2643", %".2644"
  %".2646" = select  i1 %".2645", float              0x0, float %".2641"
  %".2647" = call float @"llvm.fabs"(float              0x0)
  %".2648" = fcmp ogt float %".2647",              0x0
  %".2649" = fcmp olt float %".2647", 0x3810000000000000
  %".2650" = and i1 %".2648", %".2649"
  %".2651" = select  i1 %".2650", float              0x0, float              0x0
  %"fadd.84" = fadd float %".2646", %".2651"
  %".2652" = call float @"llvm.fabs"(float %"fadd.84")
  %".2653" = fcmp ogt float %".2652",              0x0
  %".2654" = fcmp olt float %".2652", 0x3810000000000000
  %".2655" = and i1 %".2653", %".2654"
  %".2656" = select  i1 %".2655", float              0x0, float %"fadd.84"
  %".2657" = bitcast ptr %"R0" to ptr
  store float %".2656", ptr %".2657"
  ; FFMA R7, R7, R0, R7
  %"cast_ptr.222" = bitcast ptr %"R7" to ptr
  %".2660" = load float, ptr %"cast_ptr.222"
  %"cast_ptr.223" = bitcast ptr %"R0" to ptr
  %".2661" = load float, ptr %"cast_ptr.223"
  %"cast_ptr.224" = bitcast ptr %"R7" to ptr
  %".2662" = load float, ptr %"cast_ptr.224"
  %"fmul.75" = fmul float %".2660", %".2661"
  %"fadd.85" = fadd float %"fmul.75", %".2662"
  %".2663" = bitcast ptr %"R7" to ptr
  store float %"fadd.85", ptr %".2663"
  br label %".L_x_10"
.L_x_10:
  ; BSYNC B0
  br label %".L_x_8"
.L_x_8:
  ; IADD3 R0, R2, 0x1800000, RZ
  %".2669" = load i32, ptr %"R2"
  %".2670" = add i32 %".2669", 25165824
  %".2671" = add i32 %".2670", 0
  store i32 %".2671", ptr %"R0"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_11)
  ; FMUL R4, R4, R7
  %"cast_ptr.225" = bitcast ptr %"R4" to ptr
  %".2676" = load float, ptr %"cast_ptr.225"
  %"cast_ptr.226" = bitcast ptr %"R7" to ptr
  %".2677" = load float, ptr %"cast_ptr.226"
  %"fmul.76" = fmul float %".2676", %".2677"
  %".2678" = bitcast ptr %"R4" to ptr
  store float %"fmul.76", ptr %".2678"
  ; LOP3.LUT R0, R0, 0x7f800000, RZ, 0xc0, !PT
  %".2681" = load i32, ptr %"R0"
  %".2682" = xor i1 1, -1
  %".2683" = and i32 %".2681", 2139095040
  store i32 %".2683", ptr %"R0"
  ; ISETP.GT.U32.AND P0, PT, R0, 0x1ffffff, PT
  %".2686" = load i32, ptr %"R0"
  %".2687" = load i1, ptr %"PT"
  %"cmp.13" = icmp sgt i32 %".2686", 33554431
  %".2688" = xor i1 %"cmp.13", -1
  %".2689" = and i1 %"cmp.13", %".2687"
  %".2690" = and i1 %".2688", %".2687"
  store i1 %".2689", ptr %"P0"
  ; @P0 BRA `(.L_x_12)
  %".2693" = load i1, ptr %"P0"
  %".2694" = icmp eq i1 %".2693", 1
  br i1 %".2694", label %".L_x_12", label %".L_x_8_split_0x15e0_CALL_0x1620"
.L_x_8_split_0x15e0_CALL_0x1620:
  ; MOV R15, R2
  %"cast_ptr.227" = bitcast ptr %"R2" to ptr
  %".2697" = load float, ptr %"cast_ptr.227"
  %".2698" = bitcast ptr %"R15" to ptr
  store float %".2697", ptr %".2698"
  ; MOV R14, 0x1610
  store i32 5648, ptr %"R14"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2:
  ; SHF.L.U32 R0, R15, 0x1, RZ
  %".2705" = icmp ult i32 1, 32
  %"SHF_min.20" = select  i1 %".2705", i32 1, i32 32
  %".2706" = load i32, ptr %"R15"
  %"zext.178" = zext i32 0 to i64
  %"zext.179" = zext i32 %".2706" to i64
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
  %".2711" = icmp ult i32 24, 32
  %"SHF_min.21" = select  i1 %".2711", i32 24, i32 32
  %".2712" = load i32, ptr %"R0"
  %"zext.181" = zext i32 %".2712" to i64
  %"zext.182" = zext i32 0 to i64
  %"zext.183" = zext i32 24 to i64
  %"shl.97" = shl i64 %"zext.181", 32
  %"or.80" = or i64 %"shl.97", %"zext.182"
  %"lshr.10" = lshr i64 %"or.80", %"zext.183"
  %"lshr.11" = lshr i64 %"lshr.10", 32
  %"trunc32.55" = trunc i64 %"lshr.11" to i32
  store i32 %"trunc32.55", ptr %"R16"
  ; ISETP.NE.U32.AND P0, PT, R16, RZ, PT
  %".2715" = load i32, ptr %"R16"
  %".2716" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".2715", 0
  %".2717" = xor i1 %"cmp.14", -1
  %".2718" = and i1 %"cmp.14", %".2716"
  %".2719" = and i1 %".2717", %".2716"
  store i1 %".2718", ptr %"P0"
  ; @P0 BRA `(.L_x_21)
  %".2722" = load i1, ptr %"P0"
  %".2723" = icmp eq i1 %".2722", 1
  br i1 %".2723", label %".L_x_21...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2:
  ; IMAD.SHL.U32 R0, R15, 0x2, RZ
  %".2726" = load i32, ptr %"R15"
  %"imad_shl.5" = shl i32 %".2726", 2
  %"imad_add.52" = add i32 %"imad_shl.5", 0
  store i32 %"imad_add.52", ptr %"R0"
  ; ISETP.NE.AND P0, PT, R0, RZ, PT
  %".2729" = load i32, ptr %"R0"
  %".2730" = load i1, ptr %"PT"
  %"cmp.15" = icmp ne i32 %".2729", 0
  %".2731" = xor i1 %"cmp.15", -1
  %".2732" = and i1 %"cmp.15", %".2730"
  %".2733" = and i1 %".2731", %".2730"
  store i1 %".2732", ptr %"P0"
  ; @P0 FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2736" = load i1, ptr %"P0"
  %".2737" = icmp eq i1 %".2736", 1
  br i1 %".2737", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %"cast_ptr.228" = bitcast ptr %"R15" to ptr
  %".2740" = load float, ptr %"cast_ptr.228"
  %"fmul.77" = fmul float %".2740", 0x43f0000000000000
  %"fadd.86" = fadd float %"fmul.77",              0x0
  %".2741" = bitcast ptr %"R8" to ptr
  store float %"fadd.86", ptr %".2741"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %"cast_ptr.229" = bitcast ptr %"R15" to ptr
  %".2746" = load float, ptr %"cast_ptr.229"
  %"fmul.78" = fmul float %".2746", 0x43f0000000000000
  %"fadd.87" = fadd float %"fmul.78",              0x0
  %".2747" = bitcast ptr %"R8" to ptr
  store float %"fadd.87", ptr %".2747"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2:
  ; @!P0 MUFU.RCP R0, R15
  %".2752" = load i1, ptr %"P0"
  %".2753" = icmp ne i1 %".2752", 1
  br i1 %".2753", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0:
  ; MUFU.RCP R0, R15
  %".2756" = load i32, ptr %"R15"
  %"sint_to_f32.1" = sitofp i32 %".2756" to float
  %".2757" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".2758" = fptosi float %".2757" to i32
  store i32 %".2758", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2:
  ; MUFU.RCP R0, R15
  %".2763" = load i32, ptr %"R15"
  %"sint_to_f32.2" = sitofp i32 %".2763" to float
  %".2764" = fdiv float 0x3ff0000000000000, %"sint_to_f32.2"
  %".2765" = fptosi float %".2764" to i32
  store i32 %".2765", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2:
  ; @P0 MUFU.RCP R9, R8
  %".2770" = load i1, ptr %"P0"
  %".2771" = icmp eq i1 %".2770", 1
  br i1 %".2771", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00:
  ; MUFU.RCP R9, R8
  %"cast_ptr.230" = bitcast ptr %"R8" to ptr
  %".2774" = load float, ptr %"cast_ptr.230"
  %".2775" = fdiv float 0x3ff0000000000000, %".2774"
  %".2776" = bitcast ptr %"R9" to ptr
  store float %".2775", ptr %".2776"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2:
  ; MUFU.RCP R9, R8
  %"cast_ptr.231" = bitcast ptr %"R8" to ptr
  %".2781" = load float, ptr %"cast_ptr.231"
  %".2782" = fdiv float 0x3ff0000000000000, %".2781"
  %".2783" = bitcast ptr %"R9" to ptr
  store float %".2782", ptr %".2783"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2:
  ; @P0 FFMA R11, R8, R9, -1
  %".2788" = load i1, ptr %"P0"
  %".2789" = icmp eq i1 %".2788", 1
  br i1 %".2789", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10:
  ; FFMA R11, R8, R9, -1
  %"cast_ptr.232" = bitcast ptr %"R8" to ptr
  %".2792" = load float, ptr %"cast_ptr.232"
  %"cast_ptr.233" = bitcast ptr %"R9" to ptr
  %".2793" = load float, ptr %"cast_ptr.233"
  %"fmul.79" = fmul float %".2792", %".2793"
  %"fadd.88" = fadd float %"fmul.79", 0xbff0000000000000
  %".2794" = bitcast ptr %"R11" to ptr
  store float %"fadd.88", ptr %".2794"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2:
  ; FFMA R11, R8, R9, -1
  %"cast_ptr.234" = bitcast ptr %"R8" to ptr
  %".2799" = load float, ptr %"cast_ptr.234"
  %"cast_ptr.235" = bitcast ptr %"R9" to ptr
  %".2800" = load float, ptr %"cast_ptr.235"
  %"fmul.80" = fmul float %".2799", %".2800"
  %"fadd.89" = fadd float %"fmul.80", 0xbff0000000000000
  %".2801" = bitcast ptr %"R11" to ptr
  store float %"fadd.89", ptr %".2801"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2:
  ; @P0 FADD.FTZ R12, -R11, -RZ
  %".2806" = load i1, ptr %"P0"
  %".2807" = icmp eq i1 %".2806", 1
  br i1 %".2807", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20:
  ; FADD.FTZ R12, -R11, -RZ
  %"cast_ptr.236" = bitcast ptr %"R11" to ptr
  %".2810" = load float, ptr %"cast_ptr.236"
  %".2811" = fneg float %".2810"
  %".2812" = call float @"llvm.fabs"(float %".2811")
  %".2813" = fcmp ogt float %".2812",              0x0
  %".2814" = fcmp olt float %".2812", 0x3810000000000000
  %".2815" = and i1 %".2813", %".2814"
  %".2816" = select  i1 %".2815", float              0x0, float %".2811"
  %".2817" = call float @"llvm.fabs"(float              0x0)
  %".2818" = fcmp ogt float %".2817",              0x0
  %".2819" = fcmp olt float %".2817", 0x3810000000000000
  %".2820" = and i1 %".2818", %".2819"
  %".2821" = select  i1 %".2820", float              0x0, float              0x0
  %"fadd.90" = fadd float %".2816", %".2821"
  %".2822" = call float @"llvm.fabs"(float %"fadd.90")
  %".2823" = fcmp ogt float %".2822",              0x0
  %".2824" = fcmp olt float %".2822", 0x3810000000000000
  %".2825" = and i1 %".2823", %".2824"
  %".2826" = select  i1 %".2825", float              0x0, float %"fadd.90"
  %".2827" = bitcast ptr %"R12" to ptr
  store float %".2826", ptr %".2827"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2:
  ; FADD.FTZ R12, -R11, -RZ
  %"cast_ptr.237" = bitcast ptr %"R11" to ptr
  %".2832" = load float, ptr %"cast_ptr.237"
  %".2833" = fneg float %".2832"
  %".2834" = call float @"llvm.fabs"(float %".2833")
  %".2835" = fcmp ogt float %".2834",              0x0
  %".2836" = fcmp olt float %".2834", 0x3810000000000000
  %".2837" = and i1 %".2835", %".2836"
  %".2838" = select  i1 %".2837", float              0x0, float %".2833"
  %".2839" = call float @"llvm.fabs"(float              0x0)
  %".2840" = fcmp ogt float %".2839",              0x0
  %".2841" = fcmp olt float %".2839", 0x3810000000000000
  %".2842" = and i1 %".2840", %".2841"
  %".2843" = select  i1 %".2842", float              0x0, float              0x0
  %"fadd.91" = fadd float %".2838", %".2843"
  %".2844" = call float @"llvm.fabs"(float %"fadd.91")
  %".2845" = fcmp ogt float %".2844",              0x0
  %".2846" = fcmp olt float %".2844", 0x3810000000000000
  %".2847" = and i1 %".2845", %".2846"
  %".2848" = select  i1 %".2847", float              0x0, float %"fadd.91"
  %".2849" = bitcast ptr %"R12" to ptr
  store float %".2848", ptr %".2849"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2:
  ; @P0 FFMA R12, R9, R12, R9
  %".2854" = load i1, ptr %"P0"
  %".2855" = icmp eq i1 %".2854", 1
  br i1 %".2855", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30:
  ; FFMA R12, R9, R12, R9
  %"cast_ptr.238" = bitcast ptr %"R9" to ptr
  %".2858" = load float, ptr %"cast_ptr.238"
  %"cast_ptr.239" = bitcast ptr %"R12" to ptr
  %".2859" = load float, ptr %"cast_ptr.239"
  %"cast_ptr.240" = bitcast ptr %"R9" to ptr
  %".2860" = load float, ptr %"cast_ptr.240"
  %"fmul.81" = fmul float %".2858", %".2859"
  %"fadd.92" = fadd float %"fmul.81", %".2860"
  %".2861" = bitcast ptr %"R12" to ptr
  store float %"fadd.92", ptr %".2861"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2:
  ; FFMA R12, R9, R12, R9
  %"cast_ptr.241" = bitcast ptr %"R9" to ptr
  %".2866" = load float, ptr %"cast_ptr.241"
  %"cast_ptr.242" = bitcast ptr %"R12" to ptr
  %".2867" = load float, ptr %"cast_ptr.242"
  %"cast_ptr.243" = bitcast ptr %"R9" to ptr
  %".2868" = load float, ptr %"cast_ptr.243"
  %"fmul.82" = fmul float %".2866", %".2867"
  %"fadd.93" = fadd float %"fmul.82", %".2868"
  %".2869" = bitcast ptr %"R12" to ptr
  store float %"fadd.93", ptr %".2869"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2:
  ; @P0 FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2874" = load i1, ptr %"P0"
  %".2875" = icmp eq i1 %".2874", 1
  br i1 %".2875", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %"cast_ptr.244" = bitcast ptr %"R12" to ptr
  %".2878" = load float, ptr %"cast_ptr.244"
  %"fmul.83" = fmul float %".2878", 0x43f0000000000000
  %"fadd.94" = fadd float %"fmul.83",              0x0
  %".2879" = bitcast ptr %"R0" to ptr
  store float %"fadd.94", ptr %".2879"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %"cast_ptr.245" = bitcast ptr %"R12" to ptr
  %".2884" = load float, ptr %"cast_ptr.245"
  %"fmul.84" = fmul float %".2884", 0x43f0000000000000
  %"fadd.95" = fadd float %"fmul.84",              0x0
  %".2885" = bitcast ptr %"R0" to ptr
  store float %"fadd.95", ptr %".2885"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...2:
  ; BRA `(.L_x_22)
  br label %".L_x_22...2"
.L_x_21...2:
  ; IADD3 R18, R16, -0xfd, RZ
  %".2892" = load i32, ptr %"R16"
  %".2893" = add i32 %".2892", -253
  %".2894" = add i32 %".2893", 0
  store i32 %".2894", ptr %"R18"
  ; ISETP.GT.U32.AND P0, PT, R18, 0x1, PT
  %".2897" = load i32, ptr %"R18"
  %".2898" = load i1, ptr %"PT"
  %"cmp.16" = icmp sgt i32 %".2897", 1
  %".2899" = xor i1 %"cmp.16", -1
  %".2900" = and i1 %"cmp.16", %".2898"
  %".2901" = and i1 %".2899", %".2898"
  store i1 %".2900", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".2904" = load i1, ptr %"P0"
  %".2905" = icmp eq i1 %".2904", 1
  br i1 %".2905", label %".L_x_23...2", label %".L_x_21_split_0x1a90...2"
.L_x_21_split_0x1a90...2:
  ; LOP3.LUT R0, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2908" = load i32, ptr %"R15"
  %".2909" = xor i1 1, -1
  %".2910" = and i32 %".2908", 8388607
  store i32 %".2910", ptr %"R0"
  ; MOV R13, 0x3
  store i32 3, ptr %"R13"
  ; LOP3.LUT R0, R0, 0x3f800000, RZ, 0xfc, !PT
  %".2915" = load i32, ptr %"R0"
  %".2916" = xor i1 1, -1
  %".2917" = or i32 %".2915", 1065353216
  store i32 %".2917", ptr %"R0"
  ; SHF.L.U32 R13, R13, R18, RZ
  %".2920" = load i32, ptr %"R18"
  %".2921" = icmp ult i32 %".2920", 32
  %"SHF_min.22" = select  i1 %".2921", i32 %".2920", i32 32
  %".2922" = load i32, ptr %"R13"
  %".2923" = load i32, ptr %"R18"
  %"zext.184" = zext i32 0 to i64
  %"zext.185" = zext i32 %".2922" to i64
  %"zext.186" = zext i32 %".2923" to i64
  %"shl.98" = shl i64 %"zext.184", 32
  %"or.81" = or i64 %"shl.98", %"zext.185"
  %"shl.99" = shl i64 %"or.81", %"zext.186"
  %"and.10" = and i64 %"shl.99", 4294967295
  %"trunc32.56" = trunc i64 %"and.10" to i32
  store i32 %"trunc32.56", ptr %"R13"
  ; MUFU.RCP R9, R0
  %".2926" = load i32, ptr %"R0"
  %"sint_to_f32.3" = sitofp i32 %".2926" to float
  %".2927" = fdiv float 0x3ff0000000000000, %"sint_to_f32.3"
  %".2928" = fptosi float %".2927" to i32
  store i32 %".2928", ptr %"R9"
  ; FFMA R8, R0, R9, -1
  %"cast_ptr.246" = bitcast ptr %"R0" to ptr
  %".2931" = load float, ptr %"cast_ptr.246"
  %"cast_ptr.247" = bitcast ptr %"R9" to ptr
  %".2932" = load float, ptr %"cast_ptr.247"
  %"fmul.85" = fmul float %".2931", %".2932"
  %"fadd.96" = fadd float %"fmul.85", 0xbff0000000000000
  %".2933" = bitcast ptr %"R8" to ptr
  store float %"fadd.96", ptr %".2933"
  ; FADD.FTZ R8, -R8, -RZ
  %"cast_ptr.248" = bitcast ptr %"R8" to ptr
  %".2936" = load float, ptr %"cast_ptr.248"
  %".2937" = fneg float %".2936"
  %".2938" = call float @"llvm.fabs"(float %".2937")
  %".2939" = fcmp ogt float %".2938",              0x0
  %".2940" = fcmp olt float %".2938", 0x3810000000000000
  %".2941" = and i1 %".2939", %".2940"
  %".2942" = select  i1 %".2941", float              0x0, float %".2937"
  %".2943" = call float @"llvm.fabs"(float              0x0)
  %".2944" = fcmp ogt float %".2943",              0x0
  %".2945" = fcmp olt float %".2943", 0x3810000000000000
  %".2946" = and i1 %".2944", %".2945"
  %".2947" = select  i1 %".2946", float              0x0, float              0x0
  %"fadd.97" = fadd float %".2942", %".2947"
  %".2948" = call float @"llvm.fabs"(float %"fadd.97")
  %".2949" = fcmp ogt float %".2948",              0x0
  %".2950" = fcmp olt float %".2948", 0x3810000000000000
  %".2951" = and i1 %".2949", %".2950"
  %".2952" = select  i1 %".2951", float              0x0, float %"fadd.97"
  %".2953" = bitcast ptr %"R8" to ptr
  store float %".2952", ptr %".2953"
  ; FFMA.RM R11, R9.reuse, R8.reuse, R9.reuse
  %"cast_ptr.249" = bitcast ptr %"R9" to ptr
  %".2956" = load float, ptr %"cast_ptr.249"
  %"cast_ptr.250" = bitcast ptr %"R8" to ptr
  %".2957" = load float, ptr %"cast_ptr.250"
  %"cast_ptr.251" = bitcast ptr %"R9" to ptr
  %".2958" = load float, ptr %"cast_ptr.251"
  %"fmul.86" = fmul float %".2956", %".2957"
  %"fadd.98" = fadd float %"fmul.86", %".2958"
  %".2959" = bitcast ptr %"R11" to ptr
  store float %"fadd.98", ptr %".2959"
  ; FFMA.RP R12, R9, R8, R9
  %"cast_ptr.252" = bitcast ptr %"R9" to ptr
  %".2962" = load float, ptr %"cast_ptr.252"
  %"cast_ptr.253" = bitcast ptr %"R8" to ptr
  %".2963" = load float, ptr %"cast_ptr.253"
  %"cast_ptr.254" = bitcast ptr %"R9" to ptr
  %".2964" = load float, ptr %"cast_ptr.254"
  %"fmul.87" = fmul float %".2962", %".2963"
  %"fadd.99" = fadd float %"fmul.87", %".2964"
  %".2965" = bitcast ptr %"R12" to ptr
  store float %"fadd.99", ptr %".2965"
  ; LOP3.LUT R8, R11.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".2968" = load i32, ptr %"R11"
  %".2969" = xor i1 1, -1
  %".2970" = and i32 %".2968", 8388607
  store i32 %".2970", ptr %"R8"
  ; FSETP.NEU.FTZ.AND P0, PT, R11, R12, PT
  %"cast_ptr.255" = bitcast ptr %"R11" to ptr
  %".2973" = load float, ptr %"cast_ptr.255"
  %"cast_ptr.256" = bitcast ptr %"R12" to ptr
  %".2974" = load float, ptr %"cast_ptr.256"
  %".2975" = load i1, ptr %"PT"
  %".2976" = call float @"llvm.fabs"(float %".2973")
  %".2977" = fcmp ogt float %".2976",              0x0
  %".2978" = fcmp olt float %".2976", 0x3810000000000000
  %".2979" = and i1 %".2977", %".2978"
  %".2980" = select  i1 %".2979", float              0x0, float %".2973"
  %".2981" = call float @"llvm.fabs"(float %".2974")
  %".2982" = fcmp ogt float %".2981",              0x0
  %".2983" = fcmp olt float %".2981", 0x3810000000000000
  %".2984" = and i1 %".2982", %".2983"
  %".2985" = select  i1 %".2984", float              0x0, float %".2974"
  %"fcmp_ordered.1" = fcmp une float %".2980", %".2985"
  %".2986" = xor i1 %"fcmp_ordered.1", -1
  %".2987" = and i1 %"fcmp_ordered.1", %".2975"
  %".2988" = and i1 %".2986", %".2975"
  store i1 %".2987", ptr %"P0"
  ; LOP3.LUT R8, R8, 0x800000, RZ, 0xfc, !PT
  %".2991" = load i32, ptr %"R8"
  %".2992" = xor i1 1, -1
  %".2993" = or i32 %".2991", 8388608
  store i32 %".2993", ptr %"R8"
  ; SEL R9, RZ, 0xffffffff, !P0
  %".2996" = load i1, ptr %"P0"
  %".2997" = xor i1 %".2996", -1
  %".2998" = icmp eq i1 %".2997", 1
  %"sel.2" = select  i1 %".2998", i32 0, i32 4294967295
  store i32 %"sel.2", ptr %"R9"
  ; LOP3.LUT R13, R13, R8, RZ, 0xc0, !PT
  %".3001" = load i32, ptr %"R13"
  %".3002" = load i32, ptr %"R8"
  %".3003" = xor i1 1, -1
  %".3004" = and i32 %".3001", %".3002"
  store i32 %".3004", ptr %"R13"
  ; IMAD.MOV R9, RZ, RZ, -R9
  %".3007" = load i32, ptr %"R9"
  %".3008" = sub i32 0, %".3007"
  %"imad_mul.47" = mul i32 0, 0
  %"imad_add.53" = add i32 %"imad_mul.47", %".3008"
  store i32 %"imad_add.53", ptr %"R9"
  ; SHF.R.U32.HI R13, RZ, R18, R13
  %".3011" = load i32, ptr %"R18"
  %".3012" = icmp ult i32 %".3011", 32
  %"SHF_min.23" = select  i1 %".3012", i32 %".3011", i32 32
  %".3013" = load i32, ptr %"R13"
  %".3014" = load i32, ptr %"R18"
  %"zext.187" = zext i32 %".3013" to i64
  %"zext.188" = zext i32 0 to i64
  %"zext.189" = zext i32 %".3014" to i64
  %"shl.100" = shl i64 %"zext.187", 32
  %"or.82" = or i64 %"shl.100", %"zext.188"
  %"lshr.12" = lshr i64 %"or.82", %"zext.189"
  %"lshr.13" = lshr i64 %"lshr.12", 32
  %"trunc32.57" = trunc i64 %"lshr.13" to i32
  store i32 %"trunc32.57", ptr %"R13"
  ; LOP3.LUT P1, RZ, R9, R18, R8, 0xf8, !PT
  %".3017" = load i32, ptr %"R9"
  %".3018" = load i32, ptr %"R18"
  %".3019" = load i32, ptr %"R8"
  %".3020" = xor i1 1, -1
  %".3021" = or i32 %".3017", %".3018"
  %".3022" = or i32 %".3017", %".3019"
  %".3023" = and i32 %".3021", %".3022"
  store i32 %".3023", ptr %"RZ"
  %".3025" = icmp ne i32 %".3023", 0
  store i1 %".3025", ptr %"P1"
  ; LOP3.LUT P0, RZ, R13.reuse, 0x1, RZ, 0xc0, !PT
  %".3028" = load i32, ptr %"R13"
  %".3029" = xor i1 1, -1
  %".3030" = and i32 %".3028", 1
  store i32 %".3030", ptr %"RZ"
  %".3032" = icmp ne i32 %".3030", 0
  store i1 %".3032", ptr %"P0"
  ; LOP3.LUT P2, RZ, R13, 0x2, RZ, 0xc0, !PT
  %".3035" = load i32, ptr %"R13"
  %".3036" = xor i1 1, -1
  %".3037" = and i32 %".3035", 2
  store i32 %".3037", ptr %"RZ"
  %".3039" = icmp ne i32 %".3037", 0
  store i1 %".3039", ptr %"P2"
  ; IADD3 R9, R16, -0xfc, RZ
  %".3042" = load i32, ptr %"R16"
  %".3043" = add i32 %".3042", -252
  %".3044" = add i32 %".3043", 0
  store i32 %".3044", ptr %"R9"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3047" = load i1, ptr %"P0"
  %".3048" = load i1, ptr %"P1"
  %".3049" = or i1 %".3047", %".3048"
  %".3050" = and i1 %".3049", 1
  ; LOP3.LUT P1, RZ, R15, 0x7fffff, RZ, 0xc0, !PT
  %".3052" = load i32, ptr %"R15"
  %".3053" = xor i1 1, -1
  %".3054" = and i32 %".3052", 8388607
  store i32 %".3054", ptr %"RZ"
  %".3056" = icmp ne i32 %".3054", 0
  store i1 %".3056", ptr %"P1"
  ; SEL R0, RZ, 0x1, !P0
  %".3059" = load i1, ptr %"P0"
  %".3060" = xor i1 %".3059", -1
  %".3061" = icmp eq i1 %".3060", 1
  %"sel.3" = select  i1 %".3061", i32 0, i32 1
  store i32 %"sel.3", ptr %"R0"
  ; IADD3 R0, -R0, RZ, RZ
  %".3064" = load i32, ptr %"R0"
  %".3065" = sub i32 0, %".3064"
  %".3066" = add i32 %".3065", 0
  %".3067" = add i32 %".3066", 0
  store i32 %".3067", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, RZ, PT
  %".3070" = load i32, ptr %"R0"
  %".3071" = load i1, ptr %"PT"
  %"cmp.17" = icmp sge i32 %".3070", 0
  %".3072" = xor i1 %"cmp.17", -1
  %".3073" = and i1 %"cmp.17", %".3071"
  %".3074" = and i1 %".3072", %".3071"
  store i1 %".3073", ptr %"P0"
  ; SHF.R.U32.HI R0, RZ, R9, R8
  %".3077" = load i32, ptr %"R9"
  %".3078" = icmp ult i32 %".3077", 32
  %"SHF_min.24" = select  i1 %".3078", i32 %".3077", i32 32
  %".3079" = load i32, ptr %"R8"
  %".3080" = load i32, ptr %"R9"
  %"zext.190" = zext i32 %".3079" to i64
  %"zext.191" = zext i32 0 to i64
  %"zext.192" = zext i32 %".3080" to i64
  %"shl.101" = shl i64 %"zext.190", 32
  %"or.83" = or i64 %"shl.101", %"zext.191"
  %"lshr.14" = lshr i64 %"or.83", %"zext.192"
  %"lshr.15" = lshr i64 %"lshr.14", 32
  %"trunc32.58" = trunc i64 %"lshr.15" to i32
  store i32 %"trunc32.58", ptr %"R0"
  ; @!P0 IADD3 R0, R0, 0x1, RZ
  %".3083" = load i1, ptr %"P0"
  %".3084" = icmp ne i1 %".3083", 1
  br i1 %".3084", label %".L_x_21_split_0x1a90...2_conditionalExpr_0x1c30", label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...2"
.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30:
  ; IADD3 R0, R0, 0x1, RZ
  %".3087" = load i32, ptr %"R0"
  %".3088" = add i32 %".3087", 1
  %".3089" = add i32 %".3088", 0
  store i32 %".3089", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2)
  br label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...2"
.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2:
  ; IADD3 R0, R0, 0x1, RZ
  %".3094" = load i32, ptr %"R0"
  %".3095" = add i32 %".3094", 1
  %".3096" = add i32 %".3095", 0
  store i32 %".3096", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40)
  br label %".L_x_21_split_0x1c40...2"
.L_x_21_split_0x1c40...2:
  ; @!P1 IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3101" = load i1, ptr %"P1"
  %".3102" = icmp ne i1 %".3101", 1
  br i1 %".3102", label %".L_x_21_split_0x1c40...2_conditionalExpr_0x1c40", label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...2"
.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3105" = load i32, ptr %"R0"
  %"imad_shl.6" = shl i32 %".3105", 2
  %"imad_add.54" = add i32 %"imad_shl.6", 0
  store i32 %"imad_add.54", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2)
  br label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...2"
.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3110" = load i32, ptr %"R0"
  %"imad_shl.7" = shl i32 %".3110", 2
  %"imad_add.55" = add i32 %"imad_shl.7", 0
  store i32 %"imad_add.55", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c50)
  br label %".L_x_21_split_0x1c50...2"
.L_x_21_split_0x1c50...2:
  ; LOP3.LUT R0, R0, 0x80000000, R15, 0xf8, !PT
  %".3115" = load i32, ptr %"R0"
  %".3116" = load i32, ptr %"R15"
  %".3117" = xor i1 1, -1
  %".3118" = or i32 %".3115", 2147483648
  %".3119" = or i32 %".3115", %".3116"
  %".3120" = and i32 %".3118", %".3119"
  store i32 %".3120", ptr %"R0"
  ; BRA `(.L_x_22)
  br label %".L_x_22...2"
.L_x_23...2:
  ; MUFU.RCP R0, R15
  %".3125" = load i32, ptr %"R15"
  %"sint_to_f32.4" = sitofp i32 %".3125" to float
  %".3126" = fdiv float 0x3ff0000000000000, %"sint_to_f32.4"
  %".3127" = fptosi float %".3126" to i32
  store i32 %".3127", ptr %"R0"
  br label %".L_x_22...2"
.L_x_22...2:
  ; BSYNC B1
  br label %".L_x_20...2"
.L_x_20...2:
  ; MOV R8, R14
  %".3133" = load i32, ptr %"R14"
  store i32 %".3133", ptr %"R8"
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
  %".3143" = load i32, ptr %"R0"
  %"imad_mul.49" = mul i32 0, 0
  %"imad_add.57" = add i32 %"imad_mul.49", %".3143"
  store i32 %"imad_add.57", ptr %"R7"
  ; BRA `(.L_x_13)
  br label %".L_x_13"
.L_x_12:
  ; MUFU.RCP R7, R2
  %"cast_ptr.257" = bitcast ptr %"R2" to ptr
  %".3148" = load float, ptr %"cast_ptr.257"
  %".3149" = fdiv float 0x3ff0000000000000, %".3148"
  %".3150" = bitcast ptr %"R7" to ptr
  store float %".3149", ptr %".3150"
  ; FFMA R0, R2, R7, -1
  %"cast_ptr.258" = bitcast ptr %"R2" to ptr
  %".3153" = load float, ptr %"cast_ptr.258"
  %"cast_ptr.259" = bitcast ptr %"R7" to ptr
  %".3154" = load float, ptr %"cast_ptr.259"
  %"fmul.88" = fmul float %".3153", %".3154"
  %"fadd.100" = fadd float %"fmul.88", 0xbff0000000000000
  %".3155" = bitcast ptr %"R0" to ptr
  store float %"fadd.100", ptr %".3155"
  ; FADD.FTZ R0, -R0, -RZ
  %"cast_ptr.260" = bitcast ptr %"R0" to ptr
  %".3158" = load float, ptr %"cast_ptr.260"
  %".3159" = fneg float %".3158"
  %".3160" = call float @"llvm.fabs"(float %".3159")
  %".3161" = fcmp ogt float %".3160",              0x0
  %".3162" = fcmp olt float %".3160", 0x3810000000000000
  %".3163" = and i1 %".3161", %".3162"
  %".3164" = select  i1 %".3163", float              0x0, float %".3159"
  %".3165" = call float @"llvm.fabs"(float              0x0)
  %".3166" = fcmp ogt float %".3165",              0x0
  %".3167" = fcmp olt float %".3165", 0x3810000000000000
  %".3168" = and i1 %".3166", %".3167"
  %".3169" = select  i1 %".3168", float              0x0, float              0x0
  %"fadd.101" = fadd float %".3164", %".3169"
  %".3170" = call float @"llvm.fabs"(float %"fadd.101")
  %".3171" = fcmp ogt float %".3170",              0x0
  %".3172" = fcmp olt float %".3170", 0x3810000000000000
  %".3173" = and i1 %".3171", %".3172"
  %".3174" = select  i1 %".3173", float              0x0, float %"fadd.101"
  %".3175" = bitcast ptr %"R0" to ptr
  store float %".3174", ptr %".3175"
  ; FFMA R7, R7, R0, R7
  %"cast_ptr.261" = bitcast ptr %"R7" to ptr
  %".3178" = load float, ptr %"cast_ptr.261"
  %"cast_ptr.262" = bitcast ptr %"R0" to ptr
  %".3179" = load float, ptr %"cast_ptr.262"
  %"cast_ptr.263" = bitcast ptr %"R7" to ptr
  %".3180" = load float, ptr %"cast_ptr.263"
  %"fmul.89" = fmul float %".3178", %".3179"
  %"fadd.102" = fadd float %"fmul.89", %".3180"
  %".3181" = bitcast ptr %"R7" to ptr
  store float %"fadd.102", ptr %".3181"
  br label %".L_x_13"
.L_x_13:
  ; BSYNC B0
  br label %".L_x_11"
.L_x_11:
  ; FFMA R9, R7, R10, R4
  %"cast_ptr.264" = bitcast ptr %"R7" to ptr
  %".3187" = load float, ptr %"cast_ptr.264"
  %"cast_ptr.265" = bitcast ptr %"R10" to ptr
  %".3188" = load float, ptr %"cast_ptr.265"
  %"cast_ptr.266" = bitcast ptr %"R4" to ptr
  %".3189" = load float, ptr %"cast_ptr.266"
  %"fmul.90" = fmul float %".3187", %".3188"
  %"fadd.103" = fadd float %"fmul.90", %".3189"
  %".3190" = bitcast ptr %"R9" to ptr
  store float %"fadd.103", ptr %".3190"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_14)
  ; FSETP.GE.AND P0, PT, |R9|, 0.60000002384185791016, PT
  %"cast_ptr.267" = bitcast ptr %"R9" to ptr
  %".3195" = load float, ptr %"cast_ptr.267"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".3195")
  %".3196" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".3197" = xor i1 %"fcmp_unordered.2", -1
  %".3198" = and i1 %"fcmp_unordered.2", %".3196"
  %".3199" = and i1 %".3197", %".3196"
  store i1 %".3198", ptr %"P0"
  ; @!P0 BRA `(.L_x_15)
  %".3202" = load i1, ptr %"P0"
  %".3203" = icmp ne i1 %".3202", 1
  br i1 %".3203", label %".L_x_15", label %".L_x_11_split_0x16d0"
.L_x_11_split_0x16d0:
  ; FMUL R0, |R9|.reuse, 2.8853900432586669922
  %"cast_ptr.268" = bitcast ptr %"R9" to ptr
  %".3206" = load float, ptr %"cast_ptr.268"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".3206")
  %"fmul.91" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".3207" = bitcast ptr %"R0" to ptr
  store float %"fmul.91", ptr %".3207"
  ; MOV R7, 0x3f800000
  %".3210" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".3210"
  ; FSETP.GE.AND P0, PT, |R9|, 9.010913848876953125, PT
  %"cast_ptr.269" = bitcast ptr %"R9" to ptr
  %".3213" = load float, ptr %"cast_ptr.269"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".3213")
  %".3214" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".3215" = xor i1 %"fcmp_unordered.3", -1
  %".3216" = and i1 %"fcmp_unordered.3", %".3214"
  %".3217" = and i1 %".3215", %".3214"
  store i1 %".3216", ptr %"P0"
  ; MUFU.EX2 R0, R0
  %"cast_ptr.270" = bitcast ptr %"R0" to ptr
  %".3220" = load float, ptr %"cast_ptr.270"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".3220")
  %".3221" = bitcast ptr %"R0" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".3221"
  ; FADD R2, R0, 1
  %"cast_ptr.271" = bitcast ptr %"R0" to ptr
  %".3224" = load float, ptr %"cast_ptr.271"
  %"fadd.104" = fadd float %".3224", 0x3ff0000000000000
  %".3225" = bitcast ptr %"R2" to ptr
  store float %"fadd.104", ptr %".3225"
  ; MUFU.RCP R2, R2
  %"cast_ptr.272" = bitcast ptr %"R2" to ptr
  %".3228" = load float, ptr %"cast_ptr.272"
  %".3229" = fdiv float 0x3ff0000000000000, %".3228"
  %".3230" = bitcast ptr %"R2" to ptr
  store float %".3229", ptr %".3230"
  ; FFMA R4, R2, -2, R7
  %"cast_ptr.273" = bitcast ptr %"R2" to ptr
  %".3233" = load float, ptr %"cast_ptr.273"
  %"cast_ptr.274" = bitcast ptr %"R7" to ptr
  %".3234" = load float, ptr %"cast_ptr.274"
  %"fmul.92" = fmul float %".3233", 0xc000000000000000
  %"fadd.105" = fadd float %"fmul.92", %".3234"
  %".3235" = bitcast ptr %"R4" to ptr
  store float %"fadd.105", ptr %".3235"
  ; FSEL R4, R4, 1, !P0
  %"cast_ptr.275" = bitcast ptr %"R4" to ptr
  %".3238" = load float, ptr %"cast_ptr.275"
  %".3239" = load i1, ptr %"P0"
  %".3240" = xor i1 %".3239", -1
  %".3241" = icmp eq i1 %".3240", 1
  %"fsel.1" = select  i1 %".3241", float %".3238", float 0x3ff0000000000000
  %".3242" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".3242"
  ; LOP3.LUT R7, R4, 0x80000000, R9, 0xf8, !PT
  %".3245" = load i32, ptr %"R4"
  %".3246" = load i32, ptr %"R9"
  %".3247" = xor i1 1, -1
  %".3248" = or i32 %".3245", 2147483648
  %".3249" = or i32 %".3245", %".3246"
  %".3250" = and i32 %".3248", %".3249"
  store i32 %".3250", ptr %"R7"
  ; BRA `(.L_x_16)
  br label %".L_x_16"
.L_x_15:
  ; IMAD.MOV.U32 R7, RZ, RZ, 0x3c80f082
  %"imad_mul.50" = mul i32 0, 0
  %"imad_add.58" = add i32 %"imad_mul.50", 1015083138
  store i32 %"imad_add.58", ptr %"R7"
  ; FMUL R0, R9, R9
  %"cast_ptr.276" = bitcast ptr %"R9" to ptr
  %".3257" = load float, ptr %"cast_ptr.276"
  %"cast_ptr.277" = bitcast ptr %"R9" to ptr
  %".3258" = load float, ptr %"cast_ptr.277"
  %"fmul.93" = fmul float %".3257", %".3258"
  %".3259" = bitcast ptr %"R0" to ptr
  store float %"fmul.93", ptr %".3259"
  ; FFMA R7, R0, R7, -0.052303962409496307373
  %"cast_ptr.278" = bitcast ptr %"R0" to ptr
  %".3262" = load float, ptr %"cast_ptr.278"
  %"cast_ptr.279" = bitcast ptr %"R7" to ptr
  %".3263" = load float, ptr %"cast_ptr.279"
  %"fmul.94" = fmul float %".3262", %".3263"
  %"fadd.106" = fadd float %"fmul.94", 0xbfaac795c0000000
  %".3264" = bitcast ptr %"R7" to ptr
  store float %"fadd.106", ptr %".3264"
  ; FFMA R7, R0, R7, 0.1331529766321182251
  %"cast_ptr.280" = bitcast ptr %"R0" to ptr
  %".3267" = load float, ptr %"cast_ptr.280"
  %"cast_ptr.281" = bitcast ptr %"R7" to ptr
  %".3268" = load float, ptr %"cast_ptr.281"
  %"fmul.95" = fmul float %".3267", %".3268"
  %"fadd.107" = fadd float %"fmul.95", 0x3fc10b2820000000
  %".3269" = bitcast ptr %"R7" to ptr
  store float %"fadd.107", ptr %".3269"
  ; FFMA R7, R0, R7, -0.33332768082618713379
  %"cast_ptr.282" = bitcast ptr %"R0" to ptr
  %".3272" = load float, ptr %"cast_ptr.282"
  %"cast_ptr.283" = bitcast ptr %"R7" to ptr
  %".3273" = load float, ptr %"cast_ptr.283"
  %"fmul.96" = fmul float %".3272", %".3273"
  %"fadd.108" = fadd float %"fmul.96", 0xbfd5553da0000000
  %".3274" = bitcast ptr %"R7" to ptr
  store float %"fadd.108", ptr %".3274"
  ; FFMA R7, R0, R7, RZ
  %"cast_ptr.284" = bitcast ptr %"R0" to ptr
  %".3277" = load float, ptr %"cast_ptr.284"
  %"cast_ptr.285" = bitcast ptr %"R7" to ptr
  %".3278" = load float, ptr %"cast_ptr.285"
  %"fmul.97" = fmul float %".3277", %".3278"
  %"fadd.109" = fadd float %"fmul.97",              0x0
  %".3279" = bitcast ptr %"R7" to ptr
  store float %"fadd.109", ptr %".3279"
  ; FFMA R7, R9, R7, R9
  %"cast_ptr.286" = bitcast ptr %"R9" to ptr
  %".3282" = load float, ptr %"cast_ptr.286"
  %"cast_ptr.287" = bitcast ptr %"R7" to ptr
  %".3283" = load float, ptr %"cast_ptr.287"
  %"cast_ptr.288" = bitcast ptr %"R9" to ptr
  %".3284" = load float, ptr %"cast_ptr.288"
  %"fmul.98" = fmul float %".3282", %".3283"
  %"fadd.110" = fadd float %"fmul.98", %".3284"
  %".3285" = bitcast ptr %"R7" to ptr
  store float %"fadd.110", ptr %".3285"
  br label %".L_x_16"
.L_x_16:
  ; BSYNC B0
  br label %".L_x_14"
.L_x_14:
  ; IADD3 R0, R5, 0x1800000, RZ
  %".3291" = load i32, ptr %"R5"
  %".3292" = add i32 %".3291", 25165824
  %".3293" = add i32 %".3292", 0
  store i32 %".3293", ptr %"R0"
  ; ULDC.64 UR4, c[0x0][0x1a0]
  %".3296" = ptrtoint ptr %"Arg_8" to i64
  %".3297" = and i64 %".3296", 18446744069414584320
  %".3298" = lshr i64 %".3297", 32
  %"trunc32.59" = trunc i64 %".3298" to i32
  %"trunc32.60" = trunc i64 %".3296" to i32
  store i32 %"trunc32.60", ptr %"UR4"
  store i32 %"trunc32.59", ptr %"UR5"
  ; SHF.L.U64.HI R3, R6, 0x2, R3
  %".3302" = icmp ult i32 2, 64
  %"SHF_min.25" = select  i1 %".3302", i32 2, i32 64
  %".3303" = load i32, ptr %"R3"
  %".3304" = load i32, ptr %"R6"
  %"zext.193" = zext i32 %".3303" to i64
  %"zext.194" = zext i32 %".3304" to i64
  %"zext.195" = zext i32 2 to i64
  %"shl.102" = shl i64 %"zext.193", 32
  %"or.84" = or i64 %"shl.102", %"zext.194"
  %"shl.103" = shl i64 %"or.84", %"zext.195"
  %"lshr.16" = lshr i64 %"shl.103", 32
  %"trunc32.61" = trunc i64 %"lshr.16" to i32
  store i32 %"trunc32.61", ptr %"R3"
  ; BMOV.32.CLEAR RZ, B0
  ; LOP3.LUT R0, R0, 0x7f800000, RZ, 0xc0, !PT
  %".3308" = load i32, ptr %"R0"
  %".3309" = xor i1 1, -1
  %".3310" = and i32 %".3308", 2139095040
  store i32 %".3310", ptr %"R0"
  ; BSSY B0, `(.L_x_17)
  ; SHF.L.U32 R2, R6, 0x2, RZ
  %".3314" = icmp ult i32 2, 32
  %"SHF_min.26" = select  i1 %".3314", i32 2, i32 32
  %".3315" = load i32, ptr %"R6"
  %"zext.196" = zext i32 0 to i64
  %"zext.197" = zext i32 %".3315" to i64
  %"zext.198" = zext i32 2 to i64
  %"shl.104" = shl i64 %"zext.196", 32
  %"or.85" = or i64 %"shl.104", %"zext.197"
  %"shl.105" = shl i64 %"or.85", %"zext.198"
  %"and.11" = and i64 %"shl.105", 4294967295
  %"trunc32.62" = trunc i64 %"and.11" to i32
  store i32 %"trunc32.62", ptr %"R2"
  ; ISETP.GT.U32.AND P0, PT, R0, 0x1ffffff, PT
  %".3318" = load i32, ptr %"R0"
  %".3319" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".3318", 33554431
  %".3320" = xor i1 %"cmp.18", -1
  %".3321" = and i1 %"cmp.18", %".3319"
  %".3322" = and i1 %".3320", %".3319"
  store i1 %".3321", ptr %"P0"
  ; STG.E.SYS [R2.64+UR4], R9
  %"cast_ptr.289" = bitcast ptr %"R9" to ptr
  %".3325" = load float, ptr %"cast_ptr.289"
  %".3326" = load i32, ptr %"R2"
  %"zext.199" = zext i32 %".3326" to i64
  %".3327" = load i32, ptr %"R3"
  %"zext.200" = zext i32 %".3327" to i64
  %"shl.106" = shl i64 %"zext.200", 32
  %"or.86" = or i64 %"shl.106", %"zext.199"
  %"val_UR4.4" = load i32, ptr %"UR4"
  %"sext_UR4.4" = sext i32 %"val_UR4.4" to i64
  %"base_plus_reg_offset.4" = add i64 %"or.86", %"sext_UR4.4"
  %"inttoptr_bytes.59" = inttoptr i64 %"base_plus_reg_offset.4" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".3325", ptr addrspace(1) %"ptr_cast_for_access.59"
  ; @P0 BRA `(.L_x_18)
  %".3330" = load i1, ptr %"P0"
  %".3331" = icmp eq i1 %".3330", 1
  br i1 %".3331", label %".L_x_18", label %".L_x_14_split_0x1890_CALL_0x18c0"
.L_x_14_split_0x1890_CALL_0x18c0:
  ; IMAD.MOV.U32 R15, RZ, RZ, R5
  %".3334" = load i32, ptr %"R5"
  %"imad_mul.51" = mul i32 0, 0
  %"imad_add.59" = add i32 %"imad_mul.51", %".3334"
  store i32 %"imad_add.59", ptr %"R15"
  ; MOV R14, 0x18c0
  store i32 6336, ptr %"R14"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3:
  ; SHF.L.U32 R0, R15, 0x1, RZ
  %".3341" = icmp ult i32 1, 32
  %"SHF_min.27" = select  i1 %".3341", i32 1, i32 32
  %".3342" = load i32, ptr %"R15"
  %"zext.201" = zext i32 0 to i64
  %"zext.202" = zext i32 %".3342" to i64
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
  %".3347" = icmp ult i32 24, 32
  %"SHF_min.28" = select  i1 %".3347", i32 24, i32 32
  %".3348" = load i32, ptr %"R0"
  %"zext.204" = zext i32 %".3348" to i64
  %"zext.205" = zext i32 0 to i64
  %"zext.206" = zext i32 24 to i64
  %"shl.109" = shl i64 %"zext.204", 32
  %"or.88" = or i64 %"shl.109", %"zext.205"
  %"lshr.17" = lshr i64 %"or.88", %"zext.206"
  %"lshr.18" = lshr i64 %"lshr.17", 32
  %"trunc32.64" = trunc i64 %"lshr.18" to i32
  store i32 %"trunc32.64", ptr %"R16"
  ; ISETP.NE.U32.AND P0, PT, R16, RZ, PT
  %".3351" = load i32, ptr %"R16"
  %".3352" = load i1, ptr %"PT"
  %"cmp.19" = icmp ne i32 %".3351", 0
  %".3353" = xor i1 %"cmp.19", -1
  %".3354" = and i1 %"cmp.19", %".3352"
  %".3355" = and i1 %".3353", %".3352"
  store i1 %".3354", ptr %"P0"
  ; @P0 BRA `(.L_x_21)
  %".3358" = load i1, ptr %"P0"
  %".3359" = icmp eq i1 %".3358", 1
  br i1 %".3359", label %".L_x_21...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3:
  ; IMAD.SHL.U32 R0, R15, 0x2, RZ
  %".3362" = load i32, ptr %"R15"
  %"imad_shl.8" = shl i32 %".3362", 2
  %"imad_add.60" = add i32 %"imad_shl.8", 0
  store i32 %"imad_add.60", ptr %"R0"
  ; ISETP.NE.AND P0, PT, R0, RZ, PT
  %".3365" = load i32, ptr %"R0"
  %".3366" = load i1, ptr %"PT"
  %"cmp.20" = icmp ne i32 %".3365", 0
  %".3367" = xor i1 %"cmp.20", -1
  %".3368" = and i1 %"cmp.20", %".3366"
  %".3369" = and i1 %".3367", %".3366"
  store i1 %".3368", ptr %"P0"
  ; @P0 FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".3372" = load i1, ptr %"P0"
  %".3373" = icmp eq i1 %".3372", 1
  br i1 %".3373", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %"cast_ptr.290" = bitcast ptr %"R15" to ptr
  %".3376" = load float, ptr %"cast_ptr.290"
  %"fmul.99" = fmul float %".3376", 0x43f0000000000000
  %"fadd.111" = fadd float %"fmul.99",              0x0
  %".3377" = bitcast ptr %"R8" to ptr
  store float %"fadd.111", ptr %".3377"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %"cast_ptr.291" = bitcast ptr %"R15" to ptr
  %".3382" = load float, ptr %"cast_ptr.291"
  %"fmul.100" = fmul float %".3382", 0x43f0000000000000
  %"fadd.112" = fadd float %"fmul.100",              0x0
  %".3383" = bitcast ptr %"R8" to ptr
  store float %"fadd.112", ptr %".3383"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3:
  ; @!P0 MUFU.RCP R0, R15
  %".3388" = load i1, ptr %"P0"
  %".3389" = icmp ne i1 %".3388", 1
  br i1 %".3389", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0:
  ; MUFU.RCP R0, R15
  %".3392" = load i32, ptr %"R15"
  %"sint_to_f32.5" = sitofp i32 %".3392" to float
  %".3393" = fdiv float 0x3ff0000000000000, %"sint_to_f32.5"
  %".3394" = fptosi float %".3393" to i32
  store i32 %".3394", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3:
  ; MUFU.RCP R0, R15
  %".3399" = load i32, ptr %"R15"
  %"sint_to_f32.6" = sitofp i32 %".3399" to float
  %".3400" = fdiv float 0x3ff0000000000000, %"sint_to_f32.6"
  %".3401" = fptosi float %".3400" to i32
  store i32 %".3401", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3:
  ; @P0 MUFU.RCP R9, R8
  %".3406" = load i1, ptr %"P0"
  %".3407" = icmp eq i1 %".3406", 1
  br i1 %".3407", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00:
  ; MUFU.RCP R9, R8
  %"cast_ptr.292" = bitcast ptr %"R8" to ptr
  %".3410" = load float, ptr %"cast_ptr.292"
  %".3411" = fdiv float 0x3ff0000000000000, %".3410"
  %".3412" = bitcast ptr %"R9" to ptr
  store float %".3411", ptr %".3412"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3:
  ; MUFU.RCP R9, R8
  %"cast_ptr.293" = bitcast ptr %"R8" to ptr
  %".3417" = load float, ptr %"cast_ptr.293"
  %".3418" = fdiv float 0x3ff0000000000000, %".3417"
  %".3419" = bitcast ptr %"R9" to ptr
  store float %".3418", ptr %".3419"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3:
  ; @P0 FFMA R11, R8, R9, -1
  %".3424" = load i1, ptr %"P0"
  %".3425" = icmp eq i1 %".3424", 1
  br i1 %".3425", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10:
  ; FFMA R11, R8, R9, -1
  %"cast_ptr.294" = bitcast ptr %"R8" to ptr
  %".3428" = load float, ptr %"cast_ptr.294"
  %"cast_ptr.295" = bitcast ptr %"R9" to ptr
  %".3429" = load float, ptr %"cast_ptr.295"
  %"fmul.101" = fmul float %".3428", %".3429"
  %"fadd.113" = fadd float %"fmul.101", 0xbff0000000000000
  %".3430" = bitcast ptr %"R11" to ptr
  store float %"fadd.113", ptr %".3430"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3:
  ; FFMA R11, R8, R9, -1
  %"cast_ptr.296" = bitcast ptr %"R8" to ptr
  %".3435" = load float, ptr %"cast_ptr.296"
  %"cast_ptr.297" = bitcast ptr %"R9" to ptr
  %".3436" = load float, ptr %"cast_ptr.297"
  %"fmul.102" = fmul float %".3435", %".3436"
  %"fadd.114" = fadd float %"fmul.102", 0xbff0000000000000
  %".3437" = bitcast ptr %"R11" to ptr
  store float %"fadd.114", ptr %".3437"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3:
  ; @P0 FADD.FTZ R12, -R11, -RZ
  %".3442" = load i1, ptr %"P0"
  %".3443" = icmp eq i1 %".3442", 1
  br i1 %".3443", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20:
  ; FADD.FTZ R12, -R11, -RZ
  %"cast_ptr.298" = bitcast ptr %"R11" to ptr
  %".3446" = load float, ptr %"cast_ptr.298"
  %".3447" = fneg float %".3446"
  %".3448" = call float @"llvm.fabs"(float %".3447")
  %".3449" = fcmp ogt float %".3448",              0x0
  %".3450" = fcmp olt float %".3448", 0x3810000000000000
  %".3451" = and i1 %".3449", %".3450"
  %".3452" = select  i1 %".3451", float              0x0, float %".3447"
  %".3453" = call float @"llvm.fabs"(float              0x0)
  %".3454" = fcmp ogt float %".3453",              0x0
  %".3455" = fcmp olt float %".3453", 0x3810000000000000
  %".3456" = and i1 %".3454", %".3455"
  %".3457" = select  i1 %".3456", float              0x0, float              0x0
  %"fadd.115" = fadd float %".3452", %".3457"
  %".3458" = call float @"llvm.fabs"(float %"fadd.115")
  %".3459" = fcmp ogt float %".3458",              0x0
  %".3460" = fcmp olt float %".3458", 0x3810000000000000
  %".3461" = and i1 %".3459", %".3460"
  %".3462" = select  i1 %".3461", float              0x0, float %"fadd.115"
  %".3463" = bitcast ptr %"R12" to ptr
  store float %".3462", ptr %".3463"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3:
  ; FADD.FTZ R12, -R11, -RZ
  %"cast_ptr.299" = bitcast ptr %"R11" to ptr
  %".3468" = load float, ptr %"cast_ptr.299"
  %".3469" = fneg float %".3468"
  %".3470" = call float @"llvm.fabs"(float %".3469")
  %".3471" = fcmp ogt float %".3470",              0x0
  %".3472" = fcmp olt float %".3470", 0x3810000000000000
  %".3473" = and i1 %".3471", %".3472"
  %".3474" = select  i1 %".3473", float              0x0, float %".3469"
  %".3475" = call float @"llvm.fabs"(float              0x0)
  %".3476" = fcmp ogt float %".3475",              0x0
  %".3477" = fcmp olt float %".3475", 0x3810000000000000
  %".3478" = and i1 %".3476", %".3477"
  %".3479" = select  i1 %".3478", float              0x0, float              0x0
  %"fadd.116" = fadd float %".3474", %".3479"
  %".3480" = call float @"llvm.fabs"(float %"fadd.116")
  %".3481" = fcmp ogt float %".3480",              0x0
  %".3482" = fcmp olt float %".3480", 0x3810000000000000
  %".3483" = and i1 %".3481", %".3482"
  %".3484" = select  i1 %".3483", float              0x0, float %"fadd.116"
  %".3485" = bitcast ptr %"R12" to ptr
  store float %".3484", ptr %".3485"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3:
  ; @P0 FFMA R12, R9, R12, R9
  %".3490" = load i1, ptr %"P0"
  %".3491" = icmp eq i1 %".3490", 1
  br i1 %".3491", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30:
  ; FFMA R12, R9, R12, R9
  %"cast_ptr.300" = bitcast ptr %"R9" to ptr
  %".3494" = load float, ptr %"cast_ptr.300"
  %"cast_ptr.301" = bitcast ptr %"R12" to ptr
  %".3495" = load float, ptr %"cast_ptr.301"
  %"cast_ptr.302" = bitcast ptr %"R9" to ptr
  %".3496" = load float, ptr %"cast_ptr.302"
  %"fmul.103" = fmul float %".3494", %".3495"
  %"fadd.117" = fadd float %"fmul.103", %".3496"
  %".3497" = bitcast ptr %"R12" to ptr
  store float %"fadd.117", ptr %".3497"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3:
  ; FFMA R12, R9, R12, R9
  %"cast_ptr.303" = bitcast ptr %"R9" to ptr
  %".3502" = load float, ptr %"cast_ptr.303"
  %"cast_ptr.304" = bitcast ptr %"R12" to ptr
  %".3503" = load float, ptr %"cast_ptr.304"
  %"cast_ptr.305" = bitcast ptr %"R9" to ptr
  %".3504" = load float, ptr %"cast_ptr.305"
  %"fmul.104" = fmul float %".3502", %".3503"
  %"fadd.118" = fadd float %"fmul.104", %".3504"
  %".3505" = bitcast ptr %"R12" to ptr
  store float %"fadd.118", ptr %".3505"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3:
  ; @P0 FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".3510" = load i1, ptr %"P0"
  %".3511" = icmp eq i1 %".3510", 1
  br i1 %".3511", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %"cast_ptr.306" = bitcast ptr %"R12" to ptr
  %".3514" = load float, ptr %"cast_ptr.306"
  %"fmul.105" = fmul float %".3514", 0x43f0000000000000
  %"fadd.119" = fadd float %"fmul.105",              0x0
  %".3515" = bitcast ptr %"R0" to ptr
  store float %"fadd.119", ptr %".3515"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %"cast_ptr.307" = bitcast ptr %"R12" to ptr
  %".3520" = load float, ptr %"cast_ptr.307"
  %"fmul.106" = fmul float %".3520", 0x43f0000000000000
  %"fadd.120" = fadd float %"fmul.106",              0x0
  %".3521" = bitcast ptr %"R0" to ptr
  store float %"fadd.120", ptr %".3521"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...3:
  ; BRA `(.L_x_22)
  br label %".L_x_22...3"
.L_x_21...3:
  ; IADD3 R18, R16, -0xfd, RZ
  %".3528" = load i32, ptr %"R16"
  %".3529" = add i32 %".3528", -253
  %".3530" = add i32 %".3529", 0
  store i32 %".3530", ptr %"R18"
  ; ISETP.GT.U32.AND P0, PT, R18, 0x1, PT
  %".3533" = load i32, ptr %"R18"
  %".3534" = load i1, ptr %"PT"
  %"cmp.21" = icmp sgt i32 %".3533", 1
  %".3535" = xor i1 %"cmp.21", -1
  %".3536" = and i1 %"cmp.21", %".3534"
  %".3537" = and i1 %".3535", %".3534"
  store i1 %".3536", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".3540" = load i1, ptr %"P0"
  %".3541" = icmp eq i1 %".3540", 1
  br i1 %".3541", label %".L_x_23...3", label %".L_x_21_split_0x1a90...3"
.L_x_21_split_0x1a90...3:
  ; LOP3.LUT R0, R15, 0x7fffff, RZ, 0xc0, !PT
  %".3544" = load i32, ptr %"R15"
  %".3545" = xor i1 1, -1
  %".3546" = and i32 %".3544", 8388607
  store i32 %".3546", ptr %"R0"
  ; MOV R13, 0x3
  store i32 3, ptr %"R13"
  ; LOP3.LUT R0, R0, 0x3f800000, RZ, 0xfc, !PT
  %".3551" = load i32, ptr %"R0"
  %".3552" = xor i1 1, -1
  %".3553" = or i32 %".3551", 1065353216
  store i32 %".3553", ptr %"R0"
  ; SHF.L.U32 R13, R13, R18, RZ
  %".3556" = load i32, ptr %"R18"
  %".3557" = icmp ult i32 %".3556", 32
  %"SHF_min.29" = select  i1 %".3557", i32 %".3556", i32 32
  %".3558" = load i32, ptr %"R13"
  %".3559" = load i32, ptr %"R18"
  %"zext.207" = zext i32 0 to i64
  %"zext.208" = zext i32 %".3558" to i64
  %"zext.209" = zext i32 %".3559" to i64
  %"shl.110" = shl i64 %"zext.207", 32
  %"or.89" = or i64 %"shl.110", %"zext.208"
  %"shl.111" = shl i64 %"or.89", %"zext.209"
  %"and.13" = and i64 %"shl.111", 4294967295
  %"trunc32.65" = trunc i64 %"and.13" to i32
  store i32 %"trunc32.65", ptr %"R13"
  ; MUFU.RCP R9, R0
  %".3562" = load i32, ptr %"R0"
  %"sint_to_f32.7" = sitofp i32 %".3562" to float
  %".3563" = fdiv float 0x3ff0000000000000, %"sint_to_f32.7"
  %".3564" = fptosi float %".3563" to i32
  store i32 %".3564", ptr %"R9"
  ; FFMA R8, R0, R9, -1
  %"cast_ptr.308" = bitcast ptr %"R0" to ptr
  %".3567" = load float, ptr %"cast_ptr.308"
  %"cast_ptr.309" = bitcast ptr %"R9" to ptr
  %".3568" = load float, ptr %"cast_ptr.309"
  %"fmul.107" = fmul float %".3567", %".3568"
  %"fadd.121" = fadd float %"fmul.107", 0xbff0000000000000
  %".3569" = bitcast ptr %"R8" to ptr
  store float %"fadd.121", ptr %".3569"
  ; FADD.FTZ R8, -R8, -RZ
  %"cast_ptr.310" = bitcast ptr %"R8" to ptr
  %".3572" = load float, ptr %"cast_ptr.310"
  %".3573" = fneg float %".3572"
  %".3574" = call float @"llvm.fabs"(float %".3573")
  %".3575" = fcmp ogt float %".3574",              0x0
  %".3576" = fcmp olt float %".3574", 0x3810000000000000
  %".3577" = and i1 %".3575", %".3576"
  %".3578" = select  i1 %".3577", float              0x0, float %".3573"
  %".3579" = call float @"llvm.fabs"(float              0x0)
  %".3580" = fcmp ogt float %".3579",              0x0
  %".3581" = fcmp olt float %".3579", 0x3810000000000000
  %".3582" = and i1 %".3580", %".3581"
  %".3583" = select  i1 %".3582", float              0x0, float              0x0
  %"fadd.122" = fadd float %".3578", %".3583"
  %".3584" = call float @"llvm.fabs"(float %"fadd.122")
  %".3585" = fcmp ogt float %".3584",              0x0
  %".3586" = fcmp olt float %".3584", 0x3810000000000000
  %".3587" = and i1 %".3585", %".3586"
  %".3588" = select  i1 %".3587", float              0x0, float %"fadd.122"
  %".3589" = bitcast ptr %"R8" to ptr
  store float %".3588", ptr %".3589"
  ; FFMA.RM R11, R9.reuse, R8.reuse, R9.reuse
  %"cast_ptr.311" = bitcast ptr %"R9" to ptr
  %".3592" = load float, ptr %"cast_ptr.311"
  %"cast_ptr.312" = bitcast ptr %"R8" to ptr
  %".3593" = load float, ptr %"cast_ptr.312"
  %"cast_ptr.313" = bitcast ptr %"R9" to ptr
  %".3594" = load float, ptr %"cast_ptr.313"
  %"fmul.108" = fmul float %".3592", %".3593"
  %"fadd.123" = fadd float %"fmul.108", %".3594"
  %".3595" = bitcast ptr %"R11" to ptr
  store float %"fadd.123", ptr %".3595"
  ; FFMA.RP R12, R9, R8, R9
  %"cast_ptr.314" = bitcast ptr %"R9" to ptr
  %".3598" = load float, ptr %"cast_ptr.314"
  %"cast_ptr.315" = bitcast ptr %"R8" to ptr
  %".3599" = load float, ptr %"cast_ptr.315"
  %"cast_ptr.316" = bitcast ptr %"R9" to ptr
  %".3600" = load float, ptr %"cast_ptr.316"
  %"fmul.109" = fmul float %".3598", %".3599"
  %"fadd.124" = fadd float %"fmul.109", %".3600"
  %".3601" = bitcast ptr %"R12" to ptr
  store float %"fadd.124", ptr %".3601"
  ; LOP3.LUT R8, R11.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".3604" = load i32, ptr %"R11"
  %".3605" = xor i1 1, -1
  %".3606" = and i32 %".3604", 8388607
  store i32 %".3606", ptr %"R8"
  ; FSETP.NEU.FTZ.AND P0, PT, R11, R12, PT
  %"cast_ptr.317" = bitcast ptr %"R11" to ptr
  %".3609" = load float, ptr %"cast_ptr.317"
  %"cast_ptr.318" = bitcast ptr %"R12" to ptr
  %".3610" = load float, ptr %"cast_ptr.318"
  %".3611" = load i1, ptr %"PT"
  %".3612" = call float @"llvm.fabs"(float %".3609")
  %".3613" = fcmp ogt float %".3612",              0x0
  %".3614" = fcmp olt float %".3612", 0x3810000000000000
  %".3615" = and i1 %".3613", %".3614"
  %".3616" = select  i1 %".3615", float              0x0, float %".3609"
  %".3617" = call float @"llvm.fabs"(float %".3610")
  %".3618" = fcmp ogt float %".3617",              0x0
  %".3619" = fcmp olt float %".3617", 0x3810000000000000
  %".3620" = and i1 %".3618", %".3619"
  %".3621" = select  i1 %".3620", float              0x0, float %".3610"
  %"fcmp_ordered.2" = fcmp une float %".3616", %".3621"
  %".3622" = xor i1 %"fcmp_ordered.2", -1
  %".3623" = and i1 %"fcmp_ordered.2", %".3611"
  %".3624" = and i1 %".3622", %".3611"
  store i1 %".3623", ptr %"P0"
  ; LOP3.LUT R8, R8, 0x800000, RZ, 0xfc, !PT
  %".3627" = load i32, ptr %"R8"
  %".3628" = xor i1 1, -1
  %".3629" = or i32 %".3627", 8388608
  store i32 %".3629", ptr %"R8"
  ; SEL R9, RZ, 0xffffffff, !P0
  %".3632" = load i1, ptr %"P0"
  %".3633" = xor i1 %".3632", -1
  %".3634" = icmp eq i1 %".3633", 1
  %"sel.4" = select  i1 %".3634", i32 0, i32 4294967295
  store i32 %"sel.4", ptr %"R9"
  ; LOP3.LUT R13, R13, R8, RZ, 0xc0, !PT
  %".3637" = load i32, ptr %"R13"
  %".3638" = load i32, ptr %"R8"
  %".3639" = xor i1 1, -1
  %".3640" = and i32 %".3637", %".3638"
  store i32 %".3640", ptr %"R13"
  ; IMAD.MOV R9, RZ, RZ, -R9
  %".3643" = load i32, ptr %"R9"
  %".3644" = sub i32 0, %".3643"
  %"imad_mul.52" = mul i32 0, 0
  %"imad_add.61" = add i32 %"imad_mul.52", %".3644"
  store i32 %"imad_add.61", ptr %"R9"
  ; SHF.R.U32.HI R13, RZ, R18, R13
  %".3647" = load i32, ptr %"R18"
  %".3648" = icmp ult i32 %".3647", 32
  %"SHF_min.30" = select  i1 %".3648", i32 %".3647", i32 32
  %".3649" = load i32, ptr %"R13"
  %".3650" = load i32, ptr %"R18"
  %"zext.210" = zext i32 %".3649" to i64
  %"zext.211" = zext i32 0 to i64
  %"zext.212" = zext i32 %".3650" to i64
  %"shl.112" = shl i64 %"zext.210", 32
  %"or.90" = or i64 %"shl.112", %"zext.211"
  %"lshr.19" = lshr i64 %"or.90", %"zext.212"
  %"lshr.20" = lshr i64 %"lshr.19", 32
  %"trunc32.66" = trunc i64 %"lshr.20" to i32
  store i32 %"trunc32.66", ptr %"R13"
  ; LOP3.LUT P1, RZ, R9, R18, R8, 0xf8, !PT
  %".3653" = load i32, ptr %"R9"
  %".3654" = load i32, ptr %"R18"
  %".3655" = load i32, ptr %"R8"
  %".3656" = xor i1 1, -1
  %".3657" = or i32 %".3653", %".3654"
  %".3658" = or i32 %".3653", %".3655"
  %".3659" = and i32 %".3657", %".3658"
  store i32 %".3659", ptr %"RZ"
  %".3661" = icmp ne i32 %".3659", 0
  store i1 %".3661", ptr %"P1"
  ; LOP3.LUT P0, RZ, R13.reuse, 0x1, RZ, 0xc0, !PT
  %".3664" = load i32, ptr %"R13"
  %".3665" = xor i1 1, -1
  %".3666" = and i32 %".3664", 1
  store i32 %".3666", ptr %"RZ"
  %".3668" = icmp ne i32 %".3666", 0
  store i1 %".3668", ptr %"P0"
  ; LOP3.LUT P2, RZ, R13, 0x2, RZ, 0xc0, !PT
  %".3671" = load i32, ptr %"R13"
  %".3672" = xor i1 1, -1
  %".3673" = and i32 %".3671", 2
  store i32 %".3673", ptr %"RZ"
  %".3675" = icmp ne i32 %".3673", 0
  store i1 %".3675", ptr %"P2"
  ; IADD3 R9, R16, -0xfc, RZ
  %".3678" = load i32, ptr %"R16"
  %".3679" = add i32 %".3678", -252
  %".3680" = add i32 %".3679", 0
  store i32 %".3680", ptr %"R9"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3683" = load i1, ptr %"P0"
  %".3684" = load i1, ptr %"P1"
  %".3685" = or i1 %".3683", %".3684"
  %".3686" = and i1 %".3685", 1
  ; LOP3.LUT P1, RZ, R15, 0x7fffff, RZ, 0xc0, !PT
  %".3688" = load i32, ptr %"R15"
  %".3689" = xor i1 1, -1
  %".3690" = and i32 %".3688", 8388607
  store i32 %".3690", ptr %"RZ"
  %".3692" = icmp ne i32 %".3690", 0
  store i1 %".3692", ptr %"P1"
  ; SEL R0, RZ, 0x1, !P0
  %".3695" = load i1, ptr %"P0"
  %".3696" = xor i1 %".3695", -1
  %".3697" = icmp eq i1 %".3696", 1
  %"sel.5" = select  i1 %".3697", i32 0, i32 1
  store i32 %"sel.5", ptr %"R0"
  ; IADD3 R0, -R0, RZ, RZ
  %".3700" = load i32, ptr %"R0"
  %".3701" = sub i32 0, %".3700"
  %".3702" = add i32 %".3701", 0
  %".3703" = add i32 %".3702", 0
  store i32 %".3703", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, RZ, PT
  %".3706" = load i32, ptr %"R0"
  %".3707" = load i1, ptr %"PT"
  %"cmp.22" = icmp sge i32 %".3706", 0
  %".3708" = xor i1 %"cmp.22", -1
  %".3709" = and i1 %"cmp.22", %".3707"
  %".3710" = and i1 %".3708", %".3707"
  store i1 %".3709", ptr %"P0"
  ; SHF.R.U32.HI R0, RZ, R9, R8
  %".3713" = load i32, ptr %"R9"
  %".3714" = icmp ult i32 %".3713", 32
  %"SHF_min.31" = select  i1 %".3714", i32 %".3713", i32 32
  %".3715" = load i32, ptr %"R8"
  %".3716" = load i32, ptr %"R9"
  %"zext.213" = zext i32 %".3715" to i64
  %"zext.214" = zext i32 0 to i64
  %"zext.215" = zext i32 %".3716" to i64
  %"shl.113" = shl i64 %"zext.213", 32
  %"or.91" = or i64 %"shl.113", %"zext.214"
  %"lshr.21" = lshr i64 %"or.91", %"zext.215"
  %"lshr.22" = lshr i64 %"lshr.21", 32
  %"trunc32.67" = trunc i64 %"lshr.22" to i32
  store i32 %"trunc32.67", ptr %"R0"
  ; @!P0 IADD3 R0, R0, 0x1, RZ
  %".3719" = load i1, ptr %"P0"
  %".3720" = icmp ne i1 %".3719", 1
  br i1 %".3720", label %".L_x_21_split_0x1a90...3_conditionalExpr_0x1c30", label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...3"
.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30:
  ; IADD3 R0, R0, 0x1, RZ
  %".3723" = load i32, ptr %"R0"
  %".3724" = add i32 %".3723", 1
  %".3725" = add i32 %".3724", 0
  store i32 %".3725", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3)
  br label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...3"
.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3:
  ; IADD3 R0, R0, 0x1, RZ
  %".3730" = load i32, ptr %"R0"
  %".3731" = add i32 %".3730", 1
  %".3732" = add i32 %".3731", 0
  store i32 %".3732", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40)
  br label %".L_x_21_split_0x1c40...3"
.L_x_21_split_0x1c40...3:
  ; @!P1 IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3737" = load i1, ptr %"P1"
  %".3738" = icmp ne i1 %".3737", 1
  br i1 %".3738", label %".L_x_21_split_0x1c40...3_conditionalExpr_0x1c40", label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...3"
.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3741" = load i32, ptr %"R0"
  %"imad_shl.9" = shl i32 %".3741", 2
  %"imad_add.62" = add i32 %"imad_shl.9", 0
  store i32 %"imad_add.62", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3)
  br label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...3"
.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3746" = load i32, ptr %"R0"
  %"imad_shl.10" = shl i32 %".3746", 2
  %"imad_add.63" = add i32 %"imad_shl.10", 0
  store i32 %"imad_add.63", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c50)
  br label %".L_x_21_split_0x1c50...3"
.L_x_21_split_0x1c50...3:
  ; LOP3.LUT R0, R0, 0x80000000, R15, 0xf8, !PT
  %".3751" = load i32, ptr %"R0"
  %".3752" = load i32, ptr %"R15"
  %".3753" = xor i1 1, -1
  %".3754" = or i32 %".3751", 2147483648
  %".3755" = or i32 %".3751", %".3752"
  %".3756" = and i32 %".3754", %".3755"
  store i32 %".3756", ptr %"R0"
  ; BRA `(.L_x_22)
  br label %".L_x_22...3"
.L_x_23...3:
  ; MUFU.RCP R0, R15
  %".3761" = load i32, ptr %"R15"
  %"sint_to_f32.8" = sitofp i32 %".3761" to float
  %".3762" = fdiv float 0x3ff0000000000000, %"sint_to_f32.8"
  %".3763" = fptosi float %".3762" to i32
  store i32 %".3763", ptr %"R0"
  br label %".L_x_22...3"
.L_x_22...3:
  ; BSYNC B1
  br label %".L_x_20...3"
.L_x_20...3:
  ; MOV R8, R14
  %".3769" = load i32, ptr %"R14"
  store i32 %".3769", ptr %"R8"
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
  %"cast_ptr.319" = bitcast ptr %"R5" to ptr
  %".3781" = load float, ptr %"cast_ptr.319"
  %".3782" = fdiv float 0x3ff0000000000000, %".3781"
  %".3783" = bitcast ptr %"R0" to ptr
  store float %".3782", ptr %".3783"
  ; FFMA R4, R5, R0, -1
  %"cast_ptr.320" = bitcast ptr %"R5" to ptr
  %".3786" = load float, ptr %"cast_ptr.320"
  %"cast_ptr.321" = bitcast ptr %"R0" to ptr
  %".3787" = load float, ptr %"cast_ptr.321"
  %"fmul.110" = fmul float %".3786", %".3787"
  %"fadd.125" = fadd float %"fmul.110", 0xbff0000000000000
  %".3788" = bitcast ptr %"R4" to ptr
  store float %"fadd.125", ptr %".3788"
  ; FADD.FTZ R9, -R4, -RZ
  %"cast_ptr.322" = bitcast ptr %"R4" to ptr
  %".3791" = load float, ptr %"cast_ptr.322"
  %".3792" = fneg float %".3791"
  %".3793" = call float @"llvm.fabs"(float %".3792")
  %".3794" = fcmp ogt float %".3793",              0x0
  %".3795" = fcmp olt float %".3793", 0x3810000000000000
  %".3796" = and i1 %".3794", %".3795"
  %".3797" = select  i1 %".3796", float              0x0, float %".3792"
  %".3798" = call float @"llvm.fabs"(float              0x0)
  %".3799" = fcmp ogt float %".3798",              0x0
  %".3800" = fcmp olt float %".3798", 0x3810000000000000
  %".3801" = and i1 %".3799", %".3800"
  %".3802" = select  i1 %".3801", float              0x0, float              0x0
  %"fadd.126" = fadd float %".3797", %".3802"
  %".3803" = call float @"llvm.fabs"(float %"fadd.126")
  %".3804" = fcmp ogt float %".3803",              0x0
  %".3805" = fcmp olt float %".3803", 0x3810000000000000
  %".3806" = and i1 %".3804", %".3805"
  %".3807" = select  i1 %".3806", float              0x0, float %"fadd.126"
  %".3808" = bitcast ptr %"R9" to ptr
  store float %".3807", ptr %".3808"
  ; FFMA R0, R0, R9, R0
  %"cast_ptr.323" = bitcast ptr %"R0" to ptr
  %".3811" = load float, ptr %"cast_ptr.323"
  %"cast_ptr.324" = bitcast ptr %"R9" to ptr
  %".3812" = load float, ptr %"cast_ptr.324"
  %"cast_ptr.325" = bitcast ptr %"R0" to ptr
  %".3813" = load float, ptr %"cast_ptr.325"
  %"fmul.111" = fmul float %".3811", %".3812"
  %"fadd.127" = fadd float %"fmul.111", %".3813"
  %".3814" = bitcast ptr %"R0" to ptr
  store float %"fadd.127", ptr %".3814"
  br label %".L_x_19"
.L_x_19:
  ; BSYNC B0
  br label %".L_x_17"
.L_x_17:
  ; FMUL R7, R0, R7
  %"cast_ptr.326" = bitcast ptr %"R0" to ptr
  %".3820" = load float, ptr %"cast_ptr.326"
  %"cast_ptr.327" = bitcast ptr %"R7" to ptr
  %".3821" = load float, ptr %"cast_ptr.327"
  %"fmul.112" = fmul float %".3820", %".3821"
  %".3822" = bitcast ptr %"R7" to ptr
  store float %"fmul.112", ptr %".3822"
  ; ULDC.64 UR4, c[0x0][0x198]
  %".3825" = ptrtoint ptr %"Arg_7" to i64
  %".3826" = and i64 %".3825", 18446744069414584320
  %".3827" = lshr i64 %".3826", 32
  %"trunc32.68" = trunc i64 %".3827" to i32
  %"trunc32.69" = trunc i64 %".3825" to i32
  store i32 %"trunc32.69", ptr %"UR4"
  store i32 %"trunc32.68", ptr %"UR5"
  ; STG.E.SYS [R2.64+UR4], R7
  %"cast_ptr.328" = bitcast ptr %"R7" to ptr
  %".3831" = load float, ptr %"cast_ptr.328"
  %".3832" = load i32, ptr %"R2"
  %"zext.216" = zext i32 %".3832" to i64
  %".3833" = load i32, ptr %"R3"
  %"zext.217" = zext i32 %".3833" to i64
  %"shl.114" = shl i64 %"zext.217", 32
  %"or.92" = or i64 %"shl.114", %"zext.216"
  %"val_UR4.5" = load i32, ptr %"UR4"
  %"sext_UR4.5" = sext i32 %"val_UR4.5" to i64
  %"base_plus_reg_offset.5" = add i64 %"or.92", %"sext_UR4.5"
  %"inttoptr_bytes.60" = inttoptr i64 %"base_plus_reg_offset.5" to ptr addrspace(1)
  %"ptr_cast_for_access.60" = bitcast ptr addrspace(1) %"inttoptr_bytes.60" to ptr addrspace(1)
  store float %".3831", ptr addrspace(1) %"ptr_cast_for_access.60"
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

