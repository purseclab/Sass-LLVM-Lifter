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
  %".26" = add i1 %"cmp", 0
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
  %"mul.1" = mul i32 0, 0
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R7"
  ; ISETP.GE.AND P0, PT, R4, 0x1, PT
  %".41" = load i32, ptr %"R4"
  %".42" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".41", 1
  %".43" = add i1 %"cmp.1", 0
  %".44" = and i1 %"cmp.1", %".42"
  %".45" = and i1 %".43", %".42"
  store i1 %".44", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".48" = load i1, ptr %"P0"
  %".49" = icmp ne i1 %".48", 1
  br i1 %".49", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
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
  %".64" = add i1 %"cmp.2", 0
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
  ; @!P0 BRA `(.L_x_1)
  %".76" = load i1, ptr %"P0"
  %".77" = icmp ne i1 %".76", 1
  br i1 %".77", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".80" = load i32, ptr %"R4"
  %".81" = sub i32 0, %".80"
  %".82" = add i32 %".81", %"Arg_4"
  %".83" = add i32 %".82", 0
  store i32 %".83", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".86" = load i32, ptr %"R0"
  %"mul.2" = mul i32 %".86", %"Arg_4"
  %"add.2" = add i32 %"mul.2", 0
  store i32 %"add.2", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".89" = ptrtoint ptr %"Arg_0" to i64
  %".90" = and i64 %".89", 18446744069414584320
  %".91" = lshr i64 %".90", 32
  %"trunc32" = trunc i64 %".91" to i32
  %"trunc32.1" = trunc i64 %".89" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.3" = add i32 %"mul.3", 4
  store i32 %"add.3", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".97" = load i32, ptr %"R6"
  %".98" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".97", 0
  %".99" = add i1 %"cmp.3", 0
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
  %"zext" = zext i32 %".108" to i64
  %"zext.1" = zext i32 %".109" to i64
  %"mul.4" = mul i64 %"zext", %"zext.1"
  %".110" = ptrtoint ptr %"Arg_1" to i64
  %"add.4" = add i64 %"mul.4", %".110"
  %".111" = and i64 %"add.4", 18446744069414584320
  %".112" = lshr i64 %".111", 32
  %"trunc32.2" = trunc i64 %".112" to i32
  %"trunc32.3" = trunc i64 %"add.4" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; MOV R5, RZ
  %".116" = load i32, ptr %"RZ"
  store i32 %".116", ptr %"R5"
  ; @!P0 BRA `(.L_x_2)
  %".119" = load i1, ptr %"P0"
  %".120" = icmp ne i1 %".119", 1
  br i1 %".120", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".123" = load i32, ptr %"R6"
  %".124" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".123", 12
  %".125" = add i1 %"cmp.4", 0
  %".126" = and i1 %"cmp.4", %".124"
  %".127" = and i1 %".125", %".124"
  store i1 %".126", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".130" = and i1 1, 1
  %".131" = or i1 %".130", 1
  ; @!P1 BRA `(.L_x_3)
  %".133" = load i1, ptr %"P1"
  %".134" = icmp ne i1 %".133", 1
  br i1 %".134", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".137" = xor i1 1, 1
  %".138" = and i1 %".137", 1
  %".139" = and i1 %".138", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".142" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".142" to i64
  %".143" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".143" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".144" = inttoptr i64 %"or" to ptr
  %".145" = ptrtoint ptr %".144" to i64
  %".146" = add i64 %".145", 0
  %"for_LDG" = inttoptr i64 %".146" to ptr
  %".147" = load float, ptr %"for_LDG"
  %".148" = bitcast ptr %"R8" to ptr
  store float %".147", ptr %".148"
  ; LDG.E.SYS R9, [UR4]
  %".151" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".151" to i64
  %".152" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".152" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %".153" = inttoptr i64 %"or.1" to ptr
  %".154" = ptrtoint ptr %".153" to i64
  %".155" = add i64 %".154", 0
  %"for_LDG.1" = inttoptr i64 %".155" to ptr
  %".156" = load float, ptr %"for_LDG.1"
  %".157" = bitcast ptr %"R9" to ptr
  store float %".156", ptr %".157"
  ; LDG.E.SYS R11, [R2+0x4]
  %".160" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".160" to i64
  %".161" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".161" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %".162" = inttoptr i64 %"or.2" to ptr
  %".163" = ptrtoint ptr %".162" to i64
  %".164" = add i64 %".163", 4
  %"for_LDG.2" = inttoptr i64 %".164" to ptr
  %".165" = load float, ptr %"for_LDG.2"
  %".166" = bitcast ptr %"R11" to ptr
  store float %".165", ptr %".166"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".169" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".169" to i64
  %".170" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".170" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %".171" = inttoptr i64 %"or.3" to ptr
  %".172" = ptrtoint ptr %".171" to i64
  %".173" = add i64 %".172", 4
  %"for_LDG.3" = inttoptr i64 %".173" to ptr
  %".174" = load float, ptr %"for_LDG.3"
  %".175" = bitcast ptr %"R10" to ptr
  store float %".174", ptr %".175"
  ; LDG.E.SYS R13, [R2+0x8]
  %".178" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".178" to i64
  %".179" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".179" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %".180" = inttoptr i64 %"or.4" to ptr
  %".181" = ptrtoint ptr %".180" to i64
  %".182" = add i64 %".181", 8
  %"for_LDG.4" = inttoptr i64 %".182" to ptr
  %".183" = load float, ptr %"for_LDG.4"
  %".184" = bitcast ptr %"R13" to ptr
  store float %".183", ptr %".184"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".187" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".187" to i64
  %".188" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".188" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %".189" = inttoptr i64 %"or.5" to ptr
  %".190" = ptrtoint ptr %".189" to i64
  %".191" = add i64 %".190", 8
  %"for_LDG.5" = inttoptr i64 %".191" to ptr
  %".192" = load float, ptr %"for_LDG.5"
  %".193" = bitcast ptr %"R12" to ptr
  store float %".192", ptr %".193"
  ; LDG.E.SYS R15, [R2+0xc]
  %".196" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".196" to i64
  %".197" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".197" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %".198" = inttoptr i64 %"or.6" to ptr
  %".199" = ptrtoint ptr %".198" to i64
  %".200" = add i64 %".199", 12
  %"for_LDG.6" = inttoptr i64 %".200" to ptr
  %".201" = load float, ptr %"for_LDG.6"
  %".202" = bitcast ptr %"R15" to ptr
  store float %".201", ptr %".202"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".205" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".205" to i64
  %".206" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".206" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %".207" = inttoptr i64 %"or.7" to ptr
  %".208" = ptrtoint ptr %".207" to i64
  %".209" = add i64 %".208", 12
  %"for_LDG.7" = inttoptr i64 %".209" to ptr
  %".210" = load float, ptr %"for_LDG.7"
  %".211" = bitcast ptr %"R14" to ptr
  store float %".210", ptr %".211"
  ; LDG.E.SYS R17, [R2+0x10]
  %".214" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".214" to i64
  %".215" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".215" to i64
  %"shl.8" = shl i64 %"zext.19", 32
  %"or.8" = or i64 %"shl.8", %"zext.18"
  %".216" = inttoptr i64 %"or.8" to ptr
  %".217" = ptrtoint ptr %".216" to i64
  %".218" = add i64 %".217", 16
  %"for_LDG.8" = inttoptr i64 %".218" to ptr
  %".219" = load float, ptr %"for_LDG.8"
  %".220" = bitcast ptr %"R17" to ptr
  store float %".219", ptr %".220"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".223" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".223" to i64
  %".224" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".224" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %".225" = inttoptr i64 %"or.9" to ptr
  %".226" = ptrtoint ptr %".225" to i64
  %".227" = add i64 %".226", 16
  %"for_LDG.9" = inttoptr i64 %".227" to ptr
  %".228" = load float, ptr %"for_LDG.9"
  %".229" = bitcast ptr %"R16" to ptr
  store float %".228", ptr %".229"
  ; LDG.E.SYS R19, [R2+0x14]
  %".232" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".232" to i64
  %".233" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".233" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %".234" = inttoptr i64 %"or.10" to ptr
  %".235" = ptrtoint ptr %".234" to i64
  %".236" = add i64 %".235", 20
  %"for_LDG.10" = inttoptr i64 %".236" to ptr
  %".237" = load float, ptr %"for_LDG.10"
  %".238" = bitcast ptr %"R19" to ptr
  store float %".237", ptr %".238"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".241" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".241" to i64
  %".242" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".242" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %".243" = inttoptr i64 %"or.11" to ptr
  %".244" = ptrtoint ptr %".243" to i64
  %".245" = add i64 %".244", 20
  %"for_LDG.11" = inttoptr i64 %".245" to ptr
  %".246" = load float, ptr %"for_LDG.11"
  %".247" = bitcast ptr %"R18" to ptr
  store float %".246", ptr %".247"
  ; LDG.E.SYS R21, [R2+0x18]
  %".250" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".250" to i64
  %".251" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".251" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %".252" = inttoptr i64 %"or.12" to ptr
  %".253" = ptrtoint ptr %".252" to i64
  %".254" = add i64 %".253", 24
  %"for_LDG.12" = inttoptr i64 %".254" to ptr
  %".255" = load float, ptr %"for_LDG.12"
  %".256" = bitcast ptr %"R21" to ptr
  store float %".255", ptr %".256"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".259" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".259" to i64
  %".260" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".260" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %".261" = inttoptr i64 %"or.13" to ptr
  %".262" = ptrtoint ptr %".261" to i64
  %".263" = add i64 %".262", 24
  %"for_LDG.13" = inttoptr i64 %".263" to ptr
  %".264" = load float, ptr %"for_LDG.13"
  %".265" = bitcast ptr %"R20" to ptr
  store float %".264", ptr %".265"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".268" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".268" to i64
  %".269" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".269" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %".270" = inttoptr i64 %"or.14" to ptr
  %".271" = ptrtoint ptr %".270" to i64
  %".272" = add i64 %".271", 28
  %"for_LDG.14" = inttoptr i64 %".272" to ptr
  %".273" = load float, ptr %"for_LDG.14"
  %".274" = bitcast ptr %"R23" to ptr
  store float %".273", ptr %".274"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".277" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".277" to i64
  %".278" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".278" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %".279" = inttoptr i64 %"or.15" to ptr
  %".280" = ptrtoint ptr %".279" to i64
  %".281" = add i64 %".280", 28
  %"for_LDG.15" = inttoptr i64 %".281" to ptr
  %".282" = load float, ptr %"for_LDG.15"
  %".283" = bitcast ptr %"R22" to ptr
  store float %".282", ptr %".283"
  ; LDG.E.SYS R25, [R2+0x20]
  %".286" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".286" to i64
  %".287" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".287" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %".288" = inttoptr i64 %"or.16" to ptr
  %".289" = ptrtoint ptr %".288" to i64
  %".290" = add i64 %".289", 32
  %"for_LDG.16" = inttoptr i64 %".290" to ptr
  %".291" = load float, ptr %"for_LDG.16"
  %".292" = bitcast ptr %"R25" to ptr
  store float %".291", ptr %".292"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".295" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".295" to i64
  %".296" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".296" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %".297" = inttoptr i64 %"or.17" to ptr
  %".298" = ptrtoint ptr %".297" to i64
  %".299" = add i64 %".298", 32
  %"for_LDG.17" = inttoptr i64 %".299" to ptr
  %".300" = load float, ptr %"for_LDG.17"
  %".301" = bitcast ptr %"R24" to ptr
  store float %".300", ptr %".301"
  ; LDG.E.SYS R27, [R2+0x24]
  %".304" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".304" to i64
  %".305" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".305" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %".306" = inttoptr i64 %"or.18" to ptr
  %".307" = ptrtoint ptr %".306" to i64
  %".308" = add i64 %".307", 36
  %"for_LDG.18" = inttoptr i64 %".308" to ptr
  %".309" = load float, ptr %"for_LDG.18"
  %".310" = bitcast ptr %"R27" to ptr
  store float %".309", ptr %".310"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".313" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".313" to i64
  %".314" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".314" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %".315" = inttoptr i64 %"or.19" to ptr
  %".316" = ptrtoint ptr %".315" to i64
  %".317" = add i64 %".316", 36
  %"for_LDG.19" = inttoptr i64 %".317" to ptr
  %".318" = load float, ptr %"for_LDG.19"
  %".319" = bitcast ptr %"R26" to ptr
  store float %".318", ptr %".319"
  ; LDG.E.SYS R29, [R2+0x28]
  %".322" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".322" to i64
  %".323" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".323" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %".324" = inttoptr i64 %"or.20" to ptr
  %".325" = ptrtoint ptr %".324" to i64
  %".326" = add i64 %".325", 40
  %"for_LDG.20" = inttoptr i64 %".326" to ptr
  %".327" = load float, ptr %"for_LDG.20"
  %".328" = bitcast ptr %"R29" to ptr
  store float %".327", ptr %".328"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".331" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".331" to i64
  %".332" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".332" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %".333" = inttoptr i64 %"or.21" to ptr
  %".334" = ptrtoint ptr %".333" to i64
  %".335" = add i64 %".334", 40
  %"for_LDG.21" = inttoptr i64 %".335" to ptr
  %".336" = load float, ptr %"for_LDG.21"
  %".337" = bitcast ptr %"R28" to ptr
  store float %".336", ptr %".337"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".340" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".340" to i64
  %".341" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".341" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %".342" = inttoptr i64 %"or.22" to ptr
  %".343" = ptrtoint ptr %".342" to i64
  %".344" = add i64 %".343", 44
  %"for_LDG.22" = inttoptr i64 %".344" to ptr
  %".345" = load float, ptr %"for_LDG.22"
  %".346" = bitcast ptr %"R31" to ptr
  store float %".345", ptr %".346"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".349" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".349" to i64
  %".350" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".350" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %".351" = inttoptr i64 %"or.23" to ptr
  %".352" = ptrtoint ptr %".351" to i64
  %".353" = add i64 %".352", 44
  %"for_LDG.23" = inttoptr i64 %".353" to ptr
  %".354" = load float, ptr %"for_LDG.23"
  %".355" = bitcast ptr %"R30" to ptr
  store float %".354", ptr %".355"
  ; LDG.E.SYS R33, [R2+0x30]
  %".358" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".358" to i64
  %".359" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".359" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %".360" = inttoptr i64 %"or.24" to ptr
  %".361" = ptrtoint ptr %".360" to i64
  %".362" = add i64 %".361", 48
  %"for_LDG.24" = inttoptr i64 %".362" to ptr
  %".363" = load float, ptr %"for_LDG.24"
  %".364" = bitcast ptr %"R33" to ptr
  store float %".363", ptr %".364"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".367" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".367" to i64
  %".368" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".368" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %".369" = inttoptr i64 %"or.25" to ptr
  %".370" = ptrtoint ptr %".369" to i64
  %".371" = add i64 %".370", 48
  %"for_LDG.25" = inttoptr i64 %".371" to ptr
  %".372" = load float, ptr %"for_LDG.25"
  %".373" = bitcast ptr %"R32" to ptr
  store float %".372", ptr %".373"
  ; LDG.E.SYS R35, [R2+0x34]
  %".376" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".376" to i64
  %".377" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".377" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %".378" = inttoptr i64 %"or.26" to ptr
  %".379" = ptrtoint ptr %".378" to i64
  %".380" = add i64 %".379", 52
  %"for_LDG.26" = inttoptr i64 %".380" to ptr
  %".381" = load float, ptr %"for_LDG.26"
  %".382" = bitcast ptr %"R35" to ptr
  store float %".381", ptr %".382"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".385" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".385" to i64
  %".386" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".386" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %".387" = inttoptr i64 %"or.27" to ptr
  %".388" = ptrtoint ptr %".387" to i64
  %".389" = add i64 %".388", 52
  %"for_LDG.27" = inttoptr i64 %".389" to ptr
  %".390" = load float, ptr %"for_LDG.27"
  %".391" = bitcast ptr %"R34" to ptr
  store float %".390", ptr %".391"
  ; LDG.E.SYS R37, [R2+0x38]
  %".394" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".394" to i64
  %".395" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".395" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %".396" = inttoptr i64 %"or.28" to ptr
  %".397" = ptrtoint ptr %".396" to i64
  %".398" = add i64 %".397", 56
  %"for_LDG.28" = inttoptr i64 %".398" to ptr
  %".399" = load float, ptr %"for_LDG.28"
  %".400" = bitcast ptr %"R37" to ptr
  store float %".399", ptr %".400"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".403" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".403" to i64
  %".404" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".404" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %".405" = inttoptr i64 %"or.29" to ptr
  %".406" = ptrtoint ptr %".405" to i64
  %".407" = add i64 %".406", 56
  %"for_LDG.29" = inttoptr i64 %".407" to ptr
  %".408" = load float, ptr %"for_LDG.29"
  %".409" = bitcast ptr %"R36" to ptr
  store float %".408", ptr %".409"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".412" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".412" to i64
  %".413" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".413" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %".414" = inttoptr i64 %"or.30" to ptr
  %".415" = ptrtoint ptr %".414" to i64
  %".416" = add i64 %".415", 60
  %"for_LDG.30" = inttoptr i64 %".416" to ptr
  %".417" = load float, ptr %"for_LDG.30"
  %".418" = bitcast ptr %"R39" to ptr
  store float %".417", ptr %".418"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".421" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".421" to i64
  %".422" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".422" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %".423" = inttoptr i64 %"or.31" to ptr
  %".424" = ptrtoint ptr %".423" to i64
  %".425" = add i64 %".424", 60
  %"for_LDG.31" = inttoptr i64 %".425" to ptr
  %".426" = load float, ptr %"for_LDG.31"
  %".427" = bitcast ptr %"R38" to ptr
  store float %".426", ptr %".427"
  ; IADD3 R6, R6, -0x10, RZ
  %".430" = load i32, ptr %"R6"
  %".431" = add i32 %".430", -16
  %".432" = add i32 %".431", 0
  store i32 %".432", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".435" = load i32, ptr %"UR4"
  %".436" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".435", i32 64)
  %".437" = extractvalue {i32, i1} %".436", 0
  %".438" = extractvalue {i32, i1} %".436", 1
  %".439" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".437", i32 0)
  %".440" = extractvalue {i32, i1} %".439", 0
  %".441" = extractvalue {i32, i1} %".439", 1
  %".442" = or i1 %".438", %".441"
  store i32 %".440", ptr %"UR4"
  store i1 %".442", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".446" = load i32, ptr %"R5"
  %".447" = add i32 %".446", 16
  %".448" = add i32 %".447", 0
  store i32 %".448", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".451" = load i32, ptr %"R6"
  %".452" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".451", 12
  %".453" = add i1 %"cmp.5", 0
  %".454" = and i1 %"cmp.5", %".452"
  %".455" = and i1 %".453", %".452"
  store i1 %".454", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".458" = load i32, ptr %"UR5"
  %".459" = load i1, ptr %"UP0"
  %".460" = xor i1 1, -1
  %".461" = zext i1 %".459" to i32
  %".462" = zext i1 %".460" to i32
  %"add.5" = add i32 0, %".458"
  %"add.6" = add i32 %"add.5", 0
  %"add.7" = add i32 %"add.6", %".461"
  %"add.8" = add i32 %"add.7", %".462"
  store i32 %"add.8", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".465" = load i32, ptr %"R2"
  %".466" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".465", i32 64)
  %".467" = extractvalue {i32, i1} %".466", 0
  %".468" = extractvalue {i32, i1} %".466", 1
  %".469" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".467", i32 0)
  %".470" = extractvalue {i32, i1} %".469", 0
  %".471" = extractvalue {i32, i1} %".469", 1
  %".472" = or i1 %".468", %".471"
  store i32 %".470", ptr %"R2"
  store i1 %".472", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".476" = load i32, ptr %"R3"
  %".477" = load i1, ptr %"P2"
  %"mul.5" = mul i32 0, 0
  %"add.9" = add i32 %"mul.5", %".476"
  %"zext.66" = zext i1 %".477" to i32
  %"add.10" = add i32 %"add.9", %"zext.66"
  store i32 %"add.10", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".480" = load float, ptr %"R8"
  %".481" = load float, ptr %"R9"
  %".482" = load float, ptr %"R7"
  %"fmul" = fmul float %".480", %".481"
  %"fadd" = fadd float %"fmul", %".482"
  %".483" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".483"
  ; FFMA R8, R11, R10, R8
  %".486" = load float, ptr %"R11"
  %".487" = load float, ptr %"R10"
  %".488" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".486", %".487"
  %"fadd.1" = fadd float %"fmul.1", %".488"
  %".489" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".489"
  ; FFMA R8, R13, R12, R8
  %".492" = load float, ptr %"R13"
  %".493" = load float, ptr %"R12"
  %".494" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".492", %".493"
  %"fadd.2" = fadd float %"fmul.2", %".494"
  %".495" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".495"
  ; FFMA R8, R15, R14, R8
  %".498" = load float, ptr %"R15"
  %".499" = load float, ptr %"R14"
  %".500" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".498", %".499"
  %"fadd.3" = fadd float %"fmul.3", %".500"
  %".501" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".501"
  ; FFMA R8, R17, R16, R8
  %".504" = load float, ptr %"R17"
  %".505" = load float, ptr %"R16"
  %".506" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".504", %".505"
  %"fadd.4" = fadd float %"fmul.4", %".506"
  %".507" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".507"
  ; FFMA R8, R19, R18, R8
  %".510" = load float, ptr %"R19"
  %".511" = load float, ptr %"R18"
  %".512" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".510", %".511"
  %"fadd.5" = fadd float %"fmul.5", %".512"
  %".513" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".513"
  ; FFMA R8, R21, R20, R8
  %".516" = load float, ptr %"R21"
  %".517" = load float, ptr %"R20"
  %".518" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".516", %".517"
  %"fadd.6" = fadd float %"fmul.6", %".518"
  %".519" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".519"
  ; FFMA R8, R23, R22, R8
  %".522" = load float, ptr %"R23"
  %".523" = load float, ptr %"R22"
  %".524" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".522", %".523"
  %"fadd.7" = fadd float %"fmul.7", %".524"
  %".525" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".525"
  ; FFMA R8, R25, R24, R8
  %".528" = load float, ptr %"R25"
  %".529" = load float, ptr %"R24"
  %".530" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".528", %".529"
  %"fadd.8" = fadd float %"fmul.8", %".530"
  %".531" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".531"
  ; FFMA R8, R27, R26, R8
  %".534" = load float, ptr %"R27"
  %".535" = load float, ptr %"R26"
  %".536" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".534", %".535"
  %"fadd.9" = fadd float %"fmul.9", %".536"
  %".537" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".537"
  ; FFMA R8, R29, R28, R8
  %".540" = load float, ptr %"R29"
  %".541" = load float, ptr %"R28"
  %".542" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".540", %".541"
  %"fadd.10" = fadd float %"fmul.10", %".542"
  %".543" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".543"
  ; FFMA R8, R31, R30, R8
  %".546" = load float, ptr %"R31"
  %".547" = load float, ptr %"R30"
  %".548" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".546", %".547"
  %"fadd.11" = fadd float %"fmul.11", %".548"
  %".549" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".549"
  ; FFMA R8, R33, R32, R8
  %".552" = load float, ptr %"R33"
  %".553" = load float, ptr %"R32"
  %".554" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".552", %".553"
  %"fadd.12" = fadd float %"fmul.12", %".554"
  %".555" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".555"
  ; FFMA R8, R35, R34, R8
  %".558" = load float, ptr %"R35"
  %".559" = load float, ptr %"R34"
  %".560" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".558", %".559"
  %"fadd.13" = fadd float %"fmul.13", %".560"
  %".561" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".561"
  ; FFMA R8, R37, R36, R8
  %".564" = load float, ptr %"R37"
  %".565" = load float, ptr %"R36"
  %".566" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".564", %".565"
  %"fadd.14" = fadd float %"fmul.14", %".566"
  %".567" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".567"
  ; FFMA R7, R39, R38, R8
  %".570" = load float, ptr %"R39"
  %".571" = load float, ptr %"R38"
  %".572" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".570", %".571"
  %"fadd.15" = fadd float %"fmul.15", %".572"
  %".573" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".573"
  ; @P1 BRA `(.L_x_4)
  %".576" = load i1, ptr %"P1"
  %".577" = icmp eq i1 %".576", 1
  br i1 %".577", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".580" = load i32, ptr %"R6"
  %".581" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".580", 4
  %".582" = add i1 %"cmp.6", 0
  %".583" = and i1 %"cmp.6", %".581"
  %".584" = and i1 %".582", %".581"
  store i1 %".583", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".587" = load i1, ptr %"P1"
  %".588" = icmp ne i1 %".587", 1
  br i1 %".588", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".591" = load i32, ptr %"R2"
  %"zext.67" = zext i32 %".591" to i64
  %".592" = load i32, ptr %"R3"
  %"zext.68" = zext i32 %".592" to i64
  %"shl.32" = shl i64 %"zext.68", 32
  %"or.32" = or i64 %"shl.32", %"zext.67"
  %".593" = inttoptr i64 %"or.32" to ptr
  %".594" = ptrtoint ptr %".593" to i64
  %".595" = add i64 %".594", 0
  %"for_LDG.32" = inttoptr i64 %".595" to ptr
  %".596" = load float, ptr %"for_LDG.32"
  %".597" = bitcast ptr %"R8" to ptr
  store float %".596", ptr %".597"
  ; LDG.E.SYS R9, [UR4]
  %".600" = load i32, ptr %"UR4"
  %"zext.69" = zext i32 %".600" to i64
  %".601" = load i32, ptr %"UR5"
  %"zext.70" = zext i32 %".601" to i64
  %"shl.33" = shl i64 %"zext.70", 32
  %"or.33" = or i64 %"shl.33", %"zext.69"
  %".602" = inttoptr i64 %"or.33" to ptr
  %".603" = ptrtoint ptr %".602" to i64
  %".604" = add i64 %".603", 0
  %"for_LDG.33" = inttoptr i64 %".604" to ptr
  %".605" = load float, ptr %"for_LDG.33"
  %".606" = bitcast ptr %"R9" to ptr
  store float %".605", ptr %".606"
  ; LDG.E.SYS R11, [R2+0x4]
  %".609" = load i32, ptr %"R2"
  %"zext.71" = zext i32 %".609" to i64
  %".610" = load i32, ptr %"R3"
  %"zext.72" = zext i32 %".610" to i64
  %"shl.34" = shl i64 %"zext.72", 32
  %"or.34" = or i64 %"shl.34", %"zext.71"
  %".611" = inttoptr i64 %"or.34" to ptr
  %".612" = ptrtoint ptr %".611" to i64
  %".613" = add i64 %".612", 4
  %"for_LDG.34" = inttoptr i64 %".613" to ptr
  %".614" = load float, ptr %"for_LDG.34"
  %".615" = bitcast ptr %"R11" to ptr
  store float %".614", ptr %".615"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".618" = load i32, ptr %"UR4"
  %"zext.73" = zext i32 %".618" to i64
  %".619" = load i32, ptr %"UR5"
  %"zext.74" = zext i32 %".619" to i64
  %"shl.35" = shl i64 %"zext.74", 32
  %"or.35" = or i64 %"shl.35", %"zext.73"
  %".620" = inttoptr i64 %"or.35" to ptr
  %".621" = ptrtoint ptr %".620" to i64
  %".622" = add i64 %".621", 4
  %"for_LDG.35" = inttoptr i64 %".622" to ptr
  %".623" = load float, ptr %"for_LDG.35"
  %".624" = bitcast ptr %"R10" to ptr
  store float %".623", ptr %".624"
  ; LDG.E.SYS R13, [R2+0x8]
  %".627" = load i32, ptr %"R2"
  %"zext.75" = zext i32 %".627" to i64
  %".628" = load i32, ptr %"R3"
  %"zext.76" = zext i32 %".628" to i64
  %"shl.36" = shl i64 %"zext.76", 32
  %"or.36" = or i64 %"shl.36", %"zext.75"
  %".629" = inttoptr i64 %"or.36" to ptr
  %".630" = ptrtoint ptr %".629" to i64
  %".631" = add i64 %".630", 8
  %"for_LDG.36" = inttoptr i64 %".631" to ptr
  %".632" = load float, ptr %"for_LDG.36"
  %".633" = bitcast ptr %"R13" to ptr
  store float %".632", ptr %".633"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".636" = load i32, ptr %"UR4"
  %"zext.77" = zext i32 %".636" to i64
  %".637" = load i32, ptr %"UR5"
  %"zext.78" = zext i32 %".637" to i64
  %"shl.37" = shl i64 %"zext.78", 32
  %"or.37" = or i64 %"shl.37", %"zext.77"
  %".638" = inttoptr i64 %"or.37" to ptr
  %".639" = ptrtoint ptr %".638" to i64
  %".640" = add i64 %".639", 8
  %"for_LDG.37" = inttoptr i64 %".640" to ptr
  %".641" = load float, ptr %"for_LDG.37"
  %".642" = bitcast ptr %"R12" to ptr
  store float %".641", ptr %".642"
  ; LDG.E.SYS R15, [R2+0xc]
  %".645" = load i32, ptr %"R2"
  %"zext.79" = zext i32 %".645" to i64
  %".646" = load i32, ptr %"R3"
  %"zext.80" = zext i32 %".646" to i64
  %"shl.38" = shl i64 %"zext.80", 32
  %"or.38" = or i64 %"shl.38", %"zext.79"
  %".647" = inttoptr i64 %"or.38" to ptr
  %".648" = ptrtoint ptr %".647" to i64
  %".649" = add i64 %".648", 12
  %"for_LDG.38" = inttoptr i64 %".649" to ptr
  %".650" = load float, ptr %"for_LDG.38"
  %".651" = bitcast ptr %"R15" to ptr
  store float %".650", ptr %".651"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".654" = load i32, ptr %"UR4"
  %"zext.81" = zext i32 %".654" to i64
  %".655" = load i32, ptr %"UR5"
  %"zext.82" = zext i32 %".655" to i64
  %"shl.39" = shl i64 %"zext.82", 32
  %"or.39" = or i64 %"shl.39", %"zext.81"
  %".656" = inttoptr i64 %"or.39" to ptr
  %".657" = ptrtoint ptr %".656" to i64
  %".658" = add i64 %".657", 12
  %"for_LDG.39" = inttoptr i64 %".658" to ptr
  %".659" = load float, ptr %"for_LDG.39"
  %".660" = bitcast ptr %"R14" to ptr
  store float %".659", ptr %".660"
  ; LDG.E.SYS R17, [R2+0x10]
  %".663" = load i32, ptr %"R2"
  %"zext.83" = zext i32 %".663" to i64
  %".664" = load i32, ptr %"R3"
  %"zext.84" = zext i32 %".664" to i64
  %"shl.40" = shl i64 %"zext.84", 32
  %"or.40" = or i64 %"shl.40", %"zext.83"
  %".665" = inttoptr i64 %"or.40" to ptr
  %".666" = ptrtoint ptr %".665" to i64
  %".667" = add i64 %".666", 16
  %"for_LDG.40" = inttoptr i64 %".667" to ptr
  %".668" = load float, ptr %"for_LDG.40"
  %".669" = bitcast ptr %"R17" to ptr
  store float %".668", ptr %".669"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".672" = load i32, ptr %"UR4"
  %"zext.85" = zext i32 %".672" to i64
  %".673" = load i32, ptr %"UR5"
  %"zext.86" = zext i32 %".673" to i64
  %"shl.41" = shl i64 %"zext.86", 32
  %"or.41" = or i64 %"shl.41", %"zext.85"
  %".674" = inttoptr i64 %"or.41" to ptr
  %".675" = ptrtoint ptr %".674" to i64
  %".676" = add i64 %".675", 16
  %"for_LDG.41" = inttoptr i64 %".676" to ptr
  %".677" = load float, ptr %"for_LDG.41"
  %".678" = bitcast ptr %"R16" to ptr
  store float %".677", ptr %".678"
  ; LDG.E.SYS R19, [R2+0x14]
  %".681" = load i32, ptr %"R2"
  %"zext.87" = zext i32 %".681" to i64
  %".682" = load i32, ptr %"R3"
  %"zext.88" = zext i32 %".682" to i64
  %"shl.42" = shl i64 %"zext.88", 32
  %"or.42" = or i64 %"shl.42", %"zext.87"
  %".683" = inttoptr i64 %"or.42" to ptr
  %".684" = ptrtoint ptr %".683" to i64
  %".685" = add i64 %".684", 20
  %"for_LDG.42" = inttoptr i64 %".685" to ptr
  %".686" = load float, ptr %"for_LDG.42"
  %".687" = bitcast ptr %"R19" to ptr
  store float %".686", ptr %".687"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".690" = load i32, ptr %"UR4"
  %"zext.89" = zext i32 %".690" to i64
  %".691" = load i32, ptr %"UR5"
  %"zext.90" = zext i32 %".691" to i64
  %"shl.43" = shl i64 %"zext.90", 32
  %"or.43" = or i64 %"shl.43", %"zext.89"
  %".692" = inttoptr i64 %"or.43" to ptr
  %".693" = ptrtoint ptr %".692" to i64
  %".694" = add i64 %".693", 20
  %"for_LDG.43" = inttoptr i64 %".694" to ptr
  %".695" = load float, ptr %"for_LDG.43"
  %".696" = bitcast ptr %"R18" to ptr
  store float %".695", ptr %".696"
  ; LDG.E.SYS R21, [R2+0x18]
  %".699" = load i32, ptr %"R2"
  %"zext.91" = zext i32 %".699" to i64
  %".700" = load i32, ptr %"R3"
  %"zext.92" = zext i32 %".700" to i64
  %"shl.44" = shl i64 %"zext.92", 32
  %"or.44" = or i64 %"shl.44", %"zext.91"
  %".701" = inttoptr i64 %"or.44" to ptr
  %".702" = ptrtoint ptr %".701" to i64
  %".703" = add i64 %".702", 24
  %"for_LDG.44" = inttoptr i64 %".703" to ptr
  %".704" = load float, ptr %"for_LDG.44"
  %".705" = bitcast ptr %"R21" to ptr
  store float %".704", ptr %".705"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".708" = load i32, ptr %"UR4"
  %"zext.93" = zext i32 %".708" to i64
  %".709" = load i32, ptr %"UR5"
  %"zext.94" = zext i32 %".709" to i64
  %"shl.45" = shl i64 %"zext.94", 32
  %"or.45" = or i64 %"shl.45", %"zext.93"
  %".710" = inttoptr i64 %"or.45" to ptr
  %".711" = ptrtoint ptr %".710" to i64
  %".712" = add i64 %".711", 24
  %"for_LDG.45" = inttoptr i64 %".712" to ptr
  %".713" = load float, ptr %"for_LDG.45"
  %".714" = bitcast ptr %"R20" to ptr
  store float %".713", ptr %".714"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".717" = load i32, ptr %"R2"
  %"zext.95" = zext i32 %".717" to i64
  %".718" = load i32, ptr %"R3"
  %"zext.96" = zext i32 %".718" to i64
  %"shl.46" = shl i64 %"zext.96", 32
  %"or.46" = or i64 %"shl.46", %"zext.95"
  %".719" = inttoptr i64 %"or.46" to ptr
  %".720" = ptrtoint ptr %".719" to i64
  %".721" = add i64 %".720", 28
  %"for_LDG.46" = inttoptr i64 %".721" to ptr
  %".722" = load float, ptr %"for_LDG.46"
  %".723" = bitcast ptr %"R23" to ptr
  store float %".722", ptr %".723"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".726" = load i32, ptr %"UR4"
  %"zext.97" = zext i32 %".726" to i64
  %".727" = load i32, ptr %"UR5"
  %"zext.98" = zext i32 %".727" to i64
  %"shl.47" = shl i64 %"zext.98", 32
  %"or.47" = or i64 %"shl.47", %"zext.97"
  %".728" = inttoptr i64 %"or.47" to ptr
  %".729" = ptrtoint ptr %".728" to i64
  %".730" = add i64 %".729", 28
  %"for_LDG.47" = inttoptr i64 %".730" to ptr
  %".731" = load float, ptr %"for_LDG.47"
  %".732" = bitcast ptr %"R22" to ptr
  store float %".731", ptr %".732"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".735" = load i32, ptr %"UR4"
  %".736" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".735", i32 32)
  %".737" = extractvalue {i32, i1} %".736", 0
  %".738" = extractvalue {i32, i1} %".736", 1
  %".739" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".737", i32 0)
  %".740" = extractvalue {i32, i1} %".739", 0
  %".741" = extractvalue {i32, i1} %".739", 1
  %".742" = or i1 %".738", %".741"
  store i32 %".740", ptr %"UR4"
  store i1 %".742", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".746" = xor i1 1, 1
  %".747" = and i1 %".746", 1
  %".748" = and i1 %".747", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".750" = load i32, ptr %"R5"
  %".751" = add i32 %".750", 8
  %".752" = add i32 %".751", 0
  store i32 %".752", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".755" = load i32, ptr %"UR5"
  %".756" = load i1, ptr %"UP0"
  %".757" = xor i1 1, -1
  %".758" = zext i1 %".756" to i32
  %".759" = zext i1 %".757" to i32
  %"add.11" = add i32 0, %".755"
  %"add.12" = add i32 %"add.11", 0
  %"add.13" = add i32 %"add.12", %".758"
  %"add.14" = add i32 %"add.13", %".759"
  store i32 %"add.14", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".762" = load i32, ptr %"R2"
  %".763" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".762", i32 32)
  %".764" = extractvalue {i32, i1} %".763", 0
  %".765" = extractvalue {i32, i1} %".763", 1
  %".766" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".764", i32 0)
  %".767" = extractvalue {i32, i1} %".766", 0
  %".768" = extractvalue {i32, i1} %".766", 1
  %".769" = or i1 %".765", %".768"
  store i32 %".767", ptr %"R2"
  store i1 %".769", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".773" = load i32, ptr %"R6"
  %".774" = add i32 %".773", -8
  %".775" = add i32 %".774", 0
  store i32 %".775", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".778" = load i32, ptr %"R3"
  %".779" = load i1, ptr %"P1"
  %".780" = xor i1 1, -1
  %".781" = zext i1 %".779" to i32
  %".782" = zext i1 %".780" to i32
  %"add.15" = add i32 0, %".778"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".781"
  %"add.18" = add i32 %"add.17", %".782"
  store i32 %"add.18", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".785" = load float, ptr %"R8"
  %".786" = load float, ptr %"R9"
  %".787" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".785", %".786"
  %"fadd.16" = fadd float %"fmul.16", %".787"
  %".788" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".788"
  ; FFMA R8, R11, R10, R8
  %".791" = load float, ptr %"R11"
  %".792" = load float, ptr %"R10"
  %".793" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".791", %".792"
  %"fadd.17" = fadd float %"fmul.17", %".793"
  %".794" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".794"
  ; FFMA R8, R13, R12, R8
  %".797" = load float, ptr %"R13"
  %".798" = load float, ptr %"R12"
  %".799" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".797", %".798"
  %"fadd.18" = fadd float %"fmul.18", %".799"
  %".800" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".800"
  ; FFMA R8, R15, R14, R8
  %".803" = load float, ptr %"R15"
  %".804" = load float, ptr %"R14"
  %".805" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".803", %".804"
  %"fadd.19" = fadd float %"fmul.19", %".805"
  %".806" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".806"
  ; FFMA R8, R17, R16, R8
  %".809" = load float, ptr %"R17"
  %".810" = load float, ptr %"R16"
  %".811" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".809", %".810"
  %"fadd.20" = fadd float %"fmul.20", %".811"
  %".812" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".812"
  ; FFMA R8, R19, R18, R8
  %".815" = load float, ptr %"R19"
  %".816" = load float, ptr %"R18"
  %".817" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".815", %".816"
  %"fadd.21" = fadd float %"fmul.21", %".817"
  %".818" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".818"
  ; FFMA R8, R21, R20, R8
  %".821" = load float, ptr %"R21"
  %".822" = load float, ptr %"R20"
  %".823" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".821", %".822"
  %"fadd.22" = fadd float %"fmul.22", %".823"
  %".824" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".824"
  ; FFMA R7, R23, R22, R8
  %".827" = load float, ptr %"R23"
  %".828" = load float, ptr %"R22"
  %".829" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".827", %".828"
  %"fadd.23" = fadd float %"fmul.23", %".829"
  %".830" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".830"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".834" = load i32, ptr %"R6"
  %".835" = load i1, ptr %"P0"
  %"cmp.7" = icmp ne i32 %".834", 0
  %".836" = add i1 %"cmp.7", 0
  %".837" = or i1 %"cmp.7", %".835"
  %".838" = or i1 %".836", %".835"
  store i1 %".837", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".841" = load i1, ptr %"P0"
  %".842" = icmp ne i1 %".841", 1
  br i1 %".842", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".845" = load i32, ptr %"R2"
  %"zext.99" = zext i32 %".845" to i64
  %".846" = load i32, ptr %"R3"
  %"zext.100" = zext i32 %".846" to i64
  %"shl.48" = shl i64 %"zext.100", 32
  %"or.48" = or i64 %"shl.48", %"zext.99"
  %".847" = inttoptr i64 %"or.48" to ptr
  %".848" = ptrtoint ptr %".847" to i64
  %".849" = add i64 %".848", 0
  %"for_LDG.48" = inttoptr i64 %".849" to ptr
  %".850" = load float, ptr %"for_LDG.48"
  %".851" = bitcast ptr %"R8" to ptr
  store float %".850", ptr %".851"
  ; LDG.E.SYS R9, [UR4]
  %".854" = load i32, ptr %"UR4"
  %"zext.101" = zext i32 %".854" to i64
  %".855" = load i32, ptr %"UR5"
  %"zext.102" = zext i32 %".855" to i64
  %"shl.49" = shl i64 %"zext.102", 32
  %"or.49" = or i64 %"shl.49", %"zext.101"
  %".856" = inttoptr i64 %"or.49" to ptr
  %".857" = ptrtoint ptr %".856" to i64
  %".858" = add i64 %".857", 0
  %"for_LDG.49" = inttoptr i64 %".858" to ptr
  %".859" = load float, ptr %"for_LDG.49"
  %".860" = bitcast ptr %"R9" to ptr
  store float %".859", ptr %".860"
  ; LDG.E.SYS R11, [R2+0x4]
  %".863" = load i32, ptr %"R2"
  %"zext.103" = zext i32 %".863" to i64
  %".864" = load i32, ptr %"R3"
  %"zext.104" = zext i32 %".864" to i64
  %"shl.50" = shl i64 %"zext.104", 32
  %"or.50" = or i64 %"shl.50", %"zext.103"
  %".865" = inttoptr i64 %"or.50" to ptr
  %".866" = ptrtoint ptr %".865" to i64
  %".867" = add i64 %".866", 4
  %"for_LDG.50" = inttoptr i64 %".867" to ptr
  %".868" = load float, ptr %"for_LDG.50"
  %".869" = bitcast ptr %"R11" to ptr
  store float %".868", ptr %".869"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".872" = load i32, ptr %"UR4"
  %"zext.105" = zext i32 %".872" to i64
  %".873" = load i32, ptr %"UR5"
  %"zext.106" = zext i32 %".873" to i64
  %"shl.51" = shl i64 %"zext.106", 32
  %"or.51" = or i64 %"shl.51", %"zext.105"
  %".874" = inttoptr i64 %"or.51" to ptr
  %".875" = ptrtoint ptr %".874" to i64
  %".876" = add i64 %".875", 4
  %"for_LDG.51" = inttoptr i64 %".876" to ptr
  %".877" = load float, ptr %"for_LDG.51"
  %".878" = bitcast ptr %"R10" to ptr
  store float %".877", ptr %".878"
  ; LDG.E.SYS R13, [R2+0x8]
  %".881" = load i32, ptr %"R2"
  %"zext.107" = zext i32 %".881" to i64
  %".882" = load i32, ptr %"R3"
  %"zext.108" = zext i32 %".882" to i64
  %"shl.52" = shl i64 %"zext.108", 32
  %"or.52" = or i64 %"shl.52", %"zext.107"
  %".883" = inttoptr i64 %"or.52" to ptr
  %".884" = ptrtoint ptr %".883" to i64
  %".885" = add i64 %".884", 8
  %"for_LDG.52" = inttoptr i64 %".885" to ptr
  %".886" = load float, ptr %"for_LDG.52"
  %".887" = bitcast ptr %"R13" to ptr
  store float %".886", ptr %".887"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".890" = load i32, ptr %"UR4"
  %"zext.109" = zext i32 %".890" to i64
  %".891" = load i32, ptr %"UR5"
  %"zext.110" = zext i32 %".891" to i64
  %"shl.53" = shl i64 %"zext.110", 32
  %"or.53" = or i64 %"shl.53", %"zext.109"
  %".892" = inttoptr i64 %"or.53" to ptr
  %".893" = ptrtoint ptr %".892" to i64
  %".894" = add i64 %".893", 8
  %"for_LDG.53" = inttoptr i64 %".894" to ptr
  %".895" = load float, ptr %"for_LDG.53"
  %".896" = bitcast ptr %"R12" to ptr
  store float %".895", ptr %".896"
  ; LDG.E.SYS R15, [R2+0xc]
  %".899" = load i32, ptr %"R2"
  %"zext.111" = zext i32 %".899" to i64
  %".900" = load i32, ptr %"R3"
  %"zext.112" = zext i32 %".900" to i64
  %"shl.54" = shl i64 %"zext.112", 32
  %"or.54" = or i64 %"shl.54", %"zext.111"
  %".901" = inttoptr i64 %"or.54" to ptr
  %".902" = ptrtoint ptr %".901" to i64
  %".903" = add i64 %".902", 12
  %"for_LDG.54" = inttoptr i64 %".903" to ptr
  %".904" = load float, ptr %"for_LDG.54"
  %".905" = bitcast ptr %"R15" to ptr
  store float %".904", ptr %".905"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".908" = load i32, ptr %"UR4"
  %"zext.113" = zext i32 %".908" to i64
  %".909" = load i32, ptr %"UR5"
  %"zext.114" = zext i32 %".909" to i64
  %"shl.55" = shl i64 %"zext.114", 32
  %"or.55" = or i64 %"shl.55", %"zext.113"
  %".910" = inttoptr i64 %"or.55" to ptr
  %".911" = ptrtoint ptr %".910" to i64
  %".912" = add i64 %".911", 12
  %"for_LDG.55" = inttoptr i64 %".912" to ptr
  %".913" = load float, ptr %"for_LDG.55"
  %".914" = bitcast ptr %"R14" to ptr
  store float %".913", ptr %".914"
  ; IADD3 R6, R6, -0x4, RZ
  %".917" = load i32, ptr %"R6"
  %".918" = add i32 %".917", -4
  %".919" = add i32 %".918", 0
  store i32 %".919", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".922" = load i32, ptr %"UR4"
  %".923" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".922", i32 16)
  %".924" = extractvalue {i32, i1} %".923", 0
  %".925" = extractvalue {i32, i1} %".923", 1
  %".926" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".924", i32 0)
  %".927" = extractvalue {i32, i1} %".926", 0
  %".928" = extractvalue {i32, i1} %".926", 1
  %".929" = or i1 %".925", %".928"
  store i32 %".927", ptr %"UR4"
  store i1 %".929", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".933" = load i32, ptr %"R5"
  %".934" = add i32 %".933", 4
  %".935" = add i32 %".934", 0
  store i32 %".935", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".938" = load i32, ptr %"R6"
  %".939" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".938", 0
  %".940" = add i1 %"cmp.8", 0
  %".941" = and i1 %"cmp.8", %".939"
  %".942" = and i1 %".940", %".939"
  store i1 %".941", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".945" = load i32, ptr %"UR5"
  %".946" = load i1, ptr %"UP0"
  %".947" = xor i1 1, -1
  %".948" = zext i1 %".946" to i32
  %".949" = zext i1 %".947" to i32
  %"add.19" = add i32 0, %".945"
  %"add.20" = add i32 %"add.19", 0
  %"add.21" = add i32 %"add.20", %".948"
  %"add.22" = add i32 %"add.21", %".949"
  store i32 %"add.22", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".952" = load float, ptr %"R8"
  %".953" = load float, ptr %"R9"
  %".954" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".952", %".953"
  %"fadd.24" = fadd float %"fmul.24", %".954"
  %".955" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".955"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".958" = load i32, ptr %"R2"
  %".959" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".958", i32 16)
  %".960" = extractvalue {i32, i1} %".959", 0
  %".961" = extractvalue {i32, i1} %".959", 1
  %".962" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".960", i32 0)
  %".963" = extractvalue {i32, i1} %".962", 0
  %".964" = extractvalue {i32, i1} %".962", 1
  %".965" = or i1 %".961", %".964"
  store i32 %".963", ptr %"R9"
  store i1 %".965", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".969" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.23" = add i32 %"mul.6", %".969"
  store i32 %"add.23", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".972" = load float, ptr %"R11"
  %".973" = load float, ptr %"R10"
  %".974" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".972", %".973"
  %"fadd.25" = fadd float %"fmul.25", %".974"
  %".975" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".975"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".978" = load i32, ptr %"R3"
  %".979" = load i1, ptr %"P1"
  %".980" = xor i1 1, -1
  %".981" = zext i1 %".979" to i32
  %".982" = zext i1 %".980" to i32
  %"add.24" = add i32 0, %".978"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".981"
  %"add.27" = add i32 %"add.26", %".982"
  store i32 %"add.27", ptr %"R10"
  ; MOV R3, R10
  %".985" = load i32, ptr %"R10"
  store i32 %".985", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".988" = load float, ptr %"R13"
  %".989" = load float, ptr %"R12"
  %".990" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".988", %".989"
  %"fadd.26" = fadd float %"fmul.26", %".990"
  %".991" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".991"
  ; FFMA R7, R15, R14, R8
  %".994" = load float, ptr %"R15"
  %".995" = load float, ptr %"R14"
  %".996" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".994", %".995"
  %"fadd.27" = fadd float %"fmul.27", %".996"
  %".997" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".997"
  ; @P0 BRA `(.L_x_2)
  %".1000" = load i1, ptr %"P0"
  %".1001" = icmp eq i1 %".1000", 1
  br i1 %".1001", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1004" = load i32, ptr %"R4"
  %".1005" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".1004", 0
  %".1006" = add i1 %"cmp.9", 0
  %".1007" = and i1 %"cmp.9", %".1005"
  %".1008" = and i1 %".1006", %".1005"
  store i1 %".1007", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".1011" = load i1, ptr %"P0"
  %".1012" = icmp ne i1 %".1011", 1
  br i1 %".1012", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".1017" = load i32, ptr %"R0"
  %".1018" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".1017", %"Arg_4"
  %"add.28" = add i32 %"mul.7", %".1018"
  store i32 %"add.28", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".1021" = load i32, ptr %"R2"
  %".1022" = load i32, ptr %"R8"
  %"zext.115" = zext i32 %".1021" to i64
  %"zext.116" = zext i32 %".1022" to i64
  %"mul.8" = mul i64 %"zext.115", %"zext.116"
  %".1023" = ptrtoint ptr %"Arg_1" to i64
  %"add.29" = add i64 %"mul.8", %".1023"
  %".1024" = and i64 %"add.29", 18446744069414584320
  %".1025" = lshr i64 %".1024", 32
  %"trunc32.4" = trunc i64 %".1025" to i32
  %"trunc32.5" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".1029" = load i32, ptr %"R5"
  %".1030" = load i32, ptr %"R8"
  %"zext.117" = zext i32 %".1029" to i64
  %"zext.118" = zext i32 %".1030" to i64
  %"mul.9" = mul i64 %"zext.117", %"zext.118"
  %".1031" = ptrtoint ptr %"Arg_0" to i64
  %"add.30" = add i64 %"mul.9", %".1031"
  %".1032" = and i64 %"add.30", 18446744069414584320
  %".1033" = lshr i64 %".1032", 32
  %"trunc32.6" = trunc i64 %".1033" to i32
  %"trunc32.7" = trunc i64 %"add.30" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".1037" = load i32, ptr %"R2"
  store i32 %".1037", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".1041" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.31" = add i32 %"mul.10", %".1041"
  store i32 %"add.31", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".1044" = load i32, ptr %"R8"
  %"zext.119" = zext i32 %".1044" to i64
  %".1045" = load i32, ptr %"R9"
  %"zext.120" = zext i32 %".1045" to i64
  %"shl.56" = shl i64 %"zext.120", 32
  %"or.56" = or i64 %"shl.56", %"zext.119"
  %".1046" = inttoptr i64 %"or.56" to ptr
  %".1047" = ptrtoint ptr %".1046" to i64
  %".1048" = add i64 %".1047", 0
  %"for_LDG.56" = inttoptr i64 %".1048" to ptr
  %".1049" = load float, ptr %"for_LDG.56"
  %".1050" = bitcast ptr %"R5" to ptr
  store float %".1049", ptr %".1050"
  ; LDG.E.SYS R2, [R2]
  %".1053" = load i32, ptr %"R2"
  %"zext.121" = zext i32 %".1053" to i64
  %".1054" = load i32, ptr %"R3"
  %"zext.122" = zext i32 %".1054" to i64
  %"shl.57" = shl i64 %"zext.122", 32
  %"or.57" = or i64 %"shl.57", %"zext.121"
  %".1055" = inttoptr i64 %"or.57" to ptr
  %".1056" = ptrtoint ptr %".1055" to i64
  %".1057" = add i64 %".1056", 0
  %"for_LDG.57" = inttoptr i64 %".1057" to ptr
  %".1058" = load float, ptr %"for_LDG.57"
  %".1059" = bitcast ptr %"R2" to ptr
  store float %".1058", ptr %".1059"
  ; IADD3 R4, R4, -0x1, RZ
  %".1062" = load i32, ptr %"R4"
  %".1063" = add i32 %".1062", -1
  %".1064" = add i32 %".1063", 0
  store i32 %".1064", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1067" = load i32, ptr %"R4"
  %".1068" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".1067", 0
  %".1069" = add i1 %"cmp.10", 0
  %".1070" = and i1 %"cmp.10", %".1068"
  %".1071" = and i1 %".1069", %".1068"
  store i1 %".1070", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".1074" = load i32, ptr %"R6"
  %".1075" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1074", i32 4)
  %".1076" = extractvalue {i32, i1} %".1075", 0
  %".1077" = extractvalue {i32, i1} %".1075", 1
  %".1078" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1076", i32 0)
  %".1079" = extractvalue {i32, i1} %".1078", 0
  %".1080" = extractvalue {i32, i1} %".1078", 1
  %".1081" = or i1 %".1077", %".1080"
  store i32 %".1079", ptr %"R6"
  store i1 %".1081", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".1085" = load i32, ptr %"R8"
  %".1086" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1085", i32 4)
  %".1087" = extractvalue {i32, i1} %".1086", 0
  %".1088" = extractvalue {i32, i1} %".1086", 1
  %".1089" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1087", i32 0)
  %".1090" = extractvalue {i32, i1} %".1089", 0
  %".1091" = extractvalue {i32, i1} %".1089", 1
  %".1092" = or i1 %".1088", %".1091"
  store i32 %".1090", ptr %"R8"
  store i1 %".1092", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".1096" = load i32, ptr %"R3"
  %".1097" = load i1, ptr %"P1"
  %".1098" = xor i1 1, -1
  %".1099" = zext i1 %".1097" to i32
  %".1100" = zext i1 %".1098" to i32
  %"add.32" = add i32 0, %".1096"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".1099"
  %"add.35" = add i32 %"add.34", %".1100"
  store i32 %"add.35", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".1103" = load i32, ptr %"R9"
  %".1104" = load i1, ptr %"P2"
  %".1105" = xor i1 1, -1
  %".1106" = zext i1 %".1104" to i32
  %".1107" = zext i1 %".1105" to i32
  %"add.36" = add i32 0, %".1103"
  %"add.37" = add i32 %"add.36", 0
  %"add.38" = add i32 %"add.37", %".1106"
  %"add.39" = add i32 %"add.38", %".1107"
  store i32 %"add.39", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".1110" = load float, ptr %"R2"
  %".1111" = load float, ptr %"R5"
  %".1112" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".1110", %".1111"
  %"fadd.28" = fadd float %"fmul.28", %".1112"
  %".1113" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".1113"
  ; @P0 BRA `(.L_x_6)
  %".1116" = load i1, ptr %"P0"
  %".1117" = icmp eq i1 %".1116", 1
  br i1 %".1117", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".1122" = load i32, ptr %"R0"
  %".1123" = load i32, ptr %"R5"
  %"zext.123" = zext i32 %".1122" to i64
  %"zext.124" = zext i32 %".1123" to i64
  %"mul.11" = mul i64 %"zext.123", %"zext.124"
  %".1124" = ptrtoint ptr %"Arg_2" to i64
  %"add.40" = add i64 %"mul.11", %".1124"
  %".1125" = and i64 %"add.40", 18446744069414584320
  %".1126" = lshr i64 %".1125", 32
  %"trunc32.8" = trunc i64 %".1126" to i32
  %"trunc32.9" = trunc i64 %"add.40" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".1130" = load i32, ptr %"R2"
  %"zext.125" = zext i32 %".1130" to i64
  %".1131" = load i32, ptr %"R3"
  %"zext.126" = zext i32 %".1131" to i64
  %"shl.58" = shl i64 %"zext.126", 32
  %"or.58" = or i64 %"shl.58", %"zext.125"
  %".1132" = inttoptr i64 %"or.58" to ptr
  %".1133" = ptrtoint ptr %".1132" to i64
  %".1134" = add i64 %".1133", 0
  %"for_LDG.58" = inttoptr i64 %".1134" to ptr
  %".1135" = load float, ptr %"for_LDG.58"
  %".1136" = bitcast ptr %"R2" to ptr
  store float %".1135", ptr %".1136"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1139" = load i32, ptr %"R0"
  %".1140" = load i32, ptr %"R5"
  %"zext.127" = zext i32 %".1139" to i64
  %"zext.128" = zext i32 %".1140" to i64
  %"mul.12" = mul i64 %"zext.127", %"zext.128"
  %".1141" = ptrtoint ptr %"Arg_3" to i64
  %"add.41" = add i64 %"mul.12", %".1141"
  %".1142" = and i64 %"add.41", 18446744069414584320
  %".1143" = lshr i64 %".1142", 32
  %"trunc32.10" = trunc i64 %".1143" to i32
  %"trunc32.11" = trunc i64 %"add.41" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".1147" = load float, ptr %"R2"
  %".1148" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1147", %".1148"
  %".1149" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1149"
  ; STG.E.SYS [R4], R7
  %".1152" = load float, ptr %"R7"
  %".1153" = load i32, ptr %"R4"
  %"zext.129" = zext i32 %".1153" to i64
  %".1154" = load i32, ptr %"R5"
  %"zext.130" = zext i32 %".1154" to i64
  %"shl.59" = shl i64 %"zext.130", 32
  %"or.59" = or i64 %"shl.59", %"zext.129"
  %".1155" = inttoptr i64 %"or.59" to ptr
  %".1156" = ptrtoint ptr %".1155" to i64
  %".1157" = add i64 %".1156", 0
  %"for_STG" = inttoptr i64 %".1157" to ptr
  store float %".1152", ptr %"for_STG"
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
  %".52" = bitcast ptr %"R3" to ptr
  store float %".51", ptr %".52"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R2"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".57" = load i32, ptr %"R3"
  %".58" = sub i32 0, %".57"
  %"mul.2" = mul i32 0, 0
  %"add.2" = add i32 %"mul.2", %".58"
  store i32 %"add.2", ptr %"R4"
  ; IMAD R5, R4, R7, RZ
  %".61" = load i32, ptr %"R4"
  %".62" = load i32, ptr %"R7"
  %"mul.3" = mul i32 %".61", %".62"
  %"add.3" = add i32 %"mul.3", 0
  store i32 %"add.3", ptr %"R5"
  ; IABS R4, c[0x0][0x170]
  %".65" = icmp sge i32 %"Arg_2", 0
  %".66" = sub i32 0, %"Arg_2"
  %"iabs.1" = select  i1 %".65", i32 %"Arg_2", i32 %".66"
  store i32 %"iabs.1", ptr %"R4"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".69" = load i32, ptr %"R3"
  %".70" = load i32, ptr %"R5"
  %".71" = load i32, ptr %"R2"
  %"mul.4" = mul i32 %".69", %".70"
  %"add.4" = add i32 %"mul.4", %".71"
  store i32 %"add.4", ptr %"R3"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".76" = load i32, ptr %"R3"
  %".77" = load i32, ptr %"R4"
  %"mul.5" = mul i32 %".76", %".77"
  %"add.5" = add i32 %"mul.5", 0
  store i32 %"add.5", ptr %"R3"
  ; S2R R5, SR_TID.X
  %"ThreadIdx" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx", ptr %"R5"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".82" = load i32, ptr %"R3"
  %".83" = sub i32 0, %".82"
  %"mul.6" = mul i32 0, 0
  %"add.6" = add i32 %"mul.6", %".83"
  store i32 %"add.6", ptr %"R0"
  ; IMAD R0, R7, R0, R4
  %".86" = load i32, ptr %"R7"
  %".87" = load i32, ptr %"R0"
  %".88" = load i32, ptr %"R4"
  %"mul.7" = mul i32 %".86", %".87"
  %"add.7" = add i32 %"mul.7", %".88"
  store i32 %"add.7", ptr %"R0"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".91" = load i32, ptr %"R7"
  %".92" = load i32, ptr %"R0"
  %".93" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".91", %".92"
  %".94" = add i1 %"cmp.1", 0
  %".95" = and i1 %"cmp.1", %".93"
  %".96" = and i1 %".94", %".93"
  store i1 %".95", ptr %"P2"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ
  %".99" = load i1, ptr %"P2"
  %".100" = icmp ne i1 %".99", 1
  br i1 %".100", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".103" = load i32, ptr %"R0"
  %".104" = load i32, ptr %"R7"
  %".105" = sub i32 0, %".104"
  %".106" = add i32 %".103", %".105"
  %".107" = add i32 %".106", 0
  store i32 %".107", ptr %"R0"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ
  %".112" = load i1, ptr %"P2"
  %".113" = icmp ne i1 %".112", 1
  br i1 %".113", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".116" = load i32, ptr %"R3"
  %".117" = add i32 %".116", 1
  %".118" = add i32 %".117", 0
  store i32 %".118", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".123" = load i32, ptr %"R0"
  %".124" = load i32, ptr %"R7"
  %".125" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".123", %".124"
  %".126" = add i1 %"cmp.2", 0
  %".127" = and i1 %"cmp.2", %".125"
  %".128" = and i1 %".126", %".125"
  store i1 %".127", ptr %"P0"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".131" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".132" = load i32, ptr %"R5"
  %"mul.8" = mul i32 %".131", %"nvvm_blockdim_x"
  %"add.8" = add i32 %"mul.8", %".132"
  store i32 %"add.8", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.1" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx.1", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".137" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_3"
  %".138" = add i1 %"cmp.3", 0
  %".139" = and i1 %"cmp.3", %".137"
  %".140" = and i1 %".138", %".137"
  store i1 %".139", ptr %"P2"
  ; @P0 IADD3 R3, R3, 0x1, RZ
  %".143" = load i1, ptr %"P0"
  %".144" = icmp eq i1 %".143", 1
  br i1 %".144", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".147" = load i32, ptr %"R3"
  %".148" = add i32 %".147", 1
  %".149" = add i32 %".148", 0
  store i32 %".149", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".154" = load i32, ptr %"R3"
  %"mul.9" = mul i32 0, 0
  %"add.9" = add i32 %"mul.9", %".154"
  store i32 %"add.9", ptr %"R21"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21
  %".157" = load i1, ptr %"P1"
  %".158" = icmp ne i1 %".157", 1
  br i1 %".158", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".161" = load i32, ptr %"R21"
  %".162" = sub i32 0, %".161"
  %"mul.10" = mul i32 0, 0
  %"add.10" = add i32 %"mul.10", %".162"
  store i32 %"add.10", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".167" = load i1, ptr %"P2"
  %".168" = icmp ne i1 %".167", 1
  br i1 %".168", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".171" = xor i1 1, -1
  %".172" = xor i32 %"Arg_3", -1
  store i32 %".172", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".177" = load i32, ptr %"R10"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".178" = load i32, ptr %"R7"
  %"mul.11" = mul i32 %".177", %"nvvm_blockdim_y"
  %"add.11" = add i32 %"mul.11", %".178"
  store i32 %"add.11", ptr %"R10"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".181" = load i32, ptr %"R0"
  %".182" = load i32, ptr %"R21"
  %".183" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".181", %".182"
  %".184" = add i1 %"cmp.4", 0
  %".185" = and i1 %"cmp.4", %".183"
  %".186" = and i1 %".184", %".183"
  store i1 %".185", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".189" = load i32, ptr %"R10"
  %".190" = load i32, ptr %"R21"
  %".191" = load i1, ptr %"P0"
  %"cmp.5" = icmp sge i32 %".189", %".190"
  %".192" = add i1 %"cmp.5", 0
  %".193" = or i1 %"cmp.5", %".191"
  %".194" = or i1 %".192", %".191"
  store i1 %".193", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".197" = load i32, ptr %"R19"
  %".198" = load i1, ptr %"P0"
  %"cmp.6" = icmp sge i32 %".197", %"Arg_4"
  %".199" = add i1 %"cmp.6", 0
  %".200" = or i1 %"cmp.6", %".198"
  %".201" = or i1 %".199", %".198"
  store i1 %".200", ptr %"P0"
  ; @P0 EXIT
  %".204" = load i1, ptr %"P0"
  %".205" = icmp eq i1 %".204", 1
  br i1 %".205", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
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
  %".214" = load i32, ptr %"R15"
  %".215" = load i1, ptr %"PT"
  %"cmp.7" = icmp sge i32 %".214", 1
  %".216" = add i1 %"cmp.7", 0
  %".217" = and i1 %"cmp.7", %".215"
  %".218" = and i1 %".216", %".215"
  store i1 %".217", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".221" = load i1, ptr %"P0"
  %".222" = icmp ne i1 %".221", 1
  br i1 %".222", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".225" = load i32, ptr %"R19"
  %"mul.13" = mul i32 %".225", %"Arg_2"
  %"add.13" = add i32 %"mul.13", 0
  store i32 %"add.13", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".228" = load i32, ptr %"R15"
  %".229" = add i32 %".228", -1
  %".230" = add i32 %".229", 0
  store i32 %".230", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".233" = load i32, ptr %"R0"
  %"mul.14" = mul i32 %".233", %"Arg_3"
  %"add.14" = add i32 %"mul.14", 0
  store i32 %"add.14", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".236" = load i32, ptr %"R15"
  %".237" = xor i1 1, -1
  %".238" = and i32 %".236", 3
  store i32 %".238", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".241" = load i32, ptr %"R10"
  %".242" = load i32, ptr %"R3"
  %"mul.15" = mul i32 %".241", %"Arg_3"
  %"add.15" = add i32 %"mul.15", %".242"
  store i32 %"add.15", ptr %"R12"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".245" = load i32, ptr %"R2"
  %".246" = load i1, ptr %"PT"
  %"cmp.8" = icmp sge i32 %".245", 3
  %".247" = add i1 %"cmp.8", 0
  %".248" = and i1 %"cmp.8", %".246"
  %".249" = and i1 %".247", %".246"
  store i1 %".248", ptr %"P0"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.16" = add i32 %"mul.16", -8388608
  store i32 %"add.16", ptr %"R11"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".254" = load i32, ptr %"R15"
  %".255" = sub i32 0, %"Arg_3"
  %".256" = add i32 %".254", %".255"
  %".257" = add i32 %".256", 0
  store i32 %".257", ptr %"R20"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.17" = add i32 %"mul.17", 0
  store i32 %"add.17", ptr %"R16"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".262" = load i32, ptr %"R12"
  %".263" = load i32, ptr %"R13"
  %"mul.18" = mul i32 %".262", %"Arg_2"
  %"add.18" = add i32 %"mul.18", %".263"
  store i32 %"add.18", ptr %"R14"
  br label %".L_x_12"
.L_x_12:
  ; UMOV UR4, URZ
  %".267" = load i32, ptr %"URZ"
  store i32 %".267", ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".270" = load i32, ptr %"R15"
  %".271" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".270", 0
  %".272" = add i1 %"cmp.9", 0
  %".273" = and i1 %"cmp.9", %".271"
  %".274" = and i1 %".272", %".271"
  store i1 %".273", ptr %"P2"
  ; @!P0 BRA `(.L_x_9)
  %".277" = load i1, ptr %"P0"
  %".278" = icmp ne i1 %".277", 1
  br i1 %".278", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".281" = load i32, ptr %"R14"
  %".282" = load i32, ptr %"R16"
  %"mul.19" = mul i32 %".281", 1
  %"add.19" = add i32 %"mul.19", %".282"
  store i32 %"add.19", ptr %"R17"
  ; UMOV UR4, URZ
  %".285" = load i32, ptr %"URZ"
  store i32 %".285", ptr %"UR4"
  br label %".L_x_10"
.L_x_10:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.20" = add i32 %"mul.20", %"Arg_2"
  store i32 %"add.20", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".293" = load i32, ptr %"R17"
  %".294" = load i32, ptr %"R2"
  %"zext" = zext i32 %".293" to i64
  %"zext.1" = zext i32 %".294" to i64
  %"mul.21" = mul i64 %"zext", %"zext.1"
  %".295" = ptrtoint ptr %"Arg_0" to i64
  %"add.21" = add i64 %"mul.21", %".295"
  %".296" = and i64 %"add.21", 18446744069414584320
  %".297" = lshr i64 %".296", 32
  %"trunc32" = trunc i64 %".297" to i32
  %"trunc32.1" = trunc i64 %"add.21" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".301" = load i32, ptr %"R23"
  %".302" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".301" to i64
  %"zext.3" = zext i32 4 to i64
  %"mul.22" = mul i64 %"zext.2", %"zext.3"
  %"zext.4" = zext i32 %".302" to i64
  %"add.22" = add i64 %"mul.22", %"zext.4"
  %".303" = and i64 %"add.22", 18446744069414584320
  %".304" = lshr i64 %".303", 32
  %"trunc32.2" = trunc i64 %".304" to i32
  %"trunc32.3" = trunc i64 %"add.22" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; LDG.E.SYS R2, [R2]
  %".308" = load i32, ptr %"R2"
  %"zext.5" = zext i32 %".308" to i64
  %".309" = load i32, ptr %"R3"
  %"zext.6" = zext i32 %".309" to i64
  %"shl" = shl i64 %"zext.6", 32
  %"or" = or i64 %"shl", %"zext.5"
  %".310" = inttoptr i64 %"or" to ptr
  %".311" = ptrtoint ptr %".310" to i64
  %".312" = add i64 %".311", 0
  %"for_LDG" = inttoptr i64 %".312" to ptr
  %".313" = load float, ptr %"for_LDG"
  %".314" = bitcast ptr %"R2" to ptr
  store float %".313", ptr %".314"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".317" = load i32, ptr %"R23"
  %".318" = load i32, ptr %"R4"
  %"zext.7" = zext i32 %".317" to i64
  %"zext.8" = zext i32 4 to i64
  %"mul.23" = mul i64 %"zext.7", %"zext.8"
  %"zext.9" = zext i32 %".318" to i64
  %"add.23" = add i64 %"mul.23", %"zext.9"
  %".319" = and i64 %"add.23", 18446744069414584320
  %".320" = lshr i64 %".319", 32
  %"trunc32.4" = trunc i64 %".320" to i32
  %"trunc32.5" = trunc i64 %"add.23" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".324" = load i32, ptr %"R4"
  %"zext.10" = zext i32 %".324" to i64
  %".325" = load i32, ptr %"R5"
  %"zext.11" = zext i32 %".325" to i64
  %"shl.1" = shl i64 %"zext.11", 32
  %"or.1" = or i64 %"shl.1", %"zext.10"
  %".326" = inttoptr i64 %"or.1" to ptr
  %".327" = ptrtoint ptr %".326" to i64
  %".328" = add i64 %".327", 0
  %"for_LDG.1" = inttoptr i64 %".328" to ptr
  %".329" = load float, ptr %"for_LDG.1"
  %".330" = bitcast ptr %"R4" to ptr
  store float %".329", ptr %".330"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".333" = load i32, ptr %"R23"
  %".334" = load i32, ptr %"R6"
  %"zext.12" = zext i32 %".333" to i64
  %"zext.13" = zext i32 4 to i64
  %"mul.24" = mul i64 %"zext.12", %"zext.13"
  %"zext.14" = zext i32 %".334" to i64
  %"add.24" = add i64 %"mul.24", %"zext.14"
  %".335" = and i64 %"add.24", 18446744069414584320
  %".336" = lshr i64 %".335", 32
  %"trunc32.6" = trunc i64 %".336" to i32
  %"trunc32.7" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".340" = load i32, ptr %"R6"
  %"zext.15" = zext i32 %".340" to i64
  %".341" = load i32, ptr %"R7"
  %"zext.16" = zext i32 %".341" to i64
  %"shl.2" = shl i64 %"zext.16", 32
  %"or.2" = or i64 %"shl.2", %"zext.15"
  %".342" = inttoptr i64 %"or.2" to ptr
  %".343" = ptrtoint ptr %".342" to i64
  %".344" = add i64 %".343", 0
  %"for_LDG.2" = inttoptr i64 %".344" to ptr
  %".345" = load float, ptr %"for_LDG.2"
  %".346" = bitcast ptr %"R6" to ptr
  store float %".345", ptr %".346"
  ; LDG.E.SYS R8, [R8]
  %".349" = load i32, ptr %"R8"
  %"zext.17" = zext i32 %".349" to i64
  %".350" = load i32, ptr %"R9"
  %"zext.18" = zext i32 %".350" to i64
  %"shl.3" = shl i64 %"zext.18", 32
  %"or.3" = or i64 %"shl.3", %"zext.17"
  %".351" = inttoptr i64 %"or.3" to ptr
  %".352" = ptrtoint ptr %".351" to i64
  %".353" = add i64 %".352", 0
  %"for_LDG.3" = inttoptr i64 %".353" to ptr
  %".354" = load float, ptr %"for_LDG.3"
  %".355" = bitcast ptr %"R8" to ptr
  store float %".354", ptr %".355"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".358" = load i32, ptr %"UR4"
  %".359" = add i32 %".358", 4
  %".360" = add i32 %".359", 0
  store i32 %".360", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".363" = load i32, ptr %"R20"
  %".364" = load i32, ptr %"UR4"
  %".365" = add i32 %".363", %".364"
  %".366" = add i32 %".365", 0
  store i32 %".366", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".369" = load i32, ptr %"R18"
  %".370" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".369", 0
  %".371" = add i1 %"cmp.10", 0
  %".372" = and i1 %"cmp.10", %".370"
  %".373" = and i1 %".371", %".370"
  store i1 %".372", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".376" = load i32, ptr %"R23"
  %".377" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".376", 4
  %"add.25" = add i32 %"mul.25", %".377"
  store i32 %"add.25", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".380" = load float, ptr %"R2"
  %".381" = load float, ptr %"R11"
  %".382" = xor i1 1, -1
  %".383" = fcmp olt float %".380", %".381"
  %"fmnmx_min" = select  i1 %".383", float %".380", float %".381"
  %".384" = fcmp ogt float %".380", %".381"
  %"fmnmx_max" = select  i1 %".384", float %".380", float %".381"
  %"fmnmx_final" = select  i1 %".382", float %"fmnmx_min", float %"fmnmx_max"
  %".385" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final", ptr %".385"
  ; FMNMX R11, R11, R4, !PT
  %".388" = load float, ptr %"R11"
  %".389" = load float, ptr %"R4"
  %".390" = xor i1 1, -1
  %".391" = fcmp olt float %".388", %".389"
  %"fmnmx_min.1" = select  i1 %".391", float %".388", float %".389"
  %".392" = fcmp ogt float %".388", %".389"
  %"fmnmx_max.1" = select  i1 %".392", float %".388", float %".389"
  %"fmnmx_final.1" = select  i1 %".390", float %"fmnmx_min.1", float %"fmnmx_max.1"
  %".393" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.1", ptr %".393"
  ; FMNMX R11, R11, R6, !PT
  %".396" = load float, ptr %"R11"
  %".397" = load float, ptr %"R6"
  %".398" = xor i1 1, -1
  %".399" = fcmp olt float %".396", %".397"
  %"fmnmx_min.2" = select  i1 %".399", float %".396", float %".397"
  %".400" = fcmp ogt float %".396", %".397"
  %"fmnmx_max.2" = select  i1 %".400", float %".396", float %".397"
  %"fmnmx_final.2" = select  i1 %".398", float %"fmnmx_min.2", float %"fmnmx_max.2"
  %".401" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.2", ptr %".401"
  ; FMNMX R11, R11, R8, !PT
  %".404" = load float, ptr %"R11"
  %".405" = load float, ptr %"R8"
  %".406" = xor i1 1, -1
  %".407" = fcmp olt float %".404", %".405"
  %"fmnmx_min.3" = select  i1 %".407", float %".404", float %".405"
  %".408" = fcmp ogt float %".404", %".405"
  %"fmnmx_max.3" = select  i1 %".408", float %".404", float %".405"
  %"fmnmx_final.3" = select  i1 %".406", float %"fmnmx_min.3", float %"fmnmx_max.3"
  %".409" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.3", ptr %".409"
  ; @P1 BRA `(.L_x_10)
  %".412" = load i1, ptr %"P1"
  %".413" = icmp eq i1 %".412", 1
  br i1 %".413", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".416" = load i32, ptr %"R13"
  %".417" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".416", 1
  %"add.26" = add i32 %"mul.26", %".417"
  store i32 %"add.26", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".420" = load i1, ptr %"P2"
  %".421" = icmp ne i1 %".420", 1
  br i1 %".421", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".424" = load i32, ptr %"R12"
  %".425" = load i32, ptr %"UR4"
  %".426" = add i32 %".424", %".425"
  %".427" = add i32 %".426", 0
  store i32 %".427", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".432" = load i32, ptr %"R5"
  %".433" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".432", %"Arg_2"
  %"add.27" = add i32 %"mul.27", %".433"
  store i32 %"add.27", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".436" = load i32, ptr %"R2"
  %".437" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".436" to i64
  %"zext.20" = zext i32 %".437" to i64
  %"mul.28" = mul i64 %"zext.19", %"zext.20"
  %".438" = ptrtoint ptr %"Arg_0" to i64
  %"add.28" = add i64 %"mul.28", %".438"
  %".439" = and i64 %"add.28", 18446744069414584320
  %".440" = lshr i64 %".439", 32
  %"trunc32.8" = trunc i64 %".440" to i32
  %"trunc32.9" = trunc i64 %"add.28" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".444" = load i32, ptr %"R2"
  %"zext.21" = zext i32 %".444" to i64
  %".445" = load i32, ptr %"R3"
  %"zext.22" = zext i32 %".445" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".446" = inttoptr i64 %"or.4" to ptr
  %".447" = ptrtoint ptr %".446" to i64
  %".448" = add i64 %".447", 0
  %"for_LDG.4" = inttoptr i64 %".448" to ptr
  %".449" = load float, ptr %"for_LDG.4"
  %".450" = bitcast ptr %"R2" to ptr
  store float %".449", ptr %".450"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".453" = load i32, ptr %"R15"
  %".454" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".453", 1
  %".455" = add i1 %"cmp.11", 0
  %".456" = and i1 %"cmp.11", %".454"
  %".457" = and i1 %".455", %".454"
  store i1 %".456", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".460" = load float, ptr %"R11"
  %".461" = load float, ptr %"R2"
  %".462" = xor i1 1, -1
  %".463" = fcmp olt float %".460", %".461"
  %"fmnmx_min.4" = select  i1 %".463", float %".460", float %".461"
  %".464" = fcmp ogt float %".460", %".461"
  %"fmnmx_max.4" = select  i1 %".464", float %".460", float %".461"
  %"fmnmx_final.4" = select  i1 %".462", float %"fmnmx_min.4", float %"fmnmx_max.4"
  %".465" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.4", ptr %".465"
  ; @!P1 BRA `(.L_x_11)
  %".468" = load i1, ptr %"P1"
  %".469" = icmp ne i1 %".468", 1
  br i1 %".469", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".472" = load i32, ptr %"R15"
  %".473" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".472", 2
  %".474" = add i1 %"cmp.12", 0
  %".475" = and i1 %"cmp.12", %".473"
  %".476" = and i1 %".474", %".473"
  store i1 %".475", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".479" = load i32, ptr %"R5"
  %".480" = add i32 %".479", 1
  %".481" = add i32 %".480", 0
  store i32 %".481", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".484" = load i32, ptr %"R2"
  %".485" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".484", %"Arg_2"
  %"add.29" = add i32 %"mul.29", %".485"
  store i32 %"add.29", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".488" = load i1, ptr %"P1"
  %".489" = icmp eq i1 %".488", 1
  br i1 %".489", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".492" = load i32, ptr %"R5"
  %".493" = add i32 %".492", 2
  %".494" = add i32 %".493", 0
  store i32 %".494", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".499" = load i1, ptr %"P1"
  %".500" = icmp eq i1 %".499", 1
  br i1 %".500", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".503" = load i32, ptr %"R3"
  %".504" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".503", %"Arg_2"
  %"add.30" = add i32 %"mul.30", %".504"
  store i32 %"add.30", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".509" = load i32, ptr %"R2"
  %".510" = load i32, ptr %"R7"
  %"zext.23" = zext i32 %".509" to i64
  %"zext.24" = zext i32 %".510" to i64
  %"mul.31" = mul i64 %"zext.23", %"zext.24"
  %".511" = ptrtoint ptr %"Arg_0" to i64
  %"add.31" = add i64 %"mul.31", %".511"
  %".512" = and i64 %"add.31", 18446744069414584320
  %".513" = lshr i64 %".512", 32
  %"trunc32.10" = trunc i64 %".513" to i32
  %"trunc32.11" = trunc i64 %"add.31" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".517" = load i1, ptr %"P1"
  %".518" = icmp eq i1 %".517", 1
  br i1 %".518", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".521" = load i32, ptr %"R4"
  %".522" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".521" to i64
  %"zext.26" = zext i32 %".522" to i64
  %"mul.32" = mul i64 %"zext.25", %"zext.26"
  %".523" = ptrtoint ptr %"Arg_0" to i64
  %"add.32" = add i64 %"mul.32", %".523"
  %".524" = and i64 %"add.32", 18446744069414584320
  %".525" = lshr i64 %".524", 32
  %"trunc32.12" = trunc i64 %".525" to i32
  %"trunc32.13" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".531" = load i32, ptr %"R2"
  %"zext.27" = zext i32 %".531" to i64
  %".532" = load i32, ptr %"R3"
  %"zext.28" = zext i32 %".532" to i64
  %"shl.5" = shl i64 %"zext.28", 32
  %"or.5" = or i64 %"shl.5", %"zext.27"
  %".533" = inttoptr i64 %"or.5" to ptr
  %".534" = ptrtoint ptr %".533" to i64
  %".535" = add i64 %".534", 0
  %"for_LDG.5" = inttoptr i64 %".535" to ptr
  %".536" = load float, ptr %"for_LDG.5"
  %".537" = bitcast ptr %"R2" to ptr
  store float %".536", ptr %".537"
  ; @P1 LDG.E.SYS R4, [R4]
  %".540" = load i1, ptr %"P1"
  %".541" = icmp eq i1 %".540", 1
  br i1 %".541", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".544" = load i32, ptr %"R4"
  %"zext.29" = zext i32 %".544" to i64
  %".545" = load i32, ptr %"R5"
  %"zext.30" = zext i32 %".545" to i64
  %"shl.6" = shl i64 %"zext.30", 32
  %"or.6" = or i64 %"shl.6", %"zext.29"
  %".546" = inttoptr i64 %"or.6" to ptr
  %".547" = ptrtoint ptr %".546" to i64
  %".548" = add i64 %".547", 0
  %"for_LDG.6" = inttoptr i64 %".548" to ptr
  %".549" = load float, ptr %"for_LDG.6"
  %".550" = bitcast ptr %"R4" to ptr
  store float %".549", ptr %".550"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".555" = load float, ptr %"R11"
  %".556" = load float, ptr %"R2"
  %".557" = xor i1 1, -1
  %".558" = fcmp olt float %".555", %".556"
  %"fmnmx_min.5" = select  i1 %".558", float %".555", float %".556"
  %".559" = fcmp ogt float %".555", %".556"
  %"fmnmx_max.5" = select  i1 %".559", float %".555", float %".556"
  %"fmnmx_final.5" = select  i1 %".557", float %"fmnmx_min.5", float %"fmnmx_max.5"
  %".560" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.5", ptr %".560"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".563" = load i1, ptr %"P1"
  %".564" = icmp eq i1 %".563", 1
  br i1 %".564", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".567" = load float, ptr %"R11"
  %".568" = load float, ptr %"R4"
  %".569" = xor i1 1, -1
  %".570" = fcmp olt float %".567", %".568"
  %"fmnmx_min.6" = select  i1 %".570", float %".567", float %".568"
  %".571" = fcmp ogt float %".567", %".568"
  %"fmnmx_max.6" = select  i1 %".571", float %".567", float %".568"
  %"fmnmx_final.6" = select  i1 %".569", float %"fmnmx_min.6", float %"fmnmx_max.6"
  %".572" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.6", ptr %".572"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".577" = load i32, ptr %"R16"
  %".578" = add i32 %".577", 1
  %".579" = add i32 %".578", 0
  store i32 %".579", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".582" = load i32, ptr %"R16"
  %".583" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".582", %"Arg_3"
  %".584" = add i1 %"cmp.13", 0
  %".585" = and i1 %"cmp.13", %".583"
  %".586" = and i1 %".584", %".583"
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
  %".616" = inttoptr i64 %"or.7" to ptr
  %".617" = ptrtoint ptr %".616" to i64
  %".618" = add i64 %".617", 0
  %"for_STG" = inttoptr i64 %".618" to ptr
  store i32 %".613", ptr %"for_STG"
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
  %"zext" = zext i32 %".35" to i64
  %"zext.1" = zext i32 %".36" to i64
  %"mul.1" = mul i64 %"zext", %"zext.1"
  %".37" = ptrtoint ptr %"Arg_0" to i64
  %"add.1" = add i64 %"mul.1", %".37"
  %".38" = and i64 %"add.1", 18446744069414584320
  %".39" = lshr i64 %".38", 32
  %"trunc32" = trunc i64 %".39" to i32
  %"trunc32.1" = trunc i64 %"add.1" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".43" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".43" to i64
  %".44" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".44" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".45" = inttoptr i64 %"or" to ptr
  %".46" = ptrtoint ptr %".45" to i64
  %".47" = add i64 %".46", 0
  %"for_LDG" = inttoptr i64 %".47" to ptr
  %".48" = load float, ptr %"for_LDG"
  %".49" = bitcast ptr %"R2" to ptr
  store float %".48", ptr %".49"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".52" = load i32, ptr %"R4"
  %".53" = load i32, ptr %"R5"
  %"zext.4" = zext i32 %".52" to i64
  %"zext.5" = zext i32 %".53" to i64
  %"mul.2" = mul i64 %"zext.4", %"zext.5"
  %".54" = ptrtoint ptr %"Arg_1" to i64
  %"add.2" = add i64 %"mul.2", %".54"
  %".55" = and i64 %"add.2", 18446744069414584320
  %".56" = lshr i64 %".55", 32
  %"trunc32.2" = trunc i64 %".56" to i32
  %"trunc32.3" = trunc i64 %"add.2" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; FMNMX R7, RZ, R2, !PT
  %".60" = load float, ptr %"R2"
  %".61" = xor i1 1, -1
  %".62" = fcmp olt float              0x0, %".60"
  %"fmnmx_min" = select  i1 %".62", float              0x0, float %".60"
  %".63" = fcmp ogt float              0x0, %".60"
  %"fmnmx_max" = select  i1 %".63", float              0x0, float %".60"
  %"fmnmx_final" = select  i1 %".61", float %"fmnmx_min", float %"fmnmx_max"
  %".64" = bitcast ptr %"R7" to ptr
  store float %"fmnmx_final", ptr %".64"
  ; STG.E.SYS [R4], R7
  %".67" = load float, ptr %"R7"
  %".68" = load i32, ptr %"R4"
  %"zext.6" = zext i32 %".68" to i64
  %".69" = load i32, ptr %"R5"
  %"zext.7" = zext i32 %".69" to i64
  %"shl.1" = shl i64 %"zext.7", 32
  %"or.1" = or i64 %"shl.1", %"zext.6"
  %".70" = inttoptr i64 %"or.1" to ptr
  %".71" = ptrtoint ptr %".70" to i64
  %".72" = add i64 %".71", 0
  %"for_STG" = inttoptr i64 %".72" to ptr
  store float %".67", ptr %"for_STG"
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
  %".43" = and i1 %"cmp", %".41"
  %".44" = and i1 %".42", %".41"
  store i1 %".43", ptr %"P0"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".47" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".48" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".47", %"nvvm_blockdim_x"
  %"add.1" = add i32 %"mul.1", %".48"
  store i32 %"add.1", ptr %"R2"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".51" = load i32, ptr %"R2"
  %".52" = load i32, ptr %"UR5"
  %".53" = load i1, ptr %"P0"
  %"cmp.1" = icmp sgt i32 %".51", %".52"
  %".54" = add i1 %"cmp.1", 0
  %".55" = or i1 %"cmp.1", %".53"
  %".56" = or i1 %".54", %".53"
  store i1 %".55", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".59" = load i32, ptr %"R0"
  %".60" = load i1, ptr %"P0"
  %"cmp.2" = icmp sge i32 %".59", %"Arg_6"
  %".61" = add i1 %"cmp.2", 0
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
  %"mul.2" = mul i32 0, 0
  %"add.2" = add i32 %"mul.2", 0
  store i32 %"add.2", ptr %"R12"
  ; ISETP.LE.AND P0, PT, R4, c[0x0][0x17c], PT
  %".76" = load i32, ptr %"R4"
  %".77" = load i1, ptr %"PT"
  %"cmp.3" = icmp sle i32 %".76", %"Arg_4"
  %".78" = add i1 %"cmp.3", 0
  %".79" = and i1 %"cmp.3", %".77"
  %".80" = and i1 %".78", %".77"
  store i1 %".79", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".83" = load i32, ptr %"R4"
  %".84" = load i1, ptr %"P0"
  %"cmp.4" = icmp sgt i32 %".83", %"Arg_5"
  %".85" = add i1 %"cmp.4", 0
  %".86" = or i1 %"cmp.4", %".84"
  %".87" = or i1 %".85", %".84"
  store i1 %".86", ptr %"P0"
  ; @P0 BRA `(.L_x_15)
  %".90" = load i1, ptr %"P0"
  %".91" = icmp eq i1 %".90", 1
  br i1 %".91", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
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
  %".117" = add i1 %"cmp.5", 0
  %".118" = and i1 %"cmp.5", %".116"
  %".119" = and i1 %".117", %".116"
  store i1 %".118", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".122" = load i32, ptr %"R4"
  %".123" = sub i32 0, %"Arg_4"
  %".124" = add i32 %".122", %".123"
  %".125" = add i32 %".124", 0
  store i32 %".125", ptr %"R26"
  br label %".L_x_20"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".129" = load i32, ptr %"R10"
  %".130" = load i32, ptr %"R3"
  %"mul.5" = mul i32 %".129", %"Arg_3"
  %"add.5" = add i32 %"mul.5", %".130"
  store i32 %"add.5", ptr %"R11"
  ; MOV R8, RZ
  %".133" = load i32, ptr %"RZ"
  store i32 %".133", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".136" = load i32, ptr %"R0"
  %".137" = load i32, ptr %"R10"
  %"mul.6" = mul i32 %".136", %"Arg_5"
  %"add.6" = add i32 %"mul.6", %".137"
  store i32 %"add.6", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".140" = load i32, ptr %"R10"
  %".141" = add i32 %".140", 1
  %".142" = add i32 %".141", 0
  store i32 %".142", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".145" = load i32, ptr %"R11"
  %".146" = load i32, ptr %"R2"
  %"mul.7" = mul i32 %".145", %"Arg_3"
  %"add.7" = add i32 %"mul.7", %".146"
  store i32 %"add.7", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".149" = load i32, ptr %"R10"
  %".150" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".149", %"Arg_5"
  %".151" = add i1 %"cmp.6", 0
  %".152" = and i1 %"cmp.6", %".150"
  %".153" = and i1 %".151", %".150"
  store i1 %".152", ptr %"P1"
  br label %".L_x_19"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".157" = load i32, ptr %"R9"
  %".158" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".157", %"Arg_4"
  %"add.8" = add i32 %"mul.8", %".158"
  store i32 %"add.8", ptr %"R6"
  ; UMOV UR4, URZ
  %".161" = load i32, ptr %"URZ"
  store i32 %".161", ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".164" = load i32, ptr %"R4"
  %".165" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".164", 0
  %".166" = add i1 %"cmp.7", 0
  %".167" = and i1 %"cmp.7", %".165"
  %".168" = and i1 %".166", %".165"
  store i1 %".167", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".171" = load i32, ptr %"R6"
  %"mul.9" = mul i32 %".171", %"Arg_4"
  %"add.9" = add i32 %"mul.9", 0
  store i32 %"add.9", ptr %"R29"
  ; @!P0 BRA `(.L_x_16)
  %".174" = load i1, ptr %"P0"
  %".175" = icmp ne i1 %".174", 1
  br i1 %".175", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".180" = load i32, ptr %"R5"
  %".181" = load i32, ptr %"R8"
  %"mul.10" = mul i32 %".180", 1
  %"add.10" = add i32 %"mul.10", %".181"
  store i32 %"add.10", ptr %"R13"
  ; UMOV UR4, URZ
  %".184" = load i32, ptr %"URZ"
  store i32 %".184", ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".187" = load i32, ptr %"R29"
  %".188" = load i32, ptr %"R24"
  %"zext" = zext i32 %".187" to i64
  %"zext.1" = zext i32 %".188" to i64
  %"mul.11" = mul i64 %"zext", %"zext.1"
  %".189" = ptrtoint ptr %"Arg_1" to i64
  %"add.11" = add i64 %"mul.11", %".189"
  %".190" = and i64 %"add.11", 18446744069414584320
  %".191" = lshr i64 %".190", 32
  %"trunc32" = trunc i64 %".191" to i32
  %"trunc32.1" = trunc i64 %"add.11" to i32
  store i32 %"trunc32.1", ptr %"R6"
  store i32 %"trunc32", ptr %"R7"
  ; MOV R23, R6
  %".195" = load i32, ptr %"R6"
  store i32 %".195", ptr %"R23"
  br label %".L_x_17"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".199" = load i32, ptr %"R13"
  %".200" = load i32, ptr %"R24"
  %"zext.2" = zext i32 %".199" to i64
  %"zext.3" = zext i32 %".200" to i64
  %"mul.12" = mul i64 %"zext.2", %"zext.3"
  %".201" = ptrtoint ptr %"Arg_0" to i64
  %"add.12" = add i64 %"mul.12", %".201"
  %".202" = and i64 %"add.12", 18446744069414584320
  %".203" = lshr i64 %".202", 32
  %"trunc32.2" = trunc i64 %".203" to i32
  %"trunc32.3" = trunc i64 %"add.12" to i32
  store i32 %"trunc32.3", ptr %"R14"
  store i32 %"trunc32.2", ptr %"R15"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".209" = load i32, ptr %"R23"
  %"mul.13" = mul i32 0, 0
  %"add.13" = add i32 %"mul.13", %".209"
  store i32 %"add.13", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".212" = load i32, ptr %"R31"
  %".213" = load i32, ptr %"R14"
  %"zext.4" = zext i32 %".212" to i64
  %"zext.5" = zext i32 4 to i64
  %"mul.14" = mul i64 %"zext.4", %"zext.5"
  %"zext.6" = zext i32 %".213" to i64
  %"add.14" = add i64 %"mul.14", %"zext.6"
  %".214" = and i64 %"add.14", 18446744069414584320
  %".215" = lshr i64 %".214", 32
  %"trunc32.4" = trunc i64 %".215" to i32
  %"trunc32.5" = trunc i64 %"add.14" to i32
  store i32 %"trunc32.5", ptr %"R16"
  store i32 %"trunc32.4", ptr %"R17"
  ; LDG.E.SYS R14, [R14]
  %".219" = load i32, ptr %"R14"
  %"zext.7" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R15"
  %"zext.8" = zext i32 %".220" to i64
  %"shl" = shl i64 %"zext.8", 32
  %"or" = or i64 %"shl", %"zext.7"
  %".221" = inttoptr i64 %"or" to ptr
  %".222" = ptrtoint ptr %".221" to i64
  %".223" = add i64 %".222", 0
  %"for_LDG" = inttoptr i64 %".223" to ptr
  %".224" = load float, ptr %"for_LDG"
  %".225" = bitcast ptr %"R14" to ptr
  store float %".224", ptr %".225"
  ; LDG.E.SYS R23, [R6]
  %".228" = load i32, ptr %"R6"
  %"zext.9" = zext i32 %".228" to i64
  %".229" = load i32, ptr %"R7"
  %"zext.10" = zext i32 %".229" to i64
  %"shl.1" = shl i64 %"zext.10", 32
  %"or.1" = or i64 %"shl.1", %"zext.9"
  %".230" = inttoptr i64 %"or.1" to ptr
  %".231" = ptrtoint ptr %".230" to i64
  %".232" = add i64 %".231", 0
  %"for_LDG.1" = inttoptr i64 %".232" to ptr
  %".233" = load float, ptr %"for_LDG.1"
  %".234" = bitcast ptr %"R23" to ptr
  store float %".233", ptr %".234"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".237" = load i32, ptr %"R31"
  %".238" = load i32, ptr %"R16"
  %"zext.11" = zext i32 %".237" to i64
  %"zext.12" = zext i32 4 to i64
  %"mul.15" = mul i64 %"zext.11", %"zext.12"
  %"zext.13" = zext i32 %".238" to i64
  %"add.15" = add i64 %"mul.15", %"zext.13"
  %".239" = and i64 %"add.15", 18446744069414584320
  %".240" = lshr i64 %".239", 32
  %"trunc32.6" = trunc i64 %".240" to i32
  %"trunc32.7" = trunc i64 %"add.15" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".244" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".244" to i64
  %".245" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".245" to i64
  %"shl.2" = shl i64 %"zext.15", 32
  %"or.2" = or i64 %"shl.2", %"zext.14"
  %".246" = inttoptr i64 %"or.2" to ptr
  %".247" = ptrtoint ptr %".246" to i64
  %".248" = add i64 %".247", 0
  %"for_LDG.2" = inttoptr i64 %".248" to ptr
  %".249" = load float, ptr %"for_LDG.2"
  %".250" = bitcast ptr %"R16" to ptr
  store float %".249", ptr %".250"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".253" = load i32, ptr %"R31"
  %".254" = load i32, ptr %"R18"
  %"zext.16" = zext i32 %".253" to i64
  %"zext.17" = zext i32 4 to i64
  %"mul.16" = mul i64 %"zext.16", %"zext.17"
  %"zext.18" = zext i32 %".254" to i64
  %"add.16" = add i64 %"mul.16", %"zext.18"
  %".255" = and i64 %"add.16", 18446744069414584320
  %".256" = lshr i64 %".255", 32
  %"trunc32.8" = trunc i64 %".256" to i32
  %"trunc32.9" = trunc i64 %"add.16" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".260" = load i32, ptr %"R6"
  %"zext.19" = zext i32 %".260" to i64
  %".261" = load i32, ptr %"R7"
  %"zext.20" = zext i32 %".261" to i64
  %"shl.3" = shl i64 %"zext.20", 32
  %"or.3" = or i64 %"shl.3", %"zext.19"
  %".262" = inttoptr i64 %"or.3" to ptr
  %".263" = ptrtoint ptr %".262" to i64
  %".264" = add i64 %".263", 4
  %"for_LDG.3" = inttoptr i64 %".264" to ptr
  %".265" = load float, ptr %"for_LDG.3"
  %".266" = bitcast ptr %"R22" to ptr
  store float %".265", ptr %".266"
  ; LDG.E.SYS R18, [R18]
  %".269" = load i32, ptr %"R18"
  %"zext.21" = zext i32 %".269" to i64
  %".270" = load i32, ptr %"R19"
  %"zext.22" = zext i32 %".270" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".271" = inttoptr i64 %"or.4" to ptr
  %".272" = ptrtoint ptr %".271" to i64
  %".273" = add i64 %".272", 0
  %"for_LDG.4" = inttoptr i64 %".273" to ptr
  %".274" = load float, ptr %"for_LDG.4"
  %".275" = bitcast ptr %"R18" to ptr
  store float %".274", ptr %".275"
  ; LDG.E.SYS R25, [R6+0x8]
  %".278" = load i32, ptr %"R6"
  %"zext.23" = zext i32 %".278" to i64
  %".279" = load i32, ptr %"R7"
  %"zext.24" = zext i32 %".279" to i64
  %"shl.5" = shl i64 %"zext.24", 32
  %"or.5" = or i64 %"shl.5", %"zext.23"
  %".280" = inttoptr i64 %"or.5" to ptr
  %".281" = ptrtoint ptr %".280" to i64
  %".282" = add i64 %".281", 8
  %"for_LDG.5" = inttoptr i64 %".282" to ptr
  %".283" = load float, ptr %"for_LDG.5"
  %".284" = bitcast ptr %"R25" to ptr
  store float %".283", ptr %".284"
  ; LDG.E.SYS R20, [R20]
  %".287" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".287" to i64
  %".288" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".288" to i64
  %"shl.6" = shl i64 %"zext.26", 32
  %"or.6" = or i64 %"shl.6", %"zext.25"
  %".289" = inttoptr i64 %"or.6" to ptr
  %".290" = ptrtoint ptr %".289" to i64
  %".291" = add i64 %".290", 0
  %"for_LDG.6" = inttoptr i64 %".291" to ptr
  %".292" = load float, ptr %"for_LDG.6"
  %".293" = bitcast ptr %"R20" to ptr
  store float %".292", ptr %".293"
  ; LDG.E.SYS R27, [R6+0xc]
  %".296" = load i32, ptr %"R6"
  %"zext.27" = zext i32 %".296" to i64
  %".297" = load i32, ptr %"R7"
  %"zext.28" = zext i32 %".297" to i64
  %"shl.7" = shl i64 %"zext.28", 32
  %"or.7" = or i64 %"shl.7", %"zext.27"
  %".298" = inttoptr i64 %"or.7" to ptr
  %".299" = ptrtoint ptr %".298" to i64
  %".300" = add i64 %".299", 12
  %"for_LDG.7" = inttoptr i64 %".300" to ptr
  %".301" = load float, ptr %"for_LDG.7"
  %".302" = bitcast ptr %"R27" to ptr
  store float %".301", ptr %".302"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".305" = load i32, ptr %"UR4"
  %".306" = add i32 %".305", 4
  %".307" = add i32 %".306", 0
  store i32 %".307", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".310" = load i32, ptr %"R31"
  %".311" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".310", 2
  %"add.17" = add i32 %"shl.8", %".311"
  store i32 %"add.17", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".314" = load float, ptr %"R23"
  %".315" = load float, ptr %"R14"
  %".316" = load float, ptr %"R12"
  %"fmul" = fmul float %".314", %".315"
  %"fadd" = fadd float %"fmul", %".316"
  %".317" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".317"
  ; IADD3 R12, R26, UR4, RZ
  %".320" = load i32, ptr %"R26"
  %".321" = load i32, ptr %"UR4"
  %".322" = add i32 %".320", %".321"
  %".323" = add i32 %".322", 0
  store i32 %".323", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".326" = load i32, ptr %"R12"
  %".327" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".326", 0
  %".328" = add i1 %"cmp.8", 0
  %".329" = and i1 %"cmp.8", %".327"
  %".330" = and i1 %".328", %".327"
  store i1 %".329", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".333" = load float, ptr %"R22"
  %".334" = load float, ptr %"R16"
  %".335" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".333", %".334"
  %"fadd.1" = fadd float %"fmul.1", %".335"
  %".336" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".336"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".339" = load i32, ptr %"R6"
  %".340" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".339", i32 16)
  %".341" = extractvalue {i32, i1} %".340", 0
  %".342" = extractvalue {i32, i1} %".340", 1
  %".343" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".341", i32 0)
  %".344" = extractvalue {i32, i1} %".343", 0
  %".345" = extractvalue {i32, i1} %".343", 1
  %".346" = or i1 %".342", %".345"
  store i32 %".344", ptr %"R23"
  store i1 %".346", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".350" = load float, ptr %"R25"
  %".351" = load float, ptr %"R18"
  %".352" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".350", %".351"
  %"fadd.2" = fadd float %"fmul.2", %".352"
  %".353" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".353"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".356" = load i32, ptr %"R7"
  %".357" = load i1, ptr %"P4"
  %".358" = xor i1 1, -1
  %".359" = zext i1 %".357" to i32
  %".360" = zext i1 %".358" to i32
  %"add.18" = add i32 0, %".356"
  %"add.19" = add i32 %"add.18", 0
  %"add.20" = add i32 %"add.19", %".359"
  %"add.21" = add i32 %"add.20", %".360"
  store i32 %"add.21", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".363" = load float, ptr %"R27"
  %".364" = load float, ptr %"R20"
  %".365" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".363", %".364"
  %"fadd.3" = fadd float %"fmul.3", %".365"
  %".366" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".366"
  ; @P2 BRA `(.L_x_17)
  %".369" = load i1, ptr %"P2"
  %".370" = icmp eq i1 %".369", 1
  br i1 %".370", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".373" = load i32, ptr %"R2"
  %".374" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".373", 1
  %"add.22" = add i32 %"mul.17", %".374"
  store i32 %"add.22", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".377" = load i1, ptr %"P3"
  %".378" = icmp ne i1 %".377", 1
  br i1 %".378", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".381" = load i32, ptr %"R11"
  %".382" = load i32, ptr %"UR4"
  %".383" = add i32 %".381", %".382"
  %".384" = add i32 %".383", 0
  store i32 %".384", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".387" = load i32, ptr %"R29"
  %".388" = load i32, ptr %"UR4"
  %".389" = add i32 %".387", %".388"
  %".390" = add i32 %".389", 0
  store i32 %".390", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".395" = load i32, ptr %"R15"
  %".396" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".395", %"Arg_3"
  %"add.23" = add i32 %"mul.18", %".396"
  store i32 %"add.23", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".399" = load i32, ptr %"R16"
  %".400" = load i32, ptr %"R19"
  %"zext.29" = zext i32 %".399" to i64
  %"zext.30" = zext i32 %".400" to i64
  %"mul.19" = mul i64 %"zext.29", %"zext.30"
  %".401" = ptrtoint ptr %"Arg_1" to i64
  %"add.24" = add i64 %"mul.19", %".401"
  %".402" = and i64 %"add.24", 18446744069414584320
  %".403" = lshr i64 %".402", 32
  %"trunc32.10" = trunc i64 %".403" to i32
  %"trunc32.11" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".407" = load i32, ptr %"R6"
  %".408" = load i32, ptr %"R19"
  %"zext.31" = zext i32 %".407" to i64
  %"zext.32" = zext i32 %".408" to i64
  %"mul.20" = mul i64 %"zext.31", %"zext.32"
  %".409" = ptrtoint ptr %"Arg_0" to i64
  %"add.25" = add i64 %"mul.20", %".409"
  %".410" = and i64 %"add.25", 18446744069414584320
  %".411" = lshr i64 %".410", 32
  %"trunc32.12" = trunc i64 %".411" to i32
  %"trunc32.13" = trunc i64 %"add.25" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".415" = load i32, ptr %"R16"
  %"zext.33" = zext i32 %".415" to i64
  %".416" = load i32, ptr %"R17"
  %"zext.34" = zext i32 %".416" to i64
  %"shl.9" = shl i64 %"zext.34", 32
  %"or.8" = or i64 %"shl.9", %"zext.33"
  %".417" = inttoptr i64 %"or.8" to ptr
  %".418" = ptrtoint ptr %".417" to i64
  %".419" = add i64 %".418", 0
  %"for_LDG.8" = inttoptr i64 %".419" to ptr
  %".420" = load float, ptr %"for_LDG.8"
  %".421" = bitcast ptr %"R13" to ptr
  store float %".420", ptr %".421"
  ; LDG.E.SYS R6, [R6]
  %".424" = load i32, ptr %"R6"
  %"zext.35" = zext i32 %".424" to i64
  %".425" = load i32, ptr %"R7"
  %"zext.36" = zext i32 %".425" to i64
  %"shl.10" = shl i64 %"zext.36", 32
  %"or.9" = or i64 %"shl.10", %"zext.35"
  %".426" = inttoptr i64 %"or.9" to ptr
  %".427" = ptrtoint ptr %".426" to i64
  %".428" = add i64 %".427", 0
  %"for_LDG.9" = inttoptr i64 %".428" to ptr
  %".429" = load float, ptr %"for_LDG.9"
  %".430" = bitcast ptr %"R6" to ptr
  store float %".429", ptr %".430"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".433" = load i32, ptr %"R4"
  %".434" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".433", 1
  %".435" = add i1 %"cmp.9", 0
  %".436" = and i1 %"cmp.9", %".434"
  %".437" = and i1 %".435", %".434"
  store i1 %".436", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".440" = load float, ptr %"R13"
  %".441" = load float, ptr %"R6"
  %".442" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".440", %".441"
  %"fadd.4" = fadd float %"fmul.4", %".442"
  %".443" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".443"
  ; @!P2 BRA `(.L_x_18)
  %".446" = load i1, ptr %"P2"
  %".447" = icmp ne i1 %".446", 1
  br i1 %".447", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".450" = load i32, ptr %"R4"
  %".451" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".450", 2
  %".452" = add i1 %"cmp.10", 0
  %".453" = and i1 %"cmp.10", %".451"
  %".454" = and i1 %".452", %".451"
  store i1 %".453", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".457" = load i32, ptr %"R16"
  %"zext.37" = zext i32 %".457" to i64
  %".458" = load i32, ptr %"R17"
  %"zext.38" = zext i32 %".458" to i64
  %"shl.11" = shl i64 %"zext.38", 32
  %"or.10" = or i64 %"shl.11", %"zext.37"
  %".459" = inttoptr i64 %"or.10" to ptr
  %".460" = ptrtoint ptr %".459" to i64
  %".461" = add i64 %".460", 4
  %"for_LDG.10" = inttoptr i64 %".461" to ptr
  %".462" = load float, ptr %"for_LDG.10"
  %".463" = bitcast ptr %"R13" to ptr
  store float %".462", ptr %".463"
  ; IADD3 R6, R15, 0x1, RZ
  %".466" = load i32, ptr %"R15"
  %".467" = add i32 %".466", 1
  %".468" = add i32 %".467", 0
  store i32 %".468", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".471" = load i32, ptr %"R6"
  %".472" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".471", %"Arg_3"
  %"add.26" = add i32 %"mul.21", %".472"
  store i32 %"add.26", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".475" = load i1, ptr %"P2"
  %".476" = icmp eq i1 %".475", 1
  br i1 %".476", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".479" = load i32, ptr %"R15"
  %".480" = add i32 %".479", 2
  %".481" = add i32 %".480", 0
  store i32 %".481", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".486" = load i1, ptr %"P2"
  %".487" = icmp eq i1 %".486", 1
  br i1 %".487", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".490" = load i32, ptr %"R7"
  %".491" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".490", %"Arg_3"
  %"add.27" = add i32 %"mul.22", %".491"
  store i32 %"add.27", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".496" = load i32, ptr %"R6"
  %".497" = load i32, ptr %"R19"
  %"zext.39" = zext i32 %".496" to i64
  %"zext.40" = zext i32 %".497" to i64
  %"mul.23" = mul i64 %"zext.39", %"zext.40"
  %".498" = ptrtoint ptr %"Arg_0" to i64
  %"add.28" = add i64 %"mul.23", %".498"
  %".499" = and i64 %"add.28", 18446744069414584320
  %".500" = lshr i64 %".499", 32
  %"trunc32.14" = trunc i64 %".500" to i32
  %"trunc32.15" = trunc i64 %"add.28" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".504" = load i1, ptr %"P2"
  %".505" = icmp eq i1 %".504", 1
  br i1 %".505", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".508" = load i32, ptr %"R14"
  %".509" = load i32, ptr %"R19"
  %"zext.41" = zext i32 %".508" to i64
  %"zext.42" = zext i32 %".509" to i64
  %"mul.24" = mul i64 %"zext.41", %"zext.42"
  %".510" = ptrtoint ptr %"Arg_0" to i64
  %"add.29" = add i64 %"mul.24", %".510"
  %".511" = and i64 %"add.29", 18446744069414584320
  %".512" = lshr i64 %".511", 32
  %"trunc32.16" = trunc i64 %".512" to i32
  %"trunc32.17" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".518" = load i1, ptr %"P2"
  %".519" = icmp eq i1 %".518", 1
  br i1 %".519", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".522" = load i32, ptr %"R16"
  %"zext.43" = zext i32 %".522" to i64
  %".523" = load i32, ptr %"R17"
  %"zext.44" = zext i32 %".523" to i64
  %"shl.12" = shl i64 %"zext.44", 32
  %"or.11" = or i64 %"shl.12", %"zext.43"
  %".524" = inttoptr i64 %"or.11" to ptr
  %".525" = ptrtoint ptr %".524" to i64
  %".526" = add i64 %".525", 8
  %"for_LDG.11" = inttoptr i64 %".526" to ptr
  %".527" = load float, ptr %"for_LDG.11"
  %".528" = bitcast ptr %"R19" to ptr
  store float %".527", ptr %".528"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".533" = load i32, ptr %"R6"
  %"zext.45" = zext i32 %".533" to i64
  %".534" = load i32, ptr %"R7"
  %"zext.46" = zext i32 %".534" to i64
  %"shl.13" = shl i64 %"zext.46", 32
  %"or.12" = or i64 %"shl.13", %"zext.45"
  %".535" = inttoptr i64 %"or.12" to ptr
  %".536" = ptrtoint ptr %".535" to i64
  %".537" = add i64 %".536", 0
  %"for_LDG.12" = inttoptr i64 %".537" to ptr
  %".538" = load float, ptr %"for_LDG.12"
  %".539" = bitcast ptr %"R6" to ptr
  store float %".538", ptr %".539"
  ; @P2 LDG.E.SYS R14, [R14]
  %".542" = load i1, ptr %"P2"
  %".543" = icmp eq i1 %".542", 1
  br i1 %".543", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".546" = load i32, ptr %"R14"
  %"zext.47" = zext i32 %".546" to i64
  %".547" = load i32, ptr %"R15"
  %"zext.48" = zext i32 %".547" to i64
  %"shl.14" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.14", %"zext.47"
  %".548" = inttoptr i64 %"or.13" to ptr
  %".549" = ptrtoint ptr %".548" to i64
  %".550" = add i64 %".549", 0
  %"for_LDG.13" = inttoptr i64 %".550" to ptr
  %".551" = load float, ptr %"for_LDG.13"
  %".552" = bitcast ptr %"R14" to ptr
  store float %".551", ptr %".552"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".557" = load float, ptr %"R13"
  %".558" = load float, ptr %"R6"
  %".559" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".557", %".558"
  %"fadd.5" = fadd float %"fmul.5", %".559"
  %".560" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".560"
  ; @P2 FFMA R12, R19, R14, R12
  %".563" = load i1, ptr %"P2"
  %".564" = icmp eq i1 %".563", 1
  br i1 %".564", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".567" = load float, ptr %"R19"
  %".568" = load float, ptr %"R14"
  %".569" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".567", %".568"
  %"fadd.6" = fadd float %"fmul.6", %".569"
  %".570" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".570"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".575" = load i32, ptr %"R8"
  %".576" = add i32 %".575", 1
  %".577" = add i32 %".576", 0
  store i32 %".577", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".580" = load i32, ptr %"R8"
  %".581" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".580", %"Arg_4"
  %".582" = add i1 %"cmp.11", 0
  %".583" = and i1 %"cmp.11", %".581"
  %".584" = and i1 %".582", %".581"
  store i1 %".583", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".587" = load i1, ptr %"P2"
  %".588" = icmp ne i1 %".587", 1
  br i1 %".588", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".591" = load i1, ptr %"P1"
  %".592" = icmp ne i1 %".591", 1
  br i1 %".592", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".595" = load i32, ptr %"UR5"
  %".596" = add i32 %".595", 1
  %".597" = add i32 %".596", 0
  store i32 %".597", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".600" = load i32, ptr %"R0"
  %".601" = load i32, ptr %"UR4"
  %".602" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".600", %".601"
  %"add.30" = add i32 %"mul.25", %".602"
  store i32 %"add.30", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".607" = load i32, ptr %"R3"
  %".608" = load i32, ptr %"UR4"
  %".609" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".607", %".608"
  %"add.31" = add i32 %"mul.26", %".609"
  store i32 %"add.31", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".612" = load i32, ptr %"R3"
  %".613" = load i32, ptr %"R0"
  %"zext.49" = zext i32 %".612" to i64
  %"zext.50" = zext i32 %".613" to i64
  %"mul.27" = mul i64 %"zext.49", %"zext.50"
  %".614" = ptrtoint ptr %"Arg_2" to i64
  %"add.32" = add i64 %"mul.27", %".614"
  %".615" = and i64 %"add.32", 18446744069414584320
  %".616" = lshr i64 %".615", 32
  %"trunc32.18" = trunc i64 %".616" to i32
  %"trunc32.19" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".620" = load i32, ptr %"R12"
  %".621" = load i32, ptr %"R2"
  %"zext.51" = zext i32 %".621" to i64
  %".622" = load i32, ptr %"R3"
  %"zext.52" = zext i32 %".622" to i64
  %"shl.15" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.15", %"zext.51"
  %".623" = inttoptr i64 %"or.14" to ptr
  %".624" = ptrtoint ptr %".623" to i64
  %".625" = add i64 %".624", 0
  %"for_STG" = inttoptr i64 %".625" to ptr
  store i32 %".620", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

