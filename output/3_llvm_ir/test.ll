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
  %"add.2" = add i32 %".48", -1
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".51" = load i32, ptr %"R4"
  %".52" = xor i1 1, -1
  %".53" = and i32 %".51", 3
  store i32 %".53", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".56" = load i32, ptr %"R2"
  %".57" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".56", 3
  %".58" = and i1 %"cmp.2", %".57"
  store i1 %".58", ptr %"P0"
  ; MOV R7, RZ
  %".61" = load float, ptr %"RZ"
  %".62" = bitcast ptr %"R7" to ptr
  store float %".61", ptr %".62"
  ; MOV R5, RZ
  %".65" = load i32, ptr %"RZ"
  store i32 %".65", ptr %"R5"
  ; @!P0 BRA `(.L_x_1)
  %".68" = load i1, ptr %"P0"
  %".69" = icmp ne i1 %".68", 1
  br i1 %".69", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".72" = load i32, ptr %"R4"
  %".73" = sub i32 0, %".72"
  %"add.4" = add i32 %".73", %"Arg_4"
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".76" = load i32, ptr %"R0"
  %"mul.2" = mul i32 %".76", %"Arg_4"
  %"add.6" = add i32 %"mul.2", 0
  store i32 %"add.6", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".79" = ptrtoint ptr %"Arg_0" to i64
  %".80" = and i64 %".79", 18446744069414584320
  %".81" = lshr i64 %".80", 32
  %"trunc32" = trunc i64 %".81" to i32
  %"trunc32.1" = trunc i64 %".79" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.7" = add i32 %"mul.3", 4
  store i32 %"add.7", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".87" = load i32, ptr %"R6"
  %".88" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".87", 0
  %".89" = and i1 %"cmp.3", %".88"
  store i1 %".89", ptr %"P0"
  ; MOV R7, RZ
  %".92" = load float, ptr %"RZ"
  %".93" = bitcast ptr %"R7" to ptr
  store float %".92", ptr %".93"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".96" = load i32, ptr %"R2"
  %".97" = load i32, ptr %"R3"
  %"zext" = zext i32 %".96" to i64
  %"zext.1" = zext i32 %".97" to i64
  %"mul.4" = mul i64 %"zext", %"zext.1"
  %".98" = ptrtoint ptr %"Arg_1" to i64
  %"add.8" = add i64 %"mul.4", %".98"
  %".99" = and i64 %"add.8", 18446744069414584320
  %".100" = lshr i64 %".99", 32
  %"trunc32.2" = trunc i64 %".100" to i32
  %"trunc32.3" = trunc i64 %"add.8" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; MOV R5, RZ
  %".104" = load i32, ptr %"RZ"
  store i32 %".104", ptr %"R5"
  ; @!P0 BRA `(.L_x_2)
  %".107" = load i1, ptr %"P0"
  %".108" = icmp ne i1 %".107", 1
  br i1 %".108", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".111" = load i32, ptr %"R6"
  %".112" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".111", 12
  %".113" = and i1 %"cmp.4", %".112"
  store i1 %".113", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".116" = and i1 1, 1
  %".117" = or i1 %".116", 1
  ; @!P1 BRA `(.L_x_3)
  %".119" = load i1, ptr %"P1"
  %".120" = icmp ne i1 %".119", 1
  br i1 %".120", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".123" = xor i1 1, 1
  %".124" = and i1 %".123", 1
  %".125" = and i1 %".124", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".128" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".128" to i64
  %".129" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".129" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".130" = inttoptr i64 %"or" to ptr
  %".131" = ptrtoint ptr %".130" to i64
  %".132" = add i64 %".131", 0
  %"for_LDG" = inttoptr i64 %".132" to ptr
  %".133" = load float, ptr %"for_LDG"
  %".134" = bitcast ptr %"R8" to ptr
  store float %".133", ptr %".134"
  ; LDG.E.SYS R9, [UR4]
  %".137" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".137" to i64
  %".138" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".138" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %".139" = inttoptr i64 %"or.1" to ptr
  %".140" = ptrtoint ptr %".139" to i64
  %".141" = add i64 %".140", 0
  %"for_LDG.1" = inttoptr i64 %".141" to ptr
  %".142" = load float, ptr %"for_LDG.1"
  %".143" = bitcast ptr %"R9" to ptr
  store float %".142", ptr %".143"
  ; LDG.E.SYS R11, [R2+0x4]
  %".146" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".146" to i64
  %".147" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".147" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %".148" = inttoptr i64 %"or.2" to ptr
  %".149" = ptrtoint ptr %".148" to i64
  %".150" = add i64 %".149", 4
  %"for_LDG.2" = inttoptr i64 %".150" to ptr
  %".151" = load float, ptr %"for_LDG.2"
  %".152" = bitcast ptr %"R11" to ptr
  store float %".151", ptr %".152"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".155" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".155" to i64
  %".156" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".156" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %".157" = inttoptr i64 %"or.3" to ptr
  %".158" = ptrtoint ptr %".157" to i64
  %".159" = add i64 %".158", 4
  %"for_LDG.3" = inttoptr i64 %".159" to ptr
  %".160" = load float, ptr %"for_LDG.3"
  %".161" = bitcast ptr %"R10" to ptr
  store float %".160", ptr %".161"
  ; LDG.E.SYS R13, [R2+0x8]
  %".164" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".164" to i64
  %".165" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".165" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %".166" = inttoptr i64 %"or.4" to ptr
  %".167" = ptrtoint ptr %".166" to i64
  %".168" = add i64 %".167", 8
  %"for_LDG.4" = inttoptr i64 %".168" to ptr
  %".169" = load float, ptr %"for_LDG.4"
  %".170" = bitcast ptr %"R13" to ptr
  store float %".169", ptr %".170"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".173" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".173" to i64
  %".174" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".174" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %".175" = inttoptr i64 %"or.5" to ptr
  %".176" = ptrtoint ptr %".175" to i64
  %".177" = add i64 %".176", 8
  %"for_LDG.5" = inttoptr i64 %".177" to ptr
  %".178" = load float, ptr %"for_LDG.5"
  %".179" = bitcast ptr %"R12" to ptr
  store float %".178", ptr %".179"
  ; LDG.E.SYS R15, [R2+0xc]
  %".182" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".182" to i64
  %".183" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".183" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %".184" = inttoptr i64 %"or.6" to ptr
  %".185" = ptrtoint ptr %".184" to i64
  %".186" = add i64 %".185", 12
  %"for_LDG.6" = inttoptr i64 %".186" to ptr
  %".187" = load float, ptr %"for_LDG.6"
  %".188" = bitcast ptr %"R15" to ptr
  store float %".187", ptr %".188"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".191" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".191" to i64
  %".192" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".192" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %".193" = inttoptr i64 %"or.7" to ptr
  %".194" = ptrtoint ptr %".193" to i64
  %".195" = add i64 %".194", 12
  %"for_LDG.7" = inttoptr i64 %".195" to ptr
  %".196" = load float, ptr %"for_LDG.7"
  %".197" = bitcast ptr %"R14" to ptr
  store float %".196", ptr %".197"
  ; LDG.E.SYS R17, [R2+0x10]
  %".200" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".200" to i64
  %".201" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".201" to i64
  %"shl.8" = shl i64 %"zext.19", 32
  %"or.8" = or i64 %"shl.8", %"zext.18"
  %".202" = inttoptr i64 %"or.8" to ptr
  %".203" = ptrtoint ptr %".202" to i64
  %".204" = add i64 %".203", 16
  %"for_LDG.8" = inttoptr i64 %".204" to ptr
  %".205" = load float, ptr %"for_LDG.8"
  %".206" = bitcast ptr %"R17" to ptr
  store float %".205", ptr %".206"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".209" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".209" to i64
  %".210" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".210" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %".211" = inttoptr i64 %"or.9" to ptr
  %".212" = ptrtoint ptr %".211" to i64
  %".213" = add i64 %".212", 16
  %"for_LDG.9" = inttoptr i64 %".213" to ptr
  %".214" = load float, ptr %"for_LDG.9"
  %".215" = bitcast ptr %"R16" to ptr
  store float %".214", ptr %".215"
  ; LDG.E.SYS R19, [R2+0x14]
  %".218" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".218" to i64
  %".219" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".219" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %".220" = inttoptr i64 %"or.10" to ptr
  %".221" = ptrtoint ptr %".220" to i64
  %".222" = add i64 %".221", 20
  %"for_LDG.10" = inttoptr i64 %".222" to ptr
  %".223" = load float, ptr %"for_LDG.10"
  %".224" = bitcast ptr %"R19" to ptr
  store float %".223", ptr %".224"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".227" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".227" to i64
  %".228" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".228" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %".229" = inttoptr i64 %"or.11" to ptr
  %".230" = ptrtoint ptr %".229" to i64
  %".231" = add i64 %".230", 20
  %"for_LDG.11" = inttoptr i64 %".231" to ptr
  %".232" = load float, ptr %"for_LDG.11"
  %".233" = bitcast ptr %"R18" to ptr
  store float %".232", ptr %".233"
  ; LDG.E.SYS R21, [R2+0x18]
  %".236" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".236" to i64
  %".237" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".237" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %".238" = inttoptr i64 %"or.12" to ptr
  %".239" = ptrtoint ptr %".238" to i64
  %".240" = add i64 %".239", 24
  %"for_LDG.12" = inttoptr i64 %".240" to ptr
  %".241" = load float, ptr %"for_LDG.12"
  %".242" = bitcast ptr %"R21" to ptr
  store float %".241", ptr %".242"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".245" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".245" to i64
  %".246" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".246" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %".247" = inttoptr i64 %"or.13" to ptr
  %".248" = ptrtoint ptr %".247" to i64
  %".249" = add i64 %".248", 24
  %"for_LDG.13" = inttoptr i64 %".249" to ptr
  %".250" = load float, ptr %"for_LDG.13"
  %".251" = bitcast ptr %"R20" to ptr
  store float %".250", ptr %".251"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".254" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".254" to i64
  %".255" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".255" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %".256" = inttoptr i64 %"or.14" to ptr
  %".257" = ptrtoint ptr %".256" to i64
  %".258" = add i64 %".257", 28
  %"for_LDG.14" = inttoptr i64 %".258" to ptr
  %".259" = load float, ptr %"for_LDG.14"
  %".260" = bitcast ptr %"R23" to ptr
  store float %".259", ptr %".260"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".263" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".263" to i64
  %".264" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".264" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %".265" = inttoptr i64 %"or.15" to ptr
  %".266" = ptrtoint ptr %".265" to i64
  %".267" = add i64 %".266", 28
  %"for_LDG.15" = inttoptr i64 %".267" to ptr
  %".268" = load float, ptr %"for_LDG.15"
  %".269" = bitcast ptr %"R22" to ptr
  store float %".268", ptr %".269"
  ; LDG.E.SYS R25, [R2+0x20]
  %".272" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".272" to i64
  %".273" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".273" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %".274" = inttoptr i64 %"or.16" to ptr
  %".275" = ptrtoint ptr %".274" to i64
  %".276" = add i64 %".275", 32
  %"for_LDG.16" = inttoptr i64 %".276" to ptr
  %".277" = load float, ptr %"for_LDG.16"
  %".278" = bitcast ptr %"R25" to ptr
  store float %".277", ptr %".278"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".281" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".281" to i64
  %".282" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".282" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %".283" = inttoptr i64 %"or.17" to ptr
  %".284" = ptrtoint ptr %".283" to i64
  %".285" = add i64 %".284", 32
  %"for_LDG.17" = inttoptr i64 %".285" to ptr
  %".286" = load float, ptr %"for_LDG.17"
  %".287" = bitcast ptr %"R24" to ptr
  store float %".286", ptr %".287"
  ; LDG.E.SYS R27, [R2+0x24]
  %".290" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".290" to i64
  %".291" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".291" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %".292" = inttoptr i64 %"or.18" to ptr
  %".293" = ptrtoint ptr %".292" to i64
  %".294" = add i64 %".293", 36
  %"for_LDG.18" = inttoptr i64 %".294" to ptr
  %".295" = load float, ptr %"for_LDG.18"
  %".296" = bitcast ptr %"R27" to ptr
  store float %".295", ptr %".296"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".299" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".299" to i64
  %".300" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".300" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %".301" = inttoptr i64 %"or.19" to ptr
  %".302" = ptrtoint ptr %".301" to i64
  %".303" = add i64 %".302", 36
  %"for_LDG.19" = inttoptr i64 %".303" to ptr
  %".304" = load float, ptr %"for_LDG.19"
  %".305" = bitcast ptr %"R26" to ptr
  store float %".304", ptr %".305"
  ; LDG.E.SYS R29, [R2+0x28]
  %".308" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".308" to i64
  %".309" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".309" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %".310" = inttoptr i64 %"or.20" to ptr
  %".311" = ptrtoint ptr %".310" to i64
  %".312" = add i64 %".311", 40
  %"for_LDG.20" = inttoptr i64 %".312" to ptr
  %".313" = load float, ptr %"for_LDG.20"
  %".314" = bitcast ptr %"R29" to ptr
  store float %".313", ptr %".314"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".317" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".317" to i64
  %".318" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".318" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %".319" = inttoptr i64 %"or.21" to ptr
  %".320" = ptrtoint ptr %".319" to i64
  %".321" = add i64 %".320", 40
  %"for_LDG.21" = inttoptr i64 %".321" to ptr
  %".322" = load float, ptr %"for_LDG.21"
  %".323" = bitcast ptr %"R28" to ptr
  store float %".322", ptr %".323"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".326" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".326" to i64
  %".327" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".327" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %".328" = inttoptr i64 %"or.22" to ptr
  %".329" = ptrtoint ptr %".328" to i64
  %".330" = add i64 %".329", 44
  %"for_LDG.22" = inttoptr i64 %".330" to ptr
  %".331" = load float, ptr %"for_LDG.22"
  %".332" = bitcast ptr %"R31" to ptr
  store float %".331", ptr %".332"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".335" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".335" to i64
  %".336" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".336" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %".337" = inttoptr i64 %"or.23" to ptr
  %".338" = ptrtoint ptr %".337" to i64
  %".339" = add i64 %".338", 44
  %"for_LDG.23" = inttoptr i64 %".339" to ptr
  %".340" = load float, ptr %"for_LDG.23"
  %".341" = bitcast ptr %"R30" to ptr
  store float %".340", ptr %".341"
  ; LDG.E.SYS R33, [R2+0x30]
  %".344" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".344" to i64
  %".345" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".345" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %".346" = inttoptr i64 %"or.24" to ptr
  %".347" = ptrtoint ptr %".346" to i64
  %".348" = add i64 %".347", 48
  %"for_LDG.24" = inttoptr i64 %".348" to ptr
  %".349" = load float, ptr %"for_LDG.24"
  %".350" = bitcast ptr %"R33" to ptr
  store float %".349", ptr %".350"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".353" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".353" to i64
  %".354" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".354" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %".355" = inttoptr i64 %"or.25" to ptr
  %".356" = ptrtoint ptr %".355" to i64
  %".357" = add i64 %".356", 48
  %"for_LDG.25" = inttoptr i64 %".357" to ptr
  %".358" = load float, ptr %"for_LDG.25"
  %".359" = bitcast ptr %"R32" to ptr
  store float %".358", ptr %".359"
  ; LDG.E.SYS R35, [R2+0x34]
  %".362" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".362" to i64
  %".363" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".363" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %".364" = inttoptr i64 %"or.26" to ptr
  %".365" = ptrtoint ptr %".364" to i64
  %".366" = add i64 %".365", 52
  %"for_LDG.26" = inttoptr i64 %".366" to ptr
  %".367" = load float, ptr %"for_LDG.26"
  %".368" = bitcast ptr %"R35" to ptr
  store float %".367", ptr %".368"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".371" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".371" to i64
  %".372" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".372" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %".373" = inttoptr i64 %"or.27" to ptr
  %".374" = ptrtoint ptr %".373" to i64
  %".375" = add i64 %".374", 52
  %"for_LDG.27" = inttoptr i64 %".375" to ptr
  %".376" = load float, ptr %"for_LDG.27"
  %".377" = bitcast ptr %"R34" to ptr
  store float %".376", ptr %".377"
  ; LDG.E.SYS R37, [R2+0x38]
  %".380" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".380" to i64
  %".381" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".381" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %".382" = inttoptr i64 %"or.28" to ptr
  %".383" = ptrtoint ptr %".382" to i64
  %".384" = add i64 %".383", 56
  %"for_LDG.28" = inttoptr i64 %".384" to ptr
  %".385" = load float, ptr %"for_LDG.28"
  %".386" = bitcast ptr %"R37" to ptr
  store float %".385", ptr %".386"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".389" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".389" to i64
  %".390" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".390" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %".391" = inttoptr i64 %"or.29" to ptr
  %".392" = ptrtoint ptr %".391" to i64
  %".393" = add i64 %".392", 56
  %"for_LDG.29" = inttoptr i64 %".393" to ptr
  %".394" = load float, ptr %"for_LDG.29"
  %".395" = bitcast ptr %"R36" to ptr
  store float %".394", ptr %".395"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".398" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".398" to i64
  %".399" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".399" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %".400" = inttoptr i64 %"or.30" to ptr
  %".401" = ptrtoint ptr %".400" to i64
  %".402" = add i64 %".401", 60
  %"for_LDG.30" = inttoptr i64 %".402" to ptr
  %".403" = load float, ptr %"for_LDG.30"
  %".404" = bitcast ptr %"R39" to ptr
  store float %".403", ptr %".404"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".407" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".407" to i64
  %".408" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".408" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %".409" = inttoptr i64 %"or.31" to ptr
  %".410" = ptrtoint ptr %".409" to i64
  %".411" = add i64 %".410", 60
  %"for_LDG.31" = inttoptr i64 %".411" to ptr
  %".412" = load float, ptr %"for_LDG.31"
  %".413" = bitcast ptr %"R38" to ptr
  store float %".412", ptr %".413"
  ; IADD3 R6, R6, -0x10, RZ
  %".416" = load i32, ptr %"R6"
  %"add.9" = add i32 %".416", -16
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".419" = load i32, ptr %"UR4"
  %"add.11" = add i32 %".419", 64
  %"add.12" = add i32 %"add.11", 0
  store i32 %"add.12", ptr %"UR4"
  %"carry" = icmp ult i32 %"add.12", %".419"
  store i1 %"carry", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".423" = load i32, ptr %"R5"
  %"add.13" = add i32 %".423", 16
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".426" = load i32, ptr %"R6"
  %".427" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".426", 12
  %".428" = and i1 %"cmp.5", %".427"
  store i1 %".428", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".431" = load i32, ptr %"UR5"
  %".432" = load i1, ptr %"UP0"
  %".433" = zext i1 %".432" to i32
  %"add.15" = add i32 0, %".431"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".433"
  store i32 %"add.17", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".436" = load i32, ptr %"R2"
  %"add.18" = add i32 %".436", 64
  %"add.19" = add i32 %"add.18", 0
  store i32 %"add.19", ptr %"R2"
  %"carry.1" = icmp ult i32 %"add.19", %".436"
  store i1 %"carry.1", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".440" = load i32, ptr %"R3"
  %"mul.5" = mul i32 0, 0
  %"add.20" = add i32 %"mul.5", %".440"
  store i32 %"add.20", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".443" = load float, ptr %"R8"
  %".444" = load float, ptr %"R9"
  %".445" = load float, ptr %"R7"
  %"fmul" = fmul float %".443", %".444"
  %"fadd" = fadd float %"fmul", %".445"
  %".446" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".446"
  ; FFMA R8, R11, R10, R8
  %".449" = load float, ptr %"R11"
  %".450" = load float, ptr %"R10"
  %".451" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".449", %".450"
  %"fadd.1" = fadd float %"fmul.1", %".451"
  %".452" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".452"
  ; FFMA R8, R13, R12, R8
  %".455" = load float, ptr %"R13"
  %".456" = load float, ptr %"R12"
  %".457" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".455", %".456"
  %"fadd.2" = fadd float %"fmul.2", %".457"
  %".458" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".458"
  ; FFMA R8, R15, R14, R8
  %".461" = load float, ptr %"R15"
  %".462" = load float, ptr %"R14"
  %".463" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".461", %".462"
  %"fadd.3" = fadd float %"fmul.3", %".463"
  %".464" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".464"
  ; FFMA R8, R17, R16, R8
  %".467" = load float, ptr %"R17"
  %".468" = load float, ptr %"R16"
  %".469" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".467", %".468"
  %"fadd.4" = fadd float %"fmul.4", %".469"
  %".470" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".470"
  ; FFMA R8, R19, R18, R8
  %".473" = load float, ptr %"R19"
  %".474" = load float, ptr %"R18"
  %".475" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".473", %".474"
  %"fadd.5" = fadd float %"fmul.5", %".475"
  %".476" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".476"
  ; FFMA R8, R21, R20, R8
  %".479" = load float, ptr %"R21"
  %".480" = load float, ptr %"R20"
  %".481" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".479", %".480"
  %"fadd.6" = fadd float %"fmul.6", %".481"
  %".482" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".482"
  ; FFMA R8, R23, R22, R8
  %".485" = load float, ptr %"R23"
  %".486" = load float, ptr %"R22"
  %".487" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".485", %".486"
  %"fadd.7" = fadd float %"fmul.7", %".487"
  %".488" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".488"
  ; FFMA R8, R25, R24, R8
  %".491" = load float, ptr %"R25"
  %".492" = load float, ptr %"R24"
  %".493" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".491", %".492"
  %"fadd.8" = fadd float %"fmul.8", %".493"
  %".494" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".494"
  ; FFMA R8, R27, R26, R8
  %".497" = load float, ptr %"R27"
  %".498" = load float, ptr %"R26"
  %".499" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".497", %".498"
  %"fadd.9" = fadd float %"fmul.9", %".499"
  %".500" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".500"
  ; FFMA R8, R29, R28, R8
  %".503" = load float, ptr %"R29"
  %".504" = load float, ptr %"R28"
  %".505" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".503", %".504"
  %"fadd.10" = fadd float %"fmul.10", %".505"
  %".506" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".506"
  ; FFMA R8, R31, R30, R8
  %".509" = load float, ptr %"R31"
  %".510" = load float, ptr %"R30"
  %".511" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".509", %".510"
  %"fadd.11" = fadd float %"fmul.11", %".511"
  %".512" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".512"
  ; FFMA R8, R33, R32, R8
  %".515" = load float, ptr %"R33"
  %".516" = load float, ptr %"R32"
  %".517" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".515", %".516"
  %"fadd.12" = fadd float %"fmul.12", %".517"
  %".518" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".518"
  ; FFMA R8, R35, R34, R8
  %".521" = load float, ptr %"R35"
  %".522" = load float, ptr %"R34"
  %".523" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".521", %".522"
  %"fadd.13" = fadd float %"fmul.13", %".523"
  %".524" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".524"
  ; FFMA R8, R37, R36, R8
  %".527" = load float, ptr %"R37"
  %".528" = load float, ptr %"R36"
  %".529" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".527", %".528"
  %"fadd.14" = fadd float %"fmul.14", %".529"
  %".530" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".530"
  ; FFMA R7, R39, R38, R8
  %".533" = load float, ptr %"R39"
  %".534" = load float, ptr %"R38"
  %".535" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".533", %".534"
  %"fadd.15" = fadd float %"fmul.15", %".535"
  %".536" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".536"
  ; @P1 BRA `(.L_x_4)
  %".539" = load i1, ptr %"P1"
  %".540" = icmp eq i1 %".539", 1
  br i1 %".540", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".543" = load i32, ptr %"R6"
  %".544" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".543", 4
  %".545" = and i1 %"cmp.6", %".544"
  store i1 %".545", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".548" = load i1, ptr %"P1"
  %".549" = icmp ne i1 %".548", 1
  br i1 %".549", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".552" = load i32, ptr %"R2"
  %"zext.66" = zext i32 %".552" to i64
  %".553" = load i32, ptr %"R3"
  %"zext.67" = zext i32 %".553" to i64
  %"shl.32" = shl i64 %"zext.67", 32
  %"or.32" = or i64 %"shl.32", %"zext.66"
  %".554" = inttoptr i64 %"or.32" to ptr
  %".555" = ptrtoint ptr %".554" to i64
  %".556" = add i64 %".555", 0
  %"for_LDG.32" = inttoptr i64 %".556" to ptr
  %".557" = load float, ptr %"for_LDG.32"
  %".558" = bitcast ptr %"R8" to ptr
  store float %".557", ptr %".558"
  ; LDG.E.SYS R9, [UR4]
  %".561" = load i32, ptr %"UR4"
  %"zext.68" = zext i32 %".561" to i64
  %".562" = load i32, ptr %"UR5"
  %"zext.69" = zext i32 %".562" to i64
  %"shl.33" = shl i64 %"zext.69", 32
  %"or.33" = or i64 %"shl.33", %"zext.68"
  %".563" = inttoptr i64 %"or.33" to ptr
  %".564" = ptrtoint ptr %".563" to i64
  %".565" = add i64 %".564", 0
  %"for_LDG.33" = inttoptr i64 %".565" to ptr
  %".566" = load float, ptr %"for_LDG.33"
  %".567" = bitcast ptr %"R9" to ptr
  store float %".566", ptr %".567"
  ; LDG.E.SYS R11, [R2+0x4]
  %".570" = load i32, ptr %"R2"
  %"zext.70" = zext i32 %".570" to i64
  %".571" = load i32, ptr %"R3"
  %"zext.71" = zext i32 %".571" to i64
  %"shl.34" = shl i64 %"zext.71", 32
  %"or.34" = or i64 %"shl.34", %"zext.70"
  %".572" = inttoptr i64 %"or.34" to ptr
  %".573" = ptrtoint ptr %".572" to i64
  %".574" = add i64 %".573", 4
  %"for_LDG.34" = inttoptr i64 %".574" to ptr
  %".575" = load float, ptr %"for_LDG.34"
  %".576" = bitcast ptr %"R11" to ptr
  store float %".575", ptr %".576"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".579" = load i32, ptr %"UR4"
  %"zext.72" = zext i32 %".579" to i64
  %".580" = load i32, ptr %"UR5"
  %"zext.73" = zext i32 %".580" to i64
  %"shl.35" = shl i64 %"zext.73", 32
  %"or.35" = or i64 %"shl.35", %"zext.72"
  %".581" = inttoptr i64 %"or.35" to ptr
  %".582" = ptrtoint ptr %".581" to i64
  %".583" = add i64 %".582", 4
  %"for_LDG.35" = inttoptr i64 %".583" to ptr
  %".584" = load float, ptr %"for_LDG.35"
  %".585" = bitcast ptr %"R10" to ptr
  store float %".584", ptr %".585"
  ; LDG.E.SYS R13, [R2+0x8]
  %".588" = load i32, ptr %"R2"
  %"zext.74" = zext i32 %".588" to i64
  %".589" = load i32, ptr %"R3"
  %"zext.75" = zext i32 %".589" to i64
  %"shl.36" = shl i64 %"zext.75", 32
  %"or.36" = or i64 %"shl.36", %"zext.74"
  %".590" = inttoptr i64 %"or.36" to ptr
  %".591" = ptrtoint ptr %".590" to i64
  %".592" = add i64 %".591", 8
  %"for_LDG.36" = inttoptr i64 %".592" to ptr
  %".593" = load float, ptr %"for_LDG.36"
  %".594" = bitcast ptr %"R13" to ptr
  store float %".593", ptr %".594"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".597" = load i32, ptr %"UR4"
  %"zext.76" = zext i32 %".597" to i64
  %".598" = load i32, ptr %"UR5"
  %"zext.77" = zext i32 %".598" to i64
  %"shl.37" = shl i64 %"zext.77", 32
  %"or.37" = or i64 %"shl.37", %"zext.76"
  %".599" = inttoptr i64 %"or.37" to ptr
  %".600" = ptrtoint ptr %".599" to i64
  %".601" = add i64 %".600", 8
  %"for_LDG.37" = inttoptr i64 %".601" to ptr
  %".602" = load float, ptr %"for_LDG.37"
  %".603" = bitcast ptr %"R12" to ptr
  store float %".602", ptr %".603"
  ; LDG.E.SYS R15, [R2+0xc]
  %".606" = load i32, ptr %"R2"
  %"zext.78" = zext i32 %".606" to i64
  %".607" = load i32, ptr %"R3"
  %"zext.79" = zext i32 %".607" to i64
  %"shl.38" = shl i64 %"zext.79", 32
  %"or.38" = or i64 %"shl.38", %"zext.78"
  %".608" = inttoptr i64 %"or.38" to ptr
  %".609" = ptrtoint ptr %".608" to i64
  %".610" = add i64 %".609", 12
  %"for_LDG.38" = inttoptr i64 %".610" to ptr
  %".611" = load float, ptr %"for_LDG.38"
  %".612" = bitcast ptr %"R15" to ptr
  store float %".611", ptr %".612"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".615" = load i32, ptr %"UR4"
  %"zext.80" = zext i32 %".615" to i64
  %".616" = load i32, ptr %"UR5"
  %"zext.81" = zext i32 %".616" to i64
  %"shl.39" = shl i64 %"zext.81", 32
  %"or.39" = or i64 %"shl.39", %"zext.80"
  %".617" = inttoptr i64 %"or.39" to ptr
  %".618" = ptrtoint ptr %".617" to i64
  %".619" = add i64 %".618", 12
  %"for_LDG.39" = inttoptr i64 %".619" to ptr
  %".620" = load float, ptr %"for_LDG.39"
  %".621" = bitcast ptr %"R14" to ptr
  store float %".620", ptr %".621"
  ; LDG.E.SYS R17, [R2+0x10]
  %".624" = load i32, ptr %"R2"
  %"zext.82" = zext i32 %".624" to i64
  %".625" = load i32, ptr %"R3"
  %"zext.83" = zext i32 %".625" to i64
  %"shl.40" = shl i64 %"zext.83", 32
  %"or.40" = or i64 %"shl.40", %"zext.82"
  %".626" = inttoptr i64 %"or.40" to ptr
  %".627" = ptrtoint ptr %".626" to i64
  %".628" = add i64 %".627", 16
  %"for_LDG.40" = inttoptr i64 %".628" to ptr
  %".629" = load float, ptr %"for_LDG.40"
  %".630" = bitcast ptr %"R17" to ptr
  store float %".629", ptr %".630"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".633" = load i32, ptr %"UR4"
  %"zext.84" = zext i32 %".633" to i64
  %".634" = load i32, ptr %"UR5"
  %"zext.85" = zext i32 %".634" to i64
  %"shl.41" = shl i64 %"zext.85", 32
  %"or.41" = or i64 %"shl.41", %"zext.84"
  %".635" = inttoptr i64 %"or.41" to ptr
  %".636" = ptrtoint ptr %".635" to i64
  %".637" = add i64 %".636", 16
  %"for_LDG.41" = inttoptr i64 %".637" to ptr
  %".638" = load float, ptr %"for_LDG.41"
  %".639" = bitcast ptr %"R16" to ptr
  store float %".638", ptr %".639"
  ; LDG.E.SYS R19, [R2+0x14]
  %".642" = load i32, ptr %"R2"
  %"zext.86" = zext i32 %".642" to i64
  %".643" = load i32, ptr %"R3"
  %"zext.87" = zext i32 %".643" to i64
  %"shl.42" = shl i64 %"zext.87", 32
  %"or.42" = or i64 %"shl.42", %"zext.86"
  %".644" = inttoptr i64 %"or.42" to ptr
  %".645" = ptrtoint ptr %".644" to i64
  %".646" = add i64 %".645", 20
  %"for_LDG.42" = inttoptr i64 %".646" to ptr
  %".647" = load float, ptr %"for_LDG.42"
  %".648" = bitcast ptr %"R19" to ptr
  store float %".647", ptr %".648"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".651" = load i32, ptr %"UR4"
  %"zext.88" = zext i32 %".651" to i64
  %".652" = load i32, ptr %"UR5"
  %"zext.89" = zext i32 %".652" to i64
  %"shl.43" = shl i64 %"zext.89", 32
  %"or.43" = or i64 %"shl.43", %"zext.88"
  %".653" = inttoptr i64 %"or.43" to ptr
  %".654" = ptrtoint ptr %".653" to i64
  %".655" = add i64 %".654", 20
  %"for_LDG.43" = inttoptr i64 %".655" to ptr
  %".656" = load float, ptr %"for_LDG.43"
  %".657" = bitcast ptr %"R18" to ptr
  store float %".656", ptr %".657"
  ; LDG.E.SYS R21, [R2+0x18]
  %".660" = load i32, ptr %"R2"
  %"zext.90" = zext i32 %".660" to i64
  %".661" = load i32, ptr %"R3"
  %"zext.91" = zext i32 %".661" to i64
  %"shl.44" = shl i64 %"zext.91", 32
  %"or.44" = or i64 %"shl.44", %"zext.90"
  %".662" = inttoptr i64 %"or.44" to ptr
  %".663" = ptrtoint ptr %".662" to i64
  %".664" = add i64 %".663", 24
  %"for_LDG.44" = inttoptr i64 %".664" to ptr
  %".665" = load float, ptr %"for_LDG.44"
  %".666" = bitcast ptr %"R21" to ptr
  store float %".665", ptr %".666"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".669" = load i32, ptr %"UR4"
  %"zext.92" = zext i32 %".669" to i64
  %".670" = load i32, ptr %"UR5"
  %"zext.93" = zext i32 %".670" to i64
  %"shl.45" = shl i64 %"zext.93", 32
  %"or.45" = or i64 %"shl.45", %"zext.92"
  %".671" = inttoptr i64 %"or.45" to ptr
  %".672" = ptrtoint ptr %".671" to i64
  %".673" = add i64 %".672", 24
  %"for_LDG.45" = inttoptr i64 %".673" to ptr
  %".674" = load float, ptr %"for_LDG.45"
  %".675" = bitcast ptr %"R20" to ptr
  store float %".674", ptr %".675"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".678" = load i32, ptr %"R2"
  %"zext.94" = zext i32 %".678" to i64
  %".679" = load i32, ptr %"R3"
  %"zext.95" = zext i32 %".679" to i64
  %"shl.46" = shl i64 %"zext.95", 32
  %"or.46" = or i64 %"shl.46", %"zext.94"
  %".680" = inttoptr i64 %"or.46" to ptr
  %".681" = ptrtoint ptr %".680" to i64
  %".682" = add i64 %".681", 28
  %"for_LDG.46" = inttoptr i64 %".682" to ptr
  %".683" = load float, ptr %"for_LDG.46"
  %".684" = bitcast ptr %"R23" to ptr
  store float %".683", ptr %".684"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".687" = load i32, ptr %"UR4"
  %"zext.96" = zext i32 %".687" to i64
  %".688" = load i32, ptr %"UR5"
  %"zext.97" = zext i32 %".688" to i64
  %"shl.47" = shl i64 %"zext.97", 32
  %"or.47" = or i64 %"shl.47", %"zext.96"
  %".689" = inttoptr i64 %"or.47" to ptr
  %".690" = ptrtoint ptr %".689" to i64
  %".691" = add i64 %".690", 28
  %"for_LDG.47" = inttoptr i64 %".691" to ptr
  %".692" = load float, ptr %"for_LDG.47"
  %".693" = bitcast ptr %"R22" to ptr
  store float %".692", ptr %".693"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".696" = load i32, ptr %"UR4"
  %"add.21" = add i32 %".696", 32
  %"add.22" = add i32 %"add.21", 0
  store i32 %"add.22", ptr %"UR4"
  %"carry.2" = icmp ult i32 %"add.22", %".696"
  store i1 %"carry.2", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".700" = xor i1 1, 1
  %".701" = and i1 %".700", 1
  %".702" = and i1 %".701", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".704" = load i32, ptr %"R5"
  %"add.23" = add i32 %".704", 8
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".707" = load i32, ptr %"UR5"
  %".708" = load i1, ptr %"UP0"
  %".709" = zext i1 %".708" to i32
  %"add.25" = add i32 0, %".707"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".709"
  store i32 %"add.27", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".712" = load i32, ptr %"R2"
  %"add.28" = add i32 %".712", 32
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R2"
  %"carry.3" = icmp ult i32 %"add.29", %".712"
  store i1 %"carry.3", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".716" = load i32, ptr %"R6"
  %"add.30" = add i32 %".716", -8
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".719" = load i32, ptr %"R3"
  %".720" = load i1, ptr %"P1"
  %".721" = zext i1 %".720" to i32
  %"add.32" = add i32 0, %".719"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".721"
  store i32 %"add.34", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".724" = load float, ptr %"R8"
  %".725" = load float, ptr %"R9"
  %".726" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".724", %".725"
  %"fadd.16" = fadd float %"fmul.16", %".726"
  %".727" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".727"
  ; FFMA R8, R11, R10, R8
  %".730" = load float, ptr %"R11"
  %".731" = load float, ptr %"R10"
  %".732" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".730", %".731"
  %"fadd.17" = fadd float %"fmul.17", %".732"
  %".733" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".733"
  ; FFMA R8, R13, R12, R8
  %".736" = load float, ptr %"R13"
  %".737" = load float, ptr %"R12"
  %".738" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".736", %".737"
  %"fadd.18" = fadd float %"fmul.18", %".738"
  %".739" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".739"
  ; FFMA R8, R15, R14, R8
  %".742" = load float, ptr %"R15"
  %".743" = load float, ptr %"R14"
  %".744" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".742", %".743"
  %"fadd.19" = fadd float %"fmul.19", %".744"
  %".745" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".745"
  ; FFMA R8, R17, R16, R8
  %".748" = load float, ptr %"R17"
  %".749" = load float, ptr %"R16"
  %".750" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".748", %".749"
  %"fadd.20" = fadd float %"fmul.20", %".750"
  %".751" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".751"
  ; FFMA R8, R19, R18, R8
  %".754" = load float, ptr %"R19"
  %".755" = load float, ptr %"R18"
  %".756" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".754", %".755"
  %"fadd.21" = fadd float %"fmul.21", %".756"
  %".757" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".757"
  ; FFMA R8, R21, R20, R8
  %".760" = load float, ptr %"R21"
  %".761" = load float, ptr %"R20"
  %".762" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".760", %".761"
  %"fadd.22" = fadd float %"fmul.22", %".762"
  %".763" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".763"
  ; FFMA R7, R23, R22, R8
  %".766" = load float, ptr %"R23"
  %".767" = load float, ptr %"R22"
  %".768" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".766", %".767"
  %"fadd.23" = fadd float %"fmul.23", %".768"
  %".769" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".769"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".773" = load i32, ptr %"R6"
  %".774" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".773", 0
  %".775" = or i1 %"cmp.7", %".774"
  store i1 %".775", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".778" = load i1, ptr %"P0"
  %".779" = icmp ne i1 %".778", 1
  br i1 %".779", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".782" = load i32, ptr %"R2"
  %"zext.98" = zext i32 %".782" to i64
  %".783" = load i32, ptr %"R3"
  %"zext.99" = zext i32 %".783" to i64
  %"shl.48" = shl i64 %"zext.99", 32
  %"or.48" = or i64 %"shl.48", %"zext.98"
  %".784" = inttoptr i64 %"or.48" to ptr
  %".785" = ptrtoint ptr %".784" to i64
  %".786" = add i64 %".785", 0
  %"for_LDG.48" = inttoptr i64 %".786" to ptr
  %".787" = load float, ptr %"for_LDG.48"
  %".788" = bitcast ptr %"R8" to ptr
  store float %".787", ptr %".788"
  ; LDG.E.SYS R9, [UR4]
  %".791" = load i32, ptr %"UR4"
  %"zext.100" = zext i32 %".791" to i64
  %".792" = load i32, ptr %"UR5"
  %"zext.101" = zext i32 %".792" to i64
  %"shl.49" = shl i64 %"zext.101", 32
  %"or.49" = or i64 %"shl.49", %"zext.100"
  %".793" = inttoptr i64 %"or.49" to ptr
  %".794" = ptrtoint ptr %".793" to i64
  %".795" = add i64 %".794", 0
  %"for_LDG.49" = inttoptr i64 %".795" to ptr
  %".796" = load float, ptr %"for_LDG.49"
  %".797" = bitcast ptr %"R9" to ptr
  store float %".796", ptr %".797"
  ; LDG.E.SYS R11, [R2+0x4]
  %".800" = load i32, ptr %"R2"
  %"zext.102" = zext i32 %".800" to i64
  %".801" = load i32, ptr %"R3"
  %"zext.103" = zext i32 %".801" to i64
  %"shl.50" = shl i64 %"zext.103", 32
  %"or.50" = or i64 %"shl.50", %"zext.102"
  %".802" = inttoptr i64 %"or.50" to ptr
  %".803" = ptrtoint ptr %".802" to i64
  %".804" = add i64 %".803", 4
  %"for_LDG.50" = inttoptr i64 %".804" to ptr
  %".805" = load float, ptr %"for_LDG.50"
  %".806" = bitcast ptr %"R11" to ptr
  store float %".805", ptr %".806"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".809" = load i32, ptr %"UR4"
  %"zext.104" = zext i32 %".809" to i64
  %".810" = load i32, ptr %"UR5"
  %"zext.105" = zext i32 %".810" to i64
  %"shl.51" = shl i64 %"zext.105", 32
  %"or.51" = or i64 %"shl.51", %"zext.104"
  %".811" = inttoptr i64 %"or.51" to ptr
  %".812" = ptrtoint ptr %".811" to i64
  %".813" = add i64 %".812", 4
  %"for_LDG.51" = inttoptr i64 %".813" to ptr
  %".814" = load float, ptr %"for_LDG.51"
  %".815" = bitcast ptr %"R10" to ptr
  store float %".814", ptr %".815"
  ; LDG.E.SYS R13, [R2+0x8]
  %".818" = load i32, ptr %"R2"
  %"zext.106" = zext i32 %".818" to i64
  %".819" = load i32, ptr %"R3"
  %"zext.107" = zext i32 %".819" to i64
  %"shl.52" = shl i64 %"zext.107", 32
  %"or.52" = or i64 %"shl.52", %"zext.106"
  %".820" = inttoptr i64 %"or.52" to ptr
  %".821" = ptrtoint ptr %".820" to i64
  %".822" = add i64 %".821", 8
  %"for_LDG.52" = inttoptr i64 %".822" to ptr
  %".823" = load float, ptr %"for_LDG.52"
  %".824" = bitcast ptr %"R13" to ptr
  store float %".823", ptr %".824"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".827" = load i32, ptr %"UR4"
  %"zext.108" = zext i32 %".827" to i64
  %".828" = load i32, ptr %"UR5"
  %"zext.109" = zext i32 %".828" to i64
  %"shl.53" = shl i64 %"zext.109", 32
  %"or.53" = or i64 %"shl.53", %"zext.108"
  %".829" = inttoptr i64 %"or.53" to ptr
  %".830" = ptrtoint ptr %".829" to i64
  %".831" = add i64 %".830", 8
  %"for_LDG.53" = inttoptr i64 %".831" to ptr
  %".832" = load float, ptr %"for_LDG.53"
  %".833" = bitcast ptr %"R12" to ptr
  store float %".832", ptr %".833"
  ; LDG.E.SYS R15, [R2+0xc]
  %".836" = load i32, ptr %"R2"
  %"zext.110" = zext i32 %".836" to i64
  %".837" = load i32, ptr %"R3"
  %"zext.111" = zext i32 %".837" to i64
  %"shl.54" = shl i64 %"zext.111", 32
  %"or.54" = or i64 %"shl.54", %"zext.110"
  %".838" = inttoptr i64 %"or.54" to ptr
  %".839" = ptrtoint ptr %".838" to i64
  %".840" = add i64 %".839", 12
  %"for_LDG.54" = inttoptr i64 %".840" to ptr
  %".841" = load float, ptr %"for_LDG.54"
  %".842" = bitcast ptr %"R15" to ptr
  store float %".841", ptr %".842"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".845" = load i32, ptr %"UR4"
  %"zext.112" = zext i32 %".845" to i64
  %".846" = load i32, ptr %"UR5"
  %"zext.113" = zext i32 %".846" to i64
  %"shl.55" = shl i64 %"zext.113", 32
  %"or.55" = or i64 %"shl.55", %"zext.112"
  %".847" = inttoptr i64 %"or.55" to ptr
  %".848" = ptrtoint ptr %".847" to i64
  %".849" = add i64 %".848", 12
  %"for_LDG.55" = inttoptr i64 %".849" to ptr
  %".850" = load float, ptr %"for_LDG.55"
  %".851" = bitcast ptr %"R14" to ptr
  store float %".850", ptr %".851"
  ; IADD3 R6, R6, -0x4, RZ
  %".854" = load i32, ptr %"R6"
  %"add.35" = add i32 %".854", -4
  %"add.36" = add i32 %"add.35", 0
  store i32 %"add.36", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".857" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".857", 16
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  %"carry.4" = icmp ult i32 %"add.38", %".857"
  store i1 %"carry.4", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".861" = load i32, ptr %"R5"
  %"add.39" = add i32 %".861", 4
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".864" = load i32, ptr %"R6"
  %".865" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".864", 0
  %".866" = and i1 %"cmp.8", %".865"
  store i1 %".866", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".869" = load i32, ptr %"UR5"
  %".870" = load i1, ptr %"UP0"
  %".871" = zext i1 %".870" to i32
  %"add.41" = add i32 0, %".869"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".871"
  store i32 %"add.43", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".874" = load float, ptr %"R8"
  %".875" = load float, ptr %"R9"
  %".876" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".874", %".875"
  %"fadd.24" = fadd float %"fmul.24", %".876"
  %".877" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".877"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".880" = load i32, ptr %"R2"
  %"add.44" = add i32 %".880", 16
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R9"
  %"carry.5" = icmp ult i32 %"add.45", %".880"
  store i1 %"carry.5", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".884" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.46" = add i32 %"mul.6", %".884"
  store i32 %"add.46", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".887" = load float, ptr %"R11"
  %".888" = load float, ptr %"R10"
  %".889" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".887", %".888"
  %"fadd.25" = fadd float %"fmul.25", %".889"
  %".890" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".890"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".893" = load i32, ptr %"R3"
  %".894" = load i1, ptr %"P1"
  %".895" = zext i1 %".894" to i32
  %"add.47" = add i32 0, %".893"
  %"add.48" = add i32 %"add.47", 0
  %"add.49" = add i32 %"add.48", %".895"
  store i32 %"add.49", ptr %"R10"
  ; MOV R3, R10
  %".898" = load i32, ptr %"R10"
  store i32 %".898", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".901" = load float, ptr %"R13"
  %".902" = load float, ptr %"R12"
  %".903" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".901", %".902"
  %"fadd.26" = fadd float %"fmul.26", %".903"
  %".904" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".904"
  ; FFMA R7, R15, R14, R8
  %".907" = load float, ptr %"R15"
  %".908" = load float, ptr %"R14"
  %".909" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".907", %".908"
  %"fadd.27" = fadd float %"fmul.27", %".909"
  %".910" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".910"
  ; @P0 BRA `(.L_x_2)
  %".913" = load i1, ptr %"P0"
  %".914" = icmp eq i1 %".913", 1
  br i1 %".914", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".917" = load i32, ptr %"R4"
  %".918" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".917", 0
  %".919" = and i1 %"cmp.9", %".918"
  store i1 %".919", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".922" = load i1, ptr %"P0"
  %".923" = icmp ne i1 %".922", 1
  br i1 %".923", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".928" = load i32, ptr %"R0"
  %".929" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".928", %"Arg_4"
  %"add.50" = add i32 %"mul.7", %".929"
  store i32 %"add.50", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".932" = load i32, ptr %"R2"
  %".933" = load i32, ptr %"R8"
  %"zext.114" = zext i32 %".932" to i64
  %"zext.115" = zext i32 %".933" to i64
  %"mul.8" = mul i64 %"zext.114", %"zext.115"
  %".934" = ptrtoint ptr %"Arg_1" to i64
  %"add.51" = add i64 %"mul.8", %".934"
  %".935" = and i64 %"add.51", 18446744069414584320
  %".936" = lshr i64 %".935", 32
  %"trunc32.4" = trunc i64 %".936" to i32
  %"trunc32.5" = trunc i64 %"add.51" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".940" = load i32, ptr %"R5"
  %".941" = load i32, ptr %"R8"
  %"zext.116" = zext i32 %".940" to i64
  %"zext.117" = zext i32 %".941" to i64
  %"mul.9" = mul i64 %"zext.116", %"zext.117"
  %".942" = ptrtoint ptr %"Arg_0" to i64
  %"add.52" = add i64 %"mul.9", %".942"
  %".943" = and i64 %"add.52", 18446744069414584320
  %".944" = lshr i64 %".943", 32
  %"trunc32.6" = trunc i64 %".944" to i32
  %"trunc32.7" = trunc i64 %"add.52" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".948" = load i32, ptr %"R2"
  store i32 %".948", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".952" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.53" = add i32 %"mul.10", %".952"
  store i32 %"add.53", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".955" = load i32, ptr %"R8"
  %"zext.118" = zext i32 %".955" to i64
  %".956" = load i32, ptr %"R9"
  %"zext.119" = zext i32 %".956" to i64
  %"shl.56" = shl i64 %"zext.119", 32
  %"or.56" = or i64 %"shl.56", %"zext.118"
  %".957" = inttoptr i64 %"or.56" to ptr
  %".958" = ptrtoint ptr %".957" to i64
  %".959" = add i64 %".958", 0
  %"for_LDG.56" = inttoptr i64 %".959" to ptr
  %".960" = load float, ptr %"for_LDG.56"
  %".961" = bitcast ptr %"R5" to ptr
  store float %".960", ptr %".961"
  ; LDG.E.SYS R2, [R2]
  %".964" = load i32, ptr %"R2"
  %"zext.120" = zext i32 %".964" to i64
  %".965" = load i32, ptr %"R3"
  %"zext.121" = zext i32 %".965" to i64
  %"shl.57" = shl i64 %"zext.121", 32
  %"or.57" = or i64 %"shl.57", %"zext.120"
  %".966" = inttoptr i64 %"or.57" to ptr
  %".967" = ptrtoint ptr %".966" to i64
  %".968" = add i64 %".967", 0
  %"for_LDG.57" = inttoptr i64 %".968" to ptr
  %".969" = load float, ptr %"for_LDG.57"
  %".970" = bitcast ptr %"R2" to ptr
  store float %".969", ptr %".970"
  ; IADD3 R4, R4, -0x1, RZ
  %".973" = load i32, ptr %"R4"
  %"add.54" = add i32 %".973", -1
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".976" = load i32, ptr %"R4"
  %".977" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".976", 0
  %".978" = and i1 %"cmp.10", %".977"
  store i1 %".978", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".981" = load i32, ptr %"R6"
  %"add.56" = add i32 %".981", 4
  %"add.57" = add i32 %"add.56", 0
  store i32 %"add.57", ptr %"R6"
  %"carry.6" = icmp ult i32 %"add.57", %".981"
  store i1 %"carry.6", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".985" = load i32, ptr %"R8"
  %"add.58" = add i32 %".985", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R8"
  %"carry.7" = icmp ult i32 %"add.59", %".985"
  store i1 %"carry.7", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".989" = load i32, ptr %"R3"
  %".990" = load i1, ptr %"P1"
  %".991" = zext i1 %".990" to i32
  %"add.60" = add i32 0, %".989"
  %"add.61" = add i32 %"add.60", 0
  %"add.62" = add i32 %"add.61", %".991"
  store i32 %"add.62", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".994" = load i32, ptr %"R9"
  %".995" = load i1, ptr %"P2"
  %".996" = zext i1 %".995" to i32
  %"add.63" = add i32 0, %".994"
  %"add.64" = add i32 %"add.63", 0
  %"add.65" = add i32 %"add.64", %".996"
  store i32 %"add.65", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".999" = load float, ptr %"R2"
  %".1000" = load float, ptr %"R5"
  %".1001" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".999", %".1000"
  %"fadd.28" = fadd float %"fmul.28", %".1001"
  %".1002" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".1002"
  ; @P0 BRA `(.L_x_6)
  %".1005" = load i1, ptr %"P0"
  %".1006" = icmp eq i1 %".1005", 1
  br i1 %".1006", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".1011" = load i32, ptr %"R0"
  %".1012" = load i32, ptr %"R5"
  %"zext.122" = zext i32 %".1011" to i64
  %"zext.123" = zext i32 %".1012" to i64
  %"mul.11" = mul i64 %"zext.122", %"zext.123"
  %".1013" = ptrtoint ptr %"Arg_2" to i64
  %"add.66" = add i64 %"mul.11", %".1013"
  %".1014" = and i64 %"add.66", 18446744069414584320
  %".1015" = lshr i64 %".1014", 32
  %"trunc32.8" = trunc i64 %".1015" to i32
  %"trunc32.9" = trunc i64 %"add.66" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".1019" = load i32, ptr %"R2"
  %"zext.124" = zext i32 %".1019" to i64
  %".1020" = load i32, ptr %"R3"
  %"zext.125" = zext i32 %".1020" to i64
  %"shl.58" = shl i64 %"zext.125", 32
  %"or.58" = or i64 %"shl.58", %"zext.124"
  %".1021" = inttoptr i64 %"or.58" to ptr
  %".1022" = ptrtoint ptr %".1021" to i64
  %".1023" = add i64 %".1022", 0
  %"for_LDG.58" = inttoptr i64 %".1023" to ptr
  %".1024" = load float, ptr %"for_LDG.58"
  %".1025" = bitcast ptr %"R2" to ptr
  store float %".1024", ptr %".1025"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1028" = load i32, ptr %"R0"
  %".1029" = load i32, ptr %"R5"
  %"zext.126" = zext i32 %".1028" to i64
  %"zext.127" = zext i32 %".1029" to i64
  %"mul.12" = mul i64 %"zext.126", %"zext.127"
  %".1030" = ptrtoint ptr %"Arg_3" to i64
  %"add.67" = add i64 %"mul.12", %".1030"
  %".1031" = and i64 %"add.67", 18446744069414584320
  %".1032" = lshr i64 %".1031", 32
  %"trunc32.10" = trunc i64 %".1032" to i32
  %"trunc32.11" = trunc i64 %"add.67" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".1036" = load float, ptr %"R2"
  %".1037" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1036", %".1037"
  %".1038" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1038"
  ; STG.E.SYS [R4], R7
  %".1041" = load float, ptr %"R7"
  %".1042" = load i32, ptr %"R4"
  %"zext.128" = zext i32 %".1042" to i64
  %".1043" = load i32, ptr %"R5"
  %"zext.129" = zext i32 %".1043" to i64
  %"shl.59" = shl i64 %"zext.129", 32
  %"or.59" = or i64 %"shl.59", %"zext.128"
  %".1044" = inttoptr i64 %"or.59" to ptr
  %".1045" = ptrtoint ptr %".1044" to i64
  %".1046" = add i64 %".1045", 0
  %"for_STG" = inttoptr i64 %".1046" to ptr
  store float %".1041", ptr %"for_STG"
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
  %"add.1" = add i32 %".44", 268435454
  %"add.2" = add i32 %"add.1", 0
  store i32 %"add.2", ptr %"R2"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %".47" = load float, ptr %"R2"
  %".48" = bitcast ptr %"R3" to ptr
  store float %".47", ptr %".48"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.3" = add i32 %"mul.1", 0
  store i32 %"add.3", ptr %"R2"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".53" = load i32, ptr %"R3"
  %".54" = sub i32 0, %".53"
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", %".54"
  store i32 %"add.4", ptr %"R4"
  ; IMAD R5, R4, R7, RZ
  %".57" = load i32, ptr %"R4"
  %".58" = load i32, ptr %"R7"
  %"mul.3" = mul i32 %".57", %".58"
  %"add.5" = add i32 %"mul.3", 0
  store i32 %"add.5", ptr %"R5"
  ; IABS R4, c[0x0][0x170]
  %".61" = icmp sge i32 %"Arg_2", 0
  %".62" = sub i32 0, %"Arg_2"
  %"iabs.1" = select  i1 %".61", i32 %"Arg_2", i32 %".62"
  store i32 %"iabs.1", ptr %"R4"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".65" = load i32, ptr %"R3"
  %".66" = load i32, ptr %"R5"
  %".67" = load i32, ptr %"R2"
  %"mul.4" = mul i32 %".65", %".66"
  %"add.6" = add i32 %"mul.4", %".67"
  store i32 %"add.6", ptr %"R3"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".72" = load i32, ptr %"R3"
  %".73" = load i32, ptr %"R4"
  %"mul.5" = mul i32 %".72", %".73"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R3"
  ; S2R R5, SR_TID.X
  %"ThreadIdx" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx", ptr %"R5"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".78" = load i32, ptr %"R3"
  %".79" = sub i32 0, %".78"
  %"mul.6" = mul i32 0, 0
  %"add.8" = add i32 %"mul.6", %".79"
  store i32 %"add.8", ptr %"R0"
  ; IMAD R0, R7, R0, R4
  %".82" = load i32, ptr %"R7"
  %".83" = load i32, ptr %"R0"
  %".84" = load i32, ptr %"R4"
  %"mul.7" = mul i32 %".82", %".83"
  %"add.9" = add i32 %"mul.7", %".84"
  store i32 %"add.9", ptr %"R0"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".87" = load i32, ptr %"R7"
  %".88" = load i32, ptr %"R0"
  %".89" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".87", %".88"
  %".90" = and i1 %"cmp.1", %".89"
  store i1 %".90", ptr %"P2"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ
  %".93" = load i1, ptr %"P2"
  %".94" = icmp ne i1 %".93", 1
  br i1 %".94", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".97" = load i32, ptr %"R0"
  %".98" = load i32, ptr %"R7"
  %".99" = sub i32 0, %".98"
  %"add.10" = add i32 %".97", %".99"
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R0"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ
  %".104" = load i1, ptr %"P2"
  %".105" = icmp ne i1 %".104", 1
  br i1 %".105", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".108" = load i32, ptr %"R3"
  %"add.12" = add i32 %".108", 1
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".113" = load i32, ptr %"R0"
  %".114" = load i32, ptr %"R7"
  %".115" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".113", %".114"
  %".116" = and i1 %"cmp.2", %".115"
  store i1 %".116", ptr %"P0"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".119" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".120" = load i32, ptr %"R5"
  %"mul.8" = mul i32 %".119", %"nvvm_blockdim_x"
  %"add.14" = add i32 %"mul.8", %".120"
  store i32 %"add.14", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.1" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"ThreadIdx.1", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".125" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_3"
  %".126" = and i1 %"cmp.3", %".125"
  store i1 %".126", ptr %"P2"
  ; @P0 IADD3 R3, R3, 0x1, RZ
  %".129" = load i1, ptr %"P0"
  %".130" = icmp eq i1 %".129", 1
  br i1 %".130", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".133" = load i32, ptr %"R3"
  %"add.15" = add i32 %".133", 1
  %"add.16" = add i32 %"add.15", 0
  store i32 %"add.16", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".138" = load i32, ptr %"R3"
  %"mul.9" = mul i32 0, 0
  %"add.17" = add i32 %"mul.9", %".138"
  store i32 %"add.17", ptr %"R21"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21
  %".141" = load i1, ptr %"P1"
  %".142" = icmp ne i1 %".141", 1
  br i1 %".142", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".145" = load i32, ptr %"R21"
  %".146" = sub i32 0, %".145"
  %"mul.10" = mul i32 0, 0
  %"add.18" = add i32 %"mul.10", %".146"
  store i32 %"add.18", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".151" = load i1, ptr %"P2"
  %".152" = icmp ne i1 %".151", 1
  br i1 %".152", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".155" = xor i1 1, -1
  %".156" = xor i32 %"Arg_3", -1
  store i32 %".156", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".161" = load i32, ptr %"R10"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".162" = load i32, ptr %"R7"
  %"mul.11" = mul i32 %".161", %"nvvm_blockdim_y"
  %"add.19" = add i32 %"mul.11", %".162"
  store i32 %"add.19", ptr %"R10"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".165" = load i32, ptr %"R0"
  %".166" = load i32, ptr %"R21"
  %".167" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".165", %".166"
  %".168" = and i1 %"cmp.4", %".167"
  store i1 %".168", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".171" = load i32, ptr %"R10"
  %".172" = load i32, ptr %"R21"
  %".173" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".171", %".172"
  %".174" = or i1 %"cmp.5", %".173"
  store i1 %".174", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".177" = load i32, ptr %"R19"
  %".178" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".177", %"Arg_4"
  %".179" = or i1 %"cmp.6", %".178"
  store i1 %".179", ptr %"P0"
  ; @P0 EXIT
  %".182" = load i1, ptr %"P0"
  %".183" = icmp eq i1 %".182", 1
  br i1 %".183", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
.text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240:
  ; EXIT
  br label %"ExitFunction"
.text._Z10max_pool2dPfS_iii_split_0x0250:
  ; IMAD.MOV.U32 R15, RZ, RZ, c[0x0][0x174]
  %"mul.12" = mul i32 0, 0
  %"add.20" = add i32 %"mul.12", %"Arg_3"
  store i32 %"add.20", ptr %"R15"
  ; MOV R11, 0xff800000
  store i32 4286578688, ptr %"R11"
  ; ISETP.GE.AND P0, PT, R15, 0x1, PT
  %".192" = load i32, ptr %"R15"
  %".193" = load i1, ptr %"PT"
  %"cmp.7" = icmp sge i32 %".192", 1
  %".194" = and i1 %"cmp.7", %".193"
  store i1 %".194", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".197" = load i1, ptr %"P0"
  %".198" = icmp ne i1 %".197", 1
  br i1 %".198", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".201" = load i32, ptr %"R19"
  %"mul.13" = mul i32 %".201", %"Arg_2"
  %"add.21" = add i32 %"mul.13", 0
  store i32 %"add.21", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".204" = load i32, ptr %"R15"
  %"add.22" = add i32 %".204", -1
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".207" = load i32, ptr %"R0"
  %"mul.14" = mul i32 %".207", %"Arg_3"
  %"add.24" = add i32 %"mul.14", 0
  store i32 %"add.24", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".210" = load i32, ptr %"R15"
  %".211" = xor i1 1, -1
  %".212" = and i32 %".210", 3
  store i32 %".212", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".215" = load i32, ptr %"R10"
  %".216" = load i32, ptr %"R3"
  %"mul.15" = mul i32 %".215", %"Arg_3"
  %"add.25" = add i32 %"mul.15", %".216"
  store i32 %"add.25", ptr %"R12"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".219" = load i32, ptr %"R2"
  %".220" = load i1, ptr %"PT"
  %"cmp.8" = icmp sge i32 %".219", 3
  %".221" = and i1 %"cmp.8", %".220"
  store i1 %".221", ptr %"P0"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.26" = add i32 %"mul.16", -8388608
  store i32 %"add.26", ptr %"R11"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".226" = load i32, ptr %"R15"
  %".227" = sub i32 0, %"Arg_3"
  %"add.27" = add i32 %".226", %".227"
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R20"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.29" = add i32 %"mul.17", 0
  store i32 %"add.29", ptr %"R16"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".232" = load i32, ptr %"R12"
  %".233" = load i32, ptr %"R13"
  %"mul.18" = mul i32 %".232", %"Arg_2"
  %"add.30" = add i32 %"mul.18", %".233"
  store i32 %"add.30", ptr %"R14"
  br label %".L_x_12"
.L_x_12:
  ; UMOV UR4, URZ
  %".237" = load i32, ptr %"URZ"
  store i32 %".237", ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".240" = load i32, ptr %"R15"
  %".241" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".240", 0
  %".242" = and i1 %"cmp.9", %".241"
  store i1 %".242", ptr %"P2"
  ; @!P0 BRA `(.L_x_9)
  %".245" = load i1, ptr %"P0"
  %".246" = icmp ne i1 %".245", 1
  br i1 %".246", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".249" = load i32, ptr %"R14"
  %".250" = load i32, ptr %"R16"
  %"mul.19" = mul i32 %".249", 1
  %"add.31" = add i32 %"mul.19", %".250"
  store i32 %"add.31", ptr %"R17"
  ; UMOV UR4, URZ
  %".253" = load i32, ptr %"URZ"
  store i32 %".253", ptr %"UR4"
  br label %".L_x_10"
.L_x_10:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.32" = add i32 %"mul.20", %"Arg_2"
  store i32 %"add.32", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".261" = load i32, ptr %"R17"
  %".262" = load i32, ptr %"R2"
  %"zext" = zext i32 %".261" to i64
  %"zext.1" = zext i32 %".262" to i64
  %"mul.21" = mul i64 %"zext", %"zext.1"
  %".263" = ptrtoint ptr %"Arg_0" to i64
  %"add.33" = add i64 %"mul.21", %".263"
  %".264" = and i64 %"add.33", 18446744069414584320
  %".265" = lshr i64 %".264", 32
  %"trunc32" = trunc i64 %".265" to i32
  %"trunc32.1" = trunc i64 %"add.33" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".269" = load i32, ptr %"R23"
  %".270" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".269" to i64
  %"zext.3" = zext i32 4 to i64
  %"mul.22" = mul i64 %"zext.2", %"zext.3"
  %"zext.4" = zext i32 %".270" to i64
  %"add.34" = add i64 %"mul.22", %"zext.4"
  %".271" = and i64 %"add.34", 18446744069414584320
  %".272" = lshr i64 %".271", 32
  %"trunc32.2" = trunc i64 %".272" to i32
  %"trunc32.3" = trunc i64 %"add.34" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; LDG.E.SYS R2, [R2]
  %".276" = load i32, ptr %"R2"
  %"zext.5" = zext i32 %".276" to i64
  %".277" = load i32, ptr %"R3"
  %"zext.6" = zext i32 %".277" to i64
  %"shl" = shl i64 %"zext.6", 32
  %"or" = or i64 %"shl", %"zext.5"
  %".278" = inttoptr i64 %"or" to ptr
  %".279" = ptrtoint ptr %".278" to i64
  %".280" = add i64 %".279", 0
  %"for_LDG" = inttoptr i64 %".280" to ptr
  %".281" = load float, ptr %"for_LDG"
  %".282" = bitcast ptr %"R2" to ptr
  store float %".281", ptr %".282"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".285" = load i32, ptr %"R23"
  %".286" = load i32, ptr %"R4"
  %"zext.7" = zext i32 %".285" to i64
  %"zext.8" = zext i32 4 to i64
  %"mul.23" = mul i64 %"zext.7", %"zext.8"
  %"zext.9" = zext i32 %".286" to i64
  %"add.35" = add i64 %"mul.23", %"zext.9"
  %".287" = and i64 %"add.35", 18446744069414584320
  %".288" = lshr i64 %".287", 32
  %"trunc32.4" = trunc i64 %".288" to i32
  %"trunc32.5" = trunc i64 %"add.35" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".292" = load i32, ptr %"R4"
  %"zext.10" = zext i32 %".292" to i64
  %".293" = load i32, ptr %"R5"
  %"zext.11" = zext i32 %".293" to i64
  %"shl.1" = shl i64 %"zext.11", 32
  %"or.1" = or i64 %"shl.1", %"zext.10"
  %".294" = inttoptr i64 %"or.1" to ptr
  %".295" = ptrtoint ptr %".294" to i64
  %".296" = add i64 %".295", 0
  %"for_LDG.1" = inttoptr i64 %".296" to ptr
  %".297" = load float, ptr %"for_LDG.1"
  %".298" = bitcast ptr %"R4" to ptr
  store float %".297", ptr %".298"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".301" = load i32, ptr %"R23"
  %".302" = load i32, ptr %"R6"
  %"zext.12" = zext i32 %".301" to i64
  %"zext.13" = zext i32 4 to i64
  %"mul.24" = mul i64 %"zext.12", %"zext.13"
  %"zext.14" = zext i32 %".302" to i64
  %"add.36" = add i64 %"mul.24", %"zext.14"
  %".303" = and i64 %"add.36", 18446744069414584320
  %".304" = lshr i64 %".303", 32
  %"trunc32.6" = trunc i64 %".304" to i32
  %"trunc32.7" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".308" = load i32, ptr %"R6"
  %"zext.15" = zext i32 %".308" to i64
  %".309" = load i32, ptr %"R7"
  %"zext.16" = zext i32 %".309" to i64
  %"shl.2" = shl i64 %"zext.16", 32
  %"or.2" = or i64 %"shl.2", %"zext.15"
  %".310" = inttoptr i64 %"or.2" to ptr
  %".311" = ptrtoint ptr %".310" to i64
  %".312" = add i64 %".311", 0
  %"for_LDG.2" = inttoptr i64 %".312" to ptr
  %".313" = load float, ptr %"for_LDG.2"
  %".314" = bitcast ptr %"R6" to ptr
  store float %".313", ptr %".314"
  ; LDG.E.SYS R8, [R8]
  %".317" = load i32, ptr %"R8"
  %"zext.17" = zext i32 %".317" to i64
  %".318" = load i32, ptr %"R9"
  %"zext.18" = zext i32 %".318" to i64
  %"shl.3" = shl i64 %"zext.18", 32
  %"or.3" = or i64 %"shl.3", %"zext.17"
  %".319" = inttoptr i64 %"or.3" to ptr
  %".320" = ptrtoint ptr %".319" to i64
  %".321" = add i64 %".320", 0
  %"for_LDG.3" = inttoptr i64 %".321" to ptr
  %".322" = load float, ptr %"for_LDG.3"
  %".323" = bitcast ptr %"R8" to ptr
  store float %".322", ptr %".323"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".326" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".326", 4
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".329" = load i32, ptr %"R20"
  %".330" = load i32, ptr %"UR4"
  %"add.39" = add i32 %".329", %".330"
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".333" = load i32, ptr %"R18"
  %".334" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".333", 0
  %".335" = and i1 %"cmp.10", %".334"
  store i1 %".335", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".338" = load i32, ptr %"R23"
  %".339" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".338", 4
  %"add.41" = add i32 %"mul.25", %".339"
  store i32 %"add.41", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".342" = load float, ptr %"R2"
  %".343" = load float, ptr %"R11"
  %".344" = xor i1 1, -1
  %".345" = fcmp olt float %".342", %".343"
  %"fmnmx_min" = select  i1 %".345", float %".342", float %".343"
  %".346" = fcmp ogt float %".342", %".343"
  %"fmnmx_max" = select  i1 %".346", float %".342", float %".343"
  %"fmnmx_final" = select  i1 %".344", float %"fmnmx_min", float %"fmnmx_max"
  %".347" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final", ptr %".347"
  ; FMNMX R11, R11, R4, !PT
  %".350" = load float, ptr %"R11"
  %".351" = load float, ptr %"R4"
  %".352" = xor i1 1, -1
  %".353" = fcmp olt float %".350", %".351"
  %"fmnmx_min.1" = select  i1 %".353", float %".350", float %".351"
  %".354" = fcmp ogt float %".350", %".351"
  %"fmnmx_max.1" = select  i1 %".354", float %".350", float %".351"
  %"fmnmx_final.1" = select  i1 %".352", float %"fmnmx_min.1", float %"fmnmx_max.1"
  %".355" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.1", ptr %".355"
  ; FMNMX R11, R11, R6, !PT
  %".358" = load float, ptr %"R11"
  %".359" = load float, ptr %"R6"
  %".360" = xor i1 1, -1
  %".361" = fcmp olt float %".358", %".359"
  %"fmnmx_min.2" = select  i1 %".361", float %".358", float %".359"
  %".362" = fcmp ogt float %".358", %".359"
  %"fmnmx_max.2" = select  i1 %".362", float %".358", float %".359"
  %"fmnmx_final.2" = select  i1 %".360", float %"fmnmx_min.2", float %"fmnmx_max.2"
  %".363" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.2", ptr %".363"
  ; FMNMX R11, R11, R8, !PT
  %".366" = load float, ptr %"R11"
  %".367" = load float, ptr %"R8"
  %".368" = xor i1 1, -1
  %".369" = fcmp olt float %".366", %".367"
  %"fmnmx_min.3" = select  i1 %".369", float %".366", float %".367"
  %".370" = fcmp ogt float %".366", %".367"
  %"fmnmx_max.3" = select  i1 %".370", float %".366", float %".367"
  %"fmnmx_final.3" = select  i1 %".368", float %"fmnmx_min.3", float %"fmnmx_max.3"
  %".371" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.3", ptr %".371"
  ; @P1 BRA `(.L_x_10)
  %".374" = load i1, ptr %"P1"
  %".375" = icmp eq i1 %".374", 1
  br i1 %".375", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".378" = load i32, ptr %"R13"
  %".379" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".378", 1
  %"add.42" = add i32 %"mul.26", %".379"
  store i32 %"add.42", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".382" = load i1, ptr %"P2"
  %".383" = icmp ne i1 %".382", 1
  br i1 %".383", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".386" = load i32, ptr %"R12"
  %".387" = load i32, ptr %"UR4"
  %"add.43" = add i32 %".386", %".387"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".392" = load i32, ptr %"R5"
  %".393" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".392", %"Arg_2"
  %"add.45" = add i32 %"mul.27", %".393"
  store i32 %"add.45", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".396" = load i32, ptr %"R2"
  %".397" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".396" to i64
  %"zext.20" = zext i32 %".397" to i64
  %"mul.28" = mul i64 %"zext.19", %"zext.20"
  %".398" = ptrtoint ptr %"Arg_0" to i64
  %"add.46" = add i64 %"mul.28", %".398"
  %".399" = and i64 %"add.46", 18446744069414584320
  %".400" = lshr i64 %".399", 32
  %"trunc32.8" = trunc i64 %".400" to i32
  %"trunc32.9" = trunc i64 %"add.46" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".404" = load i32, ptr %"R2"
  %"zext.21" = zext i32 %".404" to i64
  %".405" = load i32, ptr %"R3"
  %"zext.22" = zext i32 %".405" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".406" = inttoptr i64 %"or.4" to ptr
  %".407" = ptrtoint ptr %".406" to i64
  %".408" = add i64 %".407", 0
  %"for_LDG.4" = inttoptr i64 %".408" to ptr
  %".409" = load float, ptr %"for_LDG.4"
  %".410" = bitcast ptr %"R2" to ptr
  store float %".409", ptr %".410"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".413" = load i32, ptr %"R15"
  %".414" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".413", 1
  %".415" = and i1 %"cmp.11", %".414"
  store i1 %".415", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".418" = load float, ptr %"R11"
  %".419" = load float, ptr %"R2"
  %".420" = xor i1 1, -1
  %".421" = fcmp olt float %".418", %".419"
  %"fmnmx_min.4" = select  i1 %".421", float %".418", float %".419"
  %".422" = fcmp ogt float %".418", %".419"
  %"fmnmx_max.4" = select  i1 %".422", float %".418", float %".419"
  %"fmnmx_final.4" = select  i1 %".420", float %"fmnmx_min.4", float %"fmnmx_max.4"
  %".423" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.4", ptr %".423"
  ; @!P1 BRA `(.L_x_11)
  %".426" = load i1, ptr %"P1"
  %".427" = icmp ne i1 %".426", 1
  br i1 %".427", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".430" = load i32, ptr %"R15"
  %".431" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".430", 2
  %".432" = and i1 %"cmp.12", %".431"
  store i1 %".432", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".435" = load i32, ptr %"R5"
  %"add.47" = add i32 %".435", 1
  %"add.48" = add i32 %"add.47", 0
  store i32 %"add.48", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".438" = load i32, ptr %"R2"
  %".439" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".438", %"Arg_2"
  %"add.49" = add i32 %"mul.29", %".439"
  store i32 %"add.49", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".442" = load i1, ptr %"P1"
  %".443" = icmp eq i1 %".442", 1
  br i1 %".443", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".446" = load i32, ptr %"R5"
  %"add.50" = add i32 %".446", 2
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".451" = load i1, ptr %"P1"
  %".452" = icmp eq i1 %".451", 1
  br i1 %".452", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".455" = load i32, ptr %"R3"
  %".456" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".455", %"Arg_2"
  %"add.52" = add i32 %"mul.30", %".456"
  store i32 %"add.52", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".461" = load i32, ptr %"R2"
  %".462" = load i32, ptr %"R7"
  %"zext.23" = zext i32 %".461" to i64
  %"zext.24" = zext i32 %".462" to i64
  %"mul.31" = mul i64 %"zext.23", %"zext.24"
  %".463" = ptrtoint ptr %"Arg_0" to i64
  %"add.53" = add i64 %"mul.31", %".463"
  %".464" = and i64 %"add.53", 18446744069414584320
  %".465" = lshr i64 %".464", 32
  %"trunc32.10" = trunc i64 %".465" to i32
  %"trunc32.11" = trunc i64 %"add.53" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".469" = load i1, ptr %"P1"
  %".470" = icmp eq i1 %".469", 1
  br i1 %".470", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".473" = load i32, ptr %"R4"
  %".474" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".473" to i64
  %"zext.26" = zext i32 %".474" to i64
  %"mul.32" = mul i64 %"zext.25", %"zext.26"
  %".475" = ptrtoint ptr %"Arg_0" to i64
  %"add.54" = add i64 %"mul.32", %".475"
  %".476" = and i64 %"add.54", 18446744069414584320
  %".477" = lshr i64 %".476", 32
  %"trunc32.12" = trunc i64 %".477" to i32
  %"trunc32.13" = trunc i64 %"add.54" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".483" = load i32, ptr %"R2"
  %"zext.27" = zext i32 %".483" to i64
  %".484" = load i32, ptr %"R3"
  %"zext.28" = zext i32 %".484" to i64
  %"shl.5" = shl i64 %"zext.28", 32
  %"or.5" = or i64 %"shl.5", %"zext.27"
  %".485" = inttoptr i64 %"or.5" to ptr
  %".486" = ptrtoint ptr %".485" to i64
  %".487" = add i64 %".486", 0
  %"for_LDG.5" = inttoptr i64 %".487" to ptr
  %".488" = load float, ptr %"for_LDG.5"
  %".489" = bitcast ptr %"R2" to ptr
  store float %".488", ptr %".489"
  ; @P1 LDG.E.SYS R4, [R4]
  %".492" = load i1, ptr %"P1"
  %".493" = icmp eq i1 %".492", 1
  br i1 %".493", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".496" = load i32, ptr %"R4"
  %"zext.29" = zext i32 %".496" to i64
  %".497" = load i32, ptr %"R5"
  %"zext.30" = zext i32 %".497" to i64
  %"shl.6" = shl i64 %"zext.30", 32
  %"or.6" = or i64 %"shl.6", %"zext.29"
  %".498" = inttoptr i64 %"or.6" to ptr
  %".499" = ptrtoint ptr %".498" to i64
  %".500" = add i64 %".499", 0
  %"for_LDG.6" = inttoptr i64 %".500" to ptr
  %".501" = load float, ptr %"for_LDG.6"
  %".502" = bitcast ptr %"R4" to ptr
  store float %".501", ptr %".502"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".507" = load float, ptr %"R11"
  %".508" = load float, ptr %"R2"
  %".509" = xor i1 1, -1
  %".510" = fcmp olt float %".507", %".508"
  %"fmnmx_min.5" = select  i1 %".510", float %".507", float %".508"
  %".511" = fcmp ogt float %".507", %".508"
  %"fmnmx_max.5" = select  i1 %".511", float %".507", float %".508"
  %"fmnmx_final.5" = select  i1 %".509", float %"fmnmx_min.5", float %"fmnmx_max.5"
  %".512" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.5", ptr %".512"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".515" = load i1, ptr %"P1"
  %".516" = icmp eq i1 %".515", 1
  br i1 %".516", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".519" = load float, ptr %"R11"
  %".520" = load float, ptr %"R4"
  %".521" = xor i1 1, -1
  %".522" = fcmp olt float %".519", %".520"
  %"fmnmx_min.6" = select  i1 %".522", float %".519", float %".520"
  %".523" = fcmp ogt float %".519", %".520"
  %"fmnmx_max.6" = select  i1 %".523", float %".519", float %".520"
  %"fmnmx_final.6" = select  i1 %".521", float %"fmnmx_min.6", float %"fmnmx_max.6"
  %".524" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.6", ptr %".524"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".529" = load i32, ptr %"R16"
  %"add.55" = add i32 %".529", 1
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".532" = load i32, ptr %"R16"
  %".533" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".532", %"Arg_3"
  %".534" = and i1 %"cmp.13", %".533"
  store i1 %".534", ptr %"P1"
  ; @!P1 BRA `(.L_x_12)
  %".537" = load i1, ptr %"P1"
  %".538" = icmp ne i1 %".537", 1
  br i1 %".538", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".541" = load i32, ptr %"R21"
  %".542" = load i32, ptr %"R19"
  %".543" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".541", %".542"
  %"add.57" = add i32 %"mul.33", %".543"
  store i32 %"add.57", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.58" = add i32 %"mul.34", 4
  store i32 %"add.58", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".548" = load i32, ptr %"R21"
  %".549" = load i32, ptr %"R3"
  %".550" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".548", %".549"
  %"add.59" = add i32 %"mul.35", %".550"
  store i32 %"add.59", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".553" = load i32, ptr %"R3"
  %".554" = load i32, ptr %"R2"
  %"zext.31" = zext i32 %".553" to i64
  %"zext.32" = zext i32 %".554" to i64
  %"mul.36" = mul i64 %"zext.31", %"zext.32"
  %".555" = ptrtoint ptr %"Arg_1" to i64
  %"add.60" = add i64 %"mul.36", %".555"
  %".556" = and i64 %"add.60", 18446744069414584320
  %".557" = lshr i64 %".556", 32
  %"trunc32.14" = trunc i64 %".557" to i32
  %"trunc32.15" = trunc i64 %"add.60" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".561" = load i32, ptr %"R11"
  %".562" = load i32, ptr %"R2"
  %"zext.33" = zext i32 %".562" to i64
  %".563" = load i32, ptr %"R3"
  %"zext.34" = zext i32 %".563" to i64
  %"shl.7" = shl i64 %"zext.34", 32
  %"or.7" = or i64 %"shl.7", %"zext.33"
  %".564" = inttoptr i64 %"or.7" to ptr
  %".565" = ptrtoint ptr %".564" to i64
  %".566" = add i64 %".565", 0
  %"for_STG" = inttoptr i64 %".566" to ptr
  store i32 %".561", ptr %"for_STG"
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
  %"add" = add i32 %".20", %".22"
  %"add.1" = add i32 %"add", 0
  store i32 %"add.1", ptr %"UR5"
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
  %".33" = load i32, ptr %"R3"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".34" = load i32, ptr %"R4"
  %"mul" = mul i32 %".33", %"nvvm_blockdim_y"
  %"add.2" = add i32 %"mul", %".34"
  store i32 %"add.2", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R3, UR5, PT
  %".37" = load i32, ptr %"R3"
  %".38" = load i32, ptr %"UR5"
  %".39" = load i1, ptr %"PT"
  %"cmp" = icmp sgt i32 %".37", %".38"
  %".40" = and i1 %"cmp", %".39"
  store i1 %".40", ptr %"P0"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".43" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".44" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".43", %"nvvm_blockdim_x"
  %"add.3" = add i32 %"mul.1", %".44"
  store i32 %"add.3", ptr %"R2"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".47" = load i32, ptr %"R2"
  %".48" = load i32, ptr %"UR5"
  %".49" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".47", %".48"
  %".50" = or i1 %"cmp.1", %".49"
  store i1 %".50", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".53" = load i32, ptr %"R0"
  %".54" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".53", %"Arg_6"
  %".55" = or i1 %"cmp.2", %".54"
  store i1 %".55", ptr %"P0"
  ; @P0 EXIT
  %".58" = load i1, ptr %"P0"
  %".59" = icmp eq i1 %".58", 1
  br i1 %".59", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
.text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0:
  ; EXIT
  br label %"ExitFunction"
.text._Z6conv2dPfS_S_iiii_split_0x00e0:
  ; MOV R4, 0x1
  store i32 1, ptr %"R4"
  ; IMAD.MOV.U32 R12, RZ, RZ, RZ
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", 0
  store i32 %"add.4", ptr %"R12"
  ; ISETP.LE.AND P0, PT, R4, c[0x0][0x17c], PT
  %".68" = load i32, ptr %"R4"
  %".69" = load i1, ptr %"PT"
  %"cmp.3" = icmp sle i32 %".68", %"Arg_4"
  %".70" = and i1 %"cmp.3", %".69"
  store i1 %".70", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".73" = load i32, ptr %"R4"
  %".74" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".73", %"Arg_5"
  %".75" = or i1 %"cmp.4", %".74"
  store i1 %".75", ptr %"P0"
  ; @P0 BRA `(.L_x_15)
  %".78" = load i1, ptr %"P0"
  %".79" = icmp eq i1 %".78", 1
  br i1 %".79", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
.text._Z6conv2dPfS_S_iiii_split_0x0130:
  ; IMAD.MOV.U32 R4, RZ, RZ, c[0x0][0x17c]
  %"mul.3" = mul i32 0, 0
  %"add.5" = add i32 %"mul.3", %"Arg_4"
  store i32 %"add.5", ptr %"R4"
  ; MOV R5, 0x1
  store i32 1, ptr %"R5"
  ; IMAD.MOV.U32 R10, RZ, RZ, RZ
  %"mul.4" = mul i32 0, 0
  %"add.6" = add i32 %"mul.4", 0
  store i32 %"add.6", ptr %"R10"
  ; MOV R12, RZ
  %".88" = load float, ptr %"RZ"
  %".89" = bitcast ptr %"R12" to ptr
  store float %".88", ptr %".89"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".92" = load i32, ptr %"R5"
  %".93" = sub i32 0, %".92"
  %"add.7" = add i32 %".93", %"Arg_4"
  %"add.8" = add i32 %"add.7", 0
  store i32 %"add.8", ptr %"R5"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".96" = load i32, ptr %"R4"
  %".97" = xor i1 1, -1
  %".98" = and i32 %".96", 3
  store i32 %".98", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".101" = load i32, ptr %"R5"
  %".102" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".101", 3
  %".103" = and i1 %"cmp.5", %".102"
  store i1 %".103", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".106" = load i32, ptr %"R4"
  %".107" = sub i32 0, %"Arg_4"
  %"add.9" = add i32 %".106", %".107"
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R26"
  br label %".L_x_20"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".111" = load i32, ptr %"R10"
  %".112" = load i32, ptr %"R3"
  %"mul.5" = mul i32 %".111", %"Arg_3"
  %"add.11" = add i32 %"mul.5", %".112"
  store i32 %"add.11", ptr %"R11"
  ; MOV R8, RZ
  %".115" = load i32, ptr %"RZ"
  store i32 %".115", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".118" = load i32, ptr %"R0"
  %".119" = load i32, ptr %"R10"
  %"mul.6" = mul i32 %".118", %"Arg_5"
  %"add.12" = add i32 %"mul.6", %".119"
  store i32 %"add.12", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".122" = load i32, ptr %"R10"
  %"add.13" = add i32 %".122", 1
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".125" = load i32, ptr %"R11"
  %".126" = load i32, ptr %"R2"
  %"mul.7" = mul i32 %".125", %"Arg_3"
  %"add.15" = add i32 %"mul.7", %".126"
  store i32 %"add.15", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".129" = load i32, ptr %"R10"
  %".130" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".129", %"Arg_5"
  %".131" = and i1 %"cmp.6", %".130"
  store i1 %".131", ptr %"P1"
  br label %".L_x_19"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".135" = load i32, ptr %"R9"
  %".136" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".135", %"Arg_4"
  %"add.16" = add i32 %"mul.8", %".136"
  store i32 %"add.16", ptr %"R6"
  ; UMOV UR4, URZ
  %".139" = load i32, ptr %"URZ"
  store i32 %".139", ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".142" = load i32, ptr %"R4"
  %".143" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".142", 0
  %".144" = and i1 %"cmp.7", %".143"
  store i1 %".144", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".147" = load i32, ptr %"R6"
  %"mul.9" = mul i32 %".147", %"Arg_4"
  %"add.17" = add i32 %"mul.9", 0
  store i32 %"add.17", ptr %"R29"
  ; @!P0 BRA `(.L_x_16)
  %".150" = load i1, ptr %"P0"
  %".151" = icmp ne i1 %".150", 1
  br i1 %".151", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".156" = load i32, ptr %"R5"
  %".157" = load i32, ptr %"R8"
  %"mul.10" = mul i32 %".156", 1
  %"add.18" = add i32 %"mul.10", %".157"
  store i32 %"add.18", ptr %"R13"
  ; UMOV UR4, URZ
  %".160" = load i32, ptr %"URZ"
  store i32 %".160", ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".163" = load i32, ptr %"R29"
  %".164" = load i32, ptr %"R24"
  %"zext" = zext i32 %".163" to i64
  %"zext.1" = zext i32 %".164" to i64
  %"mul.11" = mul i64 %"zext", %"zext.1"
  %".165" = ptrtoint ptr %"Arg_1" to i64
  %"add.19" = add i64 %"mul.11", %".165"
  %".166" = and i64 %"add.19", 18446744069414584320
  %".167" = lshr i64 %".166", 32
  %"trunc32" = trunc i64 %".167" to i32
  %"trunc32.1" = trunc i64 %"add.19" to i32
  store i32 %"trunc32.1", ptr %"R6"
  store i32 %"trunc32", ptr %"R7"
  ; MOV R23, R6
  %".171" = load i32, ptr %"R6"
  store i32 %".171", ptr %"R23"
  br label %".L_x_17"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".175" = load i32, ptr %"R13"
  %".176" = load i32, ptr %"R24"
  %"zext.2" = zext i32 %".175" to i64
  %"zext.3" = zext i32 %".176" to i64
  %"mul.12" = mul i64 %"zext.2", %"zext.3"
  %".177" = ptrtoint ptr %"Arg_0" to i64
  %"add.20" = add i64 %"mul.12", %".177"
  %".178" = and i64 %"add.20", 18446744069414584320
  %".179" = lshr i64 %".178", 32
  %"trunc32.2" = trunc i64 %".179" to i32
  %"trunc32.3" = trunc i64 %"add.20" to i32
  store i32 %"trunc32.3", ptr %"R14"
  store i32 %"trunc32.2", ptr %"R15"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".185" = load i32, ptr %"R23"
  %"mul.13" = mul i32 0, 0
  %"add.21" = add i32 %"mul.13", %".185"
  store i32 %"add.21", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".188" = load i32, ptr %"R31"
  %".189" = load i32, ptr %"R14"
  %"zext.4" = zext i32 %".188" to i64
  %"zext.5" = zext i32 4 to i64
  %"mul.14" = mul i64 %"zext.4", %"zext.5"
  %"zext.6" = zext i32 %".189" to i64
  %"add.22" = add i64 %"mul.14", %"zext.6"
  %".190" = and i64 %"add.22", 18446744069414584320
  %".191" = lshr i64 %".190", 32
  %"trunc32.4" = trunc i64 %".191" to i32
  %"trunc32.5" = trunc i64 %"add.22" to i32
  store i32 %"trunc32.5", ptr %"R16"
  store i32 %"trunc32.4", ptr %"R17"
  ; LDG.E.SYS R14, [R14]
  %".195" = load i32, ptr %"R14"
  %"zext.7" = zext i32 %".195" to i64
  %".196" = load i32, ptr %"R15"
  %"zext.8" = zext i32 %".196" to i64
  %"shl" = shl i64 %"zext.8", 32
  %"or" = or i64 %"shl", %"zext.7"
  %".197" = inttoptr i64 %"or" to ptr
  %".198" = ptrtoint ptr %".197" to i64
  %".199" = add i64 %".198", 0
  %"for_LDG" = inttoptr i64 %".199" to ptr
  %".200" = load float, ptr %"for_LDG"
  %".201" = bitcast ptr %"R14" to ptr
  store float %".200", ptr %".201"
  ; LDG.E.SYS R23, [R6]
  %".204" = load i32, ptr %"R6"
  %"zext.9" = zext i32 %".204" to i64
  %".205" = load i32, ptr %"R7"
  %"zext.10" = zext i32 %".205" to i64
  %"shl.1" = shl i64 %"zext.10", 32
  %"or.1" = or i64 %"shl.1", %"zext.9"
  %".206" = inttoptr i64 %"or.1" to ptr
  %".207" = ptrtoint ptr %".206" to i64
  %".208" = add i64 %".207", 0
  %"for_LDG.1" = inttoptr i64 %".208" to ptr
  %".209" = load float, ptr %"for_LDG.1"
  %".210" = bitcast ptr %"R23" to ptr
  store float %".209", ptr %".210"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".213" = load i32, ptr %"R31"
  %".214" = load i32, ptr %"R16"
  %"zext.11" = zext i32 %".213" to i64
  %"zext.12" = zext i32 4 to i64
  %"mul.15" = mul i64 %"zext.11", %"zext.12"
  %"zext.13" = zext i32 %".214" to i64
  %"add.23" = add i64 %"mul.15", %"zext.13"
  %".215" = and i64 %"add.23", 18446744069414584320
  %".216" = lshr i64 %".215", 32
  %"trunc32.6" = trunc i64 %".216" to i32
  %"trunc32.7" = trunc i64 %"add.23" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".220" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".220" to i64
  %".221" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".221" to i64
  %"shl.2" = shl i64 %"zext.15", 32
  %"or.2" = or i64 %"shl.2", %"zext.14"
  %".222" = inttoptr i64 %"or.2" to ptr
  %".223" = ptrtoint ptr %".222" to i64
  %".224" = add i64 %".223", 0
  %"for_LDG.2" = inttoptr i64 %".224" to ptr
  %".225" = load float, ptr %"for_LDG.2"
  %".226" = bitcast ptr %"R16" to ptr
  store float %".225", ptr %".226"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".229" = load i32, ptr %"R31"
  %".230" = load i32, ptr %"R18"
  %"zext.16" = zext i32 %".229" to i64
  %"zext.17" = zext i32 4 to i64
  %"mul.16" = mul i64 %"zext.16", %"zext.17"
  %"zext.18" = zext i32 %".230" to i64
  %"add.24" = add i64 %"mul.16", %"zext.18"
  %".231" = and i64 %"add.24", 18446744069414584320
  %".232" = lshr i64 %".231", 32
  %"trunc32.8" = trunc i64 %".232" to i32
  %"trunc32.9" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".236" = load i32, ptr %"R6"
  %"zext.19" = zext i32 %".236" to i64
  %".237" = load i32, ptr %"R7"
  %"zext.20" = zext i32 %".237" to i64
  %"shl.3" = shl i64 %"zext.20", 32
  %"or.3" = or i64 %"shl.3", %"zext.19"
  %".238" = inttoptr i64 %"or.3" to ptr
  %".239" = ptrtoint ptr %".238" to i64
  %".240" = add i64 %".239", 4
  %"for_LDG.3" = inttoptr i64 %".240" to ptr
  %".241" = load float, ptr %"for_LDG.3"
  %".242" = bitcast ptr %"R22" to ptr
  store float %".241", ptr %".242"
  ; LDG.E.SYS R18, [R18]
  %".245" = load i32, ptr %"R18"
  %"zext.21" = zext i32 %".245" to i64
  %".246" = load i32, ptr %"R19"
  %"zext.22" = zext i32 %".246" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".247" = inttoptr i64 %"or.4" to ptr
  %".248" = ptrtoint ptr %".247" to i64
  %".249" = add i64 %".248", 0
  %"for_LDG.4" = inttoptr i64 %".249" to ptr
  %".250" = load float, ptr %"for_LDG.4"
  %".251" = bitcast ptr %"R18" to ptr
  store float %".250", ptr %".251"
  ; LDG.E.SYS R25, [R6+0x8]
  %".254" = load i32, ptr %"R6"
  %"zext.23" = zext i32 %".254" to i64
  %".255" = load i32, ptr %"R7"
  %"zext.24" = zext i32 %".255" to i64
  %"shl.5" = shl i64 %"zext.24", 32
  %"or.5" = or i64 %"shl.5", %"zext.23"
  %".256" = inttoptr i64 %"or.5" to ptr
  %".257" = ptrtoint ptr %".256" to i64
  %".258" = add i64 %".257", 8
  %"for_LDG.5" = inttoptr i64 %".258" to ptr
  %".259" = load float, ptr %"for_LDG.5"
  %".260" = bitcast ptr %"R25" to ptr
  store float %".259", ptr %".260"
  ; LDG.E.SYS R20, [R20]
  %".263" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".263" to i64
  %".264" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".264" to i64
  %"shl.6" = shl i64 %"zext.26", 32
  %"or.6" = or i64 %"shl.6", %"zext.25"
  %".265" = inttoptr i64 %"or.6" to ptr
  %".266" = ptrtoint ptr %".265" to i64
  %".267" = add i64 %".266", 0
  %"for_LDG.6" = inttoptr i64 %".267" to ptr
  %".268" = load float, ptr %"for_LDG.6"
  %".269" = bitcast ptr %"R20" to ptr
  store float %".268", ptr %".269"
  ; LDG.E.SYS R27, [R6+0xc]
  %".272" = load i32, ptr %"R6"
  %"zext.27" = zext i32 %".272" to i64
  %".273" = load i32, ptr %"R7"
  %"zext.28" = zext i32 %".273" to i64
  %"shl.7" = shl i64 %"zext.28", 32
  %"or.7" = or i64 %"shl.7", %"zext.27"
  %".274" = inttoptr i64 %"or.7" to ptr
  %".275" = ptrtoint ptr %".274" to i64
  %".276" = add i64 %".275", 12
  %"for_LDG.7" = inttoptr i64 %".276" to ptr
  %".277" = load float, ptr %"for_LDG.7"
  %".278" = bitcast ptr %"R27" to ptr
  store float %".277", ptr %".278"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".281" = load i32, ptr %"UR4"
  %"add.25" = add i32 %".281", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".284" = load i32, ptr %"R31"
  %".285" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".284", 2
  %"add.27" = add i32 %"shl.8", %".285"
  store i32 %"add.27", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".288" = load float, ptr %"R23"
  %".289" = load float, ptr %"R14"
  %".290" = load float, ptr %"R12"
  %"fmul" = fmul float %".288", %".289"
  %"fadd" = fadd float %"fmul", %".290"
  %".291" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".291"
  ; IADD3 R12, R26, UR4, RZ
  %".294" = load i32, ptr %"R26"
  %".295" = load i32, ptr %"UR4"
  %"add.28" = add i32 %".294", %".295"
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".298" = load i32, ptr %"R12"
  %".299" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".298", 0
  %".300" = and i1 %"cmp.8", %".299"
  store i1 %".300", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".303" = load float, ptr %"R22"
  %".304" = load float, ptr %"R16"
  %".305" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".303", %".304"
  %"fadd.1" = fadd float %"fmul.1", %".305"
  %".306" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".306"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".309" = load i32, ptr %"R6"
  %"add.30" = add i32 %".309", 16
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R23"
  %"carry" = icmp ult i32 %"add.31", %".309"
  store i1 %"carry", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".313" = load float, ptr %"R25"
  %".314" = load float, ptr %"R18"
  %".315" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".313", %".314"
  %"fadd.2" = fadd float %"fmul.2", %".315"
  %".316" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".316"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".319" = load i32, ptr %"R7"
  %".320" = load i1, ptr %"P4"
  %".321" = zext i1 %".320" to i32
  %"add.32" = add i32 0, %".319"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".321"
  store i32 %"add.34", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".324" = load float, ptr %"R27"
  %".325" = load float, ptr %"R20"
  %".326" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".324", %".325"
  %"fadd.3" = fadd float %"fmul.3", %".326"
  %".327" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".327"
  ; @P2 BRA `(.L_x_17)
  %".330" = load i1, ptr %"P2"
  %".331" = icmp eq i1 %".330", 1
  br i1 %".331", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".334" = load i32, ptr %"R2"
  %".335" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".334", 1
  %"add.35" = add i32 %"mul.17", %".335"
  store i32 %"add.35", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".338" = load i1, ptr %"P3"
  %".339" = icmp ne i1 %".338", 1
  br i1 %".339", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".342" = load i32, ptr %"R11"
  %".343" = load i32, ptr %"UR4"
  %"add.36" = add i32 %".342", %".343"
  %"add.37" = add i32 %"add.36", 0
  store i32 %"add.37", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".346" = load i32, ptr %"R29"
  %".347" = load i32, ptr %"UR4"
  %"add.38" = add i32 %".346", %".347"
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".352" = load i32, ptr %"R15"
  %".353" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".352", %"Arg_3"
  %"add.40" = add i32 %"mul.18", %".353"
  store i32 %"add.40", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".356" = load i32, ptr %"R16"
  %".357" = load i32, ptr %"R19"
  %"zext.29" = zext i32 %".356" to i64
  %"zext.30" = zext i32 %".357" to i64
  %"mul.19" = mul i64 %"zext.29", %"zext.30"
  %".358" = ptrtoint ptr %"Arg_1" to i64
  %"add.41" = add i64 %"mul.19", %".358"
  %".359" = and i64 %"add.41", 18446744069414584320
  %".360" = lshr i64 %".359", 32
  %"trunc32.10" = trunc i64 %".360" to i32
  %"trunc32.11" = trunc i64 %"add.41" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".364" = load i32, ptr %"R6"
  %".365" = load i32, ptr %"R19"
  %"zext.31" = zext i32 %".364" to i64
  %"zext.32" = zext i32 %".365" to i64
  %"mul.20" = mul i64 %"zext.31", %"zext.32"
  %".366" = ptrtoint ptr %"Arg_0" to i64
  %"add.42" = add i64 %"mul.20", %".366"
  %".367" = and i64 %"add.42", 18446744069414584320
  %".368" = lshr i64 %".367", 32
  %"trunc32.12" = trunc i64 %".368" to i32
  %"trunc32.13" = trunc i64 %"add.42" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".372" = load i32, ptr %"R16"
  %"zext.33" = zext i32 %".372" to i64
  %".373" = load i32, ptr %"R17"
  %"zext.34" = zext i32 %".373" to i64
  %"shl.9" = shl i64 %"zext.34", 32
  %"or.8" = or i64 %"shl.9", %"zext.33"
  %".374" = inttoptr i64 %"or.8" to ptr
  %".375" = ptrtoint ptr %".374" to i64
  %".376" = add i64 %".375", 0
  %"for_LDG.8" = inttoptr i64 %".376" to ptr
  %".377" = load float, ptr %"for_LDG.8"
  %".378" = bitcast ptr %"R13" to ptr
  store float %".377", ptr %".378"
  ; LDG.E.SYS R6, [R6]
  %".381" = load i32, ptr %"R6"
  %"zext.35" = zext i32 %".381" to i64
  %".382" = load i32, ptr %"R7"
  %"zext.36" = zext i32 %".382" to i64
  %"shl.10" = shl i64 %"zext.36", 32
  %"or.9" = or i64 %"shl.10", %"zext.35"
  %".383" = inttoptr i64 %"or.9" to ptr
  %".384" = ptrtoint ptr %".383" to i64
  %".385" = add i64 %".384", 0
  %"for_LDG.9" = inttoptr i64 %".385" to ptr
  %".386" = load float, ptr %"for_LDG.9"
  %".387" = bitcast ptr %"R6" to ptr
  store float %".386", ptr %".387"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".390" = load i32, ptr %"R4"
  %".391" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".390", 1
  %".392" = and i1 %"cmp.9", %".391"
  store i1 %".392", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".395" = load float, ptr %"R13"
  %".396" = load float, ptr %"R6"
  %".397" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".395", %".396"
  %"fadd.4" = fadd float %"fmul.4", %".397"
  %".398" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".398"
  ; @!P2 BRA `(.L_x_18)
  %".401" = load i1, ptr %"P2"
  %".402" = icmp ne i1 %".401", 1
  br i1 %".402", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".405" = load i32, ptr %"R4"
  %".406" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".405", 2
  %".407" = and i1 %"cmp.10", %".406"
  store i1 %".407", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".410" = load i32, ptr %"R16"
  %"zext.37" = zext i32 %".410" to i64
  %".411" = load i32, ptr %"R17"
  %"zext.38" = zext i32 %".411" to i64
  %"shl.11" = shl i64 %"zext.38", 32
  %"or.10" = or i64 %"shl.11", %"zext.37"
  %".412" = inttoptr i64 %"or.10" to ptr
  %".413" = ptrtoint ptr %".412" to i64
  %".414" = add i64 %".413", 4
  %"for_LDG.10" = inttoptr i64 %".414" to ptr
  %".415" = load float, ptr %"for_LDG.10"
  %".416" = bitcast ptr %"R13" to ptr
  store float %".415", ptr %".416"
  ; IADD3 R6, R15, 0x1, RZ
  %".419" = load i32, ptr %"R15"
  %"add.43" = add i32 %".419", 1
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".422" = load i32, ptr %"R6"
  %".423" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".422", %"Arg_3"
  %"add.45" = add i32 %"mul.21", %".423"
  store i32 %"add.45", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".426" = load i1, ptr %"P2"
  %".427" = icmp eq i1 %".426", 1
  br i1 %".427", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".430" = load i32, ptr %"R15"
  %"add.46" = add i32 %".430", 2
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".435" = load i1, ptr %"P2"
  %".436" = icmp eq i1 %".435", 1
  br i1 %".436", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".439" = load i32, ptr %"R7"
  %".440" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".439", %"Arg_3"
  %"add.48" = add i32 %"mul.22", %".440"
  store i32 %"add.48", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".445" = load i32, ptr %"R6"
  %".446" = load i32, ptr %"R19"
  %"zext.39" = zext i32 %".445" to i64
  %"zext.40" = zext i32 %".446" to i64
  %"mul.23" = mul i64 %"zext.39", %"zext.40"
  %".447" = ptrtoint ptr %"Arg_0" to i64
  %"add.49" = add i64 %"mul.23", %".447"
  %".448" = and i64 %"add.49", 18446744069414584320
  %".449" = lshr i64 %".448", 32
  %"trunc32.14" = trunc i64 %".449" to i32
  %"trunc32.15" = trunc i64 %"add.49" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".453" = load i1, ptr %"P2"
  %".454" = icmp eq i1 %".453", 1
  br i1 %".454", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".457" = load i32, ptr %"R14"
  %".458" = load i32, ptr %"R19"
  %"zext.41" = zext i32 %".457" to i64
  %"zext.42" = zext i32 %".458" to i64
  %"mul.24" = mul i64 %"zext.41", %"zext.42"
  %".459" = ptrtoint ptr %"Arg_0" to i64
  %"add.50" = add i64 %"mul.24", %".459"
  %".460" = and i64 %"add.50", 18446744069414584320
  %".461" = lshr i64 %".460", 32
  %"trunc32.16" = trunc i64 %".461" to i32
  %"trunc32.17" = trunc i64 %"add.50" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".467" = load i1, ptr %"P2"
  %".468" = icmp eq i1 %".467", 1
  br i1 %".468", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".471" = load i32, ptr %"R16"
  %"zext.43" = zext i32 %".471" to i64
  %".472" = load i32, ptr %"R17"
  %"zext.44" = zext i32 %".472" to i64
  %"shl.12" = shl i64 %"zext.44", 32
  %"or.11" = or i64 %"shl.12", %"zext.43"
  %".473" = inttoptr i64 %"or.11" to ptr
  %".474" = ptrtoint ptr %".473" to i64
  %".475" = add i64 %".474", 8
  %"for_LDG.11" = inttoptr i64 %".475" to ptr
  %".476" = load float, ptr %"for_LDG.11"
  %".477" = bitcast ptr %"R19" to ptr
  store float %".476", ptr %".477"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".482" = load i32, ptr %"R6"
  %"zext.45" = zext i32 %".482" to i64
  %".483" = load i32, ptr %"R7"
  %"zext.46" = zext i32 %".483" to i64
  %"shl.13" = shl i64 %"zext.46", 32
  %"or.12" = or i64 %"shl.13", %"zext.45"
  %".484" = inttoptr i64 %"or.12" to ptr
  %".485" = ptrtoint ptr %".484" to i64
  %".486" = add i64 %".485", 0
  %"for_LDG.12" = inttoptr i64 %".486" to ptr
  %".487" = load float, ptr %"for_LDG.12"
  %".488" = bitcast ptr %"R6" to ptr
  store float %".487", ptr %".488"
  ; @P2 LDG.E.SYS R14, [R14]
  %".491" = load i1, ptr %"P2"
  %".492" = icmp eq i1 %".491", 1
  br i1 %".492", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".495" = load i32, ptr %"R14"
  %"zext.47" = zext i32 %".495" to i64
  %".496" = load i32, ptr %"R15"
  %"zext.48" = zext i32 %".496" to i64
  %"shl.14" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.14", %"zext.47"
  %".497" = inttoptr i64 %"or.13" to ptr
  %".498" = ptrtoint ptr %".497" to i64
  %".499" = add i64 %".498", 0
  %"for_LDG.13" = inttoptr i64 %".499" to ptr
  %".500" = load float, ptr %"for_LDG.13"
  %".501" = bitcast ptr %"R14" to ptr
  store float %".500", ptr %".501"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".506" = load float, ptr %"R13"
  %".507" = load float, ptr %"R6"
  %".508" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".506", %".507"
  %"fadd.5" = fadd float %"fmul.5", %".508"
  %".509" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".509"
  ; @P2 FFMA R12, R19, R14, R12
  %".512" = load i1, ptr %"P2"
  %".513" = icmp eq i1 %".512", 1
  br i1 %".513", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".516" = load float, ptr %"R19"
  %".517" = load float, ptr %"R14"
  %".518" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".516", %".517"
  %"fadd.6" = fadd float %"fmul.6", %".518"
  %".519" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".519"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".524" = load i32, ptr %"R8"
  %"add.51" = add i32 %".524", 1
  %"add.52" = add i32 %"add.51", 0
  store i32 %"add.52", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".527" = load i32, ptr %"R8"
  %".528" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".527", %"Arg_4"
  %".529" = and i1 %"cmp.11", %".528"
  store i1 %".529", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".532" = load i1, ptr %"P2"
  %".533" = icmp ne i1 %".532", 1
  br i1 %".533", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".536" = load i1, ptr %"P1"
  %".537" = icmp ne i1 %".536", 1
  br i1 %".537", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".540" = load i32, ptr %"UR5"
  %"add.53" = add i32 %".540", 1
  %"add.54" = add i32 %"add.53", 0
  store i32 %"add.54", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".543" = load i32, ptr %"R0"
  %".544" = load i32, ptr %"UR4"
  %".545" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".543", %".544"
  %"add.55" = add i32 %"mul.25", %".545"
  store i32 %"add.55", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".550" = load i32, ptr %"R3"
  %".551" = load i32, ptr %"UR4"
  %".552" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".550", %".551"
  %"add.56" = add i32 %"mul.26", %".552"
  store i32 %"add.56", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".555" = load i32, ptr %"R3"
  %".556" = load i32, ptr %"R0"
  %"zext.49" = zext i32 %".555" to i64
  %"zext.50" = zext i32 %".556" to i64
  %"mul.27" = mul i64 %"zext.49", %"zext.50"
  %".557" = ptrtoint ptr %"Arg_2" to i64
  %"add.57" = add i64 %"mul.27", %".557"
  %".558" = and i64 %"add.57", 18446744069414584320
  %".559" = lshr i64 %".558", 32
  %"trunc32.18" = trunc i64 %".559" to i32
  %"trunc32.19" = trunc i64 %"add.57" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".563" = load i32, ptr %"R12"
  %".564" = load i32, ptr %"R2"
  %"zext.51" = zext i32 %".564" to i64
  %".565" = load i32, ptr %"R3"
  %"zext.52" = zext i32 %".565" to i64
  %"shl.15" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.15", %"zext.51"
  %".566" = inttoptr i64 %"or.14" to ptr
  %".567" = ptrtoint ptr %".566" to i64
  %".568" = add i64 %".567", 0
  %"for_STG" = inttoptr i64 %".568" to ptr
  store i32 %".563", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

