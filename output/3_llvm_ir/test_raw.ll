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

define ptx_kernel void @"_Z15fc_layer_simplePfS_S_S_ii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", i32 %"Arg_4", i32 %"Arg_5")
{
Entry_.text._Z15fc_layer_simplePfS_S_S_ii:
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
  %"R8" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
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
  %"R40" = alloca i32, i32 1
  %"R41" = alloca i32, i32 1
  %"R42" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
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
  %"UR6" = alloca i32, i32 1
  %"UR7" = alloca i32, i32 1
  %"UR8" = alloca i32, i32 1
  %"UR9" = alloca i32, i32 1
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
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R0, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R0"
  ; S2R R3, SR_TID.X
  %"nvvm_threadidx_x" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"nvvm_threadidx_x", ptr %"R3"
  ; IMAD R0, R0, c[0x0][0x0], R3
  %".20" = load i32, ptr %"R0"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".21" = load i32, ptr %"R3"
  %"mul" = mul i32 %".20", %"nvvm_blockdim_x"
  %"add" = add i32 %"mul", %".21"
  store i32 %"add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x184], PT
  %".24" = load i32, ptr %"R0"
  %".25" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".24", %"Arg_5"
  %".26" = add i1 %"cmp", 0
  %".27" = xor i1 %".26", -1
  %".28" = and i1 %"cmp", %".25"
  %".29" = and i1 %".27", %".25"
  store i1 %".28", ptr %"P0"
  ; @P0 EXIT
  %".32" = load i1, ptr %"P0"
  %".33" = icmp eq i1 %".32", 1
  br i1 %".33", label %".text._Z15fc_layer_simplePfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060"
.text._Z15fc_layer_simplePfS_S_S_ii_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060:
  ; MOV R4, c[0x0][0x180]
  store i32 %"Arg_4", ptr %"R4"
  ; IMAD.MOV.U32 R7, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R7"
  ; ISETP.GE.AND P0, PT, R4, 0x2, PT
  %".42" = load i32, ptr %"R4"
  %".43" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".42", 2
  %".44" = add i1 %"cmp.1", 0
  %".45" = xor i1 %".44", -1
  %".46" = and i1 %"cmp.1", %".43"
  %".47" = and i1 %".45", %".43"
  store i1 %".46", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".50" = load i1, ptr %"P0"
  %".51" = icmp ne i1 %".50", 1
  br i1 %".51", label %".L_x_0", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x2, RZ
  %".54" = load i32, ptr %"R4"
  %".55" = add i32 %".54", -2
  %".56" = add i32 %".55", 0
  store i32 %".56", ptr %"R2"
  ; IMAD.MOV.U32 R5, RZ, RZ, RZ
  %"mul.2" = mul i32 0, 0
  %"add.2" = add i32 %"mul.2", 0
  store i32 %"add.2", ptr %"R5"
  ; IADD3 R4, R4, -0x1, RZ
  %".61" = load i32, ptr %"R4"
  %".62" = add i32 %".61", -1
  %".63" = add i32 %".62", 0
  store i32 %".63", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".66" = load i32, ptr %"R2"
  %".67" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".66", 3
  %".68" = add i1 %"cmp.2", 0
  %".69" = xor i1 %".68", -1
  %".70" = and i1 %"cmp.2", %".67"
  %".71" = and i1 %".69", %".67"
  store i1 %".70", ptr %"P0"
  ; MOV R7, RZ
  %".74" = load float, ptr %"RZ"
  %".75" = bitcast ptr %"R7" to ptr
  store float %".74", ptr %".75"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".78" = load i32, ptr %"R4"
  %".79" = xor i1 1, -1
  %".80" = and i32 %".78", 3
  store i32 %".80", ptr %"R4"
  ; @!P0 BRA `(.L_x_1)
  %".83" = load i1, ptr %"P0"
  %".84" = icmp ne i1 %".83", 1
  br i1 %".84", label %".L_x_1", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".87" = load i32, ptr %"R4"
  %".88" = sub i32 0, %".87"
  %".89" = add i32 %".88", %"Arg_4"
  %".90" = add i32 %".89", 0
  store i32 %".90", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".93" = load i32, ptr %"R0"
  %"mul.3" = mul i32 %".93", %"Arg_4"
  %"add.3" = add i32 %"mul.3", 0
  store i32 %"add.3", ptr %"R2"
  ; MOV R3, 0x4
  store i32 4, ptr %"R3"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".98" = ptrtoint ptr %"Arg_0" to i64
  %".99" = and i64 %".98", 18446744069414584320
  %".100" = lshr i64 %".99", 32
  %"trunc32" = trunc i64 %".100" to i32
  %"trunc32.1" = trunc i64 %".98" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; ISETP.GT.AND P0, PT, R6, 0x1, PT
  %".104" = load i32, ptr %"R6"
  %".105" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".104", 1
  %".106" = add i1 %"cmp.3", 0
  %".107" = xor i1 %".106", -1
  %".108" = and i1 %"cmp.3", %".105"
  %".109" = and i1 %".107", %".105"
  store i1 %".108", ptr %"P0"
  ; IMAD.MOV.U32 R5, RZ, RZ, RZ
  %"mul.4" = mul i32 0, 0
  %"add.4" = add i32 %"mul.4", 0
  store i32 %"add.4", ptr %"R5"
  ; MOV R7, RZ
  %".114" = load float, ptr %"RZ"
  %".115" = bitcast ptr %"R7" to ptr
  store float %".114", ptr %".115"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".118" = load i32, ptr %"R2"
  %".119" = load i32, ptr %"R3"
  %"zext" = zext i32 %".118" to i64
  %"zext.1" = zext i32 %".119" to i64
  %"mul.5" = mul i64 %"zext", %"zext.1"
  %".120" = ptrtoint ptr %"Arg_1" to i64
  %"add.5" = add i64 %"mul.5", %".120"
  %".121" = and i64 %"add.5", 18446744069414584320
  %".122" = lshr i64 %".121", 32
  %"trunc32.2" = trunc i64 %".122" to i32
  %"trunc32.3" = trunc i64 %"add.5" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; @!P0 BRA `(.L_x_2)
  %".126" = load i1, ptr %"P0"
  %".127" = icmp ne i1 %".126", 1
  br i1 %".127", label %".L_x_2", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0:
  ; IADD3 R8, R6, -0x1, RZ
  %".130" = load i32, ptr %"R6"
  %".131" = add i32 %".130", -1
  %".132" = add i32 %".131", 0
  store i32 %".132", ptr %"R8"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".135" = and i1 1, 1
  %".136" = and i1 %".135", 1
  ; ISETP.GT.AND P1, PT, R8, 0xc, PT
  %".138" = load i32, ptr %"R8"
  %".139" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".138", 12
  %".140" = add i1 %"cmp.4", 0
  %".141" = xor i1 %".140", -1
  %".142" = and i1 %"cmp.4", %".139"
  %".143" = and i1 %".141", %".139"
  store i1 %".142", ptr %"P1"
  ; @!P1 BRA `(.L_x_3)
  %".146" = load i1, ptr %"P1"
  %".147" = icmp ne i1 %".146", 1
  br i1 %".147", label %".L_x_3", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".150" = xor i1 1, 1
  %".151" = and i1 %".150", 1
  %".152" = and i1 %".151", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".155" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".155" to i64
  %".156" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".156" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".157" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".158" = bitcast ptr %"R8" to ptr
  store float %".157", ptr %".158"
  ; LDG.E.SYS R9, [UR4]
  %".161" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".161" to i64
  %".162" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".162" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".163" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".164" = bitcast ptr %"R9" to ptr
  store float %".163", ptr %".164"
  ; LDG.E.SYS R11, [R2+0x4]
  %".167" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".167" to i64
  %".168" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".168" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".169" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".170" = bitcast ptr %"R11" to ptr
  store float %".169", ptr %".170"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".173" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".173" to i64
  %".174" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".174" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %"ptr_plus_imm.1" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".175" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".176" = bitcast ptr %"R10" to ptr
  store float %".175", ptr %".176"
  ; LDG.E.SYS R13, [R2+0x8]
  %".179" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".179" to i64
  %".180" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".180" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %"ptr_plus_imm.2" = add i64 %"or.4", 8
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".181" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".182" = bitcast ptr %"R13" to ptr
  store float %".181", ptr %".182"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".185" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".185" to i64
  %".186" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".186" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %"ptr_plus_imm.3" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".187" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".188" = bitcast ptr %"R12" to ptr
  store float %".187", ptr %".188"
  ; LDG.E.SYS R15, [R2+0xc]
  %".191" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".191" to i64
  %".192" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".192" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %"ptr_plus_imm.4" = add i64 %"or.6", 12
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".193" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".194" = bitcast ptr %"R15" to ptr
  store float %".193", ptr %".194"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".197" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".197" to i64
  %".198" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".198" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %"ptr_plus_imm.5" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".199" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".200" = bitcast ptr %"R14" to ptr
  store float %".199", ptr %".200"
  ; LDG.E.SYS R17, [R2+0x10]
  %".203" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".203" to i64
  %".204" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".204" to i64
  %"shl.8" = shl i64 %"zext.19", 32
  %"or.8" = or i64 %"shl.8", %"zext.18"
  %"ptr_plus_imm.6" = add i64 %"or.8", 16
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".205" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".206" = bitcast ptr %"R17" to ptr
  store float %".205", ptr %".206"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".209" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".209" to i64
  %".210" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".210" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %"ptr_plus_imm.7" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".211" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".212" = bitcast ptr %"R16" to ptr
  store float %".211", ptr %".212"
  ; LDG.E.SYS R19, [R2+0x14]
  %".215" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".215" to i64
  %".216" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".216" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %"ptr_plus_imm.8" = add i64 %"or.10", 20
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".217" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".218" = bitcast ptr %"R19" to ptr
  store float %".217", ptr %".218"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".221" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".221" to i64
  %".222" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".222" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %"ptr_plus_imm.9" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".223" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".224" = bitcast ptr %"R18" to ptr
  store float %".223", ptr %".224"
  ; LDG.E.SYS R21, [R2+0x18]
  %".227" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".227" to i64
  %".228" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".228" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %"ptr_plus_imm.10" = add i64 %"or.12", 24
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".229" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".230" = bitcast ptr %"R21" to ptr
  store float %".229", ptr %".230"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".233" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".233" to i64
  %".234" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".234" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %"ptr_plus_imm.11" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".235" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".236" = bitcast ptr %"R20" to ptr
  store float %".235", ptr %".236"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".239" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".239" to i64
  %".240" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".240" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %"ptr_plus_imm.12" = add i64 %"or.14", 28
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".241" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".242" = bitcast ptr %"R23" to ptr
  store float %".241", ptr %".242"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".245" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".245" to i64
  %".246" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".246" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %"ptr_plus_imm.13" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".247" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".248" = bitcast ptr %"R22" to ptr
  store float %".247", ptr %".248"
  ; LDG.E.SYS R25, [R2+0x20]
  %".251" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".251" to i64
  %".252" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".252" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %"ptr_plus_imm.14" = add i64 %"or.16", 32
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".253" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".254" = bitcast ptr %"R25" to ptr
  store float %".253", ptr %".254"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".257" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".257" to i64
  %".258" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".258" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %"ptr_plus_imm.15" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".259" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".260" = bitcast ptr %"R24" to ptr
  store float %".259", ptr %".260"
  ; LDG.E.SYS R27, [R2+0x24]
  %".263" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".263" to i64
  %".264" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".264" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %"ptr_plus_imm.16" = add i64 %"or.18", 36
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".265" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".266" = bitcast ptr %"R27" to ptr
  store float %".265", ptr %".266"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".269" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".269" to i64
  %".270" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".270" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %"ptr_plus_imm.17" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".271" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".272" = bitcast ptr %"R26" to ptr
  store float %".271", ptr %".272"
  ; LDG.E.SYS R29, [R2+0x28]
  %".275" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".275" to i64
  %".276" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".276" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %"ptr_plus_imm.18" = add i64 %"or.20", 40
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".277" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".278" = bitcast ptr %"R29" to ptr
  store float %".277", ptr %".278"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".281" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".281" to i64
  %".282" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".282" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %"ptr_plus_imm.19" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".283" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".284" = bitcast ptr %"R28" to ptr
  store float %".283", ptr %".284"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".287" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".287" to i64
  %".288" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".288" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %"ptr_plus_imm.20" = add i64 %"or.22", 44
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".289" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".290" = bitcast ptr %"R31" to ptr
  store float %".289", ptr %".290"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".293" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".293" to i64
  %".294" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".294" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %"ptr_plus_imm.21" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".295" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".296" = bitcast ptr %"R30" to ptr
  store float %".295", ptr %".296"
  ; LDG.E.SYS R33, [R2+0x30]
  %".299" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".299" to i64
  %".300" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".300" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %"ptr_plus_imm.22" = add i64 %"or.24", 48
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".301" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".302" = bitcast ptr %"R33" to ptr
  store float %".301", ptr %".302"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".305" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".305" to i64
  %".306" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".306" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %"ptr_plus_imm.23" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".307" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".308" = bitcast ptr %"R32" to ptr
  store float %".307", ptr %".308"
  ; LDG.E.SYS R35, [R2+0x34]
  %".311" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".311" to i64
  %".312" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".312" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %"ptr_plus_imm.24" = add i64 %"or.26", 52
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".313" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".314" = bitcast ptr %"R35" to ptr
  store float %".313", ptr %".314"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".317" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".317" to i64
  %".318" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".318" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %"ptr_plus_imm.25" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".319" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".320" = bitcast ptr %"R34" to ptr
  store float %".319", ptr %".320"
  ; LDG.E.SYS R37, [R2+0x38]
  %".323" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".323" to i64
  %".324" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".324" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %"ptr_plus_imm.26" = add i64 %"or.28", 56
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".325" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".326" = bitcast ptr %"R37" to ptr
  store float %".325", ptr %".326"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".329" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".329" to i64
  %".330" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".330" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %"ptr_plus_imm.27" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".331" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".332" = bitcast ptr %"R36" to ptr
  store float %".331", ptr %".332"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".335" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".335" to i64
  %".336" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".336" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %"ptr_plus_imm.28" = add i64 %"or.30", 60
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".337" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".338" = bitcast ptr %"R39" to ptr
  store float %".337", ptr %".338"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".341" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".341" to i64
  %".342" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".342" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %"ptr_plus_imm.29" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".343" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".344" = bitcast ptr %"R38" to ptr
  store float %".343", ptr %".344"
  ; IADD3 R6, R6, -0x10, RZ
  %".347" = load i32, ptr %"R6"
  %".348" = add i32 %".347", -16
  %".349" = add i32 %".348", 0
  store i32 %".349", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".352" = load i32, ptr %"UR4"
  %".353" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".352", i32 64)
  %".354" = extractvalue {i32, i1} %".353", 0
  %".355" = extractvalue {i32, i1} %".353", 1
  %".356" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".354", i32 0)
  %".357" = extractvalue {i32, i1} %".356", 0
  %".358" = extractvalue {i32, i1} %".356", 1
  %".359" = or i1 %".355", %".358"
  store i32 %".357", ptr %"UR4"
  store i1 %".359", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".363" = load i32, ptr %"R5"
  %".364" = add i32 %".363", 16
  %".365" = add i32 %".364", 0
  store i32 %".365", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xd, PT
  %".368" = load i32, ptr %"R6"
  %".369" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".368", 13
  %".370" = add i1 %"cmp.5", 0
  %".371" = xor i1 %".370", -1
  %".372" = and i1 %"cmp.5", %".369"
  %".373" = and i1 %".371", %".369"
  store i1 %".372", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".376" = load i32, ptr %"UR5"
  %".377" = load i1, ptr %"UP0"
  %".378" = xor i1 1, -1
  %".379" = zext i1 %".377" to i32
  %".380" = zext i1 %".378" to i32
  %"add.6" = add i32 0, %".376"
  %"add.7" = add i32 %"add.6", 0
  %"add.8" = add i32 %"add.7", %".379"
  %"add.9" = add i32 %"add.8", %".380"
  store i32 %"add.9", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".383" = load i32, ptr %"R2"
  %".384" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".383", i32 64)
  %".385" = extractvalue {i32, i1} %".384", 0
  %".386" = extractvalue {i32, i1} %".384", 1
  %".387" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".385", i32 0)
  %".388" = extractvalue {i32, i1} %".387", 0
  %".389" = extractvalue {i32, i1} %".387", 1
  %".390" = or i1 %".386", %".389"
  store i32 %".388", ptr %"R2"
  store i1 %".390", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P2, !PT
  %".394" = load i32, ptr %"R3"
  %".395" = load i1, ptr %"P2"
  %".396" = xor i1 1, -1
  %".397" = zext i1 %".395" to i32
  %".398" = zext i1 %".396" to i32
  %"add.10" = add i32 0, %".394"
  %"add.11" = add i32 %"add.10", 0
  %"add.12" = add i32 %"add.11", %".397"
  %"add.13" = add i32 %"add.12", %".398"
  store i32 %"add.13", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".401" = load float, ptr %"R8"
  %".402" = load float, ptr %"R9"
  %".403" = load float, ptr %"R7"
  %"fmul" = fmul float %".401", %".402"
  %"fadd" = fadd float %"fmul", %".403"
  %".404" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".404"
  ; FFMA R8, R11, R10, R8
  %".407" = load float, ptr %"R11"
  %".408" = load float, ptr %"R10"
  %".409" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".407", %".408"
  %"fadd.1" = fadd float %"fmul.1", %".409"
  %".410" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".410"
  ; FFMA R8, R13, R12, R8
  %".413" = load float, ptr %"R13"
  %".414" = load float, ptr %"R12"
  %".415" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".413", %".414"
  %"fadd.2" = fadd float %"fmul.2", %".415"
  %".416" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".416"
  ; FFMA R8, R15, R14, R8
  %".419" = load float, ptr %"R15"
  %".420" = load float, ptr %"R14"
  %".421" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".419", %".420"
  %"fadd.3" = fadd float %"fmul.3", %".421"
  %".422" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".422"
  ; FFMA R8, R17, R16, R8
  %".425" = load float, ptr %"R17"
  %".426" = load float, ptr %"R16"
  %".427" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".425", %".426"
  %"fadd.4" = fadd float %"fmul.4", %".427"
  %".428" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".428"
  ; FFMA R8, R19, R18, R8
  %".431" = load float, ptr %"R19"
  %".432" = load float, ptr %"R18"
  %".433" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".431", %".432"
  %"fadd.5" = fadd float %"fmul.5", %".433"
  %".434" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".434"
  ; FFMA R8, R21, R20, R8
  %".437" = load float, ptr %"R21"
  %".438" = load float, ptr %"R20"
  %".439" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".437", %".438"
  %"fadd.6" = fadd float %"fmul.6", %".439"
  %".440" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".440"
  ; FFMA R8, R23, R22, R8
  %".443" = load float, ptr %"R23"
  %".444" = load float, ptr %"R22"
  %".445" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".443", %".444"
  %"fadd.7" = fadd float %"fmul.7", %".445"
  %".446" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".446"
  ; FFMA R8, R25, R24, R8
  %".449" = load float, ptr %"R25"
  %".450" = load float, ptr %"R24"
  %".451" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".449", %".450"
  %"fadd.8" = fadd float %"fmul.8", %".451"
  %".452" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".452"
  ; FFMA R8, R27, R26, R8
  %".455" = load float, ptr %"R27"
  %".456" = load float, ptr %"R26"
  %".457" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".455", %".456"
  %"fadd.9" = fadd float %"fmul.9", %".457"
  %".458" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".458"
  ; FFMA R8, R29, R28, R8
  %".461" = load float, ptr %"R29"
  %".462" = load float, ptr %"R28"
  %".463" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".461", %".462"
  %"fadd.10" = fadd float %"fmul.10", %".463"
  %".464" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".464"
  ; FFMA R8, R31, R30, R8
  %".467" = load float, ptr %"R31"
  %".468" = load float, ptr %"R30"
  %".469" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".467", %".468"
  %"fadd.11" = fadd float %"fmul.11", %".469"
  %".470" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".470"
  ; FFMA R8, R33, R32, R8
  %".473" = load float, ptr %"R33"
  %".474" = load float, ptr %"R32"
  %".475" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".473", %".474"
  %"fadd.12" = fadd float %"fmul.12", %".475"
  %".476" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".476"
  ; FFMA R8, R35, R34, R8
  %".479" = load float, ptr %"R35"
  %".480" = load float, ptr %"R34"
  %".481" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".479", %".480"
  %"fadd.13" = fadd float %"fmul.13", %".481"
  %".482" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".482"
  ; FFMA R8, R37, R36, R8
  %".485" = load float, ptr %"R37"
  %".486" = load float, ptr %"R36"
  %".487" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".485", %".486"
  %"fadd.14" = fadd float %"fmul.14", %".487"
  %".488" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".488"
  ; FFMA R7, R39, R38, R8
  %".491" = load float, ptr %"R39"
  %".492" = load float, ptr %"R38"
  %".493" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".491", %".492"
  %"fadd.15" = fadd float %"fmul.15", %".493"
  %".494" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".494"
  ; @P1 BRA `(.L_x_4)
  %".497" = load i1, ptr %"P1"
  %".498" = icmp eq i1 %".497", 1
  br i1 %".498", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; IADD3 R8, R6, -0x1, RZ
  %".501" = load i32, ptr %"R6"
  %".502" = add i32 %".501", -1
  %".503" = add i32 %".502", 0
  store i32 %".503", ptr %"R8"
  ; ISETP.GT.AND P1, PT, R8, 0x4, PT
  %".506" = load i32, ptr %"R8"
  %".507" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".506", 4
  %".508" = add i1 %"cmp.6", 0
  %".509" = xor i1 %".508", -1
  %".510" = and i1 %"cmp.6", %".507"
  %".511" = and i1 %".509", %".507"
  store i1 %".510", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".514" = load i1, ptr %"P1"
  %".515" = icmp ne i1 %".514", 1
  br i1 %".515", label %".L_x_5", label %".L_x_3_split_0x05a0"
.L_x_3_split_0x05a0:
  ; LDG.E.SYS R8, [R2]
  %".518" = load i32, ptr %"R2"
  %"zext.66" = zext i32 %".518" to i64
  %".519" = load i32, ptr %"R3"
  %"zext.67" = zext i32 %".519" to i64
  %"shl.32" = shl i64 %"zext.67", 32
  %"or.32" = or i64 %"shl.32", %"zext.66"
  %"inttoptr_bytes.32" = inttoptr i64 %"or.32" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".520" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".521" = bitcast ptr %"R8" to ptr
  store float %".520", ptr %".521"
  ; LDG.E.SYS R9, [UR4]
  %".524" = load i32, ptr %"UR4"
  %"zext.68" = zext i32 %".524" to i64
  %".525" = load i32, ptr %"UR5"
  %"zext.69" = zext i32 %".525" to i64
  %"shl.33" = shl i64 %"zext.69", 32
  %"or.33" = or i64 %"shl.33", %"zext.68"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".526" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".527" = bitcast ptr %"R9" to ptr
  store float %".526", ptr %".527"
  ; LDG.E.SYS R11, [R2+0x4]
  %".530" = load i32, ptr %"R2"
  %"zext.70" = zext i32 %".530" to i64
  %".531" = load i32, ptr %"R3"
  %"zext.71" = zext i32 %".531" to i64
  %"shl.34" = shl i64 %"zext.71", 32
  %"or.34" = or i64 %"shl.34", %"zext.70"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".532" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".533" = bitcast ptr %"R11" to ptr
  store float %".532", ptr %".533"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".536" = load i32, ptr %"UR4"
  %"zext.72" = zext i32 %".536" to i64
  %".537" = load i32, ptr %"UR5"
  %"zext.73" = zext i32 %".537" to i64
  %"shl.35" = shl i64 %"zext.73", 32
  %"or.35" = or i64 %"shl.35", %"zext.72"
  %"ptr_plus_imm.31" = add i64 %"or.35", 4
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".538" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".539" = bitcast ptr %"R10" to ptr
  store float %".538", ptr %".539"
  ; LDG.E.SYS R13, [R2+0x8]
  %".542" = load i32, ptr %"R2"
  %"zext.74" = zext i32 %".542" to i64
  %".543" = load i32, ptr %"R3"
  %"zext.75" = zext i32 %".543" to i64
  %"shl.36" = shl i64 %"zext.75", 32
  %"or.36" = or i64 %"shl.36", %"zext.74"
  %"ptr_plus_imm.32" = add i64 %"or.36", 8
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".544" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".545" = bitcast ptr %"R13" to ptr
  store float %".544", ptr %".545"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".548" = load i32, ptr %"UR4"
  %"zext.76" = zext i32 %".548" to i64
  %".549" = load i32, ptr %"UR5"
  %"zext.77" = zext i32 %".549" to i64
  %"shl.37" = shl i64 %"zext.77", 32
  %"or.37" = or i64 %"shl.37", %"zext.76"
  %"ptr_plus_imm.33" = add i64 %"or.37", 8
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".550" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".551" = bitcast ptr %"R12" to ptr
  store float %".550", ptr %".551"
  ; LDG.E.SYS R15, [R2+0xc]
  %".554" = load i32, ptr %"R2"
  %"zext.78" = zext i32 %".554" to i64
  %".555" = load i32, ptr %"R3"
  %"zext.79" = zext i32 %".555" to i64
  %"shl.38" = shl i64 %"zext.79", 32
  %"or.38" = or i64 %"shl.38", %"zext.78"
  %"ptr_plus_imm.34" = add i64 %"or.38", 12
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".556" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".557" = bitcast ptr %"R15" to ptr
  store float %".556", ptr %".557"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".560" = load i32, ptr %"UR4"
  %"zext.80" = zext i32 %".560" to i64
  %".561" = load i32, ptr %"UR5"
  %"zext.81" = zext i32 %".561" to i64
  %"shl.39" = shl i64 %"zext.81", 32
  %"or.39" = or i64 %"shl.39", %"zext.80"
  %"ptr_plus_imm.35" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".562" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".563" = bitcast ptr %"R14" to ptr
  store float %".562", ptr %".563"
  ; LDG.E.SYS R17, [R2+0x10]
  %".566" = load i32, ptr %"R2"
  %"zext.82" = zext i32 %".566" to i64
  %".567" = load i32, ptr %"R3"
  %"zext.83" = zext i32 %".567" to i64
  %"shl.40" = shl i64 %"zext.83", 32
  %"or.40" = or i64 %"shl.40", %"zext.82"
  %"ptr_plus_imm.36" = add i64 %"or.40", 16
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".568" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".569" = bitcast ptr %"R17" to ptr
  store float %".568", ptr %".569"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".572" = load i32, ptr %"UR4"
  %"zext.84" = zext i32 %".572" to i64
  %".573" = load i32, ptr %"UR5"
  %"zext.85" = zext i32 %".573" to i64
  %"shl.41" = shl i64 %"zext.85", 32
  %"or.41" = or i64 %"shl.41", %"zext.84"
  %"ptr_plus_imm.37" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".574" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".575" = bitcast ptr %"R16" to ptr
  store float %".574", ptr %".575"
  ; LDG.E.SYS R19, [R2+0x14]
  %".578" = load i32, ptr %"R2"
  %"zext.86" = zext i32 %".578" to i64
  %".579" = load i32, ptr %"R3"
  %"zext.87" = zext i32 %".579" to i64
  %"shl.42" = shl i64 %"zext.87", 32
  %"or.42" = or i64 %"shl.42", %"zext.86"
  %"ptr_plus_imm.38" = add i64 %"or.42", 20
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".580" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".581" = bitcast ptr %"R19" to ptr
  store float %".580", ptr %".581"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".584" = load i32, ptr %"UR4"
  %"zext.88" = zext i32 %".584" to i64
  %".585" = load i32, ptr %"UR5"
  %"zext.89" = zext i32 %".585" to i64
  %"shl.43" = shl i64 %"zext.89", 32
  %"or.43" = or i64 %"shl.43", %"zext.88"
  %"ptr_plus_imm.39" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".586" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".587" = bitcast ptr %"R18" to ptr
  store float %".586", ptr %".587"
  ; LDG.E.SYS R21, [R2+0x18]
  %".590" = load i32, ptr %"R2"
  %"zext.90" = zext i32 %".590" to i64
  %".591" = load i32, ptr %"R3"
  %"zext.91" = zext i32 %".591" to i64
  %"shl.44" = shl i64 %"zext.91", 32
  %"or.44" = or i64 %"shl.44", %"zext.90"
  %"ptr_plus_imm.40" = add i64 %"or.44", 24
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".592" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".593" = bitcast ptr %"R21" to ptr
  store float %".592", ptr %".593"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".596" = load i32, ptr %"UR4"
  %"zext.92" = zext i32 %".596" to i64
  %".597" = load i32, ptr %"UR5"
  %"zext.93" = zext i32 %".597" to i64
  %"shl.45" = shl i64 %"zext.93", 32
  %"or.45" = or i64 %"shl.45", %"zext.92"
  %"ptr_plus_imm.41" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".598" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".599" = bitcast ptr %"R20" to ptr
  store float %".598", ptr %".599"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".602" = load i32, ptr %"R2"
  %"zext.94" = zext i32 %".602" to i64
  %".603" = load i32, ptr %"R3"
  %"zext.95" = zext i32 %".603" to i64
  %"shl.46" = shl i64 %"zext.95", 32
  %"or.46" = or i64 %"shl.46", %"zext.94"
  %"ptr_plus_imm.42" = add i64 %"or.46", 28
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".604" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".605" = bitcast ptr %"R23" to ptr
  store float %".604", ptr %".605"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".608" = load i32, ptr %"UR4"
  %"zext.96" = zext i32 %".608" to i64
  %".609" = load i32, ptr %"UR5"
  %"zext.97" = zext i32 %".609" to i64
  %"shl.47" = shl i64 %"zext.97", 32
  %"or.47" = or i64 %"shl.47", %"zext.96"
  %"ptr_plus_imm.43" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".610" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".611" = bitcast ptr %"R22" to ptr
  store float %".610", ptr %".611"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".614" = load i32, ptr %"UR4"
  %".615" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".614", i32 32)
  %".616" = extractvalue {i32, i1} %".615", 0
  %".617" = extractvalue {i32, i1} %".615", 1
  %".618" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".616", i32 0)
  %".619" = extractvalue {i32, i1} %".618", 0
  %".620" = extractvalue {i32, i1} %".618", 1
  %".621" = or i1 %".617", %".620"
  store i32 %".619", ptr %"UR4"
  store i1 %".621", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".625" = xor i1 1, 1
  %".626" = and i1 %".625", 1
  %".627" = and i1 %".626", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".629" = load i32, ptr %"R5"
  %".630" = add i32 %".629", 8
  %".631" = add i32 %".630", 0
  store i32 %".631", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".634" = load i32, ptr %"UR5"
  %".635" = load i1, ptr %"UP0"
  %".636" = xor i1 1, -1
  %".637" = zext i1 %".635" to i32
  %".638" = zext i1 %".636" to i32
  %"add.14" = add i32 0, %".634"
  %"add.15" = add i32 %"add.14", 0
  %"add.16" = add i32 %"add.15", %".637"
  %"add.17" = add i32 %"add.16", %".638"
  store i32 %"add.17", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".641" = load i32, ptr %"R2"
  %".642" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".641", i32 32)
  %".643" = extractvalue {i32, i1} %".642", 0
  %".644" = extractvalue {i32, i1} %".642", 1
  %".645" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".643", i32 0)
  %".646" = extractvalue {i32, i1} %".645", 0
  %".647" = extractvalue {i32, i1} %".645", 1
  %".648" = or i1 %".644", %".647"
  store i32 %".646", ptr %"R2"
  store i1 %".648", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".652" = load i32, ptr %"R6"
  %".653" = add i32 %".652", -8
  %".654" = add i32 %".653", 0
  store i32 %".654", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".657" = load i32, ptr %"R3"
  %".658" = load i1, ptr %"P1"
  %".659" = xor i1 1, -1
  %".660" = zext i1 %".658" to i32
  %".661" = zext i1 %".659" to i32
  %"add.18" = add i32 0, %".657"
  %"add.19" = add i32 %"add.18", 0
  %"add.20" = add i32 %"add.19", %".660"
  %"add.21" = add i32 %"add.20", %".661"
  store i32 %"add.21", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".664" = load float, ptr %"R8"
  %".665" = load float, ptr %"R9"
  %".666" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".664", %".665"
  %"fadd.16" = fadd float %"fmul.16", %".666"
  %".667" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".667"
  ; FFMA R8, R11, R10, R8
  %".670" = load float, ptr %"R11"
  %".671" = load float, ptr %"R10"
  %".672" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".670", %".671"
  %"fadd.17" = fadd float %"fmul.17", %".672"
  %".673" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".673"
  ; FFMA R8, R13, R12, R8
  %".676" = load float, ptr %"R13"
  %".677" = load float, ptr %"R12"
  %".678" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".676", %".677"
  %"fadd.18" = fadd float %"fmul.18", %".678"
  %".679" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".679"
  ; FFMA R8, R15, R14, R8
  %".682" = load float, ptr %"R15"
  %".683" = load float, ptr %"R14"
  %".684" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".682", %".683"
  %"fadd.19" = fadd float %"fmul.19", %".684"
  %".685" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".685"
  ; FFMA R8, R17, R16, R8
  %".688" = load float, ptr %"R17"
  %".689" = load float, ptr %"R16"
  %".690" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".688", %".689"
  %"fadd.20" = fadd float %"fmul.20", %".690"
  %".691" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".691"
  ; FFMA R8, R19, R18, R8
  %".694" = load float, ptr %"R19"
  %".695" = load float, ptr %"R18"
  %".696" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".694", %".695"
  %"fadd.21" = fadd float %"fmul.21", %".696"
  %".697" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".697"
  ; FFMA R8, R21, R20, R8
  %".700" = load float, ptr %"R21"
  %".701" = load float, ptr %"R20"
  %".702" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".700", %".701"
  %"fadd.22" = fadd float %"fmul.22", %".702"
  %".703" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".703"
  ; FFMA R7, R23, R22, R8
  %".706" = load float, ptr %"R23"
  %".707" = load float, ptr %"R22"
  %".708" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".706", %".707"
  %"fadd.23" = fadd float %"fmul.23", %".708"
  %".709" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".709"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, 0x1, P0
  %".713" = load i32, ptr %"R6"
  %".714" = load i1, ptr %"P0"
  %"cmp.7" = icmp ne i32 %".713", 1
  %".715" = add i1 %"cmp.7", 0
  %".716" = xor i1 %".715", -1
  %".717" = or i1 %"cmp.7", %".714"
  %".718" = or i1 %".716", %".714"
  store i1 %".717", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".721" = load i1, ptr %"P0"
  %".722" = icmp ne i1 %".721", 1
  br i1 %".722", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".725" = load i32, ptr %"R2"
  %"zext.98" = zext i32 %".725" to i64
  %".726" = load i32, ptr %"R3"
  %"zext.99" = zext i32 %".726" to i64
  %"shl.48" = shl i64 %"zext.99", 32
  %"or.48" = or i64 %"shl.48", %"zext.98"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".727" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".728" = bitcast ptr %"R8" to ptr
  store float %".727", ptr %".728"
  ; LDG.E.SYS R9, [UR4]
  %".731" = load i32, ptr %"UR4"
  %"zext.100" = zext i32 %".731" to i64
  %".732" = load i32, ptr %"UR5"
  %"zext.101" = zext i32 %".732" to i64
  %"shl.49" = shl i64 %"zext.101", 32
  %"or.49" = or i64 %"shl.49", %"zext.100"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".733" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".734" = bitcast ptr %"R9" to ptr
  store float %".733", ptr %".734"
  ; LDG.E.SYS R11, [R2+0x4]
  %".737" = load i32, ptr %"R2"
  %"zext.102" = zext i32 %".737" to i64
  %".738" = load i32, ptr %"R3"
  %"zext.103" = zext i32 %".738" to i64
  %"shl.50" = shl i64 %"zext.103", 32
  %"or.50" = or i64 %"shl.50", %"zext.102"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".739" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".740" = bitcast ptr %"R11" to ptr
  store float %".739", ptr %".740"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".743" = load i32, ptr %"UR4"
  %"zext.104" = zext i32 %".743" to i64
  %".744" = load i32, ptr %"UR5"
  %"zext.105" = zext i32 %".744" to i64
  %"shl.51" = shl i64 %"zext.105", 32
  %"or.51" = or i64 %"shl.51", %"zext.104"
  %"ptr_plus_imm.45" = add i64 %"or.51", 4
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".745" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".746" = bitcast ptr %"R10" to ptr
  store float %".745", ptr %".746"
  ; LDG.E.SYS R13, [R2+0x8]
  %".749" = load i32, ptr %"R2"
  %"zext.106" = zext i32 %".749" to i64
  %".750" = load i32, ptr %"R3"
  %"zext.107" = zext i32 %".750" to i64
  %"shl.52" = shl i64 %"zext.107", 32
  %"or.52" = or i64 %"shl.52", %"zext.106"
  %"ptr_plus_imm.46" = add i64 %"or.52", 8
  %"inttoptr_bytes.52" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".751" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".752" = bitcast ptr %"R13" to ptr
  store float %".751", ptr %".752"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".755" = load i32, ptr %"UR4"
  %"zext.108" = zext i32 %".755" to i64
  %".756" = load i32, ptr %"UR5"
  %"zext.109" = zext i32 %".756" to i64
  %"shl.53" = shl i64 %"zext.109", 32
  %"or.53" = or i64 %"shl.53", %"zext.108"
  %"ptr_plus_imm.47" = add i64 %"or.53", 8
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".757" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".758" = bitcast ptr %"R12" to ptr
  store float %".757", ptr %".758"
  ; LDG.E.SYS R15, [R2+0xc]
  %".761" = load i32, ptr %"R2"
  %"zext.110" = zext i32 %".761" to i64
  %".762" = load i32, ptr %"R3"
  %"zext.111" = zext i32 %".762" to i64
  %"shl.54" = shl i64 %"zext.111", 32
  %"or.54" = or i64 %"shl.54", %"zext.110"
  %"ptr_plus_imm.48" = add i64 %"or.54", 12
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".763" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".764" = bitcast ptr %"R15" to ptr
  store float %".763", ptr %".764"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".767" = load i32, ptr %"UR4"
  %"zext.112" = zext i32 %".767" to i64
  %".768" = load i32, ptr %"UR5"
  %"zext.113" = zext i32 %".768" to i64
  %"shl.55" = shl i64 %"zext.113", 32
  %"or.55" = or i64 %"shl.55", %"zext.112"
  %"ptr_plus_imm.49" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".769" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".770" = bitcast ptr %"R14" to ptr
  store float %".769", ptr %".770"
  ; IADD3 R6, R6, -0x4, RZ
  %".773" = load i32, ptr %"R6"
  %".774" = add i32 %".773", -4
  %".775" = add i32 %".774", 0
  store i32 %".775", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".778" = load i32, ptr %"UR4"
  %".779" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".778", i32 16)
  %".780" = extractvalue {i32, i1} %".779", 0
  %".781" = extractvalue {i32, i1} %".779", 1
  %".782" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".780", i32 0)
  %".783" = extractvalue {i32, i1} %".782", 0
  %".784" = extractvalue {i32, i1} %".782", 1
  %".785" = or i1 %".781", %".784"
  store i32 %".783", ptr %"UR4"
  store i1 %".785", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".789" = load i32, ptr %"R5"
  %".790" = add i32 %".789", 4
  %".791" = add i32 %".790", 0
  store i32 %".791", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, 0x1, PT
  %".794" = load i32, ptr %"R6"
  %".795" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".794", 1
  %".796" = add i1 %"cmp.8", 0
  %".797" = xor i1 %".796", -1
  %".798" = and i1 %"cmp.8", %".795"
  %".799" = and i1 %".797", %".795"
  store i1 %".798", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".802" = load i32, ptr %"UR5"
  %".803" = load i1, ptr %"UP0"
  %".804" = xor i1 1, -1
  %".805" = zext i1 %".803" to i32
  %".806" = zext i1 %".804" to i32
  %"add.22" = add i32 0, %".802"
  %"add.23" = add i32 %"add.22", 0
  %"add.24" = add i32 %"add.23", %".805"
  %"add.25" = add i32 %"add.24", %".806"
  store i32 %"add.25", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".809" = load float, ptr %"R8"
  %".810" = load float, ptr %"R9"
  %".811" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".809", %".810"
  %"fadd.24" = fadd float %"fmul.24", %".811"
  %".812" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".812"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".815" = load i32, ptr %"R2"
  %".816" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".815", i32 16)
  %".817" = extractvalue {i32, i1} %".816", 0
  %".818" = extractvalue {i32, i1} %".816", 1
  %".819" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".817", i32 0)
  %".820" = extractvalue {i32, i1} %".819", 0
  %".821" = extractvalue {i32, i1} %".819", 1
  %".822" = or i1 %".818", %".821"
  store i32 %".820", ptr %"R9"
  store i1 %".822", ptr %"P1"
  ; MOV R2, R9
  %".826" = load i32, ptr %"R9"
  store i32 %".826", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".829" = load float, ptr %"R11"
  %".830" = load float, ptr %"R10"
  %".831" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".829", %".830"
  %"fadd.25" = fadd float %"fmul.25", %".831"
  %".832" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".832"
  ; IMAD.X R10, RZ, RZ, R3, P1
  %".835" = load i32, ptr %"R3"
  %".836" = load i1, ptr %"P1"
  %"mul.6" = mul i32 0, 0
  %"add.26" = add i32 %"mul.6", %".835"
  %"zext.114" = zext i1 %".836" to i32
  %"add.27" = add i32 %"add.26", %"zext.114"
  store i32 %"add.27", ptr %"R10"
  ; MOV R3, R10
  %".839" = load i32, ptr %"R10"
  store i32 %".839", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".842" = load float, ptr %"R13"
  %".843" = load float, ptr %"R12"
  %".844" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".842", %".843"
  %"fadd.26" = fadd float %"fmul.26", %".844"
  %".845" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".845"
  ; FFMA R7, R15, R14, R8
  %".848" = load float, ptr %"R15"
  %".849" = load float, ptr %"R14"
  %".850" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".848", %".849"
  %"fadd.27" = fadd float %"fmul.27", %".850"
  %".851" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".851"
  ; @P0 BRA `(.L_x_2)
  %".854" = load i1, ptr %"P0"
  %".855" = icmp eq i1 %".854", 1
  br i1 %".855", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".858" = load i32, ptr %"R4"
  %".859" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".858", 0
  %".860" = add i1 %"cmp.9", 0
  %".861" = xor i1 %".860", -1
  %".862" = and i1 %"cmp.9", %".859"
  %".863" = and i1 %".861", %".859"
  store i1 %".862", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".866" = load i1, ptr %"P0"
  %".867" = icmp ne i1 %".866", 1
  br i1 %".867", label %".L_x_0", label %".L_x_1_split_0x0930"
.L_x_1_split_0x0930:
  ; IMAD.MOV.U32 R8, RZ, RZ, 0x4
  %"mul.7" = mul i32 0, 0
  %"add.28" = add i32 %"mul.7", 4
  store i32 %"add.28", ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".872" = load i32, ptr %"R0"
  %".873" = load i32, ptr %"R5"
  %"mul.8" = mul i32 %".872", %"Arg_4"
  %"add.29" = add i32 %"mul.8", %".873"
  store i32 %"add.29", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".876" = load i32, ptr %"R2"
  %".877" = load i32, ptr %"R8"
  %"zext.115" = zext i32 %".876" to i64
  %"zext.116" = zext i32 %".877" to i64
  %"mul.9" = mul i64 %"zext.115", %"zext.116"
  %".878" = ptrtoint ptr %"Arg_1" to i64
  %"add.30" = add i64 %"mul.9", %".878"
  %".879" = and i64 %"add.30", 18446744069414584320
  %".880" = lshr i64 %".879", 32
  %"trunc32.4" = trunc i64 %".880" to i32
  %"trunc32.5" = trunc i64 %"add.30" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".884" = load i32, ptr %"R5"
  %".885" = load i32, ptr %"R8"
  %"zext.117" = zext i32 %".884" to i64
  %"zext.118" = zext i32 %".885" to i64
  %"mul.10" = mul i64 %"zext.117", %"zext.118"
  %".886" = ptrtoint ptr %"Arg_0" to i64
  %"add.31" = add i64 %"mul.10", %".886"
  %".887" = and i64 %"add.31", 18446744069414584320
  %".888" = lshr i64 %".887", 32
  %"trunc32.6" = trunc i64 %".888" to i32
  %"trunc32.7" = trunc i64 %"add.31" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".892" = load i32, ptr %"R2"
  store i32 %".892", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; MOV R2, R6
  %".896" = load i32, ptr %"R6"
  store i32 %".896", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".899" = load i32, ptr %"R8"
  %"zext.119" = zext i32 %".899" to i64
  %".900" = load i32, ptr %"R9"
  %"zext.120" = zext i32 %".900" to i64
  %"shl.56" = shl i64 %"zext.120", 32
  %"or.56" = or i64 %"shl.56", %"zext.119"
  %"inttoptr_bytes.56" = inttoptr i64 %"or.56" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".901" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".902" = bitcast ptr %"R5" to ptr
  store float %".901", ptr %".902"
  ; LDG.E.SYS R2, [R2]
  %".905" = load i32, ptr %"R2"
  %"zext.121" = zext i32 %".905" to i64
  %".906" = load i32, ptr %"R3"
  %"zext.122" = zext i32 %".906" to i64
  %"shl.57" = shl i64 %"zext.122", 32
  %"or.57" = or i64 %"shl.57", %"zext.121"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".907" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".908" = bitcast ptr %"R2" to ptr
  store float %".907", ptr %".908"
  ; IADD3 R4, R4, -0x1, RZ
  %".911" = load i32, ptr %"R4"
  %".912" = add i32 %".911", -1
  %".913" = add i32 %".912", 0
  store i32 %".913", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".916" = load i32, ptr %"R4"
  %".917" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".916", 0
  %".918" = add i1 %"cmp.10", 0
  %".919" = xor i1 %".918", -1
  %".920" = and i1 %"cmp.10", %".917"
  %".921" = and i1 %".919", %".917"
  store i1 %".920", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".924" = load i32, ptr %"R6"
  %".925" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".924", i32 4)
  %".926" = extractvalue {i32, i1} %".925", 0
  %".927" = extractvalue {i32, i1} %".925", 1
  %".928" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".926", i32 0)
  %".929" = extractvalue {i32, i1} %".928", 0
  %".930" = extractvalue {i32, i1} %".928", 1
  %".931" = or i1 %".927", %".930"
  store i32 %".929", ptr %"R6"
  store i1 %".931", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".935" = load i32, ptr %"R8"
  %".936" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".935", i32 4)
  %".937" = extractvalue {i32, i1} %".936", 0
  %".938" = extractvalue {i32, i1} %".936", 1
  %".939" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".937", i32 0)
  %".940" = extractvalue {i32, i1} %".939", 0
  %".941" = extractvalue {i32, i1} %".939", 1
  %".942" = or i1 %".938", %".941"
  store i32 %".940", ptr %"R8"
  store i1 %".942", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P1
  %".946" = load i32, ptr %"R3"
  %".947" = load i1, ptr %"P1"
  %"mul.11" = mul i32 0, 0
  %"add.32" = add i32 %"mul.11", %".946"
  %"zext.123" = zext i1 %".947" to i32
  %"add.33" = add i32 %"add.32", %"zext.123"
  store i32 %"add.33", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".950" = load i32, ptr %"R9"
  %".951" = load i1, ptr %"P2"
  %".952" = xor i1 1, -1
  %".953" = zext i1 %".951" to i32
  %".954" = zext i1 %".952" to i32
  %"add.34" = add i32 0, %".950"
  %"add.35" = add i32 %"add.34", 0
  %"add.36" = add i32 %"add.35", %".953"
  %"add.37" = add i32 %"add.36", %".954"
  store i32 %"add.37", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".957" = load float, ptr %"R2"
  %".958" = load float, ptr %"R5"
  %".959" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".957", %".958"
  %"fadd.28" = fadd float %"fmul.28", %".959"
  %".960" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".960"
  ; @P0 BRA `(.L_x_6)
  %".963" = load i1, ptr %"P0"
  %".964" = icmp eq i1 %".963", 1
  br i1 %".964", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".969" = load i32, ptr %"R0"
  %".970" = load i32, ptr %"R5"
  %"zext.124" = zext i32 %".969" to i64
  %"zext.125" = zext i32 %".970" to i64
  %"mul.12" = mul i64 %"zext.124", %"zext.125"
  %".971" = ptrtoint ptr %"Arg_2" to i64
  %"add.38" = add i64 %"mul.12", %".971"
  %".972" = and i64 %"add.38", 18446744069414584320
  %".973" = lshr i64 %".972", 32
  %"trunc32.8" = trunc i64 %".973" to i32
  %"trunc32.9" = trunc i64 %"add.38" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".977" = load i32, ptr %"R2"
  %"zext.126" = zext i32 %".977" to i64
  %".978" = load i32, ptr %"R3"
  %"zext.127" = zext i32 %".978" to i64
  %"shl.58" = shl i64 %"zext.127", 32
  %"or.58" = or i64 %"shl.58", %"zext.126"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".979" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".980" = bitcast ptr %"R2" to ptr
  store float %".979", ptr %".980"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".983" = load i32, ptr %"R0"
  %".984" = load i32, ptr %"R5"
  %"zext.128" = zext i32 %".983" to i64
  %"zext.129" = zext i32 %".984" to i64
  %"mul.13" = mul i64 %"zext.128", %"zext.129"
  %".985" = ptrtoint ptr %"Arg_3" to i64
  %"add.39" = add i64 %"mul.13", %".985"
  %".986" = and i64 %"add.39", 18446744069414584320
  %".987" = lshr i64 %".986", 32
  %"trunc32.10" = trunc i64 %".987" to i32
  %"trunc32.11" = trunc i64 %"add.39" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".991" = load float, ptr %"R2"
  %".992" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".991", %".992"
  %".993" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".993"
  ; STG.E.SYS [R4], R7
  %".996" = load float, ptr %"R7"
  %".997" = load i32, ptr %"R4"
  %"zext.130" = zext i32 %".997" to i64
  %".998" = load i32, ptr %"R5"
  %"zext.131" = zext i32 %".998" to i64
  %"shl.59" = shl i64 %"zext.131", 32
  %"or.59" = or i64 %"shl.59", %"zext.130"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".996", ptr addrspace(1) %"ptr_cast_for_access.59"
  ; EXIT
  br label %"ExitFunction"
.L_x_7:
  ; BRA `(.L_x_7)
  br label %".L_x_7"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()

declare {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1", i32 %".2")

define ptx_kernel void @"_Z8fc_layerPfS_S_S_ii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", i32 %"Arg_4", i32 %"Arg_5")
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
  %"R40" = alloca i32, i32 1
  %"R41" = alloca i32, i32 1
  %"R42" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
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
  %"UR6" = alloca i32, i32 1
  %"UR7" = alloca i32, i32 1
  %"UR8" = alloca i32, i32 1
  %"UR9" = alloca i32, i32 1
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
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R0, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R0"
  ; S2R R3, SR_TID.X
  %"nvvm_threadidx_x" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"nvvm_threadidx_x", ptr %"R3"
  ; IMAD R0, R0, c[0x0][0x0], R3
  %".20" = load i32, ptr %"R0"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".21" = load i32, ptr %"R3"
  %"mul" = mul i32 %".20", %"nvvm_blockdim_x"
  %"add" = add i32 %"mul", %".21"
  store i32 %"add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x184], PT
  %".24" = load i32, ptr %"R0"
  %".25" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".24", %"Arg_5"
  %".26" = add i1 %"cmp", 0
  %".27" = xor i1 %".26", -1
  %".28" = and i1 %"cmp", %".25"
  %".29" = and i1 %".27", %".25"
  store i1 %".28", ptr %"P0"
  ; @P0 EXIT
  %".32" = load i1, ptr %"P0"
  %".33" = icmp eq i1 %".32", 1
  br i1 %".33", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
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
  %".42" = load i32, ptr %"R4"
  %".43" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".42", 1
  %".44" = add i1 %"cmp.1", 0
  %".45" = xor i1 %".44", -1
  %".46" = and i1 %"cmp.1", %".43"
  %".47" = and i1 %".45", %".43"
  store i1 %".46", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".50" = load i1, ptr %"P0"
  %".51" = icmp ne i1 %".50", 1
  br i1 %".51", label %".L_x_8", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".54" = load i32, ptr %"R4"
  %".55" = add i32 %".54", -1
  %".56" = add i32 %".55", 0
  store i32 %".56", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".59" = load i32, ptr %"R4"
  %".60" = xor i1 1, -1
  %".61" = and i32 %".59", 3
  store i32 %".61", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".64" = load i32, ptr %"R2"
  %".65" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".64", 3
  %".66" = add i1 %"cmp.2", 0
  %".67" = xor i1 %".66", -1
  %".68" = and i1 %"cmp.2", %".65"
  %".69" = and i1 %".67", %".65"
  store i1 %".68", ptr %"P0"
  ; MOV R7, RZ
  %".72" = load float, ptr %"RZ"
  %".73" = bitcast ptr %"R7" to ptr
  store float %".72", ptr %".73"
  ; MOV R5, RZ
  %".76" = load i32, ptr %"RZ"
  store i32 %".76", ptr %"R5"
  ; @!P0 BRA `(.L_x_9)
  %".79" = load i1, ptr %"P0"
  %".80" = icmp ne i1 %".79", 1
  br i1 %".80", label %".L_x_9", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".83" = load i32, ptr %"R4"
  %".84" = sub i32 0, %".83"
  %".85" = add i32 %".84", %"Arg_4"
  %".86" = add i32 %".85", 0
  store i32 %".86", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".89" = load i32, ptr %"R0"
  %"mul.2" = mul i32 %".89", %"Arg_4"
  %"add.2" = add i32 %"mul.2", 0
  store i32 %"add.2", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".92" = ptrtoint ptr %"Arg_0" to i64
  %".93" = and i64 %".92", 18446744069414584320
  %".94" = lshr i64 %".93", 32
  %"trunc32" = trunc i64 %".94" to i32
  %"trunc32.1" = trunc i64 %".92" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.3" = add i32 %"mul.3", 4
  store i32 %"add.3", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".100" = load i32, ptr %"R6"
  %".101" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".100", 0
  %".102" = add i1 %"cmp.3", 0
  %".103" = xor i1 %".102", -1
  %".104" = and i1 %"cmp.3", %".101"
  %".105" = and i1 %".103", %".101"
  store i1 %".104", ptr %"P0"
  ; MOV R7, RZ
  %".108" = load float, ptr %"RZ"
  %".109" = bitcast ptr %"R7" to ptr
  store float %".108", ptr %".109"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".112" = load i32, ptr %"R2"
  %".113" = load i32, ptr %"R3"
  %"zext" = zext i32 %".112" to i64
  %"zext.1" = zext i32 %".113" to i64
  %"mul.4" = mul i64 %"zext", %"zext.1"
  %".114" = ptrtoint ptr %"Arg_1" to i64
  %"add.4" = add i64 %"mul.4", %".114"
  %".115" = and i64 %"add.4", 18446744069414584320
  %".116" = lshr i64 %".115", 32
  %"trunc32.2" = trunc i64 %".116" to i32
  %"trunc32.3" = trunc i64 %"add.4" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; MOV R5, RZ
  %".120" = load i32, ptr %"RZ"
  store i32 %".120", ptr %"R5"
  ; @!P0 BRA `(.L_x_10)
  %".123" = load i1, ptr %"P0"
  %".124" = icmp ne i1 %".123", 1
  br i1 %".124", label %".L_x_10", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".127" = load i32, ptr %"R6"
  %".128" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".127", 12
  %".129" = add i1 %"cmp.4", 0
  %".130" = xor i1 %".129", -1
  %".131" = and i1 %"cmp.4", %".128"
  %".132" = and i1 %".130", %".128"
  store i1 %".131", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".135" = and i1 1, 1
  %".136" = and i1 %".135", 1
  ; @!P1 BRA `(.L_x_11)
  %".138" = load i1, ptr %"P1"
  %".139" = icmp ne i1 %".138", 1
  br i1 %".139", label %".L_x_11", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".142" = xor i1 1, 1
  %".143" = and i1 %".142", 1
  %".144" = and i1 %".143", 1
  br label %".L_x_12"
.L_x_12:
  ; LDG.E.SYS R8, [R2]
  %".147" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".147" to i64
  %".148" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".148" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".149" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".150" = bitcast ptr %"R8" to ptr
  store float %".149", ptr %".150"
  ; LDG.E.SYS R9, [UR4]
  %".153" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".153" to i64
  %".154" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".154" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".155" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".156" = bitcast ptr %"R9" to ptr
  store float %".155", ptr %".156"
  ; LDG.E.SYS R11, [R2+0x4]
  %".159" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".159" to i64
  %".160" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".160" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".161" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".162" = bitcast ptr %"R11" to ptr
  store float %".161", ptr %".162"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".165" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".165" to i64
  %".166" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".166" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %"ptr_plus_imm.1" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".167" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".168" = bitcast ptr %"R10" to ptr
  store float %".167", ptr %".168"
  ; LDG.E.SYS R13, [R2+0x8]
  %".171" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".171" to i64
  %".172" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".172" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %"ptr_plus_imm.2" = add i64 %"or.4", 8
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".173" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".174" = bitcast ptr %"R13" to ptr
  store float %".173", ptr %".174"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".177" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".177" to i64
  %".178" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".178" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %"ptr_plus_imm.3" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".179" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".180" = bitcast ptr %"R12" to ptr
  store float %".179", ptr %".180"
  ; LDG.E.SYS R15, [R2+0xc]
  %".183" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".183" to i64
  %".184" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".184" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %"ptr_plus_imm.4" = add i64 %"or.6", 12
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".185" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".186" = bitcast ptr %"R15" to ptr
  store float %".185", ptr %".186"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".189" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".189" to i64
  %".190" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".190" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %"ptr_plus_imm.5" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".191" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".192" = bitcast ptr %"R14" to ptr
  store float %".191", ptr %".192"
  ; LDG.E.SYS R17, [R2+0x10]
  %".195" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".195" to i64
  %".196" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".196" to i64
  %"shl.8" = shl i64 %"zext.19", 32
  %"or.8" = or i64 %"shl.8", %"zext.18"
  %"ptr_plus_imm.6" = add i64 %"or.8", 16
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".197" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".198" = bitcast ptr %"R17" to ptr
  store float %".197", ptr %".198"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".201" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".201" to i64
  %".202" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".202" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %"ptr_plus_imm.7" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".203" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".204" = bitcast ptr %"R16" to ptr
  store float %".203", ptr %".204"
  ; LDG.E.SYS R19, [R2+0x14]
  %".207" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".207" to i64
  %".208" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".208" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %"ptr_plus_imm.8" = add i64 %"or.10", 20
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".209" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".210" = bitcast ptr %"R19" to ptr
  store float %".209", ptr %".210"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".213" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".213" to i64
  %".214" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".214" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %"ptr_plus_imm.9" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".215" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".216" = bitcast ptr %"R18" to ptr
  store float %".215", ptr %".216"
  ; LDG.E.SYS R21, [R2+0x18]
  %".219" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".220" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %"ptr_plus_imm.10" = add i64 %"or.12", 24
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".221" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".222" = bitcast ptr %"R21" to ptr
  store float %".221", ptr %".222"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".225" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".225" to i64
  %".226" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".226" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %"ptr_plus_imm.11" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".227" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".228" = bitcast ptr %"R20" to ptr
  store float %".227", ptr %".228"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".231" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".231" to i64
  %".232" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".232" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %"ptr_plus_imm.12" = add i64 %"or.14", 28
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".233" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".234" = bitcast ptr %"R23" to ptr
  store float %".233", ptr %".234"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".237" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".237" to i64
  %".238" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".238" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %"ptr_plus_imm.13" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".239" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".240" = bitcast ptr %"R22" to ptr
  store float %".239", ptr %".240"
  ; LDG.E.SYS R25, [R2+0x20]
  %".243" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".243" to i64
  %".244" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".244" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %"ptr_plus_imm.14" = add i64 %"or.16", 32
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".245" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".246" = bitcast ptr %"R25" to ptr
  store float %".245", ptr %".246"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".249" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".249" to i64
  %".250" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".250" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %"ptr_plus_imm.15" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".251" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".252" = bitcast ptr %"R24" to ptr
  store float %".251", ptr %".252"
  ; LDG.E.SYS R27, [R2+0x24]
  %".255" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".255" to i64
  %".256" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".256" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %"ptr_plus_imm.16" = add i64 %"or.18", 36
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".257" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".258" = bitcast ptr %"R27" to ptr
  store float %".257", ptr %".258"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".261" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".261" to i64
  %".262" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".262" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %"ptr_plus_imm.17" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".263" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".264" = bitcast ptr %"R26" to ptr
  store float %".263", ptr %".264"
  ; LDG.E.SYS R29, [R2+0x28]
  %".267" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".267" to i64
  %".268" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".268" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %"ptr_plus_imm.18" = add i64 %"or.20", 40
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".269" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".270" = bitcast ptr %"R29" to ptr
  store float %".269", ptr %".270"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".273" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".273" to i64
  %".274" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".274" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %"ptr_plus_imm.19" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".275" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".276" = bitcast ptr %"R28" to ptr
  store float %".275", ptr %".276"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".279" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".279" to i64
  %".280" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".280" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %"ptr_plus_imm.20" = add i64 %"or.22", 44
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".281" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".282" = bitcast ptr %"R31" to ptr
  store float %".281", ptr %".282"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".285" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".285" to i64
  %".286" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".286" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %"ptr_plus_imm.21" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".287" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".288" = bitcast ptr %"R30" to ptr
  store float %".287", ptr %".288"
  ; LDG.E.SYS R33, [R2+0x30]
  %".291" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".291" to i64
  %".292" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".292" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %"ptr_plus_imm.22" = add i64 %"or.24", 48
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".293" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".294" = bitcast ptr %"R33" to ptr
  store float %".293", ptr %".294"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".297" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".297" to i64
  %".298" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".298" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %"ptr_plus_imm.23" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".299" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".300" = bitcast ptr %"R32" to ptr
  store float %".299", ptr %".300"
  ; LDG.E.SYS R35, [R2+0x34]
  %".303" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".303" to i64
  %".304" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".304" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %"ptr_plus_imm.24" = add i64 %"or.26", 52
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".305" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".306" = bitcast ptr %"R35" to ptr
  store float %".305", ptr %".306"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".309" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".309" to i64
  %".310" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".310" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %"ptr_plus_imm.25" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".311" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".312" = bitcast ptr %"R34" to ptr
  store float %".311", ptr %".312"
  ; LDG.E.SYS R37, [R2+0x38]
  %".315" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".315" to i64
  %".316" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".316" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %"ptr_plus_imm.26" = add i64 %"or.28", 56
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".317" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".318" = bitcast ptr %"R37" to ptr
  store float %".317", ptr %".318"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".321" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".321" to i64
  %".322" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".322" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %"ptr_plus_imm.27" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".323" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".324" = bitcast ptr %"R36" to ptr
  store float %".323", ptr %".324"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".327" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".327" to i64
  %".328" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".328" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %"ptr_plus_imm.28" = add i64 %"or.30", 60
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".329" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".330" = bitcast ptr %"R39" to ptr
  store float %".329", ptr %".330"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".333" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".333" to i64
  %".334" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".334" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %"ptr_plus_imm.29" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".335" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".336" = bitcast ptr %"R38" to ptr
  store float %".335", ptr %".336"
  ; IADD3 R6, R6, -0x10, RZ
  %".339" = load i32, ptr %"R6"
  %".340" = add i32 %".339", -16
  %".341" = add i32 %".340", 0
  store i32 %".341", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".344" = load i32, ptr %"UR4"
  %".345" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".344", i32 64)
  %".346" = extractvalue {i32, i1} %".345", 0
  %".347" = extractvalue {i32, i1} %".345", 1
  %".348" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".346", i32 0)
  %".349" = extractvalue {i32, i1} %".348", 0
  %".350" = extractvalue {i32, i1} %".348", 1
  %".351" = or i1 %".347", %".350"
  store i32 %".349", ptr %"UR4"
  store i1 %".351", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".355" = load i32, ptr %"R5"
  %".356" = add i32 %".355", 16
  %".357" = add i32 %".356", 0
  store i32 %".357", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".360" = load i32, ptr %"R6"
  %".361" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".360", 12
  %".362" = add i1 %"cmp.5", 0
  %".363" = xor i1 %".362", -1
  %".364" = and i1 %"cmp.5", %".361"
  %".365" = and i1 %".363", %".361"
  store i1 %".364", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".368" = load i32, ptr %"UR5"
  %".369" = load i1, ptr %"UP0"
  %".370" = xor i1 1, -1
  %".371" = zext i1 %".369" to i32
  %".372" = zext i1 %".370" to i32
  %"add.5" = add i32 0, %".368"
  %"add.6" = add i32 %"add.5", 0
  %"add.7" = add i32 %"add.6", %".371"
  %"add.8" = add i32 %"add.7", %".372"
  store i32 %"add.8", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".375" = load i32, ptr %"R2"
  %".376" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".375", i32 64)
  %".377" = extractvalue {i32, i1} %".376", 0
  %".378" = extractvalue {i32, i1} %".376", 1
  %".379" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".377", i32 0)
  %".380" = extractvalue {i32, i1} %".379", 0
  %".381" = extractvalue {i32, i1} %".379", 1
  %".382" = or i1 %".378", %".381"
  store i32 %".380", ptr %"R2"
  store i1 %".382", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".386" = load i32, ptr %"R3"
  %".387" = load i1, ptr %"P2"
  %"mul.5" = mul i32 0, 0
  %"add.9" = add i32 %"mul.5", %".386"
  %"zext.66" = zext i1 %".387" to i32
  %"add.10" = add i32 %"add.9", %"zext.66"
  store i32 %"add.10", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".390" = load float, ptr %"R8"
  %".391" = load float, ptr %"R9"
  %".392" = load float, ptr %"R7"
  %"fmul" = fmul float %".390", %".391"
  %"fadd" = fadd float %"fmul", %".392"
  %".393" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".393"
  ; FFMA R8, R11, R10, R8
  %".396" = load float, ptr %"R11"
  %".397" = load float, ptr %"R10"
  %".398" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".396", %".397"
  %"fadd.1" = fadd float %"fmul.1", %".398"
  %".399" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".399"
  ; FFMA R8, R13, R12, R8
  %".402" = load float, ptr %"R13"
  %".403" = load float, ptr %"R12"
  %".404" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".402", %".403"
  %"fadd.2" = fadd float %"fmul.2", %".404"
  %".405" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".405"
  ; FFMA R8, R15, R14, R8
  %".408" = load float, ptr %"R15"
  %".409" = load float, ptr %"R14"
  %".410" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".408", %".409"
  %"fadd.3" = fadd float %"fmul.3", %".410"
  %".411" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".411"
  ; FFMA R8, R17, R16, R8
  %".414" = load float, ptr %"R17"
  %".415" = load float, ptr %"R16"
  %".416" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".414", %".415"
  %"fadd.4" = fadd float %"fmul.4", %".416"
  %".417" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".417"
  ; FFMA R8, R19, R18, R8
  %".420" = load float, ptr %"R19"
  %".421" = load float, ptr %"R18"
  %".422" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".420", %".421"
  %"fadd.5" = fadd float %"fmul.5", %".422"
  %".423" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".423"
  ; FFMA R8, R21, R20, R8
  %".426" = load float, ptr %"R21"
  %".427" = load float, ptr %"R20"
  %".428" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".426", %".427"
  %"fadd.6" = fadd float %"fmul.6", %".428"
  %".429" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".429"
  ; FFMA R8, R23, R22, R8
  %".432" = load float, ptr %"R23"
  %".433" = load float, ptr %"R22"
  %".434" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".432", %".433"
  %"fadd.7" = fadd float %"fmul.7", %".434"
  %".435" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".435"
  ; FFMA R8, R25, R24, R8
  %".438" = load float, ptr %"R25"
  %".439" = load float, ptr %"R24"
  %".440" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".438", %".439"
  %"fadd.8" = fadd float %"fmul.8", %".440"
  %".441" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".441"
  ; FFMA R8, R27, R26, R8
  %".444" = load float, ptr %"R27"
  %".445" = load float, ptr %"R26"
  %".446" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".444", %".445"
  %"fadd.9" = fadd float %"fmul.9", %".446"
  %".447" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".447"
  ; FFMA R8, R29, R28, R8
  %".450" = load float, ptr %"R29"
  %".451" = load float, ptr %"R28"
  %".452" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".450", %".451"
  %"fadd.10" = fadd float %"fmul.10", %".452"
  %".453" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".453"
  ; FFMA R8, R31, R30, R8
  %".456" = load float, ptr %"R31"
  %".457" = load float, ptr %"R30"
  %".458" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".456", %".457"
  %"fadd.11" = fadd float %"fmul.11", %".458"
  %".459" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".459"
  ; FFMA R8, R33, R32, R8
  %".462" = load float, ptr %"R33"
  %".463" = load float, ptr %"R32"
  %".464" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".462", %".463"
  %"fadd.12" = fadd float %"fmul.12", %".464"
  %".465" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".465"
  ; FFMA R8, R35, R34, R8
  %".468" = load float, ptr %"R35"
  %".469" = load float, ptr %"R34"
  %".470" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".468", %".469"
  %"fadd.13" = fadd float %"fmul.13", %".470"
  %".471" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".471"
  ; FFMA R8, R37, R36, R8
  %".474" = load float, ptr %"R37"
  %".475" = load float, ptr %"R36"
  %".476" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".474", %".475"
  %"fadd.14" = fadd float %"fmul.14", %".476"
  %".477" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".477"
  ; FFMA R7, R39, R38, R8
  %".480" = load float, ptr %"R39"
  %".481" = load float, ptr %"R38"
  %".482" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".480", %".481"
  %"fadd.15" = fadd float %"fmul.15", %".482"
  %".483" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".483"
  ; @P1 BRA `(.L_x_12)
  %".486" = load i1, ptr %"P1"
  %".487" = icmp eq i1 %".486", 1
  br i1 %".487", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".490" = load i32, ptr %"R6"
  %".491" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".490", 4
  %".492" = add i1 %"cmp.6", 0
  %".493" = xor i1 %".492", -1
  %".494" = and i1 %"cmp.6", %".491"
  %".495" = and i1 %".493", %".491"
  store i1 %".494", ptr %"P1"
  ; @!P1 BRA `(.L_x_13)
  %".498" = load i1, ptr %"P1"
  %".499" = icmp ne i1 %".498", 1
  br i1 %".499", label %".L_x_13", label %".L_x_11_split_0x0570"
.L_x_11_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".502" = load i32, ptr %"R2"
  %"zext.67" = zext i32 %".502" to i64
  %".503" = load i32, ptr %"R3"
  %"zext.68" = zext i32 %".503" to i64
  %"shl.32" = shl i64 %"zext.68", 32
  %"or.32" = or i64 %"shl.32", %"zext.67"
  %"inttoptr_bytes.32" = inttoptr i64 %"or.32" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".504" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".505" = bitcast ptr %"R8" to ptr
  store float %".504", ptr %".505"
  ; LDG.E.SYS R9, [UR4]
  %".508" = load i32, ptr %"UR4"
  %"zext.69" = zext i32 %".508" to i64
  %".509" = load i32, ptr %"UR5"
  %"zext.70" = zext i32 %".509" to i64
  %"shl.33" = shl i64 %"zext.70", 32
  %"or.33" = or i64 %"shl.33", %"zext.69"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".510" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".511" = bitcast ptr %"R9" to ptr
  store float %".510", ptr %".511"
  ; LDG.E.SYS R11, [R2+0x4]
  %".514" = load i32, ptr %"R2"
  %"zext.71" = zext i32 %".514" to i64
  %".515" = load i32, ptr %"R3"
  %"zext.72" = zext i32 %".515" to i64
  %"shl.34" = shl i64 %"zext.72", 32
  %"or.34" = or i64 %"shl.34", %"zext.71"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".516" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".517" = bitcast ptr %"R11" to ptr
  store float %".516", ptr %".517"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".520" = load i32, ptr %"UR4"
  %"zext.73" = zext i32 %".520" to i64
  %".521" = load i32, ptr %"UR5"
  %"zext.74" = zext i32 %".521" to i64
  %"shl.35" = shl i64 %"zext.74", 32
  %"or.35" = or i64 %"shl.35", %"zext.73"
  %"ptr_plus_imm.31" = add i64 %"or.35", 4
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".522" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".523" = bitcast ptr %"R10" to ptr
  store float %".522", ptr %".523"
  ; LDG.E.SYS R13, [R2+0x8]
  %".526" = load i32, ptr %"R2"
  %"zext.75" = zext i32 %".526" to i64
  %".527" = load i32, ptr %"R3"
  %"zext.76" = zext i32 %".527" to i64
  %"shl.36" = shl i64 %"zext.76", 32
  %"or.36" = or i64 %"shl.36", %"zext.75"
  %"ptr_plus_imm.32" = add i64 %"or.36", 8
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".528" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".529" = bitcast ptr %"R13" to ptr
  store float %".528", ptr %".529"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".532" = load i32, ptr %"UR4"
  %"zext.77" = zext i32 %".532" to i64
  %".533" = load i32, ptr %"UR5"
  %"zext.78" = zext i32 %".533" to i64
  %"shl.37" = shl i64 %"zext.78", 32
  %"or.37" = or i64 %"shl.37", %"zext.77"
  %"ptr_plus_imm.33" = add i64 %"or.37", 8
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".534" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".535" = bitcast ptr %"R12" to ptr
  store float %".534", ptr %".535"
  ; LDG.E.SYS R15, [R2+0xc]
  %".538" = load i32, ptr %"R2"
  %"zext.79" = zext i32 %".538" to i64
  %".539" = load i32, ptr %"R3"
  %"zext.80" = zext i32 %".539" to i64
  %"shl.38" = shl i64 %"zext.80", 32
  %"or.38" = or i64 %"shl.38", %"zext.79"
  %"ptr_plus_imm.34" = add i64 %"or.38", 12
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".540" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".541" = bitcast ptr %"R15" to ptr
  store float %".540", ptr %".541"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".544" = load i32, ptr %"UR4"
  %"zext.81" = zext i32 %".544" to i64
  %".545" = load i32, ptr %"UR5"
  %"zext.82" = zext i32 %".545" to i64
  %"shl.39" = shl i64 %"zext.82", 32
  %"or.39" = or i64 %"shl.39", %"zext.81"
  %"ptr_plus_imm.35" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".546" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".547" = bitcast ptr %"R14" to ptr
  store float %".546", ptr %".547"
  ; LDG.E.SYS R17, [R2+0x10]
  %".550" = load i32, ptr %"R2"
  %"zext.83" = zext i32 %".550" to i64
  %".551" = load i32, ptr %"R3"
  %"zext.84" = zext i32 %".551" to i64
  %"shl.40" = shl i64 %"zext.84", 32
  %"or.40" = or i64 %"shl.40", %"zext.83"
  %"ptr_plus_imm.36" = add i64 %"or.40", 16
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".552" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".553" = bitcast ptr %"R17" to ptr
  store float %".552", ptr %".553"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".556" = load i32, ptr %"UR4"
  %"zext.85" = zext i32 %".556" to i64
  %".557" = load i32, ptr %"UR5"
  %"zext.86" = zext i32 %".557" to i64
  %"shl.41" = shl i64 %"zext.86", 32
  %"or.41" = or i64 %"shl.41", %"zext.85"
  %"ptr_plus_imm.37" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".558" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".559" = bitcast ptr %"R16" to ptr
  store float %".558", ptr %".559"
  ; LDG.E.SYS R19, [R2+0x14]
  %".562" = load i32, ptr %"R2"
  %"zext.87" = zext i32 %".562" to i64
  %".563" = load i32, ptr %"R3"
  %"zext.88" = zext i32 %".563" to i64
  %"shl.42" = shl i64 %"zext.88", 32
  %"or.42" = or i64 %"shl.42", %"zext.87"
  %"ptr_plus_imm.38" = add i64 %"or.42", 20
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".564" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".565" = bitcast ptr %"R19" to ptr
  store float %".564", ptr %".565"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".568" = load i32, ptr %"UR4"
  %"zext.89" = zext i32 %".568" to i64
  %".569" = load i32, ptr %"UR5"
  %"zext.90" = zext i32 %".569" to i64
  %"shl.43" = shl i64 %"zext.90", 32
  %"or.43" = or i64 %"shl.43", %"zext.89"
  %"ptr_plus_imm.39" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".570" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".571" = bitcast ptr %"R18" to ptr
  store float %".570", ptr %".571"
  ; LDG.E.SYS R21, [R2+0x18]
  %".574" = load i32, ptr %"R2"
  %"zext.91" = zext i32 %".574" to i64
  %".575" = load i32, ptr %"R3"
  %"zext.92" = zext i32 %".575" to i64
  %"shl.44" = shl i64 %"zext.92", 32
  %"or.44" = or i64 %"shl.44", %"zext.91"
  %"ptr_plus_imm.40" = add i64 %"or.44", 24
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".576" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".577" = bitcast ptr %"R21" to ptr
  store float %".576", ptr %".577"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".580" = load i32, ptr %"UR4"
  %"zext.93" = zext i32 %".580" to i64
  %".581" = load i32, ptr %"UR5"
  %"zext.94" = zext i32 %".581" to i64
  %"shl.45" = shl i64 %"zext.94", 32
  %"or.45" = or i64 %"shl.45", %"zext.93"
  %"ptr_plus_imm.41" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".582" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".583" = bitcast ptr %"R20" to ptr
  store float %".582", ptr %".583"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".586" = load i32, ptr %"R2"
  %"zext.95" = zext i32 %".586" to i64
  %".587" = load i32, ptr %"R3"
  %"zext.96" = zext i32 %".587" to i64
  %"shl.46" = shl i64 %"zext.96", 32
  %"or.46" = or i64 %"shl.46", %"zext.95"
  %"ptr_plus_imm.42" = add i64 %"or.46", 28
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".588" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".589" = bitcast ptr %"R23" to ptr
  store float %".588", ptr %".589"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".592" = load i32, ptr %"UR4"
  %"zext.97" = zext i32 %".592" to i64
  %".593" = load i32, ptr %"UR5"
  %"zext.98" = zext i32 %".593" to i64
  %"shl.47" = shl i64 %"zext.98", 32
  %"or.47" = or i64 %"shl.47", %"zext.97"
  %"ptr_plus_imm.43" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".594" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".595" = bitcast ptr %"R22" to ptr
  store float %".594", ptr %".595"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".598" = load i32, ptr %"UR4"
  %".599" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".598", i32 32)
  %".600" = extractvalue {i32, i1} %".599", 0
  %".601" = extractvalue {i32, i1} %".599", 1
  %".602" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".600", i32 0)
  %".603" = extractvalue {i32, i1} %".602", 0
  %".604" = extractvalue {i32, i1} %".602", 1
  %".605" = or i1 %".601", %".604"
  store i32 %".603", ptr %"UR4"
  store i1 %".605", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".609" = xor i1 1, 1
  %".610" = and i1 %".609", 1
  %".611" = and i1 %".610", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".613" = load i32, ptr %"R5"
  %".614" = add i32 %".613", 8
  %".615" = add i32 %".614", 0
  store i32 %".615", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".618" = load i32, ptr %"UR5"
  %".619" = load i1, ptr %"UP0"
  %".620" = xor i1 1, -1
  %".621" = zext i1 %".619" to i32
  %".622" = zext i1 %".620" to i32
  %"add.11" = add i32 0, %".618"
  %"add.12" = add i32 %"add.11", 0
  %"add.13" = add i32 %"add.12", %".621"
  %"add.14" = add i32 %"add.13", %".622"
  store i32 %"add.14", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".625" = load i32, ptr %"R2"
  %".626" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".625", i32 32)
  %".627" = extractvalue {i32, i1} %".626", 0
  %".628" = extractvalue {i32, i1} %".626", 1
  %".629" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".627", i32 0)
  %".630" = extractvalue {i32, i1} %".629", 0
  %".631" = extractvalue {i32, i1} %".629", 1
  %".632" = or i1 %".628", %".631"
  store i32 %".630", ptr %"R2"
  store i1 %".632", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".636" = load i32, ptr %"R6"
  %".637" = add i32 %".636", -8
  %".638" = add i32 %".637", 0
  store i32 %".638", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".641" = load i32, ptr %"R3"
  %".642" = load i1, ptr %"P1"
  %".643" = xor i1 1, -1
  %".644" = zext i1 %".642" to i32
  %".645" = zext i1 %".643" to i32
  %"add.15" = add i32 0, %".641"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".644"
  %"add.18" = add i32 %"add.17", %".645"
  store i32 %"add.18", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".648" = load float, ptr %"R8"
  %".649" = load float, ptr %"R9"
  %".650" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".648", %".649"
  %"fadd.16" = fadd float %"fmul.16", %".650"
  %".651" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".651"
  ; FFMA R8, R11, R10, R8
  %".654" = load float, ptr %"R11"
  %".655" = load float, ptr %"R10"
  %".656" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".654", %".655"
  %"fadd.17" = fadd float %"fmul.17", %".656"
  %".657" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".657"
  ; FFMA R8, R13, R12, R8
  %".660" = load float, ptr %"R13"
  %".661" = load float, ptr %"R12"
  %".662" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".660", %".661"
  %"fadd.18" = fadd float %"fmul.18", %".662"
  %".663" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".663"
  ; FFMA R8, R15, R14, R8
  %".666" = load float, ptr %"R15"
  %".667" = load float, ptr %"R14"
  %".668" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".666", %".667"
  %"fadd.19" = fadd float %"fmul.19", %".668"
  %".669" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".669"
  ; FFMA R8, R17, R16, R8
  %".672" = load float, ptr %"R17"
  %".673" = load float, ptr %"R16"
  %".674" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".672", %".673"
  %"fadd.20" = fadd float %"fmul.20", %".674"
  %".675" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".675"
  ; FFMA R8, R19, R18, R8
  %".678" = load float, ptr %"R19"
  %".679" = load float, ptr %"R18"
  %".680" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".678", %".679"
  %"fadd.21" = fadd float %"fmul.21", %".680"
  %".681" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".681"
  ; FFMA R8, R21, R20, R8
  %".684" = load float, ptr %"R21"
  %".685" = load float, ptr %"R20"
  %".686" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".684", %".685"
  %"fadd.22" = fadd float %"fmul.22", %".686"
  %".687" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".687"
  ; FFMA R7, R23, R22, R8
  %".690" = load float, ptr %"R23"
  %".691" = load float, ptr %"R22"
  %".692" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".690", %".691"
  %"fadd.23" = fadd float %"fmul.23", %".692"
  %".693" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".693"
  br label %".L_x_13"
.L_x_13:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".697" = load i32, ptr %"R6"
  %".698" = load i1, ptr %"P0"
  %"cmp.7" = icmp ne i32 %".697", 0
  %".699" = add i1 %"cmp.7", 0
  %".700" = xor i1 %".699", -1
  %".701" = or i1 %"cmp.7", %".698"
  %".702" = or i1 %".700", %".698"
  store i1 %".701", ptr %"P0"
  ; @!P0 BRA `(.L_x_9)
  %".705" = load i1, ptr %"P0"
  %".706" = icmp ne i1 %".705", 1
  br i1 %".706", label %".L_x_9", label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R8, [R2]
  %".709" = load i32, ptr %"R2"
  %"zext.99" = zext i32 %".709" to i64
  %".710" = load i32, ptr %"R3"
  %"zext.100" = zext i32 %".710" to i64
  %"shl.48" = shl i64 %"zext.100", 32
  %"or.48" = or i64 %"shl.48", %"zext.99"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".711" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".712" = bitcast ptr %"R8" to ptr
  store float %".711", ptr %".712"
  ; LDG.E.SYS R9, [UR4]
  %".715" = load i32, ptr %"UR4"
  %"zext.101" = zext i32 %".715" to i64
  %".716" = load i32, ptr %"UR5"
  %"zext.102" = zext i32 %".716" to i64
  %"shl.49" = shl i64 %"zext.102", 32
  %"or.49" = or i64 %"shl.49", %"zext.101"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".717" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".718" = bitcast ptr %"R9" to ptr
  store float %".717", ptr %".718"
  ; LDG.E.SYS R11, [R2+0x4]
  %".721" = load i32, ptr %"R2"
  %"zext.103" = zext i32 %".721" to i64
  %".722" = load i32, ptr %"R3"
  %"zext.104" = zext i32 %".722" to i64
  %"shl.50" = shl i64 %"zext.104", 32
  %"or.50" = or i64 %"shl.50", %"zext.103"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".723" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".724" = bitcast ptr %"R11" to ptr
  store float %".723", ptr %".724"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".727" = load i32, ptr %"UR4"
  %"zext.105" = zext i32 %".727" to i64
  %".728" = load i32, ptr %"UR5"
  %"zext.106" = zext i32 %".728" to i64
  %"shl.51" = shl i64 %"zext.106", 32
  %"or.51" = or i64 %"shl.51", %"zext.105"
  %"ptr_plus_imm.45" = add i64 %"or.51", 4
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".729" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".730" = bitcast ptr %"R10" to ptr
  store float %".729", ptr %".730"
  ; LDG.E.SYS R13, [R2+0x8]
  %".733" = load i32, ptr %"R2"
  %"zext.107" = zext i32 %".733" to i64
  %".734" = load i32, ptr %"R3"
  %"zext.108" = zext i32 %".734" to i64
  %"shl.52" = shl i64 %"zext.108", 32
  %"or.52" = or i64 %"shl.52", %"zext.107"
  %"ptr_plus_imm.46" = add i64 %"or.52", 8
  %"inttoptr_bytes.52" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".735" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".736" = bitcast ptr %"R13" to ptr
  store float %".735", ptr %".736"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".739" = load i32, ptr %"UR4"
  %"zext.109" = zext i32 %".739" to i64
  %".740" = load i32, ptr %"UR5"
  %"zext.110" = zext i32 %".740" to i64
  %"shl.53" = shl i64 %"zext.110", 32
  %"or.53" = or i64 %"shl.53", %"zext.109"
  %"ptr_plus_imm.47" = add i64 %"or.53", 8
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".741" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".742" = bitcast ptr %"R12" to ptr
  store float %".741", ptr %".742"
  ; LDG.E.SYS R15, [R2+0xc]
  %".745" = load i32, ptr %"R2"
  %"zext.111" = zext i32 %".745" to i64
  %".746" = load i32, ptr %"R3"
  %"zext.112" = zext i32 %".746" to i64
  %"shl.54" = shl i64 %"zext.112", 32
  %"or.54" = or i64 %"shl.54", %"zext.111"
  %"ptr_plus_imm.48" = add i64 %"or.54", 12
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".747" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".748" = bitcast ptr %"R15" to ptr
  store float %".747", ptr %".748"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".751" = load i32, ptr %"UR4"
  %"zext.113" = zext i32 %".751" to i64
  %".752" = load i32, ptr %"UR5"
  %"zext.114" = zext i32 %".752" to i64
  %"shl.55" = shl i64 %"zext.114", 32
  %"or.55" = or i64 %"shl.55", %"zext.113"
  %"ptr_plus_imm.49" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".753" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".754" = bitcast ptr %"R14" to ptr
  store float %".753", ptr %".754"
  ; IADD3 R6, R6, -0x4, RZ
  %".757" = load i32, ptr %"R6"
  %".758" = add i32 %".757", -4
  %".759" = add i32 %".758", 0
  store i32 %".759", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".762" = load i32, ptr %"UR4"
  %".763" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".762", i32 16)
  %".764" = extractvalue {i32, i1} %".763", 0
  %".765" = extractvalue {i32, i1} %".763", 1
  %".766" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".764", i32 0)
  %".767" = extractvalue {i32, i1} %".766", 0
  %".768" = extractvalue {i32, i1} %".766", 1
  %".769" = or i1 %".765", %".768"
  store i32 %".767", ptr %"UR4"
  store i1 %".769", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".773" = load i32, ptr %"R5"
  %".774" = add i32 %".773", 4
  %".775" = add i32 %".774", 0
  store i32 %".775", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".778" = load i32, ptr %"R6"
  %".779" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".778", 0
  %".780" = add i1 %"cmp.8", 0
  %".781" = xor i1 %".780", -1
  %".782" = and i1 %"cmp.8", %".779"
  %".783" = and i1 %".781", %".779"
  store i1 %".782", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".786" = load i32, ptr %"UR5"
  %".787" = load i1, ptr %"UP0"
  %".788" = xor i1 1, -1
  %".789" = zext i1 %".787" to i32
  %".790" = zext i1 %".788" to i32
  %"add.19" = add i32 0, %".786"
  %"add.20" = add i32 %"add.19", 0
  %"add.21" = add i32 %"add.20", %".789"
  %"add.22" = add i32 %"add.21", %".790"
  store i32 %"add.22", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".793" = load float, ptr %"R8"
  %".794" = load float, ptr %"R9"
  %".795" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".793", %".794"
  %"fadd.24" = fadd float %"fmul.24", %".795"
  %".796" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".796"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".799" = load i32, ptr %"R2"
  %".800" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".799", i32 16)
  %".801" = extractvalue {i32, i1} %".800", 0
  %".802" = extractvalue {i32, i1} %".800", 1
  %".803" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".801", i32 0)
  %".804" = extractvalue {i32, i1} %".803", 0
  %".805" = extractvalue {i32, i1} %".803", 1
  %".806" = or i1 %".802", %".805"
  store i32 %".804", ptr %"R9"
  store i1 %".806", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".810" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.23" = add i32 %"mul.6", %".810"
  store i32 %"add.23", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".813" = load float, ptr %"R11"
  %".814" = load float, ptr %"R10"
  %".815" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".813", %".814"
  %"fadd.25" = fadd float %"fmul.25", %".815"
  %".816" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".816"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".819" = load i32, ptr %"R3"
  %".820" = load i1, ptr %"P1"
  %".821" = xor i1 1, -1
  %".822" = zext i1 %".820" to i32
  %".823" = zext i1 %".821" to i32
  %"add.24" = add i32 0, %".819"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".822"
  %"add.27" = add i32 %"add.26", %".823"
  store i32 %"add.27", ptr %"R10"
  ; MOV R3, R10
  %".826" = load i32, ptr %"R10"
  store i32 %".826", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".829" = load float, ptr %"R13"
  %".830" = load float, ptr %"R12"
  %".831" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".829", %".830"
  %"fadd.26" = fadd float %"fmul.26", %".831"
  %".832" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".832"
  ; FFMA R7, R15, R14, R8
  %".835" = load float, ptr %"R15"
  %".836" = load float, ptr %"R14"
  %".837" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".835", %".836"
  %"fadd.27" = fadd float %"fmul.27", %".837"
  %".838" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".838"
  ; @P0 BRA `(.L_x_10)
  %".841" = load i1, ptr %"P0"
  %".842" = icmp eq i1 %".841", 1
  br i1 %".842", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".845" = load i32, ptr %"R4"
  %".846" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".845", 0
  %".847" = add i1 %"cmp.9", 0
  %".848" = xor i1 %".847", -1
  %".849" = and i1 %"cmp.9", %".846"
  %".850" = and i1 %".848", %".846"
  store i1 %".849", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".853" = load i1, ptr %"P0"
  %".854" = icmp ne i1 %".853", 1
  br i1 %".854", label %".L_x_8", label %".L_x_9_split_0x0900"
.L_x_9_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".859" = load i32, ptr %"R0"
  %".860" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".859", %"Arg_4"
  %"add.28" = add i32 %"mul.7", %".860"
  store i32 %"add.28", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".863" = load i32, ptr %"R2"
  %".864" = load i32, ptr %"R8"
  %"zext.115" = zext i32 %".863" to i64
  %"zext.116" = zext i32 %".864" to i64
  %"mul.8" = mul i64 %"zext.115", %"zext.116"
  %".865" = ptrtoint ptr %"Arg_1" to i64
  %"add.29" = add i64 %"mul.8", %".865"
  %".866" = and i64 %"add.29", 18446744069414584320
  %".867" = lshr i64 %".866", 32
  %"trunc32.4" = trunc i64 %".867" to i32
  %"trunc32.5" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".871" = load i32, ptr %"R5"
  %".872" = load i32, ptr %"R8"
  %"zext.117" = zext i32 %".871" to i64
  %"zext.118" = zext i32 %".872" to i64
  %"mul.9" = mul i64 %"zext.117", %"zext.118"
  %".873" = ptrtoint ptr %"Arg_0" to i64
  %"add.30" = add i64 %"mul.9", %".873"
  %".874" = and i64 %"add.30", 18446744069414584320
  %".875" = lshr i64 %".874", 32
  %"trunc32.6" = trunc i64 %".875" to i32
  %"trunc32.7" = trunc i64 %"add.30" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".879" = load i32, ptr %"R2"
  store i32 %".879", ptr %"R6"
  br label %".L_x_14"
.L_x_14:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".883" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.31" = add i32 %"mul.10", %".883"
  store i32 %"add.31", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".886" = load i32, ptr %"R8"
  %"zext.119" = zext i32 %".886" to i64
  %".887" = load i32, ptr %"R9"
  %"zext.120" = zext i32 %".887" to i64
  %"shl.56" = shl i64 %"zext.120", 32
  %"or.56" = or i64 %"shl.56", %"zext.119"
  %"inttoptr_bytes.56" = inttoptr i64 %"or.56" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".888" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".889" = bitcast ptr %"R5" to ptr
  store float %".888", ptr %".889"
  ; LDG.E.SYS R2, [R2]
  %".892" = load i32, ptr %"R2"
  %"zext.121" = zext i32 %".892" to i64
  %".893" = load i32, ptr %"R3"
  %"zext.122" = zext i32 %".893" to i64
  %"shl.57" = shl i64 %"zext.122", 32
  %"or.57" = or i64 %"shl.57", %"zext.121"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".894" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".895" = bitcast ptr %"R2" to ptr
  store float %".894", ptr %".895"
  ; IADD3 R4, R4, -0x1, RZ
  %".898" = load i32, ptr %"R4"
  %".899" = add i32 %".898", -1
  %".900" = add i32 %".899", 0
  store i32 %".900", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".903" = load i32, ptr %"R4"
  %".904" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".903", 0
  %".905" = add i1 %"cmp.10", 0
  %".906" = xor i1 %".905", -1
  %".907" = and i1 %"cmp.10", %".904"
  %".908" = and i1 %".906", %".904"
  store i1 %".907", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".911" = load i32, ptr %"R6"
  %".912" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".911", i32 4)
  %".913" = extractvalue {i32, i1} %".912", 0
  %".914" = extractvalue {i32, i1} %".912", 1
  %".915" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".913", i32 0)
  %".916" = extractvalue {i32, i1} %".915", 0
  %".917" = extractvalue {i32, i1} %".915", 1
  %".918" = or i1 %".914", %".917"
  store i32 %".916", ptr %"R6"
  store i1 %".918", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".922" = load i32, ptr %"R8"
  %".923" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".922", i32 4)
  %".924" = extractvalue {i32, i1} %".923", 0
  %".925" = extractvalue {i32, i1} %".923", 1
  %".926" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".924", i32 0)
  %".927" = extractvalue {i32, i1} %".926", 0
  %".928" = extractvalue {i32, i1} %".926", 1
  %".929" = or i1 %".925", %".928"
  store i32 %".927", ptr %"R8"
  store i1 %".929", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".933" = load i32, ptr %"R3"
  %".934" = load i1, ptr %"P1"
  %".935" = xor i1 1, -1
  %".936" = zext i1 %".934" to i32
  %".937" = zext i1 %".935" to i32
  %"add.32" = add i32 0, %".933"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".936"
  %"add.35" = add i32 %"add.34", %".937"
  store i32 %"add.35", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".940" = load i32, ptr %"R9"
  %".941" = load i1, ptr %"P2"
  %".942" = xor i1 1, -1
  %".943" = zext i1 %".941" to i32
  %".944" = zext i1 %".942" to i32
  %"add.36" = add i32 0, %".940"
  %"add.37" = add i32 %"add.36", 0
  %"add.38" = add i32 %"add.37", %".943"
  %"add.39" = add i32 %"add.38", %".944"
  store i32 %"add.39", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".947" = load float, ptr %"R2"
  %".948" = load float, ptr %"R5"
  %".949" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".947", %".948"
  %"fadd.28" = fadd float %"fmul.28", %".949"
  %".950" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".950"
  ; @P0 BRA `(.L_x_14)
  %".953" = load i1, ptr %"P0"
  %".954" = icmp eq i1 %".953", 1
  br i1 %".954", label %".L_x_14", label %".L_x_8"
.L_x_8:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".959" = load i32, ptr %"R0"
  %".960" = load i32, ptr %"R5"
  %"zext.123" = zext i32 %".959" to i64
  %"zext.124" = zext i32 %".960" to i64
  %"mul.11" = mul i64 %"zext.123", %"zext.124"
  %".961" = ptrtoint ptr %"Arg_2" to i64
  %"add.40" = add i64 %"mul.11", %".961"
  %".962" = and i64 %"add.40", 18446744069414584320
  %".963" = lshr i64 %".962", 32
  %"trunc32.8" = trunc i64 %".963" to i32
  %"trunc32.9" = trunc i64 %"add.40" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".967" = load i32, ptr %"R2"
  %"zext.125" = zext i32 %".967" to i64
  %".968" = load i32, ptr %"R3"
  %"zext.126" = zext i32 %".968" to i64
  %"shl.58" = shl i64 %"zext.126", 32
  %"or.58" = or i64 %"shl.58", %"zext.125"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".969" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".970" = bitcast ptr %"R2" to ptr
  store float %".969", ptr %".970"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".973" = load i32, ptr %"R0"
  %".974" = load i32, ptr %"R5"
  %"zext.127" = zext i32 %".973" to i64
  %"zext.128" = zext i32 %".974" to i64
  %"mul.12" = mul i64 %"zext.127", %"zext.128"
  %".975" = ptrtoint ptr %"Arg_3" to i64
  %"add.41" = add i64 %"mul.12", %".975"
  %".976" = and i64 %"add.41", 18446744069414584320
  %".977" = lshr i64 %".976", 32
  %"trunc32.10" = trunc i64 %".977" to i32
  %"trunc32.11" = trunc i64 %"add.41" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".981" = load float, ptr %"R2"
  %".982" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".981", %".982"
  %".983" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".983"
  ; STG.E.SYS [R4], R7
  %".986" = load float, ptr %"R7"
  %".987" = load i32, ptr %"R4"
  %"zext.129" = zext i32 %".987" to i64
  %".988" = load i32, ptr %"R5"
  %"zext.130" = zext i32 %".988" to i64
  %"shl.59" = shl i64 %"zext.130", 32
  %"or.59" = or i64 %"shl.59", %"zext.129"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".986", ptr addrspace(1) %"ptr_cast_for_access.59"
  ; EXIT
  br label %"ExitFunction"
.L_x_15:
  ; BRA `(.L_x_15)
  br label %".L_x_15"
ExitFunction:
  ret void
}

define ptx_kernel void @"_Z10max_pool2dPfS_iii"(ptr %"Arg_0", ptr %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4")
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
  %"R9" = alloca i32, i32 1
  %"R22" = alloca i32, i32 1
  %"R24" = alloca i32, i32 1
  %"R25" = alloca i32, i32 1
  %"R26" = alloca i32, i32 1
  %"R27" = alloca i32, i32 1
  %"R28" = alloca i32, i32 1
  %"R29" = alloca i32, i32 1
  %"R30" = alloca i32, i32 1
  %"R31" = alloca i32, i32 1
  %"R32" = alloca i32, i32 1
  %"R33" = alloca i32, i32 1
  %"R34" = alloca i32, i32 1
  %"R35" = alloca i32, i32 1
  %"R36" = alloca i32, i32 1
  %"R37" = alloca i32, i32 1
  %"R38" = alloca i32, i32 1
  %"R39" = alloca i32, i32 1
  %"R40" = alloca i32, i32 1
  %"R41" = alloca i32, i32 1
  %"R42" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
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
  %"UR6" = alloca i32, i32 1
  %"UR7" = alloca i32, i32 1
  %"UR8" = alloca i32, i32 1
  %"UR9" = alloca i32, i32 1
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
  %"mul" = mul i32 0, 0
  %"add" = add i32 %"mul", 0
  store i32 %"add", ptr %"R1"
  ; IABS R7, c[0x0][0x174]
  %".15" = icmp sge i32 %"Arg_3", 0
  %".16" = sub i32 0, %"Arg_3"
  %"iabs" = select  i1 %".15", i32 %"Arg_3", i32 %".16"
  store i32 %"iabs", ptr %"R7"
  ; ULDC.64 UR4, c[0x0][0x170]
  store i32 %"Arg_2", ptr %"UR4"
  ; S2R R10, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R10"
  ; ULOP3.LUT UR4, UR4, UR5, URZ, 0x3c, !UPT
  %".23" = load i32, ptr %"UR4"
  %".24" = load i32, ptr %"UR5"
  %".25" = xor i1 1, -1
  %".26" = xor i32 %".23", %".24"
  store i32 %".26", ptr %"UR4"
  ; I2F.RP R0, R7
  %".29" = load i32, ptr %"R7"
  store i32 %".29", ptr %"R0"
  ; S2R R19, SR_CTAID.Z
  %"nvvm_ctaid_z" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()
  store i32 %"nvvm_ctaid_z", ptr %"R19"
  ; ISETP.LE.AND P1, PT, RZ, UR4, PT
  %".34" = load i32, ptr %"UR4"
  %".35" = load i1, ptr %"PT"
  %"cmp" = icmp sle i32 0, %".34"
  %".36" = add i1 %"cmp", 0
  %".37" = xor i1 %".36", -1
  %".38" = and i1 %"cmp", %".35"
  %".39" = and i1 %".37", %".35"
  store i1 %".38", ptr %"P1"
  ; MUFU.RCP R0, R0
  %".42" = load float, ptr %"R0"
  %".43" = fdiv float 0x3ff0000000000000, %".42"
  %".44" = bitcast ptr %"R0" to ptr
  store float %".43", ptr %".44"
  ; IADD3 R2, R0, 0xffffffe, RZ
  %".47" = load i32, ptr %"R0"
  %".48" = add i32 %".47", 268435454
  %".49" = add i32 %".48", 0
  store i32 %".49", ptr %"R2"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %".52" = load float, ptr %"R2"
  %".53" = bitcast ptr %"R3" to ptr
  store float %".52", ptr %".53"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R2"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".58" = load i32, ptr %"R3"
  %".59" = sub i32 0, %".58"
  %"mul.2" = mul i32 0, 0
  %"add.2" = add i32 %"mul.2", %".59"
  store i32 %"add.2", ptr %"R4"
  ; IMAD R5, R4, R7, RZ
  %".62" = load i32, ptr %"R4"
  %".63" = load i32, ptr %"R7"
  %"mul.3" = mul i32 %".62", %".63"
  %"add.3" = add i32 %"mul.3", 0
  store i32 %"add.3", ptr %"R5"
  ; IABS R4, c[0x0][0x170]
  %".66" = icmp sge i32 %"Arg_2", 0
  %".67" = sub i32 0, %"Arg_2"
  %"iabs.1" = select  i1 %".66", i32 %"Arg_2", i32 %".67"
  store i32 %"iabs.1", ptr %"R4"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".70" = load i32, ptr %"R3"
  %".71" = load i32, ptr %"R5"
  %".72" = load i32, ptr %"R2"
  %"mul.4" = mul i32 %".70", %".71"
  %"add.4" = add i32 %"mul.4", %".72"
  store i32 %"add.4", ptr %"R3"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".77" = load i32, ptr %"R3"
  %".78" = load i32, ptr %"R4"
  %"mul.5" = mul i32 %".77", %".78"
  %"add.5" = add i32 %"mul.5", 0
  store i32 %"add.5", ptr %"R3"
  ; S2R R5, SR_TID.X
  %"nvvm_threadidx_x" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"nvvm_threadidx_x", ptr %"R5"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".83" = load i32, ptr %"R3"
  %".84" = sub i32 0, %".83"
  %"mul.6" = mul i32 0, 0
  %"add.6" = add i32 %"mul.6", %".84"
  store i32 %"add.6", ptr %"R0"
  ; IMAD R0, R7, R0, R4
  %".87" = load i32, ptr %"R7"
  %".88" = load i32, ptr %"R0"
  %".89" = load i32, ptr %"R4"
  %"mul.7" = mul i32 %".87", %".88"
  %"add.7" = add i32 %"mul.7", %".89"
  store i32 %"add.7", ptr %"R0"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".92" = load i32, ptr %"R7"
  %".93" = load i32, ptr %"R0"
  %".94" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".92", %".93"
  %".95" = add i1 %"cmp.1", 0
  %".96" = xor i1 %".95", -1
  %".97" = and i1 %"cmp.1", %".94"
  %".98" = and i1 %".96", %".94"
  store i1 %".97", ptr %"P2"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ
  %".101" = load i1, ptr %"P2"
  %".102" = icmp ne i1 %".101", 1
  br i1 %".102", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".105" = load i32, ptr %"R0"
  %".106" = load i32, ptr %"R7"
  %".107" = sub i32 0, %".106"
  %".108" = add i32 %".105", %".107"
  %".109" = add i32 %".108", 0
  store i32 %".109", ptr %"R0"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ
  %".114" = load i1, ptr %"P2"
  %".115" = icmp ne i1 %".114", 1
  br i1 %".115", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".118" = load i32, ptr %"R3"
  %".119" = add i32 %".118", 1
  %".120" = add i32 %".119", 0
  store i32 %".120", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".125" = load i32, ptr %"R0"
  %".126" = load i32, ptr %"R7"
  %".127" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".125", %".126"
  %".128" = add i1 %"cmp.2", 0
  %".129" = xor i1 %".128", -1
  %".130" = and i1 %"cmp.2", %".127"
  %".131" = and i1 %".129", %".127"
  store i1 %".130", ptr %"P0"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".134" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".135" = load i32, ptr %"R5"
  %"mul.8" = mul i32 %".134", %"nvvm_blockdim_x"
  %"add.8" = add i32 %"mul.8", %".135"
  store i32 %"add.8", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"nvvm_threadidx_y" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()
  store i32 %"nvvm_threadidx_y", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".140" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_3"
  %".141" = add i1 %"cmp.3", 0
  %".142" = xor i1 %".141", -1
  %".143" = and i1 %"cmp.3", %".140"
  %".144" = and i1 %".142", %".140"
  store i1 %".143", ptr %"P2"
  ; @P0 IADD3 R3, R3, 0x1, RZ
  %".147" = load i1, ptr %"P0"
  %".148" = icmp eq i1 %".147", 1
  br i1 %".148", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".151" = load i32, ptr %"R3"
  %".152" = add i32 %".151", 1
  %".153" = add i32 %".152", 0
  store i32 %".153", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".158" = load i32, ptr %"R3"
  %"mul.9" = mul i32 0, 0
  %"add.9" = add i32 %"mul.9", %".158"
  store i32 %"add.9", ptr %"R21"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21
  %".161" = load i1, ptr %"P1"
  %".162" = icmp ne i1 %".161", 1
  br i1 %".162", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".165" = load i32, ptr %"R21"
  %".166" = sub i32 0, %".165"
  %"mul.10" = mul i32 0, 0
  %"add.10" = add i32 %"mul.10", %".166"
  store i32 %"add.10", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".171" = load i1, ptr %"P2"
  %".172" = icmp ne i1 %".171", 1
  br i1 %".172", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".175" = xor i1 1, -1
  %".176" = xor i32 %"Arg_3", -1
  store i32 %".176", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".181" = load i32, ptr %"R10"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".182" = load i32, ptr %"R7"
  %"mul.11" = mul i32 %".181", %"nvvm_blockdim_y"
  %"add.11" = add i32 %"mul.11", %".182"
  store i32 %"add.11", ptr %"R10"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".185" = load i32, ptr %"R0"
  %".186" = load i32, ptr %"R21"
  %".187" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".185", %".186"
  %".188" = add i1 %"cmp.4", 0
  %".189" = xor i1 %".188", -1
  %".190" = and i1 %"cmp.4", %".187"
  %".191" = and i1 %".189", %".187"
  store i1 %".190", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".194" = load i32, ptr %"R10"
  %".195" = load i32, ptr %"R21"
  %".196" = load i1, ptr %"P0"
  %"cmp.5" = icmp sge i32 %".194", %".195"
  %".197" = add i1 %"cmp.5", 0
  %".198" = xor i1 %".197", -1
  %".199" = or i1 %"cmp.5", %".196"
  %".200" = or i1 %".198", %".196"
  store i1 %".199", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".203" = load i32, ptr %"R19"
  %".204" = load i1, ptr %"P0"
  %"cmp.6" = icmp sge i32 %".203", %"Arg_4"
  %".205" = add i1 %"cmp.6", 0
  %".206" = xor i1 %".205", -1
  %".207" = or i1 %"cmp.6", %".204"
  %".208" = or i1 %".206", %".204"
  store i1 %".207", ptr %"P0"
  ; @P0 EXIT
  %".211" = load i1, ptr %"P0"
  %".212" = icmp eq i1 %".211", 1
  br i1 %".212", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
.text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240:
  ; EXIT
  br label %"ExitFunction"
.text._Z10max_pool2dPfS_iii_split_0x0250:
  ; IMAD.MOV.U32 R15, RZ, RZ, c[0x0][0x174]
  %"mul.12" = mul i32 0, 0
  %"add.12" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.12", ptr %"R15"
  ; MOV R11, 0xff800000
  store i32 4286578688, ptr %"R11"
  ; ISETP.GE.AND P0, PT, R15, 0x1, PT
  %".221" = load i32, ptr %"R15"
  %".222" = load i1, ptr %"PT"
  %"cmp.7" = icmp sge i32 %".221", 1
  %".223" = add i1 %"cmp.7", 0
  %".224" = xor i1 %".223", -1
  %".225" = and i1 %"cmp.7", %".222"
  %".226" = and i1 %".224", %".222"
  store i1 %".225", ptr %"P0"
  ; @!P0 BRA `(.L_x_16)
  %".229" = load i1, ptr %"P0"
  %".230" = icmp ne i1 %".229", 1
  br i1 %".230", label %".L_x_16", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".233" = load i32, ptr %"R19"
  %"mul.13" = mul i32 %".233", %"Arg_2"
  %"add.13" = add i32 %"mul.13", 0
  store i32 %"add.13", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".236" = load i32, ptr %"R15"
  %".237" = add i32 %".236", -1
  %".238" = add i32 %".237", 0
  store i32 %".238", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".241" = load i32, ptr %"R0"
  %"mul.14" = mul i32 %".241", %"Arg_3"
  %"add.14" = add i32 %"mul.14", 0
  store i32 %"add.14", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".244" = load i32, ptr %"R15"
  %".245" = xor i1 1, -1
  %".246" = and i32 %".244", 3
  store i32 %".246", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".249" = load i32, ptr %"R10"
  %".250" = load i32, ptr %"R3"
  %"mul.15" = mul i32 %".249", %"Arg_3"
  %"add.15" = add i32 %"mul.15", %".250"
  store i32 %"add.15", ptr %"R12"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".253" = load i32, ptr %"R2"
  %".254" = load i1, ptr %"PT"
  %"cmp.8" = icmp sge i32 %".253", 3
  %".255" = add i1 %"cmp.8", 0
  %".256" = xor i1 %".255", -1
  %".257" = and i1 %"cmp.8", %".254"
  %".258" = and i1 %".256", %".254"
  store i1 %".257", ptr %"P0"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.16" = add i32 %"mul.16", -8388608
  store i32 %"add.16", ptr %"R11"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".263" = load i32, ptr %"R15"
  %".264" = sub i32 0, %"Arg_3"
  %".265" = add i32 %".263", %".264"
  %".266" = add i32 %".265", 0
  store i32 %".266", ptr %"R20"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.17" = add i32 %"mul.17", 0
  store i32 %"add.17", ptr %"R16"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".271" = load i32, ptr %"R12"
  %".272" = load i32, ptr %"R13"
  %"mul.18" = mul i32 %".271", %"Arg_2"
  %"add.18" = add i32 %"mul.18", %".272"
  store i32 %"add.18", ptr %"R14"
  br label %".L_x_20"
.L_x_20:
  ; UMOV UR4, URZ
  %".276" = load i32, ptr %"URZ"
  store i32 %".276", ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".279" = load i32, ptr %"R15"
  %".280" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".279", 0
  %".281" = add i1 %"cmp.9", 0
  %".282" = xor i1 %".281", -1
  %".283" = and i1 %"cmp.9", %".280"
  %".284" = and i1 %".282", %".280"
  store i1 %".283", ptr %"P2"
  ; @!P0 BRA `(.L_x_17)
  %".287" = load i1, ptr %"P0"
  %".288" = icmp ne i1 %".287", 1
  br i1 %".288", label %".L_x_17", label %".L_x_20_split_0x0360"
.L_x_20_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".291" = load i32, ptr %"R14"
  %".292" = load i32, ptr %"R16"
  %"mul.19" = mul i32 %".291", 1
  %"add.19" = add i32 %"mul.19", %".292"
  store i32 %"add.19", ptr %"R17"
  ; UMOV UR4, URZ
  %".295" = load i32, ptr %"URZ"
  store i32 %".295", ptr %"UR4"
  br label %".L_x_18"
.L_x_18:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.20" = add i32 %"mul.20", %"Arg_2"
  store i32 %"add.20", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".303" = load i32, ptr %"R17"
  %".304" = load i32, ptr %"R2"
  %"zext" = zext i32 %".303" to i64
  %"zext.1" = zext i32 %".304" to i64
  %"mul.21" = mul i64 %"zext", %"zext.1"
  %".305" = ptrtoint ptr %"Arg_0" to i64
  %"add.21" = add i64 %"mul.21", %".305"
  %".306" = and i64 %"add.21", 18446744069414584320
  %".307" = lshr i64 %".306", 32
  %"trunc32" = trunc i64 %".307" to i32
  %"trunc32.1" = trunc i64 %"add.21" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".311" = load i32, ptr %"R23"
  %".312" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".311" to i64
  %"zext.3" = zext i32 4 to i64
  %"mul.22" = mul i64 %"zext.2", %"zext.3"
  %"zext.4" = zext i32 %".312" to i64
  %"add.22" = add i64 %"mul.22", %"zext.4"
  %".313" = and i64 %"add.22", 18446744069414584320
  %".314" = lshr i64 %".313", 32
  %"trunc32.2" = trunc i64 %".314" to i32
  %"trunc32.3" = trunc i64 %"add.22" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; LDG.E.SYS R2, [R2]
  %".318" = load i32, ptr %"R2"
  %"zext.5" = zext i32 %".318" to i64
  %".319" = load i32, ptr %"R3"
  %"zext.6" = zext i32 %".319" to i64
  %"shl" = shl i64 %"zext.6", 32
  %"or" = or i64 %"shl", %"zext.5"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".320" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".321" = bitcast ptr %"R2" to ptr
  store float %".320", ptr %".321"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".324" = load i32, ptr %"R23"
  %".325" = load i32, ptr %"R4"
  %"zext.7" = zext i32 %".324" to i64
  %"zext.8" = zext i32 4 to i64
  %"mul.23" = mul i64 %"zext.7", %"zext.8"
  %"zext.9" = zext i32 %".325" to i64
  %"add.23" = add i64 %"mul.23", %"zext.9"
  %".326" = and i64 %"add.23", 18446744069414584320
  %".327" = lshr i64 %".326", 32
  %"trunc32.4" = trunc i64 %".327" to i32
  %"trunc32.5" = trunc i64 %"add.23" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".331" = load i32, ptr %"R4"
  %"zext.10" = zext i32 %".331" to i64
  %".332" = load i32, ptr %"R5"
  %"zext.11" = zext i32 %".332" to i64
  %"shl.1" = shl i64 %"zext.11", 32
  %"or.1" = or i64 %"shl.1", %"zext.10"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".333" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".334" = bitcast ptr %"R4" to ptr
  store float %".333", ptr %".334"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".337" = load i32, ptr %"R23"
  %".338" = load i32, ptr %"R6"
  %"zext.12" = zext i32 %".337" to i64
  %"zext.13" = zext i32 4 to i64
  %"mul.24" = mul i64 %"zext.12", %"zext.13"
  %"zext.14" = zext i32 %".338" to i64
  %"add.24" = add i64 %"mul.24", %"zext.14"
  %".339" = and i64 %"add.24", 18446744069414584320
  %".340" = lshr i64 %".339", 32
  %"trunc32.6" = trunc i64 %".340" to i32
  %"trunc32.7" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".344" = load i32, ptr %"R6"
  %"zext.15" = zext i32 %".344" to i64
  %".345" = load i32, ptr %"R7"
  %"zext.16" = zext i32 %".345" to i64
  %"shl.2" = shl i64 %"zext.16", 32
  %"or.2" = or i64 %"shl.2", %"zext.15"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".346" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".347" = bitcast ptr %"R6" to ptr
  store float %".346", ptr %".347"
  ; LDG.E.SYS R8, [R8]
  %".350" = load i32, ptr %"R8"
  %"zext.17" = zext i32 %".350" to i64
  %".351" = load i32, ptr %"R9"
  %"zext.18" = zext i32 %".351" to i64
  %"shl.3" = shl i64 %"zext.18", 32
  %"or.3" = or i64 %"shl.3", %"zext.17"
  %"inttoptr_bytes.3" = inttoptr i64 %"or.3" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".352" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".353" = bitcast ptr %"R8" to ptr
  store float %".352", ptr %".353"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".356" = load i32, ptr %"UR4"
  %".357" = add i32 %".356", 4
  %".358" = add i32 %".357", 0
  store i32 %".358", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".361" = load i32, ptr %"R20"
  %".362" = load i32, ptr %"UR4"
  %".363" = add i32 %".361", %".362"
  %".364" = add i32 %".363", 0
  store i32 %".364", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".367" = load i32, ptr %"R18"
  %".368" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".367", 0
  %".369" = add i1 %"cmp.10", 0
  %".370" = xor i1 %".369", -1
  %".371" = and i1 %"cmp.10", %".368"
  %".372" = and i1 %".370", %".368"
  store i1 %".371", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".375" = load i32, ptr %"R23"
  %".376" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".375", 4
  %"add.25" = add i32 %"mul.25", %".376"
  store i32 %"add.25", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".379" = load float, ptr %"R2"
  %".380" = load float, ptr %"R11"
  %".381" = xor i1 1, -1
  %".382" = fcmp olt float %".379", %".380"
  %".383" = fcmp ogt float %".379", %".380"
  %"mnmx_min" = select  i1 %".382", float %".379", float %".380"
  %"mnmx_max" = select  i1 %".383", float %".379", float %".380"
  %"mnmx_final" = select  i1 %".381", float %"mnmx_min", float %"mnmx_max"
  %".384" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final", ptr %".384"
  ; FMNMX R11, R11, R4, !PT
  %".387" = load float, ptr %"R11"
  %".388" = load float, ptr %"R4"
  %".389" = xor i1 1, -1
  %".390" = fcmp olt float %".387", %".388"
  %".391" = fcmp ogt float %".387", %".388"
  %"mnmx_min.1" = select  i1 %".390", float %".387", float %".388"
  %"mnmx_max.1" = select  i1 %".391", float %".387", float %".388"
  %"mnmx_final.1" = select  i1 %".389", float %"mnmx_min.1", float %"mnmx_max.1"
  %".392" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.1", ptr %".392"
  ; FMNMX R11, R11, R6, !PT
  %".395" = load float, ptr %"R11"
  %".396" = load float, ptr %"R6"
  %".397" = xor i1 1, -1
  %".398" = fcmp olt float %".395", %".396"
  %".399" = fcmp ogt float %".395", %".396"
  %"mnmx_min.2" = select  i1 %".398", float %".395", float %".396"
  %"mnmx_max.2" = select  i1 %".399", float %".395", float %".396"
  %"mnmx_final.2" = select  i1 %".397", float %"mnmx_min.2", float %"mnmx_max.2"
  %".400" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.2", ptr %".400"
  ; FMNMX R11, R11, R8, !PT
  %".403" = load float, ptr %"R11"
  %".404" = load float, ptr %"R8"
  %".405" = xor i1 1, -1
  %".406" = fcmp olt float %".403", %".404"
  %".407" = fcmp ogt float %".403", %".404"
  %"mnmx_min.3" = select  i1 %".406", float %".403", float %".404"
  %"mnmx_max.3" = select  i1 %".407", float %".403", float %".404"
  %"mnmx_final.3" = select  i1 %".405", float %"mnmx_min.3", float %"mnmx_max.3"
  %".408" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.3", ptr %".408"
  ; @P1 BRA `(.L_x_18)
  %".411" = load i1, ptr %"P1"
  %".412" = icmp eq i1 %".411", 1
  br i1 %".412", label %".L_x_18", label %".L_x_17"
.L_x_17:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".415" = load i32, ptr %"R13"
  %".416" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".415", 1
  %"add.26" = add i32 %"mul.26", %".416"
  store i32 %"add.26", ptr %"R4"
  ; @!P2 BRA `(.L_x_19)
  %".419" = load i1, ptr %"P2"
  %".420" = icmp ne i1 %".419", 1
  br i1 %".420", label %".L_x_19", label %".L_x_17_split_0x04d0"
.L_x_17_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".423" = load i32, ptr %"R12"
  %".424" = load i32, ptr %"UR4"
  %".425" = add i32 %".423", %".424"
  %".426" = add i32 %".425", 0
  store i32 %".426", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".431" = load i32, ptr %"R5"
  %".432" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".431", %"Arg_2"
  %"add.27" = add i32 %"mul.27", %".432"
  store i32 %"add.27", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".435" = load i32, ptr %"R2"
  %".436" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".435" to i64
  %"zext.20" = zext i32 %".436" to i64
  %"mul.28" = mul i64 %"zext.19", %"zext.20"
  %".437" = ptrtoint ptr %"Arg_0" to i64
  %"add.28" = add i64 %"mul.28", %".437"
  %".438" = and i64 %"add.28", 18446744069414584320
  %".439" = lshr i64 %".438", 32
  %"trunc32.8" = trunc i64 %".439" to i32
  %"trunc32.9" = trunc i64 %"add.28" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".443" = load i32, ptr %"R2"
  %"zext.21" = zext i32 %".443" to i64
  %".444" = load i32, ptr %"R3"
  %"zext.22" = zext i32 %".444" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %"inttoptr_bytes.4" = inttoptr i64 %"or.4" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".445" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".446" = bitcast ptr %"R2" to ptr
  store float %".445", ptr %".446"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".449" = load i32, ptr %"R15"
  %".450" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".449", 1
  %".451" = add i1 %"cmp.11", 0
  %".452" = xor i1 %".451", -1
  %".453" = and i1 %"cmp.11", %".450"
  %".454" = and i1 %".452", %".450"
  store i1 %".453", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".457" = load float, ptr %"R11"
  %".458" = load float, ptr %"R2"
  %".459" = xor i1 1, -1
  %".460" = fcmp olt float %".457", %".458"
  %".461" = fcmp ogt float %".457", %".458"
  %"mnmx_min.4" = select  i1 %".460", float %".457", float %".458"
  %"mnmx_max.4" = select  i1 %".461", float %".457", float %".458"
  %"mnmx_final.4" = select  i1 %".459", float %"mnmx_min.4", float %"mnmx_max.4"
  %".462" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.4", ptr %".462"
  ; @!P1 BRA `(.L_x_19)
  %".465" = load i1, ptr %"P1"
  %".466" = icmp ne i1 %".465", 1
  br i1 %".466", label %".L_x_19", label %".L_x_17_split_0x0550"
.L_x_17_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".469" = load i32, ptr %"R15"
  %".470" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".469", 2
  %".471" = add i1 %"cmp.12", 0
  %".472" = xor i1 %".471", -1
  %".473" = and i1 %"cmp.12", %".470"
  %".474" = and i1 %".472", %".470"
  store i1 %".473", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".477" = load i32, ptr %"R5"
  %".478" = add i32 %".477", 1
  %".479" = add i32 %".478", 0
  store i32 %".479", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".482" = load i32, ptr %"R2"
  %".483" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".482", %"Arg_2"
  %"add.29" = add i32 %"mul.29", %".483"
  store i32 %"add.29", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".486" = load i1, ptr %"P1"
  %".487" = icmp eq i1 %".486", 1
  br i1 %".487", label %".L_x_17_split_0x0550_conditionalExpr_0x0580", label %".L_x_17_split_0x0590"
.L_x_17_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".490" = load i32, ptr %"R5"
  %".491" = add i32 %".490", 2
  %".492" = add i32 %".491", 0
  store i32 %".492", ptr %"R3"
  ; BRA `(.L_x_17_split_0x0590)
  br label %".L_x_17_split_0x0590"
.L_x_17_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".497" = load i1, ptr %"P1"
  %".498" = icmp eq i1 %".497", 1
  br i1 %".498", label %".L_x_17_split_0x0590_conditionalExpr_0x0590", label %".L_x_17_split_0x05a0"
.L_x_17_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".501" = load i32, ptr %"R3"
  %".502" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".501", %"Arg_2"
  %"add.30" = add i32 %"mul.30", %".502"
  store i32 %"add.30", ptr %"R4"
  ; BRA `(.L_x_17_split_0x05a0)
  br label %".L_x_17_split_0x05a0"
.L_x_17_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".507" = load i32, ptr %"R2"
  %".508" = load i32, ptr %"R7"
  %"zext.23" = zext i32 %".507" to i64
  %"zext.24" = zext i32 %".508" to i64
  %"mul.31" = mul i64 %"zext.23", %"zext.24"
  %".509" = ptrtoint ptr %"Arg_0" to i64
  %"add.31" = add i64 %"mul.31", %".509"
  %".510" = and i64 %"add.31", 18446744069414584320
  %".511" = lshr i64 %".510", 32
  %"trunc32.10" = trunc i64 %".511" to i32
  %"trunc32.11" = trunc i64 %"add.31" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".515" = load i1, ptr %"P1"
  %".516" = icmp eq i1 %".515", 1
  br i1 %".516", label %".L_x_17_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_17_split_0x05c0"
.L_x_17_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".519" = load i32, ptr %"R4"
  %".520" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".519" to i64
  %"zext.26" = zext i32 %".520" to i64
  %"mul.32" = mul i64 %"zext.25", %"zext.26"
  %".521" = ptrtoint ptr %"Arg_0" to i64
  %"add.32" = add i64 %"mul.32", %".521"
  %".522" = and i64 %"add.32", 18446744069414584320
  %".523" = lshr i64 %".522", 32
  %"trunc32.12" = trunc i64 %".523" to i32
  %"trunc32.13" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_17_split_0x05c0)
  br label %".L_x_17_split_0x05c0"
.L_x_17_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".529" = load i32, ptr %"R2"
  %"zext.27" = zext i32 %".529" to i64
  %".530" = load i32, ptr %"R3"
  %"zext.28" = zext i32 %".530" to i64
  %"shl.5" = shl i64 %"zext.28", 32
  %"or.5" = or i64 %"shl.5", %"zext.27"
  %"inttoptr_bytes.5" = inttoptr i64 %"or.5" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".531" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".532" = bitcast ptr %"R2" to ptr
  store float %".531", ptr %".532"
  ; @P1 LDG.E.SYS R4, [R4]
  %".535" = load i1, ptr %"P1"
  %".536" = icmp eq i1 %".535", 1
  br i1 %".536", label %".L_x_17_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_17_split_0x05e0"
.L_x_17_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".539" = load i32, ptr %"R4"
  %"zext.29" = zext i32 %".539" to i64
  %".540" = load i32, ptr %"R5"
  %"zext.30" = zext i32 %".540" to i64
  %"shl.6" = shl i64 %"zext.30", 32
  %"or.6" = or i64 %"shl.6", %"zext.29"
  %"inttoptr_bytes.6" = inttoptr i64 %"or.6" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".541" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".542" = bitcast ptr %"R4" to ptr
  store float %".541", ptr %".542"
  ; BRA `(.L_x_17_split_0x05e0)
  br label %".L_x_17_split_0x05e0"
.L_x_17_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".547" = load float, ptr %"R11"
  %".548" = load float, ptr %"R2"
  %".549" = xor i1 1, -1
  %".550" = fcmp olt float %".547", %".548"
  %".551" = fcmp ogt float %".547", %".548"
  %"mnmx_min.5" = select  i1 %".550", float %".547", float %".548"
  %"mnmx_max.5" = select  i1 %".551", float %".547", float %".548"
  %"mnmx_final.5" = select  i1 %".549", float %"mnmx_min.5", float %"mnmx_max.5"
  %".552" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.5", ptr %".552"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".555" = load i1, ptr %"P1"
  %".556" = icmp eq i1 %".555", 1
  br i1 %".556", label %".L_x_17_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_19"
.L_x_17_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".559" = load float, ptr %"R11"
  %".560" = load float, ptr %"R4"
  %".561" = xor i1 1, -1
  %".562" = fcmp olt float %".559", %".560"
  %".563" = fcmp ogt float %".559", %".560"
  %"mnmx_min.6" = select  i1 %".562", float %".559", float %".560"
  %"mnmx_max.6" = select  i1 %".563", float %".559", float %".560"
  %"mnmx_final.6" = select  i1 %".561", float %"mnmx_min.6", float %"mnmx_max.6"
  %".564" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.6", ptr %".564"
  ; BRA `(.L_x_19)
  br label %".L_x_19"
.L_x_19:
  ; IADD3 R16, R16, 0x1, RZ
  %".569" = load i32, ptr %"R16"
  %".570" = add i32 %".569", 1
  %".571" = add i32 %".570", 0
  store i32 %".571", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".574" = load i32, ptr %"R16"
  %".575" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".574", %"Arg_3"
  %".576" = add i1 %"cmp.13", 0
  %".577" = xor i1 %".576", -1
  %".578" = and i1 %"cmp.13", %".575"
  %".579" = and i1 %".577", %".575"
  store i1 %".578", ptr %"P1"
  ; @!P1 BRA `(.L_x_20)
  %".582" = load i1, ptr %"P1"
  %".583" = icmp ne i1 %".582", 1
  br i1 %".583", label %".L_x_20", label %".L_x_16"
.L_x_16:
  ; IMAD R3, R21.reuse, R19, R10
  %".586" = load i32, ptr %"R21"
  %".587" = load i32, ptr %"R19"
  %".588" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".586", %".587"
  %"add.33" = add i32 %"mul.33", %".588"
  store i32 %"add.33", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.34" = add i32 %"mul.34", 4
  store i32 %"add.34", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".593" = load i32, ptr %"R21"
  %".594" = load i32, ptr %"R3"
  %".595" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".593", %".594"
  %"add.35" = add i32 %"mul.35", %".595"
  store i32 %"add.35", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".598" = load i32, ptr %"R3"
  %".599" = load i32, ptr %"R2"
  %"zext.31" = zext i32 %".598" to i64
  %"zext.32" = zext i32 %".599" to i64
  %"mul.36" = mul i64 %"zext.31", %"zext.32"
  %".600" = ptrtoint ptr %"Arg_1" to i64
  %"add.36" = add i64 %"mul.36", %".600"
  %".601" = and i64 %"add.36", 18446744069414584320
  %".602" = lshr i64 %".601", 32
  %"trunc32.14" = trunc i64 %".602" to i32
  %"trunc32.15" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".606" = load i32, ptr %"R11"
  %".607" = load i32, ptr %"R2"
  %"zext.33" = zext i32 %".607" to i64
  %".608" = load i32, ptr %"R3"
  %"zext.34" = zext i32 %".608" to i64
  %"shl.7" = shl i64 %"zext.34", 32
  %"or.7" = or i64 %"shl.7", %"zext.33"
  %"inttoptr_bytes.7" = inttoptr i64 %"or.7" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  store i32 %".606", ptr addrspace(1) %"ptr_cast_for_access.7"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()

declare i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()

define ptx_kernel void @"_Z4reluPfS_i"(ptr %"Arg_0", ptr %"Arg_1", i32 %"Arg_2")
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
  %"R0" = alloca i32, i32 1
  %"R6" = alloca i32, i32 1
  %"R8" = alloca i32, i32 1
  %"R9" = alloca i32, i32 1
  %"R10" = alloca i32, i32 1
  %"R11" = alloca i32, i32 1
  %"R12" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R14" = alloca i32, i32 1
  %"R15" = alloca i32, i32 1
  %"R16" = alloca i32, i32 1
  %"R17" = alloca i32, i32 1
  %"R18" = alloca i32, i32 1
  %"R19" = alloca i32, i32 1
  %"R20" = alloca i32, i32 1
  %"R21" = alloca i32, i32 1
  %"R22" = alloca i32, i32 1
  %"R23" = alloca i32, i32 1
  %"R24" = alloca i32, i32 1
  %"R25" = alloca i32, i32 1
  %"R26" = alloca i32, i32 1
  %"R27" = alloca i32, i32 1
  %"R28" = alloca i32, i32 1
  %"R29" = alloca i32, i32 1
  %"R30" = alloca i32, i32 1
  %"R31" = alloca i32, i32 1
  %"R32" = alloca i32, i32 1
  %"R33" = alloca i32, i32 1
  %"R34" = alloca i32, i32 1
  %"R35" = alloca i32, i32 1
  %"R36" = alloca i32, i32 1
  %"R37" = alloca i32, i32 1
  %"R38" = alloca i32, i32 1
  %"R39" = alloca i32, i32 1
  %"R40" = alloca i32, i32 1
  %"R41" = alloca i32, i32 1
  %"R42" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
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
  %"UR4" = alloca i32, i32 1
  %"UR5" = alloca i32, i32 1
  %"UR6" = alloca i32, i32 1
  %"UR7" = alloca i32, i32 1
  %"UR8" = alloca i32, i32 1
  %"UR9" = alloca i32, i32 1
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
  %"URZ" = alloca i32, i32 1
  store i1 1, ptr %"PT"
  store i32 0, ptr %"RZ"
  store i32 0, ptr %"URZ"
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R4, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R4"
  ; S2R R3, SR_TID.X
  %"nvvm_threadidx_x" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"nvvm_threadidx_x", ptr %"R3"
  ; IMAD R4, R4, c[0x0][0x0], R3
  %".16" = load i32, ptr %"R4"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".17" = load i32, ptr %"R3"
  %"mul" = mul i32 %".16", %"nvvm_blockdim_x"
  %"add" = add i32 %"mul", %".17"
  store i32 %"add", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, c[0x0][0x170], PT
  %".20" = load i32, ptr %"R4"
  %".21" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".20", %"Arg_2"
  %".22" = add i1 %"cmp", 0
  %".23" = xor i1 %".22", -1
  %".24" = and i1 %"cmp", %".21"
  %".25" = and i1 %".23", %".21"
  store i1 %".24", ptr %"P0"
  ; @P0 EXIT
  %".28" = load i1, ptr %"P0"
  %".29" = icmp eq i1 %".28", 1
  br i1 %".29", label %".text._Z4reluPfS_i_conditionalExpr_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R4, R5, c[0x0][0x160]
  %".36" = load i32, ptr %"R4"
  %".37" = load i32, ptr %"R5"
  %"zext" = zext i32 %".36" to i64
  %"zext.1" = zext i32 %".37" to i64
  %"mul.1" = mul i64 %"zext", %"zext.1"
  %".38" = ptrtoint ptr %"Arg_0" to i64
  %"add.1" = add i64 %"mul.1", %".38"
  %".39" = and i64 %"add.1", 18446744069414584320
  %".40" = lshr i64 %".39", 32
  %"trunc32" = trunc i64 %".40" to i32
  %"trunc32.1" = trunc i64 %"add.1" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".44" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".44" to i64
  %".45" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".45" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".46" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".47" = bitcast ptr %"R2" to ptr
  store float %".46", ptr %".47"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".50" = load i32, ptr %"R4"
  %".51" = load i32, ptr %"R5"
  %"zext.4" = zext i32 %".50" to i64
  %"zext.5" = zext i32 %".51" to i64
  %"mul.2" = mul i64 %"zext.4", %"zext.5"
  %".52" = ptrtoint ptr %"Arg_1" to i64
  %"add.2" = add i64 %"mul.2", %".52"
  %".53" = and i64 %"add.2", 18446744069414584320
  %".54" = lshr i64 %".53", 32
  %"trunc32.2" = trunc i64 %".54" to i32
  %"trunc32.3" = trunc i64 %"add.2" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; FMNMX R7, RZ, R2, !PT
  %".58" = load float, ptr %"R2"
  %".59" = xor i1 1, -1
  %".60" = fcmp olt float              0x0, %".58"
  %".61" = fcmp ogt float              0x0, %".58"
  %"mnmx_min" = select  i1 %".60", float              0x0, float %".58"
  %"mnmx_max" = select  i1 %".61", float              0x0, float %".58"
  %"mnmx_final" = select  i1 %".59", float %"mnmx_min", float %"mnmx_max"
  %".62" = bitcast ptr %"R7" to ptr
  store float %"mnmx_final", ptr %".62"
  ; STG.E.SYS [R4], R7
  %".65" = load float, ptr %"R7"
  %".66" = load i32, ptr %"R4"
  %"zext.6" = zext i32 %".66" to i64
  %".67" = load i32, ptr %"R5"
  %"zext.7" = zext i32 %".67" to i64
  %"shl.1" = shl i64 %"zext.7", 32
  %"or.1" = or i64 %"shl.1", %"zext.6"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  store float %".65", ptr addrspace(1) %"ptr_cast_for_access.1"
  ; EXIT
  br label %"ExitFunction"
.L_x_22:
  ; BRA `(.L_x_22)
  br label %".L_x_22"
ExitFunction:
  ret void
}

define ptx_kernel void @"_Z6conv2dPfS_S_iiii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6")
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
  %"R17" = alloca i32, i32 1
  %"R21" = alloca i32, i32 1
  %"R28" = alloca i32, i32 1
  %"R30" = alloca i32, i32 1
  %"R32" = alloca i32, i32 1
  %"R33" = alloca i32, i32 1
  %"R34" = alloca i32, i32 1
  %"R35" = alloca i32, i32 1
  %"R36" = alloca i32, i32 1
  %"R37" = alloca i32, i32 1
  %"R38" = alloca i32, i32 1
  %"R39" = alloca i32, i32 1
  %"R40" = alloca i32, i32 1
  %"R41" = alloca i32, i32 1
  %"R42" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
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
  %"UR6" = alloca i32, i32 1
  %"UR7" = alloca i32, i32 1
  %"UR8" = alloca i32, i32 1
  %"UR9" = alloca i32, i32 1
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
  store i32 0, ptr %"RZ"
  store i32 0, ptr %"URZ"
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R3, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R3"
  ; ULDC.64 UR4, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"UR4"
  ; UIADD3 UR5, UR4, -UR5, URZ
  %".20" = load i32, ptr %"UR4"
  %".21" = load i32, ptr %"UR5"
  %".22" = sub i32 0, %".21"
  %".23" = add i32 %".20", %".22"
  %".24" = add i32 %".23", 0
  store i32 %".24", ptr %"UR5"
  ; S2R R4, SR_TID.Y
  %"nvvm_threadidx_y" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()
  store i32 %"nvvm_threadidx_y", ptr %"R4"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; S2R R5, SR_TID.X
  %"nvvm_threadidx_x" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"nvvm_threadidx_x", ptr %"R5"
  ; S2R R0, SR_CTAID.Z
  %"nvvm_ctaid_z" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()
  store i32 %"nvvm_ctaid_z", ptr %"R0"
  ; IMAD R3, R3, c[0x0][0x4], R4
  %".35" = load i32, ptr %"R3"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".36" = load i32, ptr %"R4"
  %"mul" = mul i32 %".35", %"nvvm_blockdim_y"
  %"add" = add i32 %"mul", %".36"
  store i32 %"add", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R3, UR5, PT
  %".39" = load i32, ptr %"R3"
  %".40" = load i32, ptr %"UR5"
  %".41" = load i1, ptr %"PT"
  %"cmp" = icmp sgt i32 %".39", %".40"
  %".42" = add i1 %"cmp", 0
  %".43" = xor i1 %".42", -1
  %".44" = and i1 %"cmp", %".41"
  %".45" = and i1 %".43", %".41"
  store i1 %".44", ptr %"P0"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".48" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".49" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".48", %"nvvm_blockdim_x"
  %"add.1" = add i32 %"mul.1", %".49"
  store i32 %"add.1", ptr %"R2"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".52" = load i32, ptr %"R2"
  %".53" = load i32, ptr %"UR5"
  %".54" = load i1, ptr %"P0"
  %"cmp.1" = icmp sgt i32 %".52", %".53"
  %".55" = add i1 %"cmp.1", 0
  %".56" = xor i1 %".55", -1
  %".57" = or i1 %"cmp.1", %".54"
  %".58" = or i1 %".56", %".54"
  store i1 %".57", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".61" = load i32, ptr %"R0"
  %".62" = load i1, ptr %"P0"
  %"cmp.2" = icmp sge i32 %".61", %"Arg_6"
  %".63" = add i1 %"cmp.2", 0
  %".64" = xor i1 %".63", -1
  %".65" = or i1 %"cmp.2", %".62"
  %".66" = or i1 %".64", %".62"
  store i1 %".65", ptr %"P0"
  ; @P0 EXIT
  %".69" = load i1, ptr %"P0"
  %".70" = icmp eq i1 %".69", 1
  br i1 %".70", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
.text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0:
  ; EXIT
  br label %"ExitFunction"
.text._Z6conv2dPfS_S_iiii_split_0x00e0:
  ; MOV R4, 0x1
  store i32 1, ptr %"R4"
  ; IMAD.MOV.U32 R12, RZ, RZ, RZ
  %"mul.2" = mul i32 0, 0
  %"add.2" = add i32 %"mul.2", 0
  store i32 %"add.2", ptr %"R12"
  ; ISETP.LE.AND P0, PT, R4, c[0x0][0x17c], PT
  %".79" = load i32, ptr %"R4"
  %".80" = load i1, ptr %"PT"
  %"cmp.3" = icmp sle i32 %".79", %"Arg_4"
  %".81" = add i1 %"cmp.3", 0
  %".82" = xor i1 %".81", -1
  %".83" = and i1 %"cmp.3", %".80"
  %".84" = and i1 %".82", %".80"
  store i1 %".83", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".87" = load i32, ptr %"R4"
  %".88" = load i1, ptr %"P0"
  %"cmp.4" = icmp sgt i32 %".87", %"Arg_5"
  %".89" = add i1 %"cmp.4", 0
  %".90" = xor i1 %".89", -1
  %".91" = or i1 %"cmp.4", %".88"
  %".92" = or i1 %".90", %".88"
  store i1 %".91", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".95" = load i1, ptr %"P0"
  %".96" = icmp eq i1 %".95", 1
  br i1 %".96", label %".L_x_23", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
.text._Z6conv2dPfS_S_iiii_split_0x0130:
  ; IMAD.MOV.U32 R4, RZ, RZ, c[0x0][0x17c]
  %"mul.3" = mul i32 0, 0
  %"add.3" = add i32 %"mul.3", %"Arg_4"
  store i32 %"add.3", ptr %"R4"
  ; MOV R5, 0x1
  store i32 1, ptr %"R5"
  ; IMAD.MOV.U32 R10, RZ, RZ, RZ
  %"mul.4" = mul i32 0, 0
  %"add.4" = add i32 %"mul.4", 0
  store i32 %"add.4", ptr %"R10"
  ; MOV R12, RZ
  %".105" = load float, ptr %"RZ"
  %".106" = bitcast ptr %"R12" to ptr
  store float %".105", ptr %".106"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".109" = load i32, ptr %"R5"
  %".110" = sub i32 0, %".109"
  %".111" = add i32 %".110", %"Arg_4"
  %".112" = add i32 %".111", 0
  store i32 %".112", ptr %"R5"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".115" = load i32, ptr %"R4"
  %".116" = xor i1 1, -1
  %".117" = and i32 %".115", 3
  store i32 %".117", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".120" = load i32, ptr %"R5"
  %".121" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".120", 3
  %".122" = add i1 %"cmp.5", 0
  %".123" = xor i1 %".122", -1
  %".124" = and i1 %"cmp.5", %".121"
  %".125" = and i1 %".123", %".121"
  store i1 %".124", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".128" = load i32, ptr %"R4"
  %".129" = sub i32 0, %"Arg_4"
  %".130" = add i32 %".128", %".129"
  %".131" = add i32 %".130", 0
  store i32 %".131", ptr %"R26"
  br label %".L_x_28"
.L_x_28:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".135" = load i32, ptr %"R10"
  %".136" = load i32, ptr %"R3"
  %"mul.5" = mul i32 %".135", %"Arg_3"
  %"add.5" = add i32 %"mul.5", %".136"
  store i32 %"add.5", ptr %"R11"
  ; MOV R8, RZ
  %".139" = load i32, ptr %"RZ"
  store i32 %".139", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".142" = load i32, ptr %"R0"
  %".143" = load i32, ptr %"R10"
  %"mul.6" = mul i32 %".142", %"Arg_5"
  %"add.6" = add i32 %"mul.6", %".143"
  store i32 %"add.6", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".146" = load i32, ptr %"R10"
  %".147" = add i32 %".146", 1
  %".148" = add i32 %".147", 0
  store i32 %".148", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".151" = load i32, ptr %"R11"
  %".152" = load i32, ptr %"R2"
  %"mul.7" = mul i32 %".151", %"Arg_3"
  %"add.7" = add i32 %"mul.7", %".152"
  store i32 %"add.7", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".155" = load i32, ptr %"R10"
  %".156" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".155", %"Arg_5"
  %".157" = add i1 %"cmp.6", 0
  %".158" = xor i1 %".157", -1
  %".159" = and i1 %"cmp.6", %".156"
  %".160" = and i1 %".158", %".156"
  store i1 %".159", ptr %"P1"
  br label %".L_x_27"
.L_x_27:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".164" = load i32, ptr %"R9"
  %".165" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".164", %"Arg_4"
  %"add.8" = add i32 %"mul.8", %".165"
  store i32 %"add.8", ptr %"R6"
  ; UMOV UR4, URZ
  %".168" = load i32, ptr %"URZ"
  store i32 %".168", ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".171" = load i32, ptr %"R4"
  %".172" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".171", 0
  %".173" = add i1 %"cmp.7", 0
  %".174" = xor i1 %".173", -1
  %".175" = and i1 %"cmp.7", %".172"
  %".176" = and i1 %".174", %".172"
  store i1 %".175", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".179" = load i32, ptr %"R6"
  %"mul.9" = mul i32 %".179", %"Arg_4"
  %"add.9" = add i32 %"mul.9", 0
  store i32 %"add.9", ptr %"R29"
  ; @!P0 BRA `(.L_x_24)
  %".182" = load i1, ptr %"P0"
  %".183" = icmp ne i1 %".182", 1
  br i1 %".183", label %".L_x_24", label %".L_x_27_split_0x0260"
.L_x_27_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".188" = load i32, ptr %"R5"
  %".189" = load i32, ptr %"R8"
  %"mul.10" = mul i32 %".188", 1
  %"add.10" = add i32 %"mul.10", %".189"
  store i32 %"add.10", ptr %"R13"
  ; UMOV UR4, URZ
  %".192" = load i32, ptr %"URZ"
  store i32 %".192", ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".195" = load i32, ptr %"R29"
  %".196" = load i32, ptr %"R24"
  %"zext" = zext i32 %".195" to i64
  %"zext.1" = zext i32 %".196" to i64
  %"mul.11" = mul i64 %"zext", %"zext.1"
  %".197" = ptrtoint ptr %"Arg_1" to i64
  %"add.11" = add i64 %"mul.11", %".197"
  %".198" = and i64 %"add.11", 18446744069414584320
  %".199" = lshr i64 %".198", 32
  %"trunc32" = trunc i64 %".199" to i32
  %"trunc32.1" = trunc i64 %"add.11" to i32
  store i32 %"trunc32.1", ptr %"R6"
  store i32 %"trunc32", ptr %"R7"
  ; MOV R23, R6
  %".203" = load i32, ptr %"R6"
  store i32 %".203", ptr %"R23"
  br label %".L_x_25"
.L_x_25:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".207" = load i32, ptr %"R13"
  %".208" = load i32, ptr %"R24"
  %"zext.2" = zext i32 %".207" to i64
  %"zext.3" = zext i32 %".208" to i64
  %"mul.12" = mul i64 %"zext.2", %"zext.3"
  %".209" = ptrtoint ptr %"Arg_0" to i64
  %"add.12" = add i64 %"mul.12", %".209"
  %".210" = and i64 %"add.12", 18446744069414584320
  %".211" = lshr i64 %".210", 32
  %"trunc32.2" = trunc i64 %".211" to i32
  %"trunc32.3" = trunc i64 %"add.12" to i32
  store i32 %"trunc32.3", ptr %"R14"
  store i32 %"trunc32.2", ptr %"R15"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".217" = load i32, ptr %"R23"
  %"mul.13" = mul i32 0, 0
  %"add.13" = add i32 %"mul.13", %".217"
  store i32 %"add.13", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".220" = load i32, ptr %"R31"
  %".221" = load i32, ptr %"R14"
  %"zext.4" = zext i32 %".220" to i64
  %"zext.5" = zext i32 4 to i64
  %"mul.14" = mul i64 %"zext.4", %"zext.5"
  %"zext.6" = zext i32 %".221" to i64
  %"add.14" = add i64 %"mul.14", %"zext.6"
  %".222" = and i64 %"add.14", 18446744069414584320
  %".223" = lshr i64 %".222", 32
  %"trunc32.4" = trunc i64 %".223" to i32
  %"trunc32.5" = trunc i64 %"add.14" to i32
  store i32 %"trunc32.5", ptr %"R16"
  store i32 %"trunc32.4", ptr %"R17"
  ; LDG.E.SYS R14, [R14]
  %".227" = load i32, ptr %"R14"
  %"zext.7" = zext i32 %".227" to i64
  %".228" = load i32, ptr %"R15"
  %"zext.8" = zext i32 %".228" to i64
  %"shl" = shl i64 %"zext.8", 32
  %"or" = or i64 %"shl", %"zext.7"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".229" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".230" = bitcast ptr %"R14" to ptr
  store float %".229", ptr %".230"
  ; LDG.E.SYS R23, [R6]
  %".233" = load i32, ptr %"R6"
  %"zext.9" = zext i32 %".233" to i64
  %".234" = load i32, ptr %"R7"
  %"zext.10" = zext i32 %".234" to i64
  %"shl.1" = shl i64 %"zext.10", 32
  %"or.1" = or i64 %"shl.1", %"zext.9"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".235" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".236" = bitcast ptr %"R23" to ptr
  store float %".235", ptr %".236"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".239" = load i32, ptr %"R31"
  %".240" = load i32, ptr %"R16"
  %"zext.11" = zext i32 %".239" to i64
  %"zext.12" = zext i32 4 to i64
  %"mul.15" = mul i64 %"zext.11", %"zext.12"
  %"zext.13" = zext i32 %".240" to i64
  %"add.15" = add i64 %"mul.15", %"zext.13"
  %".241" = and i64 %"add.15", 18446744069414584320
  %".242" = lshr i64 %".241", 32
  %"trunc32.6" = trunc i64 %".242" to i32
  %"trunc32.7" = trunc i64 %"add.15" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".246" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".246" to i64
  %".247" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".247" to i64
  %"shl.2" = shl i64 %"zext.15", 32
  %"or.2" = or i64 %"shl.2", %"zext.14"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".248" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".249" = bitcast ptr %"R16" to ptr
  store float %".248", ptr %".249"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".252" = load i32, ptr %"R31"
  %".253" = load i32, ptr %"R18"
  %"zext.16" = zext i32 %".252" to i64
  %"zext.17" = zext i32 4 to i64
  %"mul.16" = mul i64 %"zext.16", %"zext.17"
  %"zext.18" = zext i32 %".253" to i64
  %"add.16" = add i64 %"mul.16", %"zext.18"
  %".254" = and i64 %"add.16", 18446744069414584320
  %".255" = lshr i64 %".254", 32
  %"trunc32.8" = trunc i64 %".255" to i32
  %"trunc32.9" = trunc i64 %"add.16" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".259" = load i32, ptr %"R6"
  %"zext.19" = zext i32 %".259" to i64
  %".260" = load i32, ptr %"R7"
  %"zext.20" = zext i32 %".260" to i64
  %"shl.3" = shl i64 %"zext.20", 32
  %"or.3" = or i64 %"shl.3", %"zext.19"
  %"ptr_plus_imm" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".261" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".262" = bitcast ptr %"R22" to ptr
  store float %".261", ptr %".262"
  ; LDG.E.SYS R18, [R18]
  %".265" = load i32, ptr %"R18"
  %"zext.21" = zext i32 %".265" to i64
  %".266" = load i32, ptr %"R19"
  %"zext.22" = zext i32 %".266" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %"inttoptr_bytes.4" = inttoptr i64 %"or.4" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".267" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".268" = bitcast ptr %"R18" to ptr
  store float %".267", ptr %".268"
  ; LDG.E.SYS R25, [R6+0x8]
  %".271" = load i32, ptr %"R6"
  %"zext.23" = zext i32 %".271" to i64
  %".272" = load i32, ptr %"R7"
  %"zext.24" = zext i32 %".272" to i64
  %"shl.5" = shl i64 %"zext.24", 32
  %"or.5" = or i64 %"shl.5", %"zext.23"
  %"ptr_plus_imm.1" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".273" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".274" = bitcast ptr %"R25" to ptr
  store float %".273", ptr %".274"
  ; LDG.E.SYS R20, [R20]
  %".277" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".277" to i64
  %".278" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".278" to i64
  %"shl.6" = shl i64 %"zext.26", 32
  %"or.6" = or i64 %"shl.6", %"zext.25"
  %"inttoptr_bytes.6" = inttoptr i64 %"or.6" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".279" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".280" = bitcast ptr %"R20" to ptr
  store float %".279", ptr %".280"
  ; LDG.E.SYS R27, [R6+0xc]
  %".283" = load i32, ptr %"R6"
  %"zext.27" = zext i32 %".283" to i64
  %".284" = load i32, ptr %"R7"
  %"zext.28" = zext i32 %".284" to i64
  %"shl.7" = shl i64 %"zext.28", 32
  %"or.7" = or i64 %"shl.7", %"zext.27"
  %"ptr_plus_imm.2" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".285" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".286" = bitcast ptr %"R27" to ptr
  store float %".285", ptr %".286"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".289" = load i32, ptr %"UR4"
  %".290" = add i32 %".289", 4
  %".291" = add i32 %".290", 0
  store i32 %".291", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".294" = load i32, ptr %"R31"
  %".295" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".294", 2
  %"add.17" = add i32 %"shl.8", %".295"
  store i32 %"add.17", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".298" = load float, ptr %"R23"
  %".299" = load float, ptr %"R14"
  %".300" = load float, ptr %"R12"
  %"fmul" = fmul float %".298", %".299"
  %"fadd" = fadd float %"fmul", %".300"
  %".301" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".301"
  ; IADD3 R12, R26, UR4, RZ
  %".304" = load i32, ptr %"R26"
  %".305" = load i32, ptr %"UR4"
  %".306" = add i32 %".304", %".305"
  %".307" = add i32 %".306", 0
  store i32 %".307", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".310" = load i32, ptr %"R12"
  %".311" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".310", 0
  %".312" = add i1 %"cmp.8", 0
  %".313" = xor i1 %".312", -1
  %".314" = and i1 %"cmp.8", %".311"
  %".315" = and i1 %".313", %".311"
  store i1 %".314", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".318" = load float, ptr %"R22"
  %".319" = load float, ptr %"R16"
  %".320" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".318", %".319"
  %"fadd.1" = fadd float %"fmul.1", %".320"
  %".321" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".321"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".324" = load i32, ptr %"R6"
  %".325" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".324", i32 16)
  %".326" = extractvalue {i32, i1} %".325", 0
  %".327" = extractvalue {i32, i1} %".325", 1
  %".328" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".326", i32 0)
  %".329" = extractvalue {i32, i1} %".328", 0
  %".330" = extractvalue {i32, i1} %".328", 1
  %".331" = or i1 %".327", %".330"
  store i32 %".329", ptr %"R23"
  store i1 %".331", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".335" = load float, ptr %"R25"
  %".336" = load float, ptr %"R18"
  %".337" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".335", %".336"
  %"fadd.2" = fadd float %"fmul.2", %".337"
  %".338" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".338"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".341" = load i32, ptr %"R7"
  %".342" = load i1, ptr %"P4"
  %".343" = xor i1 1, -1
  %".344" = zext i1 %".342" to i32
  %".345" = zext i1 %".343" to i32
  %"add.18" = add i32 0, %".341"
  %"add.19" = add i32 %"add.18", 0
  %"add.20" = add i32 %"add.19", %".344"
  %"add.21" = add i32 %"add.20", %".345"
  store i32 %"add.21", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".348" = load float, ptr %"R27"
  %".349" = load float, ptr %"R20"
  %".350" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".348", %".349"
  %"fadd.3" = fadd float %"fmul.3", %".350"
  %".351" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".351"
  ; @P2 BRA `(.L_x_25)
  %".354" = load i1, ptr %"P2"
  %".355" = icmp eq i1 %".354", 1
  br i1 %".355", label %".L_x_25", label %".L_x_24"
.L_x_24:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".358" = load i32, ptr %"R2"
  %".359" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".358", 1
  %"add.22" = add i32 %"mul.17", %".359"
  store i32 %"add.22", ptr %"R14"
  ; @!P3 BRA `(.L_x_26)
  %".362" = load i1, ptr %"P3"
  %".363" = icmp ne i1 %".362", 1
  br i1 %".363", label %".L_x_26", label %".L_x_24_split_0x0460"
.L_x_24_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".366" = load i32, ptr %"R11"
  %".367" = load i32, ptr %"UR4"
  %".368" = add i32 %".366", %".367"
  %".369" = add i32 %".368", 0
  store i32 %".369", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".372" = load i32, ptr %"R29"
  %".373" = load i32, ptr %"UR4"
  %".374" = add i32 %".372", %".373"
  %".375" = add i32 %".374", 0
  store i32 %".375", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".380" = load i32, ptr %"R15"
  %".381" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".380", %"Arg_3"
  %"add.23" = add i32 %"mul.18", %".381"
  store i32 %"add.23", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".384" = load i32, ptr %"R16"
  %".385" = load i32, ptr %"R19"
  %"zext.29" = zext i32 %".384" to i64
  %"zext.30" = zext i32 %".385" to i64
  %"mul.19" = mul i64 %"zext.29", %"zext.30"
  %".386" = ptrtoint ptr %"Arg_1" to i64
  %"add.24" = add i64 %"mul.19", %".386"
  %".387" = and i64 %"add.24", 18446744069414584320
  %".388" = lshr i64 %".387", 32
  %"trunc32.10" = trunc i64 %".388" to i32
  %"trunc32.11" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".392" = load i32, ptr %"R6"
  %".393" = load i32, ptr %"R19"
  %"zext.31" = zext i32 %".392" to i64
  %"zext.32" = zext i32 %".393" to i64
  %"mul.20" = mul i64 %"zext.31", %"zext.32"
  %".394" = ptrtoint ptr %"Arg_0" to i64
  %"add.25" = add i64 %"mul.20", %".394"
  %".395" = and i64 %"add.25", 18446744069414584320
  %".396" = lshr i64 %".395", 32
  %"trunc32.12" = trunc i64 %".396" to i32
  %"trunc32.13" = trunc i64 %"add.25" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".400" = load i32, ptr %"R16"
  %"zext.33" = zext i32 %".400" to i64
  %".401" = load i32, ptr %"R17"
  %"zext.34" = zext i32 %".401" to i64
  %"shl.9" = shl i64 %"zext.34", 32
  %"or.8" = or i64 %"shl.9", %"zext.33"
  %"inttoptr_bytes.8" = inttoptr i64 %"or.8" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".402" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".403" = bitcast ptr %"R13" to ptr
  store float %".402", ptr %".403"
  ; LDG.E.SYS R6, [R6]
  %".406" = load i32, ptr %"R6"
  %"zext.35" = zext i32 %".406" to i64
  %".407" = load i32, ptr %"R7"
  %"zext.36" = zext i32 %".407" to i64
  %"shl.10" = shl i64 %"zext.36", 32
  %"or.9" = or i64 %"shl.10", %"zext.35"
  %"inttoptr_bytes.9" = inttoptr i64 %"or.9" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".408" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".409" = bitcast ptr %"R6" to ptr
  store float %".408", ptr %".409"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".412" = load i32, ptr %"R4"
  %".413" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".412", 1
  %".414" = add i1 %"cmp.9", 0
  %".415" = xor i1 %".414", -1
  %".416" = and i1 %"cmp.9", %".413"
  %".417" = and i1 %".415", %".413"
  store i1 %".416", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".420" = load float, ptr %"R13"
  %".421" = load float, ptr %"R6"
  %".422" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".420", %".421"
  %"fadd.4" = fadd float %"fmul.4", %".422"
  %".423" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".423"
  ; @!P2 BRA `(.L_x_26)
  %".426" = load i1, ptr %"P2"
  %".427" = icmp ne i1 %".426", 1
  br i1 %".427", label %".L_x_26", label %".L_x_24_split_0x0510"
.L_x_24_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".430" = load i32, ptr %"R4"
  %".431" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".430", 2
  %".432" = add i1 %"cmp.10", 0
  %".433" = xor i1 %".432", -1
  %".434" = and i1 %"cmp.10", %".431"
  %".435" = and i1 %".433", %".431"
  store i1 %".434", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".438" = load i32, ptr %"R16"
  %"zext.37" = zext i32 %".438" to i64
  %".439" = load i32, ptr %"R17"
  %"zext.38" = zext i32 %".439" to i64
  %"shl.11" = shl i64 %"zext.38", 32
  %"or.10" = or i64 %"shl.11", %"zext.37"
  %"ptr_plus_imm.3" = add i64 %"or.10", 4
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".440" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".441" = bitcast ptr %"R13" to ptr
  store float %".440", ptr %".441"
  ; IADD3 R6, R15, 0x1, RZ
  %".444" = load i32, ptr %"R15"
  %".445" = add i32 %".444", 1
  %".446" = add i32 %".445", 0
  store i32 %".446", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".449" = load i32, ptr %"R6"
  %".450" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".449", %"Arg_3"
  %"add.26" = add i32 %"mul.21", %".450"
  store i32 %"add.26", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".453" = load i1, ptr %"P2"
  %".454" = icmp eq i1 %".453", 1
  br i1 %".454", label %".L_x_24_split_0x0510_conditionalExpr_0x0550", label %".L_x_24_split_0x0560"
.L_x_24_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".457" = load i32, ptr %"R15"
  %".458" = add i32 %".457", 2
  %".459" = add i32 %".458", 0
  store i32 %".459", ptr %"R7"
  ; BRA `(.L_x_24_split_0x0560)
  br label %".L_x_24_split_0x0560"
.L_x_24_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".464" = load i1, ptr %"P2"
  %".465" = icmp eq i1 %".464", 1
  br i1 %".465", label %".L_x_24_split_0x0560_conditionalExpr_0x0560", label %".L_x_24_split_0x0570"
.L_x_24_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".468" = load i32, ptr %"R7"
  %".469" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".468", %"Arg_3"
  %"add.27" = add i32 %"mul.22", %".469"
  store i32 %"add.27", ptr %"R14"
  ; BRA `(.L_x_24_split_0x0570)
  br label %".L_x_24_split_0x0570"
.L_x_24_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".474" = load i32, ptr %"R6"
  %".475" = load i32, ptr %"R19"
  %"zext.39" = zext i32 %".474" to i64
  %"zext.40" = zext i32 %".475" to i64
  %"mul.23" = mul i64 %"zext.39", %"zext.40"
  %".476" = ptrtoint ptr %"Arg_0" to i64
  %"add.28" = add i64 %"mul.23", %".476"
  %".477" = and i64 %"add.28", 18446744069414584320
  %".478" = lshr i64 %".477", 32
  %"trunc32.14" = trunc i64 %".478" to i32
  %"trunc32.15" = trunc i64 %"add.28" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".482" = load i1, ptr %"P2"
  %".483" = icmp eq i1 %".482", 1
  br i1 %".483", label %".L_x_24_split_0x0570_conditionalExpr_0x0580", label %".L_x_24_split_0x0590"
.L_x_24_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".486" = load i32, ptr %"R14"
  %".487" = load i32, ptr %"R19"
  %"zext.41" = zext i32 %".486" to i64
  %"zext.42" = zext i32 %".487" to i64
  %"mul.24" = mul i64 %"zext.41", %"zext.42"
  %".488" = ptrtoint ptr %"Arg_0" to i64
  %"add.29" = add i64 %"mul.24", %".488"
  %".489" = and i64 %"add.29", 18446744069414584320
  %".490" = lshr i64 %".489", 32
  %"trunc32.16" = trunc i64 %".490" to i32
  %"trunc32.17" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_24_split_0x0590)
  br label %".L_x_24_split_0x0590"
.L_x_24_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".496" = load i1, ptr %"P2"
  %".497" = icmp eq i1 %".496", 1
  br i1 %".497", label %".L_x_24_split_0x0590_conditionalExpr_0x0590", label %".L_x_24_split_0x05a0"
.L_x_24_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".500" = load i32, ptr %"R16"
  %"zext.43" = zext i32 %".500" to i64
  %".501" = load i32, ptr %"R17"
  %"zext.44" = zext i32 %".501" to i64
  %"shl.12" = shl i64 %"zext.44", 32
  %"or.11" = or i64 %"shl.12", %"zext.43"
  %"ptr_plus_imm.4" = add i64 %"or.11", 8
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".502" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".503" = bitcast ptr %"R19" to ptr
  store float %".502", ptr %".503"
  ; BRA `(.L_x_24_split_0x05a0)
  br label %".L_x_24_split_0x05a0"
.L_x_24_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".508" = load i32, ptr %"R6"
  %"zext.45" = zext i32 %".508" to i64
  %".509" = load i32, ptr %"R7"
  %"zext.46" = zext i32 %".509" to i64
  %"shl.13" = shl i64 %"zext.46", 32
  %"or.12" = or i64 %"shl.13", %"zext.45"
  %"inttoptr_bytes.12" = inttoptr i64 %"or.12" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".510" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".511" = bitcast ptr %"R6" to ptr
  store float %".510", ptr %".511"
  ; @P2 LDG.E.SYS R14, [R14]
  %".514" = load i1, ptr %"P2"
  %".515" = icmp eq i1 %".514", 1
  br i1 %".515", label %".L_x_24_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_24_split_0x05c0"
.L_x_24_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".518" = load i32, ptr %"R14"
  %"zext.47" = zext i32 %".518" to i64
  %".519" = load i32, ptr %"R15"
  %"zext.48" = zext i32 %".519" to i64
  %"shl.14" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.14", %"zext.47"
  %"inttoptr_bytes.13" = inttoptr i64 %"or.13" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".520" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".521" = bitcast ptr %"R14" to ptr
  store float %".520", ptr %".521"
  ; BRA `(.L_x_24_split_0x05c0)
  br label %".L_x_24_split_0x05c0"
.L_x_24_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".526" = load float, ptr %"R13"
  %".527" = load float, ptr %"R6"
  %".528" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".526", %".527"
  %"fadd.5" = fadd float %"fmul.5", %".528"
  %".529" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".529"
  ; @P2 FFMA R12, R19, R14, R12
  %".532" = load i1, ptr %"P2"
  %".533" = icmp eq i1 %".532", 1
  br i1 %".533", label %".L_x_24_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_26"
.L_x_24_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".536" = load float, ptr %"R19"
  %".537" = load float, ptr %"R14"
  %".538" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".536", %".537"
  %"fadd.6" = fadd float %"fmul.6", %".538"
  %".539" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".539"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; IADD3 R8, R8, 0x1, RZ
  %".544" = load i32, ptr %"R8"
  %".545" = add i32 %".544", 1
  %".546" = add i32 %".545", 0
  store i32 %".546", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".549" = load i32, ptr %"R8"
  %".550" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".549", %"Arg_4"
  %".551" = add i1 %"cmp.11", 0
  %".552" = xor i1 %".551", -1
  %".553" = and i1 %"cmp.11", %".550"
  %".554" = and i1 %".552", %".550"
  store i1 %".553", ptr %"P2"
  ; @!P2 BRA `(.L_x_27)
  %".557" = load i1, ptr %"P2"
  %".558" = icmp ne i1 %".557", 1
  br i1 %".558", label %".L_x_27", label %".L_x_26_split_0x0610"
.L_x_26_split_0x0610:
  ; @!P1 BRA `(.L_x_28)
  %".561" = load i1, ptr %"P1"
  %".562" = icmp ne i1 %".561", 1
  br i1 %".562", label %".L_x_28", label %".L_x_23"
.L_x_23:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".565" = load i32, ptr %"UR5"
  %".566" = add i32 %".565", 1
  %".567" = add i32 %".566", 0
  store i32 %".567", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".570" = load i32, ptr %"R0"
  %".571" = load i32, ptr %"UR4"
  %".572" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".570", %".571"
  %"add.30" = add i32 %"mul.25", %".572"
  store i32 %"add.30", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".577" = load i32, ptr %"R3"
  %".578" = load i32, ptr %"UR4"
  %".579" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".577", %".578"
  %"add.31" = add i32 %"mul.26", %".579"
  store i32 %"add.31", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".582" = load i32, ptr %"R3"
  %".583" = load i32, ptr %"R0"
  %"zext.49" = zext i32 %".582" to i64
  %"zext.50" = zext i32 %".583" to i64
  %"mul.27" = mul i64 %"zext.49", %"zext.50"
  %".584" = ptrtoint ptr %"Arg_2" to i64
  %"add.32" = add i64 %"mul.27", %".584"
  %".585" = and i64 %"add.32", 18446744069414584320
  %".586" = lshr i64 %".585", 32
  %"trunc32.18" = trunc i64 %".586" to i32
  %"trunc32.19" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".590" = load i32, ptr %"R12"
  %".591" = load i32, ptr %"R2"
  %"zext.51" = zext i32 %".591" to i64
  %".592" = load i32, ptr %"R3"
  %"zext.52" = zext i32 %".592" to i64
  %"shl.15" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.15", %"zext.51"
  %"inttoptr_bytes.14" = inttoptr i64 %"or.14" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  store i32 %".590", ptr addrspace(1) %"ptr_cast_for_access.14"
  ; EXIT
  br label %"ExitFunction"
.L_x_29:
  ; BRA `(.L_x_29)
  br label %".L_x_29"
ExitFunction:
  ret void
}

