; ModuleID = "PerSecModule"
target triple = "unknown-unknown-unknown"
target datalayout = ""

declare i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()

declare i32 @"thread_idx"()

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

define void @"_Z8fc_layerPfS_S_S_ii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", i32 %"Arg_4", i32 %"Arg_5")
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
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R0, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R0"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; IMAD R0, R0, c[0x0][0x0], R3
  %".17" = load i32, ptr %"R0"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".18" = load i32, ptr %"R3"
  %"mul" = mul i32 %".17", %"nvvm_blockdim_x"
  %"add" = add i32 %"mul", %".18"
  store i32 %"add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x184], PT
  %".21" = load i32, ptr %"R0"
  %".22" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".21", %"Arg_5"
  %".23" = and i1 %"cmp", %".22"
  store i1 %".23", ptr %"P0"
  ; @P0 EXIT
  %".26" = load i1, ptr %"P0"
  %".27" = icmp ne i1 %".26", 1
  br i1 %".27", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
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
  %".36" = load i32, ptr %"R4"
  %".37" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".36", 1
  %".38" = and i1 %"cmp.1", %".37"
  store i1 %".38", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".41" = load i1, ptr %"P0"
  %".42" = icmp eq i1 %".41", 1
  br i1 %".42", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".45" = load i32, ptr %"R4"
  %"add.2" = add i32 %".45", -1
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".48" = load i32, ptr %"R4"
  %".49" = and i32 %".48", 3
  store i32 %".49", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".52" = load i32, ptr %"R2"
  %".53" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".52", 3
  %".54" = and i1 %"cmp.2", %".53"
  store i1 %".54", ptr %"P0"
  ; MOV R7, RZ
  %".57" = load float, ptr %"RZ"
  %".58" = bitcast ptr %"R7" to ptr
  store float %".57", ptr %".58"
  ; MOV R5, RZ
  %".61" = load i32, ptr %"RZ"
  store i32 %".61", ptr %"R5"
  ; @!P0 BRA `(.L_x_1)
  %".64" = load i1, ptr %"P0"
  %".65" = icmp eq i1 %".64", 1
  br i1 %".65", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".68" = load i32, ptr %"R4"
  %".69" = sub i32 0, %".68"
  %"add.4" = add i32 %".69", %"Arg_4"
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".72" = load i32, ptr %"R0"
  %"mul.2" = mul i32 %".72", %"Arg_4"
  %"add.6" = add i32 %"mul.2", 0
  store i32 %"add.6", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".75" = ptrtoint ptr %"Arg_0" to i64
  %".76" = and i64 %".75", 18446744069414584320
  %".77" = lshr i64 %".76", 32
  %"trunc32" = trunc i64 %".77" to i32
  %"trunc32.1" = trunc i64 %".75" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.7" = add i32 %"mul.3", 4
  store i32 %"add.7", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".83" = load i32, ptr %"R6"
  %".84" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".83", 0
  %".85" = and i1 %"cmp.3", %".84"
  store i1 %".85", ptr %"P0"
  ; MOV R7, RZ
  %".88" = load float, ptr %"RZ"
  %".89" = bitcast ptr %"R7" to ptr
  store float %".88", ptr %".89"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".92" = load i32, ptr %"R2"
  %".93" = load i32, ptr %"R3"
  %"zext" = zext i32 %".92" to i64
  %"zext.1" = zext i32 %".93" to i64
  %"mul.4" = mul i64 %"zext", %"zext.1"
  %".94" = ptrtoint ptr %"Arg_1" to i64
  %"add.8" = add i64 %"mul.4", %".94"
  %".95" = and i64 %"add.8", 18446744069414584320
  %".96" = lshr i64 %".95", 32
  %"trunc32.2" = trunc i64 %".96" to i32
  %"trunc32.3" = trunc i64 %"add.8" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; MOV R5, RZ
  %".100" = load i32, ptr %"RZ"
  store i32 %".100", ptr %"R5"
  ; @!P0 BRA `(.L_x_2)
  %".103" = load i1, ptr %"P0"
  %".104" = icmp eq i1 %".103", 1
  br i1 %".104", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".107" = load i32, ptr %"R6"
  %".108" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".107", 12
  %".109" = and i1 %"cmp.4", %".108"
  store i1 %".109", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".112" = and i1 1, 1
  %".113" = or i1 %".112", 1
  ; @!P1 BRA `(.L_x_3)
  %".115" = load i1, ptr %"P1"
  %".116" = icmp eq i1 %".115", 1
  br i1 %".116", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".119" = xor i1 1, 1
  %".120" = and i1 %".119", 1
  %".121" = and i1 %".120", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".124" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".124" to i64
  %".125" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".125" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".126" = inttoptr i64 %"or" to ptr
  %".127" = ptrtoint ptr %".126" to i64
  %".128" = add i64 %".127", 0
  %"for_LDG" = inttoptr i64 %".128" to ptr
  %".129" = load float, ptr %"for_LDG"
  %".130" = bitcast ptr %"R8" to ptr
  store float %".129", ptr %".130"
  ; LDG.E.SYS R9, [UR4]
  %".133" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".133" to i64
  %".134" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".134" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %".135" = inttoptr i64 %"or.1" to ptr
  %".136" = ptrtoint ptr %".135" to i64
  %".137" = add i64 %".136", 0
  %"for_LDG.1" = inttoptr i64 %".137" to ptr
  %".138" = load float, ptr %"for_LDG.1"
  %".139" = bitcast ptr %"R9" to ptr
  store float %".138", ptr %".139"
  ; LDG.E.SYS R11, [R2+0x4]
  %".142" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".142" to i64
  %".143" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".143" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %".144" = inttoptr i64 %"or.2" to ptr
  %".145" = ptrtoint ptr %".144" to i64
  %".146" = add i64 %".145", 4
  %"for_LDG.2" = inttoptr i64 %".146" to ptr
  %".147" = load float, ptr %"for_LDG.2"
  %".148" = bitcast ptr %"R11" to ptr
  store float %".147", ptr %".148"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".151" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".151" to i64
  %".152" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".152" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %".153" = inttoptr i64 %"or.3" to ptr
  %".154" = ptrtoint ptr %".153" to i64
  %".155" = add i64 %".154", 4
  %"for_LDG.3" = inttoptr i64 %".155" to ptr
  %".156" = load float, ptr %"for_LDG.3"
  %".157" = bitcast ptr %"R10" to ptr
  store float %".156", ptr %".157"
  ; LDG.E.SYS R13, [R2+0x8]
  %".160" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".160" to i64
  %".161" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".161" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %".162" = inttoptr i64 %"or.4" to ptr
  %".163" = ptrtoint ptr %".162" to i64
  %".164" = add i64 %".163", 8
  %"for_LDG.4" = inttoptr i64 %".164" to ptr
  %".165" = load float, ptr %"for_LDG.4"
  %".166" = bitcast ptr %"R13" to ptr
  store float %".165", ptr %".166"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".169" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".169" to i64
  %".170" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".170" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %".171" = inttoptr i64 %"or.5" to ptr
  %".172" = ptrtoint ptr %".171" to i64
  %".173" = add i64 %".172", 8
  %"for_LDG.5" = inttoptr i64 %".173" to ptr
  %".174" = load float, ptr %"for_LDG.5"
  %".175" = bitcast ptr %"R12" to ptr
  store float %".174", ptr %".175"
  ; LDG.E.SYS R15, [R2+0xc]
  %".178" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".178" to i64
  %".179" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".179" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %".180" = inttoptr i64 %"or.6" to ptr
  %".181" = ptrtoint ptr %".180" to i64
  %".182" = add i64 %".181", 12
  %"for_LDG.6" = inttoptr i64 %".182" to ptr
  %".183" = load float, ptr %"for_LDG.6"
  %".184" = bitcast ptr %"R15" to ptr
  store float %".183", ptr %".184"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".187" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".187" to i64
  %".188" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".188" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %".189" = inttoptr i64 %"or.7" to ptr
  %".190" = ptrtoint ptr %".189" to i64
  %".191" = add i64 %".190", 12
  %"for_LDG.7" = inttoptr i64 %".191" to ptr
  %".192" = load float, ptr %"for_LDG.7"
  %".193" = bitcast ptr %"R14" to ptr
  store float %".192", ptr %".193"
  ; LDG.E.SYS R17, [R2+0x10]
  %".196" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".196" to i64
  %".197" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".197" to i64
  %"shl.8" = shl i64 %"zext.19", 32
  %"or.8" = or i64 %"shl.8", %"zext.18"
  %".198" = inttoptr i64 %"or.8" to ptr
  %".199" = ptrtoint ptr %".198" to i64
  %".200" = add i64 %".199", 16
  %"for_LDG.8" = inttoptr i64 %".200" to ptr
  %".201" = load float, ptr %"for_LDG.8"
  %".202" = bitcast ptr %"R17" to ptr
  store float %".201", ptr %".202"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".205" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".205" to i64
  %".206" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".206" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %".207" = inttoptr i64 %"or.9" to ptr
  %".208" = ptrtoint ptr %".207" to i64
  %".209" = add i64 %".208", 16
  %"for_LDG.9" = inttoptr i64 %".209" to ptr
  %".210" = load float, ptr %"for_LDG.9"
  %".211" = bitcast ptr %"R16" to ptr
  store float %".210", ptr %".211"
  ; LDG.E.SYS R19, [R2+0x14]
  %".214" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".214" to i64
  %".215" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".215" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %".216" = inttoptr i64 %"or.10" to ptr
  %".217" = ptrtoint ptr %".216" to i64
  %".218" = add i64 %".217", 20
  %"for_LDG.10" = inttoptr i64 %".218" to ptr
  %".219" = load float, ptr %"for_LDG.10"
  %".220" = bitcast ptr %"R19" to ptr
  store float %".219", ptr %".220"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".223" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".223" to i64
  %".224" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".224" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %".225" = inttoptr i64 %"or.11" to ptr
  %".226" = ptrtoint ptr %".225" to i64
  %".227" = add i64 %".226", 20
  %"for_LDG.11" = inttoptr i64 %".227" to ptr
  %".228" = load float, ptr %"for_LDG.11"
  %".229" = bitcast ptr %"R18" to ptr
  store float %".228", ptr %".229"
  ; LDG.E.SYS R21, [R2+0x18]
  %".232" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".232" to i64
  %".233" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".233" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %".234" = inttoptr i64 %"or.12" to ptr
  %".235" = ptrtoint ptr %".234" to i64
  %".236" = add i64 %".235", 24
  %"for_LDG.12" = inttoptr i64 %".236" to ptr
  %".237" = load float, ptr %"for_LDG.12"
  %".238" = bitcast ptr %"R21" to ptr
  store float %".237", ptr %".238"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".241" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".241" to i64
  %".242" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".242" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %".243" = inttoptr i64 %"or.13" to ptr
  %".244" = ptrtoint ptr %".243" to i64
  %".245" = add i64 %".244", 24
  %"for_LDG.13" = inttoptr i64 %".245" to ptr
  %".246" = load float, ptr %"for_LDG.13"
  %".247" = bitcast ptr %"R20" to ptr
  store float %".246", ptr %".247"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".250" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".250" to i64
  %".251" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".251" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %".252" = inttoptr i64 %"or.14" to ptr
  %".253" = ptrtoint ptr %".252" to i64
  %".254" = add i64 %".253", 28
  %"for_LDG.14" = inttoptr i64 %".254" to ptr
  %".255" = load float, ptr %"for_LDG.14"
  %".256" = bitcast ptr %"R23" to ptr
  store float %".255", ptr %".256"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".259" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".259" to i64
  %".260" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".260" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %".261" = inttoptr i64 %"or.15" to ptr
  %".262" = ptrtoint ptr %".261" to i64
  %".263" = add i64 %".262", 28
  %"for_LDG.15" = inttoptr i64 %".263" to ptr
  %".264" = load float, ptr %"for_LDG.15"
  %".265" = bitcast ptr %"R22" to ptr
  store float %".264", ptr %".265"
  ; LDG.E.SYS R25, [R2+0x20]
  %".268" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".268" to i64
  %".269" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".269" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %".270" = inttoptr i64 %"or.16" to ptr
  %".271" = ptrtoint ptr %".270" to i64
  %".272" = add i64 %".271", 32
  %"for_LDG.16" = inttoptr i64 %".272" to ptr
  %".273" = load float, ptr %"for_LDG.16"
  %".274" = bitcast ptr %"R25" to ptr
  store float %".273", ptr %".274"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".277" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".277" to i64
  %".278" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".278" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %".279" = inttoptr i64 %"or.17" to ptr
  %".280" = ptrtoint ptr %".279" to i64
  %".281" = add i64 %".280", 32
  %"for_LDG.17" = inttoptr i64 %".281" to ptr
  %".282" = load float, ptr %"for_LDG.17"
  %".283" = bitcast ptr %"R24" to ptr
  store float %".282", ptr %".283"
  ; LDG.E.SYS R27, [R2+0x24]
  %".286" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".286" to i64
  %".287" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".287" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %".288" = inttoptr i64 %"or.18" to ptr
  %".289" = ptrtoint ptr %".288" to i64
  %".290" = add i64 %".289", 36
  %"for_LDG.18" = inttoptr i64 %".290" to ptr
  %".291" = load float, ptr %"for_LDG.18"
  %".292" = bitcast ptr %"R27" to ptr
  store float %".291", ptr %".292"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".295" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".295" to i64
  %".296" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".296" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %".297" = inttoptr i64 %"or.19" to ptr
  %".298" = ptrtoint ptr %".297" to i64
  %".299" = add i64 %".298", 36
  %"for_LDG.19" = inttoptr i64 %".299" to ptr
  %".300" = load float, ptr %"for_LDG.19"
  %".301" = bitcast ptr %"R26" to ptr
  store float %".300", ptr %".301"
  ; LDG.E.SYS R29, [R2+0x28]
  %".304" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".304" to i64
  %".305" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".305" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %".306" = inttoptr i64 %"or.20" to ptr
  %".307" = ptrtoint ptr %".306" to i64
  %".308" = add i64 %".307", 40
  %"for_LDG.20" = inttoptr i64 %".308" to ptr
  %".309" = load float, ptr %"for_LDG.20"
  %".310" = bitcast ptr %"R29" to ptr
  store float %".309", ptr %".310"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".313" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".313" to i64
  %".314" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".314" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %".315" = inttoptr i64 %"or.21" to ptr
  %".316" = ptrtoint ptr %".315" to i64
  %".317" = add i64 %".316", 40
  %"for_LDG.21" = inttoptr i64 %".317" to ptr
  %".318" = load float, ptr %"for_LDG.21"
  %".319" = bitcast ptr %"R28" to ptr
  store float %".318", ptr %".319"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".322" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".322" to i64
  %".323" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".323" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %".324" = inttoptr i64 %"or.22" to ptr
  %".325" = ptrtoint ptr %".324" to i64
  %".326" = add i64 %".325", 44
  %"for_LDG.22" = inttoptr i64 %".326" to ptr
  %".327" = load float, ptr %"for_LDG.22"
  %".328" = bitcast ptr %"R31" to ptr
  store float %".327", ptr %".328"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".331" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".331" to i64
  %".332" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".332" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %".333" = inttoptr i64 %"or.23" to ptr
  %".334" = ptrtoint ptr %".333" to i64
  %".335" = add i64 %".334", 44
  %"for_LDG.23" = inttoptr i64 %".335" to ptr
  %".336" = load float, ptr %"for_LDG.23"
  %".337" = bitcast ptr %"R30" to ptr
  store float %".336", ptr %".337"
  ; LDG.E.SYS R33, [R2+0x30]
  %".340" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".340" to i64
  %".341" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".341" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %".342" = inttoptr i64 %"or.24" to ptr
  %".343" = ptrtoint ptr %".342" to i64
  %".344" = add i64 %".343", 48
  %"for_LDG.24" = inttoptr i64 %".344" to ptr
  %".345" = load float, ptr %"for_LDG.24"
  %".346" = bitcast ptr %"R33" to ptr
  store float %".345", ptr %".346"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".349" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".349" to i64
  %".350" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".350" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %".351" = inttoptr i64 %"or.25" to ptr
  %".352" = ptrtoint ptr %".351" to i64
  %".353" = add i64 %".352", 48
  %"for_LDG.25" = inttoptr i64 %".353" to ptr
  %".354" = load float, ptr %"for_LDG.25"
  %".355" = bitcast ptr %"R32" to ptr
  store float %".354", ptr %".355"
  ; LDG.E.SYS R35, [R2+0x34]
  %".358" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".358" to i64
  %".359" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".359" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %".360" = inttoptr i64 %"or.26" to ptr
  %".361" = ptrtoint ptr %".360" to i64
  %".362" = add i64 %".361", 52
  %"for_LDG.26" = inttoptr i64 %".362" to ptr
  %".363" = load float, ptr %"for_LDG.26"
  %".364" = bitcast ptr %"R35" to ptr
  store float %".363", ptr %".364"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".367" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".367" to i64
  %".368" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".368" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %".369" = inttoptr i64 %"or.27" to ptr
  %".370" = ptrtoint ptr %".369" to i64
  %".371" = add i64 %".370", 52
  %"for_LDG.27" = inttoptr i64 %".371" to ptr
  %".372" = load float, ptr %"for_LDG.27"
  %".373" = bitcast ptr %"R34" to ptr
  store float %".372", ptr %".373"
  ; LDG.E.SYS R37, [R2+0x38]
  %".376" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".376" to i64
  %".377" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".377" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %".378" = inttoptr i64 %"or.28" to ptr
  %".379" = ptrtoint ptr %".378" to i64
  %".380" = add i64 %".379", 56
  %"for_LDG.28" = inttoptr i64 %".380" to ptr
  %".381" = load float, ptr %"for_LDG.28"
  %".382" = bitcast ptr %"R37" to ptr
  store float %".381", ptr %".382"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".385" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".385" to i64
  %".386" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".386" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %".387" = inttoptr i64 %"or.29" to ptr
  %".388" = ptrtoint ptr %".387" to i64
  %".389" = add i64 %".388", 56
  %"for_LDG.29" = inttoptr i64 %".389" to ptr
  %".390" = load float, ptr %"for_LDG.29"
  %".391" = bitcast ptr %"R36" to ptr
  store float %".390", ptr %".391"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".394" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".394" to i64
  %".395" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".395" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %".396" = inttoptr i64 %"or.30" to ptr
  %".397" = ptrtoint ptr %".396" to i64
  %".398" = add i64 %".397", 60
  %"for_LDG.30" = inttoptr i64 %".398" to ptr
  %".399" = load float, ptr %"for_LDG.30"
  %".400" = bitcast ptr %"R39" to ptr
  store float %".399", ptr %".400"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".403" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".403" to i64
  %".404" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".404" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %".405" = inttoptr i64 %"or.31" to ptr
  %".406" = ptrtoint ptr %".405" to i64
  %".407" = add i64 %".406", 60
  %"for_LDG.31" = inttoptr i64 %".407" to ptr
  %".408" = load float, ptr %"for_LDG.31"
  %".409" = bitcast ptr %"R38" to ptr
  store float %".408", ptr %".409"
  ; IADD3 R6, R6, -0x10, RZ
  %".412" = load i32, ptr %"R6"
  %"add.9" = add i32 %".412", -16
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".415" = load i32, ptr %"UR4"
  %"add.11" = add i32 %".415", 64
  %"add.12" = add i32 %"add.11", 0
  store i32 %"add.12", ptr %"UR4"
  %"carry" = icmp ult i32 %"add.12", %".415"
  store i1 %"carry", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".419" = load i32, ptr %"R5"
  %"add.13" = add i32 %".419", 16
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".422" = load i32, ptr %"R6"
  %".423" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".422", 12
  %".424" = and i1 %"cmp.5", %".423"
  store i1 %".424", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".427" = load i32, ptr %"UR5"
  %".428" = load i1, ptr %"UP0"
  %".429" = sub i1 0, %".428"
  %".430" = zext i1 %".429" to i32
  %"add.15" = add i32 0, %".427"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".430"
  store i32 %"add.17", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".433" = load i32, ptr %"R2"
  %"add.18" = add i32 %".433", 64
  %"add.19" = add i32 %"add.18", 0
  store i32 %"add.19", ptr %"R2"
  %"carry.1" = icmp ult i32 %"add.19", %".433"
  store i1 %"carry.1", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".437" = load i32, ptr %"R3"
  %"mul.5" = mul i32 0, 0
  %"add.20" = add i32 %"mul.5", %".437"
  store i32 %"add.20", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".440" = load float, ptr %"R8"
  %".441" = load float, ptr %"R9"
  %".442" = load float, ptr %"R7"
  %"fmul" = fmul float %".440", %".441"
  %"fadd" = fadd float %"fmul", %".442"
  %".443" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".443"
  ; FFMA R8, R11, R10, R8
  %".446" = load float, ptr %"R11"
  %".447" = load float, ptr %"R10"
  %".448" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".446", %".447"
  %"fadd.1" = fadd float %"fmul.1", %".448"
  %".449" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".449"
  ; FFMA R8, R13, R12, R8
  %".452" = load float, ptr %"R13"
  %".453" = load float, ptr %"R12"
  %".454" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".452", %".453"
  %"fadd.2" = fadd float %"fmul.2", %".454"
  %".455" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".455"
  ; FFMA R8, R15, R14, R8
  %".458" = load float, ptr %"R15"
  %".459" = load float, ptr %"R14"
  %".460" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".458", %".459"
  %"fadd.3" = fadd float %"fmul.3", %".460"
  %".461" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".461"
  ; FFMA R8, R17, R16, R8
  %".464" = load float, ptr %"R17"
  %".465" = load float, ptr %"R16"
  %".466" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".464", %".465"
  %"fadd.4" = fadd float %"fmul.4", %".466"
  %".467" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".467"
  ; FFMA R8, R19, R18, R8
  %".470" = load float, ptr %"R19"
  %".471" = load float, ptr %"R18"
  %".472" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".470", %".471"
  %"fadd.5" = fadd float %"fmul.5", %".472"
  %".473" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".473"
  ; FFMA R8, R21, R20, R8
  %".476" = load float, ptr %"R21"
  %".477" = load float, ptr %"R20"
  %".478" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".476", %".477"
  %"fadd.6" = fadd float %"fmul.6", %".478"
  %".479" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".479"
  ; FFMA R8, R23, R22, R8
  %".482" = load float, ptr %"R23"
  %".483" = load float, ptr %"R22"
  %".484" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".482", %".483"
  %"fadd.7" = fadd float %"fmul.7", %".484"
  %".485" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".485"
  ; FFMA R8, R25, R24, R8
  %".488" = load float, ptr %"R25"
  %".489" = load float, ptr %"R24"
  %".490" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".488", %".489"
  %"fadd.8" = fadd float %"fmul.8", %".490"
  %".491" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".491"
  ; FFMA R8, R27, R26, R8
  %".494" = load float, ptr %"R27"
  %".495" = load float, ptr %"R26"
  %".496" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".494", %".495"
  %"fadd.9" = fadd float %"fmul.9", %".496"
  %".497" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".497"
  ; FFMA R8, R29, R28, R8
  %".500" = load float, ptr %"R29"
  %".501" = load float, ptr %"R28"
  %".502" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".500", %".501"
  %"fadd.10" = fadd float %"fmul.10", %".502"
  %".503" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".503"
  ; FFMA R8, R31, R30, R8
  %".506" = load float, ptr %"R31"
  %".507" = load float, ptr %"R30"
  %".508" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".506", %".507"
  %"fadd.11" = fadd float %"fmul.11", %".508"
  %".509" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".509"
  ; FFMA R8, R33, R32, R8
  %".512" = load float, ptr %"R33"
  %".513" = load float, ptr %"R32"
  %".514" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".512", %".513"
  %"fadd.12" = fadd float %"fmul.12", %".514"
  %".515" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".515"
  ; FFMA R8, R35, R34, R8
  %".518" = load float, ptr %"R35"
  %".519" = load float, ptr %"R34"
  %".520" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".518", %".519"
  %"fadd.13" = fadd float %"fmul.13", %".520"
  %".521" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".521"
  ; FFMA R8, R37, R36, R8
  %".524" = load float, ptr %"R37"
  %".525" = load float, ptr %"R36"
  %".526" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".524", %".525"
  %"fadd.14" = fadd float %"fmul.14", %".526"
  %".527" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".527"
  ; FFMA R7, R39, R38, R8
  %".530" = load float, ptr %"R39"
  %".531" = load float, ptr %"R38"
  %".532" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".530", %".531"
  %"fadd.15" = fadd float %"fmul.15", %".532"
  %".533" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".533"
  ; @P1 BRA `(.L_x_4)
  %".536" = load i1, ptr %"P1"
  %".537" = icmp ne i1 %".536", 1
  br i1 %".537", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".540" = load i32, ptr %"R6"
  %".541" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".540", 4
  %".542" = and i1 %"cmp.6", %".541"
  store i1 %".542", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".545" = load i1, ptr %"P1"
  %".546" = icmp eq i1 %".545", 1
  br i1 %".546", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".549" = load i32, ptr %"R2"
  %"zext.66" = zext i32 %".549" to i64
  %".550" = load i32, ptr %"R3"
  %"zext.67" = zext i32 %".550" to i64
  %"shl.32" = shl i64 %"zext.67", 32
  %"or.32" = or i64 %"shl.32", %"zext.66"
  %".551" = inttoptr i64 %"or.32" to ptr
  %".552" = ptrtoint ptr %".551" to i64
  %".553" = add i64 %".552", 0
  %"for_LDG.32" = inttoptr i64 %".553" to ptr
  %".554" = load float, ptr %"for_LDG.32"
  %".555" = bitcast ptr %"R8" to ptr
  store float %".554", ptr %".555"
  ; LDG.E.SYS R9, [UR4]
  %".558" = load i32, ptr %"UR4"
  %"zext.68" = zext i32 %".558" to i64
  %".559" = load i32, ptr %"UR5"
  %"zext.69" = zext i32 %".559" to i64
  %"shl.33" = shl i64 %"zext.69", 32
  %"or.33" = or i64 %"shl.33", %"zext.68"
  %".560" = inttoptr i64 %"or.33" to ptr
  %".561" = ptrtoint ptr %".560" to i64
  %".562" = add i64 %".561", 0
  %"for_LDG.33" = inttoptr i64 %".562" to ptr
  %".563" = load float, ptr %"for_LDG.33"
  %".564" = bitcast ptr %"R9" to ptr
  store float %".563", ptr %".564"
  ; LDG.E.SYS R11, [R2+0x4]
  %".567" = load i32, ptr %"R2"
  %"zext.70" = zext i32 %".567" to i64
  %".568" = load i32, ptr %"R3"
  %"zext.71" = zext i32 %".568" to i64
  %"shl.34" = shl i64 %"zext.71", 32
  %"or.34" = or i64 %"shl.34", %"zext.70"
  %".569" = inttoptr i64 %"or.34" to ptr
  %".570" = ptrtoint ptr %".569" to i64
  %".571" = add i64 %".570", 4
  %"for_LDG.34" = inttoptr i64 %".571" to ptr
  %".572" = load float, ptr %"for_LDG.34"
  %".573" = bitcast ptr %"R11" to ptr
  store float %".572", ptr %".573"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".576" = load i32, ptr %"UR4"
  %"zext.72" = zext i32 %".576" to i64
  %".577" = load i32, ptr %"UR5"
  %"zext.73" = zext i32 %".577" to i64
  %"shl.35" = shl i64 %"zext.73", 32
  %"or.35" = or i64 %"shl.35", %"zext.72"
  %".578" = inttoptr i64 %"or.35" to ptr
  %".579" = ptrtoint ptr %".578" to i64
  %".580" = add i64 %".579", 4
  %"for_LDG.35" = inttoptr i64 %".580" to ptr
  %".581" = load float, ptr %"for_LDG.35"
  %".582" = bitcast ptr %"R10" to ptr
  store float %".581", ptr %".582"
  ; LDG.E.SYS R13, [R2+0x8]
  %".585" = load i32, ptr %"R2"
  %"zext.74" = zext i32 %".585" to i64
  %".586" = load i32, ptr %"R3"
  %"zext.75" = zext i32 %".586" to i64
  %"shl.36" = shl i64 %"zext.75", 32
  %"or.36" = or i64 %"shl.36", %"zext.74"
  %".587" = inttoptr i64 %"or.36" to ptr
  %".588" = ptrtoint ptr %".587" to i64
  %".589" = add i64 %".588", 8
  %"for_LDG.36" = inttoptr i64 %".589" to ptr
  %".590" = load float, ptr %"for_LDG.36"
  %".591" = bitcast ptr %"R13" to ptr
  store float %".590", ptr %".591"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".594" = load i32, ptr %"UR4"
  %"zext.76" = zext i32 %".594" to i64
  %".595" = load i32, ptr %"UR5"
  %"zext.77" = zext i32 %".595" to i64
  %"shl.37" = shl i64 %"zext.77", 32
  %"or.37" = or i64 %"shl.37", %"zext.76"
  %".596" = inttoptr i64 %"or.37" to ptr
  %".597" = ptrtoint ptr %".596" to i64
  %".598" = add i64 %".597", 8
  %"for_LDG.37" = inttoptr i64 %".598" to ptr
  %".599" = load float, ptr %"for_LDG.37"
  %".600" = bitcast ptr %"R12" to ptr
  store float %".599", ptr %".600"
  ; LDG.E.SYS R15, [R2+0xc]
  %".603" = load i32, ptr %"R2"
  %"zext.78" = zext i32 %".603" to i64
  %".604" = load i32, ptr %"R3"
  %"zext.79" = zext i32 %".604" to i64
  %"shl.38" = shl i64 %"zext.79", 32
  %"or.38" = or i64 %"shl.38", %"zext.78"
  %".605" = inttoptr i64 %"or.38" to ptr
  %".606" = ptrtoint ptr %".605" to i64
  %".607" = add i64 %".606", 12
  %"for_LDG.38" = inttoptr i64 %".607" to ptr
  %".608" = load float, ptr %"for_LDG.38"
  %".609" = bitcast ptr %"R15" to ptr
  store float %".608", ptr %".609"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".612" = load i32, ptr %"UR4"
  %"zext.80" = zext i32 %".612" to i64
  %".613" = load i32, ptr %"UR5"
  %"zext.81" = zext i32 %".613" to i64
  %"shl.39" = shl i64 %"zext.81", 32
  %"or.39" = or i64 %"shl.39", %"zext.80"
  %".614" = inttoptr i64 %"or.39" to ptr
  %".615" = ptrtoint ptr %".614" to i64
  %".616" = add i64 %".615", 12
  %"for_LDG.39" = inttoptr i64 %".616" to ptr
  %".617" = load float, ptr %"for_LDG.39"
  %".618" = bitcast ptr %"R14" to ptr
  store float %".617", ptr %".618"
  ; LDG.E.SYS R17, [R2+0x10]
  %".621" = load i32, ptr %"R2"
  %"zext.82" = zext i32 %".621" to i64
  %".622" = load i32, ptr %"R3"
  %"zext.83" = zext i32 %".622" to i64
  %"shl.40" = shl i64 %"zext.83", 32
  %"or.40" = or i64 %"shl.40", %"zext.82"
  %".623" = inttoptr i64 %"or.40" to ptr
  %".624" = ptrtoint ptr %".623" to i64
  %".625" = add i64 %".624", 16
  %"for_LDG.40" = inttoptr i64 %".625" to ptr
  %".626" = load float, ptr %"for_LDG.40"
  %".627" = bitcast ptr %"R17" to ptr
  store float %".626", ptr %".627"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".630" = load i32, ptr %"UR4"
  %"zext.84" = zext i32 %".630" to i64
  %".631" = load i32, ptr %"UR5"
  %"zext.85" = zext i32 %".631" to i64
  %"shl.41" = shl i64 %"zext.85", 32
  %"or.41" = or i64 %"shl.41", %"zext.84"
  %".632" = inttoptr i64 %"or.41" to ptr
  %".633" = ptrtoint ptr %".632" to i64
  %".634" = add i64 %".633", 16
  %"for_LDG.41" = inttoptr i64 %".634" to ptr
  %".635" = load float, ptr %"for_LDG.41"
  %".636" = bitcast ptr %"R16" to ptr
  store float %".635", ptr %".636"
  ; LDG.E.SYS R19, [R2+0x14]
  %".639" = load i32, ptr %"R2"
  %"zext.86" = zext i32 %".639" to i64
  %".640" = load i32, ptr %"R3"
  %"zext.87" = zext i32 %".640" to i64
  %"shl.42" = shl i64 %"zext.87", 32
  %"or.42" = or i64 %"shl.42", %"zext.86"
  %".641" = inttoptr i64 %"or.42" to ptr
  %".642" = ptrtoint ptr %".641" to i64
  %".643" = add i64 %".642", 20
  %"for_LDG.42" = inttoptr i64 %".643" to ptr
  %".644" = load float, ptr %"for_LDG.42"
  %".645" = bitcast ptr %"R19" to ptr
  store float %".644", ptr %".645"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".648" = load i32, ptr %"UR4"
  %"zext.88" = zext i32 %".648" to i64
  %".649" = load i32, ptr %"UR5"
  %"zext.89" = zext i32 %".649" to i64
  %"shl.43" = shl i64 %"zext.89", 32
  %"or.43" = or i64 %"shl.43", %"zext.88"
  %".650" = inttoptr i64 %"or.43" to ptr
  %".651" = ptrtoint ptr %".650" to i64
  %".652" = add i64 %".651", 20
  %"for_LDG.43" = inttoptr i64 %".652" to ptr
  %".653" = load float, ptr %"for_LDG.43"
  %".654" = bitcast ptr %"R18" to ptr
  store float %".653", ptr %".654"
  ; LDG.E.SYS R21, [R2+0x18]
  %".657" = load i32, ptr %"R2"
  %"zext.90" = zext i32 %".657" to i64
  %".658" = load i32, ptr %"R3"
  %"zext.91" = zext i32 %".658" to i64
  %"shl.44" = shl i64 %"zext.91", 32
  %"or.44" = or i64 %"shl.44", %"zext.90"
  %".659" = inttoptr i64 %"or.44" to ptr
  %".660" = ptrtoint ptr %".659" to i64
  %".661" = add i64 %".660", 24
  %"for_LDG.44" = inttoptr i64 %".661" to ptr
  %".662" = load float, ptr %"for_LDG.44"
  %".663" = bitcast ptr %"R21" to ptr
  store float %".662", ptr %".663"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".666" = load i32, ptr %"UR4"
  %"zext.92" = zext i32 %".666" to i64
  %".667" = load i32, ptr %"UR5"
  %"zext.93" = zext i32 %".667" to i64
  %"shl.45" = shl i64 %"zext.93", 32
  %"or.45" = or i64 %"shl.45", %"zext.92"
  %".668" = inttoptr i64 %"or.45" to ptr
  %".669" = ptrtoint ptr %".668" to i64
  %".670" = add i64 %".669", 24
  %"for_LDG.45" = inttoptr i64 %".670" to ptr
  %".671" = load float, ptr %"for_LDG.45"
  %".672" = bitcast ptr %"R20" to ptr
  store float %".671", ptr %".672"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".675" = load i32, ptr %"R2"
  %"zext.94" = zext i32 %".675" to i64
  %".676" = load i32, ptr %"R3"
  %"zext.95" = zext i32 %".676" to i64
  %"shl.46" = shl i64 %"zext.95", 32
  %"or.46" = or i64 %"shl.46", %"zext.94"
  %".677" = inttoptr i64 %"or.46" to ptr
  %".678" = ptrtoint ptr %".677" to i64
  %".679" = add i64 %".678", 28
  %"for_LDG.46" = inttoptr i64 %".679" to ptr
  %".680" = load float, ptr %"for_LDG.46"
  %".681" = bitcast ptr %"R23" to ptr
  store float %".680", ptr %".681"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".684" = load i32, ptr %"UR4"
  %"zext.96" = zext i32 %".684" to i64
  %".685" = load i32, ptr %"UR5"
  %"zext.97" = zext i32 %".685" to i64
  %"shl.47" = shl i64 %"zext.97", 32
  %"or.47" = or i64 %"shl.47", %"zext.96"
  %".686" = inttoptr i64 %"or.47" to ptr
  %".687" = ptrtoint ptr %".686" to i64
  %".688" = add i64 %".687", 28
  %"for_LDG.47" = inttoptr i64 %".688" to ptr
  %".689" = load float, ptr %"for_LDG.47"
  %".690" = bitcast ptr %"R22" to ptr
  store float %".689", ptr %".690"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".693" = load i32, ptr %"UR4"
  %"add.21" = add i32 %".693", 32
  %"add.22" = add i32 %"add.21", 0
  store i32 %"add.22", ptr %"UR4"
  %"carry.2" = icmp ult i32 %"add.22", %".693"
  store i1 %"carry.2", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".697" = xor i1 1, 1
  %".698" = and i1 %".697", 1
  %".699" = and i1 %".698", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".701" = load i32, ptr %"R5"
  %"add.23" = add i32 %".701", 8
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".704" = load i32, ptr %"UR5"
  %".705" = load i1, ptr %"UP0"
  %".706" = sub i1 0, %".705"
  %".707" = zext i1 %".706" to i32
  %"add.25" = add i32 0, %".704"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".707"
  store i32 %"add.27", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".710" = load i32, ptr %"R2"
  %"add.28" = add i32 %".710", 32
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R2"
  %"carry.3" = icmp ult i32 %"add.29", %".710"
  store i1 %"carry.3", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".714" = load i32, ptr %"R6"
  %"add.30" = add i32 %".714", -8
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".717" = load i32, ptr %"R3"
  %".718" = load i1, ptr %"P1"
  %".719" = sub i1 0, %".718"
  %".720" = zext i1 %".719" to i32
  %"add.32" = add i32 0, %".717"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".720"
  store i32 %"add.34", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".723" = load float, ptr %"R8"
  %".724" = load float, ptr %"R9"
  %".725" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".723", %".724"
  %"fadd.16" = fadd float %"fmul.16", %".725"
  %".726" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".726"
  ; FFMA R8, R11, R10, R8
  %".729" = load float, ptr %"R11"
  %".730" = load float, ptr %"R10"
  %".731" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".729", %".730"
  %"fadd.17" = fadd float %"fmul.17", %".731"
  %".732" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".732"
  ; FFMA R8, R13, R12, R8
  %".735" = load float, ptr %"R13"
  %".736" = load float, ptr %"R12"
  %".737" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".735", %".736"
  %"fadd.18" = fadd float %"fmul.18", %".737"
  %".738" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".738"
  ; FFMA R8, R15, R14, R8
  %".741" = load float, ptr %"R15"
  %".742" = load float, ptr %"R14"
  %".743" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".741", %".742"
  %"fadd.19" = fadd float %"fmul.19", %".743"
  %".744" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".744"
  ; FFMA R8, R17, R16, R8
  %".747" = load float, ptr %"R17"
  %".748" = load float, ptr %"R16"
  %".749" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".747", %".748"
  %"fadd.20" = fadd float %"fmul.20", %".749"
  %".750" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".750"
  ; FFMA R8, R19, R18, R8
  %".753" = load float, ptr %"R19"
  %".754" = load float, ptr %"R18"
  %".755" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".753", %".754"
  %"fadd.21" = fadd float %"fmul.21", %".755"
  %".756" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".756"
  ; FFMA R8, R21, R20, R8
  %".759" = load float, ptr %"R21"
  %".760" = load float, ptr %"R20"
  %".761" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".759", %".760"
  %"fadd.22" = fadd float %"fmul.22", %".761"
  %".762" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".762"
  ; FFMA R7, R23, R22, R8
  %".765" = load float, ptr %"R23"
  %".766" = load float, ptr %"R22"
  %".767" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".765", %".766"
  %"fadd.23" = fadd float %"fmul.23", %".767"
  %".768" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".768"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".772" = load i32, ptr %"R6"
  %".773" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".772", 0
  %".774" = or i1 %"cmp.7", %".773"
  store i1 %".774", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".777" = load i1, ptr %"P0"
  %".778" = icmp eq i1 %".777", 1
  br i1 %".778", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".781" = load i32, ptr %"R2"
  %"zext.98" = zext i32 %".781" to i64
  %".782" = load i32, ptr %"R3"
  %"zext.99" = zext i32 %".782" to i64
  %"shl.48" = shl i64 %"zext.99", 32
  %"or.48" = or i64 %"shl.48", %"zext.98"
  %".783" = inttoptr i64 %"or.48" to ptr
  %".784" = ptrtoint ptr %".783" to i64
  %".785" = add i64 %".784", 0
  %"for_LDG.48" = inttoptr i64 %".785" to ptr
  %".786" = load float, ptr %"for_LDG.48"
  %".787" = bitcast ptr %"R8" to ptr
  store float %".786", ptr %".787"
  ; LDG.E.SYS R9, [UR4]
  %".790" = load i32, ptr %"UR4"
  %"zext.100" = zext i32 %".790" to i64
  %".791" = load i32, ptr %"UR5"
  %"zext.101" = zext i32 %".791" to i64
  %"shl.49" = shl i64 %"zext.101", 32
  %"or.49" = or i64 %"shl.49", %"zext.100"
  %".792" = inttoptr i64 %"or.49" to ptr
  %".793" = ptrtoint ptr %".792" to i64
  %".794" = add i64 %".793", 0
  %"for_LDG.49" = inttoptr i64 %".794" to ptr
  %".795" = load float, ptr %"for_LDG.49"
  %".796" = bitcast ptr %"R9" to ptr
  store float %".795", ptr %".796"
  ; LDG.E.SYS R11, [R2+0x4]
  %".799" = load i32, ptr %"R2"
  %"zext.102" = zext i32 %".799" to i64
  %".800" = load i32, ptr %"R3"
  %"zext.103" = zext i32 %".800" to i64
  %"shl.50" = shl i64 %"zext.103", 32
  %"or.50" = or i64 %"shl.50", %"zext.102"
  %".801" = inttoptr i64 %"or.50" to ptr
  %".802" = ptrtoint ptr %".801" to i64
  %".803" = add i64 %".802", 4
  %"for_LDG.50" = inttoptr i64 %".803" to ptr
  %".804" = load float, ptr %"for_LDG.50"
  %".805" = bitcast ptr %"R11" to ptr
  store float %".804", ptr %".805"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".808" = load i32, ptr %"UR4"
  %"zext.104" = zext i32 %".808" to i64
  %".809" = load i32, ptr %"UR5"
  %"zext.105" = zext i32 %".809" to i64
  %"shl.51" = shl i64 %"zext.105", 32
  %"or.51" = or i64 %"shl.51", %"zext.104"
  %".810" = inttoptr i64 %"or.51" to ptr
  %".811" = ptrtoint ptr %".810" to i64
  %".812" = add i64 %".811", 4
  %"for_LDG.51" = inttoptr i64 %".812" to ptr
  %".813" = load float, ptr %"for_LDG.51"
  %".814" = bitcast ptr %"R10" to ptr
  store float %".813", ptr %".814"
  ; LDG.E.SYS R13, [R2+0x8]
  %".817" = load i32, ptr %"R2"
  %"zext.106" = zext i32 %".817" to i64
  %".818" = load i32, ptr %"R3"
  %"zext.107" = zext i32 %".818" to i64
  %"shl.52" = shl i64 %"zext.107", 32
  %"or.52" = or i64 %"shl.52", %"zext.106"
  %".819" = inttoptr i64 %"or.52" to ptr
  %".820" = ptrtoint ptr %".819" to i64
  %".821" = add i64 %".820", 8
  %"for_LDG.52" = inttoptr i64 %".821" to ptr
  %".822" = load float, ptr %"for_LDG.52"
  %".823" = bitcast ptr %"R13" to ptr
  store float %".822", ptr %".823"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".826" = load i32, ptr %"UR4"
  %"zext.108" = zext i32 %".826" to i64
  %".827" = load i32, ptr %"UR5"
  %"zext.109" = zext i32 %".827" to i64
  %"shl.53" = shl i64 %"zext.109", 32
  %"or.53" = or i64 %"shl.53", %"zext.108"
  %".828" = inttoptr i64 %"or.53" to ptr
  %".829" = ptrtoint ptr %".828" to i64
  %".830" = add i64 %".829", 8
  %"for_LDG.53" = inttoptr i64 %".830" to ptr
  %".831" = load float, ptr %"for_LDG.53"
  %".832" = bitcast ptr %"R12" to ptr
  store float %".831", ptr %".832"
  ; LDG.E.SYS R15, [R2+0xc]
  %".835" = load i32, ptr %"R2"
  %"zext.110" = zext i32 %".835" to i64
  %".836" = load i32, ptr %"R3"
  %"zext.111" = zext i32 %".836" to i64
  %"shl.54" = shl i64 %"zext.111", 32
  %"or.54" = or i64 %"shl.54", %"zext.110"
  %".837" = inttoptr i64 %"or.54" to ptr
  %".838" = ptrtoint ptr %".837" to i64
  %".839" = add i64 %".838", 12
  %"for_LDG.54" = inttoptr i64 %".839" to ptr
  %".840" = load float, ptr %"for_LDG.54"
  %".841" = bitcast ptr %"R15" to ptr
  store float %".840", ptr %".841"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".844" = load i32, ptr %"UR4"
  %"zext.112" = zext i32 %".844" to i64
  %".845" = load i32, ptr %"UR5"
  %"zext.113" = zext i32 %".845" to i64
  %"shl.55" = shl i64 %"zext.113", 32
  %"or.55" = or i64 %"shl.55", %"zext.112"
  %".846" = inttoptr i64 %"or.55" to ptr
  %".847" = ptrtoint ptr %".846" to i64
  %".848" = add i64 %".847", 12
  %"for_LDG.55" = inttoptr i64 %".848" to ptr
  %".849" = load float, ptr %"for_LDG.55"
  %".850" = bitcast ptr %"R14" to ptr
  store float %".849", ptr %".850"
  ; IADD3 R6, R6, -0x4, RZ
  %".853" = load i32, ptr %"R6"
  %"add.35" = add i32 %".853", -4
  %"add.36" = add i32 %"add.35", 0
  store i32 %"add.36", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".856" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".856", 16
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  %"carry.4" = icmp ult i32 %"add.38", %".856"
  store i1 %"carry.4", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".860" = load i32, ptr %"R5"
  %"add.39" = add i32 %".860", 4
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".863" = load i32, ptr %"R6"
  %".864" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".863", 0
  %".865" = and i1 %"cmp.8", %".864"
  store i1 %".865", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".868" = load i32, ptr %"UR5"
  %".869" = load i1, ptr %"UP0"
  %".870" = sub i1 0, %".869"
  %".871" = zext i1 %".870" to i32
  %"add.41" = add i32 0, %".868"
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
  %".895" = sub i1 0, %".894"
  %".896" = zext i1 %".895" to i32
  %"add.47" = add i32 0, %".893"
  %"add.48" = add i32 %"add.47", 0
  %"add.49" = add i32 %"add.48", %".896"
  store i32 %"add.49", ptr %"R10"
  ; MOV R3, R10
  %".899" = load i32, ptr %"R10"
  store i32 %".899", ptr %"R3"
  ; FFMA R8, R13, R12, R8
  %".902" = load float, ptr %"R13"
  %".903" = load float, ptr %"R12"
  %".904" = load float, ptr %"R8"
  %"fmul.26" = fmul float %".902", %".903"
  %"fadd.26" = fadd float %"fmul.26", %".904"
  %".905" = bitcast ptr %"R8" to ptr
  store float %"fadd.26", ptr %".905"
  ; FFMA R7, R15, R14, R8
  %".908" = load float, ptr %"R15"
  %".909" = load float, ptr %"R14"
  %".910" = load float, ptr %"R8"
  %"fmul.27" = fmul float %".908", %".909"
  %"fadd.27" = fadd float %"fmul.27", %".910"
  %".911" = bitcast ptr %"R7" to ptr
  store float %"fadd.27", ptr %".911"
  ; @P0 BRA `(.L_x_2)
  %".914" = load i1, ptr %"P0"
  %".915" = icmp ne i1 %".914", 1
  br i1 %".915", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".918" = load i32, ptr %"R4"
  %".919" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".918", 0
  %".920" = and i1 %"cmp.9", %".919"
  store i1 %".920", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".923" = load i1, ptr %"P0"
  %".924" = icmp eq i1 %".923", 1
  br i1 %".924", label %".L_x_0", label %".L_x_1_split_0x0900"
.L_x_1_split_0x0900:
  ; MOV R8, 0x4
  store i32 4, ptr %"R8"
  ; IMAD R2, R0, c[0x0][0x180], R5
  %".929" = load i32, ptr %"R0"
  %".930" = load i32, ptr %"R5"
  %"mul.7" = mul i32 %".929", %"Arg_4"
  %"add.50" = add i32 %"mul.7", %".930"
  store i32 %"add.50", ptr %"R2"
  ; IMAD.WIDE R2, R2, R8, c[0x0][0x168]
  %".933" = load i32, ptr %"R2"
  %".934" = load i32, ptr %"R8"
  %"zext.114" = zext i32 %".933" to i64
  %"zext.115" = zext i32 %".934" to i64
  %"mul.8" = mul i64 %"zext.114", %"zext.115"
  %".935" = ptrtoint ptr %"Arg_1" to i64
  %"add.51" = add i64 %"mul.8", %".935"
  %".936" = and i64 %"add.51", 18446744069414584320
  %".937" = lshr i64 %".936", 32
  %"trunc32.4" = trunc i64 %".937" to i32
  %"trunc32.5" = trunc i64 %"add.51" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; IMAD.WIDE R8, R5, R8, c[0x0][0x160]
  %".941" = load i32, ptr %"R5"
  %".942" = load i32, ptr %"R8"
  %"zext.116" = zext i32 %".941" to i64
  %"zext.117" = zext i32 %".942" to i64
  %"mul.9" = mul i64 %"zext.116", %"zext.117"
  %".943" = ptrtoint ptr %"Arg_0" to i64
  %"add.52" = add i64 %"mul.9", %".943"
  %".944" = and i64 %"add.52", 18446744069414584320
  %".945" = lshr i64 %".944", 32
  %"trunc32.6" = trunc i64 %".945" to i32
  %"trunc32.7" = trunc i64 %"add.52" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; MOV R6, R2
  %".949" = load i32, ptr %"R2"
  store i32 %".949", ptr %"R6"
  br label %".L_x_6"
.L_x_6:
  ; IMAD.MOV.U32 R2, RZ, RZ, R6
  %".953" = load i32, ptr %"R6"
  %"mul.10" = mul i32 0, 0
  %"add.53" = add i32 %"mul.10", %".953"
  store i32 %"add.53", ptr %"R2"
  ; LDG.E.SYS R5, [R8]
  %".956" = load i32, ptr %"R8"
  %"zext.118" = zext i32 %".956" to i64
  %".957" = load i32, ptr %"R9"
  %"zext.119" = zext i32 %".957" to i64
  %"shl.56" = shl i64 %"zext.119", 32
  %"or.56" = or i64 %"shl.56", %"zext.118"
  %".958" = inttoptr i64 %"or.56" to ptr
  %".959" = ptrtoint ptr %".958" to i64
  %".960" = add i64 %".959", 0
  %"for_LDG.56" = inttoptr i64 %".960" to ptr
  %".961" = load float, ptr %"for_LDG.56"
  %".962" = bitcast ptr %"R5" to ptr
  store float %".961", ptr %".962"
  ; LDG.E.SYS R2, [R2]
  %".965" = load i32, ptr %"R2"
  %"zext.120" = zext i32 %".965" to i64
  %".966" = load i32, ptr %"R3"
  %"zext.121" = zext i32 %".966" to i64
  %"shl.57" = shl i64 %"zext.121", 32
  %"or.57" = or i64 %"shl.57", %"zext.120"
  %".967" = inttoptr i64 %"or.57" to ptr
  %".968" = ptrtoint ptr %".967" to i64
  %".969" = add i64 %".968", 0
  %"for_LDG.57" = inttoptr i64 %".969" to ptr
  %".970" = load float, ptr %"for_LDG.57"
  %".971" = bitcast ptr %"R2" to ptr
  store float %".970", ptr %".971"
  ; IADD3 R4, R4, -0x1, RZ
  %".974" = load i32, ptr %"R4"
  %"add.54" = add i32 %".974", -1
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".977" = load i32, ptr %"R4"
  %".978" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".977", 0
  %".979" = and i1 %"cmp.10", %".978"
  store i1 %".979", ptr %"P0"
  ; IADD3 R6, P1, R6, 0x4, RZ
  %".982" = load i32, ptr %"R6"
  %"add.56" = add i32 %".982", 4
  %"add.57" = add i32 %"add.56", 0
  store i32 %"add.57", ptr %"R6"
  %"carry.6" = icmp ult i32 %"add.57", %".982"
  store i1 %"carry.6", ptr %"P1"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".986" = load i32, ptr %"R8"
  %"add.58" = add i32 %".986", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R8"
  %"carry.7" = icmp ult i32 %"add.59", %".986"
  store i1 %"carry.7", ptr %"P2"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".990" = load i32, ptr %"R3"
  %".991" = load i1, ptr %"P1"
  %".992" = sub i1 0, %".991"
  %".993" = zext i1 %".992" to i32
  %"add.60" = add i32 0, %".990"
  %"add.61" = add i32 %"add.60", 0
  %"add.62" = add i32 %"add.61", %".993"
  store i32 %"add.62", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".996" = load i32, ptr %"R9"
  %".997" = load i1, ptr %"P2"
  %".998" = sub i1 0, %".997"
  %".999" = zext i1 %".998" to i32
  %"add.63" = add i32 0, %".996"
  %"add.64" = add i32 %"add.63", 0
  %"add.65" = add i32 %"add.64", %".999"
  store i32 %"add.65", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".1002" = load float, ptr %"R2"
  %".1003" = load float, ptr %"R5"
  %".1004" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".1002", %".1003"
  %"fadd.28" = fadd float %"fmul.28", %".1004"
  %".1005" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".1005"
  ; @P0 BRA `(.L_x_6)
  %".1008" = load i1, ptr %"P0"
  %".1009" = icmp ne i1 %".1008", 1
  br i1 %".1009", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".1014" = load i32, ptr %"R0"
  %".1015" = load i32, ptr %"R5"
  %"zext.122" = zext i32 %".1014" to i64
  %"zext.123" = zext i32 %".1015" to i64
  %"mul.11" = mul i64 %"zext.122", %"zext.123"
  %".1016" = ptrtoint ptr %"Arg_2" to i64
  %"add.66" = add i64 %"mul.11", %".1016"
  %".1017" = and i64 %"add.66", 18446744069414584320
  %".1018" = lshr i64 %".1017", 32
  %"trunc32.8" = trunc i64 %".1018" to i32
  %"trunc32.9" = trunc i64 %"add.66" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".1022" = load i32, ptr %"R2"
  %"zext.124" = zext i32 %".1022" to i64
  %".1023" = load i32, ptr %"R3"
  %"zext.125" = zext i32 %".1023" to i64
  %"shl.58" = shl i64 %"zext.125", 32
  %"or.58" = or i64 %"shl.58", %"zext.124"
  %".1024" = inttoptr i64 %"or.58" to ptr
  %".1025" = ptrtoint ptr %".1024" to i64
  %".1026" = add i64 %".1025", 0
  %"for_LDG.58" = inttoptr i64 %".1026" to ptr
  %".1027" = load float, ptr %"for_LDG.58"
  %".1028" = bitcast ptr %"R2" to ptr
  store float %".1027", ptr %".1028"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1031" = load i32, ptr %"R0"
  %".1032" = load i32, ptr %"R5"
  %"zext.126" = zext i32 %".1031" to i64
  %"zext.127" = zext i32 %".1032" to i64
  %"mul.12" = mul i64 %"zext.126", %"zext.127"
  %".1033" = ptrtoint ptr %"Arg_3" to i64
  %"add.67" = add i64 %"mul.12", %".1033"
  %".1034" = and i64 %"add.67", 18446744069414584320
  %".1035" = lshr i64 %".1034", 32
  %"trunc32.10" = trunc i64 %".1035" to i32
  %"trunc32.11" = trunc i64 %"add.67" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".1039" = load float, ptr %"R2"
  %".1040" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1039", %".1040"
  %".1041" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1041"
  ; STG.E.SYS [R4], R7
  %".1044" = load float, ptr %"R7"
  %".1045" = load i32, ptr %"R4"
  %"zext.128" = zext i32 %".1045" to i64
  %".1046" = load i32, ptr %"R5"
  %"zext.129" = zext i32 %".1046" to i64
  %"shl.59" = shl i64 %"zext.129", 32
  %"or.59" = or i64 %"shl.59", %"zext.128"
  %".1047" = inttoptr i64 %"or.59" to ptr
  %".1048" = ptrtoint ptr %".1047" to i64
  %".1049" = add i64 %".1048", 0
  %"for_STG" = inttoptr i64 %".1049" to ptr
  store float %".1044", ptr %"for_STG"
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

define void @"_Z10max_pool2dPfS_iii"(ptr %"Arg_0", ptr %"Arg_1", i32 %"Arg_2", i32 %"Arg_3", i32 %"Arg_4")
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
  ; IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28]
  %"mul" = mul i32 0, 0
  %"add" = add i32 %"mul", 0
  store i32 %"add", ptr %"R1"
  ; IABS R7, c[0x0][0x174]
  %".12" = icmp sge i32 %"Arg_3", 0
  %".13" = sub i32 0, %"Arg_3"
  %"iabs" = select  i1 %".12", i32 %"Arg_3", i32 %".13"
  store i32 %"iabs", ptr %"R7"
  ; ULDC.64 UR4, c[0x0][0x170]
  store i32 %"Arg_2", ptr %"UR4"
  ; S2R R10, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R10"
  ; ULOP3.LUT UR4, UR4, UR5, URZ, 0x3c, !UPT
  %".20" = load i32, ptr %"UR4"
  %".21" = load i32, ptr %"UR5"
  %".22" = xor i32 %".20", %".21"
  store i32 %".22", ptr %"UR4"
  ; I2F.RP R0, R7
  %".25" = load i32, ptr %"R7"
  store i32 %".25", ptr %"R0"
  ; S2R R19, SR_CTAID.Z
  %"nvvm_ctaid_z" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()
  store i32 %"nvvm_ctaid_z", ptr %"R19"
  ; ISETP.LE.AND P1, PT, RZ, UR4, PT
  %".30" = load i32, ptr %"UR4"
  %".31" = load i1, ptr %"PT"
  %"cmp" = icmp sle i32 0, %".30"
  %".32" = and i1 %"cmp", %".31"
  store i1 %".32", ptr %"P1"
  ; MUFU.RCP R0, R0
  %".35" = load float, ptr %"R0"
  %".36" = fdiv float 0x3ff0000000000000, %".35"
  %".37" = bitcast ptr %"R0" to ptr
  store float %".36", ptr %".37"
  ; IADD3 R2, R0, 0xffffffe, RZ
  %".40" = load i32, ptr %"R0"
  %"add.1" = add i32 %".40", 268435454
  %"add.2" = add i32 %"add.1", 0
  store i32 %"add.2", ptr %"R2"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %".43" = load float, ptr %"R2"
  %".44" = bitcast ptr %"R3" to ptr
  store float %".43", ptr %".44"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.3" = add i32 %"mul.1", 0
  store i32 %"add.3", ptr %"R2"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".49" = load i32, ptr %"R3"
  %".50" = sub i32 0, %".49"
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", %".50"
  store i32 %"add.4", ptr %"R4"
  ; IMAD R5, R4, R7, RZ
  %".53" = load i32, ptr %"R4"
  %".54" = load i32, ptr %"R7"
  %"mul.3" = mul i32 %".53", %".54"
  %"add.5" = add i32 %"mul.3", 0
  store i32 %"add.5", ptr %"R5"
  ; IABS R4, c[0x0][0x170]
  %".57" = icmp sge i32 %"Arg_2", 0
  %".58" = sub i32 0, %"Arg_2"
  %"iabs.1" = select  i1 %".57", i32 %"Arg_2", i32 %".58"
  store i32 %"iabs.1", ptr %"R4"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".61" = load i32, ptr %"R3"
  %".62" = load i32, ptr %"R5"
  %".63" = load i32, ptr %"R2"
  %"mul.4" = mul i32 %".61", %".62"
  %"add.6" = add i32 %"mul.4", %".63"
  store i32 %"add.6", ptr %"R3"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".68" = load i32, ptr %"R3"
  %".69" = load i32, ptr %"R4"
  %"mul.5" = mul i32 %".68", %".69"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R3"
  ; S2R R5, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R5"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".74" = load i32, ptr %"R3"
  %".75" = sub i32 0, %".74"
  %"mul.6" = mul i32 0, 0
  %"add.8" = add i32 %"mul.6", %".75"
  store i32 %"add.8", ptr %"R0"
  ; IMAD R0, R7, R0, R4
  %".78" = load i32, ptr %"R7"
  %".79" = load i32, ptr %"R0"
  %".80" = load i32, ptr %"R4"
  %"mul.7" = mul i32 %".78", %".79"
  %"add.9" = add i32 %"mul.7", %".80"
  store i32 %"add.9", ptr %"R0"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".83" = load i32, ptr %"R7"
  %".84" = load i32, ptr %"R0"
  %".85" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".83", %".84"
  %".86" = and i1 %"cmp.1", %".85"
  store i1 %".86", ptr %"P2"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ
  %".89" = load i1, ptr %"P2"
  %".90" = icmp eq i1 %".89", 1
  br i1 %".90", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".93" = load i32, ptr %"R0"
  %".94" = load i32, ptr %"R7"
  %".95" = sub i32 0, %".94"
  %"add.10" = add i32 %".93", %".95"
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R0"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ
  %".100" = load i1, ptr %"P2"
  %".101" = icmp eq i1 %".100", 1
  br i1 %".101", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".104" = load i32, ptr %"R3"
  %"add.12" = add i32 %".104", 1
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".109" = load i32, ptr %"R0"
  %".110" = load i32, ptr %"R7"
  %".111" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".109", %".110"
  %".112" = and i1 %"cmp.2", %".111"
  store i1 %".112", ptr %"P0"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".115" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".116" = load i32, ptr %"R5"
  %"mul.8" = mul i32 %".115", %"nvvm_blockdim_x"
  %"add.14" = add i32 %"mul.8", %".116"
  store i32 %"add.14", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".121" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_3"
  %".122" = and i1 %"cmp.3", %".121"
  store i1 %".122", ptr %"P2"
  ; @P0 IADD3 R3, R3, 0x1, RZ
  %".125" = load i1, ptr %"P0"
  %".126" = icmp ne i1 %".125", 1
  br i1 %".126", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".129" = load i32, ptr %"R3"
  %"add.15" = add i32 %".129", 1
  %"add.16" = add i32 %"add.15", 0
  store i32 %"add.16", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".134" = load i32, ptr %"R3"
  %"mul.9" = mul i32 0, 0
  %"add.17" = add i32 %"mul.9", %".134"
  store i32 %"add.17", ptr %"R21"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21
  %".137" = load i1, ptr %"P1"
  %".138" = icmp eq i1 %".137", 1
  br i1 %".138", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".141" = load i32, ptr %"R21"
  %".142" = sub i32 0, %".141"
  %"mul.10" = mul i32 0, 0
  %"add.18" = add i32 %"mul.10", %".142"
  store i32 %"add.18", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".147" = load i1, ptr %"P2"
  %".148" = icmp eq i1 %".147", 1
  br i1 %".148", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".151" = xor i32 %"Arg_3", -1
  store i32 %".151", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".156" = load i32, ptr %"R10"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".157" = load i32, ptr %"R7"
  %"mul.11" = mul i32 %".156", %"nvvm_blockdim_y"
  %"add.19" = add i32 %"mul.11", %".157"
  store i32 %"add.19", ptr %"R10"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".160" = load i32, ptr %"R0"
  %".161" = load i32, ptr %"R21"
  %".162" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".160", %".161"
  %".163" = and i1 %"cmp.4", %".162"
  store i1 %".163", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".166" = load i32, ptr %"R10"
  %".167" = load i32, ptr %"R21"
  %".168" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".166", %".167"
  %".169" = or i1 %"cmp.5", %".168"
  store i1 %".169", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".172" = load i32, ptr %"R19"
  %".173" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".172", %"Arg_4"
  %".174" = or i1 %"cmp.6", %".173"
  store i1 %".174", ptr %"P0"
  ; @P0 EXIT
  %".177" = load i1, ptr %"P0"
  %".178" = icmp ne i1 %".177", 1
  br i1 %".178", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
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
  %".187" = load i32, ptr %"R15"
  %".188" = load i1, ptr %"PT"
  %"cmp.7" = icmp sge i32 %".187", 1
  %".189" = and i1 %"cmp.7", %".188"
  store i1 %".189", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".192" = load i1, ptr %"P0"
  %".193" = icmp eq i1 %".192", 1
  br i1 %".193", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".196" = load i32, ptr %"R19"
  %"mul.13" = mul i32 %".196", %"Arg_2"
  %"add.21" = add i32 %"mul.13", 0
  store i32 %"add.21", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".199" = load i32, ptr %"R15"
  %"add.22" = add i32 %".199", -1
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".202" = load i32, ptr %"R0"
  %"mul.14" = mul i32 %".202", %"Arg_3"
  %"add.24" = add i32 %"mul.14", 0
  store i32 %"add.24", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".205" = load i32, ptr %"R15"
  %".206" = and i32 %".205", 3
  store i32 %".206", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".209" = load i32, ptr %"R10"
  %".210" = load i32, ptr %"R3"
  %"mul.15" = mul i32 %".209", %"Arg_3"
  %"add.25" = add i32 %"mul.15", %".210"
  store i32 %"add.25", ptr %"R12"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".213" = load i32, ptr %"R2"
  %".214" = load i1, ptr %"PT"
  %"cmp.8" = icmp sge i32 %".213", 3
  %".215" = and i1 %"cmp.8", %".214"
  store i1 %".215", ptr %"P0"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.26" = add i32 %"mul.16", -8388608
  store i32 %"add.26", ptr %"R11"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".220" = load i32, ptr %"R15"
  %".221" = sub i32 0, %"Arg_3"
  %"add.27" = add i32 %".220", %".221"
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R20"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.29" = add i32 %"mul.17", 0
  store i32 %"add.29", ptr %"R16"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".226" = load i32, ptr %"R12"
  %".227" = load i32, ptr %"R13"
  %"mul.18" = mul i32 %".226", %"Arg_2"
  %"add.30" = add i32 %"mul.18", %".227"
  store i32 %"add.30", ptr %"R14"
  br label %".L_x_12"
.L_x_12:
  ; UMOV UR4, URZ
  %".231" = load i32, ptr %"URZ"
  store i32 %".231", ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".234" = load i32, ptr %"R15"
  %".235" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".234", 0
  %".236" = and i1 %"cmp.9", %".235"
  store i1 %".236", ptr %"P2"
  ; @!P0 BRA `(.L_x_9)
  %".239" = load i1, ptr %"P0"
  %".240" = icmp eq i1 %".239", 1
  br i1 %".240", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".243" = load i32, ptr %"R14"
  %".244" = load i32, ptr %"R16"
  %"mul.19" = mul i32 %".243", 1
  %"add.31" = add i32 %"mul.19", %".244"
  store i32 %"add.31", ptr %"R17"
  ; UMOV UR4, URZ
  %".247" = load i32, ptr %"URZ"
  store i32 %".247", ptr %"UR4"
  br label %".L_x_10"
.L_x_10:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.32" = add i32 %"mul.20", %"Arg_2"
  store i32 %"add.32", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".255" = load i32, ptr %"R17"
  %".256" = load i32, ptr %"R2"
  %"zext" = zext i32 %".255" to i64
  %"zext.1" = zext i32 %".256" to i64
  %"mul.21" = mul i64 %"zext", %"zext.1"
  %".257" = ptrtoint ptr %"Arg_0" to i64
  %"add.33" = add i64 %"mul.21", %".257"
  %".258" = and i64 %"add.33", 18446744069414584320
  %".259" = lshr i64 %".258", 32
  %"trunc32" = trunc i64 %".259" to i32
  %"trunc32.1" = trunc i64 %"add.33" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".263" = load i32, ptr %"R23"
  %".264" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".263" to i64
  %"zext.3" = zext i32 4 to i64
  %"mul.22" = mul i64 %"zext.2", %"zext.3"
  %"zext.4" = zext i32 %".264" to i64
  %"add.34" = add i64 %"mul.22", %"zext.4"
  %".265" = and i64 %"add.34", 18446744069414584320
  %".266" = lshr i64 %".265", 32
  %"trunc32.2" = trunc i64 %".266" to i32
  %"trunc32.3" = trunc i64 %"add.34" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; LDG.E.SYS R2, [R2]
  %".270" = load i32, ptr %"R2"
  %"zext.5" = zext i32 %".270" to i64
  %".271" = load i32, ptr %"R3"
  %"zext.6" = zext i32 %".271" to i64
  %"shl" = shl i64 %"zext.6", 32
  %"or" = or i64 %"shl", %"zext.5"
  %".272" = inttoptr i64 %"or" to ptr
  %".273" = ptrtoint ptr %".272" to i64
  %".274" = add i64 %".273", 0
  %"for_LDG" = inttoptr i64 %".274" to ptr
  %".275" = load float, ptr %"for_LDG"
  %".276" = bitcast ptr %"R2" to ptr
  store float %".275", ptr %".276"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".279" = load i32, ptr %"R23"
  %".280" = load i32, ptr %"R4"
  %"zext.7" = zext i32 %".279" to i64
  %"zext.8" = zext i32 4 to i64
  %"mul.23" = mul i64 %"zext.7", %"zext.8"
  %"zext.9" = zext i32 %".280" to i64
  %"add.35" = add i64 %"mul.23", %"zext.9"
  %".281" = and i64 %"add.35", 18446744069414584320
  %".282" = lshr i64 %".281", 32
  %"trunc32.4" = trunc i64 %".282" to i32
  %"trunc32.5" = trunc i64 %"add.35" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".286" = load i32, ptr %"R4"
  %"zext.10" = zext i32 %".286" to i64
  %".287" = load i32, ptr %"R5"
  %"zext.11" = zext i32 %".287" to i64
  %"shl.1" = shl i64 %"zext.11", 32
  %"or.1" = or i64 %"shl.1", %"zext.10"
  %".288" = inttoptr i64 %"or.1" to ptr
  %".289" = ptrtoint ptr %".288" to i64
  %".290" = add i64 %".289", 0
  %"for_LDG.1" = inttoptr i64 %".290" to ptr
  %".291" = load float, ptr %"for_LDG.1"
  %".292" = bitcast ptr %"R4" to ptr
  store float %".291", ptr %".292"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".295" = load i32, ptr %"R23"
  %".296" = load i32, ptr %"R6"
  %"zext.12" = zext i32 %".295" to i64
  %"zext.13" = zext i32 4 to i64
  %"mul.24" = mul i64 %"zext.12", %"zext.13"
  %"zext.14" = zext i32 %".296" to i64
  %"add.36" = add i64 %"mul.24", %"zext.14"
  %".297" = and i64 %"add.36", 18446744069414584320
  %".298" = lshr i64 %".297", 32
  %"trunc32.6" = trunc i64 %".298" to i32
  %"trunc32.7" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".302" = load i32, ptr %"R6"
  %"zext.15" = zext i32 %".302" to i64
  %".303" = load i32, ptr %"R7"
  %"zext.16" = zext i32 %".303" to i64
  %"shl.2" = shl i64 %"zext.16", 32
  %"or.2" = or i64 %"shl.2", %"zext.15"
  %".304" = inttoptr i64 %"or.2" to ptr
  %".305" = ptrtoint ptr %".304" to i64
  %".306" = add i64 %".305", 0
  %"for_LDG.2" = inttoptr i64 %".306" to ptr
  %".307" = load float, ptr %"for_LDG.2"
  %".308" = bitcast ptr %"R6" to ptr
  store float %".307", ptr %".308"
  ; LDG.E.SYS R8, [R8]
  %".311" = load i32, ptr %"R8"
  %"zext.17" = zext i32 %".311" to i64
  %".312" = load i32, ptr %"R9"
  %"zext.18" = zext i32 %".312" to i64
  %"shl.3" = shl i64 %"zext.18", 32
  %"or.3" = or i64 %"shl.3", %"zext.17"
  %".313" = inttoptr i64 %"or.3" to ptr
  %".314" = ptrtoint ptr %".313" to i64
  %".315" = add i64 %".314", 0
  %"for_LDG.3" = inttoptr i64 %".315" to ptr
  %".316" = load float, ptr %"for_LDG.3"
  %".317" = bitcast ptr %"R8" to ptr
  store float %".316", ptr %".317"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".320" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".320", 4
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".323" = load i32, ptr %"R20"
  %".324" = load i32, ptr %"UR4"
  %"add.39" = add i32 %".323", %".324"
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".327" = load i32, ptr %"R18"
  %".328" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".327", 0
  %".329" = and i1 %"cmp.10", %".328"
  store i1 %".329", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".332" = load i32, ptr %"R23"
  %".333" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".332", 4
  %"add.41" = add i32 %"mul.25", %".333"
  store i32 %"add.41", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".336" = load float, ptr %"R2"
  %".337" = load float, ptr %"R11"
  %".338" = fcmp olt float %".336", %".337"
  %"fmnmx_min" = select  i1 %".338", float %".336", float %".337"
  %".339" = fcmp ogt float %".336", %".337"
  %"fmnmx_max" = select  i1 %".339", float %".336", float %".337"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".340" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final", ptr %".340"
  ; FMNMX R11, R11, R4, !PT
  %".343" = load float, ptr %"R11"
  %".344" = load float, ptr %"R4"
  %".345" = fcmp olt float %".343", %".344"
  %"fmnmx_min.1" = select  i1 %".345", float %".343", float %".344"
  %".346" = fcmp ogt float %".343", %".344"
  %"fmnmx_max.1" = select  i1 %".346", float %".343", float %".344"
  %"fmnmx_final.1" = select  i1 1, float %"fmnmx_min.1", float %"fmnmx_max.1"
  %".347" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.1", ptr %".347"
  ; FMNMX R11, R11, R6, !PT
  %".350" = load float, ptr %"R11"
  %".351" = load float, ptr %"R6"
  %".352" = fcmp olt float %".350", %".351"
  %"fmnmx_min.2" = select  i1 %".352", float %".350", float %".351"
  %".353" = fcmp ogt float %".350", %".351"
  %"fmnmx_max.2" = select  i1 %".353", float %".350", float %".351"
  %"fmnmx_final.2" = select  i1 1, float %"fmnmx_min.2", float %"fmnmx_max.2"
  %".354" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.2", ptr %".354"
  ; FMNMX R11, R11, R8, !PT
  %".357" = load float, ptr %"R11"
  %".358" = load float, ptr %"R8"
  %".359" = fcmp olt float %".357", %".358"
  %"fmnmx_min.3" = select  i1 %".359", float %".357", float %".358"
  %".360" = fcmp ogt float %".357", %".358"
  %"fmnmx_max.3" = select  i1 %".360", float %".357", float %".358"
  %"fmnmx_final.3" = select  i1 1, float %"fmnmx_min.3", float %"fmnmx_max.3"
  %".361" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.3", ptr %".361"
  ; @P1 BRA `(.L_x_10)
  %".364" = load i1, ptr %"P1"
  %".365" = icmp ne i1 %".364", 1
  br i1 %".365", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".368" = load i32, ptr %"R13"
  %".369" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".368", 1
  %"add.42" = add i32 %"mul.26", %".369"
  store i32 %"add.42", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".372" = load i1, ptr %"P2"
  %".373" = icmp eq i1 %".372", 1
  br i1 %".373", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".376" = load i32, ptr %"R12"
  %".377" = load i32, ptr %"UR4"
  %"add.43" = add i32 %".376", %".377"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".382" = load i32, ptr %"R5"
  %".383" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".382", %"Arg_2"
  %"add.45" = add i32 %"mul.27", %".383"
  store i32 %"add.45", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".386" = load i32, ptr %"R2"
  %".387" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".386" to i64
  %"zext.20" = zext i32 %".387" to i64
  %"mul.28" = mul i64 %"zext.19", %"zext.20"
  %".388" = ptrtoint ptr %"Arg_0" to i64
  %"add.46" = add i64 %"mul.28", %".388"
  %".389" = and i64 %"add.46", 18446744069414584320
  %".390" = lshr i64 %".389", 32
  %"trunc32.8" = trunc i64 %".390" to i32
  %"trunc32.9" = trunc i64 %"add.46" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".394" = load i32, ptr %"R2"
  %"zext.21" = zext i32 %".394" to i64
  %".395" = load i32, ptr %"R3"
  %"zext.22" = zext i32 %".395" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".396" = inttoptr i64 %"or.4" to ptr
  %".397" = ptrtoint ptr %".396" to i64
  %".398" = add i64 %".397", 0
  %"for_LDG.4" = inttoptr i64 %".398" to ptr
  %".399" = load float, ptr %"for_LDG.4"
  %".400" = bitcast ptr %"R2" to ptr
  store float %".399", ptr %".400"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".403" = load i32, ptr %"R15"
  %".404" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".403", 1
  %".405" = and i1 %"cmp.11", %".404"
  store i1 %".405", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".408" = load float, ptr %"R11"
  %".409" = load float, ptr %"R2"
  %".410" = fcmp olt float %".408", %".409"
  %"fmnmx_min.4" = select  i1 %".410", float %".408", float %".409"
  %".411" = fcmp ogt float %".408", %".409"
  %"fmnmx_max.4" = select  i1 %".411", float %".408", float %".409"
  %"fmnmx_final.4" = select  i1 1, float %"fmnmx_min.4", float %"fmnmx_max.4"
  %".412" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.4", ptr %".412"
  ; @!P1 BRA `(.L_x_11)
  %".415" = load i1, ptr %"P1"
  %".416" = icmp eq i1 %".415", 1
  br i1 %".416", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".419" = load i32, ptr %"R15"
  %".420" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".419", 2
  %".421" = and i1 %"cmp.12", %".420"
  store i1 %".421", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".424" = load i32, ptr %"R5"
  %"add.47" = add i32 %".424", 1
  %"add.48" = add i32 %"add.47", 0
  store i32 %"add.48", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".427" = load i32, ptr %"R2"
  %".428" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".427", %"Arg_2"
  %"add.49" = add i32 %"mul.29", %".428"
  store i32 %"add.49", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".431" = load i1, ptr %"P1"
  %".432" = icmp ne i1 %".431", 1
  br i1 %".432", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".435" = load i32, ptr %"R5"
  %"add.50" = add i32 %".435", 2
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".440" = load i1, ptr %"P1"
  %".441" = icmp ne i1 %".440", 1
  br i1 %".441", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".444" = load i32, ptr %"R3"
  %".445" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".444", %"Arg_2"
  %"add.52" = add i32 %"mul.30", %".445"
  store i32 %"add.52", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".450" = load i32, ptr %"R2"
  %".451" = load i32, ptr %"R7"
  %"zext.23" = zext i32 %".450" to i64
  %"zext.24" = zext i32 %".451" to i64
  %"mul.31" = mul i64 %"zext.23", %"zext.24"
  %".452" = ptrtoint ptr %"Arg_0" to i64
  %"add.53" = add i64 %"mul.31", %".452"
  %".453" = and i64 %"add.53", 18446744069414584320
  %".454" = lshr i64 %".453", 32
  %"trunc32.10" = trunc i64 %".454" to i32
  %"trunc32.11" = trunc i64 %"add.53" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".458" = load i1, ptr %"P1"
  %".459" = icmp ne i1 %".458", 1
  br i1 %".459", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".462" = load i32, ptr %"R4"
  %".463" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".462" to i64
  %"zext.26" = zext i32 %".463" to i64
  %"mul.32" = mul i64 %"zext.25", %"zext.26"
  %".464" = ptrtoint ptr %"Arg_0" to i64
  %"add.54" = add i64 %"mul.32", %".464"
  %".465" = and i64 %"add.54", 18446744069414584320
  %".466" = lshr i64 %".465", 32
  %"trunc32.12" = trunc i64 %".466" to i32
  %"trunc32.13" = trunc i64 %"add.54" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".472" = load i32, ptr %"R2"
  %"zext.27" = zext i32 %".472" to i64
  %".473" = load i32, ptr %"R3"
  %"zext.28" = zext i32 %".473" to i64
  %"shl.5" = shl i64 %"zext.28", 32
  %"or.5" = or i64 %"shl.5", %"zext.27"
  %".474" = inttoptr i64 %"or.5" to ptr
  %".475" = ptrtoint ptr %".474" to i64
  %".476" = add i64 %".475", 0
  %"for_LDG.5" = inttoptr i64 %".476" to ptr
  %".477" = load float, ptr %"for_LDG.5"
  %".478" = bitcast ptr %"R2" to ptr
  store float %".477", ptr %".478"
  ; @P1 LDG.E.SYS R4, [R4]
  %".481" = load i1, ptr %"P1"
  %".482" = icmp ne i1 %".481", 1
  br i1 %".482", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".485" = load i32, ptr %"R4"
  %"zext.29" = zext i32 %".485" to i64
  %".486" = load i32, ptr %"R5"
  %"zext.30" = zext i32 %".486" to i64
  %"shl.6" = shl i64 %"zext.30", 32
  %"or.6" = or i64 %"shl.6", %"zext.29"
  %".487" = inttoptr i64 %"or.6" to ptr
  %".488" = ptrtoint ptr %".487" to i64
  %".489" = add i64 %".488", 0
  %"for_LDG.6" = inttoptr i64 %".489" to ptr
  %".490" = load float, ptr %"for_LDG.6"
  %".491" = bitcast ptr %"R4" to ptr
  store float %".490", ptr %".491"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".496" = load float, ptr %"R11"
  %".497" = load float, ptr %"R2"
  %".498" = fcmp olt float %".496", %".497"
  %"fmnmx_min.5" = select  i1 %".498", float %".496", float %".497"
  %".499" = fcmp ogt float %".496", %".497"
  %"fmnmx_max.5" = select  i1 %".499", float %".496", float %".497"
  %"fmnmx_final.5" = select  i1 1, float %"fmnmx_min.5", float %"fmnmx_max.5"
  %".500" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.5", ptr %".500"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".503" = load i1, ptr %"P1"
  %".504" = icmp ne i1 %".503", 1
  br i1 %".504", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".507" = load float, ptr %"R11"
  %".508" = load float, ptr %"R4"
  %".509" = fcmp olt float %".507", %".508"
  %"fmnmx_min.6" = select  i1 %".509", float %".507", float %".508"
  %".510" = fcmp ogt float %".507", %".508"
  %"fmnmx_max.6" = select  i1 %".510", float %".507", float %".508"
  %"fmnmx_final.6" = select  i1 1, float %"fmnmx_min.6", float %"fmnmx_max.6"
  %".511" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.6", ptr %".511"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".516" = load i32, ptr %"R16"
  %"add.55" = add i32 %".516", 1
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".519" = load i32, ptr %"R16"
  %".520" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".519", %"Arg_3"
  %".521" = and i1 %"cmp.13", %".520"
  store i1 %".521", ptr %"P1"
  ; @!P1 BRA `(.L_x_12)
  %".524" = load i1, ptr %"P1"
  %".525" = icmp eq i1 %".524", 1
  br i1 %".525", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".528" = load i32, ptr %"R21"
  %".529" = load i32, ptr %"R19"
  %".530" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".528", %".529"
  %"add.57" = add i32 %"mul.33", %".530"
  store i32 %"add.57", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.58" = add i32 %"mul.34", 4
  store i32 %"add.58", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".535" = load i32, ptr %"R21"
  %".536" = load i32, ptr %"R3"
  %".537" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".535", %".536"
  %"add.59" = add i32 %"mul.35", %".537"
  store i32 %"add.59", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".540" = load i32, ptr %"R3"
  %".541" = load i32, ptr %"R2"
  %"zext.31" = zext i32 %".540" to i64
  %"zext.32" = zext i32 %".541" to i64
  %"mul.36" = mul i64 %"zext.31", %"zext.32"
  %".542" = ptrtoint ptr %"Arg_1" to i64
  %"add.60" = add i64 %"mul.36", %".542"
  %".543" = and i64 %"add.60", 18446744069414584320
  %".544" = lshr i64 %".543", 32
  %"trunc32.14" = trunc i64 %".544" to i32
  %"trunc32.15" = trunc i64 %"add.60" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".548" = load i32, ptr %"R11"
  %".549" = load i32, ptr %"R2"
  %"zext.33" = zext i32 %".549" to i64
  %".550" = load i32, ptr %"R3"
  %"zext.34" = zext i32 %".550" to i64
  %"shl.7" = shl i64 %"zext.34", 32
  %"or.7" = or i64 %"shl.7", %"zext.33"
  %".551" = inttoptr i64 %"or.7" to ptr
  %".552" = ptrtoint ptr %".551" to i64
  %".553" = add i64 %".552", 0
  %"for_STG" = inttoptr i64 %".553" to ptr
  store i32 %".548", ptr %"for_STG"
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

define void @"_Z4reluPfS_i"(ptr %"Arg_0", ptr %"Arg_1", i32 %"Arg_2")
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
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R4, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R4"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; IMAD R4, R4, c[0x0][0x0], R3
  %".14" = load i32, ptr %"R4"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".15" = load i32, ptr %"R3"
  %"mul" = mul i32 %".14", %"nvvm_blockdim_x"
  %"add" = add i32 %"mul", %".15"
  store i32 %"add", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, c[0x0][0x170], PT
  %".18" = load i32, ptr %"R4"
  %".19" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".18", %"Arg_2"
  %".20" = and i1 %"cmp", %".19"
  store i1 %".20", ptr %"P0"
  ; @P0 EXIT
  %".23" = load i1, ptr %"P0"
  %".24" = icmp ne i1 %".23", 1
  br i1 %".24", label %".text._Z4reluPfS_i_conditionalExpr_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R4, R5, c[0x0][0x160]
  %".31" = load i32, ptr %"R4"
  %".32" = load i32, ptr %"R5"
  %"zext" = zext i32 %".31" to i64
  %"zext.1" = zext i32 %".32" to i64
  %"mul.1" = mul i64 %"zext", %"zext.1"
  %".33" = ptrtoint ptr %"Arg_0" to i64
  %"add.1" = add i64 %"mul.1", %".33"
  %".34" = and i64 %"add.1", 18446744069414584320
  %".35" = lshr i64 %".34", 32
  %"trunc32" = trunc i64 %".35" to i32
  %"trunc32.1" = trunc i64 %"add.1" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".39" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".39" to i64
  %".40" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".40" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".41" = inttoptr i64 %"or" to ptr
  %".42" = ptrtoint ptr %".41" to i64
  %".43" = add i64 %".42", 0
  %"for_LDG" = inttoptr i64 %".43" to ptr
  %".44" = load float, ptr %"for_LDG"
  %".45" = bitcast ptr %"R2" to ptr
  store float %".44", ptr %".45"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".48" = load i32, ptr %"R4"
  %".49" = load i32, ptr %"R5"
  %"zext.4" = zext i32 %".48" to i64
  %"zext.5" = zext i32 %".49" to i64
  %"mul.2" = mul i64 %"zext.4", %"zext.5"
  %".50" = ptrtoint ptr %"Arg_1" to i64
  %"add.2" = add i64 %"mul.2", %".50"
  %".51" = and i64 %"add.2", 18446744069414584320
  %".52" = lshr i64 %".51", 32
  %"trunc32.2" = trunc i64 %".52" to i32
  %"trunc32.3" = trunc i64 %"add.2" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; FMNMX R7, RZ, R2, !PT
  %".56" = load float, ptr %"R2"
  %".57" = fcmp olt float              0x0, %".56"
  %"fmnmx_min" = select  i1 %".57", float              0x0, float %".56"
  %".58" = fcmp ogt float              0x0, %".56"
  %"fmnmx_max" = select  i1 %".58", float              0x0, float %".56"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".59" = bitcast ptr %"R7" to ptr
  store float %"fmnmx_final", ptr %".59"
  ; STG.E.SYS [R4], R7
  %".62" = load float, ptr %"R7"
  %".63" = load i32, ptr %"R4"
  %"zext.6" = zext i32 %".63" to i64
  %".64" = load i32, ptr %"R5"
  %"zext.7" = zext i32 %".64" to i64
  %"shl.1" = shl i64 %"zext.7", 32
  %"or.1" = or i64 %"shl.1", %"zext.6"
  %".65" = inttoptr i64 %"or.1" to ptr
  %".66" = ptrtoint ptr %".65" to i64
  %".67" = add i64 %".66", 0
  %"for_STG" = inttoptr i64 %".67" to ptr
  store float %".62", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_14:
  ; BRA `(.L_x_14)
  br label %".L_x_14"
ExitFunction:
  ret void
}

define void @"_Z6conv2dPfS_S_iiii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", i32 %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6")
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
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R3, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R3"
  ; ULDC.64 UR4, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"UR4"
  ; UIADD3 UR5, UR4, -UR5, URZ
  %".18" = load i32, ptr %"UR4"
  %".19" = load i32, ptr %"UR5"
  %".20" = sub i32 0, %".19"
  %"add" = add i32 %".18", %".20"
  %"add.1" = add i32 %"add", 0
  store i32 %"add.1", ptr %"UR5"
  ; S2R R4, SR_TID.Y
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R4"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; S2R R5, SR_TID.X
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", ptr %"R5"
  ; S2R R0, SR_CTAID.Z
  %"nvvm_ctaid_z" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()
  store i32 %"nvvm_ctaid_z", ptr %"R0"
  ; IMAD R3, R3, c[0x0][0x4], R4
  %".31" = load i32, ptr %"R3"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".32" = load i32, ptr %"R4"
  %"mul" = mul i32 %".31", %"nvvm_blockdim_y"
  %"add.2" = add i32 %"mul", %".32"
  store i32 %"add.2", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R3, UR5, PT
  %".35" = load i32, ptr %"R3"
  %".36" = load i32, ptr %"UR5"
  %".37" = load i1, ptr %"PT"
  %"cmp" = icmp sgt i32 %".35", %".36"
  %".38" = and i1 %"cmp", %".37"
  store i1 %".38", ptr %"P0"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".41" = load i32, ptr %"R2"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".42" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".41", %"nvvm_blockdim_x"
  %"add.3" = add i32 %"mul.1", %".42"
  store i32 %"add.3", ptr %"R2"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".45" = load i32, ptr %"R2"
  %".46" = load i32, ptr %"UR5"
  %".47" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".45", %".46"
  %".48" = or i1 %"cmp.1", %".47"
  store i1 %".48", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".51" = load i32, ptr %"R0"
  %".52" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".51", %"Arg_6"
  %".53" = or i1 %"cmp.2", %".52"
  store i1 %".53", ptr %"P0"
  ; @P0 EXIT
  %".56" = load i1, ptr %"P0"
  %".57" = icmp ne i1 %".56", 1
  br i1 %".57", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
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
  %".66" = load i32, ptr %"R4"
  %".67" = load i1, ptr %"PT"
  %"cmp.3" = icmp sle i32 %".66", %"Arg_4"
  %".68" = and i1 %"cmp.3", %".67"
  store i1 %".68", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".71" = load i32, ptr %"R4"
  %".72" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".71", %"Arg_5"
  %".73" = or i1 %"cmp.4", %".72"
  store i1 %".73", ptr %"P0"
  ; @P0 BRA `(.L_x_15)
  %".76" = load i1, ptr %"P0"
  %".77" = icmp ne i1 %".76", 1
  br i1 %".77", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
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
  %".86" = load float, ptr %"RZ"
  %".87" = bitcast ptr %"R12" to ptr
  store float %".86", ptr %".87"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".90" = load i32, ptr %"R5"
  %".91" = sub i32 0, %".90"
  %"add.7" = add i32 %".91", %"Arg_4"
  %"add.8" = add i32 %"add.7", 0
  store i32 %"add.8", ptr %"R5"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".94" = load i32, ptr %"R4"
  %".95" = and i32 %".94", 3
  store i32 %".95", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".98" = load i32, ptr %"R5"
  %".99" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".98", 3
  %".100" = and i1 %"cmp.5", %".99"
  store i1 %".100", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".103" = load i32, ptr %"R4"
  %".104" = sub i32 0, %"Arg_4"
  %"add.9" = add i32 %".103", %".104"
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R26"
  br label %".L_x_20"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".108" = load i32, ptr %"R10"
  %".109" = load i32, ptr %"R3"
  %"mul.5" = mul i32 %".108", %"Arg_3"
  %"add.11" = add i32 %"mul.5", %".109"
  store i32 %"add.11", ptr %"R11"
  ; MOV R8, RZ
  %".112" = load i32, ptr %"RZ"
  store i32 %".112", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".115" = load i32, ptr %"R0"
  %".116" = load i32, ptr %"R10"
  %"mul.6" = mul i32 %".115", %"Arg_5"
  %"add.12" = add i32 %"mul.6", %".116"
  store i32 %"add.12", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".119" = load i32, ptr %"R10"
  %"add.13" = add i32 %".119", 1
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".122" = load i32, ptr %"R11"
  %".123" = load i32, ptr %"R2"
  %"mul.7" = mul i32 %".122", %"Arg_3"
  %"add.15" = add i32 %"mul.7", %".123"
  store i32 %"add.15", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".126" = load i32, ptr %"R10"
  %".127" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".126", %"Arg_5"
  %".128" = and i1 %"cmp.6", %".127"
  store i1 %".128", ptr %"P1"
  br label %".L_x_19"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".132" = load i32, ptr %"R9"
  %".133" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".132", %"Arg_4"
  %"add.16" = add i32 %"mul.8", %".133"
  store i32 %"add.16", ptr %"R6"
  ; UMOV UR4, URZ
  %".136" = load i32, ptr %"URZ"
  store i32 %".136", ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".139" = load i32, ptr %"R4"
  %".140" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".139", 0
  %".141" = and i1 %"cmp.7", %".140"
  store i1 %".141", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".144" = load i32, ptr %"R6"
  %"mul.9" = mul i32 %".144", %"Arg_4"
  %"add.17" = add i32 %"mul.9", 0
  store i32 %"add.17", ptr %"R29"
  ; @!P0 BRA `(.L_x_16)
  %".147" = load i1, ptr %"P0"
  %".148" = icmp eq i1 %".147", 1
  br i1 %".148", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".153" = load i32, ptr %"R5"
  %".154" = load i32, ptr %"R8"
  %"mul.10" = mul i32 %".153", 1
  %"add.18" = add i32 %"mul.10", %".154"
  store i32 %"add.18", ptr %"R13"
  ; UMOV UR4, URZ
  %".157" = load i32, ptr %"URZ"
  store i32 %".157", ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".160" = load i32, ptr %"R29"
  %".161" = load i32, ptr %"R24"
  %"zext" = zext i32 %".160" to i64
  %"zext.1" = zext i32 %".161" to i64
  %"mul.11" = mul i64 %"zext", %"zext.1"
  %".162" = ptrtoint ptr %"Arg_1" to i64
  %"add.19" = add i64 %"mul.11", %".162"
  %".163" = and i64 %"add.19", 18446744069414584320
  %".164" = lshr i64 %".163", 32
  %"trunc32" = trunc i64 %".164" to i32
  %"trunc32.1" = trunc i64 %"add.19" to i32
  store i32 %"trunc32.1", ptr %"R6"
  store i32 %"trunc32", ptr %"R7"
  ; MOV R23, R6
  %".168" = load i32, ptr %"R6"
  store i32 %".168", ptr %"R23"
  br label %".L_x_17"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".172" = load i32, ptr %"R13"
  %".173" = load i32, ptr %"R24"
  %"zext.2" = zext i32 %".172" to i64
  %"zext.3" = zext i32 %".173" to i64
  %"mul.12" = mul i64 %"zext.2", %"zext.3"
  %".174" = ptrtoint ptr %"Arg_0" to i64
  %"add.20" = add i64 %"mul.12", %".174"
  %".175" = and i64 %"add.20", 18446744069414584320
  %".176" = lshr i64 %".175", 32
  %"trunc32.2" = trunc i64 %".176" to i32
  %"trunc32.3" = trunc i64 %"add.20" to i32
  store i32 %"trunc32.3", ptr %"R14"
  store i32 %"trunc32.2", ptr %"R15"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".182" = load i32, ptr %"R23"
  %"mul.13" = mul i32 0, 0
  %"add.21" = add i32 %"mul.13", %".182"
  store i32 %"add.21", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".185" = load i32, ptr %"R31"
  %".186" = load i32, ptr %"R14"
  %"zext.4" = zext i32 %".185" to i64
  %"zext.5" = zext i32 4 to i64
  %"mul.14" = mul i64 %"zext.4", %"zext.5"
  %"zext.6" = zext i32 %".186" to i64
  %"add.22" = add i64 %"mul.14", %"zext.6"
  %".187" = and i64 %"add.22", 18446744069414584320
  %".188" = lshr i64 %".187", 32
  %"trunc32.4" = trunc i64 %".188" to i32
  %"trunc32.5" = trunc i64 %"add.22" to i32
  store i32 %"trunc32.5", ptr %"R16"
  store i32 %"trunc32.4", ptr %"R17"
  ; LDG.E.SYS R14, [R14]
  %".192" = load i32, ptr %"R14"
  %"zext.7" = zext i32 %".192" to i64
  %".193" = load i32, ptr %"R15"
  %"zext.8" = zext i32 %".193" to i64
  %"shl" = shl i64 %"zext.8", 32
  %"or" = or i64 %"shl", %"zext.7"
  %".194" = inttoptr i64 %"or" to ptr
  %".195" = ptrtoint ptr %".194" to i64
  %".196" = add i64 %".195", 0
  %"for_LDG" = inttoptr i64 %".196" to ptr
  %".197" = load float, ptr %"for_LDG"
  %".198" = bitcast ptr %"R14" to ptr
  store float %".197", ptr %".198"
  ; LDG.E.SYS R23, [R6]
  %".201" = load i32, ptr %"R6"
  %"zext.9" = zext i32 %".201" to i64
  %".202" = load i32, ptr %"R7"
  %"zext.10" = zext i32 %".202" to i64
  %"shl.1" = shl i64 %"zext.10", 32
  %"or.1" = or i64 %"shl.1", %"zext.9"
  %".203" = inttoptr i64 %"or.1" to ptr
  %".204" = ptrtoint ptr %".203" to i64
  %".205" = add i64 %".204", 0
  %"for_LDG.1" = inttoptr i64 %".205" to ptr
  %".206" = load float, ptr %"for_LDG.1"
  %".207" = bitcast ptr %"R23" to ptr
  store float %".206", ptr %".207"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".210" = load i32, ptr %"R31"
  %".211" = load i32, ptr %"R16"
  %"zext.11" = zext i32 %".210" to i64
  %"zext.12" = zext i32 4 to i64
  %"mul.15" = mul i64 %"zext.11", %"zext.12"
  %"zext.13" = zext i32 %".211" to i64
  %"add.23" = add i64 %"mul.15", %"zext.13"
  %".212" = and i64 %"add.23", 18446744069414584320
  %".213" = lshr i64 %".212", 32
  %"trunc32.6" = trunc i64 %".213" to i32
  %"trunc32.7" = trunc i64 %"add.23" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".217" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".217" to i64
  %".218" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".218" to i64
  %"shl.2" = shl i64 %"zext.15", 32
  %"or.2" = or i64 %"shl.2", %"zext.14"
  %".219" = inttoptr i64 %"or.2" to ptr
  %".220" = ptrtoint ptr %".219" to i64
  %".221" = add i64 %".220", 0
  %"for_LDG.2" = inttoptr i64 %".221" to ptr
  %".222" = load float, ptr %"for_LDG.2"
  %".223" = bitcast ptr %"R16" to ptr
  store float %".222", ptr %".223"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".226" = load i32, ptr %"R31"
  %".227" = load i32, ptr %"R18"
  %"zext.16" = zext i32 %".226" to i64
  %"zext.17" = zext i32 4 to i64
  %"mul.16" = mul i64 %"zext.16", %"zext.17"
  %"zext.18" = zext i32 %".227" to i64
  %"add.24" = add i64 %"mul.16", %"zext.18"
  %".228" = and i64 %"add.24", 18446744069414584320
  %".229" = lshr i64 %".228", 32
  %"trunc32.8" = trunc i64 %".229" to i32
  %"trunc32.9" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".233" = load i32, ptr %"R6"
  %"zext.19" = zext i32 %".233" to i64
  %".234" = load i32, ptr %"R7"
  %"zext.20" = zext i32 %".234" to i64
  %"shl.3" = shl i64 %"zext.20", 32
  %"or.3" = or i64 %"shl.3", %"zext.19"
  %".235" = inttoptr i64 %"or.3" to ptr
  %".236" = ptrtoint ptr %".235" to i64
  %".237" = add i64 %".236", 4
  %"for_LDG.3" = inttoptr i64 %".237" to ptr
  %".238" = load float, ptr %"for_LDG.3"
  %".239" = bitcast ptr %"R22" to ptr
  store float %".238", ptr %".239"
  ; LDG.E.SYS R18, [R18]
  %".242" = load i32, ptr %"R18"
  %"zext.21" = zext i32 %".242" to i64
  %".243" = load i32, ptr %"R19"
  %"zext.22" = zext i32 %".243" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".244" = inttoptr i64 %"or.4" to ptr
  %".245" = ptrtoint ptr %".244" to i64
  %".246" = add i64 %".245", 0
  %"for_LDG.4" = inttoptr i64 %".246" to ptr
  %".247" = load float, ptr %"for_LDG.4"
  %".248" = bitcast ptr %"R18" to ptr
  store float %".247", ptr %".248"
  ; LDG.E.SYS R25, [R6+0x8]
  %".251" = load i32, ptr %"R6"
  %"zext.23" = zext i32 %".251" to i64
  %".252" = load i32, ptr %"R7"
  %"zext.24" = zext i32 %".252" to i64
  %"shl.5" = shl i64 %"zext.24", 32
  %"or.5" = or i64 %"shl.5", %"zext.23"
  %".253" = inttoptr i64 %"or.5" to ptr
  %".254" = ptrtoint ptr %".253" to i64
  %".255" = add i64 %".254", 8
  %"for_LDG.5" = inttoptr i64 %".255" to ptr
  %".256" = load float, ptr %"for_LDG.5"
  %".257" = bitcast ptr %"R25" to ptr
  store float %".256", ptr %".257"
  ; LDG.E.SYS R20, [R20]
  %".260" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".260" to i64
  %".261" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".261" to i64
  %"shl.6" = shl i64 %"zext.26", 32
  %"or.6" = or i64 %"shl.6", %"zext.25"
  %".262" = inttoptr i64 %"or.6" to ptr
  %".263" = ptrtoint ptr %".262" to i64
  %".264" = add i64 %".263", 0
  %"for_LDG.6" = inttoptr i64 %".264" to ptr
  %".265" = load float, ptr %"for_LDG.6"
  %".266" = bitcast ptr %"R20" to ptr
  store float %".265", ptr %".266"
  ; LDG.E.SYS R27, [R6+0xc]
  %".269" = load i32, ptr %"R6"
  %"zext.27" = zext i32 %".269" to i64
  %".270" = load i32, ptr %"R7"
  %"zext.28" = zext i32 %".270" to i64
  %"shl.7" = shl i64 %"zext.28", 32
  %"or.7" = or i64 %"shl.7", %"zext.27"
  %".271" = inttoptr i64 %"or.7" to ptr
  %".272" = ptrtoint ptr %".271" to i64
  %".273" = add i64 %".272", 12
  %"for_LDG.7" = inttoptr i64 %".273" to ptr
  %".274" = load float, ptr %"for_LDG.7"
  %".275" = bitcast ptr %"R27" to ptr
  store float %".274", ptr %".275"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".278" = load i32, ptr %"UR4"
  %"add.25" = add i32 %".278", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".281" = load i32, ptr %"R31"
  %".282" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".281", 2
  %"add.27" = add i32 %"shl.8", %".282"
  store i32 %"add.27", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".285" = load float, ptr %"R23"
  %".286" = load float, ptr %"R14"
  %".287" = load float, ptr %"R12"
  %"fmul" = fmul float %".285", %".286"
  %"fadd" = fadd float %"fmul", %".287"
  %".288" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".288"
  ; IADD3 R12, R26, UR4, RZ
  %".291" = load i32, ptr %"R26"
  %".292" = load i32, ptr %"UR4"
  %"add.28" = add i32 %".291", %".292"
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".295" = load i32, ptr %"R12"
  %".296" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".295", 0
  %".297" = and i1 %"cmp.8", %".296"
  store i1 %".297", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".300" = load float, ptr %"R22"
  %".301" = load float, ptr %"R16"
  %".302" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".300", %".301"
  %"fadd.1" = fadd float %"fmul.1", %".302"
  %".303" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".303"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".306" = load i32, ptr %"R6"
  %"add.30" = add i32 %".306", 16
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R23"
  %"carry" = icmp ult i32 %"add.31", %".306"
  store i1 %"carry", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".310" = load float, ptr %"R25"
  %".311" = load float, ptr %"R18"
  %".312" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".310", %".311"
  %"fadd.2" = fadd float %"fmul.2", %".312"
  %".313" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".313"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".316" = load i32, ptr %"R7"
  %".317" = load i1, ptr %"P4"
  %".318" = sub i1 0, %".317"
  %".319" = zext i1 %".318" to i32
  %"add.32" = add i32 0, %".316"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".319"
  store i32 %"add.34", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".322" = load float, ptr %"R27"
  %".323" = load float, ptr %"R20"
  %".324" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".322", %".323"
  %"fadd.3" = fadd float %"fmul.3", %".324"
  %".325" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".325"
  ; @P2 BRA `(.L_x_17)
  %".328" = load i1, ptr %"P2"
  %".329" = icmp ne i1 %".328", 1
  br i1 %".329", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".332" = load i32, ptr %"R2"
  %".333" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".332", 1
  %"add.35" = add i32 %"mul.17", %".333"
  store i32 %"add.35", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".336" = load i1, ptr %"P3"
  %".337" = icmp eq i1 %".336", 1
  br i1 %".337", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".340" = load i32, ptr %"R11"
  %".341" = load i32, ptr %"UR4"
  %"add.36" = add i32 %".340", %".341"
  %"add.37" = add i32 %"add.36", 0
  store i32 %"add.37", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".344" = load i32, ptr %"R29"
  %".345" = load i32, ptr %"UR4"
  %"add.38" = add i32 %".344", %".345"
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".350" = load i32, ptr %"R15"
  %".351" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".350", %"Arg_3"
  %"add.40" = add i32 %"mul.18", %".351"
  store i32 %"add.40", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".354" = load i32, ptr %"R16"
  %".355" = load i32, ptr %"R19"
  %"zext.29" = zext i32 %".354" to i64
  %"zext.30" = zext i32 %".355" to i64
  %"mul.19" = mul i64 %"zext.29", %"zext.30"
  %".356" = ptrtoint ptr %"Arg_1" to i64
  %"add.41" = add i64 %"mul.19", %".356"
  %".357" = and i64 %"add.41", 18446744069414584320
  %".358" = lshr i64 %".357", 32
  %"trunc32.10" = trunc i64 %".358" to i32
  %"trunc32.11" = trunc i64 %"add.41" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".362" = load i32, ptr %"R6"
  %".363" = load i32, ptr %"R19"
  %"zext.31" = zext i32 %".362" to i64
  %"zext.32" = zext i32 %".363" to i64
  %"mul.20" = mul i64 %"zext.31", %"zext.32"
  %".364" = ptrtoint ptr %"Arg_0" to i64
  %"add.42" = add i64 %"mul.20", %".364"
  %".365" = and i64 %"add.42", 18446744069414584320
  %".366" = lshr i64 %".365", 32
  %"trunc32.12" = trunc i64 %".366" to i32
  %"trunc32.13" = trunc i64 %"add.42" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".370" = load i32, ptr %"R16"
  %"zext.33" = zext i32 %".370" to i64
  %".371" = load i32, ptr %"R17"
  %"zext.34" = zext i32 %".371" to i64
  %"shl.9" = shl i64 %"zext.34", 32
  %"or.8" = or i64 %"shl.9", %"zext.33"
  %".372" = inttoptr i64 %"or.8" to ptr
  %".373" = ptrtoint ptr %".372" to i64
  %".374" = add i64 %".373", 0
  %"for_LDG.8" = inttoptr i64 %".374" to ptr
  %".375" = load float, ptr %"for_LDG.8"
  %".376" = bitcast ptr %"R13" to ptr
  store float %".375", ptr %".376"
  ; LDG.E.SYS R6, [R6]
  %".379" = load i32, ptr %"R6"
  %"zext.35" = zext i32 %".379" to i64
  %".380" = load i32, ptr %"R7"
  %"zext.36" = zext i32 %".380" to i64
  %"shl.10" = shl i64 %"zext.36", 32
  %"or.9" = or i64 %"shl.10", %"zext.35"
  %".381" = inttoptr i64 %"or.9" to ptr
  %".382" = ptrtoint ptr %".381" to i64
  %".383" = add i64 %".382", 0
  %"for_LDG.9" = inttoptr i64 %".383" to ptr
  %".384" = load float, ptr %"for_LDG.9"
  %".385" = bitcast ptr %"R6" to ptr
  store float %".384", ptr %".385"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".388" = load i32, ptr %"R4"
  %".389" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".388", 1
  %".390" = and i1 %"cmp.9", %".389"
  store i1 %".390", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".393" = load float, ptr %"R13"
  %".394" = load float, ptr %"R6"
  %".395" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".393", %".394"
  %"fadd.4" = fadd float %"fmul.4", %".395"
  %".396" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".396"
  ; @!P2 BRA `(.L_x_18)
  %".399" = load i1, ptr %"P2"
  %".400" = icmp eq i1 %".399", 1
  br i1 %".400", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".403" = load i32, ptr %"R4"
  %".404" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".403", 2
  %".405" = and i1 %"cmp.10", %".404"
  store i1 %".405", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".408" = load i32, ptr %"R16"
  %"zext.37" = zext i32 %".408" to i64
  %".409" = load i32, ptr %"R17"
  %"zext.38" = zext i32 %".409" to i64
  %"shl.11" = shl i64 %"zext.38", 32
  %"or.10" = or i64 %"shl.11", %"zext.37"
  %".410" = inttoptr i64 %"or.10" to ptr
  %".411" = ptrtoint ptr %".410" to i64
  %".412" = add i64 %".411", 4
  %"for_LDG.10" = inttoptr i64 %".412" to ptr
  %".413" = load float, ptr %"for_LDG.10"
  %".414" = bitcast ptr %"R13" to ptr
  store float %".413", ptr %".414"
  ; IADD3 R6, R15, 0x1, RZ
  %".417" = load i32, ptr %"R15"
  %"add.43" = add i32 %".417", 1
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".420" = load i32, ptr %"R6"
  %".421" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".420", %"Arg_3"
  %"add.45" = add i32 %"mul.21", %".421"
  store i32 %"add.45", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".424" = load i1, ptr %"P2"
  %".425" = icmp ne i1 %".424", 1
  br i1 %".425", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".428" = load i32, ptr %"R15"
  %"add.46" = add i32 %".428", 2
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".433" = load i1, ptr %"P2"
  %".434" = icmp ne i1 %".433", 1
  br i1 %".434", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".437" = load i32, ptr %"R7"
  %".438" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".437", %"Arg_3"
  %"add.48" = add i32 %"mul.22", %".438"
  store i32 %"add.48", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".443" = load i32, ptr %"R6"
  %".444" = load i32, ptr %"R19"
  %"zext.39" = zext i32 %".443" to i64
  %"zext.40" = zext i32 %".444" to i64
  %"mul.23" = mul i64 %"zext.39", %"zext.40"
  %".445" = ptrtoint ptr %"Arg_0" to i64
  %"add.49" = add i64 %"mul.23", %".445"
  %".446" = and i64 %"add.49", 18446744069414584320
  %".447" = lshr i64 %".446", 32
  %"trunc32.14" = trunc i64 %".447" to i32
  %"trunc32.15" = trunc i64 %"add.49" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".451" = load i1, ptr %"P2"
  %".452" = icmp ne i1 %".451", 1
  br i1 %".452", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".455" = load i32, ptr %"R14"
  %".456" = load i32, ptr %"R19"
  %"zext.41" = zext i32 %".455" to i64
  %"zext.42" = zext i32 %".456" to i64
  %"mul.24" = mul i64 %"zext.41", %"zext.42"
  %".457" = ptrtoint ptr %"Arg_0" to i64
  %"add.50" = add i64 %"mul.24", %".457"
  %".458" = and i64 %"add.50", 18446744069414584320
  %".459" = lshr i64 %".458", 32
  %"trunc32.16" = trunc i64 %".459" to i32
  %"trunc32.17" = trunc i64 %"add.50" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".465" = load i1, ptr %"P2"
  %".466" = icmp ne i1 %".465", 1
  br i1 %".466", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".469" = load i32, ptr %"R16"
  %"zext.43" = zext i32 %".469" to i64
  %".470" = load i32, ptr %"R17"
  %"zext.44" = zext i32 %".470" to i64
  %"shl.12" = shl i64 %"zext.44", 32
  %"or.11" = or i64 %"shl.12", %"zext.43"
  %".471" = inttoptr i64 %"or.11" to ptr
  %".472" = ptrtoint ptr %".471" to i64
  %".473" = add i64 %".472", 8
  %"for_LDG.11" = inttoptr i64 %".473" to ptr
  %".474" = load float, ptr %"for_LDG.11"
  %".475" = bitcast ptr %"R19" to ptr
  store float %".474", ptr %".475"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".480" = load i32, ptr %"R6"
  %"zext.45" = zext i32 %".480" to i64
  %".481" = load i32, ptr %"R7"
  %"zext.46" = zext i32 %".481" to i64
  %"shl.13" = shl i64 %"zext.46", 32
  %"or.12" = or i64 %"shl.13", %"zext.45"
  %".482" = inttoptr i64 %"or.12" to ptr
  %".483" = ptrtoint ptr %".482" to i64
  %".484" = add i64 %".483", 0
  %"for_LDG.12" = inttoptr i64 %".484" to ptr
  %".485" = load float, ptr %"for_LDG.12"
  %".486" = bitcast ptr %"R6" to ptr
  store float %".485", ptr %".486"
  ; @P2 LDG.E.SYS R14, [R14]
  %".489" = load i1, ptr %"P2"
  %".490" = icmp ne i1 %".489", 1
  br i1 %".490", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".493" = load i32, ptr %"R14"
  %"zext.47" = zext i32 %".493" to i64
  %".494" = load i32, ptr %"R15"
  %"zext.48" = zext i32 %".494" to i64
  %"shl.14" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.14", %"zext.47"
  %".495" = inttoptr i64 %"or.13" to ptr
  %".496" = ptrtoint ptr %".495" to i64
  %".497" = add i64 %".496", 0
  %"for_LDG.13" = inttoptr i64 %".497" to ptr
  %".498" = load float, ptr %"for_LDG.13"
  %".499" = bitcast ptr %"R14" to ptr
  store float %".498", ptr %".499"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".504" = load float, ptr %"R13"
  %".505" = load float, ptr %"R6"
  %".506" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".504", %".505"
  %"fadd.5" = fadd float %"fmul.5", %".506"
  %".507" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".507"
  ; @P2 FFMA R12, R19, R14, R12
  %".510" = load i1, ptr %"P2"
  %".511" = icmp ne i1 %".510", 1
  br i1 %".511", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".514" = load float, ptr %"R19"
  %".515" = load float, ptr %"R14"
  %".516" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".514", %".515"
  %"fadd.6" = fadd float %"fmul.6", %".516"
  %".517" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".517"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".522" = load i32, ptr %"R8"
  %"add.51" = add i32 %".522", 1
  %"add.52" = add i32 %"add.51", 0
  store i32 %"add.52", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".525" = load i32, ptr %"R8"
  %".526" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".525", %"Arg_4"
  %".527" = and i1 %"cmp.11", %".526"
  store i1 %".527", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".530" = load i1, ptr %"P2"
  %".531" = icmp eq i1 %".530", 1
  br i1 %".531", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".534" = load i1, ptr %"P1"
  %".535" = icmp eq i1 %".534", 1
  br i1 %".535", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".538" = load i32, ptr %"UR5"
  %"add.53" = add i32 %".538", 1
  %"add.54" = add i32 %"add.53", 0
  store i32 %"add.54", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".541" = load i32, ptr %"R0"
  %".542" = load i32, ptr %"UR4"
  %".543" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".541", %".542"
  %"add.55" = add i32 %"mul.25", %".543"
  store i32 %"add.55", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".548" = load i32, ptr %"R3"
  %".549" = load i32, ptr %"UR4"
  %".550" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".548", %".549"
  %"add.56" = add i32 %"mul.26", %".550"
  store i32 %"add.56", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".553" = load i32, ptr %"R3"
  %".554" = load i32, ptr %"R0"
  %"zext.49" = zext i32 %".553" to i64
  %"zext.50" = zext i32 %".554" to i64
  %"mul.27" = mul i64 %"zext.49", %"zext.50"
  %".555" = ptrtoint ptr %"Arg_2" to i64
  %"add.57" = add i64 %"mul.27", %".555"
  %".556" = and i64 %"add.57", 18446744069414584320
  %".557" = lshr i64 %".556", 32
  %"trunc32.18" = trunc i64 %".557" to i32
  %"trunc32.19" = trunc i64 %"add.57" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".561" = load i32, ptr %"R12"
  %".562" = load i32, ptr %"R2"
  %"zext.51" = zext i32 %".562" to i64
  %".563" = load i32, ptr %"R3"
  %"zext.52" = zext i32 %".563" to i64
  %"shl.15" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.15", %"zext.51"
  %".564" = inttoptr i64 %"or.14" to ptr
  %".565" = ptrtoint ptr %".564" to i64
  %".566" = add i64 %".565", 0
  %"for_STG" = inttoptr i64 %".566" to ptr
  store i32 %".561", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

