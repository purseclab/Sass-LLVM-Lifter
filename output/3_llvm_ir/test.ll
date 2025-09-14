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
  %"ThreadIdx" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx", ptr %"R3"
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
  %".149" = inttoptr i64 %"or" to ptr
  %".150" = ptrtoint ptr %".149" to i64
  %".151" = add i64 %".150", 0
  %"for_LDG" = inttoptr i64 %".151" to ptr
  %".152" = load float, ptr %"for_LDG"
  %".153" = bitcast ptr %"R8" to ptr
  store float %".152", ptr %".153"
  ; LDG.E.SYS R9, [UR4]
  %".156" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".156" to i64
  %".157" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".157" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %".158" = inttoptr i64 %"or.1" to ptr
  %".159" = ptrtoint ptr %".158" to i64
  %".160" = add i64 %".159", 0
  %"for_LDG.1" = inttoptr i64 %".160" to ptr
  %".161" = load float, ptr %"for_LDG.1"
  %".162" = bitcast ptr %"R9" to ptr
  store float %".161", ptr %".162"
  ; LDG.E.SYS R11, [R2+0x4]
  %".165" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".165" to i64
  %".166" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".166" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %".167" = inttoptr i64 %"or.2" to ptr
  %".168" = ptrtoint ptr %".167" to i64
  %".169" = add i64 %".168", 4
  %"for_LDG.2" = inttoptr i64 %".169" to ptr
  %".170" = load float, ptr %"for_LDG.2"
  %".171" = bitcast ptr %"R11" to ptr
  store float %".170", ptr %".171"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".174" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".174" to i64
  %".175" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".175" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %".176" = inttoptr i64 %"or.3" to ptr
  %".177" = ptrtoint ptr %".176" to i64
  %".178" = add i64 %".177", 4
  %"for_LDG.3" = inttoptr i64 %".178" to ptr
  %".179" = load float, ptr %"for_LDG.3"
  %".180" = bitcast ptr %"R10" to ptr
  store float %".179", ptr %".180"
  ; LDG.E.SYS R13, [R2+0x8]
  %".183" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".183" to i64
  %".184" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".184" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %".185" = inttoptr i64 %"or.4" to ptr
  %".186" = ptrtoint ptr %".185" to i64
  %".187" = add i64 %".186", 8
  %"for_LDG.4" = inttoptr i64 %".187" to ptr
  %".188" = load float, ptr %"for_LDG.4"
  %".189" = bitcast ptr %"R13" to ptr
  store float %".188", ptr %".189"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".192" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".192" to i64
  %".193" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".193" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %".194" = inttoptr i64 %"or.5" to ptr
  %".195" = ptrtoint ptr %".194" to i64
  %".196" = add i64 %".195", 8
  %"for_LDG.5" = inttoptr i64 %".196" to ptr
  %".197" = load float, ptr %"for_LDG.5"
  %".198" = bitcast ptr %"R12" to ptr
  store float %".197", ptr %".198"
  ; LDG.E.SYS R15, [R2+0xc]
  %".201" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".201" to i64
  %".202" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".202" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %".203" = inttoptr i64 %"or.6" to ptr
  %".204" = ptrtoint ptr %".203" to i64
  %".205" = add i64 %".204", 12
  %"for_LDG.6" = inttoptr i64 %".205" to ptr
  %".206" = load float, ptr %"for_LDG.6"
  %".207" = bitcast ptr %"R15" to ptr
  store float %".206", ptr %".207"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".210" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".210" to i64
  %".211" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".211" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %".212" = inttoptr i64 %"or.7" to ptr
  %".213" = ptrtoint ptr %".212" to i64
  %".214" = add i64 %".213", 12
  %"for_LDG.7" = inttoptr i64 %".214" to ptr
  %".215" = load float, ptr %"for_LDG.7"
  %".216" = bitcast ptr %"R14" to ptr
  store float %".215", ptr %".216"
  ; LDG.E.SYS R17, [R2+0x10]
  %".219" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".220" to i64
  %"shl.8" = shl i64 %"zext.19", 32
  %"or.8" = or i64 %"shl.8", %"zext.18"
  %".221" = inttoptr i64 %"or.8" to ptr
  %".222" = ptrtoint ptr %".221" to i64
  %".223" = add i64 %".222", 16
  %"for_LDG.8" = inttoptr i64 %".223" to ptr
  %".224" = load float, ptr %"for_LDG.8"
  %".225" = bitcast ptr %"R17" to ptr
  store float %".224", ptr %".225"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".228" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".228" to i64
  %".229" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".229" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %".230" = inttoptr i64 %"or.9" to ptr
  %".231" = ptrtoint ptr %".230" to i64
  %".232" = add i64 %".231", 16
  %"for_LDG.9" = inttoptr i64 %".232" to ptr
  %".233" = load float, ptr %"for_LDG.9"
  %".234" = bitcast ptr %"R16" to ptr
  store float %".233", ptr %".234"
  ; LDG.E.SYS R19, [R2+0x14]
  %".237" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".237" to i64
  %".238" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".238" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %".239" = inttoptr i64 %"or.10" to ptr
  %".240" = ptrtoint ptr %".239" to i64
  %".241" = add i64 %".240", 20
  %"for_LDG.10" = inttoptr i64 %".241" to ptr
  %".242" = load float, ptr %"for_LDG.10"
  %".243" = bitcast ptr %"R19" to ptr
  store float %".242", ptr %".243"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".246" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".246" to i64
  %".247" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".247" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %".248" = inttoptr i64 %"or.11" to ptr
  %".249" = ptrtoint ptr %".248" to i64
  %".250" = add i64 %".249", 20
  %"for_LDG.11" = inttoptr i64 %".250" to ptr
  %".251" = load float, ptr %"for_LDG.11"
  %".252" = bitcast ptr %"R18" to ptr
  store float %".251", ptr %".252"
  ; LDG.E.SYS R21, [R2+0x18]
  %".255" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".255" to i64
  %".256" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".256" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %".257" = inttoptr i64 %"or.12" to ptr
  %".258" = ptrtoint ptr %".257" to i64
  %".259" = add i64 %".258", 24
  %"for_LDG.12" = inttoptr i64 %".259" to ptr
  %".260" = load float, ptr %"for_LDG.12"
  %".261" = bitcast ptr %"R21" to ptr
  store float %".260", ptr %".261"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".264" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".264" to i64
  %".265" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".265" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %".266" = inttoptr i64 %"or.13" to ptr
  %".267" = ptrtoint ptr %".266" to i64
  %".268" = add i64 %".267", 24
  %"for_LDG.13" = inttoptr i64 %".268" to ptr
  %".269" = load float, ptr %"for_LDG.13"
  %".270" = bitcast ptr %"R20" to ptr
  store float %".269", ptr %".270"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".273" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".273" to i64
  %".274" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".274" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %".275" = inttoptr i64 %"or.14" to ptr
  %".276" = ptrtoint ptr %".275" to i64
  %".277" = add i64 %".276", 28
  %"for_LDG.14" = inttoptr i64 %".277" to ptr
  %".278" = load float, ptr %"for_LDG.14"
  %".279" = bitcast ptr %"R23" to ptr
  store float %".278", ptr %".279"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".282" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".282" to i64
  %".283" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".283" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %".284" = inttoptr i64 %"or.15" to ptr
  %".285" = ptrtoint ptr %".284" to i64
  %".286" = add i64 %".285", 28
  %"for_LDG.15" = inttoptr i64 %".286" to ptr
  %".287" = load float, ptr %"for_LDG.15"
  %".288" = bitcast ptr %"R22" to ptr
  store float %".287", ptr %".288"
  ; LDG.E.SYS R25, [R2+0x20]
  %".291" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".291" to i64
  %".292" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".292" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %".293" = inttoptr i64 %"or.16" to ptr
  %".294" = ptrtoint ptr %".293" to i64
  %".295" = add i64 %".294", 32
  %"for_LDG.16" = inttoptr i64 %".295" to ptr
  %".296" = load float, ptr %"for_LDG.16"
  %".297" = bitcast ptr %"R25" to ptr
  store float %".296", ptr %".297"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".300" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".300" to i64
  %".301" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".301" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %".302" = inttoptr i64 %"or.17" to ptr
  %".303" = ptrtoint ptr %".302" to i64
  %".304" = add i64 %".303", 32
  %"for_LDG.17" = inttoptr i64 %".304" to ptr
  %".305" = load float, ptr %"for_LDG.17"
  %".306" = bitcast ptr %"R24" to ptr
  store float %".305", ptr %".306"
  ; LDG.E.SYS R27, [R2+0x24]
  %".309" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".309" to i64
  %".310" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".310" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %".311" = inttoptr i64 %"or.18" to ptr
  %".312" = ptrtoint ptr %".311" to i64
  %".313" = add i64 %".312", 36
  %"for_LDG.18" = inttoptr i64 %".313" to ptr
  %".314" = load float, ptr %"for_LDG.18"
  %".315" = bitcast ptr %"R27" to ptr
  store float %".314", ptr %".315"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".318" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".318" to i64
  %".319" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".319" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %".320" = inttoptr i64 %"or.19" to ptr
  %".321" = ptrtoint ptr %".320" to i64
  %".322" = add i64 %".321", 36
  %"for_LDG.19" = inttoptr i64 %".322" to ptr
  %".323" = load float, ptr %"for_LDG.19"
  %".324" = bitcast ptr %"R26" to ptr
  store float %".323", ptr %".324"
  ; LDG.E.SYS R29, [R2+0x28]
  %".327" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".327" to i64
  %".328" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".328" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %".329" = inttoptr i64 %"or.20" to ptr
  %".330" = ptrtoint ptr %".329" to i64
  %".331" = add i64 %".330", 40
  %"for_LDG.20" = inttoptr i64 %".331" to ptr
  %".332" = load float, ptr %"for_LDG.20"
  %".333" = bitcast ptr %"R29" to ptr
  store float %".332", ptr %".333"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".336" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".336" to i64
  %".337" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".337" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %".338" = inttoptr i64 %"or.21" to ptr
  %".339" = ptrtoint ptr %".338" to i64
  %".340" = add i64 %".339", 40
  %"for_LDG.21" = inttoptr i64 %".340" to ptr
  %".341" = load float, ptr %"for_LDG.21"
  %".342" = bitcast ptr %"R28" to ptr
  store float %".341", ptr %".342"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".345" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".345" to i64
  %".346" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".346" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %".347" = inttoptr i64 %"or.22" to ptr
  %".348" = ptrtoint ptr %".347" to i64
  %".349" = add i64 %".348", 44
  %"for_LDG.22" = inttoptr i64 %".349" to ptr
  %".350" = load float, ptr %"for_LDG.22"
  %".351" = bitcast ptr %"R31" to ptr
  store float %".350", ptr %".351"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".354" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".354" to i64
  %".355" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".355" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %".356" = inttoptr i64 %"or.23" to ptr
  %".357" = ptrtoint ptr %".356" to i64
  %".358" = add i64 %".357", 44
  %"for_LDG.23" = inttoptr i64 %".358" to ptr
  %".359" = load float, ptr %"for_LDG.23"
  %".360" = bitcast ptr %"R30" to ptr
  store float %".359", ptr %".360"
  ; LDG.E.SYS R33, [R2+0x30]
  %".363" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".363" to i64
  %".364" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".364" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %".365" = inttoptr i64 %"or.24" to ptr
  %".366" = ptrtoint ptr %".365" to i64
  %".367" = add i64 %".366", 48
  %"for_LDG.24" = inttoptr i64 %".367" to ptr
  %".368" = load float, ptr %"for_LDG.24"
  %".369" = bitcast ptr %"R33" to ptr
  store float %".368", ptr %".369"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".372" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".372" to i64
  %".373" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".373" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %".374" = inttoptr i64 %"or.25" to ptr
  %".375" = ptrtoint ptr %".374" to i64
  %".376" = add i64 %".375", 48
  %"for_LDG.25" = inttoptr i64 %".376" to ptr
  %".377" = load float, ptr %"for_LDG.25"
  %".378" = bitcast ptr %"R32" to ptr
  store float %".377", ptr %".378"
  ; LDG.E.SYS R35, [R2+0x34]
  %".381" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".381" to i64
  %".382" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".382" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %".383" = inttoptr i64 %"or.26" to ptr
  %".384" = ptrtoint ptr %".383" to i64
  %".385" = add i64 %".384", 52
  %"for_LDG.26" = inttoptr i64 %".385" to ptr
  %".386" = load float, ptr %"for_LDG.26"
  %".387" = bitcast ptr %"R35" to ptr
  store float %".386", ptr %".387"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".390" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".390" to i64
  %".391" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".391" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %".392" = inttoptr i64 %"or.27" to ptr
  %".393" = ptrtoint ptr %".392" to i64
  %".394" = add i64 %".393", 52
  %"for_LDG.27" = inttoptr i64 %".394" to ptr
  %".395" = load float, ptr %"for_LDG.27"
  %".396" = bitcast ptr %"R34" to ptr
  store float %".395", ptr %".396"
  ; LDG.E.SYS R37, [R2+0x38]
  %".399" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".399" to i64
  %".400" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".400" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %".401" = inttoptr i64 %"or.28" to ptr
  %".402" = ptrtoint ptr %".401" to i64
  %".403" = add i64 %".402", 56
  %"for_LDG.28" = inttoptr i64 %".403" to ptr
  %".404" = load float, ptr %"for_LDG.28"
  %".405" = bitcast ptr %"R37" to ptr
  store float %".404", ptr %".405"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".408" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".408" to i64
  %".409" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".409" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %".410" = inttoptr i64 %"or.29" to ptr
  %".411" = ptrtoint ptr %".410" to i64
  %".412" = add i64 %".411", 56
  %"for_LDG.29" = inttoptr i64 %".412" to ptr
  %".413" = load float, ptr %"for_LDG.29"
  %".414" = bitcast ptr %"R36" to ptr
  store float %".413", ptr %".414"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".417" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".417" to i64
  %".418" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".418" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %".419" = inttoptr i64 %"or.30" to ptr
  %".420" = ptrtoint ptr %".419" to i64
  %".421" = add i64 %".420", 60
  %"for_LDG.30" = inttoptr i64 %".421" to ptr
  %".422" = load float, ptr %"for_LDG.30"
  %".423" = bitcast ptr %"R39" to ptr
  store float %".422", ptr %".423"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".426" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".426" to i64
  %".427" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".427" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %".428" = inttoptr i64 %"or.31" to ptr
  %".429" = ptrtoint ptr %".428" to i64
  %".430" = add i64 %".429", 60
  %"for_LDG.31" = inttoptr i64 %".430" to ptr
  %".431" = load float, ptr %"for_LDG.31"
  %".432" = bitcast ptr %"R38" to ptr
  store float %".431", ptr %".432"
  ; IADD3 R6, R6, -0x10, RZ
  %".435" = load i32, ptr %"R6"
  %".436" = add i32 %".435", -16
  %".437" = add i32 %".436", 0
  store i32 %".437", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".440" = load i32, ptr %"UR4"
  %".441" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".440", i32 64)
  %".442" = extractvalue {i32, i1} %".441", 0
  %".443" = extractvalue {i32, i1} %".441", 1
  %".444" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".442", i32 0)
  %".445" = extractvalue {i32, i1} %".444", 0
  %".446" = extractvalue {i32, i1} %".444", 1
  %".447" = or i1 %".443", %".446"
  store i32 %".445", ptr %"UR4"
  store i1 %".447", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".451" = load i32, ptr %"R5"
  %".452" = add i32 %".451", 16
  %".453" = add i32 %".452", 0
  store i32 %".453", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".456" = load i32, ptr %"R6"
  %".457" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".456", 12
  %".458" = add i1 %"cmp.5", 0
  %".459" = xor i1 %".458", -1
  %".460" = and i1 %"cmp.5", %".457"
  %".461" = and i1 %".459", %".457"
  store i1 %".460", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".464" = load i32, ptr %"UR5"
  %".465" = load i1, ptr %"UP0"
  %".466" = xor i1 1, -1
  %".467" = zext i1 %".465" to i32
  %".468" = zext i1 %".466" to i32
  %"add.5" = add i32 0, %".464"
  %"add.6" = add i32 %"add.5", 0
  %"add.7" = add i32 %"add.6", %".467"
  %"add.8" = add i32 %"add.7", %".468"
  store i32 %"add.8", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".471" = load i32, ptr %"R2"
  %".472" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".471", i32 64)
  %".473" = extractvalue {i32, i1} %".472", 0
  %".474" = extractvalue {i32, i1} %".472", 1
  %".475" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".473", i32 0)
  %".476" = extractvalue {i32, i1} %".475", 0
  %".477" = extractvalue {i32, i1} %".475", 1
  %".478" = or i1 %".474", %".477"
  store i32 %".476", ptr %"R2"
  store i1 %".478", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".482" = load i32, ptr %"R3"
  %".483" = load i1, ptr %"P2"
  %"mul.5" = mul i32 0, 0
  %"add.9" = add i32 %"mul.5", %".482"
  %"zext.66" = zext i1 %".483" to i32
  %"add.10" = add i32 %"add.9", %"zext.66"
  store i32 %"add.10", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".486" = load float, ptr %"R8"
  %".487" = load float, ptr %"R9"
  %".488" = load float, ptr %"R7"
  %"fmul" = fmul float %".486", %".487"
  %"fadd" = fadd float %"fmul", %".488"
  %".489" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".489"
  ; FFMA R8, R11, R10, R8
  %".492" = load float, ptr %"R11"
  %".493" = load float, ptr %"R10"
  %".494" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".492", %".493"
  %"fadd.1" = fadd float %"fmul.1", %".494"
  %".495" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".495"
  ; FFMA R8, R13, R12, R8
  %".498" = load float, ptr %"R13"
  %".499" = load float, ptr %"R12"
  %".500" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".498", %".499"
  %"fadd.2" = fadd float %"fmul.2", %".500"
  %".501" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".501"
  ; FFMA R8, R15, R14, R8
  %".504" = load float, ptr %"R15"
  %".505" = load float, ptr %"R14"
  %".506" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".504", %".505"
  %"fadd.3" = fadd float %"fmul.3", %".506"
  %".507" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".507"
  ; FFMA R8, R17, R16, R8
  %".510" = load float, ptr %"R17"
  %".511" = load float, ptr %"R16"
  %".512" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".510", %".511"
  %"fadd.4" = fadd float %"fmul.4", %".512"
  %".513" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".513"
  ; FFMA R8, R19, R18, R8
  %".516" = load float, ptr %"R19"
  %".517" = load float, ptr %"R18"
  %".518" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".516", %".517"
  %"fadd.5" = fadd float %"fmul.5", %".518"
  %".519" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".519"
  ; FFMA R8, R21, R20, R8
  %".522" = load float, ptr %"R21"
  %".523" = load float, ptr %"R20"
  %".524" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".522", %".523"
  %"fadd.6" = fadd float %"fmul.6", %".524"
  %".525" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".525"
  ; FFMA R8, R23, R22, R8
  %".528" = load float, ptr %"R23"
  %".529" = load float, ptr %"R22"
  %".530" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".528", %".529"
  %"fadd.7" = fadd float %"fmul.7", %".530"
  %".531" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".531"
  ; FFMA R8, R25, R24, R8
  %".534" = load float, ptr %"R25"
  %".535" = load float, ptr %"R24"
  %".536" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".534", %".535"
  %"fadd.8" = fadd float %"fmul.8", %".536"
  %".537" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".537"
  ; FFMA R8, R27, R26, R8
  %".540" = load float, ptr %"R27"
  %".541" = load float, ptr %"R26"
  %".542" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".540", %".541"
  %"fadd.9" = fadd float %"fmul.9", %".542"
  %".543" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".543"
  ; FFMA R8, R29, R28, R8
  %".546" = load float, ptr %"R29"
  %".547" = load float, ptr %"R28"
  %".548" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".546", %".547"
  %"fadd.10" = fadd float %"fmul.10", %".548"
  %".549" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".549"
  ; FFMA R8, R31, R30, R8
  %".552" = load float, ptr %"R31"
  %".553" = load float, ptr %"R30"
  %".554" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".552", %".553"
  %"fadd.11" = fadd float %"fmul.11", %".554"
  %".555" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".555"
  ; FFMA R8, R33, R32, R8
  %".558" = load float, ptr %"R33"
  %".559" = load float, ptr %"R32"
  %".560" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".558", %".559"
  %"fadd.12" = fadd float %"fmul.12", %".560"
  %".561" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".561"
  ; FFMA R8, R35, R34, R8
  %".564" = load float, ptr %"R35"
  %".565" = load float, ptr %"R34"
  %".566" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".564", %".565"
  %"fadd.13" = fadd float %"fmul.13", %".566"
  %".567" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".567"
  ; FFMA R8, R37, R36, R8
  %".570" = load float, ptr %"R37"
  %".571" = load float, ptr %"R36"
  %".572" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".570", %".571"
  %"fadd.14" = fadd float %"fmul.14", %".572"
  %".573" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".573"
  ; FFMA R7, R39, R38, R8
  %".576" = load float, ptr %"R39"
  %".577" = load float, ptr %"R38"
  %".578" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".576", %".577"
  %"fadd.15" = fadd float %"fmul.15", %".578"
  %".579" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".579"
  ; @P1 BRA `(.L_x_4)
  %".582" = load i1, ptr %"P1"
  %".583" = icmp eq i1 %".582", 1
  br i1 %".583", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".586" = load i32, ptr %"R6"
  %".587" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".586", 4
  %".588" = add i1 %"cmp.6", 0
  %".589" = xor i1 %".588", -1
  %".590" = and i1 %"cmp.6", %".587"
  %".591" = and i1 %".589", %".587"
  store i1 %".590", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".594" = load i1, ptr %"P1"
  %".595" = icmp ne i1 %".594", 1
  br i1 %".595", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".598" = load i32, ptr %"R2"
  %"zext.67" = zext i32 %".598" to i64
  %".599" = load i32, ptr %"R3"
  %"zext.68" = zext i32 %".599" to i64
  %"shl.32" = shl i64 %"zext.68", 32
  %"or.32" = or i64 %"shl.32", %"zext.67"
  %".600" = inttoptr i64 %"or.32" to ptr
  %".601" = ptrtoint ptr %".600" to i64
  %".602" = add i64 %".601", 0
  %"for_LDG.32" = inttoptr i64 %".602" to ptr
  %".603" = load float, ptr %"for_LDG.32"
  %".604" = bitcast ptr %"R8" to ptr
  store float %".603", ptr %".604"
  ; LDG.E.SYS R9, [UR4]
  %".607" = load i32, ptr %"UR4"
  %"zext.69" = zext i32 %".607" to i64
  %".608" = load i32, ptr %"UR5"
  %"zext.70" = zext i32 %".608" to i64
  %"shl.33" = shl i64 %"zext.70", 32
  %"or.33" = or i64 %"shl.33", %"zext.69"
  %".609" = inttoptr i64 %"or.33" to ptr
  %".610" = ptrtoint ptr %".609" to i64
  %".611" = add i64 %".610", 0
  %"for_LDG.33" = inttoptr i64 %".611" to ptr
  %".612" = load float, ptr %"for_LDG.33"
  %".613" = bitcast ptr %"R9" to ptr
  store float %".612", ptr %".613"
  ; LDG.E.SYS R11, [R2+0x4]
  %".616" = load i32, ptr %"R2"
  %"zext.71" = zext i32 %".616" to i64
  %".617" = load i32, ptr %"R3"
  %"zext.72" = zext i32 %".617" to i64
  %"shl.34" = shl i64 %"zext.72", 32
  %"or.34" = or i64 %"shl.34", %"zext.71"
  %".618" = inttoptr i64 %"or.34" to ptr
  %".619" = ptrtoint ptr %".618" to i64
  %".620" = add i64 %".619", 4
  %"for_LDG.34" = inttoptr i64 %".620" to ptr
  %".621" = load float, ptr %"for_LDG.34"
  %".622" = bitcast ptr %"R11" to ptr
  store float %".621", ptr %".622"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".625" = load i32, ptr %"UR4"
  %"zext.73" = zext i32 %".625" to i64
  %".626" = load i32, ptr %"UR5"
  %"zext.74" = zext i32 %".626" to i64
  %"shl.35" = shl i64 %"zext.74", 32
  %"or.35" = or i64 %"shl.35", %"zext.73"
  %".627" = inttoptr i64 %"or.35" to ptr
  %".628" = ptrtoint ptr %".627" to i64
  %".629" = add i64 %".628", 4
  %"for_LDG.35" = inttoptr i64 %".629" to ptr
  %".630" = load float, ptr %"for_LDG.35"
  %".631" = bitcast ptr %"R10" to ptr
  store float %".630", ptr %".631"
  ; LDG.E.SYS R13, [R2+0x8]
  %".634" = load i32, ptr %"R2"
  %"zext.75" = zext i32 %".634" to i64
  %".635" = load i32, ptr %"R3"
  %"zext.76" = zext i32 %".635" to i64
  %"shl.36" = shl i64 %"zext.76", 32
  %"or.36" = or i64 %"shl.36", %"zext.75"
  %".636" = inttoptr i64 %"or.36" to ptr
  %".637" = ptrtoint ptr %".636" to i64
  %".638" = add i64 %".637", 8
  %"for_LDG.36" = inttoptr i64 %".638" to ptr
  %".639" = load float, ptr %"for_LDG.36"
  %".640" = bitcast ptr %"R13" to ptr
  store float %".639", ptr %".640"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".643" = load i32, ptr %"UR4"
  %"zext.77" = zext i32 %".643" to i64
  %".644" = load i32, ptr %"UR5"
  %"zext.78" = zext i32 %".644" to i64
  %"shl.37" = shl i64 %"zext.78", 32
  %"or.37" = or i64 %"shl.37", %"zext.77"
  %".645" = inttoptr i64 %"or.37" to ptr
  %".646" = ptrtoint ptr %".645" to i64
  %".647" = add i64 %".646", 8
  %"for_LDG.37" = inttoptr i64 %".647" to ptr
  %".648" = load float, ptr %"for_LDG.37"
  %".649" = bitcast ptr %"R12" to ptr
  store float %".648", ptr %".649"
  ; LDG.E.SYS R15, [R2+0xc]
  %".652" = load i32, ptr %"R2"
  %"zext.79" = zext i32 %".652" to i64
  %".653" = load i32, ptr %"R3"
  %"zext.80" = zext i32 %".653" to i64
  %"shl.38" = shl i64 %"zext.80", 32
  %"or.38" = or i64 %"shl.38", %"zext.79"
  %".654" = inttoptr i64 %"or.38" to ptr
  %".655" = ptrtoint ptr %".654" to i64
  %".656" = add i64 %".655", 12
  %"for_LDG.38" = inttoptr i64 %".656" to ptr
  %".657" = load float, ptr %"for_LDG.38"
  %".658" = bitcast ptr %"R15" to ptr
  store float %".657", ptr %".658"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".661" = load i32, ptr %"UR4"
  %"zext.81" = zext i32 %".661" to i64
  %".662" = load i32, ptr %"UR5"
  %"zext.82" = zext i32 %".662" to i64
  %"shl.39" = shl i64 %"zext.82", 32
  %"or.39" = or i64 %"shl.39", %"zext.81"
  %".663" = inttoptr i64 %"or.39" to ptr
  %".664" = ptrtoint ptr %".663" to i64
  %".665" = add i64 %".664", 12
  %"for_LDG.39" = inttoptr i64 %".665" to ptr
  %".666" = load float, ptr %"for_LDG.39"
  %".667" = bitcast ptr %"R14" to ptr
  store float %".666", ptr %".667"
  ; LDG.E.SYS R17, [R2+0x10]
  %".670" = load i32, ptr %"R2"
  %"zext.83" = zext i32 %".670" to i64
  %".671" = load i32, ptr %"R3"
  %"zext.84" = zext i32 %".671" to i64
  %"shl.40" = shl i64 %"zext.84", 32
  %"or.40" = or i64 %"shl.40", %"zext.83"
  %".672" = inttoptr i64 %"or.40" to ptr
  %".673" = ptrtoint ptr %".672" to i64
  %".674" = add i64 %".673", 16
  %"for_LDG.40" = inttoptr i64 %".674" to ptr
  %".675" = load float, ptr %"for_LDG.40"
  %".676" = bitcast ptr %"R17" to ptr
  store float %".675", ptr %".676"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".679" = load i32, ptr %"UR4"
  %"zext.85" = zext i32 %".679" to i64
  %".680" = load i32, ptr %"UR5"
  %"zext.86" = zext i32 %".680" to i64
  %"shl.41" = shl i64 %"zext.86", 32
  %"or.41" = or i64 %"shl.41", %"zext.85"
  %".681" = inttoptr i64 %"or.41" to ptr
  %".682" = ptrtoint ptr %".681" to i64
  %".683" = add i64 %".682", 16
  %"for_LDG.41" = inttoptr i64 %".683" to ptr
  %".684" = load float, ptr %"for_LDG.41"
  %".685" = bitcast ptr %"R16" to ptr
  store float %".684", ptr %".685"
  ; LDG.E.SYS R19, [R2+0x14]
  %".688" = load i32, ptr %"R2"
  %"zext.87" = zext i32 %".688" to i64
  %".689" = load i32, ptr %"R3"
  %"zext.88" = zext i32 %".689" to i64
  %"shl.42" = shl i64 %"zext.88", 32
  %"or.42" = or i64 %"shl.42", %"zext.87"
  %".690" = inttoptr i64 %"or.42" to ptr
  %".691" = ptrtoint ptr %".690" to i64
  %".692" = add i64 %".691", 20
  %"for_LDG.42" = inttoptr i64 %".692" to ptr
  %".693" = load float, ptr %"for_LDG.42"
  %".694" = bitcast ptr %"R19" to ptr
  store float %".693", ptr %".694"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".697" = load i32, ptr %"UR4"
  %"zext.89" = zext i32 %".697" to i64
  %".698" = load i32, ptr %"UR5"
  %"zext.90" = zext i32 %".698" to i64
  %"shl.43" = shl i64 %"zext.90", 32
  %"or.43" = or i64 %"shl.43", %"zext.89"
  %".699" = inttoptr i64 %"or.43" to ptr
  %".700" = ptrtoint ptr %".699" to i64
  %".701" = add i64 %".700", 20
  %"for_LDG.43" = inttoptr i64 %".701" to ptr
  %".702" = load float, ptr %"for_LDG.43"
  %".703" = bitcast ptr %"R18" to ptr
  store float %".702", ptr %".703"
  ; LDG.E.SYS R21, [R2+0x18]
  %".706" = load i32, ptr %"R2"
  %"zext.91" = zext i32 %".706" to i64
  %".707" = load i32, ptr %"R3"
  %"zext.92" = zext i32 %".707" to i64
  %"shl.44" = shl i64 %"zext.92", 32
  %"or.44" = or i64 %"shl.44", %"zext.91"
  %".708" = inttoptr i64 %"or.44" to ptr
  %".709" = ptrtoint ptr %".708" to i64
  %".710" = add i64 %".709", 24
  %"for_LDG.44" = inttoptr i64 %".710" to ptr
  %".711" = load float, ptr %"for_LDG.44"
  %".712" = bitcast ptr %"R21" to ptr
  store float %".711", ptr %".712"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".715" = load i32, ptr %"UR4"
  %"zext.93" = zext i32 %".715" to i64
  %".716" = load i32, ptr %"UR5"
  %"zext.94" = zext i32 %".716" to i64
  %"shl.45" = shl i64 %"zext.94", 32
  %"or.45" = or i64 %"shl.45", %"zext.93"
  %".717" = inttoptr i64 %"or.45" to ptr
  %".718" = ptrtoint ptr %".717" to i64
  %".719" = add i64 %".718", 24
  %"for_LDG.45" = inttoptr i64 %".719" to ptr
  %".720" = load float, ptr %"for_LDG.45"
  %".721" = bitcast ptr %"R20" to ptr
  store float %".720", ptr %".721"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".724" = load i32, ptr %"R2"
  %"zext.95" = zext i32 %".724" to i64
  %".725" = load i32, ptr %"R3"
  %"zext.96" = zext i32 %".725" to i64
  %"shl.46" = shl i64 %"zext.96", 32
  %"or.46" = or i64 %"shl.46", %"zext.95"
  %".726" = inttoptr i64 %"or.46" to ptr
  %".727" = ptrtoint ptr %".726" to i64
  %".728" = add i64 %".727", 28
  %"for_LDG.46" = inttoptr i64 %".728" to ptr
  %".729" = load float, ptr %"for_LDG.46"
  %".730" = bitcast ptr %"R23" to ptr
  store float %".729", ptr %".730"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".733" = load i32, ptr %"UR4"
  %"zext.97" = zext i32 %".733" to i64
  %".734" = load i32, ptr %"UR5"
  %"zext.98" = zext i32 %".734" to i64
  %"shl.47" = shl i64 %"zext.98", 32
  %"or.47" = or i64 %"shl.47", %"zext.97"
  %".735" = inttoptr i64 %"or.47" to ptr
  %".736" = ptrtoint ptr %".735" to i64
  %".737" = add i64 %".736", 28
  %"for_LDG.47" = inttoptr i64 %".737" to ptr
  %".738" = load float, ptr %"for_LDG.47"
  %".739" = bitcast ptr %"R22" to ptr
  store float %".738", ptr %".739"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".742" = load i32, ptr %"UR4"
  %".743" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".742", i32 32)
  %".744" = extractvalue {i32, i1} %".743", 0
  %".745" = extractvalue {i32, i1} %".743", 1
  %".746" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".744", i32 0)
  %".747" = extractvalue {i32, i1} %".746", 0
  %".748" = extractvalue {i32, i1} %".746", 1
  %".749" = or i1 %".745", %".748"
  store i32 %".747", ptr %"UR4"
  store i1 %".749", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".753" = xor i1 1, 1
  %".754" = and i1 %".753", 1
  %".755" = and i1 %".754", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".757" = load i32, ptr %"R5"
  %".758" = add i32 %".757", 8
  %".759" = add i32 %".758", 0
  store i32 %".759", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".762" = load i32, ptr %"UR5"
  %".763" = load i1, ptr %"UP0"
  %".764" = xor i1 1, -1
  %".765" = zext i1 %".763" to i32
  %".766" = zext i1 %".764" to i32
  %"add.11" = add i32 0, %".762"
  %"add.12" = add i32 %"add.11", 0
  %"add.13" = add i32 %"add.12", %".765"
  %"add.14" = add i32 %"add.13", %".766"
  store i32 %"add.14", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".769" = load i32, ptr %"R2"
  %".770" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".769", i32 32)
  %".771" = extractvalue {i32, i1} %".770", 0
  %".772" = extractvalue {i32, i1} %".770", 1
  %".773" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".771", i32 0)
  %".774" = extractvalue {i32, i1} %".773", 0
  %".775" = extractvalue {i32, i1} %".773", 1
  %".776" = or i1 %".772", %".775"
  store i32 %".774", ptr %"R2"
  store i1 %".776", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".780" = load i32, ptr %"R6"
  %".781" = add i32 %".780", -8
  %".782" = add i32 %".781", 0
  store i32 %".782", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".785" = load i32, ptr %"R3"
  %".786" = load i1, ptr %"P1"
  %".787" = xor i1 1, -1
  %".788" = zext i1 %".786" to i32
  %".789" = zext i1 %".787" to i32
  %"add.15" = add i32 0, %".785"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".788"
  %"add.18" = add i32 %"add.17", %".789"
  store i32 %"add.18", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".792" = load float, ptr %"R8"
  %".793" = load float, ptr %"R9"
  %".794" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".792", %".793"
  %"fadd.16" = fadd float %"fmul.16", %".794"
  %".795" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".795"
  ; FFMA R8, R11, R10, R8
  %".798" = load float, ptr %"R11"
  %".799" = load float, ptr %"R10"
  %".800" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".798", %".799"
  %"fadd.17" = fadd float %"fmul.17", %".800"
  %".801" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".801"
  ; FFMA R8, R13, R12, R8
  %".804" = load float, ptr %"R13"
  %".805" = load float, ptr %"R12"
  %".806" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".804", %".805"
  %"fadd.18" = fadd float %"fmul.18", %".806"
  %".807" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".807"
  ; FFMA R8, R15, R14, R8
  %".810" = load float, ptr %"R15"
  %".811" = load float, ptr %"R14"
  %".812" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".810", %".811"
  %"fadd.19" = fadd float %"fmul.19", %".812"
  %".813" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".813"
  ; FFMA R8, R17, R16, R8
  %".816" = load float, ptr %"R17"
  %".817" = load float, ptr %"R16"
  %".818" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".816", %".817"
  %"fadd.20" = fadd float %"fmul.20", %".818"
  %".819" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".819"
  ; FFMA R8, R19, R18, R8
  %".822" = load float, ptr %"R19"
  %".823" = load float, ptr %"R18"
  %".824" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".822", %".823"
  %"fadd.21" = fadd float %"fmul.21", %".824"
  %".825" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".825"
  ; FFMA R8, R21, R20, R8
  %".828" = load float, ptr %"R21"
  %".829" = load float, ptr %"R20"
  %".830" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".828", %".829"
  %"fadd.22" = fadd float %"fmul.22", %".830"
  %".831" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".831"
  ; FFMA R7, R23, R22, R8
  %".834" = load float, ptr %"R23"
  %".835" = load float, ptr %"R22"
  %".836" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".834", %".835"
  %"fadd.23" = fadd float %"fmul.23", %".836"
  %".837" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".837"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".841" = load i32, ptr %"R6"
  %".842" = load i1, ptr %"P0"
  %"cmp.7" = icmp ne i32 %".841", 0
  %".843" = add i1 %"cmp.7", 0
  %".844" = xor i1 %".843", -1
  %".845" = or i1 %"cmp.7", %".842"
  %".846" = or i1 %".844", %".842"
  store i1 %".845", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".849" = load i1, ptr %"P0"
  %".850" = icmp ne i1 %".849", 1
  br i1 %".850", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".853" = load i32, ptr %"R2"
  %"zext.99" = zext i32 %".853" to i64
  %".854" = load i32, ptr %"R3"
  %"zext.100" = zext i32 %".854" to i64
  %"shl.48" = shl i64 %"zext.100", 32
  %"or.48" = or i64 %"shl.48", %"zext.99"
  %".855" = inttoptr i64 %"or.48" to ptr
  %".856" = ptrtoint ptr %".855" to i64
  %".857" = add i64 %".856", 0
  %"for_LDG.48" = inttoptr i64 %".857" to ptr
  %".858" = load float, ptr %"for_LDG.48"
  %".859" = bitcast ptr %"R8" to ptr
  store float %".858", ptr %".859"
  ; LDG.E.SYS R9, [UR4]
  %".862" = load i32, ptr %"UR4"
  %"zext.101" = zext i32 %".862" to i64
  %".863" = load i32, ptr %"UR5"
  %"zext.102" = zext i32 %".863" to i64
  %"shl.49" = shl i64 %"zext.102", 32
  %"or.49" = or i64 %"shl.49", %"zext.101"
  %".864" = inttoptr i64 %"or.49" to ptr
  %".865" = ptrtoint ptr %".864" to i64
  %".866" = add i64 %".865", 0
  %"for_LDG.49" = inttoptr i64 %".866" to ptr
  %".867" = load float, ptr %"for_LDG.49"
  %".868" = bitcast ptr %"R9" to ptr
  store float %".867", ptr %".868"
  ; LDG.E.SYS R11, [R2+0x4]
  %".871" = load i32, ptr %"R2"
  %"zext.103" = zext i32 %".871" to i64
  %".872" = load i32, ptr %"R3"
  %"zext.104" = zext i32 %".872" to i64
  %"shl.50" = shl i64 %"zext.104", 32
  %"or.50" = or i64 %"shl.50", %"zext.103"
  %".873" = inttoptr i64 %"or.50" to ptr
  %".874" = ptrtoint ptr %".873" to i64
  %".875" = add i64 %".874", 4
  %"for_LDG.50" = inttoptr i64 %".875" to ptr
  %".876" = load float, ptr %"for_LDG.50"
  %".877" = bitcast ptr %"R11" to ptr
  store float %".876", ptr %".877"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".880" = load i32, ptr %"UR4"
  %"zext.105" = zext i32 %".880" to i64
  %".881" = load i32, ptr %"UR5"
  %"zext.106" = zext i32 %".881" to i64
  %"shl.51" = shl i64 %"zext.106", 32
  %"or.51" = or i64 %"shl.51", %"zext.105"
  %".882" = inttoptr i64 %"or.51" to ptr
  %".883" = ptrtoint ptr %".882" to i64
  %".884" = add i64 %".883", 4
  %"for_LDG.51" = inttoptr i64 %".884" to ptr
  %".885" = load float, ptr %"for_LDG.51"
  %".886" = bitcast ptr %"R10" to ptr
  store float %".885", ptr %".886"
  ; LDG.E.SYS R13, [R2+0x8]
  %".889" = load i32, ptr %"R2"
  %"zext.107" = zext i32 %".889" to i64
  %".890" = load i32, ptr %"R3"
  %"zext.108" = zext i32 %".890" to i64
  %"shl.52" = shl i64 %"zext.108", 32
  %"or.52" = or i64 %"shl.52", %"zext.107"
  %".891" = inttoptr i64 %"or.52" to ptr
  %".892" = ptrtoint ptr %".891" to i64
  %".893" = add i64 %".892", 8
  %"for_LDG.52" = inttoptr i64 %".893" to ptr
  %".894" = load float, ptr %"for_LDG.52"
  %".895" = bitcast ptr %"R13" to ptr
  store float %".894", ptr %".895"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".898" = load i32, ptr %"UR4"
  %"zext.109" = zext i32 %".898" to i64
  %".899" = load i32, ptr %"UR5"
  %"zext.110" = zext i32 %".899" to i64
  %"shl.53" = shl i64 %"zext.110", 32
  %"or.53" = or i64 %"shl.53", %"zext.109"
  %".900" = inttoptr i64 %"or.53" to ptr
  %".901" = ptrtoint ptr %".900" to i64
  %".902" = add i64 %".901", 8
  %"for_LDG.53" = inttoptr i64 %".902" to ptr
  %".903" = load float, ptr %"for_LDG.53"
  %".904" = bitcast ptr %"R12" to ptr
  store float %".903", ptr %".904"
  ; LDG.E.SYS R15, [R2+0xc]
  %".907" = load i32, ptr %"R2"
  %"zext.111" = zext i32 %".907" to i64
  %".908" = load i32, ptr %"R3"
  %"zext.112" = zext i32 %".908" to i64
  %"shl.54" = shl i64 %"zext.112", 32
  %"or.54" = or i64 %"shl.54", %"zext.111"
  %".909" = inttoptr i64 %"or.54" to ptr
  %".910" = ptrtoint ptr %".909" to i64
  %".911" = add i64 %".910", 12
  %"for_LDG.54" = inttoptr i64 %".911" to ptr
  %".912" = load float, ptr %"for_LDG.54"
  %".913" = bitcast ptr %"R15" to ptr
  store float %".912", ptr %".913"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".916" = load i32, ptr %"UR4"
  %"zext.113" = zext i32 %".916" to i64
  %".917" = load i32, ptr %"UR5"
  %"zext.114" = zext i32 %".917" to i64
  %"shl.55" = shl i64 %"zext.114", 32
  %"or.55" = or i64 %"shl.55", %"zext.113"
  %".918" = inttoptr i64 %"or.55" to ptr
  %".919" = ptrtoint ptr %".918" to i64
  %".920" = add i64 %".919", 12
  %"for_LDG.55" = inttoptr i64 %".920" to ptr
  %".921" = load float, ptr %"for_LDG.55"
  %".922" = bitcast ptr %"R14" to ptr
  store float %".921", ptr %".922"
  ; IADD3 R6, R6, -0x4, RZ
  %".925" = load i32, ptr %"R6"
  %".926" = add i32 %".925", -4
  %".927" = add i32 %".926", 0
  store i32 %".927", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".930" = load i32, ptr %"UR4"
  %".931" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".930", i32 16)
  %".932" = extractvalue {i32, i1} %".931", 0
  %".933" = extractvalue {i32, i1} %".931", 1
  %".934" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".932", i32 0)
  %".935" = extractvalue {i32, i1} %".934", 0
  %".936" = extractvalue {i32, i1} %".934", 1
  %".937" = or i1 %".933", %".936"
  store i32 %".935", ptr %"UR4"
  store i1 %".937", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".941" = load i32, ptr %"R5"
  %".942" = add i32 %".941", 4
  %".943" = add i32 %".942", 0
  store i32 %".943", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".946" = load i32, ptr %"R6"
  %".947" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".946", 0
  %".948" = add i1 %"cmp.8", 0
  %".949" = xor i1 %".948", -1
  %".950" = and i1 %"cmp.8", %".947"
  %".951" = and i1 %".949", %".947"
  store i1 %".950", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".954" = load i32, ptr %"UR5"
  %".955" = load i1, ptr %"UP0"
  %".956" = xor i1 1, -1
  %".957" = zext i1 %".955" to i32
  %".958" = zext i1 %".956" to i32
  %"add.19" = add i32 0, %".954"
  %"add.20" = add i32 %"add.19", 0
  %"add.21" = add i32 %"add.20", %".957"
  %"add.22" = add i32 %"add.21", %".958"
  store i32 %"add.22", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".961" = load float, ptr %"R8"
  %".962" = load float, ptr %"R9"
  %".963" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".961", %".962"
  %"fadd.24" = fadd float %"fmul.24", %".963"
  %".964" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".964"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".967" = load i32, ptr %"R2"
  %".968" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".967", i32 16)
  %".969" = extractvalue {i32, i1} %".968", 0
  %".970" = extractvalue {i32, i1} %".968", 1
  %".971" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".969", i32 0)
  %".972" = extractvalue {i32, i1} %".971", 0
  %".973" = extractvalue {i32, i1} %".971", 1
  %".974" = or i1 %".970", %".973"
  store i32 %".972", ptr %"R9"
  store i1 %".974", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".978" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.23" = add i32 %"mul.6", %".978"
  store i32 %"add.23", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".981" = load float, ptr %"R11"
  %".982" = load float, ptr %"R10"
  %".983" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".981", %".982"
  %"fadd.25" = fadd float %"fmul.25", %".983"
  %".984" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".984"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".987" = load i32, ptr %"R3"
  %".988" = load i1, ptr %"P1"
  %".989" = xor i1 1, -1
  %".990" = zext i1 %".988" to i32
  %".991" = zext i1 %".989" to i32
  %"add.24" = add i32 0, %".987"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".990"
  %"add.27" = add i32 %"add.26", %".991"
  store i32 %"add.27", ptr %"R10"
  ; MOV R3, R10
  %".994" = load i32, ptr %"R10"
  store i32 %".994", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".997" = load float, ptr %"R13"
  %".998" = load float, ptr %"R12"
  %".999" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".997", %".998"
  %"fadd.26" = fadd float %"fmul.26", %".999"
  %".1000" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".1000"
  ; FFMA R7, R15, R14, R8
  %".1003" = load float, ptr %"R15"
  %".1004" = load float, ptr %"R14"
  %".1005" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".1003", %".1004"
  %"fadd.27" = fadd float %"fmul.27", %".1005"
  %".1006" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".1006"
  ; @P0 BRA `(.L_x_2)
  %".1009" = load i1, ptr %"P0"
  %".1010" = icmp eq i1 %".1009", 1
  br i1 %".1010", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1013" = load i32, ptr %"R4"
  %".1014" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".1013", 0
  %".1015" = add i1 %"cmp.9", 0
  %".1016" = xor i1 %".1015", -1
  %".1017" = and i1 %"cmp.9", %".1014"
  %".1018" = and i1 %".1016", %".1014"
  store i1 %".1017", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".1021" = load i1, ptr %"P0"
  %".1022" = icmp ne i1 %".1021", 1
  br i1 %".1022", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".1027" = load i32, ptr %"R0"
  %".1028" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".1027", %"Arg_4"
  %"add.28" = add i32 %"mul.7", %".1028"
  store i32 %"add.28", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".1031" = load i32, ptr %"R2"
  %".1032" = load i32, ptr %"R8"
  %"zext.115" = zext i32 %".1031" to i64
  %"zext.116" = zext i32 %".1032" to i64
  %"mul.8" = mul i64 %"zext.115", %"zext.116"
  %".1033" = ptrtoint ptr %"Arg_1" to i64
  %"add.29" = add i64 %"mul.8", %".1033"
  %".1034" = and i64 %"add.29", 18446744069414584320
  %".1035" = lshr i64 %".1034", 32
  %"trunc32.4" = trunc i64 %".1035" to i32
  %"trunc32.5" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".1039" = load i32, ptr %"R5"
  %".1040" = load i32, ptr %"R8"
  %"zext.117" = zext i32 %".1039" to i64
  %"zext.118" = zext i32 %".1040" to i64
  %"mul.9" = mul i64 %"zext.117", %"zext.118"
  %".1041" = ptrtoint ptr %"Arg_0" to i64
  %"add.30" = add i64 %"mul.9", %".1041"
  %".1042" = and i64 %"add.30", 18446744069414584320
  %".1043" = lshr i64 %".1042", 32
  %"trunc32.6" = trunc i64 %".1043" to i32
  %"trunc32.7" = trunc i64 %"add.30" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".1047" = load i32, ptr %"R2"
  store i32 %".1047", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".1051" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.31" = add i32 %"mul.10", %".1051"
  store i32 %"add.31", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".1054" = load i32, ptr %"R8"
  %"zext.119" = zext i32 %".1054" to i64
  %".1055" = load i32, ptr %"R9"
  %"zext.120" = zext i32 %".1055" to i64
  %"shl.56" = shl i64 %"zext.120", 32
  %"or.56" = or i64 %"shl.56", %"zext.119"
  %".1056" = inttoptr i64 %"or.56" to ptr
  %".1057" = ptrtoint ptr %".1056" to i64
  %".1058" = add i64 %".1057", 0
  %"for_LDG.56" = inttoptr i64 %".1058" to ptr
  %".1059" = load float, ptr %"for_LDG.56"
  %".1060" = bitcast ptr %"R5" to ptr
  store float %".1059", ptr %".1060"
  ; LDG.E.SYS R2, [R2]
  %".1063" = load i32, ptr %"R2"
  %"zext.121" = zext i32 %".1063" to i64
  %".1064" = load i32, ptr %"R3"
  %"zext.122" = zext i32 %".1064" to i64
  %"shl.57" = shl i64 %"zext.122", 32
  %"or.57" = or i64 %"shl.57", %"zext.121"
  %".1065" = inttoptr i64 %"or.57" to ptr
  %".1066" = ptrtoint ptr %".1065" to i64
  %".1067" = add i64 %".1066", 0
  %"for_LDG.57" = inttoptr i64 %".1067" to ptr
  %".1068" = load float, ptr %"for_LDG.57"
  %".1069" = bitcast ptr %"R2" to ptr
  store float %".1068", ptr %".1069"
  ; IADD3 R4, R4, -0x1, RZ
  %".1072" = load i32, ptr %"R4"
  %".1073" = add i32 %".1072", -1
  %".1074" = add i32 %".1073", 0
  store i32 %".1074", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1077" = load i32, ptr %"R4"
  %".1078" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".1077", 0
  %".1079" = add i1 %"cmp.10", 0
  %".1080" = xor i1 %".1079", -1
  %".1081" = and i1 %"cmp.10", %".1078"
  %".1082" = and i1 %".1080", %".1078"
  store i1 %".1081", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".1085" = load i32, ptr %"R6"
  %".1086" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1085", i32 4)
  %".1087" = extractvalue {i32, i1} %".1086", 0
  %".1088" = extractvalue {i32, i1} %".1086", 1
  %".1089" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1087", i32 0)
  %".1090" = extractvalue {i32, i1} %".1089", 0
  %".1091" = extractvalue {i32, i1} %".1089", 1
  %".1092" = or i1 %".1088", %".1091"
  store i32 %".1090", ptr %"R6"
  store i1 %".1092", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".1096" = load i32, ptr %"R8"
  %".1097" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1096", i32 4)
  %".1098" = extractvalue {i32, i1} %".1097", 0
  %".1099" = extractvalue {i32, i1} %".1097", 1
  %".1100" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1098", i32 0)
  %".1101" = extractvalue {i32, i1} %".1100", 0
  %".1102" = extractvalue {i32, i1} %".1100", 1
  %".1103" = or i1 %".1099", %".1102"
  store i32 %".1101", ptr %"R8"
  store i1 %".1103", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".1107" = load i32, ptr %"R3"
  %".1108" = load i1, ptr %"P1"
  %".1109" = xor i1 1, -1
  %".1110" = zext i1 %".1108" to i32
  %".1111" = zext i1 %".1109" to i32
  %"add.32" = add i32 0, %".1107"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".1110"
  %"add.35" = add i32 %"add.34", %".1111"
  store i32 %"add.35", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".1114" = load i32, ptr %"R9"
  %".1115" = load i1, ptr %"P2"
  %".1116" = xor i1 1, -1
  %".1117" = zext i1 %".1115" to i32
  %".1118" = zext i1 %".1116" to i32
  %"add.36" = add i32 0, %".1114"
  %"add.37" = add i32 %"add.36", 0
  %"add.38" = add i32 %"add.37", %".1117"
  %"add.39" = add i32 %"add.38", %".1118"
  store i32 %"add.39", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".1121" = load float, ptr %"R2"
  %".1122" = load float, ptr %"R5"
  %".1123" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".1121", %".1122"
  %"fadd.28" = fadd float %"fmul.28", %".1123"
  %".1124" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".1124"
  ; @P0 BRA `(.L_x_6)
  %".1127" = load i1, ptr %"P0"
  %".1128" = icmp eq i1 %".1127", 1
  br i1 %".1128", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".1133" = load i32, ptr %"R0"
  %".1134" = load i32, ptr %"R5"
  %"zext.123" = zext i32 %".1133" to i64
  %"zext.124" = zext i32 %".1134" to i64
  %"mul.11" = mul i64 %"zext.123", %"zext.124"
  %".1135" = ptrtoint ptr %"Arg_2" to i64
  %"add.40" = add i64 %"mul.11", %".1135"
  %".1136" = and i64 %"add.40", 18446744069414584320
  %".1137" = lshr i64 %".1136", 32
  %"trunc32.8" = trunc i64 %".1137" to i32
  %"trunc32.9" = trunc i64 %"add.40" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".1141" = load i32, ptr %"R2"
  %"zext.125" = zext i32 %".1141" to i64
  %".1142" = load i32, ptr %"R3"
  %"zext.126" = zext i32 %".1142" to i64
  %"shl.58" = shl i64 %"zext.126", 32
  %"or.58" = or i64 %"shl.58", %"zext.125"
  %".1143" = inttoptr i64 %"or.58" to ptr
  %".1144" = ptrtoint ptr %".1143" to i64
  %".1145" = add i64 %".1144", 0
  %"for_LDG.58" = inttoptr i64 %".1145" to ptr
  %".1146" = load float, ptr %"for_LDG.58"
  %".1147" = bitcast ptr %"R2" to ptr
  store float %".1146", ptr %".1147"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1150" = load i32, ptr %"R0"
  %".1151" = load i32, ptr %"R5"
  %"zext.127" = zext i32 %".1150" to i64
  %"zext.128" = zext i32 %".1151" to i64
  %"mul.12" = mul i64 %"zext.127", %"zext.128"
  %".1152" = ptrtoint ptr %"Arg_3" to i64
  %"add.41" = add i64 %"mul.12", %".1152"
  %".1153" = and i64 %"add.41", 18446744069414584320
  %".1154" = lshr i64 %".1153", 32
  %"trunc32.10" = trunc i64 %".1154" to i32
  %"trunc32.11" = trunc i64 %"add.41" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".1158" = load float, ptr %"R2"
  %".1159" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1158", %".1159"
  %".1160" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1160"
  ; STG.E.SYS [R4], R7
  %".1163" = load float, ptr %"R7"
  %".1164" = load i32, ptr %"R4"
  %"zext.129" = zext i32 %".1164" to i64
  %".1165" = load i32, ptr %"R5"
  %"zext.130" = zext i32 %".1165" to i64
  %"shl.59" = shl i64 %"zext.130", 32
  %"or.59" = or i64 %"shl.59", %"zext.129"
  %".1166" = inttoptr i64 %"or.59" to ptr
  %".1167" = ptrtoint ptr %".1166" to i64
  %".1168" = add i64 %".1167", 0
  %"for_STG" = inttoptr i64 %".1168" to ptr
  store float %".1163", ptr %"for_STG"
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
  %"ThreadIdx" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx", ptr %"R5"
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
  %"ThreadIdx.1" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx.1", ptr %"R7"
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
  %".320" = inttoptr i64 %"or" to ptr
  %".321" = ptrtoint ptr %".320" to i64
  %".322" = add i64 %".321", 0
  %"for_LDG" = inttoptr i64 %".322" to ptr
  %".323" = load float, ptr %"for_LDG"
  %".324" = bitcast ptr %"R2" to ptr
  store float %".323", ptr %".324"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".327" = load i32, ptr %"R23"
  %".328" = load i32, ptr %"R4"
  %"zext.7" = zext i32 %".327" to i64
  %"zext.8" = zext i32 4 to i64
  %"mul.23" = mul i64 %"zext.7", %"zext.8"
  %"zext.9" = zext i32 %".328" to i64
  %"add.23" = add i64 %"mul.23", %"zext.9"
  %".329" = and i64 %"add.23", 18446744069414584320
  %".330" = lshr i64 %".329", 32
  %"trunc32.4" = trunc i64 %".330" to i32
  %"trunc32.5" = trunc i64 %"add.23" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".334" = load i32, ptr %"R4"
  %"zext.10" = zext i32 %".334" to i64
  %".335" = load i32, ptr %"R5"
  %"zext.11" = zext i32 %".335" to i64
  %"shl.1" = shl i64 %"zext.11", 32
  %"or.1" = or i64 %"shl.1", %"zext.10"
  %".336" = inttoptr i64 %"or.1" to ptr
  %".337" = ptrtoint ptr %".336" to i64
  %".338" = add i64 %".337", 0
  %"for_LDG.1" = inttoptr i64 %".338" to ptr
  %".339" = load float, ptr %"for_LDG.1"
  %".340" = bitcast ptr %"R4" to ptr
  store float %".339", ptr %".340"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".343" = load i32, ptr %"R23"
  %".344" = load i32, ptr %"R6"
  %"zext.12" = zext i32 %".343" to i64
  %"zext.13" = zext i32 4 to i64
  %"mul.24" = mul i64 %"zext.12", %"zext.13"
  %"zext.14" = zext i32 %".344" to i64
  %"add.24" = add i64 %"mul.24", %"zext.14"
  %".345" = and i64 %"add.24", 18446744069414584320
  %".346" = lshr i64 %".345", 32
  %"trunc32.6" = trunc i64 %".346" to i32
  %"trunc32.7" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".350" = load i32, ptr %"R6"
  %"zext.15" = zext i32 %".350" to i64
  %".351" = load i32, ptr %"R7"
  %"zext.16" = zext i32 %".351" to i64
  %"shl.2" = shl i64 %"zext.16", 32
  %"or.2" = or i64 %"shl.2", %"zext.15"
  %".352" = inttoptr i64 %"or.2" to ptr
  %".353" = ptrtoint ptr %".352" to i64
  %".354" = add i64 %".353", 0
  %"for_LDG.2" = inttoptr i64 %".354" to ptr
  %".355" = load float, ptr %"for_LDG.2"
  %".356" = bitcast ptr %"R6" to ptr
  store float %".355", ptr %".356"
  ; LDG.E.SYS R8, [R8]
  %".359" = load i32, ptr %"R8"
  %"zext.17" = zext i32 %".359" to i64
  %".360" = load i32, ptr %"R9"
  %"zext.18" = zext i32 %".360" to i64
  %"shl.3" = shl i64 %"zext.18", 32
  %"or.3" = or i64 %"shl.3", %"zext.17"
  %".361" = inttoptr i64 %"or.3" to ptr
  %".362" = ptrtoint ptr %".361" to i64
  %".363" = add i64 %".362", 0
  %"for_LDG.3" = inttoptr i64 %".363" to ptr
  %".364" = load float, ptr %"for_LDG.3"
  %".365" = bitcast ptr %"R8" to ptr
  store float %".364", ptr %".365"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".368" = load i32, ptr %"UR4"
  %".369" = add i32 %".368", 4
  %".370" = add i32 %".369", 0
  store i32 %".370", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".373" = load i32, ptr %"R20"
  %".374" = load i32, ptr %"UR4"
  %".375" = add i32 %".373", %".374"
  %".376" = add i32 %".375", 0
  store i32 %".376", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".379" = load i32, ptr %"R18"
  %".380" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".379", 0
  %".381" = add i1 %"cmp.10", 0
  %".382" = xor i1 %".381", -1
  %".383" = and i1 %"cmp.10", %".380"
  %".384" = and i1 %".382", %".380"
  store i1 %".383", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".387" = load i32, ptr %"R23"
  %".388" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".387", 4
  %"add.25" = add i32 %"mul.25", %".388"
  store i32 %"add.25", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".391" = load float, ptr %"R2"
  %".392" = load float, ptr %"R11"
  %".393" = xor i1 1, -1
  %".394" = fcmp olt float %".391", %".392"
  %"fmnmx_min" = select  i1 %".394", float %".391", float %".392"
  %".395" = fcmp ogt float %".391", %".392"
  %"fmnmx_max" = select  i1 %".395", float %".391", float %".392"
  %"fmnmx_final" = select  i1 %".393", float %"fmnmx_min", float %"fmnmx_max"
  %".396" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final", ptr %".396"
  ; FMNMX R11, R11, R4, !PT
  %".399" = load float, ptr %"R11"
  %".400" = load float, ptr %"R4"
  %".401" = xor i1 1, -1
  %".402" = fcmp olt float %".399", %".400"
  %"fmnmx_min.1" = select  i1 %".402", float %".399", float %".400"
  %".403" = fcmp ogt float %".399", %".400"
  %"fmnmx_max.1" = select  i1 %".403", float %".399", float %".400"
  %"fmnmx_final.1" = select  i1 %".401", float %"fmnmx_min.1", float %"fmnmx_max.1"
  %".404" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.1", ptr %".404"
  ; FMNMX R11, R11, R6, !PT
  %".407" = load float, ptr %"R11"
  %".408" = load float, ptr %"R6"
  %".409" = xor i1 1, -1
  %".410" = fcmp olt float %".407", %".408"
  %"fmnmx_min.2" = select  i1 %".410", float %".407", float %".408"
  %".411" = fcmp ogt float %".407", %".408"
  %"fmnmx_max.2" = select  i1 %".411", float %".407", float %".408"
  %"fmnmx_final.2" = select  i1 %".409", float %"fmnmx_min.2", float %"fmnmx_max.2"
  %".412" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.2", ptr %".412"
  ; FMNMX R11, R11, R8, !PT
  %".415" = load float, ptr %"R11"
  %".416" = load float, ptr %"R8"
  %".417" = xor i1 1, -1
  %".418" = fcmp olt float %".415", %".416"
  %"fmnmx_min.3" = select  i1 %".418", float %".415", float %".416"
  %".419" = fcmp ogt float %".415", %".416"
  %"fmnmx_max.3" = select  i1 %".419", float %".415", float %".416"
  %"fmnmx_final.3" = select  i1 %".417", float %"fmnmx_min.3", float %"fmnmx_max.3"
  %".420" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.3", ptr %".420"
  ; @P1 BRA `(.L_x_10)
  %".423" = load i1, ptr %"P1"
  %".424" = icmp eq i1 %".423", 1
  br i1 %".424", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".427" = load i32, ptr %"R13"
  %".428" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".427", 1
  %"add.26" = add i32 %"mul.26", %".428"
  store i32 %"add.26", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".431" = load i1, ptr %"P2"
  %".432" = icmp ne i1 %".431", 1
  br i1 %".432", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".435" = load i32, ptr %"R12"
  %".436" = load i32, ptr %"UR4"
  %".437" = add i32 %".435", %".436"
  %".438" = add i32 %".437", 0
  store i32 %".438", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".443" = load i32, ptr %"R5"
  %".444" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".443", %"Arg_2"
  %"add.27" = add i32 %"mul.27", %".444"
  store i32 %"add.27", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".447" = load i32, ptr %"R2"
  %".448" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".447" to i64
  %"zext.20" = zext i32 %".448" to i64
  %"mul.28" = mul i64 %"zext.19", %"zext.20"
  %".449" = ptrtoint ptr %"Arg_0" to i64
  %"add.28" = add i64 %"mul.28", %".449"
  %".450" = and i64 %"add.28", 18446744069414584320
  %".451" = lshr i64 %".450", 32
  %"trunc32.8" = trunc i64 %".451" to i32
  %"trunc32.9" = trunc i64 %"add.28" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".455" = load i32, ptr %"R2"
  %"zext.21" = zext i32 %".455" to i64
  %".456" = load i32, ptr %"R3"
  %"zext.22" = zext i32 %".456" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".457" = inttoptr i64 %"or.4" to ptr
  %".458" = ptrtoint ptr %".457" to i64
  %".459" = add i64 %".458", 0
  %"for_LDG.4" = inttoptr i64 %".459" to ptr
  %".460" = load float, ptr %"for_LDG.4"
  %".461" = bitcast ptr %"R2" to ptr
  store float %".460", ptr %".461"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".464" = load i32, ptr %"R15"
  %".465" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".464", 1
  %".466" = add i1 %"cmp.11", 0
  %".467" = xor i1 %".466", -1
  %".468" = and i1 %"cmp.11", %".465"
  %".469" = and i1 %".467", %".465"
  store i1 %".468", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".472" = load float, ptr %"R11"
  %".473" = load float, ptr %"R2"
  %".474" = xor i1 1, -1
  %".475" = fcmp olt float %".472", %".473"
  %"fmnmx_min.4" = select  i1 %".475", float %".472", float %".473"
  %".476" = fcmp ogt float %".472", %".473"
  %"fmnmx_max.4" = select  i1 %".476", float %".472", float %".473"
  %"fmnmx_final.4" = select  i1 %".474", float %"fmnmx_min.4", float %"fmnmx_max.4"
  %".477" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.4", ptr %".477"
  ; @!P1 BRA `(.L_x_11)
  %".480" = load i1, ptr %"P1"
  %".481" = icmp ne i1 %".480", 1
  br i1 %".481", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".484" = load i32, ptr %"R15"
  %".485" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".484", 2
  %".486" = add i1 %"cmp.12", 0
  %".487" = xor i1 %".486", -1
  %".488" = and i1 %"cmp.12", %".485"
  %".489" = and i1 %".487", %".485"
  store i1 %".488", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".492" = load i32, ptr %"R5"
  %".493" = add i32 %".492", 1
  %".494" = add i32 %".493", 0
  store i32 %".494", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".497" = load i32, ptr %"R2"
  %".498" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".497", %"Arg_2"
  %"add.29" = add i32 %"mul.29", %".498"
  store i32 %"add.29", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".501" = load i1, ptr %"P1"
  %".502" = icmp eq i1 %".501", 1
  br i1 %".502", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".505" = load i32, ptr %"R5"
  %".506" = add i32 %".505", 2
  %".507" = add i32 %".506", 0
  store i32 %".507", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".512" = load i1, ptr %"P1"
  %".513" = icmp eq i1 %".512", 1
  br i1 %".513", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".516" = load i32, ptr %"R3"
  %".517" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".516", %"Arg_2"
  %"add.30" = add i32 %"mul.30", %".517"
  store i32 %"add.30", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".522" = load i32, ptr %"R2"
  %".523" = load i32, ptr %"R7"
  %"zext.23" = zext i32 %".522" to i64
  %"zext.24" = zext i32 %".523" to i64
  %"mul.31" = mul i64 %"zext.23", %"zext.24"
  %".524" = ptrtoint ptr %"Arg_0" to i64
  %"add.31" = add i64 %"mul.31", %".524"
  %".525" = and i64 %"add.31", 18446744069414584320
  %".526" = lshr i64 %".525", 32
  %"trunc32.10" = trunc i64 %".526" to i32
  %"trunc32.11" = trunc i64 %"add.31" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".530" = load i1, ptr %"P1"
  %".531" = icmp eq i1 %".530", 1
  br i1 %".531", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".534" = load i32, ptr %"R4"
  %".535" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".534" to i64
  %"zext.26" = zext i32 %".535" to i64
  %"mul.32" = mul i64 %"zext.25", %"zext.26"
  %".536" = ptrtoint ptr %"Arg_0" to i64
  %"add.32" = add i64 %"mul.32", %".536"
  %".537" = and i64 %"add.32", 18446744069414584320
  %".538" = lshr i64 %".537", 32
  %"trunc32.12" = trunc i64 %".538" to i32
  %"trunc32.13" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".544" = load i32, ptr %"R2"
  %"zext.27" = zext i32 %".544" to i64
  %".545" = load i32, ptr %"R3"
  %"zext.28" = zext i32 %".545" to i64
  %"shl.5" = shl i64 %"zext.28", 32
  %"or.5" = or i64 %"shl.5", %"zext.27"
  %".546" = inttoptr i64 %"or.5" to ptr
  %".547" = ptrtoint ptr %".546" to i64
  %".548" = add i64 %".547", 0
  %"for_LDG.5" = inttoptr i64 %".548" to ptr
  %".549" = load float, ptr %"for_LDG.5"
  %".550" = bitcast ptr %"R2" to ptr
  store float %".549", ptr %".550"
  ; @P1 LDG.E.SYS R4, [R4]
  %".553" = load i1, ptr %"P1"
  %".554" = icmp eq i1 %".553", 1
  br i1 %".554", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".557" = load i32, ptr %"R4"
  %"zext.29" = zext i32 %".557" to i64
  %".558" = load i32, ptr %"R5"
  %"zext.30" = zext i32 %".558" to i64
  %"shl.6" = shl i64 %"zext.30", 32
  %"or.6" = or i64 %"shl.6", %"zext.29"
  %".559" = inttoptr i64 %"or.6" to ptr
  %".560" = ptrtoint ptr %".559" to i64
  %".561" = add i64 %".560", 0
  %"for_LDG.6" = inttoptr i64 %".561" to ptr
  %".562" = load float, ptr %"for_LDG.6"
  %".563" = bitcast ptr %"R4" to ptr
  store float %".562", ptr %".563"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".568" = load float, ptr %"R11"
  %".569" = load float, ptr %"R2"
  %".570" = xor i1 1, -1
  %".571" = fcmp olt float %".568", %".569"
  %"fmnmx_min.5" = select  i1 %".571", float %".568", float %".569"
  %".572" = fcmp ogt float %".568", %".569"
  %"fmnmx_max.5" = select  i1 %".572", float %".568", float %".569"
  %"fmnmx_final.5" = select  i1 %".570", float %"fmnmx_min.5", float %"fmnmx_max.5"
  %".573" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.5", ptr %".573"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".576" = load i1, ptr %"P1"
  %".577" = icmp eq i1 %".576", 1
  br i1 %".577", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".580" = load float, ptr %"R11"
  %".581" = load float, ptr %"R4"
  %".582" = xor i1 1, -1
  %".583" = fcmp olt float %".580", %".581"
  %"fmnmx_min.6" = select  i1 %".583", float %".580", float %".581"
  %".584" = fcmp ogt float %".580", %".581"
  %"fmnmx_max.6" = select  i1 %".584", float %".580", float %".581"
  %"fmnmx_final.6" = select  i1 %".582", float %"fmnmx_min.6", float %"fmnmx_max.6"
  %".585" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.6", ptr %".585"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".590" = load i32, ptr %"R16"
  %".591" = add i32 %".590", 1
  %".592" = add i32 %".591", 0
  store i32 %".592", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".595" = load i32, ptr %"R16"
  %".596" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".595", %"Arg_3"
  %".597" = add i1 %"cmp.13", 0
  %".598" = xor i1 %".597", -1
  %".599" = and i1 %"cmp.13", %".596"
  %".600" = and i1 %".598", %".596"
  store i1 %".599", ptr %"P1"
  ; @!P1 BRA `(.L_x_12)
  %".603" = load i1, ptr %"P1"
  %".604" = icmp ne i1 %".603", 1
  br i1 %".604", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".607" = load i32, ptr %"R21"
  %".608" = load i32, ptr %"R19"
  %".609" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".607", %".608"
  %"add.33" = add i32 %"mul.33", %".609"
  store i32 %"add.33", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.34" = add i32 %"mul.34", 4
  store i32 %"add.34", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".614" = load i32, ptr %"R21"
  %".615" = load i32, ptr %"R3"
  %".616" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".614", %".615"
  %"add.35" = add i32 %"mul.35", %".616"
  store i32 %"add.35", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".619" = load i32, ptr %"R3"
  %".620" = load i32, ptr %"R2"
  %"zext.31" = zext i32 %".619" to i64
  %"zext.32" = zext i32 %".620" to i64
  %"mul.36" = mul i64 %"zext.31", %"zext.32"
  %".621" = ptrtoint ptr %"Arg_1" to i64
  %"add.36" = add i64 %"mul.36", %".621"
  %".622" = and i64 %"add.36", 18446744069414584320
  %".623" = lshr i64 %".622", 32
  %"trunc32.14" = trunc i64 %".623" to i32
  %"trunc32.15" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".627" = load i32, ptr %"R11"
  %".628" = load i32, ptr %"R2"
  %"zext.33" = zext i32 %".628" to i64
  %".629" = load i32, ptr %"R3"
  %"zext.34" = zext i32 %".629" to i64
  %"shl.7" = shl i64 %"zext.34", 32
  %"or.7" = or i64 %"shl.7", %"zext.33"
  %".630" = inttoptr i64 %"or.7" to ptr
  %".631" = ptrtoint ptr %".630" to i64
  %".632" = add i64 %".631", 0
  %"for_STG" = inttoptr i64 %".632" to ptr
  store i32 %".627", ptr %"for_STG"
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
  %"ThreadIdx" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx", ptr %"R3"
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
  %".46" = inttoptr i64 %"or" to ptr
  %".47" = ptrtoint ptr %".46" to i64
  %".48" = add i64 %".47", 0
  %"for_LDG" = inttoptr i64 %".48" to ptr
  %".49" = load float, ptr %"for_LDG"
  %".50" = bitcast ptr %"R2" to ptr
  store float %".49", ptr %".50"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".53" = load i32, ptr %"R4"
  %".54" = load i32, ptr %"R5"
  %"zext.4" = zext i32 %".53" to i64
  %"zext.5" = zext i32 %".54" to i64
  %"mul.2" = mul i64 %"zext.4", %"zext.5"
  %".55" = ptrtoint ptr %"Arg_1" to i64
  %"add.2" = add i64 %"mul.2", %".55"
  %".56" = and i64 %"add.2", 18446744069414584320
  %".57" = lshr i64 %".56", 32
  %"trunc32.2" = trunc i64 %".57" to i32
  %"trunc32.3" = trunc i64 %"add.2" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; FMNMX R7, RZ, R2, !PT
  %".61" = load float, ptr %"R2"
  %".62" = xor i1 1, -1
  %".63" = fcmp olt float              0x0, %".61"
  %"fmnmx_min" = select  i1 %".63", float              0x0, float %".61"
  %".64" = fcmp ogt float              0x0, %".61"
  %"fmnmx_max" = select  i1 %".64", float              0x0, float %".61"
  %"fmnmx_final" = select  i1 %".62", float %"fmnmx_min", float %"fmnmx_max"
  %".65" = bitcast ptr %"R7" to ptr
  store float %"fmnmx_final", ptr %".65"
  ; STG.E.SYS [R4], R7
  %".68" = load float, ptr %"R7"
  %".69" = load i32, ptr %"R4"
  %"zext.6" = zext i32 %".69" to i64
  %".70" = load i32, ptr %"R5"
  %"zext.7" = zext i32 %".70" to i64
  %"shl.1" = shl i64 %"zext.7", 32
  %"or.1" = or i64 %"shl.1", %"zext.6"
  %".71" = inttoptr i64 %"or.1" to ptr
  %".72" = ptrtoint ptr %".71" to i64
  %".73" = add i64 %".72", 0
  %"for_STG" = inttoptr i64 %".73" to ptr
  store float %".68", ptr %"for_STG"
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
  %"ThreadIdx" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx", ptr %"R4"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; S2R R5, SR_TID.X
  %"ThreadIdx.1" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx.1", ptr %"R5"
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
  %".229" = inttoptr i64 %"or" to ptr
  %".230" = ptrtoint ptr %".229" to i64
  %".231" = add i64 %".230", 0
  %"for_LDG" = inttoptr i64 %".231" to ptr
  %".232" = load float, ptr %"for_LDG"
  %".233" = bitcast ptr %"R14" to ptr
  store float %".232", ptr %".233"
  ; LDG.E.SYS R23, [R6]
  %".236" = load i32, ptr %"R6"
  %"zext.9" = zext i32 %".236" to i64
  %".237" = load i32, ptr %"R7"
  %"zext.10" = zext i32 %".237" to i64
  %"shl.1" = shl i64 %"zext.10", 32
  %"or.1" = or i64 %"shl.1", %"zext.9"
  %".238" = inttoptr i64 %"or.1" to ptr
  %".239" = ptrtoint ptr %".238" to i64
  %".240" = add i64 %".239", 0
  %"for_LDG.1" = inttoptr i64 %".240" to ptr
  %".241" = load float, ptr %"for_LDG.1"
  %".242" = bitcast ptr %"R23" to ptr
  store float %".241", ptr %".242"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".245" = load i32, ptr %"R31"
  %".246" = load i32, ptr %"R16"
  %"zext.11" = zext i32 %".245" to i64
  %"zext.12" = zext i32 4 to i64
  %"mul.15" = mul i64 %"zext.11", %"zext.12"
  %"zext.13" = zext i32 %".246" to i64
  %"add.15" = add i64 %"mul.15", %"zext.13"
  %".247" = and i64 %"add.15", 18446744069414584320
  %".248" = lshr i64 %".247", 32
  %"trunc32.6" = trunc i64 %".248" to i32
  %"trunc32.7" = trunc i64 %"add.15" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".252" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".252" to i64
  %".253" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".253" to i64
  %"shl.2" = shl i64 %"zext.15", 32
  %"or.2" = or i64 %"shl.2", %"zext.14"
  %".254" = inttoptr i64 %"or.2" to ptr
  %".255" = ptrtoint ptr %".254" to i64
  %".256" = add i64 %".255", 0
  %"for_LDG.2" = inttoptr i64 %".256" to ptr
  %".257" = load float, ptr %"for_LDG.2"
  %".258" = bitcast ptr %"R16" to ptr
  store float %".257", ptr %".258"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".261" = load i32, ptr %"R31"
  %".262" = load i32, ptr %"R18"
  %"zext.16" = zext i32 %".261" to i64
  %"zext.17" = zext i32 4 to i64
  %"mul.16" = mul i64 %"zext.16", %"zext.17"
  %"zext.18" = zext i32 %".262" to i64
  %"add.16" = add i64 %"mul.16", %"zext.18"
  %".263" = and i64 %"add.16", 18446744069414584320
  %".264" = lshr i64 %".263", 32
  %"trunc32.8" = trunc i64 %".264" to i32
  %"trunc32.9" = trunc i64 %"add.16" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".268" = load i32, ptr %"R6"
  %"zext.19" = zext i32 %".268" to i64
  %".269" = load i32, ptr %"R7"
  %"zext.20" = zext i32 %".269" to i64
  %"shl.3" = shl i64 %"zext.20", 32
  %"or.3" = or i64 %"shl.3", %"zext.19"
  %".270" = inttoptr i64 %"or.3" to ptr
  %".271" = ptrtoint ptr %".270" to i64
  %".272" = add i64 %".271", 4
  %"for_LDG.3" = inttoptr i64 %".272" to ptr
  %".273" = load float, ptr %"for_LDG.3"
  %".274" = bitcast ptr %"R22" to ptr
  store float %".273", ptr %".274"
  ; LDG.E.SYS R18, [R18]
  %".277" = load i32, ptr %"R18"
  %"zext.21" = zext i32 %".277" to i64
  %".278" = load i32, ptr %"R19"
  %"zext.22" = zext i32 %".278" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".279" = inttoptr i64 %"or.4" to ptr
  %".280" = ptrtoint ptr %".279" to i64
  %".281" = add i64 %".280", 0
  %"for_LDG.4" = inttoptr i64 %".281" to ptr
  %".282" = load float, ptr %"for_LDG.4"
  %".283" = bitcast ptr %"R18" to ptr
  store float %".282", ptr %".283"
  ; LDG.E.SYS R25, [R6+0x8]
  %".286" = load i32, ptr %"R6"
  %"zext.23" = zext i32 %".286" to i64
  %".287" = load i32, ptr %"R7"
  %"zext.24" = zext i32 %".287" to i64
  %"shl.5" = shl i64 %"zext.24", 32
  %"or.5" = or i64 %"shl.5", %"zext.23"
  %".288" = inttoptr i64 %"or.5" to ptr
  %".289" = ptrtoint ptr %".288" to i64
  %".290" = add i64 %".289", 8
  %"for_LDG.5" = inttoptr i64 %".290" to ptr
  %".291" = load float, ptr %"for_LDG.5"
  %".292" = bitcast ptr %"R25" to ptr
  store float %".291", ptr %".292"
  ; LDG.E.SYS R20, [R20]
  %".295" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".295" to i64
  %".296" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".296" to i64
  %"shl.6" = shl i64 %"zext.26", 32
  %"or.6" = or i64 %"shl.6", %"zext.25"
  %".297" = inttoptr i64 %"or.6" to ptr
  %".298" = ptrtoint ptr %".297" to i64
  %".299" = add i64 %".298", 0
  %"for_LDG.6" = inttoptr i64 %".299" to ptr
  %".300" = load float, ptr %"for_LDG.6"
  %".301" = bitcast ptr %"R20" to ptr
  store float %".300", ptr %".301"
  ; LDG.E.SYS R27, [R6+0xc]
  %".304" = load i32, ptr %"R6"
  %"zext.27" = zext i32 %".304" to i64
  %".305" = load i32, ptr %"R7"
  %"zext.28" = zext i32 %".305" to i64
  %"shl.7" = shl i64 %"zext.28", 32
  %"or.7" = or i64 %"shl.7", %"zext.27"
  %".306" = inttoptr i64 %"or.7" to ptr
  %".307" = ptrtoint ptr %".306" to i64
  %".308" = add i64 %".307", 12
  %"for_LDG.7" = inttoptr i64 %".308" to ptr
  %".309" = load float, ptr %"for_LDG.7"
  %".310" = bitcast ptr %"R27" to ptr
  store float %".309", ptr %".310"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".313" = load i32, ptr %"UR4"
  %".314" = add i32 %".313", 4
  %".315" = add i32 %".314", 0
  store i32 %".315", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".318" = load i32, ptr %"R31"
  %".319" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".318", 2
  %"add.17" = add i32 %"shl.8", %".319"
  store i32 %"add.17", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".322" = load float, ptr %"R23"
  %".323" = load float, ptr %"R14"
  %".324" = load float, ptr %"R12"
  %"fmul" = fmul float %".322", %".323"
  %"fadd" = fadd float %"fmul", %".324"
  %".325" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".325"
  ; IADD3 R12, R26, UR4, RZ
  %".328" = load i32, ptr %"R26"
  %".329" = load i32, ptr %"UR4"
  %".330" = add i32 %".328", %".329"
  %".331" = add i32 %".330", 0
  store i32 %".331", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".334" = load i32, ptr %"R12"
  %".335" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".334", 0
  %".336" = add i1 %"cmp.8", 0
  %".337" = xor i1 %".336", -1
  %".338" = and i1 %"cmp.8", %".335"
  %".339" = and i1 %".337", %".335"
  store i1 %".338", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".342" = load float, ptr %"R22"
  %".343" = load float, ptr %"R16"
  %".344" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".342", %".343"
  %"fadd.1" = fadd float %"fmul.1", %".344"
  %".345" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".345"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".348" = load i32, ptr %"R6"
  %".349" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".348", i32 16)
  %".350" = extractvalue {i32, i1} %".349", 0
  %".351" = extractvalue {i32, i1} %".349", 1
  %".352" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".350", i32 0)
  %".353" = extractvalue {i32, i1} %".352", 0
  %".354" = extractvalue {i32, i1} %".352", 1
  %".355" = or i1 %".351", %".354"
  store i32 %".353", ptr %"R23"
  store i1 %".355", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".359" = load float, ptr %"R25"
  %".360" = load float, ptr %"R18"
  %".361" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".359", %".360"
  %"fadd.2" = fadd float %"fmul.2", %".361"
  %".362" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".362"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".365" = load i32, ptr %"R7"
  %".366" = load i1, ptr %"P4"
  %".367" = xor i1 1, -1
  %".368" = zext i1 %".366" to i32
  %".369" = zext i1 %".367" to i32
  %"add.18" = add i32 0, %".365"
  %"add.19" = add i32 %"add.18", 0
  %"add.20" = add i32 %"add.19", %".368"
  %"add.21" = add i32 %"add.20", %".369"
  store i32 %"add.21", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".372" = load float, ptr %"R27"
  %".373" = load float, ptr %"R20"
  %".374" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".372", %".373"
  %"fadd.3" = fadd float %"fmul.3", %".374"
  %".375" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".375"
  ; @P2 BRA `(.L_x_17)
  %".378" = load i1, ptr %"P2"
  %".379" = icmp eq i1 %".378", 1
  br i1 %".379", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".382" = load i32, ptr %"R2"
  %".383" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".382", 1
  %"add.22" = add i32 %"mul.17", %".383"
  store i32 %"add.22", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".386" = load i1, ptr %"P3"
  %".387" = icmp ne i1 %".386", 1
  br i1 %".387", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".390" = load i32, ptr %"R11"
  %".391" = load i32, ptr %"UR4"
  %".392" = add i32 %".390", %".391"
  %".393" = add i32 %".392", 0
  store i32 %".393", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".396" = load i32, ptr %"R29"
  %".397" = load i32, ptr %"UR4"
  %".398" = add i32 %".396", %".397"
  %".399" = add i32 %".398", 0
  store i32 %".399", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".404" = load i32, ptr %"R15"
  %".405" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".404", %"Arg_3"
  %"add.23" = add i32 %"mul.18", %".405"
  store i32 %"add.23", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".408" = load i32, ptr %"R16"
  %".409" = load i32, ptr %"R19"
  %"zext.29" = zext i32 %".408" to i64
  %"zext.30" = zext i32 %".409" to i64
  %"mul.19" = mul i64 %"zext.29", %"zext.30"
  %".410" = ptrtoint ptr %"Arg_1" to i64
  %"add.24" = add i64 %"mul.19", %".410"
  %".411" = and i64 %"add.24", 18446744069414584320
  %".412" = lshr i64 %".411", 32
  %"trunc32.10" = trunc i64 %".412" to i32
  %"trunc32.11" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".416" = load i32, ptr %"R6"
  %".417" = load i32, ptr %"R19"
  %"zext.31" = zext i32 %".416" to i64
  %"zext.32" = zext i32 %".417" to i64
  %"mul.20" = mul i64 %"zext.31", %"zext.32"
  %".418" = ptrtoint ptr %"Arg_0" to i64
  %"add.25" = add i64 %"mul.20", %".418"
  %".419" = and i64 %"add.25", 18446744069414584320
  %".420" = lshr i64 %".419", 32
  %"trunc32.12" = trunc i64 %".420" to i32
  %"trunc32.13" = trunc i64 %"add.25" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".424" = load i32, ptr %"R16"
  %"zext.33" = zext i32 %".424" to i64
  %".425" = load i32, ptr %"R17"
  %"zext.34" = zext i32 %".425" to i64
  %"shl.9" = shl i64 %"zext.34", 32
  %"or.8" = or i64 %"shl.9", %"zext.33"
  %".426" = inttoptr i64 %"or.8" to ptr
  %".427" = ptrtoint ptr %".426" to i64
  %".428" = add i64 %".427", 0
  %"for_LDG.8" = inttoptr i64 %".428" to ptr
  %".429" = load float, ptr %"for_LDG.8"
  %".430" = bitcast ptr %"R13" to ptr
  store float %".429", ptr %".430"
  ; LDG.E.SYS R6, [R6]
  %".433" = load i32, ptr %"R6"
  %"zext.35" = zext i32 %".433" to i64
  %".434" = load i32, ptr %"R7"
  %"zext.36" = zext i32 %".434" to i64
  %"shl.10" = shl i64 %"zext.36", 32
  %"or.9" = or i64 %"shl.10", %"zext.35"
  %".435" = inttoptr i64 %"or.9" to ptr
  %".436" = ptrtoint ptr %".435" to i64
  %".437" = add i64 %".436", 0
  %"for_LDG.9" = inttoptr i64 %".437" to ptr
  %".438" = load float, ptr %"for_LDG.9"
  %".439" = bitcast ptr %"R6" to ptr
  store float %".438", ptr %".439"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".442" = load i32, ptr %"R4"
  %".443" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".442", 1
  %".444" = add i1 %"cmp.9", 0
  %".445" = xor i1 %".444", -1
  %".446" = and i1 %"cmp.9", %".443"
  %".447" = and i1 %".445", %".443"
  store i1 %".446", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".450" = load float, ptr %"R13"
  %".451" = load float, ptr %"R6"
  %".452" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".450", %".451"
  %"fadd.4" = fadd float %"fmul.4", %".452"
  %".453" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".453"
  ; @!P2 BRA `(.L_x_18)
  %".456" = load i1, ptr %"P2"
  %".457" = icmp ne i1 %".456", 1
  br i1 %".457", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".460" = load i32, ptr %"R4"
  %".461" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".460", 2
  %".462" = add i1 %"cmp.10", 0
  %".463" = xor i1 %".462", -1
  %".464" = and i1 %"cmp.10", %".461"
  %".465" = and i1 %".463", %".461"
  store i1 %".464", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".468" = load i32, ptr %"R16"
  %"zext.37" = zext i32 %".468" to i64
  %".469" = load i32, ptr %"R17"
  %"zext.38" = zext i32 %".469" to i64
  %"shl.11" = shl i64 %"zext.38", 32
  %"or.10" = or i64 %"shl.11", %"zext.37"
  %".470" = inttoptr i64 %"or.10" to ptr
  %".471" = ptrtoint ptr %".470" to i64
  %".472" = add i64 %".471", 4
  %"for_LDG.10" = inttoptr i64 %".472" to ptr
  %".473" = load float, ptr %"for_LDG.10"
  %".474" = bitcast ptr %"R13" to ptr
  store float %".473", ptr %".474"
  ; IADD3 R6, R15, 0x1, RZ
  %".477" = load i32, ptr %"R15"
  %".478" = add i32 %".477", 1
  %".479" = add i32 %".478", 0
  store i32 %".479", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".482" = load i32, ptr %"R6"
  %".483" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".482", %"Arg_3"
  %"add.26" = add i32 %"mul.21", %".483"
  store i32 %"add.26", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".486" = load i1, ptr %"P2"
  %".487" = icmp eq i1 %".486", 1
  br i1 %".487", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".490" = load i32, ptr %"R15"
  %".491" = add i32 %".490", 2
  %".492" = add i32 %".491", 0
  store i32 %".492", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".497" = load i1, ptr %"P2"
  %".498" = icmp eq i1 %".497", 1
  br i1 %".498", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".501" = load i32, ptr %"R7"
  %".502" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".501", %"Arg_3"
  %"add.27" = add i32 %"mul.22", %".502"
  store i32 %"add.27", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".507" = load i32, ptr %"R6"
  %".508" = load i32, ptr %"R19"
  %"zext.39" = zext i32 %".507" to i64
  %"zext.40" = zext i32 %".508" to i64
  %"mul.23" = mul i64 %"zext.39", %"zext.40"
  %".509" = ptrtoint ptr %"Arg_0" to i64
  %"add.28" = add i64 %"mul.23", %".509"
  %".510" = and i64 %"add.28", 18446744069414584320
  %".511" = lshr i64 %".510", 32
  %"trunc32.14" = trunc i64 %".511" to i32
  %"trunc32.15" = trunc i64 %"add.28" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".515" = load i1, ptr %"P2"
  %".516" = icmp eq i1 %".515", 1
  br i1 %".516", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".519" = load i32, ptr %"R14"
  %".520" = load i32, ptr %"R19"
  %"zext.41" = zext i32 %".519" to i64
  %"zext.42" = zext i32 %".520" to i64
  %"mul.24" = mul i64 %"zext.41", %"zext.42"
  %".521" = ptrtoint ptr %"Arg_0" to i64
  %"add.29" = add i64 %"mul.24", %".521"
  %".522" = and i64 %"add.29", 18446744069414584320
  %".523" = lshr i64 %".522", 32
  %"trunc32.16" = trunc i64 %".523" to i32
  %"trunc32.17" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".529" = load i1, ptr %"P2"
  %".530" = icmp eq i1 %".529", 1
  br i1 %".530", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".533" = load i32, ptr %"R16"
  %"zext.43" = zext i32 %".533" to i64
  %".534" = load i32, ptr %"R17"
  %"zext.44" = zext i32 %".534" to i64
  %"shl.12" = shl i64 %"zext.44", 32
  %"or.11" = or i64 %"shl.12", %"zext.43"
  %".535" = inttoptr i64 %"or.11" to ptr
  %".536" = ptrtoint ptr %".535" to i64
  %".537" = add i64 %".536", 8
  %"for_LDG.11" = inttoptr i64 %".537" to ptr
  %".538" = load float, ptr %"for_LDG.11"
  %".539" = bitcast ptr %"R19" to ptr
  store float %".538", ptr %".539"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".544" = load i32, ptr %"R6"
  %"zext.45" = zext i32 %".544" to i64
  %".545" = load i32, ptr %"R7"
  %"zext.46" = zext i32 %".545" to i64
  %"shl.13" = shl i64 %"zext.46", 32
  %"or.12" = or i64 %"shl.13", %"zext.45"
  %".546" = inttoptr i64 %"or.12" to ptr
  %".547" = ptrtoint ptr %".546" to i64
  %".548" = add i64 %".547", 0
  %"for_LDG.12" = inttoptr i64 %".548" to ptr
  %".549" = load float, ptr %"for_LDG.12"
  %".550" = bitcast ptr %"R6" to ptr
  store float %".549", ptr %".550"
  ; @P2 LDG.E.SYS R14, [R14]
  %".553" = load i1, ptr %"P2"
  %".554" = icmp eq i1 %".553", 1
  br i1 %".554", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".557" = load i32, ptr %"R14"
  %"zext.47" = zext i32 %".557" to i64
  %".558" = load i32, ptr %"R15"
  %"zext.48" = zext i32 %".558" to i64
  %"shl.14" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.14", %"zext.47"
  %".559" = inttoptr i64 %"or.13" to ptr
  %".560" = ptrtoint ptr %".559" to i64
  %".561" = add i64 %".560", 0
  %"for_LDG.13" = inttoptr i64 %".561" to ptr
  %".562" = load float, ptr %"for_LDG.13"
  %".563" = bitcast ptr %"R14" to ptr
  store float %".562", ptr %".563"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".568" = load float, ptr %"R13"
  %".569" = load float, ptr %"R6"
  %".570" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".568", %".569"
  %"fadd.5" = fadd float %"fmul.5", %".570"
  %".571" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".571"
  ; @P2 FFMA R12, R19, R14, R12
  %".574" = load i1, ptr %"P2"
  %".575" = icmp eq i1 %".574", 1
  br i1 %".575", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".578" = load float, ptr %"R19"
  %".579" = load float, ptr %"R14"
  %".580" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".578", %".579"
  %"fadd.6" = fadd float %"fmul.6", %".580"
  %".581" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".581"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".586" = load i32, ptr %"R8"
  %".587" = add i32 %".586", 1
  %".588" = add i32 %".587", 0
  store i32 %".588", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".591" = load i32, ptr %"R8"
  %".592" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".591", %"Arg_4"
  %".593" = add i1 %"cmp.11", 0
  %".594" = xor i1 %".593", -1
  %".595" = and i1 %"cmp.11", %".592"
  %".596" = and i1 %".594", %".592"
  store i1 %".595", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".599" = load i1, ptr %"P2"
  %".600" = icmp ne i1 %".599", 1
  br i1 %".600", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".603" = load i1, ptr %"P1"
  %".604" = icmp ne i1 %".603", 1
  br i1 %".604", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".607" = load i32, ptr %"UR5"
  %".608" = add i32 %".607", 1
  %".609" = add i32 %".608", 0
  store i32 %".609", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".612" = load i32, ptr %"R0"
  %".613" = load i32, ptr %"UR4"
  %".614" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".612", %".613"
  %"add.30" = add i32 %"mul.25", %".614"
  store i32 %"add.30", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".619" = load i32, ptr %"R3"
  %".620" = load i32, ptr %"UR4"
  %".621" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".619", %".620"
  %"add.31" = add i32 %"mul.26", %".621"
  store i32 %"add.31", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".624" = load i32, ptr %"R3"
  %".625" = load i32, ptr %"R0"
  %"zext.49" = zext i32 %".624" to i64
  %"zext.50" = zext i32 %".625" to i64
  %"mul.27" = mul i64 %"zext.49", %"zext.50"
  %".626" = ptrtoint ptr %"Arg_2" to i64
  %"add.32" = add i64 %"mul.27", %".626"
  %".627" = and i64 %"add.32", 18446744069414584320
  %".628" = lshr i64 %".627", 32
  %"trunc32.18" = trunc i64 %".628" to i32
  %"trunc32.19" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".632" = load i32, ptr %"R12"
  %".633" = load i32, ptr %"R2"
  %"zext.51" = zext i32 %".633" to i64
  %".634" = load i32, ptr %"R3"
  %"zext.52" = zext i32 %".634" to i64
  %"shl.15" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.15", %"zext.51"
  %".635" = inttoptr i64 %"or.14" to ptr
  %".636" = ptrtoint ptr %".635" to i64
  %".637" = add i64 %".636", 0
  %"for_STG" = inttoptr i64 %".637" to ptr
  store i32 %".632", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

