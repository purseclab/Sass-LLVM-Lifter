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
  %"imad_mul" = mul i32 %".20", %"nvvm_blockdim_x"
  %"imad_add" = add i32 %"imad_mul", %".21"
  store i32 %"imad_add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x184], PT
  %".24" = load i32, ptr %"R0"
  %".25" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".24", %"Arg_5"
  %".26" = xor i1 %"cmp", -1
  %".27" = and i1 %"cmp", %".25"
  %".28" = and i1 %".26", %".25"
  store i1 %".27", ptr %"P0"
  ; @P0 EXIT
  %".31" = load i1, ptr %"P0"
  %".32" = icmp eq i1 %".31", 1
  br i1 %".32", label %".text._Z15fc_layer_simplePfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060"
.text._Z15fc_layer_simplePfS_S_S_ii_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0060:
  ; MOV R4, c[0x0][0x180]
  store i32 %"Arg_4", ptr %"R4"
  ; IMAD.MOV.U32 R7, RZ, RZ, RZ
  %"imad_mul.1" = mul i32 0, 0
  %"imad_add.1" = add i32 %"imad_mul.1", 0
  store i32 %"imad_add.1", ptr %"R7"
  ; ISETP.GE.AND P0, PT, R4, 0x2, PT
  %".41" = load i32, ptr %"R4"
  %".42" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".41", 2
  %".43" = xor i1 %"cmp.1", -1
  %".44" = and i1 %"cmp.1", %".42"
  %".45" = and i1 %".43", %".42"
  store i1 %".44", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".48" = load i1, ptr %"P0"
  %".49" = icmp ne i1 %".48", 1
  br i1 %".49", label %".L_x_0", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x2, RZ
  %".52" = load i32, ptr %"R4"
  %".53" = add i32 %".52", -2
  %".54" = add i32 %".53", 0
  store i32 %".54", ptr %"R2"
  ; IMAD.MOV.U32 R5, RZ, RZ, RZ
  %"imad_mul.2" = mul i32 0, 0
  %"imad_add.2" = add i32 %"imad_mul.2", 0
  store i32 %"imad_add.2", ptr %"R5"
  ; IADD3 R4, R4, -0x1, RZ
  %".59" = load i32, ptr %"R4"
  %".60" = add i32 %".59", -1
  %".61" = add i32 %".60", 0
  store i32 %".61", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".64" = load i32, ptr %"R2"
  %".65" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".64", 3
  %".66" = xor i1 %"cmp.2", -1
  %".67" = and i1 %"cmp.2", %".65"
  %".68" = and i1 %".66", %".65"
  store i1 %".67", ptr %"P0"
  ; MOV R7, RZ
  %".71" = load float, ptr %"RZ"
  %".72" = bitcast ptr %"R7" to ptr
  store float %".71", ptr %".72"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".75" = load i32, ptr %"R4"
  %".76" = xor i1 1, -1
  %".77" = and i32 %".75", 3
  store i32 %".77", ptr %"R4"
  ; @!P0 BRA `(.L_x_1)
  %".80" = load i1, ptr %"P0"
  %".81" = icmp ne i1 %".80", 1
  br i1 %".81", label %".L_x_1", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".84" = load i32, ptr %"R4"
  %".85" = sub i32 0, %".84"
  %".86" = add i32 %".85", %"Arg_4"
  %".87" = add i32 %".86", 0
  store i32 %".87", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".90" = load i32, ptr %"R0"
  %"imad_mul.3" = mul i32 %".90", %"Arg_4"
  %"imad_add.3" = add i32 %"imad_mul.3", 0
  store i32 %"imad_add.3", ptr %"R2"
  ; MOV R3, 0x4
  store i32 4, ptr %"R3"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".95" = ptrtoint ptr %"Arg_0" to i64
  %".96" = and i64 %".95", 18446744069414584320
  %".97" = lshr i64 %".96", 32
  %"trunc32" = trunc i64 %".97" to i32
  %"trunc32.1" = trunc i64 %".95" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; ISETP.GT.AND P0, PT, R6, 0x1, PT
  %".101" = load i32, ptr %"R6"
  %".102" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".101", 1
  %".103" = xor i1 %"cmp.3", -1
  %".104" = and i1 %"cmp.3", %".102"
  %".105" = and i1 %".103", %".102"
  store i1 %".104", ptr %"P0"
  ; IMAD.MOV.U32 R5, RZ, RZ, RZ
  %"imad_mul.4" = mul i32 0, 0
  %"imad_add.4" = add i32 %"imad_mul.4", 0
  store i32 %"imad_add.4", ptr %"R5"
  ; MOV R7, RZ
  %".110" = load float, ptr %"RZ"
  %".111" = bitcast ptr %"R7" to ptr
  store float %".110", ptr %".111"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".114" = load i32, ptr %"R2"
  %".115" = load i32, ptr %"R3"
  %"imad_ext1" = zext i32 %".114" to i64
  %"imad_ext2" = zext i32 %".115" to i64
  %"imad_mul.5" = mul i64 %"imad_ext1", %"imad_ext2"
  %".116" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.5" = add i64 %"imad_mul.5", %".116"
  %".117" = and i64 %"imad_add.5", 18446744069414584320
  %".118" = lshr i64 %".117", 32
  %"trunc32.2" = trunc i64 %".118" to i32
  %"trunc32.3" = trunc i64 %"imad_add.5" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; @!P0 BRA `(.L_x_2)
  %".122" = load i1, ptr %"P0"
  %".123" = icmp ne i1 %".122", 1
  br i1 %".123", label %".L_x_2", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0:
  ; IADD3 R8, R6, -0x1, RZ
  %".126" = load i32, ptr %"R6"
  %".127" = add i32 %".126", -1
  %".128" = add i32 %".127", 0
  store i32 %".128", ptr %"R8"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".131" = and i1 1, 1
  %".132" = and i1 %".131", 1
  ; ISETP.GT.AND P1, PT, R8, 0xc, PT
  %".134" = load i32, ptr %"R8"
  %".135" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".134", 12
  %".136" = xor i1 %"cmp.4", -1
  %".137" = and i1 %"cmp.4", %".135"
  %".138" = and i1 %".136", %".135"
  store i1 %".137", ptr %"P1"
  ; @!P1 BRA `(.L_x_3)
  %".141" = load i1, ptr %"P1"
  %".142" = icmp ne i1 %".141", 1
  br i1 %".142", label %".L_x_3", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".145" = xor i1 1, 1
  %".146" = and i1 %".145", 1
  %".147" = and i1 %".146", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".150" = load i32, ptr %"R2"
  %"zext" = zext i32 %".150" to i64
  %".151" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".151" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".152" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".153" = bitcast ptr %"R8" to ptr
  store float %".152", ptr %".153"
  ; LDG.E.SYS R9, [UR4]
  %".156" = load i32, ptr %"UR4"
  %"zext.2" = zext i32 %".156" to i64
  %".157" = load i32, ptr %"UR5"
  %"zext.3" = zext i32 %".157" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".158" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".159" = bitcast ptr %"R9" to ptr
  store float %".158", ptr %".159"
  ; LDG.E.SYS R11, [R2+0x4]
  %".162" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".162" to i64
  %".163" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".163" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".164" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".165" = bitcast ptr %"R11" to ptr
  store float %".164", ptr %".165"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".168" = load i32, ptr %"UR4"
  %"zext.6" = zext i32 %".168" to i64
  %".169" = load i32, ptr %"UR5"
  %"zext.7" = zext i32 %".169" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm.1" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".170" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".171" = bitcast ptr %"R10" to ptr
  store float %".170", ptr %".171"
  ; LDG.E.SYS R13, [R2+0x8]
  %".174" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".174" to i64
  %".175" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".175" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"ptr_plus_imm.2" = add i64 %"or.4", 8
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".176" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".177" = bitcast ptr %"R13" to ptr
  store float %".176", ptr %".177"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".180" = load i32, ptr %"UR4"
  %"zext.10" = zext i32 %".180" to i64
  %".181" = load i32, ptr %"UR5"
  %"zext.11" = zext i32 %".181" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"ptr_plus_imm.3" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".182" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".183" = bitcast ptr %"R12" to ptr
  store float %".182", ptr %".183"
  ; LDG.E.SYS R15, [R2+0xc]
  %".186" = load i32, ptr %"R2"
  %"zext.12" = zext i32 %".186" to i64
  %".187" = load i32, ptr %"R3"
  %"zext.13" = zext i32 %".187" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"ptr_plus_imm.4" = add i64 %"or.6", 12
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".188" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".189" = bitcast ptr %"R15" to ptr
  store float %".188", ptr %".189"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".192" = load i32, ptr %"UR4"
  %"zext.14" = zext i32 %".192" to i64
  %".193" = load i32, ptr %"UR5"
  %"zext.15" = zext i32 %".193" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.5" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".194" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".195" = bitcast ptr %"R14" to ptr
  store float %".194", ptr %".195"
  ; LDG.E.SYS R17, [R2+0x10]
  %".198" = load i32, ptr %"R2"
  %"zext.16" = zext i32 %".198" to i64
  %".199" = load i32, ptr %"R3"
  %"zext.17" = zext i32 %".199" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %"ptr_plus_imm.6" = add i64 %"or.8", 16
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".200" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".201" = bitcast ptr %"R17" to ptr
  store float %".200", ptr %".201"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".204" = load i32, ptr %"UR4"
  %"zext.18" = zext i32 %".204" to i64
  %".205" = load i32, ptr %"UR5"
  %"zext.19" = zext i32 %".205" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %"ptr_plus_imm.7" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".206" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".207" = bitcast ptr %"R16" to ptr
  store float %".206", ptr %".207"
  ; LDG.E.SYS R19, [R2+0x14]
  %".210" = load i32, ptr %"R2"
  %"zext.20" = zext i32 %".210" to i64
  %".211" = load i32, ptr %"R3"
  %"zext.21" = zext i32 %".211" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %"ptr_plus_imm.8" = add i64 %"or.10", 20
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".212" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".213" = bitcast ptr %"R19" to ptr
  store float %".212", ptr %".213"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".216" = load i32, ptr %"UR4"
  %"zext.22" = zext i32 %".216" to i64
  %".217" = load i32, ptr %"UR5"
  %"zext.23" = zext i32 %".217" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %"ptr_plus_imm.9" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".218" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".219" = bitcast ptr %"R18" to ptr
  store float %".218", ptr %".219"
  ; LDG.E.SYS R21, [R2+0x18]
  %".222" = load i32, ptr %"R2"
  %"zext.24" = zext i32 %".222" to i64
  %".223" = load i32, ptr %"R3"
  %"zext.25" = zext i32 %".223" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %"ptr_plus_imm.10" = add i64 %"or.12", 24
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".224" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".225" = bitcast ptr %"R21" to ptr
  store float %".224", ptr %".225"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".228" = load i32, ptr %"UR4"
  %"zext.26" = zext i32 %".228" to i64
  %".229" = load i32, ptr %"UR5"
  %"zext.27" = zext i32 %".229" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %"ptr_plus_imm.11" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".230" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".231" = bitcast ptr %"R20" to ptr
  store float %".230", ptr %".231"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".234" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".234" to i64
  %".235" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".235" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %"ptr_plus_imm.12" = add i64 %"or.14", 28
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".236" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".237" = bitcast ptr %"R23" to ptr
  store float %".236", ptr %".237"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".240" = load i32, ptr %"UR4"
  %"zext.30" = zext i32 %".240" to i64
  %".241" = load i32, ptr %"UR5"
  %"zext.31" = zext i32 %".241" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %"ptr_plus_imm.13" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".242" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".243" = bitcast ptr %"R22" to ptr
  store float %".242", ptr %".243"
  ; LDG.E.SYS R25, [R2+0x20]
  %".246" = load i32, ptr %"R2"
  %"zext.32" = zext i32 %".246" to i64
  %".247" = load i32, ptr %"R3"
  %"zext.33" = zext i32 %".247" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %"ptr_plus_imm.14" = add i64 %"or.16", 32
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".248" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".249" = bitcast ptr %"R25" to ptr
  store float %".248", ptr %".249"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".252" = load i32, ptr %"UR4"
  %"zext.34" = zext i32 %".252" to i64
  %".253" = load i32, ptr %"UR5"
  %"zext.35" = zext i32 %".253" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %"ptr_plus_imm.15" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".254" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".255" = bitcast ptr %"R24" to ptr
  store float %".254", ptr %".255"
  ; LDG.E.SYS R27, [R2+0x24]
  %".258" = load i32, ptr %"R2"
  %"zext.36" = zext i32 %".258" to i64
  %".259" = load i32, ptr %"R3"
  %"zext.37" = zext i32 %".259" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %"ptr_plus_imm.16" = add i64 %"or.18", 36
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".260" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".261" = bitcast ptr %"R27" to ptr
  store float %".260", ptr %".261"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".264" = load i32, ptr %"UR4"
  %"zext.38" = zext i32 %".264" to i64
  %".265" = load i32, ptr %"UR5"
  %"zext.39" = zext i32 %".265" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %"ptr_plus_imm.17" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".266" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".267" = bitcast ptr %"R26" to ptr
  store float %".266", ptr %".267"
  ; LDG.E.SYS R29, [R2+0x28]
  %".270" = load i32, ptr %"R2"
  %"zext.40" = zext i32 %".270" to i64
  %".271" = load i32, ptr %"R3"
  %"zext.41" = zext i32 %".271" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %"ptr_plus_imm.18" = add i64 %"or.20", 40
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".272" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".273" = bitcast ptr %"R29" to ptr
  store float %".272", ptr %".273"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".276" = load i32, ptr %"UR4"
  %"zext.42" = zext i32 %".276" to i64
  %".277" = load i32, ptr %"UR5"
  %"zext.43" = zext i32 %".277" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %"ptr_plus_imm.19" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".278" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".279" = bitcast ptr %"R28" to ptr
  store float %".278", ptr %".279"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".282" = load i32, ptr %"R2"
  %"zext.44" = zext i32 %".282" to i64
  %".283" = load i32, ptr %"R3"
  %"zext.45" = zext i32 %".283" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %"ptr_plus_imm.20" = add i64 %"or.22", 44
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".284" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".285" = bitcast ptr %"R31" to ptr
  store float %".284", ptr %".285"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".288" = load i32, ptr %"UR4"
  %"zext.46" = zext i32 %".288" to i64
  %".289" = load i32, ptr %"UR5"
  %"zext.47" = zext i32 %".289" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %"ptr_plus_imm.21" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".290" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".291" = bitcast ptr %"R30" to ptr
  store float %".290", ptr %".291"
  ; LDG.E.SYS R33, [R2+0x30]
  %".294" = load i32, ptr %"R2"
  %"zext.48" = zext i32 %".294" to i64
  %".295" = load i32, ptr %"R3"
  %"zext.49" = zext i32 %".295" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %"ptr_plus_imm.22" = add i64 %"or.24", 48
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".296" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".297" = bitcast ptr %"R33" to ptr
  store float %".296", ptr %".297"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".300" = load i32, ptr %"UR4"
  %"zext.50" = zext i32 %".300" to i64
  %".301" = load i32, ptr %"UR5"
  %"zext.51" = zext i32 %".301" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %"ptr_plus_imm.23" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".302" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".303" = bitcast ptr %"R32" to ptr
  store float %".302", ptr %".303"
  ; LDG.E.SYS R35, [R2+0x34]
  %".306" = load i32, ptr %"R2"
  %"zext.52" = zext i32 %".306" to i64
  %".307" = load i32, ptr %"R3"
  %"zext.53" = zext i32 %".307" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %"ptr_plus_imm.24" = add i64 %"or.26", 52
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".308" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".309" = bitcast ptr %"R35" to ptr
  store float %".308", ptr %".309"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".312" = load i32, ptr %"UR4"
  %"zext.54" = zext i32 %".312" to i64
  %".313" = load i32, ptr %"UR5"
  %"zext.55" = zext i32 %".313" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %"ptr_plus_imm.25" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".314" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".315" = bitcast ptr %"R34" to ptr
  store float %".314", ptr %".315"
  ; LDG.E.SYS R37, [R2+0x38]
  %".318" = load i32, ptr %"R2"
  %"zext.56" = zext i32 %".318" to i64
  %".319" = load i32, ptr %"R3"
  %"zext.57" = zext i32 %".319" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %"ptr_plus_imm.26" = add i64 %"or.28", 56
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".320" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".321" = bitcast ptr %"R37" to ptr
  store float %".320", ptr %".321"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".324" = load i32, ptr %"UR4"
  %"zext.58" = zext i32 %".324" to i64
  %".325" = load i32, ptr %"UR5"
  %"zext.59" = zext i32 %".325" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %"ptr_plus_imm.27" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".326" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".327" = bitcast ptr %"R36" to ptr
  store float %".326", ptr %".327"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".330" = load i32, ptr %"R2"
  %"zext.60" = zext i32 %".330" to i64
  %".331" = load i32, ptr %"R3"
  %"zext.61" = zext i32 %".331" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %"ptr_plus_imm.28" = add i64 %"or.30", 60
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".332" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".333" = bitcast ptr %"R39" to ptr
  store float %".332", ptr %".333"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".336" = load i32, ptr %"UR4"
  %"zext.62" = zext i32 %".336" to i64
  %".337" = load i32, ptr %"UR5"
  %"zext.63" = zext i32 %".337" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %"ptr_plus_imm.29" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".338" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".339" = bitcast ptr %"R38" to ptr
  store float %".338", ptr %".339"
  ; IADD3 R6, R6, -0x10, RZ
  %".342" = load i32, ptr %"R6"
  %".343" = add i32 %".342", -16
  %".344" = add i32 %".343", 0
  store i32 %".344", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".347" = load i32, ptr %"UR4"
  %".348" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".347", i32 64)
  %".349" = extractvalue {i32, i1} %".348", 0
  %".350" = extractvalue {i32, i1} %".348", 1
  %".351" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".349", i32 0)
  %".352" = extractvalue {i32, i1} %".351", 0
  %".353" = extractvalue {i32, i1} %".351", 1
  %".354" = or i1 %".350", %".353"
  store i32 %".352", ptr %"UR4"
  store i1 %".354", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".358" = load i32, ptr %"R5"
  %".359" = add i32 %".358", 16
  %".360" = add i32 %".359", 0
  store i32 %".360", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xd, PT
  %".363" = load i32, ptr %"R6"
  %".364" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".363", 13
  %".365" = xor i1 %"cmp.5", -1
  %".366" = and i1 %"cmp.5", %".364"
  %".367" = and i1 %".365", %".364"
  store i1 %".366", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".370" = load i32, ptr %"UR5"
  %".371" = load i1, ptr %"UP0"
  %".372" = xor i1 1, -1
  %".373" = zext i1 %".371" to i32
  %".374" = zext i1 %".372" to i32
  %"add" = add i32 0, %".370"
  %"add.1" = add i32 %"add", 0
  %"add.2" = add i32 %"add.1", %".373"
  %"add.3" = add i32 %"add.2", %".374"
  store i32 %"add.3", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".377" = load i32, ptr %"R2"
  %".378" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".377", i32 64)
  %".379" = extractvalue {i32, i1} %".378", 0
  %".380" = extractvalue {i32, i1} %".378", 1
  %".381" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".379", i32 0)
  %".382" = extractvalue {i32, i1} %".381", 0
  %".383" = extractvalue {i32, i1} %".381", 1
  %".384" = or i1 %".380", %".383"
  store i32 %".382", ptr %"R2"
  store i1 %".384", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P2, !PT
  %".388" = load i32, ptr %"R3"
  %".389" = load i1, ptr %"P2"
  %".390" = xor i1 1, -1
  %".391" = zext i1 %".389" to i32
  %".392" = zext i1 %".390" to i32
  %"add.4" = add i32 0, %".388"
  %"add.5" = add i32 %"add.4", 0
  %"add.6" = add i32 %"add.5", %".391"
  %"add.7" = add i32 %"add.6", %".392"
  store i32 %"add.7", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".395" = load float, ptr %"R8"
  %".396" = load float, ptr %"R9"
  %".397" = load float, ptr %"R7"
  %"fmul" = fmul float %".395", %".396"
  %"fadd" = fadd float %"fmul", %".397"
  %".398" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".398"
  ; FFMA R8, R11, R10, R8
  %".401" = load float, ptr %"R11"
  %".402" = load float, ptr %"R10"
  %".403" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".401", %".402"
  %"fadd.1" = fadd float %"fmul.1", %".403"
  %".404" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".404"
  ; FFMA R8, R13, R12, R8
  %".407" = load float, ptr %"R13"
  %".408" = load float, ptr %"R12"
  %".409" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".407", %".408"
  %"fadd.2" = fadd float %"fmul.2", %".409"
  %".410" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".410"
  ; FFMA R8, R15, R14, R8
  %".413" = load float, ptr %"R15"
  %".414" = load float, ptr %"R14"
  %".415" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".413", %".414"
  %"fadd.3" = fadd float %"fmul.3", %".415"
  %".416" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".416"
  ; FFMA R8, R17, R16, R8
  %".419" = load float, ptr %"R17"
  %".420" = load float, ptr %"R16"
  %".421" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".419", %".420"
  %"fadd.4" = fadd float %"fmul.4", %".421"
  %".422" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".422"
  ; FFMA R8, R19, R18, R8
  %".425" = load float, ptr %"R19"
  %".426" = load float, ptr %"R18"
  %".427" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".425", %".426"
  %"fadd.5" = fadd float %"fmul.5", %".427"
  %".428" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".428"
  ; FFMA R8, R21, R20, R8
  %".431" = load float, ptr %"R21"
  %".432" = load float, ptr %"R20"
  %".433" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".431", %".432"
  %"fadd.6" = fadd float %"fmul.6", %".433"
  %".434" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".434"
  ; FFMA R8, R23, R22, R8
  %".437" = load float, ptr %"R23"
  %".438" = load float, ptr %"R22"
  %".439" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".437", %".438"
  %"fadd.7" = fadd float %"fmul.7", %".439"
  %".440" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".440"
  ; FFMA R8, R25, R24, R8
  %".443" = load float, ptr %"R25"
  %".444" = load float, ptr %"R24"
  %".445" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".443", %".444"
  %"fadd.8" = fadd float %"fmul.8", %".445"
  %".446" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".446"
  ; FFMA R8, R27, R26, R8
  %".449" = load float, ptr %"R27"
  %".450" = load float, ptr %"R26"
  %".451" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".449", %".450"
  %"fadd.9" = fadd float %"fmul.9", %".451"
  %".452" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".452"
  ; FFMA R8, R29, R28, R8
  %".455" = load float, ptr %"R29"
  %".456" = load float, ptr %"R28"
  %".457" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".455", %".456"
  %"fadd.10" = fadd float %"fmul.10", %".457"
  %".458" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".458"
  ; FFMA R8, R31, R30, R8
  %".461" = load float, ptr %"R31"
  %".462" = load float, ptr %"R30"
  %".463" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".461", %".462"
  %"fadd.11" = fadd float %"fmul.11", %".463"
  %".464" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".464"
  ; FFMA R8, R33, R32, R8
  %".467" = load float, ptr %"R33"
  %".468" = load float, ptr %"R32"
  %".469" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".467", %".468"
  %"fadd.12" = fadd float %"fmul.12", %".469"
  %".470" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".470"
  ; FFMA R8, R35, R34, R8
  %".473" = load float, ptr %"R35"
  %".474" = load float, ptr %"R34"
  %".475" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".473", %".474"
  %"fadd.13" = fadd float %"fmul.13", %".475"
  %".476" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".476"
  ; FFMA R8, R37, R36, R8
  %".479" = load float, ptr %"R37"
  %".480" = load float, ptr %"R36"
  %".481" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".479", %".480"
  %"fadd.14" = fadd float %"fmul.14", %".481"
  %".482" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".482"
  ; FFMA R7, R39, R38, R8
  %".485" = load float, ptr %"R39"
  %".486" = load float, ptr %"R38"
  %".487" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".485", %".486"
  %"fadd.15" = fadd float %"fmul.15", %".487"
  %".488" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".488"
  ; @P1 BRA `(.L_x_4)
  %".491" = load i1, ptr %"P1"
  %".492" = icmp eq i1 %".491", 1
  br i1 %".492", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; IADD3 R8, R6, -0x1, RZ
  %".495" = load i32, ptr %"R6"
  %".496" = add i32 %".495", -1
  %".497" = add i32 %".496", 0
  store i32 %".497", ptr %"R8"
  ; ISETP.GT.AND P1, PT, R8, 0x4, PT
  %".500" = load i32, ptr %"R8"
  %".501" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".500", 4
  %".502" = xor i1 %"cmp.6", -1
  %".503" = and i1 %"cmp.6", %".501"
  %".504" = and i1 %".502", %".501"
  store i1 %".503", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".507" = load i1, ptr %"P1"
  %".508" = icmp ne i1 %".507", 1
  br i1 %".508", label %".L_x_5", label %".L_x_3_split_0x05a0"
.L_x_3_split_0x05a0:
  ; LDG.E.SYS R8, [R2]
  %".511" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".511" to i64
  %".512" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".512" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %"inttoptr_bytes.32" = inttoptr i64 %"or.32" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".513" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".514" = bitcast ptr %"R8" to ptr
  store float %".513", ptr %".514"
  ; LDG.E.SYS R9, [UR4]
  %".517" = load i32, ptr %"UR4"
  %"zext.66" = zext i32 %".517" to i64
  %".518" = load i32, ptr %"UR5"
  %"zext.67" = zext i32 %".518" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".519" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".520" = bitcast ptr %"R9" to ptr
  store float %".519", ptr %".520"
  ; LDG.E.SYS R11, [R2+0x4]
  %".523" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".523" to i64
  %".524" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".524" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".525" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".526" = bitcast ptr %"R11" to ptr
  store float %".525", ptr %".526"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".529" = load i32, ptr %"UR4"
  %"zext.70" = zext i32 %".529" to i64
  %".530" = load i32, ptr %"UR5"
  %"zext.71" = zext i32 %".530" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %"ptr_plus_imm.31" = add i64 %"or.35", 4
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".531" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".532" = bitcast ptr %"R10" to ptr
  store float %".531", ptr %".532"
  ; LDG.E.SYS R13, [R2+0x8]
  %".535" = load i32, ptr %"R2"
  %"zext.72" = zext i32 %".535" to i64
  %".536" = load i32, ptr %"R3"
  %"zext.73" = zext i32 %".536" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %"ptr_plus_imm.32" = add i64 %"or.36", 8
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".537" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".538" = bitcast ptr %"R13" to ptr
  store float %".537", ptr %".538"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".541" = load i32, ptr %"UR4"
  %"zext.74" = zext i32 %".541" to i64
  %".542" = load i32, ptr %"UR5"
  %"zext.75" = zext i32 %".542" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %"ptr_plus_imm.33" = add i64 %"or.37", 8
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".543" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".544" = bitcast ptr %"R12" to ptr
  store float %".543", ptr %".544"
  ; LDG.E.SYS R15, [R2+0xc]
  %".547" = load i32, ptr %"R2"
  %"zext.76" = zext i32 %".547" to i64
  %".548" = load i32, ptr %"R3"
  %"zext.77" = zext i32 %".548" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %"ptr_plus_imm.34" = add i64 %"or.38", 12
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".549" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".550" = bitcast ptr %"R15" to ptr
  store float %".549", ptr %".550"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".553" = load i32, ptr %"UR4"
  %"zext.78" = zext i32 %".553" to i64
  %".554" = load i32, ptr %"UR5"
  %"zext.79" = zext i32 %".554" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %"ptr_plus_imm.35" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".555" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".556" = bitcast ptr %"R14" to ptr
  store float %".555", ptr %".556"
  ; LDG.E.SYS R17, [R2+0x10]
  %".559" = load i32, ptr %"R2"
  %"zext.80" = zext i32 %".559" to i64
  %".560" = load i32, ptr %"R3"
  %"zext.81" = zext i32 %".560" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %"ptr_plus_imm.36" = add i64 %"or.40", 16
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".561" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".562" = bitcast ptr %"R17" to ptr
  store float %".561", ptr %".562"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".565" = load i32, ptr %"UR4"
  %"zext.82" = zext i32 %".565" to i64
  %".566" = load i32, ptr %"UR5"
  %"zext.83" = zext i32 %".566" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %"ptr_plus_imm.37" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".567" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".568" = bitcast ptr %"R16" to ptr
  store float %".567", ptr %".568"
  ; LDG.E.SYS R19, [R2+0x14]
  %".571" = load i32, ptr %"R2"
  %"zext.84" = zext i32 %".571" to i64
  %".572" = load i32, ptr %"R3"
  %"zext.85" = zext i32 %".572" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %"ptr_plus_imm.38" = add i64 %"or.42", 20
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".573" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".574" = bitcast ptr %"R19" to ptr
  store float %".573", ptr %".574"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".577" = load i32, ptr %"UR4"
  %"zext.86" = zext i32 %".577" to i64
  %".578" = load i32, ptr %"UR5"
  %"zext.87" = zext i32 %".578" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %"ptr_plus_imm.39" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".579" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".580" = bitcast ptr %"R18" to ptr
  store float %".579", ptr %".580"
  ; LDG.E.SYS R21, [R2+0x18]
  %".583" = load i32, ptr %"R2"
  %"zext.88" = zext i32 %".583" to i64
  %".584" = load i32, ptr %"R3"
  %"zext.89" = zext i32 %".584" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %"ptr_plus_imm.40" = add i64 %"or.44", 24
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".585" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".586" = bitcast ptr %"R21" to ptr
  store float %".585", ptr %".586"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".589" = load i32, ptr %"UR4"
  %"zext.90" = zext i32 %".589" to i64
  %".590" = load i32, ptr %"UR5"
  %"zext.91" = zext i32 %".590" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %"ptr_plus_imm.41" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".591" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".592" = bitcast ptr %"R20" to ptr
  store float %".591", ptr %".592"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".595" = load i32, ptr %"R2"
  %"zext.92" = zext i32 %".595" to i64
  %".596" = load i32, ptr %"R3"
  %"zext.93" = zext i32 %".596" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %"ptr_plus_imm.42" = add i64 %"or.46", 28
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".597" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".598" = bitcast ptr %"R23" to ptr
  store float %".597", ptr %".598"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".601" = load i32, ptr %"UR4"
  %"zext.94" = zext i32 %".601" to i64
  %".602" = load i32, ptr %"UR5"
  %"zext.95" = zext i32 %".602" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %"ptr_plus_imm.43" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".603" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".604" = bitcast ptr %"R22" to ptr
  store float %".603", ptr %".604"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".607" = load i32, ptr %"UR4"
  %".608" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".607", i32 32)
  %".609" = extractvalue {i32, i1} %".608", 0
  %".610" = extractvalue {i32, i1} %".608", 1
  %".611" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".609", i32 0)
  %".612" = extractvalue {i32, i1} %".611", 0
  %".613" = extractvalue {i32, i1} %".611", 1
  %".614" = or i1 %".610", %".613"
  store i32 %".612", ptr %"UR4"
  store i1 %".614", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".618" = xor i1 1, 1
  %".619" = and i1 %".618", 1
  %".620" = and i1 %".619", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".622" = load i32, ptr %"R5"
  %".623" = add i32 %".622", 8
  %".624" = add i32 %".623", 0
  store i32 %".624", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".627" = load i32, ptr %"UR5"
  %".628" = load i1, ptr %"UP0"
  %".629" = xor i1 1, -1
  %".630" = zext i1 %".628" to i32
  %".631" = zext i1 %".629" to i32
  %"add.8" = add i32 0, %".627"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".630"
  %"add.11" = add i32 %"add.10", %".631"
  store i32 %"add.11", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".634" = load i32, ptr %"R2"
  %".635" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".634", i32 32)
  %".636" = extractvalue {i32, i1} %".635", 0
  %".637" = extractvalue {i32, i1} %".635", 1
  %".638" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".636", i32 0)
  %".639" = extractvalue {i32, i1} %".638", 0
  %".640" = extractvalue {i32, i1} %".638", 1
  %".641" = or i1 %".637", %".640"
  store i32 %".639", ptr %"R2"
  store i1 %".641", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".645" = load i32, ptr %"R6"
  %".646" = add i32 %".645", -8
  %".647" = add i32 %".646", 0
  store i32 %".647", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".650" = load i32, ptr %"R3"
  %".651" = load i1, ptr %"P1"
  %".652" = xor i1 1, -1
  %".653" = zext i1 %".651" to i32
  %".654" = zext i1 %".652" to i32
  %"add.12" = add i32 0, %".650"
  %"add.13" = add i32 %"add.12", 0
  %"add.14" = add i32 %"add.13", %".653"
  %"add.15" = add i32 %"add.14", %".654"
  store i32 %"add.15", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".657" = load float, ptr %"R8"
  %".658" = load float, ptr %"R9"
  %".659" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".657", %".658"
  %"fadd.16" = fadd float %"fmul.16", %".659"
  %".660" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".660"
  ; FFMA R8, R11, R10, R8
  %".663" = load float, ptr %"R11"
  %".664" = load float, ptr %"R10"
  %".665" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".663", %".664"
  %"fadd.17" = fadd float %"fmul.17", %".665"
  %".666" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".666"
  ; FFMA R8, R13, R12, R8
  %".669" = load float, ptr %"R13"
  %".670" = load float, ptr %"R12"
  %".671" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".669", %".670"
  %"fadd.18" = fadd float %"fmul.18", %".671"
  %".672" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".672"
  ; FFMA R8, R15, R14, R8
  %".675" = load float, ptr %"R15"
  %".676" = load float, ptr %"R14"
  %".677" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".675", %".676"
  %"fadd.19" = fadd float %"fmul.19", %".677"
  %".678" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".678"
  ; FFMA R8, R17, R16, R8
  %".681" = load float, ptr %"R17"
  %".682" = load float, ptr %"R16"
  %".683" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".681", %".682"
  %"fadd.20" = fadd float %"fmul.20", %".683"
  %".684" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".684"
  ; FFMA R8, R19, R18, R8
  %".687" = load float, ptr %"R19"
  %".688" = load float, ptr %"R18"
  %".689" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".687", %".688"
  %"fadd.21" = fadd float %"fmul.21", %".689"
  %".690" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".690"
  ; FFMA R8, R21, R20, R8
  %".693" = load float, ptr %"R21"
  %".694" = load float, ptr %"R20"
  %".695" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".693", %".694"
  %"fadd.22" = fadd float %"fmul.22", %".695"
  %".696" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".696"
  ; FFMA R7, R23, R22, R8
  %".699" = load float, ptr %"R23"
  %".700" = load float, ptr %"R22"
  %".701" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".699", %".700"
  %"fadd.23" = fadd float %"fmul.23", %".701"
  %".702" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".702"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, 0x1, P0
  %".706" = load i32, ptr %"R6"
  %".707" = load i1, ptr %"P0"
  %"cmp.7" = icmp ne i32 %".706", 1
  %".708" = xor i1 %"cmp.7", -1
  %".709" = or i1 %"cmp.7", %".707"
  %".710" = or i1 %".708", %".707"
  store i1 %".709", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".713" = load i1, ptr %"P0"
  %".714" = icmp ne i1 %".713", 1
  br i1 %".714", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".717" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".717" to i64
  %".718" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".718" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".719" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".720" = bitcast ptr %"R8" to ptr
  store float %".719", ptr %".720"
  ; LDG.E.SYS R9, [UR4]
  %".723" = load i32, ptr %"UR4"
  %"zext.98" = zext i32 %".723" to i64
  %".724" = load i32, ptr %"UR5"
  %"zext.99" = zext i32 %".724" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".725" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".726" = bitcast ptr %"R9" to ptr
  store float %".725", ptr %".726"
  ; LDG.E.SYS R11, [R2+0x4]
  %".729" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".729" to i64
  %".730" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".730" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".731" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".732" = bitcast ptr %"R11" to ptr
  store float %".731", ptr %".732"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".735" = load i32, ptr %"UR4"
  %"zext.102" = zext i32 %".735" to i64
  %".736" = load i32, ptr %"UR5"
  %"zext.103" = zext i32 %".736" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %"ptr_plus_imm.45" = add i64 %"or.51", 4
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".737" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".738" = bitcast ptr %"R10" to ptr
  store float %".737", ptr %".738"
  ; LDG.E.SYS R13, [R2+0x8]
  %".741" = load i32, ptr %"R2"
  %"zext.104" = zext i32 %".741" to i64
  %".742" = load i32, ptr %"R3"
  %"zext.105" = zext i32 %".742" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %"ptr_plus_imm.46" = add i64 %"or.52", 8
  %"inttoptr_bytes.52" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".743" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".744" = bitcast ptr %"R13" to ptr
  store float %".743", ptr %".744"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".747" = load i32, ptr %"UR4"
  %"zext.106" = zext i32 %".747" to i64
  %".748" = load i32, ptr %"UR5"
  %"zext.107" = zext i32 %".748" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %"ptr_plus_imm.47" = add i64 %"or.53", 8
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".749" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".750" = bitcast ptr %"R12" to ptr
  store float %".749", ptr %".750"
  ; LDG.E.SYS R15, [R2+0xc]
  %".753" = load i32, ptr %"R2"
  %"zext.108" = zext i32 %".753" to i64
  %".754" = load i32, ptr %"R3"
  %"zext.109" = zext i32 %".754" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %"ptr_plus_imm.48" = add i64 %"or.54", 12
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".755" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".756" = bitcast ptr %"R15" to ptr
  store float %".755", ptr %".756"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".759" = load i32, ptr %"UR4"
  %"zext.110" = zext i32 %".759" to i64
  %".760" = load i32, ptr %"UR5"
  %"zext.111" = zext i32 %".760" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %"ptr_plus_imm.49" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".761" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".762" = bitcast ptr %"R14" to ptr
  store float %".761", ptr %".762"
  ; IADD3 R6, R6, -0x4, RZ
  %".765" = load i32, ptr %"R6"
  %".766" = add i32 %".765", -4
  %".767" = add i32 %".766", 0
  store i32 %".767", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".770" = load i32, ptr %"UR4"
  %".771" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".770", i32 16)
  %".772" = extractvalue {i32, i1} %".771", 0
  %".773" = extractvalue {i32, i1} %".771", 1
  %".774" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".772", i32 0)
  %".775" = extractvalue {i32, i1} %".774", 0
  %".776" = extractvalue {i32, i1} %".774", 1
  %".777" = or i1 %".773", %".776"
  store i32 %".775", ptr %"UR4"
  store i1 %".777", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".781" = load i32, ptr %"R5"
  %".782" = add i32 %".781", 4
  %".783" = add i32 %".782", 0
  store i32 %".783", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, 0x1, PT
  %".786" = load i32, ptr %"R6"
  %".787" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".786", 1
  %".788" = xor i1 %"cmp.8", -1
  %".789" = and i1 %"cmp.8", %".787"
  %".790" = and i1 %".788", %".787"
  store i1 %".789", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".793" = load i32, ptr %"UR5"
  %".794" = load i1, ptr %"UP0"
  %".795" = xor i1 1, -1
  %".796" = zext i1 %".794" to i32
  %".797" = zext i1 %".795" to i32
  %"add.16" = add i32 0, %".793"
  %"add.17" = add i32 %"add.16", 0
  %"add.18" = add i32 %"add.17", %".796"
  %"add.19" = add i32 %"add.18", %".797"
  store i32 %"add.19", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".800" = load float, ptr %"R8"
  %".801" = load float, ptr %"R9"
  %".802" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".800", %".801"
  %"fadd.24" = fadd float %"fmul.24", %".802"
  %".803" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".803"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".806" = load i32, ptr %"R2"
  %".807" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".806", i32 16)
  %".808" = extractvalue {i32, i1} %".807", 0
  %".809" = extractvalue {i32, i1} %".807", 1
  %".810" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".808", i32 0)
  %".811" = extractvalue {i32, i1} %".810", 0
  %".812" = extractvalue {i32, i1} %".810", 1
  %".813" = or i1 %".809", %".812"
  store i32 %".811", ptr %"R9"
  store i1 %".813", ptr %"P1"
  ; MOV R2, R9
  %".817" = load i32, ptr %"R9"
  store i32 %".817", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".820" = load float, ptr %"R11"
  %".821" = load float, ptr %"R10"
  %".822" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".820", %".821"
  %"fadd.25" = fadd float %"fmul.25", %".822"
  %".823" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".823"
  ; IMAD.X R10, RZ, RZ, R3, P1
  %".826" = load i32, ptr %"R3"
  %".827" = load i1, ptr %"P1"
  %"imad_mul.6" = mul i32 0, 0
  %"imad_add.6" = add i32 %"imad_mul.6", %".826"
  %"imad_ext4" = zext i1 %".827" to i32
  %"imad_add_x" = add i32 %"imad_add.6", %"imad_ext4"
  store i32 %"imad_add_x", ptr %"R10"
  ; MOV R3, R10
  %".830" = load i32, ptr %"R10"
  store i32 %".830", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".833" = load float, ptr %"R13"
  %".834" = load float, ptr %"R12"
  %".835" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".833", %".834"
  %"fadd.26" = fadd float %"fmul.26", %".835"
  %".836" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".836"
  ; FFMA R7, R15, R14, R8
  %".839" = load float, ptr %"R15"
  %".840" = load float, ptr %"R14"
  %".841" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".839", %".840"
  %"fadd.27" = fadd float %"fmul.27", %".841"
  %".842" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".842"
  ; @P0 BRA `(.L_x_2)
  %".845" = load i1, ptr %"P0"
  %".846" = icmp eq i1 %".845", 1
  br i1 %".846", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".849" = load i32, ptr %"R4"
  %".850" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".849", 0
  %".851" = xor i1 %"cmp.9", -1
  %".852" = and i1 %"cmp.9", %".850"
  %".853" = and i1 %".851", %".850"
  store i1 %".852", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".856" = load i1, ptr %"P0"
  %".857" = icmp ne i1 %".856", 1
  br i1 %".857", label %".L_x_0", label %".L_x_1_split_0x0930"
.L_x_1_split_0x0930:
  ; IMAD.MOV.U32 R8, RZ, RZ, 0x4
  %"imad_mul.7" = mul i32 0, 0
  %"imad_add.7" = add i32 %"imad_mul.7", 4
  store i32 %"imad_add.7", ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".862" = load i32, ptr %"R0"
  %".863" = load i32, ptr %"R5"
  %"imad_mul.8" = mul i32 %".862", %"Arg_4"
  %"imad_add.8" = add i32 %"imad_mul.8", %".863"
  store i32 %"imad_add.8", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".866" = load i32, ptr %"R2"
  %".867" = load i32, ptr %"R8"
  %"imad_ext1.1" = zext i32 %".866" to i64
  %"imad_ext2.1" = zext i32 %".867" to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".868" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %".868"
  %".869" = and i64 %"imad_add.9", 18446744069414584320
  %".870" = lshr i64 %".869", 32
  %"trunc32.4" = trunc i64 %".870" to i32
  %"trunc32.5" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".874" = load i32, ptr %"R5"
  %".875" = load i32, ptr %"R8"
  %"imad_ext1.2" = zext i32 %".874" to i64
  %"imad_ext2.2" = zext i32 %".875" to i64
  %"imad_mul.10" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %".876" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.10" = add i64 %"imad_mul.10", %".876"
  %".877" = and i64 %"imad_add.10", 18446744069414584320
  %".878" = lshr i64 %".877", 32
  %"trunc32.6" = trunc i64 %".878" to i32
  %"trunc32.7" = trunc i64 %"imad_add.10" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".882" = load i32, ptr %"R2"
  store i32 %".882", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; MOV R2, R6
  %".886" = load i32, ptr %"R6"
  store i32 %".886", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".889" = load i32, ptr %"R8"
  %"zext.112" = zext i32 %".889" to i64
  %".890" = load i32, ptr %"R9"
  %"zext.113" = zext i32 %".890" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %"inttoptr_bytes.56" = inttoptr i64 %"or.56" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".891" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".892" = bitcast ptr %"R5" to ptr
  store float %".891", ptr %".892"
  ; LDG.E.SYS R2, [R2]
  %".895" = load i32, ptr %"R2"
  %"zext.114" = zext i32 %".895" to i64
  %".896" = load i32, ptr %"R3"
  %"zext.115" = zext i32 %".896" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".897" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".898" = bitcast ptr %"R2" to ptr
  store float %".897", ptr %".898"
  ; IADD3 R4, R4, -0x1, RZ
  %".901" = load i32, ptr %"R4"
  %".902" = add i32 %".901", -1
  %".903" = add i32 %".902", 0
  store i32 %".903", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".906" = load i32, ptr %"R4"
  %".907" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".906", 0
  %".908" = xor i1 %"cmp.10", -1
  %".909" = and i1 %"cmp.10", %".907"
  %".910" = and i1 %".908", %".907"
  store i1 %".909", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".913" = load i32, ptr %"R6"
  %".914" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".913", i32 4)
  %".915" = extractvalue {i32, i1} %".914", 0
  %".916" = extractvalue {i32, i1} %".914", 1
  %".917" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".915", i32 0)
  %".918" = extractvalue {i32, i1} %".917", 0
  %".919" = extractvalue {i32, i1} %".917", 1
  %".920" = or i1 %".916", %".919"
  store i32 %".918", ptr %"R6"
  store i1 %".920", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".924" = load i32, ptr %"R8"
  %".925" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".924", i32 4)
  %".926" = extractvalue {i32, i1} %".925", 0
  %".927" = extractvalue {i32, i1} %".925", 1
  %".928" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".926", i32 0)
  %".929" = extractvalue {i32, i1} %".928", 0
  %".930" = extractvalue {i32, i1} %".928", 1
  %".931" = or i1 %".927", %".930"
  store i32 %".929", ptr %"R8"
  store i1 %".931", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P1
  %".935" = load i32, ptr %"R3"
  %".936" = load i1, ptr %"P1"
  %"imad_mul.11" = mul i32 0, 0
  %"imad_add.11" = add i32 %"imad_mul.11", %".935"
  %"imad_ext4.1" = zext i1 %".936" to i32
  %"imad_add_x.1" = add i32 %"imad_add.11", %"imad_ext4.1"
  store i32 %"imad_add_x.1", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".939" = load i32, ptr %"R9"
  %".940" = load i1, ptr %"P2"
  %".941" = xor i1 1, -1
  %".942" = zext i1 %".940" to i32
  %".943" = zext i1 %".941" to i32
  %"add.20" = add i32 0, %".939"
  %"add.21" = add i32 %"add.20", 0
  %"add.22" = add i32 %"add.21", %".942"
  %"add.23" = add i32 %"add.22", %".943"
  store i32 %"add.23", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".946" = load float, ptr %"R2"
  %".947" = load float, ptr %"R5"
  %".948" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".946", %".947"
  %"fadd.28" = fadd float %"fmul.28", %".948"
  %".949" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".949"
  ; @P0 BRA `(.L_x_6)
  %".952" = load i1, ptr %"P0"
  %".953" = icmp eq i1 %".952", 1
  br i1 %".953", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".958" = load i32, ptr %"R0"
  %".959" = load i32, ptr %"R5"
  %"imad_ext1.3" = zext i32 %".958" to i64
  %"imad_ext2.3" = zext i32 %".959" to i64
  %"imad_mul.12" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %".960" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.12" = add i64 %"imad_mul.12", %".960"
  %".961" = and i64 %"imad_add.12", 18446744069414584320
  %".962" = lshr i64 %".961", 32
  %"trunc32.8" = trunc i64 %".962" to i32
  %"trunc32.9" = trunc i64 %"imad_add.12" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".966" = load i32, ptr %"R2"
  %"zext.116" = zext i32 %".966" to i64
  %".967" = load i32, ptr %"R3"
  %"zext.117" = zext i32 %".967" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".968" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".969" = bitcast ptr %"R2" to ptr
  store float %".968", ptr %".969"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".972" = load i32, ptr %"R0"
  %".973" = load i32, ptr %"R5"
  %"imad_ext1.4" = zext i32 %".972" to i64
  %"imad_ext2.4" = zext i32 %".973" to i64
  %"imad_mul.13" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %".974" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.13" = add i64 %"imad_mul.13", %".974"
  %".975" = and i64 %"imad_add.13", 18446744069414584320
  %".976" = lshr i64 %".975", 32
  %"trunc32.10" = trunc i64 %".976" to i32
  %"trunc32.11" = trunc i64 %"imad_add.13" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".980" = load float, ptr %"R2"
  %".981" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".980", %".981"
  %".982" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".982"
  ; STG.E.SYS [R4], R7
  %".985" = load float, ptr %"R7"
  %".986" = load i32, ptr %"R4"
  %"zext.118" = zext i32 %".986" to i64
  %".987" = load i32, ptr %"R5"
  %"zext.119" = zext i32 %".987" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".985", ptr addrspace(1) %"ptr_cast_for_access.59"
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
  %"imad_mul" = mul i32 %".20", %"nvvm_blockdim_x"
  %"imad_add" = add i32 %"imad_mul", %".21"
  store i32 %"imad_add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x184], PT
  %".24" = load i32, ptr %"R0"
  %".25" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".24", %"Arg_5"
  %".26" = xor i1 %"cmp", -1
  %".27" = and i1 %"cmp", %".25"
  %".28" = and i1 %".26", %".25"
  store i1 %".27", ptr %"P0"
  ; @P0 EXIT
  %".31" = load i1, ptr %"P0"
  %".32" = icmp eq i1 %".31", 1
  br i1 %".32", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
.text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z8fc_layerPfS_S_S_ii_split_0x0060:
  ; MOV R4, c[0x0][0x180]
  store i32 %"Arg_4", ptr %"R4"
  ; IMAD.MOV.U32 R7, RZ, RZ, RZ
  %"imad_mul.1" = mul i32 0, 0
  %"imad_add.1" = add i32 %"imad_mul.1", 0
  store i32 %"imad_add.1", ptr %"R7"
  ; ISETP.GE.AND P0, PT, R4, 0x1, PT
  %".41" = load i32, ptr %"R4"
  %".42" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".41", 1
  %".43" = xor i1 %"cmp.1", -1
  %".44" = and i1 %"cmp.1", %".42"
  %".45" = and i1 %".43", %".42"
  store i1 %".44", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".48" = load i1, ptr %"P0"
  %".49" = icmp ne i1 %".48", 1
  br i1 %".49", label %".L_x_8", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".52" = load i32, ptr %"R4"
  %".53" = add i32 %".52", -1
  %".54" = add i32 %".53", 0
  store i32 %".54", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".57" = load i32, ptr %"R4"
  %".58" = xor i1 1, -1
  %".59" = and i32 %".57", 3
  store i32 %".59", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".62" = load i32, ptr %"R2"
  %".63" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".62", 3
  %".64" = xor i1 %"cmp.2", -1
  %".65" = and i1 %"cmp.2", %".63"
  %".66" = and i1 %".64", %".63"
  store i1 %".65", ptr %"P0"
  ; MOV R7, RZ
  %".69" = load float, ptr %"RZ"
  %".70" = bitcast ptr %"R7" to ptr
  store float %".69", ptr %".70"
  ; MOV R5, RZ
  %".73" = load i32, ptr %"RZ"
  store i32 %".73", ptr %"R5"
  ; @!P0 BRA `(.L_x_9)
  %".76" = load i1, ptr %"P0"
  %".77" = icmp ne i1 %".76", 1
  br i1 %".77", label %".L_x_9", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".80" = load i32, ptr %"R4"
  %".81" = sub i32 0, %".80"
  %".82" = add i32 %".81", %"Arg_4"
  %".83" = add i32 %".82", 0
  store i32 %".83", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".86" = load i32, ptr %"R0"
  %"imad_mul.2" = mul i32 %".86", %"Arg_4"
  %"imad_add.2" = add i32 %"imad_mul.2", 0
  store i32 %"imad_add.2", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".89" = ptrtoint ptr %"Arg_0" to i64
  %".90" = and i64 %".89", 18446744069414584320
  %".91" = lshr i64 %".90", 32
  %"trunc32" = trunc i64 %".91" to i32
  %"trunc32.1" = trunc i64 %".89" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"imad_mul.3" = mul i32 0, 0
  %"imad_add.3" = add i32 %"imad_mul.3", 4
  store i32 %"imad_add.3", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".97" = load i32, ptr %"R6"
  %".98" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".97", 0
  %".99" = xor i1 %"cmp.3", -1
  %".100" = and i1 %"cmp.3", %".98"
  %".101" = and i1 %".99", %".98"
  store i1 %".100", ptr %"P0"
  ; MOV R7, RZ
  %".104" = load float, ptr %"RZ"
  %".105" = bitcast ptr %"R7" to ptr
  store float %".104", ptr %".105"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".108" = load i32, ptr %"R2"
  %".109" = load i32, ptr %"R3"
  %"imad_ext1" = zext i32 %".108" to i64
  %"imad_ext2" = zext i32 %".109" to i64
  %"imad_mul.4" = mul i64 %"imad_ext1", %"imad_ext2"
  %".110" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.4" = add i64 %"imad_mul.4", %".110"
  %".111" = and i64 %"imad_add.4", 18446744069414584320
  %".112" = lshr i64 %".111", 32
  %"trunc32.2" = trunc i64 %".112" to i32
  %"trunc32.3" = trunc i64 %"imad_add.4" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; MOV R5, RZ
  %".116" = load i32, ptr %"RZ"
  store i32 %".116", ptr %"R5"
  ; @!P0 BRA `(.L_x_10)
  %".119" = load i1, ptr %"P0"
  %".120" = icmp ne i1 %".119", 1
  br i1 %".120", label %".L_x_10", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".123" = load i32, ptr %"R6"
  %".124" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".123", 12
  %".125" = xor i1 %"cmp.4", -1
  %".126" = and i1 %"cmp.4", %".124"
  %".127" = and i1 %".125", %".124"
  store i1 %".126", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".130" = and i1 1, 1
  %".131" = and i1 %".130", 1
  ; @!P1 BRA `(.L_x_11)
  %".133" = load i1, ptr %"P1"
  %".134" = icmp ne i1 %".133", 1
  br i1 %".134", label %".L_x_11", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".137" = xor i1 1, 1
  %".138" = and i1 %".137", 1
  %".139" = and i1 %".138", 1
  br label %".L_x_12"
.L_x_12:
  ; LDG.E.SYS R8, [R2]
  %".142" = load i32, ptr %"R2"
  %"zext" = zext i32 %".142" to i64
  %".143" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".143" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".144" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".145" = bitcast ptr %"R8" to ptr
  store float %".144", ptr %".145"
  ; LDG.E.SYS R9, [UR4]
  %".148" = load i32, ptr %"UR4"
  %"zext.2" = zext i32 %".148" to i64
  %".149" = load i32, ptr %"UR5"
  %"zext.3" = zext i32 %".149" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".150" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".151" = bitcast ptr %"R9" to ptr
  store float %".150", ptr %".151"
  ; LDG.E.SYS R11, [R2+0x4]
  %".154" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".154" to i64
  %".155" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".155" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".156" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".157" = bitcast ptr %"R11" to ptr
  store float %".156", ptr %".157"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".160" = load i32, ptr %"UR4"
  %"zext.6" = zext i32 %".160" to i64
  %".161" = load i32, ptr %"UR5"
  %"zext.7" = zext i32 %".161" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm.1" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".162" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".163" = bitcast ptr %"R10" to ptr
  store float %".162", ptr %".163"
  ; LDG.E.SYS R13, [R2+0x8]
  %".166" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".166" to i64
  %".167" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".167" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"ptr_plus_imm.2" = add i64 %"or.4", 8
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".168" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".169" = bitcast ptr %"R13" to ptr
  store float %".168", ptr %".169"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".172" = load i32, ptr %"UR4"
  %"zext.10" = zext i32 %".172" to i64
  %".173" = load i32, ptr %"UR5"
  %"zext.11" = zext i32 %".173" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"ptr_plus_imm.3" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".174" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".175" = bitcast ptr %"R12" to ptr
  store float %".174", ptr %".175"
  ; LDG.E.SYS R15, [R2+0xc]
  %".178" = load i32, ptr %"R2"
  %"zext.12" = zext i32 %".178" to i64
  %".179" = load i32, ptr %"R3"
  %"zext.13" = zext i32 %".179" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"ptr_plus_imm.4" = add i64 %"or.6", 12
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".180" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".181" = bitcast ptr %"R15" to ptr
  store float %".180", ptr %".181"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".184" = load i32, ptr %"UR4"
  %"zext.14" = zext i32 %".184" to i64
  %".185" = load i32, ptr %"UR5"
  %"zext.15" = zext i32 %".185" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.5" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".186" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".187" = bitcast ptr %"R14" to ptr
  store float %".186", ptr %".187"
  ; LDG.E.SYS R17, [R2+0x10]
  %".190" = load i32, ptr %"R2"
  %"zext.16" = zext i32 %".190" to i64
  %".191" = load i32, ptr %"R3"
  %"zext.17" = zext i32 %".191" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %"ptr_plus_imm.6" = add i64 %"or.8", 16
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".192" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".193" = bitcast ptr %"R17" to ptr
  store float %".192", ptr %".193"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".196" = load i32, ptr %"UR4"
  %"zext.18" = zext i32 %".196" to i64
  %".197" = load i32, ptr %"UR5"
  %"zext.19" = zext i32 %".197" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %"ptr_plus_imm.7" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".198" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".199" = bitcast ptr %"R16" to ptr
  store float %".198", ptr %".199"
  ; LDG.E.SYS R19, [R2+0x14]
  %".202" = load i32, ptr %"R2"
  %"zext.20" = zext i32 %".202" to i64
  %".203" = load i32, ptr %"R3"
  %"zext.21" = zext i32 %".203" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %"ptr_plus_imm.8" = add i64 %"or.10", 20
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".204" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".205" = bitcast ptr %"R19" to ptr
  store float %".204", ptr %".205"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".208" = load i32, ptr %"UR4"
  %"zext.22" = zext i32 %".208" to i64
  %".209" = load i32, ptr %"UR5"
  %"zext.23" = zext i32 %".209" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %"ptr_plus_imm.9" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".210" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".211" = bitcast ptr %"R18" to ptr
  store float %".210", ptr %".211"
  ; LDG.E.SYS R21, [R2+0x18]
  %".214" = load i32, ptr %"R2"
  %"zext.24" = zext i32 %".214" to i64
  %".215" = load i32, ptr %"R3"
  %"zext.25" = zext i32 %".215" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %"ptr_plus_imm.10" = add i64 %"or.12", 24
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".216" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".217" = bitcast ptr %"R21" to ptr
  store float %".216", ptr %".217"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".220" = load i32, ptr %"UR4"
  %"zext.26" = zext i32 %".220" to i64
  %".221" = load i32, ptr %"UR5"
  %"zext.27" = zext i32 %".221" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %"ptr_plus_imm.11" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".222" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".223" = bitcast ptr %"R20" to ptr
  store float %".222", ptr %".223"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".226" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".226" to i64
  %".227" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".227" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %"ptr_plus_imm.12" = add i64 %"or.14", 28
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".228" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".229" = bitcast ptr %"R23" to ptr
  store float %".228", ptr %".229"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".232" = load i32, ptr %"UR4"
  %"zext.30" = zext i32 %".232" to i64
  %".233" = load i32, ptr %"UR5"
  %"zext.31" = zext i32 %".233" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %"ptr_plus_imm.13" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".234" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".235" = bitcast ptr %"R22" to ptr
  store float %".234", ptr %".235"
  ; LDG.E.SYS R25, [R2+0x20]
  %".238" = load i32, ptr %"R2"
  %"zext.32" = zext i32 %".238" to i64
  %".239" = load i32, ptr %"R3"
  %"zext.33" = zext i32 %".239" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %"ptr_plus_imm.14" = add i64 %"or.16", 32
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".240" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".241" = bitcast ptr %"R25" to ptr
  store float %".240", ptr %".241"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".244" = load i32, ptr %"UR4"
  %"zext.34" = zext i32 %".244" to i64
  %".245" = load i32, ptr %"UR5"
  %"zext.35" = zext i32 %".245" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %"ptr_plus_imm.15" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".246" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".247" = bitcast ptr %"R24" to ptr
  store float %".246", ptr %".247"
  ; LDG.E.SYS R27, [R2+0x24]
  %".250" = load i32, ptr %"R2"
  %"zext.36" = zext i32 %".250" to i64
  %".251" = load i32, ptr %"R3"
  %"zext.37" = zext i32 %".251" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %"ptr_plus_imm.16" = add i64 %"or.18", 36
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".252" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".253" = bitcast ptr %"R27" to ptr
  store float %".252", ptr %".253"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".256" = load i32, ptr %"UR4"
  %"zext.38" = zext i32 %".256" to i64
  %".257" = load i32, ptr %"UR5"
  %"zext.39" = zext i32 %".257" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %"ptr_plus_imm.17" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".258" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".259" = bitcast ptr %"R26" to ptr
  store float %".258", ptr %".259"
  ; LDG.E.SYS R29, [R2+0x28]
  %".262" = load i32, ptr %"R2"
  %"zext.40" = zext i32 %".262" to i64
  %".263" = load i32, ptr %"R3"
  %"zext.41" = zext i32 %".263" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %"ptr_plus_imm.18" = add i64 %"or.20", 40
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".264" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".265" = bitcast ptr %"R29" to ptr
  store float %".264", ptr %".265"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".268" = load i32, ptr %"UR4"
  %"zext.42" = zext i32 %".268" to i64
  %".269" = load i32, ptr %"UR5"
  %"zext.43" = zext i32 %".269" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %"ptr_plus_imm.19" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".270" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".271" = bitcast ptr %"R28" to ptr
  store float %".270", ptr %".271"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".274" = load i32, ptr %"R2"
  %"zext.44" = zext i32 %".274" to i64
  %".275" = load i32, ptr %"R3"
  %"zext.45" = zext i32 %".275" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %"ptr_plus_imm.20" = add i64 %"or.22", 44
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".276" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".277" = bitcast ptr %"R31" to ptr
  store float %".276", ptr %".277"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".280" = load i32, ptr %"UR4"
  %"zext.46" = zext i32 %".280" to i64
  %".281" = load i32, ptr %"UR5"
  %"zext.47" = zext i32 %".281" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %"ptr_plus_imm.21" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".282" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".283" = bitcast ptr %"R30" to ptr
  store float %".282", ptr %".283"
  ; LDG.E.SYS R33, [R2+0x30]
  %".286" = load i32, ptr %"R2"
  %"zext.48" = zext i32 %".286" to i64
  %".287" = load i32, ptr %"R3"
  %"zext.49" = zext i32 %".287" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %"ptr_plus_imm.22" = add i64 %"or.24", 48
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".288" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".289" = bitcast ptr %"R33" to ptr
  store float %".288", ptr %".289"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".292" = load i32, ptr %"UR4"
  %"zext.50" = zext i32 %".292" to i64
  %".293" = load i32, ptr %"UR5"
  %"zext.51" = zext i32 %".293" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %"ptr_plus_imm.23" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".294" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".295" = bitcast ptr %"R32" to ptr
  store float %".294", ptr %".295"
  ; LDG.E.SYS R35, [R2+0x34]
  %".298" = load i32, ptr %"R2"
  %"zext.52" = zext i32 %".298" to i64
  %".299" = load i32, ptr %"R3"
  %"zext.53" = zext i32 %".299" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %"ptr_plus_imm.24" = add i64 %"or.26", 52
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".300" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".301" = bitcast ptr %"R35" to ptr
  store float %".300", ptr %".301"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".304" = load i32, ptr %"UR4"
  %"zext.54" = zext i32 %".304" to i64
  %".305" = load i32, ptr %"UR5"
  %"zext.55" = zext i32 %".305" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %"ptr_plus_imm.25" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".306" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".307" = bitcast ptr %"R34" to ptr
  store float %".306", ptr %".307"
  ; LDG.E.SYS R37, [R2+0x38]
  %".310" = load i32, ptr %"R2"
  %"zext.56" = zext i32 %".310" to i64
  %".311" = load i32, ptr %"R3"
  %"zext.57" = zext i32 %".311" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %"ptr_plus_imm.26" = add i64 %"or.28", 56
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".312" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".313" = bitcast ptr %"R37" to ptr
  store float %".312", ptr %".313"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".316" = load i32, ptr %"UR4"
  %"zext.58" = zext i32 %".316" to i64
  %".317" = load i32, ptr %"UR5"
  %"zext.59" = zext i32 %".317" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %"ptr_plus_imm.27" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".318" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".319" = bitcast ptr %"R36" to ptr
  store float %".318", ptr %".319"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".322" = load i32, ptr %"R2"
  %"zext.60" = zext i32 %".322" to i64
  %".323" = load i32, ptr %"R3"
  %"zext.61" = zext i32 %".323" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %"ptr_plus_imm.28" = add i64 %"or.30", 60
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".324" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".325" = bitcast ptr %"R39" to ptr
  store float %".324", ptr %".325"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".328" = load i32, ptr %"UR4"
  %"zext.62" = zext i32 %".328" to i64
  %".329" = load i32, ptr %"UR5"
  %"zext.63" = zext i32 %".329" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %"ptr_plus_imm.29" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".330" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".331" = bitcast ptr %"R38" to ptr
  store float %".330", ptr %".331"
  ; IADD3 R6, R6, -0x10, RZ
  %".334" = load i32, ptr %"R6"
  %".335" = add i32 %".334", -16
  %".336" = add i32 %".335", 0
  store i32 %".336", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".339" = load i32, ptr %"UR4"
  %".340" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".339", i32 64)
  %".341" = extractvalue {i32, i1} %".340", 0
  %".342" = extractvalue {i32, i1} %".340", 1
  %".343" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".341", i32 0)
  %".344" = extractvalue {i32, i1} %".343", 0
  %".345" = extractvalue {i32, i1} %".343", 1
  %".346" = or i1 %".342", %".345"
  store i32 %".344", ptr %"UR4"
  store i1 %".346", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".350" = load i32, ptr %"R5"
  %".351" = add i32 %".350", 16
  %".352" = add i32 %".351", 0
  store i32 %".352", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".355" = load i32, ptr %"R6"
  %".356" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".355", 12
  %".357" = xor i1 %"cmp.5", -1
  %".358" = and i1 %"cmp.5", %".356"
  %".359" = and i1 %".357", %".356"
  store i1 %".358", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".362" = load i32, ptr %"UR5"
  %".363" = load i1, ptr %"UP0"
  %".364" = xor i1 1, -1
  %".365" = zext i1 %".363" to i32
  %".366" = zext i1 %".364" to i32
  %"add" = add i32 0, %".362"
  %"add.1" = add i32 %"add", 0
  %"add.2" = add i32 %"add.1", %".365"
  %"add.3" = add i32 %"add.2", %".366"
  store i32 %"add.3", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".369" = load i32, ptr %"R2"
  %".370" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".369", i32 64)
  %".371" = extractvalue {i32, i1} %".370", 0
  %".372" = extractvalue {i32, i1} %".370", 1
  %".373" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".371", i32 0)
  %".374" = extractvalue {i32, i1} %".373", 0
  %".375" = extractvalue {i32, i1} %".373", 1
  %".376" = or i1 %".372", %".375"
  store i32 %".374", ptr %"R2"
  store i1 %".376", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".380" = load i32, ptr %"R3"
  %".381" = load i1, ptr %"P2"
  %"imad_mul.5" = mul i32 0, 0
  %"imad_add.5" = add i32 %"imad_mul.5", %".380"
  %"imad_ext4" = zext i1 %".381" to i32
  %"imad_add_x" = add i32 %"imad_add.5", %"imad_ext4"
  store i32 %"imad_add_x", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".384" = load float, ptr %"R8"
  %".385" = load float, ptr %"R9"
  %".386" = load float, ptr %"R7"
  %"fmul" = fmul float %".384", %".385"
  %"fadd" = fadd float %"fmul", %".386"
  %".387" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".387"
  ; FFMA R8, R11, R10, R8
  %".390" = load float, ptr %"R11"
  %".391" = load float, ptr %"R10"
  %".392" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".390", %".391"
  %"fadd.1" = fadd float %"fmul.1", %".392"
  %".393" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".393"
  ; FFMA R8, R13, R12, R8
  %".396" = load float, ptr %"R13"
  %".397" = load float, ptr %"R12"
  %".398" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".396", %".397"
  %"fadd.2" = fadd float %"fmul.2", %".398"
  %".399" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".399"
  ; FFMA R8, R15, R14, R8
  %".402" = load float, ptr %"R15"
  %".403" = load float, ptr %"R14"
  %".404" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".402", %".403"
  %"fadd.3" = fadd float %"fmul.3", %".404"
  %".405" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".405"
  ; FFMA R8, R17, R16, R8
  %".408" = load float, ptr %"R17"
  %".409" = load float, ptr %"R16"
  %".410" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".408", %".409"
  %"fadd.4" = fadd float %"fmul.4", %".410"
  %".411" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".411"
  ; FFMA R8, R19, R18, R8
  %".414" = load float, ptr %"R19"
  %".415" = load float, ptr %"R18"
  %".416" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".414", %".415"
  %"fadd.5" = fadd float %"fmul.5", %".416"
  %".417" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".417"
  ; FFMA R8, R21, R20, R8
  %".420" = load float, ptr %"R21"
  %".421" = load float, ptr %"R20"
  %".422" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".420", %".421"
  %"fadd.6" = fadd float %"fmul.6", %".422"
  %".423" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".423"
  ; FFMA R8, R23, R22, R8
  %".426" = load float, ptr %"R23"
  %".427" = load float, ptr %"R22"
  %".428" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".426", %".427"
  %"fadd.7" = fadd float %"fmul.7", %".428"
  %".429" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".429"
  ; FFMA R8, R25, R24, R8
  %".432" = load float, ptr %"R25"
  %".433" = load float, ptr %"R24"
  %".434" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".432", %".433"
  %"fadd.8" = fadd float %"fmul.8", %".434"
  %".435" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".435"
  ; FFMA R8, R27, R26, R8
  %".438" = load float, ptr %"R27"
  %".439" = load float, ptr %"R26"
  %".440" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".438", %".439"
  %"fadd.9" = fadd float %"fmul.9", %".440"
  %".441" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".441"
  ; FFMA R8, R29, R28, R8
  %".444" = load float, ptr %"R29"
  %".445" = load float, ptr %"R28"
  %".446" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".444", %".445"
  %"fadd.10" = fadd float %"fmul.10", %".446"
  %".447" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".447"
  ; FFMA R8, R31, R30, R8
  %".450" = load float, ptr %"R31"
  %".451" = load float, ptr %"R30"
  %".452" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".450", %".451"
  %"fadd.11" = fadd float %"fmul.11", %".452"
  %".453" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".453"
  ; FFMA R8, R33, R32, R8
  %".456" = load float, ptr %"R33"
  %".457" = load float, ptr %"R32"
  %".458" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".456", %".457"
  %"fadd.12" = fadd float %"fmul.12", %".458"
  %".459" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".459"
  ; FFMA R8, R35, R34, R8
  %".462" = load float, ptr %"R35"
  %".463" = load float, ptr %"R34"
  %".464" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".462", %".463"
  %"fadd.13" = fadd float %"fmul.13", %".464"
  %".465" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".465"
  ; FFMA R8, R37, R36, R8
  %".468" = load float, ptr %"R37"
  %".469" = load float, ptr %"R36"
  %".470" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".468", %".469"
  %"fadd.14" = fadd float %"fmul.14", %".470"
  %".471" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".471"
  ; FFMA R7, R39, R38, R8
  %".474" = load float, ptr %"R39"
  %".475" = load float, ptr %"R38"
  %".476" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".474", %".475"
  %"fadd.15" = fadd float %"fmul.15", %".476"
  %".477" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".477"
  ; @P1 BRA `(.L_x_12)
  %".480" = load i1, ptr %"P1"
  %".481" = icmp eq i1 %".480", 1
  br i1 %".481", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".484" = load i32, ptr %"R6"
  %".485" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".484", 4
  %".486" = xor i1 %"cmp.6", -1
  %".487" = and i1 %"cmp.6", %".485"
  %".488" = and i1 %".486", %".485"
  store i1 %".487", ptr %"P1"
  ; @!P1 BRA `(.L_x_13)
  %".491" = load i1, ptr %"P1"
  %".492" = icmp ne i1 %".491", 1
  br i1 %".492", label %".L_x_13", label %".L_x_11_split_0x0570"
.L_x_11_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".495" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".495" to i64
  %".496" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".496" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %"inttoptr_bytes.32" = inttoptr i64 %"or.32" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".497" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".498" = bitcast ptr %"R8" to ptr
  store float %".497", ptr %".498"
  ; LDG.E.SYS R9, [UR4]
  %".501" = load i32, ptr %"UR4"
  %"zext.66" = zext i32 %".501" to i64
  %".502" = load i32, ptr %"UR5"
  %"zext.67" = zext i32 %".502" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".503" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".504" = bitcast ptr %"R9" to ptr
  store float %".503", ptr %".504"
  ; LDG.E.SYS R11, [R2+0x4]
  %".507" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".507" to i64
  %".508" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".508" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".509" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".510" = bitcast ptr %"R11" to ptr
  store float %".509", ptr %".510"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".513" = load i32, ptr %"UR4"
  %"zext.70" = zext i32 %".513" to i64
  %".514" = load i32, ptr %"UR5"
  %"zext.71" = zext i32 %".514" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %"ptr_plus_imm.31" = add i64 %"or.35", 4
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".515" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".516" = bitcast ptr %"R10" to ptr
  store float %".515", ptr %".516"
  ; LDG.E.SYS R13, [R2+0x8]
  %".519" = load i32, ptr %"R2"
  %"zext.72" = zext i32 %".519" to i64
  %".520" = load i32, ptr %"R3"
  %"zext.73" = zext i32 %".520" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %"ptr_plus_imm.32" = add i64 %"or.36", 8
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".521" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".522" = bitcast ptr %"R13" to ptr
  store float %".521", ptr %".522"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".525" = load i32, ptr %"UR4"
  %"zext.74" = zext i32 %".525" to i64
  %".526" = load i32, ptr %"UR5"
  %"zext.75" = zext i32 %".526" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %"ptr_plus_imm.33" = add i64 %"or.37", 8
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".527" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".528" = bitcast ptr %"R12" to ptr
  store float %".527", ptr %".528"
  ; LDG.E.SYS R15, [R2+0xc]
  %".531" = load i32, ptr %"R2"
  %"zext.76" = zext i32 %".531" to i64
  %".532" = load i32, ptr %"R3"
  %"zext.77" = zext i32 %".532" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %"ptr_plus_imm.34" = add i64 %"or.38", 12
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".533" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".534" = bitcast ptr %"R15" to ptr
  store float %".533", ptr %".534"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".537" = load i32, ptr %"UR4"
  %"zext.78" = zext i32 %".537" to i64
  %".538" = load i32, ptr %"UR5"
  %"zext.79" = zext i32 %".538" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %"ptr_plus_imm.35" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".539" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".540" = bitcast ptr %"R14" to ptr
  store float %".539", ptr %".540"
  ; LDG.E.SYS R17, [R2+0x10]
  %".543" = load i32, ptr %"R2"
  %"zext.80" = zext i32 %".543" to i64
  %".544" = load i32, ptr %"R3"
  %"zext.81" = zext i32 %".544" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %"ptr_plus_imm.36" = add i64 %"or.40", 16
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".545" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".546" = bitcast ptr %"R17" to ptr
  store float %".545", ptr %".546"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".549" = load i32, ptr %"UR4"
  %"zext.82" = zext i32 %".549" to i64
  %".550" = load i32, ptr %"UR5"
  %"zext.83" = zext i32 %".550" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %"ptr_plus_imm.37" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".551" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".552" = bitcast ptr %"R16" to ptr
  store float %".551", ptr %".552"
  ; LDG.E.SYS R19, [R2+0x14]
  %".555" = load i32, ptr %"R2"
  %"zext.84" = zext i32 %".555" to i64
  %".556" = load i32, ptr %"R3"
  %"zext.85" = zext i32 %".556" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %"ptr_plus_imm.38" = add i64 %"or.42", 20
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".557" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".558" = bitcast ptr %"R19" to ptr
  store float %".557", ptr %".558"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".561" = load i32, ptr %"UR4"
  %"zext.86" = zext i32 %".561" to i64
  %".562" = load i32, ptr %"UR5"
  %"zext.87" = zext i32 %".562" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %"ptr_plus_imm.39" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".563" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".564" = bitcast ptr %"R18" to ptr
  store float %".563", ptr %".564"
  ; LDG.E.SYS R21, [R2+0x18]
  %".567" = load i32, ptr %"R2"
  %"zext.88" = zext i32 %".567" to i64
  %".568" = load i32, ptr %"R3"
  %"zext.89" = zext i32 %".568" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %"ptr_plus_imm.40" = add i64 %"or.44", 24
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".569" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".570" = bitcast ptr %"R21" to ptr
  store float %".569", ptr %".570"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".573" = load i32, ptr %"UR4"
  %"zext.90" = zext i32 %".573" to i64
  %".574" = load i32, ptr %"UR5"
  %"zext.91" = zext i32 %".574" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %"ptr_plus_imm.41" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".575" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".576" = bitcast ptr %"R20" to ptr
  store float %".575", ptr %".576"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".579" = load i32, ptr %"R2"
  %"zext.92" = zext i32 %".579" to i64
  %".580" = load i32, ptr %"R3"
  %"zext.93" = zext i32 %".580" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %"ptr_plus_imm.42" = add i64 %"or.46", 28
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".581" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".582" = bitcast ptr %"R23" to ptr
  store float %".581", ptr %".582"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".585" = load i32, ptr %"UR4"
  %"zext.94" = zext i32 %".585" to i64
  %".586" = load i32, ptr %"UR5"
  %"zext.95" = zext i32 %".586" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %"ptr_plus_imm.43" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".587" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".588" = bitcast ptr %"R22" to ptr
  store float %".587", ptr %".588"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".591" = load i32, ptr %"UR4"
  %".592" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".591", i32 32)
  %".593" = extractvalue {i32, i1} %".592", 0
  %".594" = extractvalue {i32, i1} %".592", 1
  %".595" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".593", i32 0)
  %".596" = extractvalue {i32, i1} %".595", 0
  %".597" = extractvalue {i32, i1} %".595", 1
  %".598" = or i1 %".594", %".597"
  store i32 %".596", ptr %"UR4"
  store i1 %".598", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".602" = xor i1 1, 1
  %".603" = and i1 %".602", 1
  %".604" = and i1 %".603", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".606" = load i32, ptr %"R5"
  %".607" = add i32 %".606", 8
  %".608" = add i32 %".607", 0
  store i32 %".608", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".611" = load i32, ptr %"UR5"
  %".612" = load i1, ptr %"UP0"
  %".613" = xor i1 1, -1
  %".614" = zext i1 %".612" to i32
  %".615" = zext i1 %".613" to i32
  %"add.4" = add i32 0, %".611"
  %"add.5" = add i32 %"add.4", 0
  %"add.6" = add i32 %"add.5", %".614"
  %"add.7" = add i32 %"add.6", %".615"
  store i32 %"add.7", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".618" = load i32, ptr %"R2"
  %".619" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".618", i32 32)
  %".620" = extractvalue {i32, i1} %".619", 0
  %".621" = extractvalue {i32, i1} %".619", 1
  %".622" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".620", i32 0)
  %".623" = extractvalue {i32, i1} %".622", 0
  %".624" = extractvalue {i32, i1} %".622", 1
  %".625" = or i1 %".621", %".624"
  store i32 %".623", ptr %"R2"
  store i1 %".625", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".629" = load i32, ptr %"R6"
  %".630" = add i32 %".629", -8
  %".631" = add i32 %".630", 0
  store i32 %".631", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".634" = load i32, ptr %"R3"
  %".635" = load i1, ptr %"P1"
  %".636" = xor i1 1, -1
  %".637" = zext i1 %".635" to i32
  %".638" = zext i1 %".636" to i32
  %"add.8" = add i32 0, %".634"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".637"
  %"add.11" = add i32 %"add.10", %".638"
  store i32 %"add.11", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".641" = load float, ptr %"R8"
  %".642" = load float, ptr %"R9"
  %".643" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".641", %".642"
  %"fadd.16" = fadd float %"fmul.16", %".643"
  %".644" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".644"
  ; FFMA R8, R11, R10, R8
  %".647" = load float, ptr %"R11"
  %".648" = load float, ptr %"R10"
  %".649" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".647", %".648"
  %"fadd.17" = fadd float %"fmul.17", %".649"
  %".650" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".650"
  ; FFMA R8, R13, R12, R8
  %".653" = load float, ptr %"R13"
  %".654" = load float, ptr %"R12"
  %".655" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".653", %".654"
  %"fadd.18" = fadd float %"fmul.18", %".655"
  %".656" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".656"
  ; FFMA R8, R15, R14, R8
  %".659" = load float, ptr %"R15"
  %".660" = load float, ptr %"R14"
  %".661" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".659", %".660"
  %"fadd.19" = fadd float %"fmul.19", %".661"
  %".662" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".662"
  ; FFMA R8, R17, R16, R8
  %".665" = load float, ptr %"R17"
  %".666" = load float, ptr %"R16"
  %".667" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".665", %".666"
  %"fadd.20" = fadd float %"fmul.20", %".667"
  %".668" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".668"
  ; FFMA R8, R19, R18, R8
  %".671" = load float, ptr %"R19"
  %".672" = load float, ptr %"R18"
  %".673" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".671", %".672"
  %"fadd.21" = fadd float %"fmul.21", %".673"
  %".674" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".674"
  ; FFMA R8, R21, R20, R8
  %".677" = load float, ptr %"R21"
  %".678" = load float, ptr %"R20"
  %".679" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".677", %".678"
  %"fadd.22" = fadd float %"fmul.22", %".679"
  %".680" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".680"
  ; FFMA R7, R23, R22, R8
  %".683" = load float, ptr %"R23"
  %".684" = load float, ptr %"R22"
  %".685" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".683", %".684"
  %"fadd.23" = fadd float %"fmul.23", %".685"
  %".686" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".686"
  br label %".L_x_13"
.L_x_13:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".690" = load i32, ptr %"R6"
  %".691" = load i1, ptr %"P0"
  %"cmp.7" = icmp ne i32 %".690", 0
  %".692" = xor i1 %"cmp.7", -1
  %".693" = or i1 %"cmp.7", %".691"
  %".694" = or i1 %".692", %".691"
  store i1 %".693", ptr %"P0"
  ; @!P0 BRA `(.L_x_9)
  %".697" = load i1, ptr %"P0"
  %".698" = icmp ne i1 %".697", 1
  br i1 %".698", label %".L_x_9", label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R8, [R2]
  %".701" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".701" to i64
  %".702" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".702" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".703" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".704" = bitcast ptr %"R8" to ptr
  store float %".703", ptr %".704"
  ; LDG.E.SYS R9, [UR4]
  %".707" = load i32, ptr %"UR4"
  %"zext.98" = zext i32 %".707" to i64
  %".708" = load i32, ptr %"UR5"
  %"zext.99" = zext i32 %".708" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".709" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".710" = bitcast ptr %"R9" to ptr
  store float %".709", ptr %".710"
  ; LDG.E.SYS R11, [R2+0x4]
  %".713" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".713" to i64
  %".714" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".714" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".715" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".716" = bitcast ptr %"R11" to ptr
  store float %".715", ptr %".716"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".719" = load i32, ptr %"UR4"
  %"zext.102" = zext i32 %".719" to i64
  %".720" = load i32, ptr %"UR5"
  %"zext.103" = zext i32 %".720" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %"ptr_plus_imm.45" = add i64 %"or.51", 4
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".721" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".722" = bitcast ptr %"R10" to ptr
  store float %".721", ptr %".722"
  ; LDG.E.SYS R13, [R2+0x8]
  %".725" = load i32, ptr %"R2"
  %"zext.104" = zext i32 %".725" to i64
  %".726" = load i32, ptr %"R3"
  %"zext.105" = zext i32 %".726" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %"ptr_plus_imm.46" = add i64 %"or.52", 8
  %"inttoptr_bytes.52" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".727" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".728" = bitcast ptr %"R13" to ptr
  store float %".727", ptr %".728"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".731" = load i32, ptr %"UR4"
  %"zext.106" = zext i32 %".731" to i64
  %".732" = load i32, ptr %"UR5"
  %"zext.107" = zext i32 %".732" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %"ptr_plus_imm.47" = add i64 %"or.53", 8
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".733" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".734" = bitcast ptr %"R12" to ptr
  store float %".733", ptr %".734"
  ; LDG.E.SYS R15, [R2+0xc]
  %".737" = load i32, ptr %"R2"
  %"zext.108" = zext i32 %".737" to i64
  %".738" = load i32, ptr %"R3"
  %"zext.109" = zext i32 %".738" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %"ptr_plus_imm.48" = add i64 %"or.54", 12
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".739" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".740" = bitcast ptr %"R15" to ptr
  store float %".739", ptr %".740"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".743" = load i32, ptr %"UR4"
  %"zext.110" = zext i32 %".743" to i64
  %".744" = load i32, ptr %"UR5"
  %"zext.111" = zext i32 %".744" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %"ptr_plus_imm.49" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".745" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".746" = bitcast ptr %"R14" to ptr
  store float %".745", ptr %".746"
  ; IADD3 R6, R6, -0x4, RZ
  %".749" = load i32, ptr %"R6"
  %".750" = add i32 %".749", -4
  %".751" = add i32 %".750", 0
  store i32 %".751", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".754" = load i32, ptr %"UR4"
  %".755" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".754", i32 16)
  %".756" = extractvalue {i32, i1} %".755", 0
  %".757" = extractvalue {i32, i1} %".755", 1
  %".758" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".756", i32 0)
  %".759" = extractvalue {i32, i1} %".758", 0
  %".760" = extractvalue {i32, i1} %".758", 1
  %".761" = or i1 %".757", %".760"
  store i32 %".759", ptr %"UR4"
  store i1 %".761", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".765" = load i32, ptr %"R5"
  %".766" = add i32 %".765", 4
  %".767" = add i32 %".766", 0
  store i32 %".767", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".770" = load i32, ptr %"R6"
  %".771" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".770", 0
  %".772" = xor i1 %"cmp.8", -1
  %".773" = and i1 %"cmp.8", %".771"
  %".774" = and i1 %".772", %".771"
  store i1 %".773", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".777" = load i32, ptr %"UR5"
  %".778" = load i1, ptr %"UP0"
  %".779" = xor i1 1, -1
  %".780" = zext i1 %".778" to i32
  %".781" = zext i1 %".779" to i32
  %"add.12" = add i32 0, %".777"
  %"add.13" = add i32 %"add.12", 0
  %"add.14" = add i32 %"add.13", %".780"
  %"add.15" = add i32 %"add.14", %".781"
  store i32 %"add.15", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".784" = load float, ptr %"R8"
  %".785" = load float, ptr %"R9"
  %".786" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".784", %".785"
  %"fadd.24" = fadd float %"fmul.24", %".786"
  %".787" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".787"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".790" = load i32, ptr %"R2"
  %".791" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".790", i32 16)
  %".792" = extractvalue {i32, i1} %".791", 0
  %".793" = extractvalue {i32, i1} %".791", 1
  %".794" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".792", i32 0)
  %".795" = extractvalue {i32, i1} %".794", 0
  %".796" = extractvalue {i32, i1} %".794", 1
  %".797" = or i1 %".793", %".796"
  store i32 %".795", ptr %"R9"
  store i1 %".797", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".801" = load i32, ptr %"R9"
  %"imad_mul.6" = mul i32 0, 0
  %"imad_add.6" = add i32 %"imad_mul.6", %".801"
  store i32 %"imad_add.6", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".804" = load float, ptr %"R11"
  %".805" = load float, ptr %"R10"
  %".806" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".804", %".805"
  %"fadd.25" = fadd float %"fmul.25", %".806"
  %".807" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".807"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".810" = load i32, ptr %"R3"
  %".811" = load i1, ptr %"P1"
  %".812" = xor i1 1, -1
  %".813" = zext i1 %".811" to i32
  %".814" = zext i1 %".812" to i32
  %"add.16" = add i32 0, %".810"
  %"add.17" = add i32 %"add.16", 0
  %"add.18" = add i32 %"add.17", %".813"
  %"add.19" = add i32 %"add.18", %".814"
  store i32 %"add.19", ptr %"R10"
  ; MOV R3, R10
  %".817" = load i32, ptr %"R10"
  store i32 %".817", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".820" = load float, ptr %"R13"
  %".821" = load float, ptr %"R12"
  %".822" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".820", %".821"
  %"fadd.26" = fadd float %"fmul.26", %".822"
  %".823" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".823"
  ; FFMA R7, R15, R14, R8
  %".826" = load float, ptr %"R15"
  %".827" = load float, ptr %"R14"
  %".828" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".826", %".827"
  %"fadd.27" = fadd float %"fmul.27", %".828"
  %".829" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".829"
  ; @P0 BRA `(.L_x_10)
  %".832" = load i1, ptr %"P0"
  %".833" = icmp eq i1 %".832", 1
  br i1 %".833", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".836" = load i32, ptr %"R4"
  %".837" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".836", 0
  %".838" = xor i1 %"cmp.9", -1
  %".839" = and i1 %"cmp.9", %".837"
  %".840" = and i1 %".838", %".837"
  store i1 %".839", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".843" = load i1, ptr %"P0"
  %".844" = icmp ne i1 %".843", 1
  br i1 %".844", label %".L_x_8", label %".L_x_9_split_0x0900"
.L_x_9_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".849" = load i32, ptr %"R0"
  %".850" = load i32, ptr %"R5"
  %"imad_mul.7" = mul i32 %".849", %"Arg_4"
  %"imad_add.7" = add i32 %"imad_mul.7", %".850"
  store i32 %"imad_add.7", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".853" = load i32, ptr %"R2"
  %".854" = load i32, ptr %"R8"
  %"imad_ext1.1" = zext i32 %".853" to i64
  %"imad_ext2.1" = zext i32 %".854" to i64
  %"imad_mul.8" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".855" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.8" = add i64 %"imad_mul.8", %".855"
  %".856" = and i64 %"imad_add.8", 18446744069414584320
  %".857" = lshr i64 %".856", 32
  %"trunc32.4" = trunc i64 %".857" to i32
  %"trunc32.5" = trunc i64 %"imad_add.8" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".861" = load i32, ptr %"R5"
  %".862" = load i32, ptr %"R8"
  %"imad_ext1.2" = zext i32 %".861" to i64
  %"imad_ext2.2" = zext i32 %".862" to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %".863" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %".863"
  %".864" = and i64 %"imad_add.9", 18446744069414584320
  %".865" = lshr i64 %".864", 32
  %"trunc32.6" = trunc i64 %".865" to i32
  %"trunc32.7" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".869" = load i32, ptr %"R2"
  store i32 %".869", ptr %"R6"
  br label %".L_x_14"
.L_x_14:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".873" = load i32, ptr %"R6"
  %"imad_mul.10" = mul i32 0, 0
  %"imad_add.10" = add i32 %"imad_mul.10", %".873"
  store i32 %"imad_add.10", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".876" = load i32, ptr %"R8"
  %"zext.112" = zext i32 %".876" to i64
  %".877" = load i32, ptr %"R9"
  %"zext.113" = zext i32 %".877" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %"inttoptr_bytes.56" = inttoptr i64 %"or.56" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".878" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".879" = bitcast ptr %"R5" to ptr
  store float %".878", ptr %".879"
  ; LDG.E.SYS R2, [R2]
  %".882" = load i32, ptr %"R2"
  %"zext.114" = zext i32 %".882" to i64
  %".883" = load i32, ptr %"R3"
  %"zext.115" = zext i32 %".883" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".884" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".885" = bitcast ptr %"R2" to ptr
  store float %".884", ptr %".885"
  ; IADD3 R4, R4, -0x1, RZ
  %".888" = load i32, ptr %"R4"
  %".889" = add i32 %".888", -1
  %".890" = add i32 %".889", 0
  store i32 %".890", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".893" = load i32, ptr %"R4"
  %".894" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".893", 0
  %".895" = xor i1 %"cmp.10", -1
  %".896" = and i1 %"cmp.10", %".894"
  %".897" = and i1 %".895", %".894"
  store i1 %".896", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".900" = load i32, ptr %"R6"
  %".901" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".900", i32 4)
  %".902" = extractvalue {i32, i1} %".901", 0
  %".903" = extractvalue {i32, i1} %".901", 1
  %".904" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".902", i32 0)
  %".905" = extractvalue {i32, i1} %".904", 0
  %".906" = extractvalue {i32, i1} %".904", 1
  %".907" = or i1 %".903", %".906"
  store i32 %".905", ptr %"R6"
  store i1 %".907", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".911" = load i32, ptr %"R8"
  %".912" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".911", i32 4)
  %".913" = extractvalue {i32, i1} %".912", 0
  %".914" = extractvalue {i32, i1} %".912", 1
  %".915" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".913", i32 0)
  %".916" = extractvalue {i32, i1} %".915", 0
  %".917" = extractvalue {i32, i1} %".915", 1
  %".918" = or i1 %".914", %".917"
  store i32 %".916", ptr %"R8"
  store i1 %".918", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".922" = load i32, ptr %"R3"
  %".923" = load i1, ptr %"P1"
  %".924" = xor i1 1, -1
  %".925" = zext i1 %".923" to i32
  %".926" = zext i1 %".924" to i32
  %"add.20" = add i32 0, %".922"
  %"add.21" = add i32 %"add.20", 0
  %"add.22" = add i32 %"add.21", %".925"
  %"add.23" = add i32 %"add.22", %".926"
  store i32 %"add.23", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".929" = load i32, ptr %"R9"
  %".930" = load i1, ptr %"P2"
  %".931" = xor i1 1, -1
  %".932" = zext i1 %".930" to i32
  %".933" = zext i1 %".931" to i32
  %"add.24" = add i32 0, %".929"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".932"
  %"add.27" = add i32 %"add.26", %".933"
  store i32 %"add.27", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".936" = load float, ptr %"R2"
  %".937" = load float, ptr %"R5"
  %".938" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".936", %".937"
  %"fadd.28" = fadd float %"fmul.28", %".938"
  %".939" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".939"
  ; @P0 BRA `(.L_x_14)
  %".942" = load i1, ptr %"P0"
  %".943" = icmp eq i1 %".942", 1
  br i1 %".943", label %".L_x_14", label %".L_x_8"
.L_x_8:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".948" = load i32, ptr %"R0"
  %".949" = load i32, ptr %"R5"
  %"imad_ext1.3" = zext i32 %".948" to i64
  %"imad_ext2.3" = zext i32 %".949" to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %".950" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %".950"
  %".951" = and i64 %"imad_add.11", 18446744069414584320
  %".952" = lshr i64 %".951", 32
  %"trunc32.8" = trunc i64 %".952" to i32
  %"trunc32.9" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".956" = load i32, ptr %"R2"
  %"zext.116" = zext i32 %".956" to i64
  %".957" = load i32, ptr %"R3"
  %"zext.117" = zext i32 %".957" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".958" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".959" = bitcast ptr %"R2" to ptr
  store float %".958", ptr %".959"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".962" = load i32, ptr %"R0"
  %".963" = load i32, ptr %"R5"
  %"imad_ext1.4" = zext i32 %".962" to i64
  %"imad_ext2.4" = zext i32 %".963" to i64
  %"imad_mul.12" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %".964" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.12" = add i64 %"imad_mul.12", %".964"
  %".965" = and i64 %"imad_add.12", 18446744069414584320
  %".966" = lshr i64 %".965", 32
  %"trunc32.10" = trunc i64 %".966" to i32
  %"trunc32.11" = trunc i64 %"imad_add.12" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".970" = load float, ptr %"R2"
  %".971" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".970", %".971"
  %".972" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".972"
  ; STG.E.SYS [R4], R7
  %".975" = load float, ptr %"R7"
  %".976" = load i32, ptr %"R4"
  %"zext.118" = zext i32 %".976" to i64
  %".977" = load i32, ptr %"R5"
  %"zext.119" = zext i32 %".977" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".975", ptr addrspace(1) %"ptr_cast_for_access.59"
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
  %"imad_mul" = mul i32 0, 0
  %"imad_add" = add i32 %"imad_mul", 0
  store i32 %"imad_add", ptr %"R1"
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
  %".36" = xor i1 %"cmp", -1
  %".37" = and i1 %"cmp", %".35"
  %".38" = and i1 %".36", %".35"
  store i1 %".37", ptr %"P1"
  ; MUFU.RCP R0, R0
  %".41" = load float, ptr %"R0"
  %".42" = fdiv float 0x3ff0000000000000, %".41"
  %".43" = bitcast ptr %"R0" to ptr
  store float %".42", ptr %".43"
  ; IADD3 R2, R0, 0xffffffe, RZ
  %".46" = load i32, ptr %"R0"
  %".47" = add i32 %".46", 268435454
  %".48" = add i32 %".47", 0
  store i32 %".48", ptr %"R2"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %".51" = load float, ptr %"R2"
  %".52" = call float @"llvm.fabs"(float %".51")
  %".53" = fcmp ogt float %".52",              0x0
  %".54" = fcmp olt float %".52", 0x3810000000000000
  %".55" = and i1 %".53", %".54"
  %".56" = select  i1 %".55", float              0x0, float %".51"
  %".57" = fptoui float %".56" to i32
  store i32 %".57", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"imad_mul.1" = mul i32 0, 0
  %"imad_add.1" = add i32 %"imad_mul.1", 0
  store i32 %"imad_add.1", ptr %"R2"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".62" = load i32, ptr %"R3"
  %".63" = sub i32 0, %".62"
  %"imad_mul.2" = mul i32 0, 0
  %"imad_add.2" = add i32 %"imad_mul.2", %".63"
  store i32 %"imad_add.2", ptr %"R4"
  ; IMAD R5, R4, R7, RZ
  %".66" = load i32, ptr %"R4"
  %".67" = load i32, ptr %"R7"
  %"imad_mul.3" = mul i32 %".66", %".67"
  %"imad_add.3" = add i32 %"imad_mul.3", 0
  store i32 %"imad_add.3", ptr %"R5"
  ; IABS R4, c[0x0][0x170]
  %".70" = icmp sge i32 %"Arg_2", 0
  %".71" = sub i32 0, %"Arg_2"
  %"iabs.1" = select  i1 %".70", i32 %"Arg_2", i32 %".71"
  store i32 %"iabs.1", ptr %"R4"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".74" = load i32, ptr %"R3"
  %".75" = load i32, ptr %"R5"
  %".76" = load i32, ptr %"R2"
  %"imad_ext1" = zext i32 %".74" to i64
  %"imad_ext2" = zext i32 %".75" to i64
  %"imad_mul.4" = mul i64 %"imad_ext1", %"imad_ext2"
  %"imad_ext3" = zext i32 %".76" to i64
  %"imad_add.4" = add i64 %"imad_mul.4", %"imad_ext3"
  %"imad_hi_shift" = lshr i64 %"imad_add.4", 32
  %"imad_hi_trunc" = trunc i64 %"imad_hi_shift" to i32
  store i32 %"imad_hi_trunc", ptr %"R3"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".81" = load i32, ptr %"R3"
  %".82" = load i32, ptr %"R4"
  %"imad_ext1.1" = zext i32 %".81" to i64
  %"imad_ext2.1" = zext i32 %".82" to i64
  %"imad_mul.5" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %"imad_ext3.1" = zext i32 0 to i64
  %"imad_add.5" = add i64 %"imad_mul.5", %"imad_ext3.1"
  %"imad_hi_shift.1" = lshr i64 %"imad_add.5", 32
  %"imad_hi_trunc.1" = trunc i64 %"imad_hi_shift.1" to i32
  store i32 %"imad_hi_trunc.1", ptr %"R3"
  ; S2R R5, SR_TID.X
  %"nvvm_threadidx_x" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"nvvm_threadidx_x", ptr %"R5"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".87" = load i32, ptr %"R3"
  %".88" = sub i32 0, %".87"
  %"imad_mul.6" = mul i32 0, 0
  %"imad_add.6" = add i32 %"imad_mul.6", %".88"
  store i32 %"imad_add.6", ptr %"R0"
  ; IMAD R0, R7, R0, R4
  %".91" = load i32, ptr %"R7"
  %".92" = load i32, ptr %"R0"
  %".93" = load i32, ptr %"R4"
  %"imad_mul.7" = mul i32 %".91", %".92"
  %"imad_add.7" = add i32 %"imad_mul.7", %".93"
  store i32 %"imad_add.7", ptr %"R0"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".96" = load i32, ptr %"R7"
  %".97" = load i32, ptr %"R0"
  %".98" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".96", %".97"
  %".99" = xor i1 %"cmp.1", -1
  %".100" = and i1 %"cmp.1", %".98"
  %".101" = and i1 %".99", %".98"
  store i1 %".100", ptr %"P2"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ
  %".104" = load i1, ptr %"P2"
  %".105" = icmp ne i1 %".104", 1
  br i1 %".105", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".108" = load i32, ptr %"R0"
  %".109" = load i32, ptr %"R7"
  %".110" = sub i32 0, %".109"
  %".111" = add i32 %".108", %".110"
  %".112" = add i32 %".111", 0
  store i32 %".112", ptr %"R0"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ
  %".117" = load i1, ptr %"P2"
  %".118" = icmp ne i1 %".117", 1
  br i1 %".118", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".121" = load i32, ptr %"R3"
  %".122" = add i32 %".121", 1
  %".123" = add i32 %".122", 0
  store i32 %".123", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".128" = load i32, ptr %"R0"
  %".129" = load i32, ptr %"R7"
  %".130" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".128", %".129"
  %".131" = xor i1 %"cmp.2", -1
  %".132" = and i1 %"cmp.2", %".130"
  %".133" = and i1 %".131", %".130"
  store i1 %".132", ptr %"P0"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".136" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".137" = load i32, ptr %"R5"
  %"imad_mul.8" = mul i32 %".136", %"nvvm_blockdim_x"
  %"imad_add.8" = add i32 %"imad_mul.8", %".137"
  store i32 %"imad_add.8", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"nvvm_threadidx_y" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()
  store i32 %"nvvm_threadidx_y", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".142" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_3"
  %".143" = xor i1 %"cmp.3", -1
  %".144" = and i1 %"cmp.3", %".142"
  %".145" = and i1 %".143", %".142"
  store i1 %".144", ptr %"P2"
  ; @P0 IADD3 R3, R3, 0x1, RZ
  %".148" = load i1, ptr %"P0"
  %".149" = icmp eq i1 %".148", 1
  br i1 %".149", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".152" = load i32, ptr %"R3"
  %".153" = add i32 %".152", 1
  %".154" = add i32 %".153", 0
  store i32 %".154", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".159" = load i32, ptr %"R3"
  %"imad_mul.9" = mul i32 0, 0
  %"imad_add.9" = add i32 %"imad_mul.9", %".159"
  store i32 %"imad_add.9", ptr %"R21"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21
  %".162" = load i1, ptr %"P1"
  %".163" = icmp ne i1 %".162", 1
  br i1 %".163", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".166" = load i32, ptr %"R21"
  %".167" = sub i32 0, %".166"
  %"imad_mul.10" = mul i32 0, 0
  %"imad_add.10" = add i32 %"imad_mul.10", %".167"
  store i32 %"imad_add.10", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".172" = load i1, ptr %"P2"
  %".173" = icmp ne i1 %".172", 1
  br i1 %".173", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".176" = xor i1 1, -1
  %".177" = xor i32 %"Arg_3", -1
  store i32 %".177", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".182" = load i32, ptr %"R10"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".183" = load i32, ptr %"R7"
  %"imad_mul.11" = mul i32 %".182", %"nvvm_blockdim_y"
  %"imad_add.11" = add i32 %"imad_mul.11", %".183"
  store i32 %"imad_add.11", ptr %"R10"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".186" = load i32, ptr %"R0"
  %".187" = load i32, ptr %"R21"
  %".188" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".186", %".187"
  %".189" = xor i1 %"cmp.4", -1
  %".190" = and i1 %"cmp.4", %".188"
  %".191" = and i1 %".189", %".188"
  store i1 %".190", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".194" = load i32, ptr %"R10"
  %".195" = load i32, ptr %"R21"
  %".196" = load i1, ptr %"P0"
  %"cmp.5" = icmp sge i32 %".194", %".195"
  %".197" = xor i1 %"cmp.5", -1
  %".198" = or i1 %"cmp.5", %".196"
  %".199" = or i1 %".197", %".196"
  store i1 %".198", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".202" = load i32, ptr %"R19"
  %".203" = load i1, ptr %"P0"
  %"cmp.6" = icmp sge i32 %".202", %"Arg_4"
  %".204" = xor i1 %"cmp.6", -1
  %".205" = or i1 %"cmp.6", %".203"
  %".206" = or i1 %".204", %".203"
  store i1 %".205", ptr %"P0"
  ; @P0 EXIT
  %".209" = load i1, ptr %"P0"
  %".210" = icmp eq i1 %".209", 1
  br i1 %".210", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
.text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240:
  ; EXIT
  br label %"ExitFunction"
.text._Z10max_pool2dPfS_iii_split_0x0250:
  ; IMAD.MOV.U32 R15, RZ, RZ, c[0x0][0x174]
  %"imad_mul.12" = mul i32 0, 0
  %"imad_add.12" = add i32 %"imad_mul.12", %"Arg_3"
  store i32 %"imad_add.12", ptr %"R15"
  ; MOV R11, 0xff800000
  store i32 4286578688, ptr %"R11"
  ; ISETP.GE.AND P0, PT, R15, 0x1, PT
  %".219" = load i32, ptr %"R15"
  %".220" = load i1, ptr %"PT"
  %"cmp.7" = icmp sge i32 %".219", 1
  %".221" = xor i1 %"cmp.7", -1
  %".222" = and i1 %"cmp.7", %".220"
  %".223" = and i1 %".221", %".220"
  store i1 %".222", ptr %"P0"
  ; @!P0 BRA `(.L_x_16)
  %".226" = load i1, ptr %"P0"
  %".227" = icmp ne i1 %".226", 1
  br i1 %".227", label %".L_x_16", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".230" = load i32, ptr %"R19"
  %"imad_mul.13" = mul i32 %".230", %"Arg_2"
  %"imad_add.13" = add i32 %"imad_mul.13", 0
  store i32 %"imad_add.13", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".233" = load i32, ptr %"R15"
  %".234" = add i32 %".233", -1
  %".235" = add i32 %".234", 0
  store i32 %".235", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".238" = load i32, ptr %"R0"
  %"imad_mul.14" = mul i32 %".238", %"Arg_3"
  %"imad_add.14" = add i32 %"imad_mul.14", 0
  store i32 %"imad_add.14", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".241" = load i32, ptr %"R15"
  %".242" = xor i1 1, -1
  %".243" = and i32 %".241", 3
  store i32 %".243", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".246" = load i32, ptr %"R10"
  %".247" = load i32, ptr %"R3"
  %"imad_mul.15" = mul i32 %".246", %"Arg_3"
  %"imad_add.15" = add i32 %"imad_mul.15", %".247"
  store i32 %"imad_add.15", ptr %"R12"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".250" = load i32, ptr %"R2"
  %".251" = load i1, ptr %"PT"
  %"cmp.8" = icmp sge i32 %".250", 3
  %".252" = xor i1 %"cmp.8", -1
  %".253" = and i1 %"cmp.8", %".251"
  %".254" = and i1 %".252", %".251"
  store i1 %".253", ptr %"P0"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"imad_mul.16" = mul i32 0, 0
  %"imad_add.16" = add i32 %"imad_mul.16", -8388608
  store i32 %"imad_add.16", ptr %"R11"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".259" = load i32, ptr %"R15"
  %".260" = sub i32 0, %"Arg_3"
  %".261" = add i32 %".259", %".260"
  %".262" = add i32 %".261", 0
  store i32 %".262", ptr %"R20"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"imad_mul.17" = mul i32 0, 0
  %"imad_add.17" = add i32 %"imad_mul.17", 0
  store i32 %"imad_add.17", ptr %"R16"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".267" = load i32, ptr %"R12"
  %".268" = load i32, ptr %"R13"
  %"imad_mul.18" = mul i32 %".267", %"Arg_2"
  %"imad_add.18" = add i32 %"imad_mul.18", %".268"
  store i32 %"imad_add.18", ptr %"R14"
  br label %".L_x_20"
.L_x_20:
  ; UMOV UR4, URZ
  %".272" = load i32, ptr %"URZ"
  store i32 %".272", ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".275" = load i32, ptr %"R15"
  %".276" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".275", 0
  %".277" = xor i1 %"cmp.9", -1
  %".278" = and i1 %"cmp.9", %".276"
  %".279" = and i1 %".277", %".276"
  store i1 %".278", ptr %"P2"
  ; @!P0 BRA `(.L_x_17)
  %".282" = load i1, ptr %"P0"
  %".283" = icmp ne i1 %".282", 1
  br i1 %".283", label %".L_x_17", label %".L_x_20_split_0x0360"
.L_x_20_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".286" = load i32, ptr %"R14"
  %".287" = load i32, ptr %"R16"
  %"imad_mul.19" = mul i32 %".286", 1
  %"imad_add.19" = add i32 %"imad_mul.19", %".287"
  store i32 %"imad_add.19", ptr %"R17"
  ; UMOV UR4, URZ
  %".290" = load i32, ptr %"URZ"
  store i32 %".290", ptr %"UR4"
  br label %".L_x_18"
.L_x_18:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"imad_mul.20" = mul i32 0, 0
  %"imad_add.20" = add i32 %"imad_mul.20", %"Arg_2"
  store i32 %"imad_add.20", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".298" = load i32, ptr %"R17"
  %".299" = load i32, ptr %"R2"
  %"imad_ext1.2" = zext i32 %".298" to i64
  %"imad_ext2.2" = zext i32 %".299" to i64
  %"imad_mul.21" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %".300" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.21" = add i64 %"imad_mul.21", %".300"
  %".301" = and i64 %"imad_add.21", 18446744069414584320
  %".302" = lshr i64 %".301", 32
  %"trunc32" = trunc i64 %".302" to i32
  %"trunc32.1" = trunc i64 %"imad_add.21" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".306" = load i32, ptr %"R23"
  %".307" = load i32, ptr %"R2"
  %"imad_ext1.3" = zext i32 %".306" to i64
  %"imad_ext2.3" = zext i32 4 to i64
  %"imad_mul.22" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %"imad_ext3.2" = zext i32 %".307" to i64
  %"imad_add.22" = add i64 %"imad_mul.22", %"imad_ext3.2"
  %".308" = and i64 %"imad_add.22", 18446744069414584320
  %".309" = lshr i64 %".308", 32
  %"trunc32.2" = trunc i64 %".309" to i32
  %"trunc32.3" = trunc i64 %"imad_add.22" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; LDG.E.SYS R2, [R2]
  %".313" = load i32, ptr %"R2"
  %"zext" = zext i32 %".313" to i64
  %".314" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".314" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".315" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".316" = bitcast ptr %"R2" to ptr
  store float %".315", ptr %".316"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".319" = load i32, ptr %"R23"
  %".320" = load i32, ptr %"R4"
  %"imad_ext1.4" = zext i32 %".319" to i64
  %"imad_ext2.4" = zext i32 4 to i64
  %"imad_mul.23" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3.3" = zext i32 %".320" to i64
  %"imad_add.23" = add i64 %"imad_mul.23", %"imad_ext3.3"
  %".321" = and i64 %"imad_add.23", 18446744069414584320
  %".322" = lshr i64 %".321", 32
  %"trunc32.4" = trunc i64 %".322" to i32
  %"trunc32.5" = trunc i64 %"imad_add.23" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".326" = load i32, ptr %"R4"
  %"zext.2" = zext i32 %".326" to i64
  %".327" = load i32, ptr %"R5"
  %"zext.3" = zext i32 %".327" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".328" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".329" = bitcast ptr %"R4" to ptr
  store float %".328", ptr %".329"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".332" = load i32, ptr %"R23"
  %".333" = load i32, ptr %"R6"
  %"imad_ext1.5" = zext i32 %".332" to i64
  %"imad_ext2.5" = zext i32 4 to i64
  %"imad_mul.24" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %"imad_ext3.4" = zext i32 %".333" to i64
  %"imad_add.24" = add i64 %"imad_mul.24", %"imad_ext3.4"
  %".334" = and i64 %"imad_add.24", 18446744069414584320
  %".335" = lshr i64 %".334", 32
  %"trunc32.6" = trunc i64 %".335" to i32
  %"trunc32.7" = trunc i64 %"imad_add.24" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".339" = load i32, ptr %"R6"
  %"zext.4" = zext i32 %".339" to i64
  %".340" = load i32, ptr %"R7"
  %"zext.5" = zext i32 %".340" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".341" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".342" = bitcast ptr %"R6" to ptr
  store float %".341", ptr %".342"
  ; LDG.E.SYS R8, [R8]
  %".345" = load i32, ptr %"R8"
  %"zext.6" = zext i32 %".345" to i64
  %".346" = load i32, ptr %"R9"
  %"zext.7" = zext i32 %".346" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"inttoptr_bytes.3" = inttoptr i64 %"or.3" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".347" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".348" = bitcast ptr %"R8" to ptr
  store float %".347", ptr %".348"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".351" = load i32, ptr %"UR4"
  %".352" = add i32 %".351", 4
  %".353" = add i32 %".352", 0
  store i32 %".353", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".356" = load i32, ptr %"R20"
  %".357" = load i32, ptr %"UR4"
  %".358" = add i32 %".356", %".357"
  %".359" = add i32 %".358", 0
  store i32 %".359", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".362" = load i32, ptr %"R18"
  %".363" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".362", 0
  %".364" = xor i1 %"cmp.10", -1
  %".365" = and i1 %"cmp.10", %".363"
  %".366" = and i1 %".364", %".363"
  store i1 %".365", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".369" = load i32, ptr %"R23"
  %".370" = load i32, ptr %"R17"
  %"imad_mul.25" = mul i32 %".369", 4
  %"imad_add.25" = add i32 %"imad_mul.25", %".370"
  store i32 %"imad_add.25", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".373" = load float, ptr %"R2"
  %".374" = load float, ptr %"R11"
  %".375" = xor i1 1, -1
  %".376" = fcmp olt float %".373", %".374"
  %".377" = fcmp ogt float %".373", %".374"
  %"mnmx_min" = select  i1 %".376", float %".373", float %".374"
  %"mnmx_max" = select  i1 %".377", float %".373", float %".374"
  %"mnmx_final" = select  i1 %".375", float %"mnmx_min", float %"mnmx_max"
  %".378" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final", ptr %".378"
  ; FMNMX R11, R11, R4, !PT
  %".381" = load float, ptr %"R11"
  %".382" = load float, ptr %"R4"
  %".383" = xor i1 1, -1
  %".384" = fcmp olt float %".381", %".382"
  %".385" = fcmp ogt float %".381", %".382"
  %"mnmx_min.1" = select  i1 %".384", float %".381", float %".382"
  %"mnmx_max.1" = select  i1 %".385", float %".381", float %".382"
  %"mnmx_final.1" = select  i1 %".383", float %"mnmx_min.1", float %"mnmx_max.1"
  %".386" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.1", ptr %".386"
  ; FMNMX R11, R11, R6, !PT
  %".389" = load float, ptr %"R11"
  %".390" = load float, ptr %"R6"
  %".391" = xor i1 1, -1
  %".392" = fcmp olt float %".389", %".390"
  %".393" = fcmp ogt float %".389", %".390"
  %"mnmx_min.2" = select  i1 %".392", float %".389", float %".390"
  %"mnmx_max.2" = select  i1 %".393", float %".389", float %".390"
  %"mnmx_final.2" = select  i1 %".391", float %"mnmx_min.2", float %"mnmx_max.2"
  %".394" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.2", ptr %".394"
  ; FMNMX R11, R11, R8, !PT
  %".397" = load float, ptr %"R11"
  %".398" = load float, ptr %"R8"
  %".399" = xor i1 1, -1
  %".400" = fcmp olt float %".397", %".398"
  %".401" = fcmp ogt float %".397", %".398"
  %"mnmx_min.3" = select  i1 %".400", float %".397", float %".398"
  %"mnmx_max.3" = select  i1 %".401", float %".397", float %".398"
  %"mnmx_final.3" = select  i1 %".399", float %"mnmx_min.3", float %"mnmx_max.3"
  %".402" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.3", ptr %".402"
  ; @P1 BRA `(.L_x_18)
  %".405" = load i1, ptr %"P1"
  %".406" = icmp eq i1 %".405", 1
  br i1 %".406", label %".L_x_18", label %".L_x_17"
.L_x_17:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".409" = load i32, ptr %"R13"
  %".410" = load i32, ptr %"R16"
  %"imad_mul.26" = mul i32 %".409", 1
  %"imad_add.26" = add i32 %"imad_mul.26", %".410"
  store i32 %"imad_add.26", ptr %"R4"
  ; @!P2 BRA `(.L_x_19)
  %".413" = load i1, ptr %"P2"
  %".414" = icmp ne i1 %".413", 1
  br i1 %".414", label %".L_x_19", label %".L_x_17_split_0x04d0"
.L_x_17_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".417" = load i32, ptr %"R12"
  %".418" = load i32, ptr %"UR4"
  %".419" = add i32 %".417", %".418"
  %".420" = add i32 %".419", 0
  store i32 %".420", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".425" = load i32, ptr %"R5"
  %".426" = load i32, ptr %"R4"
  %"imad_mul.27" = mul i32 %".425", %"Arg_2"
  %"imad_add.27" = add i32 %"imad_mul.27", %".426"
  store i32 %"imad_add.27", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".429" = load i32, ptr %"R2"
  %".430" = load i32, ptr %"R7"
  %"imad_ext1.6" = zext i32 %".429" to i64
  %"imad_ext2.6" = zext i32 %".430" to i64
  %"imad_mul.28" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".431" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.28" = add i64 %"imad_mul.28", %".431"
  %".432" = and i64 %"imad_add.28", 18446744069414584320
  %".433" = lshr i64 %".432", 32
  %"trunc32.8" = trunc i64 %".433" to i32
  %"trunc32.9" = trunc i64 %"imad_add.28" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".437" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".437" to i64
  %".438" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".438" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"inttoptr_bytes.4" = inttoptr i64 %"or.4" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".439" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".440" = bitcast ptr %"R2" to ptr
  store float %".439", ptr %".440"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".443" = load i32, ptr %"R15"
  %".444" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".443", 1
  %".445" = xor i1 %"cmp.11", -1
  %".446" = and i1 %"cmp.11", %".444"
  %".447" = and i1 %".445", %".444"
  store i1 %".446", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".450" = load float, ptr %"R11"
  %".451" = load float, ptr %"R2"
  %".452" = xor i1 1, -1
  %".453" = fcmp olt float %".450", %".451"
  %".454" = fcmp ogt float %".450", %".451"
  %"mnmx_min.4" = select  i1 %".453", float %".450", float %".451"
  %"mnmx_max.4" = select  i1 %".454", float %".450", float %".451"
  %"mnmx_final.4" = select  i1 %".452", float %"mnmx_min.4", float %"mnmx_max.4"
  %".455" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.4", ptr %".455"
  ; @!P1 BRA `(.L_x_19)
  %".458" = load i1, ptr %"P1"
  %".459" = icmp ne i1 %".458", 1
  br i1 %".459", label %".L_x_19", label %".L_x_17_split_0x0550"
.L_x_17_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".462" = load i32, ptr %"R15"
  %".463" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".462", 2
  %".464" = xor i1 %"cmp.12", -1
  %".465" = and i1 %"cmp.12", %".463"
  %".466" = and i1 %".464", %".463"
  store i1 %".465", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".469" = load i32, ptr %"R5"
  %".470" = add i32 %".469", 1
  %".471" = add i32 %".470", 0
  store i32 %".471", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".474" = load i32, ptr %"R2"
  %".475" = load i32, ptr %"R4"
  %"imad_mul.29" = mul i32 %".474", %"Arg_2"
  %"imad_add.29" = add i32 %"imad_mul.29", %".475"
  store i32 %"imad_add.29", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".478" = load i1, ptr %"P1"
  %".479" = icmp eq i1 %".478", 1
  br i1 %".479", label %".L_x_17_split_0x0550_conditionalExpr_0x0580", label %".L_x_17_split_0x0590"
.L_x_17_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".482" = load i32, ptr %"R5"
  %".483" = add i32 %".482", 2
  %".484" = add i32 %".483", 0
  store i32 %".484", ptr %"R3"
  ; BRA `(.L_x_17_split_0x0590)
  br label %".L_x_17_split_0x0590"
.L_x_17_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".489" = load i1, ptr %"P1"
  %".490" = icmp eq i1 %".489", 1
  br i1 %".490", label %".L_x_17_split_0x0590_conditionalExpr_0x0590", label %".L_x_17_split_0x05a0"
.L_x_17_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".493" = load i32, ptr %"R3"
  %".494" = load i32, ptr %"R4"
  %"imad_mul.30" = mul i32 %".493", %"Arg_2"
  %"imad_add.30" = add i32 %"imad_mul.30", %".494"
  store i32 %"imad_add.30", ptr %"R4"
  ; BRA `(.L_x_17_split_0x05a0)
  br label %".L_x_17_split_0x05a0"
.L_x_17_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".499" = load i32, ptr %"R2"
  %".500" = load i32, ptr %"R7"
  %"imad_ext1.7" = zext i32 %".499" to i64
  %"imad_ext2.7" = zext i32 %".500" to i64
  %"imad_mul.31" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".501" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.31" = add i64 %"imad_mul.31", %".501"
  %".502" = and i64 %"imad_add.31", 18446744069414584320
  %".503" = lshr i64 %".502", 32
  %"trunc32.10" = trunc i64 %".503" to i32
  %"trunc32.11" = trunc i64 %"imad_add.31" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".507" = load i1, ptr %"P1"
  %".508" = icmp eq i1 %".507", 1
  br i1 %".508", label %".L_x_17_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_17_split_0x05c0"
.L_x_17_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".511" = load i32, ptr %"R4"
  %".512" = load i32, ptr %"R7"
  %"imad_ext1.8" = zext i32 %".511" to i64
  %"imad_ext2.8" = zext i32 %".512" to i64
  %"imad_mul.32" = mul i64 %"imad_ext1.8", %"imad_ext2.8"
  %".513" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.32" = add i64 %"imad_mul.32", %".513"
  %".514" = and i64 %"imad_add.32", 18446744069414584320
  %".515" = lshr i64 %".514", 32
  %"trunc32.12" = trunc i64 %".515" to i32
  %"trunc32.13" = trunc i64 %"imad_add.32" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_17_split_0x05c0)
  br label %".L_x_17_split_0x05c0"
.L_x_17_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".521" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".521" to i64
  %".522" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".522" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"inttoptr_bytes.5" = inttoptr i64 %"or.5" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".523" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".524" = bitcast ptr %"R2" to ptr
  store float %".523", ptr %".524"
  ; @P1 LDG.E.SYS R4, [R4]
  %".527" = load i1, ptr %"P1"
  %".528" = icmp eq i1 %".527", 1
  br i1 %".528", label %".L_x_17_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_17_split_0x05e0"
.L_x_17_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".531" = load i32, ptr %"R4"
  %"zext.12" = zext i32 %".531" to i64
  %".532" = load i32, ptr %"R5"
  %"zext.13" = zext i32 %".532" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"inttoptr_bytes.6" = inttoptr i64 %"or.6" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".533" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".534" = bitcast ptr %"R4" to ptr
  store float %".533", ptr %".534"
  ; BRA `(.L_x_17_split_0x05e0)
  br label %".L_x_17_split_0x05e0"
.L_x_17_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".539" = load float, ptr %"R11"
  %".540" = load float, ptr %"R2"
  %".541" = xor i1 1, -1
  %".542" = fcmp olt float %".539", %".540"
  %".543" = fcmp ogt float %".539", %".540"
  %"mnmx_min.5" = select  i1 %".542", float %".539", float %".540"
  %"mnmx_max.5" = select  i1 %".543", float %".539", float %".540"
  %"mnmx_final.5" = select  i1 %".541", float %"mnmx_min.5", float %"mnmx_max.5"
  %".544" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.5", ptr %".544"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".547" = load i1, ptr %"P1"
  %".548" = icmp eq i1 %".547", 1
  br i1 %".548", label %".L_x_17_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_19"
.L_x_17_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".551" = load float, ptr %"R11"
  %".552" = load float, ptr %"R4"
  %".553" = xor i1 1, -1
  %".554" = fcmp olt float %".551", %".552"
  %".555" = fcmp ogt float %".551", %".552"
  %"mnmx_min.6" = select  i1 %".554", float %".551", float %".552"
  %"mnmx_max.6" = select  i1 %".555", float %".551", float %".552"
  %"mnmx_final.6" = select  i1 %".553", float %"mnmx_min.6", float %"mnmx_max.6"
  %".556" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.6", ptr %".556"
  ; BRA `(.L_x_19)
  br label %".L_x_19"
.L_x_19:
  ; IADD3 R16, R16, 0x1, RZ
  %".561" = load i32, ptr %"R16"
  %".562" = add i32 %".561", 1
  %".563" = add i32 %".562", 0
  store i32 %".563", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".566" = load i32, ptr %"R16"
  %".567" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".566", %"Arg_3"
  %".568" = xor i1 %"cmp.13", -1
  %".569" = and i1 %"cmp.13", %".567"
  %".570" = and i1 %".568", %".567"
  store i1 %".569", ptr %"P1"
  ; @!P1 BRA `(.L_x_20)
  %".573" = load i1, ptr %"P1"
  %".574" = icmp ne i1 %".573", 1
  br i1 %".574", label %".L_x_20", label %".L_x_16"
.L_x_16:
  ; IMAD R3, R21.reuse, R19, R10
  %".577" = load i32, ptr %"R21"
  %".578" = load i32, ptr %"R19"
  %".579" = load i32, ptr %"R10"
  %"imad_mul.33" = mul i32 %".577", %".578"
  %"imad_add.33" = add i32 %"imad_mul.33", %".579"
  store i32 %"imad_add.33", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"imad_mul.34" = mul i32 0, 0
  %"imad_add.34" = add i32 %"imad_mul.34", 4
  store i32 %"imad_add.34", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".584" = load i32, ptr %"R21"
  %".585" = load i32, ptr %"R3"
  %".586" = load i32, ptr %"R0"
  %"imad_mul.35" = mul i32 %".584", %".585"
  %"imad_add.35" = add i32 %"imad_mul.35", %".586"
  store i32 %"imad_add.35", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".589" = load i32, ptr %"R3"
  %".590" = load i32, ptr %"R2"
  %"imad_ext1.9" = zext i32 %".589" to i64
  %"imad_ext2.9" = zext i32 %".590" to i64
  %"imad_mul.36" = mul i64 %"imad_ext1.9", %"imad_ext2.9"
  %".591" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.36" = add i64 %"imad_mul.36", %".591"
  %".592" = and i64 %"imad_add.36", 18446744069414584320
  %".593" = lshr i64 %".592", 32
  %"trunc32.14" = trunc i64 %".593" to i32
  %"trunc32.15" = trunc i64 %"imad_add.36" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".597" = load i32, ptr %"R11"
  %".598" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".598" to i64
  %".599" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".599" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"inttoptr_bytes.7" = inttoptr i64 %"or.7" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  store i32 %".597", ptr addrspace(1) %"ptr_cast_for_access.7"
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

declare float @"llvm.fabs"(float %".1")

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
  %"imad_mul" = mul i32 %".16", %"nvvm_blockdim_x"
  %"imad_add" = add i32 %"imad_mul", %".17"
  store i32 %"imad_add", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, c[0x0][0x170], PT
  %".20" = load i32, ptr %"R4"
  %".21" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".20", %"Arg_2"
  %".22" = xor i1 %"cmp", -1
  %".23" = and i1 %"cmp", %".21"
  %".24" = and i1 %".22", %".21"
  store i1 %".23", ptr %"P0"
  ; @P0 EXIT
  %".27" = load i1, ptr %"P0"
  %".28" = icmp eq i1 %".27", 1
  br i1 %".28", label %".text._Z4reluPfS_i_conditionalExpr_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R4, R5, c[0x0][0x160]
  %".35" = load i32, ptr %"R4"
  %".36" = load i32, ptr %"R5"
  %"imad_ext1" = zext i32 %".35" to i64
  %"imad_ext2" = zext i32 %".36" to i64
  %"imad_mul.1" = mul i64 %"imad_ext1", %"imad_ext2"
  %".37" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.1" = add i64 %"imad_mul.1", %".37"
  %".38" = and i64 %"imad_add.1", 18446744069414584320
  %".39" = lshr i64 %".38", 32
  %"trunc32" = trunc i64 %".39" to i32
  %"trunc32.1" = trunc i64 %"imad_add.1" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".43" = load i32, ptr %"R2"
  %"zext" = zext i32 %".43" to i64
  %".44" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".44" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".45" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".46" = bitcast ptr %"R2" to ptr
  store float %".45", ptr %".46"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".49" = load i32, ptr %"R4"
  %".50" = load i32, ptr %"R5"
  %"imad_ext1.1" = zext i32 %".49" to i64
  %"imad_ext2.1" = zext i32 %".50" to i64
  %"imad_mul.2" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".51" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.2" = add i64 %"imad_mul.2", %".51"
  %".52" = and i64 %"imad_add.2", 18446744069414584320
  %".53" = lshr i64 %".52", 32
  %"trunc32.2" = trunc i64 %".53" to i32
  %"trunc32.3" = trunc i64 %"imad_add.2" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; FMNMX R7, RZ, R2, !PT
  %".57" = load float, ptr %"R2"
  %".58" = xor i1 1, -1
  %".59" = fcmp olt float              0x0, %".57"
  %".60" = fcmp ogt float              0x0, %".57"
  %"mnmx_min" = select  i1 %".59", float              0x0, float %".57"
  %"mnmx_max" = select  i1 %".60", float              0x0, float %".57"
  %"mnmx_final" = select  i1 %".58", float %"mnmx_min", float %"mnmx_max"
  %".61" = bitcast ptr %"R7" to ptr
  store float %"mnmx_final", ptr %".61"
  ; STG.E.SYS [R4], R7
  %".64" = load float, ptr %"R7"
  %".65" = load i32, ptr %"R4"
  %"zext.2" = zext i32 %".65" to i64
  %".66" = load i32, ptr %"R5"
  %"zext.3" = zext i32 %".66" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  store float %".64", ptr addrspace(1) %"ptr_cast_for_access.1"
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
  %"imad_mul" = mul i32 %".35", %"nvvm_blockdim_y"
  %"imad_add" = add i32 %"imad_mul", %".36"
  store i32 %"imad_add", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R3, UR5, PT
  %".39" = load i32, ptr %"R3"
  %".40" = load i32, ptr %"UR5"
  %".41" = load i1, ptr %"PT"
  %"cmp" = icmp sgt i32 %".39", %".40"
  %".42" = xor i1 %"cmp", -1
  %".43" = and i1 %"cmp", %".41"
  %".44" = and i1 %".42", %".41"
  store i1 %".43", ptr %"P0"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".47" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".48" = load i32, ptr %"R5"
  %"imad_mul.1" = mul i32 %".47", %"nvvm_blockdim_x"
  %"imad_add.1" = add i32 %"imad_mul.1", %".48"
  store i32 %"imad_add.1", ptr %"R2"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".51" = load i32, ptr %"R2"
  %".52" = load i32, ptr %"UR5"
  %".53" = load i1, ptr %"P0"
  %"cmp.1" = icmp sgt i32 %".51", %".52"
  %".54" = xor i1 %"cmp.1", -1
  %".55" = or i1 %"cmp.1", %".53"
  %".56" = or i1 %".54", %".53"
  store i1 %".55", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".59" = load i32, ptr %"R0"
  %".60" = load i1, ptr %"P0"
  %"cmp.2" = icmp sge i32 %".59", %"Arg_6"
  %".61" = xor i1 %"cmp.2", -1
  %".62" = or i1 %"cmp.2", %".60"
  %".63" = or i1 %".61", %".60"
  store i1 %".62", ptr %"P0"
  ; @P0 EXIT
  %".66" = load i1, ptr %"P0"
  %".67" = icmp eq i1 %".66", 1
  br i1 %".67", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
.text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0:
  ; EXIT
  br label %"ExitFunction"
.text._Z6conv2dPfS_S_iiii_split_0x00e0:
  ; MOV R4, 0x1
  store i32 1, ptr %"R4"
  ; IMAD.MOV.U32 R12, RZ, RZ, RZ
  %"imad_mul.2" = mul i32 0, 0
  %"imad_add.2" = add i32 %"imad_mul.2", 0
  store i32 %"imad_add.2", ptr %"R12"
  ; ISETP.LE.AND P0, PT, R4, c[0x0][0x17c], PT
  %".76" = load i32, ptr %"R4"
  %".77" = load i1, ptr %"PT"
  %"cmp.3" = icmp sle i32 %".76", %"Arg_4"
  %".78" = xor i1 %"cmp.3", -1
  %".79" = and i1 %"cmp.3", %".77"
  %".80" = and i1 %".78", %".77"
  store i1 %".79", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".83" = load i32, ptr %"R4"
  %".84" = load i1, ptr %"P0"
  %"cmp.4" = icmp sgt i32 %".83", %"Arg_5"
  %".85" = xor i1 %"cmp.4", -1
  %".86" = or i1 %"cmp.4", %".84"
  %".87" = or i1 %".85", %".84"
  store i1 %".86", ptr %"P0"
  ; @P0 BRA `(.L_x_23)
  %".90" = load i1, ptr %"P0"
  %".91" = icmp eq i1 %".90", 1
  br i1 %".91", label %".L_x_23", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
.text._Z6conv2dPfS_S_iiii_split_0x0130:
  ; IMAD.MOV.U32 R4, RZ, RZ, c[0x0][0x17c]
  %"imad_mul.3" = mul i32 0, 0
  %"imad_add.3" = add i32 %"imad_mul.3", %"Arg_4"
  store i32 %"imad_add.3", ptr %"R4"
  ; MOV R5, 0x1
  store i32 1, ptr %"R5"
  ; IMAD.MOV.U32 R10, RZ, RZ, RZ
  %"imad_mul.4" = mul i32 0, 0
  %"imad_add.4" = add i32 %"imad_mul.4", 0
  store i32 %"imad_add.4", ptr %"R10"
  ; MOV R12, RZ
  %".100" = load float, ptr %"RZ"
  %".101" = bitcast ptr %"R12" to ptr
  store float %".100", ptr %".101"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".104" = load i32, ptr %"R5"
  %".105" = sub i32 0, %".104"
  %".106" = add i32 %".105", %"Arg_4"
  %".107" = add i32 %".106", 0
  store i32 %".107", ptr %"R5"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".110" = load i32, ptr %"R4"
  %".111" = xor i1 1, -1
  %".112" = and i32 %".110", 3
  store i32 %".112", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".115" = load i32, ptr %"R5"
  %".116" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".115", 3
  %".117" = xor i1 %"cmp.5", -1
  %".118" = and i1 %"cmp.5", %".116"
  %".119" = and i1 %".117", %".116"
  store i1 %".118", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".122" = load i32, ptr %"R4"
  %".123" = sub i32 0, %"Arg_4"
  %".124" = add i32 %".122", %".123"
  %".125" = add i32 %".124", 0
  store i32 %".125", ptr %"R26"
  br label %".L_x_28"
.L_x_28:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".129" = load i32, ptr %"R10"
  %".130" = load i32, ptr %"R3"
  %"imad_mul.5" = mul i32 %".129", %"Arg_3"
  %"imad_add.5" = add i32 %"imad_mul.5", %".130"
  store i32 %"imad_add.5", ptr %"R11"
  ; MOV R8, RZ
  %".133" = load i32, ptr %"RZ"
  store i32 %".133", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".136" = load i32, ptr %"R0"
  %".137" = load i32, ptr %"R10"
  %"imad_mul.6" = mul i32 %".136", %"Arg_5"
  %"imad_add.6" = add i32 %"imad_mul.6", %".137"
  store i32 %"imad_add.6", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".140" = load i32, ptr %"R10"
  %".141" = add i32 %".140", 1
  %".142" = add i32 %".141", 0
  store i32 %".142", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".145" = load i32, ptr %"R11"
  %".146" = load i32, ptr %"R2"
  %"imad_mul.7" = mul i32 %".145", %"Arg_3"
  %"imad_add.7" = add i32 %"imad_mul.7", %".146"
  store i32 %"imad_add.7", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".149" = load i32, ptr %"R10"
  %".150" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".149", %"Arg_5"
  %".151" = xor i1 %"cmp.6", -1
  %".152" = and i1 %"cmp.6", %".150"
  %".153" = and i1 %".151", %".150"
  store i1 %".152", ptr %"P1"
  br label %".L_x_27"
.L_x_27:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".157" = load i32, ptr %"R9"
  %".158" = load i32, ptr %"R8"
  %"imad_mul.8" = mul i32 %".157", %"Arg_4"
  %"imad_add.8" = add i32 %"imad_mul.8", %".158"
  store i32 %"imad_add.8", ptr %"R6"
  ; UMOV UR4, URZ
  %".161" = load i32, ptr %"URZ"
  store i32 %".161", ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".164" = load i32, ptr %"R4"
  %".165" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".164", 0
  %".166" = xor i1 %"cmp.7", -1
  %".167" = and i1 %"cmp.7", %".165"
  %".168" = and i1 %".166", %".165"
  store i1 %".167", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".171" = load i32, ptr %"R6"
  %"imad_mul.9" = mul i32 %".171", %"Arg_4"
  %"imad_add.9" = add i32 %"imad_mul.9", 0
  store i32 %"imad_add.9", ptr %"R29"
  ; @!P0 BRA `(.L_x_24)
  %".174" = load i1, ptr %"P0"
  %".175" = icmp ne i1 %".174", 1
  br i1 %".175", label %".L_x_24", label %".L_x_27_split_0x0260"
.L_x_27_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".180" = load i32, ptr %"R5"
  %".181" = load i32, ptr %"R8"
  %"imad_mul.10" = mul i32 %".180", 1
  %"imad_add.10" = add i32 %"imad_mul.10", %".181"
  store i32 %"imad_add.10", ptr %"R13"
  ; UMOV UR4, URZ
  %".184" = load i32, ptr %"URZ"
  store i32 %".184", ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".187" = load i32, ptr %"R29"
  %".188" = load i32, ptr %"R24"
  %"imad_ext1" = zext i32 %".187" to i64
  %"imad_ext2" = zext i32 %".188" to i64
  %"imad_mul.11" = mul i64 %"imad_ext1", %"imad_ext2"
  %".189" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %".189"
  %".190" = and i64 %"imad_add.11", 18446744069414584320
  %".191" = lshr i64 %".190", 32
  %"trunc32" = trunc i64 %".191" to i32
  %"trunc32.1" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.1", ptr %"R6"
  store i32 %"trunc32", ptr %"R7"
  ; MOV R23, R6
  %".195" = load i32, ptr %"R6"
  store i32 %".195", ptr %"R23"
  br label %".L_x_25"
.L_x_25:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".199" = load i32, ptr %"R13"
  %".200" = load i32, ptr %"R24"
  %"imad_ext1.1" = zext i32 %".199" to i64
  %"imad_ext2.1" = zext i32 %".200" to i64
  %"imad_mul.12" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".201" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.12" = add i64 %"imad_mul.12", %".201"
  %".202" = and i64 %"imad_add.12", 18446744069414584320
  %".203" = lshr i64 %".202", 32
  %"trunc32.2" = trunc i64 %".203" to i32
  %"trunc32.3" = trunc i64 %"imad_add.12" to i32
  store i32 %"trunc32.3", ptr %"R14"
  store i32 %"trunc32.2", ptr %"R15"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".209" = load i32, ptr %"R23"
  %"imad_mul.13" = mul i32 0, 0
  %"imad_add.13" = add i32 %"imad_mul.13", %".209"
  store i32 %"imad_add.13", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".212" = load i32, ptr %"R31"
  %".213" = load i32, ptr %"R14"
  %"imad_ext1.2" = zext i32 %".212" to i64
  %"imad_ext2.2" = zext i32 4 to i64
  %"imad_mul.14" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %"imad_ext3" = zext i32 %".213" to i64
  %"imad_add.14" = add i64 %"imad_mul.14", %"imad_ext3"
  %".214" = and i64 %"imad_add.14", 18446744069414584320
  %".215" = lshr i64 %".214", 32
  %"trunc32.4" = trunc i64 %".215" to i32
  %"trunc32.5" = trunc i64 %"imad_add.14" to i32
  store i32 %"trunc32.5", ptr %"R16"
  store i32 %"trunc32.4", ptr %"R17"
  ; LDG.E.SYS R14, [R14]
  %".219" = load i32, ptr %"R14"
  %"zext" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R15"
  %"zext.1" = zext i32 %".220" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".221" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".222" = bitcast ptr %"R14" to ptr
  store float %".221", ptr %".222"
  ; LDG.E.SYS R23, [R6]
  %".225" = load i32, ptr %"R6"
  %"zext.2" = zext i32 %".225" to i64
  %".226" = load i32, ptr %"R7"
  %"zext.3" = zext i32 %".226" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".227" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".228" = bitcast ptr %"R23" to ptr
  store float %".227", ptr %".228"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".231" = load i32, ptr %"R31"
  %".232" = load i32, ptr %"R16"
  %"imad_ext1.3" = zext i32 %".231" to i64
  %"imad_ext2.3" = zext i32 4 to i64
  %"imad_mul.15" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %"imad_ext3.1" = zext i32 %".232" to i64
  %"imad_add.15" = add i64 %"imad_mul.15", %"imad_ext3.1"
  %".233" = and i64 %"imad_add.15", 18446744069414584320
  %".234" = lshr i64 %".233", 32
  %"trunc32.6" = trunc i64 %".234" to i32
  %"trunc32.7" = trunc i64 %"imad_add.15" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".238" = load i32, ptr %"R16"
  %"zext.4" = zext i32 %".238" to i64
  %".239" = load i32, ptr %"R17"
  %"zext.5" = zext i32 %".239" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".240" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".241" = bitcast ptr %"R16" to ptr
  store float %".240", ptr %".241"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".244" = load i32, ptr %"R31"
  %".245" = load i32, ptr %"R18"
  %"imad_ext1.4" = zext i32 %".244" to i64
  %"imad_ext2.4" = zext i32 4 to i64
  %"imad_mul.16" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3.2" = zext i32 %".245" to i64
  %"imad_add.16" = add i64 %"imad_mul.16", %"imad_ext3.2"
  %".246" = and i64 %"imad_add.16", 18446744069414584320
  %".247" = lshr i64 %".246", 32
  %"trunc32.8" = trunc i64 %".247" to i32
  %"trunc32.9" = trunc i64 %"imad_add.16" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".251" = load i32, ptr %"R6"
  %"zext.6" = zext i32 %".251" to i64
  %".252" = load i32, ptr %"R7"
  %"zext.7" = zext i32 %".252" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".253" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".254" = bitcast ptr %"R22" to ptr
  store float %".253", ptr %".254"
  ; LDG.E.SYS R18, [R18]
  %".257" = load i32, ptr %"R18"
  %"zext.8" = zext i32 %".257" to i64
  %".258" = load i32, ptr %"R19"
  %"zext.9" = zext i32 %".258" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"inttoptr_bytes.4" = inttoptr i64 %"or.4" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".259" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".260" = bitcast ptr %"R18" to ptr
  store float %".259", ptr %".260"
  ; LDG.E.SYS R25, [R6+0x8]
  %".263" = load i32, ptr %"R6"
  %"zext.10" = zext i32 %".263" to i64
  %".264" = load i32, ptr %"R7"
  %"zext.11" = zext i32 %".264" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"ptr_plus_imm.1" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".265" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".266" = bitcast ptr %"R25" to ptr
  store float %".265", ptr %".266"
  ; LDG.E.SYS R20, [R20]
  %".269" = load i32, ptr %"R20"
  %"zext.12" = zext i32 %".269" to i64
  %".270" = load i32, ptr %"R21"
  %"zext.13" = zext i32 %".270" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"inttoptr_bytes.6" = inttoptr i64 %"or.6" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".271" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".272" = bitcast ptr %"R20" to ptr
  store float %".271", ptr %".272"
  ; LDG.E.SYS R27, [R6+0xc]
  %".275" = load i32, ptr %"R6"
  %"zext.14" = zext i32 %".275" to i64
  %".276" = load i32, ptr %"R7"
  %"zext.15" = zext i32 %".276" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.2" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".277" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".278" = bitcast ptr %"R27" to ptr
  store float %".277", ptr %".278"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".281" = load i32, ptr %"UR4"
  %".282" = add i32 %".281", 4
  %".283" = add i32 %".282", 0
  store i32 %".283", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".286" = load i32, ptr %"R31"
  %".287" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".286", 2
  %"add" = add i32 %"shl.8", %".287"
  store i32 %"add", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".290" = load float, ptr %"R23"
  %".291" = load float, ptr %"R14"
  %".292" = load float, ptr %"R12"
  %"fmul" = fmul float %".290", %".291"
  %"fadd" = fadd float %"fmul", %".292"
  %".293" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".293"
  ; IADD3 R12, R26, UR4, RZ
  %".296" = load i32, ptr %"R26"
  %".297" = load i32, ptr %"UR4"
  %".298" = add i32 %".296", %".297"
  %".299" = add i32 %".298", 0
  store i32 %".299", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".302" = load i32, ptr %"R12"
  %".303" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".302", 0
  %".304" = xor i1 %"cmp.8", -1
  %".305" = and i1 %"cmp.8", %".303"
  %".306" = and i1 %".304", %".303"
  store i1 %".305", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".309" = load float, ptr %"R22"
  %".310" = load float, ptr %"R16"
  %".311" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".309", %".310"
  %"fadd.1" = fadd float %"fmul.1", %".311"
  %".312" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".312"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".315" = load i32, ptr %"R6"
  %".316" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".315", i32 16)
  %".317" = extractvalue {i32, i1} %".316", 0
  %".318" = extractvalue {i32, i1} %".316", 1
  %".319" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".317", i32 0)
  %".320" = extractvalue {i32, i1} %".319", 0
  %".321" = extractvalue {i32, i1} %".319", 1
  %".322" = or i1 %".318", %".321"
  store i32 %".320", ptr %"R23"
  store i1 %".322", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".326" = load float, ptr %"R25"
  %".327" = load float, ptr %"R18"
  %".328" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".326", %".327"
  %"fadd.2" = fadd float %"fmul.2", %".328"
  %".329" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".329"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".332" = load i32, ptr %"R7"
  %".333" = load i1, ptr %"P4"
  %".334" = xor i1 1, -1
  %".335" = zext i1 %".333" to i32
  %".336" = zext i1 %".334" to i32
  %"add.1" = add i32 0, %".332"
  %"add.2" = add i32 %"add.1", 0
  %"add.3" = add i32 %"add.2", %".335"
  %"add.4" = add i32 %"add.3", %".336"
  store i32 %"add.4", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".339" = load float, ptr %"R27"
  %".340" = load float, ptr %"R20"
  %".341" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".339", %".340"
  %"fadd.3" = fadd float %"fmul.3", %".341"
  %".342" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".342"
  ; @P2 BRA `(.L_x_25)
  %".345" = load i1, ptr %"P2"
  %".346" = icmp eq i1 %".345", 1
  br i1 %".346", label %".L_x_25", label %".L_x_24"
.L_x_24:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".349" = load i32, ptr %"R2"
  %".350" = load i32, ptr %"R8"
  %"imad_mul.17" = mul i32 %".349", 1
  %"imad_add.17" = add i32 %"imad_mul.17", %".350"
  store i32 %"imad_add.17", ptr %"R14"
  ; @!P3 BRA `(.L_x_26)
  %".353" = load i1, ptr %"P3"
  %".354" = icmp ne i1 %".353", 1
  br i1 %".354", label %".L_x_26", label %".L_x_24_split_0x0460"
.L_x_24_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".357" = load i32, ptr %"R11"
  %".358" = load i32, ptr %"UR4"
  %".359" = add i32 %".357", %".358"
  %".360" = add i32 %".359", 0
  store i32 %".360", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".363" = load i32, ptr %"R29"
  %".364" = load i32, ptr %"UR4"
  %".365" = add i32 %".363", %".364"
  %".366" = add i32 %".365", 0
  store i32 %".366", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".371" = load i32, ptr %"R15"
  %".372" = load i32, ptr %"R14"
  %"imad_mul.18" = mul i32 %".371", %"Arg_3"
  %"imad_add.18" = add i32 %"imad_mul.18", %".372"
  store i32 %"imad_add.18", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".375" = load i32, ptr %"R16"
  %".376" = load i32, ptr %"R19"
  %"imad_ext1.5" = zext i32 %".375" to i64
  %"imad_ext2.5" = zext i32 %".376" to i64
  %"imad_mul.19" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %".377" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.19" = add i64 %"imad_mul.19", %".377"
  %".378" = and i64 %"imad_add.19", 18446744069414584320
  %".379" = lshr i64 %".378", 32
  %"trunc32.10" = trunc i64 %".379" to i32
  %"trunc32.11" = trunc i64 %"imad_add.19" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".383" = load i32, ptr %"R6"
  %".384" = load i32, ptr %"R19"
  %"imad_ext1.6" = zext i32 %".383" to i64
  %"imad_ext2.6" = zext i32 %".384" to i64
  %"imad_mul.20" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".385" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.20" = add i64 %"imad_mul.20", %".385"
  %".386" = and i64 %"imad_add.20", 18446744069414584320
  %".387" = lshr i64 %".386", 32
  %"trunc32.12" = trunc i64 %".387" to i32
  %"trunc32.13" = trunc i64 %"imad_add.20" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".391" = load i32, ptr %"R16"
  %"zext.16" = zext i32 %".391" to i64
  %".392" = load i32, ptr %"R17"
  %"zext.17" = zext i32 %".392" to i64
  %"shl.9" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.9", %"zext.16"
  %"inttoptr_bytes.8" = inttoptr i64 %"or.8" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".393" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".394" = bitcast ptr %"R13" to ptr
  store float %".393", ptr %".394"
  ; LDG.E.SYS R6, [R6]
  %".397" = load i32, ptr %"R6"
  %"zext.18" = zext i32 %".397" to i64
  %".398" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".398" to i64
  %"shl.10" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.10", %"zext.18"
  %"inttoptr_bytes.9" = inttoptr i64 %"or.9" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".399" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".400" = bitcast ptr %"R6" to ptr
  store float %".399", ptr %".400"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".403" = load i32, ptr %"R4"
  %".404" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".403", 1
  %".405" = xor i1 %"cmp.9", -1
  %".406" = and i1 %"cmp.9", %".404"
  %".407" = and i1 %".405", %".404"
  store i1 %".406", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".410" = load float, ptr %"R13"
  %".411" = load float, ptr %"R6"
  %".412" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".410", %".411"
  %"fadd.4" = fadd float %"fmul.4", %".412"
  %".413" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".413"
  ; @!P2 BRA `(.L_x_26)
  %".416" = load i1, ptr %"P2"
  %".417" = icmp ne i1 %".416", 1
  br i1 %".417", label %".L_x_26", label %".L_x_24_split_0x0510"
.L_x_24_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".420" = load i32, ptr %"R4"
  %".421" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".420", 2
  %".422" = xor i1 %"cmp.10", -1
  %".423" = and i1 %"cmp.10", %".421"
  %".424" = and i1 %".422", %".421"
  store i1 %".423", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".427" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".427" to i64
  %".428" = load i32, ptr %"R17"
  %"zext.21" = zext i32 %".428" to i64
  %"shl.11" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.11", %"zext.20"
  %"ptr_plus_imm.3" = add i64 %"or.10", 4
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".429" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".430" = bitcast ptr %"R13" to ptr
  store float %".429", ptr %".430"
  ; IADD3 R6, R15, 0x1, RZ
  %".433" = load i32, ptr %"R15"
  %".434" = add i32 %".433", 1
  %".435" = add i32 %".434", 0
  store i32 %".435", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".438" = load i32, ptr %"R6"
  %".439" = load i32, ptr %"R14"
  %"imad_mul.21" = mul i32 %".438", %"Arg_3"
  %"imad_add.21" = add i32 %"imad_mul.21", %".439"
  store i32 %"imad_add.21", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".442" = load i1, ptr %"P2"
  %".443" = icmp eq i1 %".442", 1
  br i1 %".443", label %".L_x_24_split_0x0510_conditionalExpr_0x0550", label %".L_x_24_split_0x0560"
.L_x_24_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".446" = load i32, ptr %"R15"
  %".447" = add i32 %".446", 2
  %".448" = add i32 %".447", 0
  store i32 %".448", ptr %"R7"
  ; BRA `(.L_x_24_split_0x0560)
  br label %".L_x_24_split_0x0560"
.L_x_24_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".453" = load i1, ptr %"P2"
  %".454" = icmp eq i1 %".453", 1
  br i1 %".454", label %".L_x_24_split_0x0560_conditionalExpr_0x0560", label %".L_x_24_split_0x0570"
.L_x_24_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".457" = load i32, ptr %"R7"
  %".458" = load i32, ptr %"R14"
  %"imad_mul.22" = mul i32 %".457", %"Arg_3"
  %"imad_add.22" = add i32 %"imad_mul.22", %".458"
  store i32 %"imad_add.22", ptr %"R14"
  ; BRA `(.L_x_24_split_0x0570)
  br label %".L_x_24_split_0x0570"
.L_x_24_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".463" = load i32, ptr %"R6"
  %".464" = load i32, ptr %"R19"
  %"imad_ext1.7" = zext i32 %".463" to i64
  %"imad_ext2.7" = zext i32 %".464" to i64
  %"imad_mul.23" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".465" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.23" = add i64 %"imad_mul.23", %".465"
  %".466" = and i64 %"imad_add.23", 18446744069414584320
  %".467" = lshr i64 %".466", 32
  %"trunc32.14" = trunc i64 %".467" to i32
  %"trunc32.15" = trunc i64 %"imad_add.23" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".471" = load i1, ptr %"P2"
  %".472" = icmp eq i1 %".471", 1
  br i1 %".472", label %".L_x_24_split_0x0570_conditionalExpr_0x0580", label %".L_x_24_split_0x0590"
.L_x_24_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".475" = load i32, ptr %"R14"
  %".476" = load i32, ptr %"R19"
  %"imad_ext1.8" = zext i32 %".475" to i64
  %"imad_ext2.8" = zext i32 %".476" to i64
  %"imad_mul.24" = mul i64 %"imad_ext1.8", %"imad_ext2.8"
  %".477" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.24" = add i64 %"imad_mul.24", %".477"
  %".478" = and i64 %"imad_add.24", 18446744069414584320
  %".479" = lshr i64 %".478", 32
  %"trunc32.16" = trunc i64 %".479" to i32
  %"trunc32.17" = trunc i64 %"imad_add.24" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_24_split_0x0590)
  br label %".L_x_24_split_0x0590"
.L_x_24_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".485" = load i1, ptr %"P2"
  %".486" = icmp eq i1 %".485", 1
  br i1 %".486", label %".L_x_24_split_0x0590_conditionalExpr_0x0590", label %".L_x_24_split_0x05a0"
.L_x_24_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".489" = load i32, ptr %"R16"
  %"zext.22" = zext i32 %".489" to i64
  %".490" = load i32, ptr %"R17"
  %"zext.23" = zext i32 %".490" to i64
  %"shl.12" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.12", %"zext.22"
  %"ptr_plus_imm.4" = add i64 %"or.11", 8
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".491" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".492" = bitcast ptr %"R19" to ptr
  store float %".491", ptr %".492"
  ; BRA `(.L_x_24_split_0x05a0)
  br label %".L_x_24_split_0x05a0"
.L_x_24_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".497" = load i32, ptr %"R6"
  %"zext.24" = zext i32 %".497" to i64
  %".498" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".498" to i64
  %"shl.13" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.13", %"zext.24"
  %"inttoptr_bytes.12" = inttoptr i64 %"or.12" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".499" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".500" = bitcast ptr %"R6" to ptr
  store float %".499", ptr %".500"
  ; @P2 LDG.E.SYS R14, [R14]
  %".503" = load i1, ptr %"P2"
  %".504" = icmp eq i1 %".503", 1
  br i1 %".504", label %".L_x_24_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_24_split_0x05c0"
.L_x_24_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".507" = load i32, ptr %"R14"
  %"zext.26" = zext i32 %".507" to i64
  %".508" = load i32, ptr %"R15"
  %"zext.27" = zext i32 %".508" to i64
  %"shl.14" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.14", %"zext.26"
  %"inttoptr_bytes.13" = inttoptr i64 %"or.13" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".509" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".510" = bitcast ptr %"R14" to ptr
  store float %".509", ptr %".510"
  ; BRA `(.L_x_24_split_0x05c0)
  br label %".L_x_24_split_0x05c0"
.L_x_24_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".515" = load float, ptr %"R13"
  %".516" = load float, ptr %"R6"
  %".517" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".515", %".516"
  %"fadd.5" = fadd float %"fmul.5", %".517"
  %".518" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".518"
  ; @P2 FFMA R12, R19, R14, R12
  %".521" = load i1, ptr %"P2"
  %".522" = icmp eq i1 %".521", 1
  br i1 %".522", label %".L_x_24_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_26"
.L_x_24_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".525" = load float, ptr %"R19"
  %".526" = load float, ptr %"R14"
  %".527" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".525", %".526"
  %"fadd.6" = fadd float %"fmul.6", %".527"
  %".528" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".528"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; IADD3 R8, R8, 0x1, RZ
  %".533" = load i32, ptr %"R8"
  %".534" = add i32 %".533", 1
  %".535" = add i32 %".534", 0
  store i32 %".535", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".538" = load i32, ptr %"R8"
  %".539" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".538", %"Arg_4"
  %".540" = xor i1 %"cmp.11", -1
  %".541" = and i1 %"cmp.11", %".539"
  %".542" = and i1 %".540", %".539"
  store i1 %".541", ptr %"P2"
  ; @!P2 BRA `(.L_x_27)
  %".545" = load i1, ptr %"P2"
  %".546" = icmp ne i1 %".545", 1
  br i1 %".546", label %".L_x_27", label %".L_x_26_split_0x0610"
.L_x_26_split_0x0610:
  ; @!P1 BRA `(.L_x_28)
  %".549" = load i1, ptr %"P1"
  %".550" = icmp ne i1 %".549", 1
  br i1 %".550", label %".L_x_28", label %".L_x_23"
.L_x_23:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".553" = load i32, ptr %"UR5"
  %".554" = add i32 %".553", 1
  %".555" = add i32 %".554", 0
  store i32 %".555", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".558" = load i32, ptr %"R0"
  %".559" = load i32, ptr %"UR4"
  %".560" = load i32, ptr %"R3"
  %"imad_mul.25" = mul i32 %".558", %".559"
  %"imad_add.25" = add i32 %"imad_mul.25", %".560"
  store i32 %"imad_add.25", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".565" = load i32, ptr %"R3"
  %".566" = load i32, ptr %"UR4"
  %".567" = load i32, ptr %"R2"
  %"imad_mul.26" = mul i32 %".565", %".566"
  %"imad_add.26" = add i32 %"imad_mul.26", %".567"
  store i32 %"imad_add.26", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".570" = load i32, ptr %"R3"
  %".571" = load i32, ptr %"R0"
  %"imad_ext1.9" = zext i32 %".570" to i64
  %"imad_ext2.9" = zext i32 %".571" to i64
  %"imad_mul.27" = mul i64 %"imad_ext1.9", %"imad_ext2.9"
  %".572" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.27" = add i64 %"imad_mul.27", %".572"
  %".573" = and i64 %"imad_add.27", 18446744069414584320
  %".574" = lshr i64 %".573", 32
  %"trunc32.18" = trunc i64 %".574" to i32
  %"trunc32.19" = trunc i64 %"imad_add.27" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".578" = load i32, ptr %"R12"
  %".579" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".579" to i64
  %".580" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".580" to i64
  %"shl.15" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.15", %"zext.28"
  %"inttoptr_bytes.14" = inttoptr i64 %"or.14" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  store i32 %".578", ptr addrspace(1) %"ptr_cast_for_access.14"
  ; EXIT
  br label %"ExitFunction"
.L_x_29:
  ; BRA `(.L_x_29)
  br label %".L_x_29"
ExitFunction:
  ret void
}

