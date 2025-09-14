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

define void @"_Z11gru_forwardPfS_S_S_iii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6")
{
Entry_.text._Z11gru_forwardPfS_S_S_iii:
  %"R1" = alloca i32, i32 1
  %"R14" = alloca i32, i32 1
  %"R0" = alloca i32, i32 1
  %"R3" = alloca i32, i32 1
  %"P0" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"RZ" = alloca i32, i32 1
  %"R33" = alloca i32, i32 1
  %"R15" = alloca i32, i32 1
  %"R26" = alloca i32, i32 1
  %"R30" = alloca i32, i32 1
  %"R5" = alloca i32, i32 1
  %"R28" = alloca i32, i32 1
  %"R2" = alloca i32, i32 1
  %"R32" = alloca i32, i32 1
  %"R4" = alloca i32, i32 1
  %"R6" = alloca i32, i32 1
  %"R7" = alloca i32, i32 1
  %"R8" = alloca i32, i32 1
  %"P4" = alloca i1, i32 1
  %"P3" = alloca i1, i32 1
  %"R52" = alloca i32, i32 1
  %"R54" = alloca i32, i32 1
  %"R11" = alloca i32, i32 1
  %"R9" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
  %"R25" = alloca i32, i32 1
  %"R18" = alloca i32, i32 1
  %"R23" = alloca i32, i32 1
  %"R38" = alloca i32, i32 1
  %"R16" = alloca i32, i32 1
  %"R20" = alloca i32, i32 1
  %"R57" = alloca i32, i32 1
  %"R56" = alloca i32, i32 1
  %"R58" = alloca i32, i32 1
  %"R24" = alloca i32, i32 1
  %"R47" = alloca i32, i32 1
  %"R49" = alloca i32, i32 1
  %"R22" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
  %"R45" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R41" = alloca i32, i32 1
  %"R51" = alloca i32, i32 1
  %"R35" = alloca i32, i32 1
  %"R40" = alloca i32, i32 1
  %"R37" = alloca i32, i32 1
  %"R12" = alloca i32, i32 1
  %"R34" = alloca i32, i32 1
  %"R10" = alloca i32, i32 1
  %"R36" = alloca i32, i32 1
  %"R17" = alloca i32, i32 1
  %"R19" = alloca i32, i32 1
  %"R21" = alloca i32, i32 1
  %"R42" = alloca i32, i32 1
  %"R44" = alloca i32, i32 1
  %"R46" = alloca i32, i32 1
  %"R48" = alloca i32, i32 1
  %"R50" = alloca i32, i32 1
  %"R53" = alloca i32, i32 1
  %"R59" = alloca i32, i32 1
  %"R55" = alloca i32, i32 1
  %"R61" = alloca i32, i32 1
  %"R60" = alloca i32, i32 1
  %"R39" = alloca i32, i32 1
  %"P2" = alloca i1, i32 1
  %"R27" = alloca i32, i32 1
  %"R29" = alloca i32, i32 1
  %"R31" = alloca i32, i32 1
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
  ; S2R R14, SR_CTAID.X
  %"nvvm_ctaid_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()
  store i32 %"nvvm_ctaid_x", ptr %"R14"
  ; MOV R0, c[0x0][0x188]
  store i32 %"Arg_6", ptr %"R0"
  ; S2R R3, SR_TID.X
  %"ThreadIdx" = call i32 @"thread_idx"()
  store i32 %"ThreadIdx", ptr %"R3"
  ; ISETP.GE.AND P0, PT, R0, 0x1, PT
  %".22" = load i32, ptr %"R0"
  %".23" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".22", 1
  %".24" = and i1 %"cmp", %".23"
  store i1 %".24", ptr %"P0"
  ; IMAD R14, R14, c[0x0][0x0], R3
  %".27" = load i32, ptr %"R14"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".28" = load i32, ptr %"R3"
  %"mul" = mul i32 %".27", %"nvvm_blockdim_x"
  %"add" = add i32 %"mul", %".28"
  store i32 %"add", ptr %"R14"
  ; ISETP.GE.OR P0, PT, R14, c[0x0][0x184], !P0
  %".31" = load i32, ptr %"R14"
  %".32" = load i1, ptr %"PT"
  %"cmp.1" = icmp sge i32 %".31", %"Arg_5"
  %".33" = or i1 %"cmp.1", %".32"
  store i1 %".33", ptr %"P0"
  ; @P0 EXIT
  %".36" = load i1, ptr %"P0"
  %".37" = icmp ne i1 %".36", 1
  br i1 %".37", label %".text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0080"
.text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070:
  ; EXIT
  br label %"ExitFunction"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0080:
  ; ISETP.LT.AND P0, PT, RZ, c[0x0][0x180], PT
  %".42" = load i1, ptr %"PT"
  %"cmp.2" = icmp slt i32 0, %"Arg_4"
  %".43" = and i1 %"cmp.2", %".42"
  store i1 %".43", ptr %"P0"
  ; IMAD R0, R14.reuse, c[0x0][0x184], RZ
  %".46" = load i32, ptr %"R14"
  %"mul.1" = mul i32 %".46", %"Arg_5"
  %"add.1" = add i32 %"mul.1", 0
  store i32 %"add.1", ptr %"R0"
  ; MOV R33, 0x4
  store i32 4, ptr %"R33"
  ; MOV R3, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R3"
  ; MOV R15, c[0x0][0x180]
  store i32 %"Arg_4", ptr %"R15"
  ; IMAD.WIDE R26, R14.reuse, R33.reuse, c[0x0][0x178]
  %".55" = load i32, ptr %"R14"
  %".56" = load i32, ptr %"R33"
  %"zext" = zext i32 %".55" to i64
  %"zext.1" = zext i32 %".56" to i64
  %"mul.2" = mul i64 %"zext", %"zext.1"
  %".57" = ptrtoint ptr %"Arg_3" to i64
  %"add.2" = add i64 %"mul.2", %".57"
  %".58" = and i64 %"add.2", 18446744069414584320
  %".59" = lshr i64 %".58", 32
  %"trunc32" = trunc i64 %".59" to i32
  %"trunc32.1" = trunc i64 %"add.2" to i32
  store i32 %"trunc32.1", ptr %"R26"
  store i32 %"trunc32", ptr %"R27"
  ; LEA R30, R3, R14, 0x1
  %".63" = load i32, ptr %"R3"
  %".64" = load i32, ptr %"R14"
  %"shl" = shl i32 %".63", 1
  %"add.3" = add i32 %"shl", %".64"
  store i32 %"add.3", ptr %"R30"
  ; MOV R5, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R5"
  ; IMAD.WIDE R28, R14, R33, c[0x0][0x168]
  %".69" = load i32, ptr %"R14"
  %".70" = load i32, ptr %"R33"
  %"zext.2" = zext i32 %".69" to i64
  %"zext.3" = zext i32 %".70" to i64
  %"mul.3" = mul i64 %"zext.2", %"zext.3"
  %".71" = ptrtoint ptr %"Arg_1" to i64
  %"add.4" = add i64 %"mul.3", %".71"
  %".72" = and i64 %"add.4", 18446744069414584320
  %".73" = lshr i64 %".72", 32
  %"trunc32.2" = trunc i64 %".73" to i32
  %"trunc32.3" = trunc i64 %"add.4" to i32
  store i32 %"trunc32.3", ptr %"R28"
  store i32 %"trunc32.2", ptr %"R29"
  ; LEA R3, R15, R15, 0x2
  %".77" = load i32, ptr %"R15"
  %".78" = load i32, ptr %"R15"
  %"shl.1" = shl i32 %".77", 2
  %"add.5" = add i32 %"shl.1", %".78"
  store i32 %"add.5", ptr %"R3"
  ; IMAD.WIDE R30, R30, R33, c[0x0][0x178]
  %".81" = load i32, ptr %"R30"
  %".82" = load i32, ptr %"R33"
  %"zext.4" = zext i32 %".81" to i64
  %"zext.5" = zext i32 %".82" to i64
  %"mul.4" = mul i64 %"zext.4", %"zext.5"
  %".83" = ptrtoint ptr %"Arg_3" to i64
  %"add.6" = add i64 %"mul.4", %".83"
  %".84" = and i64 %"add.6", 18446744069414584320
  %".85" = lshr i64 %".84", 32
  %"trunc32.4" = trunc i64 %".85" to i32
  %"trunc32.5" = trunc i64 %"add.6" to i32
  store i32 %"trunc32.5", ptr %"R30"
  store i32 %"trunc32.4", ptr %"R31"
  ; IMAD R2, R5, c[0x0][0x180], RZ
  %".89" = load i32, ptr %"R5"
  %"mul.5" = mul i32 %".89", %"Arg_4"
  %"add.7" = add i32 %"mul.5", 0
  store i32 %"add.7", ptr %"R2"
  ; IMAD R3, R3, c[0x0][0x184], R0
  %".92" = load i32, ptr %"R3"
  %".93" = load i32, ptr %"R0"
  %"mul.6" = mul i32 %".92", %"Arg_5"
  %"add.8" = add i32 %"mul.6", %".93"
  store i32 %"add.8", ptr %"R3"
  ; IMAD.WIDE R32, R33, c[0x0][0x184], R26
  %".96" = load i32, ptr %"R33"
  %".97" = load i32, ptr %"R26"
  %"zext.6" = zext i32 %".96" to i64
  %"zext.7" = zext i32 %"Arg_5" to i64
  %"mul.7" = mul i64 %"zext.6", %"zext.7"
  %"zext.8" = zext i32 %".97" to i64
  %"add.9" = add i64 %"mul.7", %"zext.8"
  %".98" = and i64 %"add.9", 18446744069414584320
  %".99" = lshr i64 %".98", 32
  %"trunc32.6" = trunc i64 %".99" to i32
  %"trunc32.7" = trunc i64 %"add.9" to i32
  store i32 %"trunc32.7", ptr %"R32"
  store i32 %"trunc32.6", ptr %"R33"
  ; @P0 BRA `(.L_x_0)
  %".103" = load i1, ptr %"P0"
  %".104" = icmp ne i1 %".103", 1
  br i1 %".104", label %".L_x_0", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0170"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0170:
  ; LOP3.LUT R4, R5.reuse, 0x3, RZ, 0xc0, !PT
  %".107" = load i32, ptr %"R5"
  %".108" = and i32 %".107", 3
  store i32 %".108", ptr %"R4"
  ; IADD3 R5, R5, -0x1, RZ
  %".111" = load i32, ptr %"R5"
  %"add.10" = add i32 %".111", -1
  %"add.11" = add i32 %"add.10", 0
  store i32 %"add.11", ptr %"R5"
  ; MOV R6, RZ
  %".114" = load i32, ptr %"RZ"
  store i32 %".114", ptr %"R6"
  ; IADD3 R7, -R4, c[0x0][0x184], RZ
  %".117" = load i32, ptr %"R4"
  %".118" = sub i32 0, %".117"
  %"add.12" = add i32 %".118", %"Arg_5"
  %"add.13" = add i32 %"add.12", 0
  store i32 %"add.13", ptr %"R7"
  br label %".L_x_22"
.L_x_22:
  ; MOV R8, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R8"
  ; IADD3 R6, R6, 0x1, RZ
  %".124" = load i32, ptr %"R6"
  %"add.14" = add i32 %".124", 1
  %"add.15" = add i32 %"add.14", 0
  store i32 %"add.15", ptr %"R6"
  ; ISETP.GE.AND P4, PT, R8, 0x1, PT
  %".127" = load i32, ptr %"R8"
  %".128" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".127", 1
  %".129" = and i1 %"cmp.3", %".128"
  store i1 %".129", ptr %"P4"
  ; ISETP.GE.AND P3, PT, R6, c[0x0][0x188], PT
  %".132" = load i32, ptr %"R6"
  %".133" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".132", %"Arg_6"
  %".134" = and i1 %"cmp.4", %".133"
  store i1 %".134", ptr %"P3"
  ; MOV R8, RZ
  %".137" = load float, ptr %"RZ"
  %".138" = bitcast ptr %"R8" to ptr
  store float %".137", ptr %".138"
  ; MOV R52, RZ
  %".141" = load float, ptr %"RZ"
  %".142" = bitcast ptr %"R52" to ptr
  store float %".141", ptr %".142"
  ; MOV R54, RZ
  %".145" = load float, ptr %"RZ"
  %".146" = bitcast ptr %"R54" to ptr
  store float %".145", ptr %".146"
  ; @!P4 BRA `(.L_x_1)
  %".149" = load i1, ptr %"P4"
  %".150" = icmp eq i1 %".149", 1
  br i1 %".150", label %".L_x_1", label %".L_x_22_split_0x0230"
.L_x_22_split_0x0230:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".153" = load i32, ptr %"R5"
  %".154" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".153", 3
  %".155" = and i1 %"cmp.5", %".154"
  store i1 %".155", ptr %"P0"
  ; MOV R54, RZ
  %".158" = load float, ptr %"RZ"
  %".159" = bitcast ptr %"R54" to ptr
  store float %".158", ptr %".159"
  ; MOV R11, RZ
  %".162" = load i32, ptr %"RZ"
  store i32 %".162", ptr %"R11"
  ; MOV R52, RZ
  %".165" = load float, ptr %"RZ"
  %".166" = bitcast ptr %"R52" to ptr
  store float %".165", ptr %".166"
  ; @!P0 BRA `(.L_x_2)
  %".169" = load i1, ptr %"P0"
  %".170" = icmp eq i1 %".169", 1
  br i1 %".170", label %".L_x_2", label %".L_x_22_split_0x0280"
.L_x_22_split_0x0280:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".173" = load i32, ptr %"R7"
  %".174" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".173", 0
  %".175" = and i1 %"cmp.6", %".174"
  store i1 %".175", ptr %"P0"
  ; MOV R54, RZ
  %".178" = load float, ptr %"RZ"
  %".179" = bitcast ptr %"R54" to ptr
  store float %".178", ptr %".179"
  ; MOV R11, RZ
  %".182" = load i32, ptr %"RZ"
  store i32 %".182", ptr %"R11"
  ; MOV R9, R7
  %".185" = load i32, ptr %"R7"
  store i32 %".185", ptr %"R9"
  ; @!P0 BRA `(.L_x_3)
  %".188" = load i1, ptr %"P0"
  %".189" = icmp eq i1 %".188", 1
  br i1 %".189", label %".L_x_3", label %".L_x_22_split_0x02d0"
.L_x_22_split_0x02d0:
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".192" = load i32, ptr %"R9"
  %".193" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".192", 12
  %".194" = and i1 %"cmp.7", %".193"
  store i1 %".194", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".197" = and i1 1, 1
  %".198" = or i1 %".197", 1
  ; @!P1 BRA `(.L_x_4)
  %".200" = load i1, ptr %"P1"
  %".201" = icmp eq i1 %".200", 1
  br i1 %".201", label %".L_x_4", label %".L_x_22_split_0x0300"
.L_x_22_split_0x0300:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".204" = xor i1 1, 1
  %".205" = and i1 %".204", 1
  %".206" = and i1 %".205", 1
  br label %".L_x_5"
.L_x_5:
  ; IADD3 R25, R0, R11, RZ
  %".209" = load i32, ptr %"R0"
  %".210" = load i32, ptr %"R11"
  %"add.16" = add i32 %".209", %".210"
  %"add.17" = add i32 %"add.16", 0
  store i32 %"add.17", ptr %"R25"
  ; MOV R18, 0x4
  store i32 4, ptr %"R18"
  ; IMAD R23, R2.reuse, 0x3, R25
  %".215" = load i32, ptr %"R2"
  %".216" = load i32, ptr %"R25"
  %"mul.8" = mul i32 %".215", 3
  %"add.18" = add i32 %"mul.8", %".216"
  store i32 %"add.18", ptr %"R23"
  ; LEA R25, R2, R25, 0x2
  %".219" = load i32, ptr %"R2"
  %".220" = load i32, ptr %"R25"
  %"shl.2" = shl i32 %".219", 2
  %"add.19" = add i32 %"shl.2", %".220"
  store i32 %"add.19", ptr %"R25"
  ; IMAD.WIDE R38, R11, R18, c[0x0][0x168]
  %".223" = load i32, ptr %"R11"
  %".224" = load i32, ptr %"R18"
  %"zext.9" = zext i32 %".223" to i64
  %"zext.10" = zext i32 %".224" to i64
  %"mul.9" = mul i64 %"zext.9", %"zext.10"
  %".225" = ptrtoint ptr %"Arg_1" to i64
  %"add.20" = add i64 %"mul.9", %".225"
  %".226" = and i64 %"add.20", 18446744069414584320
  %".227" = lshr i64 %".226", 32
  %"trunc32.8" = trunc i64 %".227" to i32
  %"trunc32.9" = trunc i64 %"add.20" to i32
  store i32 %"trunc32.9", ptr %"R38"
  store i32 %"trunc32.8", ptr %"R39"
  ; IMAD.WIDE R16, R23, R18, c[0x0][0x170]
  %".231" = load i32, ptr %"R23"
  %".232" = load i32, ptr %"R18"
  %"zext.11" = zext i32 %".231" to i64
  %"zext.12" = zext i32 %".232" to i64
  %"mul.10" = mul i64 %"zext.11", %"zext.12"
  %".233" = ptrtoint ptr %"Arg_2" to i64
  %"add.21" = add i64 %"mul.10", %".233"
  %".234" = and i64 %"add.21", 18446744069414584320
  %".235" = lshr i64 %".234", 32
  %"trunc32.10" = trunc i64 %".235" to i32
  %"trunc32.11" = trunc i64 %"add.21" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R20, R25, R18, c[0x0][0x170]
  %".239" = load i32, ptr %"R25"
  %".240" = load i32, ptr %"R18"
  %"zext.13" = zext i32 %".239" to i64
  %"zext.14" = zext i32 %".240" to i64
  %"mul.11" = mul i64 %"zext.13", %"zext.14"
  %".241" = ptrtoint ptr %"Arg_2" to i64
  %"add.22" = add i64 %"mul.11", %".241"
  %".242" = and i64 %"add.22", 18446744069414584320
  %".243" = lshr i64 %".242", 32
  %"trunc32.12" = trunc i64 %".243" to i32
  %"trunc32.13" = trunc i64 %"add.22" to i32
  store i32 %"trunc32.13", ptr %"R20"
  store i32 %"trunc32.12", ptr %"R21"
  ; LDG.E.SYS R57, [R38]
  %".247" = load i32, ptr %"R38"
  %"zext.15" = zext i32 %".247" to i64
  %".248" = load i32, ptr %"R39"
  %"zext.16" = zext i32 %".248" to i64
  %"shl.3" = shl i64 %"zext.16", 32
  %"or" = or i64 %"shl.3", %"zext.15"
  %".249" = inttoptr i64 %"or" to ptr
  %".250" = ptrtoint ptr %".249" to i64
  %".251" = add i64 %".250", 0
  %"for_LDG" = inttoptr i64 %".251" to ptr
  %".252" = load float, ptr %"for_LDG"
  %".253" = bitcast ptr %"R57" to ptr
  store float %".252", ptr %".253"
  ; LDG.E.SYS R56, [R16]
  %".256" = load i32, ptr %"R16"
  %"zext.17" = zext i32 %".256" to i64
  %".257" = load i32, ptr %"R17"
  %"zext.18" = zext i32 %".257" to i64
  %"shl.4" = shl i64 %"zext.18", 32
  %"or.1" = or i64 %"shl.4", %"zext.17"
  %".258" = inttoptr i64 %"or.1" to ptr
  %".259" = ptrtoint ptr %".258" to i64
  %".260" = add i64 %".259", 0
  %"for_LDG.1" = inttoptr i64 %".260" to ptr
  %".261" = load float, ptr %"for_LDG.1"
  %".262" = bitcast ptr %"R56" to ptr
  store float %".261", ptr %".262"
  ; LDG.E.SYS R58, [R20]
  %".265" = load i32, ptr %"R20"
  %"zext.19" = zext i32 %".265" to i64
  %".266" = load i32, ptr %"R21"
  %"zext.20" = zext i32 %".266" to i64
  %"shl.5" = shl i64 %"zext.20", 32
  %"or.2" = or i64 %"shl.5", %"zext.19"
  %".267" = inttoptr i64 %"or.2" to ptr
  %".268" = ptrtoint ptr %".267" to i64
  %".269" = add i64 %".268", 0
  %"for_LDG.2" = inttoptr i64 %".269" to ptr
  %".270" = load float, ptr %"for_LDG.2"
  %".271" = bitcast ptr %"R58" to ptr
  store float %".270", ptr %".271"
  ; LDG.E.SYS R24, [R38+0x4]
  %".274" = load i32, ptr %"R38"
  %"zext.21" = zext i32 %".274" to i64
  %".275" = load i32, ptr %"R39"
  %"zext.22" = zext i32 %".275" to i64
  %"shl.6" = shl i64 %"zext.22", 32
  %"or.3" = or i64 %"shl.6", %"zext.21"
  %".276" = inttoptr i64 %"or.3" to ptr
  %".277" = ptrtoint ptr %".276" to i64
  %".278" = add i64 %".277", 4
  %"for_LDG.3" = inttoptr i64 %".278" to ptr
  %".279" = load float, ptr %"for_LDG.3"
  %".280" = bitcast ptr %"R24" to ptr
  store float %".279", ptr %".280"
  ; LDG.E.SYS R47, [R16+0x4]
  %".283" = load i32, ptr %"R16"
  %"zext.23" = zext i32 %".283" to i64
  %".284" = load i32, ptr %"R17"
  %"zext.24" = zext i32 %".284" to i64
  %"shl.7" = shl i64 %"zext.24", 32
  %"or.4" = or i64 %"shl.7", %"zext.23"
  %".285" = inttoptr i64 %"or.4" to ptr
  %".286" = ptrtoint ptr %".285" to i64
  %".287" = add i64 %".286", 4
  %"for_LDG.4" = inttoptr i64 %".287" to ptr
  %".288" = load float, ptr %"for_LDG.4"
  %".289" = bitcast ptr %"R47" to ptr
  store float %".288", ptr %".289"
  ; LDG.E.SYS R49, [R20+0x4]
  %".292" = load i32, ptr %"R20"
  %"zext.25" = zext i32 %".292" to i64
  %".293" = load i32, ptr %"R21"
  %"zext.26" = zext i32 %".293" to i64
  %"shl.8" = shl i64 %"zext.26", 32
  %"or.5" = or i64 %"shl.8", %"zext.25"
  %".294" = inttoptr i64 %"or.5" to ptr
  %".295" = ptrtoint ptr %".294" to i64
  %".296" = add i64 %".295", 4
  %"for_LDG.5" = inttoptr i64 %".296" to ptr
  %".297" = load float, ptr %"for_LDG.5"
  %".298" = bitcast ptr %"R49" to ptr
  store float %".297", ptr %".298"
  ; LDG.E.SYS R22, [R38+0x8]
  %".301" = load i32, ptr %"R38"
  %"zext.27" = zext i32 %".301" to i64
  %".302" = load i32, ptr %"R39"
  %"zext.28" = zext i32 %".302" to i64
  %"shl.9" = shl i64 %"zext.28", 32
  %"or.6" = or i64 %"shl.9", %"zext.27"
  %".303" = inttoptr i64 %"or.6" to ptr
  %".304" = ptrtoint ptr %".303" to i64
  %".305" = add i64 %".304", 8
  %"for_LDG.6" = inttoptr i64 %".305" to ptr
  %".306" = load float, ptr %"for_LDG.6"
  %".307" = bitcast ptr %"R22" to ptr
  store float %".306", ptr %".307"
  ; LDG.E.SYS R43, [R16+0x8]
  %".310" = load i32, ptr %"R16"
  %"zext.29" = zext i32 %".310" to i64
  %".311" = load i32, ptr %"R17"
  %"zext.30" = zext i32 %".311" to i64
  %"shl.10" = shl i64 %"zext.30", 32
  %"or.7" = or i64 %"shl.10", %"zext.29"
  %".312" = inttoptr i64 %"or.7" to ptr
  %".313" = ptrtoint ptr %".312" to i64
  %".314" = add i64 %".313", 8
  %"for_LDG.7" = inttoptr i64 %".314" to ptr
  %".315" = load float, ptr %"for_LDG.7"
  %".316" = bitcast ptr %"R43" to ptr
  store float %".315", ptr %".316"
  ; LDG.E.SYS R45, [R20+0x8]
  %".319" = load i32, ptr %"R20"
  %"zext.31" = zext i32 %".319" to i64
  %".320" = load i32, ptr %"R21"
  %"zext.32" = zext i32 %".320" to i64
  %"shl.11" = shl i64 %"zext.32", 32
  %"or.8" = or i64 %"shl.11", %"zext.31"
  %".321" = inttoptr i64 %"or.8" to ptr
  %".322" = ptrtoint ptr %".321" to i64
  %".323" = add i64 %".322", 8
  %"for_LDG.8" = inttoptr i64 %".323" to ptr
  %".324" = load float, ptr %"for_LDG.8"
  %".325" = bitcast ptr %"R45" to ptr
  store float %".324", ptr %".325"
  ; LDG.E.SYS R15, [R38+0xc]
  %".328" = load i32, ptr %"R38"
  %"zext.33" = zext i32 %".328" to i64
  %".329" = load i32, ptr %"R39"
  %"zext.34" = zext i32 %".329" to i64
  %"shl.12" = shl i64 %"zext.34", 32
  %"or.9" = or i64 %"shl.12", %"zext.33"
  %".330" = inttoptr i64 %"or.9" to ptr
  %".331" = ptrtoint ptr %".330" to i64
  %".332" = add i64 %".331", 12
  %"for_LDG.9" = inttoptr i64 %".332" to ptr
  %".333" = load float, ptr %"for_LDG.9"
  %".334" = bitcast ptr %"R15" to ptr
  store float %".333", ptr %".334"
  ; LDG.E.SYS R14, [R16+0xc]
  %".337" = load i32, ptr %"R16"
  %"zext.35" = zext i32 %".337" to i64
  %".338" = load i32, ptr %"R17"
  %"zext.36" = zext i32 %".338" to i64
  %"shl.13" = shl i64 %"zext.36", 32
  %"or.10" = or i64 %"shl.13", %"zext.35"
  %".339" = inttoptr i64 %"or.10" to ptr
  %".340" = ptrtoint ptr %".339" to i64
  %".341" = add i64 %".340", 12
  %"for_LDG.10" = inttoptr i64 %".341" to ptr
  %".342" = load float, ptr %"for_LDG.10"
  %".343" = bitcast ptr %"R14" to ptr
  store float %".342", ptr %".343"
  ; LDG.E.SYS R13, [R20+0xc]
  %".346" = load i32, ptr %"R20"
  %"zext.37" = zext i32 %".346" to i64
  %".347" = load i32, ptr %"R21"
  %"zext.38" = zext i32 %".347" to i64
  %"shl.14" = shl i64 %"zext.38", 32
  %"or.11" = or i64 %"shl.14", %"zext.37"
  %".348" = inttoptr i64 %"or.11" to ptr
  %".349" = ptrtoint ptr %".348" to i64
  %".350" = add i64 %".349", 12
  %"for_LDG.11" = inttoptr i64 %".350" to ptr
  %".351" = load float, ptr %"for_LDG.11"
  %".352" = bitcast ptr %"R13" to ptr
  store float %".351", ptr %".352"
  ; IADD3 R41, R11, 0x4, RZ
  %".355" = load i32, ptr %"R11"
  %"add.23" = add i32 %".355", 4
  %"add.24" = add i32 %"add.23", 0
  store i32 %"add.24", ptr %"R41"
  ; IADD3 R51, R23, 0x4, RZ
  %".358" = load i32, ptr %"R23"
  %"add.25" = add i32 %".358", 4
  %"add.26" = add i32 %"add.25", 0
  store i32 %"add.26", ptr %"R51"
  ; IADD3 R35, R11, 0x8, RZ
  %".361" = load i32, ptr %"R11"
  %"add.27" = add i32 %".361", 8
  %"add.28" = add i32 %"add.27", 0
  store i32 %"add.28", ptr %"R35"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".364" = load i32, ptr %"R41"
  %".365" = load i32, ptr %"R18"
  %"zext.39" = zext i32 %".364" to i64
  %"zext.40" = zext i32 %".365" to i64
  %"mul.12" = mul i64 %"zext.39", %"zext.40"
  %".366" = ptrtoint ptr %"Arg_1" to i64
  %"add.29" = add i64 %"mul.12", %".366"
  %".367" = and i64 %"add.29", 18446744069414584320
  %".368" = lshr i64 %".367", 32
  %"trunc32.14" = trunc i64 %".368" to i32
  %"trunc32.15" = trunc i64 %"add.29" to i32
  store i32 %"trunc32.15", ptr %"R40"
  store i32 %"trunc32.14", ptr %"R41"
  ; IADD3 R37, R11, 0xc, RZ
  %".372" = load i32, ptr %"R11"
  %"add.30" = add i32 %".372", 12
  %"add.31" = add i32 %"add.30", 0
  store i32 %"add.31", ptr %"R37"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".375" = load i32, ptr %"R51"
  %".376" = load i32, ptr %"R18"
  %"zext.41" = zext i32 %".375" to i64
  %"zext.42" = zext i32 %".376" to i64
  %"mul.13" = mul i64 %"zext.41", %"zext.42"
  %".377" = ptrtoint ptr %"Arg_2" to i64
  %"add.32" = add i64 %"mul.13", %".377"
  %".378" = and i64 %"add.32", 18446744069414584320
  %".379" = lshr i64 %".378", 32
  %"trunc32.16" = trunc i64 %".379" to i32
  %"trunc32.17" = trunc i64 %"add.32" to i32
  store i32 %"trunc32.17", ptr %"R38"
  store i32 %"trunc32.16", ptr %"R39"
  ; IADD3 R51, R25, 0x4, RZ
  %".383" = load i32, ptr %"R25"
  %"add.33" = add i32 %".383", 4
  %"add.34" = add i32 %"add.33", 0
  store i32 %"add.34", ptr %"R51"
  ; LDG.E.SYS R12, [R40]
  %".386" = load i32, ptr %"R40"
  %"zext.43" = zext i32 %".386" to i64
  %".387" = load i32, ptr %"R41"
  %"zext.44" = zext i32 %".387" to i64
  %"shl.15" = shl i64 %"zext.44", 32
  %"or.12" = or i64 %"shl.15", %"zext.43"
  %".388" = inttoptr i64 %"or.12" to ptr
  %".389" = ptrtoint ptr %".388" to i64
  %".390" = add i64 %".389", 0
  %"for_LDG.12" = inttoptr i64 %".390" to ptr
  %".391" = load float, ptr %"for_LDG.12"
  %".392" = bitcast ptr %"R12" to ptr
  store float %".391", ptr %".392"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".395" = load i32, ptr %"R35"
  %".396" = load i32, ptr %"R18"
  %"zext.45" = zext i32 %".395" to i64
  %"zext.46" = zext i32 %".396" to i64
  %"mul.14" = mul i64 %"zext.45", %"zext.46"
  %".397" = ptrtoint ptr %"Arg_1" to i64
  %"add.35" = add i64 %"mul.14", %".397"
  %".398" = and i64 %"add.35", 18446744069414584320
  %".399" = lshr i64 %".398", 32
  %"trunc32.18" = trunc i64 %".399" to i32
  %"trunc32.19" = trunc i64 %"add.35" to i32
  store i32 %"trunc32.19", ptr %"R34"
  store i32 %"trunc32.18", ptr %"R35"
  ; LDG.E.SYS R10, [R40+0x4]
  %".403" = load i32, ptr %"R40"
  %"zext.47" = zext i32 %".403" to i64
  %".404" = load i32, ptr %"R41"
  %"zext.48" = zext i32 %".404" to i64
  %"shl.16" = shl i64 %"zext.48", 32
  %"or.13" = or i64 %"shl.16", %"zext.47"
  %".405" = inttoptr i64 %"or.13" to ptr
  %".406" = ptrtoint ptr %".405" to i64
  %".407" = add i64 %".406", 4
  %"for_LDG.13" = inttoptr i64 %".407" to ptr
  %".408" = load float, ptr %"for_LDG.13"
  %".409" = bitcast ptr %"R10" to ptr
  store float %".408", ptr %".409"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".412" = load i32, ptr %"R37"
  %".413" = load i32, ptr %"R18"
  %"zext.49" = zext i32 %".412" to i64
  %"zext.50" = zext i32 %".413" to i64
  %"mul.15" = mul i64 %"zext.49", %"zext.50"
  %".414" = ptrtoint ptr %"Arg_1" to i64
  %"add.36" = add i64 %"mul.15", %".414"
  %".415" = and i64 %"add.36", 18446744069414584320
  %".416" = lshr i64 %".415", 32
  %"trunc32.20" = trunc i64 %".416" to i32
  %"trunc32.21" = trunc i64 %"add.36" to i32
  store i32 %"trunc32.21", ptr %"R36"
  store i32 %"trunc32.20", ptr %"R37"
  ; LDG.E.SYS R16, [R40+0x8]
  %".420" = load i32, ptr %"R40"
  %"zext.51" = zext i32 %".420" to i64
  %".421" = load i32, ptr %"R41"
  %"zext.52" = zext i32 %".421" to i64
  %"shl.17" = shl i64 %"zext.52", 32
  %"or.14" = or i64 %"shl.17", %"zext.51"
  %".422" = inttoptr i64 %"or.14" to ptr
  %".423" = ptrtoint ptr %".422" to i64
  %".424" = add i64 %".423", 8
  %"for_LDG.14" = inttoptr i64 %".424" to ptr
  %".425" = load float, ptr %"for_LDG.14"
  %".426" = bitcast ptr %"R16" to ptr
  store float %".425", ptr %".426"
  ; LDG.E.SYS R17, [R40+0xc]
  %".429" = load i32, ptr %"R40"
  %"zext.53" = zext i32 %".429" to i64
  %".430" = load i32, ptr %"R41"
  %"zext.54" = zext i32 %".430" to i64
  %"shl.18" = shl i64 %"zext.54", 32
  %"or.15" = or i64 %"shl.18", %"zext.53"
  %".431" = inttoptr i64 %"or.15" to ptr
  %".432" = ptrtoint ptr %".431" to i64
  %".433" = add i64 %".432", 12
  %"for_LDG.15" = inttoptr i64 %".433" to ptr
  %".434" = load float, ptr %"for_LDG.15"
  %".435" = bitcast ptr %"R17" to ptr
  store float %".434", ptr %".435"
  ; LDG.E.SYS R19, [R34]
  %".438" = load i32, ptr %"R34"
  %"zext.55" = zext i32 %".438" to i64
  %".439" = load i32, ptr %"R35"
  %"zext.56" = zext i32 %".439" to i64
  %"shl.19" = shl i64 %"zext.56", 32
  %"or.16" = or i64 %"shl.19", %"zext.55"
  %".440" = inttoptr i64 %"or.16" to ptr
  %".441" = ptrtoint ptr %".440" to i64
  %".442" = add i64 %".441", 0
  %"for_LDG.16" = inttoptr i64 %".442" to ptr
  %".443" = load float, ptr %"for_LDG.16"
  %".444" = bitcast ptr %"R19" to ptr
  store float %".443", ptr %".444"
  ; LDG.E.SYS R20, [R34+0x4]
  %".447" = load i32, ptr %"R34"
  %"zext.57" = zext i32 %".447" to i64
  %".448" = load i32, ptr %"R35"
  %"zext.58" = zext i32 %".448" to i64
  %"shl.20" = shl i64 %"zext.58", 32
  %"or.17" = or i64 %"shl.20", %"zext.57"
  %".449" = inttoptr i64 %"or.17" to ptr
  %".450" = ptrtoint ptr %".449" to i64
  %".451" = add i64 %".450", 4
  %"for_LDG.17" = inttoptr i64 %".451" to ptr
  %".452" = load float, ptr %"for_LDG.17"
  %".453" = bitcast ptr %"R20" to ptr
  store float %".452", ptr %".453"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".456" = load i32, ptr %"R51"
  %".457" = load i32, ptr %"R18"
  %"zext.59" = zext i32 %".456" to i64
  %"zext.60" = zext i32 %".457" to i64
  %"mul.16" = mul i64 %"zext.59", %"zext.60"
  %".458" = ptrtoint ptr %"Arg_2" to i64
  %"add.37" = add i64 %"mul.16", %".458"
  %".459" = and i64 %"add.37", 18446744069414584320
  %".460" = lshr i64 %".459", 32
  %"trunc32.22" = trunc i64 %".460" to i32
  %"trunc32.23" = trunc i64 %"add.37" to i32
  store i32 %"trunc32.23", ptr %"R40"
  store i32 %"trunc32.22", ptr %"R41"
  ; LDG.E.SYS R51, [R38]
  %".464" = load i32, ptr %"R38"
  %"zext.61" = zext i32 %".464" to i64
  %".465" = load i32, ptr %"R39"
  %"zext.62" = zext i32 %".465" to i64
  %"shl.21" = shl i64 %"zext.62", 32
  %"or.18" = or i64 %"shl.21", %"zext.61"
  %".466" = inttoptr i64 %"or.18" to ptr
  %".467" = ptrtoint ptr %".466" to i64
  %".468" = add i64 %".467", 0
  %"for_LDG.18" = inttoptr i64 %".468" to ptr
  %".469" = load float, ptr %"for_LDG.18"
  %".470" = bitcast ptr %"R51" to ptr
  store float %".469", ptr %".470"
  ; LDG.E.SYS R21, [R34+0x8]
  %".473" = load i32, ptr %"R34"
  %"zext.63" = zext i32 %".473" to i64
  %".474" = load i32, ptr %"R35"
  %"zext.64" = zext i32 %".474" to i64
  %"shl.22" = shl i64 %"zext.64", 32
  %"or.19" = or i64 %"shl.22", %"zext.63"
  %".475" = inttoptr i64 %"or.19" to ptr
  %".476" = ptrtoint ptr %".475" to i64
  %".477" = add i64 %".476", 8
  %"for_LDG.19" = inttoptr i64 %".477" to ptr
  %".478" = load float, ptr %"for_LDG.19"
  %".479" = bitcast ptr %"R21" to ptr
  store float %".478", ptr %".479"
  ; LDG.E.SYS R42, [R34+0xc]
  %".482" = load i32, ptr %"R34"
  %"zext.65" = zext i32 %".482" to i64
  %".483" = load i32, ptr %"R35"
  %"zext.66" = zext i32 %".483" to i64
  %"shl.23" = shl i64 %"zext.66", 32
  %"or.20" = or i64 %"shl.23", %"zext.65"
  %".484" = inttoptr i64 %"or.20" to ptr
  %".485" = ptrtoint ptr %".484" to i64
  %".486" = add i64 %".485", 12
  %"for_LDG.20" = inttoptr i64 %".486" to ptr
  %".487" = load float, ptr %"for_LDG.20"
  %".488" = bitcast ptr %"R42" to ptr
  store float %".487", ptr %".488"
  ; LDG.E.SYS R44, [R36]
  %".491" = load i32, ptr %"R36"
  %"zext.67" = zext i32 %".491" to i64
  %".492" = load i32, ptr %"R37"
  %"zext.68" = zext i32 %".492" to i64
  %"shl.24" = shl i64 %"zext.68", 32
  %"or.21" = or i64 %"shl.24", %"zext.67"
  %".493" = inttoptr i64 %"or.21" to ptr
  %".494" = ptrtoint ptr %".493" to i64
  %".495" = add i64 %".494", 0
  %"for_LDG.21" = inttoptr i64 %".495" to ptr
  %".496" = load float, ptr %"for_LDG.21"
  %".497" = bitcast ptr %"R44" to ptr
  store float %".496", ptr %".497"
  ; LDG.E.SYS R46, [R36+0x4]
  %".500" = load i32, ptr %"R36"
  %"zext.69" = zext i32 %".500" to i64
  %".501" = load i32, ptr %"R37"
  %"zext.70" = zext i32 %".501" to i64
  %"shl.25" = shl i64 %"zext.70", 32
  %"or.22" = or i64 %"shl.25", %"zext.69"
  %".502" = inttoptr i64 %"or.22" to ptr
  %".503" = ptrtoint ptr %".502" to i64
  %".504" = add i64 %".503", 4
  %"for_LDG.22" = inttoptr i64 %".504" to ptr
  %".505" = load float, ptr %"for_LDG.22"
  %".506" = bitcast ptr %"R46" to ptr
  store float %".505", ptr %".506"
  ; IADD3 R35, R23, 0x8, RZ
  %".509" = load i32, ptr %"R23"
  %"add.38" = add i32 %".509", 8
  %"add.39" = add i32 %"add.38", 0
  store i32 %"add.39", ptr %"R35"
  ; LDG.E.SYS R48, [R36+0x8]
  %".512" = load i32, ptr %"R36"
  %"zext.71" = zext i32 %".512" to i64
  %".513" = load i32, ptr %"R37"
  %"zext.72" = zext i32 %".513" to i64
  %"shl.26" = shl i64 %"zext.72", 32
  %"or.23" = or i64 %"shl.26", %"zext.71"
  %".514" = inttoptr i64 %"or.23" to ptr
  %".515" = ptrtoint ptr %".514" to i64
  %".516" = add i64 %".515", 8
  %"for_LDG.23" = inttoptr i64 %".516" to ptr
  %".517" = load float, ptr %"for_LDG.23"
  %".518" = bitcast ptr %"R48" to ptr
  store float %".517", ptr %".518"
  ; LDG.E.SYS R50, [R36+0xc]
  %".521" = load i32, ptr %"R36"
  %"zext.73" = zext i32 %".521" to i64
  %".522" = load i32, ptr %"R37"
  %"zext.74" = zext i32 %".522" to i64
  %"shl.27" = shl i64 %"zext.74", 32
  %"or.24" = or i64 %"shl.27", %"zext.73"
  %".523" = inttoptr i64 %"or.24" to ptr
  %".524" = ptrtoint ptr %".523" to i64
  %".525" = add i64 %".524", 12
  %"for_LDG.24" = inttoptr i64 %".525" to ptr
  %".526" = load float, ptr %"for_LDG.24"
  %".527" = bitcast ptr %"R50" to ptr
  store float %".526", ptr %".527"
  ; LDG.E.SYS R53, [R38+0x4]
  %".530" = load i32, ptr %"R38"
  %"zext.75" = zext i32 %".530" to i64
  %".531" = load i32, ptr %"R39"
  %"zext.76" = zext i32 %".531" to i64
  %"shl.28" = shl i64 %"zext.76", 32
  %"or.25" = or i64 %"shl.28", %"zext.75"
  %".532" = inttoptr i64 %"or.25" to ptr
  %".533" = ptrtoint ptr %".532" to i64
  %".534" = add i64 %".533", 4
  %"for_LDG.25" = inttoptr i64 %".534" to ptr
  %".535" = load float, ptr %"for_LDG.25"
  %".536" = bitcast ptr %"R53" to ptr
  store float %".535", ptr %".536"
  ; LDG.E.SYS R59, [R40+0x4]
  %".539" = load i32, ptr %"R40"
  %"zext.77" = zext i32 %".539" to i64
  %".540" = load i32, ptr %"R41"
  %"zext.78" = zext i32 %".540" to i64
  %"shl.29" = shl i64 %"zext.78", 32
  %"or.26" = or i64 %"shl.29", %"zext.77"
  %".541" = inttoptr i64 %"or.26" to ptr
  %".542" = ptrtoint ptr %".541" to i64
  %".543" = add i64 %".542", 4
  %"for_LDG.26" = inttoptr i64 %".543" to ptr
  %".544" = load float, ptr %"for_LDG.26"
  %".545" = bitcast ptr %"R59" to ptr
  store float %".544", ptr %".545"
  ; IADD3 R37, R25, 0x8, RZ
  %".548" = load i32, ptr %"R25"
  %"add.40" = add i32 %".548", 8
  %"add.41" = add i32 %"add.40", 0
  store i32 %"add.41", ptr %"R37"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".551" = load i32, ptr %"R35"
  %".552" = load i32, ptr %"R18"
  %"zext.79" = zext i32 %".551" to i64
  %"zext.80" = zext i32 %".552" to i64
  %"mul.17" = mul i64 %"zext.79", %"zext.80"
  %".553" = ptrtoint ptr %"Arg_2" to i64
  %"add.42" = add i64 %"mul.17", %".553"
  %".554" = and i64 %"add.42", 18446744069414584320
  %".555" = lshr i64 %".554", 32
  %"trunc32.24" = trunc i64 %".555" to i32
  %"trunc32.25" = trunc i64 %"add.42" to i32
  store i32 %"trunc32.25", ptr %"R34"
  store i32 %"trunc32.24", ptr %"R35"
  ; LDG.E.SYS R55, [R38+0x8]
  %".559" = load i32, ptr %"R38"
  %"zext.81" = zext i32 %".559" to i64
  %".560" = load i32, ptr %"R39"
  %"zext.82" = zext i32 %".560" to i64
  %"shl.30" = shl i64 %"zext.82", 32
  %"or.27" = or i64 %"shl.30", %"zext.81"
  %".561" = inttoptr i64 %"or.27" to ptr
  %".562" = ptrtoint ptr %".561" to i64
  %".563" = add i64 %".562", 8
  %"for_LDG.27" = inttoptr i64 %".563" to ptr
  %".564" = load float, ptr %"for_LDG.27"
  %".565" = bitcast ptr %"R55" to ptr
  store float %".564", ptr %".565"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".568" = load i32, ptr %"R37"
  %".569" = load i32, ptr %"R18"
  %"zext.83" = zext i32 %".568" to i64
  %"zext.84" = zext i32 %".569" to i64
  %"mul.18" = mul i64 %"zext.83", %"zext.84"
  %".570" = ptrtoint ptr %"Arg_2" to i64
  %"add.43" = add i64 %"mul.18", %".570"
  %".571" = and i64 %"add.43", 18446744069414584320
  %".572" = lshr i64 %".571", 32
  %"trunc32.26" = trunc i64 %".572" to i32
  %"trunc32.27" = trunc i64 %"add.43" to i32
  store i32 %"trunc32.27", ptr %"R36"
  store i32 %"trunc32.26", ptr %"R37"
  ; LDG.E.SYS R61, [R40+0x8]
  %".576" = load i32, ptr %"R40"
  %"zext.85" = zext i32 %".576" to i64
  %".577" = load i32, ptr %"R41"
  %"zext.86" = zext i32 %".577" to i64
  %"shl.31" = shl i64 %"zext.86", 32
  %"or.28" = or i64 %"shl.31", %"zext.85"
  %".578" = inttoptr i64 %"or.28" to ptr
  %".579" = ptrtoint ptr %".578" to i64
  %".580" = add i64 %".579", 8
  %"for_LDG.28" = inttoptr i64 %".580" to ptr
  %".581" = load float, ptr %"for_LDG.28"
  %".582" = bitcast ptr %"R61" to ptr
  store float %".581", ptr %".582"
  ; LDG.E.SYS R60, [R38+0xc]
  %".585" = load i32, ptr %"R38"
  %"zext.87" = zext i32 %".585" to i64
  %".586" = load i32, ptr %"R39"
  %"zext.88" = zext i32 %".586" to i64
  %"shl.32" = shl i64 %"zext.88", 32
  %"or.29" = or i64 %"shl.32", %"zext.87"
  %".587" = inttoptr i64 %"or.29" to ptr
  %".588" = ptrtoint ptr %".587" to i64
  %".589" = add i64 %".588", 12
  %"for_LDG.29" = inttoptr i64 %".589" to ptr
  %".590" = load float, ptr %"for_LDG.29"
  %".591" = bitcast ptr %"R60" to ptr
  store float %".590", ptr %".591"
  ; IADD3 R23, R23, 0xc, RZ
  %".594" = load i32, ptr %"R23"
  %"add.44" = add i32 %".594", 12
  %"add.45" = add i32 %"add.44", 0
  store i32 %"add.45", ptr %"R23"
  ; IADD3 R25, R25, 0xc, RZ
  %".597" = load i32, ptr %"R25"
  %"add.46" = add i32 %".597", 12
  %"add.47" = add i32 %"add.46", 0
  store i32 %"add.47", ptr %"R25"
  ; LDG.E.SYS R39, [R34+0x4]
  %".600" = load i32, ptr %"R34"
  %"zext.89" = zext i32 %".600" to i64
  %".601" = load i32, ptr %"R35"
  %"zext.90" = zext i32 %".601" to i64
  %"shl.33" = shl i64 %"zext.90", 32
  %"or.30" = or i64 %"shl.33", %"zext.89"
  %".602" = inttoptr i64 %"or.30" to ptr
  %".603" = ptrtoint ptr %".602" to i64
  %".604" = add i64 %".603", 4
  %"for_LDG.30" = inttoptr i64 %".604" to ptr
  %".605" = load float, ptr %"for_LDG.30"
  %".606" = bitcast ptr %"R39" to ptr
  store float %".605", ptr %".606"
  ; LDG.E.SYS R38, [R34+0x8]
  %".609" = load i32, ptr %"R34"
  %"zext.91" = zext i32 %".609" to i64
  %".610" = load i32, ptr %"R35"
  %"zext.92" = zext i32 %".610" to i64
  %"shl.34" = shl i64 %"zext.92", 32
  %"or.31" = or i64 %"shl.34", %"zext.91"
  %".611" = inttoptr i64 %"or.31" to ptr
  %".612" = ptrtoint ptr %".611" to i64
  %".613" = add i64 %".612", 8
  %"for_LDG.31" = inttoptr i64 %".613" to ptr
  %".614" = load float, ptr %"for_LDG.31"
  %".615" = bitcast ptr %"R38" to ptr
  store float %".614", ptr %".615"
  ; FFMA R56, R56, R57, R52
  %".618" = load float, ptr %"R56"
  %".619" = load float, ptr %"R57"
  %".620" = load float, ptr %"R52"
  %"fmul" = fmul float %".618", %".619"
  %"fadd" = fadd float %"fmul", %".620"
  %".621" = bitcast ptr %"R56" to ptr
  store float %"fadd", ptr %".621"
  ; LDG.E.SYS R52, [R40+0xc]
  %".624" = load i32, ptr %"R40"
  %"zext.93" = zext i32 %".624" to i64
  %".625" = load i32, ptr %"R41"
  %"zext.94" = zext i32 %".625" to i64
  %"shl.35" = shl i64 %"zext.94", 32
  %"or.32" = or i64 %"shl.35", %"zext.93"
  %".626" = inttoptr i64 %"or.32" to ptr
  %".627" = ptrtoint ptr %".626" to i64
  %".628" = add i64 %".627", 12
  %"for_LDG.32" = inttoptr i64 %".628" to ptr
  %".629" = load float, ptr %"for_LDG.32"
  %".630" = bitcast ptr %"R52" to ptr
  store float %".629", ptr %".630"
  ; FFMA R58, R57, R58, R54
  %".633" = load float, ptr %"R57"
  %".634" = load float, ptr %"R58"
  %".635" = load float, ptr %"R54"
  %"fmul.1" = fmul float %".633", %".634"
  %"fadd.1" = fadd float %"fmul.1", %".635"
  %".636" = bitcast ptr %"R58" to ptr
  store float %"fadd.1", ptr %".636"
  ; LDG.E.SYS R57, [R40]
  %".639" = load i32, ptr %"R40"
  %"zext.95" = zext i32 %".639" to i64
  %".640" = load i32, ptr %"R41"
  %"zext.96" = zext i32 %".640" to i64
  %"shl.36" = shl i64 %"zext.96", 32
  %"or.33" = or i64 %"shl.36", %"zext.95"
  %".641" = inttoptr i64 %"or.33" to ptr
  %".642" = ptrtoint ptr %".641" to i64
  %".643" = add i64 %".642", 0
  %"for_LDG.33" = inttoptr i64 %".643" to ptr
  %".644" = load float, ptr %"for_LDG.33"
  %".645" = bitcast ptr %"R57" to ptr
  store float %".644", ptr %".645"
  ; LDG.E.SYS R54, [R34]
  %".648" = load i32, ptr %"R34"
  %"zext.97" = zext i32 %".648" to i64
  %".649" = load i32, ptr %"R35"
  %"zext.98" = zext i32 %".649" to i64
  %"shl.37" = shl i64 %"zext.98", 32
  %"or.34" = or i64 %"shl.37", %"zext.97"
  %".650" = inttoptr i64 %"or.34" to ptr
  %".651" = ptrtoint ptr %".650" to i64
  %".652" = add i64 %".651", 0
  %"for_LDG.34" = inttoptr i64 %".652" to ptr
  %".653" = load float, ptr %"for_LDG.34"
  %".654" = bitcast ptr %"R54" to ptr
  store float %".653", ptr %".654"
  ; FFMA R56, R47, R24, R56
  %".657" = load float, ptr %"R47"
  %".658" = load float, ptr %"R24"
  %".659" = load float, ptr %"R56"
  %"fmul.2" = fmul float %".657", %".658"
  %"fadd.2" = fadd float %"fmul.2", %".659"
  %".660" = bitcast ptr %"R56" to ptr
  store float %"fadd.2", ptr %".660"
  ; LDG.E.SYS R47, [R34+0xc]
  %".663" = load i32, ptr %"R34"
  %"zext.99" = zext i32 %".663" to i64
  %".664" = load i32, ptr %"R35"
  %"zext.100" = zext i32 %".664" to i64
  %"shl.38" = shl i64 %"zext.100", 32
  %"or.35" = or i64 %"shl.38", %"zext.99"
  %".665" = inttoptr i64 %"or.35" to ptr
  %".666" = ptrtoint ptr %".665" to i64
  %".667" = add i64 %".666", 12
  %"for_LDG.35" = inttoptr i64 %".667" to ptr
  %".668" = load float, ptr %"for_LDG.35"
  %".669" = bitcast ptr %"R47" to ptr
  store float %".668", ptr %".669"
  ; FFMA R58, R24, R49, R58
  %".672" = load float, ptr %"R24"
  %".673" = load float, ptr %"R49"
  %".674" = load float, ptr %"R58"
  %"fmul.3" = fmul float %".672", %".673"
  %"fadd.3" = fadd float %"fmul.3", %".674"
  %".675" = bitcast ptr %"R58" to ptr
  store float %"fadd.3", ptr %".675"
  ; LDG.E.SYS R41, [R36+0x4]
  %".678" = load i32, ptr %"R36"
  %"zext.101" = zext i32 %".678" to i64
  %".679" = load i32, ptr %"R37"
  %"zext.102" = zext i32 %".679" to i64
  %"shl.39" = shl i64 %"zext.102", 32
  %"or.36" = or i64 %"shl.39", %"zext.101"
  %".680" = inttoptr i64 %"or.36" to ptr
  %".681" = ptrtoint ptr %".680" to i64
  %".682" = add i64 %".681", 4
  %"for_LDG.36" = inttoptr i64 %".682" to ptr
  %".683" = load float, ptr %"for_LDG.36"
  %".684" = bitcast ptr %"R41" to ptr
  store float %".683", ptr %".684"
  ; LDG.E.SYS R40, [R36+0x8]
  %".687" = load i32, ptr %"R36"
  %"zext.103" = zext i32 %".687" to i64
  %".688" = load i32, ptr %"R37"
  %"zext.104" = zext i32 %".688" to i64
  %"shl.40" = shl i64 %"zext.104", 32
  %"or.37" = or i64 %"shl.40", %"zext.103"
  %".689" = inttoptr i64 %"or.37" to ptr
  %".690" = ptrtoint ptr %".689" to i64
  %".691" = add i64 %".690", 8
  %"for_LDG.37" = inttoptr i64 %".691" to ptr
  %".692" = load float, ptr %"for_LDG.37"
  %".693" = bitcast ptr %"R40" to ptr
  store float %".692", ptr %".693"
  ; FFMA R49, R43, R22, R56
  %".696" = load float, ptr %"R43"
  %".697" = load float, ptr %"R22"
  %".698" = load float, ptr %"R56"
  %"fmul.4" = fmul float %".696", %".697"
  %"fadd.4" = fadd float %"fmul.4", %".698"
  %".699" = bitcast ptr %"R49" to ptr
  store float %"fadd.4", ptr %".699"
  ; LDG.E.SYS R56, [R36]
  %".702" = load i32, ptr %"R36"
  %"zext.105" = zext i32 %".702" to i64
  %".703" = load i32, ptr %"R37"
  %"zext.106" = zext i32 %".703" to i64
  %"shl.41" = shl i64 %"zext.106", 32
  %"or.38" = or i64 %"shl.41", %"zext.105"
  %".704" = inttoptr i64 %"or.38" to ptr
  %".705" = ptrtoint ptr %".704" to i64
  %".706" = add i64 %".705", 0
  %"for_LDG.38" = inttoptr i64 %".706" to ptr
  %".707" = load float, ptr %"for_LDG.38"
  %".708" = bitcast ptr %"R56" to ptr
  store float %".707", ptr %".708"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".711" = load i32, ptr %"R25"
  %".712" = load i32, ptr %"R18"
  %"zext.107" = zext i32 %".711" to i64
  %"zext.108" = zext i32 %".712" to i64
  %"mul.19" = mul i64 %"zext.107", %"zext.108"
  %".713" = ptrtoint ptr %"Arg_2" to i64
  %"add.48" = add i64 %"mul.19", %".713"
  %".714" = and i64 %"add.48", 18446744069414584320
  %".715" = lshr i64 %".714", 32
  %"trunc32.28" = trunc i64 %".715" to i32
  %"trunc32.29" = trunc i64 %"add.48" to i32
  store i32 %"trunc32.29", ptr %"R24"
  store i32 %"trunc32.28", ptr %"R25"
  ; LDG.E.SYS R43, [R36+0xc]
  %".719" = load i32, ptr %"R36"
  %"zext.109" = zext i32 %".719" to i64
  %".720" = load i32, ptr %"R37"
  %"zext.110" = zext i32 %".720" to i64
  %"shl.42" = shl i64 %"zext.110", 32
  %"or.39" = or i64 %"shl.42", %"zext.109"
  %".721" = inttoptr i64 %"or.39" to ptr
  %".722" = ptrtoint ptr %".721" to i64
  %".723" = add i64 %".722", 12
  %"for_LDG.39" = inttoptr i64 %".723" to ptr
  %".724" = load float, ptr %"for_LDG.39"
  %".725" = bitcast ptr %"R43" to ptr
  store float %".724", ptr %".725"
  ; FFMA R58, R22, R45, R58
  %".728" = load float, ptr %"R22"
  %".729" = load float, ptr %"R45"
  %".730" = load float, ptr %"R58"
  %"fmul.5" = fmul float %".728", %".729"
  %"fadd.5" = fadd float %"fmul.5", %".730"
  %".731" = bitcast ptr %"R58" to ptr
  store float %"fadd.5", ptr %".731"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".734" = load i32, ptr %"R23"
  %".735" = load i32, ptr %"R18"
  %"zext.111" = zext i32 %".734" to i64
  %"zext.112" = zext i32 %".735" to i64
  %"mul.20" = mul i64 %"zext.111", %"zext.112"
  %".736" = ptrtoint ptr %"Arg_2" to i64
  %"add.49" = add i64 %"mul.20", %".736"
  %".737" = and i64 %"add.49", 18446744069414584320
  %".738" = lshr i64 %".737", 32
  %"trunc32.30" = trunc i64 %".738" to i32
  %"trunc32.31" = trunc i64 %"add.49" to i32
  store i32 %"trunc32.31", ptr %"R22"
  store i32 %"trunc32.30", ptr %"R23"
  ; LDG.E.SYS R18, [R24]
  %".742" = load i32, ptr %"R24"
  %"zext.113" = zext i32 %".742" to i64
  %".743" = load i32, ptr %"R25"
  %"zext.114" = zext i32 %".743" to i64
  %"shl.43" = shl i64 %"zext.114", 32
  %"or.40" = or i64 %"shl.43", %"zext.113"
  %".744" = inttoptr i64 %"or.40" to ptr
  %".745" = ptrtoint ptr %".744" to i64
  %".746" = add i64 %".745", 0
  %"for_LDG.40" = inttoptr i64 %".746" to ptr
  %".747" = load float, ptr %"for_LDG.40"
  %".748" = bitcast ptr %"R18" to ptr
  store float %".747", ptr %".748"
  ; FFMA R14, R14, R15, R49
  %".751" = load float, ptr %"R14"
  %".752" = load float, ptr %"R15"
  %".753" = load float, ptr %"R49"
  %"fmul.6" = fmul float %".751", %".752"
  %"fadd.6" = fadd float %"fmul.6", %".753"
  %".754" = bitcast ptr %"R14" to ptr
  store float %"fadd.6", ptr %".754"
  ; LDG.E.SYS R49, [R24+0x4]
  %".757" = load i32, ptr %"R24"
  %"zext.115" = zext i32 %".757" to i64
  %".758" = load i32, ptr %"R25"
  %"zext.116" = zext i32 %".758" to i64
  %"shl.44" = shl i64 %"zext.116", 32
  %"or.41" = or i64 %"shl.44", %"zext.115"
  %".759" = inttoptr i64 %"or.41" to ptr
  %".760" = ptrtoint ptr %".759" to i64
  %".761" = add i64 %".760", 4
  %"for_LDG.41" = inttoptr i64 %".761" to ptr
  %".762" = load float, ptr %"for_LDG.41"
  %".763" = bitcast ptr %"R49" to ptr
  store float %".762", ptr %".763"
  ; FFMA R58, R15, R13, R58
  %".766" = load float, ptr %"R15"
  %".767" = load float, ptr %"R13"
  %".768" = load float, ptr %"R58"
  %"fmul.7" = fmul float %".766", %".767"
  %"fadd.7" = fadd float %"fmul.7", %".768"
  %".769" = bitcast ptr %"R58" to ptr
  store float %"fadd.7", ptr %".769"
  ; LDG.E.SYS R35, [R22]
  %".772" = load i32, ptr %"R22"
  %"zext.117" = zext i32 %".772" to i64
  %".773" = load i32, ptr %"R23"
  %"zext.118" = zext i32 %".773" to i64
  %"shl.45" = shl i64 %"zext.118", 32
  %"or.42" = or i64 %"shl.45", %"zext.117"
  %".774" = inttoptr i64 %"or.42" to ptr
  %".775" = ptrtoint ptr %".774" to i64
  %".776" = add i64 %".775", 0
  %"for_LDG.42" = inttoptr i64 %".776" to ptr
  %".777" = load float, ptr %"for_LDG.42"
  %".778" = bitcast ptr %"R35" to ptr
  store float %".777", ptr %".778"
  ; LDG.E.SYS R15, [R22+0x4]
  %".781" = load i32, ptr %"R22"
  %"zext.119" = zext i32 %".781" to i64
  %".782" = load i32, ptr %"R23"
  %"zext.120" = zext i32 %".782" to i64
  %"shl.46" = shl i64 %"zext.120", 32
  %"or.43" = or i64 %"shl.46", %"zext.119"
  %".783" = inttoptr i64 %"or.43" to ptr
  %".784" = ptrtoint ptr %".783" to i64
  %".785" = add i64 %".784", 4
  %"for_LDG.43" = inttoptr i64 %".785" to ptr
  %".786" = load float, ptr %"for_LDG.43"
  %".787" = bitcast ptr %"R15" to ptr
  store float %".786", ptr %".787"
  ; LDG.E.SYS R13, [R22+0x8]
  %".790" = load i32, ptr %"R22"
  %"zext.121" = zext i32 %".790" to i64
  %".791" = load i32, ptr %"R23"
  %"zext.122" = zext i32 %".791" to i64
  %"shl.47" = shl i64 %"zext.122", 32
  %"or.44" = or i64 %"shl.47", %"zext.121"
  %".792" = inttoptr i64 %"or.44" to ptr
  %".793" = ptrtoint ptr %".792" to i64
  %".794" = add i64 %".793", 8
  %"for_LDG.44" = inttoptr i64 %".794" to ptr
  %".795" = load float, ptr %"for_LDG.44"
  %".796" = bitcast ptr %"R13" to ptr
  store float %".795", ptr %".796"
  ; LDG.E.SYS R37, [R24+0x8]
  %".799" = load i32, ptr %"R24"
  %"zext.123" = zext i32 %".799" to i64
  %".800" = load i32, ptr %"R25"
  %"zext.124" = zext i32 %".800" to i64
  %"shl.48" = shl i64 %"zext.124", 32
  %"or.45" = or i64 %"shl.48", %"zext.123"
  %".801" = inttoptr i64 %"or.45" to ptr
  %".802" = ptrtoint ptr %".801" to i64
  %".803" = add i64 %".802", 8
  %"for_LDG.45" = inttoptr i64 %".803" to ptr
  %".804" = load float, ptr %"for_LDG.45"
  %".805" = bitcast ptr %"R37" to ptr
  store float %".804", ptr %".805"
  ; LDG.E.SYS R45, [R22+0xc]
  %".808" = load i32, ptr %"R22"
  %"zext.125" = zext i32 %".808" to i64
  %".809" = load i32, ptr %"R23"
  %"zext.126" = zext i32 %".809" to i64
  %"shl.49" = shl i64 %"zext.126", 32
  %"or.46" = or i64 %"shl.49", %"zext.125"
  %".810" = inttoptr i64 %"or.46" to ptr
  %".811" = ptrtoint ptr %".810" to i64
  %".812" = add i64 %".811", 12
  %"for_LDG.46" = inttoptr i64 %".812" to ptr
  %".813" = load float, ptr %"for_LDG.46"
  %".814" = bitcast ptr %"R45" to ptr
  store float %".813", ptr %".814"
  ; LDG.E.SYS R34, [R24+0xc]
  %".817" = load i32, ptr %"R24"
  %"zext.127" = zext i32 %".817" to i64
  %".818" = load i32, ptr %"R25"
  %"zext.128" = zext i32 %".818" to i64
  %"shl.50" = shl i64 %"zext.128", 32
  %"or.47" = or i64 %"shl.50", %"zext.127"
  %".819" = inttoptr i64 %"or.47" to ptr
  %".820" = ptrtoint ptr %".819" to i64
  %".821" = add i64 %".820", 12
  %"for_LDG.47" = inttoptr i64 %".821" to ptr
  %".822" = load float, ptr %"for_LDG.47"
  %".823" = bitcast ptr %"R34" to ptr
  store float %".822", ptr %".823"
  ; FFMA R14, R51, R12, R14
  %".826" = load float, ptr %"R51"
  %".827" = load float, ptr %"R12"
  %".828" = load float, ptr %"R14"
  %"fmul.8" = fmul float %".826", %".827"
  %"fadd.8" = fadd float %"fmul.8", %".828"
  %".829" = bitcast ptr %"R14" to ptr
  store float %"fadd.8", ptr %".829"
  ; IADD3 R9, R9, -0x10, RZ
  %".832" = load i32, ptr %"R9"
  %"add.50" = add i32 %".832", -16
  %"add.51" = add i32 %"add.50", 0
  store i32 %"add.51", ptr %"R9"
  ; FFMA R14, R53, R10, R14
  %".835" = load float, ptr %"R53"
  %".836" = load float, ptr %"R10"
  %".837" = load float, ptr %"R14"
  %"fmul.9" = fmul float %".835", %".836"
  %"fadd.9" = fadd float %"fmul.9", %".837"
  %".838" = bitcast ptr %"R14" to ptr
  store float %"fadd.9", ptr %".838"
  ; FFMA R14, R55, R16, R14
  %".841" = load float, ptr %"R55"
  %".842" = load float, ptr %"R16"
  %".843" = load float, ptr %"R14"
  %"fmul.10" = fmul float %".841", %".842"
  %"fadd.10" = fadd float %"fmul.10", %".843"
  %".844" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".844"
  ; FFMA R14, R60, R17, R14
  %".847" = load float, ptr %"R60"
  %".848" = load float, ptr %"R17"
  %".849" = load float, ptr %"R14"
  %"fmul.11" = fmul float %".847", %".848"
  %"fadd.11" = fadd float %"fmul.11", %".849"
  %".850" = bitcast ptr %"R14" to ptr
  store float %"fadd.11", ptr %".850"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".853" = load i32, ptr %"R9"
  %".854" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".853", 12
  %".855" = and i1 %"cmp.8", %".854"
  store i1 %".855", ptr %"P1"
  ; IADD3 R11, R11, 0x10, RZ
  %".858" = load i32, ptr %"R11"
  %"add.52" = add i32 %".858", 16
  %"add.53" = add i32 %"add.52", 0
  store i32 %"add.53", ptr %"R11"
  ; FFMA R57, R12, R57, R58
  %".861" = load float, ptr %"R12"
  %".862" = load float, ptr %"R57"
  %".863" = load float, ptr %"R58"
  %"fmul.12" = fmul float %".861", %".862"
  %"fadd.12" = fadd float %"fmul.12", %".863"
  %".864" = bitcast ptr %"R57" to ptr
  store float %"fadd.12", ptr %".864"
  ; FFMA R57, R10, R59, R57
  %".867" = load float, ptr %"R10"
  %".868" = load float, ptr %"R59"
  %".869" = load float, ptr %"R57"
  %"fmul.13" = fmul float %".867", %".868"
  %"fadd.13" = fadd float %"fmul.13", %".869"
  %".870" = bitcast ptr %"R57" to ptr
  store float %"fadd.13", ptr %".870"
  ; FFMA R57, R16, R61, R57
  %".873" = load float, ptr %"R16"
  %".874" = load float, ptr %"R61"
  %".875" = load float, ptr %"R57"
  %"fmul.14" = fmul float %".873", %".874"
  %"fadd.14" = fadd float %"fmul.14", %".875"
  %".876" = bitcast ptr %"R57" to ptr
  store float %"fadd.14", ptr %".876"
  ; FFMA R52, R17, R52, R57
  %".879" = load float, ptr %"R17"
  %".880" = load float, ptr %"R52"
  %".881" = load float, ptr %"R57"
  %"fmul.15" = fmul float %".879", %".880"
  %"fadd.15" = fadd float %"fmul.15", %".881"
  %".882" = bitcast ptr %"R52" to ptr
  store float %"fadd.15", ptr %".882"
  ; FFMA R14, R54, R19, R14
  %".885" = load float, ptr %"R54"
  %".886" = load float, ptr %"R19"
  %".887" = load float, ptr %"R14"
  %"fmul.16" = fmul float %".885", %".886"
  %"fadd.16" = fadd float %"fmul.16", %".887"
  %".888" = bitcast ptr %"R14" to ptr
  store float %"fadd.16", ptr %".888"
  ; FFMA R52, R19, R56, R52
  %".891" = load float, ptr %"R19"
  %".892" = load float, ptr %"R56"
  %".893" = load float, ptr %"R52"
  %"fmul.17" = fmul float %".891", %".892"
  %"fadd.17" = fadd float %"fmul.17", %".893"
  %".894" = bitcast ptr %"R52" to ptr
  store float %"fadd.17", ptr %".894"
  ; FFMA R14, R39, R20, R14
  %".897" = load float, ptr %"R39"
  %".898" = load float, ptr %"R20"
  %".899" = load float, ptr %"R14"
  %"fmul.18" = fmul float %".897", %".898"
  %"fadd.18" = fadd float %"fmul.18", %".899"
  %".900" = bitcast ptr %"R14" to ptr
  store float %"fadd.18", ptr %".900"
  ; FFMA R41, R20, R41, R52
  %".903" = load float, ptr %"R20"
  %".904" = load float, ptr %"R41"
  %".905" = load float, ptr %"R52"
  %"fmul.19" = fmul float %".903", %".904"
  %"fadd.19" = fadd float %"fmul.19", %".905"
  %".906" = bitcast ptr %"R41" to ptr
  store float %"fadd.19", ptr %".906"
  ; FFMA R14, R38, R21, R14
  %".909" = load float, ptr %"R38"
  %".910" = load float, ptr %"R21"
  %".911" = load float, ptr %"R14"
  %"fmul.20" = fmul float %".909", %".910"
  %"fadd.20" = fadd float %"fmul.20", %".911"
  %".912" = bitcast ptr %"R14" to ptr
  store float %"fadd.20", ptr %".912"
  ; FFMA R40, R21, R40, R41
  %".915" = load float, ptr %"R21"
  %".916" = load float, ptr %"R40"
  %".917" = load float, ptr %"R41"
  %"fmul.21" = fmul float %".915", %".916"
  %"fadd.21" = fadd float %"fmul.21", %".917"
  %".918" = bitcast ptr %"R40" to ptr
  store float %"fadd.21", ptr %".918"
  ; FFMA R14, R47, R42, R14
  %".921" = load float, ptr %"R47"
  %".922" = load float, ptr %"R42"
  %".923" = load float, ptr %"R14"
  %"fmul.22" = fmul float %".921", %".922"
  %"fadd.22" = fadd float %"fmul.22", %".923"
  %".924" = bitcast ptr %"R14" to ptr
  store float %"fadd.22", ptr %".924"
  ; FFMA R43, R42, R43, R40
  %".927" = load float, ptr %"R42"
  %".928" = load float, ptr %"R43"
  %".929" = load float, ptr %"R40"
  %"fmul.23" = fmul float %".927", %".928"
  %"fadd.23" = fadd float %"fmul.23", %".929"
  %".930" = bitcast ptr %"R43" to ptr
  store float %"fadd.23", ptr %".930"
  ; FFMA R18, R44, R18, R43
  %".933" = load float, ptr %"R44"
  %".934" = load float, ptr %"R18"
  %".935" = load float, ptr %"R43"
  %"fmul.24" = fmul float %".933", %".934"
  %"fadd.24" = fadd float %"fmul.24", %".935"
  %".936" = bitcast ptr %"R18" to ptr
  store float %"fadd.24", ptr %".936"
  ; FFMA R14, R35, R44, R14
  %".939" = load float, ptr %"R35"
  %".940" = load float, ptr %"R44"
  %".941" = load float, ptr %"R14"
  %"fmul.25" = fmul float %".939", %".940"
  %"fadd.25" = fadd float %"fmul.25", %".941"
  %".942" = bitcast ptr %"R14" to ptr
  store float %"fadd.25", ptr %".942"
  ; FFMA R18, R46, R49, R18
  %".945" = load float, ptr %"R46"
  %".946" = load float, ptr %"R49"
  %".947" = load float, ptr %"R18"
  %"fmul.26" = fmul float %".945", %".946"
  %"fadd.26" = fadd float %"fmul.26", %".947"
  %".948" = bitcast ptr %"R18" to ptr
  store float %"fadd.26", ptr %".948"
  ; FFMA R14, R15, R46, R14
  %".951" = load float, ptr %"R15"
  %".952" = load float, ptr %"R46"
  %".953" = load float, ptr %"R14"
  %"fmul.27" = fmul float %".951", %".952"
  %"fadd.27" = fadd float %"fmul.27", %".953"
  %".954" = bitcast ptr %"R14" to ptr
  store float %"fadd.27", ptr %".954"
  ; FFMA R13, R13, R48, R14
  %".957" = load float, ptr %"R13"
  %".958" = load float, ptr %"R48"
  %".959" = load float, ptr %"R14"
  %"fmul.28" = fmul float %".957", %".958"
  %"fadd.28" = fadd float %"fmul.28", %".959"
  %".960" = bitcast ptr %"R13" to ptr
  store float %"fadd.28", ptr %".960"
  ; FFMA R37, R48, R37, R18
  %".963" = load float, ptr %"R48"
  %".964" = load float, ptr %"R37"
  %".965" = load float, ptr %"R18"
  %"fmul.29" = fmul float %".963", %".964"
  %"fadd.29" = fadd float %"fmul.29", %".965"
  %".966" = bitcast ptr %"R37" to ptr
  store float %"fadd.29", ptr %".966"
  ; FFMA R52, R45, R50, R13
  %".969" = load float, ptr %"R45"
  %".970" = load float, ptr %"R50"
  %".971" = load float, ptr %"R13"
  %"fmul.30" = fmul float %".969", %".970"
  %"fadd.30" = fadd float %"fmul.30", %".971"
  %".972" = bitcast ptr %"R52" to ptr
  store float %"fadd.30", ptr %".972"
  ; FFMA R54, R50, R34, R37
  %".975" = load float, ptr %"R50"
  %".976" = load float, ptr %"R34"
  %".977" = load float, ptr %"R37"
  %"fmul.31" = fmul float %".975", %".976"
  %"fadd.31" = fadd float %"fmul.31", %".977"
  %".978" = bitcast ptr %"R54" to ptr
  store float %"fadd.31", ptr %".978"
  ; @P1 BRA `(.L_x_5)
  %".981" = load i1, ptr %"P1"
  %".982" = icmp ne i1 %".981", 1
  br i1 %".982", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".985" = load i32, ptr %"R9"
  %".986" = load i1, ptr %"PT"
  %"cmp.9" = icmp sgt i32 %".985", 4
  %".987" = and i1 %"cmp.9", %".986"
  store i1 %".987", ptr %"P1"
  ; @!P1 BRA `(.L_x_6)
  %".990" = load i1, ptr %"P1"
  %".991" = icmp eq i1 %".990", 1
  br i1 %".991", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".994" = load i32, ptr %"R0"
  %".995" = load i32, ptr %"R11"
  %"add.54" = add i32 %".994", %".995"
  %"add.55" = add i32 %"add.54", 0
  store i32 %"add.55", ptr %"R13"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17"
  ; LEA R14, R2.reuse, R13, 0x2
  %".1000" = load i32, ptr %"R2"
  %".1001" = load i32, ptr %"R13"
  %"shl.51" = shl i32 %".1000", 2
  %"add.56" = add i32 %"shl.51", %".1001"
  store i32 %"add.56", ptr %"R14"
  ; IMAD R10, R2, 0x3, R13
  %".1004" = load i32, ptr %"R2"
  %".1005" = load i32, ptr %"R13"
  %"mul.21" = mul i32 %".1004", 3
  %"add.57" = add i32 %"mul.21", %".1005"
  store i32 %"add.57", ptr %"R10"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".1008" = load i32, ptr %"R11"
  %"add.58" = add i32 %".1008", 4
  %"add.59" = add i32 %"add.58", 0
  store i32 %"add.59", ptr %"R12"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".1011" = load i32, ptr %"R11"
  %".1012" = load i32, ptr %"R17"
  %"zext.129" = zext i32 %".1011" to i64
  %"zext.130" = zext i32 %".1012" to i64
  %"mul.22" = mul i64 %"zext.129", %"zext.130"
  %".1013" = ptrtoint ptr %"Arg_1" to i64
  %"add.60" = add i64 %"mul.22", %".1013"
  %".1014" = and i64 %"add.60", 18446744069414584320
  %".1015" = lshr i64 %".1014", 32
  %"trunc32.32" = trunc i64 %".1015" to i32
  %"trunc32.33" = trunc i64 %"add.60" to i32
  store i32 %"trunc32.33", ptr %"R18"
  store i32 %"trunc32.32", ptr %"R19"
  ; IADD3 R16, R14, 0x4, RZ
  %".1019" = load i32, ptr %"R14"
  %"add.61" = add i32 %".1019", 4
  %"add.62" = add i32 %"add.61", 0
  store i32 %"add.62", ptr %"R16"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".1022" = load i32, ptr %"R10"
  %"add.63" = add i32 %".1022", 4
  %"add.64" = add i32 %"add.63", 0
  store i32 %"add.64", ptr %"R15"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".1025" = load i32, ptr %"R10"
  %".1026" = load i32, ptr %"R17"
  %"zext.131" = zext i32 %".1025" to i64
  %"zext.132" = zext i32 %".1026" to i64
  %"mul.23" = mul i64 %"zext.131", %"zext.132"
  %".1027" = ptrtoint ptr %"Arg_2" to i64
  %"add.65" = add i64 %"mul.23", %".1027"
  %".1028" = and i64 %"add.65", 18446744069414584320
  %".1029" = lshr i64 %".1028", 32
  %"trunc32.34" = trunc i64 %".1029" to i32
  %"trunc32.35" = trunc i64 %"add.65" to i32
  store i32 %"trunc32.35", ptr %"R22"
  store i32 %"trunc32.34", ptr %"R23"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".1033" = load i32, ptr %"R14"
  %".1034" = load i32, ptr %"R17"
  %"zext.133" = zext i32 %".1033" to i64
  %"zext.134" = zext i32 %".1034" to i64
  %"mul.24" = mul i64 %"zext.133", %"zext.134"
  %".1035" = ptrtoint ptr %"Arg_2" to i64
  %"add.66" = add i64 %"mul.24", %".1035"
  %".1036" = and i64 %"add.66", 18446744069414584320
  %".1037" = lshr i64 %".1036", 32
  %"trunc32.36" = trunc i64 %".1037" to i32
  %"trunc32.37" = trunc i64 %"add.66" to i32
  store i32 %"trunc32.37", ptr %"R20"
  store i32 %"trunc32.36", ptr %"R21"
  ; LDG.E.SYS R39, [R18]
  %".1041" = load i32, ptr %"R18"
  %"zext.135" = zext i32 %".1041" to i64
  %".1042" = load i32, ptr %"R19"
  %"zext.136" = zext i32 %".1042" to i64
  %"shl.52" = shl i64 %"zext.136", 32
  %"or.48" = or i64 %"shl.52", %"zext.135"
  %".1043" = inttoptr i64 %"or.48" to ptr
  %".1044" = ptrtoint ptr %".1043" to i64
  %".1045" = add i64 %".1044", 0
  %"for_LDG.48" = inttoptr i64 %".1045" to ptr
  %".1046" = load float, ptr %"for_LDG.48"
  %".1047" = bitcast ptr %"R39" to ptr
  store float %".1046", ptr %".1047"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".1050" = load i32, ptr %"R12"
  %".1051" = load i32, ptr %"R17"
  %"zext.137" = zext i32 %".1050" to i64
  %"zext.138" = zext i32 %".1051" to i64
  %"mul.25" = mul i64 %"zext.137", %"zext.138"
  %".1052" = ptrtoint ptr %"Arg_1" to i64
  %"add.67" = add i64 %"mul.25", %".1052"
  %".1053" = and i64 %"add.67", 18446744069414584320
  %".1054" = lshr i64 %".1053", 32
  %"trunc32.38" = trunc i64 %".1054" to i32
  %"trunc32.39" = trunc i64 %"add.67" to i32
  store i32 %"trunc32.39", ptr %"R12"
  store i32 %"trunc32.38", ptr %"R13"
  ; LDG.E.SYS R37, [R22]
  %".1058" = load i32, ptr %"R22"
  %"zext.139" = zext i32 %".1058" to i64
  %".1059" = load i32, ptr %"R23"
  %"zext.140" = zext i32 %".1059" to i64
  %"shl.53" = shl i64 %"zext.140", 32
  %"or.49" = or i64 %"shl.53", %"zext.139"
  %".1060" = inttoptr i64 %"or.49" to ptr
  %".1061" = ptrtoint ptr %".1060" to i64
  %".1062" = add i64 %".1061", 0
  %"for_LDG.49" = inttoptr i64 %".1062" to ptr
  %".1063" = load float, ptr %"for_LDG.49"
  %".1064" = bitcast ptr %"R37" to ptr
  store float %".1063", ptr %".1064"
  ; LDG.E.SYS R36, [R20]
  %".1067" = load i32, ptr %"R20"
  %"zext.141" = zext i32 %".1067" to i64
  %".1068" = load i32, ptr %"R21"
  %"zext.142" = zext i32 %".1068" to i64
  %"shl.54" = shl i64 %"zext.142", 32
  %"or.50" = or i64 %"shl.54", %"zext.141"
  %".1069" = inttoptr i64 %"or.50" to ptr
  %".1070" = ptrtoint ptr %".1069" to i64
  %".1071" = add i64 %".1070", 0
  %"for_LDG.50" = inttoptr i64 %".1071" to ptr
  %".1072" = load float, ptr %"for_LDG.50"
  %".1073" = bitcast ptr %"R36" to ptr
  store float %".1072", ptr %".1073"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".1076" = load i32, ptr %"R15"
  %".1077" = load i32, ptr %"R17"
  %"zext.143" = zext i32 %".1076" to i64
  %"zext.144" = zext i32 %".1077" to i64
  %"mul.26" = mul i64 %"zext.143", %"zext.144"
  %".1078" = ptrtoint ptr %"Arg_2" to i64
  %"add.68" = add i64 %"mul.26", %".1078"
  %".1079" = and i64 %"add.68", 18446744069414584320
  %".1080" = lshr i64 %".1079", 32
  %"trunc32.40" = trunc i64 %".1080" to i32
  %"trunc32.41" = trunc i64 %"add.68" to i32
  store i32 %"trunc32.41", ptr %"R14"
  store i32 %"trunc32.40", ptr %"R15"
  ; LDG.E.SYS R34, [R18+0x4]
  %".1084" = load i32, ptr %"R18"
  %"zext.145" = zext i32 %".1084" to i64
  %".1085" = load i32, ptr %"R19"
  %"zext.146" = zext i32 %".1085" to i64
  %"shl.55" = shl i64 %"zext.146", 32
  %"or.51" = or i64 %"shl.55", %"zext.145"
  %".1086" = inttoptr i64 %"or.51" to ptr
  %".1087" = ptrtoint ptr %".1086" to i64
  %".1088" = add i64 %".1087", 4
  %"for_LDG.51" = inttoptr i64 %".1088" to ptr
  %".1089" = load float, ptr %"for_LDG.51"
  %".1090" = bitcast ptr %"R34" to ptr
  store float %".1089", ptr %".1090"
  ; LDG.E.SYS R38, [R22+0x4]
  %".1093" = load i32, ptr %"R22"
  %"zext.147" = zext i32 %".1093" to i64
  %".1094" = load i32, ptr %"R23"
  %"zext.148" = zext i32 %".1094" to i64
  %"shl.56" = shl i64 %"zext.148", 32
  %"or.52" = or i64 %"shl.56", %"zext.147"
  %".1095" = inttoptr i64 %"or.52" to ptr
  %".1096" = ptrtoint ptr %".1095" to i64
  %".1097" = add i64 %".1096", 4
  %"for_LDG.52" = inttoptr i64 %".1097" to ptr
  %".1098" = load float, ptr %"for_LDG.52"
  %".1099" = bitcast ptr %"R38" to ptr
  store float %".1098", ptr %".1099"
  ; LDG.E.SYS R35, [R20+0x4]
  %".1102" = load i32, ptr %"R20"
  %"zext.149" = zext i32 %".1102" to i64
  %".1103" = load i32, ptr %"R21"
  %"zext.150" = zext i32 %".1103" to i64
  %"shl.57" = shl i64 %"zext.150", 32
  %"or.53" = or i64 %"shl.57", %"zext.149"
  %".1104" = inttoptr i64 %"or.53" to ptr
  %".1105" = ptrtoint ptr %".1104" to i64
  %".1106" = add i64 %".1105", 4
  %"for_LDG.53" = inttoptr i64 %".1106" to ptr
  %".1107" = load float, ptr %"for_LDG.53"
  %".1108" = bitcast ptr %"R35" to ptr
  store float %".1107", ptr %".1108"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".1111" = load i32, ptr %"R16"
  %".1112" = load i32, ptr %"R17"
  %"zext.151" = zext i32 %".1111" to i64
  %"zext.152" = zext i32 %".1112" to i64
  %"mul.27" = mul i64 %"zext.151", %"zext.152"
  %".1113" = ptrtoint ptr %"Arg_2" to i64
  %"add.69" = add i64 %"mul.27", %".1113"
  %".1114" = and i64 %"add.69", 18446744069414584320
  %".1115" = lshr i64 %".1114", 32
  %"trunc32.42" = trunc i64 %".1115" to i32
  %"trunc32.43" = trunc i64 %"add.69" to i32
  store i32 %"trunc32.43", ptr %"R16"
  store i32 %"trunc32.42", ptr %"R17"
  ; LDG.E.SYS R24, [R18+0x8]
  %".1119" = load i32, ptr %"R18"
  %"zext.153" = zext i32 %".1119" to i64
  %".1120" = load i32, ptr %"R19"
  %"zext.154" = zext i32 %".1120" to i64
  %"shl.58" = shl i64 %"zext.154", 32
  %"or.54" = or i64 %"shl.58", %"zext.153"
  %".1121" = inttoptr i64 %"or.54" to ptr
  %".1122" = ptrtoint ptr %".1121" to i64
  %".1123" = add i64 %".1122", 8
  %"for_LDG.54" = inttoptr i64 %".1123" to ptr
  %".1124" = load float, ptr %"for_LDG.54"
  %".1125" = bitcast ptr %"R24" to ptr
  store float %".1124", ptr %".1125"
  ; LDG.E.SYS R40, [R22+0x8]
  %".1128" = load i32, ptr %"R22"
  %"zext.155" = zext i32 %".1128" to i64
  %".1129" = load i32, ptr %"R23"
  %"zext.156" = zext i32 %".1129" to i64
  %"shl.59" = shl i64 %"zext.156", 32
  %"or.55" = or i64 %"shl.59", %"zext.155"
  %".1130" = inttoptr i64 %"or.55" to ptr
  %".1131" = ptrtoint ptr %".1130" to i64
  %".1132" = add i64 %".1131", 8
  %"for_LDG.55" = inttoptr i64 %".1132" to ptr
  %".1133" = load float, ptr %"for_LDG.55"
  %".1134" = bitcast ptr %"R40" to ptr
  store float %".1133", ptr %".1134"
  ; LDG.E.SYS R41, [R20+0x8]
  %".1137" = load i32, ptr %"R20"
  %"zext.157" = zext i32 %".1137" to i64
  %".1138" = load i32, ptr %"R21"
  %"zext.158" = zext i32 %".1138" to i64
  %"shl.60" = shl i64 %"zext.158", 32
  %"or.56" = or i64 %"shl.60", %"zext.157"
  %".1139" = inttoptr i64 %"or.56" to ptr
  %".1140" = ptrtoint ptr %".1139" to i64
  %".1141" = add i64 %".1140", 8
  %"for_LDG.56" = inttoptr i64 %".1141" to ptr
  %".1142" = load float, ptr %"for_LDG.56"
  %".1143" = bitcast ptr %"R41" to ptr
  store float %".1142", ptr %".1143"
  ; LDG.E.SYS R44, [R18+0xc]
  %".1146" = load i32, ptr %"R18"
  %"zext.159" = zext i32 %".1146" to i64
  %".1147" = load i32, ptr %"R19"
  %"zext.160" = zext i32 %".1147" to i64
  %"shl.61" = shl i64 %"zext.160", 32
  %"or.57" = or i64 %"shl.61", %"zext.159"
  %".1148" = inttoptr i64 %"or.57" to ptr
  %".1149" = ptrtoint ptr %".1148" to i64
  %".1150" = add i64 %".1149", 12
  %"for_LDG.57" = inttoptr i64 %".1150" to ptr
  %".1151" = load float, ptr %"for_LDG.57"
  %".1152" = bitcast ptr %"R44" to ptr
  store float %".1151", ptr %".1152"
  ; LDG.E.SYS R42, [R22+0xc]
  %".1155" = load i32, ptr %"R22"
  %"zext.161" = zext i32 %".1155" to i64
  %".1156" = load i32, ptr %"R23"
  %"zext.162" = zext i32 %".1156" to i64
  %"shl.62" = shl i64 %"zext.162", 32
  %"or.58" = or i64 %"shl.62", %"zext.161"
  %".1157" = inttoptr i64 %"or.58" to ptr
  %".1158" = ptrtoint ptr %".1157" to i64
  %".1159" = add i64 %".1158", 12
  %"for_LDG.58" = inttoptr i64 %".1159" to ptr
  %".1160" = load float, ptr %"for_LDG.58"
  %".1161" = bitcast ptr %"R42" to ptr
  store float %".1160", ptr %".1161"
  ; LDG.E.SYS R43, [R20+0xc]
  %".1164" = load i32, ptr %"R20"
  %"zext.163" = zext i32 %".1164" to i64
  %".1165" = load i32, ptr %"R21"
  %"zext.164" = zext i32 %".1165" to i64
  %"shl.63" = shl i64 %"zext.164", 32
  %"or.59" = or i64 %"shl.63", %"zext.163"
  %".1166" = inttoptr i64 %"or.59" to ptr
  %".1167" = ptrtoint ptr %".1166" to i64
  %".1168" = add i64 %".1167", 12
  %"for_LDG.59" = inttoptr i64 %".1168" to ptr
  %".1169" = load float, ptr %"for_LDG.59"
  %".1170" = bitcast ptr %"R43" to ptr
  store float %".1169", ptr %".1170"
  ; LDG.E.SYS R48, [R12]
  %".1173" = load i32, ptr %"R12"
  %"zext.165" = zext i32 %".1173" to i64
  %".1174" = load i32, ptr %"R13"
  %"zext.166" = zext i32 %".1174" to i64
  %"shl.64" = shl i64 %"zext.166", 32
  %"or.60" = or i64 %"shl.64", %"zext.165"
  %".1175" = inttoptr i64 %"or.60" to ptr
  %".1176" = ptrtoint ptr %".1175" to i64
  %".1177" = add i64 %".1176", 0
  %"for_LDG.60" = inttoptr i64 %".1177" to ptr
  %".1178" = load float, ptr %"for_LDG.60"
  %".1179" = bitcast ptr %"R48" to ptr
  store float %".1178", ptr %".1179"
  ; LDG.E.SYS R46, [R14]
  %".1182" = load i32, ptr %"R14"
  %"zext.167" = zext i32 %".1182" to i64
  %".1183" = load i32, ptr %"R15"
  %"zext.168" = zext i32 %".1183" to i64
  %"shl.65" = shl i64 %"zext.168", 32
  %"or.61" = or i64 %"shl.65", %"zext.167"
  %".1184" = inttoptr i64 %"or.61" to ptr
  %".1185" = ptrtoint ptr %".1184" to i64
  %".1186" = add i64 %".1185", 0
  %"for_LDG.61" = inttoptr i64 %".1186" to ptr
  %".1187" = load float, ptr %"for_LDG.61"
  %".1188" = bitcast ptr %"R46" to ptr
  store float %".1187", ptr %".1188"
  ; LDG.E.SYS R45, [R16]
  %".1191" = load i32, ptr %"R16"
  %"zext.169" = zext i32 %".1191" to i64
  %".1192" = load i32, ptr %"R17"
  %"zext.170" = zext i32 %".1192" to i64
  %"shl.66" = shl i64 %"zext.170", 32
  %"or.62" = or i64 %"shl.66", %"zext.169"
  %".1193" = inttoptr i64 %"or.62" to ptr
  %".1194" = ptrtoint ptr %".1193" to i64
  %".1195" = add i64 %".1194", 0
  %"for_LDG.62" = inttoptr i64 %".1195" to ptr
  %".1196" = load float, ptr %"for_LDG.62"
  %".1197" = bitcast ptr %"R45" to ptr
  store float %".1196", ptr %".1197"
  ; LDG.E.SYS R56, [R12+0x4]
  %".1200" = load i32, ptr %"R12"
  %"zext.171" = zext i32 %".1200" to i64
  %".1201" = load i32, ptr %"R13"
  %"zext.172" = zext i32 %".1201" to i64
  %"shl.67" = shl i64 %"zext.172", 32
  %"or.63" = or i64 %"shl.67", %"zext.171"
  %".1202" = inttoptr i64 %"or.63" to ptr
  %".1203" = ptrtoint ptr %".1202" to i64
  %".1204" = add i64 %".1203", 4
  %"for_LDG.63" = inttoptr i64 %".1204" to ptr
  %".1205" = load float, ptr %"for_LDG.63"
  %".1206" = bitcast ptr %"R56" to ptr
  store float %".1205", ptr %".1206"
  ; LDG.E.SYS R50, [R14+0x4]
  %".1209" = load i32, ptr %"R14"
  %"zext.173" = zext i32 %".1209" to i64
  %".1210" = load i32, ptr %"R15"
  %"zext.174" = zext i32 %".1210" to i64
  %"shl.68" = shl i64 %"zext.174", 32
  %"or.64" = or i64 %"shl.68", %"zext.173"
  %".1211" = inttoptr i64 %"or.64" to ptr
  %".1212" = ptrtoint ptr %".1211" to i64
  %".1213" = add i64 %".1212", 4
  %"for_LDG.64" = inttoptr i64 %".1213" to ptr
  %".1214" = load float, ptr %"for_LDG.64"
  %".1215" = bitcast ptr %"R50" to ptr
  store float %".1214", ptr %".1215"
  ; LDG.E.SYS R47, [R16+0x4]
  %".1218" = load i32, ptr %"R16"
  %"zext.175" = zext i32 %".1218" to i64
  %".1219" = load i32, ptr %"R17"
  %"zext.176" = zext i32 %".1219" to i64
  %"shl.69" = shl i64 %"zext.176", 32
  %"or.65" = or i64 %"shl.69", %"zext.175"
  %".1220" = inttoptr i64 %"or.65" to ptr
  %".1221" = ptrtoint ptr %".1220" to i64
  %".1222" = add i64 %".1221", 4
  %"for_LDG.65" = inttoptr i64 %".1222" to ptr
  %".1223" = load float, ptr %"for_LDG.65"
  %".1224" = bitcast ptr %"R47" to ptr
  store float %".1223", ptr %".1224"
  ; LDG.E.SYS R10, [R12+0x8]
  %".1227" = load i32, ptr %"R12"
  %"zext.177" = zext i32 %".1227" to i64
  %".1228" = load i32, ptr %"R13"
  %"zext.178" = zext i32 %".1228" to i64
  %"shl.70" = shl i64 %"zext.178", 32
  %"or.66" = or i64 %"shl.70", %"zext.177"
  %".1229" = inttoptr i64 %"or.66" to ptr
  %".1230" = ptrtoint ptr %".1229" to i64
  %".1231" = add i64 %".1230", 8
  %"for_LDG.66" = inttoptr i64 %".1231" to ptr
  %".1232" = load float, ptr %"for_LDG.66"
  %".1233" = bitcast ptr %"R10" to ptr
  store float %".1232", ptr %".1233"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1236" = load i32, ptr %"R14"
  %"zext.179" = zext i32 %".1236" to i64
  %".1237" = load i32, ptr %"R15"
  %"zext.180" = zext i32 %".1237" to i64
  %"shl.71" = shl i64 %"zext.180", 32
  %"or.67" = or i64 %"shl.71", %"zext.179"
  %".1238" = inttoptr i64 %"or.67" to ptr
  %".1239" = ptrtoint ptr %".1238" to i64
  %".1240" = add i64 %".1239", 8
  %"for_LDG.67" = inttoptr i64 %".1240" to ptr
  %".1241" = load float, ptr %"for_LDG.67"
  %".1242" = bitcast ptr %"R25" to ptr
  store float %".1241", ptr %".1242"
  ; LDG.E.SYS R19, [R16+0x8]
  %".1245" = load i32, ptr %"R16"
  %"zext.181" = zext i32 %".1245" to i64
  %".1246" = load i32, ptr %"R17"
  %"zext.182" = zext i32 %".1246" to i64
  %"shl.72" = shl i64 %"zext.182", 32
  %"or.68" = or i64 %"shl.72", %"zext.181"
  %".1247" = inttoptr i64 %"or.68" to ptr
  %".1248" = ptrtoint ptr %".1247" to i64
  %".1249" = add i64 %".1248", 8
  %"for_LDG.68" = inttoptr i64 %".1249" to ptr
  %".1250" = load float, ptr %"for_LDG.68"
  %".1251" = bitcast ptr %"R19" to ptr
  store float %".1250", ptr %".1251"
  ; LDG.E.SYS R18, [R12+0xc]
  %".1254" = load i32, ptr %"R12"
  %"zext.183" = zext i32 %".1254" to i64
  %".1255" = load i32, ptr %"R13"
  %"zext.184" = zext i32 %".1255" to i64
  %"shl.73" = shl i64 %"zext.184", 32
  %"or.69" = or i64 %"shl.73", %"zext.183"
  %".1256" = inttoptr i64 %"or.69" to ptr
  %".1257" = ptrtoint ptr %".1256" to i64
  %".1258" = add i64 %".1257", 12
  %"for_LDG.69" = inttoptr i64 %".1258" to ptr
  %".1259" = load float, ptr %"for_LDG.69"
  %".1260" = bitcast ptr %"R18" to ptr
  store float %".1259", ptr %".1260"
  ; LDG.E.SYS R20, [R14+0xc]
  %".1263" = load i32, ptr %"R14"
  %"zext.185" = zext i32 %".1263" to i64
  %".1264" = load i32, ptr %"R15"
  %"zext.186" = zext i32 %".1264" to i64
  %"shl.74" = shl i64 %"zext.186", 32
  %"or.70" = or i64 %"shl.74", %"zext.185"
  %".1265" = inttoptr i64 %"or.70" to ptr
  %".1266" = ptrtoint ptr %".1265" to i64
  %".1267" = add i64 %".1266", 12
  %"for_LDG.70" = inttoptr i64 %".1267" to ptr
  %".1268" = load float, ptr %"for_LDG.70"
  %".1269" = bitcast ptr %"R20" to ptr
  store float %".1268", ptr %".1269"
  ; LDG.E.SYS R21, [R16+0xc]
  %".1272" = load i32, ptr %"R16"
  %"zext.187" = zext i32 %".1272" to i64
  %".1273" = load i32, ptr %"R17"
  %"zext.188" = zext i32 %".1273" to i64
  %"shl.75" = shl i64 %"zext.188", 32
  %"or.71" = or i64 %"shl.75", %"zext.187"
  %".1274" = inttoptr i64 %"or.71" to ptr
  %".1275" = ptrtoint ptr %".1274" to i64
  %".1276" = add i64 %".1275", 12
  %"for_LDG.71" = inttoptr i64 %".1276" to ptr
  %".1277" = load float, ptr %"for_LDG.71"
  %".1278" = bitcast ptr %"R21" to ptr
  store float %".1277", ptr %".1278"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1281" = xor i1 1, 1
  %".1282" = and i1 %".1281", 1
  %".1283" = and i1 %".1282", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".1285" = load i32, ptr %"R9"
  %"add.70" = add i32 %".1285", -8
  %"add.71" = add i32 %"add.70", 0
  store i32 %"add.71", ptr %"R9"
  ; IADD3 R11, R11, 0x8, RZ
  %".1288" = load i32, ptr %"R11"
  %"add.72" = add i32 %".1288", 8
  %"add.73" = add i32 %"add.72", 0
  store i32 %"add.73", ptr %"R11"
  ; FFMA R37, R37, R39, R52
  %".1291" = load float, ptr %"R37"
  %".1292" = load float, ptr %"R39"
  %".1293" = load float, ptr %"R52"
  %"fmul.32" = fmul float %".1291", %".1292"
  %"fadd.32" = fadd float %"fmul.32", %".1293"
  %".1294" = bitcast ptr %"R37" to ptr
  store float %"fadd.32", ptr %".1294"
  ; FFMA R36, R39, R36, R54
  %".1297" = load float, ptr %"R39"
  %".1298" = load float, ptr %"R36"
  %".1299" = load float, ptr %"R54"
  %"fmul.33" = fmul float %".1297", %".1298"
  %"fadd.33" = fadd float %"fmul.33", %".1299"
  %".1300" = bitcast ptr %"R36" to ptr
  store float %"fadd.33", ptr %".1300"
  ; FFMA R37, R38, R34, R37
  %".1303" = load float, ptr %"R38"
  %".1304" = load float, ptr %"R34"
  %".1305" = load float, ptr %"R37"
  %"fmul.34" = fmul float %".1303", %".1304"
  %"fadd.34" = fadd float %"fmul.34", %".1305"
  %".1306" = bitcast ptr %"R37" to ptr
  store float %"fadd.34", ptr %".1306"
  ; FFMA R35, R34, R35, R36
  %".1309" = load float, ptr %"R34"
  %".1310" = load float, ptr %"R35"
  %".1311" = load float, ptr %"R36"
  %"fmul.35" = fmul float %".1309", %".1310"
  %"fadd.35" = fadd float %"fmul.35", %".1311"
  %".1312" = bitcast ptr %"R35" to ptr
  store float %"fadd.35", ptr %".1312"
  ; FFMA R37, R40, R24, R37
  %".1315" = load float, ptr %"R40"
  %".1316" = load float, ptr %"R24"
  %".1317" = load float, ptr %"R37"
  %"fmul.36" = fmul float %".1315", %".1316"
  %"fadd.36" = fadd float %"fmul.36", %".1317"
  %".1318" = bitcast ptr %"R37" to ptr
  store float %"fadd.36", ptr %".1318"
  ; FFMA R35, R24, R41, R35
  %".1321" = load float, ptr %"R24"
  %".1322" = load float, ptr %"R41"
  %".1323" = load float, ptr %"R35"
  %"fmul.37" = fmul float %".1321", %".1322"
  %"fadd.37" = fadd float %"fmul.37", %".1323"
  %".1324" = bitcast ptr %"R35" to ptr
  store float %"fadd.37", ptr %".1324"
  ; FFMA R37, R42, R44, R37
  %".1327" = load float, ptr %"R42"
  %".1328" = load float, ptr %"R44"
  %".1329" = load float, ptr %"R37"
  %"fmul.38" = fmul float %".1327", %".1328"
  %"fadd.38" = fadd float %"fmul.38", %".1329"
  %".1330" = bitcast ptr %"R37" to ptr
  store float %"fadd.38", ptr %".1330"
  ; FFMA R35, R44, R43, R35
  %".1333" = load float, ptr %"R44"
  %".1334" = load float, ptr %"R43"
  %".1335" = load float, ptr %"R35"
  %"fmul.39" = fmul float %".1333", %".1334"
  %"fadd.39" = fadd float %"fmul.39", %".1335"
  %".1336" = bitcast ptr %"R35" to ptr
  store float %"fadd.39", ptr %".1336"
  ; FFMA R37, R46, R48, R37
  %".1339" = load float, ptr %"R46"
  %".1340" = load float, ptr %"R48"
  %".1341" = load float, ptr %"R37"
  %"fmul.40" = fmul float %".1339", %".1340"
  %"fadd.40" = fadd float %"fmul.40", %".1341"
  %".1342" = bitcast ptr %"R37" to ptr
  store float %"fadd.40", ptr %".1342"
  ; FFMA R35, R48, R45, R35
  %".1345" = load float, ptr %"R48"
  %".1346" = load float, ptr %"R45"
  %".1347" = load float, ptr %"R35"
  %"fmul.41" = fmul float %".1345", %".1346"
  %"fadd.41" = fadd float %"fmul.41", %".1347"
  %".1348" = bitcast ptr %"R35" to ptr
  store float %"fadd.41", ptr %".1348"
  ; FFMA R37, R50, R56, R37
  %".1351" = load float, ptr %"R50"
  %".1352" = load float, ptr %"R56"
  %".1353" = load float, ptr %"R37"
  %"fmul.42" = fmul float %".1351", %".1352"
  %"fadd.42" = fadd float %"fmul.42", %".1353"
  %".1354" = bitcast ptr %"R37" to ptr
  store float %"fadd.42", ptr %".1354"
  ; FFMA R35, R56, R47, R35
  %".1357" = load float, ptr %"R56"
  %".1358" = load float, ptr %"R47"
  %".1359" = load float, ptr %"R35"
  %"fmul.43" = fmul float %".1357", %".1358"
  %"fadd.43" = fadd float %"fmul.43", %".1359"
  %".1360" = bitcast ptr %"R35" to ptr
  store float %"fadd.43", ptr %".1360"
  ; FFMA R25, R25, R10, R37
  %".1363" = load float, ptr %"R25"
  %".1364" = load float, ptr %"R10"
  %".1365" = load float, ptr %"R37"
  %"fmul.44" = fmul float %".1363", %".1364"
  %"fadd.44" = fadd float %"fmul.44", %".1365"
  %".1366" = bitcast ptr %"R25" to ptr
  store float %"fadd.44", ptr %".1366"
  ; FFMA R19, R10, R19, R35
  %".1369" = load float, ptr %"R10"
  %".1370" = load float, ptr %"R19"
  %".1371" = load float, ptr %"R35"
  %"fmul.45" = fmul float %".1369", %".1370"
  %"fadd.45" = fadd float %"fmul.45", %".1371"
  %".1372" = bitcast ptr %"R19" to ptr
  store float %"fadd.45", ptr %".1372"
  ; FFMA R52, R20, R18, R25
  %".1375" = load float, ptr %"R20"
  %".1376" = load float, ptr %"R18"
  %".1377" = load float, ptr %"R25"
  %"fmul.46" = fmul float %".1375", %".1376"
  %"fadd.46" = fadd float %"fmul.46", %".1377"
  %".1378" = bitcast ptr %"R52" to ptr
  store float %"fadd.46", ptr %".1378"
  ; FFMA R54, R18, R21, R19
  %".1381" = load float, ptr %"R18"
  %".1382" = load float, ptr %"R21"
  %".1383" = load float, ptr %"R19"
  %"fmul.47" = fmul float %".1381", %".1382"
  %"fadd.47" = fadd float %"fmul.47", %".1383"
  %".1384" = bitcast ptr %"R54" to ptr
  store float %"fadd.47", ptr %".1384"
  br label %".L_x_6"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1388" = load i32, ptr %"R9"
  %".1389" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".1388", 0
  %".1390" = or i1 %"cmp.10", %".1389"
  store i1 %".1390", ptr %"P0"
  ; @!P0 BRA `(.L_x_2)
  %".1393" = load i1, ptr %"P0"
  %".1394" = icmp eq i1 %".1393", 1
  br i1 %".1394", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1397" = load i32, ptr %"R0"
  %".1398" = load i32, ptr %"R11"
  %"add.74" = add i32 %".1397", %".1398"
  %"add.75" = add i32 %"add.74", 0
  store i32 %"add.75", ptr %"R13"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1403" = load i32, ptr %"R2"
  %".1404" = load i32, ptr %"R13"
  %"shl.76" = shl i32 %".1403", 2
  %"add.76" = add i32 %"shl.76", %".1404"
  store i32 %"add.76", ptr %"R17"
  ; IMAD R15, R2, 0x3, R13
  %".1407" = load i32, ptr %"R2"
  %".1408" = load i32, ptr %"R13"
  %"mul.28" = mul i32 %".1407", 3
  %"add.77" = add i32 %"mul.28", %".1408"
  store i32 %"add.77", ptr %"R15"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1411" = load i32, ptr %"R11"
  %".1412" = load i32, ptr %"R16"
  %"zext.189" = zext i32 %".1411" to i64
  %"zext.190" = zext i32 %".1412" to i64
  %"mul.29" = mul i64 %"zext.189", %"zext.190"
  %".1413" = ptrtoint ptr %"Arg_1" to i64
  %"add.78" = add i64 %"mul.29", %".1413"
  %".1414" = and i64 %"add.78", 18446744069414584320
  %".1415" = lshr i64 %".1414", 32
  %"trunc32.44" = trunc i64 %".1415" to i32
  %"trunc32.45" = trunc i64 %"add.78" to i32
  store i32 %"trunc32.45", ptr %"R12"
  store i32 %"trunc32.44", ptr %"R13"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1419" = load i32, ptr %"R15"
  %".1420" = load i32, ptr %"R16"
  %"zext.191" = zext i32 %".1419" to i64
  %"zext.192" = zext i32 %".1420" to i64
  %"mul.30" = mul i64 %"zext.191", %"zext.192"
  %".1421" = ptrtoint ptr %"Arg_2" to i64
  %"add.79" = add i64 %"mul.30", %".1421"
  %".1422" = and i64 %"add.79", 18446744069414584320
  %".1423" = lshr i64 %".1422", 32
  %"trunc32.46" = trunc i64 %".1423" to i32
  %"trunc32.47" = trunc i64 %"add.79" to i32
  store i32 %"trunc32.47", ptr %"R14"
  store i32 %"trunc32.46", ptr %"R15"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1427" = load i32, ptr %"R17"
  %".1428" = load i32, ptr %"R16"
  %"zext.193" = zext i32 %".1427" to i64
  %"zext.194" = zext i32 %".1428" to i64
  %"mul.31" = mul i64 %"zext.193", %"zext.194"
  %".1429" = ptrtoint ptr %"Arg_2" to i64
  %"add.80" = add i64 %"mul.31", %".1429"
  %".1430" = and i64 %"add.80", 18446744069414584320
  %".1431" = lshr i64 %".1430", 32
  %"trunc32.48" = trunc i64 %".1431" to i32
  %"trunc32.49" = trunc i64 %"add.80" to i32
  store i32 %"trunc32.49", ptr %"R16"
  store i32 %"trunc32.48", ptr %"R17"
  ; LDG.E.SYS R21, [R12]
  %".1435" = load i32, ptr %"R12"
  %"zext.195" = zext i32 %".1435" to i64
  %".1436" = load i32, ptr %"R13"
  %"zext.196" = zext i32 %".1436" to i64
  %"shl.77" = shl i64 %"zext.196", 32
  %"or.72" = or i64 %"shl.77", %"zext.195"
  %".1437" = inttoptr i64 %"or.72" to ptr
  %".1438" = ptrtoint ptr %".1437" to i64
  %".1439" = add i64 %".1438", 0
  %"for_LDG.72" = inttoptr i64 %".1439" to ptr
  %".1440" = load float, ptr %"for_LDG.72"
  %".1441" = bitcast ptr %"R21" to ptr
  store float %".1440", ptr %".1441"
  ; LDG.E.SYS R19, [R14]
  %".1444" = load i32, ptr %"R14"
  %"zext.197" = zext i32 %".1444" to i64
  %".1445" = load i32, ptr %"R15"
  %"zext.198" = zext i32 %".1445" to i64
  %"shl.78" = shl i64 %"zext.198", 32
  %"or.73" = or i64 %"shl.78", %"zext.197"
  %".1446" = inttoptr i64 %"or.73" to ptr
  %".1447" = ptrtoint ptr %".1446" to i64
  %".1448" = add i64 %".1447", 0
  %"for_LDG.73" = inttoptr i64 %".1448" to ptr
  %".1449" = load float, ptr %"for_LDG.73"
  %".1450" = bitcast ptr %"R19" to ptr
  store float %".1449", ptr %".1450"
  ; LDG.E.SYS R10, [R16]
  %".1453" = load i32, ptr %"R16"
  %"zext.199" = zext i32 %".1453" to i64
  %".1454" = load i32, ptr %"R17"
  %"zext.200" = zext i32 %".1454" to i64
  %"shl.79" = shl i64 %"zext.200", 32
  %"or.74" = or i64 %"shl.79", %"zext.199"
  %".1455" = inttoptr i64 %"or.74" to ptr
  %".1456" = ptrtoint ptr %".1455" to i64
  %".1457" = add i64 %".1456", 0
  %"for_LDG.74" = inttoptr i64 %".1457" to ptr
  %".1458" = load float, ptr %"for_LDG.74"
  %".1459" = bitcast ptr %"R10" to ptr
  store float %".1458", ptr %".1459"
  ; LDG.E.SYS R23, [R12+0x4]
  %".1462" = load i32, ptr %"R12"
  %"zext.201" = zext i32 %".1462" to i64
  %".1463" = load i32, ptr %"R13"
  %"zext.202" = zext i32 %".1463" to i64
  %"shl.80" = shl i64 %"zext.202", 32
  %"or.75" = or i64 %"shl.80", %"zext.201"
  %".1464" = inttoptr i64 %"or.75" to ptr
  %".1465" = ptrtoint ptr %".1464" to i64
  %".1466" = add i64 %".1465", 4
  %"for_LDG.75" = inttoptr i64 %".1466" to ptr
  %".1467" = load float, ptr %"for_LDG.75"
  %".1468" = bitcast ptr %"R23" to ptr
  store float %".1467", ptr %".1468"
  ; LDG.E.SYS R18, [R14+0x4]
  %".1471" = load i32, ptr %"R14"
  %"zext.203" = zext i32 %".1471" to i64
  %".1472" = load i32, ptr %"R15"
  %"zext.204" = zext i32 %".1472" to i64
  %"shl.81" = shl i64 %"zext.204", 32
  %"or.76" = or i64 %"shl.81", %"zext.203"
  %".1473" = inttoptr i64 %"or.76" to ptr
  %".1474" = ptrtoint ptr %".1473" to i64
  %".1475" = add i64 %".1474", 4
  %"for_LDG.76" = inttoptr i64 %".1475" to ptr
  %".1476" = load float, ptr %"for_LDG.76"
  %".1477" = bitcast ptr %"R18" to ptr
  store float %".1476", ptr %".1477"
  ; LDG.E.SYS R20, [R16+0x4]
  %".1480" = load i32, ptr %"R16"
  %"zext.205" = zext i32 %".1480" to i64
  %".1481" = load i32, ptr %"R17"
  %"zext.206" = zext i32 %".1481" to i64
  %"shl.82" = shl i64 %"zext.206", 32
  %"or.77" = or i64 %"shl.82", %"zext.205"
  %".1482" = inttoptr i64 %"or.77" to ptr
  %".1483" = ptrtoint ptr %".1482" to i64
  %".1484" = add i64 %".1483", 4
  %"for_LDG.77" = inttoptr i64 %".1484" to ptr
  %".1485" = load float, ptr %"for_LDG.77"
  %".1486" = bitcast ptr %"R20" to ptr
  store float %".1485", ptr %".1486"
  ; LDG.E.SYS R35, [R12+0x8]
  %".1489" = load i32, ptr %"R12"
  %"zext.207" = zext i32 %".1489" to i64
  %".1490" = load i32, ptr %"R13"
  %"zext.208" = zext i32 %".1490" to i64
  %"shl.83" = shl i64 %"zext.208", 32
  %"or.78" = or i64 %"shl.83", %"zext.207"
  %".1491" = inttoptr i64 %"or.78" to ptr
  %".1492" = ptrtoint ptr %".1491" to i64
  %".1493" = add i64 %".1492", 8
  %"for_LDG.78" = inttoptr i64 %".1493" to ptr
  %".1494" = load float, ptr %"for_LDG.78"
  %".1495" = bitcast ptr %"R35" to ptr
  store float %".1494", ptr %".1495"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1498" = load i32, ptr %"R14"
  %"zext.209" = zext i32 %".1498" to i64
  %".1499" = load i32, ptr %"R15"
  %"zext.210" = zext i32 %".1499" to i64
  %"shl.84" = shl i64 %"zext.210", 32
  %"or.79" = or i64 %"shl.84", %"zext.209"
  %".1500" = inttoptr i64 %"or.79" to ptr
  %".1501" = ptrtoint ptr %".1500" to i64
  %".1502" = add i64 %".1501", 8
  %"for_LDG.79" = inttoptr i64 %".1502" to ptr
  %".1503" = load float, ptr %"for_LDG.79"
  %".1504" = bitcast ptr %"R25" to ptr
  store float %".1503", ptr %".1504"
  ; LDG.E.SYS R22, [R16+0x8]
  %".1507" = load i32, ptr %"R16"
  %"zext.211" = zext i32 %".1507" to i64
  %".1508" = load i32, ptr %"R17"
  %"zext.212" = zext i32 %".1508" to i64
  %"shl.85" = shl i64 %"zext.212", 32
  %"or.80" = or i64 %"shl.85", %"zext.211"
  %".1509" = inttoptr i64 %"or.80" to ptr
  %".1510" = ptrtoint ptr %".1509" to i64
  %".1511" = add i64 %".1510", 8
  %"for_LDG.80" = inttoptr i64 %".1511" to ptr
  %".1512" = load float, ptr %"for_LDG.80"
  %".1513" = bitcast ptr %"R22" to ptr
  store float %".1512", ptr %".1513"
  ; LDG.E.SYS R39, [R12+0xc]
  %".1516" = load i32, ptr %"R12"
  %"zext.213" = zext i32 %".1516" to i64
  %".1517" = load i32, ptr %"R13"
  %"zext.214" = zext i32 %".1517" to i64
  %"shl.86" = shl i64 %"zext.214", 32
  %"or.81" = or i64 %"shl.86", %"zext.213"
  %".1518" = inttoptr i64 %"or.81" to ptr
  %".1519" = ptrtoint ptr %".1518" to i64
  %".1520" = add i64 %".1519", 12
  %"for_LDG.81" = inttoptr i64 %".1520" to ptr
  %".1521" = load float, ptr %"for_LDG.81"
  %".1522" = bitcast ptr %"R39" to ptr
  store float %".1521", ptr %".1522"
  ; LDG.E.SYS R37, [R14+0xc]
  %".1525" = load i32, ptr %"R14"
  %"zext.215" = zext i32 %".1525" to i64
  %".1526" = load i32, ptr %"R15"
  %"zext.216" = zext i32 %".1526" to i64
  %"shl.87" = shl i64 %"zext.216", 32
  %"or.82" = or i64 %"shl.87", %"zext.215"
  %".1527" = inttoptr i64 %"or.82" to ptr
  %".1528" = ptrtoint ptr %".1527" to i64
  %".1529" = add i64 %".1528", 12
  %"for_LDG.82" = inttoptr i64 %".1529" to ptr
  %".1530" = load float, ptr %"for_LDG.82"
  %".1531" = bitcast ptr %"R37" to ptr
  store float %".1530", ptr %".1531"
  ; LDG.E.SYS R24, [R16+0xc]
  %".1534" = load i32, ptr %"R16"
  %"zext.217" = zext i32 %".1534" to i64
  %".1535" = load i32, ptr %"R17"
  %"zext.218" = zext i32 %".1535" to i64
  %"shl.88" = shl i64 %"zext.218", 32
  %"or.83" = or i64 %"shl.88", %"zext.217"
  %".1536" = inttoptr i64 %"or.83" to ptr
  %".1537" = ptrtoint ptr %".1536" to i64
  %".1538" = add i64 %".1537", 12
  %"for_LDG.83" = inttoptr i64 %".1538" to ptr
  %".1539" = load float, ptr %"for_LDG.83"
  %".1540" = bitcast ptr %"R24" to ptr
  store float %".1539", ptr %".1540"
  ; IADD3 R9, R9, -0x4, RZ
  %".1543" = load i32, ptr %"R9"
  %"add.81" = add i32 %".1543", -4
  %"add.82" = add i32 %"add.81", 0
  store i32 %"add.82", ptr %"R9"
  ; IADD3 R11, R11, 0x4, RZ
  %".1546" = load i32, ptr %"R11"
  %"add.83" = add i32 %".1546", 4
  %"add.84" = add i32 %"add.83", 0
  store i32 %"add.84", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1549" = load i32, ptr %"R9"
  %".1550" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".1549", 0
  %".1551" = and i1 %"cmp.11", %".1550"
  store i1 %".1551", ptr %"P0"
  ; FFMA R19, R19, R21, R52
  %".1554" = load float, ptr %"R19"
  %".1555" = load float, ptr %"R21"
  %".1556" = load float, ptr %"R52"
  %"fmul.48" = fmul float %".1554", %".1555"
  %"fadd.48" = fadd float %"fmul.48", %".1556"
  %".1557" = bitcast ptr %"R19" to ptr
  store float %"fadd.48", ptr %".1557"
  ; FFMA R10, R21, R10, R54
  %".1560" = load float, ptr %"R21"
  %".1561" = load float, ptr %"R10"
  %".1562" = load float, ptr %"R54"
  %"fmul.49" = fmul float %".1560", %".1561"
  %"fadd.49" = fadd float %"fmul.49", %".1562"
  %".1563" = bitcast ptr %"R10" to ptr
  store float %"fadd.49", ptr %".1563"
  ; FFMA R18, R18, R23, R19
  %".1566" = load float, ptr %"R18"
  %".1567" = load float, ptr %"R23"
  %".1568" = load float, ptr %"R19"
  %"fmul.50" = fmul float %".1566", %".1567"
  %"fadd.50" = fadd float %"fmul.50", %".1568"
  %".1569" = bitcast ptr %"R18" to ptr
  store float %"fadd.50", ptr %".1569"
  ; FFMA R10, R23, R20, R10
  %".1572" = load float, ptr %"R23"
  %".1573" = load float, ptr %"R20"
  %".1574" = load float, ptr %"R10"
  %"fmul.51" = fmul float %".1572", %".1573"
  %"fadd.51" = fadd float %"fmul.51", %".1574"
  %".1575" = bitcast ptr %"R10" to ptr
  store float %"fadd.51", ptr %".1575"
  ; FFMA R18, R25, R35, R18
  %".1578" = load float, ptr %"R25"
  %".1579" = load float, ptr %"R35"
  %".1580" = load float, ptr %"R18"
  %"fmul.52" = fmul float %".1578", %".1579"
  %"fadd.52" = fadd float %"fmul.52", %".1580"
  %".1581" = bitcast ptr %"R18" to ptr
  store float %"fadd.52", ptr %".1581"
  ; FFMA R10, R35, R22, R10
  %".1584" = load float, ptr %"R35"
  %".1585" = load float, ptr %"R22"
  %".1586" = load float, ptr %"R10"
  %"fmul.53" = fmul float %".1584", %".1585"
  %"fadd.53" = fadd float %"fmul.53", %".1586"
  %".1587" = bitcast ptr %"R10" to ptr
  store float %"fadd.53", ptr %".1587"
  ; FFMA R52, R37, R39, R18
  %".1590" = load float, ptr %"R37"
  %".1591" = load float, ptr %"R39"
  %".1592" = load float, ptr %"R18"
  %"fmul.54" = fmul float %".1590", %".1591"
  %"fadd.54" = fadd float %"fmul.54", %".1592"
  %".1593" = bitcast ptr %"R52" to ptr
  store float %"fadd.54", ptr %".1593"
  ; FFMA R54, R39, R24, R10
  %".1596" = load float, ptr %"R39"
  %".1597" = load float, ptr %"R24"
  %".1598" = load float, ptr %"R10"
  %"fmul.55" = fmul float %".1596", %".1597"
  %"fadd.55" = fadd float %"fmul.55", %".1598"
  %".1599" = bitcast ptr %"R54" to ptr
  store float %"fadd.55", ptr %".1599"
  ; @P0 BRA `(.L_x_3)
  %".1602" = load i1, ptr %"P0"
  %".1603" = icmp ne i1 %".1602", 1
  br i1 %".1603", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1606" = load i32, ptr %"R4"
  %".1607" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".1606", 0
  %".1608" = and i1 %"cmp.12", %".1607"
  store i1 %".1608", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".1611" = load i1, ptr %"P0"
  %".1612" = icmp eq i1 %".1611", 1
  br i1 %".1612", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1615" = load i32, ptr %"R0"
  %".1616" = load i32, ptr %"R11"
  %"add.85" = add i32 %".1615", %".1616"
  %"add.86" = add i32 %"add.85", 0
  store i32 %"add.86", ptr %"R9"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1621" = load i32, ptr %"R2"
  %".1622" = load i32, ptr %"R9"
  %"shl.89" = shl i32 %".1621", 2
  %"add.87" = add i32 %"shl.89", %".1622"
  store i32 %"add.87", ptr %"R14"
  ; IMAD R12, R2, 0x3, R9
  %".1625" = load i32, ptr %"R2"
  %".1626" = load i32, ptr %"R9"
  %"mul.32" = mul i32 %".1625", 3
  %"add.88" = add i32 %"mul.32", %".1626"
  store i32 %"add.88", ptr %"R12"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1629" = load i32, ptr %"R11"
  %".1630" = load i32, ptr %"R15"
  %"zext.219" = zext i32 %".1629" to i64
  %"zext.220" = zext i32 %".1630" to i64
  %"mul.33" = mul i64 %"zext.219", %"zext.220"
  %".1631" = ptrtoint ptr %"Arg_1" to i64
  %"add.89" = add i64 %"mul.33", %".1631"
  %".1632" = and i64 %"add.89", 18446744069414584320
  %".1633" = lshr i64 %".1632", 32
  %"trunc32.50" = trunc i64 %".1633" to i32
  %"trunc32.51" = trunc i64 %"add.89" to i32
  store i32 %"trunc32.51", ptr %"R10"
  store i32 %"trunc32.50", ptr %"R11"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1637" = load i32, ptr %"R12"
  %".1638" = load i32, ptr %"R15"
  %"zext.221" = zext i32 %".1637" to i64
  %"zext.222" = zext i32 %".1638" to i64
  %"mul.34" = mul i64 %"zext.221", %"zext.222"
  %".1639" = ptrtoint ptr %"Arg_2" to i64
  %"add.90" = add i64 %"mul.34", %".1639"
  %".1640" = and i64 %"add.90", 18446744069414584320
  %".1641" = lshr i64 %".1640", 32
  %"trunc32.52" = trunc i64 %".1641" to i32
  %"trunc32.53" = trunc i64 %"add.90" to i32
  store i32 %"trunc32.53", ptr %"R12"
  store i32 %"trunc32.52", ptr %"R13"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1645" = load i32, ptr %"R14"
  %".1646" = load i32, ptr %"R15"
  %"zext.223" = zext i32 %".1645" to i64
  %"zext.224" = zext i32 %".1646" to i64
  %"mul.35" = mul i64 %"zext.223", %"zext.224"
  %".1647" = ptrtoint ptr %"Arg_2" to i64
  %"add.91" = add i64 %"mul.35", %".1647"
  %".1648" = and i64 %"add.91", 18446744069414584320
  %".1649" = lshr i64 %".1648", 32
  %"trunc32.54" = trunc i64 %".1649" to i32
  %"trunc32.55" = trunc i64 %"add.91" to i32
  store i32 %"trunc32.55", ptr %"R14"
  store i32 %"trunc32.54", ptr %"R15"
  ; LDG.E.SYS R17, [R10]
  %".1653" = load i32, ptr %"R10"
  %"zext.225" = zext i32 %".1653" to i64
  %".1654" = load i32, ptr %"R11"
  %"zext.226" = zext i32 %".1654" to i64
  %"shl.90" = shl i64 %"zext.226", 32
  %"or.84" = or i64 %"shl.90", %"zext.225"
  %".1655" = inttoptr i64 %"or.84" to ptr
  %".1656" = ptrtoint ptr %".1655" to i64
  %".1657" = add i64 %".1656", 0
  %"for_LDG.84" = inttoptr i64 %".1657" to ptr
  %".1658" = load float, ptr %"for_LDG.84"
  %".1659" = bitcast ptr %"R17" to ptr
  store float %".1658", ptr %".1659"
  ; LDG.E.SYS R9, [R12]
  %".1662" = load i32, ptr %"R12"
  %"zext.227" = zext i32 %".1662" to i64
  %".1663" = load i32, ptr %"R13"
  %"zext.228" = zext i32 %".1663" to i64
  %"shl.91" = shl i64 %"zext.228", 32
  %"or.85" = or i64 %"shl.91", %"zext.227"
  %".1664" = inttoptr i64 %"or.85" to ptr
  %".1665" = ptrtoint ptr %".1664" to i64
  %".1666" = add i64 %".1665", 0
  %"for_LDG.85" = inttoptr i64 %".1666" to ptr
  %".1667" = load float, ptr %"for_LDG.85"
  %".1668" = bitcast ptr %"R9" to ptr
  store float %".1667", ptr %".1668"
  ; LDG.E.SYS R16, [R14]
  %".1671" = load i32, ptr %"R14"
  %"zext.229" = zext i32 %".1671" to i64
  %".1672" = load i32, ptr %"R15"
  %"zext.230" = zext i32 %".1672" to i64
  %"shl.92" = shl i64 %"zext.230", 32
  %"or.86" = or i64 %"shl.92", %"zext.229"
  %".1673" = inttoptr i64 %"or.86" to ptr
  %".1674" = ptrtoint ptr %".1673" to i64
  %".1675" = add i64 %".1674", 0
  %"for_LDG.86" = inttoptr i64 %".1675" to ptr
  %".1676" = load float, ptr %"for_LDG.86"
  %".1677" = bitcast ptr %"R16" to ptr
  store float %".1676", ptr %".1677"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1680" = load i32, ptr %"R4"
  %".1681" = load i1, ptr %"PT"
  %"cmp.13" = icmp ne i32 %".1680", 1
  %".1682" = and i1 %"cmp.13", %".1681"
  store i1 %".1682", ptr %"P0"
  ; FFMA R52, R9, R17, R52
  %".1685" = load float, ptr %"R9"
  %".1686" = load float, ptr %"R17"
  %".1687" = load float, ptr %"R52"
  %"fmul.56" = fmul float %".1685", %".1686"
  %"fadd.56" = fadd float %"fmul.56", %".1687"
  %".1688" = bitcast ptr %"R52" to ptr
  store float %"fadd.56", ptr %".1688"
  ; FFMA R54, R17, R16, R54
  %".1691" = load float, ptr %"R17"
  %".1692" = load float, ptr %"R16"
  %".1693" = load float, ptr %"R54"
  %"fmul.57" = fmul float %".1691", %".1692"
  %"fadd.57" = fadd float %"fmul.57", %".1693"
  %".1694" = bitcast ptr %"R54" to ptr
  store float %"fadd.57", ptr %".1694"
  ; @!P0 BRA `(.L_x_1)
  %".1697" = load i1, ptr %"P0"
  %".1698" = icmp eq i1 %".1697", 1
  br i1 %".1698", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1701" = load i32, ptr %"R4"
  %".1702" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".1701", 2
  %".1703" = and i1 %"cmp.14", %".1702"
  store i1 %".1703", ptr %"P0"
  ; LDG.E.SYS R9, [R12+0x4]
  %".1706" = load i32, ptr %"R12"
  %"zext.231" = zext i32 %".1706" to i64
  %".1707" = load i32, ptr %"R13"
  %"zext.232" = zext i32 %".1707" to i64
  %"shl.93" = shl i64 %"zext.232", 32
  %"or.87" = or i64 %"shl.93", %"zext.231"
  %".1708" = inttoptr i64 %"or.87" to ptr
  %".1709" = ptrtoint ptr %".1708" to i64
  %".1710" = add i64 %".1709", 4
  %"for_LDG.87" = inttoptr i64 %".1710" to ptr
  %".1711" = load float, ptr %"for_LDG.87"
  %".1712" = bitcast ptr %"R9" to ptr
  store float %".1711", ptr %".1712"
  ; LDG.E.SYS R17, [R10+0x4]
  %".1715" = load i32, ptr %"R10"
  %"zext.233" = zext i32 %".1715" to i64
  %".1716" = load i32, ptr %"R11"
  %"zext.234" = zext i32 %".1716" to i64
  %"shl.94" = shl i64 %"zext.234", 32
  %"or.88" = or i64 %"shl.94", %"zext.233"
  %".1717" = inttoptr i64 %"or.88" to ptr
  %".1718" = ptrtoint ptr %".1717" to i64
  %".1719" = add i64 %".1718", 4
  %"for_LDG.88" = inttoptr i64 %".1719" to ptr
  %".1720" = load float, ptr %"for_LDG.88"
  %".1721" = bitcast ptr %"R17" to ptr
  store float %".1720", ptr %".1721"
  ; LDG.E.SYS R16, [R14+0x4]
  %".1724" = load i32, ptr %"R14"
  %"zext.235" = zext i32 %".1724" to i64
  %".1725" = load i32, ptr %"R15"
  %"zext.236" = zext i32 %".1725" to i64
  %"shl.95" = shl i64 %"zext.236", 32
  %"or.89" = or i64 %"shl.95", %"zext.235"
  %".1726" = inttoptr i64 %"or.89" to ptr
  %".1727" = ptrtoint ptr %".1726" to i64
  %".1728" = add i64 %".1727", 4
  %"for_LDG.89" = inttoptr i64 %".1728" to ptr
  %".1729" = load float, ptr %"for_LDG.89"
  %".1730" = bitcast ptr %"R16" to ptr
  store float %".1729", ptr %".1730"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1733" = load i1, ptr %"P0"
  %".1734" = icmp ne i1 %".1733", 1
  br i1 %".1734", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  %".1737" = load i32, ptr %"R12"
  %"zext.237" = zext i32 %".1737" to i64
  %".1738" = load i32, ptr %"R13"
  %"zext.238" = zext i32 %".1738" to i64
  %"shl.96" = shl i64 %"zext.238", 32
  %"or.90" = or i64 %"shl.96", %"zext.237"
  %".1739" = inttoptr i64 %"or.90" to ptr
  %".1740" = ptrtoint ptr %".1739" to i64
  %".1741" = add i64 %".1740", 8
  %"for_LDG.90" = inttoptr i64 %".1741" to ptr
  %".1742" = load float, ptr %"for_LDG.90"
  %".1743" = bitcast ptr %"R19" to ptr
  store float %".1742", ptr %".1743"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1748" = load i1, ptr %"P0"
  %".1749" = icmp ne i1 %".1748", 1
  br i1 %".1749", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  %".1752" = load i32, ptr %"R10"
  %"zext.239" = zext i32 %".1752" to i64
  %".1753" = load i32, ptr %"R11"
  %"zext.240" = zext i32 %".1753" to i64
  %"shl.97" = shl i64 %"zext.240", 32
  %"or.91" = or i64 %"shl.97", %"zext.239"
  %".1754" = inttoptr i64 %"or.91" to ptr
  %".1755" = ptrtoint ptr %".1754" to i64
  %".1756" = add i64 %".1755", 8
  %"for_LDG.91" = inttoptr i64 %".1756" to ptr
  %".1757" = load float, ptr %"for_LDG.91"
  %".1758" = bitcast ptr %"R21" to ptr
  store float %".1757", ptr %".1758"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1763" = load i1, ptr %"P0"
  %".1764" = icmp ne i1 %".1763", 1
  br i1 %".1764", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  %".1767" = load i32, ptr %"R14"
  %"zext.241" = zext i32 %".1767" to i64
  %".1768" = load i32, ptr %"R15"
  %"zext.242" = zext i32 %".1768" to i64
  %"shl.98" = shl i64 %"zext.242", 32
  %"or.92" = or i64 %"shl.98", %"zext.241"
  %".1769" = inttoptr i64 %"or.92" to ptr
  %".1770" = ptrtoint ptr %".1769" to i64
  %".1771" = add i64 %".1770", 8
  %"for_LDG.92" = inttoptr i64 %".1771" to ptr
  %".1772" = load float, ptr %"for_LDG.92"
  %".1773" = bitcast ptr %"R18" to ptr
  store float %".1772", ptr %".1773"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1778" = load float, ptr %"R9"
  %".1779" = load float, ptr %"R17"
  %".1780" = load float, ptr %"R52"
  %"fmul.58" = fmul float %".1778", %".1779"
  %"fadd.58" = fadd float %"fmul.58", %".1780"
  %".1781" = bitcast ptr %"R52" to ptr
  store float %"fadd.58", ptr %".1781"
  ; FFMA R54, R17, R16, R54
  %".1784" = load float, ptr %"R17"
  %".1785" = load float, ptr %"R16"
  %".1786" = load float, ptr %"R54"
  %"fmul.59" = fmul float %".1784", %".1785"
  %"fadd.59" = fadd float %"fmul.59", %".1786"
  %".1787" = bitcast ptr %"R54" to ptr
  store float %"fadd.59", ptr %".1787"
  ; @P0 FFMA R52, R19, R21, R52
  %".1790" = load i1, ptr %"P0"
  %".1791" = icmp ne i1 %".1790", 1
  br i1 %".1791", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1794" = load float, ptr %"R19"
  %".1795" = load float, ptr %"R21"
  %".1796" = load float, ptr %"R52"
  %"fmul.60" = fmul float %".1794", %".1795"
  %"fadd.60" = fadd float %"fmul.60", %".1796"
  %".1797" = bitcast ptr %"R52" to ptr
  store float %"fadd.60", ptr %".1797"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1802" = load i1, ptr %"P0"
  %".1803" = icmp ne i1 %".1802", 1
  br i1 %".1803", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1806" = load float, ptr %"R21"
  %".1807" = load float, ptr %"R18"
  %".1808" = load float, ptr %"R54"
  %"fmul.61" = fmul float %".1806", %".1807"
  %"fadd.61" = fadd float %"fmul.61", %".1808"
  %".1809" = bitcast ptr %"R54" to ptr
  store float %"fadd.61", ptr %".1809"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  %".1814" = load i32, ptr %"R26"
  %"zext.243" = zext i32 %".1814" to i64
  %".1815" = load i32, ptr %"R27"
  %"zext.244" = zext i32 %".1815" to i64
  %"shl.99" = shl i64 %"zext.244", 32
  %"or.93" = or i64 %"shl.99", %"zext.243"
  %".1816" = inttoptr i64 %"or.93" to ptr
  %".1817" = ptrtoint ptr %".1816" to i64
  %".1818" = add i64 %".1817", 0
  %"for_LDG.93" = inttoptr i64 %".1818" to ptr
  %".1819" = load float, ptr %"for_LDG.93"
  %".1820" = bitcast ptr %"R9" to ptr
  store float %".1819", ptr %".1820"
  ; MOV R10, 0x3bbb989d
  %".1823" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1823"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  %".1827" = bitcast ptr %"R11" to ptr
  store float 0x41d0df0000000000, ptr %".1827"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1831" = load float, ptr %"R9"
  %".1832" = load float, ptr %"R52"
  %"fadd.62" = fadd float %".1831", %".1832"
  %".1833" = bitcast ptr %"R9" to ptr
  store float %"fadd.62", ptr %".1833"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1836" = load float, ptr %"R9"
  %".1837" = fneg float %".1836"
  %".1838" = load float, ptr %"R10"
  %"fmul.62" = fmul float %".1837", %".1838"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  %".1839" = bitcast ptr %"R10" to ptr
  store float %"fadd.63", ptr %".1839"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1842" = load float, ptr %"R10"
  %".1843" = load float, ptr %"R11"
  %"fmul.63" = fmul float %".1842", %".1843"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  %".1844" = bitcast ptr %"R10" to ptr
  store float %"fadd.64", ptr %".1844"
  ; FADD R12, R10.reuse, -12583039
  %".1847" = load float, ptr %"R10"
  %"fadd.65" = fadd float %".1847", 0xc168000fe0000000
  %".1848" = bitcast ptr %"R12" to ptr
  store float %"fadd.65", ptr %".1848"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1851" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1851", i32 23, i32 32
  %".1852" = load i32, ptr %"R10"
  %"zext.245" = zext i32 0 to i64
  %"zext.246" = zext i32 %".1852" to i64
  %"zext.247" = zext i32 23 to i64
  %"shl.100" = shl i64 %"zext.245", 32
  %"or.94" = or i64 %"shl.100", %"zext.246"
  %"shl.101" = shl i64 %"or.94", %"zext.247"
  %"and" = and i64 %"shl.101", 4294967295
  %"trunc32.56" = trunc i64 %"and" to i32
  store i32 %"trunc32.56", ptr %"R10"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1855" = load float, ptr %"R9"
  %".1856" = fneg float %".1855"
  %".1857" = load float, ptr %"R12"
  %".1858" = fneg float %".1857"
  %"fmul.64" = fmul float %".1856", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1858"
  %".1859" = bitcast ptr %"R12" to ptr
  store float %"fadd.66", ptr %".1859"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1862" = load float, ptr %"R9"
  %".1863" = fneg float %".1862"
  %".1864" = load float, ptr %"R12"
  %"fmul.65" = fmul float %".1863", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1864"
  %".1865" = bitcast ptr %"R12" to ptr
  store float %"fadd.67", ptr %".1865"
  ; MUFU.EX2 R9, R12
  %".1868" = load float, ptr %"R12"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1868")
  %".1869" = bitcast ptr %"R9" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1869"
  ; FFMA R24, R10, R9, 1
  %".1872" = load float, ptr %"R10"
  %".1873" = load float, ptr %"R9"
  %"fmul.66" = fmul float %".1872", %".1873"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  %".1874" = bitcast ptr %"R24" to ptr
  store float %"fadd.68", ptr %".1874"
  ; IADD3 R9, R24, 0x1800000, RZ
  %".1877" = load i32, ptr %"R24"
  %"add.92" = add i32 %".1877", 25165824
  %"add.93" = add i32 %"add.92", 0
  store i32 %"add.93", ptr %"R9"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1880" = load i32, ptr %"R9"
  %".1881" = and i32 %".1880", 2139095040
  store i32 %".1881", ptr %"R9"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1884" = load i32, ptr %"R9"
  %".1885" = load i1, ptr %"PT"
  %"cmp.15" = icmp sgt i32 %".1884", 33554431
  %".1886" = and i1 %"cmp.15", %".1885"
  store i1 %".1886", ptr %"P0"
  ; @P0 BRA `(.L_x_8)
  %".1889" = load i1, ptr %"P0"
  %".1890" = icmp ne i1 %".1889", 1
  br i1 %".1890", label %".L_x_8", label %".L_x_1_split_0x1260_CALL_0x1290"
.L_x_1_split_0x1260_CALL_0x1290:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1897" = icmp ult i32 1, 32
  %"SHF_min.1" = select  i1 %".1897", i32 1, i32 32
  %".1898" = load i32, ptr %"R24"
  %"zext.248" = zext i32 0 to i64
  %"zext.249" = zext i32 %".1898" to i64
  %"zext.250" = zext i32 1 to i64
  %"shl.102" = shl i64 %"zext.248", 32
  %"or.95" = or i64 %"shl.102", %"zext.249"
  %"shl.103" = shl i64 %"or.95", %"zext.250"
  %"and.1" = and i64 %"shl.103", 4294967295
  %"trunc32.57" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.57", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".1903" = icmp ult i32 24, 32
  %"SHF_min.2" = select  i1 %".1903", i32 24, i32 32
  %".1904" = load i32, ptr %"R11"
  %"zext.251" = zext i32 %".1904" to i64
  %"zext.252" = zext i32 0 to i64
  %"zext.253" = zext i32 24 to i64
  %"shl.104" = shl i64 %"zext.251", 32
  %"or.96" = or i64 %"shl.104", %"zext.252"
  %"lshr" = lshr i64 %"or.96", %"zext.253"
  %"lshr.1" = lshr i64 %"lshr", 32
  %"trunc32.58" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.58", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".1907" = load i32, ptr %"R25"
  %".1908" = load i1, ptr %"PT"
  %"cmp.16" = icmp ne i32 %".1907", 0
  %".1909" = and i1 %"cmp.16", %".1908"
  store i1 %".1909", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".1912" = load i1, ptr %"P0"
  %".1913" = icmp ne i1 %".1912", 1
  br i1 %".1913", label %".L_x_49...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1916" = icmp ult i32 1, 32
  %"SHF_min.3" = select  i1 %".1916", i32 1, i32 32
  %".1917" = load i32, ptr %"R24"
  %"zext.254" = zext i32 0 to i64
  %"zext.255" = zext i32 %".1917" to i64
  %"zext.256" = zext i32 1 to i64
  %"shl.105" = shl i64 %"zext.254", 32
  %"or.97" = or i64 %"shl.105", %"zext.255"
  %"shl.106" = shl i64 %"or.97", %"zext.256"
  %"and.2" = and i64 %"shl.106", 4294967295
  %"trunc32.59" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.59", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".1920" = load i32, ptr %"R11"
  %".1921" = load i1, ptr %"PT"
  %"cmp.17" = icmp ne i32 %".1920", 0
  %".1922" = and i1 %"cmp.17", %".1921"
  store i1 %".1922", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1925" = load i1, ptr %"P0"
  %".1926" = icmp ne i1 %".1925", 1
  br i1 %".1926", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1929" = load float, ptr %"R24"
  %"fmul.67" = fmul float %".1929", 0x43f0000000000000
  %"fadd.69" = fadd float %"fmul.67",              0x0
  %".1930" = bitcast ptr %"R12" to ptr
  store float %"fadd.69", ptr %".1930"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1935" = load float, ptr %"R24"
  %"fmul.68" = fmul float %".1935", 0x43f0000000000000
  %"fadd.70" = fadd float %"fmul.68",              0x0
  %".1936" = bitcast ptr %"R12" to ptr
  store float %"fadd.70", ptr %".1936"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1:
  ; @!P0 MUFU.RCP R11, R24
  %".1941" = load i1, ptr %"P0"
  %".1942" = icmp eq i1 %".1941", 1
  br i1 %".1942", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".1945" = load float, ptr %"R24"
  %".1946" = fdiv float 0x3ff0000000000000, %".1945"
  %".1947" = bitcast ptr %"R11" to ptr
  store float %".1946", ptr %".1947"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1:
  ; MUFU.RCP R11, R24
  %".1952" = load float, ptr %"R24"
  %".1953" = fdiv float 0x3ff0000000000000, %".1952"
  %".1954" = bitcast ptr %"R11" to ptr
  store float %".1953", ptr %".1954"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1:
  ; @P0 MUFU.RCP R13, R12
  %".1959" = load i1, ptr %"P0"
  %".1960" = icmp ne i1 %".1959", 1
  br i1 %".1960", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".1963" = load float, ptr %"R12"
  %".1964" = fdiv float 0x3ff0000000000000, %".1963"
  %".1965" = bitcast ptr %"R13" to ptr
  store float %".1964", ptr %".1965"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1:
  ; MUFU.RCP R13, R12
  %".1970" = load float, ptr %"R12"
  %".1971" = fdiv float 0x3ff0000000000000, %".1970"
  %".1972" = bitcast ptr %"R13" to ptr
  store float %".1971", ptr %".1972"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1:
  ; @P0 FFMA R22, R12, R13, -1
  %".1977" = load i1, ptr %"P0"
  %".1978" = icmp ne i1 %".1977", 1
  br i1 %".1978", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".1981" = load float, ptr %"R12"
  %".1982" = load float, ptr %"R13"
  %"fmul.69" = fmul float %".1981", %".1982"
  %"fadd.71" = fadd float %"fmul.69", 0xbff0000000000000
  %".1983" = bitcast ptr %"R22" to ptr
  store float %"fadd.71", ptr %".1983"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1:
  ; FFMA R22, R12, R13, -1
  %".1988" = load float, ptr %"R12"
  %".1989" = load float, ptr %"R13"
  %"fmul.70" = fmul float %".1988", %".1989"
  %"fadd.72" = fadd float %"fmul.70", 0xbff0000000000000
  %".1990" = bitcast ptr %"R22" to ptr
  store float %"fadd.72", ptr %".1990"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".1995" = load i1, ptr %"P0"
  %".1996" = icmp ne i1 %".1995", 1
  br i1 %".1996", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".1999" = load float, ptr %"R22"
  %".2000" = fneg float %".1999"
  %"fadd.73" = fadd float %".2000",              0x0
  %".2001" = bitcast ptr %"R22" to ptr
  store float %"fadd.73", ptr %".2001"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1:
  ; FADD.FTZ R22, -R22, -RZ
  %".2006" = load float, ptr %"R22"
  %".2007" = fneg float %".2006"
  %"fadd.74" = fadd float %".2007",              0x0
  %".2008" = bitcast ptr %"R22" to ptr
  store float %"fadd.74", ptr %".2008"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1:
  ; @P0 FFMA R22, R13, R22, R13
  %".2013" = load i1, ptr %"P0"
  %".2014" = icmp ne i1 %".2013", 1
  br i1 %".2014", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".2017" = load float, ptr %"R13"
  %".2018" = load float, ptr %"R22"
  %".2019" = load float, ptr %"R13"
  %"fmul.71" = fmul float %".2017", %".2018"
  %"fadd.75" = fadd float %"fmul.71", %".2019"
  %".2020" = bitcast ptr %"R22" to ptr
  store float %"fadd.75", ptr %".2020"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1:
  ; FFMA R22, R13, R22, R13
  %".2025" = load float, ptr %"R13"
  %".2026" = load float, ptr %"R22"
  %".2027" = load float, ptr %"R13"
  %"fmul.72" = fmul float %".2025", %".2026"
  %"fadd.76" = fadd float %"fmul.72", %".2027"
  %".2028" = bitcast ptr %"R22" to ptr
  store float %"fadd.76", ptr %".2028"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".2033" = load i1, ptr %"P0"
  %".2034" = icmp ne i1 %".2033", 1
  br i1 %".2034", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".2037" = load float, ptr %"R22"
  %"fmul.73" = fmul float %".2037", 0x43f0000000000000
  %"fadd.77" = fadd float %"fmul.73",              0x0
  %".2038" = bitcast ptr %"R11" to ptr
  store float %"fadd.77", ptr %".2038"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".2043" = load float, ptr %"R22"
  %"fmul.74" = fmul float %".2043", 0x43f0000000000000
  %"fadd.78" = fadd float %"fmul.74",              0x0
  %".2044" = bitcast ptr %"R11" to ptr
  store float %"fadd.78", ptr %".2044"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1:
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_49...1:
  ; IADD3 R34, R25, -0xfd, RZ
  %".2051" = load i32, ptr %"R25"
  %"add.94" = add i32 %".2051", -253
  %"add.95" = add i32 %"add.94", 0
  store i32 %"add.95", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".2054" = load i32, ptr %"R34"
  %".2055" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".2054", 1
  %".2056" = and i1 %"cmp.18", %".2055"
  store i1 %".2056", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".2059" = load i1, ptr %"P0"
  %".2060" = icmp ne i1 %".2059", 1
  br i1 %".2060", label %".L_x_51...1", label %".L_x_49_split_0x4a30...1"
.L_x_49_split_0x4a30...1:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".2063" = load float, ptr %"R24"
  %".2064" = bitcast float %".2063" to i32
  %".2065" = and i32 %".2064", 8388607
  store i32 %".2065", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".2070" = load i32, ptr %"R11"
  %".2071" = or i32 %".2070", 1065353216
  store i32 %".2071", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".2074" = load i32, ptr %"R34"
  %".2075" = icmp ult i32 %".2074", 32
  %"SHF_min.4" = select  i1 %".2075", i32 %".2074", i32 32
  %".2076" = load i32, ptr %"R23"
  %".2077" = load i32, ptr %"R34"
  %"zext.257" = zext i32 0 to i64
  %"zext.258" = zext i32 %".2076" to i64
  %"zext.259" = zext i32 %".2077" to i64
  %"shl.107" = shl i64 %"zext.257", 32
  %"or.98" = or i64 %"shl.107", %"zext.258"
  %"shl.108" = shl i64 %"or.98", %"zext.259"
  %"and.3" = and i64 %"shl.108", 4294967295
  %"trunc32.60" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.60", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".2080" = load float, ptr %"R11"
  %".2081" = fdiv float 0x3ff0000000000000, %".2080"
  %".2082" = bitcast ptr %"R12" to ptr
  store float %".2081", ptr %".2082"
  ; FFMA R13, R11, R12, -1
  %".2085" = load float, ptr %"R11"
  %".2086" = load float, ptr %"R12"
  %"fmul.75" = fmul float %".2085", %".2086"
  %"fadd.79" = fadd float %"fmul.75", 0xbff0000000000000
  %".2087" = bitcast ptr %"R13" to ptr
  store float %"fadd.79", ptr %".2087"
  ; FADD.FTZ R13, -R13, -RZ
  %".2090" = load float, ptr %"R13"
  %".2091" = fneg float %".2090"
  %"fadd.80" = fadd float %".2091",              0x0
  %".2092" = bitcast ptr %"R13" to ptr
  store float %"fadd.80", ptr %".2092"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".2095" = load float, ptr %"R12"
  %".2096" = load float, ptr %"R13"
  %".2097" = load float, ptr %"R12"
  %"fmul.76" = fmul float %".2095", %".2096"
  %"fadd.81" = fadd float %"fmul.76", %".2097"
  %".2098" = bitcast ptr %"R22" to ptr
  store float %"fadd.81", ptr %".2098"
  ; FFMA.RP R13, R12, R13, R12
  %".2101" = load float, ptr %"R12"
  %".2102" = load float, ptr %"R13"
  %".2103" = load float, ptr %"R12"
  %"fmul.77" = fmul float %".2101", %".2102"
  %"fadd.82" = fadd float %"fmul.77", %".2103"
  %".2104" = bitcast ptr %"R13" to ptr
  store float %"fadd.82", ptr %".2104"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".2107" = load float, ptr %"R22"
  %".2108" = bitcast float %".2107" to i32
  %".2109" = and i32 %".2108", 8388607
  store i32 %".2109", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".2112" = load float, ptr %"R22"
  %".2113" = load float, ptr %"R13"
  %".2114" = load i1, ptr %"PT"
  %"fcmp_ordered" = fcmp une float %".2112", %".2113"
  %".2115" = and i1 %"fcmp_ordered", %".2114"
  store i1 %".2115", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".2118" = load i32, ptr %"R12"
  %".2119" = or i32 %".2118", 8388608
  store i32 %".2119", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".2122" = load i1, ptr %"P0"
  %".2123" = icmp eq i1 %".2122", 1
  %"sel" = select  i1 %".2123", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".2126" = load i32, ptr %"R23"
  %".2127" = load i32, ptr %"R12"
  %".2128" = and i32 %".2126", %".2127"
  store i32 %".2128", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".2131" = load i32, ptr %"R13"
  %".2132" = sub i32 0, %".2131"
  %"add.96" = add i32 %".2132", 0
  %"add.97" = add i32 %"add.96", 0
  store i32 %"add.97", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".2135" = load i32, ptr %"R34"
  %".2136" = icmp ult i32 %".2135", 32
  %"SHF_min.5" = select  i1 %".2136", i32 %".2135", i32 32
  %".2137" = load i32, ptr %"R23"
  %".2138" = load i32, ptr %"R34"
  %"zext.260" = zext i32 %".2137" to i64
  %"zext.261" = zext i32 0 to i64
  %"zext.262" = zext i32 %".2138" to i64
  %"shl.109" = shl i64 %"zext.260", 32
  %"or.99" = or i64 %"shl.109", %"zext.261"
  %"lshr.2" = lshr i64 %"or.99", %"zext.262"
  %"lshr.3" = lshr i64 %"lshr.2", 32
  %"trunc32.61" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.61", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".2141" = load i32, ptr %"R13"
  %".2142" = load i32, ptr %"R34"
  %".2143" = load i32, ptr %"R12"
  %"LOP3_result" = call i32 @"custom_lop3"(i32 %".2143", i32 0, i32 %".2141", i32 %".2142")
  %".2144" = trunc i32 %"LOP3_result" to i1
  store i1 %".2144", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".2147" = load i32, ptr %"R23"
  %"LOP3_result.1" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".2147", i32 1)
  %".2148" = trunc i32 %"LOP3_result.1" to i1
  store i1 %".2148", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".2151" = load i32, ptr %"R23"
  %"LOP3_result.2" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".2151", i32 2)
  %".2152" = trunc i32 %"LOP3_result.2" to i1
  store i1 %".2152", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".2155" = load i1, ptr %"P0"
  %".2156" = sub i1 0, %".2155"
  %".2157" = load i1, ptr %"P1"
  %".2158" = sub i1 0, %".2157"
  %".2159" = or i1 %".2156", %".2158"
  %".2160" = and i1 %".2159", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".2162" = load float, ptr %"R24"
  %".2163" = bitcast float %".2162" to i32
  %"LOP3_result.3" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".2163", i32 8388607)
  %".2164" = trunc i32 %"LOP3_result.3" to i1
  store i1 %".2164", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".2167" = load i1, ptr %"P0"
  %".2168" = icmp eq i1 %".2167", 1
  %"sel.1" = select  i1 %".2168", i32 0, i32 1
  store i32 %"sel.1", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".2171" = load i32, ptr %"R11"
  %".2172" = sub i32 0, %".2171"
  %"add.98" = add i32 %".2172", 0
  %"add.99" = add i32 %"add.98", 0
  store i32 %"add.99", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".2175" = load i32, ptr %"R11"
  %".2176" = load i1, ptr %"PT"
  %"cmp.19" = icmp sge i32 %".2175", 0
  %".2177" = and i1 %"cmp.19", %".2176"
  store i1 %".2177", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".2180" = load i32, ptr %"R25"
  %"add.100" = add i32 %".2180", -252
  %"add.101" = add i32 %"add.100", 0
  store i32 %"add.101", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".2183" = load i32, ptr %"R11"
  %".2184" = icmp ult i32 %".2183", 32
  %"SHF_min.6" = select  i1 %".2184", i32 %".2183", i32 32
  %".2185" = load i32, ptr %"R12"
  %".2186" = load i32, ptr %"R11"
  %"zext.263" = zext i32 %".2185" to i64
  %"zext.264" = zext i32 0 to i64
  %"zext.265" = zext i32 %".2186" to i64
  %"shl.110" = shl i64 %"zext.263", 32
  %"or.100" = or i64 %"shl.110", %"zext.264"
  %"lshr.4" = lshr i64 %"or.100", %"zext.265"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.62" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.62", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".2189" = load i1, ptr %"P0"
  %".2190" = icmp eq i1 %".2189", 1
  br i1 %".2190", label %".L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".2193" = load i32, ptr %"R11"
  %"add.102" = add i32 %".2193", 1
  %"add.103" = add i32 %"add.102", 0
  store i32 %"add.103", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1:
  ; IADD3 R11, R11, 0x1, RZ
  %".2198" = load i32, ptr %"R11"
  %"add.104" = add i32 %".2198", 1
  %"add.105" = add i32 %"add.104", 0
  store i32 %"add.105", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...1"
.L_x_49_split_0x4be0...1:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".2203" = load i1, ptr %"P1"
  %".2204" = icmp eq i1 %".2203", 1
  br i1 %".2204", label %".L_x_49_split_0x4be0...1_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...1"
.L_x_49_split_0x4be0...1_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".2207" = icmp ult i32 1, 32
  %"SHF_min.7" = select  i1 %".2207", i32 1, i32 32
  %".2208" = load i32, ptr %"R11"
  %"zext.266" = zext i32 0 to i64
  %"zext.267" = zext i32 %".2208" to i64
  %"zext.268" = zext i32 1 to i64
  %"shl.111" = shl i64 %"zext.266", 32
  %"or.101" = or i64 %"shl.111", %"zext.267"
  %"shl.112" = shl i64 %"or.101", %"zext.268"
  %"and.4" = and i64 %"shl.112", 4294967295
  %"trunc32.63" = trunc i64 %"and.4" to i32
  store i32 %"trunc32.63", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...1"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".2213" = icmp ult i32 1, 32
  %"SHF_min.8" = select  i1 %".2213", i32 1, i32 32
  %".2214" = load i32, ptr %"R11"
  %"zext.269" = zext i32 0 to i64
  %"zext.270" = zext i32 %".2214" to i64
  %"zext.271" = zext i32 1 to i64
  %"shl.113" = shl i64 %"zext.269", 32
  %"or.102" = or i64 %"shl.113", %"zext.270"
  %"shl.114" = shl i64 %"or.102", %"zext.271"
  %"and.5" = and i64 %"shl.114", 4294967295
  %"trunc32.64" = trunc i64 %"and.5" to i32
  store i32 %"trunc32.64", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...1"
.L_x_49_split_0x4bf0...1:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".2219" = load i32, ptr %"R11"
  %".2220" = load float, ptr %"R24"
  %".2221" = bitcast float %".2220" to i32
  %".2222" = or i32 %".2219", 2147483648
  %".2223" = or i32 %".2219", %".2221"
  %".2224" = and i32 %".2222", %".2223"
  store i32 %".2224", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_51...1:
  ; MUFU.RCP R11, R24
  %".2229" = load float, ptr %"R24"
  %".2230" = fdiv float 0x3ff0000000000000, %".2229"
  %".2231" = bitcast ptr %"R11" to ptr
  store float %".2230", ptr %".2231"
  br label %".L_x_50...1"
.L_x_50...1:
  ; BSYNC B1
  br label %".L_x_48...1"
.L_x_48...1:
  ; MOV R22, R11
  %".2237" = load float, ptr %"R11"
  %".2238" = bitcast ptr %"R22" to ptr
  store float %".2237", ptr %".2238"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath"
.L_x_52...1:
  ; BRA `(.L_x_52)
  br label %".L_x_52...1"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath:
  br label %".L_x_1_split_0x1260_postCALL_0x1290"
.L_x_1_split_0x1260_postCALL_0x1290:
  ; MOV R9, R22
  %".2248" = load float, ptr %"R22"
  %".2249" = bitcast ptr %"R9" to ptr
  store float %".2248", ptr %".2249"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".2254" = load float, ptr %"R24"
  %".2255" = fdiv float 0x3ff0000000000000, %".2254"
  %".2256" = bitcast ptr %"R9" to ptr
  store float %".2255", ptr %".2256"
  ; FFMA R10, R24, R9, -1
  %".2259" = load float, ptr %"R24"
  %".2260" = load float, ptr %"R9"
  %"fmul.78" = fmul float %".2259", %".2260"
  %"fadd.83" = fadd float %"fmul.78", 0xbff0000000000000
  %".2261" = bitcast ptr %"R10" to ptr
  store float %"fadd.83", ptr %".2261"
  ; FADD.FTZ R10, -R10, -RZ
  %".2264" = load float, ptr %"R10"
  %".2265" = fneg float %".2264"
  %"fadd.84" = fadd float %".2265",              0x0
  %".2266" = bitcast ptr %"R10" to ptr
  store float %"fadd.84", ptr %".2266"
  ; FFMA R9, R9, R10, R9
  %".2269" = load float, ptr %"R9"
  %".2270" = load float, ptr %"R10"
  %".2271" = load float, ptr %"R9"
  %"fmul.79" = fmul float %".2269", %".2270"
  %"fadd.85" = fadd float %"fmul.79", %".2271"
  %".2272" = bitcast ptr %"R9" to ptr
  store float %"fadd.85", ptr %".2272"
  br label %".L_x_9"
.L_x_9:
  ; BSYNC B0
  br label %".L_x_7"
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".2278" = load i32, ptr %"R32"
  %"zext.272" = zext i32 %".2278" to i64
  %".2279" = load i32, ptr %"R33"
  %"zext.273" = zext i32 %".2279" to i64
  %"shl.115" = shl i64 %"zext.273", 32
  %"or.103" = or i64 %"shl.115", %"zext.272"
  %".2280" = inttoptr i64 %"or.103" to ptr
  %".2281" = ptrtoint ptr %".2280" to i64
  %".2282" = add i64 %".2281", 0
  %"for_LDG.94" = inttoptr i64 %".2282" to ptr
  %".2283" = load float, ptr %"for_LDG.94"
  %".2284" = bitcast ptr %"R11" to ptr
  store float %".2283", ptr %".2284"
  ; MOV R10, 0x3bbb989d
  %".2287" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".2287"
  ; MOV R13, 0x437c0000
  %".2290" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".2290"
  ; FADD R11, R11, R54
  %".2293" = load float, ptr %"R11"
  %".2294" = load float, ptr %"R54"
  %"fadd.86" = fadd float %".2293", %".2294"
  %".2295" = bitcast ptr %"R11" to ptr
  store float %"fadd.86", ptr %".2295"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".2298" = load float, ptr %"R11"
  %".2299" = fneg float %".2298"
  %".2300" = load float, ptr %"R10"
  %"fmul.80" = fmul float %".2299", %".2300"
  %"fadd.87" = fadd float %"fmul.80", 0x3fe0000000000000
  %".2301" = bitcast ptr %"R10" to ptr
  store float %"fadd.87", ptr %".2301"
  ; FFMA.RM R10, R10, R13, 12582913
  %".2304" = load float, ptr %"R10"
  %".2305" = load float, ptr %"R13"
  %"fmul.81" = fmul float %".2304", %".2305"
  %"fadd.88" = fadd float %"fmul.81", 0x4168000020000000
  %".2306" = bitcast ptr %"R10" to ptr
  store float %"fadd.88", ptr %".2306"
  ; FADD R12, R10.reuse, -12583039
  %".2309" = load float, ptr %"R10"
  %"fadd.89" = fadd float %".2309", 0xc168000fe0000000
  %".2310" = bitcast ptr %"R12" to ptr
  store float %"fadd.89", ptr %".2310"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".2313" = icmp ult i32 23, 32
  %"SHF_min.9" = select  i1 %".2313", i32 23, i32 32
  %".2314" = load i32, ptr %"R10"
  %"zext.274" = zext i32 0 to i64
  %"zext.275" = zext i32 %".2314" to i64
  %"zext.276" = zext i32 23 to i64
  %"shl.116" = shl i64 %"zext.274", 32
  %"or.104" = or i64 %"shl.116", %"zext.275"
  %"shl.117" = shl i64 %"or.104", %"zext.276"
  %"and.6" = and i64 %"shl.117", 4294967295
  %"trunc32.65" = trunc i64 %"and.6" to i32
  store i32 %"trunc32.65", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".2317" = load float, ptr %"R11"
  %".2318" = fneg float %".2317"
  %".2319" = load float, ptr %"R12"
  %".2320" = fneg float %".2319"
  %"fmul.82" = fmul float %".2318", 0x3ff7154760000000
  %"fadd.90" = fadd float %"fmul.82", %".2320"
  %".2321" = bitcast ptr %"R12" to ptr
  store float %"fadd.90", ptr %".2321"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".2324" = load float, ptr %"R11"
  %".2325" = fneg float %".2324"
  %".2326" = load float, ptr %"R12"
  %"fmul.83" = fmul float %".2325", 0x3e54ae0c00000000
  %"fadd.91" = fadd float %"fmul.83", %".2326"
  %".2327" = bitcast ptr %"R12" to ptr
  store float %"fadd.91", ptr %".2327"
  ; MUFU.EX2 R11, R12
  %".2330" = load float, ptr %"R12"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".2330")
  %".2331" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".2331"
  ; FFMA R20, R20, R11, 1
  %".2334" = load float, ptr %"R20"
  %".2335" = load float, ptr %"R11"
  %"fmul.84" = fmul float %".2334", %".2335"
  %"fadd.92" = fadd float %"fmul.84", 0x3ff0000000000000
  %".2336" = bitcast ptr %"R20" to ptr
  store float %"fadd.92", ptr %".2336"
  ; @!P4 BRA `(.L_x_10)
  %".2339" = load i1, ptr %"P4"
  %".2340" = icmp eq i1 %".2339", 1
  br i1 %".2340", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".2343" = load i32, ptr %"R5"
  %".2344" = load i1, ptr %"PT"
  %"cmp.20" = icmp sge i32 %".2343", 3
  %".2345" = and i1 %"cmp.20", %".2344"
  store i1 %".2345", ptr %"P0"
  ; MOV R8, RZ
  %".2348" = load float, ptr %"RZ"
  %".2349" = bitcast ptr %"R8" to ptr
  store float %".2348", ptr %".2349"
  ; MOV R22, RZ
  %".2352" = load i32, ptr %"RZ"
  store i32 %".2352", ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".2355" = load i1, ptr %"P0"
  %".2356" = icmp eq i1 %".2355", 1
  br i1 %".2356", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".2359" = load i32, ptr %"R7"
  %".2360" = load i1, ptr %"PT"
  %"cmp.21" = icmp sgt i32 %".2359", 0
  %".2361" = and i1 %"cmp.21", %".2360"
  store i1 %".2361", ptr %"P0"
  ; MOV R8, RZ
  %".2364" = load float, ptr %"RZ"
  %".2365" = bitcast ptr %"R8" to ptr
  store float %".2364", ptr %".2365"
  ; MOV R22, RZ
  %".2368" = load i32, ptr %"RZ"
  store i32 %".2368", ptr %"R22"
  ; MOV R23, R7
  %".2371" = load i32, ptr %"R7"
  store i32 %".2371", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".2374" = load i1, ptr %"P0"
  %".2375" = icmp eq i1 %".2374", 1
  br i1 %".2375", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2378" = load i32, ptr %"R23"
  %".2379" = load i1, ptr %"PT"
  %"cmp.22" = icmp sgt i32 %".2378", 12
  %".2380" = and i1 %"cmp.22", %".2379"
  store i1 %".2380", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".2383" = and i1 1, 1
  %".2384" = or i1 %".2383", 1
  ; @!P1 BRA `(.L_x_13)
  %".2386" = load i1, ptr %"P1"
  %".2387" = icmp eq i1 %".2386", 1
  br i1 %".2387", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2390" = xor i1 1, 1
  %".2391" = and i1 %".2390", 1
  %".2392" = and i1 %".2391", 1
  br label %".L_x_14"
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".2397" = load i32, ptr %"R3"
  %".2398" = load i32, ptr %"R22"
  %"add.106" = add i32 %".2397", %".2398"
  %"add.107" = add i32 %"add.106", 0
  store i32 %"add.107", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".2401" = load i32, ptr %"R22"
  %".2402" = load i32, ptr %"R49"
  %"zext.277" = zext i32 %".2401" to i64
  %"zext.278" = zext i32 %".2402" to i64
  %"mul.36" = mul i64 %"zext.277", %"zext.278"
  %".2403" = ptrtoint ptr %"Arg_1" to i64
  %"add.108" = add i64 %"mul.36", %".2403"
  %".2404" = and i64 %"add.108", 18446744069414584320
  %".2405" = lshr i64 %".2404", 32
  %"trunc32.66" = trunc i64 %".2405" to i32
  %"trunc32.67" = trunc i64 %"add.108" to i32
  store i32 %"trunc32.67", ptr %"R12"
  store i32 %"trunc32.66", ptr %"R13"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".2409" = load i32, ptr %"R16"
  %".2410" = load i32, ptr %"R49"
  %"zext.279" = zext i32 %".2409" to i64
  %"zext.280" = zext i32 %".2410" to i64
  %"mul.37" = mul i64 %"zext.279", %"zext.280"
  %".2411" = ptrtoint ptr %"Arg_2" to i64
  %"add.109" = add i64 %"mul.37", %".2411"
  %".2412" = and i64 %"add.109", 18446744069414584320
  %".2413" = lshr i64 %".2412", 32
  %"trunc32.68" = trunc i64 %".2413" to i32
  %"trunc32.69" = trunc i64 %"add.109" to i32
  store i32 %"trunc32.69", ptr %"R16"
  store i32 %"trunc32.68", ptr %"R17"
  ; IADD3 R18, R22, 0x4, RZ
  %".2417" = load i32, ptr %"R22"
  %"add.110" = add i32 %".2417", 4
  %"add.111" = add i32 %"add.110", 0
  store i32 %"add.111", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".2420" = load i32, ptr %"R12"
  %"zext.281" = zext i32 %".2420" to i64
  %".2421" = load i32, ptr %"R13"
  %"zext.282" = zext i32 %".2421" to i64
  %"shl.118" = shl i64 %"zext.282", 32
  %"or.105" = or i64 %"shl.118", %"zext.281"
  %".2422" = inttoptr i64 %"or.105" to ptr
  %".2423" = ptrtoint ptr %".2422" to i64
  %".2424" = add i64 %".2423", 0
  %"for_LDG.95" = inttoptr i64 %".2424" to ptr
  %".2425" = load float, ptr %"for_LDG.95"
  %".2426" = bitcast ptr %"R24" to ptr
  store float %".2425", ptr %".2426"
  ; IADD3 R14, R3, R18, RZ
  %".2429" = load i32, ptr %"R3"
  %".2430" = load i32, ptr %"R18"
  %"add.112" = add i32 %".2429", %".2430"
  %"add.113" = add i32 %"add.112", 0
  store i32 %"add.113", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".2433" = load i32, ptr %"R16"
  %"zext.283" = zext i32 %".2433" to i64
  %".2434" = load i32, ptr %"R17"
  %"zext.284" = zext i32 %".2434" to i64
  %"shl.119" = shl i64 %"zext.284", 32
  %"or.106" = or i64 %"shl.119", %"zext.283"
  %".2435" = inttoptr i64 %"or.106" to ptr
  %".2436" = ptrtoint ptr %".2435" to i64
  %".2437" = add i64 %".2436", 0
  %"for_LDG.96" = inttoptr i64 %".2437" to ptr
  %".2438" = load float, ptr %"for_LDG.96"
  %".2439" = bitcast ptr %"R21" to ptr
  store float %".2438", ptr %".2439"
  ; LDG.E.SYS R36, [R12+0x4]
  %".2442" = load i32, ptr %"R12"
  %"zext.285" = zext i32 %".2442" to i64
  %".2443" = load i32, ptr %"R13"
  %"zext.286" = zext i32 %".2443" to i64
  %"shl.120" = shl i64 %"zext.286", 32
  %"or.107" = or i64 %"shl.120", %"zext.285"
  %".2444" = inttoptr i64 %"or.107" to ptr
  %".2445" = ptrtoint ptr %".2444" to i64
  %".2446" = add i64 %".2445", 4
  %"for_LDG.97" = inttoptr i64 %".2446" to ptr
  %".2447" = load float, ptr %"for_LDG.97"
  %".2448" = bitcast ptr %"R36" to ptr
  store float %".2447", ptr %".2448"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".2451" = load i32, ptr %"R18"
  %".2452" = load i32, ptr %"R49"
  %"zext.287" = zext i32 %".2451" to i64
  %"zext.288" = zext i32 %".2452" to i64
  %"mul.38" = mul i64 %"zext.287", %"zext.288"
  %".2453" = ptrtoint ptr %"Arg_1" to i64
  %"add.114" = add i64 %"mul.38", %".2453"
  %".2454" = and i64 %"add.114", 18446744069414584320
  %".2455" = lshr i64 %".2454", 32
  %"trunc32.70" = trunc i64 %".2455" to i32
  %"trunc32.71" = trunc i64 %"add.114" to i32
  store i32 %"trunc32.71", ptr %"R18"
  store i32 %"trunc32.70", ptr %"R19"
  ; LDG.E.SYS R25, [R16+0x4]
  %".2459" = load i32, ptr %"R16"
  %"zext.289" = zext i32 %".2459" to i64
  %".2460" = load i32, ptr %"R17"
  %"zext.290" = zext i32 %".2460" to i64
  %"shl.121" = shl i64 %"zext.290", 32
  %"or.108" = or i64 %"shl.121", %"zext.289"
  %".2461" = inttoptr i64 %"or.108" to ptr
  %".2462" = ptrtoint ptr %".2461" to i64
  %".2463" = add i64 %".2462", 4
  %"for_LDG.98" = inttoptr i64 %".2463" to ptr
  %".2464" = load float, ptr %"for_LDG.98"
  %".2465" = bitcast ptr %"R25" to ptr
  store float %".2464", ptr %".2465"
  ; LDG.E.SYS R46, [R12+0x8]
  %".2468" = load i32, ptr %"R12"
  %"zext.291" = zext i32 %".2468" to i64
  %".2469" = load i32, ptr %"R13"
  %"zext.292" = zext i32 %".2469" to i64
  %"shl.122" = shl i64 %"zext.292", 32
  %"or.109" = or i64 %"shl.122", %"zext.291"
  %".2470" = inttoptr i64 %"or.109" to ptr
  %".2471" = ptrtoint ptr %".2470" to i64
  %".2472" = add i64 %".2471", 8
  %"for_LDG.99" = inttoptr i64 %".2472" to ptr
  %".2473" = load float, ptr %"for_LDG.99"
  %".2474" = bitcast ptr %"R46" to ptr
  store float %".2473", ptr %".2474"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".2477" = load i32, ptr %"R14"
  %".2478" = load i32, ptr %"R49"
  %"zext.293" = zext i32 %".2477" to i64
  %"zext.294" = zext i32 %".2478" to i64
  %"mul.39" = mul i64 %"zext.293", %"zext.294"
  %".2479" = ptrtoint ptr %"Arg_2" to i64
  %"add.115" = add i64 %"mul.39", %".2479"
  %".2480" = and i64 %"add.115", 18446744069414584320
  %".2481" = lshr i64 %".2480", 32
  %"trunc32.72" = trunc i64 %".2481" to i32
  %"trunc32.73" = trunc i64 %"add.115" to i32
  store i32 %"trunc32.73", ptr %"R14"
  store i32 %"trunc32.72", ptr %"R15"
  ; LDG.E.SYS R34, [R16+0x8]
  %".2485" = load i32, ptr %"R16"
  %"zext.295" = zext i32 %".2485" to i64
  %".2486" = load i32, ptr %"R17"
  %"zext.296" = zext i32 %".2486" to i64
  %"shl.123" = shl i64 %"zext.296", 32
  %"or.110" = or i64 %"shl.123", %"zext.295"
  %".2487" = inttoptr i64 %"or.110" to ptr
  %".2488" = ptrtoint ptr %".2487" to i64
  %".2489" = add i64 %".2488", 8
  %"for_LDG.100" = inttoptr i64 %".2489" to ptr
  %".2490" = load float, ptr %"for_LDG.100"
  %".2491" = bitcast ptr %"R34" to ptr
  store float %".2490", ptr %".2491"
  ; LDG.E.SYS R44, [R12+0xc]
  %".2494" = load i32, ptr %"R12"
  %"zext.297" = zext i32 %".2494" to i64
  %".2495" = load i32, ptr %"R13"
  %"zext.298" = zext i32 %".2495" to i64
  %"shl.124" = shl i64 %"zext.298", 32
  %"or.111" = or i64 %"shl.124", %"zext.297"
  %".2496" = inttoptr i64 %"or.111" to ptr
  %".2497" = ptrtoint ptr %".2496" to i64
  %".2498" = add i64 %".2497", 12
  %"for_LDG.101" = inttoptr i64 %".2498" to ptr
  %".2499" = load float, ptr %"for_LDG.101"
  %".2500" = bitcast ptr %"R44" to ptr
  store float %".2499", ptr %".2500"
  ; IADD3 R10, R22, 0x8, RZ
  %".2503" = load i32, ptr %"R22"
  %"add.116" = add i32 %".2503", 8
  %"add.117" = add i32 %"add.116", 0
  store i32 %"add.117", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".2506" = load i32, ptr %"R16"
  %"zext.299" = zext i32 %".2506" to i64
  %".2507" = load i32, ptr %"R17"
  %"zext.300" = zext i32 %".2507" to i64
  %"shl.125" = shl i64 %"zext.300", 32
  %"or.112" = or i64 %"shl.125", %"zext.299"
  %".2508" = inttoptr i64 %"or.112" to ptr
  %".2509" = ptrtoint ptr %".2508" to i64
  %".2510" = add i64 %".2509", 12
  %"for_LDG.102" = inttoptr i64 %".2510" to ptr
  %".2511" = load float, ptr %"for_LDG.102"
  %".2512" = bitcast ptr %"R41" to ptr
  store float %".2511", ptr %".2512"
  ; LDG.E.SYS R42, [R18]
  %".2515" = load i32, ptr %"R18"
  %"zext.301" = zext i32 %".2515" to i64
  %".2516" = load i32, ptr %"R19"
  %"zext.302" = zext i32 %".2516" to i64
  %"shl.126" = shl i64 %"zext.302", 32
  %"or.113" = or i64 %"shl.126", %"zext.301"
  %".2517" = inttoptr i64 %"or.113" to ptr
  %".2518" = ptrtoint ptr %".2517" to i64
  %".2519" = add i64 %".2518", 0
  %"for_LDG.103" = inttoptr i64 %".2519" to ptr
  %".2520" = load float, ptr %"for_LDG.103"
  %".2521" = bitcast ptr %"R42" to ptr
  store float %".2520", ptr %".2521"
  ; IADD3 R50, R3, R10, RZ
  %".2524" = load i32, ptr %"R3"
  %".2525" = load i32, ptr %"R10"
  %"add.118" = add i32 %".2524", %".2525"
  %"add.119" = add i32 %"add.118", 0
  store i32 %"add.119", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".2528" = load i32, ptr %"R14"
  %"zext.303" = zext i32 %".2528" to i64
  %".2529" = load i32, ptr %"R15"
  %"zext.304" = zext i32 %".2529" to i64
  %"shl.127" = shl i64 %"zext.304", 32
  %"or.114" = or i64 %"shl.127", %"zext.303"
  %".2530" = inttoptr i64 %"or.114" to ptr
  %".2531" = ptrtoint ptr %".2530" to i64
  %".2532" = add i64 %".2531", 0
  %"for_LDG.104" = inttoptr i64 %".2532" to ptr
  %".2533" = load float, ptr %"for_LDG.104"
  %".2534" = bitcast ptr %"R39" to ptr
  store float %".2533", ptr %".2534"
  ; LDG.E.SYS R40, [R18+0x4]
  %".2537" = load i32, ptr %"R18"
  %"zext.305" = zext i32 %".2537" to i64
  %".2538" = load i32, ptr %"R19"
  %"zext.306" = zext i32 %".2538" to i64
  %"shl.128" = shl i64 %"zext.306", 32
  %"or.115" = or i64 %"shl.128", %"zext.305"
  %".2539" = inttoptr i64 %"or.115" to ptr
  %".2540" = ptrtoint ptr %".2539" to i64
  %".2541" = add i64 %".2540", 4
  %"for_LDG.105" = inttoptr i64 %".2541" to ptr
  %".2542" = load float, ptr %"for_LDG.105"
  %".2543" = bitcast ptr %"R40" to ptr
  store float %".2542", ptr %".2543"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".2546" = load i32, ptr %"R10"
  %".2547" = load i32, ptr %"R49"
  %"zext.307" = zext i32 %".2546" to i64
  %"zext.308" = zext i32 %".2547" to i64
  %"mul.40" = mul i64 %"zext.307", %"zext.308"
  %".2548" = ptrtoint ptr %"Arg_1" to i64
  %"add.120" = add i64 %"mul.40", %".2548"
  %".2549" = and i64 %"add.120", 18446744069414584320
  %".2550" = lshr i64 %".2549", 32
  %"trunc32.74" = trunc i64 %".2550" to i32
  %"trunc32.75" = trunc i64 %"add.120" to i32
  store i32 %"trunc32.75", ptr %"R10"
  store i32 %"trunc32.74", ptr %"R11"
  ; LDG.E.SYS R37, [R14+0x4]
  %".2554" = load i32, ptr %"R14"
  %"zext.309" = zext i32 %".2554" to i64
  %".2555" = load i32, ptr %"R15"
  %"zext.310" = zext i32 %".2555" to i64
  %"shl.129" = shl i64 %"zext.310", 32
  %"or.116" = or i64 %"shl.129", %"zext.309"
  %".2556" = inttoptr i64 %"or.116" to ptr
  %".2557" = ptrtoint ptr %".2556" to i64
  %".2558" = add i64 %".2557", 4
  %"for_LDG.106" = inttoptr i64 %".2558" to ptr
  %".2559" = load float, ptr %"for_LDG.106"
  %".2560" = bitcast ptr %"R37" to ptr
  store float %".2559", ptr %".2560"
  ; LDG.E.SYS R38, [R18+0x8]
  %".2563" = load i32, ptr %"R18"
  %"zext.311" = zext i32 %".2563" to i64
  %".2564" = load i32, ptr %"R19"
  %"zext.312" = zext i32 %".2564" to i64
  %"shl.130" = shl i64 %"zext.312", 32
  %"or.117" = or i64 %"shl.130", %"zext.311"
  %".2565" = inttoptr i64 %"or.117" to ptr
  %".2566" = ptrtoint ptr %".2565" to i64
  %".2567" = add i64 %".2566", 8
  %"for_LDG.107" = inttoptr i64 %".2567" to ptr
  %".2568" = load float, ptr %"for_LDG.107"
  %".2569" = bitcast ptr %"R38" to ptr
  store float %".2568", ptr %".2569"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".2572" = load i32, ptr %"R50"
  %".2573" = load i32, ptr %"R49"
  %"zext.313" = zext i32 %".2572" to i64
  %"zext.314" = zext i32 %".2573" to i64
  %"mul.41" = mul i64 %"zext.313", %"zext.314"
  %".2574" = ptrtoint ptr %"Arg_2" to i64
  %"add.121" = add i64 %"mul.41", %".2574"
  %".2575" = and i64 %"add.121", 18446744069414584320
  %".2576" = lshr i64 %".2575", 32
  %"trunc32.76" = trunc i64 %".2576" to i32
  %"trunc32.77" = trunc i64 %"add.121" to i32
  store i32 %"trunc32.77", ptr %"R12"
  store i32 %"trunc32.76", ptr %"R13"
  ; LDG.E.SYS R35, [R14+0x8]
  %".2580" = load i32, ptr %"R14"
  %"zext.315" = zext i32 %".2580" to i64
  %".2581" = load i32, ptr %"R15"
  %"zext.316" = zext i32 %".2581" to i64
  %"shl.131" = shl i64 %"zext.316", 32
  %"or.118" = or i64 %"shl.131", %"zext.315"
  %".2582" = inttoptr i64 %"or.118" to ptr
  %".2583" = ptrtoint ptr %".2582" to i64
  %".2584" = add i64 %".2583", 8
  %"for_LDG.108" = inttoptr i64 %".2584" to ptr
  %".2585" = load float, ptr %"for_LDG.108"
  %".2586" = bitcast ptr %"R35" to ptr
  store float %".2585", ptr %".2586"
  ; LDG.E.SYS R48, [R18+0xc]
  %".2589" = load i32, ptr %"R18"
  %"zext.317" = zext i32 %".2589" to i64
  %".2590" = load i32, ptr %"R19"
  %"zext.318" = zext i32 %".2590" to i64
  %"shl.132" = shl i64 %"zext.318", 32
  %"or.119" = or i64 %"shl.132", %"zext.317"
  %".2591" = inttoptr i64 %"or.119" to ptr
  %".2592" = ptrtoint ptr %".2591" to i64
  %".2593" = add i64 %".2592", 12
  %"for_LDG.109" = inttoptr i64 %".2593" to ptr
  %".2594" = load float, ptr %"for_LDG.109"
  %".2595" = bitcast ptr %"R48" to ptr
  store float %".2594", ptr %".2595"
  ; IADD3 R16, R22, 0xc, RZ
  %".2598" = load i32, ptr %"R22"
  %"add.122" = add i32 %".2598", 12
  %"add.123" = add i32 %"add.122", 0
  store i32 %"add.123", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".2601" = load i32, ptr %"R14"
  %"zext.319" = zext i32 %".2601" to i64
  %".2602" = load i32, ptr %"R15"
  %"zext.320" = zext i32 %".2602" to i64
  %"shl.133" = shl i64 %"zext.320", 32
  %"or.120" = or i64 %"shl.133", %"zext.319"
  %".2603" = inttoptr i64 %"or.120" to ptr
  %".2604" = ptrtoint ptr %".2603" to i64
  %".2605" = add i64 %".2604", 12
  %"for_LDG.110" = inttoptr i64 %".2605" to ptr
  %".2606" = load float, ptr %"for_LDG.110"
  %".2607" = bitcast ptr %"R47" to ptr
  store float %".2606", ptr %".2607"
  ; LDG.E.SYS R54, [R10]
  %".2610" = load i32, ptr %"R10"
  %"zext.321" = zext i32 %".2610" to i64
  %".2611" = load i32, ptr %"R11"
  %"zext.322" = zext i32 %".2611" to i64
  %"shl.134" = shl i64 %"zext.322", 32
  %"or.121" = or i64 %"shl.134", %"zext.321"
  %".2612" = inttoptr i64 %"or.121" to ptr
  %".2613" = ptrtoint ptr %".2612" to i64
  %".2614" = add i64 %".2613", 0
  %"for_LDG.111" = inttoptr i64 %".2614" to ptr
  %".2615" = load float, ptr %"for_LDG.111"
  %".2616" = bitcast ptr %"R54" to ptr
  store float %".2615", ptr %".2616"
  ; IADD3 R58, R3, R16, RZ
  %".2619" = load i32, ptr %"R3"
  %".2620" = load i32, ptr %"R16"
  %"add.124" = add i32 %".2619", %".2620"
  %"add.125" = add i32 %"add.124", 0
  store i32 %"add.125", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".2623" = load i32, ptr %"R12"
  %"zext.323" = zext i32 %".2623" to i64
  %".2624" = load i32, ptr %"R13"
  %"zext.324" = zext i32 %".2624" to i64
  %"shl.135" = shl i64 %"zext.324", 32
  %"or.122" = or i64 %"shl.135", %"zext.323"
  %".2625" = inttoptr i64 %"or.122" to ptr
  %".2626" = ptrtoint ptr %".2625" to i64
  %".2627" = add i64 %".2626", 0
  %"for_LDG.112" = inttoptr i64 %".2627" to ptr
  %".2628" = load float, ptr %"for_LDG.112"
  %".2629" = bitcast ptr %"R45" to ptr
  store float %".2628", ptr %".2629"
  ; LDG.E.SYS R52, [R10+0x4]
  %".2632" = load i32, ptr %"R10"
  %"zext.325" = zext i32 %".2632" to i64
  %".2633" = load i32, ptr %"R11"
  %"zext.326" = zext i32 %".2633" to i64
  %"shl.136" = shl i64 %"zext.326", 32
  %"or.123" = or i64 %"shl.136", %"zext.325"
  %".2634" = inttoptr i64 %"or.123" to ptr
  %".2635" = ptrtoint ptr %".2634" to i64
  %".2636" = add i64 %".2635", 4
  %"for_LDG.113" = inttoptr i64 %".2636" to ptr
  %".2637" = load float, ptr %"for_LDG.113"
  %".2638" = bitcast ptr %"R52" to ptr
  store float %".2637", ptr %".2638"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".2641" = load i32, ptr %"R16"
  %".2642" = load i32, ptr %"R49"
  %"zext.327" = zext i32 %".2641" to i64
  %"zext.328" = zext i32 %".2642" to i64
  %"mul.42" = mul i64 %"zext.327", %"zext.328"
  %".2643" = ptrtoint ptr %"Arg_1" to i64
  %"add.126" = add i64 %"mul.42", %".2643"
  %".2644" = and i64 %"add.126", 18446744069414584320
  %".2645" = lshr i64 %".2644", 32
  %"trunc32.78" = trunc i64 %".2645" to i32
  %"trunc32.79" = trunc i64 %"add.126" to i32
  store i32 %"trunc32.79", ptr %"R16"
  store i32 %"trunc32.78", ptr %"R17"
  ; LDG.E.SYS R43, [R12+0x4]
  %".2649" = load i32, ptr %"R12"
  %"zext.329" = zext i32 %".2649" to i64
  %".2650" = load i32, ptr %"R13"
  %"zext.330" = zext i32 %".2650" to i64
  %"shl.137" = shl i64 %"zext.330", 32
  %"or.124" = or i64 %"shl.137", %"zext.329"
  %".2651" = inttoptr i64 %"or.124" to ptr
  %".2652" = ptrtoint ptr %".2651" to i64
  %".2653" = add i64 %".2652", 4
  %"for_LDG.114" = inttoptr i64 %".2653" to ptr
  %".2654" = load float, ptr %"for_LDG.114"
  %".2655" = bitcast ptr %"R43" to ptr
  store float %".2654", ptr %".2655"
  ; LDG.E.SYS R50, [R10+0x8]
  %".2658" = load i32, ptr %"R10"
  %"zext.331" = zext i32 %".2658" to i64
  %".2659" = load i32, ptr %"R11"
  %"zext.332" = zext i32 %".2659" to i64
  %"shl.138" = shl i64 %"zext.332", 32
  %"or.125" = or i64 %"shl.138", %"zext.331"
  %".2660" = inttoptr i64 %"or.125" to ptr
  %".2661" = ptrtoint ptr %".2660" to i64
  %".2662" = add i64 %".2661", 8
  %"for_LDG.115" = inttoptr i64 %".2662" to ptr
  %".2663" = load float, ptr %"for_LDG.115"
  %".2664" = bitcast ptr %"R50" to ptr
  store float %".2663", ptr %".2664"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".2667" = load i32, ptr %"R58"
  %".2668" = load i32, ptr %"R49"
  %"zext.333" = zext i32 %".2667" to i64
  %"zext.334" = zext i32 %".2668" to i64
  %"mul.43" = mul i64 %"zext.333", %"zext.334"
  %".2669" = ptrtoint ptr %"Arg_2" to i64
  %"add.127" = add i64 %"mul.43", %".2669"
  %".2670" = and i64 %"add.127", 18446744069414584320
  %".2671" = lshr i64 %".2670", 32
  %"trunc32.80" = trunc i64 %".2671" to i32
  %"trunc32.81" = trunc i64 %"add.127" to i32
  store i32 %"trunc32.81", ptr %"R14"
  store i32 %"trunc32.80", ptr %"R15"
  ; LDG.E.SYS R18, [R12+0x8]
  %".2675" = load i32, ptr %"R12"
  %"zext.335" = zext i32 %".2675" to i64
  %".2676" = load i32, ptr %"R13"
  %"zext.336" = zext i32 %".2676" to i64
  %"shl.139" = shl i64 %"zext.336", 32
  %"or.126" = or i64 %"shl.139", %"zext.335"
  %".2677" = inttoptr i64 %"or.126" to ptr
  %".2678" = ptrtoint ptr %".2677" to i64
  %".2679" = add i64 %".2678", 8
  %"for_LDG.116" = inttoptr i64 %".2679" to ptr
  %".2680" = load float, ptr %"for_LDG.116"
  %".2681" = bitcast ptr %"R18" to ptr
  store float %".2680", ptr %".2681"
  ; LDG.E.SYS R56, [R10+0xc]
  %".2684" = load i32, ptr %"R10"
  %"zext.337" = zext i32 %".2684" to i64
  %".2685" = load i32, ptr %"R11"
  %"zext.338" = zext i32 %".2685" to i64
  %"shl.140" = shl i64 %"zext.338", 32
  %"or.127" = or i64 %"shl.140", %"zext.337"
  %".2686" = inttoptr i64 %"or.127" to ptr
  %".2687" = ptrtoint ptr %".2686" to i64
  %".2688" = add i64 %".2687", 12
  %"for_LDG.117" = inttoptr i64 %".2688" to ptr
  %".2689" = load float, ptr %"for_LDG.117"
  %".2690" = bitcast ptr %"R56" to ptr
  store float %".2689", ptr %".2690"
  ; LDG.E.SYS R55, [R12+0xc]
  %".2693" = load i32, ptr %"R12"
  %"zext.339" = zext i32 %".2693" to i64
  %".2694" = load i32, ptr %"R13"
  %"zext.340" = zext i32 %".2694" to i64
  %"shl.141" = shl i64 %"zext.340", 32
  %"or.128" = or i64 %"shl.141", %"zext.339"
  %".2695" = inttoptr i64 %"or.128" to ptr
  %".2696" = ptrtoint ptr %".2695" to i64
  %".2697" = add i64 %".2696", 12
  %"for_LDG.118" = inttoptr i64 %".2697" to ptr
  %".2698" = load float, ptr %"for_LDG.118"
  %".2699" = bitcast ptr %"R55" to ptr
  store float %".2698", ptr %".2699"
  ; LDG.E.SYS R51, [R16]
  %".2702" = load i32, ptr %"R16"
  %"zext.341" = zext i32 %".2702" to i64
  %".2703" = load i32, ptr %"R17"
  %"zext.342" = zext i32 %".2703" to i64
  %"shl.142" = shl i64 %"zext.342", 32
  %"or.129" = or i64 %"shl.142", %"zext.341"
  %".2704" = inttoptr i64 %"or.129" to ptr
  %".2705" = ptrtoint ptr %".2704" to i64
  %".2706" = add i64 %".2705", 0
  %"for_LDG.119" = inttoptr i64 %".2706" to ptr
  %".2707" = load float, ptr %"for_LDG.119"
  %".2708" = bitcast ptr %"R51" to ptr
  store float %".2707", ptr %".2708"
  ; LDG.E.SYS R53, [R14]
  %".2711" = load i32, ptr %"R14"
  %"zext.343" = zext i32 %".2711" to i64
  %".2712" = load i32, ptr %"R15"
  %"zext.344" = zext i32 %".2712" to i64
  %"shl.143" = shl i64 %"zext.344", 32
  %"or.130" = or i64 %"shl.143", %"zext.343"
  %".2713" = inttoptr i64 %"or.130" to ptr
  %".2714" = ptrtoint ptr %".2713" to i64
  %".2715" = add i64 %".2714", 0
  %"for_LDG.120" = inttoptr i64 %".2715" to ptr
  %".2716" = load float, ptr %"for_LDG.120"
  %".2717" = bitcast ptr %"R53" to ptr
  store float %".2716", ptr %".2717"
  ; LDG.E.SYS R60, [R16+0x4]
  %".2720" = load i32, ptr %"R16"
  %"zext.345" = zext i32 %".2720" to i64
  %".2721" = load i32, ptr %"R17"
  %"zext.346" = zext i32 %".2721" to i64
  %"shl.144" = shl i64 %"zext.346", 32
  %"or.131" = or i64 %"shl.144", %"zext.345"
  %".2722" = inttoptr i64 %"or.131" to ptr
  %".2723" = ptrtoint ptr %".2722" to i64
  %".2724" = add i64 %".2723", 4
  %"for_LDG.121" = inttoptr i64 %".2724" to ptr
  %".2725" = load float, ptr %"for_LDG.121"
  %".2726" = bitcast ptr %"R60" to ptr
  store float %".2725", ptr %".2726"
  ; LDG.E.SYS R49, [R14+0x4]
  %".2729" = load i32, ptr %"R14"
  %"zext.347" = zext i32 %".2729" to i64
  %".2730" = load i32, ptr %"R15"
  %"zext.348" = zext i32 %".2730" to i64
  %"shl.145" = shl i64 %"zext.348", 32
  %"or.132" = or i64 %"shl.145", %"zext.347"
  %".2731" = inttoptr i64 %"or.132" to ptr
  %".2732" = ptrtoint ptr %".2731" to i64
  %".2733" = add i64 %".2732", 4
  %"for_LDG.122" = inttoptr i64 %".2733" to ptr
  %".2734" = load float, ptr %"for_LDG.122"
  %".2735" = bitcast ptr %"R49" to ptr
  store float %".2734", ptr %".2735"
  ; LDG.E.SYS R58, [R16+0x8]
  %".2738" = load i32, ptr %"R16"
  %"zext.349" = zext i32 %".2738" to i64
  %".2739" = load i32, ptr %"R17"
  %"zext.350" = zext i32 %".2739" to i64
  %"shl.146" = shl i64 %"zext.350", 32
  %"or.133" = or i64 %"shl.146", %"zext.349"
  %".2740" = inttoptr i64 %"or.133" to ptr
  %".2741" = ptrtoint ptr %".2740" to i64
  %".2742" = add i64 %".2741", 8
  %"for_LDG.123" = inttoptr i64 %".2742" to ptr
  %".2743" = load float, ptr %"for_LDG.123"
  %".2744" = bitcast ptr %"R58" to ptr
  store float %".2743", ptr %".2744"
  ; LDG.E.SYS R19, [R14+0x8]
  %".2747" = load i32, ptr %"R14"
  %"zext.351" = zext i32 %".2747" to i64
  %".2748" = load i32, ptr %"R15"
  %"zext.352" = zext i32 %".2748" to i64
  %"shl.147" = shl i64 %"zext.352", 32
  %"or.134" = or i64 %"shl.147", %"zext.351"
  %".2749" = inttoptr i64 %"or.134" to ptr
  %".2750" = ptrtoint ptr %".2749" to i64
  %".2751" = add i64 %".2750", 8
  %"for_LDG.124" = inttoptr i64 %".2751" to ptr
  %".2752" = load float, ptr %"for_LDG.124"
  %".2753" = bitcast ptr %"R19" to ptr
  store float %".2752", ptr %".2753"
  ; LDG.E.SYS R57, [R16+0xc]
  %".2756" = load i32, ptr %"R16"
  %"zext.353" = zext i32 %".2756" to i64
  %".2757" = load i32, ptr %"R17"
  %"zext.354" = zext i32 %".2757" to i64
  %"shl.148" = shl i64 %"zext.354", 32
  %"or.135" = or i64 %"shl.148", %"zext.353"
  %".2758" = inttoptr i64 %"or.135" to ptr
  %".2759" = ptrtoint ptr %".2758" to i64
  %".2760" = add i64 %".2759", 12
  %"for_LDG.125" = inttoptr i64 %".2760" to ptr
  %".2761" = load float, ptr %"for_LDG.125"
  %".2762" = bitcast ptr %"R57" to ptr
  store float %".2761", ptr %".2762"
  ; LDG.E.SYS R59, [R14+0xc]
  %".2765" = load i32, ptr %"R14"
  %"zext.355" = zext i32 %".2765" to i64
  %".2766" = load i32, ptr %"R15"
  %"zext.356" = zext i32 %".2766" to i64
  %"shl.149" = shl i64 %"zext.356", 32
  %"or.136" = or i64 %"shl.149", %"zext.355"
  %".2767" = inttoptr i64 %"or.136" to ptr
  %".2768" = ptrtoint ptr %".2767" to i64
  %".2769" = add i64 %".2768", 12
  %"for_LDG.126" = inttoptr i64 %".2769" to ptr
  %".2770" = load float, ptr %"for_LDG.126"
  %".2771" = bitcast ptr %"R59" to ptr
  store float %".2770", ptr %".2771"
  ; IADD3 R23, R23, -0x10, RZ
  %".2774" = load i32, ptr %"R23"
  %"add.128" = add i32 %".2774", -16
  %"add.129" = add i32 %"add.128", 0
  store i32 %"add.129", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2777" = load i32, ptr %"R22"
  %"add.130" = add i32 %".2777", 16
  %"add.131" = add i32 %"add.130", 0
  store i32 %"add.131", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2780" = load i32, ptr %"R23"
  %".2781" = load i1, ptr %"PT"
  %"cmp.23" = icmp sgt i32 %".2780", 12
  %".2782" = and i1 %"cmp.23", %".2781"
  store i1 %".2782", ptr %"P1"
  ; FMUL R24, R24, R9
  %".2785" = load float, ptr %"R24"
  %".2786" = load float, ptr %"R9"
  %"fmul.85" = fmul float %".2785", %".2786"
  %".2787" = bitcast ptr %"R24" to ptr
  store float %"fmul.85", ptr %".2787"
  ; FFMA R24, R24, R21, R8
  %".2790" = load float, ptr %"R24"
  %".2791" = load float, ptr %"R21"
  %".2792" = load float, ptr %"R8"
  %"fmul.86" = fmul float %".2790", %".2791"
  %"fadd.93" = fadd float %"fmul.86", %".2792"
  %".2793" = bitcast ptr %"R24" to ptr
  store float %"fadd.93", ptr %".2793"
  ; FMUL R36, R36, R9
  %".2796" = load float, ptr %"R36"
  %".2797" = load float, ptr %"R9"
  %"fmul.87" = fmul float %".2796", %".2797"
  %".2798" = bitcast ptr %"R36" to ptr
  store float %"fmul.87", ptr %".2798"
  ; FFMA R25, R36, R25, R24
  %".2801" = load float, ptr %"R36"
  %".2802" = load float, ptr %"R25"
  %".2803" = load float, ptr %"R24"
  %"fmul.88" = fmul float %".2801", %".2802"
  %"fadd.94" = fadd float %"fmul.88", %".2803"
  %".2804" = bitcast ptr %"R25" to ptr
  store float %"fadd.94", ptr %".2804"
  ; FMUL R46, R46, R9
  %".2807" = load float, ptr %"R46"
  %".2808" = load float, ptr %"R9"
  %"fmul.89" = fmul float %".2807", %".2808"
  %".2809" = bitcast ptr %"R46" to ptr
  store float %"fmul.89", ptr %".2809"
  ; FFMA R34, R46, R34, R25
  %".2812" = load float, ptr %"R46"
  %".2813" = load float, ptr %"R34"
  %".2814" = load float, ptr %"R25"
  %"fmul.90" = fmul float %".2812", %".2813"
  %"fadd.95" = fadd float %"fmul.90", %".2814"
  %".2815" = bitcast ptr %"R34" to ptr
  store float %"fadd.95", ptr %".2815"
  ; FMUL R44, R44, R9
  %".2818" = load float, ptr %"R44"
  %".2819" = load float, ptr %"R9"
  %"fmul.91" = fmul float %".2818", %".2819"
  %".2820" = bitcast ptr %"R44" to ptr
  store float %"fmul.91", ptr %".2820"
  ; FFMA R34, R44, R41, R34
  %".2823" = load float, ptr %"R44"
  %".2824" = load float, ptr %"R41"
  %".2825" = load float, ptr %"R34"
  %"fmul.92" = fmul float %".2823", %".2824"
  %"fadd.96" = fadd float %"fmul.92", %".2825"
  %".2826" = bitcast ptr %"R34" to ptr
  store float %"fadd.96", ptr %".2826"
  ; FMUL R42, R42, R9
  %".2829" = load float, ptr %"R42"
  %".2830" = load float, ptr %"R9"
  %"fmul.93" = fmul float %".2829", %".2830"
  %".2831" = bitcast ptr %"R42" to ptr
  store float %"fmul.93", ptr %".2831"
  ; FFMA R34, R42, R39, R34
  %".2834" = load float, ptr %"R42"
  %".2835" = load float, ptr %"R39"
  %".2836" = load float, ptr %"R34"
  %"fmul.94" = fmul float %".2834", %".2835"
  %"fadd.97" = fadd float %"fmul.94", %".2836"
  %".2837" = bitcast ptr %"R34" to ptr
  store float %"fadd.97", ptr %".2837"
  ; FMUL R40, R40, R9
  %".2840" = load float, ptr %"R40"
  %".2841" = load float, ptr %"R9"
  %"fmul.95" = fmul float %".2840", %".2841"
  %".2842" = bitcast ptr %"R40" to ptr
  store float %"fmul.95", ptr %".2842"
  ; FFMA R34, R40, R37, R34
  %".2845" = load float, ptr %"R40"
  %".2846" = load float, ptr %"R37"
  %".2847" = load float, ptr %"R34"
  %"fmul.96" = fmul float %".2845", %".2846"
  %"fadd.98" = fadd float %"fmul.96", %".2847"
  %".2848" = bitcast ptr %"R34" to ptr
  store float %"fadd.98", ptr %".2848"
  ; FMUL R38, R38, R9
  %".2851" = load float, ptr %"R38"
  %".2852" = load float, ptr %"R9"
  %"fmul.97" = fmul float %".2851", %".2852"
  %".2853" = bitcast ptr %"R38" to ptr
  store float %"fmul.97", ptr %".2853"
  ; FFMA R34, R38, R35, R34
  %".2856" = load float, ptr %"R38"
  %".2857" = load float, ptr %"R35"
  %".2858" = load float, ptr %"R34"
  %"fmul.98" = fmul float %".2856", %".2857"
  %"fadd.99" = fadd float %"fmul.98", %".2858"
  %".2859" = bitcast ptr %"R34" to ptr
  store float %"fadd.99", ptr %".2859"
  ; FMUL R48, R48, R9
  %".2862" = load float, ptr %"R48"
  %".2863" = load float, ptr %"R9"
  %"fmul.99" = fmul float %".2862", %".2863"
  %".2864" = bitcast ptr %"R48" to ptr
  store float %"fmul.99", ptr %".2864"
  ; FFMA R34, R48, R47, R34
  %".2867" = load float, ptr %"R48"
  %".2868" = load float, ptr %"R47"
  %".2869" = load float, ptr %"R34"
  %"fmul.100" = fmul float %".2867", %".2868"
  %"fadd.100" = fadd float %"fmul.100", %".2869"
  %".2870" = bitcast ptr %"R34" to ptr
  store float %"fadd.100", ptr %".2870"
  ; FMUL R54, R54, R9
  %".2873" = load float, ptr %"R54"
  %".2874" = load float, ptr %"R9"
  %"fmul.101" = fmul float %".2873", %".2874"
  %".2875" = bitcast ptr %"R54" to ptr
  store float %"fmul.101", ptr %".2875"
  ; FFMA R34, R54, R45, R34
  %".2878" = load float, ptr %"R54"
  %".2879" = load float, ptr %"R45"
  %".2880" = load float, ptr %"R34"
  %"fmul.102" = fmul float %".2878", %".2879"
  %"fadd.101" = fadd float %"fmul.102", %".2880"
  %".2881" = bitcast ptr %"R34" to ptr
  store float %"fadd.101", ptr %".2881"
  ; FMUL R52, R52, R9
  %".2884" = load float, ptr %"R52"
  %".2885" = load float, ptr %"R9"
  %"fmul.103" = fmul float %".2884", %".2885"
  %".2886" = bitcast ptr %"R52" to ptr
  store float %"fmul.103", ptr %".2886"
  ; FFMA R43, R52, R43, R34
  %".2889" = load float, ptr %"R52"
  %".2890" = load float, ptr %"R43"
  %".2891" = load float, ptr %"R34"
  %"fmul.104" = fmul float %".2889", %".2890"
  %"fadd.102" = fadd float %"fmul.104", %".2891"
  %".2892" = bitcast ptr %"R43" to ptr
  store float %"fadd.102", ptr %".2892"
  ; FMUL R50, R50, R9
  %".2895" = load float, ptr %"R50"
  %".2896" = load float, ptr %"R9"
  %"fmul.105" = fmul float %".2895", %".2896"
  %".2897" = bitcast ptr %"R50" to ptr
  store float %"fmul.105", ptr %".2897"
  ; FFMA R18, R50, R18, R43
  %".2900" = load float, ptr %"R50"
  %".2901" = load float, ptr %"R18"
  %".2902" = load float, ptr %"R43"
  %"fmul.106" = fmul float %".2900", %".2901"
  %"fadd.103" = fadd float %"fmul.106", %".2902"
  %".2903" = bitcast ptr %"R18" to ptr
  store float %"fadd.103", ptr %".2903"
  ; FMUL R56, R56, R9
  %".2906" = load float, ptr %"R56"
  %".2907" = load float, ptr %"R9"
  %"fmul.107" = fmul float %".2906", %".2907"
  %".2908" = bitcast ptr %"R56" to ptr
  store float %"fmul.107", ptr %".2908"
  ; FFMA R18, R56, R55, R18
  %".2911" = load float, ptr %"R56"
  %".2912" = load float, ptr %"R55"
  %".2913" = load float, ptr %"R18"
  %"fmul.108" = fmul float %".2911", %".2912"
  %"fadd.104" = fadd float %"fmul.108", %".2913"
  %".2914" = bitcast ptr %"R18" to ptr
  store float %"fadd.104", ptr %".2914"
  ; FMUL R51, R51, R9
  %".2917" = load float, ptr %"R51"
  %".2918" = load float, ptr %"R9"
  %"fmul.109" = fmul float %".2917", %".2918"
  %".2919" = bitcast ptr %"R51" to ptr
  store float %"fmul.109", ptr %".2919"
  ; FFMA R18, R51, R53, R18
  %".2922" = load float, ptr %"R51"
  %".2923" = load float, ptr %"R53"
  %".2924" = load float, ptr %"R18"
  %"fmul.110" = fmul float %".2922", %".2923"
  %"fadd.105" = fadd float %"fmul.110", %".2924"
  %".2925" = bitcast ptr %"R18" to ptr
  store float %"fadd.105", ptr %".2925"
  ; FMUL R60, R60, R9
  %".2928" = load float, ptr %"R60"
  %".2929" = load float, ptr %"R9"
  %"fmul.111" = fmul float %".2928", %".2929"
  %".2930" = bitcast ptr %"R60" to ptr
  store float %"fmul.111", ptr %".2930"
  ; FFMA R18, R60, R49, R18
  %".2933" = load float, ptr %"R60"
  %".2934" = load float, ptr %"R49"
  %".2935" = load float, ptr %"R18"
  %"fmul.112" = fmul float %".2933", %".2934"
  %"fadd.106" = fadd float %"fmul.112", %".2935"
  %".2936" = bitcast ptr %"R18" to ptr
  store float %"fadd.106", ptr %".2936"
  ; FMUL R58, R58, R9
  %".2939" = load float, ptr %"R58"
  %".2940" = load float, ptr %"R9"
  %"fmul.113" = fmul float %".2939", %".2940"
  %".2941" = bitcast ptr %"R58" to ptr
  store float %"fmul.113", ptr %".2941"
  ; FFMA R18, R58, R19, R18
  %".2944" = load float, ptr %"R58"
  %".2945" = load float, ptr %"R19"
  %".2946" = load float, ptr %"R18"
  %"fmul.114" = fmul float %".2944", %".2945"
  %"fadd.107" = fadd float %"fmul.114", %".2946"
  %".2947" = bitcast ptr %"R18" to ptr
  store float %"fadd.107", ptr %".2947"
  ; FMUL R57, R57, R9
  %".2950" = load float, ptr %"R57"
  %".2951" = load float, ptr %"R9"
  %"fmul.115" = fmul float %".2950", %".2951"
  %".2952" = bitcast ptr %"R57" to ptr
  store float %"fmul.115", ptr %".2952"
  ; FFMA R8, R57, R59, R18
  %".2955" = load float, ptr %"R57"
  %".2956" = load float, ptr %"R59"
  %".2957" = load float, ptr %"R18"
  %"fmul.116" = fmul float %".2955", %".2956"
  %"fadd.108" = fadd float %"fmul.116", %".2957"
  %".2958" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".2958"
  ; @P1 BRA `(.L_x_14)
  %".2961" = load i1, ptr %"P1"
  %".2962" = icmp ne i1 %".2961", 1
  br i1 %".2962", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2965" = load i32, ptr %"R23"
  %".2966" = load i1, ptr %"PT"
  %"cmp.24" = icmp sgt i32 %".2965", 4
  %".2967" = and i1 %"cmp.24", %".2966"
  store i1 %".2967", ptr %"P1"
  ; @!P1 BRA `(.L_x_15)
  %".2970" = load i1, ptr %"P1"
  %".2971" = icmp eq i1 %".2970", 1
  br i1 %".2971", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2976" = load i32, ptr %"R3"
  %".2977" = load i32, ptr %"R22"
  %"add.132" = add i32 %".2976", %".2977"
  %"add.133" = add i32 %"add.132", 0
  store i32 %"add.133", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2980" = load i32, ptr %"R22"
  %".2981" = load i32, ptr %"R13"
  %"zext.357" = zext i32 %".2980" to i64
  %"zext.358" = zext i32 %".2981" to i64
  %"mul.44" = mul i64 %"zext.357", %"zext.358"
  %".2982" = ptrtoint ptr %"Arg_1" to i64
  %"add.134" = add i64 %"mul.44", %".2982"
  %".2983" = and i64 %"add.134", 18446744069414584320
  %".2984" = lshr i64 %".2983", 32
  %"trunc32.82" = trunc i64 %".2984" to i32
  %"trunc32.83" = trunc i64 %"add.134" to i32
  store i32 %"trunc32.83", ptr %"R14"
  store i32 %"trunc32.82", ptr %"R15"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2988" = load i32, ptr %"R16"
  %".2989" = load i32, ptr %"R13"
  %"zext.359" = zext i32 %".2988" to i64
  %"zext.360" = zext i32 %".2989" to i64
  %"mul.45" = mul i64 %"zext.359", %"zext.360"
  %".2990" = ptrtoint ptr %"Arg_2" to i64
  %"add.135" = add i64 %"mul.45", %".2990"
  %".2991" = and i64 %"add.135", 18446744069414584320
  %".2992" = lshr i64 %".2991", 32
  %"trunc32.84" = trunc i64 %".2992" to i32
  %"trunc32.85" = trunc i64 %"add.135" to i32
  store i32 %"trunc32.85", ptr %"R16"
  store i32 %"trunc32.84", ptr %"R17"
  ; IADD3 R10, R22, 0x4, RZ
  %".2996" = load i32, ptr %"R22"
  %"add.136" = add i32 %".2996", 4
  %"add.137" = add i32 %"add.136", 0
  store i32 %"add.137", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2999" = load i32, ptr %"R14"
  %"zext.361" = zext i32 %".2999" to i64
  %".3000" = load i32, ptr %"R15"
  %"zext.362" = zext i32 %".3000" to i64
  %"shl.150" = shl i64 %"zext.362", 32
  %"or.137" = or i64 %"shl.150", %"zext.361"
  %".3001" = inttoptr i64 %"or.137" to ptr
  %".3002" = ptrtoint ptr %".3001" to i64
  %".3003" = add i64 %".3002", 0
  %"for_LDG.127" = inttoptr i64 %".3003" to ptr
  %".3004" = load float, ptr %"for_LDG.127"
  %".3005" = bitcast ptr %"R18" to ptr
  store float %".3004", ptr %".3005"
  ; IADD3 R12, R3, R10, RZ
  %".3008" = load i32, ptr %"R3"
  %".3009" = load i32, ptr %"R10"
  %"add.138" = add i32 %".3008", %".3009"
  %"add.139" = add i32 %"add.138", 0
  store i32 %"add.139", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".3012" = load i32, ptr %"R16"
  %"zext.363" = zext i32 %".3012" to i64
  %".3013" = load i32, ptr %"R17"
  %"zext.364" = zext i32 %".3013" to i64
  %"shl.151" = shl i64 %"zext.364", 32
  %"or.138" = or i64 %"shl.151", %"zext.363"
  %".3014" = inttoptr i64 %"or.138" to ptr
  %".3015" = ptrtoint ptr %".3014" to i64
  %".3016" = add i64 %".3015", 0
  %"for_LDG.128" = inttoptr i64 %".3016" to ptr
  %".3017" = load float, ptr %"for_LDG.128"
  %".3018" = bitcast ptr %"R19" to ptr
  store float %".3017", ptr %".3018"
  ; LDG.E.SYS R24, [R14+0x4]
  %".3021" = load i32, ptr %"R14"
  %"zext.365" = zext i32 %".3021" to i64
  %".3022" = load i32, ptr %"R15"
  %"zext.366" = zext i32 %".3022" to i64
  %"shl.152" = shl i64 %"zext.366", 32
  %"or.139" = or i64 %"shl.152", %"zext.365"
  %".3023" = inttoptr i64 %"or.139" to ptr
  %".3024" = ptrtoint ptr %".3023" to i64
  %".3025" = add i64 %".3024", 4
  %"for_LDG.129" = inttoptr i64 %".3025" to ptr
  %".3026" = load float, ptr %"for_LDG.129"
  %".3027" = bitcast ptr %"R24" to ptr
  store float %".3026", ptr %".3027"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".3030" = load i32, ptr %"R10"
  %".3031" = load i32, ptr %"R13"
  %"zext.367" = zext i32 %".3030" to i64
  %"zext.368" = zext i32 %".3031" to i64
  %"mul.46" = mul i64 %"zext.367", %"zext.368"
  %".3032" = ptrtoint ptr %"Arg_1" to i64
  %"add.140" = add i64 %"mul.46", %".3032"
  %".3033" = and i64 %"add.140", 18446744069414584320
  %".3034" = lshr i64 %".3033", 32
  %"trunc32.86" = trunc i64 %".3034" to i32
  %"trunc32.87" = trunc i64 %"add.140" to i32
  store i32 %"trunc32.87", ptr %"R10"
  store i32 %"trunc32.86", ptr %"R11"
  ; LDG.E.SYS R21, [R16+0x4]
  %".3038" = load i32, ptr %"R16"
  %"zext.369" = zext i32 %".3038" to i64
  %".3039" = load i32, ptr %"R17"
  %"zext.370" = zext i32 %".3039" to i64
  %"shl.153" = shl i64 %"zext.370", 32
  %"or.140" = or i64 %"shl.153", %"zext.369"
  %".3040" = inttoptr i64 %"or.140" to ptr
  %".3041" = ptrtoint ptr %".3040" to i64
  %".3042" = add i64 %".3041", 4
  %"for_LDG.130" = inttoptr i64 %".3042" to ptr
  %".3043" = load float, ptr %"for_LDG.130"
  %".3044" = bitcast ptr %"R21" to ptr
  store float %".3043", ptr %".3044"
  ; LDG.E.SYS R34, [R14+0x8]
  %".3047" = load i32, ptr %"R14"
  %"zext.371" = zext i32 %".3047" to i64
  %".3048" = load i32, ptr %"R15"
  %"zext.372" = zext i32 %".3048" to i64
  %"shl.154" = shl i64 %"zext.372", 32
  %"or.141" = or i64 %"shl.154", %"zext.371"
  %".3049" = inttoptr i64 %"or.141" to ptr
  %".3050" = ptrtoint ptr %".3049" to i64
  %".3051" = add i64 %".3050", 8
  %"for_LDG.131" = inttoptr i64 %".3051" to ptr
  %".3052" = load float, ptr %"for_LDG.131"
  %".3053" = bitcast ptr %"R34" to ptr
  store float %".3052", ptr %".3053"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".3056" = load i32, ptr %"R12"
  %".3057" = load i32, ptr %"R13"
  %"zext.373" = zext i32 %".3056" to i64
  %"zext.374" = zext i32 %".3057" to i64
  %"mul.47" = mul i64 %"zext.373", %"zext.374"
  %".3058" = ptrtoint ptr %"Arg_2" to i64
  %"add.141" = add i64 %"mul.47", %".3058"
  %".3059" = and i64 %"add.141", 18446744069414584320
  %".3060" = lshr i64 %".3059", 32
  %"trunc32.88" = trunc i64 %".3060" to i32
  %"trunc32.89" = trunc i64 %"add.141" to i32
  store i32 %"trunc32.89", ptr %"R12"
  store i32 %"trunc32.88", ptr %"R13"
  ; LDG.E.SYS R25, [R16+0x8]
  %".3064" = load i32, ptr %"R16"
  %"zext.375" = zext i32 %".3064" to i64
  %".3065" = load i32, ptr %"R17"
  %"zext.376" = zext i32 %".3065" to i64
  %"shl.155" = shl i64 %"zext.376", 32
  %"or.142" = or i64 %"shl.155", %"zext.375"
  %".3066" = inttoptr i64 %"or.142" to ptr
  %".3067" = ptrtoint ptr %".3066" to i64
  %".3068" = add i64 %".3067", 8
  %"for_LDG.132" = inttoptr i64 %".3068" to ptr
  %".3069" = load float, ptr %"for_LDG.132"
  %".3070" = bitcast ptr %"R25" to ptr
  store float %".3069", ptr %".3070"
  ; LDG.E.SYS R36, [R14+0xc]
  %".3073" = load i32, ptr %"R14"
  %"zext.377" = zext i32 %".3073" to i64
  %".3074" = load i32, ptr %"R15"
  %"zext.378" = zext i32 %".3074" to i64
  %"shl.156" = shl i64 %"zext.378", 32
  %"or.143" = or i64 %"shl.156", %"zext.377"
  %".3075" = inttoptr i64 %"or.143" to ptr
  %".3076" = ptrtoint ptr %".3075" to i64
  %".3077" = add i64 %".3076", 12
  %"for_LDG.133" = inttoptr i64 %".3077" to ptr
  %".3078" = load float, ptr %"for_LDG.133"
  %".3079" = bitcast ptr %"R36" to ptr
  store float %".3078", ptr %".3079"
  ; LDG.E.SYS R35, [R16+0xc]
  %".3082" = load i32, ptr %"R16"
  %"zext.379" = zext i32 %".3082" to i64
  %".3083" = load i32, ptr %"R17"
  %"zext.380" = zext i32 %".3083" to i64
  %"shl.157" = shl i64 %"zext.380", 32
  %"or.144" = or i64 %"shl.157", %"zext.379"
  %".3084" = inttoptr i64 %"or.144" to ptr
  %".3085" = ptrtoint ptr %".3084" to i64
  %".3086" = add i64 %".3085", 12
  %"for_LDG.134" = inttoptr i64 %".3086" to ptr
  %".3087" = load float, ptr %"for_LDG.134"
  %".3088" = bitcast ptr %"R35" to ptr
  store float %".3087", ptr %".3088"
  ; LDG.E.SYS R38, [R10]
  %".3091" = load i32, ptr %"R10"
  %"zext.381" = zext i32 %".3091" to i64
  %".3092" = load i32, ptr %"R11"
  %"zext.382" = zext i32 %".3092" to i64
  %"shl.158" = shl i64 %"zext.382", 32
  %"or.145" = or i64 %"shl.158", %"zext.381"
  %".3093" = inttoptr i64 %"or.145" to ptr
  %".3094" = ptrtoint ptr %".3093" to i64
  %".3095" = add i64 %".3094", 0
  %"for_LDG.135" = inttoptr i64 %".3095" to ptr
  %".3096" = load float, ptr %"for_LDG.135"
  %".3097" = bitcast ptr %"R38" to ptr
  store float %".3096", ptr %".3097"
  ; LDG.E.SYS R37, [R12]
  %".3100" = load i32, ptr %"R12"
  %"zext.383" = zext i32 %".3100" to i64
  %".3101" = load i32, ptr %"R13"
  %"zext.384" = zext i32 %".3101" to i64
  %"shl.159" = shl i64 %"zext.384", 32
  %"or.146" = or i64 %"shl.159", %"zext.383"
  %".3102" = inttoptr i64 %"or.146" to ptr
  %".3103" = ptrtoint ptr %".3102" to i64
  %".3104" = add i64 %".3103", 0
  %"for_LDG.136" = inttoptr i64 %".3104" to ptr
  %".3105" = load float, ptr %"for_LDG.136"
  %".3106" = bitcast ptr %"R37" to ptr
  store float %".3105", ptr %".3106"
  ; LDG.E.SYS R40, [R10+0x4]
  %".3109" = load i32, ptr %"R10"
  %"zext.385" = zext i32 %".3109" to i64
  %".3110" = load i32, ptr %"R11"
  %"zext.386" = zext i32 %".3110" to i64
  %"shl.160" = shl i64 %"zext.386", 32
  %"or.147" = or i64 %"shl.160", %"zext.385"
  %".3111" = inttoptr i64 %"or.147" to ptr
  %".3112" = ptrtoint ptr %".3111" to i64
  %".3113" = add i64 %".3112", 4
  %"for_LDG.137" = inttoptr i64 %".3113" to ptr
  %".3114" = load float, ptr %"for_LDG.137"
  %".3115" = bitcast ptr %"R40" to ptr
  store float %".3114", ptr %".3115"
  ; LDG.E.SYS R39, [R12+0x4]
  %".3118" = load i32, ptr %"R12"
  %"zext.387" = zext i32 %".3118" to i64
  %".3119" = load i32, ptr %"R13"
  %"zext.388" = zext i32 %".3119" to i64
  %"shl.161" = shl i64 %"zext.388", 32
  %"or.148" = or i64 %"shl.161", %"zext.387"
  %".3120" = inttoptr i64 %"or.148" to ptr
  %".3121" = ptrtoint ptr %".3120" to i64
  %".3122" = add i64 %".3121", 4
  %"for_LDG.138" = inttoptr i64 %".3122" to ptr
  %".3123" = load float, ptr %"for_LDG.138"
  %".3124" = bitcast ptr %"R39" to ptr
  store float %".3123", ptr %".3124"
  ; LDG.E.SYS R42, [R10+0x8]
  %".3127" = load i32, ptr %"R10"
  %"zext.389" = zext i32 %".3127" to i64
  %".3128" = load i32, ptr %"R11"
  %"zext.390" = zext i32 %".3128" to i64
  %"shl.162" = shl i64 %"zext.390", 32
  %"or.149" = or i64 %"shl.162", %"zext.389"
  %".3129" = inttoptr i64 %"or.149" to ptr
  %".3130" = ptrtoint ptr %".3129" to i64
  %".3131" = add i64 %".3130", 8
  %"for_LDG.139" = inttoptr i64 %".3131" to ptr
  %".3132" = load float, ptr %"for_LDG.139"
  %".3133" = bitcast ptr %"R42" to ptr
  store float %".3132", ptr %".3133"
  ; LDG.E.SYS R44, [R10+0xc]
  %".3136" = load i32, ptr %"R10"
  %"zext.391" = zext i32 %".3136" to i64
  %".3137" = load i32, ptr %"R11"
  %"zext.392" = zext i32 %".3137" to i64
  %"shl.163" = shl i64 %"zext.392", 32
  %"or.150" = or i64 %"shl.163", %"zext.391"
  %".3138" = inttoptr i64 %"or.150" to ptr
  %".3139" = ptrtoint ptr %".3138" to i64
  %".3140" = add i64 %".3139", 12
  %"for_LDG.140" = inttoptr i64 %".3140" to ptr
  %".3141" = load float, ptr %"for_LDG.140"
  %".3142" = bitcast ptr %"R44" to ptr
  store float %".3141", ptr %".3142"
  ; LDG.E.SYS R41, [R12+0x8]
  %".3145" = load i32, ptr %"R12"
  %"zext.393" = zext i32 %".3145" to i64
  %".3146" = load i32, ptr %"R13"
  %"zext.394" = zext i32 %".3146" to i64
  %"shl.164" = shl i64 %"zext.394", 32
  %"or.151" = or i64 %"shl.164", %"zext.393"
  %".3147" = inttoptr i64 %"or.151" to ptr
  %".3148" = ptrtoint ptr %".3147" to i64
  %".3149" = add i64 %".3148", 8
  %"for_LDG.141" = inttoptr i64 %".3149" to ptr
  %".3150" = load float, ptr %"for_LDG.141"
  %".3151" = bitcast ptr %"R41" to ptr
  store float %".3150", ptr %".3151"
  ; LDG.E.SYS R43, [R12+0xc]
  %".3154" = load i32, ptr %"R12"
  %"zext.395" = zext i32 %".3154" to i64
  %".3155" = load i32, ptr %"R13"
  %"zext.396" = zext i32 %".3155" to i64
  %"shl.165" = shl i64 %"zext.396", 32
  %"or.152" = or i64 %"shl.165", %"zext.395"
  %".3156" = inttoptr i64 %"or.152" to ptr
  %".3157" = ptrtoint ptr %".3156" to i64
  %".3158" = add i64 %".3157", 12
  %"for_LDG.142" = inttoptr i64 %".3158" to ptr
  %".3159" = load float, ptr %"for_LDG.142"
  %".3160" = bitcast ptr %"R43" to ptr
  store float %".3159", ptr %".3160"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".3163" = xor i1 1, 1
  %".3164" = and i1 %".3163", 1
  %".3165" = and i1 %".3164", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".3167" = load i32, ptr %"R23"
  %"add.142" = add i32 %".3167", -8
  %"add.143" = add i32 %"add.142", 0
  store i32 %"add.143", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".3170" = load i32, ptr %"R22"
  %"add.144" = add i32 %".3170", 8
  %"add.145" = add i32 %"add.144", 0
  store i32 %"add.145", ptr %"R22"
  ; FMUL R15, R18, R9
  %".3173" = load float, ptr %"R18"
  %".3174" = load float, ptr %"R9"
  %"fmul.117" = fmul float %".3173", %".3174"
  %".3175" = bitcast ptr %"R15" to ptr
  store float %"fmul.117", ptr %".3175"
  ; FFMA R15, R15, R19, R8
  %".3178" = load float, ptr %"R15"
  %".3179" = load float, ptr %"R19"
  %".3180" = load float, ptr %"R8"
  %"fmul.118" = fmul float %".3178", %".3179"
  %"fadd.109" = fadd float %"fmul.118", %".3180"
  %".3181" = bitcast ptr %"R15" to ptr
  store float %"fadd.109", ptr %".3181"
  ; FMUL R24, R24, R9
  %".3184" = load float, ptr %"R24"
  %".3185" = load float, ptr %"R9"
  %"fmul.119" = fmul float %".3184", %".3185"
  %".3186" = bitcast ptr %"R24" to ptr
  store float %"fmul.119", ptr %".3186"
  ; FFMA R15, R24, R21, R15
  %".3189" = load float, ptr %"R24"
  %".3190" = load float, ptr %"R21"
  %".3191" = load float, ptr %"R15"
  %"fmul.120" = fmul float %".3189", %".3190"
  %"fadd.110" = fadd float %"fmul.120", %".3191"
  %".3192" = bitcast ptr %"R15" to ptr
  store float %"fadd.110", ptr %".3192"
  ; FMUL R34, R34, R9
  %".3195" = load float, ptr %"R34"
  %".3196" = load float, ptr %"R9"
  %"fmul.121" = fmul float %".3195", %".3196"
  %".3197" = bitcast ptr %"R34" to ptr
  store float %"fmul.121", ptr %".3197"
  ; FFMA R15, R34, R25, R15
  %".3200" = load float, ptr %"R34"
  %".3201" = load float, ptr %"R25"
  %".3202" = load float, ptr %"R15"
  %"fmul.122" = fmul float %".3200", %".3201"
  %"fadd.111" = fadd float %"fmul.122", %".3202"
  %".3203" = bitcast ptr %"R15" to ptr
  store float %"fadd.111", ptr %".3203"
  ; FMUL R36, R36, R9
  %".3206" = load float, ptr %"R36"
  %".3207" = load float, ptr %"R9"
  %"fmul.123" = fmul float %".3206", %".3207"
  %".3208" = bitcast ptr %"R36" to ptr
  store float %"fmul.123", ptr %".3208"
  ; FFMA R15, R36, R35, R15
  %".3211" = load float, ptr %"R36"
  %".3212" = load float, ptr %"R35"
  %".3213" = load float, ptr %"R15"
  %"fmul.124" = fmul float %".3211", %".3212"
  %"fadd.112" = fadd float %"fmul.124", %".3213"
  %".3214" = bitcast ptr %"R15" to ptr
  store float %"fadd.112", ptr %".3214"
  ; FMUL R38, R38, R9
  %".3217" = load float, ptr %"R38"
  %".3218" = load float, ptr %"R9"
  %"fmul.125" = fmul float %".3217", %".3218"
  %".3219" = bitcast ptr %"R38" to ptr
  store float %"fmul.125", ptr %".3219"
  ; FFMA R15, R38, R37, R15
  %".3222" = load float, ptr %"R38"
  %".3223" = load float, ptr %"R37"
  %".3224" = load float, ptr %"R15"
  %"fmul.126" = fmul float %".3222", %".3223"
  %"fadd.113" = fadd float %"fmul.126", %".3224"
  %".3225" = bitcast ptr %"R15" to ptr
  store float %"fadd.113", ptr %".3225"
  ; FMUL R40, R40, R9
  %".3228" = load float, ptr %"R40"
  %".3229" = load float, ptr %"R9"
  %"fmul.127" = fmul float %".3228", %".3229"
  %".3230" = bitcast ptr %"R40" to ptr
  store float %"fmul.127", ptr %".3230"
  ; FFMA R15, R40, R39, R15
  %".3233" = load float, ptr %"R40"
  %".3234" = load float, ptr %"R39"
  %".3235" = load float, ptr %"R15"
  %"fmul.128" = fmul float %".3233", %".3234"
  %"fadd.114" = fadd float %"fmul.128", %".3235"
  %".3236" = bitcast ptr %"R15" to ptr
  store float %"fadd.114", ptr %".3236"
  ; FMUL R42, R42, R9.reuse
  %".3239" = load float, ptr %"R42"
  %".3240" = load float, ptr %"R9"
  %"fmul.129" = fmul float %".3239", %".3240"
  %".3241" = bitcast ptr %"R42" to ptr
  store float %"fmul.129", ptr %".3241"
  ; FMUL R44, R44, R9
  %".3244" = load float, ptr %"R44"
  %".3245" = load float, ptr %"R9"
  %"fmul.130" = fmul float %".3244", %".3245"
  %".3246" = bitcast ptr %"R44" to ptr
  store float %"fmul.130", ptr %".3246"
  ; FFMA R15, R42, R41, R15
  %".3249" = load float, ptr %"R42"
  %".3250" = load float, ptr %"R41"
  %".3251" = load float, ptr %"R15"
  %"fmul.131" = fmul float %".3249", %".3250"
  %"fadd.115" = fadd float %"fmul.131", %".3251"
  %".3252" = bitcast ptr %"R15" to ptr
  store float %"fadd.115", ptr %".3252"
  ; FFMA R8, R44, R43, R15
  %".3255" = load float, ptr %"R44"
  %".3256" = load float, ptr %"R43"
  %".3257" = load float, ptr %"R15"
  %"fmul.132" = fmul float %".3255", %".3256"
  %"fadd.116" = fadd float %"fmul.132", %".3257"
  %".3258" = bitcast ptr %"R8" to ptr
  store float %"fadd.116", ptr %".3258"
  br label %".L_x_15"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".3262" = load i32, ptr %"R23"
  %".3263" = load i1, ptr %"PT"
  %"cmp.25" = icmp ne i32 %".3262", 0
  %".3264" = or i1 %"cmp.25", %".3263"
  store i1 %".3264", ptr %"P0"
  ; @!P0 BRA `(.L_x_11)
  %".3267" = load i1, ptr %"P0"
  %".3268" = icmp eq i1 %".3267", 1
  br i1 %".3268", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".3273" = load i32, ptr %"R3"
  %".3274" = load i32, ptr %"R22"
  %"add.146" = add i32 %".3273", %".3274"
  %"add.147" = add i32 %"add.146", 0
  store i32 %"add.147", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".3277" = load i32, ptr %"R22"
  %".3278" = load i32, ptr %"R13"
  %"zext.397" = zext i32 %".3277" to i64
  %"zext.398" = zext i32 %".3278" to i64
  %"mul.48" = mul i64 %"zext.397", %"zext.398"
  %".3279" = ptrtoint ptr %"Arg_1" to i64
  %"add.148" = add i64 %"mul.48", %".3279"
  %".3280" = and i64 %"add.148", 18446744069414584320
  %".3281" = lshr i64 %".3280", 32
  %"trunc32.90" = trunc i64 %".3281" to i32
  %"trunc32.91" = trunc i64 %"add.148" to i32
  store i32 %"trunc32.91", ptr %"R10"
  store i32 %"trunc32.90", ptr %"R11"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".3285" = load i32, ptr %"R12"
  %".3286" = load i32, ptr %"R13"
  %"zext.399" = zext i32 %".3285" to i64
  %"zext.400" = zext i32 %".3286" to i64
  %"mul.49" = mul i64 %"zext.399", %"zext.400"
  %".3287" = ptrtoint ptr %"Arg_2" to i64
  %"add.149" = add i64 %"mul.49", %".3287"
  %".3288" = and i64 %"add.149", 18446744069414584320
  %".3289" = lshr i64 %".3288", 32
  %"trunc32.92" = trunc i64 %".3289" to i32
  %"trunc32.93" = trunc i64 %"add.149" to i32
  store i32 %"trunc32.93", ptr %"R12"
  store i32 %"trunc32.92", ptr %"R13"
  ; LDG.E.SYS R14, [R10]
  %".3293" = load i32, ptr %"R10"
  %"zext.401" = zext i32 %".3293" to i64
  %".3294" = load i32, ptr %"R11"
  %"zext.402" = zext i32 %".3294" to i64
  %"shl.166" = shl i64 %"zext.402", 32
  %"or.153" = or i64 %"shl.166", %"zext.401"
  %".3295" = inttoptr i64 %"or.153" to ptr
  %".3296" = ptrtoint ptr %".3295" to i64
  %".3297" = add i64 %".3296", 0
  %"for_LDG.143" = inttoptr i64 %".3297" to ptr
  %".3298" = load float, ptr %"for_LDG.143"
  %".3299" = bitcast ptr %"R14" to ptr
  store float %".3298", ptr %".3299"
  ; LDG.E.SYS R16, [R12]
  %".3302" = load i32, ptr %"R12"
  %"zext.403" = zext i32 %".3302" to i64
  %".3303" = load i32, ptr %"R13"
  %"zext.404" = zext i32 %".3303" to i64
  %"shl.167" = shl i64 %"zext.404", 32
  %"or.154" = or i64 %"shl.167", %"zext.403"
  %".3304" = inttoptr i64 %"or.154" to ptr
  %".3305" = ptrtoint ptr %".3304" to i64
  %".3306" = add i64 %".3305", 0
  %"for_LDG.144" = inttoptr i64 %".3306" to ptr
  %".3307" = load float, ptr %"for_LDG.144"
  %".3308" = bitcast ptr %"R16" to ptr
  store float %".3307", ptr %".3308"
  ; LDG.E.SYS R18, [R10+0x4]
  %".3311" = load i32, ptr %"R10"
  %"zext.405" = zext i32 %".3311" to i64
  %".3312" = load i32, ptr %"R11"
  %"zext.406" = zext i32 %".3312" to i64
  %"shl.168" = shl i64 %"zext.406", 32
  %"or.155" = or i64 %"shl.168", %"zext.405"
  %".3313" = inttoptr i64 %"or.155" to ptr
  %".3314" = ptrtoint ptr %".3313" to i64
  %".3315" = add i64 %".3314", 4
  %"for_LDG.145" = inttoptr i64 %".3315" to ptr
  %".3316" = load float, ptr %"for_LDG.145"
  %".3317" = bitcast ptr %"R18" to ptr
  store float %".3316", ptr %".3317"
  ; LDG.E.SYS R17, [R12+0x4]
  %".3320" = load i32, ptr %"R12"
  %"zext.407" = zext i32 %".3320" to i64
  %".3321" = load i32, ptr %"R13"
  %"zext.408" = zext i32 %".3321" to i64
  %"shl.169" = shl i64 %"zext.408", 32
  %"or.156" = or i64 %"shl.169", %"zext.407"
  %".3322" = inttoptr i64 %"or.156" to ptr
  %".3323" = ptrtoint ptr %".3322" to i64
  %".3324" = add i64 %".3323", 4
  %"for_LDG.146" = inttoptr i64 %".3324" to ptr
  %".3325" = load float, ptr %"for_LDG.146"
  %".3326" = bitcast ptr %"R17" to ptr
  store float %".3325", ptr %".3326"
  ; LDG.E.SYS R24, [R10+0x8]
  %".3329" = load i32, ptr %"R10"
  %"zext.409" = zext i32 %".3329" to i64
  %".3330" = load i32, ptr %"R11"
  %"zext.410" = zext i32 %".3330" to i64
  %"shl.170" = shl i64 %"zext.410", 32
  %"or.157" = or i64 %"shl.170", %"zext.409"
  %".3331" = inttoptr i64 %"or.157" to ptr
  %".3332" = ptrtoint ptr %".3331" to i64
  %".3333" = add i64 %".3332", 8
  %"for_LDG.147" = inttoptr i64 %".3333" to ptr
  %".3334" = load float, ptr %"for_LDG.147"
  %".3335" = bitcast ptr %"R24" to ptr
  store float %".3334", ptr %".3335"
  ; LDG.E.SYS R19, [R12+0x8]
  %".3338" = load i32, ptr %"R12"
  %"zext.411" = zext i32 %".3338" to i64
  %".3339" = load i32, ptr %"R13"
  %"zext.412" = zext i32 %".3339" to i64
  %"shl.171" = shl i64 %"zext.412", 32
  %"or.158" = or i64 %"shl.171", %"zext.411"
  %".3340" = inttoptr i64 %"or.158" to ptr
  %".3341" = ptrtoint ptr %".3340" to i64
  %".3342" = add i64 %".3341", 8
  %"for_LDG.148" = inttoptr i64 %".3342" to ptr
  %".3343" = load float, ptr %"for_LDG.148"
  %".3344" = bitcast ptr %"R19" to ptr
  store float %".3343", ptr %".3344"
  ; LDG.E.SYS R34, [R10+0xc]
  %".3347" = load i32, ptr %"R10"
  %"zext.413" = zext i32 %".3347" to i64
  %".3348" = load i32, ptr %"R11"
  %"zext.414" = zext i32 %".3348" to i64
  %"shl.172" = shl i64 %"zext.414", 32
  %"or.159" = or i64 %"shl.172", %"zext.413"
  %".3349" = inttoptr i64 %"or.159" to ptr
  %".3350" = ptrtoint ptr %".3349" to i64
  %".3351" = add i64 %".3350", 12
  %"for_LDG.149" = inttoptr i64 %".3351" to ptr
  %".3352" = load float, ptr %"for_LDG.149"
  %".3353" = bitcast ptr %"R34" to ptr
  store float %".3352", ptr %".3353"
  ; LDG.E.SYS R21, [R12+0xc]
  %".3356" = load i32, ptr %"R12"
  %"zext.415" = zext i32 %".3356" to i64
  %".3357" = load i32, ptr %"R13"
  %"zext.416" = zext i32 %".3357" to i64
  %"shl.173" = shl i64 %"zext.416", 32
  %"or.160" = or i64 %"shl.173", %"zext.415"
  %".3358" = inttoptr i64 %"or.160" to ptr
  %".3359" = ptrtoint ptr %".3358" to i64
  %".3360" = add i64 %".3359", 12
  %"for_LDG.150" = inttoptr i64 %".3360" to ptr
  %".3361" = load float, ptr %"for_LDG.150"
  %".3362" = bitcast ptr %"R21" to ptr
  store float %".3361", ptr %".3362"
  ; IADD3 R23, R23, -0x4, RZ
  %".3365" = load i32, ptr %"R23"
  %"add.150" = add i32 %".3365", -4
  %"add.151" = add i32 %"add.150", 0
  store i32 %"add.151", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".3368" = load i32, ptr %"R22"
  %"add.152" = add i32 %".3368", 4
  %"add.153" = add i32 %"add.152", 0
  store i32 %"add.153", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".3371" = load i32, ptr %"R23"
  %".3372" = load i1, ptr %"PT"
  %"cmp.26" = icmp ne i32 %".3371", 0
  %".3373" = and i1 %"cmp.26", %".3372"
  store i1 %".3373", ptr %"P0"
  ; FMUL R15, R14, R9
  %".3376" = load float, ptr %"R14"
  %".3377" = load float, ptr %"R9"
  %"fmul.133" = fmul float %".3376", %".3377"
  %".3378" = bitcast ptr %"R15" to ptr
  store float %"fmul.133", ptr %".3378"
  ; FFMA R15, R15, R16, R8
  %".3381" = load float, ptr %"R15"
  %".3382" = load float, ptr %"R16"
  %".3383" = load float, ptr %"R8"
  %"fmul.134" = fmul float %".3381", %".3382"
  %"fadd.117" = fadd float %"fmul.134", %".3383"
  %".3384" = bitcast ptr %"R15" to ptr
  store float %"fadd.117", ptr %".3384"
  ; FMUL R18, R18, R9
  %".3387" = load float, ptr %"R18"
  %".3388" = load float, ptr %"R9"
  %"fmul.135" = fmul float %".3387", %".3388"
  %".3389" = bitcast ptr %"R18" to ptr
  store float %"fmul.135", ptr %".3389"
  ; FFMA R15, R18, R17, R15
  %".3392" = load float, ptr %"R18"
  %".3393" = load float, ptr %"R17"
  %".3394" = load float, ptr %"R15"
  %"fmul.136" = fmul float %".3392", %".3393"
  %"fadd.118" = fadd float %"fmul.136", %".3394"
  %".3395" = bitcast ptr %"R15" to ptr
  store float %"fadd.118", ptr %".3395"
  ; FMUL R24, R24, R9
  %".3398" = load float, ptr %"R24"
  %".3399" = load float, ptr %"R9"
  %"fmul.137" = fmul float %".3398", %".3399"
  %".3400" = bitcast ptr %"R24" to ptr
  store float %"fmul.137", ptr %".3400"
  ; FFMA R15, R24, R19, R15
  %".3403" = load float, ptr %"R24"
  %".3404" = load float, ptr %"R19"
  %".3405" = load float, ptr %"R15"
  %"fmul.138" = fmul float %".3403", %".3404"
  %"fadd.119" = fadd float %"fmul.138", %".3405"
  %".3406" = bitcast ptr %"R15" to ptr
  store float %"fadd.119", ptr %".3406"
  ; FMUL R34, R34, R9
  %".3409" = load float, ptr %"R34"
  %".3410" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".3409", %".3410"
  %".3411" = bitcast ptr %"R34" to ptr
  store float %"fmul.139", ptr %".3411"
  ; FFMA R8, R34, R21, R15
  %".3414" = load float, ptr %"R34"
  %".3415" = load float, ptr %"R21"
  %".3416" = load float, ptr %"R15"
  %"fmul.140" = fmul float %".3414", %".3415"
  %"fadd.120" = fadd float %"fmul.140", %".3416"
  %".3417" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3417"
  ; @P0 BRA `(.L_x_12)
  %".3420" = load i1, ptr %"P0"
  %".3421" = icmp ne i1 %".3420", 1
  br i1 %".3421", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".3424" = load i32, ptr %"R4"
  %".3425" = load i1, ptr %"PT"
  %"cmp.27" = icmp ne i32 %".3424", 0
  %".3426" = and i1 %"cmp.27", %".3425"
  store i1 %".3426", ptr %"P0"
  ; @!P0 BRA `(.L_x_10)
  %".3429" = load i1, ptr %"P0"
  %".3430" = icmp eq i1 %".3429", 1
  br i1 %".3430", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".3435" = load i32, ptr %"R3"
  %".3436" = load i32, ptr %"R22"
  %"add.154" = add i32 %".3435", %".3436"
  %"add.155" = add i32 %"add.154", 0
  store i32 %"add.155", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".3439" = load i32, ptr %"R22"
  %".3440" = load i32, ptr %"R11"
  %"zext.417" = zext i32 %".3439" to i64
  %"zext.418" = zext i32 %".3440" to i64
  %"mul.50" = mul i64 %"zext.417", %"zext.418"
  %".3441" = ptrtoint ptr %"Arg_1" to i64
  %"add.156" = add i64 %"mul.50", %".3441"
  %".3442" = and i64 %"add.156", 18446744069414584320
  %".3443" = lshr i64 %".3442", 32
  %"trunc32.94" = trunc i64 %".3443" to i32
  %"trunc32.95" = trunc i64 %"add.156" to i32
  store i32 %"trunc32.95", ptr %"R22"
  store i32 %"trunc32.94", ptr %"R23"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3447" = load i32, ptr %"R10"
  %".3448" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".3447" to i64
  %"zext.420" = zext i32 %".3448" to i64
  %"mul.51" = mul i64 %"zext.419", %"zext.420"
  %".3449" = ptrtoint ptr %"Arg_2" to i64
  %"add.157" = add i64 %"mul.51", %".3449"
  %".3450" = and i64 %"add.157", 18446744069414584320
  %".3451" = lshr i64 %".3450", 32
  %"trunc32.96" = trunc i64 %".3451" to i32
  %"trunc32.97" = trunc i64 %"add.157" to i32
  store i32 %"trunc32.97", ptr %"R10"
  store i32 %"trunc32.96", ptr %"R11"
  ; LDG.E.SYS R12, [R22]
  %".3455" = load i32, ptr %"R22"
  %"zext.421" = zext i32 %".3455" to i64
  %".3456" = load i32, ptr %"R23"
  %"zext.422" = zext i32 %".3456" to i64
  %"shl.174" = shl i64 %"zext.422", 32
  %"or.161" = or i64 %"shl.174", %"zext.421"
  %".3457" = inttoptr i64 %"or.161" to ptr
  %".3458" = ptrtoint ptr %".3457" to i64
  %".3459" = add i64 %".3458", 0
  %"for_LDG.151" = inttoptr i64 %".3459" to ptr
  %".3460" = load float, ptr %"for_LDG.151"
  %".3461" = bitcast ptr %"R12" to ptr
  store float %".3460", ptr %".3461"
  ; LDG.E.SYS R14, [R10]
  %".3464" = load i32, ptr %"R10"
  %"zext.423" = zext i32 %".3464" to i64
  %".3465" = load i32, ptr %"R11"
  %"zext.424" = zext i32 %".3465" to i64
  %"shl.175" = shl i64 %"zext.424", 32
  %"or.162" = or i64 %"shl.175", %"zext.423"
  %".3466" = inttoptr i64 %"or.162" to ptr
  %".3467" = ptrtoint ptr %".3466" to i64
  %".3468" = add i64 %".3467", 0
  %"for_LDG.152" = inttoptr i64 %".3468" to ptr
  %".3469" = load float, ptr %"for_LDG.152"
  %".3470" = bitcast ptr %"R14" to ptr
  store float %".3469", ptr %".3470"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".3473" = load i32, ptr %"R4"
  %".3474" = load i1, ptr %"PT"
  %"cmp.28" = icmp ne i32 %".3473", 1
  %".3475" = and i1 %"cmp.28", %".3474"
  store i1 %".3475", ptr %"P0"
  ; FMUL R13, R12, R9
  %".3478" = load float, ptr %"R12"
  %".3479" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".3478", %".3479"
  %".3480" = bitcast ptr %"R13" to ptr
  store float %"fmul.141", ptr %".3480"
  ; FFMA R8, R13, R14, R8
  %".3483" = load float, ptr %"R13"
  %".3484" = load float, ptr %"R14"
  %".3485" = load float, ptr %"R8"
  %"fmul.142" = fmul float %".3483", %".3484"
  %"fadd.121" = fadd float %"fmul.142", %".3485"
  %".3486" = bitcast ptr %"R8" to ptr
  store float %"fadd.121", ptr %".3486"
  ; @!P0 BRA `(.L_x_10)
  %".3489" = load i1, ptr %"P0"
  %".3490" = icmp eq i1 %".3489", 1
  br i1 %".3490", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".3493" = load i32, ptr %"R4"
  %".3494" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3493", 2
  %".3495" = and i1 %"cmp.29", %".3494"
  store i1 %".3495", ptr %"P0"
  ; LDG.E.SYS R12, [R22+0x4]
  %".3498" = load i32, ptr %"R22"
  %"zext.425" = zext i32 %".3498" to i64
  %".3499" = load i32, ptr %"R23"
  %"zext.426" = zext i32 %".3499" to i64
  %"shl.176" = shl i64 %"zext.426", 32
  %"or.163" = or i64 %"shl.176", %"zext.425"
  %".3500" = inttoptr i64 %"or.163" to ptr
  %".3501" = ptrtoint ptr %".3500" to i64
  %".3502" = add i64 %".3501", 4
  %"for_LDG.153" = inttoptr i64 %".3502" to ptr
  %".3503" = load float, ptr %"for_LDG.153"
  %".3504" = bitcast ptr %"R12" to ptr
  store float %".3503", ptr %".3504"
  ; LDG.E.SYS R14, [R10+0x4]
  %".3507" = load i32, ptr %"R10"
  %"zext.427" = zext i32 %".3507" to i64
  %".3508" = load i32, ptr %"R11"
  %"zext.428" = zext i32 %".3508" to i64
  %"shl.177" = shl i64 %"zext.428", 32
  %"or.164" = or i64 %"shl.177", %"zext.427"
  %".3509" = inttoptr i64 %"or.164" to ptr
  %".3510" = ptrtoint ptr %".3509" to i64
  %".3511" = add i64 %".3510", 4
  %"for_LDG.154" = inttoptr i64 %".3511" to ptr
  %".3512" = load float, ptr %"for_LDG.154"
  %".3513" = bitcast ptr %"R14" to ptr
  store float %".3512", ptr %".3513"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".3516" = load i1, ptr %"P0"
  %".3517" = icmp ne i1 %".3516", 1
  br i1 %".3517", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".3520" = load i32, ptr %"R22"
  %"zext.429" = zext i32 %".3520" to i64
  %".3521" = load i32, ptr %"R23"
  %"zext.430" = zext i32 %".3521" to i64
  %"shl.178" = shl i64 %"zext.430", 32
  %"or.165" = or i64 %"shl.178", %"zext.429"
  %".3522" = inttoptr i64 %"or.165" to ptr
  %".3523" = ptrtoint ptr %".3522" to i64
  %".3524" = add i64 %".3523", 8
  %"for_LDG.155" = inttoptr i64 %".3524" to ptr
  %".3525" = load float, ptr %"for_LDG.155"
  %".3526" = bitcast ptr %"R16" to ptr
  store float %".3525", ptr %".3526"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".3531" = load i1, ptr %"P0"
  %".3532" = icmp ne i1 %".3531", 1
  br i1 %".3532", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".3535" = load i32, ptr %"R10"
  %"zext.431" = zext i32 %".3535" to i64
  %".3536" = load i32, ptr %"R11"
  %"zext.432" = zext i32 %".3536" to i64
  %"shl.179" = shl i64 %"zext.432", 32
  %"or.166" = or i64 %"shl.179", %"zext.431"
  %".3537" = inttoptr i64 %"or.166" to ptr
  %".3538" = ptrtoint ptr %".3537" to i64
  %".3539" = add i64 %".3538", 8
  %"for_LDG.156" = inttoptr i64 %".3539" to ptr
  %".3540" = load float, ptr %"for_LDG.156"
  %".3541" = bitcast ptr %"R15" to ptr
  store float %".3540", ptr %".3541"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".3546" = load float, ptr %"R12"
  %".3547" = load float, ptr %"R9"
  %"fmul.143" = fmul float %".3546", %".3547"
  %".3548" = bitcast ptr %"R13" to ptr
  store float %"fmul.143", ptr %".3548"
  ; FFMA R8, R13, R14, R8
  %".3551" = load float, ptr %"R13"
  %".3552" = load float, ptr %"R14"
  %".3553" = load float, ptr %"R8"
  %"fmul.144" = fmul float %".3551", %".3552"
  %"fadd.122" = fadd float %"fmul.144", %".3553"
  %".3554" = bitcast ptr %"R8" to ptr
  store float %"fadd.122", ptr %".3554"
  ; @P0 FMUL R9, R16, R9
  %".3557" = load i1, ptr %"P0"
  %".3558" = icmp ne i1 %".3557", 1
  br i1 %".3558", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".3561" = load float, ptr %"R16"
  %".3562" = load float, ptr %"R9"
  %"fmul.145" = fmul float %".3561", %".3562"
  %".3563" = bitcast ptr %"R9" to ptr
  store float %"fmul.145", ptr %".3563"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".3568" = load i1, ptr %"P0"
  %".3569" = icmp ne i1 %".3568", 1
  br i1 %".3569", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".3572" = load float, ptr %"R9"
  %".3573" = load float, ptr %"R15"
  %".3574" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".3572", %".3573"
  %"fadd.123" = fadd float %"fmul.146", %".3574"
  %".3575" = bitcast ptr %"R8" to ptr
  store float %"fadd.123", ptr %".3575"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".3580" = load i32, ptr %"R30"
  %"zext.433" = zext i32 %".3580" to i64
  %".3581" = load i32, ptr %"R31"
  %"zext.434" = zext i32 %".3581" to i64
  %"shl.180" = shl i64 %"zext.434", 32
  %"or.167" = or i64 %"shl.180", %"zext.433"
  %".3582" = inttoptr i64 %"or.167" to ptr
  %".3583" = ptrtoint ptr %".3582" to i64
  %".3584" = add i64 %".3583", 0
  %"for_LDG.157" = inttoptr i64 %".3584" to ptr
  %".3585" = load float, ptr %"for_LDG.157"
  %".3586" = bitcast ptr %"R9" to ptr
  store float %".3585", ptr %".3586"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".3591" = load float, ptr %"R9"
  %".3592" = load float, ptr %"R8"
  %"fadd.124" = fadd float %".3591", %".3592"
  %".3593" = bitcast ptr %"R12" to ptr
  store float %"fadd.124", ptr %".3593"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".3596" = load float, ptr %"R12"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".3596")
  %".3597" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".3598" = and i1 %"fcmp_unordered", %".3597"
  store i1 %".3598", ptr %"P0"
  ; @!P0 BRA `(.L_x_17)
  %".3601" = load i1, ptr %"P0"
  %".3602" = icmp eq i1 %".3601", 1
  br i1 %".3602", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".3605" = load float, ptr %"R12"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".3605")
  %"fmul.147" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".3606" = bitcast ptr %"R8" to ptr
  store float %"fmul.147", ptr %".3606"
  ; MOV R9, 0x3f800000
  %".3609" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".3609"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".3612" = load float, ptr %"R12"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".3612")
  %".3613" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".3614" = and i1 %"fcmp_unordered.1", %".3613"
  store i1 %".3614", ptr %"P0"
  ; MUFU.EX2 R8, R8
  %".3617" = load float, ptr %"R8"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".3617")
  %".3618" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".3618"
  ; FADD R10, R8, 1
  %".3621" = load float, ptr %"R8"
  %"fadd.125" = fadd float %".3621", 0x3ff0000000000000
  %".3622" = bitcast ptr %"R10" to ptr
  store float %"fadd.125", ptr %".3622"
  ; MUFU.RCP R10, R10
  %".3625" = load float, ptr %"R10"
  %".3626" = fdiv float 0x3ff0000000000000, %".3625"
  %".3627" = bitcast ptr %"R10" to ptr
  store float %".3626", ptr %".3627"
  ; FFMA R9, R10, -2, R9
  %".3630" = load float, ptr %"R10"
  %".3631" = load float, ptr %"R9"
  %"fmul.148" = fmul float %".3630", 0xc000000000000000
  %"fadd.126" = fadd float %"fmul.148", %".3631"
  %".3632" = bitcast ptr %"R9" to ptr
  store float %"fadd.126", ptr %".3632"
  ; FSEL R9, R9, 1, !P0
  %".3635" = load float, ptr %"R9"
  %".3636" = load i1, ptr %"P0"
  %".3637" = icmp eq i1 %".3636", 1
  %"fsel" = select  i1 %".3637", float %".3635", float 0x3ff0000000000000
  %".3638" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".3638"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".3641" = load float, ptr %"R9"
  %".3642" = load float, ptr %"R12"
  %".3643" = bitcast float %".3641" to i32
  %".3644" = bitcast float 0x41e0000000000000 to i32
  %".3645" = bitcast float %".3642" to i32
  %".3646" = or i32 %".3643", %".3644"
  %".3647" = or i32 %".3643", %".3645"
  %".3648" = and i32 %".3646", %".3647"
  store i32 %".3648", ptr %"R9"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3653" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3653"
  ; FMUL R8, R12, R12
  %".3656" = load float, ptr %"R12"
  %".3657" = load float, ptr %"R12"
  %"fmul.149" = fmul float %".3656", %".3657"
  %".3658" = bitcast ptr %"R8" to ptr
  store float %"fmul.149", ptr %".3658"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".3661" = load float, ptr %"R8"
  %".3662" = load float, ptr %"R9"
  %"fmul.150" = fmul float %".3661", %".3662"
  %"fadd.127" = fadd float %"fmul.150", 0xbfaac795c0000000
  %".3663" = bitcast ptr %"R9" to ptr
  store float %"fadd.127", ptr %".3663"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".3666" = load float, ptr %"R8"
  %".3667" = load float, ptr %"R9"
  %"fmul.151" = fmul float %".3666", %".3667"
  %"fadd.128" = fadd float %"fmul.151", 0x3fc10b2820000000
  %".3668" = bitcast ptr %"R9" to ptr
  store float %"fadd.128", ptr %".3668"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".3671" = load float, ptr %"R8"
  %".3672" = load float, ptr %"R9"
  %"fmul.152" = fmul float %".3671", %".3672"
  %"fadd.129" = fadd float %"fmul.152", 0xbfd5553da0000000
  %".3673" = bitcast ptr %"R9" to ptr
  store float %"fadd.129", ptr %".3673"
  ; FFMA R9, R8, R9, RZ
  %".3676" = load float, ptr %"R8"
  %".3677" = load float, ptr %"R9"
  %"fmul.153" = fmul float %".3676", %".3677"
  %"fadd.130" = fadd float %"fmul.153",              0x0
  %".3678" = bitcast ptr %"R9" to ptr
  store float %"fadd.130", ptr %".3678"
  ; FFMA R9, R12, R9, R12
  %".3681" = load float, ptr %"R12"
  %".3682" = load float, ptr %"R9"
  %".3683" = load float, ptr %"R12"
  %"fmul.154" = fmul float %".3681", %".3682"
  %"fadd.131" = fadd float %"fmul.154", %".3683"
  %".3684" = bitcast ptr %"R9" to ptr
  store float %"fadd.131", ptr %".3684"
  br label %".L_x_18"
.L_x_18:
  ; BSYNC B0
  br label %".L_x_16"
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3690" = load i32, ptr %"R20"
  %"add.158" = add i32 %".3690", 25165824
  %"add.159" = add i32 %"add.158", 0
  store i32 %"add.159", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3695" = load i32, ptr %"R8"
  %".3696" = and i32 %".3695", 2139095040
  store i32 %".3696", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3699" = load i32, ptr %"R8"
  %".3700" = load i1, ptr %"PT"
  %"cmp.30" = icmp sgt i32 %".3699", 33554431
  %".3701" = and i1 %"cmp.30", %".3700"
  store i1 %".3701", ptr %"P0"
  ; @P0 BRA `(.L_x_20)
  %".3704" = load i1, ptr %"P0"
  %".3705" = icmp ne i1 %".3704", 1
  br i1 %".3705", label %".L_x_20", label %".L_x_16_split_0x2170_CALL_0x21b0"
.L_x_16_split_0x2170_CALL_0x21b0:
  ; MOV R24, R20
  %".3708" = load float, ptr %"R20"
  %".3709" = bitcast ptr %"R24" to ptr
  store float %".3708", ptr %".3709"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3716" = icmp ult i32 1, 32
  %"SHF_min.10" = select  i1 %".3716", i32 1, i32 32
  %".3717" = load i32, ptr %"R24"
  %"zext.435" = zext i32 0 to i64
  %"zext.436" = zext i32 %".3717" to i64
  %"zext.437" = zext i32 1 to i64
  %"shl.181" = shl i64 %"zext.435", 32
  %"or.168" = or i64 %"shl.181", %"zext.436"
  %"shl.182" = shl i64 %"or.168", %"zext.437"
  %"and.7" = and i64 %"shl.182", 4294967295
  %"trunc32.98" = trunc i64 %"and.7" to i32
  store i32 %"trunc32.98", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".3722" = icmp ult i32 24, 32
  %"SHF_min.11" = select  i1 %".3722", i32 24, i32 32
  %".3723" = load i32, ptr %"R11"
  %"zext.438" = zext i32 %".3723" to i64
  %"zext.439" = zext i32 0 to i64
  %"zext.440" = zext i32 24 to i64
  %"shl.183" = shl i64 %"zext.438", 32
  %"or.169" = or i64 %"shl.183", %"zext.439"
  %"lshr.6" = lshr i64 %"or.169", %"zext.440"
  %"lshr.7" = lshr i64 %"lshr.6", 32
  %"trunc32.99" = trunc i64 %"lshr.7" to i32
  store i32 %"trunc32.99", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".3726" = load i32, ptr %"R25"
  %".3727" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3726", 0
  %".3728" = and i1 %"cmp.31", %".3727"
  store i1 %".3728", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".3731" = load i1, ptr %"P0"
  %".3732" = icmp ne i1 %".3731", 1
  br i1 %".3732", label %".L_x_49...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3735" = icmp ult i32 1, 32
  %"SHF_min.12" = select  i1 %".3735", i32 1, i32 32
  %".3736" = load i32, ptr %"R24"
  %"zext.441" = zext i32 0 to i64
  %"zext.442" = zext i32 %".3736" to i64
  %"zext.443" = zext i32 1 to i64
  %"shl.184" = shl i64 %"zext.441", 32
  %"or.170" = or i64 %"shl.184", %"zext.442"
  %"shl.185" = shl i64 %"or.170", %"zext.443"
  %"and.8" = and i64 %"shl.185", 4294967295
  %"trunc32.100" = trunc i64 %"and.8" to i32
  store i32 %"trunc32.100", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".3739" = load i32, ptr %"R11"
  %".3740" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3739", 0
  %".3741" = and i1 %"cmp.32", %".3740"
  store i1 %".3741", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3744" = load i1, ptr %"P0"
  %".3745" = icmp ne i1 %".3744", 1
  br i1 %".3745", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3748" = load float, ptr %"R24"
  %"fmul.155" = fmul float %".3748", 0x43f0000000000000
  %"fadd.132" = fadd float %"fmul.155",              0x0
  %".3749" = bitcast ptr %"R12" to ptr
  store float %"fadd.132", ptr %".3749"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3754" = load float, ptr %"R24"
  %"fmul.156" = fmul float %".3754", 0x43f0000000000000
  %"fadd.133" = fadd float %"fmul.156",              0x0
  %".3755" = bitcast ptr %"R12" to ptr
  store float %"fadd.133", ptr %".3755"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2:
  ; @!P0 MUFU.RCP R11, R24
  %".3760" = load i1, ptr %"P0"
  %".3761" = icmp eq i1 %".3760", 1
  br i1 %".3761", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".3764" = load i32, ptr %"R24"
  %"sint_to_f32" = sitofp i32 %".3764" to float
  %".3765" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".3766" = fptosi float %".3765" to i32
  store i32 %".3766", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2:
  ; MUFU.RCP R11, R24
  %".3771" = load i32, ptr %"R24"
  %"sint_to_f32.1" = sitofp i32 %".3771" to float
  %".3772" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".3773" = fptosi float %".3772" to i32
  store i32 %".3773", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2:
  ; @P0 MUFU.RCP R13, R12
  %".3778" = load i1, ptr %"P0"
  %".3779" = icmp ne i1 %".3778", 1
  br i1 %".3779", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".3782" = load float, ptr %"R12"
  %".3783" = fdiv float 0x3ff0000000000000, %".3782"
  %".3784" = bitcast ptr %"R13" to ptr
  store float %".3783", ptr %".3784"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2:
  ; MUFU.RCP R13, R12
  %".3789" = load float, ptr %"R12"
  %".3790" = fdiv float 0x3ff0000000000000, %".3789"
  %".3791" = bitcast ptr %"R13" to ptr
  store float %".3790", ptr %".3791"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2:
  ; @P0 FFMA R22, R12, R13, -1
  %".3796" = load i1, ptr %"P0"
  %".3797" = icmp ne i1 %".3796", 1
  br i1 %".3797", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".3800" = load float, ptr %"R12"
  %".3801" = load float, ptr %"R13"
  %"fmul.157" = fmul float %".3800", %".3801"
  %"fadd.134" = fadd float %"fmul.157", 0xbff0000000000000
  %".3802" = bitcast ptr %"R22" to ptr
  store float %"fadd.134", ptr %".3802"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2:
  ; FFMA R22, R12, R13, -1
  %".3807" = load float, ptr %"R12"
  %".3808" = load float, ptr %"R13"
  %"fmul.158" = fmul float %".3807", %".3808"
  %"fadd.135" = fadd float %"fmul.158", 0xbff0000000000000
  %".3809" = bitcast ptr %"R22" to ptr
  store float %"fadd.135", ptr %".3809"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".3814" = load i1, ptr %"P0"
  %".3815" = icmp ne i1 %".3814", 1
  br i1 %".3815", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".3818" = load float, ptr %"R22"
  %".3819" = fneg float %".3818"
  %"fadd.136" = fadd float %".3819",              0x0
  %".3820" = bitcast ptr %"R22" to ptr
  store float %"fadd.136", ptr %".3820"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2:
  ; FADD.FTZ R22, -R22, -RZ
  %".3825" = load float, ptr %"R22"
  %".3826" = fneg float %".3825"
  %"fadd.137" = fadd float %".3826",              0x0
  %".3827" = bitcast ptr %"R22" to ptr
  store float %"fadd.137", ptr %".3827"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2:
  ; @P0 FFMA R22, R13, R22, R13
  %".3832" = load i1, ptr %"P0"
  %".3833" = icmp ne i1 %".3832", 1
  br i1 %".3833", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".3836" = load float, ptr %"R13"
  %".3837" = load float, ptr %"R22"
  %".3838" = load float, ptr %"R13"
  %"fmul.159" = fmul float %".3836", %".3837"
  %"fadd.138" = fadd float %"fmul.159", %".3838"
  %".3839" = bitcast ptr %"R22" to ptr
  store float %"fadd.138", ptr %".3839"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2:
  ; FFMA R22, R13, R22, R13
  %".3844" = load float, ptr %"R13"
  %".3845" = load float, ptr %"R22"
  %".3846" = load float, ptr %"R13"
  %"fmul.160" = fmul float %".3844", %".3845"
  %"fadd.139" = fadd float %"fmul.160", %".3846"
  %".3847" = bitcast ptr %"R22" to ptr
  store float %"fadd.139", ptr %".3847"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3852" = load i1, ptr %"P0"
  %".3853" = icmp ne i1 %".3852", 1
  br i1 %".3853", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3856" = load float, ptr %"R22"
  %"fmul.161" = fmul float %".3856", 0x43f0000000000000
  %"fadd.140" = fadd float %"fmul.161",              0x0
  %".3857" = bitcast ptr %"R11" to ptr
  store float %"fadd.140", ptr %".3857"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3862" = load float, ptr %"R22"
  %"fmul.162" = fmul float %".3862", 0x43f0000000000000
  %"fadd.141" = fadd float %"fmul.162",              0x0
  %".3863" = bitcast ptr %"R11" to ptr
  store float %"fadd.141", ptr %".3863"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2:
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_49...2:
  ; IADD3 R34, R25, -0xfd, RZ
  %".3870" = load i32, ptr %"R25"
  %"add.160" = add i32 %".3870", -253
  %"add.161" = add i32 %"add.160", 0
  store i32 %"add.161", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".3873" = load i32, ptr %"R34"
  %".3874" = load i1, ptr %"PT"
  %"cmp.33" = icmp sgt i32 %".3873", 1
  %".3875" = and i1 %"cmp.33", %".3874"
  store i1 %".3875", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".3878" = load i1, ptr %"P0"
  %".3879" = icmp ne i1 %".3878", 1
  br i1 %".3879", label %".L_x_51...2", label %".L_x_49_split_0x4a30...2"
.L_x_49_split_0x4a30...2:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3882" = load i32, ptr %"R24"
  %".3883" = and i32 %".3882", 8388607
  store i32 %".3883", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".3888" = load i32, ptr %"R11"
  %".3889" = or i32 %".3888", 1065353216
  store i32 %".3889", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".3892" = load i32, ptr %"R34"
  %".3893" = icmp ult i32 %".3892", 32
  %"SHF_min.13" = select  i1 %".3893", i32 %".3892", i32 32
  %".3894" = load i32, ptr %"R23"
  %".3895" = load i32, ptr %"R34"
  %"zext.444" = zext i32 0 to i64
  %"zext.445" = zext i32 %".3894" to i64
  %"zext.446" = zext i32 %".3895" to i64
  %"shl.186" = shl i64 %"zext.444", 32
  %"or.171" = or i64 %"shl.186", %"zext.445"
  %"shl.187" = shl i64 %"or.171", %"zext.446"
  %"and.9" = and i64 %"shl.187", 4294967295
  %"trunc32.101" = trunc i64 %"and.9" to i32
  store i32 %"trunc32.101", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".3898" = load float, ptr %"R11"
  %".3899" = fdiv float 0x3ff0000000000000, %".3898"
  %".3900" = bitcast ptr %"R12" to ptr
  store float %".3899", ptr %".3900"
  ; FFMA R13, R11, R12, -1
  %".3903" = load float, ptr %"R11"
  %".3904" = load float, ptr %"R12"
  %"fmul.163" = fmul float %".3903", %".3904"
  %"fadd.142" = fadd float %"fmul.163", 0xbff0000000000000
  %".3905" = bitcast ptr %"R13" to ptr
  store float %"fadd.142", ptr %".3905"
  ; FADD.FTZ R13, -R13, -RZ
  %".3908" = load float, ptr %"R13"
  %".3909" = fneg float %".3908"
  %"fadd.143" = fadd float %".3909",              0x0
  %".3910" = bitcast ptr %"R13" to ptr
  store float %"fadd.143", ptr %".3910"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".3913" = load float, ptr %"R12"
  %".3914" = load float, ptr %"R13"
  %".3915" = load float, ptr %"R12"
  %"fmul.164" = fmul float %".3913", %".3914"
  %"fadd.144" = fadd float %"fmul.164", %".3915"
  %".3916" = bitcast ptr %"R22" to ptr
  store float %"fadd.144", ptr %".3916"
  ; FFMA.RP R13, R12, R13, R12
  %".3919" = load float, ptr %"R12"
  %".3920" = load float, ptr %"R13"
  %".3921" = load float, ptr %"R12"
  %"fmul.165" = fmul float %".3919", %".3920"
  %"fadd.145" = fadd float %"fmul.165", %".3921"
  %".3922" = bitcast ptr %"R13" to ptr
  store float %"fadd.145", ptr %".3922"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".3925" = load float, ptr %"R22"
  %".3926" = bitcast float %".3925" to i32
  %".3927" = and i32 %".3926", 8388607
  store i32 %".3927", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".3930" = load float, ptr %"R22"
  %".3931" = load float, ptr %"R13"
  %".3932" = load i1, ptr %"PT"
  %"fcmp_ordered.1" = fcmp une float %".3930", %".3931"
  %".3933" = and i1 %"fcmp_ordered.1", %".3932"
  store i1 %".3933", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".3936" = load i32, ptr %"R12"
  %".3937" = or i32 %".3936", 8388608
  store i32 %".3937", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".3940" = load i1, ptr %"P0"
  %".3941" = icmp eq i1 %".3940", 1
  %"sel.2" = select  i1 %".3941", i32 0, i32 4294967295
  store i32 %"sel.2", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".3944" = load i32, ptr %"R23"
  %".3945" = load i32, ptr %"R12"
  %".3946" = and i32 %".3944", %".3945"
  store i32 %".3946", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".3949" = load i32, ptr %"R13"
  %".3950" = sub i32 0, %".3949"
  %"add.162" = add i32 %".3950", 0
  %"add.163" = add i32 %"add.162", 0
  store i32 %"add.163", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".3953" = load i32, ptr %"R34"
  %".3954" = icmp ult i32 %".3953", 32
  %"SHF_min.14" = select  i1 %".3954", i32 %".3953", i32 32
  %".3955" = load i32, ptr %"R23"
  %".3956" = load i32, ptr %"R34"
  %"zext.447" = zext i32 %".3955" to i64
  %"zext.448" = zext i32 0 to i64
  %"zext.449" = zext i32 %".3956" to i64
  %"shl.188" = shl i64 %"zext.447", 32
  %"or.172" = or i64 %"shl.188", %"zext.448"
  %"lshr.8" = lshr i64 %"or.172", %"zext.449"
  %"lshr.9" = lshr i64 %"lshr.8", 32
  %"trunc32.102" = trunc i64 %"lshr.9" to i32
  store i32 %"trunc32.102", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".3959" = load i32, ptr %"R13"
  %".3960" = load i32, ptr %"R34"
  %".3961" = load i32, ptr %"R12"
  %"LOP3_result.4" = call i32 @"custom_lop3"(i32 %".3961", i32 0, i32 %".3959", i32 %".3960")
  %".3962" = trunc i32 %"LOP3_result.4" to i1
  store i1 %".3962", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".3965" = load i32, ptr %"R23"
  %"LOP3_result.5" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3965", i32 1)
  %".3966" = trunc i32 %"LOP3_result.5" to i1
  store i1 %".3966", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".3969" = load i32, ptr %"R23"
  %"LOP3_result.6" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3969", i32 2)
  %".3970" = trunc i32 %"LOP3_result.6" to i1
  store i1 %".3970", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3973" = load i1, ptr %"P0"
  %".3974" = sub i1 0, %".3973"
  %".3975" = load i1, ptr %"P1"
  %".3976" = sub i1 0, %".3975"
  %".3977" = or i1 %".3974", %".3976"
  %".3978" = and i1 %".3977", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3980" = load i32, ptr %"R24"
  %"LOP3_result.7" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".3980", i32 8388607)
  %".3981" = trunc i32 %"LOP3_result.7" to i1
  store i1 %".3981", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".3984" = load i1, ptr %"P0"
  %".3985" = icmp eq i1 %".3984", 1
  %"sel.3" = select  i1 %".3985", i32 0, i32 1
  store i32 %"sel.3", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".3988" = load i32, ptr %"R11"
  %".3989" = sub i32 0, %".3988"
  %"add.164" = add i32 %".3989", 0
  %"add.165" = add i32 %"add.164", 0
  store i32 %"add.165", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".3992" = load i32, ptr %"R11"
  %".3993" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3992", 0
  %".3994" = and i1 %"cmp.34", %".3993"
  store i1 %".3994", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".3997" = load i32, ptr %"R25"
  %"add.166" = add i32 %".3997", -252
  %"add.167" = add i32 %"add.166", 0
  store i32 %"add.167", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".4000" = load i32, ptr %"R11"
  %".4001" = icmp ult i32 %".4000", 32
  %"SHF_min.15" = select  i1 %".4001", i32 %".4000", i32 32
  %".4002" = load i32, ptr %"R12"
  %".4003" = load i32, ptr %"R11"
  %"zext.450" = zext i32 %".4002" to i64
  %"zext.451" = zext i32 0 to i64
  %"zext.452" = zext i32 %".4003" to i64
  %"shl.189" = shl i64 %"zext.450", 32
  %"or.173" = or i64 %"shl.189", %"zext.451"
  %"lshr.10" = lshr i64 %"or.173", %"zext.452"
  %"lshr.11" = lshr i64 %"lshr.10", 32
  %"trunc32.103" = trunc i64 %"lshr.11" to i32
  store i32 %"trunc32.103", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".4006" = load i1, ptr %"P0"
  %".4007" = icmp eq i1 %".4006", 1
  br i1 %".4007", label %".L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".4010" = load i32, ptr %"R11"
  %"add.168" = add i32 %".4010", 1
  %"add.169" = add i32 %"add.168", 0
  store i32 %"add.169", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2:
  ; IADD3 R11, R11, 0x1, RZ
  %".4015" = load i32, ptr %"R11"
  %"add.170" = add i32 %".4015", 1
  %"add.171" = add i32 %"add.170", 0
  store i32 %"add.171", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...2"
.L_x_49_split_0x4be0...2:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".4020" = load i1, ptr %"P1"
  %".4021" = icmp eq i1 %".4020", 1
  br i1 %".4021", label %".L_x_49_split_0x4be0...2_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0...2_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".4024" = icmp ult i32 1, 32
  %"SHF_min.16" = select  i1 %".4024", i32 1, i32 32
  %".4025" = load i32, ptr %"R11"
  %"zext.453" = zext i32 0 to i64
  %"zext.454" = zext i32 %".4025" to i64
  %"zext.455" = zext i32 1 to i64
  %"shl.190" = shl i64 %"zext.453", 32
  %"or.174" = or i64 %"shl.190", %"zext.454"
  %"shl.191" = shl i64 %"or.174", %"zext.455"
  %"and.10" = and i64 %"shl.191", 4294967295
  %"trunc32.104" = trunc i64 %"and.10" to i32
  store i32 %"trunc32.104", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".4030" = icmp ult i32 1, 32
  %"SHF_min.17" = select  i1 %".4030", i32 1, i32 32
  %".4031" = load i32, ptr %"R11"
  %"zext.456" = zext i32 0 to i64
  %"zext.457" = zext i32 %".4031" to i64
  %"zext.458" = zext i32 1 to i64
  %"shl.192" = shl i64 %"zext.456", 32
  %"or.175" = or i64 %"shl.192", %"zext.457"
  %"shl.193" = shl i64 %"or.175", %"zext.458"
  %"and.11" = and i64 %"shl.193", 4294967295
  %"trunc32.105" = trunc i64 %"and.11" to i32
  store i32 %"trunc32.105", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...2"
.L_x_49_split_0x4bf0...2:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".4036" = load i32, ptr %"R11"
  %".4037" = load i32, ptr %"R24"
  %".4038" = or i32 %".4036", 2147483648
  %".4039" = or i32 %".4036", %".4037"
  %".4040" = and i32 %".4038", %".4039"
  store i32 %".4040", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_51...2:
  ; MUFU.RCP R11, R24
  %".4045" = load i32, ptr %"R24"
  %"sint_to_f32.2" = sitofp i32 %".4045" to float
  %".4046" = fdiv float 0x3ff0000000000000, %"sint_to_f32.2"
  %".4047" = fptosi float %".4046" to i32
  store i32 %".4047", ptr %"R11"
  br label %".L_x_50...2"
.L_x_50...2:
  ; BSYNC B1
  br label %".L_x_48...2"
.L_x_48...2:
  ; MOV R22, R11
  %".4053" = load float, ptr %"R11"
  %".4054" = bitcast ptr %"R22" to ptr
  store float %".4053", ptr %".4054"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.1"
.L_x_52...2:
  ; BRA `(.L_x_52)
  br label %".L_x_52...2"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.1:
  br label %".L_x_16_split_0x2170_postCALL_0x21b0"
.L_x_16_split_0x2170_postCALL_0x21b0:
  ; MOV R8, R22
  %".4064" = load float, ptr %"R22"
  %".4065" = bitcast ptr %"R8" to ptr
  store float %".4064", ptr %".4065"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".4070" = load float, ptr %"R20"
  %".4071" = fdiv float 0x3ff0000000000000, %".4070"
  %".4072" = bitcast ptr %"R11" to ptr
  store float %".4071", ptr %".4072"
  ; FFMA R8, R20, R11, -1
  %".4075" = load float, ptr %"R20"
  %".4076" = load float, ptr %"R11"
  %"fmul.166" = fmul float %".4075", %".4076"
  %"fadd.146" = fadd float %"fmul.166", 0xbff0000000000000
  %".4077" = bitcast ptr %"R8" to ptr
  store float %"fadd.146", ptr %".4077"
  ; FADD.FTZ R8, -R8, -RZ
  %".4080" = load float, ptr %"R8"
  %".4081" = fneg float %".4080"
  %"fadd.147" = fadd float %".4081",              0x0
  %".4082" = bitcast ptr %"R8" to ptr
  store float %"fadd.147", ptr %".4082"
  ; FFMA R8, R11, R8, R11
  %".4085" = load float, ptr %"R11"
  %".4086" = load float, ptr %"R8"
  %".4087" = load float, ptr %"R11"
  %"fmul.167" = fmul float %".4085", %".4086"
  %"fadd.148" = fadd float %"fmul.167", %".4087"
  %".4088" = bitcast ptr %"R8" to ptr
  store float %"fadd.148", ptr %".4088"
  br label %".L_x_21"
.L_x_21:
  ; BSYNC B0
  br label %".L_x_19"
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".4094" = load i32, ptr %"R28"
  %"zext.459" = zext i32 %".4094" to i64
  %".4095" = load i32, ptr %"R29"
  %"zext.460" = zext i32 %".4095" to i64
  %"shl.194" = shl i64 %"zext.460", 32
  %"or.176" = or i64 %"shl.194", %"zext.459"
  %".4096" = inttoptr i64 %"or.176" to ptr
  %".4097" = ptrtoint ptr %".4096" to i64
  %".4098" = add i64 %".4097", 0
  %"for_LDG.158" = inttoptr i64 %".4098" to ptr
  %".4099" = load float, ptr %"for_LDG.158"
  %".4100" = bitcast ptr %"R11" to ptr
  store float %".4099", ptr %".4100"
  ; FADD R10, -R8, 1
  %".4103" = load float, ptr %"R8"
  %".4104" = fneg float %".4103"
  %"fadd.149" = fadd float %".4104", 0x3ff0000000000000
  %".4105" = bitcast ptr %"R10" to ptr
  store float %"fadd.149", ptr %".4105"
  ; FMUL R11, R11, R8
  %".4108" = load float, ptr %"R11"
  %".4109" = load float, ptr %"R8"
  %"fmul.168" = fmul float %".4108", %".4109"
  %".4110" = bitcast ptr %"R11" to ptr
  store float %"fmul.168", ptr %".4110"
  ; FFMA R9, R10, R9, R11
  %".4113" = load float, ptr %"R10"
  %".4114" = load float, ptr %"R9"
  %".4115" = load float, ptr %"R11"
  %"fmul.169" = fmul float %".4113", %".4114"
  %"fadd.150" = fadd float %"fmul.169", %".4115"
  %".4116" = bitcast ptr %"R9" to ptr
  store float %"fadd.150", ptr %".4116"
  ; STG.E.SYS [R28], R9
  %".4119" = load float, ptr %"R9"
  %".4120" = load i32, ptr %"R28"
  %"zext.461" = zext i32 %".4120" to i64
  %".4121" = load i32, ptr %"R29"
  %"zext.462" = zext i32 %".4121" to i64
  %"shl.195" = shl i64 %"zext.462", 32
  %"or.177" = or i64 %"shl.195", %"zext.461"
  %".4122" = inttoptr i64 %"or.177" to ptr
  %".4123" = ptrtoint ptr %".4122" to i64
  %".4124" = add i64 %".4123", 0
  %"for_STG" = inttoptr i64 %".4124" to ptr
  store float %".4119", ptr %"for_STG"
  ; @!P3 BRA `(.L_x_22)
  %".4127" = load i1, ptr %"P3"
  %".4128" = icmp eq i1 %".4127", 1
  br i1 %".4128", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".4135" = load i32, ptr %"R15"
  %".4136" = and i32 %".4135", 3
  store i32 %".4136", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".4139" = load i32, ptr %"R5"
  %".4140" = and i32 %".4139", 3
  store i32 %".4140", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".4143" = load i32, ptr %"R18"
  %".4144" = sub i32 0, %".4143"
  %"add.172" = add i32 %".4144", %"Arg_4"
  %"add.173" = add i32 %"add.172", 0
  store i32 %"add.173", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".4147" = icmp ult i32 31, 32
  %"SHF_min.18" = select  i1 %".4147", i32 31, i32 32
  %".4148" = load i32, ptr %"R5"
  %"zext.463" = zext i32 %".4148" to i64
  %"zext.464" = zext i32 0 to i64
  %"zext.465" = zext i32 31 to i64
  %"shl.196" = shl i64 %"zext.463", 32
  %"or.178" = or i64 %"shl.196", %"zext.464"
  %"ashr" = ashr i64 %"or.178", %"zext.465"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.106" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.106", ptr %"R16"
  ; MOV R17, RZ
  %".4151" = load i32, ptr %"RZ"
  store i32 %".4151", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".4154" = load i32, ptr %"R18"
  %".4155" = sub i32 0, %".4154"
  %"add.174" = add i32 %".4155", %"Arg_5"
  %"add.175" = add i32 %"add.174", 0
  store i32 %"add.175", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".4158" = load i32, ptr %"R15"
  %".4159" = sub i32 0, %".4158"
  %"add.176" = add i32 %".4159", %"Arg_4"
  %"add.177" = add i32 %"add.176", 0
  store i32 %"add.177", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".4162" = load i32, ptr %"R48"
  %".4163" = sub i32 0, %".4162"
  %"add.178" = add i32 %".4163", %"Arg_5"
  %"add.179" = add i32 %"add.178", 0
  store i32 %"add.179", ptr %"R20"
  br label %".L_x_47"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".4167" = load i32, ptr %"R49"
  %".4168" = load i1, ptr %"PT"
  %"cmp.35" = icmp sge i32 %".4167", 3
  %".4169" = and i1 %"cmp.35", %".4168"
  store i1 %".4169", ptr %"P0"
  ; MOV R13, R17
  %".4172" = load i32, ptr %"R17"
  store i32 %".4172", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".4177" = load i32, ptr %"R17"
  %"add.180" = add i32 %".4177", 1
  %"add.181" = add i32 %"add.180", 0
  store i32 %"add.181", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".4180" = load i32, ptr %"R4"
  %".4181" = load i1, ptr %"PT"
  %"cmp.36" = icmp sge i32 %".4180", 1
  %".4182" = and i1 %"cmp.36", %".4181"
  store i1 %".4182", ptr %"P4"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".4185" = load i32, ptr %"R15"
  %".4186" = load i1, ptr %"PT"
  %"cmp.37" = icmp ne i32 %".4185", 0
  %".4187" = and i1 %"cmp.37", %".4186"
  store i1 %".4187", ptr %"P1"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".4190" = load i32, ptr %"R17"
  %".4191" = load i1, ptr %"PT"
  %"cmp.38" = icmp sge i32 %".4190", %"Arg_6"
  %".4192" = and i1 %"cmp.38", %".4191"
  store i1 %".4192", ptr %"P3"
  ; MOV R21, RZ
  %".4195" = load float, ptr %"RZ"
  %".4196" = bitcast ptr %"R21" to ptr
  store float %".4195", ptr %".4196"
  ; MOV R22, RZ
  %".4199" = load i32, ptr %"RZ"
  store i32 %".4199", ptr %"R22"
  ; MOV R56, RZ
  %".4202" = load float, ptr %"RZ"
  %".4203" = bitcast ptr %"R56" to ptr
  store float %".4202", ptr %".4203"
  ; MOV R44, RZ
  %".4206" = load float, ptr %"RZ"
  %".4207" = bitcast ptr %"R44" to ptr
  store float %".4206", ptr %".4207"
  ; @!P0 BRA `(.L_x_23)
  %".4210" = load i1, ptr %"P0"
  %".4211" = icmp eq i1 %".4210", 1
  br i1 %".4211", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R25"
  ; MOV R21, RZ
  %".4216" = load float, ptr %"RZ"
  %".4217" = bitcast ptr %"R21" to ptr
  store float %".4216", ptr %".4217"
  ; MOV R22, RZ
  %".4220" = load i32, ptr %"RZ"
  store i32 %".4220", ptr %"R22"
  ; MOV R12, R19
  %".4223" = load i32, ptr %"R19"
  store i32 %".4223", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".4226" = icmp ult i32 2, 64
  %"SHF_min.19" = select  i1 %".4226", i32 2, i32 64
  %".4227" = load i32, ptr %"R16"
  %".4228" = load i32, ptr %"R25"
  %"zext.466" = zext i32 %".4227" to i64
  %"zext.467" = zext i32 %".4228" to i64
  %"zext.468" = zext i32 2 to i64
  %"shl.197" = shl i64 %"zext.466", 32
  %"or.179" = or i64 %"shl.197", %"zext.467"
  %"shl.198" = shl i64 %"or.179", %"zext.468"
  %"lshr.12" = lshr i64 %"shl.198", 32
  %"trunc32.107" = trunc i64 %"lshr.12" to i32
  store i32 %"trunc32.107", ptr %"R23"
  br label %".L_x_24"
.L_x_24:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R6, R14, c[0x0][0x180], R22.reuse
  %".4234" = load i32, ptr %"R14"
  %".4235" = load i32, ptr %"R22"
  %"mul.52" = mul i32 %".4234", %"Arg_4"
  %"add.182" = add i32 %"mul.52", %".4235"
  store i32 %"add.182", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".4240" = load i32, ptr %"R13"
  %".4241" = load i32, ptr %"R22"
  %"mul.53" = mul i32 %".4240", %"Arg_4"
  %"add.183" = add i32 %"mul.53", %".4241"
  store i32 %"add.183", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".4244" = load i32, ptr %"R6"
  %".4245" = load i32, ptr %"R7"
  %"zext.469" = zext i32 %".4244" to i64
  %"zext.470" = zext i32 %".4245" to i64
  %"mul.54" = mul i64 %"zext.469", %"zext.470"
  %".4246" = ptrtoint ptr %"Arg_2" to i64
  %"add.184" = add i64 %"mul.54", %".4246"
  %".4247" = and i64 %"add.184", 18446744069414584320
  %".4248" = lshr i64 %".4247", 32
  %"trunc32.108" = trunc i64 %".4248" to i32
  %"trunc32.109" = trunc i64 %"add.184" to i32
  store i32 %"trunc32.109", ptr %"R4"
  store i32 %"trunc32.108", ptr %"R5"
  ; LEA R6, R9, R6, 0x1
  %".4252" = load i32, ptr %"R9"
  %".4253" = load i32, ptr %"R6"
  %"shl.199" = shl i32 %".4252", 1
  %"add.185" = add i32 %"shl.199", %".4253"
  store i32 %"add.185", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".4256" = load i32, ptr %"R10"
  %".4257" = load i32, ptr %"R7"
  %"zext.471" = zext i32 %".4256" to i64
  %"zext.472" = zext i32 %".4257" to i64
  %"mul.55" = mul i64 %"zext.471", %"zext.472"
  %".4258" = ptrtoint ptr %"Arg_0" to i64
  %"add.186" = add i64 %"mul.55", %".4258"
  %".4259" = and i64 %"add.186", 18446744069414584320
  %".4260" = lshr i64 %".4259", 32
  %"trunc32.110" = trunc i64 %".4260" to i32
  %"trunc32.111" = trunc i64 %"add.186" to i32
  store i32 %"trunc32.111", ptr %"R10"
  store i32 %"trunc32.110", ptr %"R11"
  ; LEA R8, P0, R25, R4, 0x2
  %".4264" = load i1, ptr %"P0"
  %".4265" = sub i1 0, %".4264"
  %".4266" = load i32, ptr %"R25"
  %".4267" = load i32, ptr %"R4"
  %".4268" = sext i1 %".4265" to i32
  %"shl.200" = shl i32 %".4268", %".4267"
  %"add.187" = add i32 %"shl.200", %".4266"
  store i32 %"add.187", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".4271" = load i32, ptr %"R6"
  %".4272" = load i32, ptr %"R7"
  %"zext.473" = zext i32 %".4271" to i64
  %"zext.474" = zext i32 %".4272" to i64
  %"mul.56" = mul i64 %"zext.473", %"zext.474"
  %".4273" = ptrtoint ptr %"Arg_2" to i64
  %"add.188" = add i64 %"mul.56", %".4273"
  %".4274" = and i64 %"add.188", 18446744069414584320
  %".4275" = lshr i64 %".4274", 32
  %"trunc32.112" = trunc i64 %".4275" to i32
  %"trunc32.113" = trunc i64 %"add.188" to i32
  store i32 %"trunc32.113", ptr %"R6"
  store i32 %"trunc32.112", ptr %"R7"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".4279" = load i32, ptr %"R5"
  %".4280" = load i32, ptr %"R23"
  %".4281" = load i1, ptr %"P0"
  %".4282" = sub i1 0, %".4281"
  %".4283" = zext i1 %".4282" to i32
  %"add.189" = add i32 %".4279", %".4280"
  %"add.190" = add i32 %"add.189", 0
  %"add.191" = add i32 %"add.190", %".4283"
  store i32 %"add.191", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".4286" = load i32, ptr %"R4"
  %"zext.475" = zext i32 %".4286" to i64
  %".4287" = load i32, ptr %"R5"
  %"zext.476" = zext i32 %".4287" to i64
  %"shl.201" = shl i64 %"zext.476", 32
  %"or.180" = or i64 %"shl.201", %"zext.475"
  %".4288" = inttoptr i64 %"or.180" to ptr
  %".4289" = ptrtoint ptr %".4288" to i64
  %".4290" = add i64 %".4289", 0
  %"for_LDG.159" = inttoptr i64 %".4290" to ptr
  %".4291" = load float, ptr %"for_LDG.159"
  %".4292" = bitcast ptr %"R35" to ptr
  store float %".4291", ptr %".4292"
  ; LDG.E.SYS R24, [R10]
  %".4295" = load i32, ptr %"R10"
  %"zext.477" = zext i32 %".4295" to i64
  %".4296" = load i32, ptr %"R11"
  %"zext.478" = zext i32 %".4296" to i64
  %"shl.202" = shl i64 %"zext.478", 32
  %"or.181" = or i64 %"shl.202", %"zext.477"
  %".4297" = inttoptr i64 %"or.181" to ptr
  %".4298" = ptrtoint ptr %".4297" to i64
  %".4299" = add i64 %".4298", 0
  %"for_LDG.160" = inttoptr i64 %".4299" to ptr
  %".4300" = load float, ptr %"for_LDG.160"
  %".4301" = bitcast ptr %"R24" to ptr
  store float %".4300", ptr %".4301"
  ; LDG.E.SYS R37, [R8]
  %".4304" = load i32, ptr %"R8"
  %"zext.479" = zext i32 %".4304" to i64
  %".4305" = load i32, ptr %"R9"
  %"zext.480" = zext i32 %".4305" to i64
  %"shl.203" = shl i64 %"zext.480", 32
  %"or.182" = or i64 %"shl.203", %"zext.479"
  %".4306" = inttoptr i64 %"or.182" to ptr
  %".4307" = ptrtoint ptr %".4306" to i64
  %".4308" = add i64 %".4307", 0
  %"for_LDG.161" = inttoptr i64 %".4308" to ptr
  %".4309" = load float, ptr %"for_LDG.161"
  %".4310" = bitcast ptr %"R37" to ptr
  store float %".4309", ptr %".4310"
  ; LDG.E.SYS R34, [R6]
  %".4313" = load i32, ptr %"R6"
  %"zext.481" = zext i32 %".4313" to i64
  %".4314" = load i32, ptr %"R7"
  %"zext.482" = zext i32 %".4314" to i64
  %"shl.204" = shl i64 %"zext.482", 32
  %"or.183" = or i64 %"shl.204", %"zext.481"
  %".4315" = inttoptr i64 %"or.183" to ptr
  %".4316" = ptrtoint ptr %".4315" to i64
  %".4317" = add i64 %".4316", 0
  %"for_LDG.162" = inttoptr i64 %".4317" to ptr
  %".4318" = load float, ptr %"for_LDG.162"
  %".4319" = bitcast ptr %"R34" to ptr
  store float %".4318", ptr %".4319"
  ; LDG.E.SYS R36, [R4+0x4]
  %".4322" = load i32, ptr %"R4"
  %"zext.483" = zext i32 %".4322" to i64
  %".4323" = load i32, ptr %"R5"
  %"zext.484" = zext i32 %".4323" to i64
  %"shl.205" = shl i64 %"zext.484", 32
  %"or.184" = or i64 %"shl.205", %"zext.483"
  %".4324" = inttoptr i64 %"or.184" to ptr
  %".4325" = ptrtoint ptr %".4324" to i64
  %".4326" = add i64 %".4325", 4
  %"for_LDG.163" = inttoptr i64 %".4326" to ptr
  %".4327" = load float, ptr %"for_LDG.163"
  %".4328" = bitcast ptr %"R36" to ptr
  store float %".4327", ptr %".4328"
  ; LDG.E.SYS R38, [R10+0x4]
  %".4331" = load i32, ptr %"R10"
  %"zext.485" = zext i32 %".4331" to i64
  %".4332" = load i32, ptr %"R11"
  %"zext.486" = zext i32 %".4332" to i64
  %"shl.206" = shl i64 %"zext.486", 32
  %"or.185" = or i64 %"shl.206", %"zext.485"
  %".4333" = inttoptr i64 %"or.185" to ptr
  %".4334" = ptrtoint ptr %".4333" to i64
  %".4335" = add i64 %".4334", 4
  %"for_LDG.164" = inttoptr i64 %".4335" to ptr
  %".4336" = load float, ptr %"for_LDG.164"
  %".4337" = bitcast ptr %"R38" to ptr
  store float %".4336", ptr %".4337"
  ; LDG.E.SYS R39, [R8+0x4]
  %".4340" = load i32, ptr %"R8"
  %"zext.487" = zext i32 %".4340" to i64
  %".4341" = load i32, ptr %"R9"
  %"zext.488" = zext i32 %".4341" to i64
  %"shl.207" = shl i64 %"zext.488", 32
  %"or.186" = or i64 %"shl.207", %"zext.487"
  %".4342" = inttoptr i64 %"or.186" to ptr
  %".4343" = ptrtoint ptr %".4342" to i64
  %".4344" = add i64 %".4343", 4
  %"for_LDG.165" = inttoptr i64 %".4344" to ptr
  %".4345" = load float, ptr %"for_LDG.165"
  %".4346" = bitcast ptr %"R39" to ptr
  store float %".4345", ptr %".4346"
  ; LDG.E.SYS R41, [R6+0x4]
  %".4349" = load i32, ptr %"R6"
  %"zext.489" = zext i32 %".4349" to i64
  %".4350" = load i32, ptr %"R7"
  %"zext.490" = zext i32 %".4350" to i64
  %"shl.208" = shl i64 %"zext.490", 32
  %"or.187" = or i64 %"shl.208", %"zext.489"
  %".4351" = inttoptr i64 %"or.187" to ptr
  %".4352" = ptrtoint ptr %".4351" to i64
  %".4353" = add i64 %".4352", 4
  %"for_LDG.166" = inttoptr i64 %".4353" to ptr
  %".4354" = load float, ptr %"for_LDG.166"
  %".4355" = bitcast ptr %"R41" to ptr
  store float %".4354", ptr %".4355"
  ; LDG.E.SYS R42, [R10+0x8]
  %".4358" = load i32, ptr %"R10"
  %"zext.491" = zext i32 %".4358" to i64
  %".4359" = load i32, ptr %"R11"
  %"zext.492" = zext i32 %".4359" to i64
  %"shl.209" = shl i64 %"zext.492", 32
  %"or.188" = or i64 %"shl.209", %"zext.491"
  %".4360" = inttoptr i64 %"or.188" to ptr
  %".4361" = ptrtoint ptr %".4360" to i64
  %".4362" = add i64 %".4361", 8
  %"for_LDG.167" = inttoptr i64 %".4362" to ptr
  %".4363" = load float, ptr %"for_LDG.167"
  %".4364" = bitcast ptr %"R42" to ptr
  store float %".4363", ptr %".4364"
  ; LDG.E.SYS R40, [R4+0x8]
  %".4367" = load i32, ptr %"R4"
  %"zext.493" = zext i32 %".4367" to i64
  %".4368" = load i32, ptr %"R5"
  %"zext.494" = zext i32 %".4368" to i64
  %"shl.210" = shl i64 %"zext.494", 32
  %"or.189" = or i64 %"shl.210", %"zext.493"
  %".4369" = inttoptr i64 %"or.189" to ptr
  %".4370" = ptrtoint ptr %".4369" to i64
  %".4371" = add i64 %".4370", 8
  %"for_LDG.168" = inttoptr i64 %".4371" to ptr
  %".4372" = load float, ptr %"for_LDG.168"
  %".4373" = bitcast ptr %"R40" to ptr
  store float %".4372", ptr %".4373"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4376" = load i32, ptr %"R8"
  %"zext.495" = zext i32 %".4376" to i64
  %".4377" = load i32, ptr %"R9"
  %"zext.496" = zext i32 %".4377" to i64
  %"shl.211" = shl i64 %"zext.496", 32
  %"or.190" = or i64 %"shl.211", %"zext.495"
  %".4378" = inttoptr i64 %"or.190" to ptr
  %".4379" = ptrtoint ptr %".4378" to i64
  %".4380" = add i64 %".4379", 8
  %"for_LDG.169" = inttoptr i64 %".4380" to ptr
  %".4381" = load float, ptr %"for_LDG.169"
  %".4382" = bitcast ptr %"R43" to ptr
  store float %".4381", ptr %".4382"
  ; LDG.E.SYS R45, [R6+0x8]
  %".4385" = load i32, ptr %"R6"
  %"zext.497" = zext i32 %".4385" to i64
  %".4386" = load i32, ptr %"R7"
  %"zext.498" = zext i32 %".4386" to i64
  %"shl.212" = shl i64 %"zext.498", 32
  %"or.191" = or i64 %"shl.212", %"zext.497"
  %".4387" = inttoptr i64 %"or.191" to ptr
  %".4388" = ptrtoint ptr %".4387" to i64
  %".4389" = add i64 %".4388", 8
  %"for_LDG.170" = inttoptr i64 %".4389" to ptr
  %".4390" = load float, ptr %"for_LDG.170"
  %".4391" = bitcast ptr %"R45" to ptr
  store float %".4390", ptr %".4391"
  ; LDG.E.SYS R47, [R10+0xc]
  %".4394" = load i32, ptr %"R10"
  %"zext.499" = zext i32 %".4394" to i64
  %".4395" = load i32, ptr %"R11"
  %"zext.500" = zext i32 %".4395" to i64
  %"shl.213" = shl i64 %"zext.500", 32
  %"or.192" = or i64 %"shl.213", %"zext.499"
  %".4396" = inttoptr i64 %"or.192" to ptr
  %".4397" = ptrtoint ptr %".4396" to i64
  %".4398" = add i64 %".4397", 12
  %"for_LDG.171" = inttoptr i64 %".4398" to ptr
  %".4399" = load float, ptr %"for_LDG.171"
  %".4400" = bitcast ptr %"R47" to ptr
  store float %".4399", ptr %".4400"
  ; LDG.E.SYS R46, [R4+0xc]
  %".4403" = load i32, ptr %"R4"
  %"zext.501" = zext i32 %".4403" to i64
  %".4404" = load i32, ptr %"R5"
  %"zext.502" = zext i32 %".4404" to i64
  %"shl.214" = shl i64 %"zext.502", 32
  %"or.193" = or i64 %"shl.214", %"zext.501"
  %".4405" = inttoptr i64 %"or.193" to ptr
  %".4406" = ptrtoint ptr %".4405" to i64
  %".4407" = add i64 %".4406", 12
  %"for_LDG.172" = inttoptr i64 %".4407" to ptr
  %".4408" = load float, ptr %"for_LDG.172"
  %".4409" = bitcast ptr %"R46" to ptr
  store float %".4408", ptr %".4409"
  ; LDG.E.SYS R50, [R8+0xc]
  %".4412" = load i32, ptr %"R8"
  %"zext.503" = zext i32 %".4412" to i64
  %".4413" = load i32, ptr %"R9"
  %"zext.504" = zext i32 %".4413" to i64
  %"shl.215" = shl i64 %"zext.504", 32
  %"or.194" = or i64 %"shl.215", %"zext.503"
  %".4414" = inttoptr i64 %"or.194" to ptr
  %".4415" = ptrtoint ptr %".4414" to i64
  %".4416" = add i64 %".4415", 12
  %"for_LDG.173" = inttoptr i64 %".4416" to ptr
  %".4417" = load float, ptr %"for_LDG.173"
  %".4418" = bitcast ptr %"R50" to ptr
  store float %".4417", ptr %".4418"
  ; LDG.E.SYS R51, [R6+0xc]
  %".4421" = load i32, ptr %"R6"
  %"zext.505" = zext i32 %".4421" to i64
  %".4422" = load i32, ptr %"R7"
  %"zext.506" = zext i32 %".4422" to i64
  %"shl.216" = shl i64 %"zext.506", 32
  %"or.195" = or i64 %"shl.216", %"zext.505"
  %".4423" = inttoptr i64 %"or.195" to ptr
  %".4424" = ptrtoint ptr %".4423" to i64
  %".4425" = add i64 %".4424", 12
  %"for_LDG.174" = inttoptr i64 %".4425" to ptr
  %".4426" = load float, ptr %"for_LDG.174"
  %".4427" = bitcast ptr %"R51" to ptr
  store float %".4426", ptr %".4427"
  ; IADD3 R12, R12, -0x4, RZ
  %".4430" = load i32, ptr %"R12"
  %"add.192" = add i32 %".4430", -4
  %"add.193" = add i32 %"add.192", 0
  store i32 %"add.193", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".4433" = load i32, ptr %"R22"
  %"add.194" = add i32 %".4433", 4
  %"add.195" = add i32 %"add.194", 0
  store i32 %"add.195", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".4436" = load i32, ptr %"R12"
  %".4437" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".4436", 0
  %".4438" = and i1 %"cmp.39", %".4437"
  store i1 %".4438", ptr %"P0"
  ; FFMA R35, R35, R24, R44
  %".4441" = load float, ptr %"R35"
  %".4442" = load float, ptr %"R24"
  %".4443" = load float, ptr %"R44"
  %"fmul.170" = fmul float %".4441", %".4442"
  %"fadd.151" = fadd float %"fmul.170", %".4443"
  %".4444" = bitcast ptr %"R35" to ptr
  store float %"fadd.151", ptr %".4444"
  ; FFMA R37, R24.reuse, R37, R56
  %".4447" = load float, ptr %"R24"
  %".4448" = load float, ptr %"R37"
  %".4449" = load float, ptr %"R56"
  %"fmul.171" = fmul float %".4447", %".4448"
  %"fadd.152" = fadd float %"fmul.171", %".4449"
  %".4450" = bitcast ptr %"R37" to ptr
  store float %"fadd.152", ptr %".4450"
  ; FFMA R34, R24, R34, R21
  %".4453" = load float, ptr %"R24"
  %".4454" = load float, ptr %"R34"
  %".4455" = load float, ptr %"R21"
  %"fmul.172" = fmul float %".4453", %".4454"
  %"fadd.153" = fadd float %"fmul.172", %".4455"
  %".4456" = bitcast ptr %"R34" to ptr
  store float %"fadd.153", ptr %".4456"
  ; FFMA R35, R36, R38, R35
  %".4459" = load float, ptr %"R36"
  %".4460" = load float, ptr %"R38"
  %".4461" = load float, ptr %"R35"
  %"fmul.173" = fmul float %".4459", %".4460"
  %"fadd.154" = fadd float %"fmul.173", %".4461"
  %".4462" = bitcast ptr %"R35" to ptr
  store float %"fadd.154", ptr %".4462"
  ; FFMA R37, R38, R39, R37
  %".4465" = load float, ptr %"R38"
  %".4466" = load float, ptr %"R39"
  %".4467" = load float, ptr %"R37"
  %"fmul.174" = fmul float %".4465", %".4466"
  %"fadd.155" = fadd float %"fmul.174", %".4467"
  %".4468" = bitcast ptr %"R37" to ptr
  store float %"fadd.155", ptr %".4468"
  ; FFMA R34, R38, R41, R34
  %".4471" = load float, ptr %"R38"
  %".4472" = load float, ptr %"R41"
  %".4473" = load float, ptr %"R34"
  %"fmul.175" = fmul float %".4471", %".4472"
  %"fadd.156" = fadd float %"fmul.175", %".4473"
  %".4474" = bitcast ptr %"R34" to ptr
  store float %"fadd.156", ptr %".4474"
  ; FFMA R35, R40, R42, R35
  %".4477" = load float, ptr %"R40"
  %".4478" = load float, ptr %"R42"
  %".4479" = load float, ptr %"R35"
  %"fmul.176" = fmul float %".4477", %".4478"
  %"fadd.157" = fadd float %"fmul.176", %".4479"
  %".4480" = bitcast ptr %"R35" to ptr
  store float %"fadd.157", ptr %".4480"
  ; FFMA R37, R42.reuse, R43, R37
  %".4483" = load float, ptr %"R42"
  %".4484" = load float, ptr %"R43"
  %".4485" = load float, ptr %"R37"
  %"fmul.177" = fmul float %".4483", %".4484"
  %"fadd.158" = fadd float %"fmul.177", %".4485"
  %".4486" = bitcast ptr %"R37" to ptr
  store float %"fadd.158", ptr %".4486"
  ; FFMA R34, R42, R45, R34
  %".4489" = load float, ptr %"R42"
  %".4490" = load float, ptr %"R45"
  %".4491" = load float, ptr %"R34"
  %"fmul.178" = fmul float %".4489", %".4490"
  %"fadd.159" = fadd float %"fmul.178", %".4491"
  %".4492" = bitcast ptr %"R34" to ptr
  store float %"fadd.159", ptr %".4492"
  ; FFMA R44, R46, R47, R35
  %".4495" = load float, ptr %"R46"
  %".4496" = load float, ptr %"R47"
  %".4497" = load float, ptr %"R35"
  %"fmul.179" = fmul float %".4495", %".4496"
  %"fadd.160" = fadd float %"fmul.179", %".4497"
  %".4498" = bitcast ptr %"R44" to ptr
  store float %"fadd.160", ptr %".4498"
  ; FFMA R56, R47, R50, R37
  %".4501" = load float, ptr %"R47"
  %".4502" = load float, ptr %"R50"
  %".4503" = load float, ptr %"R37"
  %"fmul.180" = fmul float %".4501", %".4502"
  %"fadd.161" = fadd float %"fmul.180", %".4503"
  %".4504" = bitcast ptr %"R56" to ptr
  store float %"fadd.161", ptr %".4504"
  ; FFMA R21, R47, R51, R34
  %".4507" = load float, ptr %"R47"
  %".4508" = load float, ptr %"R51"
  %".4509" = load float, ptr %"R34"
  %"fmul.181" = fmul float %".4507", %".4508"
  %"fadd.162" = fadd float %"fmul.181", %".4509"
  %".4510" = bitcast ptr %"R21" to ptr
  store float %"fadd.162", ptr %".4510"
  ; @P0 BRA `(.L_x_24)
  %".4513" = load i1, ptr %"P0"
  %".4514" = icmp ne i1 %".4513", 1
  br i1 %".4514", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".4517" = load i1, ptr %"P1"
  %".4518" = icmp eq i1 %".4517", 1
  br i1 %".4518", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".4523" = load i32, ptr %"R14"
  %".4524" = load i32, ptr %"R22"
  %"mul.57" = mul i32 %".4523", %"Arg_4"
  %"add.196" = add i32 %"mul.57", %".4524"
  store i32 %"add.196", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".4529" = load i32, ptr %"R13"
  %".4530" = load i32, ptr %"R22"
  %"mul.58" = mul i32 %".4529", %"Arg_4"
  %"add.197" = add i32 %"mul.58", %".4530"
  store i32 %"add.197", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".4535" = load i32, ptr %"R7"
  %".4536" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".4535" to i64
  %"zext.508" = zext i32 %".4536" to i64
  %"mul.59" = mul i64 %"zext.507", %"zext.508"
  %".4537" = ptrtoint ptr %"Arg_2" to i64
  %"add.198" = add i64 %"mul.59", %".4537"
  %".4538" = and i64 %"add.198", 18446744069414584320
  %".4539" = lshr i64 %".4538", 32
  %"trunc32.114" = trunc i64 %".4539" to i32
  %"trunc32.115" = trunc i64 %"add.198" to i32
  store i32 %"trunc32.115", ptr %"R4"
  store i32 %"trunc32.114", ptr %"R5"
  ; LEA R10, R10, R7, 0x1
  %".4543" = load i32, ptr %"R10"
  %".4544" = load i32, ptr %"R7"
  %"shl.217" = shl i32 %".4543", 1
  %"add.199" = add i32 %"shl.217", %".4544"
  store i32 %"add.199", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".4547" = load i32, ptr %"R6"
  %".4548" = load i32, ptr %"R11"
  %"zext.509" = zext i32 %".4547" to i64
  %"zext.510" = zext i32 %".4548" to i64
  %"mul.60" = mul i64 %"zext.509", %"zext.510"
  %".4549" = ptrtoint ptr %"Arg_0" to i64
  %"add.200" = add i64 %"mul.60", %".4549"
  %".4550" = and i64 %"add.200", 18446744069414584320
  %".4551" = lshr i64 %".4550", 32
  %"trunc32.116" = trunc i64 %".4551" to i32
  %"trunc32.117" = trunc i64 %"add.200" to i32
  store i32 %"trunc32.117", ptr %"R6"
  store i32 %"trunc32.116", ptr %"R7"
  ; LEA R8, P0, R9, R4, 0x2
  %".4555" = load i1, ptr %"P0"
  %".4556" = sub i1 0, %".4555"
  %".4557" = load i32, ptr %"R9"
  %".4558" = load i32, ptr %"R4"
  %".4559" = sext i1 %".4556" to i32
  %"shl.218" = shl i32 %".4559", %".4558"
  %"add.201" = add i32 %"shl.218", %".4557"
  store i32 %"add.201", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4562" = load i32, ptr %"R10"
  %".4563" = load i32, ptr %"R11"
  %"zext.511" = zext i32 %".4562" to i64
  %"zext.512" = zext i32 %".4563" to i64
  %"mul.61" = mul i64 %"zext.511", %"zext.512"
  %".4564" = ptrtoint ptr %"Arg_2" to i64
  %"add.202" = add i64 %"mul.61", %".4564"
  %".4565" = and i64 %"add.202", 18446744069414584320
  %".4566" = lshr i64 %".4565", 32
  %"trunc32.118" = trunc i64 %".4566" to i32
  %"trunc32.119" = trunc i64 %"add.202" to i32
  store i32 %"trunc32.119", ptr %"R10"
  store i32 %"trunc32.118", ptr %"R11"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".4570" = load i32, ptr %"R9"
  %".4571" = load i32, ptr %"R5"
  %".4572" = load i32, ptr %"R16"
  %"shl.219" = shl i32 %".4570", %".4572"
  %"add.203" = add i32 %"shl.219", %".4571"
  store i32 %"add.203", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".4575" = load i32, ptr %"R4"
  %"zext.513" = zext i32 %".4575" to i64
  %".4576" = load i32, ptr %"R5"
  %"zext.514" = zext i32 %".4576" to i64
  %"shl.220" = shl i64 %"zext.514", 32
  %"or.196" = or i64 %"shl.220", %"zext.513"
  %".4577" = inttoptr i64 %"or.196" to ptr
  %".4578" = ptrtoint ptr %".4577" to i64
  %".4579" = add i64 %".4578", 0
  %"for_LDG.175" = inttoptr i64 %".4579" to ptr
  %".4580" = load float, ptr %"for_LDG.175"
  %".4581" = bitcast ptr %"R13" to ptr
  store float %".4580", ptr %".4581"
  ; LDG.E.SYS R12, [R6]
  %".4584" = load i32, ptr %"R6"
  %"zext.515" = zext i32 %".4584" to i64
  %".4585" = load i32, ptr %"R7"
  %"zext.516" = zext i32 %".4585" to i64
  %"shl.221" = shl i64 %"zext.516", 32
  %"or.197" = or i64 %"shl.221", %"zext.515"
  %".4586" = inttoptr i64 %"or.197" to ptr
  %".4587" = ptrtoint ptr %".4586" to i64
  %".4588" = add i64 %".4587", 0
  %"for_LDG.176" = inttoptr i64 %".4588" to ptr
  %".4589" = load float, ptr %"for_LDG.176"
  %".4590" = bitcast ptr %"R12" to ptr
  store float %".4589", ptr %".4590"
  ; LDG.E.SYS R23, [R8]
  %".4593" = load i32, ptr %"R8"
  %"zext.517" = zext i32 %".4593" to i64
  %".4594" = load i32, ptr %"R9"
  %"zext.518" = zext i32 %".4594" to i64
  %"shl.222" = shl i64 %"zext.518", 32
  %"or.198" = or i64 %"shl.222", %"zext.517"
  %".4595" = inttoptr i64 %"or.198" to ptr
  %".4596" = ptrtoint ptr %".4595" to i64
  %".4597" = add i64 %".4596", 0
  %"for_LDG.177" = inttoptr i64 %".4597" to ptr
  %".4598" = load float, ptr %"for_LDG.177"
  %".4599" = bitcast ptr %"R23" to ptr
  store float %".4598", ptr %".4599"
  ; LDG.E.SYS R22, [R10]
  %".4602" = load i32, ptr %"R10"
  %"zext.519" = zext i32 %".4602" to i64
  %".4603" = load i32, ptr %"R11"
  %"zext.520" = zext i32 %".4603" to i64
  %"shl.223" = shl i64 %"zext.520", 32
  %"or.199" = or i64 %"shl.223", %"zext.519"
  %".4604" = inttoptr i64 %"or.199" to ptr
  %".4605" = ptrtoint ptr %".4604" to i64
  %".4606" = add i64 %".4605", 0
  %"for_LDG.178" = inttoptr i64 %".4606" to ptr
  %".4607" = load float, ptr %"for_LDG.178"
  %".4608" = bitcast ptr %"R22" to ptr
  store float %".4607", ptr %".4608"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".4611" = load i32, ptr %"R15"
  %".4612" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".4611", 1
  %".4613" = and i1 %"cmp.40", %".4612"
  store i1 %".4613", ptr %"P0"
  ; FFMA R44, R13, R12, R44
  %".4616" = load float, ptr %"R13"
  %".4617" = load float, ptr %"R12"
  %".4618" = load float, ptr %"R44"
  %"fmul.182" = fmul float %".4616", %".4617"
  %"fadd.163" = fadd float %"fmul.182", %".4618"
  %".4619" = bitcast ptr %"R44" to ptr
  store float %"fadd.163", ptr %".4619"
  ; FFMA R56, R12.reuse, R23, R56
  %".4622" = load float, ptr %"R12"
  %".4623" = load float, ptr %"R23"
  %".4624" = load float, ptr %"R56"
  %"fmul.183" = fmul float %".4622", %".4623"
  %"fadd.164" = fadd float %"fmul.183", %".4624"
  %".4625" = bitcast ptr %"R56" to ptr
  store float %"fadd.164", ptr %".4625"
  ; FFMA R21, R12, R22, R21
  %".4628" = load float, ptr %"R12"
  %".4629" = load float, ptr %"R22"
  %".4630" = load float, ptr %"R21"
  %"fmul.184" = fmul float %".4628", %".4629"
  %"fadd.165" = fadd float %"fmul.184", %".4630"
  %".4631" = bitcast ptr %"R21" to ptr
  store float %"fadd.165", ptr %".4631"
  ; @!P0 BRA `(.L_x_25)
  %".4634" = load i1, ptr %"P0"
  %".4635" = icmp eq i1 %".4634", 1
  br i1 %".4635", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".4638" = load i32, ptr %"R15"
  %".4639" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".4638", 2
  %".4640" = and i1 %"cmp.41", %".4639"
  store i1 %".4640", ptr %"P0"
  ; LDG.E.SYS R13, [R4+0x4]
  %".4643" = load i32, ptr %"R4"
  %"zext.521" = zext i32 %".4643" to i64
  %".4644" = load i32, ptr %"R5"
  %"zext.522" = zext i32 %".4644" to i64
  %"shl.224" = shl i64 %"zext.522", 32
  %"or.200" = or i64 %"shl.224", %"zext.521"
  %".4645" = inttoptr i64 %"or.200" to ptr
  %".4646" = ptrtoint ptr %".4645" to i64
  %".4647" = add i64 %".4646", 4
  %"for_LDG.179" = inttoptr i64 %".4647" to ptr
  %".4648" = load float, ptr %"for_LDG.179"
  %".4649" = bitcast ptr %"R13" to ptr
  store float %".4648", ptr %".4649"
  ; LDG.E.SYS R12, [R6+0x4]
  %".4652" = load i32, ptr %"R6"
  %"zext.523" = zext i32 %".4652" to i64
  %".4653" = load i32, ptr %"R7"
  %"zext.524" = zext i32 %".4653" to i64
  %"shl.225" = shl i64 %"zext.524", 32
  %"or.201" = or i64 %"shl.225", %"zext.523"
  %".4654" = inttoptr i64 %"or.201" to ptr
  %".4655" = ptrtoint ptr %".4654" to i64
  %".4656" = add i64 %".4655", 4
  %"for_LDG.180" = inttoptr i64 %".4656" to ptr
  %".4657" = load float, ptr %"for_LDG.180"
  %".4658" = bitcast ptr %"R12" to ptr
  store float %".4657", ptr %".4658"
  ; LDG.E.SYS R23, [R8+0x4]
  %".4661" = load i32, ptr %"R8"
  %"zext.525" = zext i32 %".4661" to i64
  %".4662" = load i32, ptr %"R9"
  %"zext.526" = zext i32 %".4662" to i64
  %"shl.226" = shl i64 %"zext.526", 32
  %"or.202" = or i64 %"shl.226", %"zext.525"
  %".4663" = inttoptr i64 %"or.202" to ptr
  %".4664" = ptrtoint ptr %".4663" to i64
  %".4665" = add i64 %".4664", 4
  %"for_LDG.181" = inttoptr i64 %".4665" to ptr
  %".4666" = load float, ptr %"for_LDG.181"
  %".4667" = bitcast ptr %"R23" to ptr
  store float %".4666", ptr %".4667"
  ; LDG.E.SYS R22, [R10+0x4]
  %".4670" = load i32, ptr %"R10"
  %"zext.527" = zext i32 %".4670" to i64
  %".4671" = load i32, ptr %"R11"
  %"zext.528" = zext i32 %".4671" to i64
  %"shl.227" = shl i64 %"zext.528", 32
  %"or.203" = or i64 %"shl.227", %"zext.527"
  %".4672" = inttoptr i64 %"or.203" to ptr
  %".4673" = ptrtoint ptr %".4672" to i64
  %".4674" = add i64 %".4673", 4
  %"for_LDG.182" = inttoptr i64 %".4674" to ptr
  %".4675" = load float, ptr %"for_LDG.182"
  %".4676" = bitcast ptr %"R22" to ptr
  store float %".4675", ptr %".4676"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".4679" = load i1, ptr %"P0"
  %".4680" = icmp ne i1 %".4679", 1
  br i1 %".4680", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".4683" = load i32, ptr %"R4"
  %"zext.529" = zext i32 %".4683" to i64
  %".4684" = load i32, ptr %"R5"
  %"zext.530" = zext i32 %".4684" to i64
  %"shl.228" = shl i64 %"zext.530", 32
  %"or.204" = or i64 %"shl.228", %"zext.529"
  %".4685" = inttoptr i64 %"or.204" to ptr
  %".4686" = ptrtoint ptr %".4685" to i64
  %".4687" = add i64 %".4686", 8
  %"for_LDG.183" = inttoptr i64 %".4687" to ptr
  %".4688" = load float, ptr %"for_LDG.183"
  %".4689" = bitcast ptr %"R25" to ptr
  store float %".4688", ptr %".4689"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".4694" = load i1, ptr %"P0"
  %".4695" = icmp ne i1 %".4694", 1
  br i1 %".4695", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".4698" = load i32, ptr %"R6"
  %"zext.531" = zext i32 %".4698" to i64
  %".4699" = load i32, ptr %"R7"
  %"zext.532" = zext i32 %".4699" to i64
  %"shl.229" = shl i64 %"zext.532", 32
  %"or.205" = or i64 %"shl.229", %"zext.531"
  %".4700" = inttoptr i64 %"or.205" to ptr
  %".4701" = ptrtoint ptr %".4700" to i64
  %".4702" = add i64 %".4701", 8
  %"for_LDG.184" = inttoptr i64 %".4702" to ptr
  %".4703" = load float, ptr %"for_LDG.184"
  %".4704" = bitcast ptr %"R24" to ptr
  store float %".4703", ptr %".4704"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".4709" = load i1, ptr %"P0"
  %".4710" = icmp ne i1 %".4709", 1
  br i1 %".4710", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".4713" = load i32, ptr %"R8"
  %"zext.533" = zext i32 %".4713" to i64
  %".4714" = load i32, ptr %"R9"
  %"zext.534" = zext i32 %".4714" to i64
  %"shl.230" = shl i64 %"zext.534", 32
  %"or.206" = or i64 %"shl.230", %"zext.533"
  %".4715" = inttoptr i64 %"or.206" to ptr
  %".4716" = ptrtoint ptr %".4715" to i64
  %".4717" = add i64 %".4716", 8
  %"for_LDG.185" = inttoptr i64 %".4717" to ptr
  %".4718" = load float, ptr %"for_LDG.185"
  %".4719" = bitcast ptr %"R35" to ptr
  store float %".4718", ptr %".4719"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".4724" = load i1, ptr %"P0"
  %".4725" = icmp ne i1 %".4724", 1
  br i1 %".4725", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".4728" = load i32, ptr %"R10"
  %"zext.535" = zext i32 %".4728" to i64
  %".4729" = load i32, ptr %"R11"
  %"zext.536" = zext i32 %".4729" to i64
  %"shl.231" = shl i64 %"zext.536", 32
  %"or.207" = or i64 %"shl.231", %"zext.535"
  %".4730" = inttoptr i64 %"or.207" to ptr
  %".4731" = ptrtoint ptr %".4730" to i64
  %".4732" = add i64 %".4731", 8
  %"for_LDG.186" = inttoptr i64 %".4732" to ptr
  %".4733" = load float, ptr %"for_LDG.186"
  %".4734" = bitcast ptr %"R34" to ptr
  store float %".4733", ptr %".4734"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".4739" = load float, ptr %"R13"
  %".4740" = load float, ptr %"R12"
  %".4741" = load float, ptr %"R44"
  %"fmul.185" = fmul float %".4739", %".4740"
  %"fadd.166" = fadd float %"fmul.185", %".4741"
  %".4742" = bitcast ptr %"R44" to ptr
  store float %"fadd.166", ptr %".4742"
  ; FFMA R56, R12.reuse, R23, R56
  %".4745" = load float, ptr %"R12"
  %".4746" = load float, ptr %"R23"
  %".4747" = load float, ptr %"R56"
  %"fmul.186" = fmul float %".4745", %".4746"
  %"fadd.167" = fadd float %"fmul.186", %".4747"
  %".4748" = bitcast ptr %"R56" to ptr
  store float %"fadd.167", ptr %".4748"
  ; FFMA R21, R12, R22, R21
  %".4751" = load float, ptr %"R12"
  %".4752" = load float, ptr %"R22"
  %".4753" = load float, ptr %"R21"
  %"fmul.187" = fmul float %".4751", %".4752"
  %"fadd.168" = fadd float %"fmul.187", %".4753"
  %".4754" = bitcast ptr %"R21" to ptr
  store float %"fadd.168", ptr %".4754"
  ; @P0 FFMA R44, R25, R24, R44
  %".4757" = load i1, ptr %"P0"
  %".4758" = icmp ne i1 %".4757", 1
  br i1 %".4758", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".4761" = load float, ptr %"R25"
  %".4762" = load float, ptr %"R24"
  %".4763" = load float, ptr %"R44"
  %"fmul.188" = fmul float %".4761", %".4762"
  %"fadd.169" = fadd float %"fmul.188", %".4763"
  %".4764" = bitcast ptr %"R44" to ptr
  store float %"fadd.169", ptr %".4764"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".4769" = load i1, ptr %"P0"
  %".4770" = icmp ne i1 %".4769", 1
  br i1 %".4770", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".4773" = load float, ptr %"R24"
  %".4774" = load float, ptr %"R35"
  %".4775" = load float, ptr %"R56"
  %"fmul.189" = fmul float %".4773", %".4774"
  %"fadd.170" = fadd float %"fmul.189", %".4775"
  %".4776" = bitcast ptr %"R56" to ptr
  store float %"fadd.170", ptr %".4776"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".4781" = load i1, ptr %"P0"
  %".4782" = icmp ne i1 %".4781", 1
  br i1 %".4782", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".4785" = load float, ptr %"R24"
  %".4786" = load float, ptr %"R34"
  %".4787" = load float, ptr %"R21"
  %"fmul.190" = fmul float %".4785", %".4786"
  %"fadd.171" = fadd float %"fmul.190", %".4787"
  %".4788" = bitcast ptr %"R21" to ptr
  store float %"fadd.171", ptr %".4788"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".4793" = load i1, ptr %"P4"
  %".4794" = icmp eq i1 %".4793", 1
  br i1 %".4794", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4797" = load i32, ptr %"R18"
  %".4798" = load i1, ptr %"PT"
  %"cmp.42" = icmp sge i32 %".4797", 3
  %".4799" = and i1 %"cmp.42", %".4798"
  store i1 %".4799", ptr %"P0"
  ; MOV R23, RZ
  %".4802" = load i32, ptr %"RZ"
  store i32 %".4802", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".4805" = load i1, ptr %"P0"
  %".4806" = icmp eq i1 %".4805", 1
  br i1 %".4806", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4809" = load i32, ptr %"R20"
  %".4810" = load i1, ptr %"PT"
  %"cmp.43" = icmp sgt i32 %".4809", 0
  %".4811" = and i1 %"cmp.43", %".4810"
  store i1 %".4811", ptr %"P0"
  ; MOV R23, RZ
  %".4814" = load i32, ptr %"RZ"
  store i32 %".4814", ptr %"R23"
  ; MOV R22, R20
  %".4817" = load i32, ptr %"R20"
  store i32 %".4817", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".4820" = load i1, ptr %"P0"
  %".4821" = icmp eq i1 %".4820", 1
  br i1 %".4821", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4824" = load i32, ptr %"R22"
  %".4825" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".4824", 12
  %".4826" = and i1 %"cmp.44", %".4825"
  store i1 %".4826", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4829" = and i1 1, 1
  %".4830" = or i1 %".4829", 1
  ; @!P1 BRA `(.L_x_29)
  %".4832" = load i1, ptr %"P1"
  %".4833" = icmp eq i1 %".4832", 1
  br i1 %".4833", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4836" = xor i1 1, 1
  %".4837" = and i1 %".4836", 1
  %".4838" = and i1 %".4837", 1
  br label %".L_x_30"
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".4841" = load i32, ptr %"R0"
  %".4842" = load i32, ptr %"R23"
  %"add.204" = add i32 %".4841", %".4842"
  %"add.205" = add i32 %"add.204", 0
  store i32 %"add.205", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".4847" = load i32, ptr %"R2"
  %".4848" = load i32, ptr %"R25"
  %"mul.62" = mul i32 %".4847", 3
  %"add.206" = add i32 %"mul.62", %".4848"
  store i32 %"add.206", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".4851" = load i32, ptr %"R2"
  %".4852" = load i32, ptr %"R25"
  %"shl.232" = shl i32 %".4851", 2
  %"add.207" = add i32 %"shl.232", %".4852"
  store i32 %"add.207", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".4855" = load i32, ptr %"R23"
  %".4856" = load i32, ptr %"R24"
  %"zext.537" = zext i32 %".4855" to i64
  %"zext.538" = zext i32 %".4856" to i64
  %"mul.63" = mul i64 %"zext.537", %"zext.538"
  %".4857" = ptrtoint ptr %"Arg_1" to i64
  %"add.208" = add i64 %"mul.63", %".4857"
  %".4858" = and i64 %"add.208", 18446744069414584320
  %".4859" = lshr i64 %".4858", 32
  %"trunc32.120" = trunc i64 %".4859" to i32
  %"trunc32.121" = trunc i64 %"add.208" to i32
  store i32 %"trunc32.121", ptr %"R36"
  store i32 %"trunc32.120", ptr %"R37"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".4863" = load i32, ptr %"R35"
  %".4864" = load i32, ptr %"R24"
  %"zext.539" = zext i32 %".4863" to i64
  %"zext.540" = zext i32 %".4864" to i64
  %"mul.64" = mul i64 %"zext.539", %"zext.540"
  %".4865" = ptrtoint ptr %"Arg_2" to i64
  %"add.209" = add i64 %"mul.64", %".4865"
  %".4866" = and i64 %"add.209", 18446744069414584320
  %".4867" = lshr i64 %".4866", 32
  %"trunc32.122" = trunc i64 %".4867" to i32
  %"trunc32.123" = trunc i64 %"add.209" to i32
  store i32 %"trunc32.123", ptr %"R8"
  store i32 %"trunc32.122", ptr %"R9"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".4871" = load i32, ptr %"R25"
  %".4872" = load i32, ptr %"R24"
  %"zext.541" = zext i32 %".4871" to i64
  %"zext.542" = zext i32 %".4872" to i64
  %"mul.65" = mul i64 %"zext.541", %"zext.542"
  %".4873" = ptrtoint ptr %"Arg_2" to i64
  %"add.210" = add i64 %"mul.65", %".4873"
  %".4874" = and i64 %"add.210", 18446744069414584320
  %".4875" = lshr i64 %".4874", 32
  %"trunc32.124" = trunc i64 %".4875" to i32
  %"trunc32.125" = trunc i64 %"add.210" to i32
  store i32 %"trunc32.125", ptr %"R12"
  store i32 %"trunc32.124", ptr %"R13"
  ; LDG.E.SYS R39, [R36]
  %".4879" = load i32, ptr %"R36"
  %"zext.543" = zext i32 %".4879" to i64
  %".4880" = load i32, ptr %"R37"
  %"zext.544" = zext i32 %".4880" to i64
  %"shl.233" = shl i64 %"zext.544", 32
  %"or.208" = or i64 %"shl.233", %"zext.543"
  %".4881" = inttoptr i64 %"or.208" to ptr
  %".4882" = ptrtoint ptr %".4881" to i64
  %".4883" = add i64 %".4882", 0
  %"for_LDG.187" = inttoptr i64 %".4883" to ptr
  %".4884" = load float, ptr %"for_LDG.187"
  %".4885" = bitcast ptr %"R39" to ptr
  store float %".4884", ptr %".4885"
  ; LDG.E.SYS R41, [R8]
  %".4888" = load i32, ptr %"R8"
  %"zext.545" = zext i32 %".4888" to i64
  %".4889" = load i32, ptr %"R9"
  %"zext.546" = zext i32 %".4889" to i64
  %"shl.234" = shl i64 %"zext.546", 32
  %"or.209" = or i64 %"shl.234", %"zext.545"
  %".4890" = inttoptr i64 %"or.209" to ptr
  %".4891" = ptrtoint ptr %".4890" to i64
  %".4892" = add i64 %".4891", 0
  %"for_LDG.188" = inttoptr i64 %".4892" to ptr
  %".4893" = load float, ptr %"for_LDG.188"
  %".4894" = bitcast ptr %"R41" to ptr
  store float %".4893", ptr %".4894"
  ; LDG.E.SYS R40, [R12]
  %".4897" = load i32, ptr %"R12"
  %"zext.547" = zext i32 %".4897" to i64
  %".4898" = load i32, ptr %"R13"
  %"zext.548" = zext i32 %".4898" to i64
  %"shl.235" = shl i64 %"zext.548", 32
  %"or.210" = or i64 %"shl.235", %"zext.547"
  %".4899" = inttoptr i64 %"or.210" to ptr
  %".4900" = ptrtoint ptr %".4899" to i64
  %".4901" = add i64 %".4900", 0
  %"for_LDG.189" = inttoptr i64 %".4901" to ptr
  %".4902" = load float, ptr %"for_LDG.189"
  %".4903" = bitcast ptr %"R40" to ptr
  store float %".4902", ptr %".4903"
  ; LDG.E.SYS R52, [R36+0x4]
  %".4906" = load i32, ptr %"R36"
  %"zext.549" = zext i32 %".4906" to i64
  %".4907" = load i32, ptr %"R37"
  %"zext.550" = zext i32 %".4907" to i64
  %"shl.236" = shl i64 %"zext.550", 32
  %"or.211" = or i64 %"shl.236", %"zext.549"
  %".4908" = inttoptr i64 %"or.211" to ptr
  %".4909" = ptrtoint ptr %".4908" to i64
  %".4910" = add i64 %".4909", 4
  %"for_LDG.190" = inttoptr i64 %".4910" to ptr
  %".4911" = load float, ptr %"for_LDG.190"
  %".4912" = bitcast ptr %"R52" to ptr
  store float %".4911", ptr %".4912"
  ; LDG.E.SYS R53, [R8+0x4]
  %".4915" = load i32, ptr %"R8"
  %"zext.551" = zext i32 %".4915" to i64
  %".4916" = load i32, ptr %"R9"
  %"zext.552" = zext i32 %".4916" to i64
  %"shl.237" = shl i64 %"zext.552", 32
  %"or.212" = or i64 %"shl.237", %"zext.551"
  %".4917" = inttoptr i64 %"or.212" to ptr
  %".4918" = ptrtoint ptr %".4917" to i64
  %".4919" = add i64 %".4918", 4
  %"for_LDG.191" = inttoptr i64 %".4919" to ptr
  %".4920" = load float, ptr %"for_LDG.191"
  %".4921" = bitcast ptr %"R53" to ptr
  store float %".4920", ptr %".4921"
  ; LDG.E.SYS R55, [R12+0x4]
  %".4924" = load i32, ptr %"R12"
  %"zext.553" = zext i32 %".4924" to i64
  %".4925" = load i32, ptr %"R13"
  %"zext.554" = zext i32 %".4925" to i64
  %"shl.238" = shl i64 %"zext.554", 32
  %"or.213" = or i64 %"shl.238", %"zext.553"
  %".4926" = inttoptr i64 %"or.213" to ptr
  %".4927" = ptrtoint ptr %".4926" to i64
  %".4928" = add i64 %".4927", 4
  %"for_LDG.192" = inttoptr i64 %".4928" to ptr
  %".4929" = load float, ptr %"for_LDG.192"
  %".4930" = bitcast ptr %"R55" to ptr
  store float %".4929", ptr %".4930"
  ; IADD3 R11, R23, 0x4, RZ
  %".4933" = load i32, ptr %"R23"
  %"add.211" = add i32 %".4933", 4
  %"add.212" = add i32 %"add.211", 0
  store i32 %"add.212", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".4936" = load i32, ptr %"R36"
  %"zext.555" = zext i32 %".4936" to i64
  %".4937" = load i32, ptr %"R37"
  %"zext.556" = zext i32 %".4937" to i64
  %"shl.239" = shl i64 %"zext.556", 32
  %"or.214" = or i64 %"shl.239", %"zext.555"
  %".4938" = inttoptr i64 %"or.214" to ptr
  %".4939" = ptrtoint ptr %".4938" to i64
  %".4940" = add i64 %".4939", 8
  %"for_LDG.193" = inttoptr i64 %".4940" to ptr
  %".4941" = load float, ptr %"for_LDG.193"
  %".4942" = bitcast ptr %"R50" to ptr
  store float %".4941", ptr %".4942"
  ; IADD3 R7, R35, 0x4, RZ
  %".4945" = load i32, ptr %"R35"
  %"add.213" = add i32 %".4945", 4
  %"add.214" = add i32 %"add.213", 0
  store i32 %"add.214", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4948" = load i32, ptr %"R8"
  %"zext.557" = zext i32 %".4948" to i64
  %".4949" = load i32, ptr %"R9"
  %"zext.558" = zext i32 %".4949" to i64
  %"shl.240" = shl i64 %"zext.558", 32
  %"or.215" = or i64 %"shl.240", %"zext.557"
  %".4950" = inttoptr i64 %"or.215" to ptr
  %".4951" = ptrtoint ptr %".4950" to i64
  %".4952" = add i64 %".4951", 8
  %"for_LDG.194" = inttoptr i64 %".4952" to ptr
  %".4953" = load float, ptr %"for_LDG.194"
  %".4954" = bitcast ptr %"R43" to ptr
  store float %".4953", ptr %".4954"
  ; IADD3 R5, R25, 0x4, RZ
  %".4957" = load i32, ptr %"R25"
  %"add.215" = add i32 %".4957", 4
  %"add.216" = add i32 %"add.215", 0
  store i32 %"add.216", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".4960" = load i32, ptr %"R12"
  %"zext.559" = zext i32 %".4960" to i64
  %".4961" = load i32, ptr %"R13"
  %"zext.560" = zext i32 %".4961" to i64
  %"shl.241" = shl i64 %"zext.560", 32
  %"or.216" = or i64 %"shl.241", %"zext.559"
  %".4962" = inttoptr i64 %"or.216" to ptr
  %".4963" = ptrtoint ptr %".4962" to i64
  %".4964" = add i64 %".4963", 8
  %"for_LDG.195" = inttoptr i64 %".4964" to ptr
  %".4965" = load float, ptr %"for_LDG.195"
  %".4966" = bitcast ptr %"R51" to ptr
  store float %".4965", ptr %".4966"
  ; LDG.E.SYS R47, [R36+0xc]
  %".4969" = load i32, ptr %"R36"
  %"zext.561" = zext i32 %".4969" to i64
  %".4970" = load i32, ptr %"R37"
  %"zext.562" = zext i32 %".4970" to i64
  %"shl.242" = shl i64 %"zext.562", 32
  %"or.217" = or i64 %"shl.242", %"zext.561"
  %".4971" = inttoptr i64 %"or.217" to ptr
  %".4972" = ptrtoint ptr %".4971" to i64
  %".4973" = add i64 %".4972", 12
  %"for_LDG.196" = inttoptr i64 %".4973" to ptr
  %".4974" = load float, ptr %"for_LDG.196"
  %".4975" = bitcast ptr %"R47" to ptr
  store float %".4974", ptr %".4975"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4978" = load i32, ptr %"R8"
  %"zext.563" = zext i32 %".4978" to i64
  %".4979" = load i32, ptr %"R9"
  %"zext.564" = zext i32 %".4979" to i64
  %"shl.243" = shl i64 %"zext.564", 32
  %"or.218" = or i64 %"shl.243", %"zext.563"
  %".4980" = inttoptr i64 %"or.218" to ptr
  %".4981" = ptrtoint ptr %".4980" to i64
  %".4982" = add i64 %".4981", 12
  %"for_LDG.197" = inttoptr i64 %".4982" to ptr
  %".4983" = load float, ptr %"for_LDG.197"
  %".4984" = bitcast ptr %"R54" to ptr
  store float %".4983", ptr %".4984"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4987" = load i32, ptr %"R12"
  %"zext.565" = zext i32 %".4987" to i64
  %".4988" = load i32, ptr %"R13"
  %"zext.566" = zext i32 %".4988" to i64
  %"shl.244" = shl i64 %"zext.566", 32
  %"or.219" = or i64 %"shl.244", %"zext.565"
  %".4989" = inttoptr i64 %"or.219" to ptr
  %".4990" = ptrtoint ptr %".4989" to i64
  %".4991" = add i64 %".4990", 12
  %"for_LDG.198" = inttoptr i64 %".4991" to ptr
  %".4992" = load float, ptr %"for_LDG.198"
  %".4993" = bitcast ptr %"R58" to ptr
  store float %".4992", ptr %".4993"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4996" = load i32, ptr %"R11"
  %".4997" = load i32, ptr %"R24"
  %"zext.567" = zext i32 %".4996" to i64
  %"zext.568" = zext i32 %".4997" to i64
  %"mul.66" = mul i64 %"zext.567", %"zext.568"
  %".4998" = ptrtoint ptr %"Arg_1" to i64
  %"add.217" = add i64 %"mul.66", %".4998"
  %".4999" = and i64 %"add.217", 18446744069414584320
  %".5000" = lshr i64 %".4999", 32
  %"trunc32.126" = trunc i64 %".5000" to i32
  %"trunc32.127" = trunc i64 %"add.217" to i32
  store i32 %"trunc32.127", ptr %"R10"
  store i32 %"trunc32.126", ptr %"R11"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".5004" = load i32, ptr %"R7"
  %".5005" = load i32, ptr %"R24"
  %"zext.569" = zext i32 %".5004" to i64
  %"zext.570" = zext i32 %".5005" to i64
  %"mul.67" = mul i64 %"zext.569", %"zext.570"
  %".5006" = ptrtoint ptr %"Arg_2" to i64
  %"add.218" = add i64 %"mul.67", %".5006"
  %".5007" = and i64 %"add.218", 18446744069414584320
  %".5008" = lshr i64 %".5007", 32
  %"trunc32.128" = trunc i64 %".5008" to i32
  %"trunc32.129" = trunc i64 %"add.218" to i32
  store i32 %"trunc32.129", ptr %"R6"
  store i32 %"trunc32.128", ptr %"R7"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".5012" = load i32, ptr %"R5"
  %".5013" = load i32, ptr %"R24"
  %"zext.571" = zext i32 %".5012" to i64
  %"zext.572" = zext i32 %".5013" to i64
  %"mul.68" = mul i64 %"zext.571", %"zext.572"
  %".5014" = ptrtoint ptr %"Arg_2" to i64
  %"add.219" = add i64 %"mul.68", %".5014"
  %".5015" = and i64 %"add.219", 18446744069414584320
  %".5016" = lshr i64 %".5015", 32
  %"trunc32.130" = trunc i64 %".5016" to i32
  %"trunc32.131" = trunc i64 %"add.219" to i32
  store i32 %"trunc32.131", ptr %"R4"
  store i32 %"trunc32.130", ptr %"R5"
  ; LDG.E.SYS R46, [R10]
  %".5020" = load i32, ptr %"R10"
  %"zext.573" = zext i32 %".5020" to i64
  %".5021" = load i32, ptr %"R11"
  %"zext.574" = zext i32 %".5021" to i64
  %"shl.245" = shl i64 %"zext.574", 32
  %"or.220" = or i64 %"shl.245", %"zext.573"
  %".5022" = inttoptr i64 %"or.220" to ptr
  %".5023" = ptrtoint ptr %".5022" to i64
  %".5024" = add i64 %".5023", 0
  %"for_LDG.199" = inttoptr i64 %".5024" to ptr
  %".5025" = load float, ptr %"for_LDG.199"
  %".5026" = bitcast ptr %"R46" to ptr
  store float %".5025", ptr %".5026"
  ; LDG.E.SYS R42, [R6]
  %".5029" = load i32, ptr %"R6"
  %"zext.575" = zext i32 %".5029" to i64
  %".5030" = load i32, ptr %"R7"
  %"zext.576" = zext i32 %".5030" to i64
  %"shl.246" = shl i64 %"zext.576", 32
  %"or.221" = or i64 %"shl.246", %"zext.575"
  %".5031" = inttoptr i64 %"or.221" to ptr
  %".5032" = ptrtoint ptr %".5031" to i64
  %".5033" = add i64 %".5032", 0
  %"for_LDG.200" = inttoptr i64 %".5033" to ptr
  %".5034" = load float, ptr %"for_LDG.200"
  %".5035" = bitcast ptr %"R42" to ptr
  store float %".5034", ptr %".5035"
  ; LDG.E.SYS R45, [R4]
  %".5038" = load i32, ptr %"R4"
  %"zext.577" = zext i32 %".5038" to i64
  %".5039" = load i32, ptr %"R5"
  %"zext.578" = zext i32 %".5039" to i64
  %"shl.247" = shl i64 %"zext.578", 32
  %"or.222" = or i64 %"shl.247", %"zext.577"
  %".5040" = inttoptr i64 %"or.222" to ptr
  %".5041" = ptrtoint ptr %".5040" to i64
  %".5042" = add i64 %".5041", 0
  %"for_LDG.201" = inttoptr i64 %".5042" to ptr
  %".5043" = load float, ptr %"for_LDG.201"
  %".5044" = bitcast ptr %"R45" to ptr
  store float %".5043", ptr %".5044"
  ; LDG.E.SYS R34, [R10+0x4]
  %".5047" = load i32, ptr %"R10"
  %"zext.579" = zext i32 %".5047" to i64
  %".5048" = load i32, ptr %"R11"
  %"zext.580" = zext i32 %".5048" to i64
  %"shl.248" = shl i64 %"zext.580", 32
  %"or.223" = or i64 %"shl.248", %"zext.579"
  %".5049" = inttoptr i64 %"or.223" to ptr
  %".5050" = ptrtoint ptr %".5049" to i64
  %".5051" = add i64 %".5050", 4
  %"for_LDG.202" = inttoptr i64 %".5051" to ptr
  %".5052" = load float, ptr %"for_LDG.202"
  %".5053" = bitcast ptr %"R34" to ptr
  store float %".5052", ptr %".5053"
  ; LDG.E.SYS R37, [R6+0x4]
  %".5056" = load i32, ptr %"R6"
  %"zext.581" = zext i32 %".5056" to i64
  %".5057" = load i32, ptr %"R7"
  %"zext.582" = zext i32 %".5057" to i64
  %"shl.249" = shl i64 %"zext.582", 32
  %"or.224" = or i64 %"shl.249", %"zext.581"
  %".5058" = inttoptr i64 %"or.224" to ptr
  %".5059" = ptrtoint ptr %".5058" to i64
  %".5060" = add i64 %".5059", 4
  %"for_LDG.203" = inttoptr i64 %".5060" to ptr
  %".5061" = load float, ptr %"for_LDG.203"
  %".5062" = bitcast ptr %"R37" to ptr
  store float %".5061", ptr %".5062"
  ; IADD3 R9, R23, 0x8, RZ
  %".5065" = load i32, ptr %"R23"
  %"add.220" = add i32 %".5065", 8
  %"add.221" = add i32 %"add.220", 0
  store i32 %"add.221", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".5068" = load i32, ptr %"R10"
  %"zext.583" = zext i32 %".5068" to i64
  %".5069" = load i32, ptr %"R11"
  %"zext.584" = zext i32 %".5069" to i64
  %"shl.250" = shl i64 %"zext.584", 32
  %"or.225" = or i64 %"shl.250", %"zext.583"
  %".5070" = inttoptr i64 %"or.225" to ptr
  %".5071" = ptrtoint ptr %".5070" to i64
  %".5072" = add i64 %".5071", 8
  %"for_LDG.204" = inttoptr i64 %".5072" to ptr
  %".5073" = load float, ptr %"for_LDG.204"
  %".5074" = bitcast ptr %"R36" to ptr
  store float %".5073", ptr %".5074"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".5077" = load i32, ptr %"R9"
  %".5078" = load i32, ptr %"R24"
  %"zext.585" = zext i32 %".5077" to i64
  %"zext.586" = zext i32 %".5078" to i64
  %"mul.69" = mul i64 %"zext.585", %"zext.586"
  %".5079" = ptrtoint ptr %"Arg_1" to i64
  %"add.222" = add i64 %"mul.69", %".5079"
  %".5080" = and i64 %"add.222", 18446744069414584320
  %".5081" = lshr i64 %".5080", 32
  %"trunc32.132" = trunc i64 %".5081" to i32
  %"trunc32.133" = trunc i64 %"add.222" to i32
  store i32 %"trunc32.133", ptr %"R8"
  store i32 %"trunc32.132", ptr %"R9"
  ; LDG.E.SYS R38, [R10+0xc]
  %".5085" = load i32, ptr %"R10"
  %"zext.587" = zext i32 %".5085" to i64
  %".5086" = load i32, ptr %"R11"
  %"zext.588" = zext i32 %".5086" to i64
  %"shl.251" = shl i64 %"zext.588", 32
  %"or.226" = or i64 %"shl.251", %"zext.587"
  %".5087" = inttoptr i64 %"or.226" to ptr
  %".5088" = ptrtoint ptr %".5087" to i64
  %".5089" = add i64 %".5088", 12
  %"for_LDG.205" = inttoptr i64 %".5089" to ptr
  %".5090" = load float, ptr %"for_LDG.205"
  %".5091" = bitcast ptr %"R38" to ptr
  store float %".5090", ptr %".5091"
  ; IADD3 R13, R23, 0xc, RZ
  %".5094" = load i32, ptr %"R23"
  %"add.223" = add i32 %".5094", 12
  %"add.224" = add i32 %"add.223", 0
  store i32 %"add.224", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".5097" = load i32, ptr %"R35"
  %"add.225" = add i32 %".5097", 8
  %"add.226" = add i32 %"add.225", 0
  store i32 %"add.226", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".5100" = load i32, ptr %"R13"
  %".5101" = load i32, ptr %"R24"
  %"zext.589" = zext i32 %".5100" to i64
  %"zext.590" = zext i32 %".5101" to i64
  %"mul.70" = mul i64 %"zext.589", %"zext.590"
  %".5102" = ptrtoint ptr %"Arg_1" to i64
  %"add.227" = add i64 %"mul.70", %".5102"
  %".5103" = and i64 %"add.227", 18446744069414584320
  %".5104" = lshr i64 %".5103", 32
  %"trunc32.134" = trunc i64 %".5104" to i32
  %"trunc32.135" = trunc i64 %"add.227" to i32
  store i32 %"trunc32.135", ptr %"R12"
  store i32 %"trunc32.134", ptr %"R13"
  ; FFMA R57, R41, R39, R44
  %".5108" = load float, ptr %"R41"
  %".5109" = load float, ptr %"R39"
  %".5110" = load float, ptr %"R44"
  %"fmul.191" = fmul float %".5108", %".5109"
  %"fadd.172" = fadd float %"fmul.191", %".5110"
  %".5111" = bitcast ptr %"R57" to ptr
  store float %"fadd.172", ptr %".5111"
  ; LDG.E.SYS R41, [R8]
  %".5114" = load i32, ptr %"R8"
  %"zext.591" = zext i32 %".5114" to i64
  %".5115" = load i32, ptr %"R9"
  %"zext.592" = zext i32 %".5115" to i64
  %"shl.252" = shl i64 %"zext.592", 32
  %"or.227" = or i64 %"shl.252", %"zext.591"
  %".5116" = inttoptr i64 %"or.227" to ptr
  %".5117" = ptrtoint ptr %".5116" to i64
  %".5118" = add i64 %".5117", 0
  %"for_LDG.206" = inttoptr i64 %".5118" to ptr
  %".5119" = load float, ptr %"for_LDG.206"
  %".5120" = bitcast ptr %"R41" to ptr
  store float %".5119", ptr %".5120"
  ; FFMA R56, R39, R40, R56
  %".5123" = load float, ptr %"R39"
  %".5124" = load float, ptr %"R40"
  %".5125" = load float, ptr %"R56"
  %"fmul.192" = fmul float %".5123", %".5124"
  %"fadd.173" = fadd float %"fmul.192", %".5125"
  %".5126" = bitcast ptr %"R56" to ptr
  store float %"fadd.173", ptr %".5126"
  ; LDG.E.SYS R40, [R8+0x4]
  %".5129" = load i32, ptr %"R8"
  %"zext.593" = zext i32 %".5129" to i64
  %".5130" = load i32, ptr %"R9"
  %"zext.594" = zext i32 %".5130" to i64
  %"shl.253" = shl i64 %"zext.594", 32
  %"or.228" = or i64 %"shl.253", %"zext.593"
  %".5131" = inttoptr i64 %"or.228" to ptr
  %".5132" = ptrtoint ptr %".5131" to i64
  %".5133" = add i64 %".5132", 4
  %"for_LDG.207" = inttoptr i64 %".5133" to ptr
  %".5134" = load float, ptr %"for_LDG.207"
  %".5135" = bitcast ptr %"R40" to ptr
  store float %".5134", ptr %".5135"
  ; LDG.E.SYS R39, [R8+0x8]
  %".5138" = load i32, ptr %"R8"
  %"zext.595" = zext i32 %".5138" to i64
  %".5139" = load i32, ptr %"R9"
  %"zext.596" = zext i32 %".5139" to i64
  %"shl.254" = shl i64 %"zext.596", 32
  %"or.229" = or i64 %"shl.254", %"zext.595"
  %".5140" = inttoptr i64 %"or.229" to ptr
  %".5141" = ptrtoint ptr %".5140" to i64
  %".5142" = add i64 %".5141", 8
  %"for_LDG.208" = inttoptr i64 %".5142" to ptr
  %".5143" = load float, ptr %"for_LDG.208"
  %".5144" = bitcast ptr %"R39" to ptr
  store float %".5143", ptr %".5144"
  ; FFMA R57, R53, R52, R57
  %".5147" = load float, ptr %"R53"
  %".5148" = load float, ptr %"R52"
  %".5149" = load float, ptr %"R57"
  %"fmul.193" = fmul float %".5147", %".5148"
  %"fadd.174" = fadd float %"fmul.193", %".5149"
  %".5150" = bitcast ptr %"R57" to ptr
  store float %"fadd.174", ptr %".5150"
  ; LDG.E.SYS R44, [R8+0xc]
  %".5153" = load i32, ptr %"R8"
  %"zext.597" = zext i32 %".5153" to i64
  %".5154" = load i32, ptr %"R9"
  %"zext.598" = zext i32 %".5154" to i64
  %"shl.255" = shl i64 %"zext.598", 32
  %"or.230" = or i64 %"shl.255", %"zext.597"
  %".5155" = inttoptr i64 %"or.230" to ptr
  %".5156" = ptrtoint ptr %".5155" to i64
  %".5157" = add i64 %".5156", 12
  %"for_LDG.209" = inttoptr i64 %".5157" to ptr
  %".5158" = load float, ptr %"for_LDG.209"
  %".5159" = bitcast ptr %"R44" to ptr
  store float %".5158", ptr %".5159"
  ; FFMA R59, R52, R55, R56
  %".5162" = load float, ptr %"R52"
  %".5163" = load float, ptr %"R55"
  %".5164" = load float, ptr %"R56"
  %"fmul.194" = fmul float %".5162", %".5163"
  %"fadd.175" = fadd float %"fmul.194", %".5164"
  %".5165" = bitcast ptr %"R59" to ptr
  store float %"fadd.175", ptr %".5165"
  ; LDG.E.SYS R55, [R12]
  %".5168" = load i32, ptr %"R12"
  %"zext.599" = zext i32 %".5168" to i64
  %".5169" = load i32, ptr %"R13"
  %"zext.600" = zext i32 %".5169" to i64
  %"shl.256" = shl i64 %"zext.600", 32
  %"or.231" = or i64 %"shl.256", %"zext.599"
  %".5170" = inttoptr i64 %"or.231" to ptr
  %".5171" = ptrtoint ptr %".5170" to i64
  %".5172" = add i64 %".5171", 0
  %"for_LDG.210" = inttoptr i64 %".5172" to ptr
  %".5173" = load float, ptr %"for_LDG.210"
  %".5174" = bitcast ptr %"R55" to ptr
  store float %".5173", ptr %".5174"
  ; LDG.E.SYS R53, [R12+0x4]
  %".5177" = load i32, ptr %"R12"
  %"zext.601" = zext i32 %".5177" to i64
  %".5178" = load i32, ptr %"R13"
  %"zext.602" = zext i32 %".5178" to i64
  %"shl.257" = shl i64 %"zext.602", 32
  %"or.232" = or i64 %"shl.257", %"zext.601"
  %".5179" = inttoptr i64 %"or.232" to ptr
  %".5180" = ptrtoint ptr %".5179" to i64
  %".5181" = add i64 %".5180", 4
  %"for_LDG.211" = inttoptr i64 %".5181" to ptr
  %".5182" = load float, ptr %"for_LDG.211"
  %".5183" = bitcast ptr %"R53" to ptr
  store float %".5182", ptr %".5183"
  ; FFMA R43, R43, R50, R57
  %".5186" = load float, ptr %"R43"
  %".5187" = load float, ptr %"R50"
  %".5188" = load float, ptr %"R57"
  %"fmul.195" = fmul float %".5186", %".5187"
  %"fadd.176" = fadd float %"fmul.195", %".5188"
  %".5189" = bitcast ptr %"R43" to ptr
  store float %"fadd.176", ptr %".5189"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".5192" = load i32, ptr %"R11"
  %".5193" = load i32, ptr %"R24"
  %"zext.603" = zext i32 %".5192" to i64
  %"zext.604" = zext i32 %".5193" to i64
  %"mul.71" = mul i64 %"zext.603", %"zext.604"
  %".5194" = ptrtoint ptr %"Arg_2" to i64
  %"add.228" = add i64 %"mul.71", %".5194"
  %".5195" = and i64 %"add.228", 18446744069414584320
  %".5196" = lshr i64 %".5195", 32
  %"trunc32.136" = trunc i64 %".5196" to i32
  %"trunc32.137" = trunc i64 %"add.228" to i32
  store i32 %"trunc32.137", ptr %"R8"
  store i32 %"trunc32.136", ptr %"R9"
  ; LDG.E.SYS R52, [R12+0x8]
  %".5200" = load i32, ptr %"R12"
  %"zext.605" = zext i32 %".5200" to i64
  %".5201" = load i32, ptr %"R13"
  %"zext.606" = zext i32 %".5201" to i64
  %"shl.258" = shl i64 %"zext.606", 32
  %"or.233" = or i64 %"shl.258", %"zext.605"
  %".5202" = inttoptr i64 %"or.233" to ptr
  %".5203" = ptrtoint ptr %".5202" to i64
  %".5204" = add i64 %".5203", 8
  %"for_LDG.212" = inttoptr i64 %".5204" to ptr
  %".5205" = load float, ptr %"for_LDG.212"
  %".5206" = bitcast ptr %"R52" to ptr
  store float %".5205", ptr %".5206"
  ; FFMA R51, R50, R51, R59
  %".5209" = load float, ptr %"R50"
  %".5210" = load float, ptr %"R51"
  %".5211" = load float, ptr %"R59"
  %"fmul.196" = fmul float %".5209", %".5210"
  %"fadd.177" = fadd float %"fmul.196", %".5211"
  %".5212" = bitcast ptr %"R51" to ptr
  store float %"fadd.177", ptr %".5212"
  ; IADD3 R57, R25, 0x8, RZ
  %".5215" = load i32, ptr %"R25"
  %"add.229" = add i32 %".5215", 8
  %"add.230" = add i32 %"add.229", 0
  store i32 %"add.230", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".5218" = load i32, ptr %"R4"
  %"zext.607" = zext i32 %".5218" to i64
  %".5219" = load i32, ptr %"R5"
  %"zext.608" = zext i32 %".5219" to i64
  %"shl.259" = shl i64 %"zext.608", 32
  %"or.234" = or i64 %"shl.259", %"zext.607"
  %".5220" = inttoptr i64 %"or.234" to ptr
  %".5221" = ptrtoint ptr %".5220" to i64
  %".5222" = add i64 %".5221", 12
  %"for_LDG.213" = inttoptr i64 %".5222" to ptr
  %".5223" = load float, ptr %"for_LDG.213"
  %".5224" = bitcast ptr %"R59" to ptr
  store float %".5223", ptr %".5224"
  ; FFMA R61, R54, R47, R43
  %".5227" = load float, ptr %"R54"
  %".5228" = load float, ptr %"R47"
  %".5229" = load float, ptr %"R43"
  %"fmul.197" = fmul float %".5227", %".5228"
  %"fadd.178" = fadd float %"fmul.197", %".5229"
  %".5230" = bitcast ptr %"R61" to ptr
  store float %"fadd.178", ptr %".5230"
  ; LDG.E.SYS R50, [R8]
  %".5233" = load i32, ptr %"R8"
  %"zext.609" = zext i32 %".5233" to i64
  %".5234" = load i32, ptr %"R9"
  %"zext.610" = zext i32 %".5234" to i64
  %"shl.260" = shl i64 %"zext.610", 32
  %"or.235" = or i64 %"shl.260", %"zext.609"
  %".5235" = inttoptr i64 %"or.235" to ptr
  %".5236" = ptrtoint ptr %".5235" to i64
  %".5237" = add i64 %".5236", 0
  %"for_LDG.214" = inttoptr i64 %".5237" to ptr
  %".5238" = load float, ptr %"for_LDG.214"
  %".5239" = bitcast ptr %"R50" to ptr
  store float %".5238", ptr %".5239"
  ; FFMA R58, R47, R58, R51
  %".5242" = load float, ptr %"R47"
  %".5243" = load float, ptr %"R58"
  %".5244" = load float, ptr %"R51"
  %"fmul.198" = fmul float %".5242", %".5243"
  %"fadd.179" = fadd float %"fmul.198", %".5244"
  %".5245" = bitcast ptr %"R58" to ptr
  store float %"fadd.179", ptr %".5245"
  ; LDG.E.SYS R43, [R6+0x8]
  %".5248" = load i32, ptr %"R6"
  %"zext.611" = zext i32 %".5248" to i64
  %".5249" = load i32, ptr %"R7"
  %"zext.612" = zext i32 %".5249" to i64
  %"shl.261" = shl i64 %"zext.612", 32
  %"or.236" = or i64 %"shl.261", %"zext.611"
  %".5250" = inttoptr i64 %"or.236" to ptr
  %".5251" = ptrtoint ptr %".5250" to i64
  %".5252" = add i64 %".5251", 8
  %"for_LDG.215" = inttoptr i64 %".5252" to ptr
  %".5253" = load float, ptr %"for_LDG.215"
  %".5254" = bitcast ptr %"R43" to ptr
  store float %".5253", ptr %".5254"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5257" = load i32, ptr %"R4"
  %"zext.613" = zext i32 %".5257" to i64
  %".5258" = load i32, ptr %"R5"
  %"zext.614" = zext i32 %".5258" to i64
  %"shl.262" = shl i64 %"zext.614", 32
  %"or.237" = or i64 %"shl.262", %"zext.613"
  %".5259" = inttoptr i64 %"or.237" to ptr
  %".5260" = ptrtoint ptr %".5259" to i64
  %".5261" = add i64 %".5260", 4
  %"for_LDG.216" = inttoptr i64 %".5261" to ptr
  %".5262" = load float, ptr %"for_LDG.216"
  %".5263" = bitcast ptr %"R47" to ptr
  store float %".5262", ptr %".5263"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".5266" = load i32, ptr %"R57"
  %".5267" = load i32, ptr %"R24"
  %"zext.615" = zext i32 %".5266" to i64
  %"zext.616" = zext i32 %".5267" to i64
  %"mul.72" = mul i64 %"zext.615", %"zext.616"
  %".5268" = ptrtoint ptr %"Arg_2" to i64
  %"add.231" = add i64 %"mul.72", %".5268"
  %".5269" = and i64 %"add.231", 18446744069414584320
  %".5270" = lshr i64 %".5269", 32
  %"trunc32.138" = trunc i64 %".5270" to i32
  %"trunc32.139" = trunc i64 %"add.231" to i32
  store i32 %"trunc32.139", ptr %"R10"
  store i32 %"trunc32.138", ptr %"R11"
  ; LDG.E.SYS R51, [R4+0x8]
  %".5274" = load i32, ptr %"R4"
  %"zext.617" = zext i32 %".5274" to i64
  %".5275" = load i32, ptr %"R5"
  %"zext.618" = zext i32 %".5275" to i64
  %"shl.263" = shl i64 %"zext.618", 32
  %"or.238" = or i64 %"shl.263", %"zext.617"
  %".5276" = inttoptr i64 %"or.238" to ptr
  %".5277" = ptrtoint ptr %".5276" to i64
  %".5278" = add i64 %".5277", 8
  %"for_LDG.217" = inttoptr i64 %".5278" to ptr
  %".5279" = load float, ptr %"for_LDG.217"
  %".5280" = bitcast ptr %"R51" to ptr
  store float %".5279", ptr %".5280"
  ; LDG.E.SYS R57, [R6+0xc]
  %".5283" = load i32, ptr %"R6"
  %"zext.619" = zext i32 %".5283" to i64
  %".5284" = load i32, ptr %"R7"
  %"zext.620" = zext i32 %".5284" to i64
  %"shl.264" = shl i64 %"zext.620", 32
  %"or.239" = or i64 %"shl.264", %"zext.619"
  %".5285" = inttoptr i64 %"or.239" to ptr
  %".5286" = ptrtoint ptr %".5285" to i64
  %".5287" = add i64 %".5286", 12
  %"for_LDG.218" = inttoptr i64 %".5287" to ptr
  %".5288" = load float, ptr %"for_LDG.218"
  %".5289" = bitcast ptr %"R57" to ptr
  store float %".5288", ptr %".5289"
  ; FFMA R42, R42, R46, R61
  %".5292" = load float, ptr %"R42"
  %".5293" = load float, ptr %"R46"
  %".5294" = load float, ptr %"R61"
  %"fmul.199" = fmul float %".5292", %".5293"
  %"fadd.180" = fadd float %"fmul.199", %".5294"
  %".5295" = bitcast ptr %"R42" to ptr
  store float %"fadd.180", ptr %".5295"
  ; IADD3 R25, R25, 0xc, RZ
  %".5298" = load i32, ptr %"R25"
  %"add.232" = add i32 %".5298", 12
  %"add.233" = add i32 %"add.232", 0
  store i32 %"add.233", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".5301" = load i32, ptr %"R12"
  %"zext.621" = zext i32 %".5301" to i64
  %".5302" = load i32, ptr %"R13"
  %"zext.622" = zext i32 %".5302" to i64
  %"shl.265" = shl i64 %"zext.622", 32
  %"or.240" = or i64 %"shl.265", %"zext.621"
  %".5303" = inttoptr i64 %"or.240" to ptr
  %".5304" = ptrtoint ptr %".5303" to i64
  %".5305" = add i64 %".5304", 12
  %"for_LDG.219" = inttoptr i64 %".5305" to ptr
  %".5306" = load float, ptr %"for_LDG.219"
  %".5307" = bitcast ptr %"R56" to ptr
  store float %".5306", ptr %".5307"
  ; FFMA R45, R46, R45, R58
  %".5310" = load float, ptr %"R46"
  %".5311" = load float, ptr %"R45"
  %".5312" = load float, ptr %"R58"
  %"fmul.200" = fmul float %".5310", %".5311"
  %"fadd.181" = fadd float %"fmul.200", %".5312"
  %".5313" = bitcast ptr %"R45" to ptr
  store float %"fadd.181", ptr %".5313"
  ; LDG.E.SYS R46, [R10]
  %".5316" = load i32, ptr %"R10"
  %"zext.623" = zext i32 %".5316" to i64
  %".5317" = load i32, ptr %"R11"
  %"zext.624" = zext i32 %".5317" to i64
  %"shl.266" = shl i64 %"zext.624", 32
  %"or.241" = or i64 %"shl.266", %"zext.623"
  %".5318" = inttoptr i64 %"or.241" to ptr
  %".5319" = ptrtoint ptr %".5318" to i64
  %".5320" = add i64 %".5319", 0
  %"for_LDG.220" = inttoptr i64 %".5320" to ptr
  %".5321" = load float, ptr %"for_LDG.220"
  %".5322" = bitcast ptr %"R46" to ptr
  store float %".5321", ptr %".5322"
  ; LDG.E.SYS R61, [R8+0x4]
  %".5325" = load i32, ptr %"R8"
  %"zext.625" = zext i32 %".5325" to i64
  %".5326" = load i32, ptr %"R9"
  %"zext.626" = zext i32 %".5326" to i64
  %"shl.267" = shl i64 %"zext.626", 32
  %"or.242" = or i64 %"shl.267", %"zext.625"
  %".5327" = inttoptr i64 %"or.242" to ptr
  %".5328" = ptrtoint ptr %".5327" to i64
  %".5329" = add i64 %".5328", 4
  %"for_LDG.221" = inttoptr i64 %".5329" to ptr
  %".5330" = load float, ptr %"for_LDG.221"
  %".5331" = bitcast ptr %"R61" to ptr
  store float %".5330", ptr %".5331"
  ; IADD3 R13, R35, 0xc, RZ
  %".5334" = load i32, ptr %"R35"
  %"add.234" = add i32 %".5334", 12
  %"add.235" = add i32 %"add.234", 0
  store i32 %"add.235", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".5337" = load i32, ptr %"R10"
  %"zext.627" = zext i32 %".5337" to i64
  %".5338" = load i32, ptr %"R11"
  %"zext.628" = zext i32 %".5338" to i64
  %"shl.268" = shl i64 %"zext.628", 32
  %"or.243" = or i64 %"shl.268", %"zext.627"
  %".5339" = inttoptr i64 %"or.243" to ptr
  %".5340" = ptrtoint ptr %".5339" to i64
  %".5341" = add i64 %".5340", 4
  %"for_LDG.222" = inttoptr i64 %".5341" to ptr
  %".5342" = load float, ptr %"for_LDG.222"
  %".5343" = bitcast ptr %"R35" to ptr
  store float %".5342", ptr %".5343"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".5346" = load i32, ptr %"R13"
  %".5347" = load i32, ptr %"R24"
  %"zext.629" = zext i32 %".5346" to i64
  %"zext.630" = zext i32 %".5347" to i64
  %"mul.73" = mul i64 %"zext.629", %"zext.630"
  %".5348" = ptrtoint ptr %"Arg_2" to i64
  %"add.236" = add i64 %"mul.73", %".5348"
  %".5349" = and i64 %"add.236", 18446744069414584320
  %".5350" = lshr i64 %".5349", 32
  %"trunc32.140" = trunc i64 %".5350" to i32
  %"trunc32.141" = trunc i64 %"add.236" to i32
  store i32 %"trunc32.141", ptr %"R12"
  store i32 %"trunc32.140", ptr %"R13"
  ; LDG.E.SYS R6, [R8+0x8]
  %".5354" = load i32, ptr %"R8"
  %"zext.631" = zext i32 %".5354" to i64
  %".5355" = load i32, ptr %"R9"
  %"zext.632" = zext i32 %".5355" to i64
  %"shl.269" = shl i64 %"zext.632", 32
  %"or.244" = or i64 %"shl.269", %"zext.631"
  %".5356" = inttoptr i64 %"or.244" to ptr
  %".5357" = ptrtoint ptr %".5356" to i64
  %".5358" = add i64 %".5357", 8
  %"for_LDG.223" = inttoptr i64 %".5358" to ptr
  %".5359" = load float, ptr %"for_LDG.223"
  %".5360" = bitcast ptr %"R6" to ptr
  store float %".5359", ptr %".5360"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".5363" = load i32, ptr %"R25"
  %".5364" = load i32, ptr %"R24"
  %"zext.633" = zext i32 %".5363" to i64
  %"zext.634" = zext i32 %".5364" to i64
  %"mul.74" = mul i64 %"zext.633", %"zext.634"
  %".5365" = ptrtoint ptr %"Arg_2" to i64
  %"add.237" = add i64 %"mul.74", %".5365"
  %".5366" = and i64 %"add.237", 18446744069414584320
  %".5367" = lshr i64 %".5366", 32
  %"trunc32.142" = trunc i64 %".5367" to i32
  %"trunc32.143" = trunc i64 %"add.237" to i32
  store i32 %"trunc32.143", ptr %"R24"
  store i32 %"trunc32.142", ptr %"R25"
  ; LDG.E.SYS R4, [R10+0x8]
  %".5371" = load i32, ptr %"R10"
  %"zext.635" = zext i32 %".5371" to i64
  %".5372" = load i32, ptr %"R11"
  %"zext.636" = zext i32 %".5372" to i64
  %"shl.270" = shl i64 %"zext.636", 32
  %"or.245" = or i64 %"shl.270", %"zext.635"
  %".5373" = inttoptr i64 %"or.245" to ptr
  %".5374" = ptrtoint ptr %".5373" to i64
  %".5375" = add i64 %".5374", 8
  %"for_LDG.224" = inttoptr i64 %".5375" to ptr
  %".5376" = load float, ptr %"for_LDG.224"
  %".5377" = bitcast ptr %"R4" to ptr
  store float %".5376", ptr %".5377"
  ; LDG.E.SYS R5, [R8+0xc]
  %".5380" = load i32, ptr %"R8"
  %"zext.637" = zext i32 %".5380" to i64
  %".5381" = load i32, ptr %"R9"
  %"zext.638" = zext i32 %".5381" to i64
  %"shl.271" = shl i64 %"zext.638", 32
  %"or.246" = or i64 %"shl.271", %"zext.637"
  %".5382" = inttoptr i64 %"or.246" to ptr
  %".5383" = ptrtoint ptr %".5382" to i64
  %".5384" = add i64 %".5383", 12
  %"for_LDG.225" = inttoptr i64 %".5384" to ptr
  %".5385" = load float, ptr %"for_LDG.225"
  %".5386" = bitcast ptr %"R5" to ptr
  store float %".5385", ptr %".5386"
  ; LDG.E.SYS R60, [R10+0xc]
  %".5389" = load i32, ptr %"R10"
  %"zext.639" = zext i32 %".5389" to i64
  %".5390" = load i32, ptr %"R11"
  %"zext.640" = zext i32 %".5390" to i64
  %"shl.272" = shl i64 %"zext.640", 32
  %"or.247" = or i64 %"shl.272", %"zext.639"
  %".5391" = inttoptr i64 %"or.247" to ptr
  %".5392" = ptrtoint ptr %".5391" to i64
  %".5393" = add i64 %".5392", 12
  %"for_LDG.226" = inttoptr i64 %".5393" to ptr
  %".5394" = load float, ptr %"for_LDG.226"
  %".5395" = bitcast ptr %"R60" to ptr
  store float %".5394", ptr %".5395"
  ; LDG.E.SYS R58, [R12]
  %".5398" = load i32, ptr %"R12"
  %"zext.641" = zext i32 %".5398" to i64
  %".5399" = load i32, ptr %"R13"
  %"zext.642" = zext i32 %".5399" to i64
  %"shl.273" = shl i64 %"zext.642", 32
  %"or.248" = or i64 %"shl.273", %"zext.641"
  %".5400" = inttoptr i64 %"or.248" to ptr
  %".5401" = ptrtoint ptr %".5400" to i64
  %".5402" = add i64 %".5401", 0
  %"for_LDG.227" = inttoptr i64 %".5402" to ptr
  %".5403" = load float, ptr %"for_LDG.227"
  %".5404" = bitcast ptr %"R58" to ptr
  store float %".5403", ptr %".5404"
  ; LDG.E.SYS R54, [R12+0x4]
  %".5407" = load i32, ptr %"R12"
  %"zext.643" = zext i32 %".5407" to i64
  %".5408" = load i32, ptr %"R13"
  %"zext.644" = zext i32 %".5408" to i64
  %"shl.274" = shl i64 %"zext.644", 32
  %"or.249" = or i64 %"shl.274", %"zext.643"
  %".5409" = inttoptr i64 %"or.249" to ptr
  %".5410" = ptrtoint ptr %".5409" to i64
  %".5411" = add i64 %".5410", 4
  %"for_LDG.228" = inttoptr i64 %".5411" to ptr
  %".5412" = load float, ptr %"for_LDG.228"
  %".5413" = bitcast ptr %"R54" to ptr
  store float %".5412", ptr %".5413"
  ; FFMA R10, R37, R34, R42
  %".5416" = load float, ptr %"R37"
  %".5417" = load float, ptr %"R34"
  %".5418" = load float, ptr %"R42"
  %"fmul.201" = fmul float %".5416", %".5417"
  %"fadd.182" = fadd float %"fmul.201", %".5418"
  %".5419" = bitcast ptr %"R10" to ptr
  store float %"fadd.182", ptr %".5419"
  ; LDG.E.SYS R37, [R24]
  %".5422" = load i32, ptr %"R24"
  %"zext.645" = zext i32 %".5422" to i64
  %".5423" = load i32, ptr %"R25"
  %"zext.646" = zext i32 %".5423" to i64
  %"shl.275" = shl i64 %"zext.646", 32
  %"or.250" = or i64 %"shl.275", %"zext.645"
  %".5424" = inttoptr i64 %"or.250" to ptr
  %".5425" = ptrtoint ptr %".5424" to i64
  %".5426" = add i64 %".5425", 0
  %"for_LDG.229" = inttoptr i64 %".5426" to ptr
  %".5427" = load float, ptr %"for_LDG.229"
  %".5428" = bitcast ptr %"R37" to ptr
  store float %".5427", ptr %".5428"
  ; LDG.E.SYS R42, [R24+0x4]
  %".5431" = load i32, ptr %"R24"
  %"zext.647" = zext i32 %".5431" to i64
  %".5432" = load i32, ptr %"R25"
  %"zext.648" = zext i32 %".5432" to i64
  %"shl.276" = shl i64 %"zext.648", 32
  %"or.251" = or i64 %"shl.276", %"zext.647"
  %".5433" = inttoptr i64 %"or.251" to ptr
  %".5434" = ptrtoint ptr %".5433" to i64
  %".5435" = add i64 %".5434", 4
  %"for_LDG.230" = inttoptr i64 %".5435" to ptr
  %".5436" = load float, ptr %"for_LDG.230"
  %".5437" = bitcast ptr %"R42" to ptr
  store float %".5436", ptr %".5437"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5440" = load i32, ptr %"R12"
  %"zext.649" = zext i32 %".5440" to i64
  %".5441" = load i32, ptr %"R13"
  %"zext.650" = zext i32 %".5441" to i64
  %"shl.277" = shl i64 %"zext.650", 32
  %"or.252" = or i64 %"shl.277", %"zext.649"
  %".5442" = inttoptr i64 %"or.252" to ptr
  %".5443" = ptrtoint ptr %".5442" to i64
  %".5444" = add i64 %".5443", 8
  %"for_LDG.231" = inttoptr i64 %".5444" to ptr
  %".5445" = load float, ptr %"for_LDG.231"
  %".5446" = bitcast ptr %"R7" to ptr
  store float %".5445", ptr %".5446"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5449" = load i32, ptr %"R24"
  %"zext.651" = zext i32 %".5449" to i64
  %".5450" = load i32, ptr %"R25"
  %"zext.652" = zext i32 %".5450" to i64
  %"shl.278" = shl i64 %"zext.652", 32
  %"or.253" = or i64 %"shl.278", %"zext.651"
  %".5451" = inttoptr i64 %"or.253" to ptr
  %".5452" = ptrtoint ptr %".5451" to i64
  %".5453" = add i64 %".5452", 8
  %"for_LDG.232" = inttoptr i64 %".5453" to ptr
  %".5454" = load float, ptr %"for_LDG.232"
  %".5455" = bitcast ptr %"R9" to ptr
  store float %".5454", ptr %".5455"
  ; LDG.E.SYS R8, [R24+0xc]
  %".5458" = load i32, ptr %"R24"
  %"zext.653" = zext i32 %".5458" to i64
  %".5459" = load i32, ptr %"R25"
  %"zext.654" = zext i32 %".5459" to i64
  %"shl.279" = shl i64 %"zext.654", 32
  %"or.254" = or i64 %"shl.279", %"zext.653"
  %".5460" = inttoptr i64 %"or.254" to ptr
  %".5461" = ptrtoint ptr %".5460" to i64
  %".5462" = add i64 %".5461", 12
  %"for_LDG.233" = inttoptr i64 %".5462" to ptr
  %".5463" = load float, ptr %"for_LDG.233"
  %".5464" = bitcast ptr %"R8" to ptr
  store float %".5463", ptr %".5464"
  ; LDG.E.SYS R13, [R12+0xc]
  %".5467" = load i32, ptr %"R12"
  %"zext.655" = zext i32 %".5467" to i64
  %".5468" = load i32, ptr %"R13"
  %"zext.656" = zext i32 %".5468" to i64
  %"shl.280" = shl i64 %"zext.656", 32
  %"or.255" = or i64 %"shl.280", %"zext.655"
  %".5469" = inttoptr i64 %"or.255" to ptr
  %".5470" = ptrtoint ptr %".5469" to i64
  %".5471" = add i64 %".5470", 12
  %"for_LDG.234" = inttoptr i64 %".5471" to ptr
  %".5472" = load float, ptr %"for_LDG.234"
  %".5473" = bitcast ptr %"R13" to ptr
  store float %".5472", ptr %".5473"
  ; IADD3 R22, R22, -0x10, RZ
  %".5476" = load i32, ptr %"R22"
  %"add.238" = add i32 %".5476", -16
  %"add.239" = add i32 %"add.238", 0
  store i32 %"add.239", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".5479" = load i32, ptr %"R22"
  %".5480" = load i1, ptr %"PT"
  %"cmp.45" = icmp sgt i32 %".5479", 12
  %".5481" = and i1 %"cmp.45", %".5480"
  store i1 %".5481", ptr %"P1"
  ; IADD3 R23, R23, 0x10, RZ
  %".5484" = load i32, ptr %"R23"
  %"add.240" = add i32 %".5484", 16
  %"add.241" = add i32 %"add.240", 0
  store i32 %"add.241", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".5487" = load float, ptr %"R43"
  %".5488" = load float, ptr %"R36"
  %".5489" = load float, ptr %"R10"
  %"fmul.202" = fmul float %".5487", %".5488"
  %"fadd.183" = fadd float %"fmul.202", %".5489"
  %".5490" = bitcast ptr %"R10" to ptr
  store float %"fadd.183", ptr %".5490"
  ; FFMA R45, R34, R47, R45
  %".5493" = load float, ptr %"R34"
  %".5494" = load float, ptr %"R47"
  %".5495" = load float, ptr %"R45"
  %"fmul.203" = fmul float %".5493", %".5494"
  %"fadd.184" = fadd float %"fmul.203", %".5495"
  %".5496" = bitcast ptr %"R45" to ptr
  store float %"fadd.184", ptr %".5496"
  ; FFMA R45, R36, R51, R45
  %".5499" = load float, ptr %"R36"
  %".5500" = load float, ptr %"R51"
  %".5501" = load float, ptr %"R45"
  %"fmul.204" = fmul float %".5499", %".5500"
  %"fadd.185" = fadd float %"fmul.204", %".5501"
  %".5502" = bitcast ptr %"R45" to ptr
  store float %"fadd.185", ptr %".5502"
  ; FFMA R10, R57, R38, R10
  %".5505" = load float, ptr %"R57"
  %".5506" = load float, ptr %"R38"
  %".5507" = load float, ptr %"R10"
  %"fmul.205" = fmul float %".5505", %".5506"
  %"fadd.186" = fadd float %"fmul.205", %".5507"
  %".5508" = bitcast ptr %"R10" to ptr
  store float %"fadd.186", ptr %".5508"
  ; FFMA R45, R38, R59, R45
  %".5511" = load float, ptr %"R38"
  %".5512" = load float, ptr %"R59"
  %".5513" = load float, ptr %"R45"
  %"fmul.206" = fmul float %".5511", %".5512"
  %"fadd.187" = fadd float %"fmul.206", %".5513"
  %".5514" = bitcast ptr %"R45" to ptr
  store float %"fadd.187", ptr %".5514"
  ; FFMA R10, R50, R41, R10
  %".5517" = load float, ptr %"R50"
  %".5518" = load float, ptr %"R41"
  %".5519" = load float, ptr %"R10"
  %"fmul.207" = fmul float %".5517", %".5518"
  %"fadd.188" = fadd float %"fmul.207", %".5519"
  %".5520" = bitcast ptr %"R10" to ptr
  store float %"fadd.188", ptr %".5520"
  ; FFMA R45, R41, R46, R45
  %".5523" = load float, ptr %"R41"
  %".5524" = load float, ptr %"R46"
  %".5525" = load float, ptr %"R45"
  %"fmul.208" = fmul float %".5523", %".5524"
  %"fadd.189" = fadd float %"fmul.208", %".5525"
  %".5526" = bitcast ptr %"R45" to ptr
  store float %"fadd.189", ptr %".5526"
  ; FFMA R10, R61, R40, R10
  %".5529" = load float, ptr %"R61"
  %".5530" = load float, ptr %"R40"
  %".5531" = load float, ptr %"R10"
  %"fmul.209" = fmul float %".5529", %".5530"
  %"fadd.190" = fadd float %"fmul.209", %".5531"
  %".5532" = bitcast ptr %"R10" to ptr
  store float %"fadd.190", ptr %".5532"
  ; FFMA R35, R40, R35, R45
  %".5535" = load float, ptr %"R40"
  %".5536" = load float, ptr %"R35"
  %".5537" = load float, ptr %"R45"
  %"fmul.210" = fmul float %".5535", %".5536"
  %"fadd.191" = fadd float %"fmul.210", %".5537"
  %".5538" = bitcast ptr %"R35" to ptr
  store float %"fadd.191", ptr %".5538"
  ; FFMA R6, R6, R39, R10
  %".5541" = load float, ptr %"R6"
  %".5542" = load float, ptr %"R39"
  %".5543" = load float, ptr %"R10"
  %"fmul.211" = fmul float %".5541", %".5542"
  %"fadd.192" = fadd float %"fmul.211", %".5543"
  %".5544" = bitcast ptr %"R6" to ptr
  store float %"fadd.192", ptr %".5544"
  ; FFMA R35, R39, R4, R35
  %".5547" = load float, ptr %"R39"
  %".5548" = load float, ptr %"R4"
  %".5549" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".5547", %".5548"
  %"fadd.193" = fadd float %"fmul.212", %".5549"
  %".5550" = bitcast ptr %"R35" to ptr
  store float %"fadd.193", ptr %".5550"
  ; FFMA R5, R5, R44, R6
  %".5553" = load float, ptr %"R5"
  %".5554" = load float, ptr %"R44"
  %".5555" = load float, ptr %"R6"
  %"fmul.213" = fmul float %".5553", %".5554"
  %"fadd.194" = fadd float %"fmul.213", %".5555"
  %".5556" = bitcast ptr %"R5" to ptr
  store float %"fadd.194", ptr %".5556"
  ; FFMA R60, R44, R60, R35
  %".5559" = load float, ptr %"R44"
  %".5560" = load float, ptr %"R60"
  %".5561" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".5559", %".5560"
  %"fadd.195" = fadd float %"fmul.214", %".5561"
  %".5562" = bitcast ptr %"R60" to ptr
  store float %"fadd.195", ptr %".5562"
  ; FFMA R5, R58, R55, R5
  %".5565" = load float, ptr %"R58"
  %".5566" = load float, ptr %"R55"
  %".5567" = load float, ptr %"R5"
  %"fmul.215" = fmul float %".5565", %".5566"
  %"fadd.196" = fadd float %"fmul.215", %".5567"
  %".5568" = bitcast ptr %"R5" to ptr
  store float %"fadd.196", ptr %".5568"
  ; FFMA R5, R54, R53, R5
  %".5571" = load float, ptr %"R54"
  %".5572" = load float, ptr %"R53"
  %".5573" = load float, ptr %"R5"
  %"fmul.216" = fmul float %".5571", %".5572"
  %"fadd.197" = fadd float %"fmul.216", %".5573"
  %".5574" = bitcast ptr %"R5" to ptr
  store float %"fadd.197", ptr %".5574"
  ; FFMA R37, R55, R37, R60
  %".5577" = load float, ptr %"R55"
  %".5578" = load float, ptr %"R37"
  %".5579" = load float, ptr %"R60"
  %"fmul.217" = fmul float %".5577", %".5578"
  %"fadd.198" = fadd float %"fmul.217", %".5579"
  %".5580" = bitcast ptr %"R37" to ptr
  store float %"fadd.198", ptr %".5580"
  ; FFMA R37, R53, R42, R37
  %".5583" = load float, ptr %"R53"
  %".5584" = load float, ptr %"R42"
  %".5585" = load float, ptr %"R37"
  %"fmul.218" = fmul float %".5583", %".5584"
  %"fadd.199" = fadd float %"fmul.218", %".5585"
  %".5586" = bitcast ptr %"R37" to ptr
  store float %"fadd.199", ptr %".5586"
  ; FFMA R5, R7, R52, R5
  %".5589" = load float, ptr %"R7"
  %".5590" = load float, ptr %"R52"
  %".5591" = load float, ptr %"R5"
  %"fmul.219" = fmul float %".5589", %".5590"
  %"fadd.200" = fadd float %"fmul.219", %".5591"
  %".5592" = bitcast ptr %"R5" to ptr
  store float %"fadd.200", ptr %".5592"
  ; FFMA R9, R52, R9, R37
  %".5595" = load float, ptr %"R52"
  %".5596" = load float, ptr %"R9"
  %".5597" = load float, ptr %"R37"
  %"fmul.220" = fmul float %".5595", %".5596"
  %"fadd.201" = fadd float %"fmul.220", %".5597"
  %".5598" = bitcast ptr %"R9" to ptr
  store float %"fadd.201", ptr %".5598"
  ; FFMA R44, R13, R56, R5
  %".5601" = load float, ptr %"R13"
  %".5602" = load float, ptr %"R56"
  %".5603" = load float, ptr %"R5"
  %"fmul.221" = fmul float %".5601", %".5602"
  %"fadd.202" = fadd float %"fmul.221", %".5603"
  %".5604" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5604"
  ; FFMA R56, R56, R8, R9
  %".5607" = load float, ptr %"R56"
  %".5608" = load float, ptr %"R8"
  %".5609" = load float, ptr %"R9"
  %"fmul.222" = fmul float %".5607", %".5608"
  %"fadd.203" = fadd float %"fmul.222", %".5609"
  %".5610" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5610"
  ; @P1 BRA `(.L_x_30)
  %".5613" = load i1, ptr %"P1"
  %".5614" = icmp ne i1 %".5613", 1
  br i1 %".5614", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".5617" = load i32, ptr %"R22"
  %".5618" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5617", 4
  %".5619" = and i1 %"cmp.46", %".5618"
  store i1 %".5619", ptr %"P1"
  ; @!P1 BRA `(.L_x_31)
  %".5622" = load i1, ptr %"P1"
  %".5623" = icmp eq i1 %".5622", 1
  br i1 %".5623", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".5626" = load i32, ptr %"R0"
  %".5627" = load i32, ptr %"R23"
  %"add.242" = add i32 %".5626", %".5627"
  %"add.243" = add i32 %"add.242", 0
  store i32 %"add.243", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".5632" = load i32, ptr %"R2"
  %".5633" = load i32, ptr %"R5"
  %"shl.281" = shl i32 %".5632", 2
  %"add.244" = add i32 %"shl.281", %".5633"
  store i32 %"add.244", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".5636" = load i32, ptr %"R2"
  %".5637" = load i32, ptr %"R5"
  %"mul.75" = mul i32 %".5636", 3
  %"add.245" = add i32 %"mul.75", %".5637"
  store i32 %"add.245", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".5640" = load i32, ptr %"R23"
  %"add.246" = add i32 %".5640", 4
  %"add.247" = add i32 %"add.246", 0
  store i32 %"add.247", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".5643" = load i32, ptr %"R23"
  %".5644" = load i32, ptr %"R25"
  %"zext.657" = zext i32 %".5643" to i64
  %"zext.658" = zext i32 %".5644" to i64
  %"mul.76" = mul i64 %"zext.657", %"zext.658"
  %".5645" = ptrtoint ptr %"Arg_1" to i64
  %"add.248" = add i64 %"mul.76", %".5645"
  %".5646" = and i64 %"add.248", 18446744069414584320
  %".5647" = lshr i64 %".5646", 32
  %"trunc32.144" = trunc i64 %".5647" to i32
  %"trunc32.145" = trunc i64 %"add.248" to i32
  store i32 %"trunc32.145", ptr %"R8"
  store i32 %"trunc32.144", ptr %"R9"
  ; IADD3 R24, R13, 0x4, RZ
  %".5651" = load i32, ptr %"R13"
  %"add.249" = add i32 %".5651", 4
  %"add.250" = add i32 %"add.249", 0
  store i32 %"add.250", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".5654" = load i32, ptr %"R12"
  %".5655" = load i32, ptr %"R25"
  %"zext.659" = zext i32 %".5654" to i64
  %"zext.660" = zext i32 %".5655" to i64
  %"mul.77" = mul i64 %"zext.659", %"zext.660"
  %".5656" = ptrtoint ptr %"Arg_2" to i64
  %"add.251" = add i64 %"mul.77", %".5656"
  %".5657" = and i64 %"add.251", 18446744069414584320
  %".5658" = lshr i64 %".5657", 32
  %"trunc32.146" = trunc i64 %".5658" to i32
  %"trunc32.147" = trunc i64 %"add.251" to i32
  store i32 %"trunc32.147", ptr %"R4"
  store i32 %"trunc32.146", ptr %"R5"
  ; IADD3 R12, R12, 0x4, RZ
  %".5662" = load i32, ptr %"R12"
  %"add.252" = add i32 %".5662", 4
  %"add.253" = add i32 %"add.252", 0
  store i32 %"add.253", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".5665" = load i32, ptr %"R13"
  %".5666" = load i32, ptr %"R25"
  %"zext.661" = zext i32 %".5665" to i64
  %"zext.662" = zext i32 %".5666" to i64
  %"mul.78" = mul i64 %"zext.661", %"zext.662"
  %".5667" = ptrtoint ptr %"Arg_2" to i64
  %"add.254" = add i64 %"mul.78", %".5667"
  %".5668" = and i64 %"add.254", 18446744069414584320
  %".5669" = lshr i64 %".5668", 32
  %"trunc32.148" = trunc i64 %".5669" to i32
  %"trunc32.149" = trunc i64 %"add.254" to i32
  store i32 %"trunc32.149", ptr %"R10"
  store i32 %"trunc32.148", ptr %"R11"
  ; LDG.E.SYS R43, [R8]
  %".5673" = load i32, ptr %"R8"
  %"zext.663" = zext i32 %".5673" to i64
  %".5674" = load i32, ptr %"R9"
  %"zext.664" = zext i32 %".5674" to i64
  %"shl.282" = shl i64 %"zext.664", 32
  %"or.256" = or i64 %"shl.282", %"zext.663"
  %".5675" = inttoptr i64 %"or.256" to ptr
  %".5676" = ptrtoint ptr %".5675" to i64
  %".5677" = add i64 %".5676", 0
  %"for_LDG.235" = inttoptr i64 %".5677" to ptr
  %".5678" = load float, ptr %"for_LDG.235"
  %".5679" = bitcast ptr %"R43" to ptr
  store float %".5678", ptr %".5679"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".5682" = load i32, ptr %"R6"
  %".5683" = load i32, ptr %"R25"
  %"zext.665" = zext i32 %".5682" to i64
  %"zext.666" = zext i32 %".5683" to i64
  %"mul.79" = mul i64 %"zext.665", %"zext.666"
  %".5684" = ptrtoint ptr %"Arg_1" to i64
  %"add.255" = add i64 %"mul.79", %".5684"
  %".5685" = and i64 %"add.255", 18446744069414584320
  %".5686" = lshr i64 %".5685", 32
  %"trunc32.150" = trunc i64 %".5686" to i32
  %"trunc32.151" = trunc i64 %"add.255" to i32
  store i32 %"trunc32.151", ptr %"R6"
  store i32 %"trunc32.150", ptr %"R7"
  ; LDG.E.SYS R52, [R4]
  %".5690" = load i32, ptr %"R4"
  %"zext.667" = zext i32 %".5690" to i64
  %".5691" = load i32, ptr %"R5"
  %"zext.668" = zext i32 %".5691" to i64
  %"shl.283" = shl i64 %"zext.668", 32
  %"or.257" = or i64 %"shl.283", %"zext.667"
  %".5692" = inttoptr i64 %"or.257" to ptr
  %".5693" = ptrtoint ptr %".5692" to i64
  %".5694" = add i64 %".5693", 0
  %"for_LDG.236" = inttoptr i64 %".5694" to ptr
  %".5695" = load float, ptr %"for_LDG.236"
  %".5696" = bitcast ptr %"R52" to ptr
  store float %".5695", ptr %".5696"
  ; LDG.E.SYS R38, [R10]
  %".5699" = load i32, ptr %"R10"
  %"zext.669" = zext i32 %".5699" to i64
  %".5700" = load i32, ptr %"R11"
  %"zext.670" = zext i32 %".5700" to i64
  %"shl.284" = shl i64 %"zext.670", 32
  %"or.258" = or i64 %"shl.284", %"zext.669"
  %".5701" = inttoptr i64 %"or.258" to ptr
  %".5702" = ptrtoint ptr %".5701" to i64
  %".5703" = add i64 %".5702", 0
  %"for_LDG.237" = inttoptr i64 %".5703" to ptr
  %".5704" = load float, ptr %"for_LDG.237"
  %".5705" = bitcast ptr %"R38" to ptr
  store float %".5704", ptr %".5705"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".5708" = load i32, ptr %"R12"
  %".5709" = load i32, ptr %"R25"
  %"zext.671" = zext i32 %".5708" to i64
  %"zext.672" = zext i32 %".5709" to i64
  %"mul.80" = mul i64 %"zext.671", %"zext.672"
  %".5710" = ptrtoint ptr %"Arg_2" to i64
  %"add.256" = add i64 %"mul.80", %".5710"
  %".5711" = and i64 %"add.256", 18446744069414584320
  %".5712" = lshr i64 %".5711", 32
  %"trunc32.152" = trunc i64 %".5712" to i32
  %"trunc32.153" = trunc i64 %"add.256" to i32
  store i32 %"trunc32.153", ptr %"R12"
  store i32 %"trunc32.152", ptr %"R13"
  ; LDG.E.SYS R36, [R8+0x4]
  %".5716" = load i32, ptr %"R8"
  %"zext.673" = zext i32 %".5716" to i64
  %".5717" = load i32, ptr %"R9"
  %"zext.674" = zext i32 %".5717" to i64
  %"shl.285" = shl i64 %"zext.674", 32
  %"or.259" = or i64 %"shl.285", %"zext.673"
  %".5718" = inttoptr i64 %"or.259" to ptr
  %".5719" = ptrtoint ptr %".5718" to i64
  %".5720" = add i64 %".5719", 4
  %"for_LDG.238" = inttoptr i64 %".5720" to ptr
  %".5721" = load float, ptr %"for_LDG.238"
  %".5722" = bitcast ptr %"R36" to ptr
  store float %".5721", ptr %".5722"
  ; LDG.E.SYS R41, [R4+0x4]
  %".5725" = load i32, ptr %"R4"
  %"zext.675" = zext i32 %".5725" to i64
  %".5726" = load i32, ptr %"R5"
  %"zext.676" = zext i32 %".5726" to i64
  %"shl.286" = shl i64 %"zext.676", 32
  %"or.260" = or i64 %"shl.286", %"zext.675"
  %".5727" = inttoptr i64 %"or.260" to ptr
  %".5728" = ptrtoint ptr %".5727" to i64
  %".5729" = add i64 %".5728", 4
  %"for_LDG.239" = inttoptr i64 %".5729" to ptr
  %".5730" = load float, ptr %"for_LDG.239"
  %".5731" = bitcast ptr %"R41" to ptr
  store float %".5730", ptr %".5731"
  ; LDG.E.SYS R39, [R10+0x4]
  %".5734" = load i32, ptr %"R10"
  %"zext.677" = zext i32 %".5734" to i64
  %".5735" = load i32, ptr %"R11"
  %"zext.678" = zext i32 %".5735" to i64
  %"shl.287" = shl i64 %"zext.678", 32
  %"or.261" = or i64 %"shl.287", %"zext.677"
  %".5736" = inttoptr i64 %"or.261" to ptr
  %".5737" = ptrtoint ptr %".5736" to i64
  %".5738" = add i64 %".5737", 4
  %"for_LDG.240" = inttoptr i64 %".5738" to ptr
  %".5739" = load float, ptr %"for_LDG.240"
  %".5740" = bitcast ptr %"R39" to ptr
  store float %".5739", ptr %".5740"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".5743" = load i32, ptr %"R24"
  %".5744" = load i32, ptr %"R25"
  %"zext.679" = zext i32 %".5743" to i64
  %"zext.680" = zext i32 %".5744" to i64
  %"mul.81" = mul i64 %"zext.679", %"zext.680"
  %".5745" = ptrtoint ptr %"Arg_2" to i64
  %"add.257" = add i64 %"mul.81", %".5745"
  %".5746" = and i64 %"add.257", 18446744069414584320
  %".5747" = lshr i64 %".5746", 32
  %"trunc32.154" = trunc i64 %".5747" to i32
  %"trunc32.155" = trunc i64 %"add.257" to i32
  store i32 %"trunc32.155", ptr %"R24"
  store i32 %"trunc32.154", ptr %"R25"
  ; LDG.E.SYS R34, [R8+0x8]
  %".5751" = load i32, ptr %"R8"
  %"zext.681" = zext i32 %".5751" to i64
  %".5752" = load i32, ptr %"R9"
  %"zext.682" = zext i32 %".5752" to i64
  %"shl.288" = shl i64 %"zext.682", 32
  %"or.262" = or i64 %"shl.288", %"zext.681"
  %".5753" = inttoptr i64 %"or.262" to ptr
  %".5754" = ptrtoint ptr %".5753" to i64
  %".5755" = add i64 %".5754", 8
  %"for_LDG.241" = inttoptr i64 %".5755" to ptr
  %".5756" = load float, ptr %"for_LDG.241"
  %".5757" = bitcast ptr %"R34" to ptr
  store float %".5756", ptr %".5757"
  ; LDG.E.SYS R37, [R4+0x8]
  %".5760" = load i32, ptr %"R4"
  %"zext.683" = zext i32 %".5760" to i64
  %".5761" = load i32, ptr %"R5"
  %"zext.684" = zext i32 %".5761" to i64
  %"shl.289" = shl i64 %"zext.684", 32
  %"or.263" = or i64 %"shl.289", %"zext.683"
  %".5762" = inttoptr i64 %"or.263" to ptr
  %".5763" = ptrtoint ptr %".5762" to i64
  %".5764" = add i64 %".5763", 8
  %"for_LDG.242" = inttoptr i64 %".5764" to ptr
  %".5765" = load float, ptr %"for_LDG.242"
  %".5766" = bitcast ptr %"R37" to ptr
  store float %".5765", ptr %".5766"
  ; LDG.E.SYS R35, [R10+0x8]
  %".5769" = load i32, ptr %"R10"
  %"zext.685" = zext i32 %".5769" to i64
  %".5770" = load i32, ptr %"R11"
  %"zext.686" = zext i32 %".5770" to i64
  %"shl.290" = shl i64 %"zext.686", 32
  %"or.264" = or i64 %"shl.290", %"zext.685"
  %".5771" = inttoptr i64 %"or.264" to ptr
  %".5772" = ptrtoint ptr %".5771" to i64
  %".5773" = add i64 %".5772", 8
  %"for_LDG.243" = inttoptr i64 %".5773" to ptr
  %".5774" = load float, ptr %"for_LDG.243"
  %".5775" = bitcast ptr %"R35" to ptr
  store float %".5774", ptr %".5775"
  ; LDG.E.SYS R40, [R8+0xc]
  %".5778" = load i32, ptr %"R8"
  %"zext.687" = zext i32 %".5778" to i64
  %".5779" = load i32, ptr %"R9"
  %"zext.688" = zext i32 %".5779" to i64
  %"shl.291" = shl i64 %"zext.688", 32
  %"or.265" = or i64 %"shl.291", %"zext.687"
  %".5780" = inttoptr i64 %"or.265" to ptr
  %".5781" = ptrtoint ptr %".5780" to i64
  %".5782" = add i64 %".5781", 12
  %"for_LDG.244" = inttoptr i64 %".5782" to ptr
  %".5783" = load float, ptr %"for_LDG.244"
  %".5784" = bitcast ptr %"R40" to ptr
  store float %".5783", ptr %".5784"
  ; LDG.E.SYS R45, [R4+0xc]
  %".5787" = load i32, ptr %"R4"
  %"zext.689" = zext i32 %".5787" to i64
  %".5788" = load i32, ptr %"R5"
  %"zext.690" = zext i32 %".5788" to i64
  %"shl.292" = shl i64 %"zext.690", 32
  %"or.266" = or i64 %"shl.292", %"zext.689"
  %".5789" = inttoptr i64 %"or.266" to ptr
  %".5790" = ptrtoint ptr %".5789" to i64
  %".5791" = add i64 %".5790", 12
  %"for_LDG.245" = inttoptr i64 %".5791" to ptr
  %".5792" = load float, ptr %"for_LDG.245"
  %".5793" = bitcast ptr %"R45" to ptr
  store float %".5792", ptr %".5793"
  ; LDG.E.SYS R59, [R10+0xc]
  %".5796" = load i32, ptr %"R10"
  %"zext.691" = zext i32 %".5796" to i64
  %".5797" = load i32, ptr %"R11"
  %"zext.692" = zext i32 %".5797" to i64
  %"shl.293" = shl i64 %"zext.692", 32
  %"or.267" = or i64 %"shl.293", %"zext.691"
  %".5798" = inttoptr i64 %"or.267" to ptr
  %".5799" = ptrtoint ptr %".5798" to i64
  %".5800" = add i64 %".5799", 12
  %"for_LDG.246" = inttoptr i64 %".5800" to ptr
  %".5801" = load float, ptr %"for_LDG.246"
  %".5802" = bitcast ptr %"R59" to ptr
  store float %".5801", ptr %".5802"
  ; LDG.E.SYS R50, [R6]
  %".5805" = load i32, ptr %"R6"
  %"zext.693" = zext i32 %".5805" to i64
  %".5806" = load i32, ptr %"R7"
  %"zext.694" = zext i32 %".5806" to i64
  %"shl.294" = shl i64 %"zext.694", 32
  %"or.268" = or i64 %"shl.294", %"zext.693"
  %".5807" = inttoptr i64 %"or.268" to ptr
  %".5808" = ptrtoint ptr %".5807" to i64
  %".5809" = add i64 %".5808", 0
  %"for_LDG.247" = inttoptr i64 %".5809" to ptr
  %".5810" = load float, ptr %"for_LDG.247"
  %".5811" = bitcast ptr %"R50" to ptr
  store float %".5810", ptr %".5811"
  ; LDG.E.SYS R57, [R12]
  %".5814" = load i32, ptr %"R12"
  %"zext.695" = zext i32 %".5814" to i64
  %".5815" = load i32, ptr %"R13"
  %"zext.696" = zext i32 %".5815" to i64
  %"shl.295" = shl i64 %"zext.696", 32
  %"or.269" = or i64 %"shl.295", %"zext.695"
  %".5816" = inttoptr i64 %"or.269" to ptr
  %".5817" = ptrtoint ptr %".5816" to i64
  %".5818" = add i64 %".5817", 0
  %"for_LDG.248" = inttoptr i64 %".5818" to ptr
  %".5819" = load float, ptr %"for_LDG.248"
  %".5820" = bitcast ptr %"R57" to ptr
  store float %".5819", ptr %".5820"
  ; LDG.E.SYS R55, [R24]
  %".5823" = load i32, ptr %"R24"
  %"zext.697" = zext i32 %".5823" to i64
  %".5824" = load i32, ptr %"R25"
  %"zext.698" = zext i32 %".5824" to i64
  %"shl.296" = shl i64 %"zext.698", 32
  %"or.270" = or i64 %"shl.296", %"zext.697"
  %".5825" = inttoptr i64 %"or.270" to ptr
  %".5826" = ptrtoint ptr %".5825" to i64
  %".5827" = add i64 %".5826", 0
  %"for_LDG.249" = inttoptr i64 %".5827" to ptr
  %".5828" = load float, ptr %"for_LDG.249"
  %".5829" = bitcast ptr %"R55" to ptr
  store float %".5828", ptr %".5829"
  ; LDG.E.SYS R46, [R6+0x4]
  %".5832" = load i32, ptr %"R6"
  %"zext.699" = zext i32 %".5832" to i64
  %".5833" = load i32, ptr %"R7"
  %"zext.700" = zext i32 %".5833" to i64
  %"shl.297" = shl i64 %"zext.700", 32
  %"or.271" = or i64 %"shl.297", %"zext.699"
  %".5834" = inttoptr i64 %"or.271" to ptr
  %".5835" = ptrtoint ptr %".5834" to i64
  %".5836" = add i64 %".5835", 4
  %"for_LDG.250" = inttoptr i64 %".5836" to ptr
  %".5837" = load float, ptr %"for_LDG.250"
  %".5838" = bitcast ptr %"R46" to ptr
  store float %".5837", ptr %".5838"
  ; LDG.E.SYS R53, [R12+0x4]
  %".5841" = load i32, ptr %"R12"
  %"zext.701" = zext i32 %".5841" to i64
  %".5842" = load i32, ptr %"R13"
  %"zext.702" = zext i32 %".5842" to i64
  %"shl.298" = shl i64 %"zext.702", 32
  %"or.272" = or i64 %"shl.298", %"zext.701"
  %".5843" = inttoptr i64 %"or.272" to ptr
  %".5844" = ptrtoint ptr %".5843" to i64
  %".5845" = add i64 %".5844", 4
  %"for_LDG.251" = inttoptr i64 %".5845" to ptr
  %".5846" = load float, ptr %"for_LDG.251"
  %".5847" = bitcast ptr %"R53" to ptr
  store float %".5846", ptr %".5847"
  ; LDG.E.SYS R51, [R24+0x4]
  %".5850" = load i32, ptr %"R24"
  %"zext.703" = zext i32 %".5850" to i64
  %".5851" = load i32, ptr %"R25"
  %"zext.704" = zext i32 %".5851" to i64
  %"shl.299" = shl i64 %"zext.704", 32
  %"or.273" = or i64 %"shl.299", %"zext.703"
  %".5852" = inttoptr i64 %"or.273" to ptr
  %".5853" = ptrtoint ptr %".5852" to i64
  %".5854" = add i64 %".5853", 4
  %"for_LDG.252" = inttoptr i64 %".5854" to ptr
  %".5855" = load float, ptr %"for_LDG.252"
  %".5856" = bitcast ptr %"R51" to ptr
  store float %".5855", ptr %".5856"
  ; LDG.E.SYS R42, [R6+0x8]
  %".5859" = load i32, ptr %"R6"
  %"zext.705" = zext i32 %".5859" to i64
  %".5860" = load i32, ptr %"R7"
  %"zext.706" = zext i32 %".5860" to i64
  %"shl.300" = shl i64 %"zext.706", 32
  %"or.274" = or i64 %"shl.300", %"zext.705"
  %".5861" = inttoptr i64 %"or.274" to ptr
  %".5862" = ptrtoint ptr %".5861" to i64
  %".5863" = add i64 %".5862", 8
  %"for_LDG.253" = inttoptr i64 %".5863" to ptr
  %".5864" = load float, ptr %"for_LDG.253"
  %".5865" = bitcast ptr %"R42" to ptr
  store float %".5864", ptr %".5865"
  ; LDG.E.SYS R47, [R12+0x8]
  %".5868" = load i32, ptr %"R12"
  %"zext.707" = zext i32 %".5868" to i64
  %".5869" = load i32, ptr %"R13"
  %"zext.708" = zext i32 %".5869" to i64
  %"shl.301" = shl i64 %"zext.708", 32
  %"or.275" = or i64 %"shl.301", %"zext.707"
  %".5870" = inttoptr i64 %"or.275" to ptr
  %".5871" = ptrtoint ptr %".5870" to i64
  %".5872" = add i64 %".5871", 8
  %"for_LDG.254" = inttoptr i64 %".5872" to ptr
  %".5873" = load float, ptr %"for_LDG.254"
  %".5874" = bitcast ptr %"R47" to ptr
  store float %".5873", ptr %".5874"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5877" = load i32, ptr %"R24"
  %"zext.709" = zext i32 %".5877" to i64
  %".5878" = load i32, ptr %"R25"
  %"zext.710" = zext i32 %".5878" to i64
  %"shl.302" = shl i64 %"zext.710", 32
  %"or.276" = or i64 %"shl.302", %"zext.709"
  %".5879" = inttoptr i64 %"or.276" to ptr
  %".5880" = ptrtoint ptr %".5879" to i64
  %".5881" = add i64 %".5880", 8
  %"for_LDG.255" = inttoptr i64 %".5881" to ptr
  %".5882" = load float, ptr %"for_LDG.255"
  %".5883" = bitcast ptr %"R9" to ptr
  store float %".5882", ptr %".5883"
  ; LDG.E.SYS R4, [R6+0xc]
  %".5886" = load i32, ptr %"R6"
  %"zext.711" = zext i32 %".5886" to i64
  %".5887" = load i32, ptr %"R7"
  %"zext.712" = zext i32 %".5887" to i64
  %"shl.303" = shl i64 %"zext.712", 32
  %"or.277" = or i64 %"shl.303", %"zext.711"
  %".5888" = inttoptr i64 %"or.277" to ptr
  %".5889" = ptrtoint ptr %".5888" to i64
  %".5890" = add i64 %".5889", 12
  %"for_LDG.256" = inttoptr i64 %".5890" to ptr
  %".5891" = load float, ptr %"for_LDG.256"
  %".5892" = bitcast ptr %"R4" to ptr
  store float %".5891", ptr %".5892"
  ; LDG.E.SYS R5, [R12+0xc]
  %".5895" = load i32, ptr %"R12"
  %"zext.713" = zext i32 %".5895" to i64
  %".5896" = load i32, ptr %"R13"
  %"zext.714" = zext i32 %".5896" to i64
  %"shl.304" = shl i64 %"zext.714", 32
  %"or.278" = or i64 %"shl.304", %"zext.713"
  %".5897" = inttoptr i64 %"or.278" to ptr
  %".5898" = ptrtoint ptr %".5897" to i64
  %".5899" = add i64 %".5898", 12
  %"for_LDG.257" = inttoptr i64 %".5899" to ptr
  %".5900" = load float, ptr %"for_LDG.257"
  %".5901" = bitcast ptr %"R5" to ptr
  store float %".5900", ptr %".5901"
  ; LDG.E.SYS R11, [R24+0xc]
  %".5904" = load i32, ptr %"R24"
  %"zext.715" = zext i32 %".5904" to i64
  %".5905" = load i32, ptr %"R25"
  %"zext.716" = zext i32 %".5905" to i64
  %"shl.305" = shl i64 %"zext.716", 32
  %"or.279" = or i64 %"shl.305", %"zext.715"
  %".5906" = inttoptr i64 %"or.279" to ptr
  %".5907" = ptrtoint ptr %".5906" to i64
  %".5908" = add i64 %".5907", 12
  %"for_LDG.258" = inttoptr i64 %".5908" to ptr
  %".5909" = load float, ptr %"for_LDG.258"
  %".5910" = bitcast ptr %"R11" to ptr
  store float %".5909", ptr %".5910"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5913" = xor i1 1, 1
  %".5914" = and i1 %".5913", 1
  %".5915" = and i1 %".5914", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".5917" = load i32, ptr %"R22"
  %"add.258" = add i32 %".5917", -8
  %"add.259" = add i32 %"add.258", 0
  store i32 %"add.259", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".5920" = load i32, ptr %"R23"
  %"add.260" = add i32 %".5920", 8
  %"add.261" = add i32 %"add.260", 0
  store i32 %"add.261", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".5923" = load float, ptr %"R52"
  %".5924" = load float, ptr %"R43"
  %".5925" = load float, ptr %"R44"
  %"fmul.223" = fmul float %".5923", %".5924"
  %"fadd.204" = fadd float %"fmul.223", %".5925"
  %".5926" = bitcast ptr %"R52" to ptr
  store float %"fadd.204", ptr %".5926"
  ; FFMA R38, R43, R38, R56
  %".5929" = load float, ptr %"R43"
  %".5930" = load float, ptr %"R38"
  %".5931" = load float, ptr %"R56"
  %"fmul.224" = fmul float %".5929", %".5930"
  %"fadd.205" = fadd float %"fmul.224", %".5931"
  %".5932" = bitcast ptr %"R38" to ptr
  store float %"fadd.205", ptr %".5932"
  ; FFMA R41, R41, R36, R52
  %".5935" = load float, ptr %"R41"
  %".5936" = load float, ptr %"R36"
  %".5937" = load float, ptr %"R52"
  %"fmul.225" = fmul float %".5935", %".5936"
  %"fadd.206" = fadd float %"fmul.225", %".5937"
  %".5938" = bitcast ptr %"R41" to ptr
  store float %"fadd.206", ptr %".5938"
  ; FFMA R38, R36, R39, R38
  %".5941" = load float, ptr %"R36"
  %".5942" = load float, ptr %"R39"
  %".5943" = load float, ptr %"R38"
  %"fmul.226" = fmul float %".5941", %".5942"
  %"fadd.207" = fadd float %"fmul.226", %".5943"
  %".5944" = bitcast ptr %"R38" to ptr
  store float %"fadd.207", ptr %".5944"
  ; FFMA R37, R37, R34, R41
  %".5947" = load float, ptr %"R37"
  %".5948" = load float, ptr %"R34"
  %".5949" = load float, ptr %"R41"
  %"fmul.227" = fmul float %".5947", %".5948"
  %"fadd.208" = fadd float %"fmul.227", %".5949"
  %".5950" = bitcast ptr %"R37" to ptr
  store float %"fadd.208", ptr %".5950"
  ; FFMA R35, R34, R35, R38
  %".5953" = load float, ptr %"R34"
  %".5954" = load float, ptr %"R35"
  %".5955" = load float, ptr %"R38"
  %"fmul.228" = fmul float %".5953", %".5954"
  %"fadd.209" = fadd float %"fmul.228", %".5955"
  %".5956" = bitcast ptr %"R35" to ptr
  store float %"fadd.209", ptr %".5956"
  ; FFMA R37, R45, R40, R37
  %".5959" = load float, ptr %"R45"
  %".5960" = load float, ptr %"R40"
  %".5961" = load float, ptr %"R37"
  %"fmul.229" = fmul float %".5959", %".5960"
  %"fadd.210" = fadd float %"fmul.229", %".5961"
  %".5962" = bitcast ptr %"R37" to ptr
  store float %"fadd.210", ptr %".5962"
  ; FFMA R35, R40, R59, R35
  %".5965" = load float, ptr %"R40"
  %".5966" = load float, ptr %"R59"
  %".5967" = load float, ptr %"R35"
  %"fmul.230" = fmul float %".5965", %".5966"
  %"fadd.211" = fadd float %"fmul.230", %".5967"
  %".5968" = bitcast ptr %"R35" to ptr
  store float %"fadd.211", ptr %".5968"
  ; FFMA R37, R57, R50, R37
  %".5971" = load float, ptr %"R57"
  %".5972" = load float, ptr %"R50"
  %".5973" = load float, ptr %"R37"
  %"fmul.231" = fmul float %".5971", %".5972"
  %"fadd.212" = fadd float %"fmul.231", %".5973"
  %".5974" = bitcast ptr %"R37" to ptr
  store float %"fadd.212", ptr %".5974"
  ; FFMA R35, R50, R55, R35
  %".5977" = load float, ptr %"R50"
  %".5978" = load float, ptr %"R55"
  %".5979" = load float, ptr %"R35"
  %"fmul.232" = fmul float %".5977", %".5978"
  %"fadd.213" = fadd float %"fmul.232", %".5979"
  %".5980" = bitcast ptr %"R35" to ptr
  store float %"fadd.213", ptr %".5980"
  ; FFMA R37, R53, R46, R37
  %".5983" = load float, ptr %"R53"
  %".5984" = load float, ptr %"R46"
  %".5985" = load float, ptr %"R37"
  %"fmul.233" = fmul float %".5983", %".5984"
  %"fadd.214" = fadd float %"fmul.233", %".5985"
  %".5986" = bitcast ptr %"R37" to ptr
  store float %"fadd.214", ptr %".5986"
  ; FFMA R35, R46, R51, R35
  %".5989" = load float, ptr %"R46"
  %".5990" = load float, ptr %"R51"
  %".5991" = load float, ptr %"R35"
  %"fmul.234" = fmul float %".5989", %".5990"
  %"fadd.215" = fadd float %"fmul.234", %".5991"
  %".5992" = bitcast ptr %"R35" to ptr
  store float %"fadd.215", ptr %".5992"
  ; FFMA R37, R47, R42, R37
  %".5995" = load float, ptr %"R47"
  %".5996" = load float, ptr %"R42"
  %".5997" = load float, ptr %"R37"
  %"fmul.235" = fmul float %".5995", %".5996"
  %"fadd.216" = fadd float %"fmul.235", %".5997"
  %".5998" = bitcast ptr %"R37" to ptr
  store float %"fadd.216", ptr %".5998"
  ; FFMA R9, R42, R9, R35
  %".6001" = load float, ptr %"R42"
  %".6002" = load float, ptr %"R9"
  %".6003" = load float, ptr %"R35"
  %"fmul.236" = fmul float %".6001", %".6002"
  %"fadd.217" = fadd float %"fmul.236", %".6003"
  %".6004" = bitcast ptr %"R9" to ptr
  store float %"fadd.217", ptr %".6004"
  ; FFMA R44, R5, R4, R37
  %".6007" = load float, ptr %"R5"
  %".6008" = load float, ptr %"R4"
  %".6009" = load float, ptr %"R37"
  %"fmul.237" = fmul float %".6007", %".6008"
  %"fadd.218" = fadd float %"fmul.237", %".6009"
  %".6010" = bitcast ptr %"R44" to ptr
  store float %"fadd.218", ptr %".6010"
  ; FFMA R56, R4, R11, R9
  %".6013" = load float, ptr %"R4"
  %".6014" = load float, ptr %"R11"
  %".6015" = load float, ptr %"R9"
  %"fmul.238" = fmul float %".6013", %".6014"
  %"fadd.219" = fadd float %"fmul.238", %".6015"
  %".6016" = bitcast ptr %"R56" to ptr
  store float %"fadd.219", ptr %".6016"
  br label %".L_x_31"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".6020" = load i32, ptr %"R22"
  %".6021" = load i1, ptr %"PT"
  %"cmp.47" = icmp ne i32 %".6020", 0
  %".6022" = or i1 %"cmp.47", %".6021"
  store i1 %".6022", ptr %"P0"
  ; @!P0 BRA `(.L_x_27)
  %".6025" = load i1, ptr %"P0"
  %".6026" = icmp eq i1 %".6025", 1
  br i1 %".6026", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".6029" = load i32, ptr %"R0"
  %".6030" = load i32, ptr %"R23"
  %"add.262" = add i32 %".6029", %".6030"
  %"add.263" = add i32 %"add.262", 0
  store i32 %"add.263", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".6035" = load i32, ptr %"R2"
  %".6036" = load i32, ptr %"R5"
  %"shl.306" = shl i32 %".6035", 2
  %"add.264" = add i32 %"shl.306", %".6036"
  store i32 %"add.264", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".6039" = load i32, ptr %"R2"
  %".6040" = load i32, ptr %"R5"
  %"mul.82" = mul i32 %".6039", 3
  %"add.265" = add i32 %"mul.82", %".6040"
  store i32 %"add.265", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".6043" = load i32, ptr %"R23"
  %".6044" = load i32, ptr %"R6"
  %"zext.717" = zext i32 %".6043" to i64
  %"zext.718" = zext i32 %".6044" to i64
  %"mul.83" = mul i64 %"zext.717", %"zext.718"
  %".6045" = ptrtoint ptr %"Arg_1" to i64
  %"add.266" = add i64 %"mul.83", %".6045"
  %".6046" = and i64 %"add.266", 18446744069414584320
  %".6047" = lshr i64 %".6046", 32
  %"trunc32.156" = trunc i64 %".6047" to i32
  %"trunc32.157" = trunc i64 %"add.266" to i32
  store i32 %"trunc32.157", ptr %"R8"
  store i32 %"trunc32.156", ptr %"R9"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".6051" = load i32, ptr %"R7"
  %".6052" = load i32, ptr %"R6"
  %"zext.719" = zext i32 %".6051" to i64
  %"zext.720" = zext i32 %".6052" to i64
  %"mul.84" = mul i64 %"zext.719", %"zext.720"
  %".6053" = ptrtoint ptr %"Arg_2" to i64
  %"add.267" = add i64 %"mul.84", %".6053"
  %".6054" = and i64 %"add.267", 18446744069414584320
  %".6055" = lshr i64 %".6054", 32
  %"trunc32.158" = trunc i64 %".6055" to i32
  %"trunc32.159" = trunc i64 %"add.267" to i32
  store i32 %"trunc32.159", ptr %"R4"
  store i32 %"trunc32.158", ptr %"R5"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".6059" = load i32, ptr %"R11"
  %".6060" = load i32, ptr %"R6"
  %"zext.721" = zext i32 %".6059" to i64
  %"zext.722" = zext i32 %".6060" to i64
  %"mul.85" = mul i64 %"zext.721", %"zext.722"
  %".6061" = ptrtoint ptr %"Arg_2" to i64
  %"add.268" = add i64 %"mul.85", %".6061"
  %".6062" = and i64 %"add.268", 18446744069414584320
  %".6063" = lshr i64 %".6062", 32
  %"trunc32.160" = trunc i64 %".6063" to i32
  %"trunc32.161" = trunc i64 %"add.268" to i32
  store i32 %"trunc32.161", ptr %"R6"
  store i32 %"trunc32.160", ptr %"R7"
  ; LDG.E.SYS R13, [R8]
  %".6067" = load i32, ptr %"R8"
  %"zext.723" = zext i32 %".6067" to i64
  %".6068" = load i32, ptr %"R9"
  %"zext.724" = zext i32 %".6068" to i64
  %"shl.307" = shl i64 %"zext.724", 32
  %"or.280" = or i64 %"shl.307", %"zext.723"
  %".6069" = inttoptr i64 %"or.280" to ptr
  %".6070" = ptrtoint ptr %".6069" to i64
  %".6071" = add i64 %".6070", 0
  %"for_LDG.259" = inttoptr i64 %".6071" to ptr
  %".6072" = load float, ptr %"for_LDG.259"
  %".6073" = bitcast ptr %"R13" to ptr
  store float %".6072", ptr %".6073"
  ; LDG.E.SYS R11, [R4]
  %".6076" = load i32, ptr %"R4"
  %"zext.725" = zext i32 %".6076" to i64
  %".6077" = load i32, ptr %"R5"
  %"zext.726" = zext i32 %".6077" to i64
  %"shl.308" = shl i64 %"zext.726", 32
  %"or.281" = or i64 %"shl.308", %"zext.725"
  %".6078" = inttoptr i64 %"or.281" to ptr
  %".6079" = ptrtoint ptr %".6078" to i64
  %".6080" = add i64 %".6079", 0
  %"for_LDG.260" = inttoptr i64 %".6080" to ptr
  %".6081" = load float, ptr %"for_LDG.260"
  %".6082" = bitcast ptr %"R11" to ptr
  store float %".6081", ptr %".6082"
  ; LDG.E.SYS R10, [R6]
  %".6085" = load i32, ptr %"R6"
  %"zext.727" = zext i32 %".6085" to i64
  %".6086" = load i32, ptr %"R7"
  %"zext.728" = zext i32 %".6086" to i64
  %"shl.309" = shl i64 %"zext.728", 32
  %"or.282" = or i64 %"shl.309", %"zext.727"
  %".6087" = inttoptr i64 %"or.282" to ptr
  %".6088" = ptrtoint ptr %".6087" to i64
  %".6089" = add i64 %".6088", 0
  %"for_LDG.261" = inttoptr i64 %".6089" to ptr
  %".6090" = load float, ptr %"for_LDG.261"
  %".6091" = bitcast ptr %"R10" to ptr
  store float %".6090", ptr %".6091"
  ; LDG.E.SYS R25, [R8+0x4]
  %".6094" = load i32, ptr %"R8"
  %"zext.729" = zext i32 %".6094" to i64
  %".6095" = load i32, ptr %"R9"
  %"zext.730" = zext i32 %".6095" to i64
  %"shl.310" = shl i64 %"zext.730", 32
  %"or.283" = or i64 %"shl.310", %"zext.729"
  %".6096" = inttoptr i64 %"or.283" to ptr
  %".6097" = ptrtoint ptr %".6096" to i64
  %".6098" = add i64 %".6097", 4
  %"for_LDG.262" = inttoptr i64 %".6098" to ptr
  %".6099" = load float, ptr %"for_LDG.262"
  %".6100" = bitcast ptr %"R25" to ptr
  store float %".6099", ptr %".6100"
  ; LDG.E.SYS R12, [R4+0x4]
  %".6103" = load i32, ptr %"R4"
  %"zext.731" = zext i32 %".6103" to i64
  %".6104" = load i32, ptr %"R5"
  %"zext.732" = zext i32 %".6104" to i64
  %"shl.311" = shl i64 %"zext.732", 32
  %"or.284" = or i64 %"shl.311", %"zext.731"
  %".6105" = inttoptr i64 %"or.284" to ptr
  %".6106" = ptrtoint ptr %".6105" to i64
  %".6107" = add i64 %".6106", 4
  %"for_LDG.263" = inttoptr i64 %".6107" to ptr
  %".6108" = load float, ptr %"for_LDG.263"
  %".6109" = bitcast ptr %"R12" to ptr
  store float %".6108", ptr %".6109"
  ; LDG.E.SYS R24, [R6+0x4]
  %".6112" = load i32, ptr %"R6"
  %"zext.733" = zext i32 %".6112" to i64
  %".6113" = load i32, ptr %"R7"
  %"zext.734" = zext i32 %".6113" to i64
  %"shl.312" = shl i64 %"zext.734", 32
  %"or.285" = or i64 %"shl.312", %"zext.733"
  %".6114" = inttoptr i64 %"or.285" to ptr
  %".6115" = ptrtoint ptr %".6114" to i64
  %".6116" = add i64 %".6115", 4
  %"for_LDG.264" = inttoptr i64 %".6116" to ptr
  %".6117" = load float, ptr %"for_LDG.264"
  %".6118" = bitcast ptr %"R24" to ptr
  store float %".6117", ptr %".6118"
  ; LDG.E.SYS R35, [R8+0x8]
  %".6121" = load i32, ptr %"R8"
  %"zext.735" = zext i32 %".6121" to i64
  %".6122" = load i32, ptr %"R9"
  %"zext.736" = zext i32 %".6122" to i64
  %"shl.313" = shl i64 %"zext.736", 32
  %"or.286" = or i64 %"shl.313", %"zext.735"
  %".6123" = inttoptr i64 %"or.286" to ptr
  %".6124" = ptrtoint ptr %".6123" to i64
  %".6125" = add i64 %".6124", 8
  %"for_LDG.265" = inttoptr i64 %".6125" to ptr
  %".6126" = load float, ptr %"for_LDG.265"
  %".6127" = bitcast ptr %"R35" to ptr
  store float %".6126", ptr %".6127"
  ; LDG.E.SYS R34, [R4+0x8]
  %".6130" = load i32, ptr %"R4"
  %"zext.737" = zext i32 %".6130" to i64
  %".6131" = load i32, ptr %"R5"
  %"zext.738" = zext i32 %".6131" to i64
  %"shl.314" = shl i64 %"zext.738", 32
  %"or.287" = or i64 %"shl.314", %"zext.737"
  %".6132" = inttoptr i64 %"or.287" to ptr
  %".6133" = ptrtoint ptr %".6132" to i64
  %".6134" = add i64 %".6133", 8
  %"for_LDG.266" = inttoptr i64 %".6134" to ptr
  %".6135" = load float, ptr %"for_LDG.266"
  %".6136" = bitcast ptr %"R34" to ptr
  store float %".6135", ptr %".6136"
  ; LDG.E.SYS R36, [R6+0x8]
  %".6139" = load i32, ptr %"R6"
  %"zext.739" = zext i32 %".6139" to i64
  %".6140" = load i32, ptr %"R7"
  %"zext.740" = zext i32 %".6140" to i64
  %"shl.315" = shl i64 %"zext.740", 32
  %"or.288" = or i64 %"shl.315", %"zext.739"
  %".6141" = inttoptr i64 %"or.288" to ptr
  %".6142" = ptrtoint ptr %".6141" to i64
  %".6143" = add i64 %".6142", 8
  %"for_LDG.267" = inttoptr i64 %".6143" to ptr
  %".6144" = load float, ptr %"for_LDG.267"
  %".6145" = bitcast ptr %"R36" to ptr
  store float %".6144", ptr %".6145"
  ; LDG.E.SYS R37, [R8+0xc]
  %".6148" = load i32, ptr %"R8"
  %"zext.741" = zext i32 %".6148" to i64
  %".6149" = load i32, ptr %"R9"
  %"zext.742" = zext i32 %".6149" to i64
  %"shl.316" = shl i64 %"zext.742", 32
  %"or.289" = or i64 %"shl.316", %"zext.741"
  %".6150" = inttoptr i64 %"or.289" to ptr
  %".6151" = ptrtoint ptr %".6150" to i64
  %".6152" = add i64 %".6151", 12
  %"for_LDG.268" = inttoptr i64 %".6152" to ptr
  %".6153" = load float, ptr %"for_LDG.268"
  %".6154" = bitcast ptr %"R37" to ptr
  store float %".6153", ptr %".6154"
  ; LDG.E.SYS R38, [R4+0xc]
  %".6157" = load i32, ptr %"R4"
  %"zext.743" = zext i32 %".6157" to i64
  %".6158" = load i32, ptr %"R5"
  %"zext.744" = zext i32 %".6158" to i64
  %"shl.317" = shl i64 %"zext.744", 32
  %"or.290" = or i64 %"shl.317", %"zext.743"
  %".6159" = inttoptr i64 %"or.290" to ptr
  %".6160" = ptrtoint ptr %".6159" to i64
  %".6161" = add i64 %".6160", 12
  %"for_LDG.269" = inttoptr i64 %".6161" to ptr
  %".6162" = load float, ptr %"for_LDG.269"
  %".6163" = bitcast ptr %"R38" to ptr
  store float %".6162", ptr %".6163"
  ; LDG.E.SYS R39, [R6+0xc]
  %".6166" = load i32, ptr %"R6"
  %"zext.745" = zext i32 %".6166" to i64
  %".6167" = load i32, ptr %"R7"
  %"zext.746" = zext i32 %".6167" to i64
  %"shl.318" = shl i64 %"zext.746", 32
  %"or.291" = or i64 %"shl.318", %"zext.745"
  %".6168" = inttoptr i64 %"or.291" to ptr
  %".6169" = ptrtoint ptr %".6168" to i64
  %".6170" = add i64 %".6169", 12
  %"for_LDG.270" = inttoptr i64 %".6170" to ptr
  %".6171" = load float, ptr %"for_LDG.270"
  %".6172" = bitcast ptr %"R39" to ptr
  store float %".6171", ptr %".6172"
  ; IADD3 R22, R22, -0x4, RZ
  %".6175" = load i32, ptr %"R22"
  %"add.269" = add i32 %".6175", -4
  %"add.270" = add i32 %"add.269", 0
  store i32 %"add.270", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".6178" = load i32, ptr %"R23"
  %"add.271" = add i32 %".6178", 4
  %"add.272" = add i32 %"add.271", 0
  store i32 %"add.272", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".6181" = load i32, ptr %"R22"
  %".6182" = load i1, ptr %"PT"
  %"cmp.48" = icmp ne i32 %".6181", 0
  %".6183" = and i1 %"cmp.48", %".6182"
  store i1 %".6183", ptr %"P0"
  ; FFMA R11, R11, R13, R44
  %".6186" = load float, ptr %"R11"
  %".6187" = load float, ptr %"R13"
  %".6188" = load float, ptr %"R44"
  %"fmul.239" = fmul float %".6186", %".6187"
  %"fadd.220" = fadd float %"fmul.239", %".6188"
  %".6189" = bitcast ptr %"R11" to ptr
  store float %"fadd.220", ptr %".6189"
  ; FFMA R10, R13, R10, R56
  %".6192" = load float, ptr %"R13"
  %".6193" = load float, ptr %"R10"
  %".6194" = load float, ptr %"R56"
  %"fmul.240" = fmul float %".6192", %".6193"
  %"fadd.221" = fadd float %"fmul.240", %".6194"
  %".6195" = bitcast ptr %"R10" to ptr
  store float %"fadd.221", ptr %".6195"
  ; FFMA R11, R12, R25, R11
  %".6198" = load float, ptr %"R12"
  %".6199" = load float, ptr %"R25"
  %".6200" = load float, ptr %"R11"
  %"fmul.241" = fmul float %".6198", %".6199"
  %"fadd.222" = fadd float %"fmul.241", %".6200"
  %".6201" = bitcast ptr %"R11" to ptr
  store float %"fadd.222", ptr %".6201"
  ; FFMA R10, R25, R24, R10
  %".6204" = load float, ptr %"R25"
  %".6205" = load float, ptr %"R24"
  %".6206" = load float, ptr %"R10"
  %"fmul.242" = fmul float %".6204", %".6205"
  %"fadd.223" = fadd float %"fmul.242", %".6206"
  %".6207" = bitcast ptr %"R10" to ptr
  store float %"fadd.223", ptr %".6207"
  ; FFMA R11, R34, R35, R11
  %".6210" = load float, ptr %"R34"
  %".6211" = load float, ptr %"R35"
  %".6212" = load float, ptr %"R11"
  %"fmul.243" = fmul float %".6210", %".6211"
  %"fadd.224" = fadd float %"fmul.243", %".6212"
  %".6213" = bitcast ptr %"R11" to ptr
  store float %"fadd.224", ptr %".6213"
  ; FFMA R10, R35, R36, R10
  %".6216" = load float, ptr %"R35"
  %".6217" = load float, ptr %"R36"
  %".6218" = load float, ptr %"R10"
  %"fmul.244" = fmul float %".6216", %".6217"
  %"fadd.225" = fadd float %"fmul.244", %".6218"
  %".6219" = bitcast ptr %"R10" to ptr
  store float %"fadd.225", ptr %".6219"
  ; FFMA R44, R38, R37, R11
  %".6222" = load float, ptr %"R38"
  %".6223" = load float, ptr %"R37"
  %".6224" = load float, ptr %"R11"
  %"fmul.245" = fmul float %".6222", %".6223"
  %"fadd.226" = fadd float %"fmul.245", %".6224"
  %".6225" = bitcast ptr %"R44" to ptr
  store float %"fadd.226", ptr %".6225"
  ; FFMA R56, R37, R39, R10
  %".6228" = load float, ptr %"R37"
  %".6229" = load float, ptr %"R39"
  %".6230" = load float, ptr %"R10"
  %"fmul.246" = fmul float %".6228", %".6229"
  %"fadd.227" = fadd float %"fmul.246", %".6230"
  %".6231" = bitcast ptr %"R56" to ptr
  store float %"fadd.227", ptr %".6231"
  ; @P0 BRA `(.L_x_28)
  %".6234" = load i1, ptr %"P0"
  %".6235" = icmp ne i1 %".6234", 1
  br i1 %".6235", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".6238" = load i32, ptr %"R48"
  %".6239" = load i1, ptr %"PT"
  %"cmp.49" = icmp ne i32 %".6238", 0
  %".6240" = and i1 %"cmp.49", %".6239"
  store i1 %".6240", ptr %"P0"
  ; @!P0 BRA `(.L_x_26)
  %".6243" = load i1, ptr %"P0"
  %".6244" = icmp eq i1 %".6243", 1
  br i1 %".6244", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".6247" = load i32, ptr %"R0"
  %".6248" = load i32, ptr %"R23"
  %"add.273" = add i32 %".6247", %".6248"
  %"add.274" = add i32 %"add.273", 0
  store i32 %"add.274", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".6253" = load i32, ptr %"R2"
  %".6254" = load i32, ptr %"R5"
  %"shl.319" = shl i32 %".6253", 2
  %"add.275" = add i32 %"shl.319", %".6254"
  store i32 %"add.275", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".6257" = load i32, ptr %"R2"
  %".6258" = load i32, ptr %"R5"
  %"mul.86" = mul i32 %".6257", 3
  %"add.276" = add i32 %"mul.86", %".6258"
  store i32 %"add.276", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".6261" = load i32, ptr %"R23"
  %".6262" = load i32, ptr %"R9"
  %"zext.747" = zext i32 %".6261" to i64
  %"zext.748" = zext i32 %".6262" to i64
  %"mul.87" = mul i64 %"zext.747", %"zext.748"
  %".6263" = ptrtoint ptr %"Arg_1" to i64
  %"add.277" = add i64 %"mul.87", %".6263"
  %".6264" = and i64 %"add.277", 18446744069414584320
  %".6265" = lshr i64 %".6264", 32
  %"trunc32.162" = trunc i64 %".6265" to i32
  %"trunc32.163" = trunc i64 %"add.277" to i32
  store i32 %"trunc32.163", ptr %"R4"
  store i32 %"trunc32.162", ptr %"R5"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".6269" = load i32, ptr %"R6"
  %".6270" = load i32, ptr %"R9"
  %"zext.749" = zext i32 %".6269" to i64
  %"zext.750" = zext i32 %".6270" to i64
  %"mul.88" = mul i64 %"zext.749", %"zext.750"
  %".6271" = ptrtoint ptr %"Arg_2" to i64
  %"add.278" = add i64 %"mul.88", %".6271"
  %".6272" = and i64 %"add.278", 18446744069414584320
  %".6273" = lshr i64 %".6272", 32
  %"trunc32.164" = trunc i64 %".6273" to i32
  %"trunc32.165" = trunc i64 %"add.278" to i32
  store i32 %"trunc32.165", ptr %"R6"
  store i32 %"trunc32.164", ptr %"R7"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".6277" = load i32, ptr %"R8"
  %".6278" = load i32, ptr %"R9"
  %"zext.751" = zext i32 %".6277" to i64
  %"zext.752" = zext i32 %".6278" to i64
  %"mul.89" = mul i64 %"zext.751", %"zext.752"
  %".6279" = ptrtoint ptr %"Arg_2" to i64
  %"add.279" = add i64 %"mul.89", %".6279"
  %".6280" = and i64 %"add.279", 18446744069414584320
  %".6281" = lshr i64 %".6280", 32
  %"trunc32.166" = trunc i64 %".6281" to i32
  %"trunc32.167" = trunc i64 %"add.279" to i32
  store i32 %"trunc32.167", ptr %"R8"
  store i32 %"trunc32.166", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".6285" = load i32, ptr %"R4"
  %"zext.753" = zext i32 %".6285" to i64
  %".6286" = load i32, ptr %"R5"
  %"zext.754" = zext i32 %".6286" to i64
  %"shl.320" = shl i64 %"zext.754", 32
  %"or.292" = or i64 %"shl.320", %"zext.753"
  %".6287" = inttoptr i64 %"or.292" to ptr
  %".6288" = ptrtoint ptr %".6287" to i64
  %".6289" = add i64 %".6288", 0
  %"for_LDG.271" = inttoptr i64 %".6289" to ptr
  %".6290" = load float, ptr %"for_LDG.271"
  %".6291" = bitcast ptr %"R13" to ptr
  store float %".6290", ptr %".6291"
  ; LDG.E.SYS R11, [R6]
  %".6294" = load i32, ptr %"R6"
  %"zext.755" = zext i32 %".6294" to i64
  %".6295" = load i32, ptr %"R7"
  %"zext.756" = zext i32 %".6295" to i64
  %"shl.321" = shl i64 %"zext.756", 32
  %"or.293" = or i64 %"shl.321", %"zext.755"
  %".6296" = inttoptr i64 %"or.293" to ptr
  %".6297" = ptrtoint ptr %".6296" to i64
  %".6298" = add i64 %".6297", 0
  %"for_LDG.272" = inttoptr i64 %".6298" to ptr
  %".6299" = load float, ptr %"for_LDG.272"
  %".6300" = bitcast ptr %"R11" to ptr
  store float %".6299", ptr %".6300"
  ; LDG.E.SYS R10, [R8]
  %".6303" = load i32, ptr %"R8"
  %"zext.757" = zext i32 %".6303" to i64
  %".6304" = load i32, ptr %"R9"
  %"zext.758" = zext i32 %".6304" to i64
  %"shl.322" = shl i64 %"zext.758", 32
  %"or.294" = or i64 %"shl.322", %"zext.757"
  %".6305" = inttoptr i64 %"or.294" to ptr
  %".6306" = ptrtoint ptr %".6305" to i64
  %".6307" = add i64 %".6306", 0
  %"for_LDG.273" = inttoptr i64 %".6307" to ptr
  %".6308" = load float, ptr %"for_LDG.273"
  %".6309" = bitcast ptr %"R10" to ptr
  store float %".6308", ptr %".6309"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".6312" = load i32, ptr %"R48"
  %".6313" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".6312", 1
  %".6314" = and i1 %"cmp.50", %".6313"
  store i1 %".6314", ptr %"P0"
  ; FFMA R44, R11, R13, R44
  %".6317" = load float, ptr %"R11"
  %".6318" = load float, ptr %"R13"
  %".6319" = load float, ptr %"R44"
  %"fmul.247" = fmul float %".6317", %".6318"
  %"fadd.228" = fadd float %"fmul.247", %".6319"
  %".6320" = bitcast ptr %"R44" to ptr
  store float %"fadd.228", ptr %".6320"
  ; FFMA R56, R13, R10, R56
  %".6323" = load float, ptr %"R13"
  %".6324" = load float, ptr %"R10"
  %".6325" = load float, ptr %"R56"
  %"fmul.248" = fmul float %".6323", %".6324"
  %"fadd.229" = fadd float %"fmul.248", %".6325"
  %".6326" = bitcast ptr %"R56" to ptr
  store float %"fadd.229", ptr %".6326"
  ; @!P0 BRA `(.L_x_26)
  %".6329" = load i1, ptr %"P0"
  %".6330" = icmp eq i1 %".6329", 1
  br i1 %".6330", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".6333" = load i32, ptr %"R48"
  %".6334" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".6333", 2
  %".6335" = and i1 %"cmp.51", %".6334"
  store i1 %".6335", ptr %"P0"
  ; LDG.E.SYS R11, [R6+0x4]
  %".6338" = load i32, ptr %"R6"
  %"zext.759" = zext i32 %".6338" to i64
  %".6339" = load i32, ptr %"R7"
  %"zext.760" = zext i32 %".6339" to i64
  %"shl.323" = shl i64 %"zext.760", 32
  %"or.295" = or i64 %"shl.323", %"zext.759"
  %".6340" = inttoptr i64 %"or.295" to ptr
  %".6341" = ptrtoint ptr %".6340" to i64
  %".6342" = add i64 %".6341", 4
  %"for_LDG.274" = inttoptr i64 %".6342" to ptr
  %".6343" = load float, ptr %"for_LDG.274"
  %".6344" = bitcast ptr %"R11" to ptr
  store float %".6343", ptr %".6344"
  ; LDG.E.SYS R13, [R4+0x4]
  %".6347" = load i32, ptr %"R4"
  %"zext.761" = zext i32 %".6347" to i64
  %".6348" = load i32, ptr %"R5"
  %"zext.762" = zext i32 %".6348" to i64
  %"shl.324" = shl i64 %"zext.762", 32
  %"or.296" = or i64 %"shl.324", %"zext.761"
  %".6349" = inttoptr i64 %"or.296" to ptr
  %".6350" = ptrtoint ptr %".6349" to i64
  %".6351" = add i64 %".6350", 4
  %"for_LDG.275" = inttoptr i64 %".6351" to ptr
  %".6352" = load float, ptr %"for_LDG.275"
  %".6353" = bitcast ptr %"R13" to ptr
  store float %".6352", ptr %".6353"
  ; LDG.E.SYS R10, [R8+0x4]
  %".6356" = load i32, ptr %"R8"
  %"zext.763" = zext i32 %".6356" to i64
  %".6357" = load i32, ptr %"R9"
  %"zext.764" = zext i32 %".6357" to i64
  %"shl.325" = shl i64 %"zext.764", 32
  %"or.297" = or i64 %"shl.325", %"zext.763"
  %".6358" = inttoptr i64 %"or.297" to ptr
  %".6359" = ptrtoint ptr %".6358" to i64
  %".6360" = add i64 %".6359", 4
  %"for_LDG.276" = inttoptr i64 %".6360" to ptr
  %".6361" = load float, ptr %"for_LDG.276"
  %".6362" = bitcast ptr %"R10" to ptr
  store float %".6361", ptr %".6362"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".6365" = load i1, ptr %"P0"
  %".6366" = icmp ne i1 %".6365", 1
  br i1 %".6366", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".6369" = load i32, ptr %"R6"
  %"zext.765" = zext i32 %".6369" to i64
  %".6370" = load i32, ptr %"R7"
  %"zext.766" = zext i32 %".6370" to i64
  %"shl.326" = shl i64 %"zext.766", 32
  %"or.298" = or i64 %"shl.326", %"zext.765"
  %".6371" = inttoptr i64 %"or.298" to ptr
  %".6372" = ptrtoint ptr %".6371" to i64
  %".6373" = add i64 %".6372", 8
  %"for_LDG.277" = inttoptr i64 %".6373" to ptr
  %".6374" = load float, ptr %"for_LDG.277"
  %".6375" = bitcast ptr %"R23" to ptr
  store float %".6374", ptr %".6375"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".6380" = load i1, ptr %"P0"
  %".6381" = icmp ne i1 %".6380", 1
  br i1 %".6381", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".6384" = load i32, ptr %"R4"
  %"zext.767" = zext i32 %".6384" to i64
  %".6385" = load i32, ptr %"R5"
  %"zext.768" = zext i32 %".6385" to i64
  %"shl.327" = shl i64 %"zext.768", 32
  %"or.299" = or i64 %"shl.327", %"zext.767"
  %".6386" = inttoptr i64 %"or.299" to ptr
  %".6387" = ptrtoint ptr %".6386" to i64
  %".6388" = add i64 %".6387", 8
  %"for_LDG.278" = inttoptr i64 %".6388" to ptr
  %".6389" = load float, ptr %"for_LDG.278"
  %".6390" = bitcast ptr %"R25" to ptr
  store float %".6389", ptr %".6390"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".6395" = load i1, ptr %"P0"
  %".6396" = icmp ne i1 %".6395", 1
  br i1 %".6396", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".6399" = load i32, ptr %"R8"
  %"zext.769" = zext i32 %".6399" to i64
  %".6400" = load i32, ptr %"R9"
  %"zext.770" = zext i32 %".6400" to i64
  %"shl.328" = shl i64 %"zext.770", 32
  %"or.300" = or i64 %"shl.328", %"zext.769"
  %".6401" = inttoptr i64 %"or.300" to ptr
  %".6402" = ptrtoint ptr %".6401" to i64
  %".6403" = add i64 %".6402", 8
  %"for_LDG.279" = inttoptr i64 %".6403" to ptr
  %".6404" = load float, ptr %"for_LDG.279"
  %".6405" = bitcast ptr %"R12" to ptr
  store float %".6404", ptr %".6405"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".6410" = load float, ptr %"R11"
  %".6411" = load float, ptr %"R13"
  %".6412" = load float, ptr %"R44"
  %"fmul.249" = fmul float %".6410", %".6411"
  %"fadd.230" = fadd float %"fmul.249", %".6412"
  %".6413" = bitcast ptr %"R44" to ptr
  store float %"fadd.230", ptr %".6413"
  ; FFMA R56, R13, R10, R56
  %".6416" = load float, ptr %"R13"
  %".6417" = load float, ptr %"R10"
  %".6418" = load float, ptr %"R56"
  %"fmul.250" = fmul float %".6416", %".6417"
  %"fadd.231" = fadd float %"fmul.250", %".6418"
  %".6419" = bitcast ptr %"R56" to ptr
  store float %"fadd.231", ptr %".6419"
  ; @P0 FFMA R44, R23, R25, R44
  %".6422" = load i1, ptr %"P0"
  %".6423" = icmp ne i1 %".6422", 1
  br i1 %".6423", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".6426" = load float, ptr %"R23"
  %".6427" = load float, ptr %"R25"
  %".6428" = load float, ptr %"R44"
  %"fmul.251" = fmul float %".6426", %".6427"
  %"fadd.232" = fadd float %"fmul.251", %".6428"
  %".6429" = bitcast ptr %"R44" to ptr
  store float %"fadd.232", ptr %".6429"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".6434" = load i1, ptr %"P0"
  %".6435" = icmp ne i1 %".6434", 1
  br i1 %".6435", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".6438" = load float, ptr %"R25"
  %".6439" = load float, ptr %"R12"
  %".6440" = load float, ptr %"R56"
  %"fmul.252" = fmul float %".6438", %".6439"
  %"fadd.233" = fadd float %"fmul.252", %".6440"
  %".6441" = bitcast ptr %"R56" to ptr
  store float %"fadd.233", ptr %".6441"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".6446" = load i32, ptr %"R26"
  %"zext.771" = zext i32 %".6446" to i64
  %".6447" = load i32, ptr %"R27"
  %"zext.772" = zext i32 %".6447" to i64
  %"shl.329" = shl i64 %"zext.772", 32
  %"or.301" = or i64 %"shl.329", %"zext.771"
  %".6448" = inttoptr i64 %"or.301" to ptr
  %".6449" = ptrtoint ptr %".6448" to i64
  %".6450" = add i64 %".6449", 0
  %"for_LDG.280" = inttoptr i64 %".6450" to ptr
  %".6451" = load float, ptr %"for_LDG.280"
  %".6452" = bitcast ptr %"R5" to ptr
  store float %".6451", ptr %".6452"
  ; MOV R4, 0x3bbb989d
  %".6455" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6455"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".6459" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6459"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".6463" = load float, ptr %"R5"
  %".6464" = load float, ptr %"R44"
  %"fadd.234" = fadd float %".6463", %".6464"
  %".6465" = bitcast ptr %"R5" to ptr
  store float %"fadd.234", ptr %".6465"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6468" = load float, ptr %"R5"
  %".6469" = fneg float %".6468"
  %".6470" = load float, ptr %"R4"
  %"fmul.253" = fmul float %".6469", %".6470"
  %"fadd.235" = fadd float %"fmul.253", 0x3fe0000000000000
  %".6471" = bitcast ptr %"R4" to ptr
  store float %"fadd.235", ptr %".6471"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6474" = load float, ptr %"R4"
  %".6475" = load float, ptr %"R7"
  %"fmul.254" = fmul float %".6474", %".6475"
  %"fadd.236" = fadd float %"fmul.254", 0x4168000020000000
  %".6476" = bitcast ptr %"R4" to ptr
  store float %"fadd.236", ptr %".6476"
  ; FADD R6, R4.reuse, -12583039
  %".6479" = load float, ptr %"R4"
  %"fadd.237" = fadd float %".6479", 0xc168000fe0000000
  %".6480" = bitcast ptr %"R6" to ptr
  store float %"fadd.237", ptr %".6480"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".6483" = icmp ult i32 23, 32
  %"SHF_min.20" = select  i1 %".6483", i32 23, i32 32
  %".6484" = load i32, ptr %"R4"
  %"zext.773" = zext i32 0 to i64
  %"zext.774" = zext i32 %".6484" to i64
  %"zext.775" = zext i32 23 to i64
  %"shl.330" = shl i64 %"zext.773", 32
  %"or.302" = or i64 %"shl.330", %"zext.774"
  %"shl.331" = shl i64 %"or.302", %"zext.775"
  %"and.12" = and i64 %"shl.331", 4294967295
  %"trunc32.168" = trunc i64 %"and.12" to i32
  store i32 %"trunc32.168", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6487" = load float, ptr %"R5"
  %".6488" = fneg float %".6487"
  %".6489" = load float, ptr %"R6"
  %".6490" = fneg float %".6489"
  %"fmul.255" = fmul float %".6488", 0x3ff7154760000000
  %"fadd.238" = fadd float %"fmul.255", %".6490"
  %".6491" = bitcast ptr %"R6" to ptr
  store float %"fadd.238", ptr %".6491"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6494" = load float, ptr %"R5"
  %".6495" = fneg float %".6494"
  %".6496" = load float, ptr %"R6"
  %"fmul.256" = fmul float %".6495", 0x3e54ae0c00000000
  %"fadd.239" = fadd float %"fmul.256", %".6496"
  %".6497" = bitcast ptr %"R6" to ptr
  store float %"fadd.239", ptr %".6497"
  ; MUFU.EX2 R5, R6
  %".6500" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".6500")
  %".6501" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".6501"
  ; FFMA R24, R4, R5, 1
  %".6504" = load float, ptr %"R4"
  %".6505" = load float, ptr %"R5"
  %"fmul.257" = fmul float %".6504", %".6505"
  %"fadd.240" = fadd float %"fmul.257", 0x3ff0000000000000
  %".6506" = bitcast ptr %"R24" to ptr
  store float %"fadd.240", ptr %".6506"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".6509" = load i32, ptr %"R24"
  %"add.280" = add i32 %".6509", 25165824
  %"add.281" = add i32 %"add.280", 0
  store i32 %"add.281", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".6512" = load i32, ptr %"R4"
  %".6513" = and i32 %".6512", 2139095040
  store i32 %".6513", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".6516" = load i32, ptr %"R4"
  %".6517" = load i1, ptr %"PT"
  %"cmp.52" = icmp sgt i32 %".6516", 33554431
  %".6518" = and i1 %"cmp.52", %".6517"
  store i1 %".6518", ptr %"P0"
  ; @P0 BRA `(.L_x_33)
  %".6521" = load i1, ptr %"P0"
  %".6522" = icmp ne i1 %".6521", 1
  br i1 %".6522", label %".L_x_33", label %".L_x_26_split_0x3910_CALL_0x3930"
.L_x_26_split_0x3910_CALL_0x3930:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6529" = icmp ult i32 1, 32
  %"SHF_min.21" = select  i1 %".6529", i32 1, i32 32
  %".6530" = load i32, ptr %"R24"
  %"zext.776" = zext i32 0 to i64
  %"zext.777" = zext i32 %".6530" to i64
  %"zext.778" = zext i32 1 to i64
  %"shl.332" = shl i64 %"zext.776", 32
  %"or.303" = or i64 %"shl.332", %"zext.777"
  %"shl.333" = shl i64 %"or.303", %"zext.778"
  %"and.13" = and i64 %"shl.333", 4294967295
  %"trunc32.169" = trunc i64 %"and.13" to i32
  store i32 %"trunc32.169", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".6535" = icmp ult i32 24, 32
  %"SHF_min.22" = select  i1 %".6535", i32 24, i32 32
  %".6536" = load i32, ptr %"R11"
  %"zext.779" = zext i32 %".6536" to i64
  %"zext.780" = zext i32 0 to i64
  %"zext.781" = zext i32 24 to i64
  %"shl.334" = shl i64 %"zext.779", 32
  %"or.304" = or i64 %"shl.334", %"zext.780"
  %"lshr.13" = lshr i64 %"or.304", %"zext.781"
  %"lshr.14" = lshr i64 %"lshr.13", 32
  %"trunc32.170" = trunc i64 %"lshr.14" to i32
  store i32 %"trunc32.170", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".6539" = load i32, ptr %"R25"
  %".6540" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6539", 0
  %".6541" = and i1 %"cmp.53", %".6540"
  store i1 %".6541", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".6544" = load i1, ptr %"P0"
  %".6545" = icmp ne i1 %".6544", 1
  br i1 %".6545", label %".L_x_49...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6548" = icmp ult i32 1, 32
  %"SHF_min.23" = select  i1 %".6548", i32 1, i32 32
  %".6549" = load i32, ptr %"R24"
  %"zext.782" = zext i32 0 to i64
  %"zext.783" = zext i32 %".6549" to i64
  %"zext.784" = zext i32 1 to i64
  %"shl.335" = shl i64 %"zext.782", 32
  %"or.305" = or i64 %"shl.335", %"zext.783"
  %"shl.336" = shl i64 %"or.305", %"zext.784"
  %"and.14" = and i64 %"shl.336", 4294967295
  %"trunc32.171" = trunc i64 %"and.14" to i32
  store i32 %"trunc32.171", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".6552" = load i32, ptr %"R11"
  %".6553" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6552", 0
  %".6554" = and i1 %"cmp.54", %".6553"
  store i1 %".6554", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6557" = load i1, ptr %"P0"
  %".6558" = icmp ne i1 %".6557", 1
  br i1 %".6558", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6561" = load float, ptr %"R24"
  %"fmul.258" = fmul float %".6561", 0x43f0000000000000
  %"fadd.241" = fadd float %"fmul.258",              0x0
  %".6562" = bitcast ptr %"R12" to ptr
  store float %"fadd.241", ptr %".6562"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6567" = load float, ptr %"R24"
  %"fmul.259" = fmul float %".6567", 0x43f0000000000000
  %"fadd.242" = fadd float %"fmul.259",              0x0
  %".6568" = bitcast ptr %"R12" to ptr
  store float %"fadd.242", ptr %".6568"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3:
  ; @!P0 MUFU.RCP R11, R24
  %".6573" = load i1, ptr %"P0"
  %".6574" = icmp eq i1 %".6573", 1
  br i1 %".6574", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".6577" = load float, ptr %"R24"
  %".6578" = fdiv float 0x3ff0000000000000, %".6577"
  %".6579" = bitcast ptr %"R11" to ptr
  store float %".6578", ptr %".6579"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3:
  ; MUFU.RCP R11, R24
  %".6584" = load float, ptr %"R24"
  %".6585" = fdiv float 0x3ff0000000000000, %".6584"
  %".6586" = bitcast ptr %"R11" to ptr
  store float %".6585", ptr %".6586"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3:
  ; @P0 MUFU.RCP R13, R12
  %".6591" = load i1, ptr %"P0"
  %".6592" = icmp ne i1 %".6591", 1
  br i1 %".6592", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".6595" = load float, ptr %"R12"
  %".6596" = fdiv float 0x3ff0000000000000, %".6595"
  %".6597" = bitcast ptr %"R13" to ptr
  store float %".6596", ptr %".6597"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3:
  ; MUFU.RCP R13, R12
  %".6602" = load float, ptr %"R12"
  %".6603" = fdiv float 0x3ff0000000000000, %".6602"
  %".6604" = bitcast ptr %"R13" to ptr
  store float %".6603", ptr %".6604"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3:
  ; @P0 FFMA R22, R12, R13, -1
  %".6609" = load i1, ptr %"P0"
  %".6610" = icmp ne i1 %".6609", 1
  br i1 %".6610", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".6613" = load float, ptr %"R12"
  %".6614" = load float, ptr %"R13"
  %"fmul.260" = fmul float %".6613", %".6614"
  %"fadd.243" = fadd float %"fmul.260", 0xbff0000000000000
  %".6615" = bitcast ptr %"R22" to ptr
  store float %"fadd.243", ptr %".6615"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3:
  ; FFMA R22, R12, R13, -1
  %".6620" = load float, ptr %"R12"
  %".6621" = load float, ptr %"R13"
  %"fmul.261" = fmul float %".6620", %".6621"
  %"fadd.244" = fadd float %"fmul.261", 0xbff0000000000000
  %".6622" = bitcast ptr %"R22" to ptr
  store float %"fadd.244", ptr %".6622"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".6627" = load i1, ptr %"P0"
  %".6628" = icmp ne i1 %".6627", 1
  br i1 %".6628", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".6631" = load float, ptr %"R22"
  %".6632" = fneg float %".6631"
  %"fadd.245" = fadd float %".6632",              0x0
  %".6633" = bitcast ptr %"R22" to ptr
  store float %"fadd.245", ptr %".6633"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3:
  ; FADD.FTZ R22, -R22, -RZ
  %".6638" = load float, ptr %"R22"
  %".6639" = fneg float %".6638"
  %"fadd.246" = fadd float %".6639",              0x0
  %".6640" = bitcast ptr %"R22" to ptr
  store float %"fadd.246", ptr %".6640"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3:
  ; @P0 FFMA R22, R13, R22, R13
  %".6645" = load i1, ptr %"P0"
  %".6646" = icmp ne i1 %".6645", 1
  br i1 %".6646", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".6649" = load float, ptr %"R13"
  %".6650" = load float, ptr %"R22"
  %".6651" = load float, ptr %"R13"
  %"fmul.262" = fmul float %".6649", %".6650"
  %"fadd.247" = fadd float %"fmul.262", %".6651"
  %".6652" = bitcast ptr %"R22" to ptr
  store float %"fadd.247", ptr %".6652"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3:
  ; FFMA R22, R13, R22, R13
  %".6657" = load float, ptr %"R13"
  %".6658" = load float, ptr %"R22"
  %".6659" = load float, ptr %"R13"
  %"fmul.263" = fmul float %".6657", %".6658"
  %"fadd.248" = fadd float %"fmul.263", %".6659"
  %".6660" = bitcast ptr %"R22" to ptr
  store float %"fadd.248", ptr %".6660"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6665" = load i1, ptr %"P0"
  %".6666" = icmp ne i1 %".6665", 1
  br i1 %".6666", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6669" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".6669", 0x43f0000000000000
  %"fadd.249" = fadd float %"fmul.264",              0x0
  %".6670" = bitcast ptr %"R11" to ptr
  store float %"fadd.249", ptr %".6670"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6675" = load float, ptr %"R22"
  %"fmul.265" = fmul float %".6675", 0x43f0000000000000
  %"fadd.250" = fadd float %"fmul.265",              0x0
  %".6676" = bitcast ptr %"R11" to ptr
  store float %"fadd.250", ptr %".6676"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3:
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_49...3:
  ; IADD3 R34, R25, -0xfd, RZ
  %".6683" = load i32, ptr %"R25"
  %"add.282" = add i32 %".6683", -253
  %"add.283" = add i32 %"add.282", 0
  store i32 %"add.283", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".6686" = load i32, ptr %"R34"
  %".6687" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6686", 1
  %".6688" = and i1 %"cmp.55", %".6687"
  store i1 %".6688", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".6691" = load i1, ptr %"P0"
  %".6692" = icmp ne i1 %".6691", 1
  br i1 %".6692", label %".L_x_51...3", label %".L_x_49_split_0x4a30...3"
.L_x_49_split_0x4a30...3:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6695" = load float, ptr %"R24"
  %".6696" = bitcast float %".6695" to i32
  %".6697" = and i32 %".6696", 8388607
  store i32 %".6697", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".6702" = load i32, ptr %"R11"
  %".6703" = or i32 %".6702", 1065353216
  store i32 %".6703", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".6706" = load i32, ptr %"R34"
  %".6707" = icmp ult i32 %".6706", 32
  %"SHF_min.24" = select  i1 %".6707", i32 %".6706", i32 32
  %".6708" = load i32, ptr %"R23"
  %".6709" = load i32, ptr %"R34"
  %"zext.785" = zext i32 0 to i64
  %"zext.786" = zext i32 %".6708" to i64
  %"zext.787" = zext i32 %".6709" to i64
  %"shl.337" = shl i64 %"zext.785", 32
  %"or.306" = or i64 %"shl.337", %"zext.786"
  %"shl.338" = shl i64 %"or.306", %"zext.787"
  %"and.15" = and i64 %"shl.338", 4294967295
  %"trunc32.172" = trunc i64 %"and.15" to i32
  store i32 %"trunc32.172", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".6712" = load float, ptr %"R11"
  %".6713" = fdiv float 0x3ff0000000000000, %".6712"
  %".6714" = bitcast ptr %"R12" to ptr
  store float %".6713", ptr %".6714"
  ; FFMA R13, R11, R12, -1
  %".6717" = load float, ptr %"R11"
  %".6718" = load float, ptr %"R12"
  %"fmul.266" = fmul float %".6717", %".6718"
  %"fadd.251" = fadd float %"fmul.266", 0xbff0000000000000
  %".6719" = bitcast ptr %"R13" to ptr
  store float %"fadd.251", ptr %".6719"
  ; FADD.FTZ R13, -R13, -RZ
  %".6722" = load float, ptr %"R13"
  %".6723" = fneg float %".6722"
  %"fadd.252" = fadd float %".6723",              0x0
  %".6724" = bitcast ptr %"R13" to ptr
  store float %"fadd.252", ptr %".6724"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".6727" = load float, ptr %"R12"
  %".6728" = load float, ptr %"R13"
  %".6729" = load float, ptr %"R12"
  %"fmul.267" = fmul float %".6727", %".6728"
  %"fadd.253" = fadd float %"fmul.267", %".6729"
  %".6730" = bitcast ptr %"R22" to ptr
  store float %"fadd.253", ptr %".6730"
  ; FFMA.RP R13, R12, R13, R12
  %".6733" = load float, ptr %"R12"
  %".6734" = load float, ptr %"R13"
  %".6735" = load float, ptr %"R12"
  %"fmul.268" = fmul float %".6733", %".6734"
  %"fadd.254" = fadd float %"fmul.268", %".6735"
  %".6736" = bitcast ptr %"R13" to ptr
  store float %"fadd.254", ptr %".6736"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".6739" = load float, ptr %"R22"
  %".6740" = bitcast float %".6739" to i32
  %".6741" = and i32 %".6740", 8388607
  store i32 %".6741", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".6744" = load float, ptr %"R22"
  %".6745" = load float, ptr %"R13"
  %".6746" = load i1, ptr %"PT"
  %"fcmp_ordered.2" = fcmp une float %".6744", %".6745"
  %".6747" = and i1 %"fcmp_ordered.2", %".6746"
  store i1 %".6747", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".6750" = load i32, ptr %"R12"
  %".6751" = or i32 %".6750", 8388608
  store i32 %".6751", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".6754" = load i1, ptr %"P0"
  %".6755" = icmp eq i1 %".6754", 1
  %"sel.4" = select  i1 %".6755", i32 0, i32 4294967295
  store i32 %"sel.4", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".6758" = load i32, ptr %"R23"
  %".6759" = load i32, ptr %"R12"
  %".6760" = and i32 %".6758", %".6759"
  store i32 %".6760", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".6763" = load i32, ptr %"R13"
  %".6764" = sub i32 0, %".6763"
  %"add.284" = add i32 %".6764", 0
  %"add.285" = add i32 %"add.284", 0
  store i32 %"add.285", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".6767" = load i32, ptr %"R34"
  %".6768" = icmp ult i32 %".6767", 32
  %"SHF_min.25" = select  i1 %".6768", i32 %".6767", i32 32
  %".6769" = load i32, ptr %"R23"
  %".6770" = load i32, ptr %"R34"
  %"zext.788" = zext i32 %".6769" to i64
  %"zext.789" = zext i32 0 to i64
  %"zext.790" = zext i32 %".6770" to i64
  %"shl.339" = shl i64 %"zext.788", 32
  %"or.307" = or i64 %"shl.339", %"zext.789"
  %"lshr.15" = lshr i64 %"or.307", %"zext.790"
  %"lshr.16" = lshr i64 %"lshr.15", 32
  %"trunc32.173" = trunc i64 %"lshr.16" to i32
  store i32 %"trunc32.173", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".6773" = load i32, ptr %"R13"
  %".6774" = load i32, ptr %"R34"
  %".6775" = load i32, ptr %"R12"
  %"LOP3_result.8" = call i32 @"custom_lop3"(i32 %".6775", i32 0, i32 %".6773", i32 %".6774")
  %".6776" = trunc i32 %"LOP3_result.8" to i1
  store i1 %".6776", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".6779" = load i32, ptr %"R23"
  %"LOP3_result.9" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6779", i32 1)
  %".6780" = trunc i32 %"LOP3_result.9" to i1
  store i1 %".6780", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".6783" = load i32, ptr %"R23"
  %"LOP3_result.10" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6783", i32 2)
  %".6784" = trunc i32 %"LOP3_result.10" to i1
  store i1 %".6784", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".6787" = load i1, ptr %"P0"
  %".6788" = sub i1 0, %".6787"
  %".6789" = load i1, ptr %"P1"
  %".6790" = sub i1 0, %".6789"
  %".6791" = or i1 %".6788", %".6790"
  %".6792" = and i1 %".6791", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6794" = load float, ptr %"R24"
  %".6795" = bitcast float %".6794" to i32
  %"LOP3_result.11" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".6795", i32 8388607)
  %".6796" = trunc i32 %"LOP3_result.11" to i1
  store i1 %".6796", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".6799" = load i1, ptr %"P0"
  %".6800" = icmp eq i1 %".6799", 1
  %"sel.5" = select  i1 %".6800", i32 0, i32 1
  store i32 %"sel.5", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".6803" = load i32, ptr %"R11"
  %".6804" = sub i32 0, %".6803"
  %"add.286" = add i32 %".6804", 0
  %"add.287" = add i32 %"add.286", 0
  store i32 %"add.287", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".6807" = load i32, ptr %"R11"
  %".6808" = load i1, ptr %"PT"
  %"cmp.56" = icmp sge i32 %".6807", 0
  %".6809" = and i1 %"cmp.56", %".6808"
  store i1 %".6809", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".6812" = load i32, ptr %"R25"
  %"add.288" = add i32 %".6812", -252
  %"add.289" = add i32 %"add.288", 0
  store i32 %"add.289", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".6815" = load i32, ptr %"R11"
  %".6816" = icmp ult i32 %".6815", 32
  %"SHF_min.26" = select  i1 %".6816", i32 %".6815", i32 32
  %".6817" = load i32, ptr %"R12"
  %".6818" = load i32, ptr %"R11"
  %"zext.791" = zext i32 %".6817" to i64
  %"zext.792" = zext i32 0 to i64
  %"zext.793" = zext i32 %".6818" to i64
  %"shl.340" = shl i64 %"zext.791", 32
  %"or.308" = or i64 %"shl.340", %"zext.792"
  %"lshr.17" = lshr i64 %"or.308", %"zext.793"
  %"lshr.18" = lshr i64 %"lshr.17", 32
  %"trunc32.174" = trunc i64 %"lshr.18" to i32
  store i32 %"trunc32.174", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".6821" = load i1, ptr %"P0"
  %".6822" = icmp eq i1 %".6821", 1
  br i1 %".6822", label %".L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".6825" = load i32, ptr %"R11"
  %"add.290" = add i32 %".6825", 1
  %"add.291" = add i32 %"add.290", 0
  store i32 %"add.291", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3:
  ; IADD3 R11, R11, 0x1, RZ
  %".6830" = load i32, ptr %"R11"
  %"add.292" = add i32 %".6830", 1
  %"add.293" = add i32 %"add.292", 0
  store i32 %"add.293", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...3"
.L_x_49_split_0x4be0...3:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".6835" = load i1, ptr %"P1"
  %".6836" = icmp eq i1 %".6835", 1
  br i1 %".6836", label %".L_x_49_split_0x4be0...3_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0...3_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6839" = icmp ult i32 1, 32
  %"SHF_min.27" = select  i1 %".6839", i32 1, i32 32
  %".6840" = load i32, ptr %"R11"
  %"zext.794" = zext i32 0 to i64
  %"zext.795" = zext i32 %".6840" to i64
  %"zext.796" = zext i32 1 to i64
  %"shl.341" = shl i64 %"zext.794", 32
  %"or.309" = or i64 %"shl.341", %"zext.795"
  %"shl.342" = shl i64 %"or.309", %"zext.796"
  %"and.16" = and i64 %"shl.342", 4294967295
  %"trunc32.175" = trunc i64 %"and.16" to i32
  store i32 %"trunc32.175", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6845" = icmp ult i32 1, 32
  %"SHF_min.28" = select  i1 %".6845", i32 1, i32 32
  %".6846" = load i32, ptr %"R11"
  %"zext.797" = zext i32 0 to i64
  %"zext.798" = zext i32 %".6846" to i64
  %"zext.799" = zext i32 1 to i64
  %"shl.343" = shl i64 %"zext.797", 32
  %"or.310" = or i64 %"shl.343", %"zext.798"
  %"shl.344" = shl i64 %"or.310", %"zext.799"
  %"and.17" = and i64 %"shl.344", 4294967295
  %"trunc32.176" = trunc i64 %"and.17" to i32
  store i32 %"trunc32.176", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...3"
.L_x_49_split_0x4bf0...3:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".6851" = load i32, ptr %"R11"
  %".6852" = load float, ptr %"R24"
  %".6853" = bitcast float %".6852" to i32
  %".6854" = or i32 %".6851", 2147483648
  %".6855" = or i32 %".6851", %".6853"
  %".6856" = and i32 %".6854", %".6855"
  store i32 %".6856", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_51...3:
  ; MUFU.RCP R11, R24
  %".6861" = load float, ptr %"R24"
  %".6862" = fdiv float 0x3ff0000000000000, %".6861"
  %".6863" = bitcast ptr %"R11" to ptr
  store float %".6862", ptr %".6863"
  br label %".L_x_50...3"
.L_x_50...3:
  ; BSYNC B1
  br label %".L_x_48...3"
.L_x_48...3:
  ; MOV R22, R11
  %".6869" = load float, ptr %"R11"
  %".6870" = bitcast ptr %"R22" to ptr
  store float %".6869", ptr %".6870"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.2"
.L_x_52...3:
  ; BRA `(.L_x_52)
  br label %".L_x_52...3"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.2:
  br label %".L_x_26_split_0x3910_postCALL_0x3930"
.L_x_26_split_0x3910_postCALL_0x3930:
  ; BRA `(.L_x_34)
  br label %".L_x_34"
.L_x_33:
  ; MUFU.RCP R22, R24
  %".6882" = load float, ptr %"R24"
  %".6883" = fdiv float 0x3ff0000000000000, %".6882"
  %".6884" = bitcast ptr %"R22" to ptr
  store float %".6883", ptr %".6884"
  ; FFMA R4, R24, R22, -1
  %".6887" = load float, ptr %"R24"
  %".6888" = load float, ptr %"R22"
  %"fmul.269" = fmul float %".6887", %".6888"
  %"fadd.255" = fadd float %"fmul.269", 0xbff0000000000000
  %".6889" = bitcast ptr %"R4" to ptr
  store float %"fadd.255", ptr %".6889"
  ; FADD.FTZ R5, -R4, -RZ
  %".6892" = load float, ptr %"R4"
  %".6893" = fneg float %".6892"
  %"fadd.256" = fadd float %".6893",              0x0
  %".6894" = bitcast ptr %"R5" to ptr
  store float %"fadd.256", ptr %".6894"
  ; FFMA R22, R22, R5, R22
  %".6897" = load float, ptr %"R22"
  %".6898" = load float, ptr %"R5"
  %".6899" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".6897", %".6898"
  %"fadd.257" = fadd float %"fmul.270", %".6899"
  %".6900" = bitcast ptr %"R22" to ptr
  store float %"fadd.257", ptr %".6900"
  br label %".L_x_34"
.L_x_34:
  ; BSYNC B0
  br label %".L_x_32"
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".6906" = load i32, ptr %"R32"
  %"zext.800" = zext i32 %".6906" to i64
  %".6907" = load i32, ptr %"R33"
  %"zext.801" = zext i32 %".6907" to i64
  %"shl.345" = shl i64 %"zext.801", 32
  %"or.311" = or i64 %"shl.345", %"zext.800"
  %".6908" = inttoptr i64 %"or.311" to ptr
  %".6909" = ptrtoint ptr %".6908" to i64
  %".6910" = add i64 %".6909", 0
  %"for_LDG.281" = inttoptr i64 %".6910" to ptr
  %".6911" = load float, ptr %"for_LDG.281"
  %".6912" = bitcast ptr %"R5" to ptr
  store float %".6911", ptr %".6912"
  ; MOV R4, 0x3bbb989d
  %".6915" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6915"
  ; MOV R7, 0x437c0000
  %".6918" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6918"
  ; FADD R5, R5, R56
  %".6921" = load float, ptr %"R5"
  %".6922" = load float, ptr %"R56"
  %"fadd.258" = fadd float %".6921", %".6922"
  %".6923" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6923"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6926" = load float, ptr %"R5"
  %".6927" = fneg float %".6926"
  %".6928" = load float, ptr %"R4"
  %"fmul.271" = fmul float %".6927", %".6928"
  %"fadd.259" = fadd float %"fmul.271", 0x3fe0000000000000
  %".6929" = bitcast ptr %"R4" to ptr
  store float %"fadd.259", ptr %".6929"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6932" = load float, ptr %"R4"
  %".6933" = load float, ptr %"R7"
  %"fmul.272" = fmul float %".6932", %".6933"
  %"fadd.260" = fadd float %"fmul.272", 0x4168000020000000
  %".6934" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6934"
  ; FADD R6, R4.reuse, -12583039
  %".6937" = load float, ptr %"R4"
  %"fadd.261" = fadd float %".6937", 0xc168000fe0000000
  %".6938" = bitcast ptr %"R6" to ptr
  store float %"fadd.261", ptr %".6938"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".6941" = icmp ult i32 23, 32
  %"SHF_min.29" = select  i1 %".6941", i32 23, i32 32
  %".6942" = load i32, ptr %"R4"
  %"zext.802" = zext i32 0 to i64
  %"zext.803" = zext i32 %".6942" to i64
  %"zext.804" = zext i32 23 to i64
  %"shl.346" = shl i64 %"zext.802", 32
  %"or.312" = or i64 %"shl.346", %"zext.803"
  %"shl.347" = shl i64 %"or.312", %"zext.804"
  %"and.18" = and i64 %"shl.347", 4294967295
  %"trunc32.177" = trunc i64 %"and.18" to i32
  store i32 %"trunc32.177", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6945" = load float, ptr %"R5"
  %".6946" = fneg float %".6945"
  %".6947" = load float, ptr %"R6"
  %".6948" = fneg float %".6947"
  %"fmul.273" = fmul float %".6946", 0x3ff7154760000000
  %"fadd.262" = fadd float %"fmul.273", %".6948"
  %".6949" = bitcast ptr %"R6" to ptr
  store float %"fadd.262", ptr %".6949"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6952" = load float, ptr %"R5"
  %".6953" = fneg float %".6952"
  %".6954" = load float, ptr %"R6"
  %"fmul.274" = fmul float %".6953", 0x3e54ae0c00000000
  %"fadd.263" = fadd float %"fmul.274", %".6954"
  %".6955" = bitcast ptr %"R6" to ptr
  store float %"fadd.263", ptr %".6955"
  ; MUFU.EX2 R6, R6
  %".6958" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".6958")
  %".6959" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".6959"
  ; FFMA R23, R23, R6, 1
  %".6962" = load float, ptr %"R23"
  %".6963" = load float, ptr %"R6"
  %"fmul.275" = fmul float %".6962", %".6963"
  %"fadd.264" = fadd float %"fmul.275", 0x3ff0000000000000
  %".6964" = bitcast ptr %"R23" to ptr
  store float %"fadd.264", ptr %".6964"
  ; @!P4 BRA `(.L_x_35)
  %".6967" = load i1, ptr %"P4"
  %".6968" = icmp eq i1 %".6967", 1
  br i1 %".6968", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".6971" = load i32, ptr %"R18"
  %".6972" = load i1, ptr %"PT"
  %"cmp.57" = icmp sge i32 %".6971", 3
  %".6973" = and i1 %"cmp.57", %".6972"
  store i1 %".6973", ptr %"P0"
  ; MOV R34, RZ
  %".6976" = load i32, ptr %"RZ"
  store i32 %".6976", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".6979" = load i1, ptr %"P0"
  %".6980" = icmp eq i1 %".6979", 1
  br i1 %".6980", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".6983" = load i32, ptr %"R20"
  %".6984" = load i1, ptr %"PT"
  %"cmp.58" = icmp sgt i32 %".6983", 0
  %".6985" = and i1 %"cmp.58", %".6984"
  store i1 %".6985", ptr %"P0"
  ; MOV R34, RZ
  %".6988" = load i32, ptr %"RZ"
  store i32 %".6988", ptr %"R34"
  ; MOV R35, R20
  %".6991" = load i32, ptr %"R20"
  store i32 %".6991", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".6994" = load i1, ptr %"P0"
  %".6995" = icmp eq i1 %".6994", 1
  br i1 %".6995", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".6998" = load i32, ptr %"R35"
  %".6999" = load i1, ptr %"PT"
  %"cmp.59" = icmp sgt i32 %".6998", 12
  %".7000" = and i1 %"cmp.59", %".6999"
  store i1 %".7000", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".7003" = and i1 1, 1
  %".7004" = or i1 %".7003", 1
  ; @!P1 BRA `(.L_x_38)
  %".7006" = load i1, ptr %"P1"
  %".7007" = icmp eq i1 %".7006", 1
  br i1 %".7007", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".7010" = xor i1 1, 1
  %".7011" = and i1 %".7010", 1
  %".7012" = and i1 %".7011", 1
  br label %".L_x_39"
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".7017" = load i32, ptr %"R3"
  %".7018" = load i32, ptr %"R34"
  %"add.294" = add i32 %".7017", %".7018"
  %"add.295" = add i32 %"add.294", 0
  store i32 %"add.295", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".7021" = load i32, ptr %"R34"
  %".7022" = load i32, ptr %"R41"
  %"zext.805" = zext i32 %".7021" to i64
  %"zext.806" = zext i32 %".7022" to i64
  %"mul.90" = mul i64 %"zext.805", %"zext.806"
  %".7023" = ptrtoint ptr %"Arg_1" to i64
  %"add.296" = add i64 %"mul.90", %".7023"
  %".7024" = and i64 %"add.296", 18446744069414584320
  %".7025" = lshr i64 %".7024", 32
  %"trunc32.178" = trunc i64 %".7025" to i32
  %"trunc32.179" = trunc i64 %"add.296" to i32
  store i32 %"trunc32.179", ptr %"R12"
  store i32 %"trunc32.178", ptr %"R13"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".7029" = load i32, ptr %"R10"
  %".7030" = load i32, ptr %"R41"
  %"zext.807" = zext i32 %".7029" to i64
  %"zext.808" = zext i32 %".7030" to i64
  %"mul.91" = mul i64 %"zext.807", %"zext.808"
  %".7031" = ptrtoint ptr %"Arg_2" to i64
  %"add.297" = add i64 %"mul.91", %".7031"
  %".7032" = and i64 %"add.297", 18446744069414584320
  %".7033" = lshr i64 %".7032", 32
  %"trunc32.180" = trunc i64 %".7033" to i32
  %"trunc32.181" = trunc i64 %"add.297" to i32
  store i32 %"trunc32.181", ptr %"R10"
  store i32 %"trunc32.180", ptr %"R11"
  ; IADD3 R4, R34, 0x4, RZ
  %".7037" = load i32, ptr %"R34"
  %"add.298" = add i32 %".7037", 4
  %"add.299" = add i32 %"add.298", 0
  store i32 %"add.299", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".7040" = load i32, ptr %"R12"
  %"zext.809" = zext i32 %".7040" to i64
  %".7041" = load i32, ptr %"R13"
  %"zext.810" = zext i32 %".7041" to i64
  %"shl.348" = shl i64 %"zext.810", 32
  %"or.313" = or i64 %"shl.348", %"zext.809"
  %".7042" = inttoptr i64 %"or.313" to ptr
  %".7043" = ptrtoint ptr %".7042" to i64
  %".7044" = add i64 %".7043", 0
  %"for_LDG.282" = inttoptr i64 %".7044" to ptr
  %".7045" = load float, ptr %"for_LDG.282"
  %".7046" = bitcast ptr %"R25" to ptr
  store float %".7045", ptr %".7046"
  ; IADD3 R6, R3, R4, RZ
  %".7049" = load i32, ptr %"R3"
  %".7050" = load i32, ptr %"R4"
  %"add.300" = add i32 %".7049", %".7050"
  %"add.301" = add i32 %"add.300", 0
  store i32 %"add.301", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".7053" = load i32, ptr %"R10"
  %"zext.811" = zext i32 %".7053" to i64
  %".7054" = load i32, ptr %"R11"
  %"zext.812" = zext i32 %".7054" to i64
  %"shl.349" = shl i64 %"zext.812", 32
  %"or.314" = or i64 %"shl.349", %"zext.811"
  %".7055" = inttoptr i64 %"or.314" to ptr
  %".7056" = ptrtoint ptr %".7055" to i64
  %".7057" = add i64 %".7056", 0
  %"for_LDG.283" = inttoptr i64 %".7057" to ptr
  %".7058" = load float, ptr %"for_LDG.283"
  %".7059" = bitcast ptr %"R36" to ptr
  store float %".7058", ptr %".7059"
  ; LDG.E.SYS R37, [R12+0x4]
  %".7062" = load i32, ptr %"R12"
  %"zext.813" = zext i32 %".7062" to i64
  %".7063" = load i32, ptr %"R13"
  %"zext.814" = zext i32 %".7063" to i64
  %"shl.350" = shl i64 %"zext.814", 32
  %"or.315" = or i64 %"shl.350", %"zext.813"
  %".7064" = inttoptr i64 %"or.315" to ptr
  %".7065" = ptrtoint ptr %".7064" to i64
  %".7066" = add i64 %".7065", 4
  %"for_LDG.284" = inttoptr i64 %".7066" to ptr
  %".7067" = load float, ptr %"for_LDG.284"
  %".7068" = bitcast ptr %"R37" to ptr
  store float %".7067", ptr %".7068"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".7071" = load i32, ptr %"R4"
  %".7072" = load i32, ptr %"R41"
  %"zext.815" = zext i32 %".7071" to i64
  %"zext.816" = zext i32 %".7072" to i64
  %"mul.92" = mul i64 %"zext.815", %"zext.816"
  %".7073" = ptrtoint ptr %"Arg_1" to i64
  %"add.302" = add i64 %"mul.92", %".7073"
  %".7074" = and i64 %"add.302", 18446744069414584320
  %".7075" = lshr i64 %".7074", 32
  %"trunc32.182" = trunc i64 %".7075" to i32
  %"trunc32.183" = trunc i64 %"add.302" to i32
  store i32 %"trunc32.183", ptr %"R4"
  store i32 %"trunc32.182", ptr %"R5"
  ; LDG.E.SYS R24, [R10+0x4]
  %".7079" = load i32, ptr %"R10"
  %"zext.817" = zext i32 %".7079" to i64
  %".7080" = load i32, ptr %"R11"
  %"zext.818" = zext i32 %".7080" to i64
  %"shl.351" = shl i64 %"zext.818", 32
  %"or.316" = or i64 %"shl.351", %"zext.817"
  %".7081" = inttoptr i64 %"or.316" to ptr
  %".7082" = ptrtoint ptr %".7081" to i64
  %".7083" = add i64 %".7082", 4
  %"for_LDG.285" = inttoptr i64 %".7083" to ptr
  %".7084" = load float, ptr %"for_LDG.285"
  %".7085" = bitcast ptr %"R24" to ptr
  store float %".7084", ptr %".7085"
  ; LDG.E.SYS R39, [R12+0x8]
  %".7088" = load i32, ptr %"R12"
  %"zext.819" = zext i32 %".7088" to i64
  %".7089" = load i32, ptr %"R13"
  %"zext.820" = zext i32 %".7089" to i64
  %"shl.352" = shl i64 %"zext.820", 32
  %"or.317" = or i64 %"shl.352", %"zext.819"
  %".7090" = inttoptr i64 %"or.317" to ptr
  %".7091" = ptrtoint ptr %".7090" to i64
  %".7092" = add i64 %".7091", 8
  %"for_LDG.286" = inttoptr i64 %".7092" to ptr
  %".7093" = load float, ptr %"for_LDG.286"
  %".7094" = bitcast ptr %"R39" to ptr
  store float %".7093", ptr %".7094"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".7097" = load i32, ptr %"R6"
  %".7098" = load i32, ptr %"R41"
  %"zext.821" = zext i32 %".7097" to i64
  %"zext.822" = zext i32 %".7098" to i64
  %"mul.93" = mul i64 %"zext.821", %"zext.822"
  %".7099" = ptrtoint ptr %"Arg_2" to i64
  %"add.303" = add i64 %"mul.93", %".7099"
  %".7100" = and i64 %"add.303", 18446744069414584320
  %".7101" = lshr i64 %".7100", 32
  %"trunc32.184" = trunc i64 %".7101" to i32
  %"trunc32.185" = trunc i64 %"add.303" to i32
  store i32 %"trunc32.185", ptr %"R6"
  store i32 %"trunc32.184", ptr %"R7"
  ; LDG.E.SYS R38, [R10+0x8]
  %".7105" = load i32, ptr %"R10"
  %"zext.823" = zext i32 %".7105" to i64
  %".7106" = load i32, ptr %"R11"
  %"zext.824" = zext i32 %".7106" to i64
  %"shl.353" = shl i64 %"zext.824", 32
  %"or.318" = or i64 %"shl.353", %"zext.823"
  %".7107" = inttoptr i64 %"or.318" to ptr
  %".7108" = ptrtoint ptr %".7107" to i64
  %".7109" = add i64 %".7108", 8
  %"for_LDG.287" = inttoptr i64 %".7109" to ptr
  %".7110" = load float, ptr %"for_LDG.287"
  %".7111" = bitcast ptr %"R38" to ptr
  store float %".7110", ptr %".7111"
  ; LDG.E.SYS R43, [R12+0xc]
  %".7114" = load i32, ptr %"R12"
  %"zext.825" = zext i32 %".7114" to i64
  %".7115" = load i32, ptr %"R13"
  %"zext.826" = zext i32 %".7115" to i64
  %"shl.354" = shl i64 %"zext.826", 32
  %"or.319" = or i64 %"shl.354", %"zext.825"
  %".7116" = inttoptr i64 %"or.319" to ptr
  %".7117" = ptrtoint ptr %".7116" to i64
  %".7118" = add i64 %".7117", 12
  %"for_LDG.288" = inttoptr i64 %".7118" to ptr
  %".7119" = load float, ptr %"for_LDG.288"
  %".7120" = bitcast ptr %"R43" to ptr
  store float %".7119", ptr %".7120"
  ; IADD3 R8, R34, 0x8, RZ
  %".7123" = load i32, ptr %"R34"
  %"add.304" = add i32 %".7123", 8
  %"add.305" = add i32 %"add.304", 0
  store i32 %"add.305", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".7126" = load i32, ptr %"R10"
  %"zext.827" = zext i32 %".7126" to i64
  %".7127" = load i32, ptr %"R11"
  %"zext.828" = zext i32 %".7127" to i64
  %"shl.355" = shl i64 %"zext.828", 32
  %"or.320" = or i64 %"shl.355", %"zext.827"
  %".7128" = inttoptr i64 %"or.320" to ptr
  %".7129" = ptrtoint ptr %".7128" to i64
  %".7130" = add i64 %".7129", 12
  %"for_LDG.289" = inttoptr i64 %".7130" to ptr
  %".7131" = load float, ptr %"for_LDG.289"
  %".7132" = bitcast ptr %"R46" to ptr
  store float %".7131", ptr %".7132"
  ; LDG.E.SYS R51, [R4]
  %".7135" = load i32, ptr %"R4"
  %"zext.829" = zext i32 %".7135" to i64
  %".7136" = load i32, ptr %"R5"
  %"zext.830" = zext i32 %".7136" to i64
  %"shl.356" = shl i64 %"zext.830", 32
  %"or.321" = or i64 %"shl.356", %"zext.829"
  %".7137" = inttoptr i64 %"or.321" to ptr
  %".7138" = ptrtoint ptr %".7137" to i64
  %".7139" = add i64 %".7138", 0
  %"for_LDG.290" = inttoptr i64 %".7139" to ptr
  %".7140" = load float, ptr %"for_LDG.290"
  %".7141" = bitcast ptr %"R51" to ptr
  store float %".7140", ptr %".7141"
  ; IADD3 R50, R3, R8, RZ
  %".7144" = load i32, ptr %"R3"
  %".7145" = load i32, ptr %"R8"
  %"add.306" = add i32 %".7144", %".7145"
  %"add.307" = add i32 %"add.306", 0
  store i32 %"add.307", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".7148" = load i32, ptr %"R6"
  %"zext.831" = zext i32 %".7148" to i64
  %".7149" = load i32, ptr %"R7"
  %"zext.832" = zext i32 %".7149" to i64
  %"shl.357" = shl i64 %"zext.832", 32
  %"or.322" = or i64 %"shl.357", %"zext.831"
  %".7150" = inttoptr i64 %"or.322" to ptr
  %".7151" = ptrtoint ptr %".7150" to i64
  %".7152" = add i64 %".7151", 0
  %"for_LDG.291" = inttoptr i64 %".7152" to ptr
  %".7153" = load float, ptr %"for_LDG.291"
  %".7154" = bitcast ptr %"R44" to ptr
  store float %".7153", ptr %".7154"
  ; LDG.E.SYS R47, [R4+0x4]
  %".7157" = load i32, ptr %"R4"
  %"zext.833" = zext i32 %".7157" to i64
  %".7158" = load i32, ptr %"R5"
  %"zext.834" = zext i32 %".7158" to i64
  %"shl.358" = shl i64 %"zext.834", 32
  %"or.323" = or i64 %"shl.358", %"zext.833"
  %".7159" = inttoptr i64 %"or.323" to ptr
  %".7160" = ptrtoint ptr %".7159" to i64
  %".7161" = add i64 %".7160", 4
  %"for_LDG.292" = inttoptr i64 %".7161" to ptr
  %".7162" = load float, ptr %"for_LDG.292"
  %".7163" = bitcast ptr %"R47" to ptr
  store float %".7162", ptr %".7163"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".7166" = load i32, ptr %"R8"
  %".7167" = load i32, ptr %"R41"
  %"zext.835" = zext i32 %".7166" to i64
  %"zext.836" = zext i32 %".7167" to i64
  %"mul.94" = mul i64 %"zext.835", %"zext.836"
  %".7168" = ptrtoint ptr %"Arg_1" to i64
  %"add.308" = add i64 %"mul.94", %".7168"
  %".7169" = and i64 %"add.308", 18446744069414584320
  %".7170" = lshr i64 %".7169", 32
  %"trunc32.186" = trunc i64 %".7170" to i32
  %"trunc32.187" = trunc i64 %"add.308" to i32
  store i32 %"trunc32.187", ptr %"R8"
  store i32 %"trunc32.186", ptr %"R9"
  ; LDG.E.SYS R42, [R6+0x4]
  %".7174" = load i32, ptr %"R6"
  %"zext.837" = zext i32 %".7174" to i64
  %".7175" = load i32, ptr %"R7"
  %"zext.838" = zext i32 %".7175" to i64
  %"shl.359" = shl i64 %"zext.838", 32
  %"or.324" = or i64 %"shl.359", %"zext.837"
  %".7176" = inttoptr i64 %"or.324" to ptr
  %".7177" = ptrtoint ptr %".7176" to i64
  %".7178" = add i64 %".7177", 4
  %"for_LDG.293" = inttoptr i64 %".7178" to ptr
  %".7179" = load float, ptr %"for_LDG.293"
  %".7180" = bitcast ptr %"R42" to ptr
  store float %".7179", ptr %".7180"
  ; LDG.E.SYS R45, [R4+0x8]
  %".7183" = load i32, ptr %"R4"
  %"zext.839" = zext i32 %".7183" to i64
  %".7184" = load i32, ptr %"R5"
  %"zext.840" = zext i32 %".7184" to i64
  %"shl.360" = shl i64 %"zext.840", 32
  %"or.325" = or i64 %"shl.360", %"zext.839"
  %".7185" = inttoptr i64 %"or.325" to ptr
  %".7186" = ptrtoint ptr %".7185" to i64
  %".7187" = add i64 %".7186", 8
  %"for_LDG.294" = inttoptr i64 %".7187" to ptr
  %".7188" = load float, ptr %"for_LDG.294"
  %".7189" = bitcast ptr %"R45" to ptr
  store float %".7188", ptr %".7189"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".7192" = load i32, ptr %"R50"
  %".7193" = load i32, ptr %"R41"
  %"zext.841" = zext i32 %".7192" to i64
  %"zext.842" = zext i32 %".7193" to i64
  %"mul.95" = mul i64 %"zext.841", %"zext.842"
  %".7194" = ptrtoint ptr %"Arg_2" to i64
  %"add.309" = add i64 %"mul.95", %".7194"
  %".7195" = and i64 %"add.309", 18446744069414584320
  %".7196" = lshr i64 %".7195", 32
  %"trunc32.188" = trunc i64 %".7196" to i32
  %"trunc32.189" = trunc i64 %"add.309" to i32
  store i32 %"trunc32.189", ptr %"R10"
  store i32 %"trunc32.188", ptr %"R11"
  ; LDG.E.SYS R40, [R6+0x8]
  %".7200" = load i32, ptr %"R6"
  %"zext.843" = zext i32 %".7200" to i64
  %".7201" = load i32, ptr %"R7"
  %"zext.844" = zext i32 %".7201" to i64
  %"shl.361" = shl i64 %"zext.844", 32
  %"or.326" = or i64 %"shl.361", %"zext.843"
  %".7202" = inttoptr i64 %"or.326" to ptr
  %".7203" = ptrtoint ptr %".7202" to i64
  %".7204" = add i64 %".7203", 8
  %"for_LDG.295" = inttoptr i64 %".7204" to ptr
  %".7205" = load float, ptr %"for_LDG.295"
  %".7206" = bitcast ptr %"R40" to ptr
  store float %".7205", ptr %".7206"
  ; LDG.E.SYS R53, [R4+0xc]
  %".7209" = load i32, ptr %"R4"
  %"zext.845" = zext i32 %".7209" to i64
  %".7210" = load i32, ptr %"R5"
  %"zext.846" = zext i32 %".7210" to i64
  %"shl.362" = shl i64 %"zext.846", 32
  %"or.327" = or i64 %"shl.362", %"zext.845"
  %".7211" = inttoptr i64 %"or.327" to ptr
  %".7212" = ptrtoint ptr %".7211" to i64
  %".7213" = add i64 %".7212", 12
  %"for_LDG.296" = inttoptr i64 %".7213" to ptr
  %".7214" = load float, ptr %"for_LDG.296"
  %".7215" = bitcast ptr %"R53" to ptr
  store float %".7214", ptr %".7215"
  ; IADD3 R12, R34, 0xc, RZ
  %".7218" = load i32, ptr %"R34"
  %"add.310" = add i32 %".7218", 12
  %"add.311" = add i32 %"add.310", 0
  store i32 %"add.311", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".7221" = load i32, ptr %"R6"
  %"zext.847" = zext i32 %".7221" to i64
  %".7222" = load i32, ptr %"R7"
  %"zext.848" = zext i32 %".7222" to i64
  %"shl.363" = shl i64 %"zext.848", 32
  %"or.328" = or i64 %"shl.363", %"zext.847"
  %".7223" = inttoptr i64 %"or.328" to ptr
  %".7224" = ptrtoint ptr %".7223" to i64
  %".7225" = add i64 %".7224", 12
  %"for_LDG.297" = inttoptr i64 %".7225" to ptr
  %".7226" = load float, ptr %"for_LDG.297"
  %".7227" = bitcast ptr %"R54" to ptr
  store float %".7226", ptr %".7227"
  ; LDG.E.SYS R59, [R8]
  %".7230" = load i32, ptr %"R8"
  %"zext.849" = zext i32 %".7230" to i64
  %".7231" = load i32, ptr %"R9"
  %"zext.850" = zext i32 %".7231" to i64
  %"shl.364" = shl i64 %"zext.850", 32
  %"or.329" = or i64 %"shl.364", %"zext.849"
  %".7232" = inttoptr i64 %"or.329" to ptr
  %".7233" = ptrtoint ptr %".7232" to i64
  %".7234" = add i64 %".7233", 0
  %"for_LDG.298" = inttoptr i64 %".7234" to ptr
  %".7235" = load float, ptr %"for_LDG.298"
  %".7236" = bitcast ptr %"R59" to ptr
  store float %".7235", ptr %".7236"
  ; IADD3 R58, R3, R12, RZ
  %".7239" = load i32, ptr %"R3"
  %".7240" = load i32, ptr %"R12"
  %"add.312" = add i32 %".7239", %".7240"
  %"add.313" = add i32 %"add.312", 0
  store i32 %"add.313", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".7243" = load i32, ptr %"R10"
  %"zext.851" = zext i32 %".7243" to i64
  %".7244" = load i32, ptr %"R11"
  %"zext.852" = zext i32 %".7244" to i64
  %"shl.365" = shl i64 %"zext.852", 32
  %"or.330" = or i64 %"shl.365", %"zext.851"
  %".7245" = inttoptr i64 %"or.330" to ptr
  %".7246" = ptrtoint ptr %".7245" to i64
  %".7247" = add i64 %".7246", 0
  %"for_LDG.299" = inttoptr i64 %".7247" to ptr
  %".7248" = load float, ptr %"for_LDG.299"
  %".7249" = bitcast ptr %"R52" to ptr
  store float %".7248", ptr %".7249"
  ; LDG.E.SYS R57, [R8+0x4]
  %".7252" = load i32, ptr %"R8"
  %"zext.853" = zext i32 %".7252" to i64
  %".7253" = load i32, ptr %"R9"
  %"zext.854" = zext i32 %".7253" to i64
  %"shl.366" = shl i64 %"zext.854", 32
  %"or.331" = or i64 %"shl.366", %"zext.853"
  %".7254" = inttoptr i64 %"or.331" to ptr
  %".7255" = ptrtoint ptr %".7254" to i64
  %".7256" = add i64 %".7255", 4
  %"for_LDG.300" = inttoptr i64 %".7256" to ptr
  %".7257" = load float, ptr %"for_LDG.300"
  %".7258" = bitcast ptr %"R57" to ptr
  store float %".7257", ptr %".7258"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".7261" = load i32, ptr %"R12"
  %".7262" = load i32, ptr %"R41"
  %"zext.855" = zext i32 %".7261" to i64
  %"zext.856" = zext i32 %".7262" to i64
  %"mul.96" = mul i64 %"zext.855", %"zext.856"
  %".7263" = ptrtoint ptr %"Arg_1" to i64
  %"add.314" = add i64 %"mul.96", %".7263"
  %".7264" = and i64 %"add.314", 18446744069414584320
  %".7265" = lshr i64 %".7264", 32
  %"trunc32.190" = trunc i64 %".7265" to i32
  %"trunc32.191" = trunc i64 %"add.314" to i32
  store i32 %"trunc32.191", ptr %"R12"
  store i32 %"trunc32.190", ptr %"R13"
  ; LDG.E.SYS R50, [R10+0x4]
  %".7269" = load i32, ptr %"R10"
  %"zext.857" = zext i32 %".7269" to i64
  %".7270" = load i32, ptr %"R11"
  %"zext.858" = zext i32 %".7270" to i64
  %"shl.367" = shl i64 %"zext.858", 32
  %"or.332" = or i64 %"shl.367", %"zext.857"
  %".7271" = inttoptr i64 %"or.332" to ptr
  %".7272" = ptrtoint ptr %".7271" to i64
  %".7273" = add i64 %".7272", 4
  %"for_LDG.301" = inttoptr i64 %".7273" to ptr
  %".7274" = load float, ptr %"for_LDG.301"
  %".7275" = bitcast ptr %"R50" to ptr
  store float %".7274", ptr %".7275"
  ; LDG.E.SYS R55, [R8+0x8]
  %".7278" = load i32, ptr %"R8"
  %"zext.859" = zext i32 %".7278" to i64
  %".7279" = load i32, ptr %"R9"
  %"zext.860" = zext i32 %".7279" to i64
  %"shl.368" = shl i64 %"zext.860", 32
  %"or.333" = or i64 %"shl.368", %"zext.859"
  %".7280" = inttoptr i64 %"or.333" to ptr
  %".7281" = ptrtoint ptr %".7280" to i64
  %".7282" = add i64 %".7281", 8
  %"for_LDG.302" = inttoptr i64 %".7282" to ptr
  %".7283" = load float, ptr %"for_LDG.302"
  %".7284" = bitcast ptr %"R55" to ptr
  store float %".7283", ptr %".7284"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".7287" = load i32, ptr %"R58"
  %".7288" = load i32, ptr %"R41"
  %"zext.861" = zext i32 %".7287" to i64
  %"zext.862" = zext i32 %".7288" to i64
  %"mul.97" = mul i64 %"zext.861", %"zext.862"
  %".7289" = ptrtoint ptr %"Arg_2" to i64
  %"add.315" = add i64 %"mul.97", %".7289"
  %".7290" = and i64 %"add.315", 18446744069414584320
  %".7291" = lshr i64 %".7290", 32
  %"trunc32.192" = trunc i64 %".7291" to i32
  %"trunc32.193" = trunc i64 %"add.315" to i32
  store i32 %"trunc32.193", ptr %"R4"
  store i32 %"trunc32.192", ptr %"R5"
  ; LDG.E.SYS R61, [R8+0xc]
  %".7295" = load i32, ptr %"R8"
  %"zext.863" = zext i32 %".7295" to i64
  %".7296" = load i32, ptr %"R9"
  %"zext.864" = zext i32 %".7296" to i64
  %"shl.369" = shl i64 %"zext.864", 32
  %"or.334" = or i64 %"shl.369", %"zext.863"
  %".7297" = inttoptr i64 %"or.334" to ptr
  %".7298" = ptrtoint ptr %".7297" to i64
  %".7299" = add i64 %".7298", 12
  %"for_LDG.303" = inttoptr i64 %".7299" to ptr
  %".7300" = load float, ptr %"for_LDG.303"
  %".7301" = bitcast ptr %"R61" to ptr
  store float %".7300", ptr %".7301"
  ; LDG.E.SYS R56, [R10+0x8]
  %".7304" = load i32, ptr %"R10"
  %"zext.865" = zext i32 %".7304" to i64
  %".7305" = load i32, ptr %"R11"
  %"zext.866" = zext i32 %".7305" to i64
  %"shl.370" = shl i64 %"zext.866", 32
  %"or.335" = or i64 %"shl.370", %"zext.865"
  %".7306" = inttoptr i64 %"or.335" to ptr
  %".7307" = ptrtoint ptr %".7306" to i64
  %".7308" = add i64 %".7307", 8
  %"for_LDG.304" = inttoptr i64 %".7308" to ptr
  %".7309" = load float, ptr %"for_LDG.304"
  %".7310" = bitcast ptr %"R56" to ptr
  store float %".7309", ptr %".7310"
  ; LDG.E.SYS R58, [R10+0xc]
  %".7313" = load i32, ptr %"R10"
  %"zext.867" = zext i32 %".7313" to i64
  %".7314" = load i32, ptr %"R11"
  %"zext.868" = zext i32 %".7314" to i64
  %"shl.371" = shl i64 %"zext.868", 32
  %"or.336" = or i64 %"shl.371", %"zext.867"
  %".7315" = inttoptr i64 %"or.336" to ptr
  %".7316" = ptrtoint ptr %".7315" to i64
  %".7317" = add i64 %".7316", 12
  %"for_LDG.305" = inttoptr i64 %".7317" to ptr
  %".7318" = load float, ptr %"for_LDG.305"
  %".7319" = bitcast ptr %"R58" to ptr
  store float %".7318", ptr %".7319"
  ; LDG.E.SYS R6, [R12]
  %".7322" = load i32, ptr %"R12"
  %"zext.869" = zext i32 %".7322" to i64
  %".7323" = load i32, ptr %"R13"
  %"zext.870" = zext i32 %".7323" to i64
  %"shl.372" = shl i64 %"zext.870", 32
  %"or.337" = or i64 %"shl.372", %"zext.869"
  %".7324" = inttoptr i64 %"or.337" to ptr
  %".7325" = ptrtoint ptr %".7324" to i64
  %".7326" = add i64 %".7325", 0
  %"for_LDG.306" = inttoptr i64 %".7326" to ptr
  %".7327" = load float, ptr %"for_LDG.306"
  %".7328" = bitcast ptr %"R6" to ptr
  store float %".7327", ptr %".7328"
  ; LDG.E.SYS R41, [R12+0x4]
  %".7331" = load i32, ptr %"R12"
  %"zext.871" = zext i32 %".7331" to i64
  %".7332" = load i32, ptr %"R13"
  %"zext.872" = zext i32 %".7332" to i64
  %"shl.373" = shl i64 %"zext.872", 32
  %"or.338" = or i64 %"shl.373", %"zext.871"
  %".7333" = inttoptr i64 %"or.338" to ptr
  %".7334" = ptrtoint ptr %".7333" to i64
  %".7335" = add i64 %".7334", 4
  %"for_LDG.307" = inttoptr i64 %".7335" to ptr
  %".7336" = load float, ptr %"for_LDG.307"
  %".7337" = bitcast ptr %"R41" to ptr
  store float %".7336", ptr %".7337"
  ; LDG.E.SYS R10, [R4]
  %".7340" = load i32, ptr %"R4"
  %"zext.873" = zext i32 %".7340" to i64
  %".7341" = load i32, ptr %"R5"
  %"zext.874" = zext i32 %".7341" to i64
  %"shl.374" = shl i64 %"zext.874", 32
  %"or.339" = or i64 %"shl.374", %"zext.873"
  %".7342" = inttoptr i64 %"or.339" to ptr
  %".7343" = ptrtoint ptr %".7342" to i64
  %".7344" = add i64 %".7343", 0
  %"for_LDG.308" = inttoptr i64 %".7344" to ptr
  %".7345" = load float, ptr %"for_LDG.308"
  %".7346" = bitcast ptr %"R10" to ptr
  store float %".7345", ptr %".7346"
  ; LDG.E.SYS R7, [R12+0x8]
  %".7349" = load i32, ptr %"R12"
  %"zext.875" = zext i32 %".7349" to i64
  %".7350" = load i32, ptr %"R13"
  %"zext.876" = zext i32 %".7350" to i64
  %"shl.375" = shl i64 %"zext.876", 32
  %"or.340" = or i64 %"shl.375", %"zext.875"
  %".7351" = inttoptr i64 %"or.340" to ptr
  %".7352" = ptrtoint ptr %".7351" to i64
  %".7353" = add i64 %".7352", 8
  %"for_LDG.309" = inttoptr i64 %".7353" to ptr
  %".7354" = load float, ptr %"for_LDG.309"
  %".7355" = bitcast ptr %"R7" to ptr
  store float %".7354", ptr %".7355"
  ; LDG.E.SYS R9, [R4+0x4]
  %".7358" = load i32, ptr %"R4"
  %"zext.877" = zext i32 %".7358" to i64
  %".7359" = load i32, ptr %"R5"
  %"zext.878" = zext i32 %".7359" to i64
  %"shl.376" = shl i64 %"zext.878", 32
  %"or.341" = or i64 %"shl.376", %"zext.877"
  %".7360" = inttoptr i64 %"or.341" to ptr
  %".7361" = ptrtoint ptr %".7360" to i64
  %".7362" = add i64 %".7361", 4
  %"for_LDG.310" = inttoptr i64 %".7362" to ptr
  %".7363" = load float, ptr %"for_LDG.310"
  %".7364" = bitcast ptr %"R9" to ptr
  store float %".7363", ptr %".7364"
  ; LDG.E.SYS R60, [R12+0xc]
  %".7367" = load i32, ptr %"R12"
  %"zext.879" = zext i32 %".7367" to i64
  %".7368" = load i32, ptr %"R13"
  %"zext.880" = zext i32 %".7368" to i64
  %"shl.377" = shl i64 %"zext.880", 32
  %"or.342" = or i64 %"shl.377", %"zext.879"
  %".7369" = inttoptr i64 %"or.342" to ptr
  %".7370" = ptrtoint ptr %".7369" to i64
  %".7371" = add i64 %".7370", 12
  %"for_LDG.311" = inttoptr i64 %".7371" to ptr
  %".7372" = load float, ptr %"for_LDG.311"
  %".7373" = bitcast ptr %"R60" to ptr
  store float %".7372", ptr %".7373"
  ; LDG.E.SYS R8, [R4+0x8]
  %".7376" = load i32, ptr %"R4"
  %"zext.881" = zext i32 %".7376" to i64
  %".7377" = load i32, ptr %"R5"
  %"zext.882" = zext i32 %".7377" to i64
  %"shl.378" = shl i64 %"zext.882", 32
  %"or.343" = or i64 %"shl.378", %"zext.881"
  %".7378" = inttoptr i64 %"or.343" to ptr
  %".7379" = ptrtoint ptr %".7378" to i64
  %".7380" = add i64 %".7379", 8
  %"for_LDG.312" = inttoptr i64 %".7380" to ptr
  %".7381" = load float, ptr %"for_LDG.312"
  %".7382" = bitcast ptr %"R8" to ptr
  store float %".7381", ptr %".7382"
  ; LDG.E.SYS R11, [R4+0xc]
  %".7385" = load i32, ptr %"R4"
  %"zext.883" = zext i32 %".7385" to i64
  %".7386" = load i32, ptr %"R5"
  %"zext.884" = zext i32 %".7386" to i64
  %"shl.379" = shl i64 %"zext.884", 32
  %"or.344" = or i64 %"shl.379", %"zext.883"
  %".7387" = inttoptr i64 %"or.344" to ptr
  %".7388" = ptrtoint ptr %".7387" to i64
  %".7389" = add i64 %".7388", 12
  %"for_LDG.313" = inttoptr i64 %".7389" to ptr
  %".7390" = load float, ptr %"for_LDG.313"
  %".7391" = bitcast ptr %"R11" to ptr
  store float %".7390", ptr %".7391"
  ; IADD3 R35, R35, -0x10, RZ
  %".7394" = load i32, ptr %"R35"
  %"add.316" = add i32 %".7394", -16
  %"add.317" = add i32 %"add.316", 0
  store i32 %"add.317", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".7397" = load i32, ptr %"R35"
  %".7398" = load i1, ptr %"PT"
  %"cmp.60" = icmp sgt i32 %".7397", 12
  %".7399" = and i1 %"cmp.60", %".7398"
  store i1 %".7399", ptr %"P1"
  ; IADD3 R34, R34, 0x10, RZ
  %".7402" = load i32, ptr %"R34"
  %"add.318" = add i32 %".7402", 16
  %"add.319" = add i32 %"add.318", 0
  store i32 %"add.319", ptr %"R34"
  ; FMUL R25, R25, R22
  %".7405" = load float, ptr %"R25"
  %".7406" = load float, ptr %"R22"
  %"fmul.276" = fmul float %".7405", %".7406"
  %".7407" = bitcast ptr %"R25" to ptr
  store float %"fmul.276", ptr %".7407"
  ; FFMA R25, R25, R36, R21
  %".7410" = load float, ptr %"R25"
  %".7411" = load float, ptr %"R36"
  %".7412" = load float, ptr %"R21"
  %"fmul.277" = fmul float %".7410", %".7411"
  %"fadd.265" = fadd float %"fmul.277", %".7412"
  %".7413" = bitcast ptr %"R25" to ptr
  store float %"fadd.265", ptr %".7413"
  ; FMUL R37, R37, R22
  %".7416" = load float, ptr %"R37"
  %".7417" = load float, ptr %"R22"
  %"fmul.278" = fmul float %".7416", %".7417"
  %".7418" = bitcast ptr %"R37" to ptr
  store float %"fmul.278", ptr %".7418"
  ; FFMA R25, R37, R24, R25
  %".7421" = load float, ptr %"R37"
  %".7422" = load float, ptr %"R24"
  %".7423" = load float, ptr %"R25"
  %"fmul.279" = fmul float %".7421", %".7422"
  %"fadd.266" = fadd float %"fmul.279", %".7423"
  %".7424" = bitcast ptr %"R25" to ptr
  store float %"fadd.266", ptr %".7424"
  ; FMUL R39, R39, R22
  %".7427" = load float, ptr %"R39"
  %".7428" = load float, ptr %"R22"
  %"fmul.280" = fmul float %".7427", %".7428"
  %".7429" = bitcast ptr %"R39" to ptr
  store float %"fmul.280", ptr %".7429"
  ; FFMA R25, R39, R38, R25
  %".7432" = load float, ptr %"R39"
  %".7433" = load float, ptr %"R38"
  %".7434" = load float, ptr %"R25"
  %"fmul.281" = fmul float %".7432", %".7433"
  %"fadd.267" = fadd float %"fmul.281", %".7434"
  %".7435" = bitcast ptr %"R25" to ptr
  store float %"fadd.267", ptr %".7435"
  ; FMUL R43, R43, R22
  %".7438" = load float, ptr %"R43"
  %".7439" = load float, ptr %"R22"
  %"fmul.282" = fmul float %".7438", %".7439"
  %".7440" = bitcast ptr %"R43" to ptr
  store float %"fmul.282", ptr %".7440"
  ; FFMA R25, R43, R46, R25
  %".7443" = load float, ptr %"R43"
  %".7444" = load float, ptr %"R46"
  %".7445" = load float, ptr %"R25"
  %"fmul.283" = fmul float %".7443", %".7444"
  %"fadd.268" = fadd float %"fmul.283", %".7445"
  %".7446" = bitcast ptr %"R25" to ptr
  store float %"fadd.268", ptr %".7446"
  ; FMUL R51, R51, R22
  %".7449" = load float, ptr %"R51"
  %".7450" = load float, ptr %"R22"
  %"fmul.284" = fmul float %".7449", %".7450"
  %".7451" = bitcast ptr %"R51" to ptr
  store float %"fmul.284", ptr %".7451"
  ; FFMA R25, R51, R44, R25
  %".7454" = load float, ptr %"R51"
  %".7455" = load float, ptr %"R44"
  %".7456" = load float, ptr %"R25"
  %"fmul.285" = fmul float %".7454", %".7455"
  %"fadd.269" = fadd float %"fmul.285", %".7456"
  %".7457" = bitcast ptr %"R25" to ptr
  store float %"fadd.269", ptr %".7457"
  ; FMUL R47, R47, R22
  %".7460" = load float, ptr %"R47"
  %".7461" = load float, ptr %"R22"
  %"fmul.286" = fmul float %".7460", %".7461"
  %".7462" = bitcast ptr %"R47" to ptr
  store float %"fmul.286", ptr %".7462"
  ; FFMA R25, R47, R42, R25
  %".7465" = load float, ptr %"R47"
  %".7466" = load float, ptr %"R42"
  %".7467" = load float, ptr %"R25"
  %"fmul.287" = fmul float %".7465", %".7466"
  %"fadd.270" = fadd float %"fmul.287", %".7467"
  %".7468" = bitcast ptr %"R25" to ptr
  store float %"fadd.270", ptr %".7468"
  ; FMUL R45, R45, R22
  %".7471" = load float, ptr %"R45"
  %".7472" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".7471", %".7472"
  %".7473" = bitcast ptr %"R45" to ptr
  store float %"fmul.288", ptr %".7473"
  ; FFMA R25, R45, R40, R25
  %".7476" = load float, ptr %"R45"
  %".7477" = load float, ptr %"R40"
  %".7478" = load float, ptr %"R25"
  %"fmul.289" = fmul float %".7476", %".7477"
  %"fadd.271" = fadd float %"fmul.289", %".7478"
  %".7479" = bitcast ptr %"R25" to ptr
  store float %"fadd.271", ptr %".7479"
  ; FMUL R53, R53, R22
  %".7482" = load float, ptr %"R53"
  %".7483" = load float, ptr %"R22"
  %"fmul.290" = fmul float %".7482", %".7483"
  %".7484" = bitcast ptr %"R53" to ptr
  store float %"fmul.290", ptr %".7484"
  ; FFMA R25, R53, R54, R25
  %".7487" = load float, ptr %"R53"
  %".7488" = load float, ptr %"R54"
  %".7489" = load float, ptr %"R25"
  %"fmul.291" = fmul float %".7487", %".7488"
  %"fadd.272" = fadd float %"fmul.291", %".7489"
  %".7490" = bitcast ptr %"R25" to ptr
  store float %"fadd.272", ptr %".7490"
  ; FMUL R59, R59, R22
  %".7493" = load float, ptr %"R59"
  %".7494" = load float, ptr %"R22"
  %"fmul.292" = fmul float %".7493", %".7494"
  %".7495" = bitcast ptr %"R59" to ptr
  store float %"fmul.292", ptr %".7495"
  ; FFMA R25, R59, R52, R25
  %".7498" = load float, ptr %"R59"
  %".7499" = load float, ptr %"R52"
  %".7500" = load float, ptr %"R25"
  %"fmul.293" = fmul float %".7498", %".7499"
  %"fadd.273" = fadd float %"fmul.293", %".7500"
  %".7501" = bitcast ptr %"R25" to ptr
  store float %"fadd.273", ptr %".7501"
  ; FMUL R57, R57, R22
  %".7504" = load float, ptr %"R57"
  %".7505" = load float, ptr %"R22"
  %"fmul.294" = fmul float %".7504", %".7505"
  %".7506" = bitcast ptr %"R57" to ptr
  store float %"fmul.294", ptr %".7506"
  ; FFMA R25, R57, R50, R25
  %".7509" = load float, ptr %"R57"
  %".7510" = load float, ptr %"R50"
  %".7511" = load float, ptr %"R25"
  %"fmul.295" = fmul float %".7509", %".7510"
  %"fadd.274" = fadd float %"fmul.295", %".7511"
  %".7512" = bitcast ptr %"R25" to ptr
  store float %"fadd.274", ptr %".7512"
  ; FMUL R55, R55, R22.reuse
  %".7515" = load float, ptr %"R55"
  %".7516" = load float, ptr %"R22"
  %"fmul.296" = fmul float %".7515", %".7516"
  %".7517" = bitcast ptr %"R55" to ptr
  store float %"fmul.296", ptr %".7517"
  ; FMUL R61, R61, R22
  %".7520" = load float, ptr %"R61"
  %".7521" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".7520", %".7521"
  %".7522" = bitcast ptr %"R61" to ptr
  store float %"fmul.297", ptr %".7522"
  ; FFMA R25, R55, R56, R25
  %".7525" = load float, ptr %"R55"
  %".7526" = load float, ptr %"R56"
  %".7527" = load float, ptr %"R25"
  %"fmul.298" = fmul float %".7525", %".7526"
  %"fadd.275" = fadd float %"fmul.298", %".7527"
  %".7528" = bitcast ptr %"R25" to ptr
  store float %"fadd.275", ptr %".7528"
  ; FFMA R25, R61, R58, R25
  %".7531" = load float, ptr %"R61"
  %".7532" = load float, ptr %"R58"
  %".7533" = load float, ptr %"R25"
  %"fmul.299" = fmul float %".7531", %".7532"
  %"fadd.276" = fadd float %"fmul.299", %".7533"
  %".7534" = bitcast ptr %"R25" to ptr
  store float %"fadd.276", ptr %".7534"
  ; FMUL R6, R6, R22.reuse
  %".7537" = load float, ptr %"R6"
  %".7538" = load float, ptr %"R22"
  %"fmul.300" = fmul float %".7537", %".7538"
  %".7539" = bitcast ptr %"R6" to ptr
  store float %"fmul.300", ptr %".7539"
  ; FMUL R41, R41, R22
  %".7542" = load float, ptr %"R41"
  %".7543" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".7542", %".7543"
  %".7544" = bitcast ptr %"R41" to ptr
  store float %"fmul.301", ptr %".7544"
  ; FFMA R6, R6, R10, R25
  %".7547" = load float, ptr %"R6"
  %".7548" = load float, ptr %"R10"
  %".7549" = load float, ptr %"R25"
  %"fmul.302" = fmul float %".7547", %".7548"
  %"fadd.277" = fadd float %"fmul.302", %".7549"
  %".7550" = bitcast ptr %"R6" to ptr
  store float %"fadd.277", ptr %".7550"
  ; FMUL R7, R7, R22
  %".7553" = load float, ptr %"R7"
  %".7554" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".7553", %".7554"
  %".7555" = bitcast ptr %"R7" to ptr
  store float %"fmul.303", ptr %".7555"
  ; FFMA R9, R41, R9, R6
  %".7558" = load float, ptr %"R41"
  %".7559" = load float, ptr %"R9"
  %".7560" = load float, ptr %"R6"
  %"fmul.304" = fmul float %".7558", %".7559"
  %"fadd.278" = fadd float %"fmul.304", %".7560"
  %".7561" = bitcast ptr %"R9" to ptr
  store float %"fadd.278", ptr %".7561"
  ; FMUL R60, R60, R22
  %".7564" = load float, ptr %"R60"
  %".7565" = load float, ptr %"R22"
  %"fmul.305" = fmul float %".7564", %".7565"
  %".7566" = bitcast ptr %"R60" to ptr
  store float %"fmul.305", ptr %".7566"
  ; FFMA R8, R7, R8, R9
  %".7569" = load float, ptr %"R7"
  %".7570" = load float, ptr %"R8"
  %".7571" = load float, ptr %"R9"
  %"fmul.306" = fmul float %".7569", %".7570"
  %"fadd.279" = fadd float %"fmul.306", %".7571"
  %".7572" = bitcast ptr %"R8" to ptr
  store float %"fadd.279", ptr %".7572"
  ; FFMA R21, R60, R11, R8
  %".7575" = load float, ptr %"R60"
  %".7576" = load float, ptr %"R11"
  %".7577" = load float, ptr %"R8"
  %"fmul.307" = fmul float %".7575", %".7576"
  %"fadd.280" = fadd float %"fmul.307", %".7577"
  %".7578" = bitcast ptr %"R21" to ptr
  store float %"fadd.280", ptr %".7578"
  ; @P1 BRA `(.L_x_39)
  %".7581" = load i1, ptr %"P1"
  %".7582" = icmp ne i1 %".7581", 1
  br i1 %".7582", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".7585" = load i32, ptr %"R35"
  %".7586" = load i1, ptr %"PT"
  %"cmp.61" = icmp sgt i32 %".7585", 4
  %".7587" = and i1 %"cmp.61", %".7586"
  store i1 %".7587", ptr %"P1"
  ; @!P1 BRA `(.L_x_40)
  %".7590" = load i1, ptr %"P1"
  %".7591" = icmp eq i1 %".7590", 1
  br i1 %".7591", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".7596" = load i32, ptr %"R3"
  %".7597" = load i32, ptr %"R34"
  %"add.320" = add i32 %".7596", %".7597"
  %"add.321" = add i32 %"add.320", 0
  store i32 %"add.321", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".7600" = load i32, ptr %"R34"
  %".7601" = load i32, ptr %"R11"
  %"zext.885" = zext i32 %".7600" to i64
  %"zext.886" = zext i32 %".7601" to i64
  %"mul.98" = mul i64 %"zext.885", %"zext.886"
  %".7602" = ptrtoint ptr %"Arg_1" to i64
  %"add.322" = add i64 %"mul.98", %".7602"
  %".7603" = and i64 %"add.322", 18446744069414584320
  %".7604" = lshr i64 %".7603", 32
  %"trunc32.194" = trunc i64 %".7604" to i32
  %"trunc32.195" = trunc i64 %"add.322" to i32
  store i32 %"trunc32.195", ptr %"R8"
  store i32 %"trunc32.194", ptr %"R9"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".7608" = load i32, ptr %"R6"
  %".7609" = load i32, ptr %"R11"
  %"zext.887" = zext i32 %".7608" to i64
  %"zext.888" = zext i32 %".7609" to i64
  %"mul.99" = mul i64 %"zext.887", %"zext.888"
  %".7610" = ptrtoint ptr %"Arg_2" to i64
  %"add.323" = add i64 %"mul.99", %".7610"
  %".7611" = and i64 %"add.323", 18446744069414584320
  %".7612" = lshr i64 %".7611", 32
  %"trunc32.196" = trunc i64 %".7612" to i32
  %"trunc32.197" = trunc i64 %"add.323" to i32
  store i32 %"trunc32.197", ptr %"R6"
  store i32 %"trunc32.196", ptr %"R7"
  ; IADD3 R4, R34, 0x4, RZ
  %".7616" = load i32, ptr %"R34"
  %"add.324" = add i32 %".7616", 4
  %"add.325" = add i32 %"add.324", 0
  store i32 %"add.325", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".7619" = load i32, ptr %"R8"
  %"zext.889" = zext i32 %".7619" to i64
  %".7620" = load i32, ptr %"R9"
  %"zext.890" = zext i32 %".7620" to i64
  %"shl.380" = shl i64 %"zext.890", 32
  %"or.345" = or i64 %"shl.380", %"zext.889"
  %".7621" = inttoptr i64 %"or.345" to ptr
  %".7622" = ptrtoint ptr %".7621" to i64
  %".7623" = add i64 %".7622", 0
  %"for_LDG.314" = inttoptr i64 %".7623" to ptr
  %".7624" = load float, ptr %"for_LDG.314"
  %".7625" = bitcast ptr %"R13" to ptr
  store float %".7624", ptr %".7625"
  ; IADD3 R10, R3, R4, RZ
  %".7628" = load i32, ptr %"R3"
  %".7629" = load i32, ptr %"R4"
  %"add.326" = add i32 %".7628", %".7629"
  %"add.327" = add i32 %"add.326", 0
  store i32 %"add.327", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".7632" = load i32, ptr %"R6"
  %"zext.891" = zext i32 %".7632" to i64
  %".7633" = load i32, ptr %"R7"
  %"zext.892" = zext i32 %".7633" to i64
  %"shl.381" = shl i64 %"zext.892", 32
  %"or.346" = or i64 %"shl.381", %"zext.891"
  %".7634" = inttoptr i64 %"or.346" to ptr
  %".7635" = ptrtoint ptr %".7634" to i64
  %".7636" = add i64 %".7635", 0
  %"for_LDG.315" = inttoptr i64 %".7636" to ptr
  %".7637" = load float, ptr %"for_LDG.315"
  %".7638" = bitcast ptr %"R12" to ptr
  store float %".7637", ptr %".7638"
  ; LDG.E.SYS R25, [R8+0x4]
  %".7641" = load i32, ptr %"R8"
  %"zext.893" = zext i32 %".7641" to i64
  %".7642" = load i32, ptr %"R9"
  %"zext.894" = zext i32 %".7642" to i64
  %"shl.382" = shl i64 %"zext.894", 32
  %"or.347" = or i64 %"shl.382", %"zext.893"
  %".7643" = inttoptr i64 %"or.347" to ptr
  %".7644" = ptrtoint ptr %".7643" to i64
  %".7645" = add i64 %".7644", 4
  %"for_LDG.316" = inttoptr i64 %".7645" to ptr
  %".7646" = load float, ptr %"for_LDG.316"
  %".7647" = bitcast ptr %"R25" to ptr
  store float %".7646", ptr %".7647"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".7650" = load i32, ptr %"R4"
  %".7651" = load i32, ptr %"R11"
  %"zext.895" = zext i32 %".7650" to i64
  %"zext.896" = zext i32 %".7651" to i64
  %"mul.100" = mul i64 %"zext.895", %"zext.896"
  %".7652" = ptrtoint ptr %"Arg_1" to i64
  %"add.328" = add i64 %"mul.100", %".7652"
  %".7653" = and i64 %"add.328", 18446744069414584320
  %".7654" = lshr i64 %".7653", 32
  %"trunc32.198" = trunc i64 %".7654" to i32
  %"trunc32.199" = trunc i64 %"add.328" to i32
  store i32 %"trunc32.199", ptr %"R4"
  store i32 %"trunc32.198", ptr %"R5"
  ; LDG.E.SYS R24, [R6+0x4]
  %".7658" = load i32, ptr %"R6"
  %"zext.897" = zext i32 %".7658" to i64
  %".7659" = load i32, ptr %"R7"
  %"zext.898" = zext i32 %".7659" to i64
  %"shl.383" = shl i64 %"zext.898", 32
  %"or.348" = or i64 %"shl.383", %"zext.897"
  %".7660" = inttoptr i64 %"or.348" to ptr
  %".7661" = ptrtoint ptr %".7660" to i64
  %".7662" = add i64 %".7661", 4
  %"for_LDG.317" = inttoptr i64 %".7662" to ptr
  %".7663" = load float, ptr %"for_LDG.317"
  %".7664" = bitcast ptr %"R24" to ptr
  store float %".7663", ptr %".7664"
  ; LDG.E.SYS R37, [R8+0x8]
  %".7667" = load i32, ptr %"R8"
  %"zext.899" = zext i32 %".7667" to i64
  %".7668" = load i32, ptr %"R9"
  %"zext.900" = zext i32 %".7668" to i64
  %"shl.384" = shl i64 %"zext.900", 32
  %"or.349" = or i64 %"shl.384", %"zext.899"
  %".7669" = inttoptr i64 %"or.349" to ptr
  %".7670" = ptrtoint ptr %".7669" to i64
  %".7671" = add i64 %".7670", 8
  %"for_LDG.318" = inttoptr i64 %".7671" to ptr
  %".7672" = load float, ptr %"for_LDG.318"
  %".7673" = bitcast ptr %"R37" to ptr
  store float %".7672", ptr %".7673"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".7676" = load i32, ptr %"R10"
  %".7677" = load i32, ptr %"R11"
  %"zext.901" = zext i32 %".7676" to i64
  %"zext.902" = zext i32 %".7677" to i64
  %"mul.101" = mul i64 %"zext.901", %"zext.902"
  %".7678" = ptrtoint ptr %"Arg_2" to i64
  %"add.329" = add i64 %"mul.101", %".7678"
  %".7679" = and i64 %"add.329", 18446744069414584320
  %".7680" = lshr i64 %".7679", 32
  %"trunc32.200" = trunc i64 %".7680" to i32
  %"trunc32.201" = trunc i64 %"add.329" to i32
  store i32 %"trunc32.201", ptr %"R10"
  store i32 %"trunc32.200", ptr %"R11"
  ; LDG.E.SYS R36, [R6+0x8]
  %".7684" = load i32, ptr %"R6"
  %"zext.903" = zext i32 %".7684" to i64
  %".7685" = load i32, ptr %"R7"
  %"zext.904" = zext i32 %".7685" to i64
  %"shl.385" = shl i64 %"zext.904", 32
  %"or.350" = or i64 %"shl.385", %"zext.903"
  %".7686" = inttoptr i64 %"or.350" to ptr
  %".7687" = ptrtoint ptr %".7686" to i64
  %".7688" = add i64 %".7687", 8
  %"for_LDG.319" = inttoptr i64 %".7688" to ptr
  %".7689" = load float, ptr %"for_LDG.319"
  %".7690" = bitcast ptr %"R36" to ptr
  store float %".7689", ptr %".7690"
  ; LDG.E.SYS R39, [R8+0xc]
  %".7693" = load i32, ptr %"R8"
  %"zext.905" = zext i32 %".7693" to i64
  %".7694" = load i32, ptr %"R9"
  %"zext.906" = zext i32 %".7694" to i64
  %"shl.386" = shl i64 %"zext.906", 32
  %"or.351" = or i64 %"shl.386", %"zext.905"
  %".7695" = inttoptr i64 %"or.351" to ptr
  %".7696" = ptrtoint ptr %".7695" to i64
  %".7697" = add i64 %".7696", 12
  %"for_LDG.320" = inttoptr i64 %".7697" to ptr
  %".7698" = load float, ptr %"for_LDG.320"
  %".7699" = bitcast ptr %"R39" to ptr
  store float %".7698", ptr %".7699"
  ; LDG.E.SYS R38, [R6+0xc]
  %".7702" = load i32, ptr %"R6"
  %"zext.907" = zext i32 %".7702" to i64
  %".7703" = load i32, ptr %"R7"
  %"zext.908" = zext i32 %".7703" to i64
  %"shl.387" = shl i64 %"zext.908", 32
  %"or.352" = or i64 %"shl.387", %"zext.907"
  %".7704" = inttoptr i64 %"or.352" to ptr
  %".7705" = ptrtoint ptr %".7704" to i64
  %".7706" = add i64 %".7705", 12
  %"for_LDG.321" = inttoptr i64 %".7706" to ptr
  %".7707" = load float, ptr %"for_LDG.321"
  %".7708" = bitcast ptr %"R38" to ptr
  store float %".7707", ptr %".7708"
  ; LDG.E.SYS R41, [R4]
  %".7711" = load i32, ptr %"R4"
  %"zext.909" = zext i32 %".7711" to i64
  %".7712" = load i32, ptr %"R5"
  %"zext.910" = zext i32 %".7712" to i64
  %"shl.388" = shl i64 %"zext.910", 32
  %"or.353" = or i64 %"shl.388", %"zext.909"
  %".7713" = inttoptr i64 %"or.353" to ptr
  %".7714" = ptrtoint ptr %".7713" to i64
  %".7715" = add i64 %".7714", 0
  %"for_LDG.322" = inttoptr i64 %".7715" to ptr
  %".7716" = load float, ptr %"for_LDG.322"
  %".7717" = bitcast ptr %"R41" to ptr
  store float %".7716", ptr %".7717"
  ; LDG.E.SYS R40, [R10]
  %".7720" = load i32, ptr %"R10"
  %"zext.911" = zext i32 %".7720" to i64
  %".7721" = load i32, ptr %"R11"
  %"zext.912" = zext i32 %".7721" to i64
  %"shl.389" = shl i64 %"zext.912", 32
  %"or.354" = or i64 %"shl.389", %"zext.911"
  %".7722" = inttoptr i64 %"or.354" to ptr
  %".7723" = ptrtoint ptr %".7722" to i64
  %".7724" = add i64 %".7723", 0
  %"for_LDG.323" = inttoptr i64 %".7724" to ptr
  %".7725" = load float, ptr %"for_LDG.323"
  %".7726" = bitcast ptr %"R40" to ptr
  store float %".7725", ptr %".7726"
  ; LDG.E.SYS R43, [R4+0x4]
  %".7729" = load i32, ptr %"R4"
  %"zext.913" = zext i32 %".7729" to i64
  %".7730" = load i32, ptr %"R5"
  %"zext.914" = zext i32 %".7730" to i64
  %"shl.390" = shl i64 %"zext.914", 32
  %"or.355" = or i64 %"shl.390", %"zext.913"
  %".7731" = inttoptr i64 %"or.355" to ptr
  %".7732" = ptrtoint ptr %".7731" to i64
  %".7733" = add i64 %".7732", 4
  %"for_LDG.324" = inttoptr i64 %".7733" to ptr
  %".7734" = load float, ptr %"for_LDG.324"
  %".7735" = bitcast ptr %"R43" to ptr
  store float %".7734", ptr %".7735"
  ; LDG.E.SYS R42, [R10+0x4]
  %".7738" = load i32, ptr %"R10"
  %"zext.915" = zext i32 %".7738" to i64
  %".7739" = load i32, ptr %"R11"
  %"zext.916" = zext i32 %".7739" to i64
  %"shl.391" = shl i64 %"zext.916", 32
  %"or.356" = or i64 %"shl.391", %"zext.915"
  %".7740" = inttoptr i64 %"or.356" to ptr
  %".7741" = ptrtoint ptr %".7740" to i64
  %".7742" = add i64 %".7741", 4
  %"for_LDG.325" = inttoptr i64 %".7742" to ptr
  %".7743" = load float, ptr %"for_LDG.325"
  %".7744" = bitcast ptr %"R42" to ptr
  store float %".7743", ptr %".7744"
  ; LDG.E.SYS R45, [R4+0x8]
  %".7747" = load i32, ptr %"R4"
  %"zext.917" = zext i32 %".7747" to i64
  %".7748" = load i32, ptr %"R5"
  %"zext.918" = zext i32 %".7748" to i64
  %"shl.392" = shl i64 %"zext.918", 32
  %"or.357" = or i64 %"shl.392", %"zext.917"
  %".7749" = inttoptr i64 %"or.357" to ptr
  %".7750" = ptrtoint ptr %".7749" to i64
  %".7751" = add i64 %".7750", 8
  %"for_LDG.326" = inttoptr i64 %".7751" to ptr
  %".7752" = load float, ptr %"for_LDG.326"
  %".7753" = bitcast ptr %"R45" to ptr
  store float %".7752", ptr %".7753"
  ; LDG.E.SYS R47, [R4+0xc]
  %".7756" = load i32, ptr %"R4"
  %"zext.919" = zext i32 %".7756" to i64
  %".7757" = load i32, ptr %"R5"
  %"zext.920" = zext i32 %".7757" to i64
  %"shl.393" = shl i64 %"zext.920", 32
  %"or.358" = or i64 %"shl.393", %"zext.919"
  %".7758" = inttoptr i64 %"or.358" to ptr
  %".7759" = ptrtoint ptr %".7758" to i64
  %".7760" = add i64 %".7759", 12
  %"for_LDG.327" = inttoptr i64 %".7760" to ptr
  %".7761" = load float, ptr %"for_LDG.327"
  %".7762" = bitcast ptr %"R47" to ptr
  store float %".7761", ptr %".7762"
  ; LDG.E.SYS R44, [R10+0x8]
  %".7765" = load i32, ptr %"R10"
  %"zext.921" = zext i32 %".7765" to i64
  %".7766" = load i32, ptr %"R11"
  %"zext.922" = zext i32 %".7766" to i64
  %"shl.394" = shl i64 %"zext.922", 32
  %"or.359" = or i64 %"shl.394", %"zext.921"
  %".7767" = inttoptr i64 %"or.359" to ptr
  %".7768" = ptrtoint ptr %".7767" to i64
  %".7769" = add i64 %".7768", 8
  %"for_LDG.328" = inttoptr i64 %".7769" to ptr
  %".7770" = load float, ptr %"for_LDG.328"
  %".7771" = bitcast ptr %"R44" to ptr
  store float %".7770", ptr %".7771"
  ; LDG.E.SYS R46, [R10+0xc]
  %".7774" = load i32, ptr %"R10"
  %"zext.923" = zext i32 %".7774" to i64
  %".7775" = load i32, ptr %"R11"
  %"zext.924" = zext i32 %".7775" to i64
  %"shl.395" = shl i64 %"zext.924", 32
  %"or.360" = or i64 %"shl.395", %"zext.923"
  %".7776" = inttoptr i64 %"or.360" to ptr
  %".7777" = ptrtoint ptr %".7776" to i64
  %".7778" = add i64 %".7777", 12
  %"for_LDG.329" = inttoptr i64 %".7778" to ptr
  %".7779" = load float, ptr %"for_LDG.329"
  %".7780" = bitcast ptr %"R46" to ptr
  store float %".7779", ptr %".7780"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".7783" = xor i1 1, 1
  %".7784" = and i1 %".7783", 1
  %".7785" = and i1 %".7784", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".7787" = load i32, ptr %"R35"
  %"add.330" = add i32 %".7787", -8
  %"add.331" = add i32 %"add.330", 0
  store i32 %"add.331", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".7790" = load i32, ptr %"R34"
  %"add.332" = add i32 %".7790", 8
  %"add.333" = add i32 %"add.332", 0
  store i32 %"add.333", ptr %"R34"
  ; FMUL R8, R13, R22
  %".7793" = load float, ptr %"R13"
  %".7794" = load float, ptr %"R22"
  %"fmul.308" = fmul float %".7793", %".7794"
  %".7795" = bitcast ptr %"R8" to ptr
  store float %"fmul.308", ptr %".7795"
  ; FFMA R8, R8, R12, R21
  %".7798" = load float, ptr %"R8"
  %".7799" = load float, ptr %"R12"
  %".7800" = load float, ptr %"R21"
  %"fmul.309" = fmul float %".7798", %".7799"
  %"fadd.281" = fadd float %"fmul.309", %".7800"
  %".7801" = bitcast ptr %"R8" to ptr
  store float %"fadd.281", ptr %".7801"
  ; FMUL R25, R25, R22
  %".7804" = load float, ptr %"R25"
  %".7805" = load float, ptr %"R22"
  %"fmul.310" = fmul float %".7804", %".7805"
  %".7806" = bitcast ptr %"R25" to ptr
  store float %"fmul.310", ptr %".7806"
  ; FFMA R8, R25, R24, R8
  %".7809" = load float, ptr %"R25"
  %".7810" = load float, ptr %"R24"
  %".7811" = load float, ptr %"R8"
  %"fmul.311" = fmul float %".7809", %".7810"
  %"fadd.282" = fadd float %"fmul.311", %".7811"
  %".7812" = bitcast ptr %"R8" to ptr
  store float %"fadd.282", ptr %".7812"
  ; FMUL R37, R37, R22
  %".7815" = load float, ptr %"R37"
  %".7816" = load float, ptr %"R22"
  %"fmul.312" = fmul float %".7815", %".7816"
  %".7817" = bitcast ptr %"R37" to ptr
  store float %"fmul.312", ptr %".7817"
  ; FFMA R8, R37, R36, R8
  %".7820" = load float, ptr %"R37"
  %".7821" = load float, ptr %"R36"
  %".7822" = load float, ptr %"R8"
  %"fmul.313" = fmul float %".7820", %".7821"
  %"fadd.283" = fadd float %"fmul.313", %".7822"
  %".7823" = bitcast ptr %"R8" to ptr
  store float %"fadd.283", ptr %".7823"
  ; FMUL R39, R39, R22
  %".7826" = load float, ptr %"R39"
  %".7827" = load float, ptr %"R22"
  %"fmul.314" = fmul float %".7826", %".7827"
  %".7828" = bitcast ptr %"R39" to ptr
  store float %"fmul.314", ptr %".7828"
  ; FFMA R8, R39, R38, R8
  %".7831" = load float, ptr %"R39"
  %".7832" = load float, ptr %"R38"
  %".7833" = load float, ptr %"R8"
  %"fmul.315" = fmul float %".7831", %".7832"
  %"fadd.284" = fadd float %"fmul.315", %".7833"
  %".7834" = bitcast ptr %"R8" to ptr
  store float %"fadd.284", ptr %".7834"
  ; FMUL R41, R41, R22
  %".7837" = load float, ptr %"R41"
  %".7838" = load float, ptr %"R22"
  %"fmul.316" = fmul float %".7837", %".7838"
  %".7839" = bitcast ptr %"R41" to ptr
  store float %"fmul.316", ptr %".7839"
  ; FFMA R8, R41, R40, R8
  %".7842" = load float, ptr %"R41"
  %".7843" = load float, ptr %"R40"
  %".7844" = load float, ptr %"R8"
  %"fmul.317" = fmul float %".7842", %".7843"
  %"fadd.285" = fadd float %"fmul.317", %".7844"
  %".7845" = bitcast ptr %"R8" to ptr
  store float %"fadd.285", ptr %".7845"
  ; FMUL R43, R43, R22
  %".7848" = load float, ptr %"R43"
  %".7849" = load float, ptr %"R22"
  %"fmul.318" = fmul float %".7848", %".7849"
  %".7850" = bitcast ptr %"R43" to ptr
  store float %"fmul.318", ptr %".7850"
  ; FFMA R8, R43, R42, R8
  %".7853" = load float, ptr %"R43"
  %".7854" = load float, ptr %"R42"
  %".7855" = load float, ptr %"R8"
  %"fmul.319" = fmul float %".7853", %".7854"
  %"fadd.286" = fadd float %"fmul.319", %".7855"
  %".7856" = bitcast ptr %"R8" to ptr
  store float %"fadd.286", ptr %".7856"
  ; FMUL R45, R45, R22.reuse
  %".7859" = load float, ptr %"R45"
  %".7860" = load float, ptr %"R22"
  %"fmul.320" = fmul float %".7859", %".7860"
  %".7861" = bitcast ptr %"R45" to ptr
  store float %"fmul.320", ptr %".7861"
  ; FMUL R47, R47, R22
  %".7864" = load float, ptr %"R47"
  %".7865" = load float, ptr %"R22"
  %"fmul.321" = fmul float %".7864", %".7865"
  %".7866" = bitcast ptr %"R47" to ptr
  store float %"fmul.321", ptr %".7866"
  ; FFMA R8, R45, R44, R8
  %".7869" = load float, ptr %"R45"
  %".7870" = load float, ptr %"R44"
  %".7871" = load float, ptr %"R8"
  %"fmul.322" = fmul float %".7869", %".7870"
  %"fadd.287" = fadd float %"fmul.322", %".7871"
  %".7872" = bitcast ptr %"R8" to ptr
  store float %"fadd.287", ptr %".7872"
  ; FFMA R21, R47, R46, R8
  %".7875" = load float, ptr %"R47"
  %".7876" = load float, ptr %"R46"
  %".7877" = load float, ptr %"R8"
  %"fmul.323" = fmul float %".7875", %".7876"
  %"fadd.288" = fadd float %"fmul.323", %".7877"
  %".7878" = bitcast ptr %"R21" to ptr
  store float %"fadd.288", ptr %".7878"
  br label %".L_x_40"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".7882" = load i32, ptr %"R35"
  %".7883" = load i1, ptr %"PT"
  %"cmp.62" = icmp ne i32 %".7882", 0
  %".7884" = or i1 %"cmp.62", %".7883"
  store i1 %".7884", ptr %"P0"
  ; @!P0 BRA `(.L_x_36)
  %".7887" = load i1, ptr %"P0"
  %".7888" = icmp eq i1 %".7887", 1
  br i1 %".7888", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".7893" = load i32, ptr %"R3"
  %".7894" = load i32, ptr %"R34"
  %"add.334" = add i32 %".7893", %".7894"
  %"add.335" = add i32 %"add.334", 0
  store i32 %"add.335", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".7897" = load i32, ptr %"R34"
  %".7898" = load i32, ptr %"R7"
  %"zext.925" = zext i32 %".7897" to i64
  %"zext.926" = zext i32 %".7898" to i64
  %"mul.102" = mul i64 %"zext.925", %"zext.926"
  %".7899" = ptrtoint ptr %"Arg_1" to i64
  %"add.336" = add i64 %"mul.102", %".7899"
  %".7900" = and i64 %"add.336", 18446744069414584320
  %".7901" = lshr i64 %".7900", 32
  %"trunc32.202" = trunc i64 %".7901" to i32
  %"trunc32.203" = trunc i64 %"add.336" to i32
  store i32 %"trunc32.203", ptr %"R4"
  store i32 %"trunc32.202", ptr %"R5"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".7905" = load i32, ptr %"R6"
  %".7906" = load i32, ptr %"R7"
  %"zext.927" = zext i32 %".7905" to i64
  %"zext.928" = zext i32 %".7906" to i64
  %"mul.103" = mul i64 %"zext.927", %"zext.928"
  %".7907" = ptrtoint ptr %"Arg_2" to i64
  %"add.337" = add i64 %"mul.103", %".7907"
  %".7908" = and i64 %"add.337", 18446744069414584320
  %".7909" = lshr i64 %".7908", 32
  %"trunc32.204" = trunc i64 %".7909" to i32
  %"trunc32.205" = trunc i64 %"add.337" to i32
  store i32 %"trunc32.205", ptr %"R6"
  store i32 %"trunc32.204", ptr %"R7"
  ; LDG.E.SYS R9, [R4]
  %".7913" = load i32, ptr %"R4"
  %"zext.929" = zext i32 %".7913" to i64
  %".7914" = load i32, ptr %"R5"
  %"zext.930" = zext i32 %".7914" to i64
  %"shl.396" = shl i64 %"zext.930", 32
  %"or.361" = or i64 %"shl.396", %"zext.929"
  %".7915" = inttoptr i64 %"or.361" to ptr
  %".7916" = ptrtoint ptr %".7915" to i64
  %".7917" = add i64 %".7916", 0
  %"for_LDG.330" = inttoptr i64 %".7917" to ptr
  %".7918" = load float, ptr %"for_LDG.330"
  %".7919" = bitcast ptr %"R9" to ptr
  store float %".7918", ptr %".7919"
  ; LDG.E.SYS R10, [R6]
  %".7922" = load i32, ptr %"R6"
  %"zext.931" = zext i32 %".7922" to i64
  %".7923" = load i32, ptr %"R7"
  %"zext.932" = zext i32 %".7923" to i64
  %"shl.397" = shl i64 %"zext.932", 32
  %"or.362" = or i64 %"shl.397", %"zext.931"
  %".7924" = inttoptr i64 %"or.362" to ptr
  %".7925" = ptrtoint ptr %".7924" to i64
  %".7926" = add i64 %".7925", 0
  %"for_LDG.331" = inttoptr i64 %".7926" to ptr
  %".7927" = load float, ptr %"for_LDG.331"
  %".7928" = bitcast ptr %"R10" to ptr
  store float %".7927", ptr %".7928"
  ; LDG.E.SYS R11, [R4+0x4]
  %".7931" = load i32, ptr %"R4"
  %"zext.933" = zext i32 %".7931" to i64
  %".7932" = load i32, ptr %"R5"
  %"zext.934" = zext i32 %".7932" to i64
  %"shl.398" = shl i64 %"zext.934", 32
  %"or.363" = or i64 %"shl.398", %"zext.933"
  %".7933" = inttoptr i64 %"or.363" to ptr
  %".7934" = ptrtoint ptr %".7933" to i64
  %".7935" = add i64 %".7934", 4
  %"for_LDG.332" = inttoptr i64 %".7935" to ptr
  %".7936" = load float, ptr %"for_LDG.332"
  %".7937" = bitcast ptr %"R11" to ptr
  store float %".7936", ptr %".7937"
  ; LDG.E.SYS R12, [R6+0x4]
  %".7940" = load i32, ptr %"R6"
  %"zext.935" = zext i32 %".7940" to i64
  %".7941" = load i32, ptr %"R7"
  %"zext.936" = zext i32 %".7941" to i64
  %"shl.399" = shl i64 %"zext.936", 32
  %"or.364" = or i64 %"shl.399", %"zext.935"
  %".7942" = inttoptr i64 %"or.364" to ptr
  %".7943" = ptrtoint ptr %".7942" to i64
  %".7944" = add i64 %".7943", 4
  %"for_LDG.333" = inttoptr i64 %".7944" to ptr
  %".7945" = load float, ptr %"for_LDG.333"
  %".7946" = bitcast ptr %"R12" to ptr
  store float %".7945", ptr %".7946"
  ; LDG.E.SYS R13, [R4+0x8]
  %".7949" = load i32, ptr %"R4"
  %"zext.937" = zext i32 %".7949" to i64
  %".7950" = load i32, ptr %"R5"
  %"zext.938" = zext i32 %".7950" to i64
  %"shl.400" = shl i64 %"zext.938", 32
  %"or.365" = or i64 %"shl.400", %"zext.937"
  %".7951" = inttoptr i64 %"or.365" to ptr
  %".7952" = ptrtoint ptr %".7951" to i64
  %".7953" = add i64 %".7952", 8
  %"for_LDG.334" = inttoptr i64 %".7953" to ptr
  %".7954" = load float, ptr %"for_LDG.334"
  %".7955" = bitcast ptr %"R13" to ptr
  store float %".7954", ptr %".7955"
  ; LDG.E.SYS R24, [R6+0x8]
  %".7958" = load i32, ptr %"R6"
  %"zext.939" = zext i32 %".7958" to i64
  %".7959" = load i32, ptr %"R7"
  %"zext.940" = zext i32 %".7959" to i64
  %"shl.401" = shl i64 %"zext.940", 32
  %"or.366" = or i64 %"shl.401", %"zext.939"
  %".7960" = inttoptr i64 %"or.366" to ptr
  %".7961" = ptrtoint ptr %".7960" to i64
  %".7962" = add i64 %".7961", 8
  %"for_LDG.335" = inttoptr i64 %".7962" to ptr
  %".7963" = load float, ptr %"for_LDG.335"
  %".7964" = bitcast ptr %"R24" to ptr
  store float %".7963", ptr %".7964"
  ; LDG.E.SYS R25, [R4+0xc]
  %".7967" = load i32, ptr %"R4"
  %"zext.941" = zext i32 %".7967" to i64
  %".7968" = load i32, ptr %"R5"
  %"zext.942" = zext i32 %".7968" to i64
  %"shl.402" = shl i64 %"zext.942", 32
  %"or.367" = or i64 %"shl.402", %"zext.941"
  %".7969" = inttoptr i64 %"or.367" to ptr
  %".7970" = ptrtoint ptr %".7969" to i64
  %".7971" = add i64 %".7970", 12
  %"for_LDG.336" = inttoptr i64 %".7971" to ptr
  %".7972" = load float, ptr %"for_LDG.336"
  %".7973" = bitcast ptr %"R25" to ptr
  store float %".7972", ptr %".7973"
  ; LDG.E.SYS R36, [R6+0xc]
  %".7976" = load i32, ptr %"R6"
  %"zext.943" = zext i32 %".7976" to i64
  %".7977" = load i32, ptr %"R7"
  %"zext.944" = zext i32 %".7977" to i64
  %"shl.403" = shl i64 %"zext.944", 32
  %"or.368" = or i64 %"shl.403", %"zext.943"
  %".7978" = inttoptr i64 %"or.368" to ptr
  %".7979" = ptrtoint ptr %".7978" to i64
  %".7980" = add i64 %".7979", 12
  %"for_LDG.337" = inttoptr i64 %".7980" to ptr
  %".7981" = load float, ptr %"for_LDG.337"
  %".7982" = bitcast ptr %"R36" to ptr
  store float %".7981", ptr %".7982"
  ; IADD3 R35, R35, -0x4, RZ
  %".7985" = load i32, ptr %"R35"
  %"add.338" = add i32 %".7985", -4
  %"add.339" = add i32 %"add.338", 0
  store i32 %"add.339", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".7988" = load i32, ptr %"R34"
  %"add.340" = add i32 %".7988", 4
  %"add.341" = add i32 %"add.340", 0
  store i32 %"add.341", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".7991" = load i32, ptr %"R35"
  %".7992" = load i1, ptr %"PT"
  %"cmp.63" = icmp ne i32 %".7991", 0
  %".7993" = and i1 %"cmp.63", %".7992"
  store i1 %".7993", ptr %"P0"
  ; FMUL R8, R9, R22
  %".7996" = load float, ptr %"R9"
  %".7997" = load float, ptr %"R22"
  %"fmul.324" = fmul float %".7996", %".7997"
  %".7998" = bitcast ptr %"R8" to ptr
  store float %"fmul.324", ptr %".7998"
  ; FFMA R8, R8, R10, R21
  %".8001" = load float, ptr %"R8"
  %".8002" = load float, ptr %"R10"
  %".8003" = load float, ptr %"R21"
  %"fmul.325" = fmul float %".8001", %".8002"
  %"fadd.289" = fadd float %"fmul.325", %".8003"
  %".8004" = bitcast ptr %"R8" to ptr
  store float %"fadd.289", ptr %".8004"
  ; FMUL R11, R11, R22
  %".8007" = load float, ptr %"R11"
  %".8008" = load float, ptr %"R22"
  %"fmul.326" = fmul float %".8007", %".8008"
  %".8009" = bitcast ptr %"R11" to ptr
  store float %"fmul.326", ptr %".8009"
  ; FFMA R8, R11, R12, R8
  %".8012" = load float, ptr %"R11"
  %".8013" = load float, ptr %"R12"
  %".8014" = load float, ptr %"R8"
  %"fmul.327" = fmul float %".8012", %".8013"
  %"fadd.290" = fadd float %"fmul.327", %".8014"
  %".8015" = bitcast ptr %"R8" to ptr
  store float %"fadd.290", ptr %".8015"
  ; FMUL R13, R13, R22
  %".8018" = load float, ptr %"R13"
  %".8019" = load float, ptr %"R22"
  %"fmul.328" = fmul float %".8018", %".8019"
  %".8020" = bitcast ptr %"R13" to ptr
  store float %"fmul.328", ptr %".8020"
  ; FFMA R8, R13, R24, R8
  %".8023" = load float, ptr %"R13"
  %".8024" = load float, ptr %"R24"
  %".8025" = load float, ptr %"R8"
  %"fmul.329" = fmul float %".8023", %".8024"
  %"fadd.291" = fadd float %"fmul.329", %".8025"
  %".8026" = bitcast ptr %"R8" to ptr
  store float %"fadd.291", ptr %".8026"
  ; FMUL R25, R25, R22
  %".8029" = load float, ptr %"R25"
  %".8030" = load float, ptr %"R22"
  %"fmul.330" = fmul float %".8029", %".8030"
  %".8031" = bitcast ptr %"R25" to ptr
  store float %"fmul.330", ptr %".8031"
  ; FFMA R21, R25, R36, R8
  %".8034" = load float, ptr %"R25"
  %".8035" = load float, ptr %"R36"
  %".8036" = load float, ptr %"R8"
  %"fmul.331" = fmul float %".8034", %".8035"
  %"fadd.292" = fadd float %"fmul.331", %".8036"
  %".8037" = bitcast ptr %"R21" to ptr
  store float %"fadd.292", ptr %".8037"
  ; @P0 BRA `(.L_x_37)
  %".8040" = load i1, ptr %"P0"
  %".8041" = icmp ne i1 %".8040", 1
  br i1 %".8041", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".8044" = load i32, ptr %"R48"
  %".8045" = load i1, ptr %"PT"
  %"cmp.64" = icmp ne i32 %".8044", 0
  %".8046" = and i1 %"cmp.64", %".8045"
  store i1 %".8046", ptr %"P0"
  ; @!P0 BRA `(.L_x_35)
  %".8049" = load i1, ptr %"P0"
  %".8050" = icmp eq i1 %".8049", 1
  br i1 %".8050", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".8055" = load i32, ptr %"R3"
  %".8056" = load i32, ptr %"R34"
  %"add.342" = add i32 %".8055", %".8056"
  %"add.343" = add i32 %"add.342", 0
  store i32 %"add.343", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".8059" = load i32, ptr %"R34"
  %".8060" = load i32, ptr %"R5"
  %"zext.945" = zext i32 %".8059" to i64
  %"zext.946" = zext i32 %".8060" to i64
  %"mul.104" = mul i64 %"zext.945", %"zext.946"
  %".8061" = ptrtoint ptr %"Arg_1" to i64
  %"add.344" = add i64 %"mul.104", %".8061"
  %".8062" = and i64 %"add.344", 18446744069414584320
  %".8063" = lshr i64 %".8062", 32
  %"trunc32.206" = trunc i64 %".8063" to i32
  %"trunc32.207" = trunc i64 %"add.344" to i32
  store i32 %"trunc32.207", ptr %"R34"
  store i32 %"trunc32.206", ptr %"R35"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".8067" = load i32, ptr %"R4"
  %".8068" = load i32, ptr %"R5"
  %"zext.947" = zext i32 %".8067" to i64
  %"zext.948" = zext i32 %".8068" to i64
  %"mul.105" = mul i64 %"zext.947", %"zext.948"
  %".8069" = ptrtoint ptr %"Arg_2" to i64
  %"add.345" = add i64 %"mul.105", %".8069"
  %".8070" = and i64 %"add.345", 18446744069414584320
  %".8071" = lshr i64 %".8070", 32
  %"trunc32.208" = trunc i64 %".8071" to i32
  %"trunc32.209" = trunc i64 %"add.345" to i32
  store i32 %"trunc32.209", ptr %"R4"
  store i32 %"trunc32.208", ptr %"R5"
  ; LDG.E.SYS R7, [R34]
  %".8075" = load i32, ptr %"R34"
  %"zext.949" = zext i32 %".8075" to i64
  %".8076" = load i32, ptr %"R35"
  %"zext.950" = zext i32 %".8076" to i64
  %"shl.404" = shl i64 %"zext.950", 32
  %"or.369" = or i64 %"shl.404", %"zext.949"
  %".8077" = inttoptr i64 %"or.369" to ptr
  %".8078" = ptrtoint ptr %".8077" to i64
  %".8079" = add i64 %".8078", 0
  %"for_LDG.338" = inttoptr i64 %".8079" to ptr
  %".8080" = load float, ptr %"for_LDG.338"
  %".8081" = bitcast ptr %"R7" to ptr
  store float %".8080", ptr %".8081"
  ; LDG.E.SYS R8, [R4]
  %".8084" = load i32, ptr %"R4"
  %"zext.951" = zext i32 %".8084" to i64
  %".8085" = load i32, ptr %"R5"
  %"zext.952" = zext i32 %".8085" to i64
  %"shl.405" = shl i64 %"zext.952", 32
  %"or.370" = or i64 %"shl.405", %"zext.951"
  %".8086" = inttoptr i64 %"or.370" to ptr
  %".8087" = ptrtoint ptr %".8086" to i64
  %".8088" = add i64 %".8087", 0
  %"for_LDG.339" = inttoptr i64 %".8088" to ptr
  %".8089" = load float, ptr %"for_LDG.339"
  %".8090" = bitcast ptr %"R8" to ptr
  store float %".8089", ptr %".8090"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".8093" = load i32, ptr %"R48"
  %".8094" = load i1, ptr %"PT"
  %"cmp.65" = icmp ne i32 %".8093", 1
  %".8095" = and i1 %"cmp.65", %".8094"
  store i1 %".8095", ptr %"P0"
  ; FMUL R6, R7, R22
  %".8098" = load float, ptr %"R7"
  %".8099" = load float, ptr %"R22"
  %"fmul.332" = fmul float %".8098", %".8099"
  %".8100" = bitcast ptr %"R6" to ptr
  store float %"fmul.332", ptr %".8100"
  ; FFMA R21, R6, R8, R21
  %".8103" = load float, ptr %"R6"
  %".8104" = load float, ptr %"R8"
  %".8105" = load float, ptr %"R21"
  %"fmul.333" = fmul float %".8103", %".8104"
  %"fadd.293" = fadd float %"fmul.333", %".8105"
  %".8106" = bitcast ptr %"R21" to ptr
  store float %"fadd.293", ptr %".8106"
  ; @!P0 BRA `(.L_x_35)
  %".8109" = load i1, ptr %"P0"
  %".8110" = icmp eq i1 %".8109", 1
  br i1 %".8110", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".8113" = load i32, ptr %"R48"
  %".8114" = load i1, ptr %"PT"
  %"cmp.66" = icmp ne i32 %".8113", 2
  %".8115" = and i1 %"cmp.66", %".8114"
  store i1 %".8115", ptr %"P0"
  ; LDG.E.SYS R7, [R34+0x4]
  %".8118" = load i32, ptr %"R34"
  %"zext.953" = zext i32 %".8118" to i64
  %".8119" = load i32, ptr %"R35"
  %"zext.954" = zext i32 %".8119" to i64
  %"shl.406" = shl i64 %"zext.954", 32
  %"or.371" = or i64 %"shl.406", %"zext.953"
  %".8120" = inttoptr i64 %"or.371" to ptr
  %".8121" = ptrtoint ptr %".8120" to i64
  %".8122" = add i64 %".8121", 4
  %"for_LDG.340" = inttoptr i64 %".8122" to ptr
  %".8123" = load float, ptr %"for_LDG.340"
  %".8124" = bitcast ptr %"R7" to ptr
  store float %".8123", ptr %".8124"
  ; LDG.E.SYS R8, [R4+0x4]
  %".8127" = load i32, ptr %"R4"
  %"zext.955" = zext i32 %".8127" to i64
  %".8128" = load i32, ptr %"R5"
  %"zext.956" = zext i32 %".8128" to i64
  %"shl.407" = shl i64 %"zext.956", 32
  %"or.372" = or i64 %"shl.407", %"zext.955"
  %".8129" = inttoptr i64 %"or.372" to ptr
  %".8130" = ptrtoint ptr %".8129" to i64
  %".8131" = add i64 %".8130", 4
  %"for_LDG.341" = inttoptr i64 %".8131" to ptr
  %".8132" = load float, ptr %"for_LDG.341"
  %".8133" = bitcast ptr %"R8" to ptr
  store float %".8132", ptr %".8133"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".8136" = load i1, ptr %"P0"
  %".8137" = icmp ne i1 %".8136", 1
  br i1 %".8137", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".8140" = load i32, ptr %"R34"
  %"zext.957" = zext i32 %".8140" to i64
  %".8141" = load i32, ptr %"R35"
  %"zext.958" = zext i32 %".8141" to i64
  %"shl.408" = shl i64 %"zext.958", 32
  %"or.373" = or i64 %"shl.408", %"zext.957"
  %".8142" = inttoptr i64 %"or.373" to ptr
  %".8143" = ptrtoint ptr %".8142" to i64
  %".8144" = add i64 %".8143", 8
  %"for_LDG.342" = inttoptr i64 %".8144" to ptr
  %".8145" = load float, ptr %"for_LDG.342"
  %".8146" = bitcast ptr %"R9" to ptr
  store float %".8145", ptr %".8146"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".8151" = load i1, ptr %"P0"
  %".8152" = icmp ne i1 %".8151", 1
  br i1 %".8152", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".8155" = load i32, ptr %"R4"
  %"zext.959" = zext i32 %".8155" to i64
  %".8156" = load i32, ptr %"R5"
  %"zext.960" = zext i32 %".8156" to i64
  %"shl.409" = shl i64 %"zext.960", 32
  %"or.374" = or i64 %"shl.409", %"zext.959"
  %".8157" = inttoptr i64 %"or.374" to ptr
  %".8158" = ptrtoint ptr %".8157" to i64
  %".8159" = add i64 %".8158", 8
  %"for_LDG.343" = inttoptr i64 %".8159" to ptr
  %".8160" = load float, ptr %"for_LDG.343"
  %".8161" = bitcast ptr %"R10" to ptr
  store float %".8160", ptr %".8161"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".8166" = load float, ptr %"R7"
  %".8167" = load float, ptr %"R22"
  %"fmul.334" = fmul float %".8166", %".8167"
  %".8168" = bitcast ptr %"R6" to ptr
  store float %"fmul.334", ptr %".8168"
  ; FFMA R21, R6, R8, R21
  %".8171" = load float, ptr %"R6"
  %".8172" = load float, ptr %"R8"
  %".8173" = load float, ptr %"R21"
  %"fmul.335" = fmul float %".8171", %".8172"
  %"fadd.294" = fadd float %"fmul.335", %".8173"
  %".8174" = bitcast ptr %"R21" to ptr
  store float %"fadd.294", ptr %".8174"
  ; @P0 FMUL R22, R9, R22
  %".8177" = load i1, ptr %"P0"
  %".8178" = icmp ne i1 %".8177", 1
  br i1 %".8178", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".8181" = load float, ptr %"R9"
  %".8182" = load float, ptr %"R22"
  %"fmul.336" = fmul float %".8181", %".8182"
  %".8183" = bitcast ptr %"R22" to ptr
  store float %"fmul.336", ptr %".8183"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".8188" = load i1, ptr %"P0"
  %".8189" = icmp ne i1 %".8188", 1
  br i1 %".8189", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".8192" = load float, ptr %"R22"
  %".8193" = load float, ptr %"R10"
  %".8194" = load float, ptr %"R21"
  %"fmul.337" = fmul float %".8192", %".8193"
  %"fadd.295" = fadd float %"fmul.337", %".8194"
  %".8195" = bitcast ptr %"R21" to ptr
  store float %"fadd.295", ptr %".8195"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".8200" = load i32, ptr %"R30"
  %"zext.961" = zext i32 %".8200" to i64
  %".8201" = load i32, ptr %"R31"
  %"zext.962" = zext i32 %".8201" to i64
  %"shl.410" = shl i64 %"zext.962", 32
  %"or.375" = or i64 %"shl.410", %"zext.961"
  %".8202" = inttoptr i64 %"or.375" to ptr
  %".8203" = ptrtoint ptr %".8202" to i64
  %".8204" = add i64 %".8203", 0
  %"for_LDG.344" = inttoptr i64 %".8204" to ptr
  %".8205" = load float, ptr %"for_LDG.344"
  %".8206" = bitcast ptr %"R4" to ptr
  store float %".8205", ptr %".8206"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".8211" = load float, ptr %"R4"
  %".8212" = load float, ptr %"R21"
  %"fadd.296" = fadd float %".8211", %".8212"
  %".8213" = bitcast ptr %"R21" to ptr
  store float %"fadd.296", ptr %".8213"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".8216" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".8216")
  %".8217" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".8218" = and i1 %"fcmp_unordered.2", %".8217"
  store i1 %".8218", ptr %"P0"
  ; @!P0 BRA `(.L_x_42)
  %".8221" = load i1, ptr %"P0"
  %".8222" = icmp eq i1 %".8221", 1
  br i1 %".8222", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".8225" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".8225")
  %"fmul.338" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".8226" = bitcast ptr %"R5" to ptr
  store float %"fmul.338", ptr %".8226"
  ; MOV R7, 0x3f800000
  %".8229" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".8229"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".8232" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".8232")
  %".8233" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".8234" = and i1 %"fcmp_unordered.3", %".8233"
  store i1 %".8234", ptr %"P0"
  ; MUFU.EX2 R5, R5
  %".8237" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".8237")
  %".8238" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".8238"
  ; FADD R6, R5, 1
  %".8241" = load float, ptr %"R5"
  %"fadd.297" = fadd float %".8241", 0x3ff0000000000000
  %".8242" = bitcast ptr %"R6" to ptr
  store float %"fadd.297", ptr %".8242"
  ; MUFU.RCP R6, R6
  %".8245" = load float, ptr %"R6"
  %".8246" = fdiv float 0x3ff0000000000000, %".8245"
  %".8247" = bitcast ptr %"R6" to ptr
  store float %".8246", ptr %".8247"
  ; FFMA R4, R6, -2, R7
  %".8250" = load float, ptr %"R6"
  %".8251" = load float, ptr %"R7"
  %"fmul.339" = fmul float %".8250", 0xc000000000000000
  %"fadd.298" = fadd float %"fmul.339", %".8251"
  %".8252" = bitcast ptr %"R4" to ptr
  store float %"fadd.298", ptr %".8252"
  ; FSEL R4, R4, 1, !P0
  %".8255" = load float, ptr %"R4"
  %".8256" = load i1, ptr %"P0"
  %".8257" = icmp eq i1 %".8256", 1
  %"fsel.1" = select  i1 %".8257", float %".8255", float 0x3ff0000000000000
  %".8258" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".8258"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".8261" = load float, ptr %"R4"
  %".8262" = load float, ptr %"R21"
  %".8263" = bitcast float %".8261" to i32
  %".8264" = bitcast float 0x41e0000000000000 to i32
  %".8265" = bitcast float %".8262" to i32
  %".8266" = or i32 %".8263", %".8264"
  %".8267" = or i32 %".8263", %".8265"
  %".8268" = and i32 %".8266", %".8267"
  store i32 %".8268", ptr %"R4"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".8273" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".8273"
  ; FMUL R4, R21, R21
  %".8276" = load float, ptr %"R21"
  %".8277" = load float, ptr %"R21"
  %"fmul.340" = fmul float %".8276", %".8277"
  %".8278" = bitcast ptr %"R4" to ptr
  store float %"fmul.340", ptr %".8278"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".8281" = load float, ptr %"R4"
  %".8282" = load float, ptr %"R5"
  %"fmul.341" = fmul float %".8281", %".8282"
  %"fadd.299" = fadd float %"fmul.341", 0xbfaac795c0000000
  %".8283" = bitcast ptr %"R5" to ptr
  store float %"fadd.299", ptr %".8283"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".8286" = load float, ptr %"R4"
  %".8287" = load float, ptr %"R5"
  %"fmul.342" = fmul float %".8286", %".8287"
  %"fadd.300" = fadd float %"fmul.342", 0x3fc10b2820000000
  %".8288" = bitcast ptr %"R5" to ptr
  store float %"fadd.300", ptr %".8288"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".8291" = load float, ptr %"R4"
  %".8292" = load float, ptr %"R5"
  %"fmul.343" = fmul float %".8291", %".8292"
  %"fadd.301" = fadd float %"fmul.343", 0xbfd5553da0000000
  %".8293" = bitcast ptr %"R5" to ptr
  store float %"fadd.301", ptr %".8293"
  ; FFMA R4, R4, R5, RZ
  %".8296" = load float, ptr %"R4"
  %".8297" = load float, ptr %"R5"
  %"fmul.344" = fmul float %".8296", %".8297"
  %"fadd.302" = fadd float %"fmul.344",              0x0
  %".8298" = bitcast ptr %"R4" to ptr
  store float %"fadd.302", ptr %".8298"
  ; FFMA R4, R21, R4, R21
  %".8301" = load float, ptr %"R21"
  %".8302" = load float, ptr %"R4"
  %".8303" = load float, ptr %"R21"
  %"fmul.345" = fmul float %".8301", %".8302"
  %"fadd.303" = fadd float %"fmul.345", %".8303"
  %".8304" = bitcast ptr %"R4" to ptr
  store float %"fadd.303", ptr %".8304"
  br label %".L_x_43"
.L_x_43:
  ; BSYNC B0
  br label %".L_x_41"
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".8310" = load i32, ptr %"R23"
  %"add.346" = add i32 %".8310", 25165824
  %"add.347" = add i32 %"add.346", 0
  store i32 %"add.347", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".8315" = load i32, ptr %"R5"
  %".8316" = and i32 %".8315", 2139095040
  store i32 %".8316", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".8319" = load i32, ptr %"R5"
  %".8320" = load i1, ptr %"PT"
  %"cmp.67" = icmp sgt i32 %".8319", 33554431
  %".8321" = and i1 %"cmp.67", %".8320"
  store i1 %".8321", ptr %"P0"
  ; @P0 BRA `(.L_x_45)
  %".8324" = load i1, ptr %"P0"
  %".8325" = icmp ne i1 %".8324", 1
  br i1 %".8325", label %".L_x_45", label %".L_x_41_split_0x47f0_CALL_0x4830"
.L_x_41_split_0x47f0_CALL_0x4830:
  ; MOV R24, R23
  %".8328" = load float, ptr %"R23"
  %".8329" = bitcast ptr %"R24" to ptr
  store float %".8328", ptr %".8329"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".8336" = icmp ult i32 1, 32
  %"SHF_min.30" = select  i1 %".8336", i32 1, i32 32
  %".8337" = load i32, ptr %"R24"
  %"zext.963" = zext i32 0 to i64
  %"zext.964" = zext i32 %".8337" to i64
  %"zext.965" = zext i32 1 to i64
  %"shl.411" = shl i64 %"zext.963", 32
  %"or.376" = or i64 %"shl.411", %"zext.964"
  %"shl.412" = shl i64 %"or.376", %"zext.965"
  %"and.19" = and i64 %"shl.412", 4294967295
  %"trunc32.210" = trunc i64 %"and.19" to i32
  store i32 %"trunc32.210", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".8342" = icmp ult i32 24, 32
  %"SHF_min.31" = select  i1 %".8342", i32 24, i32 32
  %".8343" = load i32, ptr %"R11"
  %"zext.966" = zext i32 %".8343" to i64
  %"zext.967" = zext i32 0 to i64
  %"zext.968" = zext i32 24 to i64
  %"shl.413" = shl i64 %"zext.966", 32
  %"or.377" = or i64 %"shl.413", %"zext.967"
  %"lshr.19" = lshr i64 %"or.377", %"zext.968"
  %"lshr.20" = lshr i64 %"lshr.19", 32
  %"trunc32.211" = trunc i64 %"lshr.20" to i32
  store i32 %"trunc32.211", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".8346" = load i32, ptr %"R25"
  %".8347" = load i1, ptr %"PT"
  %"cmp.68" = icmp ne i32 %".8346", 0
  %".8348" = and i1 %"cmp.68", %".8347"
  store i1 %".8348", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".8351" = load i1, ptr %"P0"
  %".8352" = icmp ne i1 %".8351", 1
  br i1 %".8352", label %".L_x_49...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".8355" = icmp ult i32 1, 32
  %"SHF_min.32" = select  i1 %".8355", i32 1, i32 32
  %".8356" = load i32, ptr %"R24"
  %"zext.969" = zext i32 0 to i64
  %"zext.970" = zext i32 %".8356" to i64
  %"zext.971" = zext i32 1 to i64
  %"shl.414" = shl i64 %"zext.969", 32
  %"or.378" = or i64 %"shl.414", %"zext.970"
  %"shl.415" = shl i64 %"or.378", %"zext.971"
  %"and.20" = and i64 %"shl.415", 4294967295
  %"trunc32.212" = trunc i64 %"and.20" to i32
  store i32 %"trunc32.212", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".8359" = load i32, ptr %"R11"
  %".8360" = load i1, ptr %"PT"
  %"cmp.69" = icmp ne i32 %".8359", 0
  %".8361" = and i1 %"cmp.69", %".8360"
  store i1 %".8361", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".8364" = load i1, ptr %"P0"
  %".8365" = icmp ne i1 %".8364", 1
  br i1 %".8365", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".8368" = load float, ptr %"R24"
  %"fmul.346" = fmul float %".8368", 0x43f0000000000000
  %"fadd.304" = fadd float %"fmul.346",              0x0
  %".8369" = bitcast ptr %"R12" to ptr
  store float %"fadd.304", ptr %".8369"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".8374" = load float, ptr %"R24"
  %"fmul.347" = fmul float %".8374", 0x43f0000000000000
  %"fadd.305" = fadd float %"fmul.347",              0x0
  %".8375" = bitcast ptr %"R12" to ptr
  store float %"fadd.305", ptr %".8375"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4:
  ; @!P0 MUFU.RCP R11, R24
  %".8380" = load i1, ptr %"P0"
  %".8381" = icmp eq i1 %".8380", 1
  br i1 %".8381", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".8384" = load i32, ptr %"R24"
  %"sint_to_f32.3" = sitofp i32 %".8384" to float
  %".8385" = fdiv float 0x3ff0000000000000, %"sint_to_f32.3"
  %".8386" = fptosi float %".8385" to i32
  store i32 %".8386", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4:
  ; MUFU.RCP R11, R24
  %".8391" = load i32, ptr %"R24"
  %"sint_to_f32.4" = sitofp i32 %".8391" to float
  %".8392" = fdiv float 0x3ff0000000000000, %"sint_to_f32.4"
  %".8393" = fptosi float %".8392" to i32
  store i32 %".8393", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4:
  ; @P0 MUFU.RCP R13, R12
  %".8398" = load i1, ptr %"P0"
  %".8399" = icmp ne i1 %".8398", 1
  br i1 %".8399", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".8402" = load float, ptr %"R12"
  %".8403" = fdiv float 0x3ff0000000000000, %".8402"
  %".8404" = bitcast ptr %"R13" to ptr
  store float %".8403", ptr %".8404"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4:
  ; MUFU.RCP R13, R12
  %".8409" = load float, ptr %"R12"
  %".8410" = fdiv float 0x3ff0000000000000, %".8409"
  %".8411" = bitcast ptr %"R13" to ptr
  store float %".8410", ptr %".8411"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4:
  ; @P0 FFMA R22, R12, R13, -1
  %".8416" = load i1, ptr %"P0"
  %".8417" = icmp ne i1 %".8416", 1
  br i1 %".8417", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".8420" = load float, ptr %"R12"
  %".8421" = load float, ptr %"R13"
  %"fmul.348" = fmul float %".8420", %".8421"
  %"fadd.306" = fadd float %"fmul.348", 0xbff0000000000000
  %".8422" = bitcast ptr %"R22" to ptr
  store float %"fadd.306", ptr %".8422"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4:
  ; FFMA R22, R12, R13, -1
  %".8427" = load float, ptr %"R12"
  %".8428" = load float, ptr %"R13"
  %"fmul.349" = fmul float %".8427", %".8428"
  %"fadd.307" = fadd float %"fmul.349", 0xbff0000000000000
  %".8429" = bitcast ptr %"R22" to ptr
  store float %"fadd.307", ptr %".8429"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".8434" = load i1, ptr %"P0"
  %".8435" = icmp ne i1 %".8434", 1
  br i1 %".8435", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".8438" = load float, ptr %"R22"
  %".8439" = fneg float %".8438"
  %"fadd.308" = fadd float %".8439",              0x0
  %".8440" = bitcast ptr %"R22" to ptr
  store float %"fadd.308", ptr %".8440"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4:
  ; FADD.FTZ R22, -R22, -RZ
  %".8445" = load float, ptr %"R22"
  %".8446" = fneg float %".8445"
  %"fadd.309" = fadd float %".8446",              0x0
  %".8447" = bitcast ptr %"R22" to ptr
  store float %"fadd.309", ptr %".8447"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4:
  ; @P0 FFMA R22, R13, R22, R13
  %".8452" = load i1, ptr %"P0"
  %".8453" = icmp ne i1 %".8452", 1
  br i1 %".8453", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".8456" = load float, ptr %"R13"
  %".8457" = load float, ptr %"R22"
  %".8458" = load float, ptr %"R13"
  %"fmul.350" = fmul float %".8456", %".8457"
  %"fadd.310" = fadd float %"fmul.350", %".8458"
  %".8459" = bitcast ptr %"R22" to ptr
  store float %"fadd.310", ptr %".8459"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4:
  ; FFMA R22, R13, R22, R13
  %".8464" = load float, ptr %"R13"
  %".8465" = load float, ptr %"R22"
  %".8466" = load float, ptr %"R13"
  %"fmul.351" = fmul float %".8464", %".8465"
  %"fadd.311" = fadd float %"fmul.351", %".8466"
  %".8467" = bitcast ptr %"R22" to ptr
  store float %"fadd.311", ptr %".8467"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8472" = load i1, ptr %"P0"
  %".8473" = icmp ne i1 %".8472", 1
  br i1 %".8473", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8476" = load float, ptr %"R22"
  %"fmul.352" = fmul float %".8476", 0x43f0000000000000
  %"fadd.312" = fadd float %"fmul.352",              0x0
  %".8477" = bitcast ptr %"R11" to ptr
  store float %"fadd.312", ptr %".8477"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8482" = load float, ptr %"R22"
  %"fmul.353" = fmul float %".8482", 0x43f0000000000000
  %"fadd.313" = fadd float %"fmul.353",              0x0
  %".8483" = bitcast ptr %"R11" to ptr
  store float %"fadd.313", ptr %".8483"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4:
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_49...4:
  ; IADD3 R34, R25, -0xfd, RZ
  %".8490" = load i32, ptr %"R25"
  %"add.348" = add i32 %".8490", -253
  %"add.349" = add i32 %"add.348", 0
  store i32 %"add.349", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".8493" = load i32, ptr %"R34"
  %".8494" = load i1, ptr %"PT"
  %"cmp.70" = icmp sgt i32 %".8493", 1
  %".8495" = and i1 %"cmp.70", %".8494"
  store i1 %".8495", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".8498" = load i1, ptr %"P0"
  %".8499" = icmp ne i1 %".8498", 1
  br i1 %".8499", label %".L_x_51...4", label %".L_x_49_split_0x4a30...4"
.L_x_49_split_0x4a30...4:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8502" = load i32, ptr %"R24"
  %".8503" = and i32 %".8502", 8388607
  store i32 %".8503", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".8508" = load i32, ptr %"R11"
  %".8509" = or i32 %".8508", 1065353216
  store i32 %".8509", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".8512" = load i32, ptr %"R34"
  %".8513" = icmp ult i32 %".8512", 32
  %"SHF_min.33" = select  i1 %".8513", i32 %".8512", i32 32
  %".8514" = load i32, ptr %"R23"
  %".8515" = load i32, ptr %"R34"
  %"zext.972" = zext i32 0 to i64
  %"zext.973" = zext i32 %".8514" to i64
  %"zext.974" = zext i32 %".8515" to i64
  %"shl.416" = shl i64 %"zext.972", 32
  %"or.379" = or i64 %"shl.416", %"zext.973"
  %"shl.417" = shl i64 %"or.379", %"zext.974"
  %"and.21" = and i64 %"shl.417", 4294967295
  %"trunc32.213" = trunc i64 %"and.21" to i32
  store i32 %"trunc32.213", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".8518" = load float, ptr %"R11"
  %".8519" = fdiv float 0x3ff0000000000000, %".8518"
  %".8520" = bitcast ptr %"R12" to ptr
  store float %".8519", ptr %".8520"
  ; FFMA R13, R11, R12, -1
  %".8523" = load float, ptr %"R11"
  %".8524" = load float, ptr %"R12"
  %"fmul.354" = fmul float %".8523", %".8524"
  %"fadd.314" = fadd float %"fmul.354", 0xbff0000000000000
  %".8525" = bitcast ptr %"R13" to ptr
  store float %"fadd.314", ptr %".8525"
  ; FADD.FTZ R13, -R13, -RZ
  %".8528" = load float, ptr %"R13"
  %".8529" = fneg float %".8528"
  %"fadd.315" = fadd float %".8529",              0x0
  %".8530" = bitcast ptr %"R13" to ptr
  store float %"fadd.315", ptr %".8530"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".8533" = load float, ptr %"R12"
  %".8534" = load float, ptr %"R13"
  %".8535" = load float, ptr %"R12"
  %"fmul.355" = fmul float %".8533", %".8534"
  %"fadd.316" = fadd float %"fmul.355", %".8535"
  %".8536" = bitcast ptr %"R22" to ptr
  store float %"fadd.316", ptr %".8536"
  ; FFMA.RP R13, R12, R13, R12
  %".8539" = load float, ptr %"R12"
  %".8540" = load float, ptr %"R13"
  %".8541" = load float, ptr %"R12"
  %"fmul.356" = fmul float %".8539", %".8540"
  %"fadd.317" = fadd float %"fmul.356", %".8541"
  %".8542" = bitcast ptr %"R13" to ptr
  store float %"fadd.317", ptr %".8542"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".8545" = load float, ptr %"R22"
  %".8546" = bitcast float %".8545" to i32
  %".8547" = and i32 %".8546", 8388607
  store i32 %".8547", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".8550" = load float, ptr %"R22"
  %".8551" = load float, ptr %"R13"
  %".8552" = load i1, ptr %"PT"
  %"fcmp_ordered.3" = fcmp une float %".8550", %".8551"
  %".8553" = and i1 %"fcmp_ordered.3", %".8552"
  store i1 %".8553", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".8556" = load i32, ptr %"R12"
  %".8557" = or i32 %".8556", 8388608
  store i32 %".8557", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".8560" = load i1, ptr %"P0"
  %".8561" = icmp eq i1 %".8560", 1
  %"sel.6" = select  i1 %".8561", i32 0, i32 4294967295
  store i32 %"sel.6", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".8564" = load i32, ptr %"R23"
  %".8565" = load i32, ptr %"R12"
  %".8566" = and i32 %".8564", %".8565"
  store i32 %".8566", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".8569" = load i32, ptr %"R13"
  %".8570" = sub i32 0, %".8569"
  %"add.350" = add i32 %".8570", 0
  %"add.351" = add i32 %"add.350", 0
  store i32 %"add.351", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".8573" = load i32, ptr %"R34"
  %".8574" = icmp ult i32 %".8573", 32
  %"SHF_min.34" = select  i1 %".8574", i32 %".8573", i32 32
  %".8575" = load i32, ptr %"R23"
  %".8576" = load i32, ptr %"R34"
  %"zext.975" = zext i32 %".8575" to i64
  %"zext.976" = zext i32 0 to i64
  %"zext.977" = zext i32 %".8576" to i64
  %"shl.418" = shl i64 %"zext.975", 32
  %"or.380" = or i64 %"shl.418", %"zext.976"
  %"lshr.21" = lshr i64 %"or.380", %"zext.977"
  %"lshr.22" = lshr i64 %"lshr.21", 32
  %"trunc32.214" = trunc i64 %"lshr.22" to i32
  store i32 %"trunc32.214", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".8579" = load i32, ptr %"R13"
  %".8580" = load i32, ptr %"R34"
  %".8581" = load i32, ptr %"R12"
  %"LOP3_result.12" = call i32 @"custom_lop3"(i32 %".8581", i32 0, i32 %".8579", i32 %".8580")
  %".8582" = trunc i32 %"LOP3_result.12" to i1
  store i1 %".8582", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".8585" = load i32, ptr %"R23"
  %"LOP3_result.13" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8585", i32 1)
  %".8586" = trunc i32 %"LOP3_result.13" to i1
  store i1 %".8586", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".8589" = load i32, ptr %"R23"
  %"LOP3_result.14" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8589", i32 2)
  %".8590" = trunc i32 %"LOP3_result.14" to i1
  store i1 %".8590", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".8593" = load i1, ptr %"P0"
  %".8594" = sub i1 0, %".8593"
  %".8595" = load i1, ptr %"P1"
  %".8596" = sub i1 0, %".8595"
  %".8597" = or i1 %".8594", %".8596"
  %".8598" = and i1 %".8597", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8600" = load i32, ptr %"R24"
  %"LOP3_result.15" = call i32 @"custom_lop3"(i32 0, i32 0, i32 %".8600", i32 8388607)
  %".8601" = trunc i32 %"LOP3_result.15" to i1
  store i1 %".8601", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".8604" = load i1, ptr %"P0"
  %".8605" = icmp eq i1 %".8604", 1
  %"sel.7" = select  i1 %".8605", i32 0, i32 1
  store i32 %"sel.7", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".8608" = load i32, ptr %"R11"
  %".8609" = sub i32 0, %".8608"
  %"add.352" = add i32 %".8609", 0
  %"add.353" = add i32 %"add.352", 0
  store i32 %"add.353", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".8612" = load i32, ptr %"R11"
  %".8613" = load i1, ptr %"PT"
  %"cmp.71" = icmp sge i32 %".8612", 0
  %".8614" = and i1 %"cmp.71", %".8613"
  store i1 %".8614", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".8617" = load i32, ptr %"R25"
  %"add.354" = add i32 %".8617", -252
  %"add.355" = add i32 %"add.354", 0
  store i32 %"add.355", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".8620" = load i32, ptr %"R11"
  %".8621" = icmp ult i32 %".8620", 32
  %"SHF_min.35" = select  i1 %".8621", i32 %".8620", i32 32
  %".8622" = load i32, ptr %"R12"
  %".8623" = load i32, ptr %"R11"
  %"zext.978" = zext i32 %".8622" to i64
  %"zext.979" = zext i32 0 to i64
  %"zext.980" = zext i32 %".8623" to i64
  %"shl.419" = shl i64 %"zext.978", 32
  %"or.381" = or i64 %"shl.419", %"zext.979"
  %"lshr.23" = lshr i64 %"or.381", %"zext.980"
  %"lshr.24" = lshr i64 %"lshr.23", 32
  %"trunc32.215" = trunc i64 %"lshr.24" to i32
  store i32 %"trunc32.215", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".8626" = load i1, ptr %"P0"
  %".8627" = icmp eq i1 %".8626", 1
  br i1 %".8627", label %".L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".8630" = load i32, ptr %"R11"
  %"add.356" = add i32 %".8630", 1
  %"add.357" = add i32 %"add.356", 0
  store i32 %"add.357", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4:
  ; IADD3 R11, R11, 0x1, RZ
  %".8635" = load i32, ptr %"R11"
  %"add.358" = add i32 %".8635", 1
  %"add.359" = add i32 %"add.358", 0
  store i32 %"add.359", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...4"
.L_x_49_split_0x4be0...4:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".8640" = load i1, ptr %"P1"
  %".8641" = icmp eq i1 %".8640", 1
  br i1 %".8641", label %".L_x_49_split_0x4be0...4_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0...4_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8644" = icmp ult i32 1, 32
  %"SHF_min.36" = select  i1 %".8644", i32 1, i32 32
  %".8645" = load i32, ptr %"R11"
  %"zext.981" = zext i32 0 to i64
  %"zext.982" = zext i32 %".8645" to i64
  %"zext.983" = zext i32 1 to i64
  %"shl.420" = shl i64 %"zext.981", 32
  %"or.382" = or i64 %"shl.420", %"zext.982"
  %"shl.421" = shl i64 %"or.382", %"zext.983"
  %"and.22" = and i64 %"shl.421", 4294967295
  %"trunc32.216" = trunc i64 %"and.22" to i32
  store i32 %"trunc32.216", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8650" = icmp ult i32 1, 32
  %"SHF_min.37" = select  i1 %".8650", i32 1, i32 32
  %".8651" = load i32, ptr %"R11"
  %"zext.984" = zext i32 0 to i64
  %"zext.985" = zext i32 %".8651" to i64
  %"zext.986" = zext i32 1 to i64
  %"shl.422" = shl i64 %"zext.984", 32
  %"or.383" = or i64 %"shl.422", %"zext.985"
  %"shl.423" = shl i64 %"or.383", %"zext.986"
  %"and.23" = and i64 %"shl.423", 4294967295
  %"trunc32.217" = trunc i64 %"and.23" to i32
  store i32 %"trunc32.217", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...4"
.L_x_49_split_0x4bf0...4:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".8656" = load i32, ptr %"R11"
  %".8657" = load i32, ptr %"R24"
  %".8658" = or i32 %".8656", 2147483648
  %".8659" = or i32 %".8656", %".8657"
  %".8660" = and i32 %".8658", %".8659"
  store i32 %".8660", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_51...4:
  ; MUFU.RCP R11, R24
  %".8665" = load i32, ptr %"R24"
  %"sint_to_f32.5" = sitofp i32 %".8665" to float
  %".8666" = fdiv float 0x3ff0000000000000, %"sint_to_f32.5"
  %".8667" = fptosi float %".8666" to i32
  store i32 %".8667", ptr %"R11"
  br label %".L_x_50...4"
.L_x_50...4:
  ; BSYNC B1
  br label %".L_x_48...4"
.L_x_48...4:
  ; MOV R22, R11
  %".8673" = load i32, ptr %"R11"
  store i32 %".8673", ptr %"R22"
  ; MOV R11, 0x0
  store i32 0, ptr %"R11"
  ; RET.REL.NODEC R10, `(_Z11gru_forwardPfS_S_S_iii)
  br label %"ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.3"
.L_x_52...4:
  ; BRA `(.L_x_52)
  br label %".L_x_52...4"
ExitBlock_$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath.3:
  br label %".L_x_41_split_0x47f0_postCALL_0x4830"
.L_x_41_split_0x47f0_postCALL_0x4830:
  ; MOV R5, R22
  %".8683" = load i32, ptr %"R22"
  store i32 %".8683", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".8688" = load float, ptr %"R23"
  %".8689" = fdiv float 0x3ff0000000000000, %".8688"
  %".8690" = bitcast ptr %"R6" to ptr
  store float %".8689", ptr %".8690"
  ; FFMA R5, R23, R6, -1
  %".8693" = load float, ptr %"R23"
  %".8694" = load float, ptr %"R6"
  %"fmul.357" = fmul float %".8693", %".8694"
  %"fadd.318" = fadd float %"fmul.357", 0xbff0000000000000
  %".8695" = bitcast ptr %"R5" to ptr
  store float %"fadd.318", ptr %".8695"
  ; FADD.FTZ R5, -R5, -RZ
  %".8698" = load float, ptr %"R5"
  %".8699" = fneg float %".8698"
  %"fadd.319" = fadd float %".8699",              0x0
  %".8700" = bitcast ptr %"R5" to ptr
  store float %"fadd.319", ptr %".8700"
  ; FFMA R5, R6, R5, R6
  %".8703" = load float, ptr %"R6"
  %".8704" = load float, ptr %"R5"
  %".8705" = load float, ptr %"R6"
  %"fmul.358" = fmul float %".8703", %".8704"
  %"fadd.320" = fadd float %"fmul.358", %".8705"
  %".8706" = bitcast ptr %"R5" to ptr
  store float %"fadd.320", ptr %".8706"
  br label %".L_x_46"
.L_x_46:
  ; BSYNC B0
  br label %".L_x_44"
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".8712" = load i32, ptr %"R28"
  %"zext.987" = zext i32 %".8712" to i64
  %".8713" = load i32, ptr %"R29"
  %"zext.988" = zext i32 %".8713" to i64
  %"shl.424" = shl i64 %"zext.988", 32
  %"or.384" = or i64 %"shl.424", %"zext.987"
  %".8714" = inttoptr i64 %"or.384" to ptr
  %".8715" = ptrtoint ptr %".8714" to i64
  %".8716" = add i64 %".8715", 0
  %"for_LDG.345" = inttoptr i64 %".8716" to ptr
  %".8717" = load float, ptr %"for_LDG.345"
  %".8718" = bitcast ptr %"R6" to ptr
  store float %".8717", ptr %".8718"
  ; FADD R7, -R5, 1
  %".8721" = load float, ptr %"R5"
  %".8722" = fneg float %".8721"
  %"fadd.321" = fadd float %".8722", 0x3ff0000000000000
  %".8723" = bitcast ptr %"R7" to ptr
  store float %"fadd.321", ptr %".8723"
  ; FMUL R6, R6, R5
  %".8726" = load float, ptr %"R6"
  %".8727" = load float, ptr %"R5"
  %"fmul.359" = fmul float %".8726", %".8727"
  %".8728" = bitcast ptr %"R6" to ptr
  store float %"fmul.359", ptr %".8728"
  ; FFMA R7, R7, R4, R6
  %".8731" = load float, ptr %"R7"
  %".8732" = load float, ptr %"R4"
  %".8733" = load float, ptr %"R6"
  %"fmul.360" = fmul float %".8731", %".8732"
  %"fadd.322" = fadd float %"fmul.360", %".8733"
  %".8734" = bitcast ptr %"R7" to ptr
  store float %"fadd.322", ptr %".8734"
  ; STG.E.SYS [R28], R7
  %".8737" = load float, ptr %"R7"
  %".8738" = load i32, ptr %"R28"
  %"zext.989" = zext i32 %".8738" to i64
  %".8739" = load i32, ptr %"R29"
  %"zext.990" = zext i32 %".8739" to i64
  %"shl.425" = shl i64 %"zext.990", 32
  %"or.385" = or i64 %"shl.425", %"zext.989"
  %".8740" = inttoptr i64 %"or.385" to ptr
  %".8741" = ptrtoint ptr %".8740" to i64
  %".8742" = add i64 %".8741", 0
  %"for_STG.1" = inttoptr i64 %".8742" to ptr
  store float %".8737", ptr %"for_STG.1"
  ; @!P3 BRA `(.L_x_47)
  %".8745" = load i1, ptr %"P3"
  %".8746" = icmp eq i1 %".8745", 1
  br i1 %".8746", label %".L_x_47", label %".L_x_44_split_0x48f0"
.L_x_44_split_0x48f0:
  ; EXIT
  br label %"ExitFunction"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()

declare float @"llvm.exp2.f32"(float %".1")

declare float @"llvm.fabs"(float %".1")

