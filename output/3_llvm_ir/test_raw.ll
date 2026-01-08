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
  %".71" = bitcast ptr %"R7" to ptr
  store float              0x0, ptr %".71"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".74" = load i32, ptr %"R4"
  %".75" = xor i1 1, -1
  %".76" = and i32 %".74", 3
  store i32 %".76", ptr %"R4"
  ; @!P0 BRA `(.L_x_1)
  %".79" = load i1, ptr %"P0"
  %".80" = icmp ne i1 %".79", 1
  br i1 %".80", label %".L_x_1", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x0110:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".83" = load i32, ptr %"R4"
  %".84" = sub i32 0, %".83"
  %".85" = add i32 %".84", %"Arg_4"
  %".86" = add i32 %".85", 0
  store i32 %".86", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".89" = load i32, ptr %"R0"
  %"imad_mul.3" = mul i32 %".89", %"Arg_4"
  %"imad_add.3" = add i32 %"imad_mul.3", 0
  store i32 %"imad_add.3", ptr %"R2"
  ; MOV R3, 0x4
  store i32 4, ptr %"R3"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".94" = ptrtoint ptr %"Arg_0" to i64
  %".95" = and i64 %".94", 18446744069414584320
  %".96" = lshr i64 %".95", 32
  %"trunc32" = trunc i64 %".96" to i32
  %"trunc32.1" = trunc i64 %".94" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; ISETP.GT.AND P0, PT, R6, 0x1, PT
  %".100" = load i32, ptr %"R6"
  %".101" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".100", 1
  %".102" = xor i1 %"cmp.3", -1
  %".103" = and i1 %"cmp.3", %".101"
  %".104" = and i1 %".102", %".101"
  store i1 %".103", ptr %"P0"
  ; IMAD.MOV.U32 R5, RZ, RZ, RZ
  %"imad_mul.4" = mul i32 0, 0
  %"imad_add.4" = add i32 %"imad_mul.4", 0
  store i32 %"imad_add.4", ptr %"R5"
  ; MOV R7, RZ
  %".109" = bitcast ptr %"R7" to ptr
  store float              0x0, ptr %".109"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".112" = load i32, ptr %"R2"
  %".113" = load i32, ptr %"R3"
  %"imad_ext1" = zext i32 %".112" to i64
  %"imad_ext2" = zext i32 %".113" to i64
  %"imad_mul.5" = mul i64 %"imad_ext1", %"imad_ext2"
  %".114" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.5" = add i64 %"imad_mul.5", %".114"
  %".115" = and i64 %"imad_add.5", 18446744069414584320
  %".116" = lshr i64 %".115", 32
  %"trunc32.2" = trunc i64 %".116" to i32
  %"trunc32.3" = trunc i64 %"imad_add.5" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; @!P0 BRA `(.L_x_2)
  %".120" = load i1, ptr %"P0"
  %".121" = icmp ne i1 %".120", 1
  br i1 %".121", label %".L_x_2", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01a0:
  ; IADD3 R8, R6, -0x1, RZ
  %".124" = load i32, ptr %"R6"
  %".125" = add i32 %".124", -1
  %".126" = add i32 %".125", 0
  store i32 %".126", ptr %"R8"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".129" = and i1 1, 1
  %".130" = and i1 %".129", 1
  ; ISETP.GT.AND P1, PT, R8, 0xc, PT
  %".132" = load i32, ptr %"R8"
  %".133" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".132", 12
  %".134" = xor i1 %"cmp.4", -1
  %".135" = and i1 %"cmp.4", %".133"
  %".136" = and i1 %".134", %".133"
  store i1 %".135", ptr %"P1"
  ; @!P1 BRA `(.L_x_3)
  %".139" = load i1, ptr %"P1"
  %".140" = icmp ne i1 %".139", 1
  br i1 %".140", label %".L_x_3", label %".text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0"
.text._Z15fc_layer_simplePfS_S_S_ii_split_0x01e0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".143" = xor i1 1, 1
  %".144" = and i1 %".143", 1
  %".145" = and i1 %".144", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".148" = load i32, ptr %"R2"
  %"zext" = zext i32 %".148" to i64
  %".149" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".149" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".150" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".151" = bitcast ptr %"R8" to ptr
  store float %".150", ptr %".151"
  ; LDG.E.SYS R9, [UR4]
  %".154" = load i32, ptr %"UR4"
  %"zext.2" = zext i32 %".154" to i64
  %".155" = load i32, ptr %"UR5"
  %"zext.3" = zext i32 %".155" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".156" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".157" = bitcast ptr %"R9" to ptr
  store float %".156", ptr %".157"
  ; LDG.E.SYS R11, [R2+0x4]
  %".160" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".160" to i64
  %".161" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".161" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".162" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".163" = bitcast ptr %"R11" to ptr
  store float %".162", ptr %".163"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".166" = load i32, ptr %"UR4"
  %"zext.6" = zext i32 %".166" to i64
  %".167" = load i32, ptr %"UR5"
  %"zext.7" = zext i32 %".167" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm.1" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".168" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".169" = bitcast ptr %"R10" to ptr
  store float %".168", ptr %".169"
  ; LDG.E.SYS R13, [R2+0x8]
  %".172" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".172" to i64
  %".173" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".173" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"ptr_plus_imm.2" = add i64 %"or.4", 8
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".174" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".175" = bitcast ptr %"R13" to ptr
  store float %".174", ptr %".175"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".178" = load i32, ptr %"UR4"
  %"zext.10" = zext i32 %".178" to i64
  %".179" = load i32, ptr %"UR5"
  %"zext.11" = zext i32 %".179" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"ptr_plus_imm.3" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".180" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".181" = bitcast ptr %"R12" to ptr
  store float %".180", ptr %".181"
  ; LDG.E.SYS R15, [R2+0xc]
  %".184" = load i32, ptr %"R2"
  %"zext.12" = zext i32 %".184" to i64
  %".185" = load i32, ptr %"R3"
  %"zext.13" = zext i32 %".185" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"ptr_plus_imm.4" = add i64 %"or.6", 12
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".186" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".187" = bitcast ptr %"R15" to ptr
  store float %".186", ptr %".187"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".190" = load i32, ptr %"UR4"
  %"zext.14" = zext i32 %".190" to i64
  %".191" = load i32, ptr %"UR5"
  %"zext.15" = zext i32 %".191" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.5" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".192" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".193" = bitcast ptr %"R14" to ptr
  store float %".192", ptr %".193"
  ; LDG.E.SYS R17, [R2+0x10]
  %".196" = load i32, ptr %"R2"
  %"zext.16" = zext i32 %".196" to i64
  %".197" = load i32, ptr %"R3"
  %"zext.17" = zext i32 %".197" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %"ptr_plus_imm.6" = add i64 %"or.8", 16
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".198" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".199" = bitcast ptr %"R17" to ptr
  store float %".198", ptr %".199"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".202" = load i32, ptr %"UR4"
  %"zext.18" = zext i32 %".202" to i64
  %".203" = load i32, ptr %"UR5"
  %"zext.19" = zext i32 %".203" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %"ptr_plus_imm.7" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".204" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".205" = bitcast ptr %"R16" to ptr
  store float %".204", ptr %".205"
  ; LDG.E.SYS R19, [R2+0x14]
  %".208" = load i32, ptr %"R2"
  %"zext.20" = zext i32 %".208" to i64
  %".209" = load i32, ptr %"R3"
  %"zext.21" = zext i32 %".209" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %"ptr_plus_imm.8" = add i64 %"or.10", 20
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".210" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".211" = bitcast ptr %"R19" to ptr
  store float %".210", ptr %".211"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".214" = load i32, ptr %"UR4"
  %"zext.22" = zext i32 %".214" to i64
  %".215" = load i32, ptr %"UR5"
  %"zext.23" = zext i32 %".215" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %"ptr_plus_imm.9" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".216" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".217" = bitcast ptr %"R18" to ptr
  store float %".216", ptr %".217"
  ; LDG.E.SYS R21, [R2+0x18]
  %".220" = load i32, ptr %"R2"
  %"zext.24" = zext i32 %".220" to i64
  %".221" = load i32, ptr %"R3"
  %"zext.25" = zext i32 %".221" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %"ptr_plus_imm.10" = add i64 %"or.12", 24
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".222" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".223" = bitcast ptr %"R21" to ptr
  store float %".222", ptr %".223"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".226" = load i32, ptr %"UR4"
  %"zext.26" = zext i32 %".226" to i64
  %".227" = load i32, ptr %"UR5"
  %"zext.27" = zext i32 %".227" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %"ptr_plus_imm.11" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".228" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".229" = bitcast ptr %"R20" to ptr
  store float %".228", ptr %".229"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".232" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".232" to i64
  %".233" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".233" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %"ptr_plus_imm.12" = add i64 %"or.14", 28
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".234" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".235" = bitcast ptr %"R23" to ptr
  store float %".234", ptr %".235"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".238" = load i32, ptr %"UR4"
  %"zext.30" = zext i32 %".238" to i64
  %".239" = load i32, ptr %"UR5"
  %"zext.31" = zext i32 %".239" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %"ptr_plus_imm.13" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".240" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".241" = bitcast ptr %"R22" to ptr
  store float %".240", ptr %".241"
  ; LDG.E.SYS R25, [R2+0x20]
  %".244" = load i32, ptr %"R2"
  %"zext.32" = zext i32 %".244" to i64
  %".245" = load i32, ptr %"R3"
  %"zext.33" = zext i32 %".245" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %"ptr_plus_imm.14" = add i64 %"or.16", 32
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".246" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".247" = bitcast ptr %"R25" to ptr
  store float %".246", ptr %".247"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".250" = load i32, ptr %"UR4"
  %"zext.34" = zext i32 %".250" to i64
  %".251" = load i32, ptr %"UR5"
  %"zext.35" = zext i32 %".251" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %"ptr_plus_imm.15" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".252" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".253" = bitcast ptr %"R24" to ptr
  store float %".252", ptr %".253"
  ; LDG.E.SYS R27, [R2+0x24]
  %".256" = load i32, ptr %"R2"
  %"zext.36" = zext i32 %".256" to i64
  %".257" = load i32, ptr %"R3"
  %"zext.37" = zext i32 %".257" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %"ptr_plus_imm.16" = add i64 %"or.18", 36
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".258" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".259" = bitcast ptr %"R27" to ptr
  store float %".258", ptr %".259"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".262" = load i32, ptr %"UR4"
  %"zext.38" = zext i32 %".262" to i64
  %".263" = load i32, ptr %"UR5"
  %"zext.39" = zext i32 %".263" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %"ptr_plus_imm.17" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".264" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".265" = bitcast ptr %"R26" to ptr
  store float %".264", ptr %".265"
  ; LDG.E.SYS R29, [R2+0x28]
  %".268" = load i32, ptr %"R2"
  %"zext.40" = zext i32 %".268" to i64
  %".269" = load i32, ptr %"R3"
  %"zext.41" = zext i32 %".269" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %"ptr_plus_imm.18" = add i64 %"or.20", 40
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".270" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".271" = bitcast ptr %"R29" to ptr
  store float %".270", ptr %".271"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".274" = load i32, ptr %"UR4"
  %"zext.42" = zext i32 %".274" to i64
  %".275" = load i32, ptr %"UR5"
  %"zext.43" = zext i32 %".275" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %"ptr_plus_imm.19" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".276" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".277" = bitcast ptr %"R28" to ptr
  store float %".276", ptr %".277"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".280" = load i32, ptr %"R2"
  %"zext.44" = zext i32 %".280" to i64
  %".281" = load i32, ptr %"R3"
  %"zext.45" = zext i32 %".281" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %"ptr_plus_imm.20" = add i64 %"or.22", 44
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".282" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".283" = bitcast ptr %"R31" to ptr
  store float %".282", ptr %".283"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".286" = load i32, ptr %"UR4"
  %"zext.46" = zext i32 %".286" to i64
  %".287" = load i32, ptr %"UR5"
  %"zext.47" = zext i32 %".287" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %"ptr_plus_imm.21" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".288" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".289" = bitcast ptr %"R30" to ptr
  store float %".288", ptr %".289"
  ; LDG.E.SYS R33, [R2+0x30]
  %".292" = load i32, ptr %"R2"
  %"zext.48" = zext i32 %".292" to i64
  %".293" = load i32, ptr %"R3"
  %"zext.49" = zext i32 %".293" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %"ptr_plus_imm.22" = add i64 %"or.24", 48
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".294" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".295" = bitcast ptr %"R33" to ptr
  store float %".294", ptr %".295"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".298" = load i32, ptr %"UR4"
  %"zext.50" = zext i32 %".298" to i64
  %".299" = load i32, ptr %"UR5"
  %"zext.51" = zext i32 %".299" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %"ptr_plus_imm.23" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".300" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".301" = bitcast ptr %"R32" to ptr
  store float %".300", ptr %".301"
  ; LDG.E.SYS R35, [R2+0x34]
  %".304" = load i32, ptr %"R2"
  %"zext.52" = zext i32 %".304" to i64
  %".305" = load i32, ptr %"R3"
  %"zext.53" = zext i32 %".305" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %"ptr_plus_imm.24" = add i64 %"or.26", 52
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".306" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".307" = bitcast ptr %"R35" to ptr
  store float %".306", ptr %".307"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".310" = load i32, ptr %"UR4"
  %"zext.54" = zext i32 %".310" to i64
  %".311" = load i32, ptr %"UR5"
  %"zext.55" = zext i32 %".311" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %"ptr_plus_imm.25" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".312" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".313" = bitcast ptr %"R34" to ptr
  store float %".312", ptr %".313"
  ; LDG.E.SYS R37, [R2+0x38]
  %".316" = load i32, ptr %"R2"
  %"zext.56" = zext i32 %".316" to i64
  %".317" = load i32, ptr %"R3"
  %"zext.57" = zext i32 %".317" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %"ptr_plus_imm.26" = add i64 %"or.28", 56
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".318" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".319" = bitcast ptr %"R37" to ptr
  store float %".318", ptr %".319"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".322" = load i32, ptr %"UR4"
  %"zext.58" = zext i32 %".322" to i64
  %".323" = load i32, ptr %"UR5"
  %"zext.59" = zext i32 %".323" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %"ptr_plus_imm.27" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".324" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".325" = bitcast ptr %"R36" to ptr
  store float %".324", ptr %".325"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".328" = load i32, ptr %"R2"
  %"zext.60" = zext i32 %".328" to i64
  %".329" = load i32, ptr %"R3"
  %"zext.61" = zext i32 %".329" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %"ptr_plus_imm.28" = add i64 %"or.30", 60
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".330" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".331" = bitcast ptr %"R39" to ptr
  store float %".330", ptr %".331"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".334" = load i32, ptr %"UR4"
  %"zext.62" = zext i32 %".334" to i64
  %".335" = load i32, ptr %"UR5"
  %"zext.63" = zext i32 %".335" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %"ptr_plus_imm.29" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".336" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".337" = bitcast ptr %"R38" to ptr
  store float %".336", ptr %".337"
  ; IADD3 R6, R6, -0x10, RZ
  %".340" = load i32, ptr %"R6"
  %".341" = add i32 %".340", -16
  %".342" = add i32 %".341", 0
  store i32 %".342", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".345" = load i32, ptr %"UR4"
  %".346" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".345", i32 64)
  %".347" = extractvalue {i32, i1} %".346", 0
  %".348" = extractvalue {i32, i1} %".346", 1
  %".349" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".347", i32 0)
  %".350" = extractvalue {i32, i1} %".349", 0
  %".351" = extractvalue {i32, i1} %".349", 1
  %".352" = or i1 %".348", %".351"
  store i32 %".350", ptr %"UR4"
  store i1 %".352", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".356" = load i32, ptr %"R5"
  %".357" = add i32 %".356", 16
  %".358" = add i32 %".357", 0
  store i32 %".358", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xd, PT
  %".361" = load i32, ptr %"R6"
  %".362" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".361", 13
  %".363" = xor i1 %"cmp.5", -1
  %".364" = and i1 %"cmp.5", %".362"
  %".365" = and i1 %".363", %".362"
  store i1 %".364", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".368" = load i32, ptr %"UR5"
  %".369" = load i1, ptr %"UP0"
  %".370" = xor i1 1, -1
  %".371" = zext i1 %".369" to i32
  %".372" = zext i1 %".370" to i32
  %"add" = add i32 0, %".368"
  %"add.1" = add i32 %"add", 0
  %"add.2" = add i32 %"add.1", %".371"
  %"add.3" = add i32 %"add.2", %".372"
  store i32 %"add.3", ptr %"UR5"
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
  ; IADD3.X R3, RZ, R3, RZ, P2, !PT
  %".386" = load i32, ptr %"R3"
  %".387" = load i1, ptr %"P2"
  %".388" = xor i1 1, -1
  %".389" = zext i1 %".387" to i32
  %".390" = zext i1 %".388" to i32
  %"add.4" = add i32 0, %".386"
  %"add.5" = add i32 %"add.4", 0
  %"add.6" = add i32 %"add.5", %".389"
  %"add.7" = add i32 %"add.6", %".390"
  store i32 %"add.7", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %"cast_ptr" = bitcast ptr %"R8" to ptr
  %".393" = load float, ptr %"cast_ptr"
  %"cast_ptr.1" = bitcast ptr %"R9" to ptr
  %".394" = load float, ptr %"cast_ptr.1"
  %"cast_ptr.2" = bitcast ptr %"R7" to ptr
  %".395" = load float, ptr %"cast_ptr.2"
  %"fmul" = fmul float %".393", %".394"
  %"fadd" = fadd float %"fmul", %".395"
  %".396" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".396"
  ; FFMA R8, R11, R10, R8
  %"cast_ptr.3" = bitcast ptr %"R11" to ptr
  %".399" = load float, ptr %"cast_ptr.3"
  %"cast_ptr.4" = bitcast ptr %"R10" to ptr
  %".400" = load float, ptr %"cast_ptr.4"
  %"cast_ptr.5" = bitcast ptr %"R8" to ptr
  %".401" = load float, ptr %"cast_ptr.5"
  %"fmul.1" = fmul float %".399", %".400"
  %"fadd.1" = fadd float %"fmul.1", %".401"
  %".402" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".402"
  ; FFMA R8, R13, R12, R8
  %"cast_ptr.6" = bitcast ptr %"R13" to ptr
  %".405" = load float, ptr %"cast_ptr.6"
  %"cast_ptr.7" = bitcast ptr %"R12" to ptr
  %".406" = load float, ptr %"cast_ptr.7"
  %"cast_ptr.8" = bitcast ptr %"R8" to ptr
  %".407" = load float, ptr %"cast_ptr.8"
  %"fmul.2" = fmul float %".405", %".406"
  %"fadd.2" = fadd float %"fmul.2", %".407"
  %".408" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".408"
  ; FFMA R8, R15, R14, R8
  %"cast_ptr.9" = bitcast ptr %"R15" to ptr
  %".411" = load float, ptr %"cast_ptr.9"
  %"cast_ptr.10" = bitcast ptr %"R14" to ptr
  %".412" = load float, ptr %"cast_ptr.10"
  %"cast_ptr.11" = bitcast ptr %"R8" to ptr
  %".413" = load float, ptr %"cast_ptr.11"
  %"fmul.3" = fmul float %".411", %".412"
  %"fadd.3" = fadd float %"fmul.3", %".413"
  %".414" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".414"
  ; FFMA R8, R17, R16, R8
  %"cast_ptr.12" = bitcast ptr %"R17" to ptr
  %".417" = load float, ptr %"cast_ptr.12"
  %"cast_ptr.13" = bitcast ptr %"R16" to ptr
  %".418" = load float, ptr %"cast_ptr.13"
  %"cast_ptr.14" = bitcast ptr %"R8" to ptr
  %".419" = load float, ptr %"cast_ptr.14"
  %"fmul.4" = fmul float %".417", %".418"
  %"fadd.4" = fadd float %"fmul.4", %".419"
  %".420" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".420"
  ; FFMA R8, R19, R18, R8
  %"cast_ptr.15" = bitcast ptr %"R19" to ptr
  %".423" = load float, ptr %"cast_ptr.15"
  %"cast_ptr.16" = bitcast ptr %"R18" to ptr
  %".424" = load float, ptr %"cast_ptr.16"
  %"cast_ptr.17" = bitcast ptr %"R8" to ptr
  %".425" = load float, ptr %"cast_ptr.17"
  %"fmul.5" = fmul float %".423", %".424"
  %"fadd.5" = fadd float %"fmul.5", %".425"
  %".426" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".426"
  ; FFMA R8, R21, R20, R8
  %"cast_ptr.18" = bitcast ptr %"R21" to ptr
  %".429" = load float, ptr %"cast_ptr.18"
  %"cast_ptr.19" = bitcast ptr %"R20" to ptr
  %".430" = load float, ptr %"cast_ptr.19"
  %"cast_ptr.20" = bitcast ptr %"R8" to ptr
  %".431" = load float, ptr %"cast_ptr.20"
  %"fmul.6" = fmul float %".429", %".430"
  %"fadd.6" = fadd float %"fmul.6", %".431"
  %".432" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".432"
  ; FFMA R8, R23, R22, R8
  %"cast_ptr.21" = bitcast ptr %"R23" to ptr
  %".435" = load float, ptr %"cast_ptr.21"
  %"cast_ptr.22" = bitcast ptr %"R22" to ptr
  %".436" = load float, ptr %"cast_ptr.22"
  %"cast_ptr.23" = bitcast ptr %"R8" to ptr
  %".437" = load float, ptr %"cast_ptr.23"
  %"fmul.7" = fmul float %".435", %".436"
  %"fadd.7" = fadd float %"fmul.7", %".437"
  %".438" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".438"
  ; FFMA R8, R25, R24, R8
  %"cast_ptr.24" = bitcast ptr %"R25" to ptr
  %".441" = load float, ptr %"cast_ptr.24"
  %"cast_ptr.25" = bitcast ptr %"R24" to ptr
  %".442" = load float, ptr %"cast_ptr.25"
  %"cast_ptr.26" = bitcast ptr %"R8" to ptr
  %".443" = load float, ptr %"cast_ptr.26"
  %"fmul.8" = fmul float %".441", %".442"
  %"fadd.8" = fadd float %"fmul.8", %".443"
  %".444" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".444"
  ; FFMA R8, R27, R26, R8
  %"cast_ptr.27" = bitcast ptr %"R27" to ptr
  %".447" = load float, ptr %"cast_ptr.27"
  %"cast_ptr.28" = bitcast ptr %"R26" to ptr
  %".448" = load float, ptr %"cast_ptr.28"
  %"cast_ptr.29" = bitcast ptr %"R8" to ptr
  %".449" = load float, ptr %"cast_ptr.29"
  %"fmul.9" = fmul float %".447", %".448"
  %"fadd.9" = fadd float %"fmul.9", %".449"
  %".450" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".450"
  ; FFMA R8, R29, R28, R8
  %"cast_ptr.30" = bitcast ptr %"R29" to ptr
  %".453" = load float, ptr %"cast_ptr.30"
  %"cast_ptr.31" = bitcast ptr %"R28" to ptr
  %".454" = load float, ptr %"cast_ptr.31"
  %"cast_ptr.32" = bitcast ptr %"R8" to ptr
  %".455" = load float, ptr %"cast_ptr.32"
  %"fmul.10" = fmul float %".453", %".454"
  %"fadd.10" = fadd float %"fmul.10", %".455"
  %".456" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".456"
  ; FFMA R8, R31, R30, R8
  %"cast_ptr.33" = bitcast ptr %"R31" to ptr
  %".459" = load float, ptr %"cast_ptr.33"
  %"cast_ptr.34" = bitcast ptr %"R30" to ptr
  %".460" = load float, ptr %"cast_ptr.34"
  %"cast_ptr.35" = bitcast ptr %"R8" to ptr
  %".461" = load float, ptr %"cast_ptr.35"
  %"fmul.11" = fmul float %".459", %".460"
  %"fadd.11" = fadd float %"fmul.11", %".461"
  %".462" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".462"
  ; FFMA R8, R33, R32, R8
  %"cast_ptr.36" = bitcast ptr %"R33" to ptr
  %".465" = load float, ptr %"cast_ptr.36"
  %"cast_ptr.37" = bitcast ptr %"R32" to ptr
  %".466" = load float, ptr %"cast_ptr.37"
  %"cast_ptr.38" = bitcast ptr %"R8" to ptr
  %".467" = load float, ptr %"cast_ptr.38"
  %"fmul.12" = fmul float %".465", %".466"
  %"fadd.12" = fadd float %"fmul.12", %".467"
  %".468" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".468"
  ; FFMA R8, R35, R34, R8
  %"cast_ptr.39" = bitcast ptr %"R35" to ptr
  %".471" = load float, ptr %"cast_ptr.39"
  %"cast_ptr.40" = bitcast ptr %"R34" to ptr
  %".472" = load float, ptr %"cast_ptr.40"
  %"cast_ptr.41" = bitcast ptr %"R8" to ptr
  %".473" = load float, ptr %"cast_ptr.41"
  %"fmul.13" = fmul float %".471", %".472"
  %"fadd.13" = fadd float %"fmul.13", %".473"
  %".474" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".474"
  ; FFMA R8, R37, R36, R8
  %"cast_ptr.42" = bitcast ptr %"R37" to ptr
  %".477" = load float, ptr %"cast_ptr.42"
  %"cast_ptr.43" = bitcast ptr %"R36" to ptr
  %".478" = load float, ptr %"cast_ptr.43"
  %"cast_ptr.44" = bitcast ptr %"R8" to ptr
  %".479" = load float, ptr %"cast_ptr.44"
  %"fmul.14" = fmul float %".477", %".478"
  %"fadd.14" = fadd float %"fmul.14", %".479"
  %".480" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".480"
  ; FFMA R7, R39, R38, R8
  %"cast_ptr.45" = bitcast ptr %"R39" to ptr
  %".483" = load float, ptr %"cast_ptr.45"
  %"cast_ptr.46" = bitcast ptr %"R38" to ptr
  %".484" = load float, ptr %"cast_ptr.46"
  %"cast_ptr.47" = bitcast ptr %"R8" to ptr
  %".485" = load float, ptr %"cast_ptr.47"
  %"fmul.15" = fmul float %".483", %".484"
  %"fadd.15" = fadd float %"fmul.15", %".485"
  %".486" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".486"
  ; @P1 BRA `(.L_x_4)
  %".489" = load i1, ptr %"P1"
  %".490" = icmp eq i1 %".489", 1
  br i1 %".490", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; IADD3 R8, R6, -0x1, RZ
  %".493" = load i32, ptr %"R6"
  %".494" = add i32 %".493", -1
  %".495" = add i32 %".494", 0
  store i32 %".495", ptr %"R8"
  ; ISETP.GT.AND P1, PT, R8, 0x4, PT
  %".498" = load i32, ptr %"R8"
  %".499" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".498", 4
  %".500" = xor i1 %"cmp.6", -1
  %".501" = and i1 %"cmp.6", %".499"
  %".502" = and i1 %".500", %".499"
  store i1 %".501", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".505" = load i1, ptr %"P1"
  %".506" = icmp ne i1 %".505", 1
  br i1 %".506", label %".L_x_5", label %".L_x_3_split_0x05a0"
.L_x_3_split_0x05a0:
  ; LDG.E.SYS R8, [R2]
  %".509" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".509" to i64
  %".510" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".510" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %"inttoptr_bytes.32" = inttoptr i64 %"or.32" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".511" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".512" = bitcast ptr %"R8" to ptr
  store float %".511", ptr %".512"
  ; LDG.E.SYS R9, [UR4]
  %".515" = load i32, ptr %"UR4"
  %"zext.66" = zext i32 %".515" to i64
  %".516" = load i32, ptr %"UR5"
  %"zext.67" = zext i32 %".516" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".517" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".518" = bitcast ptr %"R9" to ptr
  store float %".517", ptr %".518"
  ; LDG.E.SYS R11, [R2+0x4]
  %".521" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".521" to i64
  %".522" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".522" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".523" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".524" = bitcast ptr %"R11" to ptr
  store float %".523", ptr %".524"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".527" = load i32, ptr %"UR4"
  %"zext.70" = zext i32 %".527" to i64
  %".528" = load i32, ptr %"UR5"
  %"zext.71" = zext i32 %".528" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %"ptr_plus_imm.31" = add i64 %"or.35", 4
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".529" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".530" = bitcast ptr %"R10" to ptr
  store float %".529", ptr %".530"
  ; LDG.E.SYS R13, [R2+0x8]
  %".533" = load i32, ptr %"R2"
  %"zext.72" = zext i32 %".533" to i64
  %".534" = load i32, ptr %"R3"
  %"zext.73" = zext i32 %".534" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %"ptr_plus_imm.32" = add i64 %"or.36", 8
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".535" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".536" = bitcast ptr %"R13" to ptr
  store float %".535", ptr %".536"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".539" = load i32, ptr %"UR4"
  %"zext.74" = zext i32 %".539" to i64
  %".540" = load i32, ptr %"UR5"
  %"zext.75" = zext i32 %".540" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %"ptr_plus_imm.33" = add i64 %"or.37", 8
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".541" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".542" = bitcast ptr %"R12" to ptr
  store float %".541", ptr %".542"
  ; LDG.E.SYS R15, [R2+0xc]
  %".545" = load i32, ptr %"R2"
  %"zext.76" = zext i32 %".545" to i64
  %".546" = load i32, ptr %"R3"
  %"zext.77" = zext i32 %".546" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %"ptr_plus_imm.34" = add i64 %"or.38", 12
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".547" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".548" = bitcast ptr %"R15" to ptr
  store float %".547", ptr %".548"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".551" = load i32, ptr %"UR4"
  %"zext.78" = zext i32 %".551" to i64
  %".552" = load i32, ptr %"UR5"
  %"zext.79" = zext i32 %".552" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %"ptr_plus_imm.35" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".553" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".554" = bitcast ptr %"R14" to ptr
  store float %".553", ptr %".554"
  ; LDG.E.SYS R17, [R2+0x10]
  %".557" = load i32, ptr %"R2"
  %"zext.80" = zext i32 %".557" to i64
  %".558" = load i32, ptr %"R3"
  %"zext.81" = zext i32 %".558" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %"ptr_plus_imm.36" = add i64 %"or.40", 16
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".559" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".560" = bitcast ptr %"R17" to ptr
  store float %".559", ptr %".560"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".563" = load i32, ptr %"UR4"
  %"zext.82" = zext i32 %".563" to i64
  %".564" = load i32, ptr %"UR5"
  %"zext.83" = zext i32 %".564" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %"ptr_plus_imm.37" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".565" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".566" = bitcast ptr %"R16" to ptr
  store float %".565", ptr %".566"
  ; LDG.E.SYS R19, [R2+0x14]
  %".569" = load i32, ptr %"R2"
  %"zext.84" = zext i32 %".569" to i64
  %".570" = load i32, ptr %"R3"
  %"zext.85" = zext i32 %".570" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %"ptr_plus_imm.38" = add i64 %"or.42", 20
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".571" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".572" = bitcast ptr %"R19" to ptr
  store float %".571", ptr %".572"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".575" = load i32, ptr %"UR4"
  %"zext.86" = zext i32 %".575" to i64
  %".576" = load i32, ptr %"UR5"
  %"zext.87" = zext i32 %".576" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %"ptr_plus_imm.39" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".577" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".578" = bitcast ptr %"R18" to ptr
  store float %".577", ptr %".578"
  ; LDG.E.SYS R21, [R2+0x18]
  %".581" = load i32, ptr %"R2"
  %"zext.88" = zext i32 %".581" to i64
  %".582" = load i32, ptr %"R3"
  %"zext.89" = zext i32 %".582" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %"ptr_plus_imm.40" = add i64 %"or.44", 24
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".583" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".584" = bitcast ptr %"R21" to ptr
  store float %".583", ptr %".584"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".587" = load i32, ptr %"UR4"
  %"zext.90" = zext i32 %".587" to i64
  %".588" = load i32, ptr %"UR5"
  %"zext.91" = zext i32 %".588" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %"ptr_plus_imm.41" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".589" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".590" = bitcast ptr %"R20" to ptr
  store float %".589", ptr %".590"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".593" = load i32, ptr %"R2"
  %"zext.92" = zext i32 %".593" to i64
  %".594" = load i32, ptr %"R3"
  %"zext.93" = zext i32 %".594" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %"ptr_plus_imm.42" = add i64 %"or.46", 28
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".595" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".596" = bitcast ptr %"R23" to ptr
  store float %".595", ptr %".596"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".599" = load i32, ptr %"UR4"
  %"zext.94" = zext i32 %".599" to i64
  %".600" = load i32, ptr %"UR5"
  %"zext.95" = zext i32 %".600" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %"ptr_plus_imm.43" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".601" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".602" = bitcast ptr %"R22" to ptr
  store float %".601", ptr %".602"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".605" = load i32, ptr %"UR4"
  %".606" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".605", i32 32)
  %".607" = extractvalue {i32, i1} %".606", 0
  %".608" = extractvalue {i32, i1} %".606", 1
  %".609" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".607", i32 0)
  %".610" = extractvalue {i32, i1} %".609", 0
  %".611" = extractvalue {i32, i1} %".609", 1
  %".612" = or i1 %".608", %".611"
  store i32 %".610", ptr %"UR4"
  store i1 %".612", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".616" = xor i1 1, 1
  %".617" = and i1 %".616", 1
  %".618" = and i1 %".617", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".620" = load i32, ptr %"R5"
  %".621" = add i32 %".620", 8
  %".622" = add i32 %".621", 0
  store i32 %".622", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".625" = load i32, ptr %"UR5"
  %".626" = load i1, ptr %"UP0"
  %".627" = xor i1 1, -1
  %".628" = zext i1 %".626" to i32
  %".629" = zext i1 %".627" to i32
  %"add.8" = add i32 0, %".625"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".628"
  %"add.11" = add i32 %"add.10", %".629"
  store i32 %"add.11", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".632" = load i32, ptr %"R2"
  %".633" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".632", i32 32)
  %".634" = extractvalue {i32, i1} %".633", 0
  %".635" = extractvalue {i32, i1} %".633", 1
  %".636" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".634", i32 0)
  %".637" = extractvalue {i32, i1} %".636", 0
  %".638" = extractvalue {i32, i1} %".636", 1
  %".639" = or i1 %".635", %".638"
  store i32 %".637", ptr %"R2"
  store i1 %".639", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".643" = load i32, ptr %"R6"
  %".644" = add i32 %".643", -8
  %".645" = add i32 %".644", 0
  store i32 %".645", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".648" = load i32, ptr %"R3"
  %".649" = load i1, ptr %"P1"
  %".650" = xor i1 1, -1
  %".651" = zext i1 %".649" to i32
  %".652" = zext i1 %".650" to i32
  %"add.12" = add i32 0, %".648"
  %"add.13" = add i32 %"add.12", 0
  %"add.14" = add i32 %"add.13", %".651"
  %"add.15" = add i32 %"add.14", %".652"
  store i32 %"add.15", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %"cast_ptr.48" = bitcast ptr %"R8" to ptr
  %".655" = load float, ptr %"cast_ptr.48"
  %"cast_ptr.49" = bitcast ptr %"R9" to ptr
  %".656" = load float, ptr %"cast_ptr.49"
  %"cast_ptr.50" = bitcast ptr %"R7" to ptr
  %".657" = load float, ptr %"cast_ptr.50"
  %"fmul.16" = fmul float %".655", %".656"
  %"fadd.16" = fadd float %"fmul.16", %".657"
  %".658" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".658"
  ; FFMA R8, R11, R10, R8
  %"cast_ptr.51" = bitcast ptr %"R11" to ptr
  %".661" = load float, ptr %"cast_ptr.51"
  %"cast_ptr.52" = bitcast ptr %"R10" to ptr
  %".662" = load float, ptr %"cast_ptr.52"
  %"cast_ptr.53" = bitcast ptr %"R8" to ptr
  %".663" = load float, ptr %"cast_ptr.53"
  %"fmul.17" = fmul float %".661", %".662"
  %"fadd.17" = fadd float %"fmul.17", %".663"
  %".664" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".664"
  ; FFMA R8, R13, R12, R8
  %"cast_ptr.54" = bitcast ptr %"R13" to ptr
  %".667" = load float, ptr %"cast_ptr.54"
  %"cast_ptr.55" = bitcast ptr %"R12" to ptr
  %".668" = load float, ptr %"cast_ptr.55"
  %"cast_ptr.56" = bitcast ptr %"R8" to ptr
  %".669" = load float, ptr %"cast_ptr.56"
  %"fmul.18" = fmul float %".667", %".668"
  %"fadd.18" = fadd float %"fmul.18", %".669"
  %".670" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".670"
  ; FFMA R8, R15, R14, R8
  %"cast_ptr.57" = bitcast ptr %"R15" to ptr
  %".673" = load float, ptr %"cast_ptr.57"
  %"cast_ptr.58" = bitcast ptr %"R14" to ptr
  %".674" = load float, ptr %"cast_ptr.58"
  %"cast_ptr.59" = bitcast ptr %"R8" to ptr
  %".675" = load float, ptr %"cast_ptr.59"
  %"fmul.19" = fmul float %".673", %".674"
  %"fadd.19" = fadd float %"fmul.19", %".675"
  %".676" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".676"
  ; FFMA R8, R17, R16, R8
  %"cast_ptr.60" = bitcast ptr %"R17" to ptr
  %".679" = load float, ptr %"cast_ptr.60"
  %"cast_ptr.61" = bitcast ptr %"R16" to ptr
  %".680" = load float, ptr %"cast_ptr.61"
  %"cast_ptr.62" = bitcast ptr %"R8" to ptr
  %".681" = load float, ptr %"cast_ptr.62"
  %"fmul.20" = fmul float %".679", %".680"
  %"fadd.20" = fadd float %"fmul.20", %".681"
  %".682" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".682"
  ; FFMA R8, R19, R18, R8
  %"cast_ptr.63" = bitcast ptr %"R19" to ptr
  %".685" = load float, ptr %"cast_ptr.63"
  %"cast_ptr.64" = bitcast ptr %"R18" to ptr
  %".686" = load float, ptr %"cast_ptr.64"
  %"cast_ptr.65" = bitcast ptr %"R8" to ptr
  %".687" = load float, ptr %"cast_ptr.65"
  %"fmul.21" = fmul float %".685", %".686"
  %"fadd.21" = fadd float %"fmul.21", %".687"
  %".688" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".688"
  ; FFMA R8, R21, R20, R8
  %"cast_ptr.66" = bitcast ptr %"R21" to ptr
  %".691" = load float, ptr %"cast_ptr.66"
  %"cast_ptr.67" = bitcast ptr %"R20" to ptr
  %".692" = load float, ptr %"cast_ptr.67"
  %"cast_ptr.68" = bitcast ptr %"R8" to ptr
  %".693" = load float, ptr %"cast_ptr.68"
  %"fmul.22" = fmul float %".691", %".692"
  %"fadd.22" = fadd float %"fmul.22", %".693"
  %".694" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".694"
  ; FFMA R7, R23, R22, R8
  %"cast_ptr.69" = bitcast ptr %"R23" to ptr
  %".697" = load float, ptr %"cast_ptr.69"
  %"cast_ptr.70" = bitcast ptr %"R22" to ptr
  %".698" = load float, ptr %"cast_ptr.70"
  %"cast_ptr.71" = bitcast ptr %"R8" to ptr
  %".699" = load float, ptr %"cast_ptr.71"
  %"fmul.23" = fmul float %".697", %".698"
  %"fadd.23" = fadd float %"fmul.23", %".699"
  %".700" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".700"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, 0x1, P0
  %".704" = load i32, ptr %"R6"
  %".705" = load i1, ptr %"P0"
  %"cmp.7" = icmp ne i32 %".704", 1
  %".706" = xor i1 %"cmp.7", -1
  %".707" = or i1 %"cmp.7", %".705"
  %".708" = or i1 %".706", %".705"
  store i1 %".707", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".711" = load i1, ptr %"P0"
  %".712" = icmp ne i1 %".711", 1
  br i1 %".712", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".715" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".715" to i64
  %".716" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".716" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".717" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".718" = bitcast ptr %"R8" to ptr
  store float %".717", ptr %".718"
  ; LDG.E.SYS R9, [UR4]
  %".721" = load i32, ptr %"UR4"
  %"zext.98" = zext i32 %".721" to i64
  %".722" = load i32, ptr %"UR5"
  %"zext.99" = zext i32 %".722" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".723" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".724" = bitcast ptr %"R9" to ptr
  store float %".723", ptr %".724"
  ; LDG.E.SYS R11, [R2+0x4]
  %".727" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".727" to i64
  %".728" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".728" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".729" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".730" = bitcast ptr %"R11" to ptr
  store float %".729", ptr %".730"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".733" = load i32, ptr %"UR4"
  %"zext.102" = zext i32 %".733" to i64
  %".734" = load i32, ptr %"UR5"
  %"zext.103" = zext i32 %".734" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %"ptr_plus_imm.45" = add i64 %"or.51", 4
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".735" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".736" = bitcast ptr %"R10" to ptr
  store float %".735", ptr %".736"
  ; LDG.E.SYS R13, [R2+0x8]
  %".739" = load i32, ptr %"R2"
  %"zext.104" = zext i32 %".739" to i64
  %".740" = load i32, ptr %"R3"
  %"zext.105" = zext i32 %".740" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %"ptr_plus_imm.46" = add i64 %"or.52", 8
  %"inttoptr_bytes.52" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".741" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".742" = bitcast ptr %"R13" to ptr
  store float %".741", ptr %".742"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".745" = load i32, ptr %"UR4"
  %"zext.106" = zext i32 %".745" to i64
  %".746" = load i32, ptr %"UR5"
  %"zext.107" = zext i32 %".746" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %"ptr_plus_imm.47" = add i64 %"or.53", 8
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".747" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".748" = bitcast ptr %"R12" to ptr
  store float %".747", ptr %".748"
  ; LDG.E.SYS R15, [R2+0xc]
  %".751" = load i32, ptr %"R2"
  %"zext.108" = zext i32 %".751" to i64
  %".752" = load i32, ptr %"R3"
  %"zext.109" = zext i32 %".752" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %"ptr_plus_imm.48" = add i64 %"or.54", 12
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".753" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".754" = bitcast ptr %"R15" to ptr
  store float %".753", ptr %".754"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".757" = load i32, ptr %"UR4"
  %"zext.110" = zext i32 %".757" to i64
  %".758" = load i32, ptr %"UR5"
  %"zext.111" = zext i32 %".758" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %"ptr_plus_imm.49" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".759" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".760" = bitcast ptr %"R14" to ptr
  store float %".759", ptr %".760"
  ; IADD3 R6, R6, -0x4, RZ
  %".763" = load i32, ptr %"R6"
  %".764" = add i32 %".763", -4
  %".765" = add i32 %".764", 0
  store i32 %".765", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".768" = load i32, ptr %"UR4"
  %".769" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".768", i32 16)
  %".770" = extractvalue {i32, i1} %".769", 0
  %".771" = extractvalue {i32, i1} %".769", 1
  %".772" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".770", i32 0)
  %".773" = extractvalue {i32, i1} %".772", 0
  %".774" = extractvalue {i32, i1} %".772", 1
  %".775" = or i1 %".771", %".774"
  store i32 %".773", ptr %"UR4"
  store i1 %".775", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".779" = load i32, ptr %"R5"
  %".780" = add i32 %".779", 4
  %".781" = add i32 %".780", 0
  store i32 %".781", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, 0x1, PT
  %".784" = load i32, ptr %"R6"
  %".785" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".784", 1
  %".786" = xor i1 %"cmp.8", -1
  %".787" = and i1 %"cmp.8", %".785"
  %".788" = and i1 %".786", %".785"
  store i1 %".787", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".791" = load i32, ptr %"UR5"
  %".792" = load i1, ptr %"UP0"
  %".793" = xor i1 1, -1
  %".794" = zext i1 %".792" to i32
  %".795" = zext i1 %".793" to i32
  %"add.16" = add i32 0, %".791"
  %"add.17" = add i32 %"add.16", 0
  %"add.18" = add i32 %"add.17", %".794"
  %"add.19" = add i32 %"add.18", %".795"
  store i32 %"add.19", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %"cast_ptr.72" = bitcast ptr %"R8" to ptr
  %".798" = load float, ptr %"cast_ptr.72"
  %"cast_ptr.73" = bitcast ptr %"R9" to ptr
  %".799" = load float, ptr %"cast_ptr.73"
  %"cast_ptr.74" = bitcast ptr %"R7" to ptr
  %".800" = load float, ptr %"cast_ptr.74"
  %"fmul.24" = fmul float %".798", %".799"
  %"fadd.24" = fadd float %"fmul.24", %".800"
  %".801" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".801"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".804" = load i32, ptr %"R2"
  %".805" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".804", i32 16)
  %".806" = extractvalue {i32, i1} %".805", 0
  %".807" = extractvalue {i32, i1} %".805", 1
  %".808" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".806", i32 0)
  %".809" = extractvalue {i32, i1} %".808", 0
  %".810" = extractvalue {i32, i1} %".808", 1
  %".811" = or i1 %".807", %".810"
  store i32 %".809", ptr %"R9"
  store i1 %".811", ptr %"P1"
  ; MOV R2, R9
  %".815" = load i32, ptr %"R9"
  store i32 %".815", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %"cast_ptr.75" = bitcast ptr %"R11" to ptr
  %".818" = load float, ptr %"cast_ptr.75"
  %"cast_ptr.76" = bitcast ptr %"R10" to ptr
  %".819" = load float, ptr %"cast_ptr.76"
  %"cast_ptr.77" = bitcast ptr %"R8" to ptr
  %".820" = load float, ptr %"cast_ptr.77"
  %"fmul.25" = fmul float %".818", %".819"
  %"fadd.25" = fadd float %"fmul.25", %".820"
  %".821" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".821"
  ; IMAD.X R10, RZ, RZ, R3, P1
  %".824" = load i32, ptr %"R3"
  %".825" = load i1, ptr %"P1"
  %"imad_mul.6" = mul i32 0, 0
  %"imad_add.6" = add i32 %"imad_mul.6", %".824"
  %"imad_ext4" = zext i1 %".825" to i32
  %"imad_add_x" = add i32 %"imad_add.6", %"imad_ext4"
  store i32 %"imad_add_x", ptr %"R10"
  ; MOV R3, R10
  %".828" = load i32, ptr %"R10"
  store i32 %".828", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %"cast_ptr.78" = bitcast ptr %"R13" to ptr
  %".831" = load float, ptr %"cast_ptr.78"
  %"cast_ptr.79" = bitcast ptr %"R12" to ptr
  %".832" = load float, ptr %"cast_ptr.79"
  %"cast_ptr.80" = bitcast ptr %"R8" to ptr
  %".833" = load float, ptr %"cast_ptr.80"
  %"fmul.26" = fmul float %".831", %".832"
  %"fadd.26" = fadd float %"fmul.26", %".833"
  %".834" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".834"
  ; FFMA R7, R15, R14, R8
  %"cast_ptr.81" = bitcast ptr %"R15" to ptr
  %".837" = load float, ptr %"cast_ptr.81"
  %"cast_ptr.82" = bitcast ptr %"R14" to ptr
  %".838" = load float, ptr %"cast_ptr.82"
  %"cast_ptr.83" = bitcast ptr %"R8" to ptr
  %".839" = load float, ptr %"cast_ptr.83"
  %"fmul.27" = fmul float %".837", %".838"
  %"fadd.27" = fadd float %"fmul.27", %".839"
  %".840" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".840"
  ; @P0 BRA `(.L_x_2)
  %".843" = load i1, ptr %"P0"
  %".844" = icmp eq i1 %".843", 1
  br i1 %".844", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".847" = load i32, ptr %"R4"
  %".848" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".847", 0
  %".849" = xor i1 %"cmp.9", -1
  %".850" = and i1 %"cmp.9", %".848"
  %".851" = and i1 %".849", %".848"
  store i1 %".850", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".854" = load i1, ptr %"P0"
  %".855" = icmp ne i1 %".854", 1
  br i1 %".855", label %".L_x_0", label %".L_x_1_split_0x0930"
.L_x_1_split_0x0930:
  ; IMAD.MOV.U32 R8, RZ, RZ, 0x4
  %"imad_mul.7" = mul i32 0, 0
  %"imad_add.7" = add i32 %"imad_mul.7", 4
  store i32 %"imad_add.7", ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".860" = load i32, ptr %"R0"
  %".861" = load i32, ptr %"R5"
  %"imad_mul.8" = mul i32 %".860", %"Arg_4"
  %"imad_add.8" = add i32 %"imad_mul.8", %".861"
  store i32 %"imad_add.8", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".864" = load i32, ptr %"R2"
  %".865" = load i32, ptr %"R8"
  %"imad_ext1.1" = zext i32 %".864" to i64
  %"imad_ext2.1" = zext i32 %".865" to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".866" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %".866"
  %".867" = and i64 %"imad_add.9", 18446744069414584320
  %".868" = lshr i64 %".867", 32
  %"trunc32.4" = trunc i64 %".868" to i32
  %"trunc32.5" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".872" = load i32, ptr %"R5"
  %".873" = load i32, ptr %"R8"
  %"imad_ext1.2" = zext i32 %".872" to i64
  %"imad_ext2.2" = zext i32 %".873" to i64
  %"imad_mul.10" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %".874" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.10" = add i64 %"imad_mul.10", %".874"
  %".875" = and i64 %"imad_add.10", 18446744069414584320
  %".876" = lshr i64 %".875", 32
  %"trunc32.6" = trunc i64 %".876" to i32
  %"trunc32.7" = trunc i64 %"imad_add.10" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".880" = load i32, ptr %"R2"
  store i32 %".880", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; MOV R2, R6
  %".884" = load i32, ptr %"R6"
  store i32 %".884", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".887" = load i32, ptr %"R8"
  %"zext.112" = zext i32 %".887" to i64
  %".888" = load i32, ptr %"R9"
  %"zext.113" = zext i32 %".888" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %"inttoptr_bytes.56" = inttoptr i64 %"or.56" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".889" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".890" = bitcast ptr %"R5" to ptr
  store float %".889", ptr %".890"
  ; LDG.E.SYS R2, [R2]
  %".893" = load i32, ptr %"R2"
  %"zext.114" = zext i32 %".893" to i64
  %".894" = load i32, ptr %"R3"
  %"zext.115" = zext i32 %".894" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".895" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".896" = bitcast ptr %"R2" to ptr
  store float %".895", ptr %".896"
  ; IADD3 R4, R4, -0x1, RZ
  %".899" = load i32, ptr %"R4"
  %".900" = add i32 %".899", -1
  %".901" = add i32 %".900", 0
  store i32 %".901", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".904" = load i32, ptr %"R4"
  %".905" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".904", 0
  %".906" = xor i1 %"cmp.10", -1
  %".907" = and i1 %"cmp.10", %".905"
  %".908" = and i1 %".906", %".905"
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
  ; IMAD.X R3, RZ, RZ, R3, P1
  %".933" = load i32, ptr %"R3"
  %".934" = load i1, ptr %"P1"
  %"imad_mul.11" = mul i32 0, 0
  %"imad_add.11" = add i32 %"imad_mul.11", %".933"
  %"imad_ext4.1" = zext i1 %".934" to i32
  %"imad_add_x.1" = add i32 %"imad_add.11", %"imad_ext4.1"
  store i32 %"imad_add_x.1", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".937" = load i32, ptr %"R9"
  %".938" = load i1, ptr %"P2"
  %".939" = xor i1 1, -1
  %".940" = zext i1 %".938" to i32
  %".941" = zext i1 %".939" to i32
  %"add.20" = add i32 0, %".937"
  %"add.21" = add i32 %"add.20", 0
  %"add.22" = add i32 %"add.21", %".940"
  %"add.23" = add i32 %"add.22", %".941"
  store i32 %"add.23", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %"cast_ptr.84" = bitcast ptr %"R2" to ptr
  %".944" = load float, ptr %"cast_ptr.84"
  %"cast_ptr.85" = bitcast ptr %"R5" to ptr
  %".945" = load float, ptr %"cast_ptr.85"
  %"cast_ptr.86" = bitcast ptr %"R7" to ptr
  %".946" = load float, ptr %"cast_ptr.86"
  %"fmul.28" = fmul float %".944", %".945"
  %"fadd.28" = fadd float %"fmul.28", %".946"
  %".947" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".947"
  ; @P0 BRA `(.L_x_6)
  %".950" = load i1, ptr %"P0"
  %".951" = icmp eq i1 %".950", 1
  br i1 %".951", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".956" = load i32, ptr %"R0"
  %".957" = load i32, ptr %"R5"
  %"imad_ext1.3" = zext i32 %".956" to i64
  %"imad_ext2.3" = zext i32 %".957" to i64
  %"imad_mul.12" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %".958" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.12" = add i64 %"imad_mul.12", %".958"
  %".959" = and i64 %"imad_add.12", 18446744069414584320
  %".960" = lshr i64 %".959", 32
  %"trunc32.8" = trunc i64 %".960" to i32
  %"trunc32.9" = trunc i64 %"imad_add.12" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".964" = load i32, ptr %"R2"
  %"zext.116" = zext i32 %".964" to i64
  %".965" = load i32, ptr %"R3"
  %"zext.117" = zext i32 %".965" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".966" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".967" = bitcast ptr %"R2" to ptr
  store float %".966", ptr %".967"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".970" = load i32, ptr %"R0"
  %".971" = load i32, ptr %"R5"
  %"imad_ext1.4" = zext i32 %".970" to i64
  %"imad_ext2.4" = zext i32 %".971" to i64
  %"imad_mul.13" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %".972" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.13" = add i64 %"imad_mul.13", %".972"
  %".973" = and i64 %"imad_add.13", 18446744069414584320
  %".974" = lshr i64 %".973", 32
  %"trunc32.10" = trunc i64 %".974" to i32
  %"trunc32.11" = trunc i64 %"imad_add.13" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %"cast_ptr.87" = bitcast ptr %"R2" to ptr
  %".978" = load float, ptr %"cast_ptr.87"
  %"cast_ptr.88" = bitcast ptr %"R7" to ptr
  %".979" = load float, ptr %"cast_ptr.88"
  %"fadd.29" = fadd float %".978", %".979"
  %".980" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".980"
  ; STG.E.SYS [R4], R7
  %"cast_ptr.89" = bitcast ptr %"R7" to ptr
  %".983" = load float, ptr %"cast_ptr.89"
  %".984" = load i32, ptr %"R4"
  %"zext.118" = zext i32 %".984" to i64
  %".985" = load i32, ptr %"R5"
  %"zext.119" = zext i32 %".985" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".983", ptr addrspace(1) %"ptr_cast_for_access.59"
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
  %".69" = bitcast ptr %"R7" to ptr
  store float              0x0, ptr %".69"
  ; MOV R5, RZ
  store i32 0, ptr %"R5"
  ; @!P0 BRA `(.L_x_9)
  %".74" = load i1, ptr %"P0"
  %".75" = icmp ne i1 %".74", 1
  br i1 %".75", label %".L_x_9", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".78" = load i32, ptr %"R4"
  %".79" = sub i32 0, %".78"
  %".80" = add i32 %".79", %"Arg_4"
  %".81" = add i32 %".80", 0
  store i32 %".81", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".84" = load i32, ptr %"R0"
  %"imad_mul.2" = mul i32 %".84", %"Arg_4"
  %"imad_add.2" = add i32 %"imad_mul.2", 0
  store i32 %"imad_add.2", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".87" = ptrtoint ptr %"Arg_0" to i64
  %".88" = and i64 %".87", 18446744069414584320
  %".89" = lshr i64 %".88", 32
  %"trunc32" = trunc i64 %".89" to i32
  %"trunc32.1" = trunc i64 %".87" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"imad_mul.3" = mul i32 0, 0
  %"imad_add.3" = add i32 %"imad_mul.3", 4
  store i32 %"imad_add.3", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".95" = load i32, ptr %"R6"
  %".96" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".95", 0
  %".97" = xor i1 %"cmp.3", -1
  %".98" = and i1 %"cmp.3", %".96"
  %".99" = and i1 %".97", %".96"
  store i1 %".98", ptr %"P0"
  ; MOV R7, RZ
  %".102" = bitcast ptr %"R7" to ptr
  store float              0x0, ptr %".102"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".105" = load i32, ptr %"R2"
  %".106" = load i32, ptr %"R3"
  %"imad_ext1" = zext i32 %".105" to i64
  %"imad_ext2" = zext i32 %".106" to i64
  %"imad_mul.4" = mul i64 %"imad_ext1", %"imad_ext2"
  %".107" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.4" = add i64 %"imad_mul.4", %".107"
  %".108" = and i64 %"imad_add.4", 18446744069414584320
  %".109" = lshr i64 %".108", 32
  %"trunc32.2" = trunc i64 %".109" to i32
  %"trunc32.3" = trunc i64 %"imad_add.4" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; MOV R5, RZ
  store i32 0, ptr %"R5"
  ; @!P0 BRA `(.L_x_10)
  %".115" = load i1, ptr %"P0"
  %".116" = icmp ne i1 %".115", 1
  br i1 %".116", label %".L_x_10", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".119" = load i32, ptr %"R6"
  %".120" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".119", 12
  %".121" = xor i1 %"cmp.4", -1
  %".122" = and i1 %"cmp.4", %".120"
  %".123" = and i1 %".121", %".120"
  store i1 %".122", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".126" = and i1 1, 1
  %".127" = and i1 %".126", 1
  ; @!P1 BRA `(.L_x_11)
  %".129" = load i1, ptr %"P1"
  %".130" = icmp ne i1 %".129", 1
  br i1 %".130", label %".L_x_11", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".133" = xor i1 1, 1
  %".134" = and i1 %".133", 1
  %".135" = and i1 %".134", 1
  br label %".L_x_12"
.L_x_12:
  ; LDG.E.SYS R8, [R2]
  %".138" = load i32, ptr %"R2"
  %"zext" = zext i32 %".138" to i64
  %".139" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".139" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".140" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".141" = bitcast ptr %"R8" to ptr
  store float %".140", ptr %".141"
  ; LDG.E.SYS R9, [UR4]
  %".144" = load i32, ptr %"UR4"
  %"zext.2" = zext i32 %".144" to i64
  %".145" = load i32, ptr %"UR5"
  %"zext.3" = zext i32 %".145" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".146" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".147" = bitcast ptr %"R9" to ptr
  store float %".146", ptr %".147"
  ; LDG.E.SYS R11, [R2+0x4]
  %".150" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".150" to i64
  %".151" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".151" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".152" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".153" = bitcast ptr %"R11" to ptr
  store float %".152", ptr %".153"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".156" = load i32, ptr %"UR4"
  %"zext.6" = zext i32 %".156" to i64
  %".157" = load i32, ptr %"UR5"
  %"zext.7" = zext i32 %".157" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm.1" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".158" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".159" = bitcast ptr %"R10" to ptr
  store float %".158", ptr %".159"
  ; LDG.E.SYS R13, [R2+0x8]
  %".162" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".162" to i64
  %".163" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".163" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"ptr_plus_imm.2" = add i64 %"or.4", 8
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".164" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".165" = bitcast ptr %"R13" to ptr
  store float %".164", ptr %".165"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".168" = load i32, ptr %"UR4"
  %"zext.10" = zext i32 %".168" to i64
  %".169" = load i32, ptr %"UR5"
  %"zext.11" = zext i32 %".169" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"ptr_plus_imm.3" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".170" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".171" = bitcast ptr %"R12" to ptr
  store float %".170", ptr %".171"
  ; LDG.E.SYS R15, [R2+0xc]
  %".174" = load i32, ptr %"R2"
  %"zext.12" = zext i32 %".174" to i64
  %".175" = load i32, ptr %"R3"
  %"zext.13" = zext i32 %".175" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"ptr_plus_imm.4" = add i64 %"or.6", 12
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".176" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".177" = bitcast ptr %"R15" to ptr
  store float %".176", ptr %".177"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".180" = load i32, ptr %"UR4"
  %"zext.14" = zext i32 %".180" to i64
  %".181" = load i32, ptr %"UR5"
  %"zext.15" = zext i32 %".181" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.5" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".182" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".183" = bitcast ptr %"R14" to ptr
  store float %".182", ptr %".183"
  ; LDG.E.SYS R17, [R2+0x10]
  %".186" = load i32, ptr %"R2"
  %"zext.16" = zext i32 %".186" to i64
  %".187" = load i32, ptr %"R3"
  %"zext.17" = zext i32 %".187" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %"ptr_plus_imm.6" = add i64 %"or.8", 16
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".188" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".189" = bitcast ptr %"R17" to ptr
  store float %".188", ptr %".189"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".192" = load i32, ptr %"UR4"
  %"zext.18" = zext i32 %".192" to i64
  %".193" = load i32, ptr %"UR5"
  %"zext.19" = zext i32 %".193" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %"ptr_plus_imm.7" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".194" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".195" = bitcast ptr %"R16" to ptr
  store float %".194", ptr %".195"
  ; LDG.E.SYS R19, [R2+0x14]
  %".198" = load i32, ptr %"R2"
  %"zext.20" = zext i32 %".198" to i64
  %".199" = load i32, ptr %"R3"
  %"zext.21" = zext i32 %".199" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %"ptr_plus_imm.8" = add i64 %"or.10", 20
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".200" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".201" = bitcast ptr %"R19" to ptr
  store float %".200", ptr %".201"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".204" = load i32, ptr %"UR4"
  %"zext.22" = zext i32 %".204" to i64
  %".205" = load i32, ptr %"UR5"
  %"zext.23" = zext i32 %".205" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %"ptr_plus_imm.9" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".206" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".207" = bitcast ptr %"R18" to ptr
  store float %".206", ptr %".207"
  ; LDG.E.SYS R21, [R2+0x18]
  %".210" = load i32, ptr %"R2"
  %"zext.24" = zext i32 %".210" to i64
  %".211" = load i32, ptr %"R3"
  %"zext.25" = zext i32 %".211" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %"ptr_plus_imm.10" = add i64 %"or.12", 24
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".212" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".213" = bitcast ptr %"R21" to ptr
  store float %".212", ptr %".213"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".216" = load i32, ptr %"UR4"
  %"zext.26" = zext i32 %".216" to i64
  %".217" = load i32, ptr %"UR5"
  %"zext.27" = zext i32 %".217" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %"ptr_plus_imm.11" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".218" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".219" = bitcast ptr %"R20" to ptr
  store float %".218", ptr %".219"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".222" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".222" to i64
  %".223" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".223" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %"ptr_plus_imm.12" = add i64 %"or.14", 28
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".224" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".225" = bitcast ptr %"R23" to ptr
  store float %".224", ptr %".225"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".228" = load i32, ptr %"UR4"
  %"zext.30" = zext i32 %".228" to i64
  %".229" = load i32, ptr %"UR5"
  %"zext.31" = zext i32 %".229" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %"ptr_plus_imm.13" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".230" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".231" = bitcast ptr %"R22" to ptr
  store float %".230", ptr %".231"
  ; LDG.E.SYS R25, [R2+0x20]
  %".234" = load i32, ptr %"R2"
  %"zext.32" = zext i32 %".234" to i64
  %".235" = load i32, ptr %"R3"
  %"zext.33" = zext i32 %".235" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %"ptr_plus_imm.14" = add i64 %"or.16", 32
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".236" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".237" = bitcast ptr %"R25" to ptr
  store float %".236", ptr %".237"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".240" = load i32, ptr %"UR4"
  %"zext.34" = zext i32 %".240" to i64
  %".241" = load i32, ptr %"UR5"
  %"zext.35" = zext i32 %".241" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %"ptr_plus_imm.15" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".242" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".243" = bitcast ptr %"R24" to ptr
  store float %".242", ptr %".243"
  ; LDG.E.SYS R27, [R2+0x24]
  %".246" = load i32, ptr %"R2"
  %"zext.36" = zext i32 %".246" to i64
  %".247" = load i32, ptr %"R3"
  %"zext.37" = zext i32 %".247" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %"ptr_plus_imm.16" = add i64 %"or.18", 36
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".248" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".249" = bitcast ptr %"R27" to ptr
  store float %".248", ptr %".249"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".252" = load i32, ptr %"UR4"
  %"zext.38" = zext i32 %".252" to i64
  %".253" = load i32, ptr %"UR5"
  %"zext.39" = zext i32 %".253" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %"ptr_plus_imm.17" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".254" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".255" = bitcast ptr %"R26" to ptr
  store float %".254", ptr %".255"
  ; LDG.E.SYS R29, [R2+0x28]
  %".258" = load i32, ptr %"R2"
  %"zext.40" = zext i32 %".258" to i64
  %".259" = load i32, ptr %"R3"
  %"zext.41" = zext i32 %".259" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %"ptr_plus_imm.18" = add i64 %"or.20", 40
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".260" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".261" = bitcast ptr %"R29" to ptr
  store float %".260", ptr %".261"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".264" = load i32, ptr %"UR4"
  %"zext.42" = zext i32 %".264" to i64
  %".265" = load i32, ptr %"UR5"
  %"zext.43" = zext i32 %".265" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %"ptr_plus_imm.19" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".266" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".267" = bitcast ptr %"R28" to ptr
  store float %".266", ptr %".267"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".270" = load i32, ptr %"R2"
  %"zext.44" = zext i32 %".270" to i64
  %".271" = load i32, ptr %"R3"
  %"zext.45" = zext i32 %".271" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %"ptr_plus_imm.20" = add i64 %"or.22", 44
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".272" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".273" = bitcast ptr %"R31" to ptr
  store float %".272", ptr %".273"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".276" = load i32, ptr %"UR4"
  %"zext.46" = zext i32 %".276" to i64
  %".277" = load i32, ptr %"UR5"
  %"zext.47" = zext i32 %".277" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %"ptr_plus_imm.21" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".278" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".279" = bitcast ptr %"R30" to ptr
  store float %".278", ptr %".279"
  ; LDG.E.SYS R33, [R2+0x30]
  %".282" = load i32, ptr %"R2"
  %"zext.48" = zext i32 %".282" to i64
  %".283" = load i32, ptr %"R3"
  %"zext.49" = zext i32 %".283" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %"ptr_plus_imm.22" = add i64 %"or.24", 48
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".284" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".285" = bitcast ptr %"R33" to ptr
  store float %".284", ptr %".285"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".288" = load i32, ptr %"UR4"
  %"zext.50" = zext i32 %".288" to i64
  %".289" = load i32, ptr %"UR5"
  %"zext.51" = zext i32 %".289" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %"ptr_plus_imm.23" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".290" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".291" = bitcast ptr %"R32" to ptr
  store float %".290", ptr %".291"
  ; LDG.E.SYS R35, [R2+0x34]
  %".294" = load i32, ptr %"R2"
  %"zext.52" = zext i32 %".294" to i64
  %".295" = load i32, ptr %"R3"
  %"zext.53" = zext i32 %".295" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %"ptr_plus_imm.24" = add i64 %"or.26", 52
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".296" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".297" = bitcast ptr %"R35" to ptr
  store float %".296", ptr %".297"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".300" = load i32, ptr %"UR4"
  %"zext.54" = zext i32 %".300" to i64
  %".301" = load i32, ptr %"UR5"
  %"zext.55" = zext i32 %".301" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %"ptr_plus_imm.25" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".302" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".303" = bitcast ptr %"R34" to ptr
  store float %".302", ptr %".303"
  ; LDG.E.SYS R37, [R2+0x38]
  %".306" = load i32, ptr %"R2"
  %"zext.56" = zext i32 %".306" to i64
  %".307" = load i32, ptr %"R3"
  %"zext.57" = zext i32 %".307" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %"ptr_plus_imm.26" = add i64 %"or.28", 56
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".308" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".309" = bitcast ptr %"R37" to ptr
  store float %".308", ptr %".309"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".312" = load i32, ptr %"UR4"
  %"zext.58" = zext i32 %".312" to i64
  %".313" = load i32, ptr %"UR5"
  %"zext.59" = zext i32 %".313" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %"ptr_plus_imm.27" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".314" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".315" = bitcast ptr %"R36" to ptr
  store float %".314", ptr %".315"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".318" = load i32, ptr %"R2"
  %"zext.60" = zext i32 %".318" to i64
  %".319" = load i32, ptr %"R3"
  %"zext.61" = zext i32 %".319" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %"ptr_plus_imm.28" = add i64 %"or.30", 60
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".320" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".321" = bitcast ptr %"R39" to ptr
  store float %".320", ptr %".321"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".324" = load i32, ptr %"UR4"
  %"zext.62" = zext i32 %".324" to i64
  %".325" = load i32, ptr %"UR5"
  %"zext.63" = zext i32 %".325" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %"ptr_plus_imm.29" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".326" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".327" = bitcast ptr %"R38" to ptr
  store float %".326", ptr %".327"
  ; IADD3 R6, R6, -0x10, RZ
  %".330" = load i32, ptr %"R6"
  %".331" = add i32 %".330", -16
  %".332" = add i32 %".331", 0
  store i32 %".332", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".335" = load i32, ptr %"UR4"
  %".336" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".335", i32 64)
  %".337" = extractvalue {i32, i1} %".336", 0
  %".338" = extractvalue {i32, i1} %".336", 1
  %".339" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".337", i32 0)
  %".340" = extractvalue {i32, i1} %".339", 0
  %".341" = extractvalue {i32, i1} %".339", 1
  %".342" = or i1 %".338", %".341"
  store i32 %".340", ptr %"UR4"
  store i1 %".342", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".346" = load i32, ptr %"R5"
  %".347" = add i32 %".346", 16
  %".348" = add i32 %".347", 0
  store i32 %".348", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".351" = load i32, ptr %"R6"
  %".352" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".351", 12
  %".353" = xor i1 %"cmp.5", -1
  %".354" = and i1 %"cmp.5", %".352"
  %".355" = and i1 %".353", %".352"
  store i1 %".354", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".358" = load i32, ptr %"UR5"
  %".359" = load i1, ptr %"UP0"
  %".360" = xor i1 1, -1
  %".361" = zext i1 %".359" to i32
  %".362" = zext i1 %".360" to i32
  %"add" = add i32 0, %".358"
  %"add.1" = add i32 %"add", 0
  %"add.2" = add i32 %"add.1", %".361"
  %"add.3" = add i32 %"add.2", %".362"
  store i32 %"add.3", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".365" = load i32, ptr %"R2"
  %".366" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".365", i32 64)
  %".367" = extractvalue {i32, i1} %".366", 0
  %".368" = extractvalue {i32, i1} %".366", 1
  %".369" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".367", i32 0)
  %".370" = extractvalue {i32, i1} %".369", 0
  %".371" = extractvalue {i32, i1} %".369", 1
  %".372" = or i1 %".368", %".371"
  store i32 %".370", ptr %"R2"
  store i1 %".372", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".376" = load i32, ptr %"R3"
  %".377" = load i1, ptr %"P2"
  %"imad_mul.5" = mul i32 0, 0
  %"imad_add.5" = add i32 %"imad_mul.5", %".376"
  %"imad_ext4" = zext i1 %".377" to i32
  %"imad_add_x" = add i32 %"imad_add.5", %"imad_ext4"
  store i32 %"imad_add_x", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %"cast_ptr" = bitcast ptr %"R8" to ptr
  %".380" = load float, ptr %"cast_ptr"
  %"cast_ptr.1" = bitcast ptr %"R9" to ptr
  %".381" = load float, ptr %"cast_ptr.1"
  %"cast_ptr.2" = bitcast ptr %"R7" to ptr
  %".382" = load float, ptr %"cast_ptr.2"
  %"fmul" = fmul float %".380", %".381"
  %"fadd" = fadd float %"fmul", %".382"
  %".383" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".383"
  ; FFMA R8, R11, R10, R8
  %"cast_ptr.3" = bitcast ptr %"R11" to ptr
  %".386" = load float, ptr %"cast_ptr.3"
  %"cast_ptr.4" = bitcast ptr %"R10" to ptr
  %".387" = load float, ptr %"cast_ptr.4"
  %"cast_ptr.5" = bitcast ptr %"R8" to ptr
  %".388" = load float, ptr %"cast_ptr.5"
  %"fmul.1" = fmul float %".386", %".387"
  %"fadd.1" = fadd float %"fmul.1", %".388"
  %".389" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".389"
  ; FFMA R8, R13, R12, R8
  %"cast_ptr.6" = bitcast ptr %"R13" to ptr
  %".392" = load float, ptr %"cast_ptr.6"
  %"cast_ptr.7" = bitcast ptr %"R12" to ptr
  %".393" = load float, ptr %"cast_ptr.7"
  %"cast_ptr.8" = bitcast ptr %"R8" to ptr
  %".394" = load float, ptr %"cast_ptr.8"
  %"fmul.2" = fmul float %".392", %".393"
  %"fadd.2" = fadd float %"fmul.2", %".394"
  %".395" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".395"
  ; FFMA R8, R15, R14, R8
  %"cast_ptr.9" = bitcast ptr %"R15" to ptr
  %".398" = load float, ptr %"cast_ptr.9"
  %"cast_ptr.10" = bitcast ptr %"R14" to ptr
  %".399" = load float, ptr %"cast_ptr.10"
  %"cast_ptr.11" = bitcast ptr %"R8" to ptr
  %".400" = load float, ptr %"cast_ptr.11"
  %"fmul.3" = fmul float %".398", %".399"
  %"fadd.3" = fadd float %"fmul.3", %".400"
  %".401" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".401"
  ; FFMA R8, R17, R16, R8
  %"cast_ptr.12" = bitcast ptr %"R17" to ptr
  %".404" = load float, ptr %"cast_ptr.12"
  %"cast_ptr.13" = bitcast ptr %"R16" to ptr
  %".405" = load float, ptr %"cast_ptr.13"
  %"cast_ptr.14" = bitcast ptr %"R8" to ptr
  %".406" = load float, ptr %"cast_ptr.14"
  %"fmul.4" = fmul float %".404", %".405"
  %"fadd.4" = fadd float %"fmul.4", %".406"
  %".407" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".407"
  ; FFMA R8, R19, R18, R8
  %"cast_ptr.15" = bitcast ptr %"R19" to ptr
  %".410" = load float, ptr %"cast_ptr.15"
  %"cast_ptr.16" = bitcast ptr %"R18" to ptr
  %".411" = load float, ptr %"cast_ptr.16"
  %"cast_ptr.17" = bitcast ptr %"R8" to ptr
  %".412" = load float, ptr %"cast_ptr.17"
  %"fmul.5" = fmul float %".410", %".411"
  %"fadd.5" = fadd float %"fmul.5", %".412"
  %".413" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".413"
  ; FFMA R8, R21, R20, R8
  %"cast_ptr.18" = bitcast ptr %"R21" to ptr
  %".416" = load float, ptr %"cast_ptr.18"
  %"cast_ptr.19" = bitcast ptr %"R20" to ptr
  %".417" = load float, ptr %"cast_ptr.19"
  %"cast_ptr.20" = bitcast ptr %"R8" to ptr
  %".418" = load float, ptr %"cast_ptr.20"
  %"fmul.6" = fmul float %".416", %".417"
  %"fadd.6" = fadd float %"fmul.6", %".418"
  %".419" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".419"
  ; FFMA R8, R23, R22, R8
  %"cast_ptr.21" = bitcast ptr %"R23" to ptr
  %".422" = load float, ptr %"cast_ptr.21"
  %"cast_ptr.22" = bitcast ptr %"R22" to ptr
  %".423" = load float, ptr %"cast_ptr.22"
  %"cast_ptr.23" = bitcast ptr %"R8" to ptr
  %".424" = load float, ptr %"cast_ptr.23"
  %"fmul.7" = fmul float %".422", %".423"
  %"fadd.7" = fadd float %"fmul.7", %".424"
  %".425" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".425"
  ; FFMA R8, R25, R24, R8
  %"cast_ptr.24" = bitcast ptr %"R25" to ptr
  %".428" = load float, ptr %"cast_ptr.24"
  %"cast_ptr.25" = bitcast ptr %"R24" to ptr
  %".429" = load float, ptr %"cast_ptr.25"
  %"cast_ptr.26" = bitcast ptr %"R8" to ptr
  %".430" = load float, ptr %"cast_ptr.26"
  %"fmul.8" = fmul float %".428", %".429"
  %"fadd.8" = fadd float %"fmul.8", %".430"
  %".431" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".431"
  ; FFMA R8, R27, R26, R8
  %"cast_ptr.27" = bitcast ptr %"R27" to ptr
  %".434" = load float, ptr %"cast_ptr.27"
  %"cast_ptr.28" = bitcast ptr %"R26" to ptr
  %".435" = load float, ptr %"cast_ptr.28"
  %"cast_ptr.29" = bitcast ptr %"R8" to ptr
  %".436" = load float, ptr %"cast_ptr.29"
  %"fmul.9" = fmul float %".434", %".435"
  %"fadd.9" = fadd float %"fmul.9", %".436"
  %".437" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".437"
  ; FFMA R8, R29, R28, R8
  %"cast_ptr.30" = bitcast ptr %"R29" to ptr
  %".440" = load float, ptr %"cast_ptr.30"
  %"cast_ptr.31" = bitcast ptr %"R28" to ptr
  %".441" = load float, ptr %"cast_ptr.31"
  %"cast_ptr.32" = bitcast ptr %"R8" to ptr
  %".442" = load float, ptr %"cast_ptr.32"
  %"fmul.10" = fmul float %".440", %".441"
  %"fadd.10" = fadd float %"fmul.10", %".442"
  %".443" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".443"
  ; FFMA R8, R31, R30, R8
  %"cast_ptr.33" = bitcast ptr %"R31" to ptr
  %".446" = load float, ptr %"cast_ptr.33"
  %"cast_ptr.34" = bitcast ptr %"R30" to ptr
  %".447" = load float, ptr %"cast_ptr.34"
  %"cast_ptr.35" = bitcast ptr %"R8" to ptr
  %".448" = load float, ptr %"cast_ptr.35"
  %"fmul.11" = fmul float %".446", %".447"
  %"fadd.11" = fadd float %"fmul.11", %".448"
  %".449" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".449"
  ; FFMA R8, R33, R32, R8
  %"cast_ptr.36" = bitcast ptr %"R33" to ptr
  %".452" = load float, ptr %"cast_ptr.36"
  %"cast_ptr.37" = bitcast ptr %"R32" to ptr
  %".453" = load float, ptr %"cast_ptr.37"
  %"cast_ptr.38" = bitcast ptr %"R8" to ptr
  %".454" = load float, ptr %"cast_ptr.38"
  %"fmul.12" = fmul float %".452", %".453"
  %"fadd.12" = fadd float %"fmul.12", %".454"
  %".455" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".455"
  ; FFMA R8, R35, R34, R8
  %"cast_ptr.39" = bitcast ptr %"R35" to ptr
  %".458" = load float, ptr %"cast_ptr.39"
  %"cast_ptr.40" = bitcast ptr %"R34" to ptr
  %".459" = load float, ptr %"cast_ptr.40"
  %"cast_ptr.41" = bitcast ptr %"R8" to ptr
  %".460" = load float, ptr %"cast_ptr.41"
  %"fmul.13" = fmul float %".458", %".459"
  %"fadd.13" = fadd float %"fmul.13", %".460"
  %".461" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".461"
  ; FFMA R8, R37, R36, R8
  %"cast_ptr.42" = bitcast ptr %"R37" to ptr
  %".464" = load float, ptr %"cast_ptr.42"
  %"cast_ptr.43" = bitcast ptr %"R36" to ptr
  %".465" = load float, ptr %"cast_ptr.43"
  %"cast_ptr.44" = bitcast ptr %"R8" to ptr
  %".466" = load float, ptr %"cast_ptr.44"
  %"fmul.14" = fmul float %".464", %".465"
  %"fadd.14" = fadd float %"fmul.14", %".466"
  %".467" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".467"
  ; FFMA R7, R39, R38, R8
  %"cast_ptr.45" = bitcast ptr %"R39" to ptr
  %".470" = load float, ptr %"cast_ptr.45"
  %"cast_ptr.46" = bitcast ptr %"R38" to ptr
  %".471" = load float, ptr %"cast_ptr.46"
  %"cast_ptr.47" = bitcast ptr %"R8" to ptr
  %".472" = load float, ptr %"cast_ptr.47"
  %"fmul.15" = fmul float %".470", %".471"
  %"fadd.15" = fadd float %"fmul.15", %".472"
  %".473" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".473"
  ; @P1 BRA `(.L_x_12)
  %".476" = load i1, ptr %"P1"
  %".477" = icmp eq i1 %".476", 1
  br i1 %".477", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".480" = load i32, ptr %"R6"
  %".481" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".480", 4
  %".482" = xor i1 %"cmp.6", -1
  %".483" = and i1 %"cmp.6", %".481"
  %".484" = and i1 %".482", %".481"
  store i1 %".483", ptr %"P1"
  ; @!P1 BRA `(.L_x_13)
  %".487" = load i1, ptr %"P1"
  %".488" = icmp ne i1 %".487", 1
  br i1 %".488", label %".L_x_13", label %".L_x_11_split_0x0570"
.L_x_11_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".491" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".491" to i64
  %".492" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".492" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %"inttoptr_bytes.32" = inttoptr i64 %"or.32" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".493" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".494" = bitcast ptr %"R8" to ptr
  store float %".493", ptr %".494"
  ; LDG.E.SYS R9, [UR4]
  %".497" = load i32, ptr %"UR4"
  %"zext.66" = zext i32 %".497" to i64
  %".498" = load i32, ptr %"UR5"
  %"zext.67" = zext i32 %".498" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".499" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".500" = bitcast ptr %"R9" to ptr
  store float %".499", ptr %".500"
  ; LDG.E.SYS R11, [R2+0x4]
  %".503" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".503" to i64
  %".504" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".504" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".505" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".506" = bitcast ptr %"R11" to ptr
  store float %".505", ptr %".506"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".509" = load i32, ptr %"UR4"
  %"zext.70" = zext i32 %".509" to i64
  %".510" = load i32, ptr %"UR5"
  %"zext.71" = zext i32 %".510" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %"ptr_plus_imm.31" = add i64 %"or.35", 4
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".511" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".512" = bitcast ptr %"R10" to ptr
  store float %".511", ptr %".512"
  ; LDG.E.SYS R13, [R2+0x8]
  %".515" = load i32, ptr %"R2"
  %"zext.72" = zext i32 %".515" to i64
  %".516" = load i32, ptr %"R3"
  %"zext.73" = zext i32 %".516" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %"ptr_plus_imm.32" = add i64 %"or.36", 8
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".517" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".518" = bitcast ptr %"R13" to ptr
  store float %".517", ptr %".518"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".521" = load i32, ptr %"UR4"
  %"zext.74" = zext i32 %".521" to i64
  %".522" = load i32, ptr %"UR5"
  %"zext.75" = zext i32 %".522" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %"ptr_plus_imm.33" = add i64 %"or.37", 8
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".523" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".524" = bitcast ptr %"R12" to ptr
  store float %".523", ptr %".524"
  ; LDG.E.SYS R15, [R2+0xc]
  %".527" = load i32, ptr %"R2"
  %"zext.76" = zext i32 %".527" to i64
  %".528" = load i32, ptr %"R3"
  %"zext.77" = zext i32 %".528" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %"ptr_plus_imm.34" = add i64 %"or.38", 12
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".529" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".530" = bitcast ptr %"R15" to ptr
  store float %".529", ptr %".530"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".533" = load i32, ptr %"UR4"
  %"zext.78" = zext i32 %".533" to i64
  %".534" = load i32, ptr %"UR5"
  %"zext.79" = zext i32 %".534" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %"ptr_plus_imm.35" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".535" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".536" = bitcast ptr %"R14" to ptr
  store float %".535", ptr %".536"
  ; LDG.E.SYS R17, [R2+0x10]
  %".539" = load i32, ptr %"R2"
  %"zext.80" = zext i32 %".539" to i64
  %".540" = load i32, ptr %"R3"
  %"zext.81" = zext i32 %".540" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %"ptr_plus_imm.36" = add i64 %"or.40", 16
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".541" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".542" = bitcast ptr %"R17" to ptr
  store float %".541", ptr %".542"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".545" = load i32, ptr %"UR4"
  %"zext.82" = zext i32 %".545" to i64
  %".546" = load i32, ptr %"UR5"
  %"zext.83" = zext i32 %".546" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %"ptr_plus_imm.37" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".547" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".548" = bitcast ptr %"R16" to ptr
  store float %".547", ptr %".548"
  ; LDG.E.SYS R19, [R2+0x14]
  %".551" = load i32, ptr %"R2"
  %"zext.84" = zext i32 %".551" to i64
  %".552" = load i32, ptr %"R3"
  %"zext.85" = zext i32 %".552" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %"ptr_plus_imm.38" = add i64 %"or.42", 20
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".553" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".554" = bitcast ptr %"R19" to ptr
  store float %".553", ptr %".554"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".557" = load i32, ptr %"UR4"
  %"zext.86" = zext i32 %".557" to i64
  %".558" = load i32, ptr %"UR5"
  %"zext.87" = zext i32 %".558" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %"ptr_plus_imm.39" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".559" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".560" = bitcast ptr %"R18" to ptr
  store float %".559", ptr %".560"
  ; LDG.E.SYS R21, [R2+0x18]
  %".563" = load i32, ptr %"R2"
  %"zext.88" = zext i32 %".563" to i64
  %".564" = load i32, ptr %"R3"
  %"zext.89" = zext i32 %".564" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %"ptr_plus_imm.40" = add i64 %"or.44", 24
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".565" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".566" = bitcast ptr %"R21" to ptr
  store float %".565", ptr %".566"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".569" = load i32, ptr %"UR4"
  %"zext.90" = zext i32 %".569" to i64
  %".570" = load i32, ptr %"UR5"
  %"zext.91" = zext i32 %".570" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %"ptr_plus_imm.41" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".571" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".572" = bitcast ptr %"R20" to ptr
  store float %".571", ptr %".572"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".575" = load i32, ptr %"R2"
  %"zext.92" = zext i32 %".575" to i64
  %".576" = load i32, ptr %"R3"
  %"zext.93" = zext i32 %".576" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %"ptr_plus_imm.42" = add i64 %"or.46", 28
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".577" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".578" = bitcast ptr %"R23" to ptr
  store float %".577", ptr %".578"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".581" = load i32, ptr %"UR4"
  %"zext.94" = zext i32 %".581" to i64
  %".582" = load i32, ptr %"UR5"
  %"zext.95" = zext i32 %".582" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %"ptr_plus_imm.43" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".583" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".584" = bitcast ptr %"R22" to ptr
  store float %".583", ptr %".584"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".587" = load i32, ptr %"UR4"
  %".588" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".587", i32 32)
  %".589" = extractvalue {i32, i1} %".588", 0
  %".590" = extractvalue {i32, i1} %".588", 1
  %".591" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".589", i32 0)
  %".592" = extractvalue {i32, i1} %".591", 0
  %".593" = extractvalue {i32, i1} %".591", 1
  %".594" = or i1 %".590", %".593"
  store i32 %".592", ptr %"UR4"
  store i1 %".594", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".598" = xor i1 1, 1
  %".599" = and i1 %".598", 1
  %".600" = and i1 %".599", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".602" = load i32, ptr %"R5"
  %".603" = add i32 %".602", 8
  %".604" = add i32 %".603", 0
  store i32 %".604", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".607" = load i32, ptr %"UR5"
  %".608" = load i1, ptr %"UP0"
  %".609" = xor i1 1, -1
  %".610" = zext i1 %".608" to i32
  %".611" = zext i1 %".609" to i32
  %"add.4" = add i32 0, %".607"
  %"add.5" = add i32 %"add.4", 0
  %"add.6" = add i32 %"add.5", %".610"
  %"add.7" = add i32 %"add.6", %".611"
  store i32 %"add.7", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".614" = load i32, ptr %"R2"
  %".615" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".614", i32 32)
  %".616" = extractvalue {i32, i1} %".615", 0
  %".617" = extractvalue {i32, i1} %".615", 1
  %".618" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".616", i32 0)
  %".619" = extractvalue {i32, i1} %".618", 0
  %".620" = extractvalue {i32, i1} %".618", 1
  %".621" = or i1 %".617", %".620"
  store i32 %".619", ptr %"R2"
  store i1 %".621", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".625" = load i32, ptr %"R6"
  %".626" = add i32 %".625", -8
  %".627" = add i32 %".626", 0
  store i32 %".627", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".630" = load i32, ptr %"R3"
  %".631" = load i1, ptr %"P1"
  %".632" = xor i1 1, -1
  %".633" = zext i1 %".631" to i32
  %".634" = zext i1 %".632" to i32
  %"add.8" = add i32 0, %".630"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".633"
  %"add.11" = add i32 %"add.10", %".634"
  store i32 %"add.11", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %"cast_ptr.48" = bitcast ptr %"R8" to ptr
  %".637" = load float, ptr %"cast_ptr.48"
  %"cast_ptr.49" = bitcast ptr %"R9" to ptr
  %".638" = load float, ptr %"cast_ptr.49"
  %"cast_ptr.50" = bitcast ptr %"R7" to ptr
  %".639" = load float, ptr %"cast_ptr.50"
  %"fmul.16" = fmul float %".637", %".638"
  %"fadd.16" = fadd float %"fmul.16", %".639"
  %".640" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".640"
  ; FFMA R8, R11, R10, R8
  %"cast_ptr.51" = bitcast ptr %"R11" to ptr
  %".643" = load float, ptr %"cast_ptr.51"
  %"cast_ptr.52" = bitcast ptr %"R10" to ptr
  %".644" = load float, ptr %"cast_ptr.52"
  %"cast_ptr.53" = bitcast ptr %"R8" to ptr
  %".645" = load float, ptr %"cast_ptr.53"
  %"fmul.17" = fmul float %".643", %".644"
  %"fadd.17" = fadd float %"fmul.17", %".645"
  %".646" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".646"
  ; FFMA R8, R13, R12, R8
  %"cast_ptr.54" = bitcast ptr %"R13" to ptr
  %".649" = load float, ptr %"cast_ptr.54"
  %"cast_ptr.55" = bitcast ptr %"R12" to ptr
  %".650" = load float, ptr %"cast_ptr.55"
  %"cast_ptr.56" = bitcast ptr %"R8" to ptr
  %".651" = load float, ptr %"cast_ptr.56"
  %"fmul.18" = fmul float %".649", %".650"
  %"fadd.18" = fadd float %"fmul.18", %".651"
  %".652" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".652"
  ; FFMA R8, R15, R14, R8
  %"cast_ptr.57" = bitcast ptr %"R15" to ptr
  %".655" = load float, ptr %"cast_ptr.57"
  %"cast_ptr.58" = bitcast ptr %"R14" to ptr
  %".656" = load float, ptr %"cast_ptr.58"
  %"cast_ptr.59" = bitcast ptr %"R8" to ptr
  %".657" = load float, ptr %"cast_ptr.59"
  %"fmul.19" = fmul float %".655", %".656"
  %"fadd.19" = fadd float %"fmul.19", %".657"
  %".658" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".658"
  ; FFMA R8, R17, R16, R8
  %"cast_ptr.60" = bitcast ptr %"R17" to ptr
  %".661" = load float, ptr %"cast_ptr.60"
  %"cast_ptr.61" = bitcast ptr %"R16" to ptr
  %".662" = load float, ptr %"cast_ptr.61"
  %"cast_ptr.62" = bitcast ptr %"R8" to ptr
  %".663" = load float, ptr %"cast_ptr.62"
  %"fmul.20" = fmul float %".661", %".662"
  %"fadd.20" = fadd float %"fmul.20", %".663"
  %".664" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".664"
  ; FFMA R8, R19, R18, R8
  %"cast_ptr.63" = bitcast ptr %"R19" to ptr
  %".667" = load float, ptr %"cast_ptr.63"
  %"cast_ptr.64" = bitcast ptr %"R18" to ptr
  %".668" = load float, ptr %"cast_ptr.64"
  %"cast_ptr.65" = bitcast ptr %"R8" to ptr
  %".669" = load float, ptr %"cast_ptr.65"
  %"fmul.21" = fmul float %".667", %".668"
  %"fadd.21" = fadd float %"fmul.21", %".669"
  %".670" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".670"
  ; FFMA R8, R21, R20, R8
  %"cast_ptr.66" = bitcast ptr %"R21" to ptr
  %".673" = load float, ptr %"cast_ptr.66"
  %"cast_ptr.67" = bitcast ptr %"R20" to ptr
  %".674" = load float, ptr %"cast_ptr.67"
  %"cast_ptr.68" = bitcast ptr %"R8" to ptr
  %".675" = load float, ptr %"cast_ptr.68"
  %"fmul.22" = fmul float %".673", %".674"
  %"fadd.22" = fadd float %"fmul.22", %".675"
  %".676" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".676"
  ; FFMA R7, R23, R22, R8
  %"cast_ptr.69" = bitcast ptr %"R23" to ptr
  %".679" = load float, ptr %"cast_ptr.69"
  %"cast_ptr.70" = bitcast ptr %"R22" to ptr
  %".680" = load float, ptr %"cast_ptr.70"
  %"cast_ptr.71" = bitcast ptr %"R8" to ptr
  %".681" = load float, ptr %"cast_ptr.71"
  %"fmul.23" = fmul float %".679", %".680"
  %"fadd.23" = fadd float %"fmul.23", %".681"
  %".682" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".682"
  br label %".L_x_13"
.L_x_13:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".686" = load i32, ptr %"R6"
  %".687" = load i1, ptr %"P0"
  %"cmp.7" = icmp ne i32 %".686", 0
  %".688" = xor i1 %"cmp.7", -1
  %".689" = or i1 %"cmp.7", %".687"
  %".690" = or i1 %".688", %".687"
  store i1 %".689", ptr %"P0"
  ; @!P0 BRA `(.L_x_9)
  %".693" = load i1, ptr %"P0"
  %".694" = icmp ne i1 %".693", 1
  br i1 %".694", label %".L_x_9", label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R8, [R2]
  %".697" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".697" to i64
  %".698" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".698" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".699" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".700" = bitcast ptr %"R8" to ptr
  store float %".699", ptr %".700"
  ; LDG.E.SYS R9, [UR4]
  %".703" = load i32, ptr %"UR4"
  %"zext.98" = zext i32 %".703" to i64
  %".704" = load i32, ptr %"UR5"
  %"zext.99" = zext i32 %".704" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".705" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".706" = bitcast ptr %"R9" to ptr
  store float %".705", ptr %".706"
  ; LDG.E.SYS R11, [R2+0x4]
  %".709" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".709" to i64
  %".710" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".710" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".711" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".712" = bitcast ptr %"R11" to ptr
  store float %".711", ptr %".712"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".715" = load i32, ptr %"UR4"
  %"zext.102" = zext i32 %".715" to i64
  %".716" = load i32, ptr %"UR5"
  %"zext.103" = zext i32 %".716" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %"ptr_plus_imm.45" = add i64 %"or.51", 4
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".717" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".718" = bitcast ptr %"R10" to ptr
  store float %".717", ptr %".718"
  ; LDG.E.SYS R13, [R2+0x8]
  %".721" = load i32, ptr %"R2"
  %"zext.104" = zext i32 %".721" to i64
  %".722" = load i32, ptr %"R3"
  %"zext.105" = zext i32 %".722" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %"ptr_plus_imm.46" = add i64 %"or.52", 8
  %"inttoptr_bytes.52" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".723" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".724" = bitcast ptr %"R13" to ptr
  store float %".723", ptr %".724"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".727" = load i32, ptr %"UR4"
  %"zext.106" = zext i32 %".727" to i64
  %".728" = load i32, ptr %"UR5"
  %"zext.107" = zext i32 %".728" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %"ptr_plus_imm.47" = add i64 %"or.53", 8
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".729" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".730" = bitcast ptr %"R12" to ptr
  store float %".729", ptr %".730"
  ; LDG.E.SYS R15, [R2+0xc]
  %".733" = load i32, ptr %"R2"
  %"zext.108" = zext i32 %".733" to i64
  %".734" = load i32, ptr %"R3"
  %"zext.109" = zext i32 %".734" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %"ptr_plus_imm.48" = add i64 %"or.54", 12
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".735" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".736" = bitcast ptr %"R15" to ptr
  store float %".735", ptr %".736"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".739" = load i32, ptr %"UR4"
  %"zext.110" = zext i32 %".739" to i64
  %".740" = load i32, ptr %"UR5"
  %"zext.111" = zext i32 %".740" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %"ptr_plus_imm.49" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".741" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".742" = bitcast ptr %"R14" to ptr
  store float %".741", ptr %".742"
  ; IADD3 R6, R6, -0x4, RZ
  %".745" = load i32, ptr %"R6"
  %".746" = add i32 %".745", -4
  %".747" = add i32 %".746", 0
  store i32 %".747", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".750" = load i32, ptr %"UR4"
  %".751" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".750", i32 16)
  %".752" = extractvalue {i32, i1} %".751", 0
  %".753" = extractvalue {i32, i1} %".751", 1
  %".754" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".752", i32 0)
  %".755" = extractvalue {i32, i1} %".754", 0
  %".756" = extractvalue {i32, i1} %".754", 1
  %".757" = or i1 %".753", %".756"
  store i32 %".755", ptr %"UR4"
  store i1 %".757", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".761" = load i32, ptr %"R5"
  %".762" = add i32 %".761", 4
  %".763" = add i32 %".762", 0
  store i32 %".763", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".766" = load i32, ptr %"R6"
  %".767" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".766", 0
  %".768" = xor i1 %"cmp.8", -1
  %".769" = and i1 %"cmp.8", %".767"
  %".770" = and i1 %".768", %".767"
  store i1 %".769", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".773" = load i32, ptr %"UR5"
  %".774" = load i1, ptr %"UP0"
  %".775" = xor i1 1, -1
  %".776" = zext i1 %".774" to i32
  %".777" = zext i1 %".775" to i32
  %"add.12" = add i32 0, %".773"
  %"add.13" = add i32 %"add.12", 0
  %"add.14" = add i32 %"add.13", %".776"
  %"add.15" = add i32 %"add.14", %".777"
  store i32 %"add.15", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %"cast_ptr.72" = bitcast ptr %"R8" to ptr
  %".780" = load float, ptr %"cast_ptr.72"
  %"cast_ptr.73" = bitcast ptr %"R9" to ptr
  %".781" = load float, ptr %"cast_ptr.73"
  %"cast_ptr.74" = bitcast ptr %"R7" to ptr
  %".782" = load float, ptr %"cast_ptr.74"
  %"fmul.24" = fmul float %".780", %".781"
  %"fadd.24" = fadd float %"fmul.24", %".782"
  %".783" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".783"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".786" = load i32, ptr %"R2"
  %".787" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".786", i32 16)
  %".788" = extractvalue {i32, i1} %".787", 0
  %".789" = extractvalue {i32, i1} %".787", 1
  %".790" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".788", i32 0)
  %".791" = extractvalue {i32, i1} %".790", 0
  %".792" = extractvalue {i32, i1} %".790", 1
  %".793" = or i1 %".789", %".792"
  store i32 %".791", ptr %"R9"
  store i1 %".793", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".797" = load i32, ptr %"R9"
  %"imad_mul.6" = mul i32 0, 0
  %"imad_add.6" = add i32 %"imad_mul.6", %".797"
  store i32 %"imad_add.6", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %"cast_ptr.75" = bitcast ptr %"R11" to ptr
  %".800" = load float, ptr %"cast_ptr.75"
  %"cast_ptr.76" = bitcast ptr %"R10" to ptr
  %".801" = load float, ptr %"cast_ptr.76"
  %"cast_ptr.77" = bitcast ptr %"R8" to ptr
  %".802" = load float, ptr %"cast_ptr.77"
  %"fmul.25" = fmul float %".800", %".801"
  %"fadd.25" = fadd float %"fmul.25", %".802"
  %".803" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".803"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".806" = load i32, ptr %"R3"
  %".807" = load i1, ptr %"P1"
  %".808" = xor i1 1, -1
  %".809" = zext i1 %".807" to i32
  %".810" = zext i1 %".808" to i32
  %"add.16" = add i32 0, %".806"
  %"add.17" = add i32 %"add.16", 0
  %"add.18" = add i32 %"add.17", %".809"
  %"add.19" = add i32 %"add.18", %".810"
  store i32 %"add.19", ptr %"R10"
  ; MOV R3, R10
  %".813" = load i32, ptr %"R10"
  store i32 %".813", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %"cast_ptr.78" = bitcast ptr %"R13" to ptr
  %".816" = load float, ptr %"cast_ptr.78"
  %"cast_ptr.79" = bitcast ptr %"R12" to ptr
  %".817" = load float, ptr %"cast_ptr.79"
  %"cast_ptr.80" = bitcast ptr %"R8" to ptr
  %".818" = load float, ptr %"cast_ptr.80"
  %"fmul.26" = fmul float %".816", %".817"
  %"fadd.26" = fadd float %"fmul.26", %".818"
  %".819" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".819"
  ; FFMA R7, R15, R14, R8
  %"cast_ptr.81" = bitcast ptr %"R15" to ptr
  %".822" = load float, ptr %"cast_ptr.81"
  %"cast_ptr.82" = bitcast ptr %"R14" to ptr
  %".823" = load float, ptr %"cast_ptr.82"
  %"cast_ptr.83" = bitcast ptr %"R8" to ptr
  %".824" = load float, ptr %"cast_ptr.83"
  %"fmul.27" = fmul float %".822", %".823"
  %"fadd.27" = fadd float %"fmul.27", %".824"
  %".825" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".825"
  ; @P0 BRA `(.L_x_10)
  %".828" = load i1, ptr %"P0"
  %".829" = icmp eq i1 %".828", 1
  br i1 %".829", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".832" = load i32, ptr %"R4"
  %".833" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".832", 0
  %".834" = xor i1 %"cmp.9", -1
  %".835" = and i1 %"cmp.9", %".833"
  %".836" = and i1 %".834", %".833"
  store i1 %".835", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".839" = load i1, ptr %"P0"
  %".840" = icmp ne i1 %".839", 1
  br i1 %".840", label %".L_x_8", label %".L_x_9_split_0x0900"
.L_x_9_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".845" = load i32, ptr %"R0"
  %".846" = load i32, ptr %"R5"
  %"imad_mul.7" = mul i32 %".845", %"Arg_4"
  %"imad_add.7" = add i32 %"imad_mul.7", %".846"
  store i32 %"imad_add.7", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".849" = load i32, ptr %"R2"
  %".850" = load i32, ptr %"R8"
  %"imad_ext1.1" = zext i32 %".849" to i64
  %"imad_ext2.1" = zext i32 %".850" to i64
  %"imad_mul.8" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".851" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.8" = add i64 %"imad_mul.8", %".851"
  %".852" = and i64 %"imad_add.8", 18446744069414584320
  %".853" = lshr i64 %".852", 32
  %"trunc32.4" = trunc i64 %".853" to i32
  %"trunc32.5" = trunc i64 %"imad_add.8" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".857" = load i32, ptr %"R5"
  %".858" = load i32, ptr %"R8"
  %"imad_ext1.2" = zext i32 %".857" to i64
  %"imad_ext2.2" = zext i32 %".858" to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %".859" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %".859"
  %".860" = and i64 %"imad_add.9", 18446744069414584320
  %".861" = lshr i64 %".860", 32
  %"trunc32.6" = trunc i64 %".861" to i32
  %"trunc32.7" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".865" = load i32, ptr %"R2"
  store i32 %".865", ptr %"R6"
  br label %".L_x_14"
.L_x_14:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".869" = load i32, ptr %"R6"
  %"imad_mul.10" = mul i32 0, 0
  %"imad_add.10" = add i32 %"imad_mul.10", %".869"
  store i32 %"imad_add.10", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".872" = load i32, ptr %"R8"
  %"zext.112" = zext i32 %".872" to i64
  %".873" = load i32, ptr %"R9"
  %"zext.113" = zext i32 %".873" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %"inttoptr_bytes.56" = inttoptr i64 %"or.56" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".874" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".875" = bitcast ptr %"R5" to ptr
  store float %".874", ptr %".875"
  ; LDG.E.SYS R2, [R2]
  %".878" = load i32, ptr %"R2"
  %"zext.114" = zext i32 %".878" to i64
  %".879" = load i32, ptr %"R3"
  %"zext.115" = zext i32 %".879" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".880" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".881" = bitcast ptr %"R2" to ptr
  store float %".880", ptr %".881"
  ; IADD3 R4, R4, -0x1, RZ
  %".884" = load i32, ptr %"R4"
  %".885" = add i32 %".884", -1
  %".886" = add i32 %".885", 0
  store i32 %".886", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".889" = load i32, ptr %"R4"
  %".890" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".889", 0
  %".891" = xor i1 %"cmp.10", -1
  %".892" = and i1 %"cmp.10", %".890"
  %".893" = and i1 %".891", %".890"
  store i1 %".892", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".896" = load i32, ptr %"R6"
  %".897" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".896", i32 4)
  %".898" = extractvalue {i32, i1} %".897", 0
  %".899" = extractvalue {i32, i1} %".897", 1
  %".900" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".898", i32 0)
  %".901" = extractvalue {i32, i1} %".900", 0
  %".902" = extractvalue {i32, i1} %".900", 1
  %".903" = or i1 %".899", %".902"
  store i32 %".901", ptr %"R6"
  store i1 %".903", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".907" = load i32, ptr %"R8"
  %".908" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".907", i32 4)
  %".909" = extractvalue {i32, i1} %".908", 0
  %".910" = extractvalue {i32, i1} %".908", 1
  %".911" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".909", i32 0)
  %".912" = extractvalue {i32, i1} %".911", 0
  %".913" = extractvalue {i32, i1} %".911", 1
  %".914" = or i1 %".910", %".913"
  store i32 %".912", ptr %"R8"
  store i1 %".914", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".918" = load i32, ptr %"R3"
  %".919" = load i1, ptr %"P1"
  %".920" = xor i1 1, -1
  %".921" = zext i1 %".919" to i32
  %".922" = zext i1 %".920" to i32
  %"add.20" = add i32 0, %".918"
  %"add.21" = add i32 %"add.20", 0
  %"add.22" = add i32 %"add.21", %".921"
  %"add.23" = add i32 %"add.22", %".922"
  store i32 %"add.23", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".925" = load i32, ptr %"R9"
  %".926" = load i1, ptr %"P2"
  %".927" = xor i1 1, -1
  %".928" = zext i1 %".926" to i32
  %".929" = zext i1 %".927" to i32
  %"add.24" = add i32 0, %".925"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".928"
  %"add.27" = add i32 %"add.26", %".929"
  store i32 %"add.27", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %"cast_ptr.84" = bitcast ptr %"R2" to ptr
  %".932" = load float, ptr %"cast_ptr.84"
  %"cast_ptr.85" = bitcast ptr %"R5" to ptr
  %".933" = load float, ptr %"cast_ptr.85"
  %"cast_ptr.86" = bitcast ptr %"R7" to ptr
  %".934" = load float, ptr %"cast_ptr.86"
  %"fmul.28" = fmul float %".932", %".933"
  %"fadd.28" = fadd float %"fmul.28", %".934"
  %".935" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".935"
  ; @P0 BRA `(.L_x_14)
  %".938" = load i1, ptr %"P0"
  %".939" = icmp eq i1 %".938", 1
  br i1 %".939", label %".L_x_14", label %".L_x_8"
.L_x_8:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".944" = load i32, ptr %"R0"
  %".945" = load i32, ptr %"R5"
  %"imad_ext1.3" = zext i32 %".944" to i64
  %"imad_ext2.3" = zext i32 %".945" to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %".946" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %".946"
  %".947" = and i64 %"imad_add.11", 18446744069414584320
  %".948" = lshr i64 %".947", 32
  %"trunc32.8" = trunc i64 %".948" to i32
  %"trunc32.9" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".952" = load i32, ptr %"R2"
  %"zext.116" = zext i32 %".952" to i64
  %".953" = load i32, ptr %"R3"
  %"zext.117" = zext i32 %".953" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".954" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".955" = bitcast ptr %"R2" to ptr
  store float %".954", ptr %".955"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".958" = load i32, ptr %"R0"
  %".959" = load i32, ptr %"R5"
  %"imad_ext1.4" = zext i32 %".958" to i64
  %"imad_ext2.4" = zext i32 %".959" to i64
  %"imad_mul.12" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %".960" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.12" = add i64 %"imad_mul.12", %".960"
  %".961" = and i64 %"imad_add.12", 18446744069414584320
  %".962" = lshr i64 %".961", 32
  %"trunc32.10" = trunc i64 %".962" to i32
  %"trunc32.11" = trunc i64 %"imad_add.12" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %"cast_ptr.87" = bitcast ptr %"R2" to ptr
  %".966" = load float, ptr %"cast_ptr.87"
  %"cast_ptr.88" = bitcast ptr %"R7" to ptr
  %".967" = load float, ptr %"cast_ptr.88"
  %"fadd.29" = fadd float %".966", %".967"
  %".968" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".968"
  ; STG.E.SYS [R4], R7
  %"cast_ptr.89" = bitcast ptr %"R7" to ptr
  %".971" = load float, ptr %"cast_ptr.89"
  %".972" = load i32, ptr %"R4"
  %"zext.118" = zext i32 %".972" to i64
  %".973" = load i32, ptr %"R5"
  %"zext.119" = zext i32 %".973" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".971", ptr addrspace(1) %"ptr_cast_for_access.59"
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
  %"cast_ptr" = bitcast ptr %"R0" to ptr
  %".41" = load float, ptr %"cast_ptr"
  %".42" = fdiv float 0x3ff0000000000000, %".41"
  %".43" = bitcast ptr %"R0" to ptr
  store float %".42", ptr %".43"
  ; IADD3 R2, R0, 0xffffffe, RZ
  %".46" = load i32, ptr %"R0"
  %".47" = add i32 %".46", 268435454
  %".48" = add i32 %".47", 0
  store i32 %".48", ptr %"R2"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %"cast_ptr.1" = bitcast ptr %"R2" to ptr
  %".51" = load float, ptr %"cast_ptr.1"
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
  store i32 0, ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".274" = load i32, ptr %"R15"
  %".275" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".274", 0
  %".276" = xor i1 %"cmp.9", -1
  %".277" = and i1 %"cmp.9", %".275"
  %".278" = and i1 %".276", %".275"
  store i1 %".277", ptr %"P2"
  ; @!P0 BRA `(.L_x_17)
  %".281" = load i1, ptr %"P0"
  %".282" = icmp ne i1 %".281", 1
  br i1 %".282", label %".L_x_17", label %".L_x_20_split_0x0360"
.L_x_20_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".285" = load i32, ptr %"R14"
  %".286" = load i32, ptr %"R16"
  %"imad_mul.19" = mul i32 %".285", 1
  %"imad_add.19" = add i32 %"imad_mul.19", %".286"
  store i32 %"imad_add.19", ptr %"R17"
  ; UMOV UR4, URZ
  store i32 0, ptr %"UR4"
  br label %".L_x_18"
.L_x_18:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"imad_mul.20" = mul i32 0, 0
  %"imad_add.20" = add i32 %"imad_mul.20", %"Arg_2"
  store i32 %"imad_add.20", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".296" = load i32, ptr %"R17"
  %".297" = load i32, ptr %"R2"
  %"imad_ext1.2" = zext i32 %".296" to i64
  %"imad_ext2.2" = zext i32 %".297" to i64
  %"imad_mul.21" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %".298" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.21" = add i64 %"imad_mul.21", %".298"
  %".299" = and i64 %"imad_add.21", 18446744069414584320
  %".300" = lshr i64 %".299", 32
  %"trunc32" = trunc i64 %".300" to i32
  %"trunc32.1" = trunc i64 %"imad_add.21" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".304" = load i32, ptr %"R23"
  %".305" = load i32, ptr %"R2"
  %"imad_ext1.3" = zext i32 %".304" to i64
  %"imad_ext2.3" = zext i32 4 to i64
  %"imad_mul.22" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %"imad_ext3.2" = zext i32 %".305" to i64
  %"imad_add.22" = add i64 %"imad_mul.22", %"imad_ext3.2"
  %".306" = and i64 %"imad_add.22", 18446744069414584320
  %".307" = lshr i64 %".306", 32
  %"trunc32.2" = trunc i64 %".307" to i32
  %"trunc32.3" = trunc i64 %"imad_add.22" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; LDG.E.SYS R2, [R2]
  %".311" = load i32, ptr %"R2"
  %"zext" = zext i32 %".311" to i64
  %".312" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".312" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".313" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".314" = bitcast ptr %"R2" to ptr
  store float %".313", ptr %".314"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".317" = load i32, ptr %"R23"
  %".318" = load i32, ptr %"R4"
  %"imad_ext1.4" = zext i32 %".317" to i64
  %"imad_ext2.4" = zext i32 4 to i64
  %"imad_mul.23" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3.3" = zext i32 %".318" to i64
  %"imad_add.23" = add i64 %"imad_mul.23", %"imad_ext3.3"
  %".319" = and i64 %"imad_add.23", 18446744069414584320
  %".320" = lshr i64 %".319", 32
  %"trunc32.4" = trunc i64 %".320" to i32
  %"trunc32.5" = trunc i64 %"imad_add.23" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".324" = load i32, ptr %"R4"
  %"zext.2" = zext i32 %".324" to i64
  %".325" = load i32, ptr %"R5"
  %"zext.3" = zext i32 %".325" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".326" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".327" = bitcast ptr %"R4" to ptr
  store float %".326", ptr %".327"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".330" = load i32, ptr %"R23"
  %".331" = load i32, ptr %"R6"
  %"imad_ext1.5" = zext i32 %".330" to i64
  %"imad_ext2.5" = zext i32 4 to i64
  %"imad_mul.24" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %"imad_ext3.4" = zext i32 %".331" to i64
  %"imad_add.24" = add i64 %"imad_mul.24", %"imad_ext3.4"
  %".332" = and i64 %"imad_add.24", 18446744069414584320
  %".333" = lshr i64 %".332", 32
  %"trunc32.6" = trunc i64 %".333" to i32
  %"trunc32.7" = trunc i64 %"imad_add.24" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".337" = load i32, ptr %"R6"
  %"zext.4" = zext i32 %".337" to i64
  %".338" = load i32, ptr %"R7"
  %"zext.5" = zext i32 %".338" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".339" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".340" = bitcast ptr %"R6" to ptr
  store float %".339", ptr %".340"
  ; LDG.E.SYS R8, [R8]
  %".343" = load i32, ptr %"R8"
  %"zext.6" = zext i32 %".343" to i64
  %".344" = load i32, ptr %"R9"
  %"zext.7" = zext i32 %".344" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"inttoptr_bytes.3" = inttoptr i64 %"or.3" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".345" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".346" = bitcast ptr %"R8" to ptr
  store float %".345", ptr %".346"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".349" = load i32, ptr %"UR4"
  %".350" = add i32 %".349", 4
  %".351" = add i32 %".350", 0
  store i32 %".351", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".354" = load i32, ptr %"R20"
  %".355" = load i32, ptr %"UR4"
  %".356" = add i32 %".354", %".355"
  %".357" = add i32 %".356", 0
  store i32 %".357", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".360" = load i32, ptr %"R18"
  %".361" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".360", 0
  %".362" = xor i1 %"cmp.10", -1
  %".363" = and i1 %"cmp.10", %".361"
  %".364" = and i1 %".362", %".361"
  store i1 %".363", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".367" = load i32, ptr %"R23"
  %".368" = load i32, ptr %"R17"
  %"imad_mul.25" = mul i32 %".367", 4
  %"imad_add.25" = add i32 %"imad_mul.25", %".368"
  store i32 %"imad_add.25", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %"cast_ptr.2" = bitcast ptr %"R2" to ptr
  %".371" = load float, ptr %"cast_ptr.2"
  %"cast_ptr.3" = bitcast ptr %"R11" to ptr
  %".372" = load float, ptr %"cast_ptr.3"
  %".373" = xor i1 1, -1
  %".374" = fcmp olt float %".371", %".372"
  %".375" = fcmp ogt float %".371", %".372"
  %"mnmx_min" = select  i1 %".374", float %".371", float %".372"
  %"mnmx_max" = select  i1 %".375", float %".371", float %".372"
  %"mnmx_final" = select  i1 %".373", float %"mnmx_min", float %"mnmx_max"
  %".376" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final", ptr %".376"
  ; FMNMX R11, R11, R4, !PT
  %"cast_ptr.4" = bitcast ptr %"R11" to ptr
  %".379" = load float, ptr %"cast_ptr.4"
  %"cast_ptr.5" = bitcast ptr %"R4" to ptr
  %".380" = load float, ptr %"cast_ptr.5"
  %".381" = xor i1 1, -1
  %".382" = fcmp olt float %".379", %".380"
  %".383" = fcmp ogt float %".379", %".380"
  %"mnmx_min.1" = select  i1 %".382", float %".379", float %".380"
  %"mnmx_max.1" = select  i1 %".383", float %".379", float %".380"
  %"mnmx_final.1" = select  i1 %".381", float %"mnmx_min.1", float %"mnmx_max.1"
  %".384" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.1", ptr %".384"
  ; FMNMX R11, R11, R6, !PT
  %"cast_ptr.6" = bitcast ptr %"R11" to ptr
  %".387" = load float, ptr %"cast_ptr.6"
  %"cast_ptr.7" = bitcast ptr %"R6" to ptr
  %".388" = load float, ptr %"cast_ptr.7"
  %".389" = xor i1 1, -1
  %".390" = fcmp olt float %".387", %".388"
  %".391" = fcmp ogt float %".387", %".388"
  %"mnmx_min.2" = select  i1 %".390", float %".387", float %".388"
  %"mnmx_max.2" = select  i1 %".391", float %".387", float %".388"
  %"mnmx_final.2" = select  i1 %".389", float %"mnmx_min.2", float %"mnmx_max.2"
  %".392" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.2", ptr %".392"
  ; FMNMX R11, R11, R8, !PT
  %"cast_ptr.8" = bitcast ptr %"R11" to ptr
  %".395" = load float, ptr %"cast_ptr.8"
  %"cast_ptr.9" = bitcast ptr %"R8" to ptr
  %".396" = load float, ptr %"cast_ptr.9"
  %".397" = xor i1 1, -1
  %".398" = fcmp olt float %".395", %".396"
  %".399" = fcmp ogt float %".395", %".396"
  %"mnmx_min.3" = select  i1 %".398", float %".395", float %".396"
  %"mnmx_max.3" = select  i1 %".399", float %".395", float %".396"
  %"mnmx_final.3" = select  i1 %".397", float %"mnmx_min.3", float %"mnmx_max.3"
  %".400" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.3", ptr %".400"
  ; @P1 BRA `(.L_x_18)
  %".403" = load i1, ptr %"P1"
  %".404" = icmp eq i1 %".403", 1
  br i1 %".404", label %".L_x_18", label %".L_x_17"
.L_x_17:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".407" = load i32, ptr %"R13"
  %".408" = load i32, ptr %"R16"
  %"imad_mul.26" = mul i32 %".407", 1
  %"imad_add.26" = add i32 %"imad_mul.26", %".408"
  store i32 %"imad_add.26", ptr %"R4"
  ; @!P2 BRA `(.L_x_19)
  %".411" = load i1, ptr %"P2"
  %".412" = icmp ne i1 %".411", 1
  br i1 %".412", label %".L_x_19", label %".L_x_17_split_0x04d0"
.L_x_17_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".415" = load i32, ptr %"R12"
  %".416" = load i32, ptr %"UR4"
  %".417" = add i32 %".415", %".416"
  %".418" = add i32 %".417", 0
  store i32 %".418", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".423" = load i32, ptr %"R5"
  %".424" = load i32, ptr %"R4"
  %"imad_mul.27" = mul i32 %".423", %"Arg_2"
  %"imad_add.27" = add i32 %"imad_mul.27", %".424"
  store i32 %"imad_add.27", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".427" = load i32, ptr %"R2"
  %".428" = load i32, ptr %"R7"
  %"imad_ext1.6" = zext i32 %".427" to i64
  %"imad_ext2.6" = zext i32 %".428" to i64
  %"imad_mul.28" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".429" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.28" = add i64 %"imad_mul.28", %".429"
  %".430" = and i64 %"imad_add.28", 18446744069414584320
  %".431" = lshr i64 %".430", 32
  %"trunc32.8" = trunc i64 %".431" to i32
  %"trunc32.9" = trunc i64 %"imad_add.28" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".435" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".435" to i64
  %".436" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".436" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"inttoptr_bytes.4" = inttoptr i64 %"or.4" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".437" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".438" = bitcast ptr %"R2" to ptr
  store float %".437", ptr %".438"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".441" = load i32, ptr %"R15"
  %".442" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".441", 1
  %".443" = xor i1 %"cmp.11", -1
  %".444" = and i1 %"cmp.11", %".442"
  %".445" = and i1 %".443", %".442"
  store i1 %".444", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %"cast_ptr.10" = bitcast ptr %"R11" to ptr
  %".448" = load float, ptr %"cast_ptr.10"
  %"cast_ptr.11" = bitcast ptr %"R2" to ptr
  %".449" = load float, ptr %"cast_ptr.11"
  %".450" = xor i1 1, -1
  %".451" = fcmp olt float %".448", %".449"
  %".452" = fcmp ogt float %".448", %".449"
  %"mnmx_min.4" = select  i1 %".451", float %".448", float %".449"
  %"mnmx_max.4" = select  i1 %".452", float %".448", float %".449"
  %"mnmx_final.4" = select  i1 %".450", float %"mnmx_min.4", float %"mnmx_max.4"
  %".453" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.4", ptr %".453"
  ; @!P1 BRA `(.L_x_19)
  %".456" = load i1, ptr %"P1"
  %".457" = icmp ne i1 %".456", 1
  br i1 %".457", label %".L_x_19", label %".L_x_17_split_0x0550"
.L_x_17_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".460" = load i32, ptr %"R15"
  %".461" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".460", 2
  %".462" = xor i1 %"cmp.12", -1
  %".463" = and i1 %"cmp.12", %".461"
  %".464" = and i1 %".462", %".461"
  store i1 %".463", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".467" = load i32, ptr %"R5"
  %".468" = add i32 %".467", 1
  %".469" = add i32 %".468", 0
  store i32 %".469", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".472" = load i32, ptr %"R2"
  %".473" = load i32, ptr %"R4"
  %"imad_mul.29" = mul i32 %".472", %"Arg_2"
  %"imad_add.29" = add i32 %"imad_mul.29", %".473"
  store i32 %"imad_add.29", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".476" = load i1, ptr %"P1"
  %".477" = icmp eq i1 %".476", 1
  br i1 %".477", label %".L_x_17_split_0x0550_conditionalExpr_0x0580", label %".L_x_17_split_0x0590"
.L_x_17_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".480" = load i32, ptr %"R5"
  %".481" = add i32 %".480", 2
  %".482" = add i32 %".481", 0
  store i32 %".482", ptr %"R3"
  ; BRA `(.L_x_17_split_0x0590)
  br label %".L_x_17_split_0x0590"
.L_x_17_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".487" = load i1, ptr %"P1"
  %".488" = icmp eq i1 %".487", 1
  br i1 %".488", label %".L_x_17_split_0x0590_conditionalExpr_0x0590", label %".L_x_17_split_0x05a0"
.L_x_17_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".491" = load i32, ptr %"R3"
  %".492" = load i32, ptr %"R4"
  %"imad_mul.30" = mul i32 %".491", %"Arg_2"
  %"imad_add.30" = add i32 %"imad_mul.30", %".492"
  store i32 %"imad_add.30", ptr %"R4"
  ; BRA `(.L_x_17_split_0x05a0)
  br label %".L_x_17_split_0x05a0"
.L_x_17_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".497" = load i32, ptr %"R2"
  %".498" = load i32, ptr %"R7"
  %"imad_ext1.7" = zext i32 %".497" to i64
  %"imad_ext2.7" = zext i32 %".498" to i64
  %"imad_mul.31" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".499" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.31" = add i64 %"imad_mul.31", %".499"
  %".500" = and i64 %"imad_add.31", 18446744069414584320
  %".501" = lshr i64 %".500", 32
  %"trunc32.10" = trunc i64 %".501" to i32
  %"trunc32.11" = trunc i64 %"imad_add.31" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".505" = load i1, ptr %"P1"
  %".506" = icmp eq i1 %".505", 1
  br i1 %".506", label %".L_x_17_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_17_split_0x05c0"
.L_x_17_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".509" = load i32, ptr %"R4"
  %".510" = load i32, ptr %"R7"
  %"imad_ext1.8" = zext i32 %".509" to i64
  %"imad_ext2.8" = zext i32 %".510" to i64
  %"imad_mul.32" = mul i64 %"imad_ext1.8", %"imad_ext2.8"
  %".511" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.32" = add i64 %"imad_mul.32", %".511"
  %".512" = and i64 %"imad_add.32", 18446744069414584320
  %".513" = lshr i64 %".512", 32
  %"trunc32.12" = trunc i64 %".513" to i32
  %"trunc32.13" = trunc i64 %"imad_add.32" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_17_split_0x05c0)
  br label %".L_x_17_split_0x05c0"
.L_x_17_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".519" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".519" to i64
  %".520" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".520" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"inttoptr_bytes.5" = inttoptr i64 %"or.5" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".521" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".522" = bitcast ptr %"R2" to ptr
  store float %".521", ptr %".522"
  ; @P1 LDG.E.SYS R4, [R4]
  %".525" = load i1, ptr %"P1"
  %".526" = icmp eq i1 %".525", 1
  br i1 %".526", label %".L_x_17_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_17_split_0x05e0"
.L_x_17_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".529" = load i32, ptr %"R4"
  %"zext.12" = zext i32 %".529" to i64
  %".530" = load i32, ptr %"R5"
  %"zext.13" = zext i32 %".530" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"inttoptr_bytes.6" = inttoptr i64 %"or.6" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".531" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".532" = bitcast ptr %"R4" to ptr
  store float %".531", ptr %".532"
  ; BRA `(.L_x_17_split_0x05e0)
  br label %".L_x_17_split_0x05e0"
.L_x_17_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %"cast_ptr.12" = bitcast ptr %"R11" to ptr
  %".537" = load float, ptr %"cast_ptr.12"
  %"cast_ptr.13" = bitcast ptr %"R2" to ptr
  %".538" = load float, ptr %"cast_ptr.13"
  %".539" = xor i1 1, -1
  %".540" = fcmp olt float %".537", %".538"
  %".541" = fcmp ogt float %".537", %".538"
  %"mnmx_min.5" = select  i1 %".540", float %".537", float %".538"
  %"mnmx_max.5" = select  i1 %".541", float %".537", float %".538"
  %"mnmx_final.5" = select  i1 %".539", float %"mnmx_min.5", float %"mnmx_max.5"
  %".542" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.5", ptr %".542"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".545" = load i1, ptr %"P1"
  %".546" = icmp eq i1 %".545", 1
  br i1 %".546", label %".L_x_17_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_19"
.L_x_17_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %"cast_ptr.14" = bitcast ptr %"R11" to ptr
  %".549" = load float, ptr %"cast_ptr.14"
  %"cast_ptr.15" = bitcast ptr %"R4" to ptr
  %".550" = load float, ptr %"cast_ptr.15"
  %".551" = xor i1 1, -1
  %".552" = fcmp olt float %".549", %".550"
  %".553" = fcmp ogt float %".549", %".550"
  %"mnmx_min.6" = select  i1 %".552", float %".549", float %".550"
  %"mnmx_max.6" = select  i1 %".553", float %".549", float %".550"
  %"mnmx_final.6" = select  i1 %".551", float %"mnmx_min.6", float %"mnmx_max.6"
  %".554" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.6", ptr %".554"
  ; BRA `(.L_x_19)
  br label %".L_x_19"
.L_x_19:
  ; IADD3 R16, R16, 0x1, RZ
  %".559" = load i32, ptr %"R16"
  %".560" = add i32 %".559", 1
  %".561" = add i32 %".560", 0
  store i32 %".561", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".564" = load i32, ptr %"R16"
  %".565" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".564", %"Arg_3"
  %".566" = xor i1 %"cmp.13", -1
  %".567" = and i1 %"cmp.13", %".565"
  %".568" = and i1 %".566", %".565"
  store i1 %".567", ptr %"P1"
  ; @!P1 BRA `(.L_x_20)
  %".571" = load i1, ptr %"P1"
  %".572" = icmp ne i1 %".571", 1
  br i1 %".572", label %".L_x_20", label %".L_x_16"
.L_x_16:
  ; IMAD R3, R21.reuse, R19, R10
  %".575" = load i32, ptr %"R21"
  %".576" = load i32, ptr %"R19"
  %".577" = load i32, ptr %"R10"
  %"imad_mul.33" = mul i32 %".575", %".576"
  %"imad_add.33" = add i32 %"imad_mul.33", %".577"
  store i32 %"imad_add.33", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"imad_mul.34" = mul i32 0, 0
  %"imad_add.34" = add i32 %"imad_mul.34", 4
  store i32 %"imad_add.34", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".582" = load i32, ptr %"R21"
  %".583" = load i32, ptr %"R3"
  %".584" = load i32, ptr %"R0"
  %"imad_mul.35" = mul i32 %".582", %".583"
  %"imad_add.35" = add i32 %"imad_mul.35", %".584"
  store i32 %"imad_add.35", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".587" = load i32, ptr %"R3"
  %".588" = load i32, ptr %"R2"
  %"imad_ext1.9" = zext i32 %".587" to i64
  %"imad_ext2.9" = zext i32 %".588" to i64
  %"imad_mul.36" = mul i64 %"imad_ext1.9", %"imad_ext2.9"
  %".589" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.36" = add i64 %"imad_mul.36", %".589"
  %".590" = and i64 %"imad_add.36", 18446744069414584320
  %".591" = lshr i64 %".590", 32
  %"trunc32.14" = trunc i64 %".591" to i32
  %"trunc32.15" = trunc i64 %"imad_add.36" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".595" = load i32, ptr %"R11"
  %".596" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".596" to i64
  %".597" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".597" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"inttoptr_bytes.7" = inttoptr i64 %"or.7" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  store i32 %".595", ptr addrspace(1) %"ptr_cast_for_access.7"
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
  %"cast_ptr" = bitcast ptr %"R2" to ptr
  %".57" = load float, ptr %"cast_ptr"
  %".58" = xor i1 1, -1
  %".59" = fcmp olt float              0x0, %".57"
  %".60" = fcmp ogt float              0x0, %".57"
  %"mnmx_min" = select  i1 %".59", float              0x0, float %".57"
  %"mnmx_max" = select  i1 %".60", float              0x0, float %".57"
  %"mnmx_final" = select  i1 %".58", float %"mnmx_min", float %"mnmx_max"
  %".61" = bitcast ptr %"R7" to ptr
  store float %"mnmx_final", ptr %".61"
  ; STG.E.SYS [R4], R7
  %"cast_ptr.1" = bitcast ptr %"R7" to ptr
  %".64" = load float, ptr %"cast_ptr.1"
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
  %".100" = bitcast ptr %"R12" to ptr
  store float              0x0, ptr %".100"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".103" = load i32, ptr %"R5"
  %".104" = sub i32 0, %".103"
  %".105" = add i32 %".104", %"Arg_4"
  %".106" = add i32 %".105", 0
  store i32 %".106", ptr %"R5"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".109" = load i32, ptr %"R4"
  %".110" = xor i1 1, -1
  %".111" = and i32 %".109", 3
  store i32 %".111", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".114" = load i32, ptr %"R5"
  %".115" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".114", 3
  %".116" = xor i1 %"cmp.5", -1
  %".117" = and i1 %"cmp.5", %".115"
  %".118" = and i1 %".116", %".115"
  store i1 %".117", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".121" = load i32, ptr %"R4"
  %".122" = sub i32 0, %"Arg_4"
  %".123" = add i32 %".121", %".122"
  %".124" = add i32 %".123", 0
  store i32 %".124", ptr %"R26"
  br label %".L_x_28"
.L_x_28:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".128" = load i32, ptr %"R10"
  %".129" = load i32, ptr %"R3"
  %"imad_mul.5" = mul i32 %".128", %"Arg_3"
  %"imad_add.5" = add i32 %"imad_mul.5", %".129"
  store i32 %"imad_add.5", ptr %"R11"
  ; MOV R8, RZ
  store i32 0, ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".134" = load i32, ptr %"R0"
  %".135" = load i32, ptr %"R10"
  %"imad_mul.6" = mul i32 %".134", %"Arg_5"
  %"imad_add.6" = add i32 %"imad_mul.6", %".135"
  store i32 %"imad_add.6", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".138" = load i32, ptr %"R10"
  %".139" = add i32 %".138", 1
  %".140" = add i32 %".139", 0
  store i32 %".140", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".143" = load i32, ptr %"R11"
  %".144" = load i32, ptr %"R2"
  %"imad_mul.7" = mul i32 %".143", %"Arg_3"
  %"imad_add.7" = add i32 %"imad_mul.7", %".144"
  store i32 %"imad_add.7", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".147" = load i32, ptr %"R10"
  %".148" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".147", %"Arg_5"
  %".149" = xor i1 %"cmp.6", -1
  %".150" = and i1 %"cmp.6", %".148"
  %".151" = and i1 %".149", %".148"
  store i1 %".150", ptr %"P1"
  br label %".L_x_27"
.L_x_27:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".155" = load i32, ptr %"R9"
  %".156" = load i32, ptr %"R8"
  %"imad_mul.8" = mul i32 %".155", %"Arg_4"
  %"imad_add.8" = add i32 %"imad_mul.8", %".156"
  store i32 %"imad_add.8", ptr %"R6"
  ; UMOV UR4, URZ
  store i32 0, ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".161" = load i32, ptr %"R4"
  %".162" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".161", 0
  %".163" = xor i1 %"cmp.7", -1
  %".164" = and i1 %"cmp.7", %".162"
  %".165" = and i1 %".163", %".162"
  store i1 %".164", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".168" = load i32, ptr %"R6"
  %"imad_mul.9" = mul i32 %".168", %"Arg_4"
  %"imad_add.9" = add i32 %"imad_mul.9", 0
  store i32 %"imad_add.9", ptr %"R29"
  ; @!P0 BRA `(.L_x_24)
  %".171" = load i1, ptr %"P0"
  %".172" = icmp ne i1 %".171", 1
  br i1 %".172", label %".L_x_24", label %".L_x_27_split_0x0260"
.L_x_27_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".177" = load i32, ptr %"R5"
  %".178" = load i32, ptr %"R8"
  %"imad_mul.10" = mul i32 %".177", 1
  %"imad_add.10" = add i32 %"imad_mul.10", %".178"
  store i32 %"imad_add.10", ptr %"R13"
  ; UMOV UR4, URZ
  store i32 0, ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".183" = load i32, ptr %"R29"
  %".184" = load i32, ptr %"R24"
  %"imad_ext1" = zext i32 %".183" to i64
  %"imad_ext2" = zext i32 %".184" to i64
  %"imad_mul.11" = mul i64 %"imad_ext1", %"imad_ext2"
  %".185" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %".185"
  %".186" = and i64 %"imad_add.11", 18446744069414584320
  %".187" = lshr i64 %".186", 32
  %"trunc32" = trunc i64 %".187" to i32
  %"trunc32.1" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.1", ptr %"R6"
  store i32 %"trunc32", ptr %"R7"
  ; MOV R23, R6
  %".191" = load i32, ptr %"R6"
  store i32 %".191", ptr %"R23"
  br label %".L_x_25"
.L_x_25:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".195" = load i32, ptr %"R13"
  %".196" = load i32, ptr %"R24"
  %"imad_ext1.1" = zext i32 %".195" to i64
  %"imad_ext2.1" = zext i32 %".196" to i64
  %"imad_mul.12" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".197" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.12" = add i64 %"imad_mul.12", %".197"
  %".198" = and i64 %"imad_add.12", 18446744069414584320
  %".199" = lshr i64 %".198", 32
  %"trunc32.2" = trunc i64 %".199" to i32
  %"trunc32.3" = trunc i64 %"imad_add.12" to i32
  store i32 %"trunc32.3", ptr %"R14"
  store i32 %"trunc32.2", ptr %"R15"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".205" = load i32, ptr %"R23"
  %"imad_mul.13" = mul i32 0, 0
  %"imad_add.13" = add i32 %"imad_mul.13", %".205"
  store i32 %"imad_add.13", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".208" = load i32, ptr %"R31"
  %".209" = load i32, ptr %"R14"
  %"imad_ext1.2" = zext i32 %".208" to i64
  %"imad_ext2.2" = zext i32 4 to i64
  %"imad_mul.14" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %"imad_ext3" = zext i32 %".209" to i64
  %"imad_add.14" = add i64 %"imad_mul.14", %"imad_ext3"
  %".210" = and i64 %"imad_add.14", 18446744069414584320
  %".211" = lshr i64 %".210", 32
  %"trunc32.4" = trunc i64 %".211" to i32
  %"trunc32.5" = trunc i64 %"imad_add.14" to i32
  store i32 %"trunc32.5", ptr %"R16"
  store i32 %"trunc32.4", ptr %"R17"
  ; LDG.E.SYS R14, [R14]
  %".215" = load i32, ptr %"R14"
  %"zext" = zext i32 %".215" to i64
  %".216" = load i32, ptr %"R15"
  %"zext.1" = zext i32 %".216" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".217" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".218" = bitcast ptr %"R14" to ptr
  store float %".217", ptr %".218"
  ; LDG.E.SYS R23, [R6]
  %".221" = load i32, ptr %"R6"
  %"zext.2" = zext i32 %".221" to i64
  %".222" = load i32, ptr %"R7"
  %"zext.3" = zext i32 %".222" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".223" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".224" = bitcast ptr %"R23" to ptr
  store float %".223", ptr %".224"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".227" = load i32, ptr %"R31"
  %".228" = load i32, ptr %"R16"
  %"imad_ext1.3" = zext i32 %".227" to i64
  %"imad_ext2.3" = zext i32 4 to i64
  %"imad_mul.15" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %"imad_ext3.1" = zext i32 %".228" to i64
  %"imad_add.15" = add i64 %"imad_mul.15", %"imad_ext3.1"
  %".229" = and i64 %"imad_add.15", 18446744069414584320
  %".230" = lshr i64 %".229", 32
  %"trunc32.6" = trunc i64 %".230" to i32
  %"trunc32.7" = trunc i64 %"imad_add.15" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".234" = load i32, ptr %"R16"
  %"zext.4" = zext i32 %".234" to i64
  %".235" = load i32, ptr %"R17"
  %"zext.5" = zext i32 %".235" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".236" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".237" = bitcast ptr %"R16" to ptr
  store float %".236", ptr %".237"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".240" = load i32, ptr %"R31"
  %".241" = load i32, ptr %"R18"
  %"imad_ext1.4" = zext i32 %".240" to i64
  %"imad_ext2.4" = zext i32 4 to i64
  %"imad_mul.16" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3.2" = zext i32 %".241" to i64
  %"imad_add.16" = add i64 %"imad_mul.16", %"imad_ext3.2"
  %".242" = and i64 %"imad_add.16", 18446744069414584320
  %".243" = lshr i64 %".242", 32
  %"trunc32.8" = trunc i64 %".243" to i32
  %"trunc32.9" = trunc i64 %"imad_add.16" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".247" = load i32, ptr %"R6"
  %"zext.6" = zext i32 %".247" to i64
  %".248" = load i32, ptr %"R7"
  %"zext.7" = zext i32 %".248" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".249" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".250" = bitcast ptr %"R22" to ptr
  store float %".249", ptr %".250"
  ; LDG.E.SYS R18, [R18]
  %".253" = load i32, ptr %"R18"
  %"zext.8" = zext i32 %".253" to i64
  %".254" = load i32, ptr %"R19"
  %"zext.9" = zext i32 %".254" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"inttoptr_bytes.4" = inttoptr i64 %"or.4" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".255" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".256" = bitcast ptr %"R18" to ptr
  store float %".255", ptr %".256"
  ; LDG.E.SYS R25, [R6+0x8]
  %".259" = load i32, ptr %"R6"
  %"zext.10" = zext i32 %".259" to i64
  %".260" = load i32, ptr %"R7"
  %"zext.11" = zext i32 %".260" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"ptr_plus_imm.1" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".261" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".262" = bitcast ptr %"R25" to ptr
  store float %".261", ptr %".262"
  ; LDG.E.SYS R20, [R20]
  %".265" = load i32, ptr %"R20"
  %"zext.12" = zext i32 %".265" to i64
  %".266" = load i32, ptr %"R21"
  %"zext.13" = zext i32 %".266" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"inttoptr_bytes.6" = inttoptr i64 %"or.6" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".267" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".268" = bitcast ptr %"R20" to ptr
  store float %".267", ptr %".268"
  ; LDG.E.SYS R27, [R6+0xc]
  %".271" = load i32, ptr %"R6"
  %"zext.14" = zext i32 %".271" to i64
  %".272" = load i32, ptr %"R7"
  %"zext.15" = zext i32 %".272" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.2" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".273" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".274" = bitcast ptr %"R27" to ptr
  store float %".273", ptr %".274"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".277" = load i32, ptr %"UR4"
  %".278" = add i32 %".277", 4
  %".279" = add i32 %".278", 0
  store i32 %".279", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".282" = load i32, ptr %"R31"
  %".283" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".282", 2
  %"add" = add i32 %"shl.8", %".283"
  store i32 %"add", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %"cast_ptr" = bitcast ptr %"R23" to ptr
  %".286" = load float, ptr %"cast_ptr"
  %"cast_ptr.1" = bitcast ptr %"R14" to ptr
  %".287" = load float, ptr %"cast_ptr.1"
  %"cast_ptr.2" = bitcast ptr %"R12" to ptr
  %".288" = load float, ptr %"cast_ptr.2"
  %"fmul" = fmul float %".286", %".287"
  %"fadd" = fadd float %"fmul", %".288"
  %".289" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".289"
  ; IADD3 R12, R26, UR4, RZ
  %".292" = load i32, ptr %"R26"
  %".293" = load i32, ptr %"UR4"
  %".294" = add i32 %".292", %".293"
  %".295" = add i32 %".294", 0
  store i32 %".295", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".298" = load i32, ptr %"R12"
  %".299" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".298", 0
  %".300" = xor i1 %"cmp.8", -1
  %".301" = and i1 %"cmp.8", %".299"
  %".302" = and i1 %".300", %".299"
  store i1 %".301", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %"cast_ptr.3" = bitcast ptr %"R22" to ptr
  %".305" = load float, ptr %"cast_ptr.3"
  %"cast_ptr.4" = bitcast ptr %"R16" to ptr
  %".306" = load float, ptr %"cast_ptr.4"
  %"cast_ptr.5" = bitcast ptr %"R23" to ptr
  %".307" = load float, ptr %"cast_ptr.5"
  %"fmul.1" = fmul float %".305", %".306"
  %"fadd.1" = fadd float %"fmul.1", %".307"
  %".308" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".308"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".311" = load i32, ptr %"R6"
  %".312" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".311", i32 16)
  %".313" = extractvalue {i32, i1} %".312", 0
  %".314" = extractvalue {i32, i1} %".312", 1
  %".315" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".313", i32 0)
  %".316" = extractvalue {i32, i1} %".315", 0
  %".317" = extractvalue {i32, i1} %".315", 1
  %".318" = or i1 %".314", %".317"
  store i32 %".316", ptr %"R23"
  store i1 %".318", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %"cast_ptr.6" = bitcast ptr %"R25" to ptr
  %".322" = load float, ptr %"cast_ptr.6"
  %"cast_ptr.7" = bitcast ptr %"R18" to ptr
  %".323" = load float, ptr %"cast_ptr.7"
  %"cast_ptr.8" = bitcast ptr %"R22" to ptr
  %".324" = load float, ptr %"cast_ptr.8"
  %"fmul.2" = fmul float %".322", %".323"
  %"fadd.2" = fadd float %"fmul.2", %".324"
  %".325" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".325"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".328" = load i32, ptr %"R7"
  %".329" = load i1, ptr %"P4"
  %".330" = xor i1 1, -1
  %".331" = zext i1 %".329" to i32
  %".332" = zext i1 %".330" to i32
  %"add.1" = add i32 0, %".328"
  %"add.2" = add i32 %"add.1", 0
  %"add.3" = add i32 %"add.2", %".331"
  %"add.4" = add i32 %"add.3", %".332"
  store i32 %"add.4", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %"cast_ptr.9" = bitcast ptr %"R27" to ptr
  %".335" = load float, ptr %"cast_ptr.9"
  %"cast_ptr.10" = bitcast ptr %"R20" to ptr
  %".336" = load float, ptr %"cast_ptr.10"
  %"cast_ptr.11" = bitcast ptr %"R22" to ptr
  %".337" = load float, ptr %"cast_ptr.11"
  %"fmul.3" = fmul float %".335", %".336"
  %"fadd.3" = fadd float %"fmul.3", %".337"
  %".338" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".338"
  ; @P2 BRA `(.L_x_25)
  %".341" = load i1, ptr %"P2"
  %".342" = icmp eq i1 %".341", 1
  br i1 %".342", label %".L_x_25", label %".L_x_24"
.L_x_24:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".345" = load i32, ptr %"R2"
  %".346" = load i32, ptr %"R8"
  %"imad_mul.17" = mul i32 %".345", 1
  %"imad_add.17" = add i32 %"imad_mul.17", %".346"
  store i32 %"imad_add.17", ptr %"R14"
  ; @!P3 BRA `(.L_x_26)
  %".349" = load i1, ptr %"P3"
  %".350" = icmp ne i1 %".349", 1
  br i1 %".350", label %".L_x_26", label %".L_x_24_split_0x0460"
.L_x_24_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".353" = load i32, ptr %"R11"
  %".354" = load i32, ptr %"UR4"
  %".355" = add i32 %".353", %".354"
  %".356" = add i32 %".355", 0
  store i32 %".356", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".359" = load i32, ptr %"R29"
  %".360" = load i32, ptr %"UR4"
  %".361" = add i32 %".359", %".360"
  %".362" = add i32 %".361", 0
  store i32 %".362", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".367" = load i32, ptr %"R15"
  %".368" = load i32, ptr %"R14"
  %"imad_mul.18" = mul i32 %".367", %"Arg_3"
  %"imad_add.18" = add i32 %"imad_mul.18", %".368"
  store i32 %"imad_add.18", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".371" = load i32, ptr %"R16"
  %".372" = load i32, ptr %"R19"
  %"imad_ext1.5" = zext i32 %".371" to i64
  %"imad_ext2.5" = zext i32 %".372" to i64
  %"imad_mul.19" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %".373" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.19" = add i64 %"imad_mul.19", %".373"
  %".374" = and i64 %"imad_add.19", 18446744069414584320
  %".375" = lshr i64 %".374", 32
  %"trunc32.10" = trunc i64 %".375" to i32
  %"trunc32.11" = trunc i64 %"imad_add.19" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".379" = load i32, ptr %"R6"
  %".380" = load i32, ptr %"R19"
  %"imad_ext1.6" = zext i32 %".379" to i64
  %"imad_ext2.6" = zext i32 %".380" to i64
  %"imad_mul.20" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".381" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.20" = add i64 %"imad_mul.20", %".381"
  %".382" = and i64 %"imad_add.20", 18446744069414584320
  %".383" = lshr i64 %".382", 32
  %"trunc32.12" = trunc i64 %".383" to i32
  %"trunc32.13" = trunc i64 %"imad_add.20" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".387" = load i32, ptr %"R16"
  %"zext.16" = zext i32 %".387" to i64
  %".388" = load i32, ptr %"R17"
  %"zext.17" = zext i32 %".388" to i64
  %"shl.9" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.9", %"zext.16"
  %"inttoptr_bytes.8" = inttoptr i64 %"or.8" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".389" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".390" = bitcast ptr %"R13" to ptr
  store float %".389", ptr %".390"
  ; LDG.E.SYS R6, [R6]
  %".393" = load i32, ptr %"R6"
  %"zext.18" = zext i32 %".393" to i64
  %".394" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".394" to i64
  %"shl.10" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.10", %"zext.18"
  %"inttoptr_bytes.9" = inttoptr i64 %"or.9" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".395" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".396" = bitcast ptr %"R6" to ptr
  store float %".395", ptr %".396"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".399" = load i32, ptr %"R4"
  %".400" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".399", 1
  %".401" = xor i1 %"cmp.9", -1
  %".402" = and i1 %"cmp.9", %".400"
  %".403" = and i1 %".401", %".400"
  store i1 %".402", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %"cast_ptr.12" = bitcast ptr %"R13" to ptr
  %".406" = load float, ptr %"cast_ptr.12"
  %"cast_ptr.13" = bitcast ptr %"R6" to ptr
  %".407" = load float, ptr %"cast_ptr.13"
  %"cast_ptr.14" = bitcast ptr %"R12" to ptr
  %".408" = load float, ptr %"cast_ptr.14"
  %"fmul.4" = fmul float %".406", %".407"
  %"fadd.4" = fadd float %"fmul.4", %".408"
  %".409" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".409"
  ; @!P2 BRA `(.L_x_26)
  %".412" = load i1, ptr %"P2"
  %".413" = icmp ne i1 %".412", 1
  br i1 %".413", label %".L_x_26", label %".L_x_24_split_0x0510"
.L_x_24_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".416" = load i32, ptr %"R4"
  %".417" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".416", 2
  %".418" = xor i1 %"cmp.10", -1
  %".419" = and i1 %"cmp.10", %".417"
  %".420" = and i1 %".418", %".417"
  store i1 %".419", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".423" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".423" to i64
  %".424" = load i32, ptr %"R17"
  %"zext.21" = zext i32 %".424" to i64
  %"shl.11" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.11", %"zext.20"
  %"ptr_plus_imm.3" = add i64 %"or.10", 4
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".425" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".426" = bitcast ptr %"R13" to ptr
  store float %".425", ptr %".426"
  ; IADD3 R6, R15, 0x1, RZ
  %".429" = load i32, ptr %"R15"
  %".430" = add i32 %".429", 1
  %".431" = add i32 %".430", 0
  store i32 %".431", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".434" = load i32, ptr %"R6"
  %".435" = load i32, ptr %"R14"
  %"imad_mul.21" = mul i32 %".434", %"Arg_3"
  %"imad_add.21" = add i32 %"imad_mul.21", %".435"
  store i32 %"imad_add.21", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".438" = load i1, ptr %"P2"
  %".439" = icmp eq i1 %".438", 1
  br i1 %".439", label %".L_x_24_split_0x0510_conditionalExpr_0x0550", label %".L_x_24_split_0x0560"
.L_x_24_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".442" = load i32, ptr %"R15"
  %".443" = add i32 %".442", 2
  %".444" = add i32 %".443", 0
  store i32 %".444", ptr %"R7"
  ; BRA `(.L_x_24_split_0x0560)
  br label %".L_x_24_split_0x0560"
.L_x_24_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".449" = load i1, ptr %"P2"
  %".450" = icmp eq i1 %".449", 1
  br i1 %".450", label %".L_x_24_split_0x0560_conditionalExpr_0x0560", label %".L_x_24_split_0x0570"
.L_x_24_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".453" = load i32, ptr %"R7"
  %".454" = load i32, ptr %"R14"
  %"imad_mul.22" = mul i32 %".453", %"Arg_3"
  %"imad_add.22" = add i32 %"imad_mul.22", %".454"
  store i32 %"imad_add.22", ptr %"R14"
  ; BRA `(.L_x_24_split_0x0570)
  br label %".L_x_24_split_0x0570"
.L_x_24_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".459" = load i32, ptr %"R6"
  %".460" = load i32, ptr %"R19"
  %"imad_ext1.7" = zext i32 %".459" to i64
  %"imad_ext2.7" = zext i32 %".460" to i64
  %"imad_mul.23" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".461" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.23" = add i64 %"imad_mul.23", %".461"
  %".462" = and i64 %"imad_add.23", 18446744069414584320
  %".463" = lshr i64 %".462", 32
  %"trunc32.14" = trunc i64 %".463" to i32
  %"trunc32.15" = trunc i64 %"imad_add.23" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".467" = load i1, ptr %"P2"
  %".468" = icmp eq i1 %".467", 1
  br i1 %".468", label %".L_x_24_split_0x0570_conditionalExpr_0x0580", label %".L_x_24_split_0x0590"
.L_x_24_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".471" = load i32, ptr %"R14"
  %".472" = load i32, ptr %"R19"
  %"imad_ext1.8" = zext i32 %".471" to i64
  %"imad_ext2.8" = zext i32 %".472" to i64
  %"imad_mul.24" = mul i64 %"imad_ext1.8", %"imad_ext2.8"
  %".473" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.24" = add i64 %"imad_mul.24", %".473"
  %".474" = and i64 %"imad_add.24", 18446744069414584320
  %".475" = lshr i64 %".474", 32
  %"trunc32.16" = trunc i64 %".475" to i32
  %"trunc32.17" = trunc i64 %"imad_add.24" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_24_split_0x0590)
  br label %".L_x_24_split_0x0590"
.L_x_24_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".481" = load i1, ptr %"P2"
  %".482" = icmp eq i1 %".481", 1
  br i1 %".482", label %".L_x_24_split_0x0590_conditionalExpr_0x0590", label %".L_x_24_split_0x05a0"
.L_x_24_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".485" = load i32, ptr %"R16"
  %"zext.22" = zext i32 %".485" to i64
  %".486" = load i32, ptr %"R17"
  %"zext.23" = zext i32 %".486" to i64
  %"shl.12" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.12", %"zext.22"
  %"ptr_plus_imm.4" = add i64 %"or.11", 8
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".487" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".488" = bitcast ptr %"R19" to ptr
  store float %".487", ptr %".488"
  ; BRA `(.L_x_24_split_0x05a0)
  br label %".L_x_24_split_0x05a0"
.L_x_24_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".493" = load i32, ptr %"R6"
  %"zext.24" = zext i32 %".493" to i64
  %".494" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".494" to i64
  %"shl.13" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.13", %"zext.24"
  %"inttoptr_bytes.12" = inttoptr i64 %"or.12" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".495" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".496" = bitcast ptr %"R6" to ptr
  store float %".495", ptr %".496"
  ; @P2 LDG.E.SYS R14, [R14]
  %".499" = load i1, ptr %"P2"
  %".500" = icmp eq i1 %".499", 1
  br i1 %".500", label %".L_x_24_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_24_split_0x05c0"
.L_x_24_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".503" = load i32, ptr %"R14"
  %"zext.26" = zext i32 %".503" to i64
  %".504" = load i32, ptr %"R15"
  %"zext.27" = zext i32 %".504" to i64
  %"shl.14" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.14", %"zext.26"
  %"inttoptr_bytes.13" = inttoptr i64 %"or.13" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".505" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".506" = bitcast ptr %"R14" to ptr
  store float %".505", ptr %".506"
  ; BRA `(.L_x_24_split_0x05c0)
  br label %".L_x_24_split_0x05c0"
.L_x_24_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %"cast_ptr.15" = bitcast ptr %"R13" to ptr
  %".511" = load float, ptr %"cast_ptr.15"
  %"cast_ptr.16" = bitcast ptr %"R6" to ptr
  %".512" = load float, ptr %"cast_ptr.16"
  %"cast_ptr.17" = bitcast ptr %"R12" to ptr
  %".513" = load float, ptr %"cast_ptr.17"
  %"fmul.5" = fmul float %".511", %".512"
  %"fadd.5" = fadd float %"fmul.5", %".513"
  %".514" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".514"
  ; @P2 FFMA R12, R19, R14, R12
  %".517" = load i1, ptr %"P2"
  %".518" = icmp eq i1 %".517", 1
  br i1 %".518", label %".L_x_24_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_26"
.L_x_24_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %"cast_ptr.18" = bitcast ptr %"R19" to ptr
  %".521" = load float, ptr %"cast_ptr.18"
  %"cast_ptr.19" = bitcast ptr %"R14" to ptr
  %".522" = load float, ptr %"cast_ptr.19"
  %"cast_ptr.20" = bitcast ptr %"R12" to ptr
  %".523" = load float, ptr %"cast_ptr.20"
  %"fmul.6" = fmul float %".521", %".522"
  %"fadd.6" = fadd float %"fmul.6", %".523"
  %".524" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".524"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; IADD3 R8, R8, 0x1, RZ
  %".529" = load i32, ptr %"R8"
  %".530" = add i32 %".529", 1
  %".531" = add i32 %".530", 0
  store i32 %".531", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".534" = load i32, ptr %"R8"
  %".535" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".534", %"Arg_4"
  %".536" = xor i1 %"cmp.11", -1
  %".537" = and i1 %"cmp.11", %".535"
  %".538" = and i1 %".536", %".535"
  store i1 %".537", ptr %"P2"
  ; @!P2 BRA `(.L_x_27)
  %".541" = load i1, ptr %"P2"
  %".542" = icmp ne i1 %".541", 1
  br i1 %".542", label %".L_x_27", label %".L_x_26_split_0x0610"
.L_x_26_split_0x0610:
  ; @!P1 BRA `(.L_x_28)
  %".545" = load i1, ptr %"P1"
  %".546" = icmp ne i1 %".545", 1
  br i1 %".546", label %".L_x_28", label %".L_x_23"
.L_x_23:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".549" = load i32, ptr %"UR5"
  %".550" = add i32 %".549", 1
  %".551" = add i32 %".550", 0
  store i32 %".551", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".554" = load i32, ptr %"R0"
  %".555" = load i32, ptr %"UR4"
  %".556" = load i32, ptr %"R3"
  %"imad_mul.25" = mul i32 %".554", %".555"
  %"imad_add.25" = add i32 %"imad_mul.25", %".556"
  store i32 %"imad_add.25", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".561" = load i32, ptr %"R3"
  %".562" = load i32, ptr %"UR4"
  %".563" = load i32, ptr %"R2"
  %"imad_mul.26" = mul i32 %".561", %".562"
  %"imad_add.26" = add i32 %"imad_mul.26", %".563"
  store i32 %"imad_add.26", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".566" = load i32, ptr %"R3"
  %".567" = load i32, ptr %"R0"
  %"imad_ext1.9" = zext i32 %".566" to i64
  %"imad_ext2.9" = zext i32 %".567" to i64
  %"imad_mul.27" = mul i64 %"imad_ext1.9", %"imad_ext2.9"
  %".568" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.27" = add i64 %"imad_mul.27", %".568"
  %".569" = and i64 %"imad_add.27", 18446744069414584320
  %".570" = lshr i64 %".569", 32
  %"trunc32.18" = trunc i64 %".570" to i32
  %"trunc32.19" = trunc i64 %"imad_add.27" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".574" = load i32, ptr %"R12"
  %".575" = load i32, ptr %"R2"
  %"zext.28" = zext i32 %".575" to i64
  %".576" = load i32, ptr %"R3"
  %"zext.29" = zext i32 %".576" to i64
  %"shl.15" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.15", %"zext.28"
  %"inttoptr_bytes.14" = inttoptr i64 %"or.14" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  store i32 %".574", ptr addrspace(1) %"ptr_cast_for_access.14"
  ; EXIT
  br label %"ExitFunction"
.L_x_29:
  ; BRA `(.L_x_29)
  br label %".L_x_29"
ExitFunction:
  ret void
}

