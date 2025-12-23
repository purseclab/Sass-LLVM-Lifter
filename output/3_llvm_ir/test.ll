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
  ; @!P0 BRA `(.L_x_0)
  %".50" = load i1, ptr %"P0"
  %".51" = icmp ne i1 %".50", 1
  br i1 %".51", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
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
  ; @!P0 BRA `(.L_x_1)
  %".79" = load i1, ptr %"P0"
  %".80" = icmp ne i1 %".79", 1
  br i1 %".80", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
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
  ; @!P0 BRA `(.L_x_2)
  %".123" = load i1, ptr %"P0"
  %".124" = icmp ne i1 %".123", 1
  br i1 %".124", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
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
  ; @!P1 BRA `(.L_x_3)
  %".138" = load i1, ptr %"P1"
  %".139" = icmp ne i1 %".138", 1
  br i1 %".139", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".142" = xor i1 1, 1
  %".143" = and i1 %".142", 1
  %".144" = and i1 %".143", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".147" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".147" to i64
  %".148" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".148" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".149" = add i64 %"or", 0
  %"inttoptr_bytes" = inttoptr i64 %".149" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".150" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".151" = bitcast ptr %"R8" to ptr
  store float %".150", ptr %".151"
  ; LDG.E.SYS R9, [UR4]
  %".154" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".154" to i64
  %".155" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".155" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %".156" = add i64 %"or.1", 0
  %"inttoptr_bytes.1" = inttoptr i64 %".156" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".157" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".158" = bitcast ptr %"R9" to ptr
  store float %".157", ptr %".158"
  ; LDG.E.SYS R11, [R2+0x4]
  %".161" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".161" to i64
  %".162" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".162" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %".163" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %".163" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".164" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".165" = bitcast ptr %"R11" to ptr
  store float %".164", ptr %".165"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".168" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".168" to i64
  %".169" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".169" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %".170" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %".170" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".171" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".172" = bitcast ptr %"R10" to ptr
  store float %".171", ptr %".172"
  ; LDG.E.SYS R13, [R2+0x8]
  %".175" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".175" to i64
  %".176" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".176" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %".177" = add i64 %"or.4", 8
  %"inttoptr_bytes.4" = inttoptr i64 %".177" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".178" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".179" = bitcast ptr %"R13" to ptr
  store float %".178", ptr %".179"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".182" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".182" to i64
  %".183" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".183" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %".184" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %".184" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".185" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".186" = bitcast ptr %"R12" to ptr
  store float %".185", ptr %".186"
  ; LDG.E.SYS R15, [R2+0xc]
  %".189" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".189" to i64
  %".190" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".190" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %".191" = add i64 %"or.6", 12
  %"inttoptr_bytes.6" = inttoptr i64 %".191" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".192" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".193" = bitcast ptr %"R15" to ptr
  store float %".192", ptr %".193"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".196" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".196" to i64
  %".197" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".197" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %".198" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %".198" to ptr addrspace(1)
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
  %".205" = add i64 %"or.8", 16
  %"inttoptr_bytes.8" = inttoptr i64 %".205" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".206" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".207" = bitcast ptr %"R17" to ptr
  store float %".206", ptr %".207"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".210" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".210" to i64
  %".211" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".211" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %".212" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %".212" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".213" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".214" = bitcast ptr %"R16" to ptr
  store float %".213", ptr %".214"
  ; LDG.E.SYS R19, [R2+0x14]
  %".217" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".217" to i64
  %".218" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".218" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %".219" = add i64 %"or.10", 20
  %"inttoptr_bytes.10" = inttoptr i64 %".219" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".220" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".221" = bitcast ptr %"R19" to ptr
  store float %".220", ptr %".221"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".224" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".224" to i64
  %".225" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".225" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %".226" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %".226" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".227" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".228" = bitcast ptr %"R18" to ptr
  store float %".227", ptr %".228"
  ; LDG.E.SYS R21, [R2+0x18]
  %".231" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".231" to i64
  %".232" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".232" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %".233" = add i64 %"or.12", 24
  %"inttoptr_bytes.12" = inttoptr i64 %".233" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".234" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".235" = bitcast ptr %"R21" to ptr
  store float %".234", ptr %".235"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".238" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".238" to i64
  %".239" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".239" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %".240" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %".240" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".241" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".242" = bitcast ptr %"R20" to ptr
  store float %".241", ptr %".242"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".245" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".245" to i64
  %".246" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".246" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %".247" = add i64 %"or.14", 28
  %"inttoptr_bytes.14" = inttoptr i64 %".247" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".248" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".249" = bitcast ptr %"R23" to ptr
  store float %".248", ptr %".249"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".252" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".252" to i64
  %".253" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".253" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %".254" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %".254" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".255" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".256" = bitcast ptr %"R22" to ptr
  store float %".255", ptr %".256"
  ; LDG.E.SYS R25, [R2+0x20]
  %".259" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".259" to i64
  %".260" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".260" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %".261" = add i64 %"or.16", 32
  %"inttoptr_bytes.16" = inttoptr i64 %".261" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".262" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".263" = bitcast ptr %"R25" to ptr
  store float %".262", ptr %".263"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".266" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".266" to i64
  %".267" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".267" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %".268" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %".268" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".269" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".270" = bitcast ptr %"R24" to ptr
  store float %".269", ptr %".270"
  ; LDG.E.SYS R27, [R2+0x24]
  %".273" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".273" to i64
  %".274" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".274" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %".275" = add i64 %"or.18", 36
  %"inttoptr_bytes.18" = inttoptr i64 %".275" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".276" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".277" = bitcast ptr %"R27" to ptr
  store float %".276", ptr %".277"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".280" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".280" to i64
  %".281" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".281" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %".282" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %".282" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".283" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".284" = bitcast ptr %"R26" to ptr
  store float %".283", ptr %".284"
  ; LDG.E.SYS R29, [R2+0x28]
  %".287" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".287" to i64
  %".288" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".288" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %".289" = add i64 %"or.20", 40
  %"inttoptr_bytes.20" = inttoptr i64 %".289" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".290" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".291" = bitcast ptr %"R29" to ptr
  store float %".290", ptr %".291"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".294" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".294" to i64
  %".295" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".295" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %".296" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %".296" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".297" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".298" = bitcast ptr %"R28" to ptr
  store float %".297", ptr %".298"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".301" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".301" to i64
  %".302" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".302" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %".303" = add i64 %"or.22", 44
  %"inttoptr_bytes.22" = inttoptr i64 %".303" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".304" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".305" = bitcast ptr %"R31" to ptr
  store float %".304", ptr %".305"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".308" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".308" to i64
  %".309" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".309" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %".310" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %".310" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".311" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".312" = bitcast ptr %"R30" to ptr
  store float %".311", ptr %".312"
  ; LDG.E.SYS R33, [R2+0x30]
  %".315" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".315" to i64
  %".316" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".316" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %".317" = add i64 %"or.24", 48
  %"inttoptr_bytes.24" = inttoptr i64 %".317" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".318" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".319" = bitcast ptr %"R33" to ptr
  store float %".318", ptr %".319"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".322" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".322" to i64
  %".323" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".323" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %".324" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %".324" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".325" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".326" = bitcast ptr %"R32" to ptr
  store float %".325", ptr %".326"
  ; LDG.E.SYS R35, [R2+0x34]
  %".329" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".329" to i64
  %".330" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".330" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %".331" = add i64 %"or.26", 52
  %"inttoptr_bytes.26" = inttoptr i64 %".331" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".332" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".333" = bitcast ptr %"R35" to ptr
  store float %".332", ptr %".333"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".336" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".336" to i64
  %".337" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".337" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %".338" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %".338" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".339" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".340" = bitcast ptr %"R34" to ptr
  store float %".339", ptr %".340"
  ; LDG.E.SYS R37, [R2+0x38]
  %".343" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".343" to i64
  %".344" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".344" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %".345" = add i64 %"or.28", 56
  %"inttoptr_bytes.28" = inttoptr i64 %".345" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".346" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".347" = bitcast ptr %"R37" to ptr
  store float %".346", ptr %".347"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".350" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".350" to i64
  %".351" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".351" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %".352" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %".352" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".353" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".354" = bitcast ptr %"R36" to ptr
  store float %".353", ptr %".354"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".357" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".357" to i64
  %".358" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".358" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %".359" = add i64 %"or.30", 60
  %"inttoptr_bytes.30" = inttoptr i64 %".359" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".360" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".361" = bitcast ptr %"R39" to ptr
  store float %".360", ptr %".361"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".364" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".364" to i64
  %".365" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".365" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %".366" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %".366" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".367" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".368" = bitcast ptr %"R38" to ptr
  store float %".367", ptr %".368"
  ; IADD3 R6, R6, -0x10, RZ
  %".371" = load i32, ptr %"R6"
  %".372" = add i32 %".371", -16
  %".373" = add i32 %".372", 0
  store i32 %".373", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".376" = load i32, ptr %"UR4"
  %".377" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".376", i32 64)
  %".378" = extractvalue {i32, i1} %".377", 0
  %".379" = extractvalue {i32, i1} %".377", 1
  %".380" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".378", i32 0)
  %".381" = extractvalue {i32, i1} %".380", 0
  %".382" = extractvalue {i32, i1} %".380", 1
  %".383" = or i1 %".379", %".382"
  store i32 %".381", ptr %"UR4"
  store i1 %".383", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".387" = load i32, ptr %"R5"
  %".388" = add i32 %".387", 16
  %".389" = add i32 %".388", 0
  store i32 %".389", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".392" = load i32, ptr %"R6"
  %".393" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".392", 12
  %".394" = add i1 %"cmp.5", 0
  %".395" = xor i1 %".394", -1
  %".396" = and i1 %"cmp.5", %".393"
  %".397" = and i1 %".395", %".393"
  store i1 %".396", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".400" = load i32, ptr %"UR5"
  %".401" = load i1, ptr %"UP0"
  %".402" = xor i1 1, -1
  %".403" = zext i1 %".401" to i32
  %".404" = zext i1 %".402" to i32
  %"add.5" = add i32 0, %".400"
  %"add.6" = add i32 %"add.5", 0
  %"add.7" = add i32 %"add.6", %".403"
  %"add.8" = add i32 %"add.7", %".404"
  store i32 %"add.8", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".407" = load i32, ptr %"R2"
  %".408" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".407", i32 64)
  %".409" = extractvalue {i32, i1} %".408", 0
  %".410" = extractvalue {i32, i1} %".408", 1
  %".411" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".409", i32 0)
  %".412" = extractvalue {i32, i1} %".411", 0
  %".413" = extractvalue {i32, i1} %".411", 1
  %".414" = or i1 %".410", %".413"
  store i32 %".412", ptr %"R2"
  store i1 %".414", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".418" = load i32, ptr %"R3"
  %".419" = load i1, ptr %"P2"
  %"mul.5" = mul i32 0, 0
  %"add.9" = add i32 %"mul.5", %".418"
  %"zext.66" = zext i1 %".419" to i32
  %"add.10" = add i32 %"add.9", %"zext.66"
  store i32 %"add.10", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".422" = load float, ptr %"R8"
  %".423" = load float, ptr %"R9"
  %".424" = load float, ptr %"R7"
  %"fmul" = fmul float %".422", %".423"
  %"fadd" = fadd float %"fmul", %".424"
  %".425" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".425"
  ; FFMA R8, R11, R10, R8
  %".428" = load float, ptr %"R11"
  %".429" = load float, ptr %"R10"
  %".430" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".428", %".429"
  %"fadd.1" = fadd float %"fmul.1", %".430"
  %".431" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".431"
  ; FFMA R8, R13, R12, R8
  %".434" = load float, ptr %"R13"
  %".435" = load float, ptr %"R12"
  %".436" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".434", %".435"
  %"fadd.2" = fadd float %"fmul.2", %".436"
  %".437" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".437"
  ; FFMA R8, R15, R14, R8
  %".440" = load float, ptr %"R15"
  %".441" = load float, ptr %"R14"
  %".442" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".440", %".441"
  %"fadd.3" = fadd float %"fmul.3", %".442"
  %".443" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".443"
  ; FFMA R8, R17, R16, R8
  %".446" = load float, ptr %"R17"
  %".447" = load float, ptr %"R16"
  %".448" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".446", %".447"
  %"fadd.4" = fadd float %"fmul.4", %".448"
  %".449" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".449"
  ; FFMA R8, R19, R18, R8
  %".452" = load float, ptr %"R19"
  %".453" = load float, ptr %"R18"
  %".454" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".452", %".453"
  %"fadd.5" = fadd float %"fmul.5", %".454"
  %".455" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".455"
  ; FFMA R8, R21, R20, R8
  %".458" = load float, ptr %"R21"
  %".459" = load float, ptr %"R20"
  %".460" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".458", %".459"
  %"fadd.6" = fadd float %"fmul.6", %".460"
  %".461" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".461"
  ; FFMA R8, R23, R22, R8
  %".464" = load float, ptr %"R23"
  %".465" = load float, ptr %"R22"
  %".466" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".464", %".465"
  %"fadd.7" = fadd float %"fmul.7", %".466"
  %".467" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".467"
  ; FFMA R8, R25, R24, R8
  %".470" = load float, ptr %"R25"
  %".471" = load float, ptr %"R24"
  %".472" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".470", %".471"
  %"fadd.8" = fadd float %"fmul.8", %".472"
  %".473" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".473"
  ; FFMA R8, R27, R26, R8
  %".476" = load float, ptr %"R27"
  %".477" = load float, ptr %"R26"
  %".478" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".476", %".477"
  %"fadd.9" = fadd float %"fmul.9", %".478"
  %".479" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".479"
  ; FFMA R8, R29, R28, R8
  %".482" = load float, ptr %"R29"
  %".483" = load float, ptr %"R28"
  %".484" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".482", %".483"
  %"fadd.10" = fadd float %"fmul.10", %".484"
  %".485" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".485"
  ; FFMA R8, R31, R30, R8
  %".488" = load float, ptr %"R31"
  %".489" = load float, ptr %"R30"
  %".490" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".488", %".489"
  %"fadd.11" = fadd float %"fmul.11", %".490"
  %".491" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".491"
  ; FFMA R8, R33, R32, R8
  %".494" = load float, ptr %"R33"
  %".495" = load float, ptr %"R32"
  %".496" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".494", %".495"
  %"fadd.12" = fadd float %"fmul.12", %".496"
  %".497" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".497"
  ; FFMA R8, R35, R34, R8
  %".500" = load float, ptr %"R35"
  %".501" = load float, ptr %"R34"
  %".502" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".500", %".501"
  %"fadd.13" = fadd float %"fmul.13", %".502"
  %".503" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".503"
  ; FFMA R8, R37, R36, R8
  %".506" = load float, ptr %"R37"
  %".507" = load float, ptr %"R36"
  %".508" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".506", %".507"
  %"fadd.14" = fadd float %"fmul.14", %".508"
  %".509" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".509"
  ; FFMA R7, R39, R38, R8
  %".512" = load float, ptr %"R39"
  %".513" = load float, ptr %"R38"
  %".514" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".512", %".513"
  %"fadd.15" = fadd float %"fmul.15", %".514"
  %".515" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".515"
  ; @P1 BRA `(.L_x_4)
  %".518" = load i1, ptr %"P1"
  %".519" = icmp eq i1 %".518", 1
  br i1 %".519", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".522" = load i32, ptr %"R6"
  %".523" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".522", 4
  %".524" = add i1 %"cmp.6", 0
  %".525" = xor i1 %".524", -1
  %".526" = and i1 %"cmp.6", %".523"
  %".527" = and i1 %".525", %".523"
  store i1 %".526", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".530" = load i1, ptr %"P1"
  %".531" = icmp ne i1 %".530", 1
  br i1 %".531", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".534" = load i32, ptr %"R2"
  %"zext.67" = zext i32 %".534" to i64
  %".535" = load i32, ptr %"R3"
  %"zext.68" = zext i32 %".535" to i64
  %"shl.32" = shl i64 %"zext.68", 32
  %"or.32" = or i64 %"shl.32", %"zext.67"
  %".536" = add i64 %"or.32", 0
  %"inttoptr_bytes.32" = inttoptr i64 %".536" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".537" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".538" = bitcast ptr %"R8" to ptr
  store float %".537", ptr %".538"
  ; LDG.E.SYS R9, [UR4]
  %".541" = load i32, ptr %"UR4"
  %"zext.69" = zext i32 %".541" to i64
  %".542" = load i32, ptr %"UR5"
  %"zext.70" = zext i32 %".542" to i64
  %"shl.33" = shl i64 %"zext.70", 32
  %"or.33" = or i64 %"shl.33", %"zext.69"
  %".543" = add i64 %"or.33", 0
  %"inttoptr_bytes.33" = inttoptr i64 %".543" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".544" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".545" = bitcast ptr %"R9" to ptr
  store float %".544", ptr %".545"
  ; LDG.E.SYS R11, [R2+0x4]
  %".548" = load i32, ptr %"R2"
  %"zext.71" = zext i32 %".548" to i64
  %".549" = load i32, ptr %"R3"
  %"zext.72" = zext i32 %".549" to i64
  %"shl.34" = shl i64 %"zext.72", 32
  %"or.34" = or i64 %"shl.34", %"zext.71"
  %".550" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %".550" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".551" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".552" = bitcast ptr %"R11" to ptr
  store float %".551", ptr %".552"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".555" = load i32, ptr %"UR4"
  %"zext.73" = zext i32 %".555" to i64
  %".556" = load i32, ptr %"UR5"
  %"zext.74" = zext i32 %".556" to i64
  %"shl.35" = shl i64 %"zext.74", 32
  %"or.35" = or i64 %"shl.35", %"zext.73"
  %".557" = add i64 %"or.35", 4
  %"inttoptr_bytes.35" = inttoptr i64 %".557" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".558" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".559" = bitcast ptr %"R10" to ptr
  store float %".558", ptr %".559"
  ; LDG.E.SYS R13, [R2+0x8]
  %".562" = load i32, ptr %"R2"
  %"zext.75" = zext i32 %".562" to i64
  %".563" = load i32, ptr %"R3"
  %"zext.76" = zext i32 %".563" to i64
  %"shl.36" = shl i64 %"zext.76", 32
  %"or.36" = or i64 %"shl.36", %"zext.75"
  %".564" = add i64 %"or.36", 8
  %"inttoptr_bytes.36" = inttoptr i64 %".564" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".565" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".566" = bitcast ptr %"R13" to ptr
  store float %".565", ptr %".566"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".569" = load i32, ptr %"UR4"
  %"zext.77" = zext i32 %".569" to i64
  %".570" = load i32, ptr %"UR5"
  %"zext.78" = zext i32 %".570" to i64
  %"shl.37" = shl i64 %"zext.78", 32
  %"or.37" = or i64 %"shl.37", %"zext.77"
  %".571" = add i64 %"or.37", 8
  %"inttoptr_bytes.37" = inttoptr i64 %".571" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".572" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".573" = bitcast ptr %"R12" to ptr
  store float %".572", ptr %".573"
  ; LDG.E.SYS R15, [R2+0xc]
  %".576" = load i32, ptr %"R2"
  %"zext.79" = zext i32 %".576" to i64
  %".577" = load i32, ptr %"R3"
  %"zext.80" = zext i32 %".577" to i64
  %"shl.38" = shl i64 %"zext.80", 32
  %"or.38" = or i64 %"shl.38", %"zext.79"
  %".578" = add i64 %"or.38", 12
  %"inttoptr_bytes.38" = inttoptr i64 %".578" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".579" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".580" = bitcast ptr %"R15" to ptr
  store float %".579", ptr %".580"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".583" = load i32, ptr %"UR4"
  %"zext.81" = zext i32 %".583" to i64
  %".584" = load i32, ptr %"UR5"
  %"zext.82" = zext i32 %".584" to i64
  %"shl.39" = shl i64 %"zext.82", 32
  %"or.39" = or i64 %"shl.39", %"zext.81"
  %".585" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %".585" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".586" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".587" = bitcast ptr %"R14" to ptr
  store float %".586", ptr %".587"
  ; LDG.E.SYS R17, [R2+0x10]
  %".590" = load i32, ptr %"R2"
  %"zext.83" = zext i32 %".590" to i64
  %".591" = load i32, ptr %"R3"
  %"zext.84" = zext i32 %".591" to i64
  %"shl.40" = shl i64 %"zext.84", 32
  %"or.40" = or i64 %"shl.40", %"zext.83"
  %".592" = add i64 %"or.40", 16
  %"inttoptr_bytes.40" = inttoptr i64 %".592" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".593" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".594" = bitcast ptr %"R17" to ptr
  store float %".593", ptr %".594"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".597" = load i32, ptr %"UR4"
  %"zext.85" = zext i32 %".597" to i64
  %".598" = load i32, ptr %"UR5"
  %"zext.86" = zext i32 %".598" to i64
  %"shl.41" = shl i64 %"zext.86", 32
  %"or.41" = or i64 %"shl.41", %"zext.85"
  %".599" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %".599" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".600" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".601" = bitcast ptr %"R16" to ptr
  store float %".600", ptr %".601"
  ; LDG.E.SYS R19, [R2+0x14]
  %".604" = load i32, ptr %"R2"
  %"zext.87" = zext i32 %".604" to i64
  %".605" = load i32, ptr %"R3"
  %"zext.88" = zext i32 %".605" to i64
  %"shl.42" = shl i64 %"zext.88", 32
  %"or.42" = or i64 %"shl.42", %"zext.87"
  %".606" = add i64 %"or.42", 20
  %"inttoptr_bytes.42" = inttoptr i64 %".606" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".607" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".608" = bitcast ptr %"R19" to ptr
  store float %".607", ptr %".608"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".611" = load i32, ptr %"UR4"
  %"zext.89" = zext i32 %".611" to i64
  %".612" = load i32, ptr %"UR5"
  %"zext.90" = zext i32 %".612" to i64
  %"shl.43" = shl i64 %"zext.90", 32
  %"or.43" = or i64 %"shl.43", %"zext.89"
  %".613" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %".613" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".614" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".615" = bitcast ptr %"R18" to ptr
  store float %".614", ptr %".615"
  ; LDG.E.SYS R21, [R2+0x18]
  %".618" = load i32, ptr %"R2"
  %"zext.91" = zext i32 %".618" to i64
  %".619" = load i32, ptr %"R3"
  %"zext.92" = zext i32 %".619" to i64
  %"shl.44" = shl i64 %"zext.92", 32
  %"or.44" = or i64 %"shl.44", %"zext.91"
  %".620" = add i64 %"or.44", 24
  %"inttoptr_bytes.44" = inttoptr i64 %".620" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".621" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".622" = bitcast ptr %"R21" to ptr
  store float %".621", ptr %".622"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".625" = load i32, ptr %"UR4"
  %"zext.93" = zext i32 %".625" to i64
  %".626" = load i32, ptr %"UR5"
  %"zext.94" = zext i32 %".626" to i64
  %"shl.45" = shl i64 %"zext.94", 32
  %"or.45" = or i64 %"shl.45", %"zext.93"
  %".627" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %".627" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".628" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".629" = bitcast ptr %"R20" to ptr
  store float %".628", ptr %".629"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".632" = load i32, ptr %"R2"
  %"zext.95" = zext i32 %".632" to i64
  %".633" = load i32, ptr %"R3"
  %"zext.96" = zext i32 %".633" to i64
  %"shl.46" = shl i64 %"zext.96", 32
  %"or.46" = or i64 %"shl.46", %"zext.95"
  %".634" = add i64 %"or.46", 28
  %"inttoptr_bytes.46" = inttoptr i64 %".634" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".635" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".636" = bitcast ptr %"R23" to ptr
  store float %".635", ptr %".636"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".639" = load i32, ptr %"UR4"
  %"zext.97" = zext i32 %".639" to i64
  %".640" = load i32, ptr %"UR5"
  %"zext.98" = zext i32 %".640" to i64
  %"shl.47" = shl i64 %"zext.98", 32
  %"or.47" = or i64 %"shl.47", %"zext.97"
  %".641" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %".641" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".642" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".643" = bitcast ptr %"R22" to ptr
  store float %".642", ptr %".643"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".646" = load i32, ptr %"UR4"
  %".647" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".646", i32 32)
  %".648" = extractvalue {i32, i1} %".647", 0
  %".649" = extractvalue {i32, i1} %".647", 1
  %".650" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".648", i32 0)
  %".651" = extractvalue {i32, i1} %".650", 0
  %".652" = extractvalue {i32, i1} %".650", 1
  %".653" = or i1 %".649", %".652"
  store i32 %".651", ptr %"UR4"
  store i1 %".653", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".657" = xor i1 1, 1
  %".658" = and i1 %".657", 1
  %".659" = and i1 %".658", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".661" = load i32, ptr %"R5"
  %".662" = add i32 %".661", 8
  %".663" = add i32 %".662", 0
  store i32 %".663", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".666" = load i32, ptr %"UR5"
  %".667" = load i1, ptr %"UP0"
  %".668" = xor i1 1, -1
  %".669" = zext i1 %".667" to i32
  %".670" = zext i1 %".668" to i32
  %"add.11" = add i32 0, %".666"
  %"add.12" = add i32 %"add.11", 0
  %"add.13" = add i32 %"add.12", %".669"
  %"add.14" = add i32 %"add.13", %".670"
  store i32 %"add.14", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".673" = load i32, ptr %"R2"
  %".674" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".673", i32 32)
  %".675" = extractvalue {i32, i1} %".674", 0
  %".676" = extractvalue {i32, i1} %".674", 1
  %".677" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".675", i32 0)
  %".678" = extractvalue {i32, i1} %".677", 0
  %".679" = extractvalue {i32, i1} %".677", 1
  %".680" = or i1 %".676", %".679"
  store i32 %".678", ptr %"R2"
  store i1 %".680", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".684" = load i32, ptr %"R6"
  %".685" = add i32 %".684", -8
  %".686" = add i32 %".685", 0
  store i32 %".686", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".689" = load i32, ptr %"R3"
  %".690" = load i1, ptr %"P1"
  %".691" = xor i1 1, -1
  %".692" = zext i1 %".690" to i32
  %".693" = zext i1 %".691" to i32
  %"add.15" = add i32 0, %".689"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".692"
  %"add.18" = add i32 %"add.17", %".693"
  store i32 %"add.18", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".696" = load float, ptr %"R8"
  %".697" = load float, ptr %"R9"
  %".698" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".696", %".697"
  %"fadd.16" = fadd float %"fmul.16", %".698"
  %".699" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".699"
  ; FFMA R8, R11, R10, R8
  %".702" = load float, ptr %"R11"
  %".703" = load float, ptr %"R10"
  %".704" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".702", %".703"
  %"fadd.17" = fadd float %"fmul.17", %".704"
  %".705" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".705"
  ; FFMA R8, R13, R12, R8
  %".708" = load float, ptr %"R13"
  %".709" = load float, ptr %"R12"
  %".710" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".708", %".709"
  %"fadd.18" = fadd float %"fmul.18", %".710"
  %".711" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".711"
  ; FFMA R8, R15, R14, R8
  %".714" = load float, ptr %"R15"
  %".715" = load float, ptr %"R14"
  %".716" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".714", %".715"
  %"fadd.19" = fadd float %"fmul.19", %".716"
  %".717" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".717"
  ; FFMA R8, R17, R16, R8
  %".720" = load float, ptr %"R17"
  %".721" = load float, ptr %"R16"
  %".722" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".720", %".721"
  %"fadd.20" = fadd float %"fmul.20", %".722"
  %".723" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".723"
  ; FFMA R8, R19, R18, R8
  %".726" = load float, ptr %"R19"
  %".727" = load float, ptr %"R18"
  %".728" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".726", %".727"
  %"fadd.21" = fadd float %"fmul.21", %".728"
  %".729" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".729"
  ; FFMA R8, R21, R20, R8
  %".732" = load float, ptr %"R21"
  %".733" = load float, ptr %"R20"
  %".734" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".732", %".733"
  %"fadd.22" = fadd float %"fmul.22", %".734"
  %".735" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".735"
  ; FFMA R7, R23, R22, R8
  %".738" = load float, ptr %"R23"
  %".739" = load float, ptr %"R22"
  %".740" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".738", %".739"
  %"fadd.23" = fadd float %"fmul.23", %".740"
  %".741" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".741"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".745" = load i32, ptr %"R6"
  %".746" = load i1, ptr %"P0"
  %"cmp.7" = icmp ne i32 %".745", 0
  %".747" = add i1 %"cmp.7", 0
  %".748" = xor i1 %".747", -1
  %".749" = or i1 %"cmp.7", %".746"
  %".750" = or i1 %".748", %".746"
  store i1 %".749", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".753" = load i1, ptr %"P0"
  %".754" = icmp ne i1 %".753", 1
  br i1 %".754", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".757" = load i32, ptr %"R2"
  %"zext.99" = zext i32 %".757" to i64
  %".758" = load i32, ptr %"R3"
  %"zext.100" = zext i32 %".758" to i64
  %"shl.48" = shl i64 %"zext.100", 32
  %"or.48" = or i64 %"shl.48", %"zext.99"
  %".759" = add i64 %"or.48", 0
  %"inttoptr_bytes.48" = inttoptr i64 %".759" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".760" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".761" = bitcast ptr %"R8" to ptr
  store float %".760", ptr %".761"
  ; LDG.E.SYS R9, [UR4]
  %".764" = load i32, ptr %"UR4"
  %"zext.101" = zext i32 %".764" to i64
  %".765" = load i32, ptr %"UR5"
  %"zext.102" = zext i32 %".765" to i64
  %"shl.49" = shl i64 %"zext.102", 32
  %"or.49" = or i64 %"shl.49", %"zext.101"
  %".766" = add i64 %"or.49", 0
  %"inttoptr_bytes.49" = inttoptr i64 %".766" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".767" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".768" = bitcast ptr %"R9" to ptr
  store float %".767", ptr %".768"
  ; LDG.E.SYS R11, [R2+0x4]
  %".771" = load i32, ptr %"R2"
  %"zext.103" = zext i32 %".771" to i64
  %".772" = load i32, ptr %"R3"
  %"zext.104" = zext i32 %".772" to i64
  %"shl.50" = shl i64 %"zext.104", 32
  %"or.50" = or i64 %"shl.50", %"zext.103"
  %".773" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %".773" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".774" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".775" = bitcast ptr %"R11" to ptr
  store float %".774", ptr %".775"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".778" = load i32, ptr %"UR4"
  %"zext.105" = zext i32 %".778" to i64
  %".779" = load i32, ptr %"UR5"
  %"zext.106" = zext i32 %".779" to i64
  %"shl.51" = shl i64 %"zext.106", 32
  %"or.51" = or i64 %"shl.51", %"zext.105"
  %".780" = add i64 %"or.51", 4
  %"inttoptr_bytes.51" = inttoptr i64 %".780" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".781" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".782" = bitcast ptr %"R10" to ptr
  store float %".781", ptr %".782"
  ; LDG.E.SYS R13, [R2+0x8]
  %".785" = load i32, ptr %"R2"
  %"zext.107" = zext i32 %".785" to i64
  %".786" = load i32, ptr %"R3"
  %"zext.108" = zext i32 %".786" to i64
  %"shl.52" = shl i64 %"zext.108", 32
  %"or.52" = or i64 %"shl.52", %"zext.107"
  %".787" = add i64 %"or.52", 8
  %"inttoptr_bytes.52" = inttoptr i64 %".787" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".788" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".789" = bitcast ptr %"R13" to ptr
  store float %".788", ptr %".789"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".792" = load i32, ptr %"UR4"
  %"zext.109" = zext i32 %".792" to i64
  %".793" = load i32, ptr %"UR5"
  %"zext.110" = zext i32 %".793" to i64
  %"shl.53" = shl i64 %"zext.110", 32
  %"or.53" = or i64 %"shl.53", %"zext.109"
  %".794" = add i64 %"or.53", 8
  %"inttoptr_bytes.53" = inttoptr i64 %".794" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".795" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".796" = bitcast ptr %"R12" to ptr
  store float %".795", ptr %".796"
  ; LDG.E.SYS R15, [R2+0xc]
  %".799" = load i32, ptr %"R2"
  %"zext.111" = zext i32 %".799" to i64
  %".800" = load i32, ptr %"R3"
  %"zext.112" = zext i32 %".800" to i64
  %"shl.54" = shl i64 %"zext.112", 32
  %"or.54" = or i64 %"shl.54", %"zext.111"
  %".801" = add i64 %"or.54", 12
  %"inttoptr_bytes.54" = inttoptr i64 %".801" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".802" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".803" = bitcast ptr %"R15" to ptr
  store float %".802", ptr %".803"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".806" = load i32, ptr %"UR4"
  %"zext.113" = zext i32 %".806" to i64
  %".807" = load i32, ptr %"UR5"
  %"zext.114" = zext i32 %".807" to i64
  %"shl.55" = shl i64 %"zext.114", 32
  %"or.55" = or i64 %"shl.55", %"zext.113"
  %".808" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %".808" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".809" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".810" = bitcast ptr %"R14" to ptr
  store float %".809", ptr %".810"
  ; IADD3 R6, R6, -0x4, RZ
  %".813" = load i32, ptr %"R6"
  %".814" = add i32 %".813", -4
  %".815" = add i32 %".814", 0
  store i32 %".815", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".818" = load i32, ptr %"UR4"
  %".819" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".818", i32 16)
  %".820" = extractvalue {i32, i1} %".819", 0
  %".821" = extractvalue {i32, i1} %".819", 1
  %".822" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".820", i32 0)
  %".823" = extractvalue {i32, i1} %".822", 0
  %".824" = extractvalue {i32, i1} %".822", 1
  %".825" = or i1 %".821", %".824"
  store i32 %".823", ptr %"UR4"
  store i1 %".825", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".829" = load i32, ptr %"R5"
  %".830" = add i32 %".829", 4
  %".831" = add i32 %".830", 0
  store i32 %".831", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".834" = load i32, ptr %"R6"
  %".835" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".834", 0
  %".836" = add i1 %"cmp.8", 0
  %".837" = xor i1 %".836", -1
  %".838" = and i1 %"cmp.8", %".835"
  %".839" = and i1 %".837", %".835"
  store i1 %".838", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".842" = load i32, ptr %"UR5"
  %".843" = load i1, ptr %"UP0"
  %".844" = xor i1 1, -1
  %".845" = zext i1 %".843" to i32
  %".846" = zext i1 %".844" to i32
  %"add.19" = add i32 0, %".842"
  %"add.20" = add i32 %"add.19", 0
  %"add.21" = add i32 %"add.20", %".845"
  %"add.22" = add i32 %"add.21", %".846"
  store i32 %"add.22", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".849" = load float, ptr %"R8"
  %".850" = load float, ptr %"R9"
  %".851" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".849", %".850"
  %"fadd.24" = fadd float %"fmul.24", %".851"
  %".852" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".852"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".855" = load i32, ptr %"R2"
  %".856" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".855", i32 16)
  %".857" = extractvalue {i32, i1} %".856", 0
  %".858" = extractvalue {i32, i1} %".856", 1
  %".859" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".857", i32 0)
  %".860" = extractvalue {i32, i1} %".859", 0
  %".861" = extractvalue {i32, i1} %".859", 1
  %".862" = or i1 %".858", %".861"
  store i32 %".860", ptr %"R9"
  store i1 %".862", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".866" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.23" = add i32 %"mul.6", %".866"
  store i32 %"add.23", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".869" = load float, ptr %"R11"
  %".870" = load float, ptr %"R10"
  %".871" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".869", %".870"
  %"fadd.25" = fadd float %"fmul.25", %".871"
  %".872" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".872"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".875" = load i32, ptr %"R3"
  %".876" = load i1, ptr %"P1"
  %".877" = xor i1 1, -1
  %".878" = zext i1 %".876" to i32
  %".879" = zext i1 %".877" to i32
  %"add.24" = add i32 0, %".875"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".878"
  %"add.27" = add i32 %"add.26", %".879"
  store i32 %"add.27", ptr %"R10"
  ; MOV R3, R10
  %".882" = load i32, ptr %"R10"
  store i32 %".882", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".885" = load float, ptr %"R13"
  %".886" = load float, ptr %"R12"
  %".887" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".885", %".886"
  %"fadd.26" = fadd float %"fmul.26", %".887"
  %".888" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".888"
  ; FFMA R7, R15, R14, R8
  %".891" = load float, ptr %"R15"
  %".892" = load float, ptr %"R14"
  %".893" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".891", %".892"
  %"fadd.27" = fadd float %"fmul.27", %".893"
  %".894" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".894"
  ; @P0 BRA `(.L_x_2)
  %".897" = load i1, ptr %"P0"
  %".898" = icmp eq i1 %".897", 1
  br i1 %".898", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".901" = load i32, ptr %"R4"
  %".902" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".901", 0
  %".903" = add i1 %"cmp.9", 0
  %".904" = xor i1 %".903", -1
  %".905" = and i1 %"cmp.9", %".902"
  %".906" = and i1 %".904", %".902"
  store i1 %".905", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".909" = load i1, ptr %"P0"
  %".910" = icmp ne i1 %".909", 1
  br i1 %".910", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".915" = load i32, ptr %"R0"
  %".916" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".915", %"Arg_4"
  %"add.28" = add i32 %"mul.7", %".916"
  store i32 %"add.28", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".919" = load i32, ptr %"R2"
  %".920" = load i32, ptr %"R8"
  %"zext.115" = zext i32 %".919" to i64
  %"zext.116" = zext i32 %".920" to i64
  %"mul.8" = mul i64 %"zext.115", %"zext.116"
  %".921" = ptrtoint ptr %"Arg_1" to i64
  %"add.29" = add i64 %"mul.8", %".921"
  %".922" = and i64 %"add.29", 18446744069414584320
  %".923" = lshr i64 %".922", 32
  %"trunc32.4" = trunc i64 %".923" to i32
  %"trunc32.5" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".927" = load i32, ptr %"R5"
  %".928" = load i32, ptr %"R8"
  %"zext.117" = zext i32 %".927" to i64
  %"zext.118" = zext i32 %".928" to i64
  %"mul.9" = mul i64 %"zext.117", %"zext.118"
  %".929" = ptrtoint ptr %"Arg_0" to i64
  %"add.30" = add i64 %"mul.9", %".929"
  %".930" = and i64 %"add.30", 18446744069414584320
  %".931" = lshr i64 %".930", 32
  %"trunc32.6" = trunc i64 %".931" to i32
  %"trunc32.7" = trunc i64 %"add.30" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".935" = load i32, ptr %"R2"
  store i32 %".935", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".939" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.31" = add i32 %"mul.10", %".939"
  store i32 %"add.31", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".942" = load i32, ptr %"R8"
  %"zext.119" = zext i32 %".942" to i64
  %".943" = load i32, ptr %"R9"
  %"zext.120" = zext i32 %".943" to i64
  %"shl.56" = shl i64 %"zext.120", 32
  %"or.56" = or i64 %"shl.56", %"zext.119"
  %".944" = add i64 %"or.56", 0
  %"inttoptr_bytes.56" = inttoptr i64 %".944" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".945" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".946" = bitcast ptr %"R5" to ptr
  store float %".945", ptr %".946"
  ; LDG.E.SYS R2, [R2]
  %".949" = load i32, ptr %"R2"
  %"zext.121" = zext i32 %".949" to i64
  %".950" = load i32, ptr %"R3"
  %"zext.122" = zext i32 %".950" to i64
  %"shl.57" = shl i64 %"zext.122", 32
  %"or.57" = or i64 %"shl.57", %"zext.121"
  %".951" = add i64 %"or.57", 0
  %"inttoptr_bytes.57" = inttoptr i64 %".951" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".952" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".953" = bitcast ptr %"R2" to ptr
  store float %".952", ptr %".953"
  ; IADD3 R4, R4, -0x1, RZ
  %".956" = load i32, ptr %"R4"
  %".957" = add i32 %".956", -1
  %".958" = add i32 %".957", 0
  store i32 %".958", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".961" = load i32, ptr %"R4"
  %".962" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".961", 0
  %".963" = add i1 %"cmp.10", 0
  %".964" = xor i1 %".963", -1
  %".965" = and i1 %"cmp.10", %".962"
  %".966" = and i1 %".964", %".962"
  store i1 %".965", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".969" = load i32, ptr %"R6"
  %".970" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".969", i32 4)
  %".971" = extractvalue {i32, i1} %".970", 0
  %".972" = extractvalue {i32, i1} %".970", 1
  %".973" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".971", i32 0)
  %".974" = extractvalue {i32, i1} %".973", 0
  %".975" = extractvalue {i32, i1} %".973", 1
  %".976" = or i1 %".972", %".975"
  store i32 %".974", ptr %"R6"
  store i1 %".976", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".980" = load i32, ptr %"R8"
  %".981" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".980", i32 4)
  %".982" = extractvalue {i32, i1} %".981", 0
  %".983" = extractvalue {i32, i1} %".981", 1
  %".984" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".982", i32 0)
  %".985" = extractvalue {i32, i1} %".984", 0
  %".986" = extractvalue {i32, i1} %".984", 1
  %".987" = or i1 %".983", %".986"
  store i32 %".985", ptr %"R8"
  store i1 %".987", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".991" = load i32, ptr %"R3"
  %".992" = load i1, ptr %"P1"
  %".993" = xor i1 1, -1
  %".994" = zext i1 %".992" to i32
  %".995" = zext i1 %".993" to i32
  %"add.32" = add i32 0, %".991"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".994"
  %"add.35" = add i32 %"add.34", %".995"
  store i32 %"add.35", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".998" = load i32, ptr %"R9"
  %".999" = load i1, ptr %"P2"
  %".1000" = xor i1 1, -1
  %".1001" = zext i1 %".999" to i32
  %".1002" = zext i1 %".1000" to i32
  %"add.36" = add i32 0, %".998"
  %"add.37" = add i32 %"add.36", 0
  %"add.38" = add i32 %"add.37", %".1001"
  %"add.39" = add i32 %"add.38", %".1002"
  store i32 %"add.39", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".1005" = load float, ptr %"R2"
  %".1006" = load float, ptr %"R5"
  %".1007" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".1005", %".1006"
  %"fadd.28" = fadd float %"fmul.28", %".1007"
  %".1008" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".1008"
  ; @P0 BRA `(.L_x_6)
  %".1011" = load i1, ptr %"P0"
  %".1012" = icmp eq i1 %".1011", 1
  br i1 %".1012", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".1017" = load i32, ptr %"R0"
  %".1018" = load i32, ptr %"R5"
  %"zext.123" = zext i32 %".1017" to i64
  %"zext.124" = zext i32 %".1018" to i64
  %"mul.11" = mul i64 %"zext.123", %"zext.124"
  %".1019" = ptrtoint ptr %"Arg_2" to i64
  %"add.40" = add i64 %"mul.11", %".1019"
  %".1020" = and i64 %"add.40", 18446744069414584320
  %".1021" = lshr i64 %".1020", 32
  %"trunc32.8" = trunc i64 %".1021" to i32
  %"trunc32.9" = trunc i64 %"add.40" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".1025" = load i32, ptr %"R2"
  %"zext.125" = zext i32 %".1025" to i64
  %".1026" = load i32, ptr %"R3"
  %"zext.126" = zext i32 %".1026" to i64
  %"shl.58" = shl i64 %"zext.126", 32
  %"or.58" = or i64 %"shl.58", %"zext.125"
  %".1027" = add i64 %"or.58", 0
  %"inttoptr_bytes.58" = inttoptr i64 %".1027" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".1028" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".1029" = bitcast ptr %"R2" to ptr
  store float %".1028", ptr %".1029"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1032" = load i32, ptr %"R0"
  %".1033" = load i32, ptr %"R5"
  %"zext.127" = zext i32 %".1032" to i64
  %"zext.128" = zext i32 %".1033" to i64
  %"mul.12" = mul i64 %"zext.127", %"zext.128"
  %".1034" = ptrtoint ptr %"Arg_3" to i64
  %"add.41" = add i64 %"mul.12", %".1034"
  %".1035" = and i64 %"add.41", 18446744069414584320
  %".1036" = lshr i64 %".1035", 32
  %"trunc32.10" = trunc i64 %".1036" to i32
  %"trunc32.11" = trunc i64 %"add.41" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".1040" = load float, ptr %"R2"
  %".1041" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1040", %".1041"
  %".1042" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1042"
  ; STG.E.SYS [R4], R7
  %".1045" = load float, ptr %"R7"
  %".1046" = load i32, ptr %"R4"
  %"zext.129" = zext i32 %".1046" to i64
  %".1047" = load i32, ptr %"R5"
  %"zext.130" = zext i32 %".1047" to i64
  %"shl.59" = shl i64 %"zext.130", 32
  %"or.59" = or i64 %"shl.59", %"zext.129"
  %".1048" = add i64 %"or.59", 0
  %"inttoptr_bytes.59" = inttoptr i64 %".1048" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".1045", ptr addrspace(1) %"ptr_cast_for_access.59"
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
  ; @!P0 BRA `(.L_x_8)
  %".229" = load i1, ptr %"P0"
  %".230" = icmp ne i1 %".229", 1
  br i1 %".230", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
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
  br label %".L_x_12"
.L_x_12:
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
  ; @!P0 BRA `(.L_x_9)
  %".287" = load i1, ptr %"P0"
  %".288" = icmp ne i1 %".287", 1
  br i1 %".288", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".291" = load i32, ptr %"R14"
  %".292" = load i32, ptr %"R16"
  %"mul.19" = mul i32 %".291", 1
  %"add.19" = add i32 %"mul.19", %".292"
  store i32 %"add.19", ptr %"R17"
  ; UMOV UR4, URZ
  %".295" = load i32, ptr %"URZ"
  store i32 %".295", ptr %"UR4"
  br label %".L_x_10"
.L_x_10:
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
  %".320" = add i64 %"or", 0
  %"inttoptr_bytes" = inttoptr i64 %".320" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".321" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".322" = bitcast ptr %"R2" to ptr
  store float %".321", ptr %".322"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".325" = load i32, ptr %"R23"
  %".326" = load i32, ptr %"R4"
  %"zext.7" = zext i32 %".325" to i64
  %"zext.8" = zext i32 4 to i64
  %"mul.23" = mul i64 %"zext.7", %"zext.8"
  %"zext.9" = zext i32 %".326" to i64
  %"add.23" = add i64 %"mul.23", %"zext.9"
  %".327" = and i64 %"add.23", 18446744069414584320
  %".328" = lshr i64 %".327", 32
  %"trunc32.4" = trunc i64 %".328" to i32
  %"trunc32.5" = trunc i64 %"add.23" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".332" = load i32, ptr %"R4"
  %"zext.10" = zext i32 %".332" to i64
  %".333" = load i32, ptr %"R5"
  %"zext.11" = zext i32 %".333" to i64
  %"shl.1" = shl i64 %"zext.11", 32
  %"or.1" = or i64 %"shl.1", %"zext.10"
  %".334" = add i64 %"or.1", 0
  %"inttoptr_bytes.1" = inttoptr i64 %".334" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".335" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".336" = bitcast ptr %"R4" to ptr
  store float %".335", ptr %".336"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".339" = load i32, ptr %"R23"
  %".340" = load i32, ptr %"R6"
  %"zext.12" = zext i32 %".339" to i64
  %"zext.13" = zext i32 4 to i64
  %"mul.24" = mul i64 %"zext.12", %"zext.13"
  %"zext.14" = zext i32 %".340" to i64
  %"add.24" = add i64 %"mul.24", %"zext.14"
  %".341" = and i64 %"add.24", 18446744069414584320
  %".342" = lshr i64 %".341", 32
  %"trunc32.6" = trunc i64 %".342" to i32
  %"trunc32.7" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".346" = load i32, ptr %"R6"
  %"zext.15" = zext i32 %".346" to i64
  %".347" = load i32, ptr %"R7"
  %"zext.16" = zext i32 %".347" to i64
  %"shl.2" = shl i64 %"zext.16", 32
  %"or.2" = or i64 %"shl.2", %"zext.15"
  %".348" = add i64 %"or.2", 0
  %"inttoptr_bytes.2" = inttoptr i64 %".348" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".349" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".350" = bitcast ptr %"R6" to ptr
  store float %".349", ptr %".350"
  ; LDG.E.SYS R8, [R8]
  %".353" = load i32, ptr %"R8"
  %"zext.17" = zext i32 %".353" to i64
  %".354" = load i32, ptr %"R9"
  %"zext.18" = zext i32 %".354" to i64
  %"shl.3" = shl i64 %"zext.18", 32
  %"or.3" = or i64 %"shl.3", %"zext.17"
  %".355" = add i64 %"or.3", 0
  %"inttoptr_bytes.3" = inttoptr i64 %".355" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".356" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".357" = bitcast ptr %"R8" to ptr
  store float %".356", ptr %".357"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".360" = load i32, ptr %"UR4"
  %".361" = add i32 %".360", 4
  %".362" = add i32 %".361", 0
  store i32 %".362", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".365" = load i32, ptr %"R20"
  %".366" = load i32, ptr %"UR4"
  %".367" = add i32 %".365", %".366"
  %".368" = add i32 %".367", 0
  store i32 %".368", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".371" = load i32, ptr %"R18"
  %".372" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".371", 0
  %".373" = add i1 %"cmp.10", 0
  %".374" = xor i1 %".373", -1
  %".375" = and i1 %"cmp.10", %".372"
  %".376" = and i1 %".374", %".372"
  store i1 %".375", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".379" = load i32, ptr %"R23"
  %".380" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".379", 4
  %"add.25" = add i32 %"mul.25", %".380"
  store i32 %"add.25", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".383" = load float, ptr %"R2"
  %".384" = load float, ptr %"R11"
  %".385" = xor i1 1, -1
  %".386" = fcmp olt float %".383", %".384"
  %".387" = fcmp ogt float %".383", %".384"
  %"mnmx_min" = select  i1 %".386", float %".383", float %".384"
  %"mnmx_max" = select  i1 %".387", float %".383", float %".384"
  %"mnmx_final" = select  i1 %".385", float %"mnmx_min", float %"mnmx_max"
  %".388" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final", ptr %".388"
  ; FMNMX R11, R11, R4, !PT
  %".391" = load float, ptr %"R11"
  %".392" = load float, ptr %"R4"
  %".393" = xor i1 1, -1
  %".394" = fcmp olt float %".391", %".392"
  %".395" = fcmp ogt float %".391", %".392"
  %"mnmx_min.1" = select  i1 %".394", float %".391", float %".392"
  %"mnmx_max.1" = select  i1 %".395", float %".391", float %".392"
  %"mnmx_final.1" = select  i1 %".393", float %"mnmx_min.1", float %"mnmx_max.1"
  %".396" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.1", ptr %".396"
  ; FMNMX R11, R11, R6, !PT
  %".399" = load float, ptr %"R11"
  %".400" = load float, ptr %"R6"
  %".401" = xor i1 1, -1
  %".402" = fcmp olt float %".399", %".400"
  %".403" = fcmp ogt float %".399", %".400"
  %"mnmx_min.2" = select  i1 %".402", float %".399", float %".400"
  %"mnmx_max.2" = select  i1 %".403", float %".399", float %".400"
  %"mnmx_final.2" = select  i1 %".401", float %"mnmx_min.2", float %"mnmx_max.2"
  %".404" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.2", ptr %".404"
  ; FMNMX R11, R11, R8, !PT
  %".407" = load float, ptr %"R11"
  %".408" = load float, ptr %"R8"
  %".409" = xor i1 1, -1
  %".410" = fcmp olt float %".407", %".408"
  %".411" = fcmp ogt float %".407", %".408"
  %"mnmx_min.3" = select  i1 %".410", float %".407", float %".408"
  %"mnmx_max.3" = select  i1 %".411", float %".407", float %".408"
  %"mnmx_final.3" = select  i1 %".409", float %"mnmx_min.3", float %"mnmx_max.3"
  %".412" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.3", ptr %".412"
  ; @P1 BRA `(.L_x_10)
  %".415" = load i1, ptr %"P1"
  %".416" = icmp eq i1 %".415", 1
  br i1 %".416", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".419" = load i32, ptr %"R13"
  %".420" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".419", 1
  %"add.26" = add i32 %"mul.26", %".420"
  store i32 %"add.26", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".423" = load i1, ptr %"P2"
  %".424" = icmp ne i1 %".423", 1
  br i1 %".424", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".427" = load i32, ptr %"R12"
  %".428" = load i32, ptr %"UR4"
  %".429" = add i32 %".427", %".428"
  %".430" = add i32 %".429", 0
  store i32 %".430", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".435" = load i32, ptr %"R5"
  %".436" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".435", %"Arg_2"
  %"add.27" = add i32 %"mul.27", %".436"
  store i32 %"add.27", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".439" = load i32, ptr %"R2"
  %".440" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".439" to i64
  %"zext.20" = zext i32 %".440" to i64
  %"mul.28" = mul i64 %"zext.19", %"zext.20"
  %".441" = ptrtoint ptr %"Arg_0" to i64
  %"add.28" = add i64 %"mul.28", %".441"
  %".442" = and i64 %"add.28", 18446744069414584320
  %".443" = lshr i64 %".442", 32
  %"trunc32.8" = trunc i64 %".443" to i32
  %"trunc32.9" = trunc i64 %"add.28" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".447" = load i32, ptr %"R2"
  %"zext.21" = zext i32 %".447" to i64
  %".448" = load i32, ptr %"R3"
  %"zext.22" = zext i32 %".448" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".449" = add i64 %"or.4", 0
  %"inttoptr_bytes.4" = inttoptr i64 %".449" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".450" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".451" = bitcast ptr %"R2" to ptr
  store float %".450", ptr %".451"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".454" = load i32, ptr %"R15"
  %".455" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".454", 1
  %".456" = add i1 %"cmp.11", 0
  %".457" = xor i1 %".456", -1
  %".458" = and i1 %"cmp.11", %".455"
  %".459" = and i1 %".457", %".455"
  store i1 %".458", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".462" = load float, ptr %"R11"
  %".463" = load float, ptr %"R2"
  %".464" = xor i1 1, -1
  %".465" = fcmp olt float %".462", %".463"
  %".466" = fcmp ogt float %".462", %".463"
  %"mnmx_min.4" = select  i1 %".465", float %".462", float %".463"
  %"mnmx_max.4" = select  i1 %".466", float %".462", float %".463"
  %"mnmx_final.4" = select  i1 %".464", float %"mnmx_min.4", float %"mnmx_max.4"
  %".467" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.4", ptr %".467"
  ; @!P1 BRA `(.L_x_11)
  %".470" = load i1, ptr %"P1"
  %".471" = icmp ne i1 %".470", 1
  br i1 %".471", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".474" = load i32, ptr %"R15"
  %".475" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".474", 2
  %".476" = add i1 %"cmp.12", 0
  %".477" = xor i1 %".476", -1
  %".478" = and i1 %"cmp.12", %".475"
  %".479" = and i1 %".477", %".475"
  store i1 %".478", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".482" = load i32, ptr %"R5"
  %".483" = add i32 %".482", 1
  %".484" = add i32 %".483", 0
  store i32 %".484", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".487" = load i32, ptr %"R2"
  %".488" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".487", %"Arg_2"
  %"add.29" = add i32 %"mul.29", %".488"
  store i32 %"add.29", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".491" = load i1, ptr %"P1"
  %".492" = icmp eq i1 %".491", 1
  br i1 %".492", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".495" = load i32, ptr %"R5"
  %".496" = add i32 %".495", 2
  %".497" = add i32 %".496", 0
  store i32 %".497", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".502" = load i1, ptr %"P1"
  %".503" = icmp eq i1 %".502", 1
  br i1 %".503", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".506" = load i32, ptr %"R3"
  %".507" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".506", %"Arg_2"
  %"add.30" = add i32 %"mul.30", %".507"
  store i32 %"add.30", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".512" = load i32, ptr %"R2"
  %".513" = load i32, ptr %"R7"
  %"zext.23" = zext i32 %".512" to i64
  %"zext.24" = zext i32 %".513" to i64
  %"mul.31" = mul i64 %"zext.23", %"zext.24"
  %".514" = ptrtoint ptr %"Arg_0" to i64
  %"add.31" = add i64 %"mul.31", %".514"
  %".515" = and i64 %"add.31", 18446744069414584320
  %".516" = lshr i64 %".515", 32
  %"trunc32.10" = trunc i64 %".516" to i32
  %"trunc32.11" = trunc i64 %"add.31" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".520" = load i1, ptr %"P1"
  %".521" = icmp eq i1 %".520", 1
  br i1 %".521", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".524" = load i32, ptr %"R4"
  %".525" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".524" to i64
  %"zext.26" = zext i32 %".525" to i64
  %"mul.32" = mul i64 %"zext.25", %"zext.26"
  %".526" = ptrtoint ptr %"Arg_0" to i64
  %"add.32" = add i64 %"mul.32", %".526"
  %".527" = and i64 %"add.32", 18446744069414584320
  %".528" = lshr i64 %".527", 32
  %"trunc32.12" = trunc i64 %".528" to i32
  %"trunc32.13" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".534" = load i32, ptr %"R2"
  %"zext.27" = zext i32 %".534" to i64
  %".535" = load i32, ptr %"R3"
  %"zext.28" = zext i32 %".535" to i64
  %"shl.5" = shl i64 %"zext.28", 32
  %"or.5" = or i64 %"shl.5", %"zext.27"
  %".536" = add i64 %"or.5", 0
  %"inttoptr_bytes.5" = inttoptr i64 %".536" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".537" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".538" = bitcast ptr %"R2" to ptr
  store float %".537", ptr %".538"
  ; @P1 LDG.E.SYS R4, [R4]
  %".541" = load i1, ptr %"P1"
  %".542" = icmp eq i1 %".541", 1
  br i1 %".542", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".545" = load i32, ptr %"R4"
  %"zext.29" = zext i32 %".545" to i64
  %".546" = load i32, ptr %"R5"
  %"zext.30" = zext i32 %".546" to i64
  %"shl.6" = shl i64 %"zext.30", 32
  %"or.6" = or i64 %"shl.6", %"zext.29"
  %".547" = add i64 %"or.6", 0
  %"inttoptr_bytes.6" = inttoptr i64 %".547" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".548" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".549" = bitcast ptr %"R4" to ptr
  store float %".548", ptr %".549"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".554" = load float, ptr %"R11"
  %".555" = load float, ptr %"R2"
  %".556" = xor i1 1, -1
  %".557" = fcmp olt float %".554", %".555"
  %".558" = fcmp ogt float %".554", %".555"
  %"mnmx_min.5" = select  i1 %".557", float %".554", float %".555"
  %"mnmx_max.5" = select  i1 %".558", float %".554", float %".555"
  %"mnmx_final.5" = select  i1 %".556", float %"mnmx_min.5", float %"mnmx_max.5"
  %".559" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.5", ptr %".559"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".562" = load i1, ptr %"P1"
  %".563" = icmp eq i1 %".562", 1
  br i1 %".563", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".566" = load float, ptr %"R11"
  %".567" = load float, ptr %"R4"
  %".568" = xor i1 1, -1
  %".569" = fcmp olt float %".566", %".567"
  %".570" = fcmp ogt float %".566", %".567"
  %"mnmx_min.6" = select  i1 %".569", float %".566", float %".567"
  %"mnmx_max.6" = select  i1 %".570", float %".566", float %".567"
  %"mnmx_final.6" = select  i1 %".568", float %"mnmx_min.6", float %"mnmx_max.6"
  %".571" = bitcast ptr %"R11" to ptr
  store float %"mnmx_final.6", ptr %".571"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".576" = load i32, ptr %"R16"
  %".577" = add i32 %".576", 1
  %".578" = add i32 %".577", 0
  store i32 %".578", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".581" = load i32, ptr %"R16"
  %".582" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".581", %"Arg_3"
  %".583" = add i1 %"cmp.13", 0
  %".584" = xor i1 %".583", -1
  %".585" = and i1 %"cmp.13", %".582"
  %".586" = and i1 %".584", %".582"
  store i1 %".585", ptr %"P1"
  ; @!P1 BRA `(.L_x_12)
  %".589" = load i1, ptr %"P1"
  %".590" = icmp ne i1 %".589", 1
  br i1 %".590", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".593" = load i32, ptr %"R21"
  %".594" = load i32, ptr %"R19"
  %".595" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".593", %".594"
  %"add.33" = add i32 %"mul.33", %".595"
  store i32 %"add.33", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.34" = add i32 %"mul.34", 4
  store i32 %"add.34", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".600" = load i32, ptr %"R21"
  %".601" = load i32, ptr %"R3"
  %".602" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".600", %".601"
  %"add.35" = add i32 %"mul.35", %".602"
  store i32 %"add.35", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".605" = load i32, ptr %"R3"
  %".606" = load i32, ptr %"R2"
  %"zext.31" = zext i32 %".605" to i64
  %"zext.32" = zext i32 %".606" to i64
  %"mul.36" = mul i64 %"zext.31", %"zext.32"
  %".607" = ptrtoint ptr %"Arg_1" to i64
  %"add.36" = add i64 %"mul.36", %".607"
  %".608" = and i64 %"add.36", 18446744069414584320
  %".609" = lshr i64 %".608", 32
  %"trunc32.14" = trunc i64 %".609" to i32
  %"trunc32.15" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".613" = load i32, ptr %"R11"
  %".614" = load i32, ptr %"R2"
  %"zext.33" = zext i32 %".614" to i64
  %".615" = load i32, ptr %"R3"
  %"zext.34" = zext i32 %".615" to i64
  %"shl.7" = shl i64 %"zext.34", 32
  %"or.7" = or i64 %"shl.7", %"zext.33"
  %".616" = add i64 %"or.7", 0
  %"inttoptr_bytes.7" = inttoptr i64 %".616" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  store i32 %".613", ptr addrspace(1) %"ptr_cast_for_access.7"
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
  %".46" = add i64 %"or", 0
  %"inttoptr_bytes" = inttoptr i64 %".46" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".47" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".48" = bitcast ptr %"R2" to ptr
  store float %".47", ptr %".48"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".51" = load i32, ptr %"R4"
  %".52" = load i32, ptr %"R5"
  %"zext.4" = zext i32 %".51" to i64
  %"zext.5" = zext i32 %".52" to i64
  %"mul.2" = mul i64 %"zext.4", %"zext.5"
  %".53" = ptrtoint ptr %"Arg_1" to i64
  %"add.2" = add i64 %"mul.2", %".53"
  %".54" = and i64 %"add.2", 18446744069414584320
  %".55" = lshr i64 %".54", 32
  %"trunc32.2" = trunc i64 %".55" to i32
  %"trunc32.3" = trunc i64 %"add.2" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; FMNMX R7, RZ, R2, !PT
  %".59" = load float, ptr %"R2"
  %".60" = xor i1 1, -1
  %".61" = fcmp olt float              0x0, %".59"
  %".62" = fcmp ogt float              0x0, %".59"
  %"mnmx_min" = select  i1 %".61", float              0x0, float %".59"
  %"mnmx_max" = select  i1 %".62", float              0x0, float %".59"
  %"mnmx_final" = select  i1 %".60", float %"mnmx_min", float %"mnmx_max"
  %".63" = bitcast ptr %"R7" to ptr
  store float %"mnmx_final", ptr %".63"
  ; STG.E.SYS [R4], R7
  %".66" = load float, ptr %"R7"
  %".67" = load i32, ptr %"R4"
  %"zext.6" = zext i32 %".67" to i64
  %".68" = load i32, ptr %"R5"
  %"zext.7" = zext i32 %".68" to i64
  %"shl.1" = shl i64 %"zext.7", 32
  %"or.1" = or i64 %"shl.1", %"zext.6"
  %".69" = add i64 %"or.1", 0
  %"inttoptr_bytes.1" = inttoptr i64 %".69" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  store float %".66", ptr addrspace(1) %"ptr_cast_for_access.1"
  ; EXIT
  br label %"ExitFunction"
.L_x_14:
  ; BRA `(.L_x_14)
  br label %".L_x_14"
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
  ; @P0 BRA `(.L_x_15)
  %".95" = load i1, ptr %"P0"
  %".96" = icmp eq i1 %".95", 1
  br i1 %".96", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
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
  br label %".L_x_20"
.L_x_20:
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
  br label %".L_x_19"
.L_x_19:
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
  ; @!P0 BRA `(.L_x_16)
  %".182" = load i1, ptr %"P0"
  %".183" = icmp ne i1 %".182", 1
  br i1 %".183", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
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
  br label %".L_x_17"
.L_x_17:
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
  %".229" = add i64 %"or", 0
  %"inttoptr_bytes" = inttoptr i64 %".229" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".230" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".231" = bitcast ptr %"R14" to ptr
  store float %".230", ptr %".231"
  ; LDG.E.SYS R23, [R6]
  %".234" = load i32, ptr %"R6"
  %"zext.9" = zext i32 %".234" to i64
  %".235" = load i32, ptr %"R7"
  %"zext.10" = zext i32 %".235" to i64
  %"shl.1" = shl i64 %"zext.10", 32
  %"or.1" = or i64 %"shl.1", %"zext.9"
  %".236" = add i64 %"or.1", 0
  %"inttoptr_bytes.1" = inttoptr i64 %".236" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".237" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".238" = bitcast ptr %"R23" to ptr
  store float %".237", ptr %".238"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".241" = load i32, ptr %"R31"
  %".242" = load i32, ptr %"R16"
  %"zext.11" = zext i32 %".241" to i64
  %"zext.12" = zext i32 4 to i64
  %"mul.15" = mul i64 %"zext.11", %"zext.12"
  %"zext.13" = zext i32 %".242" to i64
  %"add.15" = add i64 %"mul.15", %"zext.13"
  %".243" = and i64 %"add.15", 18446744069414584320
  %".244" = lshr i64 %".243", 32
  %"trunc32.6" = trunc i64 %".244" to i32
  %"trunc32.7" = trunc i64 %"add.15" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".248" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".248" to i64
  %".249" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".249" to i64
  %"shl.2" = shl i64 %"zext.15", 32
  %"or.2" = or i64 %"shl.2", %"zext.14"
  %".250" = add i64 %"or.2", 0
  %"inttoptr_bytes.2" = inttoptr i64 %".250" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".251" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".252" = bitcast ptr %"R16" to ptr
  store float %".251", ptr %".252"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".255" = load i32, ptr %"R31"
  %".256" = load i32, ptr %"R18"
  %"zext.16" = zext i32 %".255" to i64
  %"zext.17" = zext i32 4 to i64
  %"mul.16" = mul i64 %"zext.16", %"zext.17"
  %"zext.18" = zext i32 %".256" to i64
  %"add.16" = add i64 %"mul.16", %"zext.18"
  %".257" = and i64 %"add.16", 18446744069414584320
  %".258" = lshr i64 %".257", 32
  %"trunc32.8" = trunc i64 %".258" to i32
  %"trunc32.9" = trunc i64 %"add.16" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".262" = load i32, ptr %"R6"
  %"zext.19" = zext i32 %".262" to i64
  %".263" = load i32, ptr %"R7"
  %"zext.20" = zext i32 %".263" to i64
  %"shl.3" = shl i64 %"zext.20", 32
  %"or.3" = or i64 %"shl.3", %"zext.19"
  %".264" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %".264" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".265" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".266" = bitcast ptr %"R22" to ptr
  store float %".265", ptr %".266"
  ; LDG.E.SYS R18, [R18]
  %".269" = load i32, ptr %"R18"
  %"zext.21" = zext i32 %".269" to i64
  %".270" = load i32, ptr %"R19"
  %"zext.22" = zext i32 %".270" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".271" = add i64 %"or.4", 0
  %"inttoptr_bytes.4" = inttoptr i64 %".271" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".272" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".273" = bitcast ptr %"R18" to ptr
  store float %".272", ptr %".273"
  ; LDG.E.SYS R25, [R6+0x8]
  %".276" = load i32, ptr %"R6"
  %"zext.23" = zext i32 %".276" to i64
  %".277" = load i32, ptr %"R7"
  %"zext.24" = zext i32 %".277" to i64
  %"shl.5" = shl i64 %"zext.24", 32
  %"or.5" = or i64 %"shl.5", %"zext.23"
  %".278" = add i64 %"or.5", 8
  %"inttoptr_bytes.5" = inttoptr i64 %".278" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".279" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".280" = bitcast ptr %"R25" to ptr
  store float %".279", ptr %".280"
  ; LDG.E.SYS R20, [R20]
  %".283" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".283" to i64
  %".284" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".284" to i64
  %"shl.6" = shl i64 %"zext.26", 32
  %"or.6" = or i64 %"shl.6", %"zext.25"
  %".285" = add i64 %"or.6", 0
  %"inttoptr_bytes.6" = inttoptr i64 %".285" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".286" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".287" = bitcast ptr %"R20" to ptr
  store float %".286", ptr %".287"
  ; LDG.E.SYS R27, [R6+0xc]
  %".290" = load i32, ptr %"R6"
  %"zext.27" = zext i32 %".290" to i64
  %".291" = load i32, ptr %"R7"
  %"zext.28" = zext i32 %".291" to i64
  %"shl.7" = shl i64 %"zext.28", 32
  %"or.7" = or i64 %"shl.7", %"zext.27"
  %".292" = add i64 %"or.7", 12
  %"inttoptr_bytes.7" = inttoptr i64 %".292" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".293" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".294" = bitcast ptr %"R27" to ptr
  store float %".293", ptr %".294"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".297" = load i32, ptr %"UR4"
  %".298" = add i32 %".297", 4
  %".299" = add i32 %".298", 0
  store i32 %".299", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".302" = load i32, ptr %"R31"
  %".303" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".302", 2
  %"add.17" = add i32 %"shl.8", %".303"
  store i32 %"add.17", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".306" = load float, ptr %"R23"
  %".307" = load float, ptr %"R14"
  %".308" = load float, ptr %"R12"
  %"fmul" = fmul float %".306", %".307"
  %"fadd" = fadd float %"fmul", %".308"
  %".309" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".309"
  ; IADD3 R12, R26, UR4, RZ
  %".312" = load i32, ptr %"R26"
  %".313" = load i32, ptr %"UR4"
  %".314" = add i32 %".312", %".313"
  %".315" = add i32 %".314", 0
  store i32 %".315", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".318" = load i32, ptr %"R12"
  %".319" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".318", 0
  %".320" = add i1 %"cmp.8", 0
  %".321" = xor i1 %".320", -1
  %".322" = and i1 %"cmp.8", %".319"
  %".323" = and i1 %".321", %".319"
  store i1 %".322", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".326" = load float, ptr %"R22"
  %".327" = load float, ptr %"R16"
  %".328" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".326", %".327"
  %"fadd.1" = fadd float %"fmul.1", %".328"
  %".329" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".329"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".332" = load i32, ptr %"R6"
  %".333" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".332", i32 16)
  %".334" = extractvalue {i32, i1} %".333", 0
  %".335" = extractvalue {i32, i1} %".333", 1
  %".336" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".334", i32 0)
  %".337" = extractvalue {i32, i1} %".336", 0
  %".338" = extractvalue {i32, i1} %".336", 1
  %".339" = or i1 %".335", %".338"
  store i32 %".337", ptr %"R23"
  store i1 %".339", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".343" = load float, ptr %"R25"
  %".344" = load float, ptr %"R18"
  %".345" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".343", %".344"
  %"fadd.2" = fadd float %"fmul.2", %".345"
  %".346" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".346"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".349" = load i32, ptr %"R7"
  %".350" = load i1, ptr %"P4"
  %".351" = xor i1 1, -1
  %".352" = zext i1 %".350" to i32
  %".353" = zext i1 %".351" to i32
  %"add.18" = add i32 0, %".349"
  %"add.19" = add i32 %"add.18", 0
  %"add.20" = add i32 %"add.19", %".352"
  %"add.21" = add i32 %"add.20", %".353"
  store i32 %"add.21", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".356" = load float, ptr %"R27"
  %".357" = load float, ptr %"R20"
  %".358" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".356", %".357"
  %"fadd.3" = fadd float %"fmul.3", %".358"
  %".359" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".359"
  ; @P2 BRA `(.L_x_17)
  %".362" = load i1, ptr %"P2"
  %".363" = icmp eq i1 %".362", 1
  br i1 %".363", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".366" = load i32, ptr %"R2"
  %".367" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".366", 1
  %"add.22" = add i32 %"mul.17", %".367"
  store i32 %"add.22", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".370" = load i1, ptr %"P3"
  %".371" = icmp ne i1 %".370", 1
  br i1 %".371", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".374" = load i32, ptr %"R11"
  %".375" = load i32, ptr %"UR4"
  %".376" = add i32 %".374", %".375"
  %".377" = add i32 %".376", 0
  store i32 %".377", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".380" = load i32, ptr %"R29"
  %".381" = load i32, ptr %"UR4"
  %".382" = add i32 %".380", %".381"
  %".383" = add i32 %".382", 0
  store i32 %".383", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".388" = load i32, ptr %"R15"
  %".389" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".388", %"Arg_3"
  %"add.23" = add i32 %"mul.18", %".389"
  store i32 %"add.23", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".392" = load i32, ptr %"R16"
  %".393" = load i32, ptr %"R19"
  %"zext.29" = zext i32 %".392" to i64
  %"zext.30" = zext i32 %".393" to i64
  %"mul.19" = mul i64 %"zext.29", %"zext.30"
  %".394" = ptrtoint ptr %"Arg_1" to i64
  %"add.24" = add i64 %"mul.19", %".394"
  %".395" = and i64 %"add.24", 18446744069414584320
  %".396" = lshr i64 %".395", 32
  %"trunc32.10" = trunc i64 %".396" to i32
  %"trunc32.11" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".400" = load i32, ptr %"R6"
  %".401" = load i32, ptr %"R19"
  %"zext.31" = zext i32 %".400" to i64
  %"zext.32" = zext i32 %".401" to i64
  %"mul.20" = mul i64 %"zext.31", %"zext.32"
  %".402" = ptrtoint ptr %"Arg_0" to i64
  %"add.25" = add i64 %"mul.20", %".402"
  %".403" = and i64 %"add.25", 18446744069414584320
  %".404" = lshr i64 %".403", 32
  %"trunc32.12" = trunc i64 %".404" to i32
  %"trunc32.13" = trunc i64 %"add.25" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".408" = load i32, ptr %"R16"
  %"zext.33" = zext i32 %".408" to i64
  %".409" = load i32, ptr %"R17"
  %"zext.34" = zext i32 %".409" to i64
  %"shl.9" = shl i64 %"zext.34", 32
  %"or.8" = or i64 %"shl.9", %"zext.33"
  %".410" = add i64 %"or.8", 0
  %"inttoptr_bytes.8" = inttoptr i64 %".410" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".411" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".412" = bitcast ptr %"R13" to ptr
  store float %".411", ptr %".412"
  ; LDG.E.SYS R6, [R6]
  %".415" = load i32, ptr %"R6"
  %"zext.35" = zext i32 %".415" to i64
  %".416" = load i32, ptr %"R7"
  %"zext.36" = zext i32 %".416" to i64
  %"shl.10" = shl i64 %"zext.36", 32
  %"or.9" = or i64 %"shl.10", %"zext.35"
  %".417" = add i64 %"or.9", 0
  %"inttoptr_bytes.9" = inttoptr i64 %".417" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".418" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".419" = bitcast ptr %"R6" to ptr
  store float %".418", ptr %".419"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".422" = load i32, ptr %"R4"
  %".423" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".422", 1
  %".424" = add i1 %"cmp.9", 0
  %".425" = xor i1 %".424", -1
  %".426" = and i1 %"cmp.9", %".423"
  %".427" = and i1 %".425", %".423"
  store i1 %".426", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".430" = load float, ptr %"R13"
  %".431" = load float, ptr %"R6"
  %".432" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".430", %".431"
  %"fadd.4" = fadd float %"fmul.4", %".432"
  %".433" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".433"
  ; @!P2 BRA `(.L_x_18)
  %".436" = load i1, ptr %"P2"
  %".437" = icmp ne i1 %".436", 1
  br i1 %".437", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".440" = load i32, ptr %"R4"
  %".441" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".440", 2
  %".442" = add i1 %"cmp.10", 0
  %".443" = xor i1 %".442", -1
  %".444" = and i1 %"cmp.10", %".441"
  %".445" = and i1 %".443", %".441"
  store i1 %".444", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".448" = load i32, ptr %"R16"
  %"zext.37" = zext i32 %".448" to i64
  %".449" = load i32, ptr %"R17"
  %"zext.38" = zext i32 %".449" to i64
  %"shl.11" = shl i64 %"zext.38", 32
  %"or.10" = or i64 %"shl.11", %"zext.37"
  %".450" = add i64 %"or.10", 4
  %"inttoptr_bytes.10" = inttoptr i64 %".450" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".451" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".452" = bitcast ptr %"R13" to ptr
  store float %".451", ptr %".452"
  ; IADD3 R6, R15, 0x1, RZ
  %".455" = load i32, ptr %"R15"
  %".456" = add i32 %".455", 1
  %".457" = add i32 %".456", 0
  store i32 %".457", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".460" = load i32, ptr %"R6"
  %".461" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".460", %"Arg_3"
  %"add.26" = add i32 %"mul.21", %".461"
  store i32 %"add.26", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".464" = load i1, ptr %"P2"
  %".465" = icmp eq i1 %".464", 1
  br i1 %".465", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".468" = load i32, ptr %"R15"
  %".469" = add i32 %".468", 2
  %".470" = add i32 %".469", 0
  store i32 %".470", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".475" = load i1, ptr %"P2"
  %".476" = icmp eq i1 %".475", 1
  br i1 %".476", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".479" = load i32, ptr %"R7"
  %".480" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".479", %"Arg_3"
  %"add.27" = add i32 %"mul.22", %".480"
  store i32 %"add.27", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".485" = load i32, ptr %"R6"
  %".486" = load i32, ptr %"R19"
  %"zext.39" = zext i32 %".485" to i64
  %"zext.40" = zext i32 %".486" to i64
  %"mul.23" = mul i64 %"zext.39", %"zext.40"
  %".487" = ptrtoint ptr %"Arg_0" to i64
  %"add.28" = add i64 %"mul.23", %".487"
  %".488" = and i64 %"add.28", 18446744069414584320
  %".489" = lshr i64 %".488", 32
  %"trunc32.14" = trunc i64 %".489" to i32
  %"trunc32.15" = trunc i64 %"add.28" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".493" = load i1, ptr %"P2"
  %".494" = icmp eq i1 %".493", 1
  br i1 %".494", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".497" = load i32, ptr %"R14"
  %".498" = load i32, ptr %"R19"
  %"zext.41" = zext i32 %".497" to i64
  %"zext.42" = zext i32 %".498" to i64
  %"mul.24" = mul i64 %"zext.41", %"zext.42"
  %".499" = ptrtoint ptr %"Arg_0" to i64
  %"add.29" = add i64 %"mul.24", %".499"
  %".500" = and i64 %"add.29", 18446744069414584320
  %".501" = lshr i64 %".500", 32
  %"trunc32.16" = trunc i64 %".501" to i32
  %"trunc32.17" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".507" = load i1, ptr %"P2"
  %".508" = icmp eq i1 %".507", 1
  br i1 %".508", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".511" = load i32, ptr %"R16"
  %"zext.43" = zext i32 %".511" to i64
  %".512" = load i32, ptr %"R17"
  %"zext.44" = zext i32 %".512" to i64
  %"shl.12" = shl i64 %"zext.44", 32
  %"or.11" = or i64 %"shl.12", %"zext.43"
  %".513" = add i64 %"or.11", 8
  %"inttoptr_bytes.11" = inttoptr i64 %".513" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".514" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".515" = bitcast ptr %"R19" to ptr
  store float %".514", ptr %".515"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".520" = load i32, ptr %"R6"
  %"zext.45" = zext i32 %".520" to i64
  %".521" = load i32, ptr %"R7"
  %"zext.46" = zext i32 %".521" to i64
  %"shl.13" = shl i64 %"zext.46", 32
  %"or.12" = or i64 %"shl.13", %"zext.45"
  %".522" = add i64 %"or.12", 0
  %"inttoptr_bytes.12" = inttoptr i64 %".522" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".523" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".524" = bitcast ptr %"R6" to ptr
  store float %".523", ptr %".524"
  ; @P2 LDG.E.SYS R14, [R14]
  %".527" = load i1, ptr %"P2"
  %".528" = icmp eq i1 %".527", 1
  br i1 %".528", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".531" = load i32, ptr %"R14"
  %"zext.47" = zext i32 %".531" to i64
  %".532" = load i32, ptr %"R15"
  %"zext.48" = zext i32 %".532" to i64
  %"shl.14" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.14", %"zext.47"
  %".533" = add i64 %"or.13", 0
  %"inttoptr_bytes.13" = inttoptr i64 %".533" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".534" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".535" = bitcast ptr %"R14" to ptr
  store float %".534", ptr %".535"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".540" = load float, ptr %"R13"
  %".541" = load float, ptr %"R6"
  %".542" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".540", %".541"
  %"fadd.5" = fadd float %"fmul.5", %".542"
  %".543" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".543"
  ; @P2 FFMA R12, R19, R14, R12
  %".546" = load i1, ptr %"P2"
  %".547" = icmp eq i1 %".546", 1
  br i1 %".547", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".550" = load float, ptr %"R19"
  %".551" = load float, ptr %"R14"
  %".552" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".550", %".551"
  %"fadd.6" = fadd float %"fmul.6", %".552"
  %".553" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".553"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".558" = load i32, ptr %"R8"
  %".559" = add i32 %".558", 1
  %".560" = add i32 %".559", 0
  store i32 %".560", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".563" = load i32, ptr %"R8"
  %".564" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".563", %"Arg_4"
  %".565" = add i1 %"cmp.11", 0
  %".566" = xor i1 %".565", -1
  %".567" = and i1 %"cmp.11", %".564"
  %".568" = and i1 %".566", %".564"
  store i1 %".567", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".571" = load i1, ptr %"P2"
  %".572" = icmp ne i1 %".571", 1
  br i1 %".572", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".575" = load i1, ptr %"P1"
  %".576" = icmp ne i1 %".575", 1
  br i1 %".576", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".579" = load i32, ptr %"UR5"
  %".580" = add i32 %".579", 1
  %".581" = add i32 %".580", 0
  store i32 %".581", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".584" = load i32, ptr %"R0"
  %".585" = load i32, ptr %"UR4"
  %".586" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".584", %".585"
  %"add.30" = add i32 %"mul.25", %".586"
  store i32 %"add.30", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".591" = load i32, ptr %"R3"
  %".592" = load i32, ptr %"UR4"
  %".593" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".591", %".592"
  %"add.31" = add i32 %"mul.26", %".593"
  store i32 %"add.31", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".596" = load i32, ptr %"R3"
  %".597" = load i32, ptr %"R0"
  %"zext.49" = zext i32 %".596" to i64
  %"zext.50" = zext i32 %".597" to i64
  %"mul.27" = mul i64 %"zext.49", %"zext.50"
  %".598" = ptrtoint ptr %"Arg_2" to i64
  %"add.32" = add i64 %"mul.27", %".598"
  %".599" = and i64 %"add.32", 18446744069414584320
  %".600" = lshr i64 %".599", 32
  %"trunc32.18" = trunc i64 %".600" to i32
  %"trunc32.19" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".604" = load i32, ptr %"R12"
  %".605" = load i32, ptr %"R2"
  %"zext.51" = zext i32 %".605" to i64
  %".606" = load i32, ptr %"R3"
  %"zext.52" = zext i32 %".606" to i64
  %"shl.15" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.15", %"zext.51"
  %".607" = add i64 %"or.14", 0
  %"inttoptr_bytes.14" = inttoptr i64 %".607" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  store i32 %".604", ptr addrspace(1) %"ptr_cast_for_access.14"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

