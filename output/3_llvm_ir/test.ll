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
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R0, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R0"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; IMAD R0, R0, c[0x0][0x0], R3
  %".16" = load i32, ptr %"R0"
  %".17" = load i32, ptr %"R3"
  %"mul" = mul i32 %".16", 0
  %"add" = add i32 %"mul", %".17"
  store i32 %"add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x184], PT
  %".20" = load i32, ptr %"R0"
  %".21" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".20", %"Arg_5"
  %".22" = and i1 %"cmp", %".21"
  store i1 %".22", ptr %"P0"
  ; @P0 EXIT
  %".25" = load i1, ptr %"P0"
  %".26" = icmp ne i1 %".25", 1
  br i1 %".26", label %".text._Z8fc_layerPfS_S_S_ii_conditionalExpr_0x0050", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0060"
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
  %".35" = load i32, ptr %"R4"
  %".36" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".35", 1
  %".37" = and i1 %"cmp.1", %".36"
  store i1 %".37", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".40" = load i1, ptr %"P0"
  %".41" = icmp eq i1 %".40", 1
  br i1 %".41", label %".L_x_0", label %".text._Z8fc_layerPfS_S_S_ii_split_0x00a0"
.text._Z8fc_layerPfS_S_S_ii_split_0x00a0:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".44" = load i32, ptr %"R4"
  %"add.2" = add i32 %".44", -1
  %"add.3" = add i32 %"add.2", 0
  store i32 %"add.3", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".47" = load i32, ptr %"R4"
  %".48" = and i32 %".47", 3
  store i32 %".48", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".51" = load i32, ptr %"R2"
  %".52" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".51", 3
  %".53" = and i1 %"cmp.2", %".52"
  store i1 %".53", ptr %"P0"
  ; MOV R7, RZ
  %".56" = load float, ptr %"RZ"
  %".57" = bitcast ptr %"R7" to ptr
  store float %".56", ptr %".57"
  ; MOV R5, RZ
  %".60" = load i32, ptr %"RZ"
  store i32 %".60", ptr %"R5"
  ; @!P0 BRA `(.L_x_1)
  %".63" = load i1, ptr %"P0"
  %".64" = icmp eq i1 %".63", 1
  br i1 %".64", label %".L_x_1", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0100"
.text._Z8fc_layerPfS_S_S_ii_split_0x0100:
  ; IADD3 R6, -R4, c[0x0][0x180], RZ
  %".67" = load i32, ptr %"R4"
  %".68" = sub i32 0, %".67"
  %"add.4" = add i32 %".68", %"Arg_4"
  %"add.5" = add i32 %"add.4", 0
  store i32 %"add.5", ptr %"R6"
  ; IMAD R2, R0, c[0x0][0x180], RZ
  %".71" = load i32, ptr %"R0"
  %"mul.2" = mul i32 %".71", %"Arg_4"
  %"add.6" = add i32 %"mul.2", 0
  store i32 %"add.6", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x160]
  %".74" = ptrtoint ptr %"Arg_0" to i64
  %".75" = and i64 %".74", 18446744069414584320
  %".76" = lshr i64 %".75", 32
  %"trunc32" = trunc i64 %".76" to i32
  %"trunc32.1" = trunc i64 %".74" to i32
  store i32 %"trunc32.1", ptr %"UR4"
  store i32 %"trunc32", ptr %"UR5"
  ; IMAD.MOV.U32 R3, RZ, RZ, 0x4
  %"mul.3" = mul i32 0, 0
  %"add.7" = add i32 %"mul.3", 4
  store i32 %"add.7", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R6, RZ, PT
  %".82" = load i32, ptr %"R6"
  %".83" = load i1, ptr %"PT"
  %"cmp.3" = icmp sgt i32 %".82", 0
  %".84" = and i1 %"cmp.3", %".83"
  store i1 %".84", ptr %"P0"
  ; MOV R7, RZ
  %".87" = load float, ptr %"RZ"
  %".88" = bitcast ptr %"R7" to ptr
  store float %".87", ptr %".88"
  ; IMAD.WIDE R2, R2, R3, c[0x0][0x168]
  %".91" = load i32, ptr %"R2"
  %".92" = load i32, ptr %"R3"
  %"zext" = zext i32 %".91" to i64
  %"zext.1" = zext i32 %".92" to i64
  %"mul.4" = mul i64 %"zext", %"zext.1"
  %".93" = ptrtoint ptr %"Arg_1" to i64
  %"add.8" = add i64 %"mul.4", %".93"
  %".94" = and i64 %"add.8", 18446744069414584320
  %".95" = lshr i64 %".94", 32
  %"trunc32.2" = trunc i64 %".95" to i32
  %"trunc32.3" = trunc i64 %"add.8" to i32
  store i32 %"trunc32.3", ptr %"R2"
  store i32 %"trunc32.2", ptr %"R3"
  ; MOV R5, RZ
  %".99" = load i32, ptr %"RZ"
  store i32 %".99", ptr %"R5"
  ; @!P0 BRA `(.L_x_2)
  %".102" = load i1, ptr %"P0"
  %".103" = icmp eq i1 %".102", 1
  br i1 %".103", label %".L_x_2", label %".text._Z8fc_layerPfS_S_S_ii_split_0x0190"
.text._Z8fc_layerPfS_S_S_ii_split_0x0190:
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".106" = load i32, ptr %"R6"
  %".107" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".106", 12
  %".108" = and i1 %"cmp.4", %".107"
  store i1 %".108", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".111" = and i1 1, 1
  %".112" = or i1 %".111", 1
  ; @!P1 BRA `(.L_x_3)
  %".114" = load i1, ptr %"P1"
  %".115" = icmp eq i1 %".114", 1
  br i1 %".115", label %".L_x_3", label %".text._Z8fc_layerPfS_S_S_ii_split_0x01c0"
.text._Z8fc_layerPfS_S_S_ii_split_0x01c0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".118" = xor i1 1, 1
  %".119" = and i1 %".118", 1
  %".120" = and i1 %".119", 1
  br label %".L_x_4"
.L_x_4:
  ; LDG.E.SYS R8, [R2]
  %".123" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".123" to i64
  %".124" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".124" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".125" = inttoptr i64 %"or" to ptr
  %".126" = ptrtoint ptr %".125" to i64
  %".127" = add i64 %".126", 0
  %"for_LDG" = inttoptr i64 %".127" to ptr
  %".128" = load float, ptr %"for_LDG"
  %".129" = bitcast ptr %"R8" to ptr
  store float %".128", ptr %".129"
  ; LDG.E.SYS R9, [UR4]
  %".132" = load i32, ptr %"UR4"
  %"zext.4" = zext i32 %".132" to i64
  %".133" = load i32, ptr %"UR5"
  %"zext.5" = zext i32 %".133" to i64
  %"shl.1" = shl i64 %"zext.5", 32
  %"or.1" = or i64 %"shl.1", %"zext.4"
  %".134" = inttoptr i64 %"or.1" to ptr
  %".135" = ptrtoint ptr %".134" to i64
  %".136" = add i64 %".135", 0
  %"for_LDG.1" = inttoptr i64 %".136" to ptr
  %".137" = load float, ptr %"for_LDG.1"
  %".138" = bitcast ptr %"R9" to ptr
  store float %".137", ptr %".138"
  ; LDG.E.SYS R11, [R2+0x4]
  %".141" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".141" to i64
  %".142" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".142" to i64
  %"shl.2" = shl i64 %"zext.7", 32
  %"or.2" = or i64 %"shl.2", %"zext.6"
  %".143" = inttoptr i64 %"or.2" to ptr
  %".144" = ptrtoint ptr %".143" to i64
  %".145" = add i64 %".144", 4
  %"for_LDG.2" = inttoptr i64 %".145" to ptr
  %".146" = load float, ptr %"for_LDG.2"
  %".147" = bitcast ptr %"R11" to ptr
  store float %".146", ptr %".147"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".150" = load i32, ptr %"UR4"
  %"zext.8" = zext i32 %".150" to i64
  %".151" = load i32, ptr %"UR5"
  %"zext.9" = zext i32 %".151" to i64
  %"shl.3" = shl i64 %"zext.9", 32
  %"or.3" = or i64 %"shl.3", %"zext.8"
  %".152" = inttoptr i64 %"or.3" to ptr
  %".153" = ptrtoint ptr %".152" to i64
  %".154" = add i64 %".153", 4
  %"for_LDG.3" = inttoptr i64 %".154" to ptr
  %".155" = load float, ptr %"for_LDG.3"
  %".156" = bitcast ptr %"R10" to ptr
  store float %".155", ptr %".156"
  ; LDG.E.SYS R13, [R2+0x8]
  %".159" = load i32, ptr %"R2"
  %"zext.10" = zext i32 %".159" to i64
  %".160" = load i32, ptr %"R3"
  %"zext.11" = zext i32 %".160" to i64
  %"shl.4" = shl i64 %"zext.11", 32
  %"or.4" = or i64 %"shl.4", %"zext.10"
  %".161" = inttoptr i64 %"or.4" to ptr
  %".162" = ptrtoint ptr %".161" to i64
  %".163" = add i64 %".162", 8
  %"for_LDG.4" = inttoptr i64 %".163" to ptr
  %".164" = load float, ptr %"for_LDG.4"
  %".165" = bitcast ptr %"R13" to ptr
  store float %".164", ptr %".165"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".168" = load i32, ptr %"UR4"
  %"zext.12" = zext i32 %".168" to i64
  %".169" = load i32, ptr %"UR5"
  %"zext.13" = zext i32 %".169" to i64
  %"shl.5" = shl i64 %"zext.13", 32
  %"or.5" = or i64 %"shl.5", %"zext.12"
  %".170" = inttoptr i64 %"or.5" to ptr
  %".171" = ptrtoint ptr %".170" to i64
  %".172" = add i64 %".171", 8
  %"for_LDG.5" = inttoptr i64 %".172" to ptr
  %".173" = load float, ptr %"for_LDG.5"
  %".174" = bitcast ptr %"R12" to ptr
  store float %".173", ptr %".174"
  ; LDG.E.SYS R15, [R2+0xc]
  %".177" = load i32, ptr %"R2"
  %"zext.14" = zext i32 %".177" to i64
  %".178" = load i32, ptr %"R3"
  %"zext.15" = zext i32 %".178" to i64
  %"shl.6" = shl i64 %"zext.15", 32
  %"or.6" = or i64 %"shl.6", %"zext.14"
  %".179" = inttoptr i64 %"or.6" to ptr
  %".180" = ptrtoint ptr %".179" to i64
  %".181" = add i64 %".180", 12
  %"for_LDG.6" = inttoptr i64 %".181" to ptr
  %".182" = load float, ptr %"for_LDG.6"
  %".183" = bitcast ptr %"R15" to ptr
  store float %".182", ptr %".183"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".186" = load i32, ptr %"UR4"
  %"zext.16" = zext i32 %".186" to i64
  %".187" = load i32, ptr %"UR5"
  %"zext.17" = zext i32 %".187" to i64
  %"shl.7" = shl i64 %"zext.17", 32
  %"or.7" = or i64 %"shl.7", %"zext.16"
  %".188" = inttoptr i64 %"or.7" to ptr
  %".189" = ptrtoint ptr %".188" to i64
  %".190" = add i64 %".189", 12
  %"for_LDG.7" = inttoptr i64 %".190" to ptr
  %".191" = load float, ptr %"for_LDG.7"
  %".192" = bitcast ptr %"R14" to ptr
  store float %".191", ptr %".192"
  ; LDG.E.SYS R17, [R2+0x10]
  %".195" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".195" to i64
  %".196" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".196" to i64
  %"shl.8" = shl i64 %"zext.19", 32
  %"or.8" = or i64 %"shl.8", %"zext.18"
  %".197" = inttoptr i64 %"or.8" to ptr
  %".198" = ptrtoint ptr %".197" to i64
  %".199" = add i64 %".198", 16
  %"for_LDG.8" = inttoptr i64 %".199" to ptr
  %".200" = load float, ptr %"for_LDG.8"
  %".201" = bitcast ptr %"R17" to ptr
  store float %".200", ptr %".201"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".204" = load i32, ptr %"UR4"
  %"zext.20" = zext i32 %".204" to i64
  %".205" = load i32, ptr %"UR5"
  %"zext.21" = zext i32 %".205" to i64
  %"shl.9" = shl i64 %"zext.21", 32
  %"or.9" = or i64 %"shl.9", %"zext.20"
  %".206" = inttoptr i64 %"or.9" to ptr
  %".207" = ptrtoint ptr %".206" to i64
  %".208" = add i64 %".207", 16
  %"for_LDG.9" = inttoptr i64 %".208" to ptr
  %".209" = load float, ptr %"for_LDG.9"
  %".210" = bitcast ptr %"R16" to ptr
  store float %".209", ptr %".210"
  ; LDG.E.SYS R19, [R2+0x14]
  %".213" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".213" to i64
  %".214" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".214" to i64
  %"shl.10" = shl i64 %"zext.23", 32
  %"or.10" = or i64 %"shl.10", %"zext.22"
  %".215" = inttoptr i64 %"or.10" to ptr
  %".216" = ptrtoint ptr %".215" to i64
  %".217" = add i64 %".216", 20
  %"for_LDG.10" = inttoptr i64 %".217" to ptr
  %".218" = load float, ptr %"for_LDG.10"
  %".219" = bitcast ptr %"R19" to ptr
  store float %".218", ptr %".219"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".222" = load i32, ptr %"UR4"
  %"zext.24" = zext i32 %".222" to i64
  %".223" = load i32, ptr %"UR5"
  %"zext.25" = zext i32 %".223" to i64
  %"shl.11" = shl i64 %"zext.25", 32
  %"or.11" = or i64 %"shl.11", %"zext.24"
  %".224" = inttoptr i64 %"or.11" to ptr
  %".225" = ptrtoint ptr %".224" to i64
  %".226" = add i64 %".225", 20
  %"for_LDG.11" = inttoptr i64 %".226" to ptr
  %".227" = load float, ptr %"for_LDG.11"
  %".228" = bitcast ptr %"R18" to ptr
  store float %".227", ptr %".228"
  ; LDG.E.SYS R21, [R2+0x18]
  %".231" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".231" to i64
  %".232" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".232" to i64
  %"shl.12" = shl i64 %"zext.27", 32
  %"or.12" = or i64 %"shl.12", %"zext.26"
  %".233" = inttoptr i64 %"or.12" to ptr
  %".234" = ptrtoint ptr %".233" to i64
  %".235" = add i64 %".234", 24
  %"for_LDG.12" = inttoptr i64 %".235" to ptr
  %".236" = load float, ptr %"for_LDG.12"
  %".237" = bitcast ptr %"R21" to ptr
  store float %".236", ptr %".237"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".240" = load i32, ptr %"UR4"
  %"zext.28" = zext i32 %".240" to i64
  %".241" = load i32, ptr %"UR5"
  %"zext.29" = zext i32 %".241" to i64
  %"shl.13" = shl i64 %"zext.29", 32
  %"or.13" = or i64 %"shl.13", %"zext.28"
  %".242" = inttoptr i64 %"or.13" to ptr
  %".243" = ptrtoint ptr %".242" to i64
  %".244" = add i64 %".243", 24
  %"for_LDG.13" = inttoptr i64 %".244" to ptr
  %".245" = load float, ptr %"for_LDG.13"
  %".246" = bitcast ptr %"R20" to ptr
  store float %".245", ptr %".246"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".249" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".249" to i64
  %".250" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".250" to i64
  %"shl.14" = shl i64 %"zext.31", 32
  %"or.14" = or i64 %"shl.14", %"zext.30"
  %".251" = inttoptr i64 %"or.14" to ptr
  %".252" = ptrtoint ptr %".251" to i64
  %".253" = add i64 %".252", 28
  %"for_LDG.14" = inttoptr i64 %".253" to ptr
  %".254" = load float, ptr %"for_LDG.14"
  %".255" = bitcast ptr %"R23" to ptr
  store float %".254", ptr %".255"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".258" = load i32, ptr %"UR4"
  %"zext.32" = zext i32 %".258" to i64
  %".259" = load i32, ptr %"UR5"
  %"zext.33" = zext i32 %".259" to i64
  %"shl.15" = shl i64 %"zext.33", 32
  %"or.15" = or i64 %"shl.15", %"zext.32"
  %".260" = inttoptr i64 %"or.15" to ptr
  %".261" = ptrtoint ptr %".260" to i64
  %".262" = add i64 %".261", 28
  %"for_LDG.15" = inttoptr i64 %".262" to ptr
  %".263" = load float, ptr %"for_LDG.15"
  %".264" = bitcast ptr %"R22" to ptr
  store float %".263", ptr %".264"
  ; LDG.E.SYS R25, [R2+0x20]
  %".267" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".267" to i64
  %".268" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".268" to i64
  %"shl.16" = shl i64 %"zext.35", 32
  %"or.16" = or i64 %"shl.16", %"zext.34"
  %".269" = inttoptr i64 %"or.16" to ptr
  %".270" = ptrtoint ptr %".269" to i64
  %".271" = add i64 %".270", 32
  %"for_LDG.16" = inttoptr i64 %".271" to ptr
  %".272" = load float, ptr %"for_LDG.16"
  %".273" = bitcast ptr %"R25" to ptr
  store float %".272", ptr %".273"
  ; LDG.E.SYS R24, [UR4+0x20]
  %".276" = load i32, ptr %"UR4"
  %"zext.36" = zext i32 %".276" to i64
  %".277" = load i32, ptr %"UR5"
  %"zext.37" = zext i32 %".277" to i64
  %"shl.17" = shl i64 %"zext.37", 32
  %"or.17" = or i64 %"shl.17", %"zext.36"
  %".278" = inttoptr i64 %"or.17" to ptr
  %".279" = ptrtoint ptr %".278" to i64
  %".280" = add i64 %".279", 32
  %"for_LDG.17" = inttoptr i64 %".280" to ptr
  %".281" = load float, ptr %"for_LDG.17"
  %".282" = bitcast ptr %"R24" to ptr
  store float %".281", ptr %".282"
  ; LDG.E.SYS R27, [R2+0x24]
  %".285" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".285" to i64
  %".286" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".286" to i64
  %"shl.18" = shl i64 %"zext.39", 32
  %"or.18" = or i64 %"shl.18", %"zext.38"
  %".287" = inttoptr i64 %"or.18" to ptr
  %".288" = ptrtoint ptr %".287" to i64
  %".289" = add i64 %".288", 36
  %"for_LDG.18" = inttoptr i64 %".289" to ptr
  %".290" = load float, ptr %"for_LDG.18"
  %".291" = bitcast ptr %"R27" to ptr
  store float %".290", ptr %".291"
  ; LDG.E.SYS R26, [UR4+0x24]
  %".294" = load i32, ptr %"UR4"
  %"zext.40" = zext i32 %".294" to i64
  %".295" = load i32, ptr %"UR5"
  %"zext.41" = zext i32 %".295" to i64
  %"shl.19" = shl i64 %"zext.41", 32
  %"or.19" = or i64 %"shl.19", %"zext.40"
  %".296" = inttoptr i64 %"or.19" to ptr
  %".297" = ptrtoint ptr %".296" to i64
  %".298" = add i64 %".297", 36
  %"for_LDG.19" = inttoptr i64 %".298" to ptr
  %".299" = load float, ptr %"for_LDG.19"
  %".300" = bitcast ptr %"R26" to ptr
  store float %".299", ptr %".300"
  ; LDG.E.SYS R29, [R2+0x28]
  %".303" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".303" to i64
  %".304" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".304" to i64
  %"shl.20" = shl i64 %"zext.43", 32
  %"or.20" = or i64 %"shl.20", %"zext.42"
  %".305" = inttoptr i64 %"or.20" to ptr
  %".306" = ptrtoint ptr %".305" to i64
  %".307" = add i64 %".306", 40
  %"for_LDG.20" = inttoptr i64 %".307" to ptr
  %".308" = load float, ptr %"for_LDG.20"
  %".309" = bitcast ptr %"R29" to ptr
  store float %".308", ptr %".309"
  ; LDG.E.SYS R28, [UR4+0x28]
  %".312" = load i32, ptr %"UR4"
  %"zext.44" = zext i32 %".312" to i64
  %".313" = load i32, ptr %"UR5"
  %"zext.45" = zext i32 %".313" to i64
  %"shl.21" = shl i64 %"zext.45", 32
  %"or.21" = or i64 %"shl.21", %"zext.44"
  %".314" = inttoptr i64 %"or.21" to ptr
  %".315" = ptrtoint ptr %".314" to i64
  %".316" = add i64 %".315", 40
  %"for_LDG.21" = inttoptr i64 %".316" to ptr
  %".317" = load float, ptr %"for_LDG.21"
  %".318" = bitcast ptr %"R28" to ptr
  store float %".317", ptr %".318"
  ; LDG.E.SYS R31, [R2+0x2c]
  %".321" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".321" to i64
  %".322" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".322" to i64
  %"shl.22" = shl i64 %"zext.47", 32
  %"or.22" = or i64 %"shl.22", %"zext.46"
  %".323" = inttoptr i64 %"or.22" to ptr
  %".324" = ptrtoint ptr %".323" to i64
  %".325" = add i64 %".324", 44
  %"for_LDG.22" = inttoptr i64 %".325" to ptr
  %".326" = load float, ptr %"for_LDG.22"
  %".327" = bitcast ptr %"R31" to ptr
  store float %".326", ptr %".327"
  ; LDG.E.SYS R30, [UR4+0x2c]
  %".330" = load i32, ptr %"UR4"
  %"zext.48" = zext i32 %".330" to i64
  %".331" = load i32, ptr %"UR5"
  %"zext.49" = zext i32 %".331" to i64
  %"shl.23" = shl i64 %"zext.49", 32
  %"or.23" = or i64 %"shl.23", %"zext.48"
  %".332" = inttoptr i64 %"or.23" to ptr
  %".333" = ptrtoint ptr %".332" to i64
  %".334" = add i64 %".333", 44
  %"for_LDG.23" = inttoptr i64 %".334" to ptr
  %".335" = load float, ptr %"for_LDG.23"
  %".336" = bitcast ptr %"R30" to ptr
  store float %".335", ptr %".336"
  ; LDG.E.SYS R33, [R2+0x30]
  %".339" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".339" to i64
  %".340" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".340" to i64
  %"shl.24" = shl i64 %"zext.51", 32
  %"or.24" = or i64 %"shl.24", %"zext.50"
  %".341" = inttoptr i64 %"or.24" to ptr
  %".342" = ptrtoint ptr %".341" to i64
  %".343" = add i64 %".342", 48
  %"for_LDG.24" = inttoptr i64 %".343" to ptr
  %".344" = load float, ptr %"for_LDG.24"
  %".345" = bitcast ptr %"R33" to ptr
  store float %".344", ptr %".345"
  ; LDG.E.SYS R32, [UR4+0x30]
  %".348" = load i32, ptr %"UR4"
  %"zext.52" = zext i32 %".348" to i64
  %".349" = load i32, ptr %"UR5"
  %"zext.53" = zext i32 %".349" to i64
  %"shl.25" = shl i64 %"zext.53", 32
  %"or.25" = or i64 %"shl.25", %"zext.52"
  %".350" = inttoptr i64 %"or.25" to ptr
  %".351" = ptrtoint ptr %".350" to i64
  %".352" = add i64 %".351", 48
  %"for_LDG.25" = inttoptr i64 %".352" to ptr
  %".353" = load float, ptr %"for_LDG.25"
  %".354" = bitcast ptr %"R32" to ptr
  store float %".353", ptr %".354"
  ; LDG.E.SYS R35, [R2+0x34]
  %".357" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".357" to i64
  %".358" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".358" to i64
  %"shl.26" = shl i64 %"zext.55", 32
  %"or.26" = or i64 %"shl.26", %"zext.54"
  %".359" = inttoptr i64 %"or.26" to ptr
  %".360" = ptrtoint ptr %".359" to i64
  %".361" = add i64 %".360", 52
  %"for_LDG.26" = inttoptr i64 %".361" to ptr
  %".362" = load float, ptr %"for_LDG.26"
  %".363" = bitcast ptr %"R35" to ptr
  store float %".362", ptr %".363"
  ; LDG.E.SYS R34, [UR4+0x34]
  %".366" = load i32, ptr %"UR4"
  %"zext.56" = zext i32 %".366" to i64
  %".367" = load i32, ptr %"UR5"
  %"zext.57" = zext i32 %".367" to i64
  %"shl.27" = shl i64 %"zext.57", 32
  %"or.27" = or i64 %"shl.27", %"zext.56"
  %".368" = inttoptr i64 %"or.27" to ptr
  %".369" = ptrtoint ptr %".368" to i64
  %".370" = add i64 %".369", 52
  %"for_LDG.27" = inttoptr i64 %".370" to ptr
  %".371" = load float, ptr %"for_LDG.27"
  %".372" = bitcast ptr %"R34" to ptr
  store float %".371", ptr %".372"
  ; LDG.E.SYS R37, [R2+0x38]
  %".375" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".375" to i64
  %".376" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".376" to i64
  %"shl.28" = shl i64 %"zext.59", 32
  %"or.28" = or i64 %"shl.28", %"zext.58"
  %".377" = inttoptr i64 %"or.28" to ptr
  %".378" = ptrtoint ptr %".377" to i64
  %".379" = add i64 %".378", 56
  %"for_LDG.28" = inttoptr i64 %".379" to ptr
  %".380" = load float, ptr %"for_LDG.28"
  %".381" = bitcast ptr %"R37" to ptr
  store float %".380", ptr %".381"
  ; LDG.E.SYS R36, [UR4+0x38]
  %".384" = load i32, ptr %"UR4"
  %"zext.60" = zext i32 %".384" to i64
  %".385" = load i32, ptr %"UR5"
  %"zext.61" = zext i32 %".385" to i64
  %"shl.29" = shl i64 %"zext.61", 32
  %"or.29" = or i64 %"shl.29", %"zext.60"
  %".386" = inttoptr i64 %"or.29" to ptr
  %".387" = ptrtoint ptr %".386" to i64
  %".388" = add i64 %".387", 56
  %"for_LDG.29" = inttoptr i64 %".388" to ptr
  %".389" = load float, ptr %"for_LDG.29"
  %".390" = bitcast ptr %"R36" to ptr
  store float %".389", ptr %".390"
  ; LDG.E.SYS R39, [R2+0x3c]
  %".393" = load i32, ptr %"R2"
  %"zext.62" = zext i32 %".393" to i64
  %".394" = load i32, ptr %"R3"
  %"zext.63" = zext i32 %".394" to i64
  %"shl.30" = shl i64 %"zext.63", 32
  %"or.30" = or i64 %"shl.30", %"zext.62"
  %".395" = inttoptr i64 %"or.30" to ptr
  %".396" = ptrtoint ptr %".395" to i64
  %".397" = add i64 %".396", 60
  %"for_LDG.30" = inttoptr i64 %".397" to ptr
  %".398" = load float, ptr %"for_LDG.30"
  %".399" = bitcast ptr %"R39" to ptr
  store float %".398", ptr %".399"
  ; LDG.E.SYS R38, [UR4+0x3c]
  %".402" = load i32, ptr %"UR4"
  %"zext.64" = zext i32 %".402" to i64
  %".403" = load i32, ptr %"UR5"
  %"zext.65" = zext i32 %".403" to i64
  %"shl.31" = shl i64 %"zext.65", 32
  %"or.31" = or i64 %"shl.31", %"zext.64"
  %".404" = inttoptr i64 %"or.31" to ptr
  %".405" = ptrtoint ptr %".404" to i64
  %".406" = add i64 %".405", 60
  %"for_LDG.31" = inttoptr i64 %".406" to ptr
  %".407" = load float, ptr %"for_LDG.31"
  %".408" = bitcast ptr %"R38" to ptr
  store float %".407", ptr %".408"
  ; IADD3 R6, R6, -0x10, RZ
  %".411" = load i32, ptr %"R6"
  %"add.9" = add i32 %".411", -16
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".414" = load i32, ptr %"UR4"
  %"add.11" = add i32 %".414", 64
  %"add.12" = add i32 %"add.11", 0
  store i32 %"add.12", ptr %"UR4"
  %"carry" = icmp ult i32 %"add.12", %".414"
  store i1 %"carry", ptr %"UP0"
  ; IADD3 R5, R5, 0x10, RZ
  %".418" = load i32, ptr %"R5"
  %"add.13" = add i32 %".418", 16
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R5"
  ; ISETP.GT.AND P1, PT, R6, 0xc, PT
  %".421" = load i32, ptr %"R6"
  %".422" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".421", 12
  %".423" = and i1 %"cmp.5", %".422"
  store i1 %".423", ptr %"P1"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".426" = load i32, ptr %"UR5"
  %".427" = load i1, ptr %"UP0"
  %".428" = sub i1 0, %".427"
  %".429" = zext i1 %".428" to i32
  %"add.15" = add i32 0, %".426"
  %"add.16" = add i32 %"add.15", 0
  %"add.17" = add i32 %"add.16", %".429"
  store i32 %"add.17", ptr %"UR5"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".432" = load i32, ptr %"R2"
  %"add.18" = add i32 %".432", 64
  %"add.19" = add i32 %"add.18", 0
  store i32 %"add.19", ptr %"R2"
  %"carry.1" = icmp ult i32 %"add.19", %".432"
  store i1 %"carry.1", ptr %"P2"
  ; IMAD.X R3, RZ, RZ, R3, P2
  %".436" = load i32, ptr %"R3"
  %"mul.5" = mul i32 0, 0
  %"add.20" = add i32 %"mul.5", %".436"
  store i32 %"add.20", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".439" = load float, ptr %"R8"
  %".440" = load float, ptr %"R9"
  %".441" = load float, ptr %"R7"
  %"fmul" = fmul float %".439", %".440"
  %"fadd" = fadd float %"fmul", %".441"
  %".442" = bitcast ptr %"R8" to ptr
  store float %"fadd", ptr %".442"
  ; FFMA R8, R11, R10, R8
  %".445" = load float, ptr %"R11"
  %".446" = load float, ptr %"R10"
  %".447" = load float, ptr %"R8"
  %"fmul.1" = fmul float %".445", %".446"
  %"fadd.1" = fadd float %"fmul.1", %".447"
  %".448" = bitcast ptr %"R8" to ptr
  store float %"fadd.1", ptr %".448"
  ; FFMA R8, R13, R12, R8
  %".451" = load float, ptr %"R13"
  %".452" = load float, ptr %"R12"
  %".453" = load float, ptr %"R8"
  %"fmul.2" = fmul float %".451", %".452"
  %"fadd.2" = fadd float %"fmul.2", %".453"
  %".454" = bitcast ptr %"R8" to ptr
  store float %"fadd.2", ptr %".454"
  ; FFMA R8, R15, R14, R8
  %".457" = load float, ptr %"R15"
  %".458" = load float, ptr %"R14"
  %".459" = load float, ptr %"R8"
  %"fmul.3" = fmul float %".457", %".458"
  %"fadd.3" = fadd float %"fmul.3", %".459"
  %".460" = bitcast ptr %"R8" to ptr
  store float %"fadd.3", ptr %".460"
  ; FFMA R8, R17, R16, R8
  %".463" = load float, ptr %"R17"
  %".464" = load float, ptr %"R16"
  %".465" = load float, ptr %"R8"
  %"fmul.4" = fmul float %".463", %".464"
  %"fadd.4" = fadd float %"fmul.4", %".465"
  %".466" = bitcast ptr %"R8" to ptr
  store float %"fadd.4", ptr %".466"
  ; FFMA R8, R19, R18, R8
  %".469" = load float, ptr %"R19"
  %".470" = load float, ptr %"R18"
  %".471" = load float, ptr %"R8"
  %"fmul.5" = fmul float %".469", %".470"
  %"fadd.5" = fadd float %"fmul.5", %".471"
  %".472" = bitcast ptr %"R8" to ptr
  store float %"fadd.5", ptr %".472"
  ; FFMA R8, R21, R20, R8
  %".475" = load float, ptr %"R21"
  %".476" = load float, ptr %"R20"
  %".477" = load float, ptr %"R8"
  %"fmul.6" = fmul float %".475", %".476"
  %"fadd.6" = fadd float %"fmul.6", %".477"
  %".478" = bitcast ptr %"R8" to ptr
  store float %"fadd.6", ptr %".478"
  ; FFMA R8, R23, R22, R8
  %".481" = load float, ptr %"R23"
  %".482" = load float, ptr %"R22"
  %".483" = load float, ptr %"R8"
  %"fmul.7" = fmul float %".481", %".482"
  %"fadd.7" = fadd float %"fmul.7", %".483"
  %".484" = bitcast ptr %"R8" to ptr
  store float %"fadd.7", ptr %".484"
  ; FFMA R8, R25, R24, R8
  %".487" = load float, ptr %"R25"
  %".488" = load float, ptr %"R24"
  %".489" = load float, ptr %"R8"
  %"fmul.8" = fmul float %".487", %".488"
  %"fadd.8" = fadd float %"fmul.8", %".489"
  %".490" = bitcast ptr %"R8" to ptr
  store float %"fadd.8", ptr %".490"
  ; FFMA R8, R27, R26, R8
  %".493" = load float, ptr %"R27"
  %".494" = load float, ptr %"R26"
  %".495" = load float, ptr %"R8"
  %"fmul.9" = fmul float %".493", %".494"
  %"fadd.9" = fadd float %"fmul.9", %".495"
  %".496" = bitcast ptr %"R8" to ptr
  store float %"fadd.9", ptr %".496"
  ; FFMA R8, R29, R28, R8
  %".499" = load float, ptr %"R29"
  %".500" = load float, ptr %"R28"
  %".501" = load float, ptr %"R8"
  %"fmul.10" = fmul float %".499", %".500"
  %"fadd.10" = fadd float %"fmul.10", %".501"
  %".502" = bitcast ptr %"R8" to ptr
  store float %"fadd.10", ptr %".502"
  ; FFMA R8, R31, R30, R8
  %".505" = load float, ptr %"R31"
  %".506" = load float, ptr %"R30"
  %".507" = load float, ptr %"R8"
  %"fmul.11" = fmul float %".505", %".506"
  %"fadd.11" = fadd float %"fmul.11", %".507"
  %".508" = bitcast ptr %"R8" to ptr
  store float %"fadd.11", ptr %".508"
  ; FFMA R8, R33, R32, R8
  %".511" = load float, ptr %"R33"
  %".512" = load float, ptr %"R32"
  %".513" = load float, ptr %"R8"
  %"fmul.12" = fmul float %".511", %".512"
  %"fadd.12" = fadd float %"fmul.12", %".513"
  %".514" = bitcast ptr %"R8" to ptr
  store float %"fadd.12", ptr %".514"
  ; FFMA R8, R35, R34, R8
  %".517" = load float, ptr %"R35"
  %".518" = load float, ptr %"R34"
  %".519" = load float, ptr %"R8"
  %"fmul.13" = fmul float %".517", %".518"
  %"fadd.13" = fadd float %"fmul.13", %".519"
  %".520" = bitcast ptr %"R8" to ptr
  store float %"fadd.13", ptr %".520"
  ; FFMA R8, R37, R36, R8
  %".523" = load float, ptr %"R37"
  %".524" = load float, ptr %"R36"
  %".525" = load float, ptr %"R8"
  %"fmul.14" = fmul float %".523", %".524"
  %"fadd.14" = fadd float %"fmul.14", %".525"
  %".526" = bitcast ptr %"R8" to ptr
  store float %"fadd.14", ptr %".526"
  ; FFMA R7, R39, R38, R8
  %".529" = load float, ptr %"R39"
  %".530" = load float, ptr %"R38"
  %".531" = load float, ptr %"R8"
  %"fmul.15" = fmul float %".529", %".530"
  %"fadd.15" = fadd float %"fmul.15", %".531"
  %".532" = bitcast ptr %"R7" to ptr
  store float %"fadd.15", ptr %".532"
  ; @P1 BRA `(.L_x_4)
  %".535" = load i1, ptr %"P1"
  %".536" = icmp ne i1 %".535", 1
  br i1 %".536", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R6, 0x4, PT
  %".539" = load i32, ptr %"R6"
  %".540" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".539", 4
  %".541" = and i1 %"cmp.6", %".540"
  store i1 %".541", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".544" = load i1, ptr %"P1"
  %".545" = icmp eq i1 %".544", 1
  br i1 %".545", label %".L_x_5", label %".L_x_3_split_0x0570"
.L_x_3_split_0x0570:
  ; LDG.E.SYS R8, [R2]
  %".548" = load i32, ptr %"R2"
  %"zext.66" = zext i32 %".548" to i64
  %".549" = load i32, ptr %"R3"
  %"zext.67" = zext i32 %".549" to i64
  %"shl.32" = shl i64 %"zext.67", 32
  %"or.32" = or i64 %"shl.32", %"zext.66"
  %".550" = inttoptr i64 %"or.32" to ptr
  %".551" = ptrtoint ptr %".550" to i64
  %".552" = add i64 %".551", 0
  %"for_LDG.32" = inttoptr i64 %".552" to ptr
  %".553" = load float, ptr %"for_LDG.32"
  %".554" = bitcast ptr %"R8" to ptr
  store float %".553", ptr %".554"
  ; LDG.E.SYS R9, [UR4]
  %".557" = load i32, ptr %"UR4"
  %"zext.68" = zext i32 %".557" to i64
  %".558" = load i32, ptr %"UR5"
  %"zext.69" = zext i32 %".558" to i64
  %"shl.33" = shl i64 %"zext.69", 32
  %"or.33" = or i64 %"shl.33", %"zext.68"
  %".559" = inttoptr i64 %"or.33" to ptr
  %".560" = ptrtoint ptr %".559" to i64
  %".561" = add i64 %".560", 0
  %"for_LDG.33" = inttoptr i64 %".561" to ptr
  %".562" = load float, ptr %"for_LDG.33"
  %".563" = bitcast ptr %"R9" to ptr
  store float %".562", ptr %".563"
  ; LDG.E.SYS R11, [R2+0x4]
  %".566" = load i32, ptr %"R2"
  %"zext.70" = zext i32 %".566" to i64
  %".567" = load i32, ptr %"R3"
  %"zext.71" = zext i32 %".567" to i64
  %"shl.34" = shl i64 %"zext.71", 32
  %"or.34" = or i64 %"shl.34", %"zext.70"
  %".568" = inttoptr i64 %"or.34" to ptr
  %".569" = ptrtoint ptr %".568" to i64
  %".570" = add i64 %".569", 4
  %"for_LDG.34" = inttoptr i64 %".570" to ptr
  %".571" = load float, ptr %"for_LDG.34"
  %".572" = bitcast ptr %"R11" to ptr
  store float %".571", ptr %".572"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".575" = load i32, ptr %"UR4"
  %"zext.72" = zext i32 %".575" to i64
  %".576" = load i32, ptr %"UR5"
  %"zext.73" = zext i32 %".576" to i64
  %"shl.35" = shl i64 %"zext.73", 32
  %"or.35" = or i64 %"shl.35", %"zext.72"
  %".577" = inttoptr i64 %"or.35" to ptr
  %".578" = ptrtoint ptr %".577" to i64
  %".579" = add i64 %".578", 4
  %"for_LDG.35" = inttoptr i64 %".579" to ptr
  %".580" = load float, ptr %"for_LDG.35"
  %".581" = bitcast ptr %"R10" to ptr
  store float %".580", ptr %".581"
  ; LDG.E.SYS R13, [R2+0x8]
  %".584" = load i32, ptr %"R2"
  %"zext.74" = zext i32 %".584" to i64
  %".585" = load i32, ptr %"R3"
  %"zext.75" = zext i32 %".585" to i64
  %"shl.36" = shl i64 %"zext.75", 32
  %"or.36" = or i64 %"shl.36", %"zext.74"
  %".586" = inttoptr i64 %"or.36" to ptr
  %".587" = ptrtoint ptr %".586" to i64
  %".588" = add i64 %".587", 8
  %"for_LDG.36" = inttoptr i64 %".588" to ptr
  %".589" = load float, ptr %"for_LDG.36"
  %".590" = bitcast ptr %"R13" to ptr
  store float %".589", ptr %".590"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".593" = load i32, ptr %"UR4"
  %"zext.76" = zext i32 %".593" to i64
  %".594" = load i32, ptr %"UR5"
  %"zext.77" = zext i32 %".594" to i64
  %"shl.37" = shl i64 %"zext.77", 32
  %"or.37" = or i64 %"shl.37", %"zext.76"
  %".595" = inttoptr i64 %"or.37" to ptr
  %".596" = ptrtoint ptr %".595" to i64
  %".597" = add i64 %".596", 8
  %"for_LDG.37" = inttoptr i64 %".597" to ptr
  %".598" = load float, ptr %"for_LDG.37"
  %".599" = bitcast ptr %"R12" to ptr
  store float %".598", ptr %".599"
  ; LDG.E.SYS R15, [R2+0xc]
  %".602" = load i32, ptr %"R2"
  %"zext.78" = zext i32 %".602" to i64
  %".603" = load i32, ptr %"R3"
  %"zext.79" = zext i32 %".603" to i64
  %"shl.38" = shl i64 %"zext.79", 32
  %"or.38" = or i64 %"shl.38", %"zext.78"
  %".604" = inttoptr i64 %"or.38" to ptr
  %".605" = ptrtoint ptr %".604" to i64
  %".606" = add i64 %".605", 12
  %"for_LDG.38" = inttoptr i64 %".606" to ptr
  %".607" = load float, ptr %"for_LDG.38"
  %".608" = bitcast ptr %"R15" to ptr
  store float %".607", ptr %".608"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".611" = load i32, ptr %"UR4"
  %"zext.80" = zext i32 %".611" to i64
  %".612" = load i32, ptr %"UR5"
  %"zext.81" = zext i32 %".612" to i64
  %"shl.39" = shl i64 %"zext.81", 32
  %"or.39" = or i64 %"shl.39", %"zext.80"
  %".613" = inttoptr i64 %"or.39" to ptr
  %".614" = ptrtoint ptr %".613" to i64
  %".615" = add i64 %".614", 12
  %"for_LDG.39" = inttoptr i64 %".615" to ptr
  %".616" = load float, ptr %"for_LDG.39"
  %".617" = bitcast ptr %"R14" to ptr
  store float %".616", ptr %".617"
  ; LDG.E.SYS R17, [R2+0x10]
  %".620" = load i32, ptr %"R2"
  %"zext.82" = zext i32 %".620" to i64
  %".621" = load i32, ptr %"R3"
  %"zext.83" = zext i32 %".621" to i64
  %"shl.40" = shl i64 %"zext.83", 32
  %"or.40" = or i64 %"shl.40", %"zext.82"
  %".622" = inttoptr i64 %"or.40" to ptr
  %".623" = ptrtoint ptr %".622" to i64
  %".624" = add i64 %".623", 16
  %"for_LDG.40" = inttoptr i64 %".624" to ptr
  %".625" = load float, ptr %"for_LDG.40"
  %".626" = bitcast ptr %"R17" to ptr
  store float %".625", ptr %".626"
  ; LDG.E.SYS R16, [UR4+0x10]
  %".629" = load i32, ptr %"UR4"
  %"zext.84" = zext i32 %".629" to i64
  %".630" = load i32, ptr %"UR5"
  %"zext.85" = zext i32 %".630" to i64
  %"shl.41" = shl i64 %"zext.85", 32
  %"or.41" = or i64 %"shl.41", %"zext.84"
  %".631" = inttoptr i64 %"or.41" to ptr
  %".632" = ptrtoint ptr %".631" to i64
  %".633" = add i64 %".632", 16
  %"for_LDG.41" = inttoptr i64 %".633" to ptr
  %".634" = load float, ptr %"for_LDG.41"
  %".635" = bitcast ptr %"R16" to ptr
  store float %".634", ptr %".635"
  ; LDG.E.SYS R19, [R2+0x14]
  %".638" = load i32, ptr %"R2"
  %"zext.86" = zext i32 %".638" to i64
  %".639" = load i32, ptr %"R3"
  %"zext.87" = zext i32 %".639" to i64
  %"shl.42" = shl i64 %"zext.87", 32
  %"or.42" = or i64 %"shl.42", %"zext.86"
  %".640" = inttoptr i64 %"or.42" to ptr
  %".641" = ptrtoint ptr %".640" to i64
  %".642" = add i64 %".641", 20
  %"for_LDG.42" = inttoptr i64 %".642" to ptr
  %".643" = load float, ptr %"for_LDG.42"
  %".644" = bitcast ptr %"R19" to ptr
  store float %".643", ptr %".644"
  ; LDG.E.SYS R18, [UR4+0x14]
  %".647" = load i32, ptr %"UR4"
  %"zext.88" = zext i32 %".647" to i64
  %".648" = load i32, ptr %"UR5"
  %"zext.89" = zext i32 %".648" to i64
  %"shl.43" = shl i64 %"zext.89", 32
  %"or.43" = or i64 %"shl.43", %"zext.88"
  %".649" = inttoptr i64 %"or.43" to ptr
  %".650" = ptrtoint ptr %".649" to i64
  %".651" = add i64 %".650", 20
  %"for_LDG.43" = inttoptr i64 %".651" to ptr
  %".652" = load float, ptr %"for_LDG.43"
  %".653" = bitcast ptr %"R18" to ptr
  store float %".652", ptr %".653"
  ; LDG.E.SYS R21, [R2+0x18]
  %".656" = load i32, ptr %"R2"
  %"zext.90" = zext i32 %".656" to i64
  %".657" = load i32, ptr %"R3"
  %"zext.91" = zext i32 %".657" to i64
  %"shl.44" = shl i64 %"zext.91", 32
  %"or.44" = or i64 %"shl.44", %"zext.90"
  %".658" = inttoptr i64 %"or.44" to ptr
  %".659" = ptrtoint ptr %".658" to i64
  %".660" = add i64 %".659", 24
  %"for_LDG.44" = inttoptr i64 %".660" to ptr
  %".661" = load float, ptr %"for_LDG.44"
  %".662" = bitcast ptr %"R21" to ptr
  store float %".661", ptr %".662"
  ; LDG.E.SYS R20, [UR4+0x18]
  %".665" = load i32, ptr %"UR4"
  %"zext.92" = zext i32 %".665" to i64
  %".666" = load i32, ptr %"UR5"
  %"zext.93" = zext i32 %".666" to i64
  %"shl.45" = shl i64 %"zext.93", 32
  %"or.45" = or i64 %"shl.45", %"zext.92"
  %".667" = inttoptr i64 %"or.45" to ptr
  %".668" = ptrtoint ptr %".667" to i64
  %".669" = add i64 %".668", 24
  %"for_LDG.45" = inttoptr i64 %".669" to ptr
  %".670" = load float, ptr %"for_LDG.45"
  %".671" = bitcast ptr %"R20" to ptr
  store float %".670", ptr %".671"
  ; LDG.E.SYS R23, [R2+0x1c]
  %".674" = load i32, ptr %"R2"
  %"zext.94" = zext i32 %".674" to i64
  %".675" = load i32, ptr %"R3"
  %"zext.95" = zext i32 %".675" to i64
  %"shl.46" = shl i64 %"zext.95", 32
  %"or.46" = or i64 %"shl.46", %"zext.94"
  %".676" = inttoptr i64 %"or.46" to ptr
  %".677" = ptrtoint ptr %".676" to i64
  %".678" = add i64 %".677", 28
  %"for_LDG.46" = inttoptr i64 %".678" to ptr
  %".679" = load float, ptr %"for_LDG.46"
  %".680" = bitcast ptr %"R23" to ptr
  store float %".679", ptr %".680"
  ; LDG.E.SYS R22, [UR4+0x1c]
  %".683" = load i32, ptr %"UR4"
  %"zext.96" = zext i32 %".683" to i64
  %".684" = load i32, ptr %"UR5"
  %"zext.97" = zext i32 %".684" to i64
  %"shl.47" = shl i64 %"zext.97", 32
  %"or.47" = or i64 %"shl.47", %"zext.96"
  %".685" = inttoptr i64 %"or.47" to ptr
  %".686" = ptrtoint ptr %".685" to i64
  %".687" = add i64 %".686", 28
  %"for_LDG.47" = inttoptr i64 %".687" to ptr
  %".688" = load float, ptr %"for_LDG.47"
  %".689" = bitcast ptr %"R22" to ptr
  store float %".688", ptr %".689"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".692" = load i32, ptr %"UR4"
  %"add.21" = add i32 %".692", 32
  %"add.22" = add i32 %"add.21", 0
  store i32 %"add.22", ptr %"UR4"
  %"carry.2" = icmp ult i32 %"add.22", %".692"
  store i1 %"carry.2", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".696" = xor i1 1, 1
  %".697" = and i1 %".696", 1
  %".698" = and i1 %".697", 1
  ; IADD3 R5, R5, 0x8, RZ
  %".700" = load i32, ptr %"R5"
  %"add.23" = add i32 %".700", 8
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R5"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".703" = load i32, ptr %"UR5"
  %".704" = load i1, ptr %"UP0"
  %".705" = sub i1 0, %".704"
  %".706" = zext i1 %".705" to i32
  %"add.25" = add i32 0, %".703"
  %"add.26" = add i32 %"add.25", 0
  %"add.27" = add i32 %"add.26", %".706"
  store i32 %"add.27", ptr %"UR5"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".709" = load i32, ptr %"R2"
  %"add.28" = add i32 %".709", 32
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R2"
  %"carry.3" = icmp ult i32 %"add.29", %".709"
  store i1 %"carry.3", ptr %"P1"
  ; IADD3 R6, R6, -0x8, RZ
  %".713" = load i32, ptr %"R6"
  %"add.30" = add i32 %".713", -8
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".716" = load i32, ptr %"R3"
  %".717" = load i1, ptr %"P1"
  %".718" = sub i1 0, %".717"
  %".719" = zext i1 %".718" to i32
  %"add.32" = add i32 0, %".716"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".719"
  store i32 %"add.34", ptr %"R3"
  ; FFMA R8, R8, R9, R7
  %".722" = load float, ptr %"R8"
  %".723" = load float, ptr %"R9"
  %".724" = load float, ptr %"R7"
  %"fmul.16" = fmul float %".722", %".723"
  %"fadd.16" = fadd float %"fmul.16", %".724"
  %".725" = bitcast ptr %"R8" to ptr
  store float %"fadd.16", ptr %".725"
  ; FFMA R8, R11, R10, R8
  %".728" = load float, ptr %"R11"
  %".729" = load float, ptr %"R10"
  %".730" = load float, ptr %"R8"
  %"fmul.17" = fmul float %".728", %".729"
  %"fadd.17" = fadd float %"fmul.17", %".730"
  %".731" = bitcast ptr %"R8" to ptr
  store float %"fadd.17", ptr %".731"
  ; FFMA R8, R13, R12, R8
  %".734" = load float, ptr %"R13"
  %".735" = load float, ptr %"R12"
  %".736" = load float, ptr %"R8"
  %"fmul.18" = fmul float %".734", %".735"
  %"fadd.18" = fadd float %"fmul.18", %".736"
  %".737" = bitcast ptr %"R8" to ptr
  store float %"fadd.18", ptr %".737"
  ; FFMA R8, R15, R14, R8
  %".740" = load float, ptr %"R15"
  %".741" = load float, ptr %"R14"
  %".742" = load float, ptr %"R8"
  %"fmul.19" = fmul float %".740", %".741"
  %"fadd.19" = fadd float %"fmul.19", %".742"
  %".743" = bitcast ptr %"R8" to ptr
  store float %"fadd.19", ptr %".743"
  ; FFMA R8, R17, R16, R8
  %".746" = load float, ptr %"R17"
  %".747" = load float, ptr %"R16"
  %".748" = load float, ptr %"R8"
  %"fmul.20" = fmul float %".746", %".747"
  %"fadd.20" = fadd float %"fmul.20", %".748"
  %".749" = bitcast ptr %"R8" to ptr
  store float %"fadd.20", ptr %".749"
  ; FFMA R8, R19, R18, R8
  %".752" = load float, ptr %"R19"
  %".753" = load float, ptr %"R18"
  %".754" = load float, ptr %"R8"
  %"fmul.21" = fmul float %".752", %".753"
  %"fadd.21" = fadd float %"fmul.21", %".754"
  %".755" = bitcast ptr %"R8" to ptr
  store float %"fadd.21", ptr %".755"
  ; FFMA R8, R21, R20, R8
  %".758" = load float, ptr %"R21"
  %".759" = load float, ptr %"R20"
  %".760" = load float, ptr %"R8"
  %"fmul.22" = fmul float %".758", %".759"
  %"fadd.22" = fadd float %"fmul.22", %".760"
  %".761" = bitcast ptr %"R8" to ptr
  store float %"fadd.22", ptr %".761"
  ; FFMA R7, R23, R22, R8
  %".764" = load float, ptr %"R23"
  %".765" = load float, ptr %"R22"
  %".766" = load float, ptr %"R8"
  %"fmul.23" = fmul float %".764", %".765"
  %"fadd.23" = fadd float %"fmul.23", %".766"
  %".767" = bitcast ptr %"R7" to ptr
  store float %"fadd.23", ptr %".767"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R6, RZ, P0
  %".771" = load i32, ptr %"R6"
  %".772" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".771", 0
  %".773" = or i1 %"cmp.7", %".772"
  store i1 %".773", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".776" = load i1, ptr %"P0"
  %".777" = icmp eq i1 %".776", 1
  br i1 %".777", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; LDG.E.SYS R8, [R2]
  %".780" = load i32, ptr %"R2"
  %"zext.98" = zext i32 %".780" to i64
  %".781" = load i32, ptr %"R3"
  %"zext.99" = zext i32 %".781" to i64
  %"shl.48" = shl i64 %"zext.99", 32
  %"or.48" = or i64 %"shl.48", %"zext.98"
  %".782" = inttoptr i64 %"or.48" to ptr
  %".783" = ptrtoint ptr %".782" to i64
  %".784" = add i64 %".783", 0
  %"for_LDG.48" = inttoptr i64 %".784" to ptr
  %".785" = load float, ptr %"for_LDG.48"
  %".786" = bitcast ptr %"R8" to ptr
  store float %".785", ptr %".786"
  ; LDG.E.SYS R9, [UR4]
  %".789" = load i32, ptr %"UR4"
  %"zext.100" = zext i32 %".789" to i64
  %".790" = load i32, ptr %"UR5"
  %"zext.101" = zext i32 %".790" to i64
  %"shl.49" = shl i64 %"zext.101", 32
  %"or.49" = or i64 %"shl.49", %"zext.100"
  %".791" = inttoptr i64 %"or.49" to ptr
  %".792" = ptrtoint ptr %".791" to i64
  %".793" = add i64 %".792", 0
  %"for_LDG.49" = inttoptr i64 %".793" to ptr
  %".794" = load float, ptr %"for_LDG.49"
  %".795" = bitcast ptr %"R9" to ptr
  store float %".794", ptr %".795"
  ; LDG.E.SYS R11, [R2+0x4]
  %".798" = load i32, ptr %"R2"
  %"zext.102" = zext i32 %".798" to i64
  %".799" = load i32, ptr %"R3"
  %"zext.103" = zext i32 %".799" to i64
  %"shl.50" = shl i64 %"zext.103", 32
  %"or.50" = or i64 %"shl.50", %"zext.102"
  %".800" = inttoptr i64 %"or.50" to ptr
  %".801" = ptrtoint ptr %".800" to i64
  %".802" = add i64 %".801", 4
  %"for_LDG.50" = inttoptr i64 %".802" to ptr
  %".803" = load float, ptr %"for_LDG.50"
  %".804" = bitcast ptr %"R11" to ptr
  store float %".803", ptr %".804"
  ; LDG.E.SYS R10, [UR4+0x4]
  %".807" = load i32, ptr %"UR4"
  %"zext.104" = zext i32 %".807" to i64
  %".808" = load i32, ptr %"UR5"
  %"zext.105" = zext i32 %".808" to i64
  %"shl.51" = shl i64 %"zext.105", 32
  %"or.51" = or i64 %"shl.51", %"zext.104"
  %".809" = inttoptr i64 %"or.51" to ptr
  %".810" = ptrtoint ptr %".809" to i64
  %".811" = add i64 %".810", 4
  %"for_LDG.51" = inttoptr i64 %".811" to ptr
  %".812" = load float, ptr %"for_LDG.51"
  %".813" = bitcast ptr %"R10" to ptr
  store float %".812", ptr %".813"
  ; LDG.E.SYS R13, [R2+0x8]
  %".816" = load i32, ptr %"R2"
  %"zext.106" = zext i32 %".816" to i64
  %".817" = load i32, ptr %"R3"
  %"zext.107" = zext i32 %".817" to i64
  %"shl.52" = shl i64 %"zext.107", 32
  %"or.52" = or i64 %"shl.52", %"zext.106"
  %".818" = inttoptr i64 %"or.52" to ptr
  %".819" = ptrtoint ptr %".818" to i64
  %".820" = add i64 %".819", 8
  %"for_LDG.52" = inttoptr i64 %".820" to ptr
  %".821" = load float, ptr %"for_LDG.52"
  %".822" = bitcast ptr %"R13" to ptr
  store float %".821", ptr %".822"
  ; LDG.E.SYS R12, [UR4+0x8]
  %".825" = load i32, ptr %"UR4"
  %"zext.108" = zext i32 %".825" to i64
  %".826" = load i32, ptr %"UR5"
  %"zext.109" = zext i32 %".826" to i64
  %"shl.53" = shl i64 %"zext.109", 32
  %"or.53" = or i64 %"shl.53", %"zext.108"
  %".827" = inttoptr i64 %"or.53" to ptr
  %".828" = ptrtoint ptr %".827" to i64
  %".829" = add i64 %".828", 8
  %"for_LDG.53" = inttoptr i64 %".829" to ptr
  %".830" = load float, ptr %"for_LDG.53"
  %".831" = bitcast ptr %"R12" to ptr
  store float %".830", ptr %".831"
  ; LDG.E.SYS R15, [R2+0xc]
  %".834" = load i32, ptr %"R2"
  %"zext.110" = zext i32 %".834" to i64
  %".835" = load i32, ptr %"R3"
  %"zext.111" = zext i32 %".835" to i64
  %"shl.54" = shl i64 %"zext.111", 32
  %"or.54" = or i64 %"shl.54", %"zext.110"
  %".836" = inttoptr i64 %"or.54" to ptr
  %".837" = ptrtoint ptr %".836" to i64
  %".838" = add i64 %".837", 12
  %"for_LDG.54" = inttoptr i64 %".838" to ptr
  %".839" = load float, ptr %"for_LDG.54"
  %".840" = bitcast ptr %"R15" to ptr
  store float %".839", ptr %".840"
  ; LDG.E.SYS R14, [UR4+0xc]
  %".843" = load i32, ptr %"UR4"
  %"zext.112" = zext i32 %".843" to i64
  %".844" = load i32, ptr %"UR5"
  %"zext.113" = zext i32 %".844" to i64
  %"shl.55" = shl i64 %"zext.113", 32
  %"or.55" = or i64 %"shl.55", %"zext.112"
  %".845" = inttoptr i64 %"or.55" to ptr
  %".846" = ptrtoint ptr %".845" to i64
  %".847" = add i64 %".846", 12
  %"for_LDG.55" = inttoptr i64 %".847" to ptr
  %".848" = load float, ptr %"for_LDG.55"
  %".849" = bitcast ptr %"R14" to ptr
  store float %".848", ptr %".849"
  ; IADD3 R6, R6, -0x4, RZ
  %".852" = load i32, ptr %"R6"
  %"add.35" = add i32 %".852", -4
  %"add.36" = add i32 %"add.35", 0
  store i32 %"add.36", ptr %"R6"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".855" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".855", 16
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  %"carry.4" = icmp ult i32 %"add.38", %".855"
  store i1 %"carry.4", ptr %"UP0"
  ; IADD3 R5, R5, 0x4, RZ
  %".859" = load i32, ptr %"R5"
  %"add.39" = add i32 %".859", 4
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R5"
  ; ISETP.NE.AND P0, PT, R6, RZ, PT
  %".862" = load i32, ptr %"R6"
  %".863" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".862", 0
  %".864" = and i1 %"cmp.8", %".863"
  store i1 %".864", ptr %"P0"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".867" = load i32, ptr %"UR5"
  %".868" = load i1, ptr %"UP0"
  %".869" = sub i1 0, %".868"
  %".870" = zext i1 %".869" to i32
  %"add.41" = add i32 0, %".867"
  %"add.42" = add i32 %"add.41", 0
  %"add.43" = add i32 %"add.42", %".870"
  store i32 %"add.43", ptr %"UR5"
  ; FFMA R8, R8, R9, R7
  %".873" = load float, ptr %"R8"
  %".874" = load float, ptr %"R9"
  %".875" = load float, ptr %"R7"
  %"fmul.24" = fmul float %".873", %".874"
  %"fadd.24" = fadd float %"fmul.24", %".875"
  %".876" = bitcast ptr %"R8" to ptr
  store float %"fadd.24", ptr %".876"
  ; IADD3 R9, P1, R2, 0x10, RZ
  %".879" = load i32, ptr %"R2"
  %"add.44" = add i32 %".879", 16
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R9"
  %"carry.5" = icmp ult i32 %"add.45", %".879"
  store i1 %"carry.5", ptr %"P1"
  ; IMAD.MOV.U32 R2, RZ, RZ, R9
  %".883" = load i32, ptr %"R9"
  %"mul.6" = mul i32 0, 0
  %"add.46" = add i32 %"mul.6", %".883"
  store i32 %"add.46", ptr %"R2"
  ; FFMA R8, R11, R10, R8
  %".886" = load float, ptr %"R11"
  %".887" = load float, ptr %"R10"
  %".888" = load float, ptr %"R8"
  %"fmul.25" = fmul float %".886", %".887"
  %"fadd.25" = fadd float %"fmul.25", %".888"
  %".889" = bitcast ptr %"R8" to ptr
  store float %"fadd.25", ptr %".889"
  ; IADD3.X R10, RZ, R3, RZ, P1, !PT
  %".892" = load i32, ptr %"R3"
  %".893" = load i1, ptr %"P1"
  %".894" = sub i1 0, %".893"
  %".895" = zext i1 %".894" to i32
  %"add.47" = add i32 0, %".892"
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
  %".914" = icmp ne i1 %".913", 1
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
  %".923" = icmp eq i1 %".922", 1
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
  %".991" = sub i1 0, %".990"
  %".992" = zext i1 %".991" to i32
  %"add.60" = add i32 0, %".989"
  %"add.61" = add i32 %"add.60", 0
  %"add.62" = add i32 %"add.61", %".992"
  store i32 %"add.62", ptr %"R3"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".995" = load i32, ptr %"R9"
  %".996" = load i1, ptr %"P2"
  %".997" = sub i1 0, %".996"
  %".998" = zext i1 %".997" to i32
  %"add.63" = add i32 0, %".995"
  %"add.64" = add i32 %"add.63", 0
  %"add.65" = add i32 %"add.64", %".998"
  store i32 %"add.65", ptr %"R9"
  ; FFMA R7, R2, R5, R7
  %".1001" = load float, ptr %"R2"
  %".1002" = load float, ptr %"R5"
  %".1003" = load float, ptr %"R7"
  %"fmul.28" = fmul float %".1001", %".1002"
  %"fadd.28" = fadd float %"fmul.28", %".1003"
  %".1004" = bitcast ptr %"R7" to ptr
  store float %"fadd.28", ptr %".1004"
  ; @P0 BRA `(.L_x_6)
  %".1007" = load i1, ptr %"P0"
  %".1008" = icmp ne i1 %".1007", 1
  br i1 %".1008", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".1013" = load i32, ptr %"R0"
  %".1014" = load i32, ptr %"R5"
  %"zext.122" = zext i32 %".1013" to i64
  %"zext.123" = zext i32 %".1014" to i64
  %"mul.11" = mul i64 %"zext.122", %"zext.123"
  %".1015" = ptrtoint ptr %"Arg_2" to i64
  %"add.66" = add i64 %"mul.11", %".1015"
  %".1016" = and i64 %"add.66", 18446744069414584320
  %".1017" = lshr i64 %".1016", 32
  %"trunc32.8" = trunc i64 %".1017" to i32
  %"trunc32.9" = trunc i64 %"add.66" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".1021" = load i32, ptr %"R2"
  %"zext.124" = zext i32 %".1021" to i64
  %".1022" = load i32, ptr %"R3"
  %"zext.125" = zext i32 %".1022" to i64
  %"shl.58" = shl i64 %"zext.125", 32
  %"or.58" = or i64 %"shl.58", %"zext.124"
  %".1023" = inttoptr i64 %"or.58" to ptr
  %".1024" = ptrtoint ptr %".1023" to i64
  %".1025" = add i64 %".1024", 0
  %"for_LDG.58" = inttoptr i64 %".1025" to ptr
  %".1026" = load float, ptr %"for_LDG.58"
  %".1027" = bitcast ptr %"R2" to ptr
  store float %".1026", ptr %".1027"
  ; IMAD.WIDE R4, R0, R5, c[0x0][0x178]
  %".1030" = load i32, ptr %"R0"
  %".1031" = load i32, ptr %"R5"
  %"zext.126" = zext i32 %".1030" to i64
  %"zext.127" = zext i32 %".1031" to i64
  %"mul.12" = mul i64 %"zext.126", %"zext.127"
  %".1032" = ptrtoint ptr %"Arg_3" to i64
  %"add.67" = add i64 %"mul.12", %".1032"
  %".1033" = and i64 %"add.67", 18446744069414584320
  %".1034" = lshr i64 %".1033", 32
  %"trunc32.10" = trunc i64 %".1034" to i32
  %"trunc32.11" = trunc i64 %"add.67" to i32
  store i32 %"trunc32.11", ptr %"R4"
  store i32 %"trunc32.10", ptr %"R5"
  ; FADD R7, R2, R7
  %".1038" = load float, ptr %"R2"
  %".1039" = load float, ptr %"R7"
  %"fadd.29" = fadd float %".1038", %".1039"
  %".1040" = bitcast ptr %"R7" to ptr
  store float %"fadd.29", ptr %".1040"
  ; STG.E.SYS [R4], R7
  %".1043" = load float, ptr %"R7"
  %".1044" = load i32, ptr %"R4"
  %"zext.128" = zext i32 %".1044" to i64
  %".1045" = load i32, ptr %"R5"
  %"zext.129" = zext i32 %".1045" to i64
  %"shl.59" = shl i64 %"zext.129", 32
  %"or.59" = or i64 %"shl.59", %"zext.128"
  %".1046" = inttoptr i64 %"or.59" to ptr
  %".1047" = ptrtoint ptr %".1046" to i64
  %".1048" = add i64 %".1047", 0
  %"for_STG" = inttoptr i64 %".1048" to ptr
  store float %".1043", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_7:
  ; BRA `(.L_x_7)
  br label %".L_x_7"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

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
  ; IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28]
  %"mul" = mul i32 0, 0
  %"add" = add i32 %"mul", 0
  store i32 %"add", ptr %"R1"
  ; IABS R7, c[0x0][0x174]
  %".11" = icmp sge i32 %"Arg_3", 0
  %".12" = sub i32 0, %"Arg_3"
  %"iabs" = select  i1 %".11", i32 %"Arg_3", i32 %".12"
  store i32 %"iabs", ptr %"R7"
  ; ULDC.64 UR4, c[0x0][0x170]
  store i32 %"Arg_2", ptr %"UR4"
  ; S2R R10, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R10"
  ; ULOP3.LUT UR4, UR4, UR5, URZ, 0x3c, !UPT
  %".19" = load i32, ptr %"UR4"
  %".20" = load i32, ptr %"UR5"
  %".21" = xor i32 %".19", %".20"
  store i32 %".21", ptr %"UR4"
  ; I2F.RP R0, R7
  %".24" = load i32, ptr %"R7"
  store i32 %".24", ptr %"R0"
  ; S2R R19, SR_CTAID.Z
  %"nvvm_ctaid_z" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.z"()
  store i32 %"nvvm_ctaid_z", ptr %"R19"
  ; ISETP.LE.AND P1, PT, RZ, UR4, PT
  %".29" = load i32, ptr %"UR4"
  %".30" = load i1, ptr %"PT"
  %"cmp" = icmp sle i32 0, %".29"
  %".31" = and i1 %"cmp", %".30"
  store i1 %".31", ptr %"P1"
  ; MUFU.RCP R0, R0
  %".34" = load float, ptr %"R0"
  %".35" = fdiv float 0x3ff0000000000000, %".34"
  %".36" = bitcast ptr %"R0" to ptr
  store float %".35", ptr %".36"
  ; IADD3 R2, R0, 0xffffffe, RZ
  %".39" = load i32, ptr %"R0"
  %"add.1" = add i32 %".39", 268435454
  %"add.2" = add i32 %"add.1", 0
  store i32 %"add.2", ptr %"R2"
  ; F2I.FTZ.U32.TRUNC.NTZ R3, R2
  %".42" = load float, ptr %"R2"
  %".43" = bitcast ptr %"R3" to ptr
  store float %".42", ptr %".43"
  ; IMAD.MOV.U32 R2, RZ, RZ, RZ
  %"mul.1" = mul i32 0, 0
  %"add.3" = add i32 %"mul.1", 0
  store i32 %"add.3", ptr %"R2"
  ; IMAD.MOV R4, RZ, RZ, -R3
  %".48" = load i32, ptr %"R3"
  %".49" = sub i32 0, %".48"
  %"mul.2" = mul i32 0, 0
  %"add.4" = add i32 %"mul.2", %".49"
  store i32 %"add.4", ptr %"R4"
  ; IMAD R5, R4, R7, RZ
  %".52" = load i32, ptr %"R4"
  %".53" = load i32, ptr %"R7"
  %"mul.3" = mul i32 %".52", %".53"
  %"add.5" = add i32 %"mul.3", 0
  store i32 %"add.5", ptr %"R5"
  ; IABS R4, c[0x0][0x170]
  %".56" = icmp sge i32 %"Arg_2", 0
  %".57" = sub i32 0, %"Arg_2"
  %"iabs.1" = select  i1 %".56", i32 %"Arg_2", i32 %".57"
  store i32 %"iabs.1", ptr %"R4"
  ; IMAD.HI.U32 R3, R3, R5, R2
  %".60" = load i32, ptr %"R3"
  %".61" = load i32, ptr %"R5"
  %".62" = load i32, ptr %"R2"
  %"mul.4" = mul i32 %".60", %".61"
  %"add.6" = add i32 %"mul.4", %".62"
  store i32 %"add.6", ptr %"R3"
  ; S2R R2, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R2"
  ; IMAD.HI.U32 R3, R3, R4, RZ
  %".67" = load i32, ptr %"R3"
  %".68" = load i32, ptr %"R4"
  %"mul.5" = mul i32 %".67", %".68"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R3"
  ; S2R R5, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R5"
  ; IMAD.MOV R0, RZ, RZ, -R3
  %".73" = load i32, ptr %"R3"
  %".74" = sub i32 0, %".73"
  %"mul.6" = mul i32 0, 0
  %"add.8" = add i32 %"mul.6", %".74"
  store i32 %"add.8", ptr %"R0"
  ; IMAD R0, R7, R0, R4
  %".77" = load i32, ptr %"R7"
  %".78" = load i32, ptr %"R0"
  %".79" = load i32, ptr %"R4"
  %"mul.7" = mul i32 %".77", %".78"
  %"add.9" = add i32 %"mul.7", %".79"
  store i32 %"add.9", ptr %"R0"
  ; ISETP.GT.U32.AND P2, PT, R7, R0, PT
  %".82" = load i32, ptr %"R7"
  %".83" = load i32, ptr %"R0"
  %".84" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".82", %".83"
  %".85" = and i1 %"cmp.1", %".84"
  store i1 %".85", ptr %"P2"
  ; @!P2 IADD3 R0, R0, -R7.reuse, RZ
  %".88" = load i1, ptr %"P2"
  %".89" = icmp eq i1 %".88", 1
  br i1 %".89", label %".text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160", label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_conditionalExpr_0x0160:
  ; IADD3 R0, R0, -R7.reuse, RZ
  %".92" = load i32, ptr %"R0"
  %".93" = load i32, ptr %"R7"
  %".94" = sub i32 0, %".93"
  %"add.10" = add i32 %".92", %".94"
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R0"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0170)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0170"
.text._Z10max_pool2dPfS_iii_split_0x0170:
  ; @!P2 IADD3 R3, R3, 0x1, RZ
  %".99" = load i1, ptr %"P2"
  %".100" = icmp eq i1 %".99", 1
  br i1 %".100", label %".text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170", label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0170_conditionalExpr_0x0170:
  ; IADD3 R3, R3, 0x1, RZ
  %".103" = load i32, ptr %"R3"
  %"add.12" = add i32 %".103", 1
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0180)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0180"
.text._Z10max_pool2dPfS_iii_split_0x0180:
  ; ISETP.GE.U32.AND P0, PT, R0, R7, PT
  %".108" = load i32, ptr %"R0"
  %".109" = load i32, ptr %"R7"
  %".110" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".108", %".109"
  %".111" = and i1 %"cmp.2", %".110"
  store i1 %".111", ptr %"P0"
  ; IMAD R0, R2, c[0x0][0x0], R5
  %".114" = load i32, ptr %"R2"
  %".115" = load i32, ptr %"R5"
  %"mul.8" = mul i32 %".114", 0
  %"add.14" = add i32 %"mul.8", %".115"
  store i32 %"add.14", ptr %"R0"
  ; S2R R7, SR_TID.Y
  %"ThreadIdx.1" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx.1", ptr %"R7"
  ; ISETP.NE.AND P2, PT, RZ, c[0x0][0x174], PT
  %".120" = load i1, ptr %"PT"
  %"cmp.3" = icmp ne i32 0, %"Arg_3"
  %".121" = and i1 %"cmp.3", %".120"
  store i1 %".121", ptr %"P2"
  ; @P0 IADD3 R3, R3, 0x1, RZ
  %".124" = load i1, ptr %"P0"
  %".125" = icmp ne i1 %".124", 1
  br i1 %".125", label %".text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0", label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x0180_conditionalExpr_0x01c0:
  ; IADD3 R3, R3, 0x1, RZ
  %".128" = load i32, ptr %"R3"
  %"add.15" = add i32 %".128", 1
  %"add.16" = add i32 %"add.15", 0
  store i32 %"add.16", ptr %"R3"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01d0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01d0"
.text._Z10max_pool2dPfS_iii_split_0x01d0:
  ; IMAD.MOV.U32 R21, RZ, RZ, R3
  %".133" = load i32, ptr %"R3"
  %"mul.9" = mul i32 0, 0
  %"add.17" = add i32 %"mul.9", %".133"
  store i32 %"add.17", ptr %"R21"
  ; @!P1 IMAD.MOV R21, RZ, RZ, -R21
  %".136" = load i1, ptr %"P1"
  %".137" = icmp eq i1 %".136", 1
  br i1 %".137", label %".text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0", label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01d0_conditionalExpr_0x01e0:
  ; IMAD.MOV R21, RZ, RZ, -R21
  %".140" = load i32, ptr %"R21"
  %".141" = sub i32 0, %".140"
  %"mul.10" = mul i32 0, 0
  %"add.18" = add i32 %"mul.10", %".141"
  store i32 %"add.18", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x01f0)
  br label %".text._Z10max_pool2dPfS_iii_split_0x01f0"
.text._Z10max_pool2dPfS_iii_split_0x01f0:
  ; @!P2 LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".146" = load i1, ptr %"P2"
  %".147" = icmp eq i1 %".146", 1
  br i1 %".147", label %".text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0", label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x01f0_conditionalExpr_0x01f0:
  ; LOP3.LUT R21, RZ, c[0x0][0x174], RZ, 0x33, !PT
  %".150" = xor i32 %"Arg_3", -1
  store i32 %".150", ptr %"R21"
  ; BRA `(.text._Z10max_pool2dPfS_iii_split_0x0200)
  br label %".text._Z10max_pool2dPfS_iii_split_0x0200"
.text._Z10max_pool2dPfS_iii_split_0x0200:
  ; IMAD R10, R10, c[0x0][0x4], R7
  %".155" = load i32, ptr %"R10"
  %".156" = load i32, ptr %"R7"
  %"mul.11" = mul i32 %".155", 0
  %"add.19" = add i32 %"mul.11", %".156"
  store i32 %"add.19", ptr %"R10"
  ; ISETP.GE.AND P0, PT, R0, R21, PT
  %".159" = load i32, ptr %"R0"
  %".160" = load i32, ptr %"R21"
  %".161" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".159", %".160"
  %".162" = and i1 %"cmp.4", %".161"
  store i1 %".162", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R10, R21, P0
  %".165" = load i32, ptr %"R10"
  %".166" = load i32, ptr %"R21"
  %".167" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".165", %".166"
  %".168" = or i1 %"cmp.5", %".167"
  store i1 %".168", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R19, c[0x0][0x178], P0
  %".171" = load i32, ptr %"R19"
  %".172" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".171", %"Arg_4"
  %".173" = or i1 %"cmp.6", %".172"
  store i1 %".173", ptr %"P0"
  ; @P0 EXIT
  %".176" = load i1, ptr %"P0"
  %".177" = icmp ne i1 %".176", 1
  br i1 %".177", label %".text._Z10max_pool2dPfS_iii_split_0x0200_conditionalExpr_0x0240", label %".text._Z10max_pool2dPfS_iii_split_0x0250"
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
  %".186" = load i32, ptr %"R15"
  %".187" = load i1, ptr %"PT"
  %"cmp.7" = icmp sge i32 %".186", 1
  %".188" = and i1 %"cmp.7", %".187"
  store i1 %".188", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".191" = load i1, ptr %"P0"
  %".192" = icmp eq i1 %".191", 1
  br i1 %".192", label %".L_x_8", label %".text._Z10max_pool2dPfS_iii_split_0x0290"
.text._Z10max_pool2dPfS_iii_split_0x0290:
  ; IMAD R3, R19, c[0x0][0x170], RZ
  %".195" = load i32, ptr %"R19"
  %"mul.13" = mul i32 %".195", %"Arg_2"
  %"add.21" = add i32 %"mul.13", 0
  store i32 %"add.21", ptr %"R3"
  ; IADD3 R2, R15.reuse, -0x1, RZ
  %".198" = load i32, ptr %"R15"
  %"add.22" = add i32 %".198", -1
  %"add.23" = add i32 %"add.22", 0
  store i32 %"add.23", ptr %"R2"
  ; IMAD R13, R0, c[0x0][0x174], RZ
  %".201" = load i32, ptr %"R0"
  %"mul.14" = mul i32 %".201", %"Arg_3"
  %"add.24" = add i32 %"mul.14", 0
  store i32 %"add.24", ptr %"R13"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".204" = load i32, ptr %"R15"
  %".205" = and i32 %".204", 3
  store i32 %".205", ptr %"R15"
  ; IMAD R12, R10, c[0x0][0x174], R3
  %".208" = load i32, ptr %"R10"
  %".209" = load i32, ptr %"R3"
  %"mul.15" = mul i32 %".208", %"Arg_3"
  %"add.25" = add i32 %"mul.15", %".209"
  store i32 %"add.25", ptr %"R12"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".212" = load i32, ptr %"R2"
  %".213" = load i1, ptr %"PT"
  %"cmp.8" = icmp sge i32 %".212", 3
  %".214" = and i1 %"cmp.8", %".213"
  store i1 %".214", ptr %"P0"
  ; IMAD.MOV.U32 R11, RZ, RZ, -0x800000
  %"mul.16" = mul i32 0, 0
  %"add.26" = add i32 %"mul.16", -8388608
  store i32 %"add.26", ptr %"R11"
  ; IADD3 R20, R15, -c[0x0][0x174], RZ
  %".219" = load i32, ptr %"R15"
  %".220" = sub i32 0, %"Arg_3"
  %"add.27" = add i32 %".219", %".220"
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R20"
  ; IMAD.MOV.U32 R16, RZ, RZ, RZ
  %"mul.17" = mul i32 0, 0
  %"add.29" = add i32 %"mul.17", 0
  store i32 %"add.29", ptr %"R16"
  ; IMAD R14, R12, c[0x0][0x170], R13
  %".225" = load i32, ptr %"R12"
  %".226" = load i32, ptr %"R13"
  %"mul.18" = mul i32 %".225", %"Arg_2"
  %"add.30" = add i32 %"mul.18", %".226"
  store i32 %"add.30", ptr %"R14"
  br label %".L_x_12"
.L_x_12:
  ; UMOV UR4, URZ
  %".230" = load i32, ptr %"URZ"
  store i32 %".230", ptr %"UR4"
  ; ISETP.NE.AND P2, PT, R15, RZ, PT
  %".233" = load i32, ptr %"R15"
  %".234" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".233", 0
  %".235" = and i1 %"cmp.9", %".234"
  store i1 %".235", ptr %"P2"
  ; @!P0 BRA `(.L_x_9)
  %".238" = load i1, ptr %"P0"
  %".239" = icmp eq i1 %".238", 1
  br i1 %".239", label %".L_x_9", label %".L_x_12_split_0x0360"
.L_x_12_split_0x0360:
  ; IMAD.IADD R17, R14, 0x1, R16
  %".242" = load i32, ptr %"R14"
  %".243" = load i32, ptr %"R16"
  %"mul.19" = mul i32 %".242", 1
  %"add.31" = add i32 %"mul.19", %".243"
  store i32 %"add.31", ptr %"R17"
  ; UMOV UR4, URZ
  %".246" = load i32, ptr %"URZ"
  store i32 %".246", ptr %"UR4"
  br label %".L_x_10"
.L_x_10:
  ; MOV R2, 0x4
  store i32 4, ptr %"R2"
  ; IMAD.MOV.U32 R23, RZ, RZ, c[0x0][0x170]
  %"mul.20" = mul i32 0, 0
  %"add.32" = add i32 %"mul.20", %"Arg_2"
  store i32 %"add.32", ptr %"R23"
  ; IMAD.WIDE R2, R17, R2, c[0x0][0x160]
  %".254" = load i32, ptr %"R17"
  %".255" = load i32, ptr %"R2"
  %"zext" = zext i32 %".254" to i64
  %"zext.1" = zext i32 %".255" to i64
  %"mul.21" = mul i64 %"zext", %"zext.1"
  %".256" = ptrtoint ptr %"Arg_0" to i64
  %"add.33" = add i64 %"mul.21", %".256"
  %".257" = and i64 %"add.33", 18446744069414584320
  %".258" = lshr i64 %".257", 32
  %"trunc32" = trunc i64 %".258" to i32
  %"trunc32.1" = trunc i64 %"add.33" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; IMAD.WIDE R4, R23.reuse, 0x4, R2
  %".262" = load i32, ptr %"R23"
  %".263" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".262" to i64
  %"zext.3" = zext i32 4 to i64
  %"mul.22" = mul i64 %"zext.2", %"zext.3"
  %"zext.4" = zext i32 %".263" to i64
  %"add.34" = add i64 %"mul.22", %"zext.4"
  %".264" = and i64 %"add.34", 18446744069414584320
  %".265" = lshr i64 %".264", 32
  %"trunc32.2" = trunc i64 %".265" to i32
  %"trunc32.3" = trunc i64 %"add.34" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; LDG.E.SYS R2, [R2]
  %".269" = load i32, ptr %"R2"
  %"zext.5" = zext i32 %".269" to i64
  %".270" = load i32, ptr %"R3"
  %"zext.6" = zext i32 %".270" to i64
  %"shl" = shl i64 %"zext.6", 32
  %"or" = or i64 %"shl", %"zext.5"
  %".271" = inttoptr i64 %"or" to ptr
  %".272" = ptrtoint ptr %".271" to i64
  %".273" = add i64 %".272", 0
  %"for_LDG" = inttoptr i64 %".273" to ptr
  %".274" = load float, ptr %"for_LDG"
  %".275" = bitcast ptr %"R2" to ptr
  store float %".274", ptr %".275"
  ; IMAD.WIDE R6, R23.reuse, 0x4, R4
  %".278" = load i32, ptr %"R23"
  %".279" = load i32, ptr %"R4"
  %"zext.7" = zext i32 %".278" to i64
  %"zext.8" = zext i32 4 to i64
  %"mul.23" = mul i64 %"zext.7", %"zext.8"
  %"zext.9" = zext i32 %".279" to i64
  %"add.35" = add i64 %"mul.23", %"zext.9"
  %".280" = and i64 %"add.35", 18446744069414584320
  %".281" = lshr i64 %".280", 32
  %"trunc32.4" = trunc i64 %".281" to i32
  %"trunc32.5" = trunc i64 %"add.35" to i32
  store i32 %"trunc32.5", ptr %"R6"
  store i32 %"trunc32.4", ptr %"R7"
  ; LDG.E.SYS R4, [R4]
  %".285" = load i32, ptr %"R4"
  %"zext.10" = zext i32 %".285" to i64
  %".286" = load i32, ptr %"R5"
  %"zext.11" = zext i32 %".286" to i64
  %"shl.1" = shl i64 %"zext.11", 32
  %"or.1" = or i64 %"shl.1", %"zext.10"
  %".287" = inttoptr i64 %"or.1" to ptr
  %".288" = ptrtoint ptr %".287" to i64
  %".289" = add i64 %".288", 0
  %"for_LDG.1" = inttoptr i64 %".289" to ptr
  %".290" = load float, ptr %"for_LDG.1"
  %".291" = bitcast ptr %"R4" to ptr
  store float %".290", ptr %".291"
  ; IMAD.WIDE R8, R23, 0x4, R6
  %".294" = load i32, ptr %"R23"
  %".295" = load i32, ptr %"R6"
  %"zext.12" = zext i32 %".294" to i64
  %"zext.13" = zext i32 4 to i64
  %"mul.24" = mul i64 %"zext.12", %"zext.13"
  %"zext.14" = zext i32 %".295" to i64
  %"add.36" = add i64 %"mul.24", %"zext.14"
  %".296" = and i64 %"add.36", 18446744069414584320
  %".297" = lshr i64 %".296", 32
  %"trunc32.6" = trunc i64 %".297" to i32
  %"trunc32.7" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.SYS R6, [R6]
  %".301" = load i32, ptr %"R6"
  %"zext.15" = zext i32 %".301" to i64
  %".302" = load i32, ptr %"R7"
  %"zext.16" = zext i32 %".302" to i64
  %"shl.2" = shl i64 %"zext.16", 32
  %"or.2" = or i64 %"shl.2", %"zext.15"
  %".303" = inttoptr i64 %"or.2" to ptr
  %".304" = ptrtoint ptr %".303" to i64
  %".305" = add i64 %".304", 0
  %"for_LDG.2" = inttoptr i64 %".305" to ptr
  %".306" = load float, ptr %"for_LDG.2"
  %".307" = bitcast ptr %"R6" to ptr
  store float %".306", ptr %".307"
  ; LDG.E.SYS R8, [R8]
  %".310" = load i32, ptr %"R8"
  %"zext.17" = zext i32 %".310" to i64
  %".311" = load i32, ptr %"R9"
  %"zext.18" = zext i32 %".311" to i64
  %"shl.3" = shl i64 %"zext.18", 32
  %"or.3" = or i64 %"shl.3", %"zext.17"
  %".312" = inttoptr i64 %"or.3" to ptr
  %".313" = ptrtoint ptr %".312" to i64
  %".314" = add i64 %".313", 0
  %"for_LDG.3" = inttoptr i64 %".314" to ptr
  %".315" = load float, ptr %"for_LDG.3"
  %".316" = bitcast ptr %"R8" to ptr
  store float %".315", ptr %".316"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".319" = load i32, ptr %"UR4"
  %"add.37" = add i32 %".319", 4
  %"add.38" = add i32 %"add.37", 0
  store i32 %"add.38", ptr %"UR4"
  ; IADD3 R18, R20, UR4, RZ
  %".322" = load i32, ptr %"R20"
  %".323" = load i32, ptr %"UR4"
  %"add.39" = add i32 %".322", %".323"
  %"add.40" = add i32 %"add.39", 0
  store i32 %"add.40", ptr %"R18"
  ; ISETP.NE.AND P1, PT, R18, RZ, PT
  %".326" = load i32, ptr %"R18"
  %".327" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".326", 0
  %".328" = and i1 %"cmp.10", %".327"
  store i1 %".328", ptr %"P1"
  ; IMAD R17, R23, 0x4, R17
  %".331" = load i32, ptr %"R23"
  %".332" = load i32, ptr %"R17"
  %"mul.25" = mul i32 %".331", 4
  %"add.41" = add i32 %"mul.25", %".332"
  store i32 %"add.41", ptr %"R17"
  ; FMNMX R11, R2, R11, !PT
  %".335" = load float, ptr %"R2"
  %".336" = load float, ptr %"R11"
  %".337" = fcmp olt float %".335", %".336"
  %"fmnmx_min" = select  i1 %".337", float %".335", float %".336"
  %".338" = fcmp ogt float %".335", %".336"
  %"fmnmx_max" = select  i1 %".338", float %".335", float %".336"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".339" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final", ptr %".339"
  ; FMNMX R11, R11, R4, !PT
  %".342" = load float, ptr %"R11"
  %".343" = load float, ptr %"R4"
  %".344" = fcmp olt float %".342", %".343"
  %"fmnmx_min.1" = select  i1 %".344", float %".342", float %".343"
  %".345" = fcmp ogt float %".342", %".343"
  %"fmnmx_max.1" = select  i1 %".345", float %".342", float %".343"
  %"fmnmx_final.1" = select  i1 1, float %"fmnmx_min.1", float %"fmnmx_max.1"
  %".346" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.1", ptr %".346"
  ; FMNMX R11, R11, R6, !PT
  %".349" = load float, ptr %"R11"
  %".350" = load float, ptr %"R6"
  %".351" = fcmp olt float %".349", %".350"
  %"fmnmx_min.2" = select  i1 %".351", float %".349", float %".350"
  %".352" = fcmp ogt float %".349", %".350"
  %"fmnmx_max.2" = select  i1 %".352", float %".349", float %".350"
  %"fmnmx_final.2" = select  i1 1, float %"fmnmx_min.2", float %"fmnmx_max.2"
  %".353" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.2", ptr %".353"
  ; FMNMX R11, R11, R8, !PT
  %".356" = load float, ptr %"R11"
  %".357" = load float, ptr %"R8"
  %".358" = fcmp olt float %".356", %".357"
  %"fmnmx_min.3" = select  i1 %".358", float %".356", float %".357"
  %".359" = fcmp ogt float %".356", %".357"
  %"fmnmx_max.3" = select  i1 %".359", float %".356", float %".357"
  %"fmnmx_final.3" = select  i1 1, float %"fmnmx_min.3", float %"fmnmx_max.3"
  %".360" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.3", ptr %".360"
  ; @P1 BRA `(.L_x_10)
  %".363" = load i1, ptr %"P1"
  %".364" = icmp ne i1 %".363", 1
  br i1 %".364", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; IMAD.IADD R4, R13, 0x1, R16
  %".367" = load i32, ptr %"R13"
  %".368" = load i32, ptr %"R16"
  %"mul.26" = mul i32 %".367", 1
  %"add.42" = add i32 %"mul.26", %".368"
  store i32 %"add.42", ptr %"R4"
  ; @!P2 BRA `(.L_x_11)
  %".371" = load i1, ptr %"P2"
  %".372" = icmp eq i1 %".371", 1
  br i1 %".372", label %".L_x_11", label %".L_x_9_split_0x04d0"
.L_x_9_split_0x04d0:
  ; IADD3 R5, R12, UR4, RZ
  %".375" = load i32, ptr %"R12"
  %".376" = load i32, ptr %"UR4"
  %"add.43" = add i32 %".375", %".376"
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R5"
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R2, R5, c[0x0][0x170], R4
  %".381" = load i32, ptr %"R5"
  %".382" = load i32, ptr %"R4"
  %"mul.27" = mul i32 %".381", %"Arg_2"
  %"add.45" = add i32 %"mul.27", %".382"
  store i32 %"add.45", ptr %"R2"
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".385" = load i32, ptr %"R2"
  %".386" = load i32, ptr %"R7"
  %"zext.19" = zext i32 %".385" to i64
  %"zext.20" = zext i32 %".386" to i64
  %"mul.28" = mul i64 %"zext.19", %"zext.20"
  %".387" = ptrtoint ptr %"Arg_0" to i64
  %"add.46" = add i64 %"mul.28", %".387"
  %".388" = and i64 %"add.46", 18446744069414584320
  %".389" = lshr i64 %".388", 32
  %"trunc32.8" = trunc i64 %".389" to i32
  %"trunc32.9" = trunc i64 %"add.46" to i32
  store i32 %"trunc32.9", ptr %"R2"
  store i32 %"trunc32.8", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".393" = load i32, ptr %"R2"
  %"zext.21" = zext i32 %".393" to i64
  %".394" = load i32, ptr %"R3"
  %"zext.22" = zext i32 %".394" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".395" = inttoptr i64 %"or.4" to ptr
  %".396" = ptrtoint ptr %".395" to i64
  %".397" = add i64 %".396", 0
  %"for_LDG.4" = inttoptr i64 %".397" to ptr
  %".398" = load float, ptr %"for_LDG.4"
  %".399" = bitcast ptr %"R2" to ptr
  store float %".398", ptr %".399"
  ; ISETP.NE.AND P1, PT, R15, 0x1, PT
  %".402" = load i32, ptr %"R15"
  %".403" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".402", 1
  %".404" = and i1 %"cmp.11", %".403"
  store i1 %".404", ptr %"P1"
  ; FMNMX R11, R11, R2, !PT
  %".407" = load float, ptr %"R11"
  %".408" = load float, ptr %"R2"
  %".409" = fcmp olt float %".407", %".408"
  %"fmnmx_min.4" = select  i1 %".409", float %".407", float %".408"
  %".410" = fcmp ogt float %".407", %".408"
  %"fmnmx_max.4" = select  i1 %".410", float %".407", float %".408"
  %"fmnmx_final.4" = select  i1 1, float %"fmnmx_min.4", float %"fmnmx_max.4"
  %".411" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.4", ptr %".411"
  ; @!P1 BRA `(.L_x_11)
  %".414" = load i1, ptr %"P1"
  %".415" = icmp eq i1 %".414", 1
  br i1 %".415", label %".L_x_11", label %".L_x_9_split_0x0550"
.L_x_9_split_0x0550:
  ; ISETP.NE.AND P1, PT, R15, 0x2, PT
  %".418" = load i32, ptr %"R15"
  %".419" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".418", 2
  %".420" = and i1 %"cmp.12", %".419"
  store i1 %".420", ptr %"P1"
  ; IADD3 R2, R5, 0x1, RZ
  %".423" = load i32, ptr %"R5"
  %"add.47" = add i32 %".423", 1
  %"add.48" = add i32 %"add.47", 0
  store i32 %"add.48", ptr %"R2"
  ; IMAD R2, R2, c[0x0][0x170], R4
  %".426" = load i32, ptr %"R2"
  %".427" = load i32, ptr %"R4"
  %"mul.29" = mul i32 %".426", %"Arg_2"
  %"add.49" = add i32 %"mul.29", %".427"
  store i32 %"add.49", ptr %"R2"
  ; @P1 IADD3 R3, R5, 0x2, RZ
  %".430" = load i1, ptr %"P1"
  %".431" = icmp ne i1 %".430", 1
  br i1 %".431", label %".L_x_9_split_0x0550_conditionalExpr_0x0580", label %".L_x_9_split_0x0590"
.L_x_9_split_0x0550_conditionalExpr_0x0580:
  ; IADD3 R3, R5, 0x2, RZ
  %".434" = load i32, ptr %"R5"
  %"add.50" = add i32 %".434", 2
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R3"
  ; BRA `(.L_x_9_split_0x0590)
  br label %".L_x_9_split_0x0590"
.L_x_9_split_0x0590:
  ; @P1 IMAD R4, R3, c[0x0][0x170], R4
  %".439" = load i1, ptr %"P1"
  %".440" = icmp ne i1 %".439", 1
  br i1 %".440", label %".L_x_9_split_0x0590_conditionalExpr_0x0590", label %".L_x_9_split_0x05a0"
.L_x_9_split_0x0590_conditionalExpr_0x0590:
  ; IMAD R4, R3, c[0x0][0x170], R4
  %".443" = load i32, ptr %"R3"
  %".444" = load i32, ptr %"R4"
  %"mul.30" = mul i32 %".443", %"Arg_2"
  %"add.52" = add i32 %"mul.30", %".444"
  store i32 %"add.52", ptr %"R4"
  ; BRA `(.L_x_9_split_0x05a0)
  br label %".L_x_9_split_0x05a0"
.L_x_9_split_0x05a0:
  ; IMAD.WIDE R2, R2, R7, c[0x0][0x160]
  %".449" = load i32, ptr %"R2"
  %".450" = load i32, ptr %"R7"
  %"zext.23" = zext i32 %".449" to i64
  %"zext.24" = zext i32 %".450" to i64
  %"mul.31" = mul i64 %"zext.23", %"zext.24"
  %".451" = ptrtoint ptr %"Arg_0" to i64
  %"add.53" = add i64 %"mul.31", %".451"
  %".452" = and i64 %"add.53", 18446744069414584320
  %".453" = lshr i64 %".452", 32
  %"trunc32.10" = trunc i64 %".453" to i32
  %"trunc32.11" = trunc i64 %"add.53" to i32
  store i32 %"trunc32.11", ptr %"R2"
  store i32 %"trunc32.10", ptr %"R3"
  ; @P1 IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".457" = load i1, ptr %"P1"
  %".458" = icmp ne i1 %".457", 1
  br i1 %".458", label %".L_x_9_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05a0_conditionalExpr_0x05b0:
  ; IMAD.WIDE R4, R4, R7, c[0x0][0x160]
  %".461" = load i32, ptr %"R4"
  %".462" = load i32, ptr %"R7"
  %"zext.25" = zext i32 %".461" to i64
  %"zext.26" = zext i32 %".462" to i64
  %"mul.32" = mul i64 %"zext.25", %"zext.26"
  %".463" = ptrtoint ptr %"Arg_0" to i64
  %"add.54" = add i64 %"mul.32", %".463"
  %".464" = and i64 %"add.54", 18446744069414584320
  %".465" = lshr i64 %".464", 32
  %"trunc32.12" = trunc i64 %".465" to i32
  %"trunc32.13" = trunc i64 %"add.54" to i32
  store i32 %"trunc32.13", ptr %"R4"
  store i32 %"trunc32.12", ptr %"R5"
  ; BRA `(.L_x_9_split_0x05c0)
  br label %".L_x_9_split_0x05c0"
.L_x_9_split_0x05c0:
  ; LDG.E.SYS R2, [R2]
  %".471" = load i32, ptr %"R2"
  %"zext.27" = zext i32 %".471" to i64
  %".472" = load i32, ptr %"R3"
  %"zext.28" = zext i32 %".472" to i64
  %"shl.5" = shl i64 %"zext.28", 32
  %"or.5" = or i64 %"shl.5", %"zext.27"
  %".473" = inttoptr i64 %"or.5" to ptr
  %".474" = ptrtoint ptr %".473" to i64
  %".475" = add i64 %".474", 0
  %"for_LDG.5" = inttoptr i64 %".475" to ptr
  %".476" = load float, ptr %"for_LDG.5"
  %".477" = bitcast ptr %"R2" to ptr
  store float %".476", ptr %".477"
  ; @P1 LDG.E.SYS R4, [R4]
  %".480" = load i1, ptr %"P1"
  %".481" = icmp ne i1 %".480", 1
  br i1 %".481", label %".L_x_9_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05c0_conditionalExpr_0x05d0:
  ; LDG.E.SYS R4, [R4]
  %".484" = load i32, ptr %"R4"
  %"zext.29" = zext i32 %".484" to i64
  %".485" = load i32, ptr %"R5"
  %"zext.30" = zext i32 %".485" to i64
  %"shl.6" = shl i64 %"zext.30", 32
  %"or.6" = or i64 %"shl.6", %"zext.29"
  %".486" = inttoptr i64 %"or.6" to ptr
  %".487" = ptrtoint ptr %".486" to i64
  %".488" = add i64 %".487", 0
  %"for_LDG.6" = inttoptr i64 %".488" to ptr
  %".489" = load float, ptr %"for_LDG.6"
  %".490" = bitcast ptr %"R4" to ptr
  store float %".489", ptr %".490"
  ; BRA `(.L_x_9_split_0x05e0)
  br label %".L_x_9_split_0x05e0"
.L_x_9_split_0x05e0:
  ; FMNMX R11, R11, R2, !PT
  %".495" = load float, ptr %"R11"
  %".496" = load float, ptr %"R2"
  %".497" = fcmp olt float %".495", %".496"
  %"fmnmx_min.5" = select  i1 %".497", float %".495", float %".496"
  %".498" = fcmp ogt float %".495", %".496"
  %"fmnmx_max.5" = select  i1 %".498", float %".495", float %".496"
  %"fmnmx_final.5" = select  i1 1, float %"fmnmx_min.5", float %"fmnmx_max.5"
  %".499" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.5", ptr %".499"
  ; @P1 FMNMX R11, R11, R4, !PT
  %".502" = load i1, ptr %"P1"
  %".503" = icmp ne i1 %".502", 1
  br i1 %".503", label %".L_x_9_split_0x05e0_conditionalExpr_0x05f0", label %".L_x_11"
.L_x_9_split_0x05e0_conditionalExpr_0x05f0:
  ; FMNMX R11, R11, R4, !PT
  %".506" = load float, ptr %"R11"
  %".507" = load float, ptr %"R4"
  %".508" = fcmp olt float %".506", %".507"
  %"fmnmx_min.6" = select  i1 %".508", float %".506", float %".507"
  %".509" = fcmp ogt float %".506", %".507"
  %"fmnmx_max.6" = select  i1 %".509", float %".506", float %".507"
  %"fmnmx_final.6" = select  i1 1, float %"fmnmx_min.6", float %"fmnmx_max.6"
  %".510" = bitcast ptr %"R11" to ptr
  store float %"fmnmx_final.6", ptr %".510"
  ; BRA `(.L_x_11)
  br label %".L_x_11"
.L_x_11:
  ; IADD3 R16, R16, 0x1, RZ
  %".515" = load i32, ptr %"R16"
  %"add.55" = add i32 %".515", 1
  %"add.56" = add i32 %"add.55", 0
  store i32 %"add.56", ptr %"R16"
  ; ISETP.GE.AND P1, PT, R16, c[0x0][0x174], PT
  %".518" = load i32, ptr %"R16"
  %".519" = load i1, ptr %"PT"
  %"cmp.13" = icmp sge i32 %".518", %"Arg_3"
  %".520" = and i1 %"cmp.13", %".519"
  store i1 %".520", ptr %"P1"
  ; @!P1 BRA `(.L_x_12)
  %".523" = load i1, ptr %"P1"
  %".524" = icmp eq i1 %".523", 1
  br i1 %".524", label %".L_x_12", label %".L_x_8"
.L_x_8:
  ; IMAD R3, R21.reuse, R19, R10
  %".527" = load i32, ptr %"R21"
  %".528" = load i32, ptr %"R19"
  %".529" = load i32, ptr %"R10"
  %"mul.33" = mul i32 %".527", %".528"
  %"add.57" = add i32 %"mul.33", %".529"
  store i32 %"add.57", ptr %"R3"
  ; IMAD.MOV.U32 R2, RZ, RZ, 0x4
  %"mul.34" = mul i32 0, 0
  %"add.58" = add i32 %"mul.34", 4
  store i32 %"add.58", ptr %"R2"
  ; IMAD R3, R21, R3, R0
  %".534" = load i32, ptr %"R21"
  %".535" = load i32, ptr %"R3"
  %".536" = load i32, ptr %"R0"
  %"mul.35" = mul i32 %".534", %".535"
  %"add.59" = add i32 %"mul.35", %".536"
  store i32 %"add.59", ptr %"R3"
  ; IMAD.WIDE R2, R3, R2, c[0x0][0x168]
  %".539" = load i32, ptr %"R3"
  %".540" = load i32, ptr %"R2"
  %"zext.31" = zext i32 %".539" to i64
  %"zext.32" = zext i32 %".540" to i64
  %"mul.36" = mul i64 %"zext.31", %"zext.32"
  %".541" = ptrtoint ptr %"Arg_1" to i64
  %"add.60" = add i64 %"mul.36", %".541"
  %".542" = and i64 %"add.60", 18446744069414584320
  %".543" = lshr i64 %".542", 32
  %"trunc32.14" = trunc i64 %".543" to i32
  %"trunc32.15" = trunc i64 %"add.60" to i32
  store i32 %"trunc32.15", ptr %"R2"
  store i32 %"trunc32.14", ptr %"R3"
  ; STG.E.SYS [R2], R11
  %".547" = load i32, ptr %"R11"
  %".548" = load i32, ptr %"R2"
  %"zext.33" = zext i32 %".548" to i64
  %".549" = load i32, ptr %"R3"
  %"zext.34" = zext i32 %".549" to i64
  %"shl.7" = shl i64 %"zext.34", 32
  %"or.7" = or i64 %"shl.7", %"zext.33"
  %".550" = inttoptr i64 %"or.7" to ptr
  %".551" = ptrtoint ptr %".550" to i64
  %".552" = add i64 %".551", 0
  %"for_STG" = inttoptr i64 %".552" to ptr
  store i32 %".547", ptr %"for_STG"
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
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R4, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R4"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; IMAD R4, R4, c[0x0][0x0], R3
  %".13" = load i32, ptr %"R4"
  %".14" = load i32, ptr %"R3"
  %"mul" = mul i32 %".13", 0
  %"add" = add i32 %"mul", %".14"
  store i32 %"add", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, c[0x0][0x170], PT
  %".17" = load i32, ptr %"R4"
  %".18" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".17", %"Arg_2"
  %".19" = and i1 %"cmp", %".18"
  store i1 %".19", ptr %"P0"
  ; @P0 EXIT
  %".22" = load i1, ptr %"P0"
  %".23" = icmp ne i1 %".22", 1
  br i1 %".23", label %".text._Z4reluPfS_i_conditionalExpr_0x0050", label %".text._Z4reluPfS_i_split_0x0060"
.text._Z4reluPfS_i_conditionalExpr_0x0050:
  ; EXIT
  br label %"ExitFunction"
.text._Z4reluPfS_i_split_0x0060:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R4, R5, c[0x0][0x160]
  %".30" = load i32, ptr %"R4"
  %".31" = load i32, ptr %"R5"
  %"zext" = zext i32 %".30" to i64
  %"zext.1" = zext i32 %".31" to i64
  %"mul.1" = mul i64 %"zext", %"zext.1"
  %".32" = ptrtoint ptr %"Arg_0" to i64
  %"add.1" = add i64 %"mul.1", %".32"
  %".33" = and i64 %"add.1", 18446744069414584320
  %".34" = lshr i64 %".33", 32
  %"trunc32" = trunc i64 %".34" to i32
  %"trunc32.1" = trunc i64 %"add.1" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; LDG.E.SYS R2, [R2]
  %".38" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".38" to i64
  %".39" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".39" to i64
  %"shl" = shl i64 %"zext.3", 32
  %"or" = or i64 %"shl", %"zext.2"
  %".40" = inttoptr i64 %"or" to ptr
  %".41" = ptrtoint ptr %".40" to i64
  %".42" = add i64 %".41", 0
  %"for_LDG" = inttoptr i64 %".42" to ptr
  %".43" = load float, ptr %"for_LDG"
  %".44" = bitcast ptr %"R2" to ptr
  store float %".43", ptr %".44"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x168]
  %".47" = load i32, ptr %"R4"
  %".48" = load i32, ptr %"R5"
  %"zext.4" = zext i32 %".47" to i64
  %"zext.5" = zext i32 %".48" to i64
  %"mul.2" = mul i64 %"zext.4", %"zext.5"
  %".49" = ptrtoint ptr %"Arg_1" to i64
  %"add.2" = add i64 %"mul.2", %".49"
  %".50" = and i64 %"add.2", 18446744069414584320
  %".51" = lshr i64 %".50", 32
  %"trunc32.2" = trunc i64 %".51" to i32
  %"trunc32.3" = trunc i64 %"add.2" to i32
  store i32 %"trunc32.3", ptr %"R4"
  store i32 %"trunc32.2", ptr %"R5"
  ; FMNMX R7, RZ, R2, !PT
  %".55" = load float, ptr %"R2"
  %".56" = fcmp olt float              0x0, %".55"
  %"fmnmx_min" = select  i1 %".56", float              0x0, float %".55"
  %".57" = fcmp ogt float              0x0, %".55"
  %"fmnmx_max" = select  i1 %".57", float              0x0, float %".55"
  %"fmnmx_final" = select  i1 1, float %"fmnmx_min", float %"fmnmx_max"
  %".58" = bitcast ptr %"R7" to ptr
  store float %"fmnmx_final", ptr %".58"
  ; STG.E.SYS [R4], R7
  %".61" = load float, ptr %"R7"
  %".62" = load i32, ptr %"R4"
  %"zext.6" = zext i32 %".62" to i64
  %".63" = load i32, ptr %"R5"
  %"zext.7" = zext i32 %".63" to i64
  %"shl.1" = shl i64 %"zext.7", 32
  %"or.1" = or i64 %"shl.1", %"zext.6"
  %".64" = inttoptr i64 %"or.1" to ptr
  %".65" = ptrtoint ptr %".64" to i64
  %".66" = add i64 %".65", 0
  %"for_STG" = inttoptr i64 %".66" to ptr
  store float %".61", ptr %"for_STG"
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
  ; MOV R1, c[0x0][0x28]
  store i32 0, ptr %"R1"
  ; S2R R3, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R3"
  ; ULDC.64 UR4, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"UR4"
  ; UIADD3 UR5, UR4, -UR5, URZ
  %".17" = load i32, ptr %"UR4"
  %".18" = load i32, ptr %"UR5"
  %".19" = sub i32 0, %".18"
  %"add" = add i32 %".17", %".19"
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
  %".30" = load i32, ptr %"R3"
  %".31" = load i32, ptr %"R4"
  %"mul" = mul i32 %".30", 0
  %"add.2" = add i32 %"mul", %".31"
  store i32 %"add.2", ptr %"R3"
  ; ISETP.GT.AND P0, PT, R3, UR5, PT
  %".34" = load i32, ptr %"R3"
  %".35" = load i32, ptr %"UR5"
  %".36" = load i1, ptr %"PT"
  %"cmp" = icmp sgt i32 %".34", %".35"
  %".37" = and i1 %"cmp", %".36"
  store i1 %".37", ptr %"P0"
  ; IMAD R2, R2, c[0x0][0x0], R5
  %".40" = load i32, ptr %"R2"
  %".41" = load i32, ptr %"R5"
  %"mul.1" = mul i32 %".40", 0
  %"add.3" = add i32 %"mul.1", %".41"
  store i32 %"add.3", ptr %"R2"
  ; ISETP.GT.OR P0, PT, R2, UR5, P0
  %".44" = load i32, ptr %"R2"
  %".45" = load i32, ptr %"UR5"
  %".46" = load i1, ptr %"PT"
  %"cmp.1" = icmp sgt i32 %".44", %".45"
  %".47" = or i1 %"cmp.1", %".46"
  store i1 %".47", ptr %"P0"
  ; ISETP.GE.OR P0, PT, R0, c[0x0][0x184], P0
  %".50" = load i32, ptr %"R0"
  %".51" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".50", %"Arg_6"
  %".52" = or i1 %"cmp.2", %".51"
  store i1 %".52", ptr %"P0"
  ; @P0 EXIT
  %".55" = load i1, ptr %"P0"
  %".56" = icmp ne i1 %".55", 1
  br i1 %".56", label %".text._Z6conv2dPfS_S_iiii_conditionalExpr_0x00d0", label %".text._Z6conv2dPfS_S_iiii_split_0x00e0"
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
  %".65" = load i32, ptr %"R4"
  %".66" = load i1, ptr %"PT"
  %"cmp.3" = icmp sle i32 %".65", %"Arg_4"
  %".67" = and i1 %"cmp.3", %".66"
  store i1 %".67", ptr %"P0"
  ; ISETP.GT.OR P0, PT, R4, c[0x0][0x180], !P0
  %".70" = load i32, ptr %"R4"
  %".71" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".70", %"Arg_5"
  %".72" = or i1 %"cmp.4", %".71"
  store i1 %".72", ptr %"P0"
  ; @P0 BRA `(.L_x_15)
  %".75" = load i1, ptr %"P0"
  %".76" = icmp ne i1 %".75", 1
  br i1 %".76", label %".L_x_15", label %".text._Z6conv2dPfS_S_iiii_split_0x0130"
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
  %".85" = load float, ptr %"RZ"
  %".86" = bitcast ptr %"R12" to ptr
  store float %".85", ptr %".86"
  ; IADD3 R5, -R5, c[0x0][0x17c], RZ
  %".89" = load i32, ptr %"R5"
  %".90" = sub i32 0, %".89"
  %"add.7" = add i32 %".90", %"Arg_4"
  %"add.8" = add i32 %"add.7", 0
  store i32 %"add.8", ptr %"R5"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".93" = load i32, ptr %"R4"
  %".94" = and i32 %".93", 3
  store i32 %".94", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".97" = load i32, ptr %"R5"
  %".98" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".97", 3
  %".99" = and i1 %"cmp.5", %".98"
  store i1 %".99", ptr %"P0"
  ; IADD3 R26, R4, -c[0x0][0x17c], RZ
  %".102" = load i32, ptr %"R4"
  %".103" = sub i32 0, %"Arg_4"
  %"add.9" = add i32 %".102", %".103"
  %"add.10" = add i32 %"add.9", 0
  store i32 %"add.10", ptr %"R26"
  br label %".L_x_20"
.L_x_20:
  ; IMAD R11, R10, c[0x0][0x178], R3
  %".107" = load i32, ptr %"R10"
  %".108" = load i32, ptr %"R3"
  %"mul.5" = mul i32 %".107", %"Arg_3"
  %"add.11" = add i32 %"mul.5", %".108"
  store i32 %"add.11", ptr %"R11"
  ; MOV R8, RZ
  %".111" = load i32, ptr %"RZ"
  store i32 %".111", ptr %"R8"
  ; IMAD R9, R0, c[0x0][0x180], R10
  %".114" = load i32, ptr %"R0"
  %".115" = load i32, ptr %"R10"
  %"mul.6" = mul i32 %".114", %"Arg_5"
  %"add.12" = add i32 %"mul.6", %".115"
  store i32 %"add.12", ptr %"R9"
  ; IADD3 R10, R10, 0x1, RZ
  %".118" = load i32, ptr %"R10"
  %"add.13" = add i32 %".118", 1
  %"add.14" = add i32 %"add.13", 0
  store i32 %"add.14", ptr %"R10"
  ; IMAD R5, R11, c[0x0][0x178], R2
  %".121" = load i32, ptr %"R11"
  %".122" = load i32, ptr %"R2"
  %"mul.7" = mul i32 %".121", %"Arg_3"
  %"add.15" = add i32 %"mul.7", %".122"
  store i32 %"add.15", ptr %"R5"
  ; ISETP.GE.AND P1, PT, R10, c[0x0][0x180], PT
  %".125" = load i32, ptr %"R10"
  %".126" = load i1, ptr %"PT"
  %"cmp.6" = icmp sge i32 %".125", %"Arg_5"
  %".127" = and i1 %"cmp.6", %".126"
  store i1 %".127", ptr %"P1"
  br label %".L_x_19"
.L_x_19:
  ; IMAD R6, R9, c[0x0][0x17c], R8
  %".131" = load i32, ptr %"R9"
  %".132" = load i32, ptr %"R8"
  %"mul.8" = mul i32 %".131", %"Arg_4"
  %"add.16" = add i32 %"mul.8", %".132"
  store i32 %"add.16", ptr %"R6"
  ; UMOV UR4, URZ
  %".135" = load i32, ptr %"URZ"
  store i32 %".135", ptr %"UR4"
  ; ISETP.NE.AND P3, PT, R4, RZ, PT
  %".138" = load i32, ptr %"R4"
  %".139" = load i1, ptr %"PT"
  %"cmp.7" = icmp ne i32 %".138", 0
  %".140" = and i1 %"cmp.7", %".139"
  store i1 %".140", ptr %"P3"
  ; IMAD R29, R6, c[0x0][0x17c], RZ
  %".143" = load i32, ptr %"R6"
  %"mul.9" = mul i32 %".143", %"Arg_4"
  %"add.17" = add i32 %"mul.9", 0
  store i32 %"add.17", ptr %"R29"
  ; @!P0 BRA `(.L_x_16)
  %".146" = load i1, ptr %"P0"
  %".147" = icmp eq i1 %".146", 1
  br i1 %".147", label %".L_x_16", label %".L_x_19_split_0x0260"
.L_x_19_split_0x0260:
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD.IADD R13, R5, 0x1, R8
  %".152" = load i32, ptr %"R5"
  %".153" = load i32, ptr %"R8"
  %"mul.10" = mul i32 %".152", 1
  %"add.18" = add i32 %"mul.10", %".153"
  store i32 %"add.18", ptr %"R13"
  ; UMOV UR4, URZ
  %".156" = load i32, ptr %"URZ"
  store i32 %".156", ptr %"UR4"
  ; IMAD.WIDE R6, R29, R24, c[0x0][0x168]
  %".159" = load i32, ptr %"R29"
  %".160" = load i32, ptr %"R24"
  %"zext" = zext i32 %".159" to i64
  %"zext.1" = zext i32 %".160" to i64
  %"mul.11" = mul i64 %"zext", %"zext.1"
  %".161" = ptrtoint ptr %"Arg_1" to i64
  %"add.19" = add i64 %"mul.11", %".161"
  %".162" = and i64 %"add.19", 18446744069414584320
  %".163" = lshr i64 %".162", 32
  %"trunc32" = trunc i64 %".163" to i32
  %"trunc32.1" = trunc i64 %"add.19" to i32
  store i32 %"trunc32.1", ptr %"R6"
  store i32 %"trunc32", ptr %"R7"
  ; MOV R23, R6
  %".167" = load i32, ptr %"R6"
  store i32 %".167", ptr %"R23"
  br label %".L_x_17"
.L_x_17:
  ; IMAD.WIDE R14, R13, R24, c[0x0][0x160]
  %".171" = load i32, ptr %"R13"
  %".172" = load i32, ptr %"R24"
  %"zext.2" = zext i32 %".171" to i64
  %"zext.3" = zext i32 %".172" to i64
  %"mul.12" = mul i64 %"zext.2", %"zext.3"
  %".173" = ptrtoint ptr %"Arg_0" to i64
  %"add.20" = add i64 %"mul.12", %".173"
  %".174" = and i64 %"add.20", 18446744069414584320
  %".175" = lshr i64 %".174", 32
  %"trunc32.2" = trunc i64 %".175" to i32
  %"trunc32.3" = trunc i64 %"add.20" to i32
  store i32 %"trunc32.3", ptr %"R14"
  store i32 %"trunc32.2", ptr %"R15"
  ; MOV R31, c[0x0][0x178]
  store i32 %"Arg_3", ptr %"R31"
  ; IMAD.MOV.U32 R6, RZ, RZ, R23
  %".181" = load i32, ptr %"R23"
  %"mul.13" = mul i32 0, 0
  %"add.21" = add i32 %"mul.13", %".181"
  store i32 %"add.21", ptr %"R6"
  ; IMAD.WIDE R16, R31.reuse, 0x4, R14
  %".184" = load i32, ptr %"R31"
  %".185" = load i32, ptr %"R14"
  %"zext.4" = zext i32 %".184" to i64
  %"zext.5" = zext i32 4 to i64
  %"mul.14" = mul i64 %"zext.4", %"zext.5"
  %"zext.6" = zext i32 %".185" to i64
  %"add.22" = add i64 %"mul.14", %"zext.6"
  %".186" = and i64 %"add.22", 18446744069414584320
  %".187" = lshr i64 %".186", 32
  %"trunc32.4" = trunc i64 %".187" to i32
  %"trunc32.5" = trunc i64 %"add.22" to i32
  store i32 %"trunc32.5", ptr %"R16"
  store i32 %"trunc32.4", ptr %"R17"
  ; LDG.E.SYS R14, [R14]
  %".191" = load i32, ptr %"R14"
  %"zext.7" = zext i32 %".191" to i64
  %".192" = load i32, ptr %"R15"
  %"zext.8" = zext i32 %".192" to i64
  %"shl" = shl i64 %"zext.8", 32
  %"or" = or i64 %"shl", %"zext.7"
  %".193" = inttoptr i64 %"or" to ptr
  %".194" = ptrtoint ptr %".193" to i64
  %".195" = add i64 %".194", 0
  %"for_LDG" = inttoptr i64 %".195" to ptr
  %".196" = load float, ptr %"for_LDG"
  %".197" = bitcast ptr %"R14" to ptr
  store float %".196", ptr %".197"
  ; LDG.E.SYS R23, [R6]
  %".200" = load i32, ptr %"R6"
  %"zext.9" = zext i32 %".200" to i64
  %".201" = load i32, ptr %"R7"
  %"zext.10" = zext i32 %".201" to i64
  %"shl.1" = shl i64 %"zext.10", 32
  %"or.1" = or i64 %"shl.1", %"zext.9"
  %".202" = inttoptr i64 %"or.1" to ptr
  %".203" = ptrtoint ptr %".202" to i64
  %".204" = add i64 %".203", 0
  %"for_LDG.1" = inttoptr i64 %".204" to ptr
  %".205" = load float, ptr %"for_LDG.1"
  %".206" = bitcast ptr %"R23" to ptr
  store float %".205", ptr %".206"
  ; IMAD.WIDE R18, R31, 0x4, R16
  %".209" = load i32, ptr %"R31"
  %".210" = load i32, ptr %"R16"
  %"zext.11" = zext i32 %".209" to i64
  %"zext.12" = zext i32 4 to i64
  %"mul.15" = mul i64 %"zext.11", %"zext.12"
  %"zext.13" = zext i32 %".210" to i64
  %"add.23" = add i64 %"mul.15", %"zext.13"
  %".211" = and i64 %"add.23", 18446744069414584320
  %".212" = lshr i64 %".211", 32
  %"trunc32.6" = trunc i64 %".212" to i32
  %"trunc32.7" = trunc i64 %"add.23" to i32
  store i32 %"trunc32.7", ptr %"R18"
  store i32 %"trunc32.6", ptr %"R19"
  ; LDG.E.SYS R16, [R16]
  %".216" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".216" to i64
  %".217" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".217" to i64
  %"shl.2" = shl i64 %"zext.15", 32
  %"or.2" = or i64 %"shl.2", %"zext.14"
  %".218" = inttoptr i64 %"or.2" to ptr
  %".219" = ptrtoint ptr %".218" to i64
  %".220" = add i64 %".219", 0
  %"for_LDG.2" = inttoptr i64 %".220" to ptr
  %".221" = load float, ptr %"for_LDG.2"
  %".222" = bitcast ptr %"R16" to ptr
  store float %".221", ptr %".222"
  ; IMAD.WIDE R20, R31.reuse, 0x4, R18
  %".225" = load i32, ptr %"R31"
  %".226" = load i32, ptr %"R18"
  %"zext.16" = zext i32 %".225" to i64
  %"zext.17" = zext i32 4 to i64
  %"mul.16" = mul i64 %"zext.16", %"zext.17"
  %"zext.18" = zext i32 %".226" to i64
  %"add.24" = add i64 %"mul.16", %"zext.18"
  %".227" = and i64 %"add.24", 18446744069414584320
  %".228" = lshr i64 %".227", 32
  %"trunc32.8" = trunc i64 %".228" to i32
  %"trunc32.9" = trunc i64 %"add.24" to i32
  store i32 %"trunc32.9", ptr %"R20"
  store i32 %"trunc32.8", ptr %"R21"
  ; LDG.E.SYS R22, [R6+0x4]
  %".232" = load i32, ptr %"R6"
  %"zext.19" = zext i32 %".232" to i64
  %".233" = load i32, ptr %"R7"
  %"zext.20" = zext i32 %".233" to i64
  %"shl.3" = shl i64 %"zext.20", 32
  %"or.3" = or i64 %"shl.3", %"zext.19"
  %".234" = inttoptr i64 %"or.3" to ptr
  %".235" = ptrtoint ptr %".234" to i64
  %".236" = add i64 %".235", 4
  %"for_LDG.3" = inttoptr i64 %".236" to ptr
  %".237" = load float, ptr %"for_LDG.3"
  %".238" = bitcast ptr %"R22" to ptr
  store float %".237", ptr %".238"
  ; LDG.E.SYS R18, [R18]
  %".241" = load i32, ptr %"R18"
  %"zext.21" = zext i32 %".241" to i64
  %".242" = load i32, ptr %"R19"
  %"zext.22" = zext i32 %".242" to i64
  %"shl.4" = shl i64 %"zext.22", 32
  %"or.4" = or i64 %"shl.4", %"zext.21"
  %".243" = inttoptr i64 %"or.4" to ptr
  %".244" = ptrtoint ptr %".243" to i64
  %".245" = add i64 %".244", 0
  %"for_LDG.4" = inttoptr i64 %".245" to ptr
  %".246" = load float, ptr %"for_LDG.4"
  %".247" = bitcast ptr %"R18" to ptr
  store float %".246", ptr %".247"
  ; LDG.E.SYS R25, [R6+0x8]
  %".250" = load i32, ptr %"R6"
  %"zext.23" = zext i32 %".250" to i64
  %".251" = load i32, ptr %"R7"
  %"zext.24" = zext i32 %".251" to i64
  %"shl.5" = shl i64 %"zext.24", 32
  %"or.5" = or i64 %"shl.5", %"zext.23"
  %".252" = inttoptr i64 %"or.5" to ptr
  %".253" = ptrtoint ptr %".252" to i64
  %".254" = add i64 %".253", 8
  %"for_LDG.5" = inttoptr i64 %".254" to ptr
  %".255" = load float, ptr %"for_LDG.5"
  %".256" = bitcast ptr %"R25" to ptr
  store float %".255", ptr %".256"
  ; LDG.E.SYS R20, [R20]
  %".259" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".259" to i64
  %".260" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".260" to i64
  %"shl.6" = shl i64 %"zext.26", 32
  %"or.6" = or i64 %"shl.6", %"zext.25"
  %".261" = inttoptr i64 %"or.6" to ptr
  %".262" = ptrtoint ptr %".261" to i64
  %".263" = add i64 %".262", 0
  %"for_LDG.6" = inttoptr i64 %".263" to ptr
  %".264" = load float, ptr %"for_LDG.6"
  %".265" = bitcast ptr %"R20" to ptr
  store float %".264", ptr %".265"
  ; LDG.E.SYS R27, [R6+0xc]
  %".268" = load i32, ptr %"R6"
  %"zext.27" = zext i32 %".268" to i64
  %".269" = load i32, ptr %"R7"
  %"zext.28" = zext i32 %".269" to i64
  %"shl.7" = shl i64 %"zext.28", 32
  %"or.7" = or i64 %"shl.7", %"zext.27"
  %".270" = inttoptr i64 %"or.7" to ptr
  %".271" = ptrtoint ptr %".270" to i64
  %".272" = add i64 %".271", 12
  %"for_LDG.7" = inttoptr i64 %".272" to ptr
  %".273" = load float, ptr %"for_LDG.7"
  %".274" = bitcast ptr %"R27" to ptr
  store float %".273", ptr %".274"
  ; UIADD3 UR4, UR4, 0x4, URZ
  %".277" = load i32, ptr %"UR4"
  %"add.25" = add i32 %".277", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"UR4"
  ; LEA R13, R31, R13, 0x2
  %".280" = load i32, ptr %"R31"
  %".281" = load i32, ptr %"R13"
  %"shl.8" = shl i32 %".280", 2
  %"add.27" = add i32 %"shl.8", %".281"
  store i32 %"add.27", ptr %"R13"
  ; FFMA R23, R23, R14, R12
  %".284" = load float, ptr %"R23"
  %".285" = load float, ptr %"R14"
  %".286" = load float, ptr %"R12"
  %"fmul" = fmul float %".284", %".285"
  %"fadd" = fadd float %"fmul", %".286"
  %".287" = bitcast ptr %"R23" to ptr
  store float %"fadd", ptr %".287"
  ; IADD3 R12, R26, UR4, RZ
  %".290" = load i32, ptr %"R26"
  %".291" = load i32, ptr %"UR4"
  %"add.28" = add i32 %".290", %".291"
  %"add.29" = add i32 %"add.28", 0
  store i32 %"add.29", ptr %"R12"
  ; ISETP.NE.AND P2, PT, R12, RZ, PT
  %".294" = load i32, ptr %"R12"
  %".295" = load i1, ptr %"PT"
  %"cmp.8" = icmp ne i32 %".294", 0
  %".296" = and i1 %"cmp.8", %".295"
  store i1 %".296", ptr %"P2"
  ; FFMA R22, R22, R16, R23
  %".299" = load float, ptr %"R22"
  %".300" = load float, ptr %"R16"
  %".301" = load float, ptr %"R23"
  %"fmul.1" = fmul float %".299", %".300"
  %"fadd.1" = fadd float %"fmul.1", %".301"
  %".302" = bitcast ptr %"R22" to ptr
  store float %"fadd.1", ptr %".302"
  ; IADD3 R23, P4, R6, 0x10, RZ
  %".305" = load i32, ptr %"R6"
  %"add.30" = add i32 %".305", 16
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R23"
  %"carry" = icmp ult i32 %"add.31", %".305"
  store i1 %"carry", ptr %"P4"
  ; FFMA R22, R25, R18, R22
  %".309" = load float, ptr %"R25"
  %".310" = load float, ptr %"R18"
  %".311" = load float, ptr %"R22"
  %"fmul.2" = fmul float %".309", %".310"
  %"fadd.2" = fadd float %"fmul.2", %".311"
  %".312" = bitcast ptr %"R22" to ptr
  store float %"fadd.2", ptr %".312"
  ; IADD3.X R7, RZ, R7, RZ, P4, !PT
  %".315" = load i32, ptr %"R7"
  %".316" = load i1, ptr %"P4"
  %".317" = sub i1 0, %".316"
  %".318" = zext i1 %".317" to i32
  %"add.32" = add i32 0, %".315"
  %"add.33" = add i32 %"add.32", 0
  %"add.34" = add i32 %"add.33", %".318"
  store i32 %"add.34", ptr %"R7"
  ; FFMA R12, R27, R20, R22
  %".321" = load float, ptr %"R27"
  %".322" = load float, ptr %"R20"
  %".323" = load float, ptr %"R22"
  %"fmul.3" = fmul float %".321", %".322"
  %"fadd.3" = fadd float %"fmul.3", %".323"
  %".324" = bitcast ptr %"R12" to ptr
  store float %"fadd.3", ptr %".324"
  ; @P2 BRA `(.L_x_17)
  %".327" = load i1, ptr %"P2"
  %".328" = icmp ne i1 %".327", 1
  br i1 %".328", label %".L_x_17", label %".L_x_16"
.L_x_16:
  ; IMAD.IADD R14, R2, 0x1, R8
  %".331" = load i32, ptr %"R2"
  %".332" = load i32, ptr %"R8"
  %"mul.17" = mul i32 %".331", 1
  %"add.35" = add i32 %"mul.17", %".332"
  store i32 %"add.35", ptr %"R14"
  ; @!P3 BRA `(.L_x_18)
  %".335" = load i1, ptr %"P3"
  %".336" = icmp eq i1 %".335", 1
  br i1 %".336", label %".L_x_18", label %".L_x_16_split_0x0460"
.L_x_16_split_0x0460:
  ; IADD3 R15, R11, UR4, RZ
  %".339" = load i32, ptr %"R11"
  %".340" = load i32, ptr %"UR4"
  %"add.36" = add i32 %".339", %".340"
  %"add.37" = add i32 %"add.36", 0
  store i32 %"add.37", ptr %"R15"
  ; IADD3 R16, R29, UR4, RZ
  %".343" = load i32, ptr %"R29"
  %".344" = load i32, ptr %"UR4"
  %"add.38" = add i32 %".343", %".344"
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R16"
  ; MOV R19, 0x4
  store i32 4, ptr %"R19"
  ; IMAD R6, R15, c[0x0][0x178], R14
  %".349" = load i32, ptr %"R15"
  %".350" = load i32, ptr %"R14"
  %"mul.18" = mul i32 %".349", %"Arg_3"
  %"add.40" = add i32 %"mul.18", %".350"
  store i32 %"add.40", ptr %"R6"
  ; IMAD.WIDE R16, R16, R19, c[0x0][0x168]
  %".353" = load i32, ptr %"R16"
  %".354" = load i32, ptr %"R19"
  %"zext.29" = zext i32 %".353" to i64
  %"zext.30" = zext i32 %".354" to i64
  %"mul.19" = mul i64 %"zext.29", %"zext.30"
  %".355" = ptrtoint ptr %"Arg_1" to i64
  %"add.41" = add i64 %"mul.19", %".355"
  %".356" = and i64 %"add.41", 18446744069414584320
  %".357" = lshr i64 %".356", 32
  %"trunc32.10" = trunc i64 %".357" to i32
  %"trunc32.11" = trunc i64 %"add.41" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".361" = load i32, ptr %"R6"
  %".362" = load i32, ptr %"R19"
  %"zext.31" = zext i32 %".361" to i64
  %"zext.32" = zext i32 %".362" to i64
  %"mul.20" = mul i64 %"zext.31", %"zext.32"
  %".363" = ptrtoint ptr %"Arg_0" to i64
  %"add.42" = add i64 %"mul.20", %".363"
  %".364" = and i64 %"add.42", 18446744069414584320
  %".365" = lshr i64 %".364", 32
  %"trunc32.12" = trunc i64 %".365" to i32
  %"trunc32.13" = trunc i64 %"add.42" to i32
  store i32 %"trunc32.13", ptr %"R6"
  store i32 %"trunc32.12", ptr %"R7"
  ; LDG.E.SYS R13, [R16]
  %".369" = load i32, ptr %"R16"
  %"zext.33" = zext i32 %".369" to i64
  %".370" = load i32, ptr %"R17"
  %"zext.34" = zext i32 %".370" to i64
  %"shl.9" = shl i64 %"zext.34", 32
  %"or.8" = or i64 %"shl.9", %"zext.33"
  %".371" = inttoptr i64 %"or.8" to ptr
  %".372" = ptrtoint ptr %".371" to i64
  %".373" = add i64 %".372", 0
  %"for_LDG.8" = inttoptr i64 %".373" to ptr
  %".374" = load float, ptr %"for_LDG.8"
  %".375" = bitcast ptr %"R13" to ptr
  store float %".374", ptr %".375"
  ; LDG.E.SYS R6, [R6]
  %".378" = load i32, ptr %"R6"
  %"zext.35" = zext i32 %".378" to i64
  %".379" = load i32, ptr %"R7"
  %"zext.36" = zext i32 %".379" to i64
  %"shl.10" = shl i64 %"zext.36", 32
  %"or.9" = or i64 %"shl.10", %"zext.35"
  %".380" = inttoptr i64 %"or.9" to ptr
  %".381" = ptrtoint ptr %".380" to i64
  %".382" = add i64 %".381", 0
  %"for_LDG.9" = inttoptr i64 %".382" to ptr
  %".383" = load float, ptr %"for_LDG.9"
  %".384" = bitcast ptr %"R6" to ptr
  store float %".383", ptr %".384"
  ; ISETP.NE.AND P2, PT, R4, 0x1, PT
  %".387" = load i32, ptr %"R4"
  %".388" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".387", 1
  %".389" = and i1 %"cmp.9", %".388"
  store i1 %".389", ptr %"P2"
  ; FFMA R12, R13, R6, R12
  %".392" = load float, ptr %"R13"
  %".393" = load float, ptr %"R6"
  %".394" = load float, ptr %"R12"
  %"fmul.4" = fmul float %".392", %".393"
  %"fadd.4" = fadd float %"fmul.4", %".394"
  %".395" = bitcast ptr %"R12" to ptr
  store float %"fadd.4", ptr %".395"
  ; @!P2 BRA `(.L_x_18)
  %".398" = load i1, ptr %"P2"
  %".399" = icmp eq i1 %".398", 1
  br i1 %".399", label %".L_x_18", label %".L_x_16_split_0x0510"
.L_x_16_split_0x0510:
  ; ISETP.NE.AND P2, PT, R4, 0x2, PT
  %".402" = load i32, ptr %"R4"
  %".403" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".402", 2
  %".404" = and i1 %"cmp.10", %".403"
  store i1 %".404", ptr %"P2"
  ; LDG.E.SYS R13, [R16+0x4]
  %".407" = load i32, ptr %"R16"
  %"zext.37" = zext i32 %".407" to i64
  %".408" = load i32, ptr %"R17"
  %"zext.38" = zext i32 %".408" to i64
  %"shl.11" = shl i64 %"zext.38", 32
  %"or.10" = or i64 %"shl.11", %"zext.37"
  %".409" = inttoptr i64 %"or.10" to ptr
  %".410" = ptrtoint ptr %".409" to i64
  %".411" = add i64 %".410", 4
  %"for_LDG.10" = inttoptr i64 %".411" to ptr
  %".412" = load float, ptr %"for_LDG.10"
  %".413" = bitcast ptr %"R13" to ptr
  store float %".412", ptr %".413"
  ; IADD3 R6, R15, 0x1, RZ
  %".416" = load i32, ptr %"R15"
  %"add.43" = add i32 %".416", 1
  %"add.44" = add i32 %"add.43", 0
  store i32 %"add.44", ptr %"R6"
  ; IMAD R6, R6, c[0x0][0x178], R14
  %".419" = load i32, ptr %"R6"
  %".420" = load i32, ptr %"R14"
  %"mul.21" = mul i32 %".419", %"Arg_3"
  %"add.45" = add i32 %"mul.21", %".420"
  store i32 %"add.45", ptr %"R6"
  ; @P2 IADD3 R7, R15, 0x2, RZ
  %".423" = load i1, ptr %"P2"
  %".424" = icmp ne i1 %".423", 1
  br i1 %".424", label %".L_x_16_split_0x0510_conditionalExpr_0x0550", label %".L_x_16_split_0x0560"
.L_x_16_split_0x0510_conditionalExpr_0x0550:
  ; IADD3 R7, R15, 0x2, RZ
  %".427" = load i32, ptr %"R15"
  %"add.46" = add i32 %".427", 2
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R7"
  ; BRA `(.L_x_16_split_0x0560)
  br label %".L_x_16_split_0x0560"
.L_x_16_split_0x0560:
  ; @P2 IMAD R14, R7, c[0x0][0x178], R14
  %".432" = load i1, ptr %"P2"
  %".433" = icmp ne i1 %".432", 1
  br i1 %".433", label %".L_x_16_split_0x0560_conditionalExpr_0x0560", label %".L_x_16_split_0x0570"
.L_x_16_split_0x0560_conditionalExpr_0x0560:
  ; IMAD R14, R7, c[0x0][0x178], R14
  %".436" = load i32, ptr %"R7"
  %".437" = load i32, ptr %"R14"
  %"mul.22" = mul i32 %".436", %"Arg_3"
  %"add.48" = add i32 %"mul.22", %".437"
  store i32 %"add.48", ptr %"R14"
  ; BRA `(.L_x_16_split_0x0570)
  br label %".L_x_16_split_0x0570"
.L_x_16_split_0x0570:
  ; IMAD.WIDE R6, R6, R19, c[0x0][0x160]
  %".442" = load i32, ptr %"R6"
  %".443" = load i32, ptr %"R19"
  %"zext.39" = zext i32 %".442" to i64
  %"zext.40" = zext i32 %".443" to i64
  %"mul.23" = mul i64 %"zext.39", %"zext.40"
  %".444" = ptrtoint ptr %"Arg_0" to i64
  %"add.49" = add i64 %"mul.23", %".444"
  %".445" = and i64 %"add.49", 18446744069414584320
  %".446" = lshr i64 %".445", 32
  %"trunc32.14" = trunc i64 %".446" to i32
  %"trunc32.15" = trunc i64 %"add.49" to i32
  store i32 %"trunc32.15", ptr %"R6"
  store i32 %"trunc32.14", ptr %"R7"
  ; @P2 IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".450" = load i1, ptr %"P2"
  %".451" = icmp ne i1 %".450", 1
  br i1 %".451", label %".L_x_16_split_0x0570_conditionalExpr_0x0580", label %".L_x_16_split_0x0590"
.L_x_16_split_0x0570_conditionalExpr_0x0580:
  ; IMAD.WIDE R14, R14, R19, c[0x0][0x160]
  %".454" = load i32, ptr %"R14"
  %".455" = load i32, ptr %"R19"
  %"zext.41" = zext i32 %".454" to i64
  %"zext.42" = zext i32 %".455" to i64
  %"mul.24" = mul i64 %"zext.41", %"zext.42"
  %".456" = ptrtoint ptr %"Arg_0" to i64
  %"add.50" = add i64 %"mul.24", %".456"
  %".457" = and i64 %"add.50", 18446744069414584320
  %".458" = lshr i64 %".457", 32
  %"trunc32.16" = trunc i64 %".458" to i32
  %"trunc32.17" = trunc i64 %"add.50" to i32
  store i32 %"trunc32.17", ptr %"R14"
  store i32 %"trunc32.16", ptr %"R15"
  ; BRA `(.L_x_16_split_0x0590)
  br label %".L_x_16_split_0x0590"
.L_x_16_split_0x0590:
  ; @P2 LDG.E.SYS R19, [R16+0x8]
  %".464" = load i1, ptr %"P2"
  %".465" = icmp ne i1 %".464", 1
  br i1 %".465", label %".L_x_16_split_0x0590_conditionalExpr_0x0590", label %".L_x_16_split_0x05a0"
.L_x_16_split_0x0590_conditionalExpr_0x0590:
  ; LDG.E.SYS R19, [R16+0x8]
  %".468" = load i32, ptr %"R16"
  %"zext.43" = zext i32 %".468" to i64
  %".469" = load i32, ptr %"R17"
  %"zext.44" = zext i32 %".469" to i64
  %"shl.12" = shl i64 %"zext.44", 32
  %"or.11" = or i64 %"shl.12", %"zext.43"
  %".470" = inttoptr i64 %"or.11" to ptr
  %".471" = ptrtoint ptr %".470" to i64
  %".472" = add i64 %".471", 8
  %"for_LDG.11" = inttoptr i64 %".472" to ptr
  %".473" = load float, ptr %"for_LDG.11"
  %".474" = bitcast ptr %"R19" to ptr
  store float %".473", ptr %".474"
  ; BRA `(.L_x_16_split_0x05a0)
  br label %".L_x_16_split_0x05a0"
.L_x_16_split_0x05a0:
  ; LDG.E.SYS R6, [R6]
  %".479" = load i32, ptr %"R6"
  %"zext.45" = zext i32 %".479" to i64
  %".480" = load i32, ptr %"R7"
  %"zext.46" = zext i32 %".480" to i64
  %"shl.13" = shl i64 %"zext.46", 32
  %"or.12" = or i64 %"shl.13", %"zext.45"
  %".481" = inttoptr i64 %"or.12" to ptr
  %".482" = ptrtoint ptr %".481" to i64
  %".483" = add i64 %".482", 0
  %"for_LDG.12" = inttoptr i64 %".483" to ptr
  %".484" = load float, ptr %"for_LDG.12"
  %".485" = bitcast ptr %"R6" to ptr
  store float %".484", ptr %".485"
  ; @P2 LDG.E.SYS R14, [R14]
  %".488" = load i1, ptr %"P2"
  %".489" = icmp ne i1 %".488", 1
  br i1 %".489", label %".L_x_16_split_0x05a0_conditionalExpr_0x05b0", label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05a0_conditionalExpr_0x05b0:
  ; LDG.E.SYS R14, [R14]
  %".492" = load i32, ptr %"R14"
  %"zext.47" = zext i32 %".492" to i64
  %".493" = load i32, ptr %"R15"
  %"zext.48" = zext i32 %".493" to i64
  %"shl.14" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.14", %"zext.47"
  %".494" = inttoptr i64 %"or.13" to ptr
  %".495" = ptrtoint ptr %".494" to i64
  %".496" = add i64 %".495", 0
  %"for_LDG.13" = inttoptr i64 %".496" to ptr
  %".497" = load float, ptr %"for_LDG.13"
  %".498" = bitcast ptr %"R14" to ptr
  store float %".497", ptr %".498"
  ; BRA `(.L_x_16_split_0x05c0)
  br label %".L_x_16_split_0x05c0"
.L_x_16_split_0x05c0:
  ; FFMA R12, R13, R6, R12
  %".503" = load float, ptr %"R13"
  %".504" = load float, ptr %"R6"
  %".505" = load float, ptr %"R12"
  %"fmul.5" = fmul float %".503", %".504"
  %"fadd.5" = fadd float %"fmul.5", %".505"
  %".506" = bitcast ptr %"R12" to ptr
  store float %"fadd.5", ptr %".506"
  ; @P2 FFMA R12, R19, R14, R12
  %".509" = load i1, ptr %"P2"
  %".510" = icmp ne i1 %".509", 1
  br i1 %".510", label %".L_x_16_split_0x05c0_conditionalExpr_0x05d0", label %".L_x_18"
.L_x_16_split_0x05c0_conditionalExpr_0x05d0:
  ; FFMA R12, R19, R14, R12
  %".513" = load float, ptr %"R19"
  %".514" = load float, ptr %"R14"
  %".515" = load float, ptr %"R12"
  %"fmul.6" = fmul float %".513", %".514"
  %"fadd.6" = fadd float %"fmul.6", %".515"
  %".516" = bitcast ptr %"R12" to ptr
  store float %"fadd.6", ptr %".516"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_18:
  ; IADD3 R8, R8, 0x1, RZ
  %".521" = load i32, ptr %"R8"
  %"add.51" = add i32 %".521", 1
  %"add.52" = add i32 %"add.51", 0
  store i32 %"add.52", ptr %"R8"
  ; ISETP.GE.AND P2, PT, R8, c[0x0][0x17c], PT
  %".524" = load i32, ptr %"R8"
  %".525" = load i1, ptr %"PT"
  %"cmp.11" = icmp sge i32 %".524", %"Arg_4"
  %".526" = and i1 %"cmp.11", %".525"
  store i1 %".526", ptr %"P2"
  ; @!P2 BRA `(.L_x_19)
  %".529" = load i1, ptr %"P2"
  %".530" = icmp eq i1 %".529", 1
  br i1 %".530", label %".L_x_19", label %".L_x_18_split_0x0610"
.L_x_18_split_0x0610:
  ; @!P1 BRA `(.L_x_20)
  %".533" = load i1, ptr %"P1"
  %".534" = icmp eq i1 %".533", 1
  br i1 %".534", label %".L_x_20", label %".L_x_15"
.L_x_15:
  ; UIADD3 UR4, UR5, 0x1, URZ
  %".537" = load i32, ptr %"UR5"
  %"add.53" = add i32 %".537", 1
  %"add.54" = add i32 %"add.53", 0
  store i32 %"add.54", ptr %"UR4"
  ; IMAD R3, R0, UR4, R3
  %".540" = load i32, ptr %"R0"
  %".541" = load i32, ptr %"UR4"
  %".542" = load i32, ptr %"R3"
  %"mul.25" = mul i32 %".540", %".541"
  %"add.55" = add i32 %"mul.25", %".542"
  store i32 %"add.55", ptr %"R3"
  ; MOV R0, 0x4
  store i32 4, ptr %"R0"
  ; IMAD R3, R3, UR4, R2
  %".547" = load i32, ptr %"R3"
  %".548" = load i32, ptr %"UR4"
  %".549" = load i32, ptr %"R2"
  %"mul.26" = mul i32 %".547", %".548"
  %"add.56" = add i32 %"mul.26", %".549"
  store i32 %"add.56", ptr %"R3"
  ; IMAD.WIDE R2, R3, R0, c[0x0][0x170]
  %".552" = load i32, ptr %"R3"
  %".553" = load i32, ptr %"R0"
  %"zext.49" = zext i32 %".552" to i64
  %"zext.50" = zext i32 %".553" to i64
  %"mul.27" = mul i64 %"zext.49", %"zext.50"
  %".554" = ptrtoint ptr %"Arg_2" to i64
  %"add.57" = add i64 %"mul.27", %".554"
  %".555" = and i64 %"add.57", 18446744069414584320
  %".556" = lshr i64 %".555", 32
  %"trunc32.18" = trunc i64 %".556" to i32
  %"trunc32.19" = trunc i64 %"add.57" to i32
  store i32 %"trunc32.19", ptr %"R2"
  store i32 %"trunc32.18", ptr %"R3"
  ; STG.E.SYS [R2], R12
  %".560" = load i32, ptr %"R12"
  %".561" = load i32, ptr %"R2"
  %"zext.51" = zext i32 %".561" to i64
  %".562" = load i32, ptr %"R3"
  %"zext.52" = zext i32 %".562" to i64
  %"shl.15" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.15", %"zext.51"
  %".563" = inttoptr i64 %"or.14" to ptr
  %".564" = ptrtoint ptr %".563" to i64
  %".565" = add i64 %".564", 0
  %"for_STG" = inttoptr i64 %".565" to ptr
  store i32 %".560", ptr %"for_STG"
  ; EXIT
  br label %"ExitFunction"
.L_x_21:
  ; BRA `(.L_x_21)
  br label %".L_x_21"
ExitFunction:
  ret void
}

