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
  %".36" = add i1 %"cmp", 0
  %".37" = xor i1 %".36", -1
  %".38" = and i1 %"cmp", %".35"
  %".39" = and i1 %".37", %".35"
  store i1 %".38", ptr %"P0"
  ; IMAD R7, R7, c[0x0][0x4], R0
  %".42" = load i32, ptr %"R7"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".43" = load i32, ptr %"R0"
  %"imad_mul.2" = mul i32 %".42", %"nvvm_blockdim_y"
  %"imad_add.2" = add i32 %"imad_mul.2", %".43"
  store i32 %"imad_add.2", ptr %"R7"
  ; ISETP.GE.OR P0, PT, R7, c[0x0][0x1a8], P0
  %".46" = load i32, ptr %"R7"
  %".47" = load i1, ptr %"P0"
  %"cmp.1" = icmp sge i32 %".46", %"Arg_9"
  %".48" = add i1 %"cmp.1", 0
  %".49" = xor i1 %".48", -1
  %".50" = or i1 %"cmp.1", %".47"
  %".51" = or i1 %".49", %".47"
  store i1 %".50", ptr %"P0"
  ; @P0 EXIT
  %".54" = load i1, ptr %"P0"
  %".55" = icmp eq i1 %".54", 1
  br i1 %".55", label %".text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_conditionalExpr_0x0090", label %".text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x00a0"
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
  %".64" = load i32, ptr %"R3"
  %".65" = load i32, ptr %"R6"
  %"shl" = shl i32 %".64", 1
  %"add" = add i32 %"shl", %".65"
  store i32 %"add", ptr %"R18"
  ; IMAD.WIDE R12, R6, R9, c[0x0][0x190]
  %".68" = load i32, ptr %"R6"
  %".69" = load i32, ptr %"R9"
  %"imad_ext1" = zext i32 %".68" to i64
  %"imad_ext2" = zext i32 %".69" to i64
  %"imad_mul.4" = mul i64 %"imad_ext1", %"imad_ext2"
  %".70" = ptrtoint ptr %"Arg_6" to i64
  %"imad_add.4" = add i64 %"imad_mul.4", %".70"
  %".71" = and i64 %"imad_add.4", 18446744069414584320
  %".72" = lshr i64 %".71", 32
  %"trunc32" = trunc i64 %".72" to i32
  %"trunc32.1" = trunc i64 %"imad_add.4" to i32
  store i32 %"trunc32.1", ptr %"R12"
  store i32 %"trunc32", ptr %"R13"
  ; IADD3 R24, R18, c[0x0][0x1b0], RZ
  %".76" = load i32, ptr %"R18"
  %".77" = add i32 %".76", %"Arg_11"
  %".78" = add i32 %".77", 0
  store i32 %".78", ptr %"R24"
  ; IMAD.WIDE R10, R6, R9, c[0x0][0x188]
  %".81" = load i32, ptr %"R6"
  %".82" = load i32, ptr %"R9"
  %"imad_ext1.1" = zext i32 %".81" to i64
  %"imad_ext2.1" = zext i32 %".82" to i64
  %"imad_mul.5" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".83" = ptrtoint ptr %"Arg_5" to i64
  %"imad_add.5" = add i64 %"imad_mul.5", %".83"
  %".84" = and i64 %"imad_add.5", 18446744069414584320
  %".85" = lshr i64 %".84", 32
  %"trunc32.2" = trunc i64 %".85" to i32
  %"trunc32.3" = trunc i64 %"imad_add.5" to i32
  store i32 %"trunc32.3", ptr %"R10"
  store i32 %"trunc32.2", ptr %"R11"
  ; IMAD.WIDE R20, R18, R9.reuse, c[0x0][0x190]
  %".89" = load i32, ptr %"R18"
  %".90" = load i32, ptr %"R9"
  %"imad_ext1.2" = zext i32 %".89" to i64
  %"imad_ext2.2" = zext i32 %".90" to i64
  %"imad_mul.6" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %".91" = ptrtoint ptr %"Arg_6" to i64
  %"imad_add.6" = add i64 %"imad_mul.6", %".91"
  %".92" = and i64 %"imad_add.6", 18446744069414584320
  %".93" = lshr i64 %".92", 32
  %"trunc32.4" = trunc i64 %".93" to i32
  %"trunc32.5" = trunc i64 %"imad_add.6" to i32
  store i32 %"trunc32.5", ptr %"R20"
  store i32 %"trunc32.4", ptr %"R21"
  ; LDG.E.CONSTANT.SYS R3, [R12]
  %".97" = load i32, ptr %"R12"
  %"zext" = zext i32 %".97" to i64
  %".98" = load i32, ptr %"R13"
  %"zext.1" = zext i32 %".98" to i64
  %"shl.1" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl.1", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".99" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".100" = bitcast ptr %"R3" to ptr
  store float %".99", ptr %".100"
  ; IMAD.WIDE R22, R24, R9, c[0x0][0x188]
  %".103" = load i32, ptr %"R24"
  %".104" = load i32, ptr %"R9"
  %"imad_ext1.3" = zext i32 %".103" to i64
  %"imad_ext2.3" = zext i32 %".104" to i64
  %"imad_mul.7" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %".105" = ptrtoint ptr %"Arg_5" to i64
  %"imad_add.7" = add i64 %"imad_mul.7", %".105"
  %".106" = and i64 %"imad_add.7", 18446744069414584320
  %".107" = lshr i64 %".106", 32
  %"trunc32.6" = trunc i64 %".107" to i32
  %"trunc32.7" = trunc i64 %"imad_add.7" to i32
  store i32 %"trunc32.7", ptr %"R22"
  store i32 %"trunc32.6", ptr %"R23"
  ; IMAD.WIDE R16, R9.reuse, c[0x0][0x1b0], R12
  %".111" = load i32, ptr %"R9"
  %".112" = load i32, ptr %"R12"
  %"imad_ext1.4" = zext i32 %".111" to i64
  %"imad_ext2.4" = zext i32 %"Arg_11" to i64
  %"imad_mul.8" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3" = zext i32 %".112" to i64
  %"imad_add.8" = add i64 %"imad_mul.8", %"imad_ext3"
  %".113" = and i64 %"imad_add.8", 18446744069414584320
  %".114" = lshr i64 %".113", 32
  %"trunc32.8" = trunc i64 %".114" to i32
  %"trunc32.9" = trunc i64 %"imad_add.8" to i32
  store i32 %"trunc32.9", ptr %"R16"
  store i32 %"trunc32.8", ptr %"R17"
  ; LDG.E.CONSTANT.SYS R20, [R20]
  %".118" = load i32, ptr %"R20"
  %"zext.2" = zext i32 %".118" to i64
  %".119" = load i32, ptr %"R21"
  %"zext.3" = zext i32 %".119" to i64
  %"shl.2" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.2", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".120" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".121" = bitcast ptr %"R20" to ptr
  store float %".120", ptr %".121"
  ; IMAD.WIDE R14, R9, c[0x0][0x1b0], R10
  %".124" = load i32, ptr %"R9"
  %".125" = load i32, ptr %"R10"
  %"imad_ext1.5" = zext i32 %".124" to i64
  %"imad_ext2.5" = zext i32 %"Arg_11" to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %"imad_ext3.1" = zext i32 %".125" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %"imad_ext3.1"
  %".126" = and i64 %"imad_add.9", 18446744069414584320
  %".127" = lshr i64 %".126", 32
  %"trunc32.10" = trunc i64 %".127" to i32
  %"trunc32.11" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.11", ptr %"R14"
  store i32 %"trunc32.10", ptr %"R15"
  ; LDG.E.CONSTANT.SYS R23, [R22]
  %".131" = load i32, ptr %"R22"
  %"zext.4" = zext i32 %".131" to i64
  %".132" = load i32, ptr %"R23"
  %"zext.5" = zext i32 %".132" to i64
  %"shl.3" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.3", %"zext.4"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".133" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".134" = bitcast ptr %"R23" to ptr
  store float %".133", ptr %".134"
  ; IMAD.WIDE R18, R18, R9.reuse, c[0x0][0x188]
  %".137" = load i32, ptr %"R18"
  %".138" = load i32, ptr %"R9"
  %"imad_ext1.6" = zext i32 %".137" to i64
  %"imad_ext2.6" = zext i32 %".138" to i64
  %"imad_mul.10" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".139" = ptrtoint ptr %"Arg_5" to i64
  %"imad_add.10" = add i64 %"imad_mul.10", %".139"
  %".140" = and i64 %"imad_add.10", 18446744069414584320
  %".141" = lshr i64 %".140", 32
  %"trunc32.12" = trunc i64 %".141" to i32
  %"trunc32.13" = trunc i64 %"imad_add.10" to i32
  store i32 %"trunc32.13", ptr %"R18"
  store i32 %"trunc32.12", ptr %"R19"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".145" = load i32, ptr %"R10"
  %"zext.6" = zext i32 %".145" to i64
  %".146" = load i32, ptr %"R11"
  %"zext.7" = zext i32 %".146" to i64
  %"shl.4" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.4", %"zext.6"
  %"inttoptr_bytes.3" = inttoptr i64 %"or.3" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".147" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".148" = bitcast ptr %"R10" to ptr
  store float %".147", ptr %".148"
  ; IMAD.WIDE R24, R24, R9, c[0x0][0x190]
  %".151" = load i32, ptr %"R24"
  %".152" = load i32, ptr %"R9"
  %"imad_ext1.7" = zext i32 %".151" to i64
  %"imad_ext2.7" = zext i32 %".152" to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".153" = ptrtoint ptr %"Arg_6" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %".153"
  %".154" = and i64 %"imad_add.11", 18446744069414584320
  %".155" = lshr i64 %".154", 32
  %"trunc32.14" = trunc i64 %".155" to i32
  %"trunc32.15" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.15", ptr %"R24"
  store i32 %"trunc32.14", ptr %"R25"
  ; LDG.E.CONSTANT.SYS R16, [R16]
  %".159" = load i32, ptr %"R16"
  %"zext.8" = zext i32 %".159" to i64
  %".160" = load i32, ptr %"R17"
  %"zext.9" = zext i32 %".160" to i64
  %"shl.5" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.5", %"zext.8"
  %"inttoptr_bytes.4" = inttoptr i64 %"or.4" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".161" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".162" = bitcast ptr %"R16" to ptr
  store float %".161", ptr %".162"
  ; LDG.E.CONSTANT.SYS R15, [R14]
  %".165" = load i32, ptr %"R14"
  %"zext.10" = zext i32 %".165" to i64
  %".166" = load i32, ptr %"R15"
  %"zext.11" = zext i32 %".166" to i64
  %"shl.6" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.6", %"zext.10"
  %"inttoptr_bytes.5" = inttoptr i64 %"or.5" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".167" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".168" = bitcast ptr %"R15" to ptr
  store float %".167", ptr %".168"
  ; LDG.E.CONSTANT.SYS R19, [R18]
  %".171" = load i32, ptr %"R18"
  %"zext.12" = zext i32 %".171" to i64
  %".172" = load i32, ptr %"R19"
  %"zext.13" = zext i32 %".172" to i64
  %"shl.7" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.7", %"zext.12"
  %"inttoptr_bytes.6" = inttoptr i64 %"or.6" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".173" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".174" = bitcast ptr %"R19" to ptr
  store float %".173", ptr %".174"
  ; LDG.E.CONSTANT.SYS R24, [R24]
  %".177" = load i32, ptr %"R24"
  %"zext.14" = zext i32 %".177" to i64
  %".178" = load i32, ptr %"R25"
  %"zext.15" = zext i32 %".178" to i64
  %"shl.8" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.8", %"zext.14"
  %"inttoptr_bytes.7" = inttoptr i64 %"or.7" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".179" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".180" = bitcast ptr %"R24" to ptr
  store float %".179", ptr %".180"
  ; IMAD.MOV.U32 R26, RZ, RZ, c[0x0][0x1ac]
  %"imad_mul.12" = mul i32 0, 0
  %"imad_add.12" = add i32 %"imad_mul.12", %"Arg_10"
  store i32 %"imad_add.12", ptr %"R26"
  ; ISETP.GE.AND P0, PT, R26, 0x1, PT
  %".185" = load i32, ptr %"R26"
  %".186" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".185", 1
  %".187" = add i1 %"cmp.2", 0
  %".188" = xor i1 %".187", -1
  %".189" = and i1 %"cmp.2", %".186"
  %".190" = and i1 %".188", %".186"
  store i1 %".189", ptr %"P0"
  ; FADD R3, R3, R10
  %".193" = load float, ptr %"R3"
  %".194" = load float, ptr %"R10"
  %"fadd" = fadd float %".193", %".194"
  %".195" = bitcast ptr %"R3" to ptr
  store float %"fadd", ptr %".195"
  ; FADD R2, R16, R15
  %".198" = load float, ptr %"R16"
  %".199" = load float, ptr %"R15"
  %"fadd.1" = fadd float %".198", %".199"
  %".200" = bitcast ptr %"R2" to ptr
  store float %"fadd.1", ptr %".200"
  ; FADD R0, R20, R19
  %".203" = load float, ptr %"R20"
  %".204" = load float, ptr %"R19"
  %"fadd.2" = fadd float %".203", %".204"
  %".205" = bitcast ptr %"R0" to ptr
  store float %"fadd.2", ptr %".205"
  ; FADD R8, R24, R23
  %".208" = load float, ptr %"R24"
  %".209" = load float, ptr %"R23"
  %"fadd.3" = fadd float %".208", %".209"
  %".210" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".210"
  ; @!P0 BRA `(.L_x_0)
  %".213" = load i1, ptr %"P0"
  %".214" = icmp ne i1 %".213", 1
  br i1 %".214", label %".L_x_0", label %".text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250"
.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x0250:
  ; IADD3 R10, R26.reuse, -0x1, RZ
  %".217" = load i32, ptr %"R26"
  %".218" = add i32 %".217", -1
  %".219" = add i32 %".218", 0
  store i32 %".219", ptr %"R10"
  ; ULDC UR7, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"UR7"
  ; LOP3.LUT P0, RZ, R26, 0x3, RZ, 0xc0, !PT
  %".224" = load i32, ptr %"R26"
  %".225" = xor i1 1, -1
  %".226" = and i32 %".224", 3
  store i32 %".226", ptr %"RZ"
  %".228" = icmp ne i32 %".226", 0
  store i1 %".228", ptr %"P0"
  ; USHF.R.S32.HI UR6, URZ, 0x1f, UR7
  %".231" = icmp ult i32 31, 32
  %"SHF_min" = select  i1 %".231", i32 31, i32 32
  %".232" = load i32, ptr %"UR7"
  %"zext.16" = zext i32 %".232" to i64
  %"zext.17" = zext i32 0 to i64
  %"zext.18" = zext i32 31 to i64
  %"shl.9" = shl i64 %"zext.16", 32
  %"or.8" = or i64 %"shl.9", %"zext.17"
  %"ashr" = ashr i64 %"or.8", %"zext.18"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.16" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.16", ptr %"UR6"
  ; ISETP.GE.U32.AND P1, PT, R10, 0x3, PT
  %".235" = load i32, ptr %"R10"
  %".236" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".235", 3
  %".237" = add i1 %"cmp.3", 0
  %".238" = xor i1 %".237", -1
  %".239" = and i1 %"cmp.3", %".236"
  %".240" = and i1 %".238", %".236"
  store i1 %".239", ptr %"P1"
  ; LOP3.LUT R20, R26, 0x3, RZ, 0xc0, !PT
  %".243" = load i32, ptr %"R26"
  %".244" = xor i1 1, -1
  %".245" = and i32 %".243", 3
  store i32 %".245", ptr %"R20"
  ; MOV R28, RZ
  %".248" = load i32, ptr %"RZ"
  store i32 %".248", ptr %"R28"
  ; @!P1 BRA `(.L_x_1)
  %".251" = load i1, ptr %"P1"
  %".252" = icmp ne i1 %".251", 1
  br i1 %".252", label %".L_x_1", label %".text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0"
.text._Z16lstm_step_kernelPKfS0_S0_S0_S0_S0_S0_PfS1_iii_split_0x02d0:
  ; IADD3 R42, -R20, c[0x0][0x1ac], RZ
  %".255" = load i32, ptr %"R20"
  %".256" = sub i32 0, %".255"
  %".257" = add i32 %".256", %"Arg_10"
  %".258" = add i32 %".257", 0
  store i32 %".258", ptr %"R42"
  ; IMAD.MOV.U32 R28, RZ, RZ, RZ
  %"imad_mul.13" = mul i32 0, 0
  %"imad_add.13" = add i32 %"imad_mul.13", 0
  store i32 %"imad_add.13", ptr %"R28"
  ; USHF.L.U64.HI UR5, UR7, 0x2, UR6
  %".263" = icmp ult i32 2, 64
  %"SHF_min.1" = select  i1 %".263", i32 2, i32 64
  %".264" = load i32, ptr %"UR6"
  %".265" = load i32, ptr %"UR7"
  %"zext.19" = zext i32 %".264" to i64
  %"zext.20" = zext i32 %".265" to i64
  %"zext.21" = zext i32 2 to i64
  %"shl.10" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.10", %"zext.20"
  %"shl.11" = shl i64 %"or.9", %"zext.21"
  %"lshr" = lshr i64 %"shl.11", 32
  %"trunc32.17" = trunc i64 %"lshr" to i32
  store i32 %"trunc32.17", ptr %"UR5"
  ; USHF.L.U32 UR4, UR7, 0x2, URZ
  %".268" = icmp ult i32 2, 32
  %"SHF_min.2" = select  i1 %".268", i32 2, i32 32
  %".269" = load i32, ptr %"UR7"
  %"zext.22" = zext i32 0 to i64
  %"zext.23" = zext i32 %".269" to i64
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
  %".273" = icmp ult i32 2, 32
  %"SHF_min.3" = select  i1 %".273", i32 2, i32 32
  %".274" = load i32, ptr %"R28"
  %"zext.25" = zext i32 0 to i64
  %"zext.26" = zext i32 %".274" to i64
  %"zext.27" = zext i32 2 to i64
  %"shl.14" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.14", %"zext.26"
  %"shl.15" = shl i64 %"or.11", %"zext.27"
  %"and.1" = and i64 %"shl.15", 4294967295
  %"trunc32.19" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.19", ptr %"R11"
  ; IMAD R30, R7, c[0x0][0x1ac], R28
  %".277" = load i32, ptr %"R7"
  %".278" = load i32, ptr %"R28"
  %"imad_mul.14" = mul i32 %".277", %"Arg_10"
  %"imad_add.14" = add i32 %"imad_mul.14", %".278"
  store i32 %"imad_add.14", ptr %"R30"
  ; IMAD R36, R11, c[0x0][0x1b0], R6
  %".281" = load i32, ptr %"R11"
  %".282" = load i32, ptr %"R6"
  %"imad_mul.15" = mul i32 %".281", %"Arg_11"
  %"imad_add.15" = add i32 %"imad_mul.15", %".282"
  store i32 %"imad_add.15", ptr %"R36"
  ; IMAD.WIDE R30, R30, R9, c[0x0][0x160]
  %".285" = load i32, ptr %"R30"
  %".286" = load i32, ptr %"R9"
  %"imad_ext1.8" = zext i32 %".285" to i64
  %"imad_ext2.8" = zext i32 %".286" to i64
  %"imad_mul.16" = mul i64 %"imad_ext1.8", %"imad_ext2.8"
  %".287" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.16" = add i64 %"imad_mul.16", %".287"
  %".288" = and i64 %"imad_add.16", 18446744069414584320
  %".289" = lshr i64 %".288", 32
  %"trunc32.20" = trunc i64 %".289" to i32
  %"trunc32.21" = trunc i64 %"imad_add.16" to i32
  store i32 %"trunc32.21", ptr %"R30"
  store i32 %"trunc32.20", ptr %"R31"
  ; IMAD.WIDE R36, R36, R9, c[0x0][0x178]
  %".293" = load i32, ptr %"R36"
  %".294" = load i32, ptr %"R9"
  %"imad_ext1.9" = zext i32 %".293" to i64
  %"imad_ext2.9" = zext i32 %".294" to i64
  %"imad_mul.17" = mul i64 %"imad_ext1.9", %"imad_ext2.9"
  %".295" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.17" = add i64 %"imad_mul.17", %".295"
  %".296" = and i64 %"imad_add.17", 18446744069414584320
  %".297" = lshr i64 %".296", 32
  %"trunc32.22" = trunc i64 %".297" to i32
  %"trunc32.23" = trunc i64 %"imad_add.17" to i32
  store i32 %"trunc32.23", ptr %"R36"
  store i32 %"trunc32.22", ptr %"R37"
  ; LDG.E.CONSTANT.SYS R35, [R30]
  %".301" = load i32, ptr %"R30"
  %"zext.28" = zext i32 %".301" to i64
  %".302" = load i32, ptr %"R31"
  %"zext.29" = zext i32 %".302" to i64
  %"shl.16" = shl i64 %"zext.29", 32
  %"or.12" = or i64 %"shl.16", %"zext.28"
  %"inttoptr_bytes.8" = inttoptr i64 %"or.12" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".303" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".304" = bitcast ptr %"R35" to ptr
  store float %".303", ptr %".304"
  ; IADD3 R32, P1, R36, UR4, RZ
  %".307" = load i32, ptr %"R36"
  %".308" = load i32, ptr %"UR4"
  %".309" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".307", i32 %".308")
  %".310" = extractvalue {i32, i1} %".309", 0
  %".311" = extractvalue {i32, i1} %".309", 1
  %".312" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".310", i32 0)
  %".313" = extractvalue {i32, i1} %".312", 0
  %".314" = extractvalue {i32, i1} %".312", 1
  %".315" = or i1 %".311", %".314"
  store i32 %".313", ptr %"R32"
  store i1 %".315", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R29, [R30+0x4]
  %".319" = load i32, ptr %"R30"
  %"zext.30" = zext i32 %".319" to i64
  %".320" = load i32, ptr %"R31"
  %"zext.31" = zext i32 %".320" to i64
  %"shl.17" = shl i64 %"zext.31", 32
  %"or.13" = or i64 %"shl.17", %"zext.30"
  %"ptr_plus_imm" = add i64 %"or.13", 4
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".321" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".322" = bitcast ptr %"R29" to ptr
  store float %".321", ptr %".322"
  ; IADD3.X R33, R37, UR5, RZ, P1, !PT
  %".325" = load i32, ptr %"R37"
  %".326" = load i32, ptr %"UR5"
  %".327" = load i1, ptr %"P1"
  %".328" = xor i1 1, -1
  %".329" = zext i1 %".327" to i32
  %".330" = zext i1 %".328" to i32
  %"add.1" = add i32 %".325", %".326"
  %"add.2" = add i32 %"add.1", 0
  %"add.3" = add i32 %"add.2", %".329"
  %"add.4" = add i32 %"add.3", %".330"
  store i32 %"add.4", ptr %"R33"
  ; IADD3 R38, P1, R32, UR4, RZ
  %".333" = load i32, ptr %"R32"
  %".334" = load i32, ptr %"UR4"
  %".335" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".333", i32 %".334")
  %".336" = extractvalue {i32, i1} %".335", 0
  %".337" = extractvalue {i32, i1} %".335", 1
  %".338" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".336", i32 0)
  %".339" = extractvalue {i32, i1} %".338", 0
  %".340" = extractvalue {i32, i1} %".338", 1
  %".341" = or i1 %".337", %".340"
  store i32 %".339", ptr %"R38"
  store i1 %".341", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R21, [R30+0x8]
  %".345" = load i32, ptr %"R30"
  %"zext.32" = zext i32 %".345" to i64
  %".346" = load i32, ptr %"R31"
  %"zext.33" = zext i32 %".346" to i64
  %"shl.18" = shl i64 %"zext.33", 32
  %"or.14" = or i64 %"shl.18", %"zext.32"
  %"ptr_plus_imm.1" = add i64 %"or.14", 8
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".347" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".348" = bitcast ptr %"R21" to ptr
  store float %".347", ptr %".348"
  ; IADD3.X R39, R33, UR5, RZ, P1, !PT
  %".351" = load i32, ptr %"R33"
  %".352" = load i32, ptr %"UR5"
  %".353" = load i1, ptr %"P1"
  %".354" = xor i1 1, -1
  %".355" = zext i1 %".353" to i32
  %".356" = zext i1 %".354" to i32
  %"add.5" = add i32 %".351", %".352"
  %"add.6" = add i32 %"add.5", 0
  %"add.7" = add i32 %"add.6", %".355"
  %"add.8" = add i32 %"add.7", %".356"
  store i32 %"add.8", ptr %"R39"
  ; LDG.E.CONSTANT.SYS R34, [R30+0xc]
  %".359" = load i32, ptr %"R30"
  %"zext.34" = zext i32 %".359" to i64
  %".360" = load i32, ptr %"R31"
  %"zext.35" = zext i32 %".360" to i64
  %"shl.19" = shl i64 %"zext.35", 32
  %"or.15" = or i64 %"shl.19", %"zext.34"
  %"ptr_plus_imm.2" = add i64 %"or.15", 12
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".361" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".362" = bitcast ptr %"R34" to ptr
  store float %".361", ptr %".362"
  ; IADD3 R22, P1, R38, UR4, RZ
  %".365" = load i32, ptr %"R38"
  %".366" = load i32, ptr %"UR4"
  %".367" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".365", i32 %".366")
  %".368" = extractvalue {i32, i1} %".367", 0
  %".369" = extractvalue {i32, i1} %".367", 1
  %".370" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".368", i32 0)
  %".371" = extractvalue {i32, i1} %".370", 0
  %".372" = extractvalue {i32, i1} %".370", 1
  %".373" = or i1 %".369", %".372"
  store i32 %".371", ptr %"R22"
  store i1 %".373", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R40, [R32]
  %".377" = load i32, ptr %"R32"
  %"zext.36" = zext i32 %".377" to i64
  %".378" = load i32, ptr %"R33"
  %"zext.37" = zext i32 %".378" to i64
  %"shl.20" = shl i64 %"zext.37", 32
  %"or.16" = or i64 %"shl.20", %"zext.36"
  %"inttoptr_bytes.12" = inttoptr i64 %"or.16" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".379" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".380" = bitcast ptr %"R40" to ptr
  store float %".379", ptr %".380"
  ; IADD3.X R23, R39, UR5, RZ, P1, !PT
  %".383" = load i32, ptr %"R39"
  %".384" = load i32, ptr %"UR5"
  %".385" = load i1, ptr %"P1"
  %".386" = xor i1 1, -1
  %".387" = zext i1 %".385" to i32
  %".388" = zext i1 %".386" to i32
  %"add.9" = add i32 %".383", %".384"
  %"add.10" = add i32 %"add.9", 0
  %"add.11" = add i32 %"add.10", %".387"
  %"add.12" = add i32 %"add.11", %".388"
  store i32 %"add.12", ptr %"R23"
  ; IADD3 R12, P1, R22, UR4, RZ
  %".391" = load i32, ptr %"R22"
  %".392" = load i32, ptr %"UR4"
  %".393" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".391", i32 %".392")
  %".394" = extractvalue {i32, i1} %".393", 0
  %".395" = extractvalue {i32, i1} %".393", 1
  %".396" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".394", i32 0)
  %".397" = extractvalue {i32, i1} %".396", 0
  %".398" = extractvalue {i32, i1} %".396", 1
  %".399" = or i1 %".395", %".398"
  store i32 %".397", ptr %"R12"
  store i1 %".399", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R36, [R36]
  %".403" = load i32, ptr %"R36"
  %"zext.38" = zext i32 %".403" to i64
  %".404" = load i32, ptr %"R37"
  %"zext.39" = zext i32 %".404" to i64
  %"shl.21" = shl i64 %"zext.39", 32
  %"or.17" = or i64 %"shl.21", %"zext.38"
  %"inttoptr_bytes.13" = inttoptr i64 %"or.17" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".405" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".406" = bitcast ptr %"R36" to ptr
  store float %".405", ptr %".406"
  ; IADD3.X R13, R23, UR5, RZ, P1, !PT
  %".409" = load i32, ptr %"R23"
  %".410" = load i32, ptr %"UR5"
  %".411" = load i1, ptr %"P1"
  %".412" = xor i1 1, -1
  %".413" = zext i1 %".411" to i32
  %".414" = zext i1 %".412" to i32
  %"add.13" = add i32 %".409", %".410"
  %"add.14" = add i32 %"add.13", 0
  %"add.15" = add i32 %"add.14", %".413"
  %"add.16" = add i32 %"add.15", %".414"
  store i32 %"add.16", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R38, [R38]
  %".417" = load i32, ptr %"R38"
  %"zext.40" = zext i32 %".417" to i64
  %".418" = load i32, ptr %"R39"
  %"zext.41" = zext i32 %".418" to i64
  %"shl.22" = shl i64 %"zext.41", 32
  %"or.18" = or i64 %"shl.22", %"zext.40"
  %"inttoptr_bytes.14" = inttoptr i64 %"or.18" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".419" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".420" = bitcast ptr %"R38" to ptr
  store float %".419", ptr %".420"
  ; IADD3 R18, P1, R12, UR4, RZ
  %".423" = load i32, ptr %"R12"
  %".424" = load i32, ptr %"UR4"
  %".425" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".423", i32 %".424")
  %".426" = extractvalue {i32, i1} %".425", 0
  %".427" = extractvalue {i32, i1} %".425", 1
  %".428" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".426", i32 0)
  %".429" = extractvalue {i32, i1} %".428", 0
  %".430" = extractvalue {i32, i1} %".428", 1
  %".431" = or i1 %".427", %".430"
  store i32 %".429", ptr %"R18"
  store i1 %".431", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R41, [R22]
  %".435" = load i32, ptr %"R22"
  %"zext.42" = zext i32 %".435" to i64
  %".436" = load i32, ptr %"R23"
  %"zext.43" = zext i32 %".436" to i64
  %"shl.23" = shl i64 %"zext.43", 32
  %"or.19" = or i64 %"shl.23", %"zext.42"
  %"inttoptr_bytes.15" = inttoptr i64 %"or.19" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".437" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".438" = bitcast ptr %"R41" to ptr
  store float %".437", ptr %".438"
  ; IADD3.X R19, R13, UR5, RZ, P1, !PT
  %".441" = load i32, ptr %"R13"
  %".442" = load i32, ptr %"UR5"
  %".443" = load i1, ptr %"P1"
  %".444" = xor i1 1, -1
  %".445" = zext i1 %".443" to i32
  %".446" = zext i1 %".444" to i32
  %"add.17" = add i32 %".441", %".442"
  %"add.18" = add i32 %"add.17", 0
  %"add.19" = add i32 %"add.18", %".445"
  %"add.20" = add i32 %"add.19", %".446"
  store i32 %"add.20", ptr %"R19"
  ; IADD3 R14, P1, R18, UR4, RZ
  %".449" = load i32, ptr %"R18"
  %".450" = load i32, ptr %"UR4"
  %".451" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".449", i32 %".450")
  %".452" = extractvalue {i32, i1} %".451", 0
  %".453" = extractvalue {i32, i1} %".451", 1
  %".454" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".452", i32 0)
  %".455" = extractvalue {i32, i1} %".454", 0
  %".456" = extractvalue {i32, i1} %".454", 1
  %".457" = or i1 %".453", %".456"
  store i32 %".455", ptr %"R14"
  store i1 %".457", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R43, [R12]
  %".461" = load i32, ptr %"R12"
  %"zext.44" = zext i32 %".461" to i64
  %".462" = load i32, ptr %"R13"
  %"zext.45" = zext i32 %".462" to i64
  %"shl.24" = shl i64 %"zext.45", 32
  %"or.20" = or i64 %"shl.24", %"zext.44"
  %"inttoptr_bytes.16" = inttoptr i64 %"or.20" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".463" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".464" = bitcast ptr %"R43" to ptr
  store float %".463", ptr %".464"
  ; IADD3.X R15, R19, UR5, RZ, P1, !PT
  %".467" = load i32, ptr %"R19"
  %".468" = load i32, ptr %"UR5"
  %".469" = load i1, ptr %"P1"
  %".470" = xor i1 1, -1
  %".471" = zext i1 %".469" to i32
  %".472" = zext i1 %".470" to i32
  %"add.21" = add i32 %".467", %".468"
  %"add.22" = add i32 %"add.21", 0
  %"add.23" = add i32 %"add.22", %".471"
  %"add.24" = add i32 %"add.23", %".472"
  store i32 %"add.24", ptr %"R15"
  ; IADD3 R10, P1, R14, UR4, RZ
  %".475" = load i32, ptr %"R14"
  %".476" = load i32, ptr %"UR4"
  %".477" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".475", i32 %".476")
  %".478" = extractvalue {i32, i1} %".477", 0
  %".479" = extractvalue {i32, i1} %".477", 1
  %".480" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".478", i32 0)
  %".481" = extractvalue {i32, i1} %".480", 0
  %".482" = extractvalue {i32, i1} %".480", 1
  %".483" = or i1 %".479", %".482"
  store i32 %".481", ptr %"R10"
  store i1 %".483", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R18, [R18]
  %".487" = load i32, ptr %"R18"
  %"zext.46" = zext i32 %".487" to i64
  %".488" = load i32, ptr %"R19"
  %"zext.47" = zext i32 %".488" to i64
  %"shl.25" = shl i64 %"zext.47", 32
  %"or.21" = or i64 %"shl.25", %"zext.46"
  %"inttoptr_bytes.17" = inttoptr i64 %"or.21" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".489" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".490" = bitcast ptr %"R18" to ptr
  store float %".489", ptr %".490"
  ; IADD3.X R11, R15, UR5, RZ, P1, !PT
  %".493" = load i32, ptr %"R15"
  %".494" = load i32, ptr %"UR5"
  %".495" = load i1, ptr %"P1"
  %".496" = xor i1 1, -1
  %".497" = zext i1 %".495" to i32
  %".498" = zext i1 %".496" to i32
  %"add.25" = add i32 %".493", %".494"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".497"
  %"add.28" = add i32 %"add.27", %".498"
  store i32 %"add.28", ptr %"R11"
  ; IADD3 R16, P1, R10, UR4, RZ
  %".501" = load i32, ptr %"R10"
  %".502" = load i32, ptr %"UR4"
  %".503" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".501", i32 %".502")
  %".504" = extractvalue {i32, i1} %".503", 0
  %".505" = extractvalue {i32, i1} %".503", 1
  %".506" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".504", i32 0)
  %".507" = extractvalue {i32, i1} %".506", 0
  %".508" = extractvalue {i32, i1} %".506", 1
  %".509" = or i1 %".505", %".508"
  store i32 %".507", ptr %"R16"
  store i1 %".509", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R14, [R14]
  %".513" = load i32, ptr %"R14"
  %"zext.48" = zext i32 %".513" to i64
  %".514" = load i32, ptr %"R15"
  %"zext.49" = zext i32 %".514" to i64
  %"shl.26" = shl i64 %"zext.49", 32
  %"or.22" = or i64 %"shl.26", %"zext.48"
  %"inttoptr_bytes.18" = inttoptr i64 %"or.22" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".515" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".516" = bitcast ptr %"R14" to ptr
  store float %".515", ptr %".516"
  ; IADD3.X R17, R11, UR5, RZ, P1, !PT
  %".519" = load i32, ptr %"R11"
  %".520" = load i32, ptr %"UR5"
  %".521" = load i1, ptr %"P1"
  %".522" = xor i1 1, -1
  %".523" = zext i1 %".521" to i32
  %".524" = zext i1 %".522" to i32
  %"add.29" = add i32 %".519", %".520"
  %"add.30" = add i32 %"add.29", 0
  %"add.31" = add i32 %"add.30", %".523"
  %"add.32" = add i32 %"add.31", %".524"
  store i32 %"add.32", ptr %"R17"
  ; IADD3 R24, P1, R16, UR4, RZ
  %".527" = load i32, ptr %"R16"
  %".528" = load i32, ptr %"UR4"
  %".529" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".527", i32 %".528")
  %".530" = extractvalue {i32, i1} %".529", 0
  %".531" = extractvalue {i32, i1} %".529", 1
  %".532" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".530", i32 0)
  %".533" = extractvalue {i32, i1} %".532", 0
  %".534" = extractvalue {i32, i1} %".532", 1
  %".535" = or i1 %".531", %".534"
  store i32 %".533", ptr %"R24"
  store i1 %".535", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".539" = load i32, ptr %"R10"
  %"zext.50" = zext i32 %".539" to i64
  %".540" = load i32, ptr %"R11"
  %"zext.51" = zext i32 %".540" to i64
  %"shl.27" = shl i64 %"zext.51", 32
  %"or.23" = or i64 %"shl.27", %"zext.50"
  %"inttoptr_bytes.19" = inttoptr i64 %"or.23" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".541" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".542" = bitcast ptr %"R10" to ptr
  store float %".541", ptr %".542"
  ; IADD3.X R25, R17, UR5, RZ, P1, !PT
  %".545" = load i32, ptr %"R17"
  %".546" = load i32, ptr %"UR5"
  %".547" = load i1, ptr %"P1"
  %".548" = xor i1 1, -1
  %".549" = zext i1 %".547" to i32
  %".550" = zext i1 %".548" to i32
  %"add.33" = add i32 %".545", %".546"
  %"add.34" = add i32 %"add.33", 0
  %"add.35" = add i32 %"add.34", %".549"
  %"add.36" = add i32 %"add.35", %".550"
  store i32 %"add.36", ptr %"R25"
  ; IADD3 R26, P1, R24, UR4, RZ
  %".553" = load i32, ptr %"R24"
  %".554" = load i32, ptr %"UR4"
  %".555" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".553", i32 %".554")
  %".556" = extractvalue {i32, i1} %".555", 0
  %".557" = extractvalue {i32, i1} %".555", 1
  %".558" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".556", i32 0)
  %".559" = extractvalue {i32, i1} %".558", 0
  %".560" = extractvalue {i32, i1} %".558", 1
  %".561" = or i1 %".557", %".560"
  store i32 %".559", ptr %"R26"
  store i1 %".561", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R16, [R16]
  %".565" = load i32, ptr %"R16"
  %"zext.52" = zext i32 %".565" to i64
  %".566" = load i32, ptr %"R17"
  %"zext.53" = zext i32 %".566" to i64
  %"shl.28" = shl i64 %"zext.53", 32
  %"or.24" = or i64 %"shl.28", %"zext.52"
  %"inttoptr_bytes.20" = inttoptr i64 %"or.24" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".567" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".568" = bitcast ptr %"R16" to ptr
  store float %".567", ptr %".568"
  ; IADD3.X R27, R25, UR5, RZ, P1, !PT
  %".571" = load i32, ptr %"R25"
  %".572" = load i32, ptr %"UR5"
  %".573" = load i1, ptr %"P1"
  %".574" = xor i1 1, -1
  %".575" = zext i1 %".573" to i32
  %".576" = zext i1 %".574" to i32
  %"add.37" = add i32 %".571", %".572"
  %"add.38" = add i32 %"add.37", 0
  %"add.39" = add i32 %"add.38", %".575"
  %"add.40" = add i32 %"add.39", %".576"
  store i32 %"add.40", ptr %"R27"
  ; IADD3 R30, P1, R26, UR4, RZ
  %".579" = load i32, ptr %"R26"
  %".580" = load i32, ptr %"UR4"
  %".581" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".579", i32 %".580")
  %".582" = extractvalue {i32, i1} %".581", 0
  %".583" = extractvalue {i32, i1} %".581", 1
  %".584" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".582", i32 0)
  %".585" = extractvalue {i32, i1} %".584", 0
  %".586" = extractvalue {i32, i1} %".584", 1
  %".587" = or i1 %".583", %".586"
  store i32 %".585", ptr %"R30"
  store i1 %".587", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R24, [R24]
  %".591" = load i32, ptr %"R24"
  %"zext.54" = zext i32 %".591" to i64
  %".592" = load i32, ptr %"R25"
  %"zext.55" = zext i32 %".592" to i64
  %"shl.29" = shl i64 %"zext.55", 32
  %"or.25" = or i64 %"shl.29", %"zext.54"
  %"inttoptr_bytes.21" = inttoptr i64 %"or.25" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".593" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".594" = bitcast ptr %"R24" to ptr
  store float %".593", ptr %".594"
  ; IADD3.X R31, R27, UR5, RZ, P1, !PT
  %".597" = load i32, ptr %"R27"
  %".598" = load i32, ptr %"UR5"
  %".599" = load i1, ptr %"P1"
  %".600" = xor i1 1, -1
  %".601" = zext i1 %".599" to i32
  %".602" = zext i1 %".600" to i32
  %"add.41" = add i32 %".597", %".598"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".601"
  %"add.44" = add i32 %"add.43", %".602"
  store i32 %"add.44", ptr %"R31"
  ; IADD3 R32, P1, R30, UR4, RZ
  %".605" = load i32, ptr %"R30"
  %".606" = load i32, ptr %"UR4"
  %".607" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".605", i32 %".606")
  %".608" = extractvalue {i32, i1} %".607", 0
  %".609" = extractvalue {i32, i1} %".607", 1
  %".610" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".608", i32 0)
  %".611" = extractvalue {i32, i1} %".610", 0
  %".612" = extractvalue {i32, i1} %".610", 1
  %".613" = or i1 %".609", %".612"
  store i32 %".611", ptr %"R32"
  store i1 %".613", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R26, [R26]
  %".617" = load i32, ptr %"R26"
  %"zext.56" = zext i32 %".617" to i64
  %".618" = load i32, ptr %"R27"
  %"zext.57" = zext i32 %".618" to i64
  %"shl.30" = shl i64 %"zext.57", 32
  %"or.26" = or i64 %"shl.30", %"zext.56"
  %"inttoptr_bytes.22" = inttoptr i64 %"or.26" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".619" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".620" = bitcast ptr %"R26" to ptr
  store float %".619", ptr %".620"
  ; IADD3.X R33, R31, UR5, RZ, P1, !PT
  %".623" = load i32, ptr %"R31"
  %".624" = load i32, ptr %"UR5"
  %".625" = load i1, ptr %"P1"
  %".626" = xor i1 1, -1
  %".627" = zext i1 %".625" to i32
  %".628" = zext i1 %".626" to i32
  %"add.45" = add i32 %".623", %".624"
  %"add.46" = add i32 %"add.45", 0
  %"add.47" = add i32 %"add.46", %".627"
  %"add.48" = add i32 %"add.47", %".628"
  store i32 %"add.48", ptr %"R33"
  ; IADD3 R22, P1, R32, UR4, RZ
  %".631" = load i32, ptr %"R32"
  %".632" = load i32, ptr %"UR4"
  %".633" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".631", i32 %".632")
  %".634" = extractvalue {i32, i1} %".633", 0
  %".635" = extractvalue {i32, i1} %".633", 1
  %".636" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".634", i32 0)
  %".637" = extractvalue {i32, i1} %".636", 0
  %".638" = extractvalue {i32, i1} %".636", 1
  %".639" = or i1 %".635", %".638"
  store i32 %".637", ptr %"R22"
  store i1 %".639", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R30, [R30]
  %".643" = load i32, ptr %"R30"
  %"zext.58" = zext i32 %".643" to i64
  %".644" = load i32, ptr %"R31"
  %"zext.59" = zext i32 %".644" to i64
  %"shl.31" = shl i64 %"zext.59", 32
  %"or.27" = or i64 %"shl.31", %"zext.58"
  %"inttoptr_bytes.23" = inttoptr i64 %"or.27" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".645" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".646" = bitcast ptr %"R30" to ptr
  store float %".645", ptr %".646"
  ; IADD3.X R23, R33, UR5, RZ, P1, !PT
  %".649" = load i32, ptr %"R33"
  %".650" = load i32, ptr %"UR5"
  %".651" = load i1, ptr %"P1"
  %".652" = xor i1 1, -1
  %".653" = zext i1 %".651" to i32
  %".654" = zext i1 %".652" to i32
  %"add.49" = add i32 %".649", %".650"
  %"add.50" = add i32 %"add.49", 0
  %"add.51" = add i32 %"add.50", %".653"
  %"add.52" = add i32 %"add.51", %".654"
  store i32 %"add.52", ptr %"R23"
  ; IADD3 R12, P1, R22, UR4, RZ
  %".657" = load i32, ptr %"R22"
  %".658" = load i32, ptr %"UR4"
  %".659" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".657", i32 %".658")
  %".660" = extractvalue {i32, i1} %".659", 0
  %".661" = extractvalue {i32, i1} %".659", 1
  %".662" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".660", i32 0)
  %".663" = extractvalue {i32, i1} %".662", 0
  %".664" = extractvalue {i32, i1} %".662", 1
  %".665" = or i1 %".661", %".664"
  store i32 %".663", ptr %"R12"
  store i1 %".665", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R32, [R32]
  %".669" = load i32, ptr %"R32"
  %"zext.60" = zext i32 %".669" to i64
  %".670" = load i32, ptr %"R33"
  %"zext.61" = zext i32 %".670" to i64
  %"shl.32" = shl i64 %"zext.61", 32
  %"or.28" = or i64 %"shl.32", %"zext.60"
  %"inttoptr_bytes.24" = inttoptr i64 %"or.28" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".671" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".672" = bitcast ptr %"R32" to ptr
  store float %".671", ptr %".672"
  ; IADD3.X R13, R23, UR5, RZ, P1, !PT
  %".675" = load i32, ptr %"R23"
  %".676" = load i32, ptr %"UR5"
  %".677" = load i1, ptr %"P1"
  %".678" = xor i1 1, -1
  %".679" = zext i1 %".677" to i32
  %".680" = zext i1 %".678" to i32
  %"add.53" = add i32 %".675", %".676"
  %"add.54" = add i32 %"add.53", 0
  %"add.55" = add i32 %"add.54", %".679"
  %"add.56" = add i32 %"add.55", %".680"
  store i32 %"add.56", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R22, [R22]
  %".683" = load i32, ptr %"R22"
  %"zext.62" = zext i32 %".683" to i64
  %".684" = load i32, ptr %"R23"
  %"zext.63" = zext i32 %".684" to i64
  %"shl.33" = shl i64 %"zext.63", 32
  %"or.29" = or i64 %"shl.33", %"zext.62"
  %"inttoptr_bytes.25" = inttoptr i64 %"or.29" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".685" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".686" = bitcast ptr %"R22" to ptr
  store float %".685", ptr %".686"
  ; LDG.E.CONSTANT.SYS R15, [R12]
  %".689" = load i32, ptr %"R12"
  %"zext.64" = zext i32 %".689" to i64
  %".690" = load i32, ptr %"R13"
  %"zext.65" = zext i32 %".690" to i64
  %"shl.34" = shl i64 %"zext.65", 32
  %"or.30" = or i64 %"shl.34", %"zext.64"
  %"inttoptr_bytes.26" = inttoptr i64 %"or.30" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".691" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".692" = bitcast ptr %"R15" to ptr
  store float %".691", ptr %".692"
  ; LDG.E.CONSTANT.SYS R17, [R12.64+UR4]
  %".695" = load i32, ptr %"R12"
  %"zext.66" = zext i32 %".695" to i64
  %".696" = load i32, ptr %"R13"
  %"zext.67" = zext i32 %".696" to i64
  %"shl.35" = shl i64 %"zext.67", 32
  %"or.31" = or i64 %"shl.35", %"zext.66"
  %"inttoptr_bytes.27" = inttoptr i64 %"or.31" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".697" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".698" = bitcast ptr %"R17" to ptr
  store float %".697", ptr %".698"
  ; IADD3 R42, R42, -0x4, RZ
  %".701" = load i32, ptr %"R42"
  %".702" = add i32 %".701", -4
  %".703" = add i32 %".702", 0
  store i32 %".703", ptr %"R42"
  ; ISETP.NE.AND P1, PT, R42, RZ, PT
  %".706" = load i32, ptr %"R42"
  %".707" = load i1, ptr %"PT"
  %"cmp.4" = icmp ne i32 %".706", 0
  %".708" = add i1 %"cmp.4", 0
  %".709" = xor i1 %".708", -1
  %".710" = and i1 %"cmp.4", %".707"
  %".711" = and i1 %".709", %".707"
  store i1 %".710", ptr %"P1"
  ; IADD3 R28, R28, 0x4, RZ
  %".714" = load i32, ptr %"R28"
  %".715" = add i32 %".714", 4
  %".716" = add i32 %".715", 0
  store i32 %".716", ptr %"R28"
  ; FFMA R40, R35.reuse, R40, R2
  %".719" = load float, ptr %"R35"
  %".720" = load float, ptr %"R40"
  %".721" = load float, ptr %"R2"
  %"fmul" = fmul float %".719", %".720"
  %"fadd.4" = fadd float %"fmul", %".721"
  %".722" = bitcast ptr %"R40" to ptr
  store float %"fadd.4", ptr %".722"
  ; FFMA R36, R36, R35, R3
  %".725" = load float, ptr %"R36"
  %".726" = load float, ptr %"R35"
  %".727" = load float, ptr %"R3"
  %"fmul.1" = fmul float %".725", %".726"
  %"fadd.5" = fadd float %"fmul.1", %".727"
  %".728" = bitcast ptr %"R36" to ptr
  store float %"fadd.5", ptr %".728"
  ; FFMA R38, R35.reuse, R38, R0
  %".731" = load float, ptr %"R35"
  %".732" = load float, ptr %"R38"
  %".733" = load float, ptr %"R0"
  %"fmul.2" = fmul float %".731", %".732"
  %"fadd.6" = fadd float %"fmul.2", %".733"
  %".734" = bitcast ptr %"R38" to ptr
  store float %"fadd.6", ptr %".734"
  ; FFMA R8, R35, R41, R8
  %".737" = load float, ptr %"R35"
  %".738" = load float, ptr %"R41"
  %".739" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".737", %".738"
  %"fadd.7" = fadd float %"fmul.3", %".739"
  %".740" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".740"
  ; FFMA R36, R43, R29, R36
  %".743" = load float, ptr %"R43"
  %".744" = load float, ptr %"R29"
  %".745" = load float, ptr %"R36"
  %"fmul.4" = fmul float %".743", %".744"
  %"fadd.8" = fadd float %"fmul.4", %".745"
  %".746" = bitcast ptr %"R36" to ptr
  store float %"fadd.8", ptr %".746"
  ; FFMA R18, R29.reuse, R18, R40
  %".749" = load float, ptr %"R29"
  %".750" = load float, ptr %"R18"
  %".751" = load float, ptr %"R40"
  %"fmul.5" = fmul float %".749", %".750"
  %"fadd.9" = fadd float %"fmul.5", %".751"
  %".752" = bitcast ptr %"R18" to ptr
  store float %"fadd.9", ptr %".752"
  ; FFMA R14, R29.reuse, R14, R38
  %".755" = load float, ptr %"R29"
  %".756" = load float, ptr %"R14"
  %".757" = load float, ptr %"R38"
  %"fmul.6" = fmul float %".755", %".756"
  %"fadd.10" = fadd float %"fmul.6", %".757"
  %".758" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".758"
  ; FFMA R8, R29, R10, R8
  %".761" = load float, ptr %"R29"
  %".762" = load float, ptr %"R10"
  %".763" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".761", %".762"
  %"fadd.11" = fadd float %"fmul.7", %".763"
  %".764" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".764"
  ; FFMA R3, R16, R21, R36
  %".767" = load float, ptr %"R16"
  %".768" = load float, ptr %"R21"
  %".769" = load float, ptr %"R36"
  %"fmul.8" = fmul float %".767", %".768"
  %"fadd.12" = fadd float %"fmul.8", %".769"
  %".770" = bitcast ptr %"R3" to ptr
  store float %"fadd.12", ptr %".770"
  ; FFMA R11, R21.reuse, R24, R18
  %".773" = load float, ptr %"R21"
  %".774" = load float, ptr %"R24"
  %".775" = load float, ptr %"R18"
  %"fmul.9" = fmul float %".773", %".774"
  %"fadd.13" = fadd float %"fmul.9", %".775"
  %".776" = bitcast ptr %"R11" to ptr
  store float %"fadd.13", ptr %".776"
  ; FFMA R13, R21, R26, R14
  %".779" = load float, ptr %"R21"
  %".780" = load float, ptr %"R26"
  %".781" = load float, ptr %"R14"
  %"fmul.10" = fmul float %".779", %".780"
  %"fadd.14" = fadd float %"fmul.10", %".781"
  %".782" = bitcast ptr %"R13" to ptr
  store float %"fadd.14", ptr %".782"
  ; FFMA R21, R21, R30, R8
  %".785" = load float, ptr %"R21"
  %".786" = load float, ptr %"R30"
  %".787" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".785", %".786"
  %"fadd.15" = fadd float %"fmul.11", %".787"
  %".788" = bitcast ptr %"R21" to ptr
  store float %"fadd.15", ptr %".788"
  ; FFMA R3, R32, R34, R3
  %".791" = load float, ptr %"R32"
  %".792" = load float, ptr %"R34"
  %".793" = load float, ptr %"R3"
  %"fmul.12" = fmul float %".791", %".792"
  %"fadd.16" = fadd float %"fmul.12", %".793"
  %".794" = bitcast ptr %"R3" to ptr
  store float %"fadd.16", ptr %".794"
  ; FFMA R2, R34.reuse, R22, R11
  %".797" = load float, ptr %"R34"
  %".798" = load float, ptr %"R22"
  %".799" = load float, ptr %"R11"
  %"fmul.13" = fmul float %".797", %".798"
  %"fadd.17" = fadd float %"fmul.13", %".799"
  %".800" = bitcast ptr %"R2" to ptr
  store float %"fadd.17", ptr %".800"
  ; FFMA R0, R34.reuse, R15, R13
  %".803" = load float, ptr %"R34"
  %".804" = load float, ptr %"R15"
  %".805" = load float, ptr %"R13"
  %"fmul.14" = fmul float %".803", %".804"
  %"fadd.18" = fadd float %"fmul.14", %".805"
  %".806" = bitcast ptr %"R0" to ptr
  store float %"fadd.18", ptr %".806"
  ; FFMA R8, R34, R17, R21
  %".809" = load float, ptr %"R34"
  %".810" = load float, ptr %"R17"
  %".811" = load float, ptr %"R21"
  %"fmul.15" = fmul float %".809", %".810"
  %"fadd.19" = fadd float %"fmul.15", %".811"
  %".812" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".812"
  ; @P1 BRA `(.L_x_2)
  %".815" = load i1, ptr %"P1"
  %".816" = icmp eq i1 %".815", 1
  br i1 %".816", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; @!P0 BRA `(.L_x_0)
  %".819" = load i1, ptr %"P0"
  %".820" = icmp ne i1 %".819", 1
  br i1 %".820", label %".L_x_0", label %".L_x_1_split_0x07b0"
.L_x_1_split_0x07b0:
  ; IMAD R10, R7, c[0x0][0x1ac], R28
  %".823" = load i32, ptr %"R7"
  %".824" = load i32, ptr %"R28"
  %"imad_mul.18" = mul i32 %".823", %"Arg_10"
  %"imad_add.18" = add i32 %"imad_mul.18", %".824"
  store i32 %"imad_add.18", ptr %"R10"
  ; IADD3 R20, -R20, RZ, RZ
  %".827" = load i32, ptr %"R20"
  %".828" = sub i32 0, %".827"
  %".829" = add i32 %".828", 0
  %".830" = add i32 %".829", 0
  store i32 %".830", ptr %"R20"
  ; IMAD R28, R28, c[0x0][0x1b0], RZ
  %".833" = load i32, ptr %"R28"
  %"imad_mul.19" = mul i32 %".833", %"Arg_11"
  %"imad_add.19" = add i32 %"imad_mul.19", 0
  store i32 %"imad_add.19", ptr %"R28"
  ; USHF.L.U64.HI UR5, UR7, 0x2, UR6
  %".836" = icmp ult i32 2, 64
  %"SHF_min.4" = select  i1 %".836", i32 2, i32 64
  %".837" = load i32, ptr %"UR6"
  %".838" = load i32, ptr %"UR7"
  %"zext.68" = zext i32 %".837" to i64
  %"zext.69" = zext i32 %".838" to i64
  %"zext.70" = zext i32 2 to i64
  %"shl.36" = shl i64 %"zext.68", 32
  %"or.32" = or i64 %"shl.36", %"zext.69"
  %"shl.37" = shl i64 %"or.32", %"zext.70"
  %"lshr.1" = lshr i64 %"shl.37", 32
  %"trunc32.24" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.24", ptr %"UR5"
  ; IMAD.WIDE R10, R10, R9, c[0x0][0x160]
  %".841" = load i32, ptr %"R10"
  %".842" = load i32, ptr %"R9"
  %"imad_ext1.10" = zext i32 %".841" to i64
  %"imad_ext2.10" = zext i32 %".842" to i64
  %"imad_mul.20" = mul i64 %"imad_ext1.10", %"imad_ext2.10"
  %".843" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.20" = add i64 %"imad_mul.20", %".843"
  %".844" = and i64 %"imad_add.20", 18446744069414584320
  %".845" = lshr i64 %".844", 32
  %"trunc32.25" = trunc i64 %".845" to i32
  %"trunc32.26" = trunc i64 %"imad_add.20" to i32
  store i32 %"trunc32.26", ptr %"R10"
  store i32 %"trunc32.25", ptr %"R11"
  ; USHF.L.U32 UR4, UR7, 0x2, URZ
  %".849" = icmp ult i32 2, 32
  %"SHF_min.5" = select  i1 %".849", i32 2, i32 32
  %".850" = load i32, ptr %"UR7"
  %"zext.71" = zext i32 0 to i64
  %"zext.72" = zext i32 %".850" to i64
  %"zext.73" = zext i32 2 to i64
  %"shl.38" = shl i64 %"zext.71", 32
  %"or.33" = or i64 %"shl.38", %"zext.72"
  %"shl.39" = shl i64 %"or.33", %"zext.73"
  %"and.2" = and i64 %"shl.39", 4294967295
  %"trunc32.27" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.27", ptr %"UR4"
  ; IMAD R13, R28, 0x4, R5
  %".853" = load i32, ptr %"R28"
  %".854" = load i32, ptr %"R5"
  %"imad_mul.21" = mul i32 %".853", 4
  %"imad_add.21" = add i32 %"imad_mul.21", %".854"
  store i32 %"imad_add.21", ptr %"R13"
  ; MOV R12, R10
  %".857" = load i32, ptr %"R10"
  store i32 %".857", ptr %"R12"
  ; IMAD.MOV.U32 R23, RZ, RZ, R11
  %".860" = load i32, ptr %"R11"
  %"imad_mul.22" = mul i32 0, 0
  %"imad_add.22" = add i32 %"imad_mul.22", %".860"
  store i32 %"imad_add.22", ptr %"R23"
  ; IMAD R18, R4, c[0x0][0x0], R13
  %".863" = load i32, ptr %"R4"
  %"nvvm_blockdim_x.1" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".864" = load i32, ptr %"R13"
  %"imad_mul.23" = mul i32 %".863", %"nvvm_blockdim_x.1"
  %"imad_add.23" = add i32 %"imad_mul.23", %".864"
  store i32 %"imad_add.23", ptr %"R18"
  br label %".L_x_3"
.L_x_3:
  ; IMAD.WIDE R10, R18, R9, c[0x0][0x178]
  %".868" = load i32, ptr %"R18"
  %".869" = load i32, ptr %"R9"
  %"imad_ext1.11" = zext i32 %".868" to i64
  %"imad_ext2.11" = zext i32 %".869" to i64
  %"imad_mul.24" = mul i64 %"imad_ext1.11", %"imad_ext2.11"
  %".870" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.24" = add i64 %"imad_mul.24", %".870"
  %".871" = and i64 %"imad_add.24", 18446744069414584320
  %".872" = lshr i64 %".871", 32
  %"trunc32.28" = trunc i64 %".872" to i32
  %"trunc32.29" = trunc i64 %"imad_add.24" to i32
  store i32 %"trunc32.29", ptr %"R10"
  store i32 %"trunc32.28", ptr %"R11"
  ; IMAD.MOV.U32 R13, RZ, RZ, R23
  %".876" = load i32, ptr %"R23"
  %"imad_mul.25" = mul i32 0, 0
  %"imad_add.25" = add i32 %"imad_mul.25", %".876"
  store i32 %"imad_add.25", ptr %"R13"
  ; IADD3 R14, P0, R10, UR4, RZ
  %".879" = load i32, ptr %"R10"
  %".880" = load i32, ptr %"UR4"
  %".881" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".879", i32 %".880")
  %".882" = extractvalue {i32, i1} %".881", 0
  %".883" = extractvalue {i32, i1} %".881", 1
  %".884" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".882", i32 0)
  %".885" = extractvalue {i32, i1} %".884", 0
  %".886" = extractvalue {i32, i1} %".884", 1
  %".887" = or i1 %".883", %".886"
  store i32 %".885", ptr %"R14"
  store i1 %".887", ptr %"P0"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".891" = load i32, ptr %"R10"
  %"zext.74" = zext i32 %".891" to i64
  %".892" = load i32, ptr %"R11"
  %"zext.75" = zext i32 %".892" to i64
  %"shl.40" = shl i64 %"zext.75", 32
  %"or.34" = or i64 %"shl.40", %"zext.74"
  %"inttoptr_bytes.28" = inttoptr i64 %"or.34" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".893" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".894" = bitcast ptr %"R10" to ptr
  store float %".893", ptr %".894"
  ; IADD3.X R15, R11, UR5, RZ, P0, !PT
  %".897" = load i32, ptr %"R11"
  %".898" = load i32, ptr %"UR5"
  %".899" = load i1, ptr %"P0"
  %".900" = xor i1 1, -1
  %".901" = zext i1 %".899" to i32
  %".902" = zext i1 %".900" to i32
  %"add.57" = add i32 %".897", %".898"
  %"add.58" = add i32 %"add.57", 0
  %"add.59" = add i32 %"add.58", %".901"
  %"add.60" = add i32 %"add.59", %".902"
  store i32 %"add.60", ptr %"R15"
  ; IADD3 R16, P0, R14, UR4, RZ
  %".905" = load i32, ptr %"R14"
  %".906" = load i32, ptr %"UR4"
  %".907" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".905", i32 %".906")
  %".908" = extractvalue {i32, i1} %".907", 0
  %".909" = extractvalue {i32, i1} %".907", 1
  %".910" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".908", i32 0)
  %".911" = extractvalue {i32, i1} %".910", 0
  %".912" = extractvalue {i32, i1} %".910", 1
  %".913" = or i1 %".909", %".912"
  store i32 %".911", ptr %"R16"
  store i1 %".913", ptr %"P0"
  ; LDG.E.CONSTANT.SYS R13, [R12]
  %".917" = load i32, ptr %"R12"
  %"zext.76" = zext i32 %".917" to i64
  %".918" = load i32, ptr %"R13"
  %"zext.77" = zext i32 %".918" to i64
  %"shl.41" = shl i64 %"zext.77", 32
  %"or.35" = or i64 %"shl.41", %"zext.76"
  %"inttoptr_bytes.29" = inttoptr i64 %"or.35" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".919" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".920" = bitcast ptr %"R13" to ptr
  store float %".919", ptr %".920"
  ; IADD3.X R17, R15, UR5, RZ, P0, !PT
  %".923" = load i32, ptr %"R15"
  %".924" = load i32, ptr %"UR5"
  %".925" = load i1, ptr %"P0"
  %".926" = xor i1 1, -1
  %".927" = zext i1 %".925" to i32
  %".928" = zext i1 %".926" to i32
  %"add.61" = add i32 %".923", %".924"
  %"add.62" = add i32 %"add.61", 0
  %"add.63" = add i32 %"add.62", %".927"
  %"add.64" = add i32 %"add.63", %".928"
  store i32 %"add.64", ptr %"R17"
  ; LDG.E.CONSTANT.SYS R14, [R14]
  %".931" = load i32, ptr %"R14"
  %"zext.78" = zext i32 %".931" to i64
  %".932" = load i32, ptr %"R15"
  %"zext.79" = zext i32 %".932" to i64
  %"shl.42" = shl i64 %"zext.79", 32
  %"or.36" = or i64 %"shl.42", %"zext.78"
  %"inttoptr_bytes.30" = inttoptr i64 %"or.36" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".933" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".934" = bitcast ptr %"R14" to ptr
  store float %".933", ptr %".934"
  ; LDG.E.CONSTANT.SYS R19, [R16]
  %".937" = load i32, ptr %"R16"
  %"zext.80" = zext i32 %".937" to i64
  %".938" = load i32, ptr %"R17"
  %"zext.81" = zext i32 %".938" to i64
  %"shl.43" = shl i64 %"zext.81", 32
  %"or.37" = or i64 %"shl.43", %"zext.80"
  %"inttoptr_bytes.31" = inttoptr i64 %"or.37" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".939" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".940" = bitcast ptr %"R19" to ptr
  store float %".939", ptr %".940"
  ; LDG.E.CONSTANT.SYS R21, [R16.64+UR4]
  %".943" = load i32, ptr %"R16"
  %"zext.82" = zext i32 %".943" to i64
  %".944" = load i32, ptr %"R17"
  %"zext.83" = zext i32 %".944" to i64
  %"shl.44" = shl i64 %"zext.83", 32
  %"or.38" = or i64 %"shl.44", %"zext.82"
  %"inttoptr_bytes.32" = inttoptr i64 %"or.38" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".945" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".946" = bitcast ptr %"R21" to ptr
  store float %".945", ptr %".946"
  ; IADD3 R20, R20, 0x1, RZ
  %".949" = load i32, ptr %"R20"
  %".950" = add i32 %".949", 1
  %".951" = add i32 %".950", 0
  store i32 %".951", ptr %"R20"
  ; ISETP.NE.AND P0, PT, R20, RZ, PT
  %".954" = load i32, ptr %"R20"
  %".955" = load i1, ptr %"PT"
  %"cmp.5" = icmp ne i32 %".954", 0
  %".956" = add i1 %"cmp.5", 0
  %".957" = xor i1 %".956", -1
  %".958" = and i1 %"cmp.5", %".955"
  %".959" = and i1 %".957", %".955"
  store i1 %".958", ptr %"P0"
  ; MOV R25, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"R25"
  ; IADD3 R12, P1, R12, 0x4, RZ
  %".964" = load i32, ptr %"R12"
  %".965" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".964", i32 4)
  %".966" = extractvalue {i32, i1} %".965", 0
  %".967" = extractvalue {i32, i1} %".965", 1
  %".968" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".966", i32 0)
  %".969" = extractvalue {i32, i1} %".968", 0
  %".970" = extractvalue {i32, i1} %".968", 1
  %".971" = or i1 %".967", %".970"
  store i32 %".969", ptr %"R12"
  store i1 %".971", ptr %"P1"
  ; IMAD R18, R25, 0x4, R18
  %".975" = load i32, ptr %"R25"
  %".976" = load i32, ptr %"R18"
  %"imad_mul.26" = mul i32 %".975", 4
  %"imad_add.26" = add i32 %"imad_mul.26", %".976"
  store i32 %"imad_add.26", ptr %"R18"
  ; IADD3.X R23, RZ, R23, RZ, P1, !PT
  %".979" = load i32, ptr %"R23"
  %".980" = load i1, ptr %"P1"
  %".981" = xor i1 1, -1
  %".982" = zext i1 %".980" to i32
  %".983" = zext i1 %".981" to i32
  %"add.65" = add i32 0, %".979"
  %"add.66" = add i32 %"add.65", 0
  %"add.67" = add i32 %"add.66", %".982"
  %"add.68" = add i32 %"add.67", %".983"
  store i32 %"add.68", ptr %"R23"
  ; FFMA R3, R10, R13, R3
  %".986" = load float, ptr %"R10"
  %".987" = load float, ptr %"R13"
  %".988" = load float, ptr %"R3"
  %"fmul.16" = fmul float %".986", %".987"
  %"fadd.20" = fadd float %"fmul.16", %".988"
  %".989" = bitcast ptr %"R3" to ptr
  store float %"fadd.20", ptr %".989"
  ; FFMA R2, R13.reuse, R14, R2
  %".992" = load float, ptr %"R13"
  %".993" = load float, ptr %"R14"
  %".994" = load float, ptr %"R2"
  %"fmul.17" = fmul float %".992", %".993"
  %"fadd.21" = fadd float %"fmul.17", %".994"
  %".995" = bitcast ptr %"R2" to ptr
  store float %"fadd.21", ptr %".995"
  ; FFMA R0, R13.reuse, R19, R0
  %".998" = load float, ptr %"R13"
  %".999" = load float, ptr %"R19"
  %".1000" = load float, ptr %"R0"
  %"fmul.18" = fmul float %".998", %".999"
  %"fadd.22" = fadd float %"fmul.18", %".1000"
  %".1001" = bitcast ptr %"R0" to ptr
  store float %"fadd.22", ptr %".1001"
  ; FFMA R8, R13, R21, R8
  %".1004" = load float, ptr %"R13"
  %".1005" = load float, ptr %"R21"
  %".1006" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".1004", %".1005"
  %"fadd.23" = fadd float %"fmul.19", %".1006"
  %".1007" = bitcast ptr %"R8" to ptr
  store float %"fadd.23", ptr %".1007"
  ; @P0 BRA `(.L_x_3)
  %".1010" = load i1, ptr %"P0"
  %".1011" = icmp eq i1 %".1010", 1
  br i1 %".1011", label %".L_x_3", label %".L_x_0"
.L_x_0:
  ; ULDC UR8, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"UR8"
  ; UISETP.GE.AND UP0, UPT, UR8, 0x1, UPT
  %".1016" = load i32, ptr %"UR8"
  %".1017" = load i1, ptr %"UPT"
  %"unsigned_cmp" = icmp uge i32 %".1016", 1
  %".1018" = add i1 %"unsigned_cmp", 0
  %".1019" = xor i1 %".1018", -1
  %".1020" = and i1 %"unsigned_cmp", %".1017"
  %".1021" = and i1 %".1019", %".1017"
  store i1 %".1020", ptr %"UP0"
  store i1 %".1021", ptr %"UPT"
  ; PLOP3.LUT P0, PT, PT, PT, UP0, 0x80, 0x0
  %".1025" = and i1 1, 1
  %".1026" = and i1 %".1025", 1
  ; @!P0 BRA `(.L_x_4)
  %".1028" = load i1, ptr %"P0"
  %".1029" = icmp ne i1 %".1028", 1
  br i1 %".1029", label %".L_x_4", label %".L_x_0_split_0x09f0"
.L_x_0_split_0x09f0:
  ; UIADD3 UR4, UR8, -0x1, URZ
  %".1032" = load i32, ptr %"UR8"
  %".1033" = add i32 %".1032", -1
  %".1034" = add i32 %".1033", 0
  store i32 %".1034", ptr %"UR4"
  ; IMAD.MOV.U32 R22, RZ, RZ, RZ
  %"imad_mul.27" = mul i32 0, 0
  %"imad_add.27" = add i32 %"imad_mul.27", 0
  store i32 %"imad_add.27", ptr %"R22"
  ; ULOP3.LUT UP1, URZ, UR8, 0x3, URZ, 0xc0, !UPT
  %".1039" = load i32, ptr %"UR8"
  %".1040" = xor i1 1, -1
  %".1041" = and i32 %".1039", 3
  store i32 %".1041", ptr %"URZ"
  %".1043" = icmp ne i32 %".1041", 0
  store i1 %".1043", ptr %"UP1"
  ; UISETP.GE.U32.AND UP0, UPT, UR4, 0x3, UPT
  %".1046" = load i32, ptr %"UR4"
  %".1047" = load i1, ptr %"UPT"
  %"unsigned_cmp.1" = icmp uge i32 %".1046", 3
  %".1048" = add i1 %"unsigned_cmp.1", 0
  %".1049" = xor i1 %".1048", -1
  %".1050" = and i1 %"unsigned_cmp.1", %".1047"
  %".1051" = and i1 %".1049", %".1047"
  store i1 %".1050", ptr %"UP0"
  store i1 %".1051", ptr %"UPT"
  ; ULOP3.LUT UR6, UR8, 0x3, URZ, 0xc0, !UPT
  %".1055" = load i32, ptr %"UR8"
  %".1056" = xor i1 1, -1
  %".1057" = and i32 %".1055", 3
  store i32 %".1057", ptr %"UR6"
  ; PLOP3.LUT P0, PT, PT, PT, UP1, 0x80, 0x0
  %".1060" = and i1 1, 1
  %".1061" = and i1 %".1060", 1
  ; PLOP3.LUT P1, PT, PT, PT, UP0, 0x80, 0x0
  %".1063" = and i1 1, 1
  %".1064" = and i1 %".1063", 1
  ; @!P1 BRA `(.L_x_5)
  %".1066" = load i1, ptr %"P1"
  %".1067" = icmp ne i1 %".1066", 1
  br i1 %".1067", label %".L_x_5", label %".L_x_0_split_0x0a70"
.L_x_0_split_0x0a70:
  ; USHF.R.S32.HI UR4, URZ, 0x1f, UR8
  %".1070" = icmp ult i32 31, 32
  %"SHF_min.6" = select  i1 %".1070", i32 31, i32 32
  %".1071" = load i32, ptr %"UR8"
  %"zext.84" = zext i32 %".1071" to i64
  %"zext.85" = zext i32 0 to i64
  %"zext.86" = zext i32 31 to i64
  %"shl.45" = shl i64 %"zext.84", 32
  %"or.39" = or i64 %"shl.45", %"zext.85"
  %"ashr.2" = ashr i64 %"or.39", %"zext.86"
  %"ashr.3" = ashr i64 %"ashr.2", 32
  %"trunc32.30" = trunc i64 %"ashr.3" to i32
  store i32 %"trunc32.30", ptr %"UR4"
  ; MOV R22, RZ
  %".1074" = load i32, ptr %"RZ"
  store i32 %".1074", ptr %"R22"
  ; ULDC UR7, c[0x0][0x1b0]
  store i32 %"Arg_11", ptr %"UR7"
  ; USHF.L.U32 UR9, UR8, 0x2, URZ
  %".1079" = icmp ult i32 2, 32
  %"SHF_min.7" = select  i1 %".1079", i32 2, i32 32
  %".1080" = load i32, ptr %"UR8"
  %"zext.87" = zext i32 0 to i64
  %"zext.88" = zext i32 %".1080" to i64
  %"zext.89" = zext i32 2 to i64
  %"shl.46" = shl i64 %"zext.87", 32
  %"or.40" = or i64 %"shl.46", %"zext.88"
  %"shl.47" = shl i64 %"or.40", %"zext.89"
  %"and.3" = and i64 %"shl.47", 4294967295
  %"trunc32.31" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.31", ptr %"UR9"
  ; UIADD3 UR7, -UR6, UR7, URZ
  %".1083" = load i32, ptr %"UR6"
  %".1084" = sub i32 0, %".1083"
  %".1085" = load i32, ptr %"UR7"
  %".1086" = add i32 %".1084", %".1085"
  %".1087" = add i32 %".1086", 0
  store i32 %".1087", ptr %"UR7"
  ; USHF.L.U64.HI UR5, UR8, 0x2, UR4
  %".1090" = icmp ult i32 2, 64
  %"SHF_min.8" = select  i1 %".1090", i32 2, i32 64
  %".1091" = load i32, ptr %"UR4"
  %".1092" = load i32, ptr %"UR8"
  %"zext.90" = zext i32 %".1091" to i64
  %"zext.91" = zext i32 %".1092" to i64
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
  %".1096" = load i32, ptr %"R22"
  %"imad_shl" = shl i32 %".1096", 4
  %"imad_add.28" = add i32 %"imad_shl", 0
  store i32 %"imad_add.28", ptr %"R11"
  ; IMAD R28, R7, c[0x0][0x1b0], R22
  %".1099" = load i32, ptr %"R7"
  %".1100" = load i32, ptr %"R22"
  %"imad_mul.28" = mul i32 %".1099", %"Arg_11"
  %"imad_add.29" = add i32 %"imad_mul.28", %".1100"
  store i32 %"imad_add.29", ptr %"R28"
  ; IMAD R30, R11, c[0x0][0x1b0], R6
  %".1103" = load i32, ptr %"R11"
  %".1104" = load i32, ptr %"R6"
  %"imad_mul.29" = mul i32 %".1103", %"Arg_11"
  %"imad_add.30" = add i32 %"imad_mul.29", %".1104"
  store i32 %"imad_add.30", ptr %"R30"
  ; IMAD.WIDE R28, R28, R9, c[0x0][0x168]
  %".1107" = load i32, ptr %"R28"
  %".1108" = load i32, ptr %"R9"
  %"imad_ext1.12" = zext i32 %".1107" to i64
  %"imad_ext2.12" = zext i32 %".1108" to i64
  %"imad_mul.30" = mul i64 %"imad_ext1.12", %"imad_ext2.12"
  %".1109" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.31" = add i64 %"imad_mul.30", %".1109"
  %".1110" = and i64 %"imad_add.31", 18446744069414584320
  %".1111" = lshr i64 %".1110", 32
  %"trunc32.33" = trunc i64 %".1111" to i32
  %"trunc32.34" = trunc i64 %"imad_add.31" to i32
  store i32 %"trunc32.34", ptr %"R28"
  store i32 %"trunc32.33", ptr %"R29"
  ; IMAD.WIDE R30, R30, R9, c[0x0][0x180]
  %".1115" = load i32, ptr %"R30"
  %".1116" = load i32, ptr %"R9"
  %"imad_ext1.13" = zext i32 %".1115" to i64
  %"imad_ext2.13" = zext i32 %".1116" to i64
  %"imad_mul.31" = mul i64 %"imad_ext1.13", %"imad_ext2.13"
  %".1117" = ptrtoint ptr %"Arg_4" to i64
  %"imad_add.32" = add i64 %"imad_mul.31", %".1117"
  %".1118" = and i64 %"imad_add.32", 18446744069414584320
  %".1119" = lshr i64 %".1118", 32
  %"trunc32.35" = trunc i64 %".1119" to i32
  %"trunc32.36" = trunc i64 %"imad_add.32" to i32
  store i32 %"trunc32.36", ptr %"R30"
  store i32 %"trunc32.35", ptr %"R31"
  ; LDG.E.CONSTANT.SYS R35, [R28]
  %".1123" = load i32, ptr %"R28"
  %"zext.93" = zext i32 %".1123" to i64
  %".1124" = load i32, ptr %"R29"
  %"zext.94" = zext i32 %".1124" to i64
  %"shl.50" = shl i64 %"zext.94", 32
  %"or.42" = or i64 %"shl.50", %"zext.93"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.42" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".1125" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".1126" = bitcast ptr %"R35" to ptr
  store float %".1125", ptr %".1126"
  ; IADD3 R32, P1, R30, UR9, RZ
  %".1129" = load i32, ptr %"R30"
  %".1130" = load i32, ptr %"UR9"
  %".1131" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1129", i32 %".1130")
  %".1132" = extractvalue {i32, i1} %".1131", 0
  %".1133" = extractvalue {i32, i1} %".1131", 1
  %".1134" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1132", i32 0)
  %".1135" = extractvalue {i32, i1} %".1134", 0
  %".1136" = extractvalue {i32, i1} %".1134", 1
  %".1137" = or i1 %".1133", %".1136"
  store i32 %".1135", ptr %"R32"
  store i1 %".1137", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R26, [R28+0x4]
  %".1141" = load i32, ptr %"R28"
  %"zext.95" = zext i32 %".1141" to i64
  %".1142" = load i32, ptr %"R29"
  %"zext.96" = zext i32 %".1142" to i64
  %"shl.51" = shl i64 %"zext.96", 32
  %"or.43" = or i64 %"shl.51", %"zext.95"
  %"ptr_plus_imm.3" = add i64 %"or.43", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".1143" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".1144" = bitcast ptr %"R26" to ptr
  store float %".1143", ptr %".1144"
  ; IADD3.X R33, R31, UR5, RZ, P1, !PT
  %".1147" = load i32, ptr %"R31"
  %".1148" = load i32, ptr %"UR5"
  %".1149" = load i1, ptr %"P1"
  %".1150" = xor i1 1, -1
  %".1151" = zext i1 %".1149" to i32
  %".1152" = zext i1 %".1150" to i32
  %"add.69" = add i32 %".1147", %".1148"
  %"add.70" = add i32 %"add.69", 0
  %"add.71" = add i32 %"add.70", %".1151"
  %"add.72" = add i32 %"add.71", %".1152"
  store i32 %"add.72", ptr %"R33"
  ; IADD3 R36, P1, R32, UR9, RZ
  %".1155" = load i32, ptr %"R32"
  %".1156" = load i32, ptr %"UR9"
  %".1157" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1155", i32 %".1156")
  %".1158" = extractvalue {i32, i1} %".1157", 0
  %".1159" = extractvalue {i32, i1} %".1157", 1
  %".1160" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1158", i32 0)
  %".1161" = extractvalue {i32, i1} %".1160", 0
  %".1162" = extractvalue {i32, i1} %".1160", 1
  %".1163" = or i1 %".1159", %".1162"
  store i32 %".1161", ptr %"R36"
  store i1 %".1163", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R23, [R28+0x8]
  %".1167" = load i32, ptr %"R28"
  %"zext.97" = zext i32 %".1167" to i64
  %".1168" = load i32, ptr %"R29"
  %"zext.98" = zext i32 %".1168" to i64
  %"shl.52" = shl i64 %"zext.98", 32
  %"or.44" = or i64 %"shl.52", %"zext.97"
  %"ptr_plus_imm.4" = add i64 %"or.44", 8
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".1169" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".1170" = bitcast ptr %"R23" to ptr
  store float %".1169", ptr %".1170"
  ; IADD3.X R37, R33, UR5, RZ, P1, !PT
  %".1173" = load i32, ptr %"R33"
  %".1174" = load i32, ptr %"UR5"
  %".1175" = load i1, ptr %"P1"
  %".1176" = xor i1 1, -1
  %".1177" = zext i1 %".1175" to i32
  %".1178" = zext i1 %".1176" to i32
  %"add.73" = add i32 %".1173", %".1174"
  %"add.74" = add i32 %"add.73", 0
  %"add.75" = add i32 %"add.74", %".1177"
  %"add.76" = add i32 %"add.75", %".1178"
  store i32 %"add.76", ptr %"R37"
  ; LDG.E.CONSTANT.SYS R27, [R28+0xc]
  %".1181" = load i32, ptr %"R28"
  %"zext.99" = zext i32 %".1181" to i64
  %".1182" = load i32, ptr %"R29"
  %"zext.100" = zext i32 %".1182" to i64
  %"shl.53" = shl i64 %"zext.100", 32
  %"or.45" = or i64 %"shl.53", %"zext.99"
  %"ptr_plus_imm.5" = add i64 %"or.45", 12
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".1183" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".1184" = bitcast ptr %"R27" to ptr
  store float %".1183", ptr %".1184"
  ; IADD3 R38, P1, R36, UR9, RZ
  %".1187" = load i32, ptr %"R36"
  %".1188" = load i32, ptr %"UR9"
  %".1189" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1187", i32 %".1188")
  %".1190" = extractvalue {i32, i1} %".1189", 0
  %".1191" = extractvalue {i32, i1} %".1189", 1
  %".1192" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1190", i32 0)
  %".1193" = extractvalue {i32, i1} %".1192", 0
  %".1194" = extractvalue {i32, i1} %".1192", 1
  %".1195" = or i1 %".1191", %".1194"
  store i32 %".1193", ptr %"R38"
  store i1 %".1195", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R34, [R30]
  %".1199" = load i32, ptr %"R30"
  %"zext.101" = zext i32 %".1199" to i64
  %".1200" = load i32, ptr %"R31"
  %"zext.102" = zext i32 %".1200" to i64
  %"shl.54" = shl i64 %"zext.102", 32
  %"or.46" = or i64 %"shl.54", %"zext.101"
  %"inttoptr_bytes.37" = inttoptr i64 %"or.46" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".1201" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".1202" = bitcast ptr %"R34" to ptr
  store float %".1201", ptr %".1202"
  ; IADD3.X R39, R37, UR5, RZ, P1, !PT
  %".1205" = load i32, ptr %"R37"
  %".1206" = load i32, ptr %"UR5"
  %".1207" = load i1, ptr %"P1"
  %".1208" = xor i1 1, -1
  %".1209" = zext i1 %".1207" to i32
  %".1210" = zext i1 %".1208" to i32
  %"add.77" = add i32 %".1205", %".1206"
  %"add.78" = add i32 %"add.77", 0
  %"add.79" = add i32 %"add.78", %".1209"
  %"add.80" = add i32 %"add.79", %".1210"
  store i32 %"add.80", ptr %"R39"
  ; IADD3 R12, P1, R38, UR9, RZ
  %".1213" = load i32, ptr %"R38"
  %".1214" = load i32, ptr %"UR9"
  %".1215" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1213", i32 %".1214")
  %".1216" = extractvalue {i32, i1} %".1215", 0
  %".1217" = extractvalue {i32, i1} %".1215", 1
  %".1218" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1216", i32 0)
  %".1219" = extractvalue {i32, i1} %".1218", 0
  %".1220" = extractvalue {i32, i1} %".1218", 1
  %".1221" = or i1 %".1217", %".1220"
  store i32 %".1219", ptr %"R12"
  store i1 %".1221", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R40, [R32]
  %".1225" = load i32, ptr %"R32"
  %"zext.103" = zext i32 %".1225" to i64
  %".1226" = load i32, ptr %"R33"
  %"zext.104" = zext i32 %".1226" to i64
  %"shl.55" = shl i64 %"zext.104", 32
  %"or.47" = or i64 %"shl.55", %"zext.103"
  %"inttoptr_bytes.38" = inttoptr i64 %"or.47" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".1227" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".1228" = bitcast ptr %"R40" to ptr
  store float %".1227", ptr %".1228"
  ; IADD3.X R13, R39, UR5, RZ, P1, !PT
  %".1231" = load i32, ptr %"R39"
  %".1232" = load i32, ptr %"UR5"
  %".1233" = load i1, ptr %"P1"
  %".1234" = xor i1 1, -1
  %".1235" = zext i1 %".1233" to i32
  %".1236" = zext i1 %".1234" to i32
  %"add.81" = add i32 %".1231", %".1232"
  %"add.82" = add i32 %"add.81", 0
  %"add.83" = add i32 %"add.82", %".1235"
  %"add.84" = add i32 %"add.83", %".1236"
  store i32 %"add.84", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R36, [R36]
  %".1239" = load i32, ptr %"R36"
  %"zext.105" = zext i32 %".1239" to i64
  %".1240" = load i32, ptr %"R37"
  %"zext.106" = zext i32 %".1240" to i64
  %"shl.56" = shl i64 %"zext.106", 32
  %"or.48" = or i64 %"shl.56", %"zext.105"
  %"inttoptr_bytes.39" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".1241" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".1242" = bitcast ptr %"R36" to ptr
  store float %".1241", ptr %".1242"
  ; IADD3 R18, P1, R12, UR9, RZ
  %".1245" = load i32, ptr %"R12"
  %".1246" = load i32, ptr %"UR9"
  %".1247" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1245", i32 %".1246")
  %".1248" = extractvalue {i32, i1} %".1247", 0
  %".1249" = extractvalue {i32, i1} %".1247", 1
  %".1250" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1248", i32 0)
  %".1251" = extractvalue {i32, i1} %".1250", 0
  %".1252" = extractvalue {i32, i1} %".1250", 1
  %".1253" = or i1 %".1249", %".1252"
  store i32 %".1251", ptr %"R18"
  store i1 %".1253", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R38, [R38]
  %".1257" = load i32, ptr %"R38"
  %"zext.107" = zext i32 %".1257" to i64
  %".1258" = load i32, ptr %"R39"
  %"zext.108" = zext i32 %".1258" to i64
  %"shl.57" = shl i64 %"zext.108", 32
  %"or.49" = or i64 %"shl.57", %"zext.107"
  %"inttoptr_bytes.40" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".1259" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".1260" = bitcast ptr %"R38" to ptr
  store float %".1259", ptr %".1260"
  ; IADD3.X R19, R13, UR5, RZ, P1, !PT
  %".1263" = load i32, ptr %"R13"
  %".1264" = load i32, ptr %"UR5"
  %".1265" = load i1, ptr %"P1"
  %".1266" = xor i1 1, -1
  %".1267" = zext i1 %".1265" to i32
  %".1268" = zext i1 %".1266" to i32
  %"add.85" = add i32 %".1263", %".1264"
  %"add.86" = add i32 %"add.85", 0
  %"add.87" = add i32 %"add.86", %".1267"
  %"add.88" = add i32 %"add.87", %".1268"
  store i32 %"add.88", ptr %"R19"
  ; IADD3 R14, P1, R18, UR9, RZ
  %".1271" = load i32, ptr %"R18"
  %".1272" = load i32, ptr %"UR9"
  %".1273" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1271", i32 %".1272")
  %".1274" = extractvalue {i32, i1} %".1273", 0
  %".1275" = extractvalue {i32, i1} %".1273", 1
  %".1276" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1274", i32 0)
  %".1277" = extractvalue {i32, i1} %".1276", 0
  %".1278" = extractvalue {i32, i1} %".1276", 1
  %".1279" = or i1 %".1275", %".1278"
  store i32 %".1277", ptr %"R14"
  store i1 %".1279", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R41, [R12]
  %".1283" = load i32, ptr %"R12"
  %"zext.109" = zext i32 %".1283" to i64
  %".1284" = load i32, ptr %"R13"
  %"zext.110" = zext i32 %".1284" to i64
  %"shl.58" = shl i64 %"zext.110", 32
  %"or.50" = or i64 %"shl.58", %"zext.109"
  %"inttoptr_bytes.41" = inttoptr i64 %"or.50" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".1285" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".1286" = bitcast ptr %"R41" to ptr
  store float %".1285", ptr %".1286"
  ; IADD3.X R15, R19, UR5, RZ, P1, !PT
  %".1289" = load i32, ptr %"R19"
  %".1290" = load i32, ptr %"UR5"
  %".1291" = load i1, ptr %"P1"
  %".1292" = xor i1 1, -1
  %".1293" = zext i1 %".1291" to i32
  %".1294" = zext i1 %".1292" to i32
  %"add.89" = add i32 %".1289", %".1290"
  %"add.90" = add i32 %"add.89", 0
  %"add.91" = add i32 %"add.90", %".1293"
  %"add.92" = add i32 %"add.91", %".1294"
  store i32 %"add.92", ptr %"R15"
  ; IADD3 R10, P1, R14, UR9, RZ
  %".1297" = load i32, ptr %"R14"
  %".1298" = load i32, ptr %"UR9"
  %".1299" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1297", i32 %".1298")
  %".1300" = extractvalue {i32, i1} %".1299", 0
  %".1301" = extractvalue {i32, i1} %".1299", 1
  %".1302" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1300", i32 0)
  %".1303" = extractvalue {i32, i1} %".1302", 0
  %".1304" = extractvalue {i32, i1} %".1302", 1
  %".1305" = or i1 %".1301", %".1304"
  store i32 %".1303", ptr %"R10"
  store i1 %".1305", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R18, [R18]
  %".1309" = load i32, ptr %"R18"
  %"zext.111" = zext i32 %".1309" to i64
  %".1310" = load i32, ptr %"R19"
  %"zext.112" = zext i32 %".1310" to i64
  %"shl.59" = shl i64 %"zext.112", 32
  %"or.51" = or i64 %"shl.59", %"zext.111"
  %"inttoptr_bytes.42" = inttoptr i64 %"or.51" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".1311" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".1312" = bitcast ptr %"R18" to ptr
  store float %".1311", ptr %".1312"
  ; IADD3.X R11, R15, UR5, RZ, P1, !PT
  %".1315" = load i32, ptr %"R15"
  %".1316" = load i32, ptr %"UR5"
  %".1317" = load i1, ptr %"P1"
  %".1318" = xor i1 1, -1
  %".1319" = zext i1 %".1317" to i32
  %".1320" = zext i1 %".1318" to i32
  %"add.93" = add i32 %".1315", %".1316"
  %"add.94" = add i32 %"add.93", 0
  %"add.95" = add i32 %"add.94", %".1319"
  %"add.96" = add i32 %"add.95", %".1320"
  store i32 %"add.96", ptr %"R11"
  ; IADD3 R16, P1, R10, UR9, RZ
  %".1323" = load i32, ptr %"R10"
  %".1324" = load i32, ptr %"UR9"
  %".1325" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1323", i32 %".1324")
  %".1326" = extractvalue {i32, i1} %".1325", 0
  %".1327" = extractvalue {i32, i1} %".1325", 1
  %".1328" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1326", i32 0)
  %".1329" = extractvalue {i32, i1} %".1328", 0
  %".1330" = extractvalue {i32, i1} %".1328", 1
  %".1331" = or i1 %".1327", %".1330"
  store i32 %".1329", ptr %"R16"
  store i1 %".1331", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R14, [R14]
  %".1335" = load i32, ptr %"R14"
  %"zext.113" = zext i32 %".1335" to i64
  %".1336" = load i32, ptr %"R15"
  %"zext.114" = zext i32 %".1336" to i64
  %"shl.60" = shl i64 %"zext.114", 32
  %"or.52" = or i64 %"shl.60", %"zext.113"
  %"inttoptr_bytes.43" = inttoptr i64 %"or.52" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".1337" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".1338" = bitcast ptr %"R14" to ptr
  store float %".1337", ptr %".1338"
  ; IADD3.X R17, R11, UR5, RZ, P1, !PT
  %".1341" = load i32, ptr %"R11"
  %".1342" = load i32, ptr %"UR5"
  %".1343" = load i1, ptr %"P1"
  %".1344" = xor i1 1, -1
  %".1345" = zext i1 %".1343" to i32
  %".1346" = zext i1 %".1344" to i32
  %"add.97" = add i32 %".1341", %".1342"
  %"add.98" = add i32 %"add.97", 0
  %"add.99" = add i32 %"add.98", %".1345"
  %"add.100" = add i32 %"add.99", %".1346"
  store i32 %"add.100", ptr %"R17"
  ; IADD3 R24, P1, R16, UR9, RZ
  %".1349" = load i32, ptr %"R16"
  %".1350" = load i32, ptr %"UR9"
  %".1351" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1349", i32 %".1350")
  %".1352" = extractvalue {i32, i1} %".1351", 0
  %".1353" = extractvalue {i32, i1} %".1351", 1
  %".1354" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1352", i32 0)
  %".1355" = extractvalue {i32, i1} %".1354", 0
  %".1356" = extractvalue {i32, i1} %".1354", 1
  %".1357" = or i1 %".1353", %".1356"
  store i32 %".1355", ptr %"R24"
  store i1 %".1357", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".1361" = load i32, ptr %"R10"
  %"zext.115" = zext i32 %".1361" to i64
  %".1362" = load i32, ptr %"R11"
  %"zext.116" = zext i32 %".1362" to i64
  %"shl.61" = shl i64 %"zext.116", 32
  %"or.53" = or i64 %"shl.61", %"zext.115"
  %"inttoptr_bytes.44" = inttoptr i64 %"or.53" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".1363" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".1364" = bitcast ptr %"R10" to ptr
  store float %".1363", ptr %".1364"
  ; IADD3.X R25, R17, UR5, RZ, P1, !PT
  %".1367" = load i32, ptr %"R17"
  %".1368" = load i32, ptr %"UR5"
  %".1369" = load i1, ptr %"P1"
  %".1370" = xor i1 1, -1
  %".1371" = zext i1 %".1369" to i32
  %".1372" = zext i1 %".1370" to i32
  %"add.101" = add i32 %".1367", %".1368"
  %"add.102" = add i32 %"add.101", 0
  %"add.103" = add i32 %"add.102", %".1371"
  %"add.104" = add i32 %"add.103", %".1372"
  store i32 %"add.104", ptr %"R25"
  ; IADD3 R20, P1, R24, UR9, RZ
  %".1375" = load i32, ptr %"R24"
  %".1376" = load i32, ptr %"UR9"
  %".1377" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1375", i32 %".1376")
  %".1378" = extractvalue {i32, i1} %".1377", 0
  %".1379" = extractvalue {i32, i1} %".1377", 1
  %".1380" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1378", i32 0)
  %".1381" = extractvalue {i32, i1} %".1380", 0
  %".1382" = extractvalue {i32, i1} %".1380", 1
  %".1383" = or i1 %".1379", %".1382"
  store i32 %".1381", ptr %"R20"
  store i1 %".1383", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R16, [R16]
  %".1387" = load i32, ptr %"R16"
  %"zext.117" = zext i32 %".1387" to i64
  %".1388" = load i32, ptr %"R17"
  %"zext.118" = zext i32 %".1388" to i64
  %"shl.62" = shl i64 %"zext.118", 32
  %"or.54" = or i64 %"shl.62", %"zext.117"
  %"inttoptr_bytes.45" = inttoptr i64 %"or.54" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".1389" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".1390" = bitcast ptr %"R16" to ptr
  store float %".1389", ptr %".1390"
  ; IADD3.X R21, R25, UR5, RZ, P1, !PT
  %".1393" = load i32, ptr %"R25"
  %".1394" = load i32, ptr %"UR5"
  %".1395" = load i1, ptr %"P1"
  %".1396" = xor i1 1, -1
  %".1397" = zext i1 %".1395" to i32
  %".1398" = zext i1 %".1396" to i32
  %"add.105" = add i32 %".1393", %".1394"
  %"add.106" = add i32 %"add.105", 0
  %"add.107" = add i32 %"add.106", %".1397"
  %"add.108" = add i32 %"add.107", %".1398"
  store i32 %"add.108", ptr %"R21"
  ; IADD3 R28, P1, R20, UR9, RZ
  %".1401" = load i32, ptr %"R20"
  %".1402" = load i32, ptr %"UR9"
  %".1403" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1401", i32 %".1402")
  %".1404" = extractvalue {i32, i1} %".1403", 0
  %".1405" = extractvalue {i32, i1} %".1403", 1
  %".1406" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1404", i32 0)
  %".1407" = extractvalue {i32, i1} %".1406", 0
  %".1408" = extractvalue {i32, i1} %".1406", 1
  %".1409" = or i1 %".1405", %".1408"
  store i32 %".1407", ptr %"R28"
  store i1 %".1409", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R24, [R24]
  %".1413" = load i32, ptr %"R24"
  %"zext.119" = zext i32 %".1413" to i64
  %".1414" = load i32, ptr %"R25"
  %"zext.120" = zext i32 %".1414" to i64
  %"shl.63" = shl i64 %"zext.120", 32
  %"or.55" = or i64 %"shl.63", %"zext.119"
  %"inttoptr_bytes.46" = inttoptr i64 %"or.55" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".1415" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".1416" = bitcast ptr %"R24" to ptr
  store float %".1415", ptr %".1416"
  ; IADD3.X R29, R21, UR5, RZ, P1, !PT
  %".1419" = load i32, ptr %"R21"
  %".1420" = load i32, ptr %"UR5"
  %".1421" = load i1, ptr %"P1"
  %".1422" = xor i1 1, -1
  %".1423" = zext i1 %".1421" to i32
  %".1424" = zext i1 %".1422" to i32
  %"add.109" = add i32 %".1419", %".1420"
  %"add.110" = add i32 %"add.109", 0
  %"add.111" = add i32 %"add.110", %".1423"
  %"add.112" = add i32 %"add.111", %".1424"
  store i32 %"add.112", ptr %"R29"
  ; IADD3 R30, P1, R28, UR9, RZ
  %".1427" = load i32, ptr %"R28"
  %".1428" = load i32, ptr %"UR9"
  %".1429" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1427", i32 %".1428")
  %".1430" = extractvalue {i32, i1} %".1429", 0
  %".1431" = extractvalue {i32, i1} %".1429", 1
  %".1432" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1430", i32 0)
  %".1433" = extractvalue {i32, i1} %".1432", 0
  %".1434" = extractvalue {i32, i1} %".1432", 1
  %".1435" = or i1 %".1431", %".1434"
  store i32 %".1433", ptr %"R30"
  store i1 %".1435", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R20, [R20]
  %".1439" = load i32, ptr %"R20"
  %"zext.121" = zext i32 %".1439" to i64
  %".1440" = load i32, ptr %"R21"
  %"zext.122" = zext i32 %".1440" to i64
  %"shl.64" = shl i64 %"zext.122", 32
  %"or.56" = or i64 %"shl.64", %"zext.121"
  %"inttoptr_bytes.47" = inttoptr i64 %"or.56" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".1441" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".1442" = bitcast ptr %"R20" to ptr
  store float %".1441", ptr %".1442"
  ; IADD3.X R31, R29, UR5, RZ, P1, !PT
  %".1445" = load i32, ptr %"R29"
  %".1446" = load i32, ptr %"UR5"
  %".1447" = load i1, ptr %"P1"
  %".1448" = xor i1 1, -1
  %".1449" = zext i1 %".1447" to i32
  %".1450" = zext i1 %".1448" to i32
  %"add.113" = add i32 %".1445", %".1446"
  %"add.114" = add i32 %"add.113", 0
  %"add.115" = add i32 %"add.114", %".1449"
  %"add.116" = add i32 %"add.115", %".1450"
  store i32 %"add.116", ptr %"R31"
  ; IADD3 R32, P1, R30, UR9, RZ
  %".1453" = load i32, ptr %"R30"
  %".1454" = load i32, ptr %"UR9"
  %".1455" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1453", i32 %".1454")
  %".1456" = extractvalue {i32, i1} %".1455", 0
  %".1457" = extractvalue {i32, i1} %".1455", 1
  %".1458" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1456", i32 0)
  %".1459" = extractvalue {i32, i1} %".1458", 0
  %".1460" = extractvalue {i32, i1} %".1458", 1
  %".1461" = or i1 %".1457", %".1460"
  store i32 %".1459", ptr %"R32"
  store i1 %".1461", ptr %"P1"
  ; LDG.E.CONSTANT.SYS R28, [R28]
  %".1465" = load i32, ptr %"R28"
  %"zext.123" = zext i32 %".1465" to i64
  %".1466" = load i32, ptr %"R29"
  %"zext.124" = zext i32 %".1466" to i64
  %"shl.65" = shl i64 %"zext.124", 32
  %"or.57" = or i64 %"shl.65", %"zext.123"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".1467" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".1468" = bitcast ptr %"R28" to ptr
  store float %".1467", ptr %".1468"
  ; IADD3.X R33, R31, UR5, RZ, P1, !PT
  %".1471" = load i32, ptr %"R31"
  %".1472" = load i32, ptr %"UR5"
  %".1473" = load i1, ptr %"P1"
  %".1474" = xor i1 1, -1
  %".1475" = zext i1 %".1473" to i32
  %".1476" = zext i1 %".1474" to i32
  %"add.117" = add i32 %".1471", %".1472"
  %"add.118" = add i32 %"add.117", 0
  %"add.119" = add i32 %"add.118", %".1475"
  %"add.120" = add i32 %"add.119", %".1476"
  store i32 %"add.120", ptr %"R33"
  ; IADD3 R12, P1, R32, UR9, RZ
  %".1479" = load i32, ptr %"R32"
  %".1480" = load i32, ptr %"UR9"
  %".1481" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1479", i32 %".1480")
  %".1482" = extractvalue {i32, i1} %".1481", 0
  %".1483" = extractvalue {i32, i1} %".1481", 1
  %".1484" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1482", i32 0)
  %".1485" = extractvalue {i32, i1} %".1484", 0
  %".1486" = extractvalue {i32, i1} %".1484", 1
  %".1487" = or i1 %".1483", %".1486"
  store i32 %".1485", ptr %"R12"
  store i1 %".1487", ptr %"P1"
  ; UMOV UR4, UR9
  %".1491" = load i32, ptr %"UR9"
  store i32 %".1491", ptr %"UR4"
  ; LDG.E.CONSTANT.SYS R30, [R30]
  %".1494" = load i32, ptr %"R30"
  %"zext.125" = zext i32 %".1494" to i64
  %".1495" = load i32, ptr %"R31"
  %"zext.126" = zext i32 %".1495" to i64
  %"shl.66" = shl i64 %"zext.126", 32
  %"or.58" = or i64 %"shl.66", %"zext.125"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".1496" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".1497" = bitcast ptr %"R30" to ptr
  store float %".1496", ptr %".1497"
  ; IADD3.X R13, R33, UR5, RZ, P1, !PT
  %".1500" = load i32, ptr %"R33"
  %".1501" = load i32, ptr %"UR5"
  %".1502" = load i1, ptr %"P1"
  %".1503" = xor i1 1, -1
  %".1504" = zext i1 %".1502" to i32
  %".1505" = zext i1 %".1503" to i32
  %"add.121" = add i32 %".1500", %".1501"
  %"add.122" = add i32 %"add.121", 0
  %"add.123" = add i32 %"add.122", %".1504"
  %"add.124" = add i32 %"add.123", %".1505"
  store i32 %"add.124", ptr %"R13"
  ; LDG.E.CONSTANT.SYS R32, [R32]
  %".1508" = load i32, ptr %"R32"
  %"zext.127" = zext i32 %".1508" to i64
  %".1509" = load i32, ptr %"R33"
  %"zext.128" = zext i32 %".1509" to i64
  %"shl.67" = shl i64 %"zext.128", 32
  %"or.59" = or i64 %"shl.67", %"zext.127"
  %"inttoptr_bytes.50" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".1510" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".1511" = bitcast ptr %"R32" to ptr
  store float %".1510", ptr %".1511"
  ; LDG.E.CONSTANT.SYS R17, [R12]
  %".1514" = load i32, ptr %"R12"
  %"zext.129" = zext i32 %".1514" to i64
  %".1515" = load i32, ptr %"R13"
  %"zext.130" = zext i32 %".1515" to i64
  %"shl.68" = shl i64 %"zext.130", 32
  %"or.60" = or i64 %"shl.68", %"zext.129"
  %"inttoptr_bytes.51" = inttoptr i64 %"or.60" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".1516" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".1517" = bitcast ptr %"R17" to ptr
  store float %".1516", ptr %".1517"
  ; LDG.E.CONSTANT.SYS R19, [R12.64+UR4]
  %".1520" = load i32, ptr %"R12"
  %"zext.131" = zext i32 %".1520" to i64
  %".1521" = load i32, ptr %"R13"
  %"zext.132" = zext i32 %".1521" to i64
  %"shl.69" = shl i64 %"zext.132", 32
  %"or.61" = or i64 %"shl.69", %"zext.131"
  %"inttoptr_bytes.52" = inttoptr i64 %"or.61" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".1522" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".1523" = bitcast ptr %"R19" to ptr
  store float %".1522", ptr %".1523"
  ; UIADD3 UR7, UR7, -0x4, URZ
  %".1526" = load i32, ptr %"UR7"
  %".1527" = add i32 %".1526", -4
  %".1528" = add i32 %".1527", 0
  store i32 %".1528", ptr %"UR7"
  ; ISETP.NE.AND P1, PT, RZ, UR7, PT
  %".1531" = load i32, ptr %"UR7"
  %".1532" = load i1, ptr %"PT"
  %"cmp.6" = icmp ne i32 0, %".1531"
  %".1533" = add i1 %"cmp.6", 0
  %".1534" = xor i1 %".1533", -1
  %".1535" = and i1 %"cmp.6", %".1532"
  %".1536" = and i1 %".1534", %".1532"
  store i1 %".1535", ptr %"P1"
  ; IADD3 R22, R22, 0x4, RZ
  %".1539" = load i32, ptr %"R22"
  %".1540" = add i32 %".1539", 4
  %".1541" = add i32 %".1540", 0
  store i32 %".1541", ptr %"R22"
  ; FFMA R3, R34, R35, R3
  %".1544" = load float, ptr %"R34"
  %".1545" = load float, ptr %"R35"
  %".1546" = load float, ptr %"R3"
  %"fmul.20" = fmul float %".1544", %".1545"
  %"fadd.24" = fadd float %"fmul.20", %".1546"
  %".1547" = bitcast ptr %"R3" to ptr
  store float %"fadd.24", ptr %".1547"
  ; FFMA R11, R35.reuse, R40, R2
  %".1550" = load float, ptr %"R35"
  %".1551" = load float, ptr %"R40"
  %".1552" = load float, ptr %"R2"
  %"fmul.21" = fmul float %".1550", %".1551"
  %"fadd.25" = fadd float %"fmul.21", %".1552"
  %".1553" = bitcast ptr %"R11" to ptr
  store float %"fadd.25", ptr %".1553"
  ; FFMA R15, R35.reuse, R36, R0
  %".1556" = load float, ptr %"R35"
  %".1557" = load float, ptr %"R36"
  %".1558" = load float, ptr %"R0"
  %"fmul.22" = fmul float %".1556", %".1557"
  %"fadd.26" = fadd float %"fmul.22", %".1558"
  %".1559" = bitcast ptr %"R15" to ptr
  store float %"fadd.26", ptr %".1559"
  ; FFMA R35, R35, R38, R8
  %".1562" = load float, ptr %"R35"
  %".1563" = load float, ptr %"R38"
  %".1564" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".1562", %".1563"
  %"fadd.27" = fadd float %"fmul.23", %".1564"
  %".1565" = bitcast ptr %"R35" to ptr
  store float %"fadd.27", ptr %".1565"
  ; FFMA R0, R41, R26, R3
  %".1568" = load float, ptr %"R41"
  %".1569" = load float, ptr %"R26"
  %".1570" = load float, ptr %"R3"
  %"fmul.24" = fmul float %".1568", %".1569"
  %"fadd.28" = fadd float %"fmul.24", %".1570"
  %".1571" = bitcast ptr %"R0" to ptr
  store float %"fadd.28", ptr %".1571"
  ; FFMA R18, R26.reuse, R18, R11
  %".1574" = load float, ptr %"R26"
  %".1575" = load float, ptr %"R18"
  %".1576" = load float, ptr %"R11"
  %"fmul.25" = fmul float %".1574", %".1575"
  %"fadd.29" = fadd float %"fmul.25", %".1576"
  %".1577" = bitcast ptr %"R18" to ptr
  store float %"fadd.29", ptr %".1577"
  ; FFMA R14, R26.reuse, R14, R15
  %".1580" = load float, ptr %"R26"
  %".1581" = load float, ptr %"R14"
  %".1582" = load float, ptr %"R15"
  %"fmul.26" = fmul float %".1580", %".1581"
  %"fadd.30" = fadd float %"fmul.26", %".1582"
  %".1583" = bitcast ptr %"R14" to ptr
  store float %"fadd.30", ptr %".1583"
  ; FFMA R10, R26, R10, R35
  %".1586" = load float, ptr %"R26"
  %".1587" = load float, ptr %"R10"
  %".1588" = load float, ptr %"R35"
  %"fmul.27" = fmul float %".1586", %".1587"
  %"fadd.31" = fadd float %"fmul.27", %".1588"
  %".1589" = bitcast ptr %"R10" to ptr
  store float %"fadd.31", ptr %".1589"
  ; FFMA R0, R16, R23, R0
  %".1592" = load float, ptr %"R16"
  %".1593" = load float, ptr %"R23"
  %".1594" = load float, ptr %"R0"
  %"fmul.28" = fmul float %".1592", %".1593"
  %"fadd.32" = fadd float %"fmul.28", %".1594"
  %".1595" = bitcast ptr %"R0" to ptr
  store float %"fadd.32", ptr %".1595"
  ; FFMA R18, R23.reuse, R24, R18
  %".1598" = load float, ptr %"R23"
  %".1599" = load float, ptr %"R24"
  %".1600" = load float, ptr %"R18"
  %"fmul.29" = fmul float %".1598", %".1599"
  %"fadd.33" = fadd float %"fmul.29", %".1600"
  %".1601" = bitcast ptr %"R18" to ptr
  store float %"fadd.33", ptr %".1601"
  ; FFMA R14, R23, R20, R14
  %".1604" = load float, ptr %"R23"
  %".1605" = load float, ptr %"R20"
  %".1606" = load float, ptr %"R14"
  %"fmul.30" = fmul float %".1604", %".1605"
  %"fadd.34" = fadd float %"fmul.30", %".1606"
  %".1607" = bitcast ptr %"R14" to ptr
  store float %"fadd.34", ptr %".1607"
  ; FFMA R10, R23, R28, R10
  %".1610" = load float, ptr %"R23"
  %".1611" = load float, ptr %"R28"
  %".1612" = load float, ptr %"R10"
  %"fmul.31" = fmul float %".1610", %".1611"
  %"fadd.35" = fadd float %"fmul.31", %".1612"
  %".1613" = bitcast ptr %"R10" to ptr
  store float %"fadd.35", ptr %".1613"
  ; FFMA R3, R30, R27, R0
  %".1616" = load float, ptr %"R30"
  %".1617" = load float, ptr %"R27"
  %".1618" = load float, ptr %"R0"
  %"fmul.32" = fmul float %".1616", %".1617"
  %"fadd.36" = fadd float %"fmul.32", %".1618"
  %".1619" = bitcast ptr %"R3" to ptr
  store float %"fadd.36", ptr %".1619"
  ; FFMA R2, R27.reuse, R32, R18
  %".1622" = load float, ptr %"R27"
  %".1623" = load float, ptr %"R32"
  %".1624" = load float, ptr %"R18"
  %"fmul.33" = fmul float %".1622", %".1623"
  %"fadd.37" = fadd float %"fmul.33", %".1624"
  %".1625" = bitcast ptr %"R2" to ptr
  store float %"fadd.37", ptr %".1625"
  ; FFMA R0, R27.reuse, R17, R14
  %".1628" = load float, ptr %"R27"
  %".1629" = load float, ptr %"R17"
  %".1630" = load float, ptr %"R14"
  %"fmul.34" = fmul float %".1628", %".1629"
  %"fadd.38" = fadd float %"fmul.34", %".1630"
  %".1631" = bitcast ptr %"R0" to ptr
  store float %"fadd.38", ptr %".1631"
  ; FFMA R8, R27, R19, R10
  %".1634" = load float, ptr %"R27"
  %".1635" = load float, ptr %"R19"
  %".1636" = load float, ptr %"R10"
  %"fmul.35" = fmul float %".1634", %".1635"
  %"fadd.39" = fadd float %"fmul.35", %".1636"
  %".1637" = bitcast ptr %"R8" to ptr
  store float %"fadd.39", ptr %".1637"
  ; @P1 BRA `(.L_x_6)
  %".1640" = load i1, ptr %"P1"
  %".1641" = icmp eq i1 %".1640", 1
  br i1 %".1641", label %".L_x_6", label %".L_x_5"
.L_x_5:
  ; @!P0 BRA `(.L_x_4)
  %".1644" = load i1, ptr %"P0"
  %".1645" = icmp ne i1 %".1644", 1
  br i1 %".1645", label %".L_x_4", label %".L_x_5_split_0x0f80"
.L_x_5_split_0x0f80:
  ; IMAD R10, R22, c[0x0][0x1b0], RZ
  %".1648" = load i32, ptr %"R22"
  %"imad_mul.32" = mul i32 %".1648", %"Arg_11"
  %"imad_add.33" = add i32 %"imad_mul.32", 0
  store i32 %"imad_add.33", ptr %"R10"
  ; USHF.R.S32.HI UR4, URZ, 0x1f, UR8
  %".1651" = icmp ult i32 31, 32
  %"SHF_min.9" = select  i1 %".1651", i32 31, i32 32
  %".1652" = load i32, ptr %"UR8"
  %"zext.133" = zext i32 %".1652" to i64
  %"zext.134" = zext i32 0 to i64
  %"zext.135" = zext i32 31 to i64
  %"shl.70" = shl i64 %"zext.133", 32
  %"or.62" = or i64 %"shl.70", %"zext.134"
  %"ashr.4" = ashr i64 %"or.62", %"zext.135"
  %"ashr.5" = ashr i64 %"ashr.4", 32
  %"trunc32.37" = trunc i64 %"ashr.5" to i32
  store i32 %"trunc32.37", ptr %"UR4"
  ; IMAD R22, R7, c[0x0][0x1b0], R22
  %".1655" = load i32, ptr %"R7"
  %".1656" = load i32, ptr %"R22"
  %"imad_mul.33" = mul i32 %".1655", %"Arg_11"
  %"imad_add.34" = add i32 %"imad_mul.33", %".1656"
  store i32 %"imad_add.34", ptr %"R22"
  ; USHF.L.U32 UR7, UR8, 0x2, URZ
  %".1659" = icmp ult i32 2, 32
  %"SHF_min.10" = select  i1 %".1659", i32 2, i32 32
  %".1660" = load i32, ptr %"UR8"
  %"zext.136" = zext i32 0 to i64
  %"zext.137" = zext i32 %".1660" to i64
  %"zext.138" = zext i32 2 to i64
  %"shl.71" = shl i64 %"zext.136", 32
  %"or.63" = or i64 %"shl.71", %"zext.137"
  %"shl.72" = shl i64 %"or.63", %"zext.138"
  %"and.4" = and i64 %"shl.72", 4294967295
  %"trunc32.38" = trunc i64 %"and.4" to i32
  store i32 %"trunc32.38", ptr %"UR7"
  ; LEA R5, R10, R5, 0x2
  %".1663" = load i32, ptr %"R10"
  %".1664" = load i32, ptr %"R5"
  %"shl.73" = shl i32 %".1663", 2
  %"add.125" = add i32 %"shl.73", %".1664"
  store i32 %"add.125", ptr %"R5"
  ; IMAD.WIDE R10, R22, R9, c[0x0][0x168]
  %".1667" = load i32, ptr %"R22"
  %".1668" = load i32, ptr %"R9"
  %"imad_ext1.14" = zext i32 %".1667" to i64
  %"imad_ext2.14" = zext i32 %".1668" to i64
  %"imad_mul.34" = mul i64 %"imad_ext1.14", %"imad_ext2.14"
  %".1669" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.35" = add i64 %"imad_mul.34", %".1669"
  %".1670" = and i64 %"imad_add.35", 18446744069414584320
  %".1671" = lshr i64 %".1670", 32
  %"trunc32.39" = trunc i64 %".1671" to i32
  %"trunc32.40" = trunc i64 %"imad_add.35" to i32
  store i32 %"trunc32.40", ptr %"R10"
  store i32 %"trunc32.39", ptr %"R11"
  ; UIADD3 UR6, -UR6, URZ, URZ
  %".1675" = load i32, ptr %"UR6"
  %".1676" = sub i32 0, %".1675"
  %".1677" = add i32 %".1676", 0
  %".1678" = add i32 %".1677", 0
  store i32 %".1678", ptr %"UR6"
  ; USHF.L.U64.HI UR5, UR8, 0x2, UR4
  %".1681" = icmp ult i32 2, 64
  %"SHF_min.11" = select  i1 %".1681", i32 2, i32 64
  %".1682" = load i32, ptr %"UR4"
  %".1683" = load i32, ptr %"UR8"
  %"zext.139" = zext i32 %".1682" to i64
  %"zext.140" = zext i32 %".1683" to i64
  %"zext.141" = zext i32 2 to i64
  %"shl.74" = shl i64 %"zext.139", 32
  %"or.64" = or i64 %"shl.74", %"zext.140"
  %"shl.75" = shl i64 %"or.64", %"zext.141"
  %"lshr.3" = lshr i64 %"shl.75", 32
  %"trunc32.41" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.41", ptr %"UR5"
  ; IMAD R16, R4, c[0x0][0x0], R5
  %".1686" = load i32, ptr %"R4"
  %"nvvm_blockdim_x.2" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".1687" = load i32, ptr %"R5"
  %"imad_mul.35" = mul i32 %".1686", %"nvvm_blockdim_x.2"
  %"imad_add.36" = add i32 %"imad_mul.35", %".1687"
  store i32 %"imad_add.36", ptr %"R16"
  ; IMAD.MOV.U32 R19, RZ, RZ, R11
  %".1690" = load i32, ptr %"R11"
  %"imad_mul.36" = mul i32 0, 0
  %"imad_add.37" = add i32 %"imad_mul.36", %".1690"
  store i32 %"imad_add.37", ptr %"R19"
  br label %".L_x_7"
.L_x_7:
  ; IMAD.WIDE R4, R16, R9, c[0x0][0x180]
  %".1694" = load i32, ptr %"R16"
  %".1695" = load i32, ptr %"R9"
  %"imad_ext1.15" = zext i32 %".1694" to i64
  %"imad_ext2.15" = zext i32 %".1695" to i64
  %"imad_mul.37" = mul i64 %"imad_ext1.15", %"imad_ext2.15"
  %".1696" = ptrtoint ptr %"Arg_4" to i64
  %"imad_add.38" = add i64 %"imad_mul.37", %".1696"
  %".1697" = and i64 %"imad_add.38", 18446744069414584320
  %".1698" = lshr i64 %".1697", 32
  %"trunc32.42" = trunc i64 %".1698" to i32
  %"trunc32.43" = trunc i64 %"imad_add.38" to i32
  store i32 %"trunc32.43", ptr %"R4"
  store i32 %"trunc32.42", ptr %"R5"
  ; MOV R11, R19
  %".1702" = load i32, ptr %"R19"
  store i32 %".1702", ptr %"R11"
  ; IADD3 R12, P0, R4, UR7, RZ
  %".1705" = load i32, ptr %"R4"
  %".1706" = load i32, ptr %"UR7"
  %".1707" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1705", i32 %".1706")
  %".1708" = extractvalue {i32, i1} %".1707", 0
  %".1709" = extractvalue {i32, i1} %".1707", 1
  %".1710" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1708", i32 0)
  %".1711" = extractvalue {i32, i1} %".1710", 0
  %".1712" = extractvalue {i32, i1} %".1710", 1
  %".1713" = or i1 %".1709", %".1712"
  store i32 %".1711", ptr %"R12"
  store i1 %".1713", ptr %"P0"
  ; UMOV UR4, UR7
  %".1717" = load i32, ptr %"UR7"
  store i32 %".1717", ptr %"UR4"
  ; LDG.E.CONSTANT.SYS R4, [R4]
  %".1720" = load i32, ptr %"R4"
  %"zext.142" = zext i32 %".1720" to i64
  %".1721" = load i32, ptr %"R5"
  %"zext.143" = zext i32 %".1721" to i64
  %"shl.76" = shl i64 %"zext.143", 32
  %"or.65" = or i64 %"shl.76", %"zext.142"
  %"inttoptr_bytes.53" = inttoptr i64 %"or.65" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".1722" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".1723" = bitcast ptr %"R4" to ptr
  store float %".1722", ptr %".1723"
  ; IADD3.X R13, R5, UR5, RZ, P0, !PT
  %".1726" = load i32, ptr %"R5"
  %".1727" = load i32, ptr %"UR5"
  %".1728" = load i1, ptr %"P0"
  %".1729" = xor i1 1, -1
  %".1730" = zext i1 %".1728" to i32
  %".1731" = zext i1 %".1729" to i32
  %"add.126" = add i32 %".1726", %".1727"
  %"add.127" = add i32 %"add.126", 0
  %"add.128" = add i32 %"add.127", %".1730"
  %"add.129" = add i32 %"add.128", %".1731"
  store i32 %"add.129", ptr %"R13"
  ; IADD3 R14, P0, R12, UR7, RZ
  %".1734" = load i32, ptr %"R12"
  %".1735" = load i32, ptr %"UR7"
  %".1736" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1734", i32 %".1735")
  %".1737" = extractvalue {i32, i1} %".1736", 0
  %".1738" = extractvalue {i32, i1} %".1736", 1
  %".1739" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1737", i32 0)
  %".1740" = extractvalue {i32, i1} %".1739", 0
  %".1741" = extractvalue {i32, i1} %".1739", 1
  %".1742" = or i1 %".1738", %".1741"
  store i32 %".1740", ptr %"R14"
  store i1 %".1742", ptr %"P0"
  ; LDG.E.CONSTANT.SYS R11, [R10]
  %".1746" = load i32, ptr %"R10"
  %"zext.144" = zext i32 %".1746" to i64
  %".1747" = load i32, ptr %"R11"
  %"zext.145" = zext i32 %".1747" to i64
  %"shl.77" = shl i64 %"zext.145", 32
  %"or.66" = or i64 %"shl.77", %"zext.144"
  %"inttoptr_bytes.54" = inttoptr i64 %"or.66" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".1748" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".1749" = bitcast ptr %"R11" to ptr
  store float %".1748", ptr %".1749"
  ; IADD3.X R15, R13, UR5, RZ, P0, !PT
  %".1752" = load i32, ptr %"R13"
  %".1753" = load i32, ptr %"UR5"
  %".1754" = load i1, ptr %"P0"
  %".1755" = xor i1 1, -1
  %".1756" = zext i1 %".1754" to i32
  %".1757" = zext i1 %".1755" to i32
  %"add.130" = add i32 %".1752", %".1753"
  %"add.131" = add i32 %"add.130", 0
  %"add.132" = add i32 %"add.131", %".1756"
  %"add.133" = add i32 %"add.132", %".1757"
  store i32 %"add.133", ptr %"R15"
  ; LDG.E.CONSTANT.SYS R12, [R12]
  %".1760" = load i32, ptr %"R12"
  %"zext.146" = zext i32 %".1760" to i64
  %".1761" = load i32, ptr %"R13"
  %"zext.147" = zext i32 %".1761" to i64
  %"shl.78" = shl i64 %"zext.147", 32
  %"or.67" = or i64 %"shl.78", %"zext.146"
  %"inttoptr_bytes.55" = inttoptr i64 %"or.67" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".1762" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".1763" = bitcast ptr %"R12" to ptr
  store float %".1762", ptr %".1763"
  ; LDG.E.CONSTANT.SYS R17, [R14]
  %".1766" = load i32, ptr %"R14"
  %"zext.148" = zext i32 %".1766" to i64
  %".1767" = load i32, ptr %"R15"
  %"zext.149" = zext i32 %".1767" to i64
  %"shl.79" = shl i64 %"zext.149", 32
  %"or.68" = or i64 %"shl.79", %"zext.148"
  %"inttoptr_bytes.56" = inttoptr i64 %"or.68" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".1768" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".1769" = bitcast ptr %"R17" to ptr
  store float %".1768", ptr %".1769"
  ; LDG.E.CONSTANT.SYS R18, [R14.64+UR4]
  %".1772" = load i32, ptr %"R14"
  %"zext.150" = zext i32 %".1772" to i64
  %".1773" = load i32, ptr %"R15"
  %"zext.151" = zext i32 %".1773" to i64
  %"shl.80" = shl i64 %"zext.151", 32
  %"or.69" = or i64 %"shl.80", %"zext.150"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.69" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".1774" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".1775" = bitcast ptr %"R18" to ptr
  store float %".1774", ptr %".1775"
  ; UIADD3 UR6, UR6, 0x1, URZ
  %".1778" = load i32, ptr %"UR6"
  %".1779" = add i32 %".1778", 1
  %".1780" = add i32 %".1779", 0
  store i32 %".1780", ptr %"UR6"
  ; ISETP.NE.AND P0, PT, RZ, UR6, PT
  %".1783" = load i32, ptr %"UR6"
  %".1784" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 0, %".1783"
  %".1785" = add i1 %"cmp.7", 0
  %".1786" = xor i1 %".1785", -1
  %".1787" = and i1 %"cmp.7", %".1784"
  %".1788" = and i1 %".1786", %".1784"
  store i1 %".1787", ptr %"P0"
  ; IMAD.MOV.U32 R21, RZ, RZ, c[0x0][0x1b0]
  %"imad_mul.38" = mul i32 0, 0
  %"imad_add.39" = add i32 %"imad_mul.38", %"Arg_11"
  store i32 %"imad_add.39", ptr %"R21"
  ; IADD3 R10, P1, R10, 0x4, RZ
  %".1793" = load i32, ptr %"R10"
  %".1794" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1793", i32 4)
  %".1795" = extractvalue {i32, i1} %".1794", 0
  %".1796" = extractvalue {i32, i1} %".1794", 1
  %".1797" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1795", i32 0)
  %".1798" = extractvalue {i32, i1} %".1797", 0
  %".1799" = extractvalue {i32, i1} %".1797", 1
  %".1800" = or i1 %".1796", %".1799"
  store i32 %".1798", ptr %"R10"
  store i1 %".1800", ptr %"P1"
  ; LEA R16, R21, R16, 0x2
  %".1804" = load i32, ptr %"R21"
  %".1805" = load i32, ptr %"R16"
  %"shl.81" = shl i32 %".1804", 2
  %"add.134" = add i32 %"shl.81", %".1805"
  store i32 %"add.134", ptr %"R16"
  ; IMAD.X R19, RZ, RZ, R19, P1
  %".1808" = load i32, ptr %"R19"
  %".1809" = load i1, ptr %"P1"
  %"imad_mul.39" = mul i32 0, 0
  %"imad_add.40" = add i32 %"imad_mul.39", %".1808"
  %"imad_ext4" = zext i1 %".1809" to i32
  %"imad_add_x" = add i32 %"imad_add.40", %"imad_ext4"
  store i32 %"imad_add_x", ptr %"R19"
  ; FFMA R3, R4, R11, R3
  %".1812" = load float, ptr %"R4"
  %".1813" = load float, ptr %"R11"
  %".1814" = load float, ptr %"R3"
  %"fmul.36" = fmul float %".1812", %".1813"
  %"fadd.40" = fadd float %"fmul.36", %".1814"
  %".1815" = bitcast ptr %"R3" to ptr
  store float %"fadd.40", ptr %".1815"
  ; FFMA R2, R11.reuse, R12, R2
  %".1818" = load float, ptr %"R11"
  %".1819" = load float, ptr %"R12"
  %".1820" = load float, ptr %"R2"
  %"fmul.37" = fmul float %".1818", %".1819"
  %"fadd.41" = fadd float %"fmul.37", %".1820"
  %".1821" = bitcast ptr %"R2" to ptr
  store float %"fadd.41", ptr %".1821"
  ; FFMA R0, R11.reuse, R17, R0
  %".1824" = load float, ptr %"R11"
  %".1825" = load float, ptr %"R17"
  %".1826" = load float, ptr %"R0"
  %"fmul.38" = fmul float %".1824", %".1825"
  %"fadd.42" = fadd float %"fmul.38", %".1826"
  %".1827" = bitcast ptr %"R0" to ptr
  store float %"fadd.42", ptr %".1827"
  ; FFMA R8, R11, R18, R8
  %".1830" = load float, ptr %"R11"
  %".1831" = load float, ptr %"R18"
  %".1832" = load float, ptr %"R8"
  %"fmul.39" = fmul float %".1830", %".1831"
  %"fadd.43" = fadd float %"fmul.39", %".1832"
  %".1833" = bitcast ptr %"R8" to ptr
  store float %"fadd.43", ptr %".1833"
  ; @P0 BRA `(.L_x_7)
  %".1836" = load i1, ptr %"P0"
  %".1837" = icmp eq i1 %".1836", 1
  br i1 %".1837", label %".L_x_7", label %".L_x_4"
.L_x_4:
  ; FSETP.GE.AND P1, PT, |R0|, 0.60000002384185791016, PT
  %".1840" = load float, ptr %"R0"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".1840")
  %".1841" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".1842" = fadd i1 %"fcmp_unordered", 0
  %".1843" = xor i1 %".1842", -1
  %".1844" = and i1 %"fcmp_unordered", %".1841"
  %".1845" = and i1 %".1843", %".1841"
  store i1 %".1844", ptr %"P1"
  ; IMAD R6, R7, c[0x0][0x1b0], R6
  %".1848" = load i32, ptr %"R7"
  %".1849" = load i32, ptr %"R6"
  %"imad_mul.40" = mul i32 %".1848", %"Arg_11"
  %"imad_add.41" = add i32 %"imad_mul.40", %".1849"
  store i32 %"imad_add.41", ptr %"R6"
  ; MOV R13, 0x3bbb989d
  %".1852" = bitcast ptr %"R13" to ptr
  store float 0x41cdddcc40000000, ptr %".1852"
  ; IMAD.MOV.U32 R14, RZ, RZ, 0x437c0000
  %"imad_mul.41" = mul i32 0, 0
  %"imad_add.42" = add i32 %"imad_mul.41", 1132199936
  store i32 %"imad_add.42", ptr %"R14"
  ; IMAD.WIDE R4, R6, R9, c[0x0][0x170]
  %".1857" = load i32, ptr %"R6"
  %".1858" = load i32, ptr %"R9"
  %"imad_ext1.16" = zext i32 %".1857" to i64
  %"imad_ext2.16" = zext i32 %".1858" to i64
  %"imad_mul.42" = mul i64 %"imad_ext1.16", %"imad_ext2.16"
  %".1859" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.43" = add i64 %"imad_mul.42", %".1859"
  %".1860" = and i64 %"imad_add.43", 18446744069414584320
  %".1861" = lshr i64 %".1860", 32
  %"trunc32.44" = trunc i64 %".1861" to i32
  %"trunc32.45" = trunc i64 %"imad_add.43" to i32
  store i32 %"trunc32.45", ptr %"R4"
  store i32 %"trunc32.44", ptr %"R5"
  ; FFMA.SAT R7, -R2, R13, 0.5
  %".1865" = load float, ptr %"R2"
  %".1866" = fneg float %".1865"
  %".1867" = load float, ptr %"R13"
  %"fmul.40" = fmul float %".1866", %".1867"
  %"fadd.44" = fadd float %"fmul.40", 0x3fe0000000000000
  %".1868" = bitcast ptr %"R7" to ptr
  store float %"fadd.44", ptr %".1868"
  ; @P1 FMUL R11, |R0|.reuse, 2.8853900432586669922
  %".1871" = load i1, ptr %"P1"
  %".1872" = icmp eq i1 %".1871", 1
  br i1 %".1872", label %".L_x_4_conditionalExpr_0x11f0", label %".L_x_4_split_0x1200"
.L_x_4_conditionalExpr_0x11f0:
  ; FMUL R11, |R0|.reuse, 2.8853900432586669922
  %".1875" = load float, ptr %"R0"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".1875")
  %"fmul.41" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".1876" = bitcast ptr %"R11" to ptr
  store float %"fmul.41", ptr %".1876"
  ; BRA `(.L_x_4_split_0x1200)
  br label %".L_x_4_split_0x1200"
.L_x_4_split_0x1200:
  ; LDG.E.CONSTANT.SYS R4, [R4]
  %".1881" = load i32, ptr %"R4"
  %"zext.152" = zext i32 %".1881" to i64
  %".1882" = load i32, ptr %"R5"
  %"zext.153" = zext i32 %".1882" to i64
  %"shl.82" = shl i64 %"zext.153", 32
  %"or.70" = or i64 %"shl.82", %"zext.152"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.70" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".1883" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".1884" = bitcast ptr %"R4" to ptr
  store float %".1883", ptr %".1884"
  ; FFMA.RM R7, R7, R14, 12582913
  %".1887" = load float, ptr %"R7"
  %".1888" = load float, ptr %"R14"
  %"fmul.42" = fmul float %".1887", %".1888"
  %"fadd.45" = fadd float %"fmul.42", 0x4168000020000000
  %".1889" = bitcast ptr %"R7" to ptr
  store float %"fadd.45", ptr %".1889"
  ; @P1 FSETP.GE.AND P0, PT, |R0|, 9.010913848876953125, PT
  %".1892" = load i1, ptr %"P1"
  %".1893" = icmp eq i1 %".1892", 1
  br i1 %".1893", label %".L_x_4_split_0x1200_conditionalExpr_0x1220", label %".L_x_4_split_0x1230"
.L_x_4_split_0x1200_conditionalExpr_0x1220:
  ; FSETP.GE.AND P0, PT, |R0|, 9.010913848876953125, PT
  %".1896" = load float, ptr %"R0"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".1896")
  %".1897" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".1898" = fadd i1 %"fcmp_unordered.1", 0
  %".1899" = xor i1 %".1898", -1
  %".1900" = and i1 %"fcmp_unordered.1", %".1897"
  %".1901" = and i1 %".1899", %".1897"
  store i1 %".1900", ptr %"P0"
  ; BRA `(.L_x_4_split_0x1230)
  br label %".L_x_4_split_0x1230"
.L_x_4_split_0x1230:
  ; BMOV.32.CLEAR RZ, B0
  ; @P1 MOV R16, 0x3f800000
  %".1907" = load i1, ptr %"P1"
  %".1908" = icmp eq i1 %".1907", 1
  br i1 %".1908", label %".L_x_4_split_0x1230_conditionalExpr_0x1240", label %".L_x_4_split_0x1250"
.L_x_4_split_0x1230_conditionalExpr_0x1240:
  ; MOV R16, 0x3f800000
  %".1911" = bitcast ptr %"R16" to ptr
  store float 0x41cfc00000000000, ptr %".1911"
  ; BRA `(.L_x_4_split_0x1250)
  br label %".L_x_4_split_0x1250"
.L_x_4_split_0x1250:
  ; @P1 MUFU.EX2 R11, R11
  %".1916" = load i1, ptr %"P1"
  %".1917" = icmp eq i1 %".1916", 1
  br i1 %".1917", label %".L_x_4_split_0x1250_conditionalExpr_0x1250", label %".L_x_4_split_0x1260"
.L_x_4_split_0x1250_conditionalExpr_0x1250:
  ; MUFU.EX2 R11, R11
  %".1920" = load float, ptr %"R11"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1920")
  %".1921" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1921"
  ; BRA `(.L_x_4_split_0x1260)
  br label %".L_x_4_split_0x1260"
.L_x_4_split_0x1260:
  ; FADD R9, R7.reuse, -12583039
  %".1926" = load float, ptr %"R7"
  %"fadd.46" = fadd float %".1926", 0xc168000fe0000000
  %".1927" = bitcast ptr %"R9" to ptr
  store float %"fadd.46", ptr %".1927"
  ; SHF.L.U32 R7, R7, 0x17, RZ
  %".1930" = icmp ult i32 23, 32
  %"SHF_min.12" = select  i1 %".1930", i32 23, i32 32
  %".1931" = load i32, ptr %"R7"
  %"zext.154" = zext i32 0 to i64
  %"zext.155" = zext i32 %".1931" to i64
  %"zext.156" = zext i32 23 to i64
  %"shl.83" = shl i64 %"zext.154", 32
  %"or.71" = or i64 %"shl.83", %"zext.155"
  %"shl.84" = shl i64 %"or.71", %"zext.156"
  %"and.5" = and i64 %"shl.84", 4294967295
  %"trunc32.46" = trunc i64 %"and.5" to i32
  store i32 %"trunc32.46", ptr %"R7"
  ; BSSY B0, `(.L_x_8)
  ; FFMA.SAT R5, -R8, R13, 0.5
  %".1935" = load float, ptr %"R8"
  %".1936" = fneg float %".1935"
  %".1937" = load float, ptr %"R13"
  %"fmul.43" = fmul float %".1936", %".1937"
  %"fadd.47" = fadd float %"fmul.43", 0x3fe0000000000000
  %".1938" = bitcast ptr %"R5" to ptr
  store float %"fadd.47", ptr %".1938"
  ; FFMA R9, -R2, 1.4426950216293334961, -R9
  %".1941" = load float, ptr %"R2"
  %".1942" = fneg float %".1941"
  %".1943" = load float, ptr %"R9"
  %".1944" = fneg float %".1943"
  %"fmul.44" = fmul float %".1942", 0x3ff7154760000000
  %"fadd.48" = fadd float %"fmul.44", %".1944"
  %".1945" = bitcast ptr %"R9" to ptr
  store float %"fadd.48", ptr %".1945"
  ; FFMA R9, -R2, 1.925963033500011079e-08, R9
  %".1948" = load float, ptr %"R2"
  %".1949" = fneg float %".1948"
  %".1950" = load float, ptr %"R9"
  %"fmul.45" = fmul float %".1949", 0x3e54ae0c00000000
  %"fadd.49" = fadd float %"fmul.45", %".1950"
  %".1951" = bitcast ptr %"R9" to ptr
  store float %"fadd.49", ptr %".1951"
  ; FFMA.SAT R2, -R3, R13, 0.5
  %".1954" = load float, ptr %"R3"
  %".1955" = fneg float %".1954"
  %".1956" = load float, ptr %"R13"
  %"fmul.46" = fmul float %".1955", %".1956"
  %"fadd.50" = fadd float %"fmul.46", 0x3fe0000000000000
  %".1957" = bitcast ptr %"R2" to ptr
  store float %"fadd.50", ptr %".1957"
  ; MUFU.EX2 R12, R9
  %".1960" = load float, ptr %"R9"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".1960")
  %".1961" = bitcast ptr %"R12" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".1961"
  ; @P1 FADD R13, R11, 1
  %".1964" = load i1, ptr %"P1"
  %".1965" = icmp eq i1 %".1964", 1
  br i1 %".1965", label %".L_x_4_split_0x1260_conditionalExpr_0x12e0", label %".L_x_4_split_0x12f0"
.L_x_4_split_0x1260_conditionalExpr_0x12e0:
  ; FADD R13, R11, 1
  %".1968" = load float, ptr %"R11"
  %"fadd.51" = fadd float %".1968", 0x3ff0000000000000
  %".1969" = bitcast ptr %"R13" to ptr
  store float %"fadd.51", ptr %".1969"
  ; BRA `(.L_x_4_split_0x12f0)
  br label %".L_x_4_split_0x12f0"
.L_x_4_split_0x12f0:
  ; FFMA.RM R2, R2, R14.reuse, 12582913
  %".1974" = load float, ptr %"R2"
  %".1975" = load float, ptr %"R14"
  %"fmul.47" = fmul float %".1974", %".1975"
  %"fadd.52" = fadd float %"fmul.47", 0x4168000020000000
  %".1976" = bitcast ptr %"R2" to ptr
  store float %"fadd.52", ptr %".1976"
  ; FFMA.RM R14, R5, R14, 12582913
  %".1979" = load float, ptr %"R5"
  %".1980" = load float, ptr %"R14"
  %"fmul.48" = fmul float %".1979", %".1980"
  %"fadd.53" = fadd float %"fmul.48", 0x4168000020000000
  %".1981" = bitcast ptr %"R14" to ptr
  store float %"fadd.53", ptr %".1981"
  ; FADD R10, R2, -12583039
  %".1984" = load float, ptr %"R2"
  %"fadd.54" = fadd float %".1984", 0xc168000fe0000000
  %".1985" = bitcast ptr %"R10" to ptr
  store float %"fadd.54", ptr %".1985"
  ; @P1 MUFU.RCP R13, R13
  %".1988" = load i1, ptr %"P1"
  %".1989" = icmp eq i1 %".1988", 1
  br i1 %".1989", label %".L_x_4_split_0x12f0_conditionalExpr_0x1320", label %".L_x_4_split_0x1330"
.L_x_4_split_0x12f0_conditionalExpr_0x1320:
  ; MUFU.RCP R13, R13
  %".1992" = load float, ptr %"R13"
  %".1993" = fdiv float 0x3ff0000000000000, %".1992"
  %".1994" = bitcast ptr %"R13" to ptr
  store float %".1993", ptr %".1994"
  ; BRA `(.L_x_4_split_0x1330)
  br label %".L_x_4_split_0x1330"
.L_x_4_split_0x1330:
  ; FADD R5, R14.reuse, -12583039
  %".1999" = load float, ptr %"R14"
  %"fadd.55" = fadd float %".1999", 0xc168000fe0000000
  %".2000" = bitcast ptr %"R5" to ptr
  store float %"fadd.55", ptr %".2000"
  ; SHF.L.U32 R14, R14, 0x17, RZ
  %".2003" = icmp ult i32 23, 32
  %"SHF_min.13" = select  i1 %".2003", i32 23, i32 32
  %".2004" = load i32, ptr %"R14"
  %"zext.157" = zext i32 0 to i64
  %"zext.158" = zext i32 %".2004" to i64
  %"zext.159" = zext i32 23 to i64
  %"shl.85" = shl i64 %"zext.157", 32
  %"or.72" = or i64 %"shl.85", %"zext.158"
  %"shl.86" = shl i64 %"or.72", %"zext.159"
  %"and.6" = and i64 %"shl.86", 4294967295
  %"trunc32.47" = trunc i64 %"and.6" to i32
  store i32 %"trunc32.47", ptr %"R14"
  ; FFMA R10, -R3, 1.4426950216293334961, -R10
  %".2007" = load float, ptr %"R3"
  %".2008" = fneg float %".2007"
  %".2009" = load float, ptr %"R10"
  %".2010" = fneg float %".2009"
  %"fmul.49" = fmul float %".2008", 0x3ff7154760000000
  %"fadd.56" = fadd float %"fmul.49", %".2010"
  %".2011" = bitcast ptr %"R10" to ptr
  store float %"fadd.56", ptr %".2011"
  ; FFMA R5, -R8.reuse, 1.4426950216293334961, -R5
  %".2014" = load float, ptr %"R8"
  %".2015" = fneg float %".2014"
  %".2016" = load float, ptr %"R5"
  %".2017" = fneg float %".2016"
  %"fmul.50" = fmul float %".2015", 0x3ff7154760000000
  %"fadd.57" = fadd float %"fmul.50", %".2017"
  %".2018" = bitcast ptr %"R5" to ptr
  store float %"fadd.57", ptr %".2018"
  ; FFMA R10, -R3, 1.925963033500011079e-08, R10
  %".2021" = load float, ptr %"R3"
  %".2022" = fneg float %".2021"
  %".2023" = load float, ptr %"R10"
  %"fmul.51" = fmul float %".2022", 0x3e54ae0c00000000
  %"fadd.58" = fadd float %"fmul.51", %".2023"
  %".2024" = bitcast ptr %"R10" to ptr
  store float %"fadd.58", ptr %".2024"
  ; FFMA R15, R7, R12, 1
  %".2027" = load float, ptr %"R7"
  %".2028" = load float, ptr %"R12"
  %"fmul.52" = fmul float %".2027", %".2028"
  %"fadd.59" = fadd float %"fmul.52", 0x3ff0000000000000
  %".2029" = bitcast ptr %"R15" to ptr
  store float %"fadd.59", ptr %".2029"
  ; FFMA R11, -R8, 1.925963033500011079e-08, R5
  %".2032" = load float, ptr %"R8"
  %".2033" = fneg float %".2032"
  %".2034" = load float, ptr %"R5"
  %"fmul.53" = fmul float %".2033", 0x3e54ae0c00000000
  %"fadd.60" = fadd float %"fmul.53", %".2034"
  %".2035" = bitcast ptr %"R11" to ptr
  store float %"fadd.60", ptr %".2035"
  ; @!P1 IMAD.MOV.U32 R8, RZ, RZ, 0x3c80f082
  %".2038" = load i1, ptr %"P1"
  %".2039" = icmp ne i1 %".2038", 1
  br i1 %".2039", label %".L_x_4_split_0x1330_conditionalExpr_0x13a0", label %".L_x_4_split_0x13b0"
.L_x_4_split_0x1330_conditionalExpr_0x13a0:
  ; IMAD.MOV.U32 R8, RZ, RZ, 0x3c80f082
  %"imad_mul.43" = mul i32 0, 0
  %"imad_add.44" = add i32 %"imad_mul.43", 1015083138
  store i32 %"imad_add.44", ptr %"R8"
  ; BRA `(.L_x_4_split_0x13b0)
  br label %".L_x_4_split_0x13b0"
.L_x_4_split_0x13b0:
  ; IADD3 R7, R15, 0x1800000, RZ
  %".2046" = load i32, ptr %"R15"
  %".2047" = add i32 %".2046", 25165824
  %".2048" = add i32 %".2047", 0
  store i32 %".2048", ptr %"R7"
  ; @!P1 FMUL R5, R0, R0
  %".2051" = load i1, ptr %"P1"
  %".2052" = icmp ne i1 %".2051", 1
  br i1 %".2052", label %".L_x_4_split_0x13b0_conditionalExpr_0x13c0", label %".L_x_4_split_0x13d0"
.L_x_4_split_0x13b0_conditionalExpr_0x13c0:
  ; FMUL R5, R0, R0
  %".2055" = load float, ptr %"R0"
  %".2056" = load float, ptr %"R0"
  %"fmul.54" = fmul float %".2055", %".2056"
  %".2057" = bitcast ptr %"R5" to ptr
  store float %"fmul.54", ptr %".2057"
  ; BRA `(.L_x_4_split_0x13d0)
  br label %".L_x_4_split_0x13d0"
.L_x_4_split_0x13d0:
  ; MUFU.EX2 R3, R10
  %".2062" = load float, ptr %"R10"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".2062")
  %".2063" = bitcast ptr %"R3" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".2063"
  ; @P1 FFMA R13, R13, -2, R16
  %".2066" = load i1, ptr %"P1"
  %".2067" = icmp eq i1 %".2066", 1
  br i1 %".2067", label %".L_x_4_split_0x13d0_conditionalExpr_0x13e0", label %".L_x_4_split_0x13f0"
.L_x_4_split_0x13d0_conditionalExpr_0x13e0:
  ; FFMA R13, R13, -2, R16
  %".2070" = load float, ptr %"R13"
  %".2071" = load float, ptr %"R16"
  %"fmul.55" = fmul float %".2070", 0xc000000000000000
  %"fadd.61" = fadd float %"fmul.55", %".2071"
  %".2072" = bitcast ptr %"R13" to ptr
  store float %"fadd.61", ptr %".2072"
  ; BRA `(.L_x_4_split_0x13f0)
  br label %".L_x_4_split_0x13f0"
.L_x_4_split_0x13f0:
  ; LOP3.LUT R9, R7, 0x7f800000, RZ, 0xc0, !PT
  %".2077" = load i32, ptr %"R7"
  %".2078" = xor i1 1, -1
  %".2079" = and i32 %".2077", 2139095040
  store i32 %".2079", ptr %"R9"
  ; @!P1 FFMA R8, R5, R8, -0.052303962409496307373
  %".2082" = load i1, ptr %"P1"
  %".2083" = icmp ne i1 %".2082", 1
  br i1 %".2083", label %".L_x_4_split_0x13f0_conditionalExpr_0x1400", label %".L_x_4_split_0x1410"
.L_x_4_split_0x13f0_conditionalExpr_0x1400:
  ; FFMA R8, R5, R8, -0.052303962409496307373
  %".2086" = load float, ptr %"R5"
  %".2087" = load float, ptr %"R8"
  %"fmul.56" = fmul float %".2086", %".2087"
  %"fadd.62" = fadd float %"fmul.56", 0xbfaac795c0000000
  %".2088" = bitcast ptr %"R8" to ptr
  store float %"fadd.62", ptr %".2088"
  ; BRA `(.L_x_4_split_0x1410)
  br label %".L_x_4_split_0x1410"
.L_x_4_split_0x1410:
  ; IMAD.SHL.U32 R2, R2, 0x800000, RZ
  %".2093" = load i32, ptr %"R2"
  %"imad_shl.1" = shl i32 %".2093", 8388608
  %"imad_add.45" = add i32 %"imad_shl.1", 0
  store i32 %"imad_add.45", ptr %"R2"
  ; @P1 FSEL R13, R13, 1, !P0
  %".2096" = load i1, ptr %"P1"
  %".2097" = icmp eq i1 %".2096", 1
  br i1 %".2097", label %".L_x_4_split_0x1410_conditionalExpr_0x1420", label %".L_x_4_split_0x1430"
.L_x_4_split_0x1410_conditionalExpr_0x1420:
  ; FSEL R13, R13, 1, !P0
  %".2100" = load float, ptr %"R13"
  %".2101" = load i1, ptr %"P0"
  %".2102" = xor i1 %".2101", -1
  %".2103" = icmp eq i1 %".2102", 1
  %"fsel" = select  i1 %".2103", float %".2100", float 0x3ff0000000000000
  %".2104" = bitcast ptr %"R13" to ptr
  store float %"fsel", ptr %".2104"
  ; BRA `(.L_x_4_split_0x1430)
  br label %".L_x_4_split_0x1430"
.L_x_4_split_0x1430:
  ; @!P1 FFMA R8, R5, R8, 0.1331529766321182251
  %".2109" = load i1, ptr %"P1"
  %".2110" = icmp ne i1 %".2109", 1
  br i1 %".2110", label %".L_x_4_split_0x1430_conditionalExpr_0x1430", label %".L_x_4_split_0x1440"
.L_x_4_split_0x1430_conditionalExpr_0x1430:
  ; FFMA R8, R5, R8, 0.1331529766321182251
  %".2113" = load float, ptr %"R5"
  %".2114" = load float, ptr %"R8"
  %"fmul.57" = fmul float %".2113", %".2114"
  %"fadd.63" = fadd float %"fmul.57", 0x3fc10b2820000000
  %".2115" = bitcast ptr %"R8" to ptr
  store float %"fadd.63", ptr %".2115"
  ; BRA `(.L_x_4_split_0x1440)
  br label %".L_x_4_split_0x1440"
.L_x_4_split_0x1440:
  ; MUFU.EX2 R11, R11
  %".2120" = load float, ptr %"R11"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".2120")
  %".2121" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".2121"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".2124" = load i32, ptr %"R9"
  %".2125" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".2124", 33554431
  %".2126" = add i1 %"cmp.8", 0
  %".2127" = xor i1 %".2126", -1
  %".2128" = and i1 %"cmp.8", %".2125"
  %".2129" = and i1 %".2127", %".2125"
  store i1 %".2128", ptr %"P0"
  ; @!P1 FFMA R8, R5, R8, -0.33332768082618713379
  %".2132" = load i1, ptr %"P1"
  %".2133" = icmp ne i1 %".2132", 1
  br i1 %".2133", label %".L_x_4_split_0x1440_conditionalExpr_0x1460", label %".L_x_4_split_0x1470"
.L_x_4_split_0x1440_conditionalExpr_0x1460:
  ; FFMA R8, R5, R8, -0.33332768082618713379
  %".2136" = load float, ptr %"R5"
  %".2137" = load float, ptr %"R8"
  %"fmul.58" = fmul float %".2136", %".2137"
  %"fadd.64" = fadd float %"fmul.58", 0xbfd5553da0000000
  %".2138" = bitcast ptr %"R8" to ptr
  store float %"fadd.64", ptr %".2138"
  ; BRA `(.L_x_4_split_0x1470)
  br label %".L_x_4_split_0x1470"
.L_x_4_split_0x1470:
  ; @P1 LOP3.LUT R10, R13, 0x80000000, R0, 0xf8, !PT
  %".2143" = load i1, ptr %"P1"
  %".2144" = icmp eq i1 %".2143", 1
  br i1 %".2144", label %".L_x_4_split_0x1470_conditionalExpr_0x1470", label %".L_x_4_split_0x1480"
.L_x_4_split_0x1470_conditionalExpr_0x1470:
  ; LOP3.LUT R10, R13, 0x80000000, R0, 0xf8, !PT
  %".2147" = load i32, ptr %"R13"
  %".2148" = load i32, ptr %"R0"
  %".2149" = xor i1 1, -1
  %".2150" = or i32 %".2147", 2147483648
  %".2151" = or i32 %".2147", %".2148"
  %".2152" = and i32 %".2150", %".2151"
  store i32 %".2152", ptr %"R10"
  ; BRA `(.L_x_4_split_0x1480)
  br label %".L_x_4_split_0x1480"
.L_x_4_split_0x1480:
  ; @!P1 FFMA R7, R5, R8, RZ
  %".2157" = load i1, ptr %"P1"
  %".2158" = icmp ne i1 %".2157", 1
  br i1 %".2158", label %".L_x_4_split_0x1480_conditionalExpr_0x1480", label %".L_x_4_split_0x1490"
.L_x_4_split_0x1480_conditionalExpr_0x1480:
  ; FFMA R7, R5, R8, RZ
  %".2161" = load float, ptr %"R5"
  %".2162" = load float, ptr %"R8"
  %"fmul.59" = fmul float %".2161", %".2162"
  %"fadd.65" = fadd float %"fmul.59",              0x0
  %".2163" = bitcast ptr %"R7" to ptr
  store float %"fadd.65", ptr %".2163"
  ; BRA `(.L_x_4_split_0x1490)
  br label %".L_x_4_split_0x1490"
.L_x_4_split_0x1490:
  ; FFMA R2, R2, R3, 1
  %".2168" = load float, ptr %"R2"
  %".2169" = load float, ptr %"R3"
  %"fmul.60" = fmul float %".2168", %".2169"
  %"fadd.66" = fadd float %"fmul.60", 0x3ff0000000000000
  %".2170" = bitcast ptr %"R2" to ptr
  store float %"fadd.66", ptr %".2170"
  ; SHF.R.S32.HI R3, RZ, 0x1f, R6
  %".2173" = icmp ult i32 31, 32
  %"SHF_min.14" = select  i1 %".2173", i32 31, i32 32
  %".2174" = load i32, ptr %"R6"
  %"zext.160" = zext i32 %".2174" to i64
  %"zext.161" = zext i32 0 to i64
  %"zext.162" = zext i32 31 to i64
  %"shl.87" = shl i64 %"zext.160", 32
  %"or.73" = or i64 %"shl.87", %"zext.161"
  %"ashr.6" = ashr i64 %"or.73", %"zext.162"
  %"ashr.7" = ashr i64 %"ashr.6", 32
  %"trunc32.48" = trunc i64 %"ashr.7" to i32
  store i32 %"trunc32.48", ptr %"R3"
  ; @!P1 FFMA R10, R7, R0, R0
  %".2177" = load i1, ptr %"P1"
  %".2178" = icmp ne i1 %".2177", 1
  br i1 %".2178", label %".L_x_4_split_0x1490_conditionalExpr_0x14b0", label %".L_x_4_split_0x14c0"
.L_x_4_split_0x1490_conditionalExpr_0x14b0:
  ; FFMA R10, R7, R0, R0
  %".2181" = load float, ptr %"R7"
  %".2182" = load float, ptr %"R0"
  %".2183" = load float, ptr %"R0"
  %"fmul.61" = fmul float %".2181", %".2182"
  %"fadd.67" = fadd float %"fmul.61", %".2183"
  %".2184" = bitcast ptr %"R10" to ptr
  store float %"fadd.67", ptr %".2184"
  ; BRA `(.L_x_4_split_0x14c0)
  br label %".L_x_4_split_0x14c0"
.L_x_4_split_0x14c0:
  ; FFMA R5, R14, R11, 1
  %".2189" = load float, ptr %"R14"
  %".2190" = load float, ptr %"R11"
  %"fmul.62" = fmul float %".2189", %".2190"
  %"fadd.68" = fadd float %"fmul.62", 0x3ff0000000000000
  %".2191" = bitcast ptr %"R5" to ptr
  store float %"fadd.68", ptr %".2191"
  ; @P0 BRA `(.L_x_9)
  %".2194" = load i1, ptr %"P0"
  %".2195" = icmp eq i1 %".2194", 1
  br i1 %".2195", label %".L_x_9", label %".L_x_4_split_0x14e0_CALL_0x1510"
.L_x_4_split_0x14e0_CALL_0x1510:
  ; MOV R14, 0x1500
  store i32 5376, ptr %"R14"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1:
  ; SHF.L.U32 R0, R15, 0x1, RZ
  %".2202" = icmp ult i32 1, 32
  %"SHF_min.15" = select  i1 %".2202", i32 1, i32 32
  %".2203" = load i32, ptr %"R15"
  %"zext.163" = zext i32 0 to i64
  %"zext.164" = zext i32 %".2203" to i64
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
  %".2208" = icmp ult i32 24, 32
  %"SHF_min.16" = select  i1 %".2208", i32 24, i32 32
  %".2209" = load i32, ptr %"R0"
  %"zext.166" = zext i32 %".2209" to i64
  %"zext.167" = zext i32 0 to i64
  %"zext.168" = zext i32 24 to i64
  %"shl.90" = shl i64 %"zext.166", 32
  %"or.75" = or i64 %"shl.90", %"zext.167"
  %"lshr.4" = lshr i64 %"or.75", %"zext.168"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.50" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.50", ptr %"R16"
  ; ISETP.NE.U32.AND P0, PT, R16, RZ, PT
  %".2212" = load i32, ptr %"R16"
  %".2213" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".2212", 0
  %".2214" = add i1 %"cmp.9", 0
  %".2215" = xor i1 %".2214", -1
  %".2216" = and i1 %"cmp.9", %".2213"
  %".2217" = and i1 %".2215", %".2213"
  store i1 %".2216", ptr %"P0"
  ; @P0 BRA `(.L_x_21)
  %".2220" = load i1, ptr %"P0"
  %".2221" = icmp eq i1 %".2220", 1
  br i1 %".2221", label %".L_x_21...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1:
  ; IMAD.SHL.U32 R0, R15, 0x2, RZ
  %".2224" = load i32, ptr %"R15"
  %"imad_shl.2" = shl i32 %".2224", 2
  %"imad_add.46" = add i32 %"imad_shl.2", 0
  store i32 %"imad_add.46", ptr %"R0"
  ; ISETP.NE.AND P0, PT, R0, RZ, PT
  %".2227" = load i32, ptr %"R0"
  %".2228" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".2227", 0
  %".2229" = add i1 %"cmp.10", 0
  %".2230" = xor i1 %".2229", -1
  %".2231" = and i1 %"cmp.10", %".2228"
  %".2232" = and i1 %".2230", %".2228"
  store i1 %".2231", ptr %"P0"
  ; @P0 FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2235" = load i1, ptr %"P0"
  %".2236" = icmp eq i1 %".2235", 1
  br i1 %".2236", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...1_conditionalExpr_0x19e0:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2239" = load float, ptr %"R15"
  %"fmul.63" = fmul float %".2239", 0x43f0000000000000
  %"fadd.69" = fadd float %"fmul.63",              0x0
  %".2240" = bitcast ptr %"R8" to ptr
  store float %"fadd.69", ptr %".2240"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...1:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2245" = load float, ptr %"R15"
  %"fmul.64" = fmul float %".2245", 0x43f0000000000000
  %"fadd.70" = fadd float %"fmul.64",              0x0
  %".2246" = bitcast ptr %"R8" to ptr
  store float %"fadd.70", ptr %".2246"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1:
  ; @!P0 MUFU.RCP R0, R15
  %".2251" = load i1, ptr %"P0"
  %".2252" = icmp ne i1 %".2251", 1
  br i1 %".2252", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...1_conditionalExpr_0x19f0:
  ; MUFU.RCP R0, R15
  %".2255" = load float, ptr %"R15"
  %".2256" = fdiv float 0x3ff0000000000000, %".2255"
  %".2257" = bitcast ptr %"R0" to ptr
  store float %".2256", ptr %".2257"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...1:
  ; MUFU.RCP R0, R15
  %".2262" = load float, ptr %"R15"
  %".2263" = fdiv float 0x3ff0000000000000, %".2262"
  %".2264" = bitcast ptr %"R0" to ptr
  store float %".2263", ptr %".2264"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1:
  ; @P0 MUFU.RCP R9, R8
  %".2269" = load i1, ptr %"P0"
  %".2270" = icmp eq i1 %".2269", 1
  br i1 %".2270", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...1_conditionalExpr_0x1a00:
  ; MUFU.RCP R9, R8
  %".2273" = load float, ptr %"R8"
  %".2274" = fdiv float 0x3ff0000000000000, %".2273"
  %".2275" = bitcast ptr %"R9" to ptr
  store float %".2274", ptr %".2275"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...1:
  ; MUFU.RCP R9, R8
  %".2280" = load float, ptr %"R8"
  %".2281" = fdiv float 0x3ff0000000000000, %".2280"
  %".2282" = bitcast ptr %"R9" to ptr
  store float %".2281", ptr %".2282"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1:
  ; @P0 FFMA R11, R8, R9, -1
  %".2287" = load i1, ptr %"P0"
  %".2288" = icmp eq i1 %".2287", 1
  br i1 %".2288", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...1_conditionalExpr_0x1a10:
  ; FFMA R11, R8, R9, -1
  %".2291" = load float, ptr %"R8"
  %".2292" = load float, ptr %"R9"
  %"fmul.65" = fmul float %".2291", %".2292"
  %"fadd.71" = fadd float %"fmul.65", 0xbff0000000000000
  %".2293" = bitcast ptr %"R11" to ptr
  store float %"fadd.71", ptr %".2293"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...1:
  ; FFMA R11, R8, R9, -1
  %".2298" = load float, ptr %"R8"
  %".2299" = load float, ptr %"R9"
  %"fmul.66" = fmul float %".2298", %".2299"
  %"fadd.72" = fadd float %"fmul.66", 0xbff0000000000000
  %".2300" = bitcast ptr %"R11" to ptr
  store float %"fadd.72", ptr %".2300"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1:
  ; @P0 FADD.FTZ R12, -R11, -RZ
  %".2305" = load i1, ptr %"P0"
  %".2306" = icmp eq i1 %".2305", 1
  br i1 %".2306", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...1_conditionalExpr_0x1a20:
  ; FADD.FTZ R12, -R11, -RZ
  %".2309" = load float, ptr %"R11"
  %".2310" = fneg float %".2309"
  %"fadd.73" = fadd float %".2310",              0x0
  %".2311" = bitcast ptr %"R12" to ptr
  store float %"fadd.73", ptr %".2311"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...1:
  ; FADD.FTZ R12, -R11, -RZ
  %".2316" = load float, ptr %"R11"
  %".2317" = fneg float %".2316"
  %"fadd.74" = fadd float %".2317",              0x0
  %".2318" = bitcast ptr %"R12" to ptr
  store float %"fadd.74", ptr %".2318"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1:
  ; @P0 FFMA R12, R9, R12, R9
  %".2323" = load i1, ptr %"P0"
  %".2324" = icmp eq i1 %".2323", 1
  br i1 %".2324", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...1_conditionalExpr_0x1a30:
  ; FFMA R12, R9, R12, R9
  %".2327" = load float, ptr %"R9"
  %".2328" = load float, ptr %"R12"
  %".2329" = load float, ptr %"R9"
  %"fmul.67" = fmul float %".2327", %".2328"
  %"fadd.75" = fadd float %"fmul.67", %".2329"
  %".2330" = bitcast ptr %"R12" to ptr
  store float %"fadd.75", ptr %".2330"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...1:
  ; FFMA R12, R9, R12, R9
  %".2335" = load float, ptr %"R9"
  %".2336" = load float, ptr %"R12"
  %".2337" = load float, ptr %"R9"
  %"fmul.68" = fmul float %".2335", %".2336"
  %"fadd.76" = fadd float %"fmul.68", %".2337"
  %".2338" = bitcast ptr %"R12" to ptr
  store float %"fadd.76", ptr %".2338"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1:
  ; @P0 FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2343" = load i1, ptr %"P0"
  %".2344" = icmp eq i1 %".2343", 1
  br i1 %".2344", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...1_conditionalExpr_0x1a40:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2347" = load float, ptr %"R12"
  %"fmul.69" = fmul float %".2347", 0x43f0000000000000
  %"fadd.77" = fadd float %"fmul.69",              0x0
  %".2348" = bitcast ptr %"R0" to ptr
  store float %"fadd.77", ptr %".2348"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...1:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2353" = load float, ptr %"R12"
  %"fmul.70" = fmul float %".2353", 0x43f0000000000000
  %"fadd.78" = fadd float %"fmul.70",              0x0
  %".2354" = bitcast ptr %"R0" to ptr
  store float %"fadd.78", ptr %".2354"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...1:
  ; BRA `(.L_x_22)
  br label %".L_x_22...1"
.L_x_21...1:
  ; IADD3 R18, R16, -0xfd, RZ
  %".2361" = load i32, ptr %"R16"
  %".2362" = add i32 %".2361", -253
  %".2363" = add i32 %".2362", 0
  store i32 %".2363", ptr %"R18"
  ; ISETP.GT.U32.AND P0, PT, R18, 0x1, PT
  %".2366" = load i32, ptr %"R18"
  %".2367" = load i1, ptr %"PT"
  %"cmp.11" = icmp sgt i32 %".2366", 1
  %".2368" = add i1 %"cmp.11", 0
  %".2369" = xor i1 %".2368", -1
  %".2370" = and i1 %"cmp.11", %".2367"
  %".2371" = and i1 %".2369", %".2367"
  store i1 %".2370", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".2374" = load i1, ptr %"P0"
  %".2375" = icmp eq i1 %".2374", 1
  br i1 %".2375", label %".L_x_23...1", label %".L_x_21_split_0x1a90...1"
.L_x_21_split_0x1a90...1:
  ; LOP3.LUT R0, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2378" = load i32, ptr %"R15"
  %".2379" = xor i1 1, -1
  %".2380" = and i32 %".2378", 8388607
  store i32 %".2380", ptr %"R0"
  ; MOV R13, 0x3
  store i32 3, ptr %"R13"
  ; LOP3.LUT R0, R0, 0x3f800000, RZ, 0xfc, !PT
  %".2385" = load i32, ptr %"R0"
  %".2386" = xor i1 1, -1
  %".2387" = or i32 %".2385", 1065353216
  store i32 %".2387", ptr %"R0"
  ; SHF.L.U32 R13, R13, R18, RZ
  %".2390" = load i32, ptr %"R18"
  %".2391" = icmp ult i32 %".2390", 32
  %"SHF_min.17" = select  i1 %".2391", i32 %".2390", i32 32
  %".2392" = load i32, ptr %"R13"
  %".2393" = load i32, ptr %"R18"
  %"zext.169" = zext i32 0 to i64
  %"zext.170" = zext i32 %".2392" to i64
  %"zext.171" = zext i32 %".2393" to i64
  %"shl.91" = shl i64 %"zext.169", 32
  %"or.76" = or i64 %"shl.91", %"zext.170"
  %"shl.92" = shl i64 %"or.76", %"zext.171"
  %"and.8" = and i64 %"shl.92", 4294967295
  %"trunc32.51" = trunc i64 %"and.8" to i32
  store i32 %"trunc32.51", ptr %"R13"
  ; MUFU.RCP R9, R0
  %".2396" = load i32, ptr %"R0"
  %"sint_to_f32" = sitofp i32 %".2396" to float
  %".2397" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".2398" = fptosi float %".2397" to i32
  store i32 %".2398", ptr %"R9"
  ; FFMA R8, R0, R9, -1
  %".2401" = load float, ptr %"R0"
  %".2402" = load float, ptr %"R9"
  %"fmul.71" = fmul float %".2401", %".2402"
  %"fadd.79" = fadd float %"fmul.71", 0xbff0000000000000
  %".2403" = bitcast ptr %"R8" to ptr
  store float %"fadd.79", ptr %".2403"
  ; FADD.FTZ R8, -R8, -RZ
  %".2406" = load float, ptr %"R8"
  %".2407" = fneg float %".2406"
  %"fadd.80" = fadd float %".2407",              0x0
  %".2408" = bitcast ptr %"R8" to ptr
  store float %"fadd.80", ptr %".2408"
  ; FFMA.RM R11, R9.reuse, R8.reuse, R9.reuse
  %".2411" = load float, ptr %"R9"
  %".2412" = load float, ptr %"R8"
  %".2413" = load float, ptr %"R9"
  %"fmul.72" = fmul float %".2411", %".2412"
  %"fadd.81" = fadd float %"fmul.72", %".2413"
  %".2414" = bitcast ptr %"R11" to ptr
  store float %"fadd.81", ptr %".2414"
  ; FFMA.RP R12, R9, R8, R9
  %".2417" = load float, ptr %"R9"
  %".2418" = load float, ptr %"R8"
  %".2419" = load float, ptr %"R9"
  %"fmul.73" = fmul float %".2417", %".2418"
  %"fadd.82" = fadd float %"fmul.73", %".2419"
  %".2420" = bitcast ptr %"R12" to ptr
  store float %"fadd.82", ptr %".2420"
  ; LOP3.LUT R8, R11.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".2423" = load i32, ptr %"R11"
  %".2424" = xor i1 1, -1
  %".2425" = and i32 %".2423", 8388607
  store i32 %".2425", ptr %"R8"
  ; FSETP.NEU.FTZ.AND P0, PT, R11, R12, PT
  %".2428" = load float, ptr %"R11"
  %".2429" = load float, ptr %"R12"
  %".2430" = load i1, ptr %"PT"
  %"fcmp_ordered" = fcmp une float %".2428", %".2429"
  %".2431" = fadd i1 %"fcmp_ordered", 0
  %".2432" = xor i1 %".2431", -1
  %".2433" = and i1 %"fcmp_ordered", %".2430"
  %".2434" = and i1 %".2432", %".2430"
  store i1 %".2433", ptr %"P0"
  ; LOP3.LUT R8, R8, 0x800000, RZ, 0xfc, !PT
  %".2437" = load i32, ptr %"R8"
  %".2438" = xor i1 1, -1
  %".2439" = or i32 %".2437", 8388608
  store i32 %".2439", ptr %"R8"
  ; SEL R9, RZ, 0xffffffff, !P0
  %".2442" = load i1, ptr %"P0"
  %".2443" = xor i1 %".2442", -1
  %".2444" = icmp eq i1 %".2443", 1
  %"sel" = select  i1 %".2444", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R9"
  ; LOP3.LUT R13, R13, R8, RZ, 0xc0, !PT
  %".2447" = load i32, ptr %"R13"
  %".2448" = load i32, ptr %"R8"
  %".2449" = xor i1 1, -1
  %".2450" = and i32 %".2447", %".2448"
  store i32 %".2450", ptr %"R13"
  ; IMAD.MOV R9, RZ, RZ, -R9
  %".2453" = load i32, ptr %"R9"
  %".2454" = sub i32 0, %".2453"
  %"imad_mul.44" = mul i32 0, 0
  %"imad_add.47" = add i32 %"imad_mul.44", %".2454"
  store i32 %"imad_add.47", ptr %"R9"
  ; SHF.R.U32.HI R13, RZ, R18, R13
  %".2457" = load i32, ptr %"R18"
  %".2458" = icmp ult i32 %".2457", 32
  %"SHF_min.18" = select  i1 %".2458", i32 %".2457", i32 32
  %".2459" = load i32, ptr %"R13"
  %".2460" = load i32, ptr %"R18"
  %"zext.172" = zext i32 %".2459" to i64
  %"zext.173" = zext i32 0 to i64
  %"zext.174" = zext i32 %".2460" to i64
  %"shl.93" = shl i64 %"zext.172", 32
  %"or.77" = or i64 %"shl.93", %"zext.173"
  %"lshr.6" = lshr i64 %"or.77", %"zext.174"
  %"lshr.7" = lshr i64 %"lshr.6", 32
  %"trunc32.52" = trunc i64 %"lshr.7" to i32
  store i32 %"trunc32.52", ptr %"R13"
  ; LOP3.LUT P1, RZ, R9, R18, R8, 0xf8, !PT
  %".2463" = load i32, ptr %"R9"
  %".2464" = load i32, ptr %"R18"
  %".2465" = load i32, ptr %"R8"
  %".2466" = xor i1 1, -1
  %".2467" = or i32 %".2463", %".2464"
  %".2468" = or i32 %".2463", %".2465"
  %".2469" = and i32 %".2467", %".2468"
  store i32 %".2469", ptr %"RZ"
  %".2471" = icmp ne i32 %".2469", 0
  store i1 %".2471", ptr %"P1"
  ; LOP3.LUT P0, RZ, R13.reuse, 0x1, RZ, 0xc0, !PT
  %".2474" = load i32, ptr %"R13"
  %".2475" = xor i1 1, -1
  %".2476" = and i32 %".2474", 1
  store i32 %".2476", ptr %"RZ"
  %".2478" = icmp ne i32 %".2476", 0
  store i1 %".2478", ptr %"P0"
  ; LOP3.LUT P2, RZ, R13, 0x2, RZ, 0xc0, !PT
  %".2481" = load i32, ptr %"R13"
  %".2482" = xor i1 1, -1
  %".2483" = and i32 %".2481", 2
  store i32 %".2483", ptr %"RZ"
  %".2485" = icmp ne i32 %".2483", 0
  store i1 %".2485", ptr %"P2"
  ; IADD3 R9, R16, -0xfc, RZ
  %".2488" = load i32, ptr %"R16"
  %".2489" = add i32 %".2488", -252
  %".2490" = add i32 %".2489", 0
  store i32 %".2490", ptr %"R9"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".2493" = load i1, ptr %"P0"
  %".2494" = load i1, ptr %"P1"
  %".2495" = or i1 %".2493", %".2494"
  %".2496" = and i1 %".2495", 1
  ; LOP3.LUT P1, RZ, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2498" = load i32, ptr %"R15"
  %".2499" = xor i1 1, -1
  %".2500" = and i32 %".2498", 8388607
  store i32 %".2500", ptr %"RZ"
  %".2502" = icmp ne i32 %".2500", 0
  store i1 %".2502", ptr %"P1"
  ; SEL R0, RZ, 0x1, !P0
  %".2505" = load i1, ptr %"P0"
  %".2506" = xor i1 %".2505", -1
  %".2507" = icmp eq i1 %".2506", 1
  %"sel.1" = select  i1 %".2507", i32 0, i32 1
  store i32 %"sel.1", ptr %"R0"
  ; IADD3 R0, -R0, RZ, RZ
  %".2510" = load i32, ptr %"R0"
  %".2511" = sub i32 0, %".2510"
  %".2512" = add i32 %".2511", 0
  %".2513" = add i32 %".2512", 0
  store i32 %".2513", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, RZ, PT
  %".2516" = load i32, ptr %"R0"
  %".2517" = load i1, ptr %"PT"
  %"cmp.12" = icmp sge i32 %".2516", 0
  %".2518" = add i1 %"cmp.12", 0
  %".2519" = xor i1 %".2518", -1
  %".2520" = and i1 %"cmp.12", %".2517"
  %".2521" = and i1 %".2519", %".2517"
  store i1 %".2520", ptr %"P0"
  ; SHF.R.U32.HI R0, RZ, R9, R8
  %".2524" = load i32, ptr %"R9"
  %".2525" = icmp ult i32 %".2524", 32
  %"SHF_min.19" = select  i1 %".2525", i32 %".2524", i32 32
  %".2526" = load i32, ptr %"R8"
  %".2527" = load i32, ptr %"R9"
  %"zext.175" = zext i32 %".2526" to i64
  %"zext.176" = zext i32 0 to i64
  %"zext.177" = zext i32 %".2527" to i64
  %"shl.94" = shl i64 %"zext.175", 32
  %"or.78" = or i64 %"shl.94", %"zext.176"
  %"lshr.8" = lshr i64 %"or.78", %"zext.177"
  %"lshr.9" = lshr i64 %"lshr.8", 32
  %"trunc32.53" = trunc i64 %"lshr.9" to i32
  store i32 %"trunc32.53", ptr %"R0"
  ; @!P0 IADD3 R0, R0, 0x1, RZ
  %".2530" = load i1, ptr %"P0"
  %".2531" = icmp ne i1 %".2530", 1
  br i1 %".2531", label %".L_x_21_split_0x1a90...1_conditionalExpr_0x1c30", label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...1"
.L_x_21_split_0x1a90...1_conditionalExpr_0x1c30:
  ; IADD3 R0, R0, 0x1, RZ
  %".2534" = load i32, ptr %"R0"
  %".2535" = add i32 %".2534", 1
  %".2536" = add i32 %".2535", 0
  store i32 %".2536", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1)
  br label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...1"
.L_x_21_split_0x1a90_conditionalExpr_0x1c30...1:
  ; IADD3 R0, R0, 0x1, RZ
  %".2541" = load i32, ptr %"R0"
  %".2542" = add i32 %".2541", 1
  %".2543" = add i32 %".2542", 0
  store i32 %".2543", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40)
  br label %".L_x_21_split_0x1c40...1"
.L_x_21_split_0x1c40...1:
  ; @!P1 IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".2548" = load i1, ptr %"P1"
  %".2549" = icmp ne i1 %".2548", 1
  br i1 %".2549", label %".L_x_21_split_0x1c40...1_conditionalExpr_0x1c40", label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...1"
.L_x_21_split_0x1c40...1_conditionalExpr_0x1c40:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".2552" = load i32, ptr %"R0"
  %"imad_shl.3" = shl i32 %".2552", 2
  %"imad_add.48" = add i32 %"imad_shl.3", 0
  store i32 %"imad_add.48", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1)
  br label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...1"
.L_x_21_split_0x1c40_conditionalExpr_0x1c40...1:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".2557" = load i32, ptr %"R0"
  %"imad_shl.4" = shl i32 %".2557", 2
  %"imad_add.49" = add i32 %"imad_shl.4", 0
  store i32 %"imad_add.49", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c50)
  br label %".L_x_21_split_0x1c50...1"
.L_x_21_split_0x1c50...1:
  ; LOP3.LUT R0, R0, 0x80000000, R15, 0xf8, !PT
  %".2562" = load i32, ptr %"R0"
  %".2563" = load i32, ptr %"R15"
  %".2564" = xor i1 1, -1
  %".2565" = or i32 %".2562", 2147483648
  %".2566" = or i32 %".2562", %".2563"
  %".2567" = and i32 %".2565", %".2566"
  store i32 %".2567", ptr %"R0"
  ; BRA `(.L_x_22)
  br label %".L_x_22...1"
.L_x_23...1:
  ; MUFU.RCP R0, R15
  %".2572" = load float, ptr %"R15"
  %".2573" = fdiv float 0x3ff0000000000000, %".2572"
  %".2574" = bitcast ptr %"R0" to ptr
  store float %".2573", ptr %".2574"
  br label %".L_x_22...1"
.L_x_22...1:
  ; BSYNC B1
  br label %".L_x_20...1"
.L_x_20...1:
  ; MOV R8, R14
  %".2580" = load i32, ptr %"R14"
  store i32 %".2580", ptr %"R8"
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
  %".2590" = load i32, ptr %"R0"
  %"imad_mul.46" = mul i32 0, 0
  %"imad_add.51" = add i32 %"imad_mul.46", %".2590"
  store i32 %"imad_add.51", ptr %"R7"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_9:
  ; MUFU.RCP R7, R15
  %".2595" = load float, ptr %"R15"
  %".2596" = fdiv float 0x3ff0000000000000, %".2595"
  %".2597" = bitcast ptr %"R7" to ptr
  store float %".2596", ptr %".2597"
  ; FFMA R0, R15, R7, -1
  %".2600" = load float, ptr %"R15"
  %".2601" = load float, ptr %"R7"
  %"fmul.74" = fmul float %".2600", %".2601"
  %"fadd.83" = fadd float %"fmul.74", 0xbff0000000000000
  %".2602" = bitcast ptr %"R0" to ptr
  store float %"fadd.83", ptr %".2602"
  ; FADD.FTZ R0, -R0, -RZ
  %".2605" = load float, ptr %"R0"
  %".2606" = fneg float %".2605"
  %"fadd.84" = fadd float %".2606",              0x0
  %".2607" = bitcast ptr %"R0" to ptr
  store float %"fadd.84", ptr %".2607"
  ; FFMA R7, R7, R0, R7
  %".2610" = load float, ptr %"R7"
  %".2611" = load float, ptr %"R0"
  %".2612" = load float, ptr %"R7"
  %"fmul.75" = fmul float %".2610", %".2611"
  %"fadd.85" = fadd float %"fmul.75", %".2612"
  %".2613" = bitcast ptr %"R7" to ptr
  store float %"fadd.85", ptr %".2613"
  br label %".L_x_10"
.L_x_10:
  ; BSYNC B0
  br label %".L_x_8"
.L_x_8:
  ; IADD3 R0, R2, 0x1800000, RZ
  %".2619" = load i32, ptr %"R2"
  %".2620" = add i32 %".2619", 25165824
  %".2621" = add i32 %".2620", 0
  store i32 %".2621", ptr %"R0"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_11)
  ; FMUL R4, R4, R7
  %".2626" = load float, ptr %"R4"
  %".2627" = load float, ptr %"R7"
  %"fmul.76" = fmul float %".2626", %".2627"
  %".2628" = bitcast ptr %"R4" to ptr
  store float %"fmul.76", ptr %".2628"
  ; LOP3.LUT R0, R0, 0x7f800000, RZ, 0xc0, !PT
  %".2631" = load i32, ptr %"R0"
  %".2632" = xor i1 1, -1
  %".2633" = and i32 %".2631", 2139095040
  store i32 %".2633", ptr %"R0"
  ; ISETP.GT.U32.AND P0, PT, R0, 0x1ffffff, PT
  %".2636" = load i32, ptr %"R0"
  %".2637" = load i1, ptr %"PT"
  %"cmp.13" = icmp sgt i32 %".2636", 33554431
  %".2638" = add i1 %"cmp.13", 0
  %".2639" = xor i1 %".2638", -1
  %".2640" = and i1 %"cmp.13", %".2637"
  %".2641" = and i1 %".2639", %".2637"
  store i1 %".2640", ptr %"P0"
  ; @P0 BRA `(.L_x_12)
  %".2644" = load i1, ptr %"P0"
  %".2645" = icmp eq i1 %".2644", 1
  br i1 %".2645", label %".L_x_12", label %".L_x_8_split_0x15e0_CALL_0x1620"
.L_x_8_split_0x15e0_CALL_0x1620:
  ; MOV R15, R2
  %".2648" = load float, ptr %"R2"
  %".2649" = bitcast ptr %"R15" to ptr
  store float %".2648", ptr %".2649"
  ; MOV R14, 0x1610
  store i32 5648, ptr %"R14"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2:
  ; SHF.L.U32 R0, R15, 0x1, RZ
  %".2656" = icmp ult i32 1, 32
  %"SHF_min.20" = select  i1 %".2656", i32 1, i32 32
  %".2657" = load i32, ptr %"R15"
  %"zext.178" = zext i32 0 to i64
  %"zext.179" = zext i32 %".2657" to i64
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
  %".2662" = icmp ult i32 24, 32
  %"SHF_min.21" = select  i1 %".2662", i32 24, i32 32
  %".2663" = load i32, ptr %"R0"
  %"zext.181" = zext i32 %".2663" to i64
  %"zext.182" = zext i32 0 to i64
  %"zext.183" = zext i32 24 to i64
  %"shl.97" = shl i64 %"zext.181", 32
  %"or.80" = or i64 %"shl.97", %"zext.182"
  %"lshr.10" = lshr i64 %"or.80", %"zext.183"
  %"lshr.11" = lshr i64 %"lshr.10", 32
  %"trunc32.55" = trunc i64 %"lshr.11" to i32
  store i32 %"trunc32.55", ptr %"R16"
  ; ISETP.NE.U32.AND P0, PT, R16, RZ, PT
  %".2666" = load i32, ptr %"R16"
  %".2667" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".2666", 0
  %".2668" = add i1 %"cmp.14", 0
  %".2669" = xor i1 %".2668", -1
  %".2670" = and i1 %"cmp.14", %".2667"
  %".2671" = and i1 %".2669", %".2667"
  store i1 %".2670", ptr %"P0"
  ; @P0 BRA `(.L_x_21)
  %".2674" = load i1, ptr %"P0"
  %".2675" = icmp eq i1 %".2674", 1
  br i1 %".2675", label %".L_x_21...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2:
  ; IMAD.SHL.U32 R0, R15, 0x2, RZ
  %".2678" = load i32, ptr %"R15"
  %"imad_shl.5" = shl i32 %".2678", 2
  %"imad_add.52" = add i32 %"imad_shl.5", 0
  store i32 %"imad_add.52", ptr %"R0"
  ; ISETP.NE.AND P0, PT, R0, RZ, PT
  %".2681" = load i32, ptr %"R0"
  %".2682" = load i1, ptr %"PT"
  %"cmp.15" = icmp ne i32 %".2681", 0
  %".2683" = add i1 %"cmp.15", 0
  %".2684" = xor i1 %".2683", -1
  %".2685" = and i1 %"cmp.15", %".2682"
  %".2686" = and i1 %".2684", %".2682"
  store i1 %".2685", ptr %"P0"
  ; @P0 FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2689" = load i1, ptr %"P0"
  %".2690" = icmp eq i1 %".2689", 1
  br i1 %".2690", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...2_conditionalExpr_0x19e0:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2693" = load float, ptr %"R15"
  %"fmul.77" = fmul float %".2693", 0x43f0000000000000
  %"fadd.86" = fadd float %"fmul.77",              0x0
  %".2694" = bitcast ptr %"R8" to ptr
  store float %"fadd.86", ptr %".2694"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...2:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".2699" = load float, ptr %"R15"
  %"fmul.78" = fmul float %".2699", 0x43f0000000000000
  %"fadd.87" = fadd float %"fmul.78",              0x0
  %".2700" = bitcast ptr %"R8" to ptr
  store float %"fadd.87", ptr %".2700"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2:
  ; @!P0 MUFU.RCP R0, R15
  %".2705" = load i1, ptr %"P0"
  %".2706" = icmp ne i1 %".2705", 1
  br i1 %".2706", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...2_conditionalExpr_0x19f0:
  ; MUFU.RCP R0, R15
  %".2709" = load i32, ptr %"R15"
  %"sint_to_f32.1" = sitofp i32 %".2709" to float
  %".2710" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".2711" = fptosi float %".2710" to i32
  store i32 %".2711", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...2:
  ; MUFU.RCP R0, R15
  %".2716" = load i32, ptr %"R15"
  %"sint_to_f32.2" = sitofp i32 %".2716" to float
  %".2717" = fdiv float 0x3ff0000000000000, %"sint_to_f32.2"
  %".2718" = fptosi float %".2717" to i32
  store i32 %".2718", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2:
  ; @P0 MUFU.RCP R9, R8
  %".2723" = load i1, ptr %"P0"
  %".2724" = icmp eq i1 %".2723", 1
  br i1 %".2724", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...2_conditionalExpr_0x1a00:
  ; MUFU.RCP R9, R8
  %".2727" = load float, ptr %"R8"
  %".2728" = fdiv float 0x3ff0000000000000, %".2727"
  %".2729" = bitcast ptr %"R9" to ptr
  store float %".2728", ptr %".2729"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...2:
  ; MUFU.RCP R9, R8
  %".2734" = load float, ptr %"R8"
  %".2735" = fdiv float 0x3ff0000000000000, %".2734"
  %".2736" = bitcast ptr %"R9" to ptr
  store float %".2735", ptr %".2736"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2:
  ; @P0 FFMA R11, R8, R9, -1
  %".2741" = load i1, ptr %"P0"
  %".2742" = icmp eq i1 %".2741", 1
  br i1 %".2742", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...2_conditionalExpr_0x1a10:
  ; FFMA R11, R8, R9, -1
  %".2745" = load float, ptr %"R8"
  %".2746" = load float, ptr %"R9"
  %"fmul.79" = fmul float %".2745", %".2746"
  %"fadd.88" = fadd float %"fmul.79", 0xbff0000000000000
  %".2747" = bitcast ptr %"R11" to ptr
  store float %"fadd.88", ptr %".2747"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...2:
  ; FFMA R11, R8, R9, -1
  %".2752" = load float, ptr %"R8"
  %".2753" = load float, ptr %"R9"
  %"fmul.80" = fmul float %".2752", %".2753"
  %"fadd.89" = fadd float %"fmul.80", 0xbff0000000000000
  %".2754" = bitcast ptr %"R11" to ptr
  store float %"fadd.89", ptr %".2754"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2:
  ; @P0 FADD.FTZ R12, -R11, -RZ
  %".2759" = load i1, ptr %"P0"
  %".2760" = icmp eq i1 %".2759", 1
  br i1 %".2760", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...2_conditionalExpr_0x1a20:
  ; FADD.FTZ R12, -R11, -RZ
  %".2763" = load float, ptr %"R11"
  %".2764" = fneg float %".2763"
  %"fadd.90" = fadd float %".2764",              0x0
  %".2765" = bitcast ptr %"R12" to ptr
  store float %"fadd.90", ptr %".2765"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...2:
  ; FADD.FTZ R12, -R11, -RZ
  %".2770" = load float, ptr %"R11"
  %".2771" = fneg float %".2770"
  %"fadd.91" = fadd float %".2771",              0x0
  %".2772" = bitcast ptr %"R12" to ptr
  store float %"fadd.91", ptr %".2772"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2:
  ; @P0 FFMA R12, R9, R12, R9
  %".2777" = load i1, ptr %"P0"
  %".2778" = icmp eq i1 %".2777", 1
  br i1 %".2778", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...2_conditionalExpr_0x1a30:
  ; FFMA R12, R9, R12, R9
  %".2781" = load float, ptr %"R9"
  %".2782" = load float, ptr %"R12"
  %".2783" = load float, ptr %"R9"
  %"fmul.81" = fmul float %".2781", %".2782"
  %"fadd.92" = fadd float %"fmul.81", %".2783"
  %".2784" = bitcast ptr %"R12" to ptr
  store float %"fadd.92", ptr %".2784"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...2:
  ; FFMA R12, R9, R12, R9
  %".2789" = load float, ptr %"R9"
  %".2790" = load float, ptr %"R12"
  %".2791" = load float, ptr %"R9"
  %"fmul.82" = fmul float %".2789", %".2790"
  %"fadd.93" = fadd float %"fmul.82", %".2791"
  %".2792" = bitcast ptr %"R12" to ptr
  store float %"fadd.93", ptr %".2792"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2:
  ; @P0 FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2797" = load i1, ptr %"P0"
  %".2798" = icmp eq i1 %".2797", 1
  br i1 %".2798", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...2_conditionalExpr_0x1a40:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2801" = load float, ptr %"R12"
  %"fmul.83" = fmul float %".2801", 0x43f0000000000000
  %"fadd.94" = fadd float %"fmul.83",              0x0
  %".2802" = bitcast ptr %"R0" to ptr
  store float %"fadd.94", ptr %".2802"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...2:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".2807" = load float, ptr %"R12"
  %"fmul.84" = fmul float %".2807", 0x43f0000000000000
  %"fadd.95" = fadd float %"fmul.84",              0x0
  %".2808" = bitcast ptr %"R0" to ptr
  store float %"fadd.95", ptr %".2808"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...2:
  ; BRA `(.L_x_22)
  br label %".L_x_22...2"
.L_x_21...2:
  ; IADD3 R18, R16, -0xfd, RZ
  %".2815" = load i32, ptr %"R16"
  %".2816" = add i32 %".2815", -253
  %".2817" = add i32 %".2816", 0
  store i32 %".2817", ptr %"R18"
  ; ISETP.GT.U32.AND P0, PT, R18, 0x1, PT
  %".2820" = load i32, ptr %"R18"
  %".2821" = load i1, ptr %"PT"
  %"cmp.16" = icmp sgt i32 %".2820", 1
  %".2822" = add i1 %"cmp.16", 0
  %".2823" = xor i1 %".2822", -1
  %".2824" = and i1 %"cmp.16", %".2821"
  %".2825" = and i1 %".2823", %".2821"
  store i1 %".2824", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".2828" = load i1, ptr %"P0"
  %".2829" = icmp eq i1 %".2828", 1
  br i1 %".2829", label %".L_x_23...2", label %".L_x_21_split_0x1a90...2"
.L_x_21_split_0x1a90...2:
  ; LOP3.LUT R0, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2832" = load i32, ptr %"R15"
  %".2833" = xor i1 1, -1
  %".2834" = and i32 %".2832", 8388607
  store i32 %".2834", ptr %"R0"
  ; MOV R13, 0x3
  store i32 3, ptr %"R13"
  ; LOP3.LUT R0, R0, 0x3f800000, RZ, 0xfc, !PT
  %".2839" = load i32, ptr %"R0"
  %".2840" = xor i1 1, -1
  %".2841" = or i32 %".2839", 1065353216
  store i32 %".2841", ptr %"R0"
  ; SHF.L.U32 R13, R13, R18, RZ
  %".2844" = load i32, ptr %"R18"
  %".2845" = icmp ult i32 %".2844", 32
  %"SHF_min.22" = select  i1 %".2845", i32 %".2844", i32 32
  %".2846" = load i32, ptr %"R13"
  %".2847" = load i32, ptr %"R18"
  %"zext.184" = zext i32 0 to i64
  %"zext.185" = zext i32 %".2846" to i64
  %"zext.186" = zext i32 %".2847" to i64
  %"shl.98" = shl i64 %"zext.184", 32
  %"or.81" = or i64 %"shl.98", %"zext.185"
  %"shl.99" = shl i64 %"or.81", %"zext.186"
  %"and.10" = and i64 %"shl.99", 4294967295
  %"trunc32.56" = trunc i64 %"and.10" to i32
  store i32 %"trunc32.56", ptr %"R13"
  ; MUFU.RCP R9, R0
  %".2850" = load i32, ptr %"R0"
  %"sint_to_f32.3" = sitofp i32 %".2850" to float
  %".2851" = fdiv float 0x3ff0000000000000, %"sint_to_f32.3"
  %".2852" = fptosi float %".2851" to i32
  store i32 %".2852", ptr %"R9"
  ; FFMA R8, R0, R9, -1
  %".2855" = load float, ptr %"R0"
  %".2856" = load float, ptr %"R9"
  %"fmul.85" = fmul float %".2855", %".2856"
  %"fadd.96" = fadd float %"fmul.85", 0xbff0000000000000
  %".2857" = bitcast ptr %"R8" to ptr
  store float %"fadd.96", ptr %".2857"
  ; FADD.FTZ R8, -R8, -RZ
  %".2860" = load float, ptr %"R8"
  %".2861" = fneg float %".2860"
  %"fadd.97" = fadd float %".2861",              0x0
  %".2862" = bitcast ptr %"R8" to ptr
  store float %"fadd.97", ptr %".2862"
  ; FFMA.RM R11, R9.reuse, R8.reuse, R9.reuse
  %".2865" = load float, ptr %"R9"
  %".2866" = load float, ptr %"R8"
  %".2867" = load float, ptr %"R9"
  %"fmul.86" = fmul float %".2865", %".2866"
  %"fadd.98" = fadd float %"fmul.86", %".2867"
  %".2868" = bitcast ptr %"R11" to ptr
  store float %"fadd.98", ptr %".2868"
  ; FFMA.RP R12, R9, R8, R9
  %".2871" = load float, ptr %"R9"
  %".2872" = load float, ptr %"R8"
  %".2873" = load float, ptr %"R9"
  %"fmul.87" = fmul float %".2871", %".2872"
  %"fadd.99" = fadd float %"fmul.87", %".2873"
  %".2874" = bitcast ptr %"R12" to ptr
  store float %"fadd.99", ptr %".2874"
  ; LOP3.LUT R8, R11.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".2877" = load i32, ptr %"R11"
  %".2878" = xor i1 1, -1
  %".2879" = and i32 %".2877", 8388607
  store i32 %".2879", ptr %"R8"
  ; FSETP.NEU.FTZ.AND P0, PT, R11, R12, PT
  %".2882" = load float, ptr %"R11"
  %".2883" = load float, ptr %"R12"
  %".2884" = load i1, ptr %"PT"
  %"fcmp_ordered.1" = fcmp une float %".2882", %".2883"
  %".2885" = fadd i1 %"fcmp_ordered.1", 0
  %".2886" = xor i1 %".2885", -1
  %".2887" = and i1 %"fcmp_ordered.1", %".2884"
  %".2888" = and i1 %".2886", %".2884"
  store i1 %".2887", ptr %"P0"
  ; LOP3.LUT R8, R8, 0x800000, RZ, 0xfc, !PT
  %".2891" = load i32, ptr %"R8"
  %".2892" = xor i1 1, -1
  %".2893" = or i32 %".2891", 8388608
  store i32 %".2893", ptr %"R8"
  ; SEL R9, RZ, 0xffffffff, !P0
  %".2896" = load i1, ptr %"P0"
  %".2897" = xor i1 %".2896", -1
  %".2898" = icmp eq i1 %".2897", 1
  %"sel.2" = select  i1 %".2898", i32 0, i32 4294967295
  store i32 %"sel.2", ptr %"R9"
  ; LOP3.LUT R13, R13, R8, RZ, 0xc0, !PT
  %".2901" = load i32, ptr %"R13"
  %".2902" = load i32, ptr %"R8"
  %".2903" = xor i1 1, -1
  %".2904" = and i32 %".2901", %".2902"
  store i32 %".2904", ptr %"R13"
  ; IMAD.MOV R9, RZ, RZ, -R9
  %".2907" = load i32, ptr %"R9"
  %".2908" = sub i32 0, %".2907"
  %"imad_mul.47" = mul i32 0, 0
  %"imad_add.53" = add i32 %"imad_mul.47", %".2908"
  store i32 %"imad_add.53", ptr %"R9"
  ; SHF.R.U32.HI R13, RZ, R18, R13
  %".2911" = load i32, ptr %"R18"
  %".2912" = icmp ult i32 %".2911", 32
  %"SHF_min.23" = select  i1 %".2912", i32 %".2911", i32 32
  %".2913" = load i32, ptr %"R13"
  %".2914" = load i32, ptr %"R18"
  %"zext.187" = zext i32 %".2913" to i64
  %"zext.188" = zext i32 0 to i64
  %"zext.189" = zext i32 %".2914" to i64
  %"shl.100" = shl i64 %"zext.187", 32
  %"or.82" = or i64 %"shl.100", %"zext.188"
  %"lshr.12" = lshr i64 %"or.82", %"zext.189"
  %"lshr.13" = lshr i64 %"lshr.12", 32
  %"trunc32.57" = trunc i64 %"lshr.13" to i32
  store i32 %"trunc32.57", ptr %"R13"
  ; LOP3.LUT P1, RZ, R9, R18, R8, 0xf8, !PT
  %".2917" = load i32, ptr %"R9"
  %".2918" = load i32, ptr %"R18"
  %".2919" = load i32, ptr %"R8"
  %".2920" = xor i1 1, -1
  %".2921" = or i32 %".2917", %".2918"
  %".2922" = or i32 %".2917", %".2919"
  %".2923" = and i32 %".2921", %".2922"
  store i32 %".2923", ptr %"RZ"
  %".2925" = icmp ne i32 %".2923", 0
  store i1 %".2925", ptr %"P1"
  ; LOP3.LUT P0, RZ, R13.reuse, 0x1, RZ, 0xc0, !PT
  %".2928" = load i32, ptr %"R13"
  %".2929" = xor i1 1, -1
  %".2930" = and i32 %".2928", 1
  store i32 %".2930", ptr %"RZ"
  %".2932" = icmp ne i32 %".2930", 0
  store i1 %".2932", ptr %"P0"
  ; LOP3.LUT P2, RZ, R13, 0x2, RZ, 0xc0, !PT
  %".2935" = load i32, ptr %"R13"
  %".2936" = xor i1 1, -1
  %".2937" = and i32 %".2935", 2
  store i32 %".2937", ptr %"RZ"
  %".2939" = icmp ne i32 %".2937", 0
  store i1 %".2939", ptr %"P2"
  ; IADD3 R9, R16, -0xfc, RZ
  %".2942" = load i32, ptr %"R16"
  %".2943" = add i32 %".2942", -252
  %".2944" = add i32 %".2943", 0
  store i32 %".2944", ptr %"R9"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".2947" = load i1, ptr %"P0"
  %".2948" = load i1, ptr %"P1"
  %".2949" = or i1 %".2947", %".2948"
  %".2950" = and i1 %".2949", 1
  ; LOP3.LUT P1, RZ, R15, 0x7fffff, RZ, 0xc0, !PT
  %".2952" = load i32, ptr %"R15"
  %".2953" = xor i1 1, -1
  %".2954" = and i32 %".2952", 8388607
  store i32 %".2954", ptr %"RZ"
  %".2956" = icmp ne i32 %".2954", 0
  store i1 %".2956", ptr %"P1"
  ; SEL R0, RZ, 0x1, !P0
  %".2959" = load i1, ptr %"P0"
  %".2960" = xor i1 %".2959", -1
  %".2961" = icmp eq i1 %".2960", 1
  %"sel.3" = select  i1 %".2961", i32 0, i32 1
  store i32 %"sel.3", ptr %"R0"
  ; IADD3 R0, -R0, RZ, RZ
  %".2964" = load i32, ptr %"R0"
  %".2965" = sub i32 0, %".2964"
  %".2966" = add i32 %".2965", 0
  %".2967" = add i32 %".2966", 0
  store i32 %".2967", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, RZ, PT
  %".2970" = load i32, ptr %"R0"
  %".2971" = load i1, ptr %"PT"
  %"cmp.17" = icmp sge i32 %".2970", 0
  %".2972" = add i1 %"cmp.17", 0
  %".2973" = xor i1 %".2972", -1
  %".2974" = and i1 %"cmp.17", %".2971"
  %".2975" = and i1 %".2973", %".2971"
  store i1 %".2974", ptr %"P0"
  ; SHF.R.U32.HI R0, RZ, R9, R8
  %".2978" = load i32, ptr %"R9"
  %".2979" = icmp ult i32 %".2978", 32
  %"SHF_min.24" = select  i1 %".2979", i32 %".2978", i32 32
  %".2980" = load i32, ptr %"R8"
  %".2981" = load i32, ptr %"R9"
  %"zext.190" = zext i32 %".2980" to i64
  %"zext.191" = zext i32 0 to i64
  %"zext.192" = zext i32 %".2981" to i64
  %"shl.101" = shl i64 %"zext.190", 32
  %"or.83" = or i64 %"shl.101", %"zext.191"
  %"lshr.14" = lshr i64 %"or.83", %"zext.192"
  %"lshr.15" = lshr i64 %"lshr.14", 32
  %"trunc32.58" = trunc i64 %"lshr.15" to i32
  store i32 %"trunc32.58", ptr %"R0"
  ; @!P0 IADD3 R0, R0, 0x1, RZ
  %".2984" = load i1, ptr %"P0"
  %".2985" = icmp ne i1 %".2984", 1
  br i1 %".2985", label %".L_x_21_split_0x1a90...2_conditionalExpr_0x1c30", label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...2"
.L_x_21_split_0x1a90...2_conditionalExpr_0x1c30:
  ; IADD3 R0, R0, 0x1, RZ
  %".2988" = load i32, ptr %"R0"
  %".2989" = add i32 %".2988", 1
  %".2990" = add i32 %".2989", 0
  store i32 %".2990", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2)
  br label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...2"
.L_x_21_split_0x1a90_conditionalExpr_0x1c30...2:
  ; IADD3 R0, R0, 0x1, RZ
  %".2995" = load i32, ptr %"R0"
  %".2996" = add i32 %".2995", 1
  %".2997" = add i32 %".2996", 0
  store i32 %".2997", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40)
  br label %".L_x_21_split_0x1c40...2"
.L_x_21_split_0x1c40...2:
  ; @!P1 IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3002" = load i1, ptr %"P1"
  %".3003" = icmp ne i1 %".3002", 1
  br i1 %".3003", label %".L_x_21_split_0x1c40...2_conditionalExpr_0x1c40", label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...2"
.L_x_21_split_0x1c40...2_conditionalExpr_0x1c40:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3006" = load i32, ptr %"R0"
  %"imad_shl.6" = shl i32 %".3006", 2
  %"imad_add.54" = add i32 %"imad_shl.6", 0
  store i32 %"imad_add.54", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2)
  br label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...2"
.L_x_21_split_0x1c40_conditionalExpr_0x1c40...2:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3011" = load i32, ptr %"R0"
  %"imad_shl.7" = shl i32 %".3011", 2
  %"imad_add.55" = add i32 %"imad_shl.7", 0
  store i32 %"imad_add.55", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c50)
  br label %".L_x_21_split_0x1c50...2"
.L_x_21_split_0x1c50...2:
  ; LOP3.LUT R0, R0, 0x80000000, R15, 0xf8, !PT
  %".3016" = load i32, ptr %"R0"
  %".3017" = load i32, ptr %"R15"
  %".3018" = xor i1 1, -1
  %".3019" = or i32 %".3016", 2147483648
  %".3020" = or i32 %".3016", %".3017"
  %".3021" = and i32 %".3019", %".3020"
  store i32 %".3021", ptr %"R0"
  ; BRA `(.L_x_22)
  br label %".L_x_22...2"
.L_x_23...2:
  ; MUFU.RCP R0, R15
  %".3026" = load i32, ptr %"R15"
  %"sint_to_f32.4" = sitofp i32 %".3026" to float
  %".3027" = fdiv float 0x3ff0000000000000, %"sint_to_f32.4"
  %".3028" = fptosi float %".3027" to i32
  store i32 %".3028", ptr %"R0"
  br label %".L_x_22...2"
.L_x_22...2:
  ; BSYNC B1
  br label %".L_x_20...2"
.L_x_20...2:
  ; MOV R8, R14
  %".3034" = load i32, ptr %"R14"
  store i32 %".3034", ptr %"R8"
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
  %".3044" = load i32, ptr %"R0"
  %"imad_mul.49" = mul i32 0, 0
  %"imad_add.57" = add i32 %"imad_mul.49", %".3044"
  store i32 %"imad_add.57", ptr %"R7"
  ; BRA `(.L_x_13)
  br label %".L_x_13"
.L_x_12:
  ; MUFU.RCP R7, R2
  %".3049" = load float, ptr %"R2"
  %".3050" = fdiv float 0x3ff0000000000000, %".3049"
  %".3051" = bitcast ptr %"R7" to ptr
  store float %".3050", ptr %".3051"
  ; FFMA R0, R2, R7, -1
  %".3054" = load float, ptr %"R2"
  %".3055" = load float, ptr %"R7"
  %"fmul.88" = fmul float %".3054", %".3055"
  %"fadd.100" = fadd float %"fmul.88", 0xbff0000000000000
  %".3056" = bitcast ptr %"R0" to ptr
  store float %"fadd.100", ptr %".3056"
  ; FADD.FTZ R0, -R0, -RZ
  %".3059" = load float, ptr %"R0"
  %".3060" = fneg float %".3059"
  %"fadd.101" = fadd float %".3060",              0x0
  %".3061" = bitcast ptr %"R0" to ptr
  store float %"fadd.101", ptr %".3061"
  ; FFMA R7, R7, R0, R7
  %".3064" = load float, ptr %"R7"
  %".3065" = load float, ptr %"R0"
  %".3066" = load float, ptr %"R7"
  %"fmul.89" = fmul float %".3064", %".3065"
  %"fadd.102" = fadd float %"fmul.89", %".3066"
  %".3067" = bitcast ptr %"R7" to ptr
  store float %"fadd.102", ptr %".3067"
  br label %".L_x_13"
.L_x_13:
  ; BSYNC B0
  br label %".L_x_11"
.L_x_11:
  ; FFMA R9, R7, R10, R4
  %".3073" = load float, ptr %"R7"
  %".3074" = load float, ptr %"R10"
  %".3075" = load float, ptr %"R4"
  %"fmul.90" = fmul float %".3073", %".3074"
  %"fadd.103" = fadd float %"fmul.90", %".3075"
  %".3076" = bitcast ptr %"R9" to ptr
  store float %"fadd.103", ptr %".3076"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_14)
  ; FSETP.GE.AND P0, PT, |R9|, 0.60000002384185791016, PT
  %".3081" = load float, ptr %"R9"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".3081")
  %".3082" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".3083" = fadd i1 %"fcmp_unordered.2", 0
  %".3084" = xor i1 %".3083", -1
  %".3085" = and i1 %"fcmp_unordered.2", %".3082"
  %".3086" = and i1 %".3084", %".3082"
  store i1 %".3085", ptr %"P0"
  ; @!P0 BRA `(.L_x_15)
  %".3089" = load i1, ptr %"P0"
  %".3090" = icmp ne i1 %".3089", 1
  br i1 %".3090", label %".L_x_15", label %".L_x_11_split_0x16d0"
.L_x_11_split_0x16d0:
  ; FMUL R0, |R9|.reuse, 2.8853900432586669922
  %".3093" = load float, ptr %"R9"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".3093")
  %"fmul.91" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".3094" = bitcast ptr %"R0" to ptr
  store float %"fmul.91", ptr %".3094"
  ; MOV R7, 0x3f800000
  %".3097" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".3097"
  ; FSETP.GE.AND P0, PT, |R9|, 9.010913848876953125, PT
  %".3100" = load float, ptr %"R9"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".3100")
  %".3101" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".3102" = fadd i1 %"fcmp_unordered.3", 0
  %".3103" = xor i1 %".3102", -1
  %".3104" = and i1 %"fcmp_unordered.3", %".3101"
  %".3105" = and i1 %".3103", %".3101"
  store i1 %".3104", ptr %"P0"
  ; MUFU.EX2 R0, R0
  %".3108" = load float, ptr %"R0"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".3108")
  %".3109" = bitcast ptr %"R0" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".3109"
  ; FADD R2, R0, 1
  %".3112" = load float, ptr %"R0"
  %"fadd.104" = fadd float %".3112", 0x3ff0000000000000
  %".3113" = bitcast ptr %"R2" to ptr
  store float %"fadd.104", ptr %".3113"
  ; MUFU.RCP R2, R2
  %".3116" = load float, ptr %"R2"
  %".3117" = fdiv float 0x3ff0000000000000, %".3116"
  %".3118" = bitcast ptr %"R2" to ptr
  store float %".3117", ptr %".3118"
  ; FFMA R4, R2, -2, R7
  %".3121" = load float, ptr %"R2"
  %".3122" = load float, ptr %"R7"
  %"fmul.92" = fmul float %".3121", 0xc000000000000000
  %"fadd.105" = fadd float %"fmul.92", %".3122"
  %".3123" = bitcast ptr %"R4" to ptr
  store float %"fadd.105", ptr %".3123"
  ; FSEL R4, R4, 1, !P0
  %".3126" = load float, ptr %"R4"
  %".3127" = load i1, ptr %"P0"
  %".3128" = xor i1 %".3127", -1
  %".3129" = icmp eq i1 %".3128", 1
  %"fsel.1" = select  i1 %".3129", float %".3126", float 0x3ff0000000000000
  %".3130" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".3130"
  ; LOP3.LUT R7, R4, 0x80000000, R9, 0xf8, !PT
  %".3133" = load i32, ptr %"R4"
  %".3134" = load i32, ptr %"R9"
  %".3135" = xor i1 1, -1
  %".3136" = or i32 %".3133", 2147483648
  %".3137" = or i32 %".3133", %".3134"
  %".3138" = and i32 %".3136", %".3137"
  store i32 %".3138", ptr %"R7"
  ; BRA `(.L_x_16)
  br label %".L_x_16"
.L_x_15:
  ; IMAD.MOV.U32 R7, RZ, RZ, 0x3c80f082
  %"imad_mul.50" = mul i32 0, 0
  %"imad_add.58" = add i32 %"imad_mul.50", 1015083138
  store i32 %"imad_add.58", ptr %"R7"
  ; FMUL R0, R9, R9
  %".3145" = load float, ptr %"R9"
  %".3146" = load float, ptr %"R9"
  %"fmul.93" = fmul float %".3145", %".3146"
  %".3147" = bitcast ptr %"R0" to ptr
  store float %"fmul.93", ptr %".3147"
  ; FFMA R7, R0, R7, -0.052303962409496307373
  %".3150" = load float, ptr %"R0"
  %".3151" = load float, ptr %"R7"
  %"fmul.94" = fmul float %".3150", %".3151"
  %"fadd.106" = fadd float %"fmul.94", 0xbfaac795c0000000
  %".3152" = bitcast ptr %"R7" to ptr
  store float %"fadd.106", ptr %".3152"
  ; FFMA R7, R0, R7, 0.1331529766321182251
  %".3155" = load float, ptr %"R0"
  %".3156" = load float, ptr %"R7"
  %"fmul.95" = fmul float %".3155", %".3156"
  %"fadd.107" = fadd float %"fmul.95", 0x3fc10b2820000000
  %".3157" = bitcast ptr %"R7" to ptr
  store float %"fadd.107", ptr %".3157"
  ; FFMA R7, R0, R7, -0.33332768082618713379
  %".3160" = load float, ptr %"R0"
  %".3161" = load float, ptr %"R7"
  %"fmul.96" = fmul float %".3160", %".3161"
  %"fadd.108" = fadd float %"fmul.96", 0xbfd5553da0000000
  %".3162" = bitcast ptr %"R7" to ptr
  store float %"fadd.108", ptr %".3162"
  ; FFMA R7, R0, R7, RZ
  %".3165" = load float, ptr %"R0"
  %".3166" = load float, ptr %"R7"
  %"fmul.97" = fmul float %".3165", %".3166"
  %"fadd.109" = fadd float %"fmul.97",              0x0
  %".3167" = bitcast ptr %"R7" to ptr
  store float %"fadd.109", ptr %".3167"
  ; FFMA R7, R9, R7, R9
  %".3170" = load float, ptr %"R9"
  %".3171" = load float, ptr %"R7"
  %".3172" = load float, ptr %"R9"
  %"fmul.98" = fmul float %".3170", %".3171"
  %"fadd.110" = fadd float %"fmul.98", %".3172"
  %".3173" = bitcast ptr %"R7" to ptr
  store float %"fadd.110", ptr %".3173"
  br label %".L_x_16"
.L_x_16:
  ; BSYNC B0
  br label %".L_x_14"
.L_x_14:
  ; IADD3 R0, R5, 0x1800000, RZ
  %".3179" = load i32, ptr %"R5"
  %".3180" = add i32 %".3179", 25165824
  %".3181" = add i32 %".3180", 0
  store i32 %".3181", ptr %"R0"
  ; ULDC.64 UR4, c[0x0][0x1a0]
  %".3184" = ptrtoint ptr %"Arg_8" to i64
  %".3185" = and i64 %".3184", 18446744069414584320
  %".3186" = lshr i64 %".3185", 32
  %"trunc32.59" = trunc i64 %".3186" to i32
  %"trunc32.60" = trunc i64 %".3184" to i32
  store i32 %"trunc32.60", ptr %"UR4"
  store i32 %"trunc32.59", ptr %"UR5"
  ; SHF.L.U64.HI R3, R6, 0x2, R3
  %".3190" = icmp ult i32 2, 64
  %"SHF_min.25" = select  i1 %".3190", i32 2, i32 64
  %".3191" = load i32, ptr %"R3"
  %".3192" = load i32, ptr %"R6"
  %"zext.193" = zext i32 %".3191" to i64
  %"zext.194" = zext i32 %".3192" to i64
  %"zext.195" = zext i32 2 to i64
  %"shl.102" = shl i64 %"zext.193", 32
  %"or.84" = or i64 %"shl.102", %"zext.194"
  %"shl.103" = shl i64 %"or.84", %"zext.195"
  %"lshr.16" = lshr i64 %"shl.103", 32
  %"trunc32.61" = trunc i64 %"lshr.16" to i32
  store i32 %"trunc32.61", ptr %"R3"
  ; BMOV.32.CLEAR RZ, B0
  ; LOP3.LUT R0, R0, 0x7f800000, RZ, 0xc0, !PT
  %".3196" = load i32, ptr %"R0"
  %".3197" = xor i1 1, -1
  %".3198" = and i32 %".3196", 2139095040
  store i32 %".3198", ptr %"R0"
  ; BSSY B0, `(.L_x_17)
  ; SHF.L.U32 R2, R6, 0x2, RZ
  %".3202" = icmp ult i32 2, 32
  %"SHF_min.26" = select  i1 %".3202", i32 2, i32 32
  %".3203" = load i32, ptr %"R6"
  %"zext.196" = zext i32 0 to i64
  %"zext.197" = zext i32 %".3203" to i64
  %"zext.198" = zext i32 2 to i64
  %"shl.104" = shl i64 %"zext.196", 32
  %"or.85" = or i64 %"shl.104", %"zext.197"
  %"shl.105" = shl i64 %"or.85", %"zext.198"
  %"and.11" = and i64 %"shl.105", 4294967295
  %"trunc32.62" = trunc i64 %"and.11" to i32
  store i32 %"trunc32.62", ptr %"R2"
  ; ISETP.GT.U32.AND P0, PT, R0, 0x1ffffff, PT
  %".3206" = load i32, ptr %"R0"
  %".3207" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".3206", 33554431
  %".3208" = add i1 %"cmp.18", 0
  %".3209" = xor i1 %".3208", -1
  %".3210" = and i1 %"cmp.18", %".3207"
  %".3211" = and i1 %".3209", %".3207"
  store i1 %".3210", ptr %"P0"
  ; STG.E.SYS [R2.64+UR4], R9
  %".3214" = load float, ptr %"R9"
  %".3215" = load i32, ptr %"R2"
  %"zext.199" = zext i32 %".3215" to i64
  %".3216" = load i32, ptr %"R3"
  %"zext.200" = zext i32 %".3216" to i64
  %"shl.106" = shl i64 %"zext.200", 32
  %"or.86" = or i64 %"shl.106", %"zext.199"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.86" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".3214", ptr addrspace(1) %"ptr_cast_for_access.59"
  ; @P0 BRA `(.L_x_18)
  %".3219" = load i1, ptr %"P0"
  %".3220" = icmp eq i1 %".3219", 1
  br i1 %".3220", label %".L_x_18", label %".L_x_14_split_0x1890_CALL_0x18c0"
.L_x_14_split_0x1890_CALL_0x18c0:
  ; IMAD.MOV.U32 R15, RZ, RZ, R5
  %".3223" = load i32, ptr %"R5"
  %"imad_mul.51" = mul i32 0, 0
  %"imad_add.59" = add i32 %"imad_mul.51", %".3223"
  store i32 %"imad_add.59", ptr %"R15"
  ; MOV R14, 0x18c0
  store i32 6336, ptr %"R14"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3:
  ; SHF.L.U32 R0, R15, 0x1, RZ
  %".3230" = icmp ult i32 1, 32
  %"SHF_min.27" = select  i1 %".3230", i32 1, i32 32
  %".3231" = load i32, ptr %"R15"
  %"zext.201" = zext i32 0 to i64
  %"zext.202" = zext i32 %".3231" to i64
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
  %".3236" = icmp ult i32 24, 32
  %"SHF_min.28" = select  i1 %".3236", i32 24, i32 32
  %".3237" = load i32, ptr %"R0"
  %"zext.204" = zext i32 %".3237" to i64
  %"zext.205" = zext i32 0 to i64
  %"zext.206" = zext i32 24 to i64
  %"shl.109" = shl i64 %"zext.204", 32
  %"or.88" = or i64 %"shl.109", %"zext.205"
  %"lshr.17" = lshr i64 %"or.88", %"zext.206"
  %"lshr.18" = lshr i64 %"lshr.17", 32
  %"trunc32.64" = trunc i64 %"lshr.18" to i32
  store i32 %"trunc32.64", ptr %"R16"
  ; ISETP.NE.U32.AND P0, PT, R16, RZ, PT
  %".3240" = load i32, ptr %"R16"
  %".3241" = load i1, ptr %"PT"
  %"cmp.19" = icmp ne i32 %".3240", 0
  %".3242" = add i1 %"cmp.19", 0
  %".3243" = xor i1 %".3242", -1
  %".3244" = and i1 %"cmp.19", %".3241"
  %".3245" = and i1 %".3243", %".3241"
  store i1 %".3244", ptr %"P0"
  ; @P0 BRA `(.L_x_21)
  %".3248" = load i1, ptr %"P0"
  %".3249" = icmp eq i1 %".3248", 1
  br i1 %".3249", label %".L_x_21...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3:
  ; IMAD.SHL.U32 R0, R15, 0x2, RZ
  %".3252" = load i32, ptr %"R15"
  %"imad_shl.8" = shl i32 %".3252", 2
  %"imad_add.60" = add i32 %"imad_shl.8", 0
  store i32 %"imad_add.60", ptr %"R0"
  ; ISETP.NE.AND P0, PT, R0, RZ, PT
  %".3255" = load i32, ptr %"R0"
  %".3256" = load i1, ptr %"PT"
  %"cmp.20" = icmp ne i32 %".3255", 0
  %".3257" = add i1 %"cmp.20", 0
  %".3258" = xor i1 %".3257", -1
  %".3259" = and i1 %"cmp.20", %".3256"
  %".3260" = and i1 %".3258", %".3256"
  store i1 %".3259", ptr %"P0"
  ; @P0 FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".3263" = load i1, ptr %"P0"
  %".3264" = icmp eq i1 %".3263", 1
  br i1 %".3264", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0...3_conditionalExpr_0x19e0:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".3267" = load float, ptr %"R15"
  %"fmul.99" = fmul float %".3267", 0x43f0000000000000
  %"fadd.111" = fadd float %"fmul.99",              0x0
  %".3268" = bitcast ptr %"R8" to ptr
  store float %"fadd.111", ptr %".3268"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19c0_conditionalExpr_0x19e0...3:
  ; FFMA R8, R15, 1.84467440737095516160e+19, RZ
  %".3273" = load float, ptr %"R15"
  %"fmul.100" = fmul float %".3273", 0x43f0000000000000
  %"fadd.112" = fadd float %"fmul.100",              0x0
  %".3274" = bitcast ptr %"R8" to ptr
  store float %"fadd.112", ptr %".3274"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3:
  ; @!P0 MUFU.RCP R0, R15
  %".3279" = load i1, ptr %"P0"
  %".3280" = icmp ne i1 %".3279", 1
  br i1 %".3280", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0...3_conditionalExpr_0x19f0:
  ; MUFU.RCP R0, R15
  %".3283" = load i32, ptr %"R15"
  %"sint_to_f32.5" = sitofp i32 %".3283" to float
  %".3284" = fdiv float 0x3ff0000000000000, %"sint_to_f32.5"
  %".3285" = fptosi float %".3284" to i32
  store i32 %".3285", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x19f0_conditionalExpr_0x19f0...3:
  ; MUFU.RCP R0, R15
  %".3290" = load i32, ptr %"R15"
  %"sint_to_f32.6" = sitofp i32 %".3290" to float
  %".3291" = fdiv float 0x3ff0000000000000, %"sint_to_f32.6"
  %".3292" = fptosi float %".3291" to i32
  store i32 %".3292", ptr %"R0"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3:
  ; @P0 MUFU.RCP R9, R8
  %".3297" = load i1, ptr %"P0"
  %".3298" = icmp eq i1 %".3297", 1
  br i1 %".3298", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00...3_conditionalExpr_0x1a00:
  ; MUFU.RCP R9, R8
  %".3301" = load float, ptr %"R8"
  %".3302" = fdiv float 0x3ff0000000000000, %".3301"
  %".3303" = bitcast ptr %"R9" to ptr
  store float %".3302", ptr %".3303"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a00_conditionalExpr_0x1a00...3:
  ; MUFU.RCP R9, R8
  %".3308" = load float, ptr %"R8"
  %".3309" = fdiv float 0x3ff0000000000000, %".3308"
  %".3310" = bitcast ptr %"R9" to ptr
  store float %".3309", ptr %".3310"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3:
  ; @P0 FFMA R11, R8, R9, -1
  %".3315" = load i1, ptr %"P0"
  %".3316" = icmp eq i1 %".3315", 1
  br i1 %".3316", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10...3_conditionalExpr_0x1a10:
  ; FFMA R11, R8, R9, -1
  %".3319" = load float, ptr %"R8"
  %".3320" = load float, ptr %"R9"
  %"fmul.101" = fmul float %".3319", %".3320"
  %"fadd.113" = fadd float %"fmul.101", 0xbff0000000000000
  %".3321" = bitcast ptr %"R11" to ptr
  store float %"fadd.113", ptr %".3321"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a10_conditionalExpr_0x1a10...3:
  ; FFMA R11, R8, R9, -1
  %".3326" = load float, ptr %"R8"
  %".3327" = load float, ptr %"R9"
  %"fmul.102" = fmul float %".3326", %".3327"
  %"fadd.114" = fadd float %"fmul.102", 0xbff0000000000000
  %".3328" = bitcast ptr %"R11" to ptr
  store float %"fadd.114", ptr %".3328"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3:
  ; @P0 FADD.FTZ R12, -R11, -RZ
  %".3333" = load i1, ptr %"P0"
  %".3334" = icmp eq i1 %".3333", 1
  br i1 %".3334", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20...3_conditionalExpr_0x1a20:
  ; FADD.FTZ R12, -R11, -RZ
  %".3337" = load float, ptr %"R11"
  %".3338" = fneg float %".3337"
  %"fadd.115" = fadd float %".3338",              0x0
  %".3339" = bitcast ptr %"R12" to ptr
  store float %"fadd.115", ptr %".3339"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a20_conditionalExpr_0x1a20...3:
  ; FADD.FTZ R12, -R11, -RZ
  %".3344" = load float, ptr %"R11"
  %".3345" = fneg float %".3344"
  %"fadd.116" = fadd float %".3345",              0x0
  %".3346" = bitcast ptr %"R12" to ptr
  store float %"fadd.116", ptr %".3346"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3:
  ; @P0 FFMA R12, R9, R12, R9
  %".3351" = load i1, ptr %"P0"
  %".3352" = icmp eq i1 %".3351", 1
  br i1 %".3352", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30...3_conditionalExpr_0x1a30:
  ; FFMA R12, R9, R12, R9
  %".3355" = load float, ptr %"R9"
  %".3356" = load float, ptr %"R12"
  %".3357" = load float, ptr %"R9"
  %"fmul.103" = fmul float %".3355", %".3356"
  %"fadd.117" = fadd float %"fmul.103", %".3357"
  %".3358" = bitcast ptr %"R12" to ptr
  store float %"fadd.117", ptr %".3358"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a30_conditionalExpr_0x1a30...3:
  ; FFMA R12, R9, R12, R9
  %".3363" = load float, ptr %"R9"
  %".3364" = load float, ptr %"R12"
  %".3365" = load float, ptr %"R9"
  %"fmul.104" = fmul float %".3363", %".3364"
  %"fadd.118" = fadd float %"fmul.104", %".3365"
  %".3366" = bitcast ptr %"R12" to ptr
  store float %"fadd.118", ptr %".3366"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3:
  ; @P0 FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".3371" = load i1, ptr %"P0"
  %".3372" = icmp eq i1 %".3371", 1
  br i1 %".3372", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40...3_conditionalExpr_0x1a40:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".3375" = load float, ptr %"R12"
  %"fmul.105" = fmul float %".3375", 0x43f0000000000000
  %"fadd.119" = fadd float %"fmul.105",              0x0
  %".3376" = bitcast ptr %"R0" to ptr
  store float %"fadd.119", ptr %".3376"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a40_conditionalExpr_0x1a40...3:
  ; FFMA R0, R12, 1.84467440737095516160e+19, RZ
  %".3381" = load float, ptr %"R12"
  %"fmul.106" = fmul float %".3381", 0x43f0000000000000
  %"fadd.120" = fadd float %"fmul.106",              0x0
  %".3382" = bitcast ptr %"R0" to ptr
  store float %"fadd.120", ptr %".3382"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x1a50...3:
  ; BRA `(.L_x_22)
  br label %".L_x_22...3"
.L_x_21...3:
  ; IADD3 R18, R16, -0xfd, RZ
  %".3389" = load i32, ptr %"R16"
  %".3390" = add i32 %".3389", -253
  %".3391" = add i32 %".3390", 0
  store i32 %".3391", ptr %"R18"
  ; ISETP.GT.U32.AND P0, PT, R18, 0x1, PT
  %".3394" = load i32, ptr %"R18"
  %".3395" = load i1, ptr %"PT"
  %"cmp.21" = icmp sgt i32 %".3394", 1
  %".3396" = add i1 %"cmp.21", 0
  %".3397" = xor i1 %".3396", -1
  %".3398" = and i1 %"cmp.21", %".3395"
  %".3399" = and i1 %".3397", %".3395"
  store i1 %".3398", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".3402" = load i1, ptr %"P0"
  %".3403" = icmp eq i1 %".3402", 1
  br i1 %".3403", label %".L_x_23...3", label %".L_x_21_split_0x1a90...3"
.L_x_21_split_0x1a90...3:
  ; LOP3.LUT R0, R15, 0x7fffff, RZ, 0xc0, !PT
  %".3406" = load i32, ptr %"R15"
  %".3407" = xor i1 1, -1
  %".3408" = and i32 %".3406", 8388607
  store i32 %".3408", ptr %"R0"
  ; MOV R13, 0x3
  store i32 3, ptr %"R13"
  ; LOP3.LUT R0, R0, 0x3f800000, RZ, 0xfc, !PT
  %".3413" = load i32, ptr %"R0"
  %".3414" = xor i1 1, -1
  %".3415" = or i32 %".3413", 1065353216
  store i32 %".3415", ptr %"R0"
  ; SHF.L.U32 R13, R13, R18, RZ
  %".3418" = load i32, ptr %"R18"
  %".3419" = icmp ult i32 %".3418", 32
  %"SHF_min.29" = select  i1 %".3419", i32 %".3418", i32 32
  %".3420" = load i32, ptr %"R13"
  %".3421" = load i32, ptr %"R18"
  %"zext.207" = zext i32 0 to i64
  %"zext.208" = zext i32 %".3420" to i64
  %"zext.209" = zext i32 %".3421" to i64
  %"shl.110" = shl i64 %"zext.207", 32
  %"or.89" = or i64 %"shl.110", %"zext.208"
  %"shl.111" = shl i64 %"or.89", %"zext.209"
  %"and.13" = and i64 %"shl.111", 4294967295
  %"trunc32.65" = trunc i64 %"and.13" to i32
  store i32 %"trunc32.65", ptr %"R13"
  ; MUFU.RCP R9, R0
  %".3424" = load i32, ptr %"R0"
  %"sint_to_f32.7" = sitofp i32 %".3424" to float
  %".3425" = fdiv float 0x3ff0000000000000, %"sint_to_f32.7"
  %".3426" = fptosi float %".3425" to i32
  store i32 %".3426", ptr %"R9"
  ; FFMA R8, R0, R9, -1
  %".3429" = load float, ptr %"R0"
  %".3430" = load float, ptr %"R9"
  %"fmul.107" = fmul float %".3429", %".3430"
  %"fadd.121" = fadd float %"fmul.107", 0xbff0000000000000
  %".3431" = bitcast ptr %"R8" to ptr
  store float %"fadd.121", ptr %".3431"
  ; FADD.FTZ R8, -R8, -RZ
  %".3434" = load float, ptr %"R8"
  %".3435" = fneg float %".3434"
  %"fadd.122" = fadd float %".3435",              0x0
  %".3436" = bitcast ptr %"R8" to ptr
  store float %"fadd.122", ptr %".3436"
  ; FFMA.RM R11, R9.reuse, R8.reuse, R9.reuse
  %".3439" = load float, ptr %"R9"
  %".3440" = load float, ptr %"R8"
  %".3441" = load float, ptr %"R9"
  %"fmul.108" = fmul float %".3439", %".3440"
  %"fadd.123" = fadd float %"fmul.108", %".3441"
  %".3442" = bitcast ptr %"R11" to ptr
  store float %"fadd.123", ptr %".3442"
  ; FFMA.RP R12, R9, R8, R9
  %".3445" = load float, ptr %"R9"
  %".3446" = load float, ptr %"R8"
  %".3447" = load float, ptr %"R9"
  %"fmul.109" = fmul float %".3445", %".3446"
  %"fadd.124" = fadd float %"fmul.109", %".3447"
  %".3448" = bitcast ptr %"R12" to ptr
  store float %"fadd.124", ptr %".3448"
  ; LOP3.LUT R8, R11.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".3451" = load i32, ptr %"R11"
  %".3452" = xor i1 1, -1
  %".3453" = and i32 %".3451", 8388607
  store i32 %".3453", ptr %"R8"
  ; FSETP.NEU.FTZ.AND P0, PT, R11, R12, PT
  %".3456" = load float, ptr %"R11"
  %".3457" = load float, ptr %"R12"
  %".3458" = load i1, ptr %"PT"
  %"fcmp_ordered.2" = fcmp une float %".3456", %".3457"
  %".3459" = fadd i1 %"fcmp_ordered.2", 0
  %".3460" = xor i1 %".3459", -1
  %".3461" = and i1 %"fcmp_ordered.2", %".3458"
  %".3462" = and i1 %".3460", %".3458"
  store i1 %".3461", ptr %"P0"
  ; LOP3.LUT R8, R8, 0x800000, RZ, 0xfc, !PT
  %".3465" = load i32, ptr %"R8"
  %".3466" = xor i1 1, -1
  %".3467" = or i32 %".3465", 8388608
  store i32 %".3467", ptr %"R8"
  ; SEL R9, RZ, 0xffffffff, !P0
  %".3470" = load i1, ptr %"P0"
  %".3471" = xor i1 %".3470", -1
  %".3472" = icmp eq i1 %".3471", 1
  %"sel.4" = select  i1 %".3472", i32 0, i32 4294967295
  store i32 %"sel.4", ptr %"R9"
  ; LOP3.LUT R13, R13, R8, RZ, 0xc0, !PT
  %".3475" = load i32, ptr %"R13"
  %".3476" = load i32, ptr %"R8"
  %".3477" = xor i1 1, -1
  %".3478" = and i32 %".3475", %".3476"
  store i32 %".3478", ptr %"R13"
  ; IMAD.MOV R9, RZ, RZ, -R9
  %".3481" = load i32, ptr %"R9"
  %".3482" = sub i32 0, %".3481"
  %"imad_mul.52" = mul i32 0, 0
  %"imad_add.61" = add i32 %"imad_mul.52", %".3482"
  store i32 %"imad_add.61", ptr %"R9"
  ; SHF.R.U32.HI R13, RZ, R18, R13
  %".3485" = load i32, ptr %"R18"
  %".3486" = icmp ult i32 %".3485", 32
  %"SHF_min.30" = select  i1 %".3486", i32 %".3485", i32 32
  %".3487" = load i32, ptr %"R13"
  %".3488" = load i32, ptr %"R18"
  %"zext.210" = zext i32 %".3487" to i64
  %"zext.211" = zext i32 0 to i64
  %"zext.212" = zext i32 %".3488" to i64
  %"shl.112" = shl i64 %"zext.210", 32
  %"or.90" = or i64 %"shl.112", %"zext.211"
  %"lshr.19" = lshr i64 %"or.90", %"zext.212"
  %"lshr.20" = lshr i64 %"lshr.19", 32
  %"trunc32.66" = trunc i64 %"lshr.20" to i32
  store i32 %"trunc32.66", ptr %"R13"
  ; LOP3.LUT P1, RZ, R9, R18, R8, 0xf8, !PT
  %".3491" = load i32, ptr %"R9"
  %".3492" = load i32, ptr %"R18"
  %".3493" = load i32, ptr %"R8"
  %".3494" = xor i1 1, -1
  %".3495" = or i32 %".3491", %".3492"
  %".3496" = or i32 %".3491", %".3493"
  %".3497" = and i32 %".3495", %".3496"
  store i32 %".3497", ptr %"RZ"
  %".3499" = icmp ne i32 %".3497", 0
  store i1 %".3499", ptr %"P1"
  ; LOP3.LUT P0, RZ, R13.reuse, 0x1, RZ, 0xc0, !PT
  %".3502" = load i32, ptr %"R13"
  %".3503" = xor i1 1, -1
  %".3504" = and i32 %".3502", 1
  store i32 %".3504", ptr %"RZ"
  %".3506" = icmp ne i32 %".3504", 0
  store i1 %".3506", ptr %"P0"
  ; LOP3.LUT P2, RZ, R13, 0x2, RZ, 0xc0, !PT
  %".3509" = load i32, ptr %"R13"
  %".3510" = xor i1 1, -1
  %".3511" = and i32 %".3509", 2
  store i32 %".3511", ptr %"RZ"
  %".3513" = icmp ne i32 %".3511", 0
  store i1 %".3513", ptr %"P2"
  ; IADD3 R9, R16, -0xfc, RZ
  %".3516" = load i32, ptr %"R16"
  %".3517" = add i32 %".3516", -252
  %".3518" = add i32 %".3517", 0
  store i32 %".3518", ptr %"R9"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3521" = load i1, ptr %"P0"
  %".3522" = load i1, ptr %"P1"
  %".3523" = or i1 %".3521", %".3522"
  %".3524" = and i1 %".3523", 1
  ; LOP3.LUT P1, RZ, R15, 0x7fffff, RZ, 0xc0, !PT
  %".3526" = load i32, ptr %"R15"
  %".3527" = xor i1 1, -1
  %".3528" = and i32 %".3526", 8388607
  store i32 %".3528", ptr %"RZ"
  %".3530" = icmp ne i32 %".3528", 0
  store i1 %".3530", ptr %"P1"
  ; SEL R0, RZ, 0x1, !P0
  %".3533" = load i1, ptr %"P0"
  %".3534" = xor i1 %".3533", -1
  %".3535" = icmp eq i1 %".3534", 1
  %"sel.5" = select  i1 %".3535", i32 0, i32 1
  store i32 %"sel.5", ptr %"R0"
  ; IADD3 R0, -R0, RZ, RZ
  %".3538" = load i32, ptr %"R0"
  %".3539" = sub i32 0, %".3538"
  %".3540" = add i32 %".3539", 0
  %".3541" = add i32 %".3540", 0
  store i32 %".3541", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, RZ, PT
  %".3544" = load i32, ptr %"R0"
  %".3545" = load i1, ptr %"PT"
  %"cmp.22" = icmp sge i32 %".3544", 0
  %".3546" = add i1 %"cmp.22", 0
  %".3547" = xor i1 %".3546", -1
  %".3548" = and i1 %"cmp.22", %".3545"
  %".3549" = and i1 %".3547", %".3545"
  store i1 %".3548", ptr %"P0"
  ; SHF.R.U32.HI R0, RZ, R9, R8
  %".3552" = load i32, ptr %"R9"
  %".3553" = icmp ult i32 %".3552", 32
  %"SHF_min.31" = select  i1 %".3553", i32 %".3552", i32 32
  %".3554" = load i32, ptr %"R8"
  %".3555" = load i32, ptr %"R9"
  %"zext.213" = zext i32 %".3554" to i64
  %"zext.214" = zext i32 0 to i64
  %"zext.215" = zext i32 %".3555" to i64
  %"shl.113" = shl i64 %"zext.213", 32
  %"or.91" = or i64 %"shl.113", %"zext.214"
  %"lshr.21" = lshr i64 %"or.91", %"zext.215"
  %"lshr.22" = lshr i64 %"lshr.21", 32
  %"trunc32.67" = trunc i64 %"lshr.22" to i32
  store i32 %"trunc32.67", ptr %"R0"
  ; @!P0 IADD3 R0, R0, 0x1, RZ
  %".3558" = load i1, ptr %"P0"
  %".3559" = icmp ne i1 %".3558", 1
  br i1 %".3559", label %".L_x_21_split_0x1a90...3_conditionalExpr_0x1c30", label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...3"
.L_x_21_split_0x1a90...3_conditionalExpr_0x1c30:
  ; IADD3 R0, R0, 0x1, RZ
  %".3562" = load i32, ptr %"R0"
  %".3563" = add i32 %".3562", 1
  %".3564" = add i32 %".3563", 0
  store i32 %".3564", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3)
  br label %".L_x_21_split_0x1a90_conditionalExpr_0x1c30...3"
.L_x_21_split_0x1a90_conditionalExpr_0x1c30...3:
  ; IADD3 R0, R0, 0x1, RZ
  %".3569" = load i32, ptr %"R0"
  %".3570" = add i32 %".3569", 1
  %".3571" = add i32 %".3570", 0
  store i32 %".3571", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40)
  br label %".L_x_21_split_0x1c40...3"
.L_x_21_split_0x1c40...3:
  ; @!P1 IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3576" = load i1, ptr %"P1"
  %".3577" = icmp ne i1 %".3576", 1
  br i1 %".3577", label %".L_x_21_split_0x1c40...3_conditionalExpr_0x1c40", label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...3"
.L_x_21_split_0x1c40...3_conditionalExpr_0x1c40:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3580" = load i32, ptr %"R0"
  %"imad_shl.9" = shl i32 %".3580", 2
  %"imad_add.62" = add i32 %"imad_shl.9", 0
  store i32 %"imad_add.62", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3)
  br label %".L_x_21_split_0x1c40_conditionalExpr_0x1c40...3"
.L_x_21_split_0x1c40_conditionalExpr_0x1c40...3:
  ; IMAD.SHL.U32 R0, R0, 0x2, RZ
  %".3585" = load i32, ptr %"R0"
  %"imad_shl.10" = shl i32 %".3585", 2
  %"imad_add.63" = add i32 %"imad_shl.10", 0
  store i32 %"imad_add.63", ptr %"R0"
  ; BRA `(.L_x_21_split_0x1c50)
  br label %".L_x_21_split_0x1c50...3"
.L_x_21_split_0x1c50...3:
  ; LOP3.LUT R0, R0, 0x80000000, R15, 0xf8, !PT
  %".3590" = load i32, ptr %"R0"
  %".3591" = load i32, ptr %"R15"
  %".3592" = xor i1 1, -1
  %".3593" = or i32 %".3590", 2147483648
  %".3594" = or i32 %".3590", %".3591"
  %".3595" = and i32 %".3593", %".3594"
  store i32 %".3595", ptr %"R0"
  ; BRA `(.L_x_22)
  br label %".L_x_22...3"
.L_x_23...3:
  ; MUFU.RCP R0, R15
  %".3600" = load i32, ptr %"R15"
  %"sint_to_f32.8" = sitofp i32 %".3600" to float
  %".3601" = fdiv float 0x3ff0000000000000, %"sint_to_f32.8"
  %".3602" = fptosi float %".3601" to i32
  store i32 %".3602", ptr %"R0"
  br label %".L_x_22...3"
.L_x_22...3:
  ; BSYNC B1
  br label %".L_x_20...3"
.L_x_20...3:
  ; MOV R8, R14
  %".3608" = load i32, ptr %"R14"
  store i32 %".3608", ptr %"R8"
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
  %".3620" = load float, ptr %"R5"
  %".3621" = fdiv float 0x3ff0000000000000, %".3620"
  %".3622" = bitcast ptr %"R0" to ptr
  store float %".3621", ptr %".3622"
  ; FFMA R4, R5, R0, -1
  %".3625" = load float, ptr %"R5"
  %".3626" = load float, ptr %"R0"
  %"fmul.110" = fmul float %".3625", %".3626"
  %"fadd.125" = fadd float %"fmul.110", 0xbff0000000000000
  %".3627" = bitcast ptr %"R4" to ptr
  store float %"fadd.125", ptr %".3627"
  ; FADD.FTZ R9, -R4, -RZ
  %".3630" = load float, ptr %"R4"
  %".3631" = fneg float %".3630"
  %"fadd.126" = fadd float %".3631",              0x0
  %".3632" = bitcast ptr %"R9" to ptr
  store float %"fadd.126", ptr %".3632"
  ; FFMA R0, R0, R9, R0
  %".3635" = load float, ptr %"R0"
  %".3636" = load float, ptr %"R9"
  %".3637" = load float, ptr %"R0"
  %"fmul.111" = fmul float %".3635", %".3636"
  %"fadd.127" = fadd float %"fmul.111", %".3637"
  %".3638" = bitcast ptr %"R0" to ptr
  store float %"fadd.127", ptr %".3638"
  br label %".L_x_19"
.L_x_19:
  ; BSYNC B0
  br label %".L_x_17"
.L_x_17:
  ; FMUL R7, R0, R7
  %".3644" = load float, ptr %"R0"
  %".3645" = load float, ptr %"R7"
  %"fmul.112" = fmul float %".3644", %".3645"
  %".3646" = bitcast ptr %"R7" to ptr
  store float %"fmul.112", ptr %".3646"
  ; ULDC.64 UR4, c[0x0][0x198]
  %".3649" = ptrtoint ptr %"Arg_7" to i64
  %".3650" = and i64 %".3649", 18446744069414584320
  %".3651" = lshr i64 %".3650", 32
  %"trunc32.68" = trunc i64 %".3651" to i32
  %"trunc32.69" = trunc i64 %".3649" to i32
  store i32 %"trunc32.69", ptr %"UR4"
  store i32 %"trunc32.68", ptr %"UR5"
  ; STG.E.SYS [R2.64+UR4], R7
  %".3655" = load float, ptr %"R7"
  %".3656" = load i32, ptr %"R2"
  %"zext.216" = zext i32 %".3656" to i64
  %".3657" = load i32, ptr %"R3"
  %"zext.217" = zext i32 %".3657" to i64
  %"shl.114" = shl i64 %"zext.217", 32
  %"or.92" = or i64 %"shl.114", %"zext.216"
  %"inttoptr_bytes.60" = inttoptr i64 %"or.92" to ptr addrspace(1)
  %"ptr_cast_for_access.60" = bitcast ptr addrspace(1) %"inttoptr_bytes.60" to ptr addrspace(1)
  store float %".3655", ptr addrspace(1) %"ptr_cast_for_access.60"
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

