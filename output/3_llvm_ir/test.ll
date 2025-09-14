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
  %".8" = or i32 %".7", %".4"
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
  %".8" = or i32 %".7", %".4"
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
  %".8" = or i32 %".7", %".4"
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
  %".26" = and i1 %"cmp", %".25"
  store i1 %".26", ptr %"P0"
  ; @P0 EXIT
  %".29" = load i1, ptr %"P0"
  %".30" = icmp eq i1 %".29", 1
  br i1 %".30", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
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
  %".39" = load i32, ptr %"R4"
  %".40" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".39", 1
  %".41" = and i1 %"cmp.1", %".40"
  store i1 %".41", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".44" = load i1, ptr %"P0"
  %".45" = icmp ne i1 %".44", 1
  br i1 %".45", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".48" = load i32, ptr %"R4"
  %".49" = add i32 %".48", -1
  %".50" = add i32 %".49", 0
  store i32 %".50", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".53" = load i32, ptr %"R4"
  %".54" = xor i1 1, -1
  %".55" = and i32 %".53", 3
  store i32 %".55", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".58" = load i32, ptr %"R2"
  %".59" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".58", 3
  %".60" = and i1 %"cmp.2", %".59"
  store i1 %".60", ptr %"P0"
  ; MOV R7, RZ
  %".63" = load float, ptr %"RZ"
  %".64" = bitcast ptr %"R7" to ptr
  store float %".63", ptr %".64"
  ; MOV R5, RZ
  %".67" = load i32, ptr %"RZ"
  store i32 %".67", ptr %"R5"
  ; @!P0 BRA `(.L_x_1)
  %".70" = load i1, ptr %"P0"
  %".71" = icmp ne i1 %".70", 1
  br i1 %".71", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".74" = load i32, ptr %"R4"
  %".75" = sub i32 0, %".74"
  %".76" = add i32 %".75", %"Arg_4"
  %".77" = add i32 %".76", 0
  store i32 %".77", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".80" = load i32, ptr %"R0"
  %"mul.2" = mul i32 %".80", %"Arg_4"
  %"add.2" = add i32 %"mul.2", 0
  store i32 %"add.2", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".83" = ptrtoint ptr %"Arg_0" to i64
  %".84" = and i64 %".83", 18446744069414584320
  %".85" = lshr i64 %".84", 32
  %"trunc32" = trunc i64 %".85" to i32
  %"trunc32.1" = trunc i64 %".83" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.3" = add i32 %"mul.3", 4
  store i32 %"add.3", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".91" = load i32, ptr %"R6"
  %".92" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".91", 0
  %".93" = and i1 %"cmp.3", %".92"
  store i1 %".93", ptr %"P0"
  ; MOV R7, RZ
  %".96" = load float, ptr %"RZ"
  %".97" = bitcast ptr %"R7" to ptr
  store float %".96", ptr %".97"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".100" = load i32, ptr %"R2"
  %".101" = load i32, ptr %"R3"
  %"zext" = zext i32 %".100" to i64
  %"zext.1" = zext i32 %".101" to i64
  %"mul.4" = mul i64 %"zext", %"zext.1"
  %".102" = ptrtoint ptr %"Arg_1" to i64
  %"add.4" = add i64 %"mul.4", %".102"
  %".103" = and i64 %"add.4", 18446744069414584320
  %".104" = lshr i64 %".103", 32
  %"trunc32.2" = trunc i64 %".104" to i32
  %"trunc32.3" = trunc i64 %"add.4" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; MOV R5, RZ
  %".108" = load i32, ptr %"RZ"
  store i32 %".108", ptr %"R5"
  ; @!P0 BRA `(.L_x_2)
  %".111" = load i1, ptr %"P0"
  %".112" = icmp ne i1 %".111", 1
  br i1 %".112", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".115" = load i32, ptr %"R6"
  %".116" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".115", 12
  %".117" = and i1 %"cmp.4", %".116"
  store i1 %".117", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".120" = and i1 1, 1
  %".121" = or i1 %".120", 1
  ; @!P1 BRA `(.L_x_3)
  %".123" = load i1, ptr %"P1"
  %".124" = icmp ne i1 %".123", 1
  br i1 %".124", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".127" = xor i1 1, 1
  %".128" = and i1 %".127", 1
  %".129" = and i1 %".128", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".132" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".132" to i64
  %".133" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".133" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".134" = inttoptr i64 %"or" to ptr
  %".135" = ptrtoint ptr %".134" to i64
  %".136" = add i64 %".135", 0
  %"for_LDG" = inttoptr i64 %".136" to ptr
  %".137" = load float, ptr %"for_LDG"
  %".138" = bitcast ptr %"R8" to ptr
  store float %".137", ptr %".138"
  ; LDG.E.SYS R9, [UR4]
  %".141" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".141" to i64
  %".142" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".142" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %".143" = inttoptr i64 %"or.1" to ptr
  %".144" = ptrtoint ptr %".143" to i64
  %".145" = add i64 %".144", 0
  %"for_LDG.1" = inttoptr i64 %".145" to ptr
  %".146" = load float, ptr %"for_LDG.1"
  %".147" = bitcast ptr %"R9" to ptr
  store float %".146", ptr %".147"
  ; LDG.E.SYS R11, [R2+0x4]
  %".150" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".150" to i64
  %".151" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".151" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %".152" = inttoptr i64 %"or.2" to ptr
  %".153" = ptrtoint ptr %".152" to i64
  %".154" = add i64 %".153", 4
  %"for_LDG.2" = inttoptr i64 %".154" to ptr
  %".155" = load float, ptr %"for_LDG.2"
  %".156" = bitcast ptr %"R11" to ptr
  store float %".155", ptr %".156"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".159" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".159" to i64
  %".160" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".160" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %".161" = inttoptr i64 %"or.3" to ptr
  %".162" = ptrtoint ptr %".161" to i64
  %".163" = add i64 %".162", 4
  %"for_LDG.3" = inttoptr i64 %".163" to ptr
  %".164" = load float, ptr %"for_LDG.3"
  %".165" = bitcast ptr %"R10" to ptr
  store float %".164", ptr %".165"
  ; LDG.E.SYS R13, [R2+0x8]
  %".168" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".168" to i64
  %".169" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".169" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %".170" = inttoptr i64 %"or.4" to ptr
  %".171" = ptrtoint ptr %".170" to i64
  %".172" = add i64 %".171", 8
  %"for_LDG.4" = inttoptr i64 %".172" to ptr
  %".173" = load float, ptr %"for_LDG.4"
  %".174" = bitcast ptr %"R13" to ptr
  store float %".173", ptr %".174"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".177" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".177" to i64
  %".178" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".178" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %".179" = inttoptr i64 %"or.5" to ptr
  %".180" = ptrtoint ptr %".179" to i64
  %".181" = add i64 %".180", 8
  %"for_LDG.5" = inttoptr i64 %".181" to ptr
  %".182" = load float, ptr %"for_LDG.5"
  %".183" = bitcast ptr %"R12" to ptr
  store float %".182", ptr %".183"
  ; LDG.E.SYS R15, [R2+0xc]
  %".186" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".186" to i64
  %".187" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".187" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %".188" = inttoptr i64 %"or.6" to ptr
  %".189" = ptrtoint ptr %".188" to i64
  %".190" = add i64 %".189", 12
  %"for_LDG.6" = inttoptr i64 %".190" to ptr
  %".191" = load float, ptr %"for_LDG.6"
  %".192" = bitcast ptr %"R15" to ptr
  store float %".191", ptr %".192"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".195" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".195" to i64
  %".196" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".196" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %".197" = inttoptr i64 %"or.7" to ptr
  %".198" = ptrtoint ptr %".197" to i64
  %".199" = add i64 %".198", 12
  %"for_LDG.7" = inttoptr i64 %".199" to ptr
  %".200" = load float, ptr %"for_LDG.7"
  %".201" = bitcast ptr %"R14" to ptr
  store float %".200", ptr %".201"
  ; LDG.E.SYS R17, [R2+0x10]
  %".204" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".204" to i64
  %".205" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".205" to i64
  %"shl.8" = shl i64 %"zext.19", 32
  %"or.8" = or i64 %"shl.8", %"zext.18"
  %".206" = inttoptr i64 %"or.8" to ptr
  %".207" = ptrtoint ptr %".206" to i64
  %".208" = add i64 %".207", 16
  %"for_LDG.8" = inttoptr i64 %".208" to ptr
  %".209" = load float, ptr %"for_LDG.8"
  %".210" = bitcast ptr %"R17" to ptr
  store float %".209", ptr %".210"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".213" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".213" to i64
  %".214" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".214" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %".215" = inttoptr i64 %"or.9" to ptr
  %".216" = ptrtoint ptr %".215" to i64
  %".217" = add i64 %".216", 16
  %"for_LDG.9" = inttoptr i64 %".217" to ptr
  %".218" = load float, ptr %"for_LDG.9"
  %".219" = bitcast ptr %"R16" to ptr
  store float %".218", ptr %".219"
  ; LDG.E.SYS R19, [R2+0x14]
  %".222" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".222" to i64
  %".223" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".223" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %".224" = inttoptr i64 %"or.10" to ptr
  %".225" = ptrtoint ptr %".224" to i64
  %".226" = add i64 %".225", 20
  %"for_LDG.10" = inttoptr i64 %".226" to ptr
  %".227" = load float, ptr %"for_LDG.10"
  %".228" = bitcast ptr %"R19" to ptr
  store float %".227", ptr %".228"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".231" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".231" to i64
  %".232" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".232" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %".233" = inttoptr i64 %"or.11" to ptr
  %".234" = ptrtoint ptr %".233" to i64
  %".235" = add i64 %".234", 20
  %"for_LDG.11" = inttoptr i64 %".235" to ptr
  %".236" = load float, ptr %"for_LDG.11"
  %".237" = bitcast ptr %"R18" to ptr
  store float %".236", ptr %".237"
  ; LDG.E.SYS R21, [R2+0x18]
  %".240" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".240" to i64
  %".241" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".241" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %".242" = inttoptr i64 %"or.12" to ptr
  %".243" = ptrtoint ptr %".242" to i64
  %".244" = add i64 %".243", 24
  %"for_LDG.12" = inttoptr i64 %".244" to ptr
  %".245" = load float, ptr %"for_LDG.12"
  %".246" = bitcast ptr %"R21" to ptr
  store float %".245", ptr %".246"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".249" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".249" to i64
  %".250" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".250" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %".251" = inttoptr i64 %"or.13" to ptr
  %".252" = ptrtoint ptr %".251" to i64
  %".253" = add i64 %".252", 24
  %"for_LDG.13" = inttoptr i64 %".253" to ptr
  %".254" = load float, ptr %"for_LDG.13"
  %".255" = bitcast ptr %"R20" to ptr
  store float %".254", ptr %".255"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".258" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".258" to i64
  %".259" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".259" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %".260" = inttoptr i64 %"or.14" to ptr
  %".261" = ptrtoint ptr %".260" to i64
  %".262" = add i64 %".261", 28
  %"for_LDG.14" = inttoptr i64 %".262" to ptr
  %".263" = load float, ptr %"for_LDG.14"
  %".264" = bitcast ptr %"R23" to ptr
  store float %".263", ptr %".264"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".267" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".267" to i64
  %".268" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".268" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %".269" = inttoptr i64 %"or.15" to ptr
  %".270" = ptrtoint ptr %".269" to i64
  %".271" = add i64 %".270", 28
  %"for_LDG.15" = inttoptr i64 %".271" to ptr
  %".272" = load float, ptr %"for_LDG.15"
  %".273" = bitcast ptr %"R22" to ptr
  store float %".272", ptr %".273"
  ; LDG.E.SYS R25, [R2+0x20]
  %".276" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".276" to i64
  %".277" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".277" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %".278" = inttoptr i64 %"or.16" to ptr
  %".279" = ptrtoint ptr %".278" to i64
  %".280" = add i64 %".279", 32
  %"for_LDG.16" = inttoptr i64 %".280" to ptr
  %".281" = load float, ptr %"for_LDG.16"
  %".282" = bitcast ptr %"R25" to ptr
  store float %".281", ptr %".282"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".285" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".285" to i64
  %".286" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".286" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %".287" = inttoptr i64 %"or.17" to ptr
  %".288" = ptrtoint ptr %".287" to i64
  %".289" = add i64 %".288", 32
  %"for_LDG.17" = inttoptr i64 %".289" to ptr
  %".290" = load float, ptr %"for_LDG.17"
  %".291" = bitcast ptr %"R24" to ptr
  store float %".290", ptr %".291"
  ; LDG.E.SYS R27, [R2+0x24]
  %".294" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".294" to i64
  %".295" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".295" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %".296" = inttoptr i64 %"or.18" to ptr
  %".297" = ptrtoint ptr %".296" to i64
  %".298" = add i64 %".297", 36
  %"for_LDG.18" = inttoptr i64 %".298" to ptr
  %".299" = load float, ptr %"for_LDG.18"
  %".300" = bitcast ptr %"R27" to ptr
  store float %".299", ptr %".300"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".303" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".303" to i64
  %".304" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".304" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %".305" = inttoptr i64 %"or.19" to ptr
  %".306" = ptrtoint ptr %".305" to i64
  %".307" = add i64 %".306", 36
  %"for_LDG.19" = inttoptr i64 %".307" to ptr
  %".308" = load float, ptr %"for_LDG.19"
  %".309" = bitcast ptr %"R26" to ptr
  store float %".308", ptr %".309"
  ; LDG.E.SYS R29, [R2+0x28]
  %".312" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".312" to i64
  %".313" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".313" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %".314" = inttoptr i64 %"or.20" to ptr
  %".315" = ptrtoint ptr %".314" to i64
  %".316" = add i64 %".315", 40
  %"for_LDG.20" = inttoptr i64 %".316" to ptr
  %".317" = load float, ptr %"for_LDG.20"
  %".318" = bitcast ptr %"R29" to ptr
  store float %".317", ptr %".318"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".321" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".321" to i64
  %".322" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".322" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %".323" = inttoptr i64 %"or.21" to ptr
  %".324" = ptrtoint ptr %".323" to i64
  %".325" = add i64 %".324", 40
  %"for_LDG.21" = inttoptr i64 %".325" to ptr
  %".326" = load float, ptr %"for_LDG.21"
  %".327" = bitcast ptr %"R28" to ptr
  store float %".326", ptr %".327"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".330" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".330" to i64
  %".331" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".331" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %".332" = inttoptr i64 %"or.22" to ptr
  %".333" = ptrtoint ptr %".332" to i64
  %".334" = add i64 %".333", 44
  %"for_LDG.22" = inttoptr i64 %".334" to ptr
  %".335" = load float, ptr %"for_LDG.22"
  %".336" = bitcast ptr %"R31" to ptr
  store float %".335", ptr %".336"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".339" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".339" to i64
  %".340" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".340" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %".341" = inttoptr i64 %"or.23" to ptr
  %".342" = ptrtoint ptr %".341" to i64
  %".343" = add i64 %".342", 44
  %"for_LDG.23" = inttoptr i64 %".343" to ptr
  %".344" = load float, ptr %"for_LDG.23"
  %".345" = bitcast ptr %"R30" to ptr
  store float %".344", ptr %".345"
  ; LDG.E.SYS R33, [R2+0x30]
  %".348" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".348" to i64
  %".349" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".349" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %".350" = inttoptr i64 %"or.24" to ptr
  %".351" = ptrtoint ptr %".350" to i64
  %".352" = add i64 %".351", 48
  %"for_LDG.24" = inttoptr i64 %".352" to ptr
  %".353" = load float, ptr %"for_LDG.24"
  %".354" = bitcast ptr %"R33" to ptr
  store float %".353", ptr %".354"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".357" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".357" to i64
  %".358" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".358" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %".359" = inttoptr i64 %"or.25" to ptr
  %".360" = ptrtoint ptr %".359" to i64
  %".361" = add i64 %".360", 48
  %"for_LDG.25" = inttoptr i64 %".361" to ptr
  %".362" = load float, ptr %"for_LDG.25"
  %".363" = bitcast ptr %"R32" to ptr
  store float %".362", ptr %".363"
  ; LDG.E.SYS R35, [R2+0x34]
  %".366" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".366" to i64
  %".367" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".367" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %".368" = inttoptr i64 %"or.26" to ptr
  %".369" = ptrtoint ptr %".368" to i64
  %".370" = add i64 %".369", 52
  %"for_LDG.26" = inttoptr i64 %".370" to ptr
  %".371" = load float, ptr %"for_LDG.26"
  %".372" = bitcast ptr %"R35" to ptr
  store float %".371", ptr %".372"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".375" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".375" to i64
  %".376" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".376" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %".377" = inttoptr i64 %"or.27" to ptr
  %".378" = ptrtoint ptr %".377" to i64
  %".379" = add i64 %".378", 52
  %"for_LDG.27" = inttoptr i64 %".379" to ptr
  %".380" = load float, ptr %"for_LDG.27"
  %".381" = bitcast ptr %"R34" to ptr
  store float %".380", ptr %".381"
  ; LDG.E.SYS R37, [R2+0x38]
  %".384" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".384" to i64
  %".385" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".385" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %".386" = inttoptr i64 %"or.28" to ptr
  %".387" = ptrtoint ptr %".386" to i64
  %".388" = add i64 %".387", 56
  %"for_LDG.28" = inttoptr i64 %".388" to ptr
  %".389" = load float, ptr %"for_LDG.28"
  %".390" = bitcast ptr %"R37" to ptr
  store float %".389", ptr %".390"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".393" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".393" to i64
  %".394" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".394" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %".395" = inttoptr i64 %"or.29" to ptr
  %".396" = ptrtoint ptr %".395" to i64
  %".397" = add i64 %".396", 56
  %"for_LDG.29" = inttoptr i64 %".397" to ptr
  %".398" = load float, ptr %"for_LDG.29"
  %".399" = bitcast ptr %"R36" to ptr
  store float %".398", ptr %".399"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".402" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".402" to i64
  %".403" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".403" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %".404" = inttoptr i64 %"or.30" to ptr
  %".405" = ptrtoint ptr %".404" to i64
  %".406" = add i64 %".405", 60
  %"for_LDG.30" = inttoptr i64 %".406" to ptr
  %".407" = load float, ptr %"for_LDG.30"
  %".408" = bitcast ptr %"R39" to ptr
  store float %".407", ptr %".408"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".411" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".411" to i64
  %".412" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".412" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %".413" = inttoptr i64 %"or.31" to ptr
  %".414" = ptrtoint ptr %".413" to i64
  %".415" = add i64 %".414", 60
  %"for_LDG.31" = inttoptr i64 %".415" to ptr
  %".416" = load float, ptr %"for_LDG.31"
  %".417" = bitcast ptr %"R38" to ptr
  store float %".416", ptr %".417"
  ; IADD3 R6, R6, -0x10, RZ
  %".420" = load i32, ptr %"R6"
  %".421" = add i32 %".420", -16
  %".422" = add i32 %".421", 0
  store i32 %".422", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".425" = load i32, ptr %"UR4"
  %".426" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".425", i32 64)
  %".427" = extractvalue {i32, i1} %".426", 0
  %".428" = extractvalue {i32, i1} %".426", 1
  %".429" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".427", i32 0)
  %".430" = extractvalue {i32, i1} %".429", 0
  %".431" = extractvalue {i32, i1} %".429", 1
  %".432" = or i1 %".428", %".431"
  store i32 %".430", ptr %"UR4"
  store i1 %".432", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".436" = load i32, ptr %"R5"
  %".437" = add i32 %".436", 16
  %".438" = add i32 %".437", 0
  store i32 %".438", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".441" = load i32, ptr %"R6"
  %".442" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".441", 12
  %".443" = and i1 %"cmp.5", %".442"
  store i1 %".443", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".446" = load i32, ptr %"UR5"
  %".447" = load i1, ptr %"UP0"
  %".448" = xor i1 1, -1
  %".449" = zext i1 %".447" to i32
  %".450" = zext i1 %".448" to i32
  %"add.5" = add i32 0, %".446"
  %"add.6" = add i32 %"add.5", 0
  %"add.7" = add i32 %"add.6", %".449"
  %"add.8" = add i32 %"add.7", %".450"
  store i32 %"add.8", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".453" = load i32, ptr %"R2"
  %".454" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".453", i32 64)
  %".455" = extractvalue {i32, i1} %".454", 0
  %".456" = extractvalue {i32, i1} %".454", 1
  %".457" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".455", i32 0)
  %".458" = extractvalue {i32, i1} %".457", 0
  %".459" = extractvalue {i32, i1} %".457", 1
  %".460" = or i1 %".456", %".459"
  store i32 %".458", ptr %"R2"
  store i1 %".460", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".464" = load i32, ptr %"R3"
  %".465" = load i1, ptr %"P2"
  %"mul.5" = mul i32 0, 0
  %"add.9" = add i32 %"mul.5", %".464"
  %"zext.66" = zext i1 %".465" to i32
  %"add.10" = add i32 %"add.9", %"zext.66"
  store i32 %"add.10", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".468" = load float, ptr %"R8"
  %".469" = load float, ptr %"R9"
  %".470" = load float, ptr %"R7"
  %"fmul" = fmul float %".468", %".469"
  %"fadd" = fadd float %"fmul", %".470"
  %".471" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".471"
  ; FFMA R8, R11, R10, R8
  %".474" = load float, ptr %"R11"
  %".475" = load float, ptr %"R10"
  %".476" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".474", %".475"
  %"fadd.1" = fadd float %"fmul.1", %".476"
  %".477" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".477"
  ; FFMA R8, R13, R12, R8
  %".480" = load float, ptr %"R13"
  %".481" = load float, ptr %"R12"
  %".482" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".480", %".481"
  %"fadd.2" = fadd float %"fmul.2", %".482"
  %".483" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".483"
  ; FFMA R8, R15, R14, R8
  %".486" = load float, ptr %"R15"
  %".487" = load float, ptr %"R14"
  %".488" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".486", %".487"
  %"fadd.3" = fadd float %"fmul.3", %".488"
  %".489" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".489"
  ; FFMA R8, R17, R16, R8
  %".492" = load float, ptr %"R17"
  %".493" = load float, ptr %"R16"
  %".494" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".492", %".493"
  %"fadd.4" = fadd float %"fmul.4", %".494"
  %".495" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".495"
  ; FFMA R8, R19, R18, R8
  %".498" = load float, ptr %"R19"
  %".499" = load float, ptr %"R18"
  %".500" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".498", %".499"
  %"fadd.5" = fadd float %"fmul.5", %".500"
  %".501" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".501"
  ; FFMA R8, R21, R20, R8
  %".504" = load float, ptr %"R21"
  %".505" = load float, ptr %"R20"
  %".506" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".504", %".505"
  %"fadd.6" = fadd float %"fmul.6", %".506"
  %".507" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".507"
  ; FFMA R8, R23, R22, R8
  %".510" = load float, ptr %"R23"
  %".511" = load float, ptr %"R22"
  %".512" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".510", %".511"
  %"fadd.7" = fadd float %"fmul.7", %".512"
  %".513" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".513"
  ; FFMA R8, R25, R24, R8
  %".516" = load float, ptr %"R25"
  %".517" = load float, ptr %"R24"
  %".518" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".516", %".517"
  %"fadd.8" = fadd float %"fmul.8", %".518"
  %".519" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".519"
  ; FFMA R8, R27, R26, R8
  %".522" = load float, ptr %"R27"
  %".523" = load float, ptr %"R26"
  %".524" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".522", %".523"
  %"fadd.9" = fadd float %"fmul.9", %".524"
  %".525" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".525"
  ; FFMA R8, R29, R28, R8
  %".528" = load float, ptr %"R29"
  %".529" = load float, ptr %"R28"
  %".530" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".528", %".529"
  %"fadd.10" = fadd float %"fmul.10", %".530"
  %".531" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".531"
  ; FFMA R8, R31, R30, R8
  %".534" = load float, ptr %"R31"
  %".535" = load float, ptr %"R30"
  %".536" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".534", %".535"
  %"fadd.11" = fadd float %"fmul.11", %".536"
  %".537" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".537"
  ; FFMA R8, R33, R32, R8
  %".540" = load float, ptr %"R33"
  %".541" = load float, ptr %"R32"
  %".542" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".540", %".541"
  %"fadd.12" = fadd float %"fmul.12", %".542"
  %".543" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".543"
  ; FFMA R8, R35, R34, R8
  %".546" = load float, ptr %"R35"
  %".547" = load float, ptr %"R34"
  %".548" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".546", %".547"
  %"fadd.13" = fadd float %"fmul.13", %".548"
  %".549" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".549"
  ; FFMA R8, R37, R36, R8
  %".552" = load float, ptr %"R37"
  %".553" = load float, ptr %"R36"
  %".554" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".552", %".553"
  %"fadd.14" = fadd float %"fmul.14", %".554"
  %".555" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".555"
  ; FFMA R7, R39, R38, R8
  %".558" = load float, ptr %"R39"
  %".559" = load float, ptr %"R38"
  %".560" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".558", %".559"
  %"fadd.15" = fadd float %"fmul.15", %".560"
  %".561" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".561"
  ; @P1 BRA `(.L_x_4)
  %".564" = load i1, ptr %"P1"
  %".565" = icmp eq i1 %".564", 1
  br i1 %".565", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".568" = load i32, ptr %"R6"
  %".569" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".568", 4
  %".570" = and i1 %"cmp.6", %".569"
  store i1 %".570", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".573" = load i1, ptr %"P1"
  %".574" = icmp ne i1 %".573", 1
  br i1 %".574", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".577" = load i32, ptr %"R2"
  %"zext.67" = zext i32 %".577" to i64
  %".578" = load i32, ptr %"R3"
  %"zext.68" = zext i32 %".578" to i64
  %"shl.32" = shl i64 %"zext.68", 32
  %"or.32" = or i64 %"shl.32", %"zext.67"
  %".579" = inttoptr i64 %"or.32" to ptr
  %".580" = ptrtoint ptr %".579" to i64
  %".581" = add i64 %".580", 0
  %"for_LDG.32" = inttoptr i64 %".581" to ptr
  %".582" = load float, ptr %"for_LDG.32"
  %".583" = bitcast ptr %"R8" to ptr
  store float %".582", ptr %".583"
  ; LDG.E.SYS R9, [UR4]
  %".586" = load i32, ptr %"UR4"
  %"zext.69" = zext i32 %".586" to i64
  %".587" = load i32, ptr %"UR5"
  %"zext.70" = zext i32 %".587" to i64
  %"shl.33" = shl i64 %"zext.70", 32
  %"or.33" = or i64 %"shl.33", %"zext.69"
  %".588" = inttoptr i64 %"or.33" to ptr
  %".589" = ptrtoint ptr %".588" to i64
  %".590" = add i64 %".589", 0
  %"for_LDG.33" = inttoptr i64 %".590" to ptr
  %".591" = load float, ptr %"for_LDG.33"
  %".592" = bitcast ptr %"R9" to ptr
  store float %".591", ptr %".592"
  ; LDG.E.SYS R11, [R2+0x4]
  %".595" = load i32, ptr %"R2"
  %"zext.71" = zext i32 %".595" to i64
  %".596" = load i32, ptr %"R3"
  %"zext.72" = zext i32 %".596" to i64
  %"shl.34" = shl i64 %"zext.72", 32
  %"or.34" = or i64 %"shl.34", %"zext.71"
  %".597" = inttoptr i64 %"or.34" to ptr
  %".598" = ptrtoint ptr %".597" to i64
  %".599" = add i64 %".598", 4
  %"for_LDG.34" = inttoptr i64 %".599" to ptr
  %".600" = load float, ptr %"for_LDG.34"
  %".601" = bitcast ptr %"R11" to ptr
  store float %".600", ptr %".601"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".604" = load i32, ptr %"UR4"
  %"zext.73" = zext i32 %".604" to i64
  %".605" = load i32, ptr %"UR5"
  %"zext.74" = zext i32 %".605" to i64
  %"shl.35" = shl i64 %"zext.74", 32
  %"or.35" = or i64 %"shl.35", %"zext.73"
  %".606" = inttoptr i64 %"or.35" to ptr
  %".607" = ptrtoint ptr %".606" to i64
  %".608" = add i64 %".607", 4
  %"for_LDG.35" = inttoptr i64 %".608" to ptr
  %".609" = load float, ptr %"for_LDG.35"
  %".610" = bitcast ptr %"R10" to ptr
  store float %".609", ptr %".610"
  ; LDG.E.SYS R13, [R2+0x8]
  %".613" = load i32, ptr %"R2"
  %"zext.75" = zext i32 %".613" to i64
  %".614" = load i32, ptr %"R3"
  %"zext.76" = zext i32 %".614" to i64
  %"shl.36" = shl i64 %"zext.76", 32
  %"or.36" = or i64 %"shl.36", %"zext.75"
  %".615" = inttoptr i64 %"or.36" to ptr
  %".616" = ptrtoint ptr %".615" to i64
  %".617" = add i64 %".616", 8
  %"for_LDG.36" = inttoptr i64 %".617" to ptr
  %".618" = load float, ptr %"for_LDG.36"
  %".619" = bitcast ptr %"R13" to ptr
  store float %".618", ptr %".619"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".622" = load i32, ptr %"UR4"
  %"zext.77" = zext i32 %".622" to i64
  %".623" = load i32, ptr %"UR5"
  %"zext.78" = zext i32 %".623" to i64
  %"shl.37" = shl i64 %"zext.78", 32
  %"or.37" = or i64 %"shl.37", %"zext.77"
  %".624" = inttoptr i64 %"or.37" to ptr
  %".625" = ptrtoint ptr %".624" to i64
  %".626" = add i64 %".625", 8
  %"for_LDG.37" = inttoptr i64 %".626" to ptr
  %".627" = load float, ptr %"for_LDG.37"
  %".628" = bitcast ptr %"R12" to ptr
  store float %".627", ptr %".628"
  ; LDG.E.SYS R15, [R2+0xc]
  %".631" = load i32, ptr %"R2"
  %"zext.79" = zext i32 %".631" to i64
  %".632" = load i32, ptr %"R3"
  %"zext.80" = zext i32 %".632" to i64
  %"shl.38" = shl i64 %"zext.80", 32
  %"or.38" = or i64 %"shl.38", %"zext.79"
  %".633" = inttoptr i64 %"or.38" to ptr
  %".634" = ptrtoint ptr %".633" to i64
  %".635" = add i64 %".634", 12
  %"for_LDG.38" = inttoptr i64 %".635" to ptr
  %".636" = load float, ptr %"for_LDG.38"
  %".637" = bitcast ptr %"R15" to ptr
  store float %".636", ptr %".637"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".640" = load i32, ptr %"UR4"
  %"zext.81" = zext i32 %".640" to i64
  %".641" = load i32, ptr %"UR5"
  %"zext.82" = zext i32 %".641" to i64
  %"shl.39" = shl i64 %"zext.82", 32
  %"or.39" = or i64 %"shl.39", %"zext.81"
  %".642" = inttoptr i64 %"or.39" to ptr
  %".643" = ptrtoint ptr %".642" to i64
  %".644" = add i64 %".643", 12
  %"for_LDG.39" = inttoptr i64 %".644" to ptr
  %".645" = load float, ptr %"for_LDG.39"
  %".646" = bitcast ptr %"R14" to ptr
  store float %".645", ptr %".646"
  ; LDG.E.SYS R17, [R2+0x10]
  %".649" = load i32, ptr %"R2"
  %"zext.83" = zext i32 %".649" to i64
  %".650" = load i32, ptr %"R3"
  %"zext.84" = zext i32 %".650" to i64
  %"shl.40" = shl i64 %"zext.84", 32
  %"or.40" = or i64 %"shl.40", %"zext.83"
  %".651" = inttoptr i64 %"or.40" to ptr
  %".652" = ptrtoint ptr %".651" to i64
  %".653" = add i64 %".652", 16
  %"for_LDG.40" = inttoptr i64 %".653" to ptr
  %".654" = load float, ptr %"for_LDG.40"
  %".655" = bitcast ptr %"R17" to ptr
  store float %".654", ptr %".655"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".658" = load i32, ptr %"UR4"
  %"zext.85" = zext i32 %".658" to i64
  %".659" = load i32, ptr %"UR5"
  %"zext.86" = zext i32 %".659" to i64
  %"shl.41" = shl i64 %"zext.86", 32
  %"or.41" = or i64 %"shl.41", %"zext.85"
  %".660" = inttoptr i64 %"or.41" to ptr
  %".661" = ptrtoint ptr %".660" to i64
  %".662" = add i64 %".661", 16
  %"for_LDG.41" = inttoptr i64 %".662" to ptr
  %".663" = load float, ptr %"for_LDG.41"
  %".664" = bitcast ptr %"R16" to ptr
  store float %".663", ptr %".664"
  ; LDG.E.SYS R19, [R2+0x14]
  %".667" = load i32, ptr %"R2"
  %"zext.87" = zext i32 %".667" to i64
  %".668" = load i32, ptr %"R3"
  %"zext.88" = zext i32 %".668" to i64
  %"shl.42" = shl i64 %"zext.88", 32
  %"or.42" = or i64 %"shl.42", %"zext.87"
  %".669" = inttoptr i64 %"or.42" to ptr
  %".670" = ptrtoint ptr %".669" to i64
  %".671" = add i64 %".670", 20
  %"for_LDG.42" = inttoptr i64 %".671" to ptr
  %".672" = load float, ptr %"for_LDG.42"
  %".673" = bitcast ptr %"R19" to ptr
  store float %".672", ptr %".673"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".676" = load i32, ptr %"UR4"
  %"zext.89" = zext i32 %".676" to i64
  %".677" = load i32, ptr %"UR5"
  %"zext.90" = zext i32 %".677" to i64
  %"shl.43" = shl i64 %"zext.90", 32
  %"or.43" = or i64 %"shl.43", %"zext.89"
  %".678" = inttoptr i64 %"or.43" to ptr
  %".679" = ptrtoint ptr %".678" to i64
  %".680" = add i64 %".679", 20
  %"for_LDG.43" = inttoptr i64 %".680" to ptr
  %".681" = load float, ptr %"for_LDG.43"
  %".682" = bitcast ptr %"R18" to ptr
  store float %".681", ptr %".682"
  ; LDG.E.SYS R21, [R2+0x18]
  %".685" = load i32, ptr %"R2"
  %"zext.91" = zext i32 %".685" to i64
  %".686" = load i32, ptr %"R3"
  %"zext.92" = zext i32 %".686" to i64
  %"shl.44" = shl i64 %"zext.92", 32
  %"or.44" = or i64 %"shl.44", %"zext.91"
  %".687" = inttoptr i64 %"or.44" to ptr
  %".688" = ptrtoint ptr %".687" to i64
  %".689" = add i64 %".688", 24
  %"for_LDG.44" = inttoptr i64 %".689" to ptr
  %".690" = load float, ptr %"for_LDG.44"
  %".691" = bitcast ptr %"R21" to ptr
  store float %".690", ptr %".691"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".694" = load i32, ptr %"UR4"
  %"zext.93" = zext i32 %".694" to i64
  %".695" = load i32, ptr %"UR5"
  %"zext.94" = zext i32 %".695" to i64
  %"shl.45" = shl i64 %"zext.94", 32
  %"or.45" = or i64 %"shl.45", %"zext.93"
  %".696" = inttoptr i64 %"or.45" to ptr
  %".697" = ptrtoint ptr %".696" to i64
  %".698" = add i64 %".697", 24
  %"for_LDG.45" = inttoptr i64 %".698" to ptr
  %".699" = load float, ptr %"for_LDG.45"
  %".700" = bitcast ptr %"R20" to ptr
  store float %".699", ptr %".700"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".703" = load i32, ptr %"R2"
  %"zext.95" = zext i32 %".703" to i64
  %".704" = load i32, ptr %"R3"
  %"zext.96" = zext i32 %".704" to i64
  %"shl.46" = shl i64 %"zext.96", 32
  %"or.46" = or i64 %"shl.46", %"zext.95"
  %".705" = inttoptr i64 %"or.46" to ptr
  %".706" = ptrtoint ptr %".705" to i64
  %".707" = add i64 %".706", 28
  %"for_LDG.46" = inttoptr i64 %".707" to ptr
  %".708" = load float, ptr %"for_LDG.46"
  %".709" = bitcast ptr %"R23" to ptr
  store float %".708", ptr %".709"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".712" = load i32, ptr %"UR4"
  %"zext.97" = zext i32 %".712" to i64
  %".713" = load i32, ptr %"UR5"
  %"zext.98" = zext i32 %".713" to i64
  %"shl.47" = shl i64 %"zext.98", 32
  %"or.47" = or i64 %"shl.47", %"zext.97"
  %".714" = inttoptr i64 %"or.47" to ptr
  %".715" = ptrtoint ptr %".714" to i64
  %".716" = add i64 %".715", 28
  %"for_LDG.47" = inttoptr i64 %".716" to ptr
  %".717" = load float, ptr %"for_LDG.47"
  %".718" = bitcast ptr %"R22" to ptr
  store float %".717", ptr %".718"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".721" = load i32, ptr %"UR4"
  %".722" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".721", i32 32)
  %".723" = extractvalue {i32, i1} %".722", 0
  %".724" = extractvalue {i32, i1} %".722", 1
  %".725" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".723", i32 0)
  %".726" = extractvalue {i32, i1} %".725", 0
  %".727" = extractvalue {i32, i1} %".725", 1
  %".728" = or i1 %".724", %".727"
  store i32 %".726", ptr %"UR4"
  store i1 %".728", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".732" = xor i1 1, 1
  %".733" = and i1 %".732", 1
  %".734" = and i1 %".733", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".736" = load i32, ptr %"R5"
  %".737" = add i32 %".736", 8
  %".738" = add i32 %".737", 0
  store i32 %".738", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".741" = load i32, ptr %"UR5"
  %".742" = load i1, ptr %"UP0"
  %".743" = xor i1 1, -1
  %".744" = zext i1 %".742" to i32
  %".745" = zext i1 %".743" to i32
  %"add.11" = add i32 0, %".741"
  %"add.12" = add i32 %"add.11", 0
  %"add.13" = add i32 %"add.12", %".744"
  %"add.14" = add i32 %"add.13", %".745"
  store i32 %"add.14", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".748" = load i32, ptr %"R2"
  %".749" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".748", i32 32)
  %".750" = extractvalue {i32, i1} %".749", 0
  %".751" = extractvalue {i32, i1} %".749", 1
  %".752" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".750", i32 0)
  %".753" = extractvalue {i32, i1} %".752", 0
  %".754" = extractvalue {i32, i1} %".752", 1
  %".755" = or i1 %".751", %".754"
  store i32 %".753", ptr %"R2"
  store i1 %".755", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".759" = load i32, ptr %"R6"
  %".760" = add i32 %".759", -8
  %".761" = add i32 %".760", 0
  store i32 %".761", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".764" = load i32, ptr %"R3"
  %".765" = load i1, ptr %"P1"
  %".766" = xor i1 1, -1
  %".767" = zext i1 %".765" to i32
  %".768" = zext i1 %".766" to i32
  %"add.15" = add i32 0, %".764"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".767"
  %"add.18" = add i32 %"add.17", %".768"
  store i32 %"add.18", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".771" = load float, ptr %"R8"
  %".772" = load float, ptr %"R9"
  %".773" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".771", %".772"
  %"fadd.16" = fadd float %"fmul.16", %".773"
  %".774" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".774"
  ; FFMA R8, R11, R10, R8
  %".777" = load float, ptr %"R11"
  %".778" = load float, ptr %"R10"
  %".779" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".777", %".778"
  %"fadd.17" = fadd float %"fmul.17", %".779"
  %".780" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".780"
  ; FFMA R8, R13, R12, R8
  %".783" = load float, ptr %"R13"
  %".784" = load float, ptr %"R12"
  %".785" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".783", %".784"
  %"fadd.18" = fadd float %"fmul.18", %".785"
  %".786" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".786"
  ; FFMA R8, R15, R14, R8
  %".789" = load float, ptr %"R15"
  %".790" = load float, ptr %"R14"
  %".791" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".789", %".790"
  %"fadd.19" = fadd float %"fmul.19", %".791"
  %".792" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".792"
  ; FFMA R8, R17, R16, R8
  %".795" = load float, ptr %"R17"
  %".796" = load float, ptr %"R16"
  %".797" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".795", %".796"
  %"fadd.20" = fadd float %"fmul.20", %".797"
  %".798" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".798"
  ; FFMA R8, R19, R18, R8
  %".801" = load float, ptr %"R19"
  %".802" = load float, ptr %"R18"
  %".803" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".801", %".802"
  %"fadd.21" = fadd float %"fmul.21", %".803"
  %".804" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".804"
  ; FFMA R8, R21, R20, R8
  %".807" = load float, ptr %"R21"
  %".808" = load float, ptr %"R20"
  %".809" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".807", %".808"
  %"fadd.22" = fadd float %"fmul.22", %".809"
  %".810" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".810"
  ; FFMA R7, R23, R22, R8
  %".813" = load float, ptr %"R23"
  %".814" = load float, ptr %"R22"
  %".815" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".813", %".814"
  %"fadd.23" = fadd float %"fmul.23", %".815"
  %".816" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".816"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".820" = load i32, ptr %"R6"
  %".821" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".820", 0
  %".822" = or i1 %"cmp.7", %".821"
  store i1 %".822", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".825" = load i1, ptr %"P0"
  %".826" = icmp ne i1 %".825", 1
  br i1 %".826", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".829" = load i32, ptr %"R2"
  %"zext.99" = zext i32 %".829" to i64
  %".830" = load i32, ptr %"R3"
  %"zext.100" = zext i32 %".830" to i64
  %"shl.48" = shl i64 %"zext.100", 32
  %"or.48" = or i64 %"shl.48", %"zext.99"
  %".831" = inttoptr i64 %"or.48" to ptr
  %".832" = ptrtoint ptr %".831" to i64
  %".833" = add i64 %".832", 0
  %"for_LDG.48" = inttoptr i64 %".833" to ptr
  %".834" = load float, ptr %"for_LDG.48"
  %".835" = bitcast ptr %"R8" to ptr
  store float %".834", ptr %".835"
  ; LDG.E.SYS R9, [UR4]
  %".838" = load i32, ptr %"UR4"
  %"zext.101" = zext i32 %".838" to i64
  %".839" = load i32, ptr %"UR5"
  %"zext.102" = zext i32 %".839" to i64
  %"shl.49" = shl i64 %"zext.102", 32
  %"or.49" = or i64 %"shl.49", %"zext.101"
  %".840" = inttoptr i64 %"or.49" to ptr
  %".841" = ptrtoint ptr %".840" to i64
  %".842" = add i64 %".841", 0
  %"for_LDG.49" = inttoptr i64 %".842" to ptr
  %".843" = load float, ptr %"for_LDG.49"
  %".844" = bitcast ptr %"R9" to ptr
  store float %".843", ptr %".844"
  ; LDG.E.SYS R11, [R2+0x4]
  %".847" = load i32, ptr %"R2"
  %"zext.103" = zext i32 %".847" to i64
  %".848" = load i32, ptr %"R3"
  %"zext.104" = zext i32 %".848" to i64
  %"shl.50" = shl i64 %"zext.104", 32
  %"or.50" = or i64 %"shl.50", %"zext.103"
  %".849" = inttoptr i64 %"or.50" to ptr
  %".850" = ptrtoint ptr %".849" to i64
  %".851" = add i64 %".850", 4
  %"for_LDG.50" = inttoptr i64 %".851" to ptr
  %".852" = load float, ptr %"for_LDG.50"
  %".853" = bitcast ptr %"R11" to ptr
  store float %".852", ptr %".853"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".856" = load i32, ptr %"UR4"
  %"zext.105" = zext i32 %".856" to i64
  %".857" = load i32, ptr %"UR5"
  %"zext.106" = zext i32 %".857" to i64
  %"shl.51" = shl i64 %"zext.106", 32
  %"or.51" = or i64 %"shl.51", %"zext.105"
  %".858" = inttoptr i64 %"or.51" to ptr
  %".859" = ptrtoint ptr %".858" to i64
  %".860" = add i64 %".859", 4
  %"for_LDG.51" = inttoptr i64 %".860" to ptr
  %".861" = load float, ptr %"for_LDG.51"
  %".862" = bitcast ptr %"R10" to ptr
  store float %".861", ptr %".862"
  ; LDG.E.SYS R13, [R2+0x8]
  %".865" = load i32, ptr %"R2"
  %"zext.107" = zext i32 %".865" to i64
  %".866" = load i32, ptr %"R3"
  %"zext.108" = zext i32 %".866" to i64
  %"shl.52" = shl i64 %"zext.108", 32
  %"or.52" = or i64 %"shl.52", %"zext.107"
  %".867" = inttoptr i64 %"or.52" to ptr
  %".868" = ptrtoint ptr %".867" to i64
  %".869" = add i64 %".868", 8
  %"for_LDG.52" = inttoptr i64 %".869" to ptr
  %".870" = load float, ptr %"for_LDG.52"
  %".871" = bitcast ptr %"R13" to ptr
  store float %".870", ptr %".871"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".874" = load i32, ptr %"UR4"
  %"zext.109" = zext i32 %".874" to i64
  %".875" = load i32, ptr %"UR5"
  %"zext.110" = zext i32 %".875" to i64
  %"shl.53" = shl i64 %"zext.110", 32
  %"or.53" = or i64 %"shl.53", %"zext.109"
  %".876" = inttoptr i64 %"or.53" to ptr
  %".877" = ptrtoint ptr %".876" to i64
  %".878" = add i64 %".877", 8
  %"for_LDG.53" = inttoptr i64 %".878" to ptr
  %".879" = load float, ptr %"for_LDG.53"
  %".880" = bitcast ptr %"R12" to ptr
  store float %".879", ptr %".880"
  ; LDG.E.SYS R15, [R2+0xc]
  %".883" = load i32, ptr %"R2"
  %"zext.111" = zext i32 %".883" to i64
  %".884" = load i32, ptr %"R3"
  %"zext.112" = zext i32 %".884" to i64
  %"shl.54" = shl i64 %"zext.112", 32
  %"or.54" = or i64 %"shl.54", %"zext.111"
  %".885" = inttoptr i64 %"or.54" to ptr
  %".886" = ptrtoint ptr %".885" to i64
  %".887" = add i64 %".886", 12
  %"for_LDG.54" = inttoptr i64 %".887" to ptr
  %".888" = load float, ptr %"for_LDG.54"
  %".889" = bitcast ptr %"R15" to ptr
  store float %".888", ptr %".889"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".892" = load i32, ptr %"UR4"
  %"zext.113" = zext i32 %".892" to i64
  %".893" = load i32, ptr %"UR5"
  %"zext.114" = zext i32 %".893" to i64
  %"shl.55" = shl i64 %"zext.114", 32
  %"or.55" = or i64 %"shl.55", %"zext.113"
  %".894" = inttoptr i64 %"or.55" to ptr
  %".895" = ptrtoint ptr %".894" to i64
  %".896" = add i64 %".895", 12
  %"for_LDG.55" = inttoptr i64 %".896" to ptr
  %".897" = load float, ptr %"for_LDG.55"
  %".898" = bitcast ptr %"R14" to ptr
  store float %".897", ptr %".898"
  ; IADD3 R6, R6, -0x4, RZ
  %".901" = load i32, ptr %"R6"
  %".902" = add i32 %".901", -4
  %".903" = add i32 %".902", 0
  store i32 %".903", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".906" = load i32, ptr %"UR4"
  %".907" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".906", i32 16)
  %".908" = extractvalue {i32, i1} %".907", 0
  %".909" = extractvalue {i32, i1} %".907", 1
  %".910" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".908", i32 0)
  %".911" = extractvalue {i32, i1} %".910", 0
  %".912" = extractvalue {i32, i1} %".910", 1
  %".913" = or i1 %".909", %".912"
  store i32 %".911", ptr %"UR4"
  store i1 %".913", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".917" = load i32, ptr %"R5"
  %".918" = add i32 %".917", 4
  %".919" = add i32 %".918", 0
  store i32 %".919", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".922" = load i32, ptr %"R6"
  %".923" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".922", 0
  %".924" = and i1 %"cmp.8", %".923"
  store i1 %".924", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".927" = load i32, ptr %"UR5"
  %".928" = load i1, ptr %"UP0"
  %".929" = xor i1 1, -1
  %".930" = zext i1 %".928" to i32
  %".931" = zext i1 %".929" to i32
  %"add.19" = add i32 0, %".927"
  %"add.20" = add i32 %"add.19", 0
  %"add.21" = add i32 %"add.20", %".930"
  %"add.22" = add i32 %"add.21", %".931"
  store i32 %"add.22", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".934" = load float, ptr %"R8"
  %".935" = load float, ptr %"R9"
  %".936" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".934", %".935"
  %"fadd.24" = fadd float %"fmul.24", %".936"
  %".937" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".937"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".940" = load i32, ptr %"R2"
  %".941" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".940", i32 16)
  %".942" = extractvalue {i32, i1} %".941", 0
  %".943" = extractvalue {i32, i1} %".941", 1
  %".944" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".942", i32 0)
  %".945" = extractvalue {i32, i1} %".944", 0
  %".946" = extractvalue {i32, i1} %".944", 1
  %".947" = or i1 %".943", %".946"
  store i32 %".945", ptr %"R9"
  store i1 %".947", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".951" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.23" = add i32 %"mul.6", %".951"
  store i32 %"add.23", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".954" = load float, ptr %"R11"
  %".955" = load float, ptr %"R10"
  %".956" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".954", %".955"
  %"fadd.25" = fadd float %"fmul.25", %".956"
  %".957" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".957"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".960" = load i32, ptr %"R3"
  %".961" = load i1, ptr %"P1"
  %".962" = xor i1 1, -1
  %".963" = zext i1 %".961" to i32
  %".964" = zext i1 %".962" to i32
  %"add.24" = add i32 0, %".960"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".963"
  %"add.27" = add i32 %"add.26", %".964"
  store i32 %"add.27", ptr %"R10"
  ; MOV R3, R10
  %".967" = load i32, ptr %"R10"
  store i32 %".967", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".970" = load float, ptr %"R13"
  %".971" = load float, ptr %"R12"
  %".972" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".970", %".971"
  %"fadd.26" = fadd float %"fmul.26", %".972"
  %".973" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".973"
  ; FFMA R7, R15, R14, R8
  %".976" = load float, ptr %"R15"
  %".977" = load float, ptr %"R14"
  %".978" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".976", %".977"
  %"fadd.27" = fadd float %"fmul.27", %".978"
  %".979" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".979"
  ; @P0 BRA `(.L_x_2)
  %".982" = load i1, ptr %"P0"
  %".983" = icmp eq i1 %".982", 1
  br i1 %".983", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".986" = load i32, ptr %"R4"
  %".987" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".986", 0
  %".988" = and i1 %"cmp.9", %".987"
  store i1 %".988", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".991" = load i1, ptr %"P0"
  %".992" = icmp ne i1 %".991", 1
  br i1 %".992", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".997" = load i32, ptr %"R0"
  %".998" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".997", %"Arg_4"
  %"add.28" = add i32 %"mul.7", %".998"
  store i32 %"add.28", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".1001" = load i32, ptr %"R2"
  %".1002" = load i32, ptr %"R8"
  %"zext.115" = zext i32 %".1001" to i64
  %"zext.116" = zext i32 %".1002" to i64
  %"mul.8" = mul i64 %"zext.115", %"zext.116"
  %".1003" = ptrtoint ptr %"Arg_1" to i64
  %"add.29" = add i64 %"mul.8", %".1003"
  %".1004" = and i64 %"add.29", 18446744069414584320
  %".1005" = lshr i64 %".1004", 32
  %"trunc32.4" = trunc i64 %".1005" to i32
  %"trunc32.5" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".1009" = load i32, ptr %"R5"
  %".1010" = load i32, ptr %"R8"
  %"zext.117" = zext i32 %".1009" to i64
  %"zext.118" = zext i32 %".1010" to i64
  %"mul.9" = mul i64 %"zext.117", %"zext.118"
  %".1011" = ptrtoint ptr %"Arg_0" to i64
  %"add.30" = add i64 %"mul.9", %".1011"
  %".1012" = and i64 %"add.30", 18446744069414584320
  %".1013" = lshr i64 %".1012", 32
  %"trunc32.6" = trunc i64 %".1013" to i32
  %"trunc32.7" = trunc i64 %"add.30" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".1017" = load i32, ptr %"R2"
  store i32 %".1017", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".1021" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.31" = add i32 %"mul.10", %".1021"
  store i32 %"add.31", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".1024" = load i32, ptr %"R8"
  %"zext.119" = zext i32 %".1024" to i64
  %".1025" = load i32, ptr %"R9"
  %"zext.120" = zext i32 %".1025" to i64
  %"shl.56" = shl i64 %"zext.120", 32
  %"or.56" = or i64 %"shl.56", %"zext.119"
  %".1026" = inttoptr i64 %"or.56" to ptr
  %".1027" = ptrtoint ptr %".1026" to i64
  %".1028" = add i64 %".1027", 0
  %"for_LDG.56" = inttoptr i64 %".1028" to ptr
  %".1029" = load float, ptr %"for_LDG.56"
  %".1030" = bitcast ptr %"R5" to ptr
  store float %".1029", ptr %".1030"
  ; LDG.E.SYS R2, [R2]
  %".1033" = load i32, ptr %"R2"
  %"zext.121" = zext i32 %".1033" to i64
  %".1034" = load i32, ptr %"R3"
  %"zext.122" = zext i32 %".1034" to i64
  %"shl.57" = shl i64 %"zext.122", 32
  %"or.57" = or i64 %"shl.57", %"zext.121"
  %".1035" = inttoptr i64 %"or.57" to ptr
  %".1036" = ptrtoint ptr %".1035" to i64
  %".1037" = add i64 %".1036", 0
  %"for_LDG.57" = inttoptr i64 %".1037" to ptr
  %".1038" = load float, ptr %"for_LDG.57"
  %".1039" = bitcast ptr %"R2" to ptr
  store float %".1038", ptr %".1039"
  ; IADD3 R4, R4, -0x1, RZ
  %".1042" = load i32, ptr %"R4"
  %".1043" = add i32 %".1042", -1
  %".1044" = add i32 %".1043", 0
  store i32 %".1044", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1047" = load i32, ptr %"R4"
  %".1048" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".1047", 0
  %".1049" = and i1 %"cmp.10", %".1048"
  store i1 %".1049", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".1052" = load i32, ptr %"R6"
  %".1053" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1052", i32 4)
  %".1054" = extractvalue {i32, i1} %".1053", 0
  %".1055" = extractvalue {i32, i1} %".1053", 1
  %".1056" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1054", i32 0)
  %".1057" = extractvalue {i32, i1} %".1056", 0
  %".1058" = extractvalue {i32, i1} %".1056", 1
  %".1059" = or i1 %".1055", %".1058"
  store i32 %".1057", ptr %"R6"
  store i1 %".1059", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".1063" = load i32, ptr %"R8"
  %".1064" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1063", i32 4)
  %".1065" = extractvalue {i32, i1} %".1064", 0
  %".1066" = extractvalue {i32, i1} %".1064", 1
  %".1067" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1065", i32 0)
  %".1068" = extractvalue {i32, i1} %".1067", 0
  %".1069" = extractvalue {i32, i1} %".1067", 1
  %".1070" = or i1 %".1066", %".1069"
  store i32 %".1068", ptr %"R8"
  store i1 %".1070", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".1074" = load i32, ptr %"R3"
  %".1075" = load i1, ptr %"P1"
  %".1076" = xor i1 1, -1
  %".1077" = zext i1 %".1075" to i32
  %".1078" = zext i1 %".1076" to i32
  %"add.32" = add i32 0, %".1074"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".1077"
  %"add.35" = add i32 %"add.34", %".1078"
  store i32 %"add.35", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".1081" = load i32, ptr %"R9"
  %".1082" = load i1, ptr %"P2"
  %".1083" = xor i1 1, -1
  %".1084" = zext i1 %".1082" to i32
  %".1085" = zext i1 %".1083" to i32
  %"add.36" = add i32 0, %".1081"
  %"add.37" = add i32 %"add.36", 0
  %"add.38" = add i32 %"add.37", %".1084"
  %"add.39" = add i32 %"add.38", %".1085"
  store i32 %"add.39", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".1088" = load float, ptr %"R2"
  %".1089" = load float, ptr %"R5"
  %".1090" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".1088", %".1089"
  %"fadd.28" = fadd float %"fmul.28", %".1090"
  %".1091" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".1091"
  ; @P0 BRA `(.L_x_6)
  %".1094" = load i1, ptr %"P0"
  %".1095" = icmp eq i1 %".1094", 1
  br i1 %".1095", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".1100" = load i32, ptr %"R0"
  %".1101" = load i32, ptr %"R5"
  %"zext.123" = zext i32 %".1100" to i64
  %"zext.124" = zext i32 %".1101" to i64
  %"mul.11" = mul i64 %"zext.123", %"zext.124"
  %".1102" = ptrtoint ptr %"Arg_2" to i64
  %"add.40" = add i64 %"mul.11", %".1102"
  %".1103" = and i64 %"add.40", 18446744069414584320
  %".1104" = lshr i64 %".1103", 32
  %"trunc32.8" = trunc i64 %".1104" to i32
  %"trunc32.9" = trunc i64 %"add.40" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".1108" = load i32, ptr %"R2"
  %"zext.125" = zext i32 %".1108" to i64
  %".1109" = load i32, ptr %"R3"
  %"zext.126" = zext i32 %".1109" to i64
  %"shl.58" = shl i64 %"zext.126", 32
  %"or.58" = or i64 %"shl.58", %"zext.125"
  %".1110" = inttoptr i64 %"or.58" to ptr
  %".1111" = ptrtoint ptr %".1110" to i64
  %".1112" = add i64 %".1111", 0
  %"for_LDG.58" = inttoptr i64 %".1112" to ptr
  %".1113" = load float, ptr %"for_LDG.58"
  %".1114" = bitcast ptr %"R2" to ptr
  store float %".1113", ptr %".1114"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1117" = load i32, ptr %"R0"
  %".1118" = load i32, ptr %"R5"
  %"zext.127" = zext i32 %".1117" to i64
  %"zext.128" = zext i32 %".1118" to i64
  %"mul.12" = mul i64 %"zext.127", %"zext.128"
  %".1119" = ptrtoint ptr %"Arg_3" to i64
  %"add.41" = add i64 %"mul.12", %".1119"
  %".1120" = and i64 %"add.41", 18446744069414584320
  %".1121" = lshr i64 %".1120", 32
  %"trunc32.10" = trunc i64 %".1121" to i32
  %"trunc32.11" = trunc i64 %"add.41" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".1125" = load float, ptr %"R2"
  %".1126" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1125", %".1126"
  %".1127" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1127"
  ; STG.E.SYS [R4], R7
  %".1130" = load float, ptr %"R7"
  %".1131" = load i32, ptr %"R4"
  %"zext.129" = zext i32 %".1131" to i64
  %".1132" = load i32, ptr %"R5"
  %"zext.130" = zext i32 %".1132" to i64
  %"shl.59" = shl i64 %"zext.130", 32
  %"or.59" = or i64 %"shl.59", %"zext.129"
  %".1133" = inttoptr i64 %"or.59" to ptr
  %".1134" = ptrtoint ptr %".1133" to i64
  %".1135" = add i64 %".1134", 0
  %"for_STG" = inttoptr i64 %".1135" to ptr
  store float %".1130", ptr %"for_STG"
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
  %".36" = and i1 %"cmp", %".35"
  store i1 %".36", ptr %"P1"
  ; MUFU.RCP R0, R0
  %".39" = load float, ptr %"R0"
  %".40" = fdiv float 0x3ff0000000000000, %".39"
  %".41" = bitcast ptr %"R0" to ptr
  store float %".40", ptr %".41"
  ; IADD3 R2, R0, 0xffffffe, RZ
  %".44" = load i32, ptr %"R0"
  %".45" = add i32 %".44", 268435454
  %".46" = add i32 %".45", 0
  store i32 %".46", ptr %"R2"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %".49" = load float, ptr %"R2"
  %".50" = bitcast ptr %"R3" to ptr
  store float %".49", ptr %".50"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R2"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".55" = load i32, ptr %"R3"
  %".56" = sub i32 0, %".55"
  %"mul.2" = mul i32 0, 0
  %"add.2" = add i32 %"mul.2", %".56"
  store i32 %"add.2", ptr %"R4"
  ; IMAD R5, R4, R7, RZ
  %".59" = load i32, ptr %"R4"
  %".60" = load i32, ptr %"R7"
  %"mul.3" = mul i32 %".59", %".60"
  %"add.3" = add i32 %"mul.3", 0
  store i32 %"add.3", ptr %"R5"
  ; IABS R4, c[0x0][0x170]
  %".63" = icmp sge i32 %"Arg_2", 0
  %".64" = sub i32 0, %"Arg_2"
  %"iabs.1" = select  i1 %".63", i32 %"Arg_2", i32 %".64"
  store i32 %"iabs.1", ptr %"R4"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".67" = load i32, ptr %"R3"
  %".68" = load i32, ptr %"R5"
  %".69" = load i32, ptr %"R2"
  %"mul.4" = mul i32 %".67", %".68"
  %"add.4" = add i32 %"mul.4", %".69"
  store i32 %"add.4", ptr %"R3"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".74" = load i32, ptr %"R3"
  %".75" = load i32, ptr %"R4"
  %"mul.5" = mul i32 %".74", %".75"
  %"add.5" = add i32 %"mul.5", 0
  store i32 %"add.5", ptr %"R3"
  ; S2R R5, SR_TID.X
  %"ThreadIdx" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx", ptr %"R5"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".80" = load i32, ptr %"R3"
  %".81" = sub i32 0, %".80"
  %"mul.6" = mul i32 0, 0
  %"add.6" = add i32 %"mul.6", %".81"
  store i32 %"add.6", ptr %"R0"
  ; IMAD R0, R7, R0, R4
  %".84" = load i32, ptr %"R7"
  %".85" = load i32, ptr %"R0"
  %".86" = load i32, ptr %"R4"
  %"mul.7" = mul i32 %".84", %".85"
  %"add.7" = add i32 %"mul.7", %".86"
  store i32 %"add.7", ptr %"R0"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".89" = load i32, ptr %"R7"
  %".90" = load i32, ptr %"R0"
  %".91" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".89", %".90"
  %".92" = and i1 %"cmp.1", %".91"
  store i1 %".92", ptr %"P2"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ
  %".95" = load i1, ptr %"P2"
  %".96" = icmp ne i1 %".95", 1
  br i1 %".96", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".99" = load i32, ptr %"R0"
  %".100" = load i32, ptr %"R7"
  %".101" = sub i32 0, %".100"
  %".102" = add i32 %".99", %".101"
  %".103" = add i32 %".102", 0
  store i32 %".103", ptr %"R0"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ
  %".108" = load i1, ptr %"P2"
  %".109" = icmp ne i1 %".108", 1
  br i1 %".109", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".112" = load i32, ptr %"R3"
  %".113" = add i32 %".112", 1
  %".114" = add i32 %".113", 0
  store i32 %".114", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".119" = load i32, ptr %"R0"
  %".120" = load i32, ptr %"R7"
  %".121" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".119", %".120"
  %".122" = and i1 %"cmp.2", %".121"
  store i1 %".122", ptr %"P0"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".125" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".126" = load i32, ptr %"R5"
  %"mul.8" = mul i32 %".125", %"nvvm_blockdim_x"
  %"add.8" = add i32 %"mul.8", %".126"
  store i32 %"add.8", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.1" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx.1", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".131" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_3"
  %".132" = and i1 %"cmp.3", %".131"
  store i1 %".132", ptr %"P2"
  ; @P0 IADD3 R3, R3, 0x1, RZ
  %".135" = load i1, ptr %"P0"
  %".136" = icmp eq i1 %".135", 1
  br i1 %".136", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".139" = load i32, ptr %"R3"
  %".140" = add i32 %".139", 1
  %".141" = add i32 %".140", 0
  store i32 %".141", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".146" = load i32, ptr %"R3"
  %"mul.9" = mul i32 0, 0
  %"add.9" = add i32 %"mul.9", %".146"
  store i32 %"add.9", ptr %"R21"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21
  %".149" = load i1, ptr %"P1"
  %".150" = icmp ne i1 %".149", 1
  br i1 %".150", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".153" = load i32, ptr %"R21"
  %".154" = sub i32 0, %".153"
  %"mul.10" = mul i32 0, 0
  %"add.10" = add i32 %"mul.10", %".154"
  store i32 %"add.10", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".159" = load i1, ptr %"P2"
  %".160" = icmp ne i1 %".159", 1
  br i1 %".160", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".163" = xor i1 1, -1
  %".164" = xor i32 %"Arg_3", -1
  store i32 %".164", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".169" = load i32, ptr %"R10"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".170" = load i32, ptr %"R7"
  %"mul.11" = mul i32 %".169", %"nvvm_blockdim_y"
  %"add.11" = add i32 %"mul.11", %".170"
  store i32 %"add.11", ptr %"R10"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".173" = load i32, ptr %"R0"
  %".174" = load i32, ptr %"R21"
  %".175" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".173", %".174"
  %".176" = and i1 %"cmp.4", %".175"
  store i1 %".176", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".179" = load i32, ptr %"R10"
  %".180" = load i32, ptr %"R21"
  %".181" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".179", %".180"
  %".182" = or i1 %"cmp.5", %".181"
  store i1 %".182", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".185" = load i32, ptr %"R19"
  %".186" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".185", %"Arg_4"
  %".187" = or i1 %"cmp.6", %".186"
  store i1 %".187", ptr %"P0"
  ; @P0 EXIT
  %".190" = load i1, ptr %"P0"
  %".191" = icmp eq i1 %".190", 1
  br i1 %".191", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
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
  %".200" = load i32, ptr %"R15"
  %".201" = load i1, ptr %"PT"
  %"cmp.7" = icmp sge i32 %".200", 1
  %".202" = and i1 %"cmp.7", %".201"
  store i1 %".202", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".205" = load i1, ptr %"P0"
  %".206" = icmp ne i1 %".205", 1
  br i1 %".206", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".209" = load i32, ptr %"R19"
  %"mul.13" = mul i32 %".209", %"Arg_2"
  %"add.13" = add i32 %"mul.13", 0
  store i32 %"add.13", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".212" = load i32, ptr %"R15"
  %".213" = add i32 %".212", -1
  %".214" = add i32 %".213", 0
  store i32 %".214", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".217" = load i32, ptr %"R0"
  %"mul.14" = mul i32 %".217", %"Arg_3"
  %"add.14" = add i32 %"mul.14", 0
  store i32 %"add.14", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".220" = load i32, ptr %"R15"
  %".221" = xor i1 1, -1
  %".222" = and i32 %".220", 3
  store i32 %".222", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".225" = load i32, ptr %"R10"
  %".226" = load i32, ptr %"R3"
  %"mul.15" = mul i32 %".225", %"Arg_3"
  %"add.15" = add i32 %"mul.15", %".226"
  store i32 %"add.15", ptr %"R12"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".229" = load i32, ptr %"R2"
  %".230" = load i1, ptr %"PT"
  %"cmp.8" = icmp sge i32 %".229", 3
  %".231" = and i1 %"cmp.8", %".230"
  store i1 %".231", ptr %"P0"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.16" = add i32 %"mul.16", -8388608
  store i32 %"add.16", ptr %"R11"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".236" = load i32, ptr %"R15"
  %".237" = sub i32 0, %"Arg_3"
  %".238" = add i32 %".236", %".237"
  %".239" = add i32 %".238", 0
  store i32 %".239", ptr %"R20"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.17" = add i32 %"mul.17", 0
  store i32 %"add.17", ptr %"R16"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".244" = load i32, ptr %"R12"
  %".245" = load i32, ptr %"R13"
  %"mul.18" = mul i32 %".244", %"Arg_2"
  %"add.18" = add i32 %"mul.18", %".245"
  store i32 %"add.18", ptr %"R14"
  br label %".L_x_12"
.L_x_12:
  ; UMOV UR4, URZ
  %".249" = load i32, ptr %"URZ"
  store i32 %".249", ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".252" = load i32, ptr %"R15"
  %".253" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".252", 0
  %".254" = and i1 %"cmp.9", %".253"
  store i1 %".254", ptr %"P2"
  ; @!P0 BRA `(.L_x_9)
  %".257" = load i1, ptr %"P0"
  %".258" = icmp ne i1 %".257", 1
  br i1 %".258", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".261" = load i32, ptr %"R14"
  %".262" = load i32, ptr %"R16"
  %"mul.19" = mul i32 %".261", 1
  %"add.19" = add i32 %"mul.19", %".262"
  store i32 %"add.19", ptr %"R17"
  ; UMOV UR4, URZ
  %".265" = load i32, ptr %"URZ"
  store i32 %".265", ptr %"UR4"
  br label %".L_x_10"
.L_x_10:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.20" = add i32 %"mul.20", %"Arg_2"
  store i32 %"add.20", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".273" = load i32, ptr %"R17"
  %".274" = load i32, ptr %"R2"
  %"zext" = zext i32 %".273" to i64
  %"zext.1" = zext i32 %".274" to i64
  %"mul.21" = mul i64 %"zext", %"zext.1"
  %".275" = ptrtoint ptr %"Arg_0" to i64
  %"add.21" = add i64 %"mul.21", %".275"
  %".276" = and i64 %"add.21", 18446744069414584320
  %".277" = lshr i64 %".276", 32
  %"trunc32" = trunc i64 %".277" to i32
  %"trunc32.1" = trunc i64 %"add.21" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".281" = load i32, ptr %"R23"
  %".282" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".281" to i64
  %"zext.3" = zext i32 4 to i64
  %"mul.22" = mul i64 %"zext.2", %"zext.3"
  %"zext.4" = zext i32 %".282" to i64
  %"add.22" = add i64 %"mul.22", %"zext.4"
  %".283" = and i64 %"add.22", 18446744069414584320
  %".284" = lshr i64 %".283", 32
  %"trunc32.2" = trunc i64 %".284" to i32
  %"trunc32.3" = trunc i64 %"add.22" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; LDG.E.SYS R2, [R2]
  %".288" = load i32, ptr %"R2"
  %"zext.5" = zext i32 %".288" to i64
  %".289" = load i32, ptr %"R3"
  %"zext.6" = zext i32 %".289" to i64
  %"shl" = shl i64 %"zext.6", 32
  %"or" = or i64 %"shl", %"zext.5"
  %".290" = inttoptr i64 %"or" to ptr
  %".291" = ptrtoint ptr %".290" to i64
  %".292" = add i64 %".291", 0
  %"for_LDG" = inttoptr i64 %".292" to ptr
  %".293" = load float, ptr %"for_LDG"
  %".294" = bitcast ptr %"R2" to ptr
  store float %".293", ptr %".294"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".297" = load i32, ptr %"R23"
  %".298" = load i32, ptr %"R4"
  %"zext.7" = zext i32 %".297" to i64
  %"zext.8" = zext i32 4 to i64
  %"mul.23" = mul i64 %"zext.7", %"zext.8"
  %"zext.9" = zext i32 %".298" to i64
  %"add.23" = add i64 %"mul.23", %"zext.9"
  %".299" = and i64 %"add.23", 18446744069414584320
  %".300" = lshr i64 %".299", 32
  %"trunc32.4" = trunc i64 %".300" to i32
  %"trunc32.5" = trunc i64 %"add.23" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".304" = load i32, ptr %"R4"
  %"zext.10" = zext i32 %".304" to i64
  %".305" = load i32, ptr %"R5"
  %"zext.11" = zext i32 %".305" to i64
  %"shl.1" = shl i64 %"zext.11", 32
  %"or.1" = or i64 %"shl.1", %"zext.10"
  %".306" = inttoptr i64 %"or.1" to ptr
  %".307" = ptrtoint ptr %".306" to i64
  %".308" = add i64 %".307", 0
  %"for_LDG.1" = inttoptr i64 %".308" to ptr
  %".309" = load float, ptr %"for_LDG.1"
  %".310" = bitcast ptr %"R4" to ptr
  store float %".309", ptr %".310"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".313" = load i32, ptr %"R23"
  %".314" = load i32, ptr %"R6"
  %"zext.12" = zext i32 %".313" to i64
  %"zext.13" = zext i32 4 to i64
  %"mul.24" = mul i64 %"zext.12", %"zext.13"
  %"zext.14" = zext i32 %".314" to i64
  %"add.24" = add i64 %"mul.24", %"zext.14"
  %".315" = and i64 %"add.24", 18446744069414584320
  %".316" = lshr i64 %".315", 32
  %"trunc32.6" = trunc i64 %".316" to i32
  %"trunc32.7" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".320" = load i32, ptr %"R6"
  %"zext.15" = zext i32 %".320" to i64
  %".321" = load i32, ptr %"R7"
  %"zext.16" = zext i32 %".321" to i64
  %"shl.2" = shl i64 %"zext.16", 32
  %"or.2" = or i64 %"shl.2", %"zext.15"
  %".322" = inttoptr i64 %"or.2" to ptr
  %".323" = ptrtoint ptr %".322" to i64
  %".324" = add i64 %".323", 0
  %"for_LDG.2" = inttoptr i64 %".324" to ptr
  %".325" = load float, ptr %"for_LDG.2"
  %".326" = bitcast ptr %"R6" to ptr
  store float %".325", ptr %".326"
  ; LDG.E.SYS R8, [R8]
  %".329" = load i32, ptr %"R8"
  %"zext.17" = zext i32 %".329" to i64
  %".330" = load i32, ptr %"R9"
  %"zext.18" = zext i32 %".330" to i64
  %"shl.3" = shl i64 %"zext.18", 32
  %"or.3" = or i64 %"shl.3", %"zext.17"
  %".331" = inttoptr i64 %"or.3" to ptr
  %".332" = ptrtoint ptr %".331" to i64
  %".333" = add i64 %".332", 0
  %"for_LDG.3" = inttoptr i64 %".333" to ptr
  %".334" = load float, ptr %"for_LDG.3"
  %".335" = bitcast ptr %"R8" to ptr
  store float %".334", ptr %".335"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".338" = load i32, ptr %"UR4"
  %".339" = add i32 %".338", 4
  %".340" = add i32 %".339", 0
  store i32 %".340", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".343" = load i32, ptr %"R20"
  %".344" = load i32, ptr %"UR4"
  %".345" = add i32 %".343", %".344"
  %".346" = add i32 %".345", 0
  store i32 %".346", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".349" = load i32, ptr %"R18"
  %".350" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".349", 0
  %".351" = and i1 %"cmp.10", %".350"
  store i1 %".351", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".354" = load i32, ptr %"R23"
  %".355" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".354", 4
  %"add.25" = add i32 %"mul.25", %".355"
  store i32 %"add.25", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".358" = load float, ptr %"R2"
  %".359" = load float, ptr %"R11"
  %".360" = xor i1 1, -1
  %".361" = fcmp olt float %".358", %".359"
  %"fmnmx_min" = select  i1 %".361", float %".358", float %".359"
  %".362" = fcmp ogt float %".358", %".359"
  %"fmnmx_max" = select  i1 %".362", float %".358", float %".359"
  %"fmnmx_final" = select  i1 %".360", float %"fmnmx_min", float %"fmnmx_max"
  %".363" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final", ptr %".363"
  ; FMNMX R11, R11, R4, !PT
  %".366" = load float, ptr %"R11"
  %".367" = load float, ptr %"R4"
  %".368" = xor i1 1, -1
  %".369" = fcmp olt float %".366", %".367"
  %"fmnmx_min.1" = select  i1 %".369", float %".366", float %".367"
  %".370" = fcmp ogt float %".366", %".367"
  %"fmnmx_max.1" = select  i1 %".370", float %".366", float %".367"
  %"fmnmx_final.1" = select  i1 %".368", float %"fmnmx_min.1", float %"fmnmx_max.1"
  %".371" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.1", ptr %".371"
  ; FMNMX R11, R11, R6, !PT
  %".374" = load float, ptr %"R11"
  %".375" = load float, ptr %"R6"
  %".376" = xor i1 1, -1
  %".377" = fcmp olt float %".374", %".375"
  %"fmnmx_min.2" = select  i1 %".377", float %".374", float %".375"
  %".378" = fcmp ogt float %".374", %".375"
  %"fmnmx_max.2" = select  i1 %".378", float %".374", float %".375"
  %"fmnmx_final.2" = select  i1 %".376", float %"fmnmx_min.2", float %"fmnmx_max.2"
  %".379" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.2", ptr %".379"
  ; FMNMX R11, R11, R8, !PT
  %".382" = load float, ptr %"R11"
  %".383" = load float, ptr %"R8"
  %".384" = xor i1 1, -1
  %".385" = fcmp olt float %".382", %".383"
  %"fmnmx_min.3" = select  i1 %".385", float %".382", float %".383"
  %".386" = fcmp ogt float %".382", %".383"
  %"fmnmx_max.3" = select  i1 %".386", float %".382", float %".383"
  %"fmnmx_final.3" = select  i1 %".384", float %"fmnmx_min.3", float %"fmnmx_max.3"
  %".387" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.3", ptr %".387"
  ; @P1 BRA `(.L_x_10)
  %".390" = load i1, ptr %"P1"
  %".391" = icmp eq i1 %".390", 1
  br i1 %".391", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".394" = load i32, ptr %"R13"
  %".395" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".394", 1
  %"add.26" = add i32 %"mul.26", %".395"
  store i32 %"add.26", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".398" = load i1, ptr %"P2"
  %".399" = icmp ne i1 %".398", 1
  br i1 %".399", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".402" = load i32, ptr %"R12"
  %".403" = load i32, ptr %"UR4"
  %".404" = add i32 %".402", %".403"
  %".405" = add i32 %".404", 0
  store i32 %".405", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".410" = load i32, ptr %"R5"
  %".411" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".410", %"Arg_2"
  %"add.27" = add i32 %"mul.27", %".411"
  store i32 %"add.27", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".414" = load i32, ptr %"R2"
  %".415" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".414" to i64
  %"zext.20" = zext i32 %".415" to i64
  %"mul.28" = mul i64 %"zext.19", %"zext.20"
  %".416" = ptrtoint ptr %"Arg_0" to i64
  %"add.28" = add i64 %"mul.28", %".416"
  %".417" = and i64 %"add.28", 18446744069414584320
  %".418" = lshr i64 %".417", 32
  %"trunc32.8" = trunc i64 %".418" to i32
  %"trunc32.9" = trunc i64 %"add.28" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".422" = load i32, ptr %"R2"
  %"zext.21" = zext i32 %".422" to i64
  %".423" = load i32, ptr %"R3"
  %"zext.22" = zext i32 %".423" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".424" = inttoptr i64 %"or.4" to ptr
  %".425" = ptrtoint ptr %".424" to i64
  %".426" = add i64 %".425", 0
  %"for_LDG.4" = inttoptr i64 %".426" to ptr
  %".427" = load float, ptr %"for_LDG.4"
  %".428" = bitcast ptr %"R2" to ptr
  store float %".427", ptr %".428"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".431" = load i32, ptr %"R15"
  %".432" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".431", 1
  %".433" = and i1 %"cmp.11", %".432"
  store i1 %".433", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".436" = load float, ptr %"R11"
  %".437" = load float, ptr %"R2"
  %".438" = xor i1 1, -1
  %".439" = fcmp olt float %".436", %".437"
  %"fmnmx_min.4" = select  i1 %".439", float %".436", float %".437"
  %".440" = fcmp ogt float %".436", %".437"
  %"fmnmx_max.4" = select  i1 %".440", float %".436", float %".437"
  %"fmnmx_final.4" = select  i1 %".438", float %"fmnmx_min.4", float %"fmnmx_max.4"
  %".441" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.4", ptr %".441"
  ; @!P1 BRA `(.L_x_11)
  %".444" = load i1, ptr %"P1"
  %".445" = icmp ne i1 %".444", 1
  br i1 %".445", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".448" = load i32, ptr %"R15"
  %".449" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".448", 2
  %".450" = and i1 %"cmp.12", %".449"
  store i1 %".450", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".453" = load i32, ptr %"R5"
  %".454" = add i32 %".453", 1
  %".455" = add i32 %".454", 0
  store i32 %".455", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".458" = load i32, ptr %"R2"
  %".459" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".458", %"Arg_2"
  %"add.29" = add i32 %"mul.29", %".459"
  store i32 %"add.29", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".462" = load i1, ptr %"P1"
  %".463" = icmp eq i1 %".462", 1
  br i1 %".463", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".466" = load i32, ptr %"R5"
  %".467" = add i32 %".466", 2
  %".468" = add i32 %".467", 0
  store i32 %".468", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".473" = load i1, ptr %"P1"
  %".474" = icmp eq i1 %".473", 1
  br i1 %".474", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".477" = load i32, ptr %"R3"
  %".478" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".477", %"Arg_2"
  %"add.30" = add i32 %"mul.30", %".478"
  store i32 %"add.30", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".483" = load i32, ptr %"R2"
  %".484" = load i32, ptr %"R7"
  %"zext.23" = zext i32 %".483" to i64
  %"zext.24" = zext i32 %".484" to i64
  %"mul.31" = mul i64 %"zext.23", %"zext.24"
  %".485" = ptrtoint ptr %"Arg_0" to i64
  %"add.31" = add i64 %"mul.31", %".485"
  %".486" = and i64 %"add.31", 18446744069414584320
  %".487" = lshr i64 %".486", 32
  %"trunc32.10" = trunc i64 %".487" to i32
  %"trunc32.11" = trunc i64 %"add.31" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".491" = load i1, ptr %"P1"
  %".492" = icmp eq i1 %".491", 1
  br i1 %".492", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".495" = load i32, ptr %"R4"
  %".496" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".495" to i64
  %"zext.26" = zext i32 %".496" to i64
  %"mul.32" = mul i64 %"zext.25", %"zext.26"
  %".497" = ptrtoint ptr %"Arg_0" to i64
  %"add.32" = add i64 %"mul.32", %".497"
  %".498" = and i64 %"add.32", 18446744069414584320
  %".499" = lshr i64 %".498", 32
  %"trunc32.12" = trunc i64 %".499" to i32
  %"trunc32.13" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".505" = load i32, ptr %"R2"
  %"zext.27" = zext i32 %".505" to i64
  %".506" = load i32, ptr %"R3"
  %"zext.28" = zext i32 %".506" to i64
  %"shl.5" = shl i64 %"zext.28", 32
  %"or.5" = or i64 %"shl.5", %"zext.27"
  %".507" = inttoptr i64 %"or.5" to ptr
  %".508" = ptrtoint ptr %".507" to i64
  %".509" = add i64 %".508", 0
  %"for_LDG.5" = inttoptr i64 %".509" to ptr
  %".510" = load float, ptr %"for_LDG.5"
  %".511" = bitcast ptr %"R2" to ptr
  store float %".510", ptr %".511"
  ; @P1 LDG.E.SYS R4, [R4]
  %".514" = load i1, ptr %"P1"
  %".515" = icmp eq i1 %".514", 1
  br i1 %".515", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".518" = load i32, ptr %"R4"
  %"zext.29" = zext i32 %".518" to i64
  %".519" = load i32, ptr %"R5"
  %"zext.30" = zext i32 %".519" to i64
  %"shl.6" = shl i64 %"zext.30", 32
  %"or.6" = or i64 %"shl.6", %"zext.29"
  %".520" = inttoptr i64 %"or.6" to ptr
  %".521" = ptrtoint ptr %".520" to i64
  %".522" = add i64 %".521", 0
  %"for_LDG.6" = inttoptr i64 %".522" to ptr
  %".523" = load float, ptr %"for_LDG.6"
  %".524" = bitcast ptr %"R4" to ptr
  store float %".523", ptr %".524"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".529" = load float, ptr %"R11"
  %".530" = load float, ptr %"R2"
  %".531" = xor i1 1, -1
  %".532" = fcmp olt float %".529", %".530"
  %"fmnmx_min.5" = select  i1 %".532", float %".529", float %".530"
  %".533" = fcmp ogt float %".529", %".530"
  %"fmnmx_max.5" = select  i1 %".533", float %".529", float %".530"
  %"fmnmx_final.5" = select  i1 %".531", float %"fmnmx_min.5", float %"fmnmx_max.5"
  %".534" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.5", ptr %".534"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".537" = load i1, ptr %"P1"
  %".538" = icmp eq i1 %".537", 1
  br i1 %".538", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".541" = load float, ptr %"R11"
  %".542" = load float, ptr %"R4"
  %".543" = xor i1 1, -1
  %".544" = fcmp olt float %".541", %".542"
  %"fmnmx_min.6" = select  i1 %".544", float %".541", float %".542"
  %".545" = fcmp ogt float %".541", %".542"
  %"fmnmx_max.6" = select  i1 %".545", float %".541", float %".542"
  %"fmnmx_final.6" = select  i1 %".543", float %"fmnmx_min.6", float %"fmnmx_max.6"
  %".546" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.6", ptr %".546"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".551" = load i32, ptr %"R16"
  %".552" = add i32 %".551", 1
  %".553" = add i32 %".552", 0
  store i32 %".553", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".556" = load i32, ptr %"R16"
  %".557" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".556", %"Arg_3"
  %".558" = and i1 %"cmp.13", %".557"
  store i1 %".558", ptr %"P1"
  ; @!P1 BRA `(.L_x_12)
  %".561" = load i1, ptr %"P1"
  %".562" = icmp ne i1 %".561", 1
  br i1 %".562", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".565" = load i32, ptr %"R21"
  %".566" = load i32, ptr %"R19"
  %".567" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".565", %".566"
  %"add.33" = add i32 %"mul.33", %".567"
  store i32 %"add.33", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.34" = add i32 %"mul.34", 4
  store i32 %"add.34", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".572" = load i32, ptr %"R21"
  %".573" = load i32, ptr %"R3"
  %".574" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".572", %".573"
  %"add.35" = add i32 %"mul.35", %".574"
  store i32 %"add.35", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".577" = load i32, ptr %"R3"
  %".578" = load i32, ptr %"R2"
  %"zext.31" = zext i32 %".577" to i64
  %"zext.32" = zext i32 %".578" to i64
  %"mul.36" = mul i64 %"zext.31", %"zext.32"
  %".579" = ptrtoint ptr %"Arg_1" to i64
  %"add.36" = add i64 %"mul.36", %".579"
  %".580" = and i64 %"add.36", 18446744069414584320
  %".581" = lshr i64 %".580", 32
  %"trunc32.14" = trunc i64 %".581" to i32
  %"trunc32.15" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".585" = load i32, ptr %"R11"
  %".586" = load i32, ptr %"R2"
  %"zext.33" = zext i32 %".586" to i64
  %".587" = load i32, ptr %"R3"
  %"zext.34" = zext i32 %".587" to i64
  %"shl.7" = shl i64 %"zext.34", 32
  %"or.7" = or i64 %"shl.7", %"zext.33"
  %".588" = inttoptr i64 %"or.7" to ptr
  %".589" = ptrtoint ptr %".588" to i64
  %".590" = add i64 %".589", 0
  %"for_STG" = inttoptr i64 %".590" to ptr
  store i32 %".585", ptr %"for_STG"
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
  %".22" = and i1 %"cmp", %".21"
  store i1 %".22", ptr %"P0"
  ; @P0 EXIT
  %".25" = load i1, ptr %"P0"
  %".26" = icmp eq i1 %".25", 1
  br i1 %".26", label %".text._Z4reluPfS_i_conditionalExpr_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R4, R5, c[0x0][0x160]
  %".33" = load i32, ptr %"R4"
  %".34" = load i32, ptr %"R5"
  %"zext" = zext i32 %".33" to i64
  %"zext.1" = zext i32 %".34" to i64
  %"mul.1" = mul i64 %"zext", %"zext.1"
  %".35" = ptrtoint ptr %"Arg_0" to i64
  %"add.1" = add i64 %"mul.1", %".35"
  %".36" = and i64 %"add.1", 18446744069414584320
  %".37" = lshr i64 %".36", 32
  %"trunc32" = trunc i64 %".37" to i32
  %"trunc32.1" = trunc i64 %"add.1" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".41" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".41" to i64
  %".42" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".42" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".43" = inttoptr i64 %"or" to ptr
  %".44" = ptrtoint ptr %".43" to i64
  %".45" = add i64 %".44", 0
  %"for_LDG" = inttoptr i64 %".45" to ptr
  %".46" = load float, ptr %"for_LDG"
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
  %"fmnmx_min" = select  i1 %".60", float              0x0, float %".58"
  %".61" = fcmp ogt float              0x0, %".58"
  %"fmnmx_max" = select  i1 %".61", float              0x0, float %".58"
  %"fmnmx_final" = select  i1 %".59", float %"fmnmx_min", float %"fmnmx_max"
  %".62" = bitcast ptr %"R7" to ptr
  store float %"fmnmx_final", ptr %".62"
  ; STG.E.SYS [R4], R7
  %".65" = load float, ptr %"R7"
  %".66" = load i32, ptr %"R4"
  %"zext.6" = zext i32 %".66" to i64
  %".67" = load i32, ptr %"R5"
  %"zext.7" = zext i32 %".67" to i64
  %"shl.1" = shl i64 %"zext.7", 32
  %"or.1" = or i64 %"shl.1", %"zext.6"
  %".68" = inttoptr i64 %"or.1" to ptr
  %".69" = ptrtoint ptr %".68" to i64
  %".70" = add i64 %".69", 0
  %"for_STG" = inttoptr i64 %".70" to ptr
  store float %".65", ptr %"for_STG"
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
  %".42" = and i1 %"cmp", %".41"
  store i1 %".42", ptr %"P0"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".45" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".46" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".45", %"nvvm_blockdim_x"
  %"add.1" = add i32 %"mul.1", %".46"
  store i32 %"add.1", ptr %"R2"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".49" = load i32, ptr %"R2"
  %".50" = load i32, ptr %"UR5"
  %".51" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".49", %".50"
  %".52" = or i1 %"cmp.1", %".51"
  store i1 %".52", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".55" = load i32, ptr %"R0"
  %".56" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".55", %"Arg_6"
  %".57" = or i1 %"cmp.2", %".56"
  store i1 %".57", ptr %"P0"
  ; @P0 EXIT
  %".60" = load i1, ptr %"P0"
  %".61" = icmp eq i1 %".60", 1
  br i1 %".61", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
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
  %".70" = load i32, ptr %"R4"
  %".71" = load i1, ptr %"PT"
  %"cmp.3" = icmp sle i32 %".70", %"Arg_4"
  %".72" = and i1 %"cmp.3", %".71"
  store i1 %".72", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".75" = load i32, ptr %"R4"
  %".76" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".75", %"Arg_5"
  %".77" = or i1 %"cmp.4", %".76"
  store i1 %".77", ptr %"P0"
  ; @P0 BRA `(.L_x_15)
  %".80" = load i1, ptr %"P0"
  %".81" = icmp eq i1 %".80", 1
  br i1 %".81", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
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
  %".90" = load float, ptr %"RZ"
  %".91" = bitcast ptr %"R12" to ptr
  store float %".90", ptr %".91"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".94" = load i32, ptr %"R5"
  %".95" = sub i32 0, %".94"
  %".96" = add i32 %".95", %"Arg_4"
  %".97" = add i32 %".96", 0
  store i32 %".97", ptr %"R5"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".100" = load i32, ptr %"R4"
  %".101" = xor i1 1, -1
  %".102" = and i32 %".100", 3
  store i32 %".102", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".105" = load i32, ptr %"R5"
  %".106" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".105", 3
  %".107" = and i1 %"cmp.5", %".106"
  store i1 %".107", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".110" = load i32, ptr %"R4"
  %".111" = sub i32 0, %"Arg_4"
  %".112" = add i32 %".110", %".111"
  %".113" = add i32 %".112", 0
  store i32 %".113", ptr %"R26"
  br label %".L_x_20"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".117" = load i32, ptr %"R10"
  %".118" = load i32, ptr %"R3"
  %"mul.5" = mul i32 %".117", %"Arg_3"
  %"add.5" = add i32 %"mul.5", %".118"
  store i32 %"add.5", ptr %"R11"
  ; MOV R8, RZ
  %".121" = load i32, ptr %"RZ"
  store i32 %".121", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".124" = load i32, ptr %"R0"
  %".125" = load i32, ptr %"R10"
  %"mul.6" = mul i32 %".124", %"Arg_5"
  %"add.6" = add i32 %"mul.6", %".125"
  store i32 %"add.6", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".128" = load i32, ptr %"R10"
  %".129" = add i32 %".128", 1
  %".130" = add i32 %".129", 0
  store i32 %".130", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".133" = load i32, ptr %"R11"
  %".134" = load i32, ptr %"R2"
  %"mul.7" = mul i32 %".133", %"Arg_3"
  %"add.7" = add i32 %"mul.7", %".134"
  store i32 %"add.7", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".137" = load i32, ptr %"R10"
  %".138" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".137", %"Arg_5"
  %".139" = and i1 %"cmp.6", %".138"
  store i1 %".139", ptr %"P1"
  br label %".L_x_19"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".143" = load i32, ptr %"R9"
  %".144" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".143", %"Arg_4"
  %"add.8" = add i32 %"mul.8", %".144"
  store i32 %"add.8", ptr %"R6"
  ; UMOV UR4, URZ
  %".147" = load i32, ptr %"URZ"
  store i32 %".147", ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".150" = load i32, ptr %"R4"
  %".151" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".150", 0
  %".152" = and i1 %"cmp.7", %".151"
  store i1 %".152", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".155" = load i32, ptr %"R6"
  %"mul.9" = mul i32 %".155", %"Arg_4"
  %"add.9" = add i32 %"mul.9", 0
  store i32 %"add.9", ptr %"R29"
  ; @!P0 BRA `(.L_x_16)
  %".158" = load i1, ptr %"P0"
  %".159" = icmp ne i1 %".158", 1
  br i1 %".159", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".164" = load i32, ptr %"R5"
  %".165" = load i32, ptr %"R8"
  %"mul.10" = mul i32 %".164", 1
  %"add.10" = add i32 %"mul.10", %".165"
  store i32 %"add.10", ptr %"R13"
  ; UMOV UR4, URZ
  %".168" = load i32, ptr %"URZ"
  store i32 %".168", ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".171" = load i32, ptr %"R29"
  %".172" = load i32, ptr %"R24"
  %"zext" = zext i32 %".171" to i64
  %"zext.1" = zext i32 %".172" to i64
  %"mul.11" = mul i64 %"zext", %"zext.1"
  %".173" = ptrtoint ptr %"Arg_1" to i64
  %"add.11" = add i64 %"mul.11", %".173"
  %".174" = and i64 %"add.11", 18446744069414584320
  %".175" = lshr i64 %".174", 32
  %"trunc32" = trunc i64 %".175" to i32
  %"trunc32.1" = trunc i64 %"add.11" to i32
  store i32 %"trunc32.1", ptr %"R6"
  store i32 %"trunc32", ptr %"R7"
  ; MOV R23, R6
  %".179" = load i32, ptr %"R6"
  store i32 %".179", ptr %"R23"
  br label %".L_x_17"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".183" = load i32, ptr %"R13"
  %".184" = load i32, ptr %"R24"
  %"zext.2" = zext i32 %".183" to i64
  %"zext.3" = zext i32 %".184" to i64
  %"mul.12" = mul i64 %"zext.2", %"zext.3"
  %".185" = ptrtoint ptr %"Arg_0" to i64
  %"add.12" = add i64 %"mul.12", %".185"
  %".186" = and i64 %"add.12", 18446744069414584320
  %".187" = lshr i64 %".186", 32
  %"trunc32.2" = trunc i64 %".187" to i32
  %"trunc32.3" = trunc i64 %"add.12" to i32
  store i32 %"trunc32.3", ptr %"R14"
  store i32 %"trunc32.2", ptr %"R15"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".193" = load i32, ptr %"R23"
  %"mul.13" = mul i32 0, 0
  %"add.13" = add i32 %"mul.13", %".193"
  store i32 %"add.13", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".196" = load i32, ptr %"R31"
  %".197" = load i32, ptr %"R14"
  %"zext.4" = zext i32 %".196" to i64
  %"zext.5" = zext i32 4 to i64
  %"mul.14" = mul i64 %"zext.4", %"zext.5"
  %"zext.6" = zext i32 %".197" to i64
  %"add.14" = add i64 %"mul.14", %"zext.6"
  %".198" = and i64 %"add.14", 18446744069414584320
  %".199" = lshr i64 %".198", 32
  %"trunc32.4" = trunc i64 %".199" to i32
  %"trunc32.5" = trunc i64 %"add.14" to i32
  store i32 %"trunc32.5", ptr %"R16"
  store i32 %"trunc32.4", ptr %"R17"
  ; LDG.E.SYS R14, [R14]
  %".203" = load i32, ptr %"R14"
  %"zext.7" = zext i32 %".203" to i64
  %".204" = load i32, ptr %"R15"
  %"zext.8" = zext i32 %".204" to i64
  %"shl" = shl i64 %"zext.8", 32
  %"or" = or i64 %"shl", %"zext.7"
  %".205" = inttoptr i64 %"or" to ptr
  %".206" = ptrtoint ptr %".205" to i64
  %".207" = add i64 %".206", 0
  %"for_LDG" = inttoptr i64 %".207" to ptr
  %".208" = load float, ptr %"for_LDG"
  %".209" = bitcast ptr %"R14" to ptr
  store float %".208", ptr %".209"
  ; LDG.E.SYS R23, [R6]
  %".212" = load i32, ptr %"R6"
  %"zext.9" = zext i32 %".212" to i64
  %".213" = load i32, ptr %"R7"
  %"zext.10" = zext i32 %".213" to i64
  %"shl.1" = shl i64 %"zext.10", 32
  %"or.1" = or i64 %"shl.1", %"zext.9"
  %".214" = inttoptr i64 %"or.1" to ptr
  %".215" = ptrtoint ptr %".214" to i64
  %".216" = add i64 %".215", 0
  %"for_LDG.1" = inttoptr i64 %".216" to ptr
  %".217" = load float, ptr %"for_LDG.1"
  %".218" = bitcast ptr %"R23" to ptr
  store float %".217", ptr %".218"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".221" = load i32, ptr %"R31"
  %".222" = load i32, ptr %"R16"
  %"zext.11" = zext i32 %".221" to i64
  %"zext.12" = zext i32 4 to i64
  %"mul.15" = mul i64 %"zext.11", %"zext.12"
  %"zext.13" = zext i32 %".222" to i64
  %"add.15" = add i64 %"mul.15", %"zext.13"
  %".223" = and i64 %"add.15", 18446744069414584320
  %".224" = lshr i64 %".223", 32
  %"trunc32.6" = trunc i64 %".224" to i32
  %"trunc32.7" = trunc i64 %"add.15" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".228" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".228" to i64
  %".229" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".229" to i64
  %"shl.2" = shl i64 %"zext.15", 32
  %"or.2" = or i64 %"shl.2", %"zext.14"
  %".230" = inttoptr i64 %"or.2" to ptr
  %".231" = ptrtoint ptr %".230" to i64
  %".232" = add i64 %".231", 0
  %"for_LDG.2" = inttoptr i64 %".232" to ptr
  %".233" = load float, ptr %"for_LDG.2"
  %".234" = bitcast ptr %"R16" to ptr
  store float %".233", ptr %".234"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".237" = load i32, ptr %"R31"
  %".238" = load i32, ptr %"R18"
  %"zext.16" = zext i32 %".237" to i64
  %"zext.17" = zext i32 4 to i64
  %"mul.16" = mul i64 %"zext.16", %"zext.17"
  %"zext.18" = zext i32 %".238" to i64
  %"add.16" = add i64 %"mul.16", %"zext.18"
  %".239" = and i64 %"add.16", 18446744069414584320
  %".240" = lshr i64 %".239", 32
  %"trunc32.8" = trunc i64 %".240" to i32
  %"trunc32.9" = trunc i64 %"add.16" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".244" = load i32, ptr %"R6"
  %"zext.19" = zext i32 %".244" to i64
  %".245" = load i32, ptr %"R7"
  %"zext.20" = zext i32 %".245" to i64
  %"shl.3" = shl i64 %"zext.20", 32
  %"or.3" = or i64 %"shl.3", %"zext.19"
  %".246" = inttoptr i64 %"or.3" to ptr
  %".247" = ptrtoint ptr %".246" to i64
  %".248" = add i64 %".247", 4
  %"for_LDG.3" = inttoptr i64 %".248" to ptr
  %".249" = load float, ptr %"for_LDG.3"
  %".250" = bitcast ptr %"R22" to ptr
  store float %".249", ptr %".250"
  ; LDG.E.SYS R18, [R18]
  %".253" = load i32, ptr %"R18"
  %"zext.21" = zext i32 %".253" to i64
  %".254" = load i32, ptr %"R19"
  %"zext.22" = zext i32 %".254" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".255" = inttoptr i64 %"or.4" to ptr
  %".256" = ptrtoint ptr %".255" to i64
  %".257" = add i64 %".256", 0
  %"for_LDG.4" = inttoptr i64 %".257" to ptr
  %".258" = load float, ptr %"for_LDG.4"
  %".259" = bitcast ptr %"R18" to ptr
  store float %".258", ptr %".259"
  ; LDG.E.SYS R25, [R6+0x8]
  %".262" = load i32, ptr %"R6"
  %"zext.23" = zext i32 %".262" to i64
  %".263" = load i32, ptr %"R7"
  %"zext.24" = zext i32 %".263" to i64
  %"shl.5" = shl i64 %"zext.24", 32
  %"or.5" = or i64 %"shl.5", %"zext.23"
  %".264" = inttoptr i64 %"or.5" to ptr
  %".265" = ptrtoint ptr %".264" to i64
  %".266" = add i64 %".265", 8
  %"for_LDG.5" = inttoptr i64 %".266" to ptr
  %".267" = load float, ptr %"for_LDG.5"
  %".268" = bitcast ptr %"R25" to ptr
  store float %".267", ptr %".268"
  ; LDG.E.SYS R20, [R20]
  %".271" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".271" to i64
  %".272" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".272" to i64
  %"shl.6" = shl i64 %"zext.26", 32
  %"or.6" = or i64 %"shl.6", %"zext.25"
  %".273" = inttoptr i64 %"or.6" to ptr
  %".274" = ptrtoint ptr %".273" to i64
  %".275" = add i64 %".274", 0
  %"for_LDG.6" = inttoptr i64 %".275" to ptr
  %".276" = load float, ptr %"for_LDG.6"
  %".277" = bitcast ptr %"R20" to ptr
  store float %".276", ptr %".277"
  ; LDG.E.SYS R27, [R6+0xc]
  %".280" = load i32, ptr %"R6"
  %"zext.27" = zext i32 %".280" to i64
  %".281" = load i32, ptr %"R7"
  %"zext.28" = zext i32 %".281" to i64
  %"shl.7" = shl i64 %"zext.28", 32
  %"or.7" = or i64 %"shl.7", %"zext.27"
  %".282" = inttoptr i64 %"or.7" to ptr
  %".283" = ptrtoint ptr %".282" to i64
  %".284" = add i64 %".283", 12
  %"for_LDG.7" = inttoptr i64 %".284" to ptr
  %".285" = load float, ptr %"for_LDG.7"
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
  %".312" = and i1 %"cmp.8", %".311"
  store i1 %".312", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".315" = load float, ptr %"R22"
  %".316" = load float, ptr %"R16"
  %".317" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".315", %".316"
  %"fadd.1" = fadd float %"fmul.1", %".317"
  %".318" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".318"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".321" = load i32, ptr %"R6"
  %".322" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".321", i32 16)
  %".323" = extractvalue {i32, i1} %".322", 0
  %".324" = extractvalue {i32, i1} %".322", 1
  %".325" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".323", i32 0)
  %".326" = extractvalue {i32, i1} %".325", 0
  %".327" = extractvalue {i32, i1} %".325", 1
  %".328" = or i1 %".324", %".327"
  store i32 %".326", ptr %"R23"
  store i1 %".328", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".332" = load float, ptr %"R25"
  %".333" = load float, ptr %"R18"
  %".334" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".332", %".333"
  %"fadd.2" = fadd float %"fmul.2", %".334"
  %".335" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".335"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".338" = load i32, ptr %"R7"
  %".339" = load i1, ptr %"P4"
  %".340" = xor i1 1, -1
  %".341" = zext i1 %".339" to i32
  %".342" = zext i1 %".340" to i32
  %"add.18" = add i32 0, %".338"
  %"add.19" = add i32 %"add.18", 0
  %"add.20" = add i32 %"add.19", %".341"
  %"add.21" = add i32 %"add.20", %".342"
  store i32 %"add.21", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".345" = load float, ptr %"R27"
  %".346" = load float, ptr %"R20"
  %".347" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".345", %".346"
  %"fadd.3" = fadd float %"fmul.3", %".347"
  %".348" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".348"
  ; @P2 BRA `(.L_x_17)
  %".351" = load i1, ptr %"P2"
  %".352" = icmp eq i1 %".351", 1
  br i1 %".352", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".355" = load i32, ptr %"R2"
  %".356" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".355", 1
  %"add.22" = add i32 %"mul.17", %".356"
  store i32 %"add.22", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".359" = load i1, ptr %"P3"
  %".360" = icmp ne i1 %".359", 1
  br i1 %".360", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".363" = load i32, ptr %"R11"
  %".364" = load i32, ptr %"UR4"
  %".365" = add i32 %".363", %".364"
  %".366" = add i32 %".365", 0
  store i32 %".366", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".369" = load i32, ptr %"R29"
  %".370" = load i32, ptr %"UR4"
  %".371" = add i32 %".369", %".370"
  %".372" = add i32 %".371", 0
  store i32 %".372", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".377" = load i32, ptr %"R15"
  %".378" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".377", %"Arg_3"
  %"add.23" = add i32 %"mul.18", %".378"
  store i32 %"add.23", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".381" = load i32, ptr %"R16"
  %".382" = load i32, ptr %"R19"
  %"zext.29" = zext i32 %".381" to i64
  %"zext.30" = zext i32 %".382" to i64
  %"mul.19" = mul i64 %"zext.29", %"zext.30"
  %".383" = ptrtoint ptr %"Arg_1" to i64
  %"add.24" = add i64 %"mul.19", %".383"
  %".384" = and i64 %"add.24", 18446744069414584320
  %".385" = lshr i64 %".384", 32
  %"trunc32.10" = trunc i64 %".385" to i32
  %"trunc32.11" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".389" = load i32, ptr %"R6"
  %".390" = load i32, ptr %"R19"
  %"zext.31" = zext i32 %".389" to i64
  %"zext.32" = zext i32 %".390" to i64
  %"mul.20" = mul i64 %"zext.31", %"zext.32"
  %".391" = ptrtoint ptr %"Arg_0" to i64
  %"add.25" = add i64 %"mul.20", %".391"
  %".392" = and i64 %"add.25", 18446744069414584320
  %".393" = lshr i64 %".392", 32
  %"trunc32.12" = trunc i64 %".393" to i32
  %"trunc32.13" = trunc i64 %"add.25" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".397" = load i32, ptr %"R16"
  %"zext.33" = zext i32 %".397" to i64
  %".398" = load i32, ptr %"R17"
  %"zext.34" = zext i32 %".398" to i64
  %"shl.9" = shl i64 %"zext.34", 32
  %"or.8" = or i64 %"shl.9", %"zext.33"
  %".399" = inttoptr i64 %"or.8" to ptr
  %".400" = ptrtoint ptr %".399" to i64
  %".401" = add i64 %".400", 0
  %"for_LDG.8" = inttoptr i64 %".401" to ptr
  %".402" = load float, ptr %"for_LDG.8"
  %".403" = bitcast ptr %"R13" to ptr
  store float %".402", ptr %".403"
  ; LDG.E.SYS R6, [R6]
  %".406" = load i32, ptr %"R6"
  %"zext.35" = zext i32 %".406" to i64
  %".407" = load i32, ptr %"R7"
  %"zext.36" = zext i32 %".407" to i64
  %"shl.10" = shl i64 %"zext.36", 32
  %"or.9" = or i64 %"shl.10", %"zext.35"
  %".408" = inttoptr i64 %"or.9" to ptr
  %".409" = ptrtoint ptr %".408" to i64
  %".410" = add i64 %".409", 0
  %"for_LDG.9" = inttoptr i64 %".410" to ptr
  %".411" = load float, ptr %"for_LDG.9"
  %".412" = bitcast ptr %"R6" to ptr
  store float %".411", ptr %".412"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".415" = load i32, ptr %"R4"
  %".416" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".415", 1
  %".417" = and i1 %"cmp.9", %".416"
  store i1 %".417", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".420" = load float, ptr %"R13"
  %".421" = load float, ptr %"R6"
  %".422" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".420", %".421"
  %"fadd.4" = fadd float %"fmul.4", %".422"
  %".423" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".423"
  ; @!P2 BRA `(.L_x_18)
  %".426" = load i1, ptr %"P2"
  %".427" = icmp ne i1 %".426", 1
  br i1 %".427", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".430" = load i32, ptr %"R4"
  %".431" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".430", 2
  %".432" = and i1 %"cmp.10", %".431"
  store i1 %".432", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".435" = load i32, ptr %"R16"
  %"zext.37" = zext i32 %".435" to i64
  %".436" = load i32, ptr %"R17"
  %"zext.38" = zext i32 %".436" to i64
  %"shl.11" = shl i64 %"zext.38", 32
  %"or.10" = or i64 %"shl.11", %"zext.37"
  %".437" = inttoptr i64 %"or.10" to ptr
  %".438" = ptrtoint ptr %".437" to i64
  %".439" = add i64 %".438", 4
  %"for_LDG.10" = inttoptr i64 %".439" to ptr
  %".440" = load float, ptr %"for_LDG.10"
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
  br i1 %".454", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".457" = load i32, ptr %"R15"
  %".458" = add i32 %".457", 2
  %".459" = add i32 %".458", 0
  store i32 %".459", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".464" = load i1, ptr %"P2"
  %".465" = icmp eq i1 %".464", 1
  br i1 %".465", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".468" = load i32, ptr %"R7"
  %".469" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".468", %"Arg_3"
  %"add.27" = add i32 %"mul.22", %".469"
  store i32 %"add.27", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
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
  br i1 %".483", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
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
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".496" = load i1, ptr %"P2"
  %".497" = icmp eq i1 %".496", 1
  br i1 %".497", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".500" = load i32, ptr %"R16"
  %"zext.43" = zext i32 %".500" to i64
  %".501" = load i32, ptr %"R17"
  %"zext.44" = zext i32 %".501" to i64
  %"shl.12" = shl i64 %"zext.44", 32
  %"or.11" = or i64 %"shl.12", %"zext.43"
  %".502" = inttoptr i64 %"or.11" to ptr
  %".503" = ptrtoint ptr %".502" to i64
  %".504" = add i64 %".503", 8
  %"for_LDG.11" = inttoptr i64 %".504" to ptr
  %".505" = load float, ptr %"for_LDG.11"
  %".506" = bitcast ptr %"R19" to ptr
  store float %".505", ptr %".506"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".511" = load i32, ptr %"R6"
  %"zext.45" = zext i32 %".511" to i64
  %".512" = load i32, ptr %"R7"
  %"zext.46" = zext i32 %".512" to i64
  %"shl.13" = shl i64 %"zext.46", 32
  %"or.12" = or i64 %"shl.13", %"zext.45"
  %".513" = inttoptr i64 %"or.12" to ptr
  %".514" = ptrtoint ptr %".513" to i64
  %".515" = add i64 %".514", 0
  %"for_LDG.12" = inttoptr i64 %".515" to ptr
  %".516" = load float, ptr %"for_LDG.12"
  %".517" = bitcast ptr %"R6" to ptr
  store float %".516", ptr %".517"
  ; @P2 LDG.E.SYS R14, [R14]
  %".520" = load i1, ptr %"P2"
  %".521" = icmp eq i1 %".520", 1
  br i1 %".521", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".524" = load i32, ptr %"R14"
  %"zext.47" = zext i32 %".524" to i64
  %".525" = load i32, ptr %"R15"
  %"zext.48" = zext i32 %".525" to i64
  %"shl.14" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.14", %"zext.47"
  %".526" = inttoptr i64 %"or.13" to ptr
  %".527" = ptrtoint ptr %".526" to i64
  %".528" = add i64 %".527", 0
  %"for_LDG.13" = inttoptr i64 %".528" to ptr
  %".529" = load float, ptr %"for_LDG.13"
  %".530" = bitcast ptr %"R14" to ptr
  store float %".529", ptr %".530"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".535" = load float, ptr %"R13"
  %".536" = load float, ptr %"R6"
  %".537" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".535", %".536"
  %"fadd.5" = fadd float %"fmul.5", %".537"
  %".538" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".538"
  ; @P2 FFMA R12, R19, R14, R12
  %".541" = load i1, ptr %"P2"
  %".542" = icmp eq i1 %".541", 1
  br i1 %".542", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".545" = load float, ptr %"R19"
  %".546" = load float, ptr %"R14"
  %".547" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".545", %".546"
  %"fadd.6" = fadd float %"fmul.6", %".547"
  %".548" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".548"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".553" = load i32, ptr %"R8"
  %".554" = add i32 %".553", 1
  %".555" = add i32 %".554", 0
  store i32 %".555", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".558" = load i32, ptr %"R8"
  %".559" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".558", %"Arg_4"
  %".560" = and i1 %"cmp.11", %".559"
  store i1 %".560", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".563" = load i1, ptr %"P2"
  %".564" = icmp ne i1 %".563", 1
  br i1 %".564", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".567" = load i1, ptr %"P1"
  %".568" = icmp ne i1 %".567", 1
  br i1 %".568", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".571" = load i32, ptr %"UR5"
  %".572" = add i32 %".571", 1
  %".573" = add i32 %".572", 0
  store i32 %".573", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".576" = load i32, ptr %"R0"
  %".577" = load i32, ptr %"UR4"
  %".578" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".576", %".577"
  %"add.30" = add i32 %"mul.25", %".578"
  store i32 %"add.30", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".583" = load i32, ptr %"R3"
  %".584" = load i32, ptr %"UR4"
  %".585" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".583", %".584"
  %"add.31" = add i32 %"mul.26", %".585"
  store i32 %"add.31", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".588" = load i32, ptr %"R3"
  %".589" = load i32, ptr %"R0"
  %"zext.49" = zext i32 %".588" to i64
  %"zext.50" = zext i32 %".589" to i64
  %"mul.27" = mul i64 %"zext.49", %"zext.50"
  %".590" = ptrtoint ptr %"Arg_2" to i64
  %"add.32" = add i64 %"mul.27", %".590"
  %".591" = and i64 %"add.32", 18446744069414584320
  %".592" = lshr i64 %".591", 32
  %"trunc32.18" = trunc i64 %".592" to i32
  %"trunc32.19" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".596" = load i32, ptr %"R12"
  %".597" = load i32, ptr %"R2"
  %"zext.51" = zext i32 %".597" to i64
  %".598" = load i32, ptr %"R3"
  %"zext.52" = zext i32 %".598" to i64
  %"shl.15" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.15", %"zext.51"
  %".599" = inttoptr i64 %"or.14" to ptr
  %".600" = ptrtoint ptr %".599" to i64
  %".601" = add i64 %".600", 0
  %"for_STG" = inttoptr i64 %".601" to ptr
  store i32 %".596", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

