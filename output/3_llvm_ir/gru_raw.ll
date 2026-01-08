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

define ptx_kernel void @"_Z11gru_forwardPfS_S_S_iii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6")
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
  %"nvvm_threadidx_x" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.x"()
  store i32 %"nvvm_threadidx_x", ptr %"R3"
  ; ISETP.GE.AND P0, PT, R0, 0x1, PT
  %".22" = load i32, ptr %"R0"
  %".23" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".22", 1
  %".24" = xor i1 %"cmp", -1
  %".25" = and i1 %"cmp", %".23"
  %".26" = and i1 %".24", %".23"
  store i1 %".25", ptr %"P0"
  ; IMAD R14, R14, c[0x0][0x0], R3
  %".29" = load i32, ptr %"R14"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".30" = load i32, ptr %"R3"
  %"imad_mul" = mul i32 %".29", %"nvvm_blockdim_x"
  %"imad_add" = add i32 %"imad_mul", %".30"
  store i32 %"imad_add", ptr %"R14"
  ; ISETP.GE.OR P0, PT, R14, c[0x0][0x184], !P0
  %".33" = load i32, ptr %"R14"
  %".34" = load i1, ptr %"P0"
  %"cmp.1" = icmp sge i32 %".33", %"Arg_5"
  %".35" = xor i1 %"cmp.1", -1
  %".36" = or i1 %"cmp.1", %".34"
  %".37" = or i1 %".35", %".34"
  store i1 %".36", ptr %"P0"
  ; @P0 EXIT
  %".40" = load i1, ptr %"P0"
  %".41" = icmp eq i1 %".40", 1
  br i1 %".41", label %".text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0080"
.text._Z11gru_forwardPfS_S_S_iii_conditionalExpr_0x0070:
  ; EXIT
  br label %"ExitFunction"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0080:
  ; ISETP.LT.AND P0, PT, RZ, c[0x0][0x180], PT
  %".46" = load i1, ptr %"PT"
  %"cmp.2" = icmp slt i32 0, %"Arg_4"
  %".47" = xor i1 %"cmp.2", -1
  %".48" = and i1 %"cmp.2", %".46"
  %".49" = and i1 %".47", %".46"
  store i1 %".48", ptr %"P0"
  ; IMAD R0, R14.reuse, c[0x0][0x184], RZ
  %".52" = load i32, ptr %"R14"
  %"imad_mul.1" = mul i32 %".52", %"Arg_5"
  %"imad_add.1" = add i32 %"imad_mul.1", 0
  store i32 %"imad_add.1", ptr %"R0"
  ; MOV R33, 0x4
  store i32 4, ptr %"R33"
  ; MOV R3, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R3"
  ; MOV R15, c[0x0][0x180]
  store i32 %"Arg_4", ptr %"R15"
  ; IMAD.WIDE R26, R14.reuse, R33.reuse, c[0x0][0x178]
  %".61" = load i32, ptr %"R14"
  %".62" = load i32, ptr %"R33"
  %"imad_ext1" = zext i32 %".61" to i64
  %"imad_ext2" = zext i32 %".62" to i64
  %"imad_mul.2" = mul i64 %"imad_ext1", %"imad_ext2"
  %".63" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.2" = add i64 %"imad_mul.2", %".63"
  %".64" = and i64 %"imad_add.2", 18446744069414584320
  %".65" = lshr i64 %".64", 32
  %"trunc32" = trunc i64 %".65" to i32
  %"trunc32.1" = trunc i64 %"imad_add.2" to i32
  store i32 %"trunc32.1", ptr %"R26"
  store i32 %"trunc32", ptr %"R27"
  ; LEA R30, R3, R14, 0x1
  %".69" = load i32, ptr %"R3"
  %".70" = load i32, ptr %"R14"
  %"shl" = shl i32 %".69", 1
  %"add" = add i32 %"shl", %".70"
  store i32 %"add", ptr %"R30"
  ; MOV R5, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R5"
  ; IMAD.WIDE R28, R14, R33, c[0x0][0x168]
  %".75" = load i32, ptr %"R14"
  %".76" = load i32, ptr %"R33"
  %"imad_ext1.1" = zext i32 %".75" to i64
  %"imad_ext2.1" = zext i32 %".76" to i64
  %"imad_mul.3" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".77" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.3" = add i64 %"imad_mul.3", %".77"
  %".78" = and i64 %"imad_add.3", 18446744069414584320
  %".79" = lshr i64 %".78", 32
  %"trunc32.2" = trunc i64 %".79" to i32
  %"trunc32.3" = trunc i64 %"imad_add.3" to i32
  store i32 %"trunc32.3", ptr %"R28"
  store i32 %"trunc32.2", ptr %"R29"
  ; LEA R3, R15, R15, 0x2
  %".83" = load i32, ptr %"R15"
  %".84" = load i32, ptr %"R15"
  %"shl.1" = shl i32 %".83", 2
  %"add.1" = add i32 %"shl.1", %".84"
  store i32 %"add.1", ptr %"R3"
  ; IMAD.WIDE R30, R30, R33, c[0x0][0x178]
  %".87" = load i32, ptr %"R30"
  %".88" = load i32, ptr %"R33"
  %"imad_ext1.2" = zext i32 %".87" to i64
  %"imad_ext2.2" = zext i32 %".88" to i64
  %"imad_mul.4" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %".89" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.4" = add i64 %"imad_mul.4", %".89"
  %".90" = and i64 %"imad_add.4", 18446744069414584320
  %".91" = lshr i64 %".90", 32
  %"trunc32.4" = trunc i64 %".91" to i32
  %"trunc32.5" = trunc i64 %"imad_add.4" to i32
  store i32 %"trunc32.5", ptr %"R30"
  store i32 %"trunc32.4", ptr %"R31"
  ; IMAD R2, R5, c[0x0][0x180], RZ
  %".95" = load i32, ptr %"R5"
  %"imad_mul.5" = mul i32 %".95", %"Arg_4"
  %"imad_add.5" = add i32 %"imad_mul.5", 0
  store i32 %"imad_add.5", ptr %"R2"
  ; IMAD R3, R3, c[0x0][0x184], R0
  %".98" = load i32, ptr %"R3"
  %".99" = load i32, ptr %"R0"
  %"imad_mul.6" = mul i32 %".98", %"Arg_5"
  %"imad_add.6" = add i32 %"imad_mul.6", %".99"
  store i32 %"imad_add.6", ptr %"R3"
  ; IMAD.WIDE R32, R33, c[0x0][0x184], R26
  %".102" = load i32, ptr %"R33"
  %".103" = load i32, ptr %"R26"
  %"imad_ext1.3" = zext i32 %".102" to i64
  %"imad_ext2.3" = zext i32 %"Arg_5" to i64
  %"imad_mul.7" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %"imad_ext3" = zext i32 %".103" to i64
  %"imad_add.7" = add i64 %"imad_mul.7", %"imad_ext3"
  %".104" = and i64 %"imad_add.7", 18446744069414584320
  %".105" = lshr i64 %".104", 32
  %"trunc32.6" = trunc i64 %".105" to i32
  %"trunc32.7" = trunc i64 %"imad_add.7" to i32
  store i32 %"trunc32.7", ptr %"R32"
  store i32 %"trunc32.6", ptr %"R33"
  ; @P0 BRA `(.L_x_0)
  %".109" = load i1, ptr %"P0"
  %".110" = icmp eq i1 %".109", 1
  br i1 %".110", label %".L_x_0", label %".text._Z11gru_forwardPfS_S_S_iii_split_0x0170"
.text._Z11gru_forwardPfS_S_S_iii_split_0x0170:
  ; LOP3.LUT R4, R5.reuse, 0x3, RZ, 0xc0, !PT
  %".113" = load i32, ptr %"R5"
  %".114" = xor i1 1, -1
  %".115" = and i32 %".113", 3
  store i32 %".115", ptr %"R4"
  ; IADD3 R5, R5, -0x1, RZ
  %".118" = load i32, ptr %"R5"
  %".119" = add i32 %".118", -1
  %".120" = add i32 %".119", 0
  store i32 %".120", ptr %"R5"
  ; MOV R6, RZ
  store i32 0, ptr %"R6"
  ; IADD3 R7, -R4, c[0x0][0x184], RZ
  %".125" = load i32, ptr %"R4"
  %".126" = sub i32 0, %".125"
  %".127" = add i32 %".126", %"Arg_5"
  %".128" = add i32 %".127", 0
  store i32 %".128", ptr %"R7"
  br label %".L_x_22"
.L_x_22:
  ; MOV R8, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R8"
  ; IADD3 R6, R6, 0x1, RZ
  %".134" = load i32, ptr %"R6"
  %".135" = add i32 %".134", 1
  %".136" = add i32 %".135", 0
  store i32 %".136", ptr %"R6"
  ; ISETP.GE.AND P4, PT, R8, 0x1, PT
  %".139" = load i32, ptr %"R8"
  %".140" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".139", 1
  %".141" = xor i1 %"cmp.3", -1
  %".142" = and i1 %"cmp.3", %".140"
  %".143" = and i1 %".141", %".140"
  store i1 %".142", ptr %"P4"
  ; ISETP.GE.AND P3, PT, R6, c[0x0][0x188], PT
  %".146" = load i32, ptr %"R6"
  %".147" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".146", %"Arg_6"
  %".148" = xor i1 %"cmp.4", -1
  %".149" = and i1 %"cmp.4", %".147"
  %".150" = and i1 %".148", %".147"
  store i1 %".149", ptr %"P3"
  ; MOV R8, RZ
  %".153" = bitcast ptr %"R8" to ptr
  store float              0x0, ptr %".153"
  ; MOV R52, RZ
  %".156" = bitcast ptr %"R52" to ptr
  store float              0x0, ptr %".156"
  ; MOV R54, RZ
  %".159" = bitcast ptr %"R54" to ptr
  store float              0x0, ptr %".159"
  ; @!P4 BRA `(.L_x_1)
  %".162" = load i1, ptr %"P4"
  %".163" = icmp ne i1 %".162", 1
  br i1 %".163", label %".L_x_1", label %".L_x_22_split_0x0230"
.L_x_22_split_0x0230:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".166" = load i32, ptr %"R5"
  %".167" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".166", 3
  %".168" = xor i1 %"cmp.5", -1
  %".169" = and i1 %"cmp.5", %".167"
  %".170" = and i1 %".168", %".167"
  store i1 %".169", ptr %"P0"
  ; MOV R54, RZ
  %".173" = bitcast ptr %"R54" to ptr
  store float              0x0, ptr %".173"
  ; MOV R11, RZ
  store i32 0, ptr %"R11"
  ; MOV R52, RZ
  %".178" = bitcast ptr %"R52" to ptr
  store float              0x0, ptr %".178"
  ; @!P0 BRA `(.L_x_2)
  %".181" = load i1, ptr %"P0"
  %".182" = icmp ne i1 %".181", 1
  br i1 %".182", label %".L_x_2", label %".L_x_22_split_0x0280"
.L_x_22_split_0x0280:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".185" = load i32, ptr %"R7"
  %".186" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".185", 0
  %".187" = xor i1 %"cmp.6", -1
  %".188" = and i1 %"cmp.6", %".186"
  %".189" = and i1 %".187", %".186"
  store i1 %".188", ptr %"P0"
  ; MOV R54, RZ
  %".192" = bitcast ptr %"R54" to ptr
  store float              0x0, ptr %".192"
  ; MOV R11, RZ
  store i32 0, ptr %"R11"
  ; MOV R9, R7
  %".197" = load i32, ptr %"R7"
  store i32 %".197", ptr %"R9"
  ; @!P0 BRA `(.L_x_3)
  %".200" = load i1, ptr %"P0"
  %".201" = icmp ne i1 %".200", 1
  br i1 %".201", label %".L_x_3", label %".L_x_22_split_0x02d0"
.L_x_22_split_0x02d0:
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".204" = load i32, ptr %"R9"
  %".205" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".204", 12
  %".206" = xor i1 %"cmp.7", -1
  %".207" = and i1 %"cmp.7", %".205"
  %".208" = and i1 %".206", %".205"
  store i1 %".207", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".211" = and i1 1, 1
  %".212" = and i1 %".211", 1
  ; @!P1 BRA `(.L_x_4)
  %".214" = load i1, ptr %"P1"
  %".215" = icmp ne i1 %".214", 1
  br i1 %".215", label %".L_x_4", label %".L_x_22_split_0x0300"
.L_x_22_split_0x0300:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".218" = xor i1 1, 1
  %".219" = and i1 %".218", 1
  %".220" = and i1 %".219", 1
  br label %".L_x_5"
.L_x_5:
  ; IADD3 R25, R0, R11, RZ
  %".223" = load i32, ptr %"R0"
  %".224" = load i32, ptr %"R11"
  %".225" = add i32 %".223", %".224"
  %".226" = add i32 %".225", 0
  store i32 %".226", ptr %"R25"
  ; MOV R18, 0x4
  store i32 4, ptr %"R18"
  ; IMAD R23, R2.reuse, 0x3, R25
  %".231" = load i32, ptr %"R2"
  %".232" = load i32, ptr %"R25"
  %"imad_mul.8" = mul i32 %".231", 3
  %"imad_add.8" = add i32 %"imad_mul.8", %".232"
  store i32 %"imad_add.8", ptr %"R23"
  ; LEA R25, R2, R25, 0x2
  %".235" = load i32, ptr %"R2"
  %".236" = load i32, ptr %"R25"
  %"shl.2" = shl i32 %".235", 2
  %"add.2" = add i32 %"shl.2", %".236"
  store i32 %"add.2", ptr %"R25"
  ; IMAD.WIDE R38, R11, R18, c[0x0][0x168]
  %".239" = load i32, ptr %"R11"
  %".240" = load i32, ptr %"R18"
  %"imad_ext1.4" = zext i32 %".239" to i64
  %"imad_ext2.4" = zext i32 %".240" to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %".241" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %".241"
  %".242" = and i64 %"imad_add.9", 18446744069414584320
  %".243" = lshr i64 %".242", 32
  %"trunc32.8" = trunc i64 %".243" to i32
  %"trunc32.9" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.9", ptr %"R38"
  store i32 %"trunc32.8", ptr %"R39"
  ; IMAD.WIDE R16, R23, R18, c[0x0][0x170]
  %".247" = load i32, ptr %"R23"
  %".248" = load i32, ptr %"R18"
  %"imad_ext1.5" = zext i32 %".247" to i64
  %"imad_ext2.5" = zext i32 %".248" to i64
  %"imad_mul.10" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %".249" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.10" = add i64 %"imad_mul.10", %".249"
  %".250" = and i64 %"imad_add.10", 18446744069414584320
  %".251" = lshr i64 %".250", 32
  %"trunc32.10" = trunc i64 %".251" to i32
  %"trunc32.11" = trunc i64 %"imad_add.10" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R20, R25, R18, c[0x0][0x170]
  %".255" = load i32, ptr %"R25"
  %".256" = load i32, ptr %"R18"
  %"imad_ext1.6" = zext i32 %".255" to i64
  %"imad_ext2.6" = zext i32 %".256" to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".257" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %".257"
  %".258" = and i64 %"imad_add.11", 18446744069414584320
  %".259" = lshr i64 %".258", 32
  %"trunc32.12" = trunc i64 %".259" to i32
  %"trunc32.13" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.13", ptr %"R20"
  store i32 %"trunc32.12", ptr %"R21"
  ; LDG.E.SYS R57, [R38]
  %".263" = load i32, ptr %"R38"
  %"zext" = zext i32 %".263" to i64
  %".264" = load i32, ptr %"R39"
  %"zext.1" = zext i32 %".264" to i64
  %"shl.3" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl.3", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".265" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".266" = bitcast ptr %"R57" to ptr
  store float %".265", ptr %".266"
  ; LDG.E.SYS R56, [R16]
  %".269" = load i32, ptr %"R16"
  %"zext.2" = zext i32 %".269" to i64
  %".270" = load i32, ptr %"R17"
  %"zext.3" = zext i32 %".270" to i64
  %"shl.4" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.4", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".271" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".272" = bitcast ptr %"R56" to ptr
  store float %".271", ptr %".272"
  ; LDG.E.SYS R58, [R20]
  %".275" = load i32, ptr %"R20"
  %"zext.4" = zext i32 %".275" to i64
  %".276" = load i32, ptr %"R21"
  %"zext.5" = zext i32 %".276" to i64
  %"shl.5" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.5", %"zext.4"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".277" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".278" = bitcast ptr %"R58" to ptr
  store float %".277", ptr %".278"
  ; LDG.E.SYS R24, [R38+0x4]
  %".281" = load i32, ptr %"R38"
  %"zext.6" = zext i32 %".281" to i64
  %".282" = load i32, ptr %"R39"
  %"zext.7" = zext i32 %".282" to i64
  %"shl.6" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.6", %"zext.6"
  %"ptr_plus_imm" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".283" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".284" = bitcast ptr %"R24" to ptr
  store float %".283", ptr %".284"
  ; LDG.E.SYS R47, [R16+0x4]
  %".287" = load i32, ptr %"R16"
  %"zext.8" = zext i32 %".287" to i64
  %".288" = load i32, ptr %"R17"
  %"zext.9" = zext i32 %".288" to i64
  %"shl.7" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.7", %"zext.8"
  %"ptr_plus_imm.1" = add i64 %"or.4", 4
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".289" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".290" = bitcast ptr %"R47" to ptr
  store float %".289", ptr %".290"
  ; LDG.E.SYS R49, [R20+0x4]
  %".293" = load i32, ptr %"R20"
  %"zext.10" = zext i32 %".293" to i64
  %".294" = load i32, ptr %"R21"
  %"zext.11" = zext i32 %".294" to i64
  %"shl.8" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.8", %"zext.10"
  %"ptr_plus_imm.2" = add i64 %"or.5", 4
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".295" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".296" = bitcast ptr %"R49" to ptr
  store float %".295", ptr %".296"
  ; LDG.E.SYS R22, [R38+0x8]
  %".299" = load i32, ptr %"R38"
  %"zext.12" = zext i32 %".299" to i64
  %".300" = load i32, ptr %"R39"
  %"zext.13" = zext i32 %".300" to i64
  %"shl.9" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.9", %"zext.12"
  %"ptr_plus_imm.3" = add i64 %"or.6", 8
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".301" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".302" = bitcast ptr %"R22" to ptr
  store float %".301", ptr %".302"
  ; LDG.E.SYS R43, [R16+0x8]
  %".305" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".305" to i64
  %".306" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".306" to i64
  %"shl.10" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.10", %"zext.14"
  %"ptr_plus_imm.4" = add i64 %"or.7", 8
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".307" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".308" = bitcast ptr %"R43" to ptr
  store float %".307", ptr %".308"
  ; LDG.E.SYS R45, [R20+0x8]
  %".311" = load i32, ptr %"R20"
  %"zext.16" = zext i32 %".311" to i64
  %".312" = load i32, ptr %"R21"
  %"zext.17" = zext i32 %".312" to i64
  %"shl.11" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.11", %"zext.16"
  %"ptr_plus_imm.5" = add i64 %"or.8", 8
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".313" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".314" = bitcast ptr %"R45" to ptr
  store float %".313", ptr %".314"
  ; LDG.E.SYS R15, [R38+0xc]
  %".317" = load i32, ptr %"R38"
  %"zext.18" = zext i32 %".317" to i64
  %".318" = load i32, ptr %"R39"
  %"zext.19" = zext i32 %".318" to i64
  %"shl.12" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.12", %"zext.18"
  %"ptr_plus_imm.6" = add i64 %"or.9", 12
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".319" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".320" = bitcast ptr %"R15" to ptr
  store float %".319", ptr %".320"
  ; LDG.E.SYS R14, [R16+0xc]
  %".323" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".323" to i64
  %".324" = load i32, ptr %"R17"
  %"zext.21" = zext i32 %".324" to i64
  %"shl.13" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.13", %"zext.20"
  %"ptr_plus_imm.7" = add i64 %"or.10", 12
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".325" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".326" = bitcast ptr %"R14" to ptr
  store float %".325", ptr %".326"
  ; LDG.E.SYS R13, [R20+0xc]
  %".329" = load i32, ptr %"R20"
  %"zext.22" = zext i32 %".329" to i64
  %".330" = load i32, ptr %"R21"
  %"zext.23" = zext i32 %".330" to i64
  %"shl.14" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.14", %"zext.22"
  %"ptr_plus_imm.8" = add i64 %"or.11", 12
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".331" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".332" = bitcast ptr %"R13" to ptr
  store float %".331", ptr %".332"
  ; IADD3 R41, R11, 0x4, RZ
  %".335" = load i32, ptr %"R11"
  %".336" = add i32 %".335", 4
  %".337" = add i32 %".336", 0
  store i32 %".337", ptr %"R41"
  ; IADD3 R51, R23, 0x4, RZ
  %".340" = load i32, ptr %"R23"
  %".341" = add i32 %".340", 4
  %".342" = add i32 %".341", 0
  store i32 %".342", ptr %"R51"
  ; IADD3 R35, R11, 0x8, RZ
  %".345" = load i32, ptr %"R11"
  %".346" = add i32 %".345", 8
  %".347" = add i32 %".346", 0
  store i32 %".347", ptr %"R35"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".350" = load i32, ptr %"R41"
  %".351" = load i32, ptr %"R18"
  %"imad_ext1.7" = zext i32 %".350" to i64
  %"imad_ext2.7" = zext i32 %".351" to i64
  %"imad_mul.12" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".352" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.12" = add i64 %"imad_mul.12", %".352"
  %".353" = and i64 %"imad_add.12", 18446744069414584320
  %".354" = lshr i64 %".353", 32
  %"trunc32.14" = trunc i64 %".354" to i32
  %"trunc32.15" = trunc i64 %"imad_add.12" to i32
  store i32 %"trunc32.15", ptr %"R40"
  store i32 %"trunc32.14", ptr %"R41"
  ; IADD3 R37, R11, 0xc, RZ
  %".358" = load i32, ptr %"R11"
  %".359" = add i32 %".358", 12
  %".360" = add i32 %".359", 0
  store i32 %".360", ptr %"R37"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".363" = load i32, ptr %"R51"
  %".364" = load i32, ptr %"R18"
  %"imad_ext1.8" = zext i32 %".363" to i64
  %"imad_ext2.8" = zext i32 %".364" to i64
  %"imad_mul.13" = mul i64 %"imad_ext1.8", %"imad_ext2.8"
  %".365" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.13" = add i64 %"imad_mul.13", %".365"
  %".366" = and i64 %"imad_add.13", 18446744069414584320
  %".367" = lshr i64 %".366", 32
  %"trunc32.16" = trunc i64 %".367" to i32
  %"trunc32.17" = trunc i64 %"imad_add.13" to i32
  store i32 %"trunc32.17", ptr %"R38"
  store i32 %"trunc32.16", ptr %"R39"
  ; IADD3 R51, R25, 0x4, RZ
  %".371" = load i32, ptr %"R25"
  %".372" = add i32 %".371", 4
  %".373" = add i32 %".372", 0
  store i32 %".373", ptr %"R51"
  ; LDG.E.SYS R12, [R40]
  %".376" = load i32, ptr %"R40"
  %"zext.24" = zext i32 %".376" to i64
  %".377" = load i32, ptr %"R41"
  %"zext.25" = zext i32 %".377" to i64
  %"shl.15" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.15", %"zext.24"
  %"inttoptr_bytes.12" = inttoptr i64 %"or.12" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".378" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".379" = bitcast ptr %"R12" to ptr
  store float %".378", ptr %".379"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".382" = load i32, ptr %"R35"
  %".383" = load i32, ptr %"R18"
  %"imad_ext1.9" = zext i32 %".382" to i64
  %"imad_ext2.9" = zext i32 %".383" to i64
  %"imad_mul.14" = mul i64 %"imad_ext1.9", %"imad_ext2.9"
  %".384" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.14" = add i64 %"imad_mul.14", %".384"
  %".385" = and i64 %"imad_add.14", 18446744069414584320
  %".386" = lshr i64 %".385", 32
  %"trunc32.18" = trunc i64 %".386" to i32
  %"trunc32.19" = trunc i64 %"imad_add.14" to i32
  store i32 %"trunc32.19", ptr %"R34"
  store i32 %"trunc32.18", ptr %"R35"
  ; LDG.E.SYS R10, [R40+0x4]
  %".390" = load i32, ptr %"R40"
  %"zext.26" = zext i32 %".390" to i64
  %".391" = load i32, ptr %"R41"
  %"zext.27" = zext i32 %".391" to i64
  %"shl.16" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.16", %"zext.26"
  %"ptr_plus_imm.9" = add i64 %"or.13", 4
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".392" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".393" = bitcast ptr %"R10" to ptr
  store float %".392", ptr %".393"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".396" = load i32, ptr %"R37"
  %".397" = load i32, ptr %"R18"
  %"imad_ext1.10" = zext i32 %".396" to i64
  %"imad_ext2.10" = zext i32 %".397" to i64
  %"imad_mul.15" = mul i64 %"imad_ext1.10", %"imad_ext2.10"
  %".398" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.15" = add i64 %"imad_mul.15", %".398"
  %".399" = and i64 %"imad_add.15", 18446744069414584320
  %".400" = lshr i64 %".399", 32
  %"trunc32.20" = trunc i64 %".400" to i32
  %"trunc32.21" = trunc i64 %"imad_add.15" to i32
  store i32 %"trunc32.21", ptr %"R36"
  store i32 %"trunc32.20", ptr %"R37"
  ; LDG.E.SYS R16, [R40+0x8]
  %".404" = load i32, ptr %"R40"
  %"zext.28" = zext i32 %".404" to i64
  %".405" = load i32, ptr %"R41"
  %"zext.29" = zext i32 %".405" to i64
  %"shl.17" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.17", %"zext.28"
  %"ptr_plus_imm.10" = add i64 %"or.14", 8
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".406" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".407" = bitcast ptr %"R16" to ptr
  store float %".406", ptr %".407"
  ; LDG.E.SYS R17, [R40+0xc]
  %".410" = load i32, ptr %"R40"
  %"zext.30" = zext i32 %".410" to i64
  %".411" = load i32, ptr %"R41"
  %"zext.31" = zext i32 %".411" to i64
  %"shl.18" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.18", %"zext.30"
  %"ptr_plus_imm.11" = add i64 %"or.15", 12
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".412" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".413" = bitcast ptr %"R17" to ptr
  store float %".412", ptr %".413"
  ; LDG.E.SYS R19, [R34]
  %".416" = load i32, ptr %"R34"
  %"zext.32" = zext i32 %".416" to i64
  %".417" = load i32, ptr %"R35"
  %"zext.33" = zext i32 %".417" to i64
  %"shl.19" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.19", %"zext.32"
  %"inttoptr_bytes.16" = inttoptr i64 %"or.16" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".418" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".419" = bitcast ptr %"R19" to ptr
  store float %".418", ptr %".419"
  ; LDG.E.SYS R20, [R34+0x4]
  %".422" = load i32, ptr %"R34"
  %"zext.34" = zext i32 %".422" to i64
  %".423" = load i32, ptr %"R35"
  %"zext.35" = zext i32 %".423" to i64
  %"shl.20" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.20", %"zext.34"
  %"ptr_plus_imm.12" = add i64 %"or.17", 4
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".424" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".425" = bitcast ptr %"R20" to ptr
  store float %".424", ptr %".425"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".428" = load i32, ptr %"R51"
  %".429" = load i32, ptr %"R18"
  %"imad_ext1.11" = zext i32 %".428" to i64
  %"imad_ext2.11" = zext i32 %".429" to i64
  %"imad_mul.16" = mul i64 %"imad_ext1.11", %"imad_ext2.11"
  %".430" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.16" = add i64 %"imad_mul.16", %".430"
  %".431" = and i64 %"imad_add.16", 18446744069414584320
  %".432" = lshr i64 %".431", 32
  %"trunc32.22" = trunc i64 %".432" to i32
  %"trunc32.23" = trunc i64 %"imad_add.16" to i32
  store i32 %"trunc32.23", ptr %"R40"
  store i32 %"trunc32.22", ptr %"R41"
  ; LDG.E.SYS R51, [R38]
  %".436" = load i32, ptr %"R38"
  %"zext.36" = zext i32 %".436" to i64
  %".437" = load i32, ptr %"R39"
  %"zext.37" = zext i32 %".437" to i64
  %"shl.21" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.21", %"zext.36"
  %"inttoptr_bytes.18" = inttoptr i64 %"or.18" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".438" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".439" = bitcast ptr %"R51" to ptr
  store float %".438", ptr %".439"
  ; LDG.E.SYS R21, [R34+0x8]
  %".442" = load i32, ptr %"R34"
  %"zext.38" = zext i32 %".442" to i64
  %".443" = load i32, ptr %"R35"
  %"zext.39" = zext i32 %".443" to i64
  %"shl.22" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.22", %"zext.38"
  %"ptr_plus_imm.13" = add i64 %"or.19", 8
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".444" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".445" = bitcast ptr %"R21" to ptr
  store float %".444", ptr %".445"
  ; LDG.E.SYS R42, [R34+0xc]
  %".448" = load i32, ptr %"R34"
  %"zext.40" = zext i32 %".448" to i64
  %".449" = load i32, ptr %"R35"
  %"zext.41" = zext i32 %".449" to i64
  %"shl.23" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.23", %"zext.40"
  %"ptr_plus_imm.14" = add i64 %"or.20", 12
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".450" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".451" = bitcast ptr %"R42" to ptr
  store float %".450", ptr %".451"
  ; LDG.E.SYS R44, [R36]
  %".454" = load i32, ptr %"R36"
  %"zext.42" = zext i32 %".454" to i64
  %".455" = load i32, ptr %"R37"
  %"zext.43" = zext i32 %".455" to i64
  %"shl.24" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.24", %"zext.42"
  %"inttoptr_bytes.21" = inttoptr i64 %"or.21" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".456" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".457" = bitcast ptr %"R44" to ptr
  store float %".456", ptr %".457"
  ; LDG.E.SYS R46, [R36+0x4]
  %".460" = load i32, ptr %"R36"
  %"zext.44" = zext i32 %".460" to i64
  %".461" = load i32, ptr %"R37"
  %"zext.45" = zext i32 %".461" to i64
  %"shl.25" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.25", %"zext.44"
  %"ptr_plus_imm.15" = add i64 %"or.22", 4
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".462" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".463" = bitcast ptr %"R46" to ptr
  store float %".462", ptr %".463"
  ; IADD3 R35, R23, 0x8, RZ
  %".466" = load i32, ptr %"R23"
  %".467" = add i32 %".466", 8
  %".468" = add i32 %".467", 0
  store i32 %".468", ptr %"R35"
  ; LDG.E.SYS R48, [R36+0x8]
  %".471" = load i32, ptr %"R36"
  %"zext.46" = zext i32 %".471" to i64
  %".472" = load i32, ptr %"R37"
  %"zext.47" = zext i32 %".472" to i64
  %"shl.26" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.26", %"zext.46"
  %"ptr_plus_imm.16" = add i64 %"or.23", 8
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".473" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".474" = bitcast ptr %"R48" to ptr
  store float %".473", ptr %".474"
  ; LDG.E.SYS R50, [R36+0xc]
  %".477" = load i32, ptr %"R36"
  %"zext.48" = zext i32 %".477" to i64
  %".478" = load i32, ptr %"R37"
  %"zext.49" = zext i32 %".478" to i64
  %"shl.27" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.27", %"zext.48"
  %"ptr_plus_imm.17" = add i64 %"or.24", 12
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".479" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".480" = bitcast ptr %"R50" to ptr
  store float %".479", ptr %".480"
  ; LDG.E.SYS R53, [R38+0x4]
  %".483" = load i32, ptr %"R38"
  %"zext.50" = zext i32 %".483" to i64
  %".484" = load i32, ptr %"R39"
  %"zext.51" = zext i32 %".484" to i64
  %"shl.28" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.28", %"zext.50"
  %"ptr_plus_imm.18" = add i64 %"or.25", 4
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".485" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".486" = bitcast ptr %"R53" to ptr
  store float %".485", ptr %".486"
  ; LDG.E.SYS R59, [R40+0x4]
  %".489" = load i32, ptr %"R40"
  %"zext.52" = zext i32 %".489" to i64
  %".490" = load i32, ptr %"R41"
  %"zext.53" = zext i32 %".490" to i64
  %"shl.29" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.29", %"zext.52"
  %"ptr_plus_imm.19" = add i64 %"or.26", 4
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".491" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".492" = bitcast ptr %"R59" to ptr
  store float %".491", ptr %".492"
  ; IADD3 R37, R25, 0x8, RZ
  %".495" = load i32, ptr %"R25"
  %".496" = add i32 %".495", 8
  %".497" = add i32 %".496", 0
  store i32 %".497", ptr %"R37"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".500" = load i32, ptr %"R35"
  %".501" = load i32, ptr %"R18"
  %"imad_ext1.12" = zext i32 %".500" to i64
  %"imad_ext2.12" = zext i32 %".501" to i64
  %"imad_mul.17" = mul i64 %"imad_ext1.12", %"imad_ext2.12"
  %".502" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.17" = add i64 %"imad_mul.17", %".502"
  %".503" = and i64 %"imad_add.17", 18446744069414584320
  %".504" = lshr i64 %".503", 32
  %"trunc32.24" = trunc i64 %".504" to i32
  %"trunc32.25" = trunc i64 %"imad_add.17" to i32
  store i32 %"trunc32.25", ptr %"R34"
  store i32 %"trunc32.24", ptr %"R35"
  ; LDG.E.SYS R55, [R38+0x8]
  %".508" = load i32, ptr %"R38"
  %"zext.54" = zext i32 %".508" to i64
  %".509" = load i32, ptr %"R39"
  %"zext.55" = zext i32 %".509" to i64
  %"shl.30" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.30", %"zext.54"
  %"ptr_plus_imm.20" = add i64 %"or.27", 8
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".510" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".511" = bitcast ptr %"R55" to ptr
  store float %".510", ptr %".511"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".514" = load i32, ptr %"R37"
  %".515" = load i32, ptr %"R18"
  %"imad_ext1.13" = zext i32 %".514" to i64
  %"imad_ext2.13" = zext i32 %".515" to i64
  %"imad_mul.18" = mul i64 %"imad_ext1.13", %"imad_ext2.13"
  %".516" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.18" = add i64 %"imad_mul.18", %".516"
  %".517" = and i64 %"imad_add.18", 18446744069414584320
  %".518" = lshr i64 %".517", 32
  %"trunc32.26" = trunc i64 %".518" to i32
  %"trunc32.27" = trunc i64 %"imad_add.18" to i32
  store i32 %"trunc32.27", ptr %"R36"
  store i32 %"trunc32.26", ptr %"R37"
  ; LDG.E.SYS R61, [R40+0x8]
  %".522" = load i32, ptr %"R40"
  %"zext.56" = zext i32 %".522" to i64
  %".523" = load i32, ptr %"R41"
  %"zext.57" = zext i32 %".523" to i64
  %"shl.31" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.31", %"zext.56"
  %"ptr_plus_imm.21" = add i64 %"or.28", 8
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".524" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".525" = bitcast ptr %"R61" to ptr
  store float %".524", ptr %".525"
  ; LDG.E.SYS R60, [R38+0xc]
  %".528" = load i32, ptr %"R38"
  %"zext.58" = zext i32 %".528" to i64
  %".529" = load i32, ptr %"R39"
  %"zext.59" = zext i32 %".529" to i64
  %"shl.32" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.32", %"zext.58"
  %"ptr_plus_imm.22" = add i64 %"or.29", 12
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".530" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".531" = bitcast ptr %"R60" to ptr
  store float %".530", ptr %".531"
  ; IADD3 R23, R23, 0xc, RZ
  %".534" = load i32, ptr %"R23"
  %".535" = add i32 %".534", 12
  %".536" = add i32 %".535", 0
  store i32 %".536", ptr %"R23"
  ; IADD3 R25, R25, 0xc, RZ
  %".539" = load i32, ptr %"R25"
  %".540" = add i32 %".539", 12
  %".541" = add i32 %".540", 0
  store i32 %".541", ptr %"R25"
  ; LDG.E.SYS R39, [R34+0x4]
  %".544" = load i32, ptr %"R34"
  %"zext.60" = zext i32 %".544" to i64
  %".545" = load i32, ptr %"R35"
  %"zext.61" = zext i32 %".545" to i64
  %"shl.33" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.33", %"zext.60"
  %"ptr_plus_imm.23" = add i64 %"or.30", 4
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".546" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".547" = bitcast ptr %"R39" to ptr
  store float %".546", ptr %".547"
  ; LDG.E.SYS R38, [R34+0x8]
  %".550" = load i32, ptr %"R34"
  %"zext.62" = zext i32 %".550" to i64
  %".551" = load i32, ptr %"R35"
  %"zext.63" = zext i32 %".551" to i64
  %"shl.34" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.34", %"zext.62"
  %"ptr_plus_imm.24" = add i64 %"or.31", 8
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".552" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".553" = bitcast ptr %"R38" to ptr
  store float %".552", ptr %".553"
  ; FFMA R56, R56, R57, R52
  %"cast_ptr" = bitcast ptr %"R56" to ptr
  %".556" = load float, ptr %"cast_ptr"
  %"cast_ptr.1" = bitcast ptr %"R57" to ptr
  %".557" = load float, ptr %"cast_ptr.1"
  %"cast_ptr.2" = bitcast ptr %"R52" to ptr
  %".558" = load float, ptr %"cast_ptr.2"
  %"fmul" = fmul float %".556", %".557"
  %"fadd" = fadd float %"fmul", %".558"
  %".559" = bitcast ptr %"R56" to ptr
  store float %"fadd", ptr %".559"
  ; LDG.E.SYS R52, [R40+0xc]
  %".562" = load i32, ptr %"R40"
  %"zext.64" = zext i32 %".562" to i64
  %".563" = load i32, ptr %"R41"
  %"zext.65" = zext i32 %".563" to i64
  %"shl.35" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.35", %"zext.64"
  %"ptr_plus_imm.25" = add i64 %"or.32", 12
  %"inttoptr_bytes.32" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".564" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".565" = bitcast ptr %"R52" to ptr
  store float %".564", ptr %".565"
  ; FFMA R58, R57, R58, R54
  %"cast_ptr.3" = bitcast ptr %"R57" to ptr
  %".568" = load float, ptr %"cast_ptr.3"
  %"cast_ptr.4" = bitcast ptr %"R58" to ptr
  %".569" = load float, ptr %"cast_ptr.4"
  %"cast_ptr.5" = bitcast ptr %"R54" to ptr
  %".570" = load float, ptr %"cast_ptr.5"
  %"fmul.1" = fmul float %".568", %".569"
  %"fadd.1" = fadd float %"fmul.1", %".570"
  %".571" = bitcast ptr %"R58" to ptr
  store float %"fadd.1", ptr %".571"
  ; LDG.E.SYS R57, [R40]
  %".574" = load i32, ptr %"R40"
  %"zext.66" = zext i32 %".574" to i64
  %".575" = load i32, ptr %"R41"
  %"zext.67" = zext i32 %".575" to i64
  %"shl.36" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.36", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".576" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".577" = bitcast ptr %"R57" to ptr
  store float %".576", ptr %".577"
  ; LDG.E.SYS R54, [R34]
  %".580" = load i32, ptr %"R34"
  %"zext.68" = zext i32 %".580" to i64
  %".581" = load i32, ptr %"R35"
  %"zext.69" = zext i32 %".581" to i64
  %"shl.37" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.37", %"zext.68"
  %"inttoptr_bytes.34" = inttoptr i64 %"or.34" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".582" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".583" = bitcast ptr %"R54" to ptr
  store float %".582", ptr %".583"
  ; FFMA R56, R47, R24, R56
  %"cast_ptr.6" = bitcast ptr %"R47" to ptr
  %".586" = load float, ptr %"cast_ptr.6"
  %"cast_ptr.7" = bitcast ptr %"R24" to ptr
  %".587" = load float, ptr %"cast_ptr.7"
  %"cast_ptr.8" = bitcast ptr %"R56" to ptr
  %".588" = load float, ptr %"cast_ptr.8"
  %"fmul.2" = fmul float %".586", %".587"
  %"fadd.2" = fadd float %"fmul.2", %".588"
  %".589" = bitcast ptr %"R56" to ptr
  store float %"fadd.2", ptr %".589"
  ; LDG.E.SYS R47, [R34+0xc]
  %".592" = load i32, ptr %"R34"
  %"zext.70" = zext i32 %".592" to i64
  %".593" = load i32, ptr %"R35"
  %"zext.71" = zext i32 %".593" to i64
  %"shl.38" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.38", %"zext.70"
  %"ptr_plus_imm.26" = add i64 %"or.35", 12
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".594" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".595" = bitcast ptr %"R47" to ptr
  store float %".594", ptr %".595"
  ; FFMA R58, R24, R49, R58
  %"cast_ptr.9" = bitcast ptr %"R24" to ptr
  %".598" = load float, ptr %"cast_ptr.9"
  %"cast_ptr.10" = bitcast ptr %"R49" to ptr
  %".599" = load float, ptr %"cast_ptr.10"
  %"cast_ptr.11" = bitcast ptr %"R58" to ptr
  %".600" = load float, ptr %"cast_ptr.11"
  %"fmul.3" = fmul float %".598", %".599"
  %"fadd.3" = fadd float %"fmul.3", %".600"
  %".601" = bitcast ptr %"R58" to ptr
  store float %"fadd.3", ptr %".601"
  ; LDG.E.SYS R41, [R36+0x4]
  %".604" = load i32, ptr %"R36"
  %"zext.72" = zext i32 %".604" to i64
  %".605" = load i32, ptr %"R37"
  %"zext.73" = zext i32 %".605" to i64
  %"shl.39" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.39", %"zext.72"
  %"ptr_plus_imm.27" = add i64 %"or.36", 4
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".606" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".607" = bitcast ptr %"R41" to ptr
  store float %".606", ptr %".607"
  ; LDG.E.SYS R40, [R36+0x8]
  %".610" = load i32, ptr %"R36"
  %"zext.74" = zext i32 %".610" to i64
  %".611" = load i32, ptr %"R37"
  %"zext.75" = zext i32 %".611" to i64
  %"shl.40" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.40", %"zext.74"
  %"ptr_plus_imm.28" = add i64 %"or.37", 8
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".612" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".613" = bitcast ptr %"R40" to ptr
  store float %".612", ptr %".613"
  ; FFMA R49, R43, R22, R56
  %"cast_ptr.12" = bitcast ptr %"R43" to ptr
  %".616" = load float, ptr %"cast_ptr.12"
  %"cast_ptr.13" = bitcast ptr %"R22" to ptr
  %".617" = load float, ptr %"cast_ptr.13"
  %"cast_ptr.14" = bitcast ptr %"R56" to ptr
  %".618" = load float, ptr %"cast_ptr.14"
  %"fmul.4" = fmul float %".616", %".617"
  %"fadd.4" = fadd float %"fmul.4", %".618"
  %".619" = bitcast ptr %"R49" to ptr
  store float %"fadd.4", ptr %".619"
  ; LDG.E.SYS R56, [R36]
  %".622" = load i32, ptr %"R36"
  %"zext.76" = zext i32 %".622" to i64
  %".623" = load i32, ptr %"R37"
  %"zext.77" = zext i32 %".623" to i64
  %"shl.41" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.41", %"zext.76"
  %"inttoptr_bytes.38" = inttoptr i64 %"or.38" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".624" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".625" = bitcast ptr %"R56" to ptr
  store float %".624", ptr %".625"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".628" = load i32, ptr %"R25"
  %".629" = load i32, ptr %"R18"
  %"imad_ext1.14" = zext i32 %".628" to i64
  %"imad_ext2.14" = zext i32 %".629" to i64
  %"imad_mul.19" = mul i64 %"imad_ext1.14", %"imad_ext2.14"
  %".630" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.19" = add i64 %"imad_mul.19", %".630"
  %".631" = and i64 %"imad_add.19", 18446744069414584320
  %".632" = lshr i64 %".631", 32
  %"trunc32.28" = trunc i64 %".632" to i32
  %"trunc32.29" = trunc i64 %"imad_add.19" to i32
  store i32 %"trunc32.29", ptr %"R24"
  store i32 %"trunc32.28", ptr %"R25"
  ; LDG.E.SYS R43, [R36+0xc]
  %".636" = load i32, ptr %"R36"
  %"zext.78" = zext i32 %".636" to i64
  %".637" = load i32, ptr %"R37"
  %"zext.79" = zext i32 %".637" to i64
  %"shl.42" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.42", %"zext.78"
  %"ptr_plus_imm.29" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".638" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".639" = bitcast ptr %"R43" to ptr
  store float %".638", ptr %".639"
  ; FFMA R58, R22, R45, R58
  %"cast_ptr.15" = bitcast ptr %"R22" to ptr
  %".642" = load float, ptr %"cast_ptr.15"
  %"cast_ptr.16" = bitcast ptr %"R45" to ptr
  %".643" = load float, ptr %"cast_ptr.16"
  %"cast_ptr.17" = bitcast ptr %"R58" to ptr
  %".644" = load float, ptr %"cast_ptr.17"
  %"fmul.5" = fmul float %".642", %".643"
  %"fadd.5" = fadd float %"fmul.5", %".644"
  %".645" = bitcast ptr %"R58" to ptr
  store float %"fadd.5", ptr %".645"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".648" = load i32, ptr %"R23"
  %".649" = load i32, ptr %"R18"
  %"imad_ext1.15" = zext i32 %".648" to i64
  %"imad_ext2.15" = zext i32 %".649" to i64
  %"imad_mul.20" = mul i64 %"imad_ext1.15", %"imad_ext2.15"
  %".650" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.20" = add i64 %"imad_mul.20", %".650"
  %".651" = and i64 %"imad_add.20", 18446744069414584320
  %".652" = lshr i64 %".651", 32
  %"trunc32.30" = trunc i64 %".652" to i32
  %"trunc32.31" = trunc i64 %"imad_add.20" to i32
  store i32 %"trunc32.31", ptr %"R22"
  store i32 %"trunc32.30", ptr %"R23"
  ; LDG.E.SYS R18, [R24]
  %".656" = load i32, ptr %"R24"
  %"zext.80" = zext i32 %".656" to i64
  %".657" = load i32, ptr %"R25"
  %"zext.81" = zext i32 %".657" to i64
  %"shl.43" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.43", %"zext.80"
  %"inttoptr_bytes.40" = inttoptr i64 %"or.40" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".658" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".659" = bitcast ptr %"R18" to ptr
  store float %".658", ptr %".659"
  ; FFMA R14, R14, R15, R49
  %"cast_ptr.18" = bitcast ptr %"R14" to ptr
  %".662" = load float, ptr %"cast_ptr.18"
  %"cast_ptr.19" = bitcast ptr %"R15" to ptr
  %".663" = load float, ptr %"cast_ptr.19"
  %"cast_ptr.20" = bitcast ptr %"R49" to ptr
  %".664" = load float, ptr %"cast_ptr.20"
  %"fmul.6" = fmul float %".662", %".663"
  %"fadd.6" = fadd float %"fmul.6", %".664"
  %".665" = bitcast ptr %"R14" to ptr
  store float %"fadd.6", ptr %".665"
  ; LDG.E.SYS R49, [R24+0x4]
  %".668" = load i32, ptr %"R24"
  %"zext.82" = zext i32 %".668" to i64
  %".669" = load i32, ptr %"R25"
  %"zext.83" = zext i32 %".669" to i64
  %"shl.44" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.44", %"zext.82"
  %"ptr_plus_imm.30" = add i64 %"or.41", 4
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".670" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".671" = bitcast ptr %"R49" to ptr
  store float %".670", ptr %".671"
  ; FFMA R58, R15, R13, R58
  %"cast_ptr.21" = bitcast ptr %"R15" to ptr
  %".674" = load float, ptr %"cast_ptr.21"
  %"cast_ptr.22" = bitcast ptr %"R13" to ptr
  %".675" = load float, ptr %"cast_ptr.22"
  %"cast_ptr.23" = bitcast ptr %"R58" to ptr
  %".676" = load float, ptr %"cast_ptr.23"
  %"fmul.7" = fmul float %".674", %".675"
  %"fadd.7" = fadd float %"fmul.7", %".676"
  %".677" = bitcast ptr %"R58" to ptr
  store float %"fadd.7", ptr %".677"
  ; LDG.E.SYS R35, [R22]
  %".680" = load i32, ptr %"R22"
  %"zext.84" = zext i32 %".680" to i64
  %".681" = load i32, ptr %"R23"
  %"zext.85" = zext i32 %".681" to i64
  %"shl.45" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.45", %"zext.84"
  %"inttoptr_bytes.42" = inttoptr i64 %"or.42" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".682" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".683" = bitcast ptr %"R35" to ptr
  store float %".682", ptr %".683"
  ; LDG.E.SYS R15, [R22+0x4]
  %".686" = load i32, ptr %"R22"
  %"zext.86" = zext i32 %".686" to i64
  %".687" = load i32, ptr %"R23"
  %"zext.87" = zext i32 %".687" to i64
  %"shl.46" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.46", %"zext.86"
  %"ptr_plus_imm.31" = add i64 %"or.43", 4
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".688" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".689" = bitcast ptr %"R15" to ptr
  store float %".688", ptr %".689"
  ; LDG.E.SYS R13, [R22+0x8]
  %".692" = load i32, ptr %"R22"
  %"zext.88" = zext i32 %".692" to i64
  %".693" = load i32, ptr %"R23"
  %"zext.89" = zext i32 %".693" to i64
  %"shl.47" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.47", %"zext.88"
  %"ptr_plus_imm.32" = add i64 %"or.44", 8
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".694" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".695" = bitcast ptr %"R13" to ptr
  store float %".694", ptr %".695"
  ; LDG.E.SYS R37, [R24+0x8]
  %".698" = load i32, ptr %"R24"
  %"zext.90" = zext i32 %".698" to i64
  %".699" = load i32, ptr %"R25"
  %"zext.91" = zext i32 %".699" to i64
  %"shl.48" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.48", %"zext.90"
  %"ptr_plus_imm.33" = add i64 %"or.45", 8
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".700" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".701" = bitcast ptr %"R37" to ptr
  store float %".700", ptr %".701"
  ; LDG.E.SYS R45, [R22+0xc]
  %".704" = load i32, ptr %"R22"
  %"zext.92" = zext i32 %".704" to i64
  %".705" = load i32, ptr %"R23"
  %"zext.93" = zext i32 %".705" to i64
  %"shl.49" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.49", %"zext.92"
  %"ptr_plus_imm.34" = add i64 %"or.46", 12
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".706" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".707" = bitcast ptr %"R45" to ptr
  store float %".706", ptr %".707"
  ; LDG.E.SYS R34, [R24+0xc]
  %".710" = load i32, ptr %"R24"
  %"zext.94" = zext i32 %".710" to i64
  %".711" = load i32, ptr %"R25"
  %"zext.95" = zext i32 %".711" to i64
  %"shl.50" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.50", %"zext.94"
  %"ptr_plus_imm.35" = add i64 %"or.47", 12
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".712" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".713" = bitcast ptr %"R34" to ptr
  store float %".712", ptr %".713"
  ; FFMA R14, R51, R12, R14
  %"cast_ptr.24" = bitcast ptr %"R51" to ptr
  %".716" = load float, ptr %"cast_ptr.24"
  %"cast_ptr.25" = bitcast ptr %"R12" to ptr
  %".717" = load float, ptr %"cast_ptr.25"
  %"cast_ptr.26" = bitcast ptr %"R14" to ptr
  %".718" = load float, ptr %"cast_ptr.26"
  %"fmul.8" = fmul float %".716", %".717"
  %"fadd.8" = fadd float %"fmul.8", %".718"
  %".719" = bitcast ptr %"R14" to ptr
  store float %"fadd.8", ptr %".719"
  ; IADD3 R9, R9, -0x10, RZ
  %".722" = load i32, ptr %"R9"
  %".723" = add i32 %".722", -16
  %".724" = add i32 %".723", 0
  store i32 %".724", ptr %"R9"
  ; FFMA R14, R53, R10, R14
  %"cast_ptr.27" = bitcast ptr %"R53" to ptr
  %".727" = load float, ptr %"cast_ptr.27"
  %"cast_ptr.28" = bitcast ptr %"R10" to ptr
  %".728" = load float, ptr %"cast_ptr.28"
  %"cast_ptr.29" = bitcast ptr %"R14" to ptr
  %".729" = load float, ptr %"cast_ptr.29"
  %"fmul.9" = fmul float %".727", %".728"
  %"fadd.9" = fadd float %"fmul.9", %".729"
  %".730" = bitcast ptr %"R14" to ptr
  store float %"fadd.9", ptr %".730"
  ; FFMA R14, R55, R16, R14
  %"cast_ptr.30" = bitcast ptr %"R55" to ptr
  %".733" = load float, ptr %"cast_ptr.30"
  %"cast_ptr.31" = bitcast ptr %"R16" to ptr
  %".734" = load float, ptr %"cast_ptr.31"
  %"cast_ptr.32" = bitcast ptr %"R14" to ptr
  %".735" = load float, ptr %"cast_ptr.32"
  %"fmul.10" = fmul float %".733", %".734"
  %"fadd.10" = fadd float %"fmul.10", %".735"
  %".736" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".736"
  ; FFMA R14, R60, R17, R14
  %"cast_ptr.33" = bitcast ptr %"R60" to ptr
  %".739" = load float, ptr %"cast_ptr.33"
  %"cast_ptr.34" = bitcast ptr %"R17" to ptr
  %".740" = load float, ptr %"cast_ptr.34"
  %"cast_ptr.35" = bitcast ptr %"R14" to ptr
  %".741" = load float, ptr %"cast_ptr.35"
  %"fmul.11" = fmul float %".739", %".740"
  %"fadd.11" = fadd float %"fmul.11", %".741"
  %".742" = bitcast ptr %"R14" to ptr
  store float %"fadd.11", ptr %".742"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".745" = load i32, ptr %"R9"
  %".746" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".745", 12
  %".747" = xor i1 %"cmp.8", -1
  %".748" = and i1 %"cmp.8", %".746"
  %".749" = and i1 %".747", %".746"
  store i1 %".748", ptr %"P1"
  ; IADD3 R11, R11, 0x10, RZ
  %".752" = load i32, ptr %"R11"
  %".753" = add i32 %".752", 16
  %".754" = add i32 %".753", 0
  store i32 %".754", ptr %"R11"
  ; FFMA R57, R12, R57, R58
  %"cast_ptr.36" = bitcast ptr %"R12" to ptr
  %".757" = load float, ptr %"cast_ptr.36"
  %"cast_ptr.37" = bitcast ptr %"R57" to ptr
  %".758" = load float, ptr %"cast_ptr.37"
  %"cast_ptr.38" = bitcast ptr %"R58" to ptr
  %".759" = load float, ptr %"cast_ptr.38"
  %"fmul.12" = fmul float %".757", %".758"
  %"fadd.12" = fadd float %"fmul.12", %".759"
  %".760" = bitcast ptr %"R57" to ptr
  store float %"fadd.12", ptr %".760"
  ; FFMA R57, R10, R59, R57
  %"cast_ptr.39" = bitcast ptr %"R10" to ptr
  %".763" = load float, ptr %"cast_ptr.39"
  %"cast_ptr.40" = bitcast ptr %"R59" to ptr
  %".764" = load float, ptr %"cast_ptr.40"
  %"cast_ptr.41" = bitcast ptr %"R57" to ptr
  %".765" = load float, ptr %"cast_ptr.41"
  %"fmul.13" = fmul float %".763", %".764"
  %"fadd.13" = fadd float %"fmul.13", %".765"
  %".766" = bitcast ptr %"R57" to ptr
  store float %"fadd.13", ptr %".766"
  ; FFMA R57, R16, R61, R57
  %"cast_ptr.42" = bitcast ptr %"R16" to ptr
  %".769" = load float, ptr %"cast_ptr.42"
  %"cast_ptr.43" = bitcast ptr %"R61" to ptr
  %".770" = load float, ptr %"cast_ptr.43"
  %"cast_ptr.44" = bitcast ptr %"R57" to ptr
  %".771" = load float, ptr %"cast_ptr.44"
  %"fmul.14" = fmul float %".769", %".770"
  %"fadd.14" = fadd float %"fmul.14", %".771"
  %".772" = bitcast ptr %"R57" to ptr
  store float %"fadd.14", ptr %".772"
  ; FFMA R52, R17, R52, R57
  %"cast_ptr.45" = bitcast ptr %"R17" to ptr
  %".775" = load float, ptr %"cast_ptr.45"
  %"cast_ptr.46" = bitcast ptr %"R52" to ptr
  %".776" = load float, ptr %"cast_ptr.46"
  %"cast_ptr.47" = bitcast ptr %"R57" to ptr
  %".777" = load float, ptr %"cast_ptr.47"
  %"fmul.15" = fmul float %".775", %".776"
  %"fadd.15" = fadd float %"fmul.15", %".777"
  %".778" = bitcast ptr %"R52" to ptr
  store float %"fadd.15", ptr %".778"
  ; FFMA R14, R54, R19, R14
  %"cast_ptr.48" = bitcast ptr %"R54" to ptr
  %".781" = load float, ptr %"cast_ptr.48"
  %"cast_ptr.49" = bitcast ptr %"R19" to ptr
  %".782" = load float, ptr %"cast_ptr.49"
  %"cast_ptr.50" = bitcast ptr %"R14" to ptr
  %".783" = load float, ptr %"cast_ptr.50"
  %"fmul.16" = fmul float %".781", %".782"
  %"fadd.16" = fadd float %"fmul.16", %".783"
  %".784" = bitcast ptr %"R14" to ptr
  store float %"fadd.16", ptr %".784"
  ; FFMA R52, R19, R56, R52
  %"cast_ptr.51" = bitcast ptr %"R19" to ptr
  %".787" = load float, ptr %"cast_ptr.51"
  %"cast_ptr.52" = bitcast ptr %"R56" to ptr
  %".788" = load float, ptr %"cast_ptr.52"
  %"cast_ptr.53" = bitcast ptr %"R52" to ptr
  %".789" = load float, ptr %"cast_ptr.53"
  %"fmul.17" = fmul float %".787", %".788"
  %"fadd.17" = fadd float %"fmul.17", %".789"
  %".790" = bitcast ptr %"R52" to ptr
  store float %"fadd.17", ptr %".790"
  ; FFMA R14, R39, R20, R14
  %"cast_ptr.54" = bitcast ptr %"R39" to ptr
  %".793" = load float, ptr %"cast_ptr.54"
  %"cast_ptr.55" = bitcast ptr %"R20" to ptr
  %".794" = load float, ptr %"cast_ptr.55"
  %"cast_ptr.56" = bitcast ptr %"R14" to ptr
  %".795" = load float, ptr %"cast_ptr.56"
  %"fmul.18" = fmul float %".793", %".794"
  %"fadd.18" = fadd float %"fmul.18", %".795"
  %".796" = bitcast ptr %"R14" to ptr
  store float %"fadd.18", ptr %".796"
  ; FFMA R41, R20, R41, R52
  %"cast_ptr.57" = bitcast ptr %"R20" to ptr
  %".799" = load float, ptr %"cast_ptr.57"
  %"cast_ptr.58" = bitcast ptr %"R41" to ptr
  %".800" = load float, ptr %"cast_ptr.58"
  %"cast_ptr.59" = bitcast ptr %"R52" to ptr
  %".801" = load float, ptr %"cast_ptr.59"
  %"fmul.19" = fmul float %".799", %".800"
  %"fadd.19" = fadd float %"fmul.19", %".801"
  %".802" = bitcast ptr %"R41" to ptr
  store float %"fadd.19", ptr %".802"
  ; FFMA R14, R38, R21, R14
  %"cast_ptr.60" = bitcast ptr %"R38" to ptr
  %".805" = load float, ptr %"cast_ptr.60"
  %"cast_ptr.61" = bitcast ptr %"R21" to ptr
  %".806" = load float, ptr %"cast_ptr.61"
  %"cast_ptr.62" = bitcast ptr %"R14" to ptr
  %".807" = load float, ptr %"cast_ptr.62"
  %"fmul.20" = fmul float %".805", %".806"
  %"fadd.20" = fadd float %"fmul.20", %".807"
  %".808" = bitcast ptr %"R14" to ptr
  store float %"fadd.20", ptr %".808"
  ; FFMA R40, R21, R40, R41
  %"cast_ptr.63" = bitcast ptr %"R21" to ptr
  %".811" = load float, ptr %"cast_ptr.63"
  %"cast_ptr.64" = bitcast ptr %"R40" to ptr
  %".812" = load float, ptr %"cast_ptr.64"
  %"cast_ptr.65" = bitcast ptr %"R41" to ptr
  %".813" = load float, ptr %"cast_ptr.65"
  %"fmul.21" = fmul float %".811", %".812"
  %"fadd.21" = fadd float %"fmul.21", %".813"
  %".814" = bitcast ptr %"R40" to ptr
  store float %"fadd.21", ptr %".814"
  ; FFMA R14, R47, R42, R14
  %"cast_ptr.66" = bitcast ptr %"R47" to ptr
  %".817" = load float, ptr %"cast_ptr.66"
  %"cast_ptr.67" = bitcast ptr %"R42" to ptr
  %".818" = load float, ptr %"cast_ptr.67"
  %"cast_ptr.68" = bitcast ptr %"R14" to ptr
  %".819" = load float, ptr %"cast_ptr.68"
  %"fmul.22" = fmul float %".817", %".818"
  %"fadd.22" = fadd float %"fmul.22", %".819"
  %".820" = bitcast ptr %"R14" to ptr
  store float %"fadd.22", ptr %".820"
  ; FFMA R43, R42, R43, R40
  %"cast_ptr.69" = bitcast ptr %"R42" to ptr
  %".823" = load float, ptr %"cast_ptr.69"
  %"cast_ptr.70" = bitcast ptr %"R43" to ptr
  %".824" = load float, ptr %"cast_ptr.70"
  %"cast_ptr.71" = bitcast ptr %"R40" to ptr
  %".825" = load float, ptr %"cast_ptr.71"
  %"fmul.23" = fmul float %".823", %".824"
  %"fadd.23" = fadd float %"fmul.23", %".825"
  %".826" = bitcast ptr %"R43" to ptr
  store float %"fadd.23", ptr %".826"
  ; FFMA R18, R44, R18, R43
  %"cast_ptr.72" = bitcast ptr %"R44" to ptr
  %".829" = load float, ptr %"cast_ptr.72"
  %"cast_ptr.73" = bitcast ptr %"R18" to ptr
  %".830" = load float, ptr %"cast_ptr.73"
  %"cast_ptr.74" = bitcast ptr %"R43" to ptr
  %".831" = load float, ptr %"cast_ptr.74"
  %"fmul.24" = fmul float %".829", %".830"
  %"fadd.24" = fadd float %"fmul.24", %".831"
  %".832" = bitcast ptr %"R18" to ptr
  store float %"fadd.24", ptr %".832"
  ; FFMA R14, R35, R44, R14
  %"cast_ptr.75" = bitcast ptr %"R35" to ptr
  %".835" = load float, ptr %"cast_ptr.75"
  %"cast_ptr.76" = bitcast ptr %"R44" to ptr
  %".836" = load float, ptr %"cast_ptr.76"
  %"cast_ptr.77" = bitcast ptr %"R14" to ptr
  %".837" = load float, ptr %"cast_ptr.77"
  %"fmul.25" = fmul float %".835", %".836"
  %"fadd.25" = fadd float %"fmul.25", %".837"
  %".838" = bitcast ptr %"R14" to ptr
  store float %"fadd.25", ptr %".838"
  ; FFMA R18, R46, R49, R18
  %"cast_ptr.78" = bitcast ptr %"R46" to ptr
  %".841" = load float, ptr %"cast_ptr.78"
  %"cast_ptr.79" = bitcast ptr %"R49" to ptr
  %".842" = load float, ptr %"cast_ptr.79"
  %"cast_ptr.80" = bitcast ptr %"R18" to ptr
  %".843" = load float, ptr %"cast_ptr.80"
  %"fmul.26" = fmul float %".841", %".842"
  %"fadd.26" = fadd float %"fmul.26", %".843"
  %".844" = bitcast ptr %"R18" to ptr
  store float %"fadd.26", ptr %".844"
  ; FFMA R14, R15, R46, R14
  %"cast_ptr.81" = bitcast ptr %"R15" to ptr
  %".847" = load float, ptr %"cast_ptr.81"
  %"cast_ptr.82" = bitcast ptr %"R46" to ptr
  %".848" = load float, ptr %"cast_ptr.82"
  %"cast_ptr.83" = bitcast ptr %"R14" to ptr
  %".849" = load float, ptr %"cast_ptr.83"
  %"fmul.27" = fmul float %".847", %".848"
  %"fadd.27" = fadd float %"fmul.27", %".849"
  %".850" = bitcast ptr %"R14" to ptr
  store float %"fadd.27", ptr %".850"
  ; FFMA R13, R13, R48, R14
  %"cast_ptr.84" = bitcast ptr %"R13" to ptr
  %".853" = load float, ptr %"cast_ptr.84"
  %"cast_ptr.85" = bitcast ptr %"R48" to ptr
  %".854" = load float, ptr %"cast_ptr.85"
  %"cast_ptr.86" = bitcast ptr %"R14" to ptr
  %".855" = load float, ptr %"cast_ptr.86"
  %"fmul.28" = fmul float %".853", %".854"
  %"fadd.28" = fadd float %"fmul.28", %".855"
  %".856" = bitcast ptr %"R13" to ptr
  store float %"fadd.28", ptr %".856"
  ; FFMA R37, R48, R37, R18
  %"cast_ptr.87" = bitcast ptr %"R48" to ptr
  %".859" = load float, ptr %"cast_ptr.87"
  %"cast_ptr.88" = bitcast ptr %"R37" to ptr
  %".860" = load float, ptr %"cast_ptr.88"
  %"cast_ptr.89" = bitcast ptr %"R18" to ptr
  %".861" = load float, ptr %"cast_ptr.89"
  %"fmul.29" = fmul float %".859", %".860"
  %"fadd.29" = fadd float %"fmul.29", %".861"
  %".862" = bitcast ptr %"R37" to ptr
  store float %"fadd.29", ptr %".862"
  ; FFMA R52, R45, R50, R13
  %"cast_ptr.90" = bitcast ptr %"R45" to ptr
  %".865" = load float, ptr %"cast_ptr.90"
  %"cast_ptr.91" = bitcast ptr %"R50" to ptr
  %".866" = load float, ptr %"cast_ptr.91"
  %"cast_ptr.92" = bitcast ptr %"R13" to ptr
  %".867" = load float, ptr %"cast_ptr.92"
  %"fmul.30" = fmul float %".865", %".866"
  %"fadd.30" = fadd float %"fmul.30", %".867"
  %".868" = bitcast ptr %"R52" to ptr
  store float %"fadd.30", ptr %".868"
  ; FFMA R54, R50, R34, R37
  %"cast_ptr.93" = bitcast ptr %"R50" to ptr
  %".871" = load float, ptr %"cast_ptr.93"
  %"cast_ptr.94" = bitcast ptr %"R34" to ptr
  %".872" = load float, ptr %"cast_ptr.94"
  %"cast_ptr.95" = bitcast ptr %"R37" to ptr
  %".873" = load float, ptr %"cast_ptr.95"
  %"fmul.31" = fmul float %".871", %".872"
  %"fadd.31" = fadd float %"fmul.31", %".873"
  %".874" = bitcast ptr %"R54" to ptr
  store float %"fadd.31", ptr %".874"
  ; @P1 BRA `(.L_x_5)
  %".877" = load i1, ptr %"P1"
  %".878" = icmp eq i1 %".877", 1
  br i1 %".878", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".881" = load i32, ptr %"R9"
  %".882" = load i1, ptr %"PT"
  %"cmp.9" = icmp sgt i32 %".881", 4
  %".883" = xor i1 %"cmp.9", -1
  %".884" = and i1 %"cmp.9", %".882"
  %".885" = and i1 %".883", %".882"
  store i1 %".884", ptr %"P1"
  ; @!P1 BRA `(.L_x_6)
  %".888" = load i1, ptr %"P1"
  %".889" = icmp ne i1 %".888", 1
  br i1 %".889", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".892" = load i32, ptr %"R0"
  %".893" = load i32, ptr %"R11"
  %".894" = add i32 %".892", %".893"
  %".895" = add i32 %".894", 0
  store i32 %".895", ptr %"R13"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17"
  ; LEA R14, R2.reuse, R13, 0x2
  %".900" = load i32, ptr %"R2"
  %".901" = load i32, ptr %"R13"
  %"shl.51" = shl i32 %".900", 2
  %"add.3" = add i32 %"shl.51", %".901"
  store i32 %"add.3", ptr %"R14"
  ; IMAD R10, R2, 0x3, R13
  %".904" = load i32, ptr %"R2"
  %".905" = load i32, ptr %"R13"
  %"imad_mul.21" = mul i32 %".904", 3
  %"imad_add.21" = add i32 %"imad_mul.21", %".905"
  store i32 %"imad_add.21", ptr %"R10"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".908" = load i32, ptr %"R11"
  %".909" = add i32 %".908", 4
  %".910" = add i32 %".909", 0
  store i32 %".910", ptr %"R12"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".913" = load i32, ptr %"R11"
  %".914" = load i32, ptr %"R17"
  %"imad_ext1.16" = zext i32 %".913" to i64
  %"imad_ext2.16" = zext i32 %".914" to i64
  %"imad_mul.22" = mul i64 %"imad_ext1.16", %"imad_ext2.16"
  %".915" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.22" = add i64 %"imad_mul.22", %".915"
  %".916" = and i64 %"imad_add.22", 18446744069414584320
  %".917" = lshr i64 %".916", 32
  %"trunc32.32" = trunc i64 %".917" to i32
  %"trunc32.33" = trunc i64 %"imad_add.22" to i32
  store i32 %"trunc32.33", ptr %"R18"
  store i32 %"trunc32.32", ptr %"R19"
  ; IADD3 R16, R14, 0x4, RZ
  %".921" = load i32, ptr %"R14"
  %".922" = add i32 %".921", 4
  %".923" = add i32 %".922", 0
  store i32 %".923", ptr %"R16"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".926" = load i32, ptr %"R10"
  %".927" = add i32 %".926", 4
  %".928" = add i32 %".927", 0
  store i32 %".928", ptr %"R15"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".931" = load i32, ptr %"R10"
  %".932" = load i32, ptr %"R17"
  %"imad_ext1.17" = zext i32 %".931" to i64
  %"imad_ext2.17" = zext i32 %".932" to i64
  %"imad_mul.23" = mul i64 %"imad_ext1.17", %"imad_ext2.17"
  %".933" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.23" = add i64 %"imad_mul.23", %".933"
  %".934" = and i64 %"imad_add.23", 18446744069414584320
  %".935" = lshr i64 %".934", 32
  %"trunc32.34" = trunc i64 %".935" to i32
  %"trunc32.35" = trunc i64 %"imad_add.23" to i32
  store i32 %"trunc32.35", ptr %"R22"
  store i32 %"trunc32.34", ptr %"R23"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".939" = load i32, ptr %"R14"
  %".940" = load i32, ptr %"R17"
  %"imad_ext1.18" = zext i32 %".939" to i64
  %"imad_ext2.18" = zext i32 %".940" to i64
  %"imad_mul.24" = mul i64 %"imad_ext1.18", %"imad_ext2.18"
  %".941" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.24" = add i64 %"imad_mul.24", %".941"
  %".942" = and i64 %"imad_add.24", 18446744069414584320
  %".943" = lshr i64 %".942", 32
  %"trunc32.36" = trunc i64 %".943" to i32
  %"trunc32.37" = trunc i64 %"imad_add.24" to i32
  store i32 %"trunc32.37", ptr %"R20"
  store i32 %"trunc32.36", ptr %"R21"
  ; LDG.E.SYS R39, [R18]
  %".947" = load i32, ptr %"R18"
  %"zext.96" = zext i32 %".947" to i64
  %".948" = load i32, ptr %"R19"
  %"zext.97" = zext i32 %".948" to i64
  %"shl.52" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.52", %"zext.96"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".949" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".950" = bitcast ptr %"R39" to ptr
  store float %".949", ptr %".950"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".953" = load i32, ptr %"R12"
  %".954" = load i32, ptr %"R17"
  %"imad_ext1.19" = zext i32 %".953" to i64
  %"imad_ext2.19" = zext i32 %".954" to i64
  %"imad_mul.25" = mul i64 %"imad_ext1.19", %"imad_ext2.19"
  %".955" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.25" = add i64 %"imad_mul.25", %".955"
  %".956" = and i64 %"imad_add.25", 18446744069414584320
  %".957" = lshr i64 %".956", 32
  %"trunc32.38" = trunc i64 %".957" to i32
  %"trunc32.39" = trunc i64 %"imad_add.25" to i32
  store i32 %"trunc32.39", ptr %"R12"
  store i32 %"trunc32.38", ptr %"R13"
  ; LDG.E.SYS R37, [R22]
  %".961" = load i32, ptr %"R22"
  %"zext.98" = zext i32 %".961" to i64
  %".962" = load i32, ptr %"R23"
  %"zext.99" = zext i32 %".962" to i64
  %"shl.53" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.53", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".963" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".964" = bitcast ptr %"R37" to ptr
  store float %".963", ptr %".964"
  ; LDG.E.SYS R36, [R20]
  %".967" = load i32, ptr %"R20"
  %"zext.100" = zext i32 %".967" to i64
  %".968" = load i32, ptr %"R21"
  %"zext.101" = zext i32 %".968" to i64
  %"shl.54" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.54", %"zext.100"
  %"inttoptr_bytes.50" = inttoptr i64 %"or.50" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".969" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".970" = bitcast ptr %"R36" to ptr
  store float %".969", ptr %".970"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".973" = load i32, ptr %"R15"
  %".974" = load i32, ptr %"R17"
  %"imad_ext1.20" = zext i32 %".973" to i64
  %"imad_ext2.20" = zext i32 %".974" to i64
  %"imad_mul.26" = mul i64 %"imad_ext1.20", %"imad_ext2.20"
  %".975" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.26" = add i64 %"imad_mul.26", %".975"
  %".976" = and i64 %"imad_add.26", 18446744069414584320
  %".977" = lshr i64 %".976", 32
  %"trunc32.40" = trunc i64 %".977" to i32
  %"trunc32.41" = trunc i64 %"imad_add.26" to i32
  store i32 %"trunc32.41", ptr %"R14"
  store i32 %"trunc32.40", ptr %"R15"
  ; LDG.E.SYS R34, [R18+0x4]
  %".981" = load i32, ptr %"R18"
  %"zext.102" = zext i32 %".981" to i64
  %".982" = load i32, ptr %"R19"
  %"zext.103" = zext i32 %".982" to i64
  %"shl.55" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.55", %"zext.102"
  %"ptr_plus_imm.36" = add i64 %"or.51", 4
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".983" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".984" = bitcast ptr %"R34" to ptr
  store float %".983", ptr %".984"
  ; LDG.E.SYS R38, [R22+0x4]
  %".987" = load i32, ptr %"R22"
  %"zext.104" = zext i32 %".987" to i64
  %".988" = load i32, ptr %"R23"
  %"zext.105" = zext i32 %".988" to i64
  %"shl.56" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.56", %"zext.104"
  %"ptr_plus_imm.37" = add i64 %"or.52", 4
  %"inttoptr_bytes.52" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".989" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".990" = bitcast ptr %"R38" to ptr
  store float %".989", ptr %".990"
  ; LDG.E.SYS R35, [R20+0x4]
  %".993" = load i32, ptr %"R20"
  %"zext.106" = zext i32 %".993" to i64
  %".994" = load i32, ptr %"R21"
  %"zext.107" = zext i32 %".994" to i64
  %"shl.57" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.57", %"zext.106"
  %"ptr_plus_imm.38" = add i64 %"or.53", 4
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".995" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".996" = bitcast ptr %"R35" to ptr
  store float %".995", ptr %".996"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".999" = load i32, ptr %"R16"
  %".1000" = load i32, ptr %"R17"
  %"imad_ext1.21" = zext i32 %".999" to i64
  %"imad_ext2.21" = zext i32 %".1000" to i64
  %"imad_mul.27" = mul i64 %"imad_ext1.21", %"imad_ext2.21"
  %".1001" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.27" = add i64 %"imad_mul.27", %".1001"
  %".1002" = and i64 %"imad_add.27", 18446744069414584320
  %".1003" = lshr i64 %".1002", 32
  %"trunc32.42" = trunc i64 %".1003" to i32
  %"trunc32.43" = trunc i64 %"imad_add.27" to i32
  store i32 %"trunc32.43", ptr %"R16"
  store i32 %"trunc32.42", ptr %"R17"
  ; LDG.E.SYS R24, [R18+0x8]
  %".1007" = load i32, ptr %"R18"
  %"zext.108" = zext i32 %".1007" to i64
  %".1008" = load i32, ptr %"R19"
  %"zext.109" = zext i32 %".1008" to i64
  %"shl.58" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.58", %"zext.108"
  %"ptr_plus_imm.39" = add i64 %"or.54", 8
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".1009" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".1010" = bitcast ptr %"R24" to ptr
  store float %".1009", ptr %".1010"
  ; LDG.E.SYS R40, [R22+0x8]
  %".1013" = load i32, ptr %"R22"
  %"zext.110" = zext i32 %".1013" to i64
  %".1014" = load i32, ptr %"R23"
  %"zext.111" = zext i32 %".1014" to i64
  %"shl.59" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.59", %"zext.110"
  %"ptr_plus_imm.40" = add i64 %"or.55", 8
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".1015" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".1016" = bitcast ptr %"R40" to ptr
  store float %".1015", ptr %".1016"
  ; LDG.E.SYS R41, [R20+0x8]
  %".1019" = load i32, ptr %"R20"
  %"zext.112" = zext i32 %".1019" to i64
  %".1020" = load i32, ptr %"R21"
  %"zext.113" = zext i32 %".1020" to i64
  %"shl.60" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.60", %"zext.112"
  %"ptr_plus_imm.41" = add i64 %"or.56", 8
  %"inttoptr_bytes.56" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".1021" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".1022" = bitcast ptr %"R41" to ptr
  store float %".1021", ptr %".1022"
  ; LDG.E.SYS R44, [R18+0xc]
  %".1025" = load i32, ptr %"R18"
  %"zext.114" = zext i32 %".1025" to i64
  %".1026" = load i32, ptr %"R19"
  %"zext.115" = zext i32 %".1026" to i64
  %"shl.61" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.61", %"zext.114"
  %"ptr_plus_imm.42" = add i64 %"or.57", 12
  %"inttoptr_bytes.57" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".1027" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".1028" = bitcast ptr %"R44" to ptr
  store float %".1027", ptr %".1028"
  ; LDG.E.SYS R42, [R22+0xc]
  %".1031" = load i32, ptr %"R22"
  %"zext.116" = zext i32 %".1031" to i64
  %".1032" = load i32, ptr %"R23"
  %"zext.117" = zext i32 %".1032" to i64
  %"shl.62" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.62", %"zext.116"
  %"ptr_plus_imm.43" = add i64 %"or.58", 12
  %"inttoptr_bytes.58" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".1033" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".1034" = bitcast ptr %"R42" to ptr
  store float %".1033", ptr %".1034"
  ; LDG.E.SYS R43, [R20+0xc]
  %".1037" = load i32, ptr %"R20"
  %"zext.118" = zext i32 %".1037" to i64
  %".1038" = load i32, ptr %"R21"
  %"zext.119" = zext i32 %".1038" to i64
  %"shl.63" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.63", %"zext.118"
  %"ptr_plus_imm.44" = add i64 %"or.59", 12
  %"inttoptr_bytes.59" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  %".1039" = load float, ptr addrspace(1) %"ptr_cast_for_access.59"
  %".1040" = bitcast ptr %"R43" to ptr
  store float %".1039", ptr %".1040"
  ; LDG.E.SYS R48, [R12]
  %".1043" = load i32, ptr %"R12"
  %"zext.120" = zext i32 %".1043" to i64
  %".1044" = load i32, ptr %"R13"
  %"zext.121" = zext i32 %".1044" to i64
  %"shl.64" = shl i64 %"zext.121", 32
  %"or.60" = or i64 %"shl.64", %"zext.120"
  %"inttoptr_bytes.60" = inttoptr i64 %"or.60" to ptr addrspace(1)
  %"ptr_cast_for_access.60" = bitcast ptr addrspace(1) %"inttoptr_bytes.60" to ptr addrspace(1)
  %".1045" = load float, ptr addrspace(1) %"ptr_cast_for_access.60"
  %".1046" = bitcast ptr %"R48" to ptr
  store float %".1045", ptr %".1046"
  ; LDG.E.SYS R46, [R14]
  %".1049" = load i32, ptr %"R14"
  %"zext.122" = zext i32 %".1049" to i64
  %".1050" = load i32, ptr %"R15"
  %"zext.123" = zext i32 %".1050" to i64
  %"shl.65" = shl i64 %"zext.123", 32
  %"or.61" = or i64 %"shl.65", %"zext.122"
  %"inttoptr_bytes.61" = inttoptr i64 %"or.61" to ptr addrspace(1)
  %"ptr_cast_for_access.61" = bitcast ptr addrspace(1) %"inttoptr_bytes.61" to ptr addrspace(1)
  %".1051" = load float, ptr addrspace(1) %"ptr_cast_for_access.61"
  %".1052" = bitcast ptr %"R46" to ptr
  store float %".1051", ptr %".1052"
  ; LDG.E.SYS R45, [R16]
  %".1055" = load i32, ptr %"R16"
  %"zext.124" = zext i32 %".1055" to i64
  %".1056" = load i32, ptr %"R17"
  %"zext.125" = zext i32 %".1056" to i64
  %"shl.66" = shl i64 %"zext.125", 32
  %"or.62" = or i64 %"shl.66", %"zext.124"
  %"inttoptr_bytes.62" = inttoptr i64 %"or.62" to ptr addrspace(1)
  %"ptr_cast_for_access.62" = bitcast ptr addrspace(1) %"inttoptr_bytes.62" to ptr addrspace(1)
  %".1057" = load float, ptr addrspace(1) %"ptr_cast_for_access.62"
  %".1058" = bitcast ptr %"R45" to ptr
  store float %".1057", ptr %".1058"
  ; LDG.E.SYS R56, [R12+0x4]
  %".1061" = load i32, ptr %"R12"
  %"zext.126" = zext i32 %".1061" to i64
  %".1062" = load i32, ptr %"R13"
  %"zext.127" = zext i32 %".1062" to i64
  %"shl.67" = shl i64 %"zext.127", 32
  %"or.63" = or i64 %"shl.67", %"zext.126"
  %"ptr_plus_imm.45" = add i64 %"or.63", 4
  %"inttoptr_bytes.63" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.63" = bitcast ptr addrspace(1) %"inttoptr_bytes.63" to ptr addrspace(1)
  %".1063" = load float, ptr addrspace(1) %"ptr_cast_for_access.63"
  %".1064" = bitcast ptr %"R56" to ptr
  store float %".1063", ptr %".1064"
  ; LDG.E.SYS R50, [R14+0x4]
  %".1067" = load i32, ptr %"R14"
  %"zext.128" = zext i32 %".1067" to i64
  %".1068" = load i32, ptr %"R15"
  %"zext.129" = zext i32 %".1068" to i64
  %"shl.68" = shl i64 %"zext.129", 32
  %"or.64" = or i64 %"shl.68", %"zext.128"
  %"ptr_plus_imm.46" = add i64 %"or.64", 4
  %"inttoptr_bytes.64" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.64" = bitcast ptr addrspace(1) %"inttoptr_bytes.64" to ptr addrspace(1)
  %".1069" = load float, ptr addrspace(1) %"ptr_cast_for_access.64"
  %".1070" = bitcast ptr %"R50" to ptr
  store float %".1069", ptr %".1070"
  ; LDG.E.SYS R47, [R16+0x4]
  %".1073" = load i32, ptr %"R16"
  %"zext.130" = zext i32 %".1073" to i64
  %".1074" = load i32, ptr %"R17"
  %"zext.131" = zext i32 %".1074" to i64
  %"shl.69" = shl i64 %"zext.131", 32
  %"or.65" = or i64 %"shl.69", %"zext.130"
  %"ptr_plus_imm.47" = add i64 %"or.65", 4
  %"inttoptr_bytes.65" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.65" = bitcast ptr addrspace(1) %"inttoptr_bytes.65" to ptr addrspace(1)
  %".1075" = load float, ptr addrspace(1) %"ptr_cast_for_access.65"
  %".1076" = bitcast ptr %"R47" to ptr
  store float %".1075", ptr %".1076"
  ; LDG.E.SYS R10, [R12+0x8]
  %".1079" = load i32, ptr %"R12"
  %"zext.132" = zext i32 %".1079" to i64
  %".1080" = load i32, ptr %"R13"
  %"zext.133" = zext i32 %".1080" to i64
  %"shl.70" = shl i64 %"zext.133", 32
  %"or.66" = or i64 %"shl.70", %"zext.132"
  %"ptr_plus_imm.48" = add i64 %"or.66", 8
  %"inttoptr_bytes.66" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.66" = bitcast ptr addrspace(1) %"inttoptr_bytes.66" to ptr addrspace(1)
  %".1081" = load float, ptr addrspace(1) %"ptr_cast_for_access.66"
  %".1082" = bitcast ptr %"R10" to ptr
  store float %".1081", ptr %".1082"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1085" = load i32, ptr %"R14"
  %"zext.134" = zext i32 %".1085" to i64
  %".1086" = load i32, ptr %"R15"
  %"zext.135" = zext i32 %".1086" to i64
  %"shl.71" = shl i64 %"zext.135", 32
  %"or.67" = or i64 %"shl.71", %"zext.134"
  %"ptr_plus_imm.49" = add i64 %"or.67", 8
  %"inttoptr_bytes.67" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.67" = bitcast ptr addrspace(1) %"inttoptr_bytes.67" to ptr addrspace(1)
  %".1087" = load float, ptr addrspace(1) %"ptr_cast_for_access.67"
  %".1088" = bitcast ptr %"R25" to ptr
  store float %".1087", ptr %".1088"
  ; LDG.E.SYS R19, [R16+0x8]
  %".1091" = load i32, ptr %"R16"
  %"zext.136" = zext i32 %".1091" to i64
  %".1092" = load i32, ptr %"R17"
  %"zext.137" = zext i32 %".1092" to i64
  %"shl.72" = shl i64 %"zext.137", 32
  %"or.68" = or i64 %"shl.72", %"zext.136"
  %"ptr_plus_imm.50" = add i64 %"or.68", 8
  %"inttoptr_bytes.68" = inttoptr i64 %"ptr_plus_imm.50" to ptr addrspace(1)
  %"ptr_cast_for_access.68" = bitcast ptr addrspace(1) %"inttoptr_bytes.68" to ptr addrspace(1)
  %".1093" = load float, ptr addrspace(1) %"ptr_cast_for_access.68"
  %".1094" = bitcast ptr %"R19" to ptr
  store float %".1093", ptr %".1094"
  ; LDG.E.SYS R18, [R12+0xc]
  %".1097" = load i32, ptr %"R12"
  %"zext.138" = zext i32 %".1097" to i64
  %".1098" = load i32, ptr %"R13"
  %"zext.139" = zext i32 %".1098" to i64
  %"shl.73" = shl i64 %"zext.139", 32
  %"or.69" = or i64 %"shl.73", %"zext.138"
  %"ptr_plus_imm.51" = add i64 %"or.69", 12
  %"inttoptr_bytes.69" = inttoptr i64 %"ptr_plus_imm.51" to ptr addrspace(1)
  %"ptr_cast_for_access.69" = bitcast ptr addrspace(1) %"inttoptr_bytes.69" to ptr addrspace(1)
  %".1099" = load float, ptr addrspace(1) %"ptr_cast_for_access.69"
  %".1100" = bitcast ptr %"R18" to ptr
  store float %".1099", ptr %".1100"
  ; LDG.E.SYS R20, [R14+0xc]
  %".1103" = load i32, ptr %"R14"
  %"zext.140" = zext i32 %".1103" to i64
  %".1104" = load i32, ptr %"R15"
  %"zext.141" = zext i32 %".1104" to i64
  %"shl.74" = shl i64 %"zext.141", 32
  %"or.70" = or i64 %"shl.74", %"zext.140"
  %"ptr_plus_imm.52" = add i64 %"or.70", 12
  %"inttoptr_bytes.70" = inttoptr i64 %"ptr_plus_imm.52" to ptr addrspace(1)
  %"ptr_cast_for_access.70" = bitcast ptr addrspace(1) %"inttoptr_bytes.70" to ptr addrspace(1)
  %".1105" = load float, ptr addrspace(1) %"ptr_cast_for_access.70"
  %".1106" = bitcast ptr %"R20" to ptr
  store float %".1105", ptr %".1106"
  ; LDG.E.SYS R21, [R16+0xc]
  %".1109" = load i32, ptr %"R16"
  %"zext.142" = zext i32 %".1109" to i64
  %".1110" = load i32, ptr %"R17"
  %"zext.143" = zext i32 %".1110" to i64
  %"shl.75" = shl i64 %"zext.143", 32
  %"or.71" = or i64 %"shl.75", %"zext.142"
  %"ptr_plus_imm.53" = add i64 %"or.71", 12
  %"inttoptr_bytes.71" = inttoptr i64 %"ptr_plus_imm.53" to ptr addrspace(1)
  %"ptr_cast_for_access.71" = bitcast ptr addrspace(1) %"inttoptr_bytes.71" to ptr addrspace(1)
  %".1111" = load float, ptr addrspace(1) %"ptr_cast_for_access.71"
  %".1112" = bitcast ptr %"R21" to ptr
  store float %".1111", ptr %".1112"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1115" = xor i1 1, 1
  %".1116" = and i1 %".1115", 1
  %".1117" = and i1 %".1116", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".1119" = load i32, ptr %"R9"
  %".1120" = add i32 %".1119", -8
  %".1121" = add i32 %".1120", 0
  store i32 %".1121", ptr %"R9"
  ; IADD3 R11, R11, 0x8, RZ
  %".1124" = load i32, ptr %"R11"
  %".1125" = add i32 %".1124", 8
  %".1126" = add i32 %".1125", 0
  store i32 %".1126", ptr %"R11"
  ; FFMA R37, R37, R39, R52
  %"cast_ptr.96" = bitcast ptr %"R37" to ptr
  %".1129" = load float, ptr %"cast_ptr.96"
  %"cast_ptr.97" = bitcast ptr %"R39" to ptr
  %".1130" = load float, ptr %"cast_ptr.97"
  %"cast_ptr.98" = bitcast ptr %"R52" to ptr
  %".1131" = load float, ptr %"cast_ptr.98"
  %"fmul.32" = fmul float %".1129", %".1130"
  %"fadd.32" = fadd float %"fmul.32", %".1131"
  %".1132" = bitcast ptr %"R37" to ptr
  store float %"fadd.32", ptr %".1132"
  ; FFMA R36, R39, R36, R54
  %"cast_ptr.99" = bitcast ptr %"R39" to ptr
  %".1135" = load float, ptr %"cast_ptr.99"
  %"cast_ptr.100" = bitcast ptr %"R36" to ptr
  %".1136" = load float, ptr %"cast_ptr.100"
  %"cast_ptr.101" = bitcast ptr %"R54" to ptr
  %".1137" = load float, ptr %"cast_ptr.101"
  %"fmul.33" = fmul float %".1135", %".1136"
  %"fadd.33" = fadd float %"fmul.33", %".1137"
  %".1138" = bitcast ptr %"R36" to ptr
  store float %"fadd.33", ptr %".1138"
  ; FFMA R37, R38, R34, R37
  %"cast_ptr.102" = bitcast ptr %"R38" to ptr
  %".1141" = load float, ptr %"cast_ptr.102"
  %"cast_ptr.103" = bitcast ptr %"R34" to ptr
  %".1142" = load float, ptr %"cast_ptr.103"
  %"cast_ptr.104" = bitcast ptr %"R37" to ptr
  %".1143" = load float, ptr %"cast_ptr.104"
  %"fmul.34" = fmul float %".1141", %".1142"
  %"fadd.34" = fadd float %"fmul.34", %".1143"
  %".1144" = bitcast ptr %"R37" to ptr
  store float %"fadd.34", ptr %".1144"
  ; FFMA R35, R34, R35, R36
  %"cast_ptr.105" = bitcast ptr %"R34" to ptr
  %".1147" = load float, ptr %"cast_ptr.105"
  %"cast_ptr.106" = bitcast ptr %"R35" to ptr
  %".1148" = load float, ptr %"cast_ptr.106"
  %"cast_ptr.107" = bitcast ptr %"R36" to ptr
  %".1149" = load float, ptr %"cast_ptr.107"
  %"fmul.35" = fmul float %".1147", %".1148"
  %"fadd.35" = fadd float %"fmul.35", %".1149"
  %".1150" = bitcast ptr %"R35" to ptr
  store float %"fadd.35", ptr %".1150"
  ; FFMA R37, R40, R24, R37
  %"cast_ptr.108" = bitcast ptr %"R40" to ptr
  %".1153" = load float, ptr %"cast_ptr.108"
  %"cast_ptr.109" = bitcast ptr %"R24" to ptr
  %".1154" = load float, ptr %"cast_ptr.109"
  %"cast_ptr.110" = bitcast ptr %"R37" to ptr
  %".1155" = load float, ptr %"cast_ptr.110"
  %"fmul.36" = fmul float %".1153", %".1154"
  %"fadd.36" = fadd float %"fmul.36", %".1155"
  %".1156" = bitcast ptr %"R37" to ptr
  store float %"fadd.36", ptr %".1156"
  ; FFMA R35, R24, R41, R35
  %"cast_ptr.111" = bitcast ptr %"R24" to ptr
  %".1159" = load float, ptr %"cast_ptr.111"
  %"cast_ptr.112" = bitcast ptr %"R41" to ptr
  %".1160" = load float, ptr %"cast_ptr.112"
  %"cast_ptr.113" = bitcast ptr %"R35" to ptr
  %".1161" = load float, ptr %"cast_ptr.113"
  %"fmul.37" = fmul float %".1159", %".1160"
  %"fadd.37" = fadd float %"fmul.37", %".1161"
  %".1162" = bitcast ptr %"R35" to ptr
  store float %"fadd.37", ptr %".1162"
  ; FFMA R37, R42, R44, R37
  %"cast_ptr.114" = bitcast ptr %"R42" to ptr
  %".1165" = load float, ptr %"cast_ptr.114"
  %"cast_ptr.115" = bitcast ptr %"R44" to ptr
  %".1166" = load float, ptr %"cast_ptr.115"
  %"cast_ptr.116" = bitcast ptr %"R37" to ptr
  %".1167" = load float, ptr %"cast_ptr.116"
  %"fmul.38" = fmul float %".1165", %".1166"
  %"fadd.38" = fadd float %"fmul.38", %".1167"
  %".1168" = bitcast ptr %"R37" to ptr
  store float %"fadd.38", ptr %".1168"
  ; FFMA R35, R44, R43, R35
  %"cast_ptr.117" = bitcast ptr %"R44" to ptr
  %".1171" = load float, ptr %"cast_ptr.117"
  %"cast_ptr.118" = bitcast ptr %"R43" to ptr
  %".1172" = load float, ptr %"cast_ptr.118"
  %"cast_ptr.119" = bitcast ptr %"R35" to ptr
  %".1173" = load float, ptr %"cast_ptr.119"
  %"fmul.39" = fmul float %".1171", %".1172"
  %"fadd.39" = fadd float %"fmul.39", %".1173"
  %".1174" = bitcast ptr %"R35" to ptr
  store float %"fadd.39", ptr %".1174"
  ; FFMA R37, R46, R48, R37
  %"cast_ptr.120" = bitcast ptr %"R46" to ptr
  %".1177" = load float, ptr %"cast_ptr.120"
  %"cast_ptr.121" = bitcast ptr %"R48" to ptr
  %".1178" = load float, ptr %"cast_ptr.121"
  %"cast_ptr.122" = bitcast ptr %"R37" to ptr
  %".1179" = load float, ptr %"cast_ptr.122"
  %"fmul.40" = fmul float %".1177", %".1178"
  %"fadd.40" = fadd float %"fmul.40", %".1179"
  %".1180" = bitcast ptr %"R37" to ptr
  store float %"fadd.40", ptr %".1180"
  ; FFMA R35, R48, R45, R35
  %"cast_ptr.123" = bitcast ptr %"R48" to ptr
  %".1183" = load float, ptr %"cast_ptr.123"
  %"cast_ptr.124" = bitcast ptr %"R45" to ptr
  %".1184" = load float, ptr %"cast_ptr.124"
  %"cast_ptr.125" = bitcast ptr %"R35" to ptr
  %".1185" = load float, ptr %"cast_ptr.125"
  %"fmul.41" = fmul float %".1183", %".1184"
  %"fadd.41" = fadd float %"fmul.41", %".1185"
  %".1186" = bitcast ptr %"R35" to ptr
  store float %"fadd.41", ptr %".1186"
  ; FFMA R37, R50, R56, R37
  %"cast_ptr.126" = bitcast ptr %"R50" to ptr
  %".1189" = load float, ptr %"cast_ptr.126"
  %"cast_ptr.127" = bitcast ptr %"R56" to ptr
  %".1190" = load float, ptr %"cast_ptr.127"
  %"cast_ptr.128" = bitcast ptr %"R37" to ptr
  %".1191" = load float, ptr %"cast_ptr.128"
  %"fmul.42" = fmul float %".1189", %".1190"
  %"fadd.42" = fadd float %"fmul.42", %".1191"
  %".1192" = bitcast ptr %"R37" to ptr
  store float %"fadd.42", ptr %".1192"
  ; FFMA R35, R56, R47, R35
  %"cast_ptr.129" = bitcast ptr %"R56" to ptr
  %".1195" = load float, ptr %"cast_ptr.129"
  %"cast_ptr.130" = bitcast ptr %"R47" to ptr
  %".1196" = load float, ptr %"cast_ptr.130"
  %"cast_ptr.131" = bitcast ptr %"R35" to ptr
  %".1197" = load float, ptr %"cast_ptr.131"
  %"fmul.43" = fmul float %".1195", %".1196"
  %"fadd.43" = fadd float %"fmul.43", %".1197"
  %".1198" = bitcast ptr %"R35" to ptr
  store float %"fadd.43", ptr %".1198"
  ; FFMA R25, R25, R10, R37
  %"cast_ptr.132" = bitcast ptr %"R25" to ptr
  %".1201" = load float, ptr %"cast_ptr.132"
  %"cast_ptr.133" = bitcast ptr %"R10" to ptr
  %".1202" = load float, ptr %"cast_ptr.133"
  %"cast_ptr.134" = bitcast ptr %"R37" to ptr
  %".1203" = load float, ptr %"cast_ptr.134"
  %"fmul.44" = fmul float %".1201", %".1202"
  %"fadd.44" = fadd float %"fmul.44", %".1203"
  %".1204" = bitcast ptr %"R25" to ptr
  store float %"fadd.44", ptr %".1204"
  ; FFMA R19, R10, R19, R35
  %"cast_ptr.135" = bitcast ptr %"R10" to ptr
  %".1207" = load float, ptr %"cast_ptr.135"
  %"cast_ptr.136" = bitcast ptr %"R19" to ptr
  %".1208" = load float, ptr %"cast_ptr.136"
  %"cast_ptr.137" = bitcast ptr %"R35" to ptr
  %".1209" = load float, ptr %"cast_ptr.137"
  %"fmul.45" = fmul float %".1207", %".1208"
  %"fadd.45" = fadd float %"fmul.45", %".1209"
  %".1210" = bitcast ptr %"R19" to ptr
  store float %"fadd.45", ptr %".1210"
  ; FFMA R52, R20, R18, R25
  %"cast_ptr.138" = bitcast ptr %"R20" to ptr
  %".1213" = load float, ptr %"cast_ptr.138"
  %"cast_ptr.139" = bitcast ptr %"R18" to ptr
  %".1214" = load float, ptr %"cast_ptr.139"
  %"cast_ptr.140" = bitcast ptr %"R25" to ptr
  %".1215" = load float, ptr %"cast_ptr.140"
  %"fmul.46" = fmul float %".1213", %".1214"
  %"fadd.46" = fadd float %"fmul.46", %".1215"
  %".1216" = bitcast ptr %"R52" to ptr
  store float %"fadd.46", ptr %".1216"
  ; FFMA R54, R18, R21, R19
  %"cast_ptr.141" = bitcast ptr %"R18" to ptr
  %".1219" = load float, ptr %"cast_ptr.141"
  %"cast_ptr.142" = bitcast ptr %"R21" to ptr
  %".1220" = load float, ptr %"cast_ptr.142"
  %"cast_ptr.143" = bitcast ptr %"R19" to ptr
  %".1221" = load float, ptr %"cast_ptr.143"
  %"fmul.47" = fmul float %".1219", %".1220"
  %"fadd.47" = fadd float %"fmul.47", %".1221"
  %".1222" = bitcast ptr %"R54" to ptr
  store float %"fadd.47", ptr %".1222"
  br label %".L_x_6"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1226" = load i32, ptr %"R9"
  %".1227" = load i1, ptr %"P0"
  %"cmp.10" = icmp ne i32 %".1226", 0
  %".1228" = xor i1 %"cmp.10", -1
  %".1229" = or i1 %"cmp.10", %".1227"
  %".1230" = or i1 %".1228", %".1227"
  store i1 %".1229", ptr %"P0"
  ; @!P0 BRA `(.L_x_2)
  %".1233" = load i1, ptr %"P0"
  %".1234" = icmp ne i1 %".1233", 1
  br i1 %".1234", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1237" = load i32, ptr %"R0"
  %".1238" = load i32, ptr %"R11"
  %".1239" = add i32 %".1237", %".1238"
  %".1240" = add i32 %".1239", 0
  store i32 %".1240", ptr %"R13"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1245" = load i32, ptr %"R2"
  %".1246" = load i32, ptr %"R13"
  %"shl.76" = shl i32 %".1245", 2
  %"add.4" = add i32 %"shl.76", %".1246"
  store i32 %"add.4", ptr %"R17"
  ; IMAD R15, R2, 0x3, R13
  %".1249" = load i32, ptr %"R2"
  %".1250" = load i32, ptr %"R13"
  %"imad_mul.28" = mul i32 %".1249", 3
  %"imad_add.28" = add i32 %"imad_mul.28", %".1250"
  store i32 %"imad_add.28", ptr %"R15"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1253" = load i32, ptr %"R11"
  %".1254" = load i32, ptr %"R16"
  %"imad_ext1.22" = zext i32 %".1253" to i64
  %"imad_ext2.22" = zext i32 %".1254" to i64
  %"imad_mul.29" = mul i64 %"imad_ext1.22", %"imad_ext2.22"
  %".1255" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.29" = add i64 %"imad_mul.29", %".1255"
  %".1256" = and i64 %"imad_add.29", 18446744069414584320
  %".1257" = lshr i64 %".1256", 32
  %"trunc32.44" = trunc i64 %".1257" to i32
  %"trunc32.45" = trunc i64 %"imad_add.29" to i32
  store i32 %"trunc32.45", ptr %"R12"
  store i32 %"trunc32.44", ptr %"R13"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1261" = load i32, ptr %"R15"
  %".1262" = load i32, ptr %"R16"
  %"imad_ext1.23" = zext i32 %".1261" to i64
  %"imad_ext2.23" = zext i32 %".1262" to i64
  %"imad_mul.30" = mul i64 %"imad_ext1.23", %"imad_ext2.23"
  %".1263" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.30" = add i64 %"imad_mul.30", %".1263"
  %".1264" = and i64 %"imad_add.30", 18446744069414584320
  %".1265" = lshr i64 %".1264", 32
  %"trunc32.46" = trunc i64 %".1265" to i32
  %"trunc32.47" = trunc i64 %"imad_add.30" to i32
  store i32 %"trunc32.47", ptr %"R14"
  store i32 %"trunc32.46", ptr %"R15"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1269" = load i32, ptr %"R17"
  %".1270" = load i32, ptr %"R16"
  %"imad_ext1.24" = zext i32 %".1269" to i64
  %"imad_ext2.24" = zext i32 %".1270" to i64
  %"imad_mul.31" = mul i64 %"imad_ext1.24", %"imad_ext2.24"
  %".1271" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.31" = add i64 %"imad_mul.31", %".1271"
  %".1272" = and i64 %"imad_add.31", 18446744069414584320
  %".1273" = lshr i64 %".1272", 32
  %"trunc32.48" = trunc i64 %".1273" to i32
  %"trunc32.49" = trunc i64 %"imad_add.31" to i32
  store i32 %"trunc32.49", ptr %"R16"
  store i32 %"trunc32.48", ptr %"R17"
  ; LDG.E.SYS R21, [R12]
  %".1277" = load i32, ptr %"R12"
  %"zext.144" = zext i32 %".1277" to i64
  %".1278" = load i32, ptr %"R13"
  %"zext.145" = zext i32 %".1278" to i64
  %"shl.77" = shl i64 %"zext.145", 32
  %"or.72" = or i64 %"shl.77", %"zext.144"
  %"inttoptr_bytes.72" = inttoptr i64 %"or.72" to ptr addrspace(1)
  %"ptr_cast_for_access.72" = bitcast ptr addrspace(1) %"inttoptr_bytes.72" to ptr addrspace(1)
  %".1279" = load float, ptr addrspace(1) %"ptr_cast_for_access.72"
  %".1280" = bitcast ptr %"R21" to ptr
  store float %".1279", ptr %".1280"
  ; LDG.E.SYS R19, [R14]
  %".1283" = load i32, ptr %"R14"
  %"zext.146" = zext i32 %".1283" to i64
  %".1284" = load i32, ptr %"R15"
  %"zext.147" = zext i32 %".1284" to i64
  %"shl.78" = shl i64 %"zext.147", 32
  %"or.73" = or i64 %"shl.78", %"zext.146"
  %"inttoptr_bytes.73" = inttoptr i64 %"or.73" to ptr addrspace(1)
  %"ptr_cast_for_access.73" = bitcast ptr addrspace(1) %"inttoptr_bytes.73" to ptr addrspace(1)
  %".1285" = load float, ptr addrspace(1) %"ptr_cast_for_access.73"
  %".1286" = bitcast ptr %"R19" to ptr
  store float %".1285", ptr %".1286"
  ; LDG.E.SYS R10, [R16]
  %".1289" = load i32, ptr %"R16"
  %"zext.148" = zext i32 %".1289" to i64
  %".1290" = load i32, ptr %"R17"
  %"zext.149" = zext i32 %".1290" to i64
  %"shl.79" = shl i64 %"zext.149", 32
  %"or.74" = or i64 %"shl.79", %"zext.148"
  %"inttoptr_bytes.74" = inttoptr i64 %"or.74" to ptr addrspace(1)
  %"ptr_cast_for_access.74" = bitcast ptr addrspace(1) %"inttoptr_bytes.74" to ptr addrspace(1)
  %".1291" = load float, ptr addrspace(1) %"ptr_cast_for_access.74"
  %".1292" = bitcast ptr %"R10" to ptr
  store float %".1291", ptr %".1292"
  ; LDG.E.SYS R23, [R12+0x4]
  %".1295" = load i32, ptr %"R12"
  %"zext.150" = zext i32 %".1295" to i64
  %".1296" = load i32, ptr %"R13"
  %"zext.151" = zext i32 %".1296" to i64
  %"shl.80" = shl i64 %"zext.151", 32
  %"or.75" = or i64 %"shl.80", %"zext.150"
  %"ptr_plus_imm.54" = add i64 %"or.75", 4
  %"inttoptr_bytes.75" = inttoptr i64 %"ptr_plus_imm.54" to ptr addrspace(1)
  %"ptr_cast_for_access.75" = bitcast ptr addrspace(1) %"inttoptr_bytes.75" to ptr addrspace(1)
  %".1297" = load float, ptr addrspace(1) %"ptr_cast_for_access.75"
  %".1298" = bitcast ptr %"R23" to ptr
  store float %".1297", ptr %".1298"
  ; LDG.E.SYS R18, [R14+0x4]
  %".1301" = load i32, ptr %"R14"
  %"zext.152" = zext i32 %".1301" to i64
  %".1302" = load i32, ptr %"R15"
  %"zext.153" = zext i32 %".1302" to i64
  %"shl.81" = shl i64 %"zext.153", 32
  %"or.76" = or i64 %"shl.81", %"zext.152"
  %"ptr_plus_imm.55" = add i64 %"or.76", 4
  %"inttoptr_bytes.76" = inttoptr i64 %"ptr_plus_imm.55" to ptr addrspace(1)
  %"ptr_cast_for_access.76" = bitcast ptr addrspace(1) %"inttoptr_bytes.76" to ptr addrspace(1)
  %".1303" = load float, ptr addrspace(1) %"ptr_cast_for_access.76"
  %".1304" = bitcast ptr %"R18" to ptr
  store float %".1303", ptr %".1304"
  ; LDG.E.SYS R20, [R16+0x4]
  %".1307" = load i32, ptr %"R16"
  %"zext.154" = zext i32 %".1307" to i64
  %".1308" = load i32, ptr %"R17"
  %"zext.155" = zext i32 %".1308" to i64
  %"shl.82" = shl i64 %"zext.155", 32
  %"or.77" = or i64 %"shl.82", %"zext.154"
  %"ptr_plus_imm.56" = add i64 %"or.77", 4
  %"inttoptr_bytes.77" = inttoptr i64 %"ptr_plus_imm.56" to ptr addrspace(1)
  %"ptr_cast_for_access.77" = bitcast ptr addrspace(1) %"inttoptr_bytes.77" to ptr addrspace(1)
  %".1309" = load float, ptr addrspace(1) %"ptr_cast_for_access.77"
  %".1310" = bitcast ptr %"R20" to ptr
  store float %".1309", ptr %".1310"
  ; LDG.E.SYS R35, [R12+0x8]
  %".1313" = load i32, ptr %"R12"
  %"zext.156" = zext i32 %".1313" to i64
  %".1314" = load i32, ptr %"R13"
  %"zext.157" = zext i32 %".1314" to i64
  %"shl.83" = shl i64 %"zext.157", 32
  %"or.78" = or i64 %"shl.83", %"zext.156"
  %"ptr_plus_imm.57" = add i64 %"or.78", 8
  %"inttoptr_bytes.78" = inttoptr i64 %"ptr_plus_imm.57" to ptr addrspace(1)
  %"ptr_cast_for_access.78" = bitcast ptr addrspace(1) %"inttoptr_bytes.78" to ptr addrspace(1)
  %".1315" = load float, ptr addrspace(1) %"ptr_cast_for_access.78"
  %".1316" = bitcast ptr %"R35" to ptr
  store float %".1315", ptr %".1316"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1319" = load i32, ptr %"R14"
  %"zext.158" = zext i32 %".1319" to i64
  %".1320" = load i32, ptr %"R15"
  %"zext.159" = zext i32 %".1320" to i64
  %"shl.84" = shl i64 %"zext.159", 32
  %"or.79" = or i64 %"shl.84", %"zext.158"
  %"ptr_plus_imm.58" = add i64 %"or.79", 8
  %"inttoptr_bytes.79" = inttoptr i64 %"ptr_plus_imm.58" to ptr addrspace(1)
  %"ptr_cast_for_access.79" = bitcast ptr addrspace(1) %"inttoptr_bytes.79" to ptr addrspace(1)
  %".1321" = load float, ptr addrspace(1) %"ptr_cast_for_access.79"
  %".1322" = bitcast ptr %"R25" to ptr
  store float %".1321", ptr %".1322"
  ; LDG.E.SYS R22, [R16+0x8]
  %".1325" = load i32, ptr %"R16"
  %"zext.160" = zext i32 %".1325" to i64
  %".1326" = load i32, ptr %"R17"
  %"zext.161" = zext i32 %".1326" to i64
  %"shl.85" = shl i64 %"zext.161", 32
  %"or.80" = or i64 %"shl.85", %"zext.160"
  %"ptr_plus_imm.59" = add i64 %"or.80", 8
  %"inttoptr_bytes.80" = inttoptr i64 %"ptr_plus_imm.59" to ptr addrspace(1)
  %"ptr_cast_for_access.80" = bitcast ptr addrspace(1) %"inttoptr_bytes.80" to ptr addrspace(1)
  %".1327" = load float, ptr addrspace(1) %"ptr_cast_for_access.80"
  %".1328" = bitcast ptr %"R22" to ptr
  store float %".1327", ptr %".1328"
  ; LDG.E.SYS R39, [R12+0xc]
  %".1331" = load i32, ptr %"R12"
  %"zext.162" = zext i32 %".1331" to i64
  %".1332" = load i32, ptr %"R13"
  %"zext.163" = zext i32 %".1332" to i64
  %"shl.86" = shl i64 %"zext.163", 32
  %"or.81" = or i64 %"shl.86", %"zext.162"
  %"ptr_plus_imm.60" = add i64 %"or.81", 12
  %"inttoptr_bytes.81" = inttoptr i64 %"ptr_plus_imm.60" to ptr addrspace(1)
  %"ptr_cast_for_access.81" = bitcast ptr addrspace(1) %"inttoptr_bytes.81" to ptr addrspace(1)
  %".1333" = load float, ptr addrspace(1) %"ptr_cast_for_access.81"
  %".1334" = bitcast ptr %"R39" to ptr
  store float %".1333", ptr %".1334"
  ; LDG.E.SYS R37, [R14+0xc]
  %".1337" = load i32, ptr %"R14"
  %"zext.164" = zext i32 %".1337" to i64
  %".1338" = load i32, ptr %"R15"
  %"zext.165" = zext i32 %".1338" to i64
  %"shl.87" = shl i64 %"zext.165", 32
  %"or.82" = or i64 %"shl.87", %"zext.164"
  %"ptr_plus_imm.61" = add i64 %"or.82", 12
  %"inttoptr_bytes.82" = inttoptr i64 %"ptr_plus_imm.61" to ptr addrspace(1)
  %"ptr_cast_for_access.82" = bitcast ptr addrspace(1) %"inttoptr_bytes.82" to ptr addrspace(1)
  %".1339" = load float, ptr addrspace(1) %"ptr_cast_for_access.82"
  %".1340" = bitcast ptr %"R37" to ptr
  store float %".1339", ptr %".1340"
  ; LDG.E.SYS R24, [R16+0xc]
  %".1343" = load i32, ptr %"R16"
  %"zext.166" = zext i32 %".1343" to i64
  %".1344" = load i32, ptr %"R17"
  %"zext.167" = zext i32 %".1344" to i64
  %"shl.88" = shl i64 %"zext.167", 32
  %"or.83" = or i64 %"shl.88", %"zext.166"
  %"ptr_plus_imm.62" = add i64 %"or.83", 12
  %"inttoptr_bytes.83" = inttoptr i64 %"ptr_plus_imm.62" to ptr addrspace(1)
  %"ptr_cast_for_access.83" = bitcast ptr addrspace(1) %"inttoptr_bytes.83" to ptr addrspace(1)
  %".1345" = load float, ptr addrspace(1) %"ptr_cast_for_access.83"
  %".1346" = bitcast ptr %"R24" to ptr
  store float %".1345", ptr %".1346"
  ; IADD3 R9, R9, -0x4, RZ
  %".1349" = load i32, ptr %"R9"
  %".1350" = add i32 %".1349", -4
  %".1351" = add i32 %".1350", 0
  store i32 %".1351", ptr %"R9"
  ; IADD3 R11, R11, 0x4, RZ
  %".1354" = load i32, ptr %"R11"
  %".1355" = add i32 %".1354", 4
  %".1356" = add i32 %".1355", 0
  store i32 %".1356", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1359" = load i32, ptr %"R9"
  %".1360" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".1359", 0
  %".1361" = xor i1 %"cmp.11", -1
  %".1362" = and i1 %"cmp.11", %".1360"
  %".1363" = and i1 %".1361", %".1360"
  store i1 %".1362", ptr %"P0"
  ; FFMA R19, R19, R21, R52
  %"cast_ptr.144" = bitcast ptr %"R19" to ptr
  %".1366" = load float, ptr %"cast_ptr.144"
  %"cast_ptr.145" = bitcast ptr %"R21" to ptr
  %".1367" = load float, ptr %"cast_ptr.145"
  %"cast_ptr.146" = bitcast ptr %"R52" to ptr
  %".1368" = load float, ptr %"cast_ptr.146"
  %"fmul.48" = fmul float %".1366", %".1367"
  %"fadd.48" = fadd float %"fmul.48", %".1368"
  %".1369" = bitcast ptr %"R19" to ptr
  store float %"fadd.48", ptr %".1369"
  ; FFMA R10, R21, R10, R54
  %"cast_ptr.147" = bitcast ptr %"R21" to ptr
  %".1372" = load float, ptr %"cast_ptr.147"
  %"cast_ptr.148" = bitcast ptr %"R10" to ptr
  %".1373" = load float, ptr %"cast_ptr.148"
  %"cast_ptr.149" = bitcast ptr %"R54" to ptr
  %".1374" = load float, ptr %"cast_ptr.149"
  %"fmul.49" = fmul float %".1372", %".1373"
  %"fadd.49" = fadd float %"fmul.49", %".1374"
  %".1375" = bitcast ptr %"R10" to ptr
  store float %"fadd.49", ptr %".1375"
  ; FFMA R18, R18, R23, R19
  %"cast_ptr.150" = bitcast ptr %"R18" to ptr
  %".1378" = load float, ptr %"cast_ptr.150"
  %"cast_ptr.151" = bitcast ptr %"R23" to ptr
  %".1379" = load float, ptr %"cast_ptr.151"
  %"cast_ptr.152" = bitcast ptr %"R19" to ptr
  %".1380" = load float, ptr %"cast_ptr.152"
  %"fmul.50" = fmul float %".1378", %".1379"
  %"fadd.50" = fadd float %"fmul.50", %".1380"
  %".1381" = bitcast ptr %"R18" to ptr
  store float %"fadd.50", ptr %".1381"
  ; FFMA R10, R23, R20, R10
  %"cast_ptr.153" = bitcast ptr %"R23" to ptr
  %".1384" = load float, ptr %"cast_ptr.153"
  %"cast_ptr.154" = bitcast ptr %"R20" to ptr
  %".1385" = load float, ptr %"cast_ptr.154"
  %"cast_ptr.155" = bitcast ptr %"R10" to ptr
  %".1386" = load float, ptr %"cast_ptr.155"
  %"fmul.51" = fmul float %".1384", %".1385"
  %"fadd.51" = fadd float %"fmul.51", %".1386"
  %".1387" = bitcast ptr %"R10" to ptr
  store float %"fadd.51", ptr %".1387"
  ; FFMA R18, R25, R35, R18
  %"cast_ptr.156" = bitcast ptr %"R25" to ptr
  %".1390" = load float, ptr %"cast_ptr.156"
  %"cast_ptr.157" = bitcast ptr %"R35" to ptr
  %".1391" = load float, ptr %"cast_ptr.157"
  %"cast_ptr.158" = bitcast ptr %"R18" to ptr
  %".1392" = load float, ptr %"cast_ptr.158"
  %"fmul.52" = fmul float %".1390", %".1391"
  %"fadd.52" = fadd float %"fmul.52", %".1392"
  %".1393" = bitcast ptr %"R18" to ptr
  store float %"fadd.52", ptr %".1393"
  ; FFMA R10, R35, R22, R10
  %"cast_ptr.159" = bitcast ptr %"R35" to ptr
  %".1396" = load float, ptr %"cast_ptr.159"
  %"cast_ptr.160" = bitcast ptr %"R22" to ptr
  %".1397" = load float, ptr %"cast_ptr.160"
  %"cast_ptr.161" = bitcast ptr %"R10" to ptr
  %".1398" = load float, ptr %"cast_ptr.161"
  %"fmul.53" = fmul float %".1396", %".1397"
  %"fadd.53" = fadd float %"fmul.53", %".1398"
  %".1399" = bitcast ptr %"R10" to ptr
  store float %"fadd.53", ptr %".1399"
  ; FFMA R52, R37, R39, R18
  %"cast_ptr.162" = bitcast ptr %"R37" to ptr
  %".1402" = load float, ptr %"cast_ptr.162"
  %"cast_ptr.163" = bitcast ptr %"R39" to ptr
  %".1403" = load float, ptr %"cast_ptr.163"
  %"cast_ptr.164" = bitcast ptr %"R18" to ptr
  %".1404" = load float, ptr %"cast_ptr.164"
  %"fmul.54" = fmul float %".1402", %".1403"
  %"fadd.54" = fadd float %"fmul.54", %".1404"
  %".1405" = bitcast ptr %"R52" to ptr
  store float %"fadd.54", ptr %".1405"
  ; FFMA R54, R39, R24, R10
  %"cast_ptr.165" = bitcast ptr %"R39" to ptr
  %".1408" = load float, ptr %"cast_ptr.165"
  %"cast_ptr.166" = bitcast ptr %"R24" to ptr
  %".1409" = load float, ptr %"cast_ptr.166"
  %"cast_ptr.167" = bitcast ptr %"R10" to ptr
  %".1410" = load float, ptr %"cast_ptr.167"
  %"fmul.55" = fmul float %".1408", %".1409"
  %"fadd.55" = fadd float %"fmul.55", %".1410"
  %".1411" = bitcast ptr %"R54" to ptr
  store float %"fadd.55", ptr %".1411"
  ; @P0 BRA `(.L_x_3)
  %".1414" = load i1, ptr %"P0"
  %".1415" = icmp eq i1 %".1414", 1
  br i1 %".1415", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1418" = load i32, ptr %"R4"
  %".1419" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".1418", 0
  %".1420" = xor i1 %"cmp.12", -1
  %".1421" = and i1 %"cmp.12", %".1419"
  %".1422" = and i1 %".1420", %".1419"
  store i1 %".1421", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".1425" = load i1, ptr %"P0"
  %".1426" = icmp ne i1 %".1425", 1
  br i1 %".1426", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1429" = load i32, ptr %"R0"
  %".1430" = load i32, ptr %"R11"
  %".1431" = add i32 %".1429", %".1430"
  %".1432" = add i32 %".1431", 0
  store i32 %".1432", ptr %"R9"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1437" = load i32, ptr %"R2"
  %".1438" = load i32, ptr %"R9"
  %"shl.89" = shl i32 %".1437", 2
  %"add.5" = add i32 %"shl.89", %".1438"
  store i32 %"add.5", ptr %"R14"
  ; IMAD R12, R2, 0x3, R9
  %".1441" = load i32, ptr %"R2"
  %".1442" = load i32, ptr %"R9"
  %"imad_mul.32" = mul i32 %".1441", 3
  %"imad_add.32" = add i32 %"imad_mul.32", %".1442"
  store i32 %"imad_add.32", ptr %"R12"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1445" = load i32, ptr %"R11"
  %".1446" = load i32, ptr %"R15"
  %"imad_ext1.25" = zext i32 %".1445" to i64
  %"imad_ext2.25" = zext i32 %".1446" to i64
  %"imad_mul.33" = mul i64 %"imad_ext1.25", %"imad_ext2.25"
  %".1447" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.33" = add i64 %"imad_mul.33", %".1447"
  %".1448" = and i64 %"imad_add.33", 18446744069414584320
  %".1449" = lshr i64 %".1448", 32
  %"trunc32.50" = trunc i64 %".1449" to i32
  %"trunc32.51" = trunc i64 %"imad_add.33" to i32
  store i32 %"trunc32.51", ptr %"R10"
  store i32 %"trunc32.50", ptr %"R11"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1453" = load i32, ptr %"R12"
  %".1454" = load i32, ptr %"R15"
  %"imad_ext1.26" = zext i32 %".1453" to i64
  %"imad_ext2.26" = zext i32 %".1454" to i64
  %"imad_mul.34" = mul i64 %"imad_ext1.26", %"imad_ext2.26"
  %".1455" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.34" = add i64 %"imad_mul.34", %".1455"
  %".1456" = and i64 %"imad_add.34", 18446744069414584320
  %".1457" = lshr i64 %".1456", 32
  %"trunc32.52" = trunc i64 %".1457" to i32
  %"trunc32.53" = trunc i64 %"imad_add.34" to i32
  store i32 %"trunc32.53", ptr %"R12"
  store i32 %"trunc32.52", ptr %"R13"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1461" = load i32, ptr %"R14"
  %".1462" = load i32, ptr %"R15"
  %"imad_ext1.27" = zext i32 %".1461" to i64
  %"imad_ext2.27" = zext i32 %".1462" to i64
  %"imad_mul.35" = mul i64 %"imad_ext1.27", %"imad_ext2.27"
  %".1463" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.35" = add i64 %"imad_mul.35", %".1463"
  %".1464" = and i64 %"imad_add.35", 18446744069414584320
  %".1465" = lshr i64 %".1464", 32
  %"trunc32.54" = trunc i64 %".1465" to i32
  %"trunc32.55" = trunc i64 %"imad_add.35" to i32
  store i32 %"trunc32.55", ptr %"R14"
  store i32 %"trunc32.54", ptr %"R15"
  ; LDG.E.SYS R17, [R10]
  %".1469" = load i32, ptr %"R10"
  %"zext.168" = zext i32 %".1469" to i64
  %".1470" = load i32, ptr %"R11"
  %"zext.169" = zext i32 %".1470" to i64
  %"shl.90" = shl i64 %"zext.169", 32
  %"or.84" = or i64 %"shl.90", %"zext.168"
  %"inttoptr_bytes.84" = inttoptr i64 %"or.84" to ptr addrspace(1)
  %"ptr_cast_for_access.84" = bitcast ptr addrspace(1) %"inttoptr_bytes.84" to ptr addrspace(1)
  %".1471" = load float, ptr addrspace(1) %"ptr_cast_for_access.84"
  %".1472" = bitcast ptr %"R17" to ptr
  store float %".1471", ptr %".1472"
  ; LDG.E.SYS R9, [R12]
  %".1475" = load i32, ptr %"R12"
  %"zext.170" = zext i32 %".1475" to i64
  %".1476" = load i32, ptr %"R13"
  %"zext.171" = zext i32 %".1476" to i64
  %"shl.91" = shl i64 %"zext.171", 32
  %"or.85" = or i64 %"shl.91", %"zext.170"
  %"inttoptr_bytes.85" = inttoptr i64 %"or.85" to ptr addrspace(1)
  %"ptr_cast_for_access.85" = bitcast ptr addrspace(1) %"inttoptr_bytes.85" to ptr addrspace(1)
  %".1477" = load float, ptr addrspace(1) %"ptr_cast_for_access.85"
  %".1478" = bitcast ptr %"R9" to ptr
  store float %".1477", ptr %".1478"
  ; LDG.E.SYS R16, [R14]
  %".1481" = load i32, ptr %"R14"
  %"zext.172" = zext i32 %".1481" to i64
  %".1482" = load i32, ptr %"R15"
  %"zext.173" = zext i32 %".1482" to i64
  %"shl.92" = shl i64 %"zext.173", 32
  %"or.86" = or i64 %"shl.92", %"zext.172"
  %"inttoptr_bytes.86" = inttoptr i64 %"or.86" to ptr addrspace(1)
  %"ptr_cast_for_access.86" = bitcast ptr addrspace(1) %"inttoptr_bytes.86" to ptr addrspace(1)
  %".1483" = load float, ptr addrspace(1) %"ptr_cast_for_access.86"
  %".1484" = bitcast ptr %"R16" to ptr
  store float %".1483", ptr %".1484"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1487" = load i32, ptr %"R4"
  %".1488" = load i1, ptr %"PT"
  %"cmp.13" = icmp ne i32 %".1487", 1
  %".1489" = xor i1 %"cmp.13", -1
  %".1490" = and i1 %"cmp.13", %".1488"
  %".1491" = and i1 %".1489", %".1488"
  store i1 %".1490", ptr %"P0"
  ; FFMA R52, R9, R17, R52
  %"cast_ptr.168" = bitcast ptr %"R9" to ptr
  %".1494" = load float, ptr %"cast_ptr.168"
  %"cast_ptr.169" = bitcast ptr %"R17" to ptr
  %".1495" = load float, ptr %"cast_ptr.169"
  %"cast_ptr.170" = bitcast ptr %"R52" to ptr
  %".1496" = load float, ptr %"cast_ptr.170"
  %"fmul.56" = fmul float %".1494", %".1495"
  %"fadd.56" = fadd float %"fmul.56", %".1496"
  %".1497" = bitcast ptr %"R52" to ptr
  store float %"fadd.56", ptr %".1497"
  ; FFMA R54, R17, R16, R54
  %"cast_ptr.171" = bitcast ptr %"R17" to ptr
  %".1500" = load float, ptr %"cast_ptr.171"
  %"cast_ptr.172" = bitcast ptr %"R16" to ptr
  %".1501" = load float, ptr %"cast_ptr.172"
  %"cast_ptr.173" = bitcast ptr %"R54" to ptr
  %".1502" = load float, ptr %"cast_ptr.173"
  %"fmul.57" = fmul float %".1500", %".1501"
  %"fadd.57" = fadd float %"fmul.57", %".1502"
  %".1503" = bitcast ptr %"R54" to ptr
  store float %"fadd.57", ptr %".1503"
  ; @!P0 BRA `(.L_x_1)
  %".1506" = load i1, ptr %"P0"
  %".1507" = icmp ne i1 %".1506", 1
  br i1 %".1507", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1510" = load i32, ptr %"R4"
  %".1511" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".1510", 2
  %".1512" = xor i1 %"cmp.14", -1
  %".1513" = and i1 %"cmp.14", %".1511"
  %".1514" = and i1 %".1512", %".1511"
  store i1 %".1513", ptr %"P0"
  ; LDG.E.SYS R9, [R12+0x4]
  %".1517" = load i32, ptr %"R12"
  %"zext.174" = zext i32 %".1517" to i64
  %".1518" = load i32, ptr %"R13"
  %"zext.175" = zext i32 %".1518" to i64
  %"shl.93" = shl i64 %"zext.175", 32
  %"or.87" = or i64 %"shl.93", %"zext.174"
  %"ptr_plus_imm.63" = add i64 %"or.87", 4
  %"inttoptr_bytes.87" = inttoptr i64 %"ptr_plus_imm.63" to ptr addrspace(1)
  %"ptr_cast_for_access.87" = bitcast ptr addrspace(1) %"inttoptr_bytes.87" to ptr addrspace(1)
  %".1519" = load float, ptr addrspace(1) %"ptr_cast_for_access.87"
  %".1520" = bitcast ptr %"R9" to ptr
  store float %".1519", ptr %".1520"
  ; LDG.E.SYS R17, [R10+0x4]
  %".1523" = load i32, ptr %"R10"
  %"zext.176" = zext i32 %".1523" to i64
  %".1524" = load i32, ptr %"R11"
  %"zext.177" = zext i32 %".1524" to i64
  %"shl.94" = shl i64 %"zext.177", 32
  %"or.88" = or i64 %"shl.94", %"zext.176"
  %"ptr_plus_imm.64" = add i64 %"or.88", 4
  %"inttoptr_bytes.88" = inttoptr i64 %"ptr_plus_imm.64" to ptr addrspace(1)
  %"ptr_cast_for_access.88" = bitcast ptr addrspace(1) %"inttoptr_bytes.88" to ptr addrspace(1)
  %".1525" = load float, ptr addrspace(1) %"ptr_cast_for_access.88"
  %".1526" = bitcast ptr %"R17" to ptr
  store float %".1525", ptr %".1526"
  ; LDG.E.SYS R16, [R14+0x4]
  %".1529" = load i32, ptr %"R14"
  %"zext.178" = zext i32 %".1529" to i64
  %".1530" = load i32, ptr %"R15"
  %"zext.179" = zext i32 %".1530" to i64
  %"shl.95" = shl i64 %"zext.179", 32
  %"or.89" = or i64 %"shl.95", %"zext.178"
  %"ptr_plus_imm.65" = add i64 %"or.89", 4
  %"inttoptr_bytes.89" = inttoptr i64 %"ptr_plus_imm.65" to ptr addrspace(1)
  %"ptr_cast_for_access.89" = bitcast ptr addrspace(1) %"inttoptr_bytes.89" to ptr addrspace(1)
  %".1531" = load float, ptr addrspace(1) %"ptr_cast_for_access.89"
  %".1532" = bitcast ptr %"R16" to ptr
  store float %".1531", ptr %".1532"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1535" = load i1, ptr %"P0"
  %".1536" = icmp eq i1 %".1535", 1
  br i1 %".1536", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  %".1539" = load i32, ptr %"R12"
  %"zext.180" = zext i32 %".1539" to i64
  %".1540" = load i32, ptr %"R13"
  %"zext.181" = zext i32 %".1540" to i64
  %"shl.96" = shl i64 %"zext.181", 32
  %"or.90" = or i64 %"shl.96", %"zext.180"
  %"ptr_plus_imm.66" = add i64 %"or.90", 8
  %"inttoptr_bytes.90" = inttoptr i64 %"ptr_plus_imm.66" to ptr addrspace(1)
  %"ptr_cast_for_access.90" = bitcast ptr addrspace(1) %"inttoptr_bytes.90" to ptr addrspace(1)
  %".1541" = load float, ptr addrspace(1) %"ptr_cast_for_access.90"
  %".1542" = bitcast ptr %"R19" to ptr
  store float %".1541", ptr %".1542"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1547" = load i1, ptr %"P0"
  %".1548" = icmp eq i1 %".1547", 1
  br i1 %".1548", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  %".1551" = load i32, ptr %"R10"
  %"zext.182" = zext i32 %".1551" to i64
  %".1552" = load i32, ptr %"R11"
  %"zext.183" = zext i32 %".1552" to i64
  %"shl.97" = shl i64 %"zext.183", 32
  %"or.91" = or i64 %"shl.97", %"zext.182"
  %"ptr_plus_imm.67" = add i64 %"or.91", 8
  %"inttoptr_bytes.91" = inttoptr i64 %"ptr_plus_imm.67" to ptr addrspace(1)
  %"ptr_cast_for_access.91" = bitcast ptr addrspace(1) %"inttoptr_bytes.91" to ptr addrspace(1)
  %".1553" = load float, ptr addrspace(1) %"ptr_cast_for_access.91"
  %".1554" = bitcast ptr %"R21" to ptr
  store float %".1553", ptr %".1554"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1559" = load i1, ptr %"P0"
  %".1560" = icmp eq i1 %".1559", 1
  br i1 %".1560", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  %".1563" = load i32, ptr %"R14"
  %"zext.184" = zext i32 %".1563" to i64
  %".1564" = load i32, ptr %"R15"
  %"zext.185" = zext i32 %".1564" to i64
  %"shl.98" = shl i64 %"zext.185", 32
  %"or.92" = or i64 %"shl.98", %"zext.184"
  %"ptr_plus_imm.68" = add i64 %"or.92", 8
  %"inttoptr_bytes.92" = inttoptr i64 %"ptr_plus_imm.68" to ptr addrspace(1)
  %"ptr_cast_for_access.92" = bitcast ptr addrspace(1) %"inttoptr_bytes.92" to ptr addrspace(1)
  %".1565" = load float, ptr addrspace(1) %"ptr_cast_for_access.92"
  %".1566" = bitcast ptr %"R18" to ptr
  store float %".1565", ptr %".1566"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %"cast_ptr.174" = bitcast ptr %"R9" to ptr
  %".1571" = load float, ptr %"cast_ptr.174"
  %"cast_ptr.175" = bitcast ptr %"R17" to ptr
  %".1572" = load float, ptr %"cast_ptr.175"
  %"cast_ptr.176" = bitcast ptr %"R52" to ptr
  %".1573" = load float, ptr %"cast_ptr.176"
  %"fmul.58" = fmul float %".1571", %".1572"
  %"fadd.58" = fadd float %"fmul.58", %".1573"
  %".1574" = bitcast ptr %"R52" to ptr
  store float %"fadd.58", ptr %".1574"
  ; FFMA R54, R17, R16, R54
  %"cast_ptr.177" = bitcast ptr %"R17" to ptr
  %".1577" = load float, ptr %"cast_ptr.177"
  %"cast_ptr.178" = bitcast ptr %"R16" to ptr
  %".1578" = load float, ptr %"cast_ptr.178"
  %"cast_ptr.179" = bitcast ptr %"R54" to ptr
  %".1579" = load float, ptr %"cast_ptr.179"
  %"fmul.59" = fmul float %".1577", %".1578"
  %"fadd.59" = fadd float %"fmul.59", %".1579"
  %".1580" = bitcast ptr %"R54" to ptr
  store float %"fadd.59", ptr %".1580"
  ; @P0 FFMA R52, R19, R21, R52
  %".1583" = load i1, ptr %"P0"
  %".1584" = icmp eq i1 %".1583", 1
  br i1 %".1584", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %"cast_ptr.180" = bitcast ptr %"R19" to ptr
  %".1587" = load float, ptr %"cast_ptr.180"
  %"cast_ptr.181" = bitcast ptr %"R21" to ptr
  %".1588" = load float, ptr %"cast_ptr.181"
  %"cast_ptr.182" = bitcast ptr %"R52" to ptr
  %".1589" = load float, ptr %"cast_ptr.182"
  %"fmul.60" = fmul float %".1587", %".1588"
  %"fadd.60" = fadd float %"fmul.60", %".1589"
  %".1590" = bitcast ptr %"R52" to ptr
  store float %"fadd.60", ptr %".1590"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1595" = load i1, ptr %"P0"
  %".1596" = icmp eq i1 %".1595", 1
  br i1 %".1596", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %"cast_ptr.183" = bitcast ptr %"R21" to ptr
  %".1599" = load float, ptr %"cast_ptr.183"
  %"cast_ptr.184" = bitcast ptr %"R18" to ptr
  %".1600" = load float, ptr %"cast_ptr.184"
  %"cast_ptr.185" = bitcast ptr %"R54" to ptr
  %".1601" = load float, ptr %"cast_ptr.185"
  %"fmul.61" = fmul float %".1599", %".1600"
  %"fadd.61" = fadd float %"fmul.61", %".1601"
  %".1602" = bitcast ptr %"R54" to ptr
  store float %"fadd.61", ptr %".1602"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  %".1607" = load i32, ptr %"R26"
  %"zext.186" = zext i32 %".1607" to i64
  %".1608" = load i32, ptr %"R27"
  %"zext.187" = zext i32 %".1608" to i64
  %"shl.99" = shl i64 %"zext.187", 32
  %"or.93" = or i64 %"shl.99", %"zext.186"
  %"inttoptr_bytes.93" = inttoptr i64 %"or.93" to ptr addrspace(1)
  %"ptr_cast_for_access.93" = bitcast ptr addrspace(1) %"inttoptr_bytes.93" to ptr addrspace(1)
  %".1609" = load float, ptr addrspace(1) %"ptr_cast_for_access.93"
  %".1610" = bitcast ptr %"R9" to ptr
  store float %".1609", ptr %".1610"
  ; MOV R10, 0x3bbb989d
  %".1613" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1613"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  %".1617" = bitcast ptr %"R11" to ptr
  store float 0x41d0df0000000000, ptr %".1617"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %"cast_ptr.186" = bitcast ptr %"R9" to ptr
  %".1621" = load float, ptr %"cast_ptr.186"
  %"cast_ptr.187" = bitcast ptr %"R52" to ptr
  %".1622" = load float, ptr %"cast_ptr.187"
  %"fadd.62" = fadd float %".1621", %".1622"
  %".1623" = bitcast ptr %"R9" to ptr
  store float %"fadd.62", ptr %".1623"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %"cast_ptr.188" = bitcast ptr %"R9" to ptr
  %".1626" = load float, ptr %"cast_ptr.188"
  %".1627" = fneg float %".1626"
  %"cast_ptr.189" = bitcast ptr %"R10" to ptr
  %".1628" = load float, ptr %"cast_ptr.189"
  %"fmul.62" = fmul float %".1627", %".1628"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  %".1629" = bitcast ptr %"R10" to ptr
  store float %"fadd.63", ptr %".1629"
  ; FFMA.RM R10, R10, R11, 12582913
  %"cast_ptr.190" = bitcast ptr %"R10" to ptr
  %".1632" = load float, ptr %"cast_ptr.190"
  %"cast_ptr.191" = bitcast ptr %"R11" to ptr
  %".1633" = load float, ptr %"cast_ptr.191"
  %"fmul.63" = fmul float %".1632", %".1633"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  %".1634" = bitcast ptr %"R10" to ptr
  store float %"fadd.64", ptr %".1634"
  ; FADD R12, R10.reuse, -12583039
  %"cast_ptr.192" = bitcast ptr %"R10" to ptr
  %".1637" = load float, ptr %"cast_ptr.192"
  %"fadd.65" = fadd float %".1637", 0xc168000fe0000000
  %".1638" = bitcast ptr %"R12" to ptr
  store float %"fadd.65", ptr %".1638"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1641" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1641", i32 23, i32 32
  %".1642" = load i32, ptr %"R10"
  %"zext.188" = zext i32 0 to i64
  %"zext.189" = zext i32 %".1642" to i64
  %"zext.190" = zext i32 23 to i64
  %"shl.100" = shl i64 %"zext.188", 32
  %"or.94" = or i64 %"shl.100", %"zext.189"
  %"shl.101" = shl i64 %"or.94", %"zext.190"
  %"and" = and i64 %"shl.101", 4294967295
  %"trunc32.56" = trunc i64 %"and" to i32
  store i32 %"trunc32.56", ptr %"R10"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %"cast_ptr.193" = bitcast ptr %"R9" to ptr
  %".1645" = load float, ptr %"cast_ptr.193"
  %".1646" = fneg float %".1645"
  %"cast_ptr.194" = bitcast ptr %"R12" to ptr
  %".1647" = load float, ptr %"cast_ptr.194"
  %".1648" = fneg float %".1647"
  %"fmul.64" = fmul float %".1646", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1648"
  %".1649" = bitcast ptr %"R12" to ptr
  store float %"fadd.66", ptr %".1649"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %"cast_ptr.195" = bitcast ptr %"R9" to ptr
  %".1652" = load float, ptr %"cast_ptr.195"
  %".1653" = fneg float %".1652"
  %"cast_ptr.196" = bitcast ptr %"R12" to ptr
  %".1654" = load float, ptr %"cast_ptr.196"
  %"fmul.65" = fmul float %".1653", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1654"
  %".1655" = bitcast ptr %"R12" to ptr
  store float %"fadd.67", ptr %".1655"
  ; MUFU.EX2 R9, R12
  %"cast_ptr.197" = bitcast ptr %"R12" to ptr
  %".1658" = load float, ptr %"cast_ptr.197"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1658")
  %".1659" = bitcast ptr %"R9" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1659"
  ; FFMA R24, R10, R9, 1
  %"cast_ptr.198" = bitcast ptr %"R10" to ptr
  %".1662" = load float, ptr %"cast_ptr.198"
  %"cast_ptr.199" = bitcast ptr %"R9" to ptr
  %".1663" = load float, ptr %"cast_ptr.199"
  %"fmul.66" = fmul float %".1662", %".1663"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  %".1664" = bitcast ptr %"R24" to ptr
  store float %"fadd.68", ptr %".1664"
  ; IADD3 R9, R24, 0x1800000, RZ
  %".1667" = load i32, ptr %"R24"
  %".1668" = add i32 %".1667", 25165824
  %".1669" = add i32 %".1668", 0
  store i32 %".1669", ptr %"R9"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1672" = load i32, ptr %"R9"
  %".1673" = xor i1 1, -1
  %".1674" = and i32 %".1672", 2139095040
  store i32 %".1674", ptr %"R9"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1677" = load i32, ptr %"R9"
  %".1678" = load i1, ptr %"PT"
  %"cmp.15" = icmp sgt i32 %".1677", 33554431
  %".1679" = xor i1 %"cmp.15", -1
  %".1680" = and i1 %"cmp.15", %".1678"
  %".1681" = and i1 %".1679", %".1678"
  store i1 %".1680", ptr %"P0"
  ; @P0 BRA `(.L_x_8)
  %".1684" = load i1, ptr %"P0"
  %".1685" = icmp eq i1 %".1684", 1
  br i1 %".1685", label %".L_x_8", label %".L_x_1_split_0x1260_CALL_0x1290"
.L_x_1_split_0x1260_CALL_0x1290:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1692" = icmp ult i32 1, 32
  %"SHF_min.1" = select  i1 %".1692", i32 1, i32 32
  %".1693" = load i32, ptr %"R24"
  %"zext.191" = zext i32 0 to i64
  %"zext.192" = zext i32 %".1693" to i64
  %"zext.193" = zext i32 1 to i64
  %"shl.102" = shl i64 %"zext.191", 32
  %"or.95" = or i64 %"shl.102", %"zext.192"
  %"shl.103" = shl i64 %"or.95", %"zext.193"
  %"and.1" = and i64 %"shl.103", 4294967295
  %"trunc32.57" = trunc i64 %"and.1" to i32
  store i32 %"trunc32.57", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".1698" = icmp ult i32 24, 32
  %"SHF_min.2" = select  i1 %".1698", i32 24, i32 32
  %".1699" = load i32, ptr %"R11"
  %"zext.194" = zext i32 %".1699" to i64
  %"zext.195" = zext i32 0 to i64
  %"zext.196" = zext i32 24 to i64
  %"shl.104" = shl i64 %"zext.194", 32
  %"or.96" = or i64 %"shl.104", %"zext.195"
  %"lshr" = lshr i64 %"or.96", %"zext.196"
  %"lshr.1" = lshr i64 %"lshr", 32
  %"trunc32.58" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.58", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".1702" = load i32, ptr %"R25"
  %".1703" = load i1, ptr %"PT"
  %"cmp.16" = icmp ne i32 %".1702", 0
  %".1704" = xor i1 %"cmp.16", -1
  %".1705" = and i1 %"cmp.16", %".1703"
  %".1706" = and i1 %".1704", %".1703"
  store i1 %".1705", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".1709" = load i1, ptr %"P0"
  %".1710" = icmp eq i1 %".1709", 1
  br i1 %".1710", label %".L_x_49...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1713" = icmp ult i32 1, 32
  %"SHF_min.3" = select  i1 %".1713", i32 1, i32 32
  %".1714" = load i32, ptr %"R24"
  %"zext.197" = zext i32 0 to i64
  %"zext.198" = zext i32 %".1714" to i64
  %"zext.199" = zext i32 1 to i64
  %"shl.105" = shl i64 %"zext.197", 32
  %"or.97" = or i64 %"shl.105", %"zext.198"
  %"shl.106" = shl i64 %"or.97", %"zext.199"
  %"and.2" = and i64 %"shl.106", 4294967295
  %"trunc32.59" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.59", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".1717" = load i32, ptr %"R11"
  %".1718" = load i1, ptr %"PT"
  %"cmp.17" = icmp ne i32 %".1717", 0
  %".1719" = xor i1 %"cmp.17", -1
  %".1720" = and i1 %"cmp.17", %".1718"
  %".1721" = and i1 %".1719", %".1718"
  store i1 %".1720", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1724" = load i1, ptr %"P0"
  %".1725" = icmp eq i1 %".1724", 1
  br i1 %".1725", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %"cast_ptr.200" = bitcast ptr %"R24" to ptr
  %".1728" = load float, ptr %"cast_ptr.200"
  %"fmul.67" = fmul float %".1728", 0x43f0000000000000
  %"fadd.69" = fadd float %"fmul.67",              0x0
  %".1729" = bitcast ptr %"R12" to ptr
  store float %"fadd.69", ptr %".1729"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %"cast_ptr.201" = bitcast ptr %"R24" to ptr
  %".1734" = load float, ptr %"cast_ptr.201"
  %"fmul.68" = fmul float %".1734", 0x43f0000000000000
  %"fadd.70" = fadd float %"fmul.68",              0x0
  %".1735" = bitcast ptr %"R12" to ptr
  store float %"fadd.70", ptr %".1735"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1:
  ; @!P0 MUFU.RCP R11, R24
  %".1740" = load i1, ptr %"P0"
  %".1741" = icmp ne i1 %".1740", 1
  br i1 %".1741", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %"cast_ptr.202" = bitcast ptr %"R24" to ptr
  %".1744" = load float, ptr %"cast_ptr.202"
  %".1745" = fdiv float 0x3ff0000000000000, %".1744"
  %".1746" = bitcast ptr %"R11" to ptr
  store float %".1745", ptr %".1746"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1:
  ; MUFU.RCP R11, R24
  %"cast_ptr.203" = bitcast ptr %"R24" to ptr
  %".1751" = load float, ptr %"cast_ptr.203"
  %".1752" = fdiv float 0x3ff0000000000000, %".1751"
  %".1753" = bitcast ptr %"R11" to ptr
  store float %".1752", ptr %".1753"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1:
  ; @P0 MUFU.RCP R13, R12
  %".1758" = load i1, ptr %"P0"
  %".1759" = icmp eq i1 %".1758", 1
  br i1 %".1759", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %"cast_ptr.204" = bitcast ptr %"R12" to ptr
  %".1762" = load float, ptr %"cast_ptr.204"
  %".1763" = fdiv float 0x3ff0000000000000, %".1762"
  %".1764" = bitcast ptr %"R13" to ptr
  store float %".1763", ptr %".1764"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1:
  ; MUFU.RCP R13, R12
  %"cast_ptr.205" = bitcast ptr %"R12" to ptr
  %".1769" = load float, ptr %"cast_ptr.205"
  %".1770" = fdiv float 0x3ff0000000000000, %".1769"
  %".1771" = bitcast ptr %"R13" to ptr
  store float %".1770", ptr %".1771"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1:
  ; @P0 FFMA R22, R12, R13, -1
  %".1776" = load i1, ptr %"P0"
  %".1777" = icmp eq i1 %".1776", 1
  br i1 %".1777", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %"cast_ptr.206" = bitcast ptr %"R12" to ptr
  %".1780" = load float, ptr %"cast_ptr.206"
  %"cast_ptr.207" = bitcast ptr %"R13" to ptr
  %".1781" = load float, ptr %"cast_ptr.207"
  %"fmul.69" = fmul float %".1780", %".1781"
  %"fadd.71" = fadd float %"fmul.69", 0xbff0000000000000
  %".1782" = bitcast ptr %"R22" to ptr
  store float %"fadd.71", ptr %".1782"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1:
  ; FFMA R22, R12, R13, -1
  %"cast_ptr.208" = bitcast ptr %"R12" to ptr
  %".1787" = load float, ptr %"cast_ptr.208"
  %"cast_ptr.209" = bitcast ptr %"R13" to ptr
  %".1788" = load float, ptr %"cast_ptr.209"
  %"fmul.70" = fmul float %".1787", %".1788"
  %"fadd.72" = fadd float %"fmul.70", 0xbff0000000000000
  %".1789" = bitcast ptr %"R22" to ptr
  store float %"fadd.72", ptr %".1789"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".1794" = load i1, ptr %"P0"
  %".1795" = icmp eq i1 %".1794", 1
  br i1 %".1795", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %"cast_ptr.210" = bitcast ptr %"R22" to ptr
  %".1798" = load float, ptr %"cast_ptr.210"
  %".1799" = fneg float %".1798"
  %".1800" = call float @"llvm.fabs"(float %".1799")
  %".1801" = fcmp ogt float %".1800",              0x0
  %".1802" = fcmp olt float %".1800", 0x3810000000000000
  %".1803" = and i1 %".1801", %".1802"
  %".1804" = select  i1 %".1803", float              0x0, float %".1799"
  %".1805" = call float @"llvm.fabs"(float              0x0)
  %".1806" = fcmp ogt float %".1805",              0x0
  %".1807" = fcmp olt float %".1805", 0x3810000000000000
  %".1808" = and i1 %".1806", %".1807"
  %".1809" = select  i1 %".1808", float              0x0, float              0x0
  %"fadd.73" = fadd float %".1804", %".1809"
  %".1810" = call float @"llvm.fabs"(float %"fadd.73")
  %".1811" = fcmp ogt float %".1810",              0x0
  %".1812" = fcmp olt float %".1810", 0x3810000000000000
  %".1813" = and i1 %".1811", %".1812"
  %".1814" = select  i1 %".1813", float              0x0, float %"fadd.73"
  %".1815" = bitcast ptr %"R22" to ptr
  store float %".1814", ptr %".1815"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1:
  ; FADD.FTZ R22, -R22, -RZ
  %"cast_ptr.211" = bitcast ptr %"R22" to ptr
  %".1820" = load float, ptr %"cast_ptr.211"
  %".1821" = fneg float %".1820"
  %".1822" = call float @"llvm.fabs"(float %".1821")
  %".1823" = fcmp ogt float %".1822",              0x0
  %".1824" = fcmp olt float %".1822", 0x3810000000000000
  %".1825" = and i1 %".1823", %".1824"
  %".1826" = select  i1 %".1825", float              0x0, float %".1821"
  %".1827" = call float @"llvm.fabs"(float              0x0)
  %".1828" = fcmp ogt float %".1827",              0x0
  %".1829" = fcmp olt float %".1827", 0x3810000000000000
  %".1830" = and i1 %".1828", %".1829"
  %".1831" = select  i1 %".1830", float              0x0, float              0x0
  %"fadd.74" = fadd float %".1826", %".1831"
  %".1832" = call float @"llvm.fabs"(float %"fadd.74")
  %".1833" = fcmp ogt float %".1832",              0x0
  %".1834" = fcmp olt float %".1832", 0x3810000000000000
  %".1835" = and i1 %".1833", %".1834"
  %".1836" = select  i1 %".1835", float              0x0, float %"fadd.74"
  %".1837" = bitcast ptr %"R22" to ptr
  store float %".1836", ptr %".1837"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1:
  ; @P0 FFMA R22, R13, R22, R13
  %".1842" = load i1, ptr %"P0"
  %".1843" = icmp eq i1 %".1842", 1
  br i1 %".1843", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %"cast_ptr.212" = bitcast ptr %"R13" to ptr
  %".1846" = load float, ptr %"cast_ptr.212"
  %"cast_ptr.213" = bitcast ptr %"R22" to ptr
  %".1847" = load float, ptr %"cast_ptr.213"
  %"cast_ptr.214" = bitcast ptr %"R13" to ptr
  %".1848" = load float, ptr %"cast_ptr.214"
  %"fmul.71" = fmul float %".1846", %".1847"
  %"fadd.75" = fadd float %"fmul.71", %".1848"
  %".1849" = bitcast ptr %"R22" to ptr
  store float %"fadd.75", ptr %".1849"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1:
  ; FFMA R22, R13, R22, R13
  %"cast_ptr.215" = bitcast ptr %"R13" to ptr
  %".1854" = load float, ptr %"cast_ptr.215"
  %"cast_ptr.216" = bitcast ptr %"R22" to ptr
  %".1855" = load float, ptr %"cast_ptr.216"
  %"cast_ptr.217" = bitcast ptr %"R13" to ptr
  %".1856" = load float, ptr %"cast_ptr.217"
  %"fmul.72" = fmul float %".1854", %".1855"
  %"fadd.76" = fadd float %"fmul.72", %".1856"
  %".1857" = bitcast ptr %"R22" to ptr
  store float %"fadd.76", ptr %".1857"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".1862" = load i1, ptr %"P0"
  %".1863" = icmp eq i1 %".1862", 1
  br i1 %".1863", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %"cast_ptr.218" = bitcast ptr %"R22" to ptr
  %".1866" = load float, ptr %"cast_ptr.218"
  %"fmul.73" = fmul float %".1866", 0x43f0000000000000
  %"fadd.77" = fadd float %"fmul.73",              0x0
  %".1867" = bitcast ptr %"R11" to ptr
  store float %"fadd.77", ptr %".1867"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %"cast_ptr.219" = bitcast ptr %"R22" to ptr
  %".1872" = load float, ptr %"cast_ptr.219"
  %"fmul.74" = fmul float %".1872", 0x43f0000000000000
  %"fadd.78" = fadd float %"fmul.74",              0x0
  %".1873" = bitcast ptr %"R11" to ptr
  store float %"fadd.78", ptr %".1873"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1:
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_49...1:
  ; IADD3 R34, R25, -0xfd, RZ
  %".1880" = load i32, ptr %"R25"
  %".1881" = add i32 %".1880", -253
  %".1882" = add i32 %".1881", 0
  store i32 %".1882", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".1885" = load i32, ptr %"R34"
  %".1886" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".1885", 1
  %".1887" = xor i1 %"cmp.18", -1
  %".1888" = and i1 %"cmp.18", %".1886"
  %".1889" = and i1 %".1887", %".1886"
  store i1 %".1888", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".1892" = load i1, ptr %"P0"
  %".1893" = icmp eq i1 %".1892", 1
  br i1 %".1893", label %".L_x_51...1", label %".L_x_49_split_0x4a30...1"
.L_x_49_split_0x4a30...1:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".1896" = load i32, ptr %"R24"
  %".1897" = xor i1 1, -1
  %".1898" = and i32 %".1896", 8388607
  store i32 %".1898", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".1903" = load i32, ptr %"R11"
  %".1904" = xor i1 1, -1
  %".1905" = or i32 %".1903", 1065353216
  store i32 %".1905", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".1908" = load i32, ptr %"R34"
  %".1909" = icmp ult i32 %".1908", 32
  %"SHF_min.4" = select  i1 %".1909", i32 %".1908", i32 32
  %".1910" = load i32, ptr %"R23"
  %".1911" = load i32, ptr %"R34"
  %"zext.200" = zext i32 0 to i64
  %"zext.201" = zext i32 %".1910" to i64
  %"zext.202" = zext i32 %".1911" to i64
  %"shl.107" = shl i64 %"zext.200", 32
  %"or.98" = or i64 %"shl.107", %"zext.201"
  %"shl.108" = shl i64 %"or.98", %"zext.202"
  %"and.3" = and i64 %"shl.108", 4294967295
  %"trunc32.60" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.60", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".1914" = load i32, ptr %"R11"
  %"sint_to_f32" = sitofp i32 %".1914" to float
  %".1915" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".1916" = fptosi float %".1915" to i32
  store i32 %".1916", ptr %"R12"
  ; FFMA R13, R11, R12, -1
  %"cast_ptr.220" = bitcast ptr %"R11" to ptr
  %".1919" = load float, ptr %"cast_ptr.220"
  %"cast_ptr.221" = bitcast ptr %"R12" to ptr
  %".1920" = load float, ptr %"cast_ptr.221"
  %"fmul.75" = fmul float %".1919", %".1920"
  %"fadd.79" = fadd float %"fmul.75", 0xbff0000000000000
  %".1921" = bitcast ptr %"R13" to ptr
  store float %"fadd.79", ptr %".1921"
  ; FADD.FTZ R13, -R13, -RZ
  %"cast_ptr.222" = bitcast ptr %"R13" to ptr
  %".1924" = load float, ptr %"cast_ptr.222"
  %".1925" = fneg float %".1924"
  %".1926" = call float @"llvm.fabs"(float %".1925")
  %".1927" = fcmp ogt float %".1926",              0x0
  %".1928" = fcmp olt float %".1926", 0x3810000000000000
  %".1929" = and i1 %".1927", %".1928"
  %".1930" = select  i1 %".1929", float              0x0, float %".1925"
  %".1931" = call float @"llvm.fabs"(float              0x0)
  %".1932" = fcmp ogt float %".1931",              0x0
  %".1933" = fcmp olt float %".1931", 0x3810000000000000
  %".1934" = and i1 %".1932", %".1933"
  %".1935" = select  i1 %".1934", float              0x0, float              0x0
  %"fadd.80" = fadd float %".1930", %".1935"
  %".1936" = call float @"llvm.fabs"(float %"fadd.80")
  %".1937" = fcmp ogt float %".1936",              0x0
  %".1938" = fcmp olt float %".1936", 0x3810000000000000
  %".1939" = and i1 %".1937", %".1938"
  %".1940" = select  i1 %".1939", float              0x0, float %"fadd.80"
  %".1941" = bitcast ptr %"R13" to ptr
  store float %".1940", ptr %".1941"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %"cast_ptr.223" = bitcast ptr %"R12" to ptr
  %".1944" = load float, ptr %"cast_ptr.223"
  %"cast_ptr.224" = bitcast ptr %"R13" to ptr
  %".1945" = load float, ptr %"cast_ptr.224"
  %"cast_ptr.225" = bitcast ptr %"R12" to ptr
  %".1946" = load float, ptr %"cast_ptr.225"
  %"fmul.76" = fmul float %".1944", %".1945"
  %"fadd.81" = fadd float %"fmul.76", %".1946"
  %".1947" = bitcast ptr %"R22" to ptr
  store float %"fadd.81", ptr %".1947"
  ; FFMA.RP R13, R12, R13, R12
  %"cast_ptr.226" = bitcast ptr %"R12" to ptr
  %".1950" = load float, ptr %"cast_ptr.226"
  %"cast_ptr.227" = bitcast ptr %"R13" to ptr
  %".1951" = load float, ptr %"cast_ptr.227"
  %"cast_ptr.228" = bitcast ptr %"R12" to ptr
  %".1952" = load float, ptr %"cast_ptr.228"
  %"fmul.77" = fmul float %".1950", %".1951"
  %"fadd.82" = fadd float %"fmul.77", %".1952"
  %".1953" = bitcast ptr %"R13" to ptr
  store float %"fadd.82", ptr %".1953"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".1956" = load i32, ptr %"R22"
  %".1957" = xor i1 1, -1
  %".1958" = and i32 %".1956", 8388607
  store i32 %".1958", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %"cast_ptr.229" = bitcast ptr %"R22" to ptr
  %".1961" = load float, ptr %"cast_ptr.229"
  %"cast_ptr.230" = bitcast ptr %"R13" to ptr
  %".1962" = load float, ptr %"cast_ptr.230"
  %".1963" = load i1, ptr %"PT"
  %".1964" = call float @"llvm.fabs"(float %".1961")
  %".1965" = fcmp ogt float %".1964",              0x0
  %".1966" = fcmp olt float %".1964", 0x3810000000000000
  %".1967" = and i1 %".1965", %".1966"
  %".1968" = select  i1 %".1967", float              0x0, float %".1961"
  %".1969" = call float @"llvm.fabs"(float %".1962")
  %".1970" = fcmp ogt float %".1969",              0x0
  %".1971" = fcmp olt float %".1969", 0x3810000000000000
  %".1972" = and i1 %".1970", %".1971"
  %".1973" = select  i1 %".1972", float              0x0, float %".1962"
  %"fcmp_ordered" = fcmp une float %".1968", %".1973"
  %".1974" = xor i1 %"fcmp_ordered", -1
  %".1975" = and i1 %"fcmp_ordered", %".1963"
  %".1976" = and i1 %".1974", %".1963"
  store i1 %".1975", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".1979" = load i32, ptr %"R12"
  %".1980" = xor i1 1, -1
  %".1981" = or i32 %".1979", 8388608
  store i32 %".1981", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".1984" = load i1, ptr %"P0"
  %".1985" = xor i1 %".1984", -1
  %".1986" = icmp eq i1 %".1985", 1
  %"sel" = select  i1 %".1986", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".1989" = load i32, ptr %"R23"
  %".1990" = load i32, ptr %"R12"
  %".1991" = xor i1 1, -1
  %".1992" = and i32 %".1989", %".1990"
  store i32 %".1992", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".1995" = load i32, ptr %"R13"
  %".1996" = sub i32 0, %".1995"
  %".1997" = add i32 %".1996", 0
  %".1998" = add i32 %".1997", 0
  store i32 %".1998", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".2001" = load i32, ptr %"R34"
  %".2002" = icmp ult i32 %".2001", 32
  %"SHF_min.5" = select  i1 %".2002", i32 %".2001", i32 32
  %".2003" = load i32, ptr %"R23"
  %".2004" = load i32, ptr %"R34"
  %"zext.203" = zext i32 %".2003" to i64
  %"zext.204" = zext i32 0 to i64
  %"zext.205" = zext i32 %".2004" to i64
  %"shl.109" = shl i64 %"zext.203", 32
  %"or.99" = or i64 %"shl.109", %"zext.204"
  %"lshr.2" = lshr i64 %"or.99", %"zext.205"
  %"lshr.3" = lshr i64 %"lshr.2", 32
  %"trunc32.61" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.61", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".2007" = load i32, ptr %"R13"
  %".2008" = load i32, ptr %"R34"
  %".2009" = load i32, ptr %"R12"
  %".2010" = xor i1 1, -1
  %".2011" = or i32 %".2007", %".2008"
  %".2012" = or i32 %".2007", %".2009"
  %".2013" = and i32 %".2011", %".2012"
  store i32 %".2013", ptr %"RZ"
  %".2015" = icmp ne i32 %".2013", 0
  store i1 %".2015", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".2018" = load i32, ptr %"R23"
  %".2019" = xor i1 1, -1
  %".2020" = and i32 %".2018", 1
  store i32 %".2020", ptr %"RZ"
  %".2022" = icmp ne i32 %".2020", 0
  store i1 %".2022", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".2025" = load i32, ptr %"R23"
  %".2026" = xor i1 1, -1
  %".2027" = and i32 %".2025", 2
  store i32 %".2027", ptr %"RZ"
  %".2029" = icmp ne i32 %".2027", 0
  store i1 %".2029", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".2032" = load i1, ptr %"P0"
  %".2033" = load i1, ptr %"P1"
  %".2034" = or i1 %".2032", %".2033"
  %".2035" = and i1 %".2034", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".2037" = load i32, ptr %"R24"
  %".2038" = xor i1 1, -1
  %".2039" = and i32 %".2037", 8388607
  store i32 %".2039", ptr %"RZ"
  %".2041" = icmp ne i32 %".2039", 0
  store i1 %".2041", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".2044" = load i1, ptr %"P0"
  %".2045" = xor i1 %".2044", -1
  %".2046" = icmp eq i1 %".2045", 1
  %"sel.1" = select  i1 %".2046", i32 0, i32 1
  store i32 %"sel.1", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".2049" = load i32, ptr %"R11"
  %".2050" = sub i32 0, %".2049"
  %".2051" = add i32 %".2050", 0
  %".2052" = add i32 %".2051", 0
  store i32 %".2052", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".2055" = load i32, ptr %"R11"
  %".2056" = load i1, ptr %"PT"
  %"cmp.19" = icmp sge i32 %".2055", 0
  %".2057" = xor i1 %"cmp.19", -1
  %".2058" = and i1 %"cmp.19", %".2056"
  %".2059" = and i1 %".2057", %".2056"
  store i1 %".2058", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".2062" = load i32, ptr %"R25"
  %".2063" = add i32 %".2062", -252
  %".2064" = add i32 %".2063", 0
  store i32 %".2064", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".2067" = load i32, ptr %"R11"
  %".2068" = icmp ult i32 %".2067", 32
  %"SHF_min.6" = select  i1 %".2068", i32 %".2067", i32 32
  %".2069" = load i32, ptr %"R12"
  %".2070" = load i32, ptr %"R11"
  %"zext.206" = zext i32 %".2069" to i64
  %"zext.207" = zext i32 0 to i64
  %"zext.208" = zext i32 %".2070" to i64
  %"shl.110" = shl i64 %"zext.206", 32
  %"or.100" = or i64 %"shl.110", %"zext.207"
  %"lshr.4" = lshr i64 %"or.100", %"zext.208"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.62" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.62", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".2073" = load i1, ptr %"P0"
  %".2074" = icmp ne i1 %".2073", 1
  br i1 %".2074", label %".L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".2077" = load i32, ptr %"R11"
  %".2078" = add i32 %".2077", 1
  %".2079" = add i32 %".2078", 0
  store i32 %".2079", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1:
  ; IADD3 R11, R11, 0x1, RZ
  %".2084" = load i32, ptr %"R11"
  %".2085" = add i32 %".2084", 1
  %".2086" = add i32 %".2085", 0
  store i32 %".2086", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...1"
.L_x_49_split_0x4be0...1:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".2091" = load i1, ptr %"P1"
  %".2092" = icmp ne i1 %".2091", 1
  br i1 %".2092", label %".L_x_49_split_0x4be0...1_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...1"
.L_x_49_split_0x4be0...1_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".2095" = icmp ult i32 1, 32
  %"SHF_min.7" = select  i1 %".2095", i32 1, i32 32
  %".2096" = load i32, ptr %"R11"
  %"zext.209" = zext i32 0 to i64
  %"zext.210" = zext i32 %".2096" to i64
  %"zext.211" = zext i32 1 to i64
  %"shl.111" = shl i64 %"zext.209", 32
  %"or.101" = or i64 %"shl.111", %"zext.210"
  %"shl.112" = shl i64 %"or.101", %"zext.211"
  %"and.4" = and i64 %"shl.112", 4294967295
  %"trunc32.63" = trunc i64 %"and.4" to i32
  store i32 %"trunc32.63", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...1"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...1:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".2101" = icmp ult i32 1, 32
  %"SHF_min.8" = select  i1 %".2101", i32 1, i32 32
  %".2102" = load i32, ptr %"R11"
  %"zext.212" = zext i32 0 to i64
  %"zext.213" = zext i32 %".2102" to i64
  %"zext.214" = zext i32 1 to i64
  %"shl.113" = shl i64 %"zext.212", 32
  %"or.102" = or i64 %"shl.113", %"zext.213"
  %"shl.114" = shl i64 %"or.102", %"zext.214"
  %"and.5" = and i64 %"shl.114", 4294967295
  %"trunc32.64" = trunc i64 %"and.5" to i32
  store i32 %"trunc32.64", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...1"
.L_x_49_split_0x4bf0...1:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".2107" = load i32, ptr %"R11"
  %".2108" = load i32, ptr %"R24"
  %".2109" = xor i1 1, -1
  %".2110" = or i32 %".2107", 2147483648
  %".2111" = or i32 %".2107", %".2108"
  %".2112" = and i32 %".2110", %".2111"
  store i32 %".2112", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_51...1:
  ; MUFU.RCP R11, R24
  %"cast_ptr.231" = bitcast ptr %"R24" to ptr
  %".2117" = load float, ptr %"cast_ptr.231"
  %".2118" = fdiv float 0x3ff0000000000000, %".2117"
  %".2119" = bitcast ptr %"R11" to ptr
  store float %".2118", ptr %".2119"
  br label %".L_x_50...1"
.L_x_50...1:
  ; BSYNC B1
  br label %".L_x_48...1"
.L_x_48...1:
  ; MOV R22, R11
  %"cast_ptr.232" = bitcast ptr %"R11" to ptr
  %".2125" = load float, ptr %"cast_ptr.232"
  %".2126" = bitcast ptr %"R22" to ptr
  store float %".2125", ptr %".2126"
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
  %"cast_ptr.233" = bitcast ptr %"R22" to ptr
  %".2136" = load float, ptr %"cast_ptr.233"
  %".2137" = bitcast ptr %"R9" to ptr
  store float %".2136", ptr %".2137"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %"cast_ptr.234" = bitcast ptr %"R24" to ptr
  %".2142" = load float, ptr %"cast_ptr.234"
  %".2143" = fdiv float 0x3ff0000000000000, %".2142"
  %".2144" = bitcast ptr %"R9" to ptr
  store float %".2143", ptr %".2144"
  ; FFMA R10, R24, R9, -1
  %"cast_ptr.235" = bitcast ptr %"R24" to ptr
  %".2147" = load float, ptr %"cast_ptr.235"
  %"cast_ptr.236" = bitcast ptr %"R9" to ptr
  %".2148" = load float, ptr %"cast_ptr.236"
  %"fmul.78" = fmul float %".2147", %".2148"
  %"fadd.83" = fadd float %"fmul.78", 0xbff0000000000000
  %".2149" = bitcast ptr %"R10" to ptr
  store float %"fadd.83", ptr %".2149"
  ; FADD.FTZ R10, -R10, -RZ
  %"cast_ptr.237" = bitcast ptr %"R10" to ptr
  %".2152" = load float, ptr %"cast_ptr.237"
  %".2153" = fneg float %".2152"
  %".2154" = call float @"llvm.fabs"(float %".2153")
  %".2155" = fcmp ogt float %".2154",              0x0
  %".2156" = fcmp olt float %".2154", 0x3810000000000000
  %".2157" = and i1 %".2155", %".2156"
  %".2158" = select  i1 %".2157", float              0x0, float %".2153"
  %".2159" = call float @"llvm.fabs"(float              0x0)
  %".2160" = fcmp ogt float %".2159",              0x0
  %".2161" = fcmp olt float %".2159", 0x3810000000000000
  %".2162" = and i1 %".2160", %".2161"
  %".2163" = select  i1 %".2162", float              0x0, float              0x0
  %"fadd.84" = fadd float %".2158", %".2163"
  %".2164" = call float @"llvm.fabs"(float %"fadd.84")
  %".2165" = fcmp ogt float %".2164",              0x0
  %".2166" = fcmp olt float %".2164", 0x3810000000000000
  %".2167" = and i1 %".2165", %".2166"
  %".2168" = select  i1 %".2167", float              0x0, float %"fadd.84"
  %".2169" = bitcast ptr %"R10" to ptr
  store float %".2168", ptr %".2169"
  ; FFMA R9, R9, R10, R9
  %"cast_ptr.238" = bitcast ptr %"R9" to ptr
  %".2172" = load float, ptr %"cast_ptr.238"
  %"cast_ptr.239" = bitcast ptr %"R10" to ptr
  %".2173" = load float, ptr %"cast_ptr.239"
  %"cast_ptr.240" = bitcast ptr %"R9" to ptr
  %".2174" = load float, ptr %"cast_ptr.240"
  %"fmul.79" = fmul float %".2172", %".2173"
  %"fadd.85" = fadd float %"fmul.79", %".2174"
  %".2175" = bitcast ptr %"R9" to ptr
  store float %"fadd.85", ptr %".2175"
  br label %".L_x_9"
.L_x_9:
  ; BSYNC B0
  br label %".L_x_7"
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".2181" = load i32, ptr %"R32"
  %"zext.215" = zext i32 %".2181" to i64
  %".2182" = load i32, ptr %"R33"
  %"zext.216" = zext i32 %".2182" to i64
  %"shl.115" = shl i64 %"zext.216", 32
  %"or.103" = or i64 %"shl.115", %"zext.215"
  %"inttoptr_bytes.94" = inttoptr i64 %"or.103" to ptr addrspace(1)
  %"ptr_cast_for_access.94" = bitcast ptr addrspace(1) %"inttoptr_bytes.94" to ptr addrspace(1)
  %".2183" = load float, ptr addrspace(1) %"ptr_cast_for_access.94"
  %".2184" = bitcast ptr %"R11" to ptr
  store float %".2183", ptr %".2184"
  ; MOV R10, 0x3bbb989d
  %".2187" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".2187"
  ; MOV R13, 0x437c0000
  %".2190" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".2190"
  ; FADD R11, R11, R54
  %"cast_ptr.241" = bitcast ptr %"R11" to ptr
  %".2193" = load float, ptr %"cast_ptr.241"
  %"cast_ptr.242" = bitcast ptr %"R54" to ptr
  %".2194" = load float, ptr %"cast_ptr.242"
  %"fadd.86" = fadd float %".2193", %".2194"
  %".2195" = bitcast ptr %"R11" to ptr
  store float %"fadd.86", ptr %".2195"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %"cast_ptr.243" = bitcast ptr %"R11" to ptr
  %".2198" = load float, ptr %"cast_ptr.243"
  %".2199" = fneg float %".2198"
  %"cast_ptr.244" = bitcast ptr %"R10" to ptr
  %".2200" = load float, ptr %"cast_ptr.244"
  %"fmul.80" = fmul float %".2199", %".2200"
  %"fadd.87" = fadd float %"fmul.80", 0x3fe0000000000000
  %".2201" = bitcast ptr %"R10" to ptr
  store float %"fadd.87", ptr %".2201"
  ; FFMA.RM R10, R10, R13, 12582913
  %"cast_ptr.245" = bitcast ptr %"R10" to ptr
  %".2204" = load float, ptr %"cast_ptr.245"
  %"cast_ptr.246" = bitcast ptr %"R13" to ptr
  %".2205" = load float, ptr %"cast_ptr.246"
  %"fmul.81" = fmul float %".2204", %".2205"
  %"fadd.88" = fadd float %"fmul.81", 0x4168000020000000
  %".2206" = bitcast ptr %"R10" to ptr
  store float %"fadd.88", ptr %".2206"
  ; FADD R12, R10.reuse, -12583039
  %"cast_ptr.247" = bitcast ptr %"R10" to ptr
  %".2209" = load float, ptr %"cast_ptr.247"
  %"fadd.89" = fadd float %".2209", 0xc168000fe0000000
  %".2210" = bitcast ptr %"R12" to ptr
  store float %"fadd.89", ptr %".2210"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".2213" = icmp ult i32 23, 32
  %"SHF_min.9" = select  i1 %".2213", i32 23, i32 32
  %".2214" = load i32, ptr %"R10"
  %"zext.217" = zext i32 0 to i64
  %"zext.218" = zext i32 %".2214" to i64
  %"zext.219" = zext i32 23 to i64
  %"shl.116" = shl i64 %"zext.217", 32
  %"or.104" = or i64 %"shl.116", %"zext.218"
  %"shl.117" = shl i64 %"or.104", %"zext.219"
  %"and.6" = and i64 %"shl.117", 4294967295
  %"trunc32.65" = trunc i64 %"and.6" to i32
  store i32 %"trunc32.65", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %"cast_ptr.248" = bitcast ptr %"R11" to ptr
  %".2217" = load float, ptr %"cast_ptr.248"
  %".2218" = fneg float %".2217"
  %"cast_ptr.249" = bitcast ptr %"R12" to ptr
  %".2219" = load float, ptr %"cast_ptr.249"
  %".2220" = fneg float %".2219"
  %"fmul.82" = fmul float %".2218", 0x3ff7154760000000
  %"fadd.90" = fadd float %"fmul.82", %".2220"
  %".2221" = bitcast ptr %"R12" to ptr
  store float %"fadd.90", ptr %".2221"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %"cast_ptr.250" = bitcast ptr %"R11" to ptr
  %".2224" = load float, ptr %"cast_ptr.250"
  %".2225" = fneg float %".2224"
  %"cast_ptr.251" = bitcast ptr %"R12" to ptr
  %".2226" = load float, ptr %"cast_ptr.251"
  %"fmul.83" = fmul float %".2225", 0x3e54ae0c00000000
  %"fadd.91" = fadd float %"fmul.83", %".2226"
  %".2227" = bitcast ptr %"R12" to ptr
  store float %"fadd.91", ptr %".2227"
  ; MUFU.EX2 R11, R12
  %"cast_ptr.252" = bitcast ptr %"R12" to ptr
  %".2230" = load float, ptr %"cast_ptr.252"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".2230")
  %".2231" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".2231"
  ; FFMA R20, R20, R11, 1
  %"cast_ptr.253" = bitcast ptr %"R20" to ptr
  %".2234" = load float, ptr %"cast_ptr.253"
  %"cast_ptr.254" = bitcast ptr %"R11" to ptr
  %".2235" = load float, ptr %"cast_ptr.254"
  %"fmul.84" = fmul float %".2234", %".2235"
  %"fadd.92" = fadd float %"fmul.84", 0x3ff0000000000000
  %".2236" = bitcast ptr %"R20" to ptr
  store float %"fadd.92", ptr %".2236"
  ; @!P4 BRA `(.L_x_10)
  %".2239" = load i1, ptr %"P4"
  %".2240" = icmp ne i1 %".2239", 1
  br i1 %".2240", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".2243" = load i32, ptr %"R5"
  %".2244" = load i1, ptr %"PT"
  %"cmp.20" = icmp sge i32 %".2243", 3
  %".2245" = xor i1 %"cmp.20", -1
  %".2246" = and i1 %"cmp.20", %".2244"
  %".2247" = and i1 %".2245", %".2244"
  store i1 %".2246", ptr %"P0"
  ; MOV R8, RZ
  %".2250" = bitcast ptr %"R8" to ptr
  store float              0x0, ptr %".2250"
  ; MOV R22, RZ
  store i32 0, ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".2255" = load i1, ptr %"P0"
  %".2256" = icmp ne i1 %".2255", 1
  br i1 %".2256", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".2259" = load i32, ptr %"R7"
  %".2260" = load i1, ptr %"PT"
  %"cmp.21" = icmp sgt i32 %".2259", 0
  %".2261" = xor i1 %"cmp.21", -1
  %".2262" = and i1 %"cmp.21", %".2260"
  %".2263" = and i1 %".2261", %".2260"
  store i1 %".2262", ptr %"P0"
  ; MOV R8, RZ
  %".2266" = bitcast ptr %"R8" to ptr
  store float              0x0, ptr %".2266"
  ; MOV R22, RZ
  store i32 0, ptr %"R22"
  ; MOV R23, R7
  %".2271" = load i32, ptr %"R7"
  store i32 %".2271", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".2274" = load i1, ptr %"P0"
  %".2275" = icmp ne i1 %".2274", 1
  br i1 %".2275", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2278" = load i32, ptr %"R23"
  %".2279" = load i1, ptr %"PT"
  %"cmp.22" = icmp sgt i32 %".2278", 12
  %".2280" = xor i1 %"cmp.22", -1
  %".2281" = and i1 %"cmp.22", %".2279"
  %".2282" = and i1 %".2280", %".2279"
  store i1 %".2281", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".2285" = and i1 1, 1
  %".2286" = and i1 %".2285", 1
  ; @!P1 BRA `(.L_x_13)
  %".2288" = load i1, ptr %"P1"
  %".2289" = icmp ne i1 %".2288", 1
  br i1 %".2289", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2292" = xor i1 1, 1
  %".2293" = and i1 %".2292", 1
  %".2294" = and i1 %".2293", 1
  br label %".L_x_14"
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".2299" = load i32, ptr %"R3"
  %".2300" = load i32, ptr %"R22"
  %".2301" = add i32 %".2299", %".2300"
  %".2302" = add i32 %".2301", 0
  store i32 %".2302", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".2305" = load i32, ptr %"R22"
  %".2306" = load i32, ptr %"R49"
  %"imad_ext1.28" = zext i32 %".2305" to i64
  %"imad_ext2.28" = zext i32 %".2306" to i64
  %"imad_mul.36" = mul i64 %"imad_ext1.28", %"imad_ext2.28"
  %".2307" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.36" = add i64 %"imad_mul.36", %".2307"
  %".2308" = and i64 %"imad_add.36", 18446744069414584320
  %".2309" = lshr i64 %".2308", 32
  %"trunc32.66" = trunc i64 %".2309" to i32
  %"trunc32.67" = trunc i64 %"imad_add.36" to i32
  store i32 %"trunc32.67", ptr %"R12"
  store i32 %"trunc32.66", ptr %"R13"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".2313" = load i32, ptr %"R16"
  %".2314" = load i32, ptr %"R49"
  %"imad_ext1.29" = zext i32 %".2313" to i64
  %"imad_ext2.29" = zext i32 %".2314" to i64
  %"imad_mul.37" = mul i64 %"imad_ext1.29", %"imad_ext2.29"
  %".2315" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.37" = add i64 %"imad_mul.37", %".2315"
  %".2316" = and i64 %"imad_add.37", 18446744069414584320
  %".2317" = lshr i64 %".2316", 32
  %"trunc32.68" = trunc i64 %".2317" to i32
  %"trunc32.69" = trunc i64 %"imad_add.37" to i32
  store i32 %"trunc32.69", ptr %"R16"
  store i32 %"trunc32.68", ptr %"R17"
  ; IADD3 R18, R22, 0x4, RZ
  %".2321" = load i32, ptr %"R22"
  %".2322" = add i32 %".2321", 4
  %".2323" = add i32 %".2322", 0
  store i32 %".2323", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".2326" = load i32, ptr %"R12"
  %"zext.220" = zext i32 %".2326" to i64
  %".2327" = load i32, ptr %"R13"
  %"zext.221" = zext i32 %".2327" to i64
  %"shl.118" = shl i64 %"zext.221", 32
  %"or.105" = or i64 %"shl.118", %"zext.220"
  %"inttoptr_bytes.95" = inttoptr i64 %"or.105" to ptr addrspace(1)
  %"ptr_cast_for_access.95" = bitcast ptr addrspace(1) %"inttoptr_bytes.95" to ptr addrspace(1)
  %".2328" = load float, ptr addrspace(1) %"ptr_cast_for_access.95"
  %".2329" = bitcast ptr %"R24" to ptr
  store float %".2328", ptr %".2329"
  ; IADD3 R14, R3, R18, RZ
  %".2332" = load i32, ptr %"R3"
  %".2333" = load i32, ptr %"R18"
  %".2334" = add i32 %".2332", %".2333"
  %".2335" = add i32 %".2334", 0
  store i32 %".2335", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".2338" = load i32, ptr %"R16"
  %"zext.222" = zext i32 %".2338" to i64
  %".2339" = load i32, ptr %"R17"
  %"zext.223" = zext i32 %".2339" to i64
  %"shl.119" = shl i64 %"zext.223", 32
  %"or.106" = or i64 %"shl.119", %"zext.222"
  %"inttoptr_bytes.96" = inttoptr i64 %"or.106" to ptr addrspace(1)
  %"ptr_cast_for_access.96" = bitcast ptr addrspace(1) %"inttoptr_bytes.96" to ptr addrspace(1)
  %".2340" = load float, ptr addrspace(1) %"ptr_cast_for_access.96"
  %".2341" = bitcast ptr %"R21" to ptr
  store float %".2340", ptr %".2341"
  ; LDG.E.SYS R36, [R12+0x4]
  %".2344" = load i32, ptr %"R12"
  %"zext.224" = zext i32 %".2344" to i64
  %".2345" = load i32, ptr %"R13"
  %"zext.225" = zext i32 %".2345" to i64
  %"shl.120" = shl i64 %"zext.225", 32
  %"or.107" = or i64 %"shl.120", %"zext.224"
  %"ptr_plus_imm.69" = add i64 %"or.107", 4
  %"inttoptr_bytes.97" = inttoptr i64 %"ptr_plus_imm.69" to ptr addrspace(1)
  %"ptr_cast_for_access.97" = bitcast ptr addrspace(1) %"inttoptr_bytes.97" to ptr addrspace(1)
  %".2346" = load float, ptr addrspace(1) %"ptr_cast_for_access.97"
  %".2347" = bitcast ptr %"R36" to ptr
  store float %".2346", ptr %".2347"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".2350" = load i32, ptr %"R18"
  %".2351" = load i32, ptr %"R49"
  %"imad_ext1.30" = zext i32 %".2350" to i64
  %"imad_ext2.30" = zext i32 %".2351" to i64
  %"imad_mul.38" = mul i64 %"imad_ext1.30", %"imad_ext2.30"
  %".2352" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.38" = add i64 %"imad_mul.38", %".2352"
  %".2353" = and i64 %"imad_add.38", 18446744069414584320
  %".2354" = lshr i64 %".2353", 32
  %"trunc32.70" = trunc i64 %".2354" to i32
  %"trunc32.71" = trunc i64 %"imad_add.38" to i32
  store i32 %"trunc32.71", ptr %"R18"
  store i32 %"trunc32.70", ptr %"R19"
  ; LDG.E.SYS R25, [R16+0x4]
  %".2358" = load i32, ptr %"R16"
  %"zext.226" = zext i32 %".2358" to i64
  %".2359" = load i32, ptr %"R17"
  %"zext.227" = zext i32 %".2359" to i64
  %"shl.121" = shl i64 %"zext.227", 32
  %"or.108" = or i64 %"shl.121", %"zext.226"
  %"ptr_plus_imm.70" = add i64 %"or.108", 4
  %"inttoptr_bytes.98" = inttoptr i64 %"ptr_plus_imm.70" to ptr addrspace(1)
  %"ptr_cast_for_access.98" = bitcast ptr addrspace(1) %"inttoptr_bytes.98" to ptr addrspace(1)
  %".2360" = load float, ptr addrspace(1) %"ptr_cast_for_access.98"
  %".2361" = bitcast ptr %"R25" to ptr
  store float %".2360", ptr %".2361"
  ; LDG.E.SYS R46, [R12+0x8]
  %".2364" = load i32, ptr %"R12"
  %"zext.228" = zext i32 %".2364" to i64
  %".2365" = load i32, ptr %"R13"
  %"zext.229" = zext i32 %".2365" to i64
  %"shl.122" = shl i64 %"zext.229", 32
  %"or.109" = or i64 %"shl.122", %"zext.228"
  %"ptr_plus_imm.71" = add i64 %"or.109", 8
  %"inttoptr_bytes.99" = inttoptr i64 %"ptr_plus_imm.71" to ptr addrspace(1)
  %"ptr_cast_for_access.99" = bitcast ptr addrspace(1) %"inttoptr_bytes.99" to ptr addrspace(1)
  %".2366" = load float, ptr addrspace(1) %"ptr_cast_for_access.99"
  %".2367" = bitcast ptr %"R46" to ptr
  store float %".2366", ptr %".2367"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".2370" = load i32, ptr %"R14"
  %".2371" = load i32, ptr %"R49"
  %"imad_ext1.31" = zext i32 %".2370" to i64
  %"imad_ext2.31" = zext i32 %".2371" to i64
  %"imad_mul.39" = mul i64 %"imad_ext1.31", %"imad_ext2.31"
  %".2372" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.39" = add i64 %"imad_mul.39", %".2372"
  %".2373" = and i64 %"imad_add.39", 18446744069414584320
  %".2374" = lshr i64 %".2373", 32
  %"trunc32.72" = trunc i64 %".2374" to i32
  %"trunc32.73" = trunc i64 %"imad_add.39" to i32
  store i32 %"trunc32.73", ptr %"R14"
  store i32 %"trunc32.72", ptr %"R15"
  ; LDG.E.SYS R34, [R16+0x8]
  %".2378" = load i32, ptr %"R16"
  %"zext.230" = zext i32 %".2378" to i64
  %".2379" = load i32, ptr %"R17"
  %"zext.231" = zext i32 %".2379" to i64
  %"shl.123" = shl i64 %"zext.231", 32
  %"or.110" = or i64 %"shl.123", %"zext.230"
  %"ptr_plus_imm.72" = add i64 %"or.110", 8
  %"inttoptr_bytes.100" = inttoptr i64 %"ptr_plus_imm.72" to ptr addrspace(1)
  %"ptr_cast_for_access.100" = bitcast ptr addrspace(1) %"inttoptr_bytes.100" to ptr addrspace(1)
  %".2380" = load float, ptr addrspace(1) %"ptr_cast_for_access.100"
  %".2381" = bitcast ptr %"R34" to ptr
  store float %".2380", ptr %".2381"
  ; LDG.E.SYS R44, [R12+0xc]
  %".2384" = load i32, ptr %"R12"
  %"zext.232" = zext i32 %".2384" to i64
  %".2385" = load i32, ptr %"R13"
  %"zext.233" = zext i32 %".2385" to i64
  %"shl.124" = shl i64 %"zext.233", 32
  %"or.111" = or i64 %"shl.124", %"zext.232"
  %"ptr_plus_imm.73" = add i64 %"or.111", 12
  %"inttoptr_bytes.101" = inttoptr i64 %"ptr_plus_imm.73" to ptr addrspace(1)
  %"ptr_cast_for_access.101" = bitcast ptr addrspace(1) %"inttoptr_bytes.101" to ptr addrspace(1)
  %".2386" = load float, ptr addrspace(1) %"ptr_cast_for_access.101"
  %".2387" = bitcast ptr %"R44" to ptr
  store float %".2386", ptr %".2387"
  ; IADD3 R10, R22, 0x8, RZ
  %".2390" = load i32, ptr %"R22"
  %".2391" = add i32 %".2390", 8
  %".2392" = add i32 %".2391", 0
  store i32 %".2392", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".2395" = load i32, ptr %"R16"
  %"zext.234" = zext i32 %".2395" to i64
  %".2396" = load i32, ptr %"R17"
  %"zext.235" = zext i32 %".2396" to i64
  %"shl.125" = shl i64 %"zext.235", 32
  %"or.112" = or i64 %"shl.125", %"zext.234"
  %"ptr_plus_imm.74" = add i64 %"or.112", 12
  %"inttoptr_bytes.102" = inttoptr i64 %"ptr_plus_imm.74" to ptr addrspace(1)
  %"ptr_cast_for_access.102" = bitcast ptr addrspace(1) %"inttoptr_bytes.102" to ptr addrspace(1)
  %".2397" = load float, ptr addrspace(1) %"ptr_cast_for_access.102"
  %".2398" = bitcast ptr %"R41" to ptr
  store float %".2397", ptr %".2398"
  ; LDG.E.SYS R42, [R18]
  %".2401" = load i32, ptr %"R18"
  %"zext.236" = zext i32 %".2401" to i64
  %".2402" = load i32, ptr %"R19"
  %"zext.237" = zext i32 %".2402" to i64
  %"shl.126" = shl i64 %"zext.237", 32
  %"or.113" = or i64 %"shl.126", %"zext.236"
  %"inttoptr_bytes.103" = inttoptr i64 %"or.113" to ptr addrspace(1)
  %"ptr_cast_for_access.103" = bitcast ptr addrspace(1) %"inttoptr_bytes.103" to ptr addrspace(1)
  %".2403" = load float, ptr addrspace(1) %"ptr_cast_for_access.103"
  %".2404" = bitcast ptr %"R42" to ptr
  store float %".2403", ptr %".2404"
  ; IADD3 R50, R3, R10, RZ
  %".2407" = load i32, ptr %"R3"
  %".2408" = load i32, ptr %"R10"
  %".2409" = add i32 %".2407", %".2408"
  %".2410" = add i32 %".2409", 0
  store i32 %".2410", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".2413" = load i32, ptr %"R14"
  %"zext.238" = zext i32 %".2413" to i64
  %".2414" = load i32, ptr %"R15"
  %"zext.239" = zext i32 %".2414" to i64
  %"shl.127" = shl i64 %"zext.239", 32
  %"or.114" = or i64 %"shl.127", %"zext.238"
  %"inttoptr_bytes.104" = inttoptr i64 %"or.114" to ptr addrspace(1)
  %"ptr_cast_for_access.104" = bitcast ptr addrspace(1) %"inttoptr_bytes.104" to ptr addrspace(1)
  %".2415" = load float, ptr addrspace(1) %"ptr_cast_for_access.104"
  %".2416" = bitcast ptr %"R39" to ptr
  store float %".2415", ptr %".2416"
  ; LDG.E.SYS R40, [R18+0x4]
  %".2419" = load i32, ptr %"R18"
  %"zext.240" = zext i32 %".2419" to i64
  %".2420" = load i32, ptr %"R19"
  %"zext.241" = zext i32 %".2420" to i64
  %"shl.128" = shl i64 %"zext.241", 32
  %"or.115" = or i64 %"shl.128", %"zext.240"
  %"ptr_plus_imm.75" = add i64 %"or.115", 4
  %"inttoptr_bytes.105" = inttoptr i64 %"ptr_plus_imm.75" to ptr addrspace(1)
  %"ptr_cast_for_access.105" = bitcast ptr addrspace(1) %"inttoptr_bytes.105" to ptr addrspace(1)
  %".2421" = load float, ptr addrspace(1) %"ptr_cast_for_access.105"
  %".2422" = bitcast ptr %"R40" to ptr
  store float %".2421", ptr %".2422"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".2425" = load i32, ptr %"R10"
  %".2426" = load i32, ptr %"R49"
  %"imad_ext1.32" = zext i32 %".2425" to i64
  %"imad_ext2.32" = zext i32 %".2426" to i64
  %"imad_mul.40" = mul i64 %"imad_ext1.32", %"imad_ext2.32"
  %".2427" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.40" = add i64 %"imad_mul.40", %".2427"
  %".2428" = and i64 %"imad_add.40", 18446744069414584320
  %".2429" = lshr i64 %".2428", 32
  %"trunc32.74" = trunc i64 %".2429" to i32
  %"trunc32.75" = trunc i64 %"imad_add.40" to i32
  store i32 %"trunc32.75", ptr %"R10"
  store i32 %"trunc32.74", ptr %"R11"
  ; LDG.E.SYS R37, [R14+0x4]
  %".2433" = load i32, ptr %"R14"
  %"zext.242" = zext i32 %".2433" to i64
  %".2434" = load i32, ptr %"R15"
  %"zext.243" = zext i32 %".2434" to i64
  %"shl.129" = shl i64 %"zext.243", 32
  %"or.116" = or i64 %"shl.129", %"zext.242"
  %"ptr_plus_imm.76" = add i64 %"or.116", 4
  %"inttoptr_bytes.106" = inttoptr i64 %"ptr_plus_imm.76" to ptr addrspace(1)
  %"ptr_cast_for_access.106" = bitcast ptr addrspace(1) %"inttoptr_bytes.106" to ptr addrspace(1)
  %".2435" = load float, ptr addrspace(1) %"ptr_cast_for_access.106"
  %".2436" = bitcast ptr %"R37" to ptr
  store float %".2435", ptr %".2436"
  ; LDG.E.SYS R38, [R18+0x8]
  %".2439" = load i32, ptr %"R18"
  %"zext.244" = zext i32 %".2439" to i64
  %".2440" = load i32, ptr %"R19"
  %"zext.245" = zext i32 %".2440" to i64
  %"shl.130" = shl i64 %"zext.245", 32
  %"or.117" = or i64 %"shl.130", %"zext.244"
  %"ptr_plus_imm.77" = add i64 %"or.117", 8
  %"inttoptr_bytes.107" = inttoptr i64 %"ptr_plus_imm.77" to ptr addrspace(1)
  %"ptr_cast_for_access.107" = bitcast ptr addrspace(1) %"inttoptr_bytes.107" to ptr addrspace(1)
  %".2441" = load float, ptr addrspace(1) %"ptr_cast_for_access.107"
  %".2442" = bitcast ptr %"R38" to ptr
  store float %".2441", ptr %".2442"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".2445" = load i32, ptr %"R50"
  %".2446" = load i32, ptr %"R49"
  %"imad_ext1.33" = zext i32 %".2445" to i64
  %"imad_ext2.33" = zext i32 %".2446" to i64
  %"imad_mul.41" = mul i64 %"imad_ext1.33", %"imad_ext2.33"
  %".2447" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.41" = add i64 %"imad_mul.41", %".2447"
  %".2448" = and i64 %"imad_add.41", 18446744069414584320
  %".2449" = lshr i64 %".2448", 32
  %"trunc32.76" = trunc i64 %".2449" to i32
  %"trunc32.77" = trunc i64 %"imad_add.41" to i32
  store i32 %"trunc32.77", ptr %"R12"
  store i32 %"trunc32.76", ptr %"R13"
  ; LDG.E.SYS R35, [R14+0x8]
  %".2453" = load i32, ptr %"R14"
  %"zext.246" = zext i32 %".2453" to i64
  %".2454" = load i32, ptr %"R15"
  %"zext.247" = zext i32 %".2454" to i64
  %"shl.131" = shl i64 %"zext.247", 32
  %"or.118" = or i64 %"shl.131", %"zext.246"
  %"ptr_plus_imm.78" = add i64 %"or.118", 8
  %"inttoptr_bytes.108" = inttoptr i64 %"ptr_plus_imm.78" to ptr addrspace(1)
  %"ptr_cast_for_access.108" = bitcast ptr addrspace(1) %"inttoptr_bytes.108" to ptr addrspace(1)
  %".2455" = load float, ptr addrspace(1) %"ptr_cast_for_access.108"
  %".2456" = bitcast ptr %"R35" to ptr
  store float %".2455", ptr %".2456"
  ; LDG.E.SYS R48, [R18+0xc]
  %".2459" = load i32, ptr %"R18"
  %"zext.248" = zext i32 %".2459" to i64
  %".2460" = load i32, ptr %"R19"
  %"zext.249" = zext i32 %".2460" to i64
  %"shl.132" = shl i64 %"zext.249", 32
  %"or.119" = or i64 %"shl.132", %"zext.248"
  %"ptr_plus_imm.79" = add i64 %"or.119", 12
  %"inttoptr_bytes.109" = inttoptr i64 %"ptr_plus_imm.79" to ptr addrspace(1)
  %"ptr_cast_for_access.109" = bitcast ptr addrspace(1) %"inttoptr_bytes.109" to ptr addrspace(1)
  %".2461" = load float, ptr addrspace(1) %"ptr_cast_for_access.109"
  %".2462" = bitcast ptr %"R48" to ptr
  store float %".2461", ptr %".2462"
  ; IADD3 R16, R22, 0xc, RZ
  %".2465" = load i32, ptr %"R22"
  %".2466" = add i32 %".2465", 12
  %".2467" = add i32 %".2466", 0
  store i32 %".2467", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".2470" = load i32, ptr %"R14"
  %"zext.250" = zext i32 %".2470" to i64
  %".2471" = load i32, ptr %"R15"
  %"zext.251" = zext i32 %".2471" to i64
  %"shl.133" = shl i64 %"zext.251", 32
  %"or.120" = or i64 %"shl.133", %"zext.250"
  %"ptr_plus_imm.80" = add i64 %"or.120", 12
  %"inttoptr_bytes.110" = inttoptr i64 %"ptr_plus_imm.80" to ptr addrspace(1)
  %"ptr_cast_for_access.110" = bitcast ptr addrspace(1) %"inttoptr_bytes.110" to ptr addrspace(1)
  %".2472" = load float, ptr addrspace(1) %"ptr_cast_for_access.110"
  %".2473" = bitcast ptr %"R47" to ptr
  store float %".2472", ptr %".2473"
  ; LDG.E.SYS R54, [R10]
  %".2476" = load i32, ptr %"R10"
  %"zext.252" = zext i32 %".2476" to i64
  %".2477" = load i32, ptr %"R11"
  %"zext.253" = zext i32 %".2477" to i64
  %"shl.134" = shl i64 %"zext.253", 32
  %"or.121" = or i64 %"shl.134", %"zext.252"
  %"inttoptr_bytes.111" = inttoptr i64 %"or.121" to ptr addrspace(1)
  %"ptr_cast_for_access.111" = bitcast ptr addrspace(1) %"inttoptr_bytes.111" to ptr addrspace(1)
  %".2478" = load float, ptr addrspace(1) %"ptr_cast_for_access.111"
  %".2479" = bitcast ptr %"R54" to ptr
  store float %".2478", ptr %".2479"
  ; IADD3 R58, R3, R16, RZ
  %".2482" = load i32, ptr %"R3"
  %".2483" = load i32, ptr %"R16"
  %".2484" = add i32 %".2482", %".2483"
  %".2485" = add i32 %".2484", 0
  store i32 %".2485", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".2488" = load i32, ptr %"R12"
  %"zext.254" = zext i32 %".2488" to i64
  %".2489" = load i32, ptr %"R13"
  %"zext.255" = zext i32 %".2489" to i64
  %"shl.135" = shl i64 %"zext.255", 32
  %"or.122" = or i64 %"shl.135", %"zext.254"
  %"inttoptr_bytes.112" = inttoptr i64 %"or.122" to ptr addrspace(1)
  %"ptr_cast_for_access.112" = bitcast ptr addrspace(1) %"inttoptr_bytes.112" to ptr addrspace(1)
  %".2490" = load float, ptr addrspace(1) %"ptr_cast_for_access.112"
  %".2491" = bitcast ptr %"R45" to ptr
  store float %".2490", ptr %".2491"
  ; LDG.E.SYS R52, [R10+0x4]
  %".2494" = load i32, ptr %"R10"
  %"zext.256" = zext i32 %".2494" to i64
  %".2495" = load i32, ptr %"R11"
  %"zext.257" = zext i32 %".2495" to i64
  %"shl.136" = shl i64 %"zext.257", 32
  %"or.123" = or i64 %"shl.136", %"zext.256"
  %"ptr_plus_imm.81" = add i64 %"or.123", 4
  %"inttoptr_bytes.113" = inttoptr i64 %"ptr_plus_imm.81" to ptr addrspace(1)
  %"ptr_cast_for_access.113" = bitcast ptr addrspace(1) %"inttoptr_bytes.113" to ptr addrspace(1)
  %".2496" = load float, ptr addrspace(1) %"ptr_cast_for_access.113"
  %".2497" = bitcast ptr %"R52" to ptr
  store float %".2496", ptr %".2497"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".2500" = load i32, ptr %"R16"
  %".2501" = load i32, ptr %"R49"
  %"imad_ext1.34" = zext i32 %".2500" to i64
  %"imad_ext2.34" = zext i32 %".2501" to i64
  %"imad_mul.42" = mul i64 %"imad_ext1.34", %"imad_ext2.34"
  %".2502" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.42" = add i64 %"imad_mul.42", %".2502"
  %".2503" = and i64 %"imad_add.42", 18446744069414584320
  %".2504" = lshr i64 %".2503", 32
  %"trunc32.78" = trunc i64 %".2504" to i32
  %"trunc32.79" = trunc i64 %"imad_add.42" to i32
  store i32 %"trunc32.79", ptr %"R16"
  store i32 %"trunc32.78", ptr %"R17"
  ; LDG.E.SYS R43, [R12+0x4]
  %".2508" = load i32, ptr %"R12"
  %"zext.258" = zext i32 %".2508" to i64
  %".2509" = load i32, ptr %"R13"
  %"zext.259" = zext i32 %".2509" to i64
  %"shl.137" = shl i64 %"zext.259", 32
  %"or.124" = or i64 %"shl.137", %"zext.258"
  %"ptr_plus_imm.82" = add i64 %"or.124", 4
  %"inttoptr_bytes.114" = inttoptr i64 %"ptr_plus_imm.82" to ptr addrspace(1)
  %"ptr_cast_for_access.114" = bitcast ptr addrspace(1) %"inttoptr_bytes.114" to ptr addrspace(1)
  %".2510" = load float, ptr addrspace(1) %"ptr_cast_for_access.114"
  %".2511" = bitcast ptr %"R43" to ptr
  store float %".2510", ptr %".2511"
  ; LDG.E.SYS R50, [R10+0x8]
  %".2514" = load i32, ptr %"R10"
  %"zext.260" = zext i32 %".2514" to i64
  %".2515" = load i32, ptr %"R11"
  %"zext.261" = zext i32 %".2515" to i64
  %"shl.138" = shl i64 %"zext.261", 32
  %"or.125" = or i64 %"shl.138", %"zext.260"
  %"ptr_plus_imm.83" = add i64 %"or.125", 8
  %"inttoptr_bytes.115" = inttoptr i64 %"ptr_plus_imm.83" to ptr addrspace(1)
  %"ptr_cast_for_access.115" = bitcast ptr addrspace(1) %"inttoptr_bytes.115" to ptr addrspace(1)
  %".2516" = load float, ptr addrspace(1) %"ptr_cast_for_access.115"
  %".2517" = bitcast ptr %"R50" to ptr
  store float %".2516", ptr %".2517"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".2520" = load i32, ptr %"R58"
  %".2521" = load i32, ptr %"R49"
  %"imad_ext1.35" = zext i32 %".2520" to i64
  %"imad_ext2.35" = zext i32 %".2521" to i64
  %"imad_mul.43" = mul i64 %"imad_ext1.35", %"imad_ext2.35"
  %".2522" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.43" = add i64 %"imad_mul.43", %".2522"
  %".2523" = and i64 %"imad_add.43", 18446744069414584320
  %".2524" = lshr i64 %".2523", 32
  %"trunc32.80" = trunc i64 %".2524" to i32
  %"trunc32.81" = trunc i64 %"imad_add.43" to i32
  store i32 %"trunc32.81", ptr %"R14"
  store i32 %"trunc32.80", ptr %"R15"
  ; LDG.E.SYS R18, [R12+0x8]
  %".2528" = load i32, ptr %"R12"
  %"zext.262" = zext i32 %".2528" to i64
  %".2529" = load i32, ptr %"R13"
  %"zext.263" = zext i32 %".2529" to i64
  %"shl.139" = shl i64 %"zext.263", 32
  %"or.126" = or i64 %"shl.139", %"zext.262"
  %"ptr_plus_imm.84" = add i64 %"or.126", 8
  %"inttoptr_bytes.116" = inttoptr i64 %"ptr_plus_imm.84" to ptr addrspace(1)
  %"ptr_cast_for_access.116" = bitcast ptr addrspace(1) %"inttoptr_bytes.116" to ptr addrspace(1)
  %".2530" = load float, ptr addrspace(1) %"ptr_cast_for_access.116"
  %".2531" = bitcast ptr %"R18" to ptr
  store float %".2530", ptr %".2531"
  ; LDG.E.SYS R56, [R10+0xc]
  %".2534" = load i32, ptr %"R10"
  %"zext.264" = zext i32 %".2534" to i64
  %".2535" = load i32, ptr %"R11"
  %"zext.265" = zext i32 %".2535" to i64
  %"shl.140" = shl i64 %"zext.265", 32
  %"or.127" = or i64 %"shl.140", %"zext.264"
  %"ptr_plus_imm.85" = add i64 %"or.127", 12
  %"inttoptr_bytes.117" = inttoptr i64 %"ptr_plus_imm.85" to ptr addrspace(1)
  %"ptr_cast_for_access.117" = bitcast ptr addrspace(1) %"inttoptr_bytes.117" to ptr addrspace(1)
  %".2536" = load float, ptr addrspace(1) %"ptr_cast_for_access.117"
  %".2537" = bitcast ptr %"R56" to ptr
  store float %".2536", ptr %".2537"
  ; LDG.E.SYS R55, [R12+0xc]
  %".2540" = load i32, ptr %"R12"
  %"zext.266" = zext i32 %".2540" to i64
  %".2541" = load i32, ptr %"R13"
  %"zext.267" = zext i32 %".2541" to i64
  %"shl.141" = shl i64 %"zext.267", 32
  %"or.128" = or i64 %"shl.141", %"zext.266"
  %"ptr_plus_imm.86" = add i64 %"or.128", 12
  %"inttoptr_bytes.118" = inttoptr i64 %"ptr_plus_imm.86" to ptr addrspace(1)
  %"ptr_cast_for_access.118" = bitcast ptr addrspace(1) %"inttoptr_bytes.118" to ptr addrspace(1)
  %".2542" = load float, ptr addrspace(1) %"ptr_cast_for_access.118"
  %".2543" = bitcast ptr %"R55" to ptr
  store float %".2542", ptr %".2543"
  ; LDG.E.SYS R51, [R16]
  %".2546" = load i32, ptr %"R16"
  %"zext.268" = zext i32 %".2546" to i64
  %".2547" = load i32, ptr %"R17"
  %"zext.269" = zext i32 %".2547" to i64
  %"shl.142" = shl i64 %"zext.269", 32
  %"or.129" = or i64 %"shl.142", %"zext.268"
  %"inttoptr_bytes.119" = inttoptr i64 %"or.129" to ptr addrspace(1)
  %"ptr_cast_for_access.119" = bitcast ptr addrspace(1) %"inttoptr_bytes.119" to ptr addrspace(1)
  %".2548" = load float, ptr addrspace(1) %"ptr_cast_for_access.119"
  %".2549" = bitcast ptr %"R51" to ptr
  store float %".2548", ptr %".2549"
  ; LDG.E.SYS R53, [R14]
  %".2552" = load i32, ptr %"R14"
  %"zext.270" = zext i32 %".2552" to i64
  %".2553" = load i32, ptr %"R15"
  %"zext.271" = zext i32 %".2553" to i64
  %"shl.143" = shl i64 %"zext.271", 32
  %"or.130" = or i64 %"shl.143", %"zext.270"
  %"inttoptr_bytes.120" = inttoptr i64 %"or.130" to ptr addrspace(1)
  %"ptr_cast_for_access.120" = bitcast ptr addrspace(1) %"inttoptr_bytes.120" to ptr addrspace(1)
  %".2554" = load float, ptr addrspace(1) %"ptr_cast_for_access.120"
  %".2555" = bitcast ptr %"R53" to ptr
  store float %".2554", ptr %".2555"
  ; LDG.E.SYS R60, [R16+0x4]
  %".2558" = load i32, ptr %"R16"
  %"zext.272" = zext i32 %".2558" to i64
  %".2559" = load i32, ptr %"R17"
  %"zext.273" = zext i32 %".2559" to i64
  %"shl.144" = shl i64 %"zext.273", 32
  %"or.131" = or i64 %"shl.144", %"zext.272"
  %"ptr_plus_imm.87" = add i64 %"or.131", 4
  %"inttoptr_bytes.121" = inttoptr i64 %"ptr_plus_imm.87" to ptr addrspace(1)
  %"ptr_cast_for_access.121" = bitcast ptr addrspace(1) %"inttoptr_bytes.121" to ptr addrspace(1)
  %".2560" = load float, ptr addrspace(1) %"ptr_cast_for_access.121"
  %".2561" = bitcast ptr %"R60" to ptr
  store float %".2560", ptr %".2561"
  ; LDG.E.SYS R49, [R14+0x4]
  %".2564" = load i32, ptr %"R14"
  %"zext.274" = zext i32 %".2564" to i64
  %".2565" = load i32, ptr %"R15"
  %"zext.275" = zext i32 %".2565" to i64
  %"shl.145" = shl i64 %"zext.275", 32
  %"or.132" = or i64 %"shl.145", %"zext.274"
  %"ptr_plus_imm.88" = add i64 %"or.132", 4
  %"inttoptr_bytes.122" = inttoptr i64 %"ptr_plus_imm.88" to ptr addrspace(1)
  %"ptr_cast_for_access.122" = bitcast ptr addrspace(1) %"inttoptr_bytes.122" to ptr addrspace(1)
  %".2566" = load float, ptr addrspace(1) %"ptr_cast_for_access.122"
  %".2567" = bitcast ptr %"R49" to ptr
  store float %".2566", ptr %".2567"
  ; LDG.E.SYS R58, [R16+0x8]
  %".2570" = load i32, ptr %"R16"
  %"zext.276" = zext i32 %".2570" to i64
  %".2571" = load i32, ptr %"R17"
  %"zext.277" = zext i32 %".2571" to i64
  %"shl.146" = shl i64 %"zext.277", 32
  %"or.133" = or i64 %"shl.146", %"zext.276"
  %"ptr_plus_imm.89" = add i64 %"or.133", 8
  %"inttoptr_bytes.123" = inttoptr i64 %"ptr_plus_imm.89" to ptr addrspace(1)
  %"ptr_cast_for_access.123" = bitcast ptr addrspace(1) %"inttoptr_bytes.123" to ptr addrspace(1)
  %".2572" = load float, ptr addrspace(1) %"ptr_cast_for_access.123"
  %".2573" = bitcast ptr %"R58" to ptr
  store float %".2572", ptr %".2573"
  ; LDG.E.SYS R19, [R14+0x8]
  %".2576" = load i32, ptr %"R14"
  %"zext.278" = zext i32 %".2576" to i64
  %".2577" = load i32, ptr %"R15"
  %"zext.279" = zext i32 %".2577" to i64
  %"shl.147" = shl i64 %"zext.279", 32
  %"or.134" = or i64 %"shl.147", %"zext.278"
  %"ptr_plus_imm.90" = add i64 %"or.134", 8
  %"inttoptr_bytes.124" = inttoptr i64 %"ptr_plus_imm.90" to ptr addrspace(1)
  %"ptr_cast_for_access.124" = bitcast ptr addrspace(1) %"inttoptr_bytes.124" to ptr addrspace(1)
  %".2578" = load float, ptr addrspace(1) %"ptr_cast_for_access.124"
  %".2579" = bitcast ptr %"R19" to ptr
  store float %".2578", ptr %".2579"
  ; LDG.E.SYS R57, [R16+0xc]
  %".2582" = load i32, ptr %"R16"
  %"zext.280" = zext i32 %".2582" to i64
  %".2583" = load i32, ptr %"R17"
  %"zext.281" = zext i32 %".2583" to i64
  %"shl.148" = shl i64 %"zext.281", 32
  %"or.135" = or i64 %"shl.148", %"zext.280"
  %"ptr_plus_imm.91" = add i64 %"or.135", 12
  %"inttoptr_bytes.125" = inttoptr i64 %"ptr_plus_imm.91" to ptr addrspace(1)
  %"ptr_cast_for_access.125" = bitcast ptr addrspace(1) %"inttoptr_bytes.125" to ptr addrspace(1)
  %".2584" = load float, ptr addrspace(1) %"ptr_cast_for_access.125"
  %".2585" = bitcast ptr %"R57" to ptr
  store float %".2584", ptr %".2585"
  ; LDG.E.SYS R59, [R14+0xc]
  %".2588" = load i32, ptr %"R14"
  %"zext.282" = zext i32 %".2588" to i64
  %".2589" = load i32, ptr %"R15"
  %"zext.283" = zext i32 %".2589" to i64
  %"shl.149" = shl i64 %"zext.283", 32
  %"or.136" = or i64 %"shl.149", %"zext.282"
  %"ptr_plus_imm.92" = add i64 %"or.136", 12
  %"inttoptr_bytes.126" = inttoptr i64 %"ptr_plus_imm.92" to ptr addrspace(1)
  %"ptr_cast_for_access.126" = bitcast ptr addrspace(1) %"inttoptr_bytes.126" to ptr addrspace(1)
  %".2590" = load float, ptr addrspace(1) %"ptr_cast_for_access.126"
  %".2591" = bitcast ptr %"R59" to ptr
  store float %".2590", ptr %".2591"
  ; IADD3 R23, R23, -0x10, RZ
  %".2594" = load i32, ptr %"R23"
  %".2595" = add i32 %".2594", -16
  %".2596" = add i32 %".2595", 0
  store i32 %".2596", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2599" = load i32, ptr %"R22"
  %".2600" = add i32 %".2599", 16
  %".2601" = add i32 %".2600", 0
  store i32 %".2601", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2604" = load i32, ptr %"R23"
  %".2605" = load i1, ptr %"PT"
  %"cmp.23" = icmp sgt i32 %".2604", 12
  %".2606" = xor i1 %"cmp.23", -1
  %".2607" = and i1 %"cmp.23", %".2605"
  %".2608" = and i1 %".2606", %".2605"
  store i1 %".2607", ptr %"P1"
  ; FMUL R24, R24, R9
  %"cast_ptr.255" = bitcast ptr %"R24" to ptr
  %".2611" = load float, ptr %"cast_ptr.255"
  %"cast_ptr.256" = bitcast ptr %"R9" to ptr
  %".2612" = load float, ptr %"cast_ptr.256"
  %"fmul.85" = fmul float %".2611", %".2612"
  %".2613" = bitcast ptr %"R24" to ptr
  store float %"fmul.85", ptr %".2613"
  ; FFMA R24, R24, R21, R8
  %"cast_ptr.257" = bitcast ptr %"R24" to ptr
  %".2616" = load float, ptr %"cast_ptr.257"
  %"cast_ptr.258" = bitcast ptr %"R21" to ptr
  %".2617" = load float, ptr %"cast_ptr.258"
  %"cast_ptr.259" = bitcast ptr %"R8" to ptr
  %".2618" = load float, ptr %"cast_ptr.259"
  %"fmul.86" = fmul float %".2616", %".2617"
  %"fadd.93" = fadd float %"fmul.86", %".2618"
  %".2619" = bitcast ptr %"R24" to ptr
  store float %"fadd.93", ptr %".2619"
  ; FMUL R36, R36, R9
  %"cast_ptr.260" = bitcast ptr %"R36" to ptr
  %".2622" = load float, ptr %"cast_ptr.260"
  %"cast_ptr.261" = bitcast ptr %"R9" to ptr
  %".2623" = load float, ptr %"cast_ptr.261"
  %"fmul.87" = fmul float %".2622", %".2623"
  %".2624" = bitcast ptr %"R36" to ptr
  store float %"fmul.87", ptr %".2624"
  ; FFMA R25, R36, R25, R24
  %"cast_ptr.262" = bitcast ptr %"R36" to ptr
  %".2627" = load float, ptr %"cast_ptr.262"
  %"cast_ptr.263" = bitcast ptr %"R25" to ptr
  %".2628" = load float, ptr %"cast_ptr.263"
  %"cast_ptr.264" = bitcast ptr %"R24" to ptr
  %".2629" = load float, ptr %"cast_ptr.264"
  %"fmul.88" = fmul float %".2627", %".2628"
  %"fadd.94" = fadd float %"fmul.88", %".2629"
  %".2630" = bitcast ptr %"R25" to ptr
  store float %"fadd.94", ptr %".2630"
  ; FMUL R46, R46, R9
  %"cast_ptr.265" = bitcast ptr %"R46" to ptr
  %".2633" = load float, ptr %"cast_ptr.265"
  %"cast_ptr.266" = bitcast ptr %"R9" to ptr
  %".2634" = load float, ptr %"cast_ptr.266"
  %"fmul.89" = fmul float %".2633", %".2634"
  %".2635" = bitcast ptr %"R46" to ptr
  store float %"fmul.89", ptr %".2635"
  ; FFMA R34, R46, R34, R25
  %"cast_ptr.267" = bitcast ptr %"R46" to ptr
  %".2638" = load float, ptr %"cast_ptr.267"
  %"cast_ptr.268" = bitcast ptr %"R34" to ptr
  %".2639" = load float, ptr %"cast_ptr.268"
  %"cast_ptr.269" = bitcast ptr %"R25" to ptr
  %".2640" = load float, ptr %"cast_ptr.269"
  %"fmul.90" = fmul float %".2638", %".2639"
  %"fadd.95" = fadd float %"fmul.90", %".2640"
  %".2641" = bitcast ptr %"R34" to ptr
  store float %"fadd.95", ptr %".2641"
  ; FMUL R44, R44, R9
  %"cast_ptr.270" = bitcast ptr %"R44" to ptr
  %".2644" = load float, ptr %"cast_ptr.270"
  %"cast_ptr.271" = bitcast ptr %"R9" to ptr
  %".2645" = load float, ptr %"cast_ptr.271"
  %"fmul.91" = fmul float %".2644", %".2645"
  %".2646" = bitcast ptr %"R44" to ptr
  store float %"fmul.91", ptr %".2646"
  ; FFMA R34, R44, R41, R34
  %"cast_ptr.272" = bitcast ptr %"R44" to ptr
  %".2649" = load float, ptr %"cast_ptr.272"
  %"cast_ptr.273" = bitcast ptr %"R41" to ptr
  %".2650" = load float, ptr %"cast_ptr.273"
  %"cast_ptr.274" = bitcast ptr %"R34" to ptr
  %".2651" = load float, ptr %"cast_ptr.274"
  %"fmul.92" = fmul float %".2649", %".2650"
  %"fadd.96" = fadd float %"fmul.92", %".2651"
  %".2652" = bitcast ptr %"R34" to ptr
  store float %"fadd.96", ptr %".2652"
  ; FMUL R42, R42, R9
  %"cast_ptr.275" = bitcast ptr %"R42" to ptr
  %".2655" = load float, ptr %"cast_ptr.275"
  %"cast_ptr.276" = bitcast ptr %"R9" to ptr
  %".2656" = load float, ptr %"cast_ptr.276"
  %"fmul.93" = fmul float %".2655", %".2656"
  %".2657" = bitcast ptr %"R42" to ptr
  store float %"fmul.93", ptr %".2657"
  ; FFMA R34, R42, R39, R34
  %"cast_ptr.277" = bitcast ptr %"R42" to ptr
  %".2660" = load float, ptr %"cast_ptr.277"
  %"cast_ptr.278" = bitcast ptr %"R39" to ptr
  %".2661" = load float, ptr %"cast_ptr.278"
  %"cast_ptr.279" = bitcast ptr %"R34" to ptr
  %".2662" = load float, ptr %"cast_ptr.279"
  %"fmul.94" = fmul float %".2660", %".2661"
  %"fadd.97" = fadd float %"fmul.94", %".2662"
  %".2663" = bitcast ptr %"R34" to ptr
  store float %"fadd.97", ptr %".2663"
  ; FMUL R40, R40, R9
  %"cast_ptr.280" = bitcast ptr %"R40" to ptr
  %".2666" = load float, ptr %"cast_ptr.280"
  %"cast_ptr.281" = bitcast ptr %"R9" to ptr
  %".2667" = load float, ptr %"cast_ptr.281"
  %"fmul.95" = fmul float %".2666", %".2667"
  %".2668" = bitcast ptr %"R40" to ptr
  store float %"fmul.95", ptr %".2668"
  ; FFMA R34, R40, R37, R34
  %"cast_ptr.282" = bitcast ptr %"R40" to ptr
  %".2671" = load float, ptr %"cast_ptr.282"
  %"cast_ptr.283" = bitcast ptr %"R37" to ptr
  %".2672" = load float, ptr %"cast_ptr.283"
  %"cast_ptr.284" = bitcast ptr %"R34" to ptr
  %".2673" = load float, ptr %"cast_ptr.284"
  %"fmul.96" = fmul float %".2671", %".2672"
  %"fadd.98" = fadd float %"fmul.96", %".2673"
  %".2674" = bitcast ptr %"R34" to ptr
  store float %"fadd.98", ptr %".2674"
  ; FMUL R38, R38, R9
  %"cast_ptr.285" = bitcast ptr %"R38" to ptr
  %".2677" = load float, ptr %"cast_ptr.285"
  %"cast_ptr.286" = bitcast ptr %"R9" to ptr
  %".2678" = load float, ptr %"cast_ptr.286"
  %"fmul.97" = fmul float %".2677", %".2678"
  %".2679" = bitcast ptr %"R38" to ptr
  store float %"fmul.97", ptr %".2679"
  ; FFMA R34, R38, R35, R34
  %"cast_ptr.287" = bitcast ptr %"R38" to ptr
  %".2682" = load float, ptr %"cast_ptr.287"
  %"cast_ptr.288" = bitcast ptr %"R35" to ptr
  %".2683" = load float, ptr %"cast_ptr.288"
  %"cast_ptr.289" = bitcast ptr %"R34" to ptr
  %".2684" = load float, ptr %"cast_ptr.289"
  %"fmul.98" = fmul float %".2682", %".2683"
  %"fadd.99" = fadd float %"fmul.98", %".2684"
  %".2685" = bitcast ptr %"R34" to ptr
  store float %"fadd.99", ptr %".2685"
  ; FMUL R48, R48, R9
  %"cast_ptr.290" = bitcast ptr %"R48" to ptr
  %".2688" = load float, ptr %"cast_ptr.290"
  %"cast_ptr.291" = bitcast ptr %"R9" to ptr
  %".2689" = load float, ptr %"cast_ptr.291"
  %"fmul.99" = fmul float %".2688", %".2689"
  %".2690" = bitcast ptr %"R48" to ptr
  store float %"fmul.99", ptr %".2690"
  ; FFMA R34, R48, R47, R34
  %"cast_ptr.292" = bitcast ptr %"R48" to ptr
  %".2693" = load float, ptr %"cast_ptr.292"
  %"cast_ptr.293" = bitcast ptr %"R47" to ptr
  %".2694" = load float, ptr %"cast_ptr.293"
  %"cast_ptr.294" = bitcast ptr %"R34" to ptr
  %".2695" = load float, ptr %"cast_ptr.294"
  %"fmul.100" = fmul float %".2693", %".2694"
  %"fadd.100" = fadd float %"fmul.100", %".2695"
  %".2696" = bitcast ptr %"R34" to ptr
  store float %"fadd.100", ptr %".2696"
  ; FMUL R54, R54, R9
  %"cast_ptr.295" = bitcast ptr %"R54" to ptr
  %".2699" = load float, ptr %"cast_ptr.295"
  %"cast_ptr.296" = bitcast ptr %"R9" to ptr
  %".2700" = load float, ptr %"cast_ptr.296"
  %"fmul.101" = fmul float %".2699", %".2700"
  %".2701" = bitcast ptr %"R54" to ptr
  store float %"fmul.101", ptr %".2701"
  ; FFMA R34, R54, R45, R34
  %"cast_ptr.297" = bitcast ptr %"R54" to ptr
  %".2704" = load float, ptr %"cast_ptr.297"
  %"cast_ptr.298" = bitcast ptr %"R45" to ptr
  %".2705" = load float, ptr %"cast_ptr.298"
  %"cast_ptr.299" = bitcast ptr %"R34" to ptr
  %".2706" = load float, ptr %"cast_ptr.299"
  %"fmul.102" = fmul float %".2704", %".2705"
  %"fadd.101" = fadd float %"fmul.102", %".2706"
  %".2707" = bitcast ptr %"R34" to ptr
  store float %"fadd.101", ptr %".2707"
  ; FMUL R52, R52, R9
  %"cast_ptr.300" = bitcast ptr %"R52" to ptr
  %".2710" = load float, ptr %"cast_ptr.300"
  %"cast_ptr.301" = bitcast ptr %"R9" to ptr
  %".2711" = load float, ptr %"cast_ptr.301"
  %"fmul.103" = fmul float %".2710", %".2711"
  %".2712" = bitcast ptr %"R52" to ptr
  store float %"fmul.103", ptr %".2712"
  ; FFMA R43, R52, R43, R34
  %"cast_ptr.302" = bitcast ptr %"R52" to ptr
  %".2715" = load float, ptr %"cast_ptr.302"
  %"cast_ptr.303" = bitcast ptr %"R43" to ptr
  %".2716" = load float, ptr %"cast_ptr.303"
  %"cast_ptr.304" = bitcast ptr %"R34" to ptr
  %".2717" = load float, ptr %"cast_ptr.304"
  %"fmul.104" = fmul float %".2715", %".2716"
  %"fadd.102" = fadd float %"fmul.104", %".2717"
  %".2718" = bitcast ptr %"R43" to ptr
  store float %"fadd.102", ptr %".2718"
  ; FMUL R50, R50, R9
  %"cast_ptr.305" = bitcast ptr %"R50" to ptr
  %".2721" = load float, ptr %"cast_ptr.305"
  %"cast_ptr.306" = bitcast ptr %"R9" to ptr
  %".2722" = load float, ptr %"cast_ptr.306"
  %"fmul.105" = fmul float %".2721", %".2722"
  %".2723" = bitcast ptr %"R50" to ptr
  store float %"fmul.105", ptr %".2723"
  ; FFMA R18, R50, R18, R43
  %"cast_ptr.307" = bitcast ptr %"R50" to ptr
  %".2726" = load float, ptr %"cast_ptr.307"
  %"cast_ptr.308" = bitcast ptr %"R18" to ptr
  %".2727" = load float, ptr %"cast_ptr.308"
  %"cast_ptr.309" = bitcast ptr %"R43" to ptr
  %".2728" = load float, ptr %"cast_ptr.309"
  %"fmul.106" = fmul float %".2726", %".2727"
  %"fadd.103" = fadd float %"fmul.106", %".2728"
  %".2729" = bitcast ptr %"R18" to ptr
  store float %"fadd.103", ptr %".2729"
  ; FMUL R56, R56, R9
  %"cast_ptr.310" = bitcast ptr %"R56" to ptr
  %".2732" = load float, ptr %"cast_ptr.310"
  %"cast_ptr.311" = bitcast ptr %"R9" to ptr
  %".2733" = load float, ptr %"cast_ptr.311"
  %"fmul.107" = fmul float %".2732", %".2733"
  %".2734" = bitcast ptr %"R56" to ptr
  store float %"fmul.107", ptr %".2734"
  ; FFMA R18, R56, R55, R18
  %"cast_ptr.312" = bitcast ptr %"R56" to ptr
  %".2737" = load float, ptr %"cast_ptr.312"
  %"cast_ptr.313" = bitcast ptr %"R55" to ptr
  %".2738" = load float, ptr %"cast_ptr.313"
  %"cast_ptr.314" = bitcast ptr %"R18" to ptr
  %".2739" = load float, ptr %"cast_ptr.314"
  %"fmul.108" = fmul float %".2737", %".2738"
  %"fadd.104" = fadd float %"fmul.108", %".2739"
  %".2740" = bitcast ptr %"R18" to ptr
  store float %"fadd.104", ptr %".2740"
  ; FMUL R51, R51, R9
  %"cast_ptr.315" = bitcast ptr %"R51" to ptr
  %".2743" = load float, ptr %"cast_ptr.315"
  %"cast_ptr.316" = bitcast ptr %"R9" to ptr
  %".2744" = load float, ptr %"cast_ptr.316"
  %"fmul.109" = fmul float %".2743", %".2744"
  %".2745" = bitcast ptr %"R51" to ptr
  store float %"fmul.109", ptr %".2745"
  ; FFMA R18, R51, R53, R18
  %"cast_ptr.317" = bitcast ptr %"R51" to ptr
  %".2748" = load float, ptr %"cast_ptr.317"
  %"cast_ptr.318" = bitcast ptr %"R53" to ptr
  %".2749" = load float, ptr %"cast_ptr.318"
  %"cast_ptr.319" = bitcast ptr %"R18" to ptr
  %".2750" = load float, ptr %"cast_ptr.319"
  %"fmul.110" = fmul float %".2748", %".2749"
  %"fadd.105" = fadd float %"fmul.110", %".2750"
  %".2751" = bitcast ptr %"R18" to ptr
  store float %"fadd.105", ptr %".2751"
  ; FMUL R60, R60, R9
  %"cast_ptr.320" = bitcast ptr %"R60" to ptr
  %".2754" = load float, ptr %"cast_ptr.320"
  %"cast_ptr.321" = bitcast ptr %"R9" to ptr
  %".2755" = load float, ptr %"cast_ptr.321"
  %"fmul.111" = fmul float %".2754", %".2755"
  %".2756" = bitcast ptr %"R60" to ptr
  store float %"fmul.111", ptr %".2756"
  ; FFMA R18, R60, R49, R18
  %"cast_ptr.322" = bitcast ptr %"R60" to ptr
  %".2759" = load float, ptr %"cast_ptr.322"
  %"cast_ptr.323" = bitcast ptr %"R49" to ptr
  %".2760" = load float, ptr %"cast_ptr.323"
  %"cast_ptr.324" = bitcast ptr %"R18" to ptr
  %".2761" = load float, ptr %"cast_ptr.324"
  %"fmul.112" = fmul float %".2759", %".2760"
  %"fadd.106" = fadd float %"fmul.112", %".2761"
  %".2762" = bitcast ptr %"R18" to ptr
  store float %"fadd.106", ptr %".2762"
  ; FMUL R58, R58, R9
  %"cast_ptr.325" = bitcast ptr %"R58" to ptr
  %".2765" = load float, ptr %"cast_ptr.325"
  %"cast_ptr.326" = bitcast ptr %"R9" to ptr
  %".2766" = load float, ptr %"cast_ptr.326"
  %"fmul.113" = fmul float %".2765", %".2766"
  %".2767" = bitcast ptr %"R58" to ptr
  store float %"fmul.113", ptr %".2767"
  ; FFMA R18, R58, R19, R18
  %"cast_ptr.327" = bitcast ptr %"R58" to ptr
  %".2770" = load float, ptr %"cast_ptr.327"
  %"cast_ptr.328" = bitcast ptr %"R19" to ptr
  %".2771" = load float, ptr %"cast_ptr.328"
  %"cast_ptr.329" = bitcast ptr %"R18" to ptr
  %".2772" = load float, ptr %"cast_ptr.329"
  %"fmul.114" = fmul float %".2770", %".2771"
  %"fadd.107" = fadd float %"fmul.114", %".2772"
  %".2773" = bitcast ptr %"R18" to ptr
  store float %"fadd.107", ptr %".2773"
  ; FMUL R57, R57, R9
  %"cast_ptr.330" = bitcast ptr %"R57" to ptr
  %".2776" = load float, ptr %"cast_ptr.330"
  %"cast_ptr.331" = bitcast ptr %"R9" to ptr
  %".2777" = load float, ptr %"cast_ptr.331"
  %"fmul.115" = fmul float %".2776", %".2777"
  %".2778" = bitcast ptr %"R57" to ptr
  store float %"fmul.115", ptr %".2778"
  ; FFMA R8, R57, R59, R18
  %"cast_ptr.332" = bitcast ptr %"R57" to ptr
  %".2781" = load float, ptr %"cast_ptr.332"
  %"cast_ptr.333" = bitcast ptr %"R59" to ptr
  %".2782" = load float, ptr %"cast_ptr.333"
  %"cast_ptr.334" = bitcast ptr %"R18" to ptr
  %".2783" = load float, ptr %"cast_ptr.334"
  %"fmul.116" = fmul float %".2781", %".2782"
  %"fadd.108" = fadd float %"fmul.116", %".2783"
  %".2784" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".2784"
  ; @P1 BRA `(.L_x_14)
  %".2787" = load i1, ptr %"P1"
  %".2788" = icmp eq i1 %".2787", 1
  br i1 %".2788", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2791" = load i32, ptr %"R23"
  %".2792" = load i1, ptr %"PT"
  %"cmp.24" = icmp sgt i32 %".2791", 4
  %".2793" = xor i1 %"cmp.24", -1
  %".2794" = and i1 %"cmp.24", %".2792"
  %".2795" = and i1 %".2793", %".2792"
  store i1 %".2794", ptr %"P1"
  ; @!P1 BRA `(.L_x_15)
  %".2798" = load i1, ptr %"P1"
  %".2799" = icmp ne i1 %".2798", 1
  br i1 %".2799", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2804" = load i32, ptr %"R3"
  %".2805" = load i32, ptr %"R22"
  %".2806" = add i32 %".2804", %".2805"
  %".2807" = add i32 %".2806", 0
  store i32 %".2807", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2810" = load i32, ptr %"R22"
  %".2811" = load i32, ptr %"R13"
  %"imad_ext1.36" = zext i32 %".2810" to i64
  %"imad_ext2.36" = zext i32 %".2811" to i64
  %"imad_mul.44" = mul i64 %"imad_ext1.36", %"imad_ext2.36"
  %".2812" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.44" = add i64 %"imad_mul.44", %".2812"
  %".2813" = and i64 %"imad_add.44", 18446744069414584320
  %".2814" = lshr i64 %".2813", 32
  %"trunc32.82" = trunc i64 %".2814" to i32
  %"trunc32.83" = trunc i64 %"imad_add.44" to i32
  store i32 %"trunc32.83", ptr %"R14"
  store i32 %"trunc32.82", ptr %"R15"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2818" = load i32, ptr %"R16"
  %".2819" = load i32, ptr %"R13"
  %"imad_ext1.37" = zext i32 %".2818" to i64
  %"imad_ext2.37" = zext i32 %".2819" to i64
  %"imad_mul.45" = mul i64 %"imad_ext1.37", %"imad_ext2.37"
  %".2820" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.45" = add i64 %"imad_mul.45", %".2820"
  %".2821" = and i64 %"imad_add.45", 18446744069414584320
  %".2822" = lshr i64 %".2821", 32
  %"trunc32.84" = trunc i64 %".2822" to i32
  %"trunc32.85" = trunc i64 %"imad_add.45" to i32
  store i32 %"trunc32.85", ptr %"R16"
  store i32 %"trunc32.84", ptr %"R17"
  ; IADD3 R10, R22, 0x4, RZ
  %".2826" = load i32, ptr %"R22"
  %".2827" = add i32 %".2826", 4
  %".2828" = add i32 %".2827", 0
  store i32 %".2828", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2831" = load i32, ptr %"R14"
  %"zext.284" = zext i32 %".2831" to i64
  %".2832" = load i32, ptr %"R15"
  %"zext.285" = zext i32 %".2832" to i64
  %"shl.150" = shl i64 %"zext.285", 32
  %"or.137" = or i64 %"shl.150", %"zext.284"
  %"inttoptr_bytes.127" = inttoptr i64 %"or.137" to ptr addrspace(1)
  %"ptr_cast_for_access.127" = bitcast ptr addrspace(1) %"inttoptr_bytes.127" to ptr addrspace(1)
  %".2833" = load float, ptr addrspace(1) %"ptr_cast_for_access.127"
  %".2834" = bitcast ptr %"R18" to ptr
  store float %".2833", ptr %".2834"
  ; IADD3 R12, R3, R10, RZ
  %".2837" = load i32, ptr %"R3"
  %".2838" = load i32, ptr %"R10"
  %".2839" = add i32 %".2837", %".2838"
  %".2840" = add i32 %".2839", 0
  store i32 %".2840", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".2843" = load i32, ptr %"R16"
  %"zext.286" = zext i32 %".2843" to i64
  %".2844" = load i32, ptr %"R17"
  %"zext.287" = zext i32 %".2844" to i64
  %"shl.151" = shl i64 %"zext.287", 32
  %"or.138" = or i64 %"shl.151", %"zext.286"
  %"inttoptr_bytes.128" = inttoptr i64 %"or.138" to ptr addrspace(1)
  %"ptr_cast_for_access.128" = bitcast ptr addrspace(1) %"inttoptr_bytes.128" to ptr addrspace(1)
  %".2845" = load float, ptr addrspace(1) %"ptr_cast_for_access.128"
  %".2846" = bitcast ptr %"R19" to ptr
  store float %".2845", ptr %".2846"
  ; LDG.E.SYS R24, [R14+0x4]
  %".2849" = load i32, ptr %"R14"
  %"zext.288" = zext i32 %".2849" to i64
  %".2850" = load i32, ptr %"R15"
  %"zext.289" = zext i32 %".2850" to i64
  %"shl.152" = shl i64 %"zext.289", 32
  %"or.139" = or i64 %"shl.152", %"zext.288"
  %"ptr_plus_imm.93" = add i64 %"or.139", 4
  %"inttoptr_bytes.129" = inttoptr i64 %"ptr_plus_imm.93" to ptr addrspace(1)
  %"ptr_cast_for_access.129" = bitcast ptr addrspace(1) %"inttoptr_bytes.129" to ptr addrspace(1)
  %".2851" = load float, ptr addrspace(1) %"ptr_cast_for_access.129"
  %".2852" = bitcast ptr %"R24" to ptr
  store float %".2851", ptr %".2852"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".2855" = load i32, ptr %"R10"
  %".2856" = load i32, ptr %"R13"
  %"imad_ext1.38" = zext i32 %".2855" to i64
  %"imad_ext2.38" = zext i32 %".2856" to i64
  %"imad_mul.46" = mul i64 %"imad_ext1.38", %"imad_ext2.38"
  %".2857" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.46" = add i64 %"imad_mul.46", %".2857"
  %".2858" = and i64 %"imad_add.46", 18446744069414584320
  %".2859" = lshr i64 %".2858", 32
  %"trunc32.86" = trunc i64 %".2859" to i32
  %"trunc32.87" = trunc i64 %"imad_add.46" to i32
  store i32 %"trunc32.87", ptr %"R10"
  store i32 %"trunc32.86", ptr %"R11"
  ; LDG.E.SYS R21, [R16+0x4]
  %".2863" = load i32, ptr %"R16"
  %"zext.290" = zext i32 %".2863" to i64
  %".2864" = load i32, ptr %"R17"
  %"zext.291" = zext i32 %".2864" to i64
  %"shl.153" = shl i64 %"zext.291", 32
  %"or.140" = or i64 %"shl.153", %"zext.290"
  %"ptr_plus_imm.94" = add i64 %"or.140", 4
  %"inttoptr_bytes.130" = inttoptr i64 %"ptr_plus_imm.94" to ptr addrspace(1)
  %"ptr_cast_for_access.130" = bitcast ptr addrspace(1) %"inttoptr_bytes.130" to ptr addrspace(1)
  %".2865" = load float, ptr addrspace(1) %"ptr_cast_for_access.130"
  %".2866" = bitcast ptr %"R21" to ptr
  store float %".2865", ptr %".2866"
  ; LDG.E.SYS R34, [R14+0x8]
  %".2869" = load i32, ptr %"R14"
  %"zext.292" = zext i32 %".2869" to i64
  %".2870" = load i32, ptr %"R15"
  %"zext.293" = zext i32 %".2870" to i64
  %"shl.154" = shl i64 %"zext.293", 32
  %"or.141" = or i64 %"shl.154", %"zext.292"
  %"ptr_plus_imm.95" = add i64 %"or.141", 8
  %"inttoptr_bytes.131" = inttoptr i64 %"ptr_plus_imm.95" to ptr addrspace(1)
  %"ptr_cast_for_access.131" = bitcast ptr addrspace(1) %"inttoptr_bytes.131" to ptr addrspace(1)
  %".2871" = load float, ptr addrspace(1) %"ptr_cast_for_access.131"
  %".2872" = bitcast ptr %"R34" to ptr
  store float %".2871", ptr %".2872"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2875" = load i32, ptr %"R12"
  %".2876" = load i32, ptr %"R13"
  %"imad_ext1.39" = zext i32 %".2875" to i64
  %"imad_ext2.39" = zext i32 %".2876" to i64
  %"imad_mul.47" = mul i64 %"imad_ext1.39", %"imad_ext2.39"
  %".2877" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.47" = add i64 %"imad_mul.47", %".2877"
  %".2878" = and i64 %"imad_add.47", 18446744069414584320
  %".2879" = lshr i64 %".2878", 32
  %"trunc32.88" = trunc i64 %".2879" to i32
  %"trunc32.89" = trunc i64 %"imad_add.47" to i32
  store i32 %"trunc32.89", ptr %"R12"
  store i32 %"trunc32.88", ptr %"R13"
  ; LDG.E.SYS R25, [R16+0x8]
  %".2883" = load i32, ptr %"R16"
  %"zext.294" = zext i32 %".2883" to i64
  %".2884" = load i32, ptr %"R17"
  %"zext.295" = zext i32 %".2884" to i64
  %"shl.155" = shl i64 %"zext.295", 32
  %"or.142" = or i64 %"shl.155", %"zext.294"
  %"ptr_plus_imm.96" = add i64 %"or.142", 8
  %"inttoptr_bytes.132" = inttoptr i64 %"ptr_plus_imm.96" to ptr addrspace(1)
  %"ptr_cast_for_access.132" = bitcast ptr addrspace(1) %"inttoptr_bytes.132" to ptr addrspace(1)
  %".2885" = load float, ptr addrspace(1) %"ptr_cast_for_access.132"
  %".2886" = bitcast ptr %"R25" to ptr
  store float %".2885", ptr %".2886"
  ; LDG.E.SYS R36, [R14+0xc]
  %".2889" = load i32, ptr %"R14"
  %"zext.296" = zext i32 %".2889" to i64
  %".2890" = load i32, ptr %"R15"
  %"zext.297" = zext i32 %".2890" to i64
  %"shl.156" = shl i64 %"zext.297", 32
  %"or.143" = or i64 %"shl.156", %"zext.296"
  %"ptr_plus_imm.97" = add i64 %"or.143", 12
  %"inttoptr_bytes.133" = inttoptr i64 %"ptr_plus_imm.97" to ptr addrspace(1)
  %"ptr_cast_for_access.133" = bitcast ptr addrspace(1) %"inttoptr_bytes.133" to ptr addrspace(1)
  %".2891" = load float, ptr addrspace(1) %"ptr_cast_for_access.133"
  %".2892" = bitcast ptr %"R36" to ptr
  store float %".2891", ptr %".2892"
  ; LDG.E.SYS R35, [R16+0xc]
  %".2895" = load i32, ptr %"R16"
  %"zext.298" = zext i32 %".2895" to i64
  %".2896" = load i32, ptr %"R17"
  %"zext.299" = zext i32 %".2896" to i64
  %"shl.157" = shl i64 %"zext.299", 32
  %"or.144" = or i64 %"shl.157", %"zext.298"
  %"ptr_plus_imm.98" = add i64 %"or.144", 12
  %"inttoptr_bytes.134" = inttoptr i64 %"ptr_plus_imm.98" to ptr addrspace(1)
  %"ptr_cast_for_access.134" = bitcast ptr addrspace(1) %"inttoptr_bytes.134" to ptr addrspace(1)
  %".2897" = load float, ptr addrspace(1) %"ptr_cast_for_access.134"
  %".2898" = bitcast ptr %"R35" to ptr
  store float %".2897", ptr %".2898"
  ; LDG.E.SYS R38, [R10]
  %".2901" = load i32, ptr %"R10"
  %"zext.300" = zext i32 %".2901" to i64
  %".2902" = load i32, ptr %"R11"
  %"zext.301" = zext i32 %".2902" to i64
  %"shl.158" = shl i64 %"zext.301", 32
  %"or.145" = or i64 %"shl.158", %"zext.300"
  %"inttoptr_bytes.135" = inttoptr i64 %"or.145" to ptr addrspace(1)
  %"ptr_cast_for_access.135" = bitcast ptr addrspace(1) %"inttoptr_bytes.135" to ptr addrspace(1)
  %".2903" = load float, ptr addrspace(1) %"ptr_cast_for_access.135"
  %".2904" = bitcast ptr %"R38" to ptr
  store float %".2903", ptr %".2904"
  ; LDG.E.SYS R37, [R12]
  %".2907" = load i32, ptr %"R12"
  %"zext.302" = zext i32 %".2907" to i64
  %".2908" = load i32, ptr %"R13"
  %"zext.303" = zext i32 %".2908" to i64
  %"shl.159" = shl i64 %"zext.303", 32
  %"or.146" = or i64 %"shl.159", %"zext.302"
  %"inttoptr_bytes.136" = inttoptr i64 %"or.146" to ptr addrspace(1)
  %"ptr_cast_for_access.136" = bitcast ptr addrspace(1) %"inttoptr_bytes.136" to ptr addrspace(1)
  %".2909" = load float, ptr addrspace(1) %"ptr_cast_for_access.136"
  %".2910" = bitcast ptr %"R37" to ptr
  store float %".2909", ptr %".2910"
  ; LDG.E.SYS R40, [R10+0x4]
  %".2913" = load i32, ptr %"R10"
  %"zext.304" = zext i32 %".2913" to i64
  %".2914" = load i32, ptr %"R11"
  %"zext.305" = zext i32 %".2914" to i64
  %"shl.160" = shl i64 %"zext.305", 32
  %"or.147" = or i64 %"shl.160", %"zext.304"
  %"ptr_plus_imm.99" = add i64 %"or.147", 4
  %"inttoptr_bytes.137" = inttoptr i64 %"ptr_plus_imm.99" to ptr addrspace(1)
  %"ptr_cast_for_access.137" = bitcast ptr addrspace(1) %"inttoptr_bytes.137" to ptr addrspace(1)
  %".2915" = load float, ptr addrspace(1) %"ptr_cast_for_access.137"
  %".2916" = bitcast ptr %"R40" to ptr
  store float %".2915", ptr %".2916"
  ; LDG.E.SYS R39, [R12+0x4]
  %".2919" = load i32, ptr %"R12"
  %"zext.306" = zext i32 %".2919" to i64
  %".2920" = load i32, ptr %"R13"
  %"zext.307" = zext i32 %".2920" to i64
  %"shl.161" = shl i64 %"zext.307", 32
  %"or.148" = or i64 %"shl.161", %"zext.306"
  %"ptr_plus_imm.100" = add i64 %"or.148", 4
  %"inttoptr_bytes.138" = inttoptr i64 %"ptr_plus_imm.100" to ptr addrspace(1)
  %"ptr_cast_for_access.138" = bitcast ptr addrspace(1) %"inttoptr_bytes.138" to ptr addrspace(1)
  %".2921" = load float, ptr addrspace(1) %"ptr_cast_for_access.138"
  %".2922" = bitcast ptr %"R39" to ptr
  store float %".2921", ptr %".2922"
  ; LDG.E.SYS R42, [R10+0x8]
  %".2925" = load i32, ptr %"R10"
  %"zext.308" = zext i32 %".2925" to i64
  %".2926" = load i32, ptr %"R11"
  %"zext.309" = zext i32 %".2926" to i64
  %"shl.162" = shl i64 %"zext.309", 32
  %"or.149" = or i64 %"shl.162", %"zext.308"
  %"ptr_plus_imm.101" = add i64 %"or.149", 8
  %"inttoptr_bytes.139" = inttoptr i64 %"ptr_plus_imm.101" to ptr addrspace(1)
  %"ptr_cast_for_access.139" = bitcast ptr addrspace(1) %"inttoptr_bytes.139" to ptr addrspace(1)
  %".2927" = load float, ptr addrspace(1) %"ptr_cast_for_access.139"
  %".2928" = bitcast ptr %"R42" to ptr
  store float %".2927", ptr %".2928"
  ; LDG.E.SYS R44, [R10+0xc]
  %".2931" = load i32, ptr %"R10"
  %"zext.310" = zext i32 %".2931" to i64
  %".2932" = load i32, ptr %"R11"
  %"zext.311" = zext i32 %".2932" to i64
  %"shl.163" = shl i64 %"zext.311", 32
  %"or.150" = or i64 %"shl.163", %"zext.310"
  %"ptr_plus_imm.102" = add i64 %"or.150", 12
  %"inttoptr_bytes.140" = inttoptr i64 %"ptr_plus_imm.102" to ptr addrspace(1)
  %"ptr_cast_for_access.140" = bitcast ptr addrspace(1) %"inttoptr_bytes.140" to ptr addrspace(1)
  %".2933" = load float, ptr addrspace(1) %"ptr_cast_for_access.140"
  %".2934" = bitcast ptr %"R44" to ptr
  store float %".2933", ptr %".2934"
  ; LDG.E.SYS R41, [R12+0x8]
  %".2937" = load i32, ptr %"R12"
  %"zext.312" = zext i32 %".2937" to i64
  %".2938" = load i32, ptr %"R13"
  %"zext.313" = zext i32 %".2938" to i64
  %"shl.164" = shl i64 %"zext.313", 32
  %"or.151" = or i64 %"shl.164", %"zext.312"
  %"ptr_plus_imm.103" = add i64 %"or.151", 8
  %"inttoptr_bytes.141" = inttoptr i64 %"ptr_plus_imm.103" to ptr addrspace(1)
  %"ptr_cast_for_access.141" = bitcast ptr addrspace(1) %"inttoptr_bytes.141" to ptr addrspace(1)
  %".2939" = load float, ptr addrspace(1) %"ptr_cast_for_access.141"
  %".2940" = bitcast ptr %"R41" to ptr
  store float %".2939", ptr %".2940"
  ; LDG.E.SYS R43, [R12+0xc]
  %".2943" = load i32, ptr %"R12"
  %"zext.314" = zext i32 %".2943" to i64
  %".2944" = load i32, ptr %"R13"
  %"zext.315" = zext i32 %".2944" to i64
  %"shl.165" = shl i64 %"zext.315", 32
  %"or.152" = or i64 %"shl.165", %"zext.314"
  %"ptr_plus_imm.104" = add i64 %"or.152", 12
  %"inttoptr_bytes.142" = inttoptr i64 %"ptr_plus_imm.104" to ptr addrspace(1)
  %"ptr_cast_for_access.142" = bitcast ptr addrspace(1) %"inttoptr_bytes.142" to ptr addrspace(1)
  %".2945" = load float, ptr addrspace(1) %"ptr_cast_for_access.142"
  %".2946" = bitcast ptr %"R43" to ptr
  store float %".2945", ptr %".2946"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2949" = xor i1 1, 1
  %".2950" = and i1 %".2949", 1
  %".2951" = and i1 %".2950", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".2953" = load i32, ptr %"R23"
  %".2954" = add i32 %".2953", -8
  %".2955" = add i32 %".2954", 0
  store i32 %".2955", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".2958" = load i32, ptr %"R22"
  %".2959" = add i32 %".2958", 8
  %".2960" = add i32 %".2959", 0
  store i32 %".2960", ptr %"R22"
  ; FMUL R15, R18, R9
  %"cast_ptr.335" = bitcast ptr %"R18" to ptr
  %".2963" = load float, ptr %"cast_ptr.335"
  %"cast_ptr.336" = bitcast ptr %"R9" to ptr
  %".2964" = load float, ptr %"cast_ptr.336"
  %"fmul.117" = fmul float %".2963", %".2964"
  %".2965" = bitcast ptr %"R15" to ptr
  store float %"fmul.117", ptr %".2965"
  ; FFMA R15, R15, R19, R8
  %"cast_ptr.337" = bitcast ptr %"R15" to ptr
  %".2968" = load float, ptr %"cast_ptr.337"
  %"cast_ptr.338" = bitcast ptr %"R19" to ptr
  %".2969" = load float, ptr %"cast_ptr.338"
  %"cast_ptr.339" = bitcast ptr %"R8" to ptr
  %".2970" = load float, ptr %"cast_ptr.339"
  %"fmul.118" = fmul float %".2968", %".2969"
  %"fadd.109" = fadd float %"fmul.118", %".2970"
  %".2971" = bitcast ptr %"R15" to ptr
  store float %"fadd.109", ptr %".2971"
  ; FMUL R24, R24, R9
  %"cast_ptr.340" = bitcast ptr %"R24" to ptr
  %".2974" = load float, ptr %"cast_ptr.340"
  %"cast_ptr.341" = bitcast ptr %"R9" to ptr
  %".2975" = load float, ptr %"cast_ptr.341"
  %"fmul.119" = fmul float %".2974", %".2975"
  %".2976" = bitcast ptr %"R24" to ptr
  store float %"fmul.119", ptr %".2976"
  ; FFMA R15, R24, R21, R15
  %"cast_ptr.342" = bitcast ptr %"R24" to ptr
  %".2979" = load float, ptr %"cast_ptr.342"
  %"cast_ptr.343" = bitcast ptr %"R21" to ptr
  %".2980" = load float, ptr %"cast_ptr.343"
  %"cast_ptr.344" = bitcast ptr %"R15" to ptr
  %".2981" = load float, ptr %"cast_ptr.344"
  %"fmul.120" = fmul float %".2979", %".2980"
  %"fadd.110" = fadd float %"fmul.120", %".2981"
  %".2982" = bitcast ptr %"R15" to ptr
  store float %"fadd.110", ptr %".2982"
  ; FMUL R34, R34, R9
  %"cast_ptr.345" = bitcast ptr %"R34" to ptr
  %".2985" = load float, ptr %"cast_ptr.345"
  %"cast_ptr.346" = bitcast ptr %"R9" to ptr
  %".2986" = load float, ptr %"cast_ptr.346"
  %"fmul.121" = fmul float %".2985", %".2986"
  %".2987" = bitcast ptr %"R34" to ptr
  store float %"fmul.121", ptr %".2987"
  ; FFMA R15, R34, R25, R15
  %"cast_ptr.347" = bitcast ptr %"R34" to ptr
  %".2990" = load float, ptr %"cast_ptr.347"
  %"cast_ptr.348" = bitcast ptr %"R25" to ptr
  %".2991" = load float, ptr %"cast_ptr.348"
  %"cast_ptr.349" = bitcast ptr %"R15" to ptr
  %".2992" = load float, ptr %"cast_ptr.349"
  %"fmul.122" = fmul float %".2990", %".2991"
  %"fadd.111" = fadd float %"fmul.122", %".2992"
  %".2993" = bitcast ptr %"R15" to ptr
  store float %"fadd.111", ptr %".2993"
  ; FMUL R36, R36, R9
  %"cast_ptr.350" = bitcast ptr %"R36" to ptr
  %".2996" = load float, ptr %"cast_ptr.350"
  %"cast_ptr.351" = bitcast ptr %"R9" to ptr
  %".2997" = load float, ptr %"cast_ptr.351"
  %"fmul.123" = fmul float %".2996", %".2997"
  %".2998" = bitcast ptr %"R36" to ptr
  store float %"fmul.123", ptr %".2998"
  ; FFMA R15, R36, R35, R15
  %"cast_ptr.352" = bitcast ptr %"R36" to ptr
  %".3001" = load float, ptr %"cast_ptr.352"
  %"cast_ptr.353" = bitcast ptr %"R35" to ptr
  %".3002" = load float, ptr %"cast_ptr.353"
  %"cast_ptr.354" = bitcast ptr %"R15" to ptr
  %".3003" = load float, ptr %"cast_ptr.354"
  %"fmul.124" = fmul float %".3001", %".3002"
  %"fadd.112" = fadd float %"fmul.124", %".3003"
  %".3004" = bitcast ptr %"R15" to ptr
  store float %"fadd.112", ptr %".3004"
  ; FMUL R38, R38, R9
  %"cast_ptr.355" = bitcast ptr %"R38" to ptr
  %".3007" = load float, ptr %"cast_ptr.355"
  %"cast_ptr.356" = bitcast ptr %"R9" to ptr
  %".3008" = load float, ptr %"cast_ptr.356"
  %"fmul.125" = fmul float %".3007", %".3008"
  %".3009" = bitcast ptr %"R38" to ptr
  store float %"fmul.125", ptr %".3009"
  ; FFMA R15, R38, R37, R15
  %"cast_ptr.357" = bitcast ptr %"R38" to ptr
  %".3012" = load float, ptr %"cast_ptr.357"
  %"cast_ptr.358" = bitcast ptr %"R37" to ptr
  %".3013" = load float, ptr %"cast_ptr.358"
  %"cast_ptr.359" = bitcast ptr %"R15" to ptr
  %".3014" = load float, ptr %"cast_ptr.359"
  %"fmul.126" = fmul float %".3012", %".3013"
  %"fadd.113" = fadd float %"fmul.126", %".3014"
  %".3015" = bitcast ptr %"R15" to ptr
  store float %"fadd.113", ptr %".3015"
  ; FMUL R40, R40, R9
  %"cast_ptr.360" = bitcast ptr %"R40" to ptr
  %".3018" = load float, ptr %"cast_ptr.360"
  %"cast_ptr.361" = bitcast ptr %"R9" to ptr
  %".3019" = load float, ptr %"cast_ptr.361"
  %"fmul.127" = fmul float %".3018", %".3019"
  %".3020" = bitcast ptr %"R40" to ptr
  store float %"fmul.127", ptr %".3020"
  ; FFMA R15, R40, R39, R15
  %"cast_ptr.362" = bitcast ptr %"R40" to ptr
  %".3023" = load float, ptr %"cast_ptr.362"
  %"cast_ptr.363" = bitcast ptr %"R39" to ptr
  %".3024" = load float, ptr %"cast_ptr.363"
  %"cast_ptr.364" = bitcast ptr %"R15" to ptr
  %".3025" = load float, ptr %"cast_ptr.364"
  %"fmul.128" = fmul float %".3023", %".3024"
  %"fadd.114" = fadd float %"fmul.128", %".3025"
  %".3026" = bitcast ptr %"R15" to ptr
  store float %"fadd.114", ptr %".3026"
  ; FMUL R42, R42, R9.reuse
  %"cast_ptr.365" = bitcast ptr %"R42" to ptr
  %".3029" = load float, ptr %"cast_ptr.365"
  %"cast_ptr.366" = bitcast ptr %"R9" to ptr
  %".3030" = load float, ptr %"cast_ptr.366"
  %"fmul.129" = fmul float %".3029", %".3030"
  %".3031" = bitcast ptr %"R42" to ptr
  store float %"fmul.129", ptr %".3031"
  ; FMUL R44, R44, R9
  %"cast_ptr.367" = bitcast ptr %"R44" to ptr
  %".3034" = load float, ptr %"cast_ptr.367"
  %"cast_ptr.368" = bitcast ptr %"R9" to ptr
  %".3035" = load float, ptr %"cast_ptr.368"
  %"fmul.130" = fmul float %".3034", %".3035"
  %".3036" = bitcast ptr %"R44" to ptr
  store float %"fmul.130", ptr %".3036"
  ; FFMA R15, R42, R41, R15
  %"cast_ptr.369" = bitcast ptr %"R42" to ptr
  %".3039" = load float, ptr %"cast_ptr.369"
  %"cast_ptr.370" = bitcast ptr %"R41" to ptr
  %".3040" = load float, ptr %"cast_ptr.370"
  %"cast_ptr.371" = bitcast ptr %"R15" to ptr
  %".3041" = load float, ptr %"cast_ptr.371"
  %"fmul.131" = fmul float %".3039", %".3040"
  %"fadd.115" = fadd float %"fmul.131", %".3041"
  %".3042" = bitcast ptr %"R15" to ptr
  store float %"fadd.115", ptr %".3042"
  ; FFMA R8, R44, R43, R15
  %"cast_ptr.372" = bitcast ptr %"R44" to ptr
  %".3045" = load float, ptr %"cast_ptr.372"
  %"cast_ptr.373" = bitcast ptr %"R43" to ptr
  %".3046" = load float, ptr %"cast_ptr.373"
  %"cast_ptr.374" = bitcast ptr %"R15" to ptr
  %".3047" = load float, ptr %"cast_ptr.374"
  %"fmul.132" = fmul float %".3045", %".3046"
  %"fadd.116" = fadd float %"fmul.132", %".3047"
  %".3048" = bitcast ptr %"R8" to ptr
  store float %"fadd.116", ptr %".3048"
  br label %".L_x_15"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".3052" = load i32, ptr %"R23"
  %".3053" = load i1, ptr %"P0"
  %"cmp.25" = icmp ne i32 %".3052", 0
  %".3054" = xor i1 %"cmp.25", -1
  %".3055" = or i1 %"cmp.25", %".3053"
  %".3056" = or i1 %".3054", %".3053"
  store i1 %".3055", ptr %"P0"
  ; @!P0 BRA `(.L_x_11)
  %".3059" = load i1, ptr %"P0"
  %".3060" = icmp ne i1 %".3059", 1
  br i1 %".3060", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".3065" = load i32, ptr %"R3"
  %".3066" = load i32, ptr %"R22"
  %".3067" = add i32 %".3065", %".3066"
  %".3068" = add i32 %".3067", 0
  store i32 %".3068", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".3071" = load i32, ptr %"R22"
  %".3072" = load i32, ptr %"R13"
  %"imad_ext1.40" = zext i32 %".3071" to i64
  %"imad_ext2.40" = zext i32 %".3072" to i64
  %"imad_mul.48" = mul i64 %"imad_ext1.40", %"imad_ext2.40"
  %".3073" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.48" = add i64 %"imad_mul.48", %".3073"
  %".3074" = and i64 %"imad_add.48", 18446744069414584320
  %".3075" = lshr i64 %".3074", 32
  %"trunc32.90" = trunc i64 %".3075" to i32
  %"trunc32.91" = trunc i64 %"imad_add.48" to i32
  store i32 %"trunc32.91", ptr %"R10"
  store i32 %"trunc32.90", ptr %"R11"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".3079" = load i32, ptr %"R12"
  %".3080" = load i32, ptr %"R13"
  %"imad_ext1.41" = zext i32 %".3079" to i64
  %"imad_ext2.41" = zext i32 %".3080" to i64
  %"imad_mul.49" = mul i64 %"imad_ext1.41", %"imad_ext2.41"
  %".3081" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.49" = add i64 %"imad_mul.49", %".3081"
  %".3082" = and i64 %"imad_add.49", 18446744069414584320
  %".3083" = lshr i64 %".3082", 32
  %"trunc32.92" = trunc i64 %".3083" to i32
  %"trunc32.93" = trunc i64 %"imad_add.49" to i32
  store i32 %"trunc32.93", ptr %"R12"
  store i32 %"trunc32.92", ptr %"R13"
  ; LDG.E.SYS R14, [R10]
  %".3087" = load i32, ptr %"R10"
  %"zext.316" = zext i32 %".3087" to i64
  %".3088" = load i32, ptr %"R11"
  %"zext.317" = zext i32 %".3088" to i64
  %"shl.166" = shl i64 %"zext.317", 32
  %"or.153" = or i64 %"shl.166", %"zext.316"
  %"inttoptr_bytes.143" = inttoptr i64 %"or.153" to ptr addrspace(1)
  %"ptr_cast_for_access.143" = bitcast ptr addrspace(1) %"inttoptr_bytes.143" to ptr addrspace(1)
  %".3089" = load float, ptr addrspace(1) %"ptr_cast_for_access.143"
  %".3090" = bitcast ptr %"R14" to ptr
  store float %".3089", ptr %".3090"
  ; LDG.E.SYS R16, [R12]
  %".3093" = load i32, ptr %"R12"
  %"zext.318" = zext i32 %".3093" to i64
  %".3094" = load i32, ptr %"R13"
  %"zext.319" = zext i32 %".3094" to i64
  %"shl.167" = shl i64 %"zext.319", 32
  %"or.154" = or i64 %"shl.167", %"zext.318"
  %"inttoptr_bytes.144" = inttoptr i64 %"or.154" to ptr addrspace(1)
  %"ptr_cast_for_access.144" = bitcast ptr addrspace(1) %"inttoptr_bytes.144" to ptr addrspace(1)
  %".3095" = load float, ptr addrspace(1) %"ptr_cast_for_access.144"
  %".3096" = bitcast ptr %"R16" to ptr
  store float %".3095", ptr %".3096"
  ; LDG.E.SYS R18, [R10+0x4]
  %".3099" = load i32, ptr %"R10"
  %"zext.320" = zext i32 %".3099" to i64
  %".3100" = load i32, ptr %"R11"
  %"zext.321" = zext i32 %".3100" to i64
  %"shl.168" = shl i64 %"zext.321", 32
  %"or.155" = or i64 %"shl.168", %"zext.320"
  %"ptr_plus_imm.105" = add i64 %"or.155", 4
  %"inttoptr_bytes.145" = inttoptr i64 %"ptr_plus_imm.105" to ptr addrspace(1)
  %"ptr_cast_for_access.145" = bitcast ptr addrspace(1) %"inttoptr_bytes.145" to ptr addrspace(1)
  %".3101" = load float, ptr addrspace(1) %"ptr_cast_for_access.145"
  %".3102" = bitcast ptr %"R18" to ptr
  store float %".3101", ptr %".3102"
  ; LDG.E.SYS R17, [R12+0x4]
  %".3105" = load i32, ptr %"R12"
  %"zext.322" = zext i32 %".3105" to i64
  %".3106" = load i32, ptr %"R13"
  %"zext.323" = zext i32 %".3106" to i64
  %"shl.169" = shl i64 %"zext.323", 32
  %"or.156" = or i64 %"shl.169", %"zext.322"
  %"ptr_plus_imm.106" = add i64 %"or.156", 4
  %"inttoptr_bytes.146" = inttoptr i64 %"ptr_plus_imm.106" to ptr addrspace(1)
  %"ptr_cast_for_access.146" = bitcast ptr addrspace(1) %"inttoptr_bytes.146" to ptr addrspace(1)
  %".3107" = load float, ptr addrspace(1) %"ptr_cast_for_access.146"
  %".3108" = bitcast ptr %"R17" to ptr
  store float %".3107", ptr %".3108"
  ; LDG.E.SYS R24, [R10+0x8]
  %".3111" = load i32, ptr %"R10"
  %"zext.324" = zext i32 %".3111" to i64
  %".3112" = load i32, ptr %"R11"
  %"zext.325" = zext i32 %".3112" to i64
  %"shl.170" = shl i64 %"zext.325", 32
  %"or.157" = or i64 %"shl.170", %"zext.324"
  %"ptr_plus_imm.107" = add i64 %"or.157", 8
  %"inttoptr_bytes.147" = inttoptr i64 %"ptr_plus_imm.107" to ptr addrspace(1)
  %"ptr_cast_for_access.147" = bitcast ptr addrspace(1) %"inttoptr_bytes.147" to ptr addrspace(1)
  %".3113" = load float, ptr addrspace(1) %"ptr_cast_for_access.147"
  %".3114" = bitcast ptr %"R24" to ptr
  store float %".3113", ptr %".3114"
  ; LDG.E.SYS R19, [R12+0x8]
  %".3117" = load i32, ptr %"R12"
  %"zext.326" = zext i32 %".3117" to i64
  %".3118" = load i32, ptr %"R13"
  %"zext.327" = zext i32 %".3118" to i64
  %"shl.171" = shl i64 %"zext.327", 32
  %"or.158" = or i64 %"shl.171", %"zext.326"
  %"ptr_plus_imm.108" = add i64 %"or.158", 8
  %"inttoptr_bytes.148" = inttoptr i64 %"ptr_plus_imm.108" to ptr addrspace(1)
  %"ptr_cast_for_access.148" = bitcast ptr addrspace(1) %"inttoptr_bytes.148" to ptr addrspace(1)
  %".3119" = load float, ptr addrspace(1) %"ptr_cast_for_access.148"
  %".3120" = bitcast ptr %"R19" to ptr
  store float %".3119", ptr %".3120"
  ; LDG.E.SYS R34, [R10+0xc]
  %".3123" = load i32, ptr %"R10"
  %"zext.328" = zext i32 %".3123" to i64
  %".3124" = load i32, ptr %"R11"
  %"zext.329" = zext i32 %".3124" to i64
  %"shl.172" = shl i64 %"zext.329", 32
  %"or.159" = or i64 %"shl.172", %"zext.328"
  %"ptr_plus_imm.109" = add i64 %"or.159", 12
  %"inttoptr_bytes.149" = inttoptr i64 %"ptr_plus_imm.109" to ptr addrspace(1)
  %"ptr_cast_for_access.149" = bitcast ptr addrspace(1) %"inttoptr_bytes.149" to ptr addrspace(1)
  %".3125" = load float, ptr addrspace(1) %"ptr_cast_for_access.149"
  %".3126" = bitcast ptr %"R34" to ptr
  store float %".3125", ptr %".3126"
  ; LDG.E.SYS R21, [R12+0xc]
  %".3129" = load i32, ptr %"R12"
  %"zext.330" = zext i32 %".3129" to i64
  %".3130" = load i32, ptr %"R13"
  %"zext.331" = zext i32 %".3130" to i64
  %"shl.173" = shl i64 %"zext.331", 32
  %"or.160" = or i64 %"shl.173", %"zext.330"
  %"ptr_plus_imm.110" = add i64 %"or.160", 12
  %"inttoptr_bytes.150" = inttoptr i64 %"ptr_plus_imm.110" to ptr addrspace(1)
  %"ptr_cast_for_access.150" = bitcast ptr addrspace(1) %"inttoptr_bytes.150" to ptr addrspace(1)
  %".3131" = load float, ptr addrspace(1) %"ptr_cast_for_access.150"
  %".3132" = bitcast ptr %"R21" to ptr
  store float %".3131", ptr %".3132"
  ; IADD3 R23, R23, -0x4, RZ
  %".3135" = load i32, ptr %"R23"
  %".3136" = add i32 %".3135", -4
  %".3137" = add i32 %".3136", 0
  store i32 %".3137", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".3140" = load i32, ptr %"R22"
  %".3141" = add i32 %".3140", 4
  %".3142" = add i32 %".3141", 0
  store i32 %".3142", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".3145" = load i32, ptr %"R23"
  %".3146" = load i1, ptr %"PT"
  %"cmp.26" = icmp ne i32 %".3145", 0
  %".3147" = xor i1 %"cmp.26", -1
  %".3148" = and i1 %"cmp.26", %".3146"
  %".3149" = and i1 %".3147", %".3146"
  store i1 %".3148", ptr %"P0"
  ; FMUL R15, R14, R9
  %"cast_ptr.375" = bitcast ptr %"R14" to ptr
  %".3152" = load float, ptr %"cast_ptr.375"
  %"cast_ptr.376" = bitcast ptr %"R9" to ptr
  %".3153" = load float, ptr %"cast_ptr.376"
  %"fmul.133" = fmul float %".3152", %".3153"
  %".3154" = bitcast ptr %"R15" to ptr
  store float %"fmul.133", ptr %".3154"
  ; FFMA R15, R15, R16, R8
  %"cast_ptr.377" = bitcast ptr %"R15" to ptr
  %".3157" = load float, ptr %"cast_ptr.377"
  %"cast_ptr.378" = bitcast ptr %"R16" to ptr
  %".3158" = load float, ptr %"cast_ptr.378"
  %"cast_ptr.379" = bitcast ptr %"R8" to ptr
  %".3159" = load float, ptr %"cast_ptr.379"
  %"fmul.134" = fmul float %".3157", %".3158"
  %"fadd.117" = fadd float %"fmul.134", %".3159"
  %".3160" = bitcast ptr %"R15" to ptr
  store float %"fadd.117", ptr %".3160"
  ; FMUL R18, R18, R9
  %"cast_ptr.380" = bitcast ptr %"R18" to ptr
  %".3163" = load float, ptr %"cast_ptr.380"
  %"cast_ptr.381" = bitcast ptr %"R9" to ptr
  %".3164" = load float, ptr %"cast_ptr.381"
  %"fmul.135" = fmul float %".3163", %".3164"
  %".3165" = bitcast ptr %"R18" to ptr
  store float %"fmul.135", ptr %".3165"
  ; FFMA R15, R18, R17, R15
  %"cast_ptr.382" = bitcast ptr %"R18" to ptr
  %".3168" = load float, ptr %"cast_ptr.382"
  %"cast_ptr.383" = bitcast ptr %"R17" to ptr
  %".3169" = load float, ptr %"cast_ptr.383"
  %"cast_ptr.384" = bitcast ptr %"R15" to ptr
  %".3170" = load float, ptr %"cast_ptr.384"
  %"fmul.136" = fmul float %".3168", %".3169"
  %"fadd.118" = fadd float %"fmul.136", %".3170"
  %".3171" = bitcast ptr %"R15" to ptr
  store float %"fadd.118", ptr %".3171"
  ; FMUL R24, R24, R9
  %"cast_ptr.385" = bitcast ptr %"R24" to ptr
  %".3174" = load float, ptr %"cast_ptr.385"
  %"cast_ptr.386" = bitcast ptr %"R9" to ptr
  %".3175" = load float, ptr %"cast_ptr.386"
  %"fmul.137" = fmul float %".3174", %".3175"
  %".3176" = bitcast ptr %"R24" to ptr
  store float %"fmul.137", ptr %".3176"
  ; FFMA R15, R24, R19, R15
  %"cast_ptr.387" = bitcast ptr %"R24" to ptr
  %".3179" = load float, ptr %"cast_ptr.387"
  %"cast_ptr.388" = bitcast ptr %"R19" to ptr
  %".3180" = load float, ptr %"cast_ptr.388"
  %"cast_ptr.389" = bitcast ptr %"R15" to ptr
  %".3181" = load float, ptr %"cast_ptr.389"
  %"fmul.138" = fmul float %".3179", %".3180"
  %"fadd.119" = fadd float %"fmul.138", %".3181"
  %".3182" = bitcast ptr %"R15" to ptr
  store float %"fadd.119", ptr %".3182"
  ; FMUL R34, R34, R9
  %"cast_ptr.390" = bitcast ptr %"R34" to ptr
  %".3185" = load float, ptr %"cast_ptr.390"
  %"cast_ptr.391" = bitcast ptr %"R9" to ptr
  %".3186" = load float, ptr %"cast_ptr.391"
  %"fmul.139" = fmul float %".3185", %".3186"
  %".3187" = bitcast ptr %"R34" to ptr
  store float %"fmul.139", ptr %".3187"
  ; FFMA R8, R34, R21, R15
  %"cast_ptr.392" = bitcast ptr %"R34" to ptr
  %".3190" = load float, ptr %"cast_ptr.392"
  %"cast_ptr.393" = bitcast ptr %"R21" to ptr
  %".3191" = load float, ptr %"cast_ptr.393"
  %"cast_ptr.394" = bitcast ptr %"R15" to ptr
  %".3192" = load float, ptr %"cast_ptr.394"
  %"fmul.140" = fmul float %".3190", %".3191"
  %"fadd.120" = fadd float %"fmul.140", %".3192"
  %".3193" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3193"
  ; @P0 BRA `(.L_x_12)
  %".3196" = load i1, ptr %"P0"
  %".3197" = icmp eq i1 %".3196", 1
  br i1 %".3197", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".3200" = load i32, ptr %"R4"
  %".3201" = load i1, ptr %"PT"
  %"cmp.27" = icmp ne i32 %".3200", 0
  %".3202" = xor i1 %"cmp.27", -1
  %".3203" = and i1 %"cmp.27", %".3201"
  %".3204" = and i1 %".3202", %".3201"
  store i1 %".3203", ptr %"P0"
  ; @!P0 BRA `(.L_x_10)
  %".3207" = load i1, ptr %"P0"
  %".3208" = icmp ne i1 %".3207", 1
  br i1 %".3208", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".3213" = load i32, ptr %"R3"
  %".3214" = load i32, ptr %"R22"
  %".3215" = add i32 %".3213", %".3214"
  %".3216" = add i32 %".3215", 0
  store i32 %".3216", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".3219" = load i32, ptr %"R22"
  %".3220" = load i32, ptr %"R11"
  %"imad_ext1.42" = zext i32 %".3219" to i64
  %"imad_ext2.42" = zext i32 %".3220" to i64
  %"imad_mul.50" = mul i64 %"imad_ext1.42", %"imad_ext2.42"
  %".3221" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.50" = add i64 %"imad_mul.50", %".3221"
  %".3222" = and i64 %"imad_add.50", 18446744069414584320
  %".3223" = lshr i64 %".3222", 32
  %"trunc32.94" = trunc i64 %".3223" to i32
  %"trunc32.95" = trunc i64 %"imad_add.50" to i32
  store i32 %"trunc32.95", ptr %"R22"
  store i32 %"trunc32.94", ptr %"R23"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3227" = load i32, ptr %"R10"
  %".3228" = load i32, ptr %"R11"
  %"imad_ext1.43" = zext i32 %".3227" to i64
  %"imad_ext2.43" = zext i32 %".3228" to i64
  %"imad_mul.51" = mul i64 %"imad_ext1.43", %"imad_ext2.43"
  %".3229" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.51" = add i64 %"imad_mul.51", %".3229"
  %".3230" = and i64 %"imad_add.51", 18446744069414584320
  %".3231" = lshr i64 %".3230", 32
  %"trunc32.96" = trunc i64 %".3231" to i32
  %"trunc32.97" = trunc i64 %"imad_add.51" to i32
  store i32 %"trunc32.97", ptr %"R10"
  store i32 %"trunc32.96", ptr %"R11"
  ; LDG.E.SYS R12, [R22]
  %".3235" = load i32, ptr %"R22"
  %"zext.332" = zext i32 %".3235" to i64
  %".3236" = load i32, ptr %"R23"
  %"zext.333" = zext i32 %".3236" to i64
  %"shl.174" = shl i64 %"zext.333", 32
  %"or.161" = or i64 %"shl.174", %"zext.332"
  %"inttoptr_bytes.151" = inttoptr i64 %"or.161" to ptr addrspace(1)
  %"ptr_cast_for_access.151" = bitcast ptr addrspace(1) %"inttoptr_bytes.151" to ptr addrspace(1)
  %".3237" = load float, ptr addrspace(1) %"ptr_cast_for_access.151"
  %".3238" = bitcast ptr %"R12" to ptr
  store float %".3237", ptr %".3238"
  ; LDG.E.SYS R14, [R10]
  %".3241" = load i32, ptr %"R10"
  %"zext.334" = zext i32 %".3241" to i64
  %".3242" = load i32, ptr %"R11"
  %"zext.335" = zext i32 %".3242" to i64
  %"shl.175" = shl i64 %"zext.335", 32
  %"or.162" = or i64 %"shl.175", %"zext.334"
  %"inttoptr_bytes.152" = inttoptr i64 %"or.162" to ptr addrspace(1)
  %"ptr_cast_for_access.152" = bitcast ptr addrspace(1) %"inttoptr_bytes.152" to ptr addrspace(1)
  %".3243" = load float, ptr addrspace(1) %"ptr_cast_for_access.152"
  %".3244" = bitcast ptr %"R14" to ptr
  store float %".3243", ptr %".3244"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".3247" = load i32, ptr %"R4"
  %".3248" = load i1, ptr %"PT"
  %"cmp.28" = icmp ne i32 %".3247", 1
  %".3249" = xor i1 %"cmp.28", -1
  %".3250" = and i1 %"cmp.28", %".3248"
  %".3251" = and i1 %".3249", %".3248"
  store i1 %".3250", ptr %"P0"
  ; FMUL R13, R12, R9
  %"cast_ptr.395" = bitcast ptr %"R12" to ptr
  %".3254" = load float, ptr %"cast_ptr.395"
  %"cast_ptr.396" = bitcast ptr %"R9" to ptr
  %".3255" = load float, ptr %"cast_ptr.396"
  %"fmul.141" = fmul float %".3254", %".3255"
  %".3256" = bitcast ptr %"R13" to ptr
  store float %"fmul.141", ptr %".3256"
  ; FFMA R8, R13, R14, R8
  %"cast_ptr.397" = bitcast ptr %"R13" to ptr
  %".3259" = load float, ptr %"cast_ptr.397"
  %"cast_ptr.398" = bitcast ptr %"R14" to ptr
  %".3260" = load float, ptr %"cast_ptr.398"
  %"cast_ptr.399" = bitcast ptr %"R8" to ptr
  %".3261" = load float, ptr %"cast_ptr.399"
  %"fmul.142" = fmul float %".3259", %".3260"
  %"fadd.121" = fadd float %"fmul.142", %".3261"
  %".3262" = bitcast ptr %"R8" to ptr
  store float %"fadd.121", ptr %".3262"
  ; @!P0 BRA `(.L_x_10)
  %".3265" = load i1, ptr %"P0"
  %".3266" = icmp ne i1 %".3265", 1
  br i1 %".3266", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".3269" = load i32, ptr %"R4"
  %".3270" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3269", 2
  %".3271" = xor i1 %"cmp.29", -1
  %".3272" = and i1 %"cmp.29", %".3270"
  %".3273" = and i1 %".3271", %".3270"
  store i1 %".3272", ptr %"P0"
  ; LDG.E.SYS R12, [R22+0x4]
  %".3276" = load i32, ptr %"R22"
  %"zext.336" = zext i32 %".3276" to i64
  %".3277" = load i32, ptr %"R23"
  %"zext.337" = zext i32 %".3277" to i64
  %"shl.176" = shl i64 %"zext.337", 32
  %"or.163" = or i64 %"shl.176", %"zext.336"
  %"ptr_plus_imm.111" = add i64 %"or.163", 4
  %"inttoptr_bytes.153" = inttoptr i64 %"ptr_plus_imm.111" to ptr addrspace(1)
  %"ptr_cast_for_access.153" = bitcast ptr addrspace(1) %"inttoptr_bytes.153" to ptr addrspace(1)
  %".3278" = load float, ptr addrspace(1) %"ptr_cast_for_access.153"
  %".3279" = bitcast ptr %"R12" to ptr
  store float %".3278", ptr %".3279"
  ; LDG.E.SYS R14, [R10+0x4]
  %".3282" = load i32, ptr %"R10"
  %"zext.338" = zext i32 %".3282" to i64
  %".3283" = load i32, ptr %"R11"
  %"zext.339" = zext i32 %".3283" to i64
  %"shl.177" = shl i64 %"zext.339", 32
  %"or.164" = or i64 %"shl.177", %"zext.338"
  %"ptr_plus_imm.112" = add i64 %"or.164", 4
  %"inttoptr_bytes.154" = inttoptr i64 %"ptr_plus_imm.112" to ptr addrspace(1)
  %"ptr_cast_for_access.154" = bitcast ptr addrspace(1) %"inttoptr_bytes.154" to ptr addrspace(1)
  %".3284" = load float, ptr addrspace(1) %"ptr_cast_for_access.154"
  %".3285" = bitcast ptr %"R14" to ptr
  store float %".3284", ptr %".3285"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".3288" = load i1, ptr %"P0"
  %".3289" = icmp eq i1 %".3288", 1
  br i1 %".3289", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".3292" = load i32, ptr %"R22"
  %"zext.340" = zext i32 %".3292" to i64
  %".3293" = load i32, ptr %"R23"
  %"zext.341" = zext i32 %".3293" to i64
  %"shl.178" = shl i64 %"zext.341", 32
  %"or.165" = or i64 %"shl.178", %"zext.340"
  %"ptr_plus_imm.113" = add i64 %"or.165", 8
  %"inttoptr_bytes.155" = inttoptr i64 %"ptr_plus_imm.113" to ptr addrspace(1)
  %"ptr_cast_for_access.155" = bitcast ptr addrspace(1) %"inttoptr_bytes.155" to ptr addrspace(1)
  %".3294" = load float, ptr addrspace(1) %"ptr_cast_for_access.155"
  %".3295" = bitcast ptr %"R16" to ptr
  store float %".3294", ptr %".3295"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".3300" = load i1, ptr %"P0"
  %".3301" = icmp eq i1 %".3300", 1
  br i1 %".3301", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".3304" = load i32, ptr %"R10"
  %"zext.342" = zext i32 %".3304" to i64
  %".3305" = load i32, ptr %"R11"
  %"zext.343" = zext i32 %".3305" to i64
  %"shl.179" = shl i64 %"zext.343", 32
  %"or.166" = or i64 %"shl.179", %"zext.342"
  %"ptr_plus_imm.114" = add i64 %"or.166", 8
  %"inttoptr_bytes.156" = inttoptr i64 %"ptr_plus_imm.114" to ptr addrspace(1)
  %"ptr_cast_for_access.156" = bitcast ptr addrspace(1) %"inttoptr_bytes.156" to ptr addrspace(1)
  %".3306" = load float, ptr addrspace(1) %"ptr_cast_for_access.156"
  %".3307" = bitcast ptr %"R15" to ptr
  store float %".3306", ptr %".3307"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %"cast_ptr.400" = bitcast ptr %"R12" to ptr
  %".3312" = load float, ptr %"cast_ptr.400"
  %"cast_ptr.401" = bitcast ptr %"R9" to ptr
  %".3313" = load float, ptr %"cast_ptr.401"
  %"fmul.143" = fmul float %".3312", %".3313"
  %".3314" = bitcast ptr %"R13" to ptr
  store float %"fmul.143", ptr %".3314"
  ; FFMA R8, R13, R14, R8
  %"cast_ptr.402" = bitcast ptr %"R13" to ptr
  %".3317" = load float, ptr %"cast_ptr.402"
  %"cast_ptr.403" = bitcast ptr %"R14" to ptr
  %".3318" = load float, ptr %"cast_ptr.403"
  %"cast_ptr.404" = bitcast ptr %"R8" to ptr
  %".3319" = load float, ptr %"cast_ptr.404"
  %"fmul.144" = fmul float %".3317", %".3318"
  %"fadd.122" = fadd float %"fmul.144", %".3319"
  %".3320" = bitcast ptr %"R8" to ptr
  store float %"fadd.122", ptr %".3320"
  ; @P0 FMUL R9, R16, R9
  %".3323" = load i1, ptr %"P0"
  %".3324" = icmp eq i1 %".3323", 1
  br i1 %".3324", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %"cast_ptr.405" = bitcast ptr %"R16" to ptr
  %".3327" = load float, ptr %"cast_ptr.405"
  %"cast_ptr.406" = bitcast ptr %"R9" to ptr
  %".3328" = load float, ptr %"cast_ptr.406"
  %"fmul.145" = fmul float %".3327", %".3328"
  %".3329" = bitcast ptr %"R9" to ptr
  store float %"fmul.145", ptr %".3329"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".3334" = load i1, ptr %"P0"
  %".3335" = icmp eq i1 %".3334", 1
  br i1 %".3335", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %"cast_ptr.407" = bitcast ptr %"R9" to ptr
  %".3338" = load float, ptr %"cast_ptr.407"
  %"cast_ptr.408" = bitcast ptr %"R15" to ptr
  %".3339" = load float, ptr %"cast_ptr.408"
  %"cast_ptr.409" = bitcast ptr %"R8" to ptr
  %".3340" = load float, ptr %"cast_ptr.409"
  %"fmul.146" = fmul float %".3338", %".3339"
  %"fadd.123" = fadd float %"fmul.146", %".3340"
  %".3341" = bitcast ptr %"R8" to ptr
  store float %"fadd.123", ptr %".3341"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".3346" = load i32, ptr %"R30"
  %"zext.344" = zext i32 %".3346" to i64
  %".3347" = load i32, ptr %"R31"
  %"zext.345" = zext i32 %".3347" to i64
  %"shl.180" = shl i64 %"zext.345", 32
  %"or.167" = or i64 %"shl.180", %"zext.344"
  %"inttoptr_bytes.157" = inttoptr i64 %"or.167" to ptr addrspace(1)
  %"ptr_cast_for_access.157" = bitcast ptr addrspace(1) %"inttoptr_bytes.157" to ptr addrspace(1)
  %".3348" = load float, ptr addrspace(1) %"ptr_cast_for_access.157"
  %".3349" = bitcast ptr %"R9" to ptr
  store float %".3348", ptr %".3349"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %"cast_ptr.410" = bitcast ptr %"R9" to ptr
  %".3354" = load float, ptr %"cast_ptr.410"
  %"cast_ptr.411" = bitcast ptr %"R8" to ptr
  %".3355" = load float, ptr %"cast_ptr.411"
  %"fadd.124" = fadd float %".3354", %".3355"
  %".3356" = bitcast ptr %"R12" to ptr
  store float %"fadd.124", ptr %".3356"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %"cast_ptr.412" = bitcast ptr %"R12" to ptr
  %".3359" = load float, ptr %"cast_ptr.412"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".3359")
  %".3360" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".3361" = xor i1 %"fcmp_unordered", -1
  %".3362" = and i1 %"fcmp_unordered", %".3360"
  %".3363" = and i1 %".3361", %".3360"
  store i1 %".3362", ptr %"P0"
  ; @!P0 BRA `(.L_x_17)
  %".3366" = load i1, ptr %"P0"
  %".3367" = icmp ne i1 %".3366", 1
  br i1 %".3367", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %"cast_ptr.413" = bitcast ptr %"R12" to ptr
  %".3370" = load float, ptr %"cast_ptr.413"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".3370")
  %"fmul.147" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".3371" = bitcast ptr %"R8" to ptr
  store float %"fmul.147", ptr %".3371"
  ; MOV R9, 0x3f800000
  %".3374" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".3374"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %"cast_ptr.414" = bitcast ptr %"R12" to ptr
  %".3377" = load float, ptr %"cast_ptr.414"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".3377")
  %".3378" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".3379" = xor i1 %"fcmp_unordered.1", -1
  %".3380" = and i1 %"fcmp_unordered.1", %".3378"
  %".3381" = and i1 %".3379", %".3378"
  store i1 %".3380", ptr %"P0"
  ; MUFU.EX2 R8, R8
  %"cast_ptr.415" = bitcast ptr %"R8" to ptr
  %".3384" = load float, ptr %"cast_ptr.415"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".3384")
  %".3385" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".3385"
  ; FADD R10, R8, 1
  %"cast_ptr.416" = bitcast ptr %"R8" to ptr
  %".3388" = load float, ptr %"cast_ptr.416"
  %"fadd.125" = fadd float %".3388", 0x3ff0000000000000
  %".3389" = bitcast ptr %"R10" to ptr
  store float %"fadd.125", ptr %".3389"
  ; MUFU.RCP R10, R10
  %"cast_ptr.417" = bitcast ptr %"R10" to ptr
  %".3392" = load float, ptr %"cast_ptr.417"
  %".3393" = fdiv float 0x3ff0000000000000, %".3392"
  %".3394" = bitcast ptr %"R10" to ptr
  store float %".3393", ptr %".3394"
  ; FFMA R9, R10, -2, R9
  %"cast_ptr.418" = bitcast ptr %"R10" to ptr
  %".3397" = load float, ptr %"cast_ptr.418"
  %"cast_ptr.419" = bitcast ptr %"R9" to ptr
  %".3398" = load float, ptr %"cast_ptr.419"
  %"fmul.148" = fmul float %".3397", 0xc000000000000000
  %"fadd.126" = fadd float %"fmul.148", %".3398"
  %".3399" = bitcast ptr %"R9" to ptr
  store float %"fadd.126", ptr %".3399"
  ; FSEL R9, R9, 1, !P0
  %"cast_ptr.420" = bitcast ptr %"R9" to ptr
  %".3402" = load float, ptr %"cast_ptr.420"
  %".3403" = load i1, ptr %"P0"
  %".3404" = xor i1 %".3403", -1
  %".3405" = icmp eq i1 %".3404", 1
  %"fsel" = select  i1 %".3405", float %".3402", float 0x3ff0000000000000
  %".3406" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".3406"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".3409" = load i32, ptr %"R9"
  %".3410" = load i32, ptr %"R12"
  %".3411" = xor i1 1, -1
  %".3412" = or i32 %".3409", 2147483648
  %".3413" = or i32 %".3409", %".3410"
  %".3414" = and i32 %".3412", %".3413"
  store i32 %".3414", ptr %"R9"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3419" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3419"
  ; FMUL R8, R12, R12
  %"cast_ptr.421" = bitcast ptr %"R12" to ptr
  %".3422" = load float, ptr %"cast_ptr.421"
  %"cast_ptr.422" = bitcast ptr %"R12" to ptr
  %".3423" = load float, ptr %"cast_ptr.422"
  %"fmul.149" = fmul float %".3422", %".3423"
  %".3424" = bitcast ptr %"R8" to ptr
  store float %"fmul.149", ptr %".3424"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %"cast_ptr.423" = bitcast ptr %"R8" to ptr
  %".3427" = load float, ptr %"cast_ptr.423"
  %"cast_ptr.424" = bitcast ptr %"R9" to ptr
  %".3428" = load float, ptr %"cast_ptr.424"
  %"fmul.150" = fmul float %".3427", %".3428"
  %"fadd.127" = fadd float %"fmul.150", 0xbfaac795c0000000
  %".3429" = bitcast ptr %"R9" to ptr
  store float %"fadd.127", ptr %".3429"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %"cast_ptr.425" = bitcast ptr %"R8" to ptr
  %".3432" = load float, ptr %"cast_ptr.425"
  %"cast_ptr.426" = bitcast ptr %"R9" to ptr
  %".3433" = load float, ptr %"cast_ptr.426"
  %"fmul.151" = fmul float %".3432", %".3433"
  %"fadd.128" = fadd float %"fmul.151", 0x3fc10b2820000000
  %".3434" = bitcast ptr %"R9" to ptr
  store float %"fadd.128", ptr %".3434"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %"cast_ptr.427" = bitcast ptr %"R8" to ptr
  %".3437" = load float, ptr %"cast_ptr.427"
  %"cast_ptr.428" = bitcast ptr %"R9" to ptr
  %".3438" = load float, ptr %"cast_ptr.428"
  %"fmul.152" = fmul float %".3437", %".3438"
  %"fadd.129" = fadd float %"fmul.152", 0xbfd5553da0000000
  %".3439" = bitcast ptr %"R9" to ptr
  store float %"fadd.129", ptr %".3439"
  ; FFMA R9, R8, R9, RZ
  %"cast_ptr.429" = bitcast ptr %"R8" to ptr
  %".3442" = load float, ptr %"cast_ptr.429"
  %"cast_ptr.430" = bitcast ptr %"R9" to ptr
  %".3443" = load float, ptr %"cast_ptr.430"
  %"fmul.153" = fmul float %".3442", %".3443"
  %"fadd.130" = fadd float %"fmul.153",              0x0
  %".3444" = bitcast ptr %"R9" to ptr
  store float %"fadd.130", ptr %".3444"
  ; FFMA R9, R12, R9, R12
  %"cast_ptr.431" = bitcast ptr %"R12" to ptr
  %".3447" = load float, ptr %"cast_ptr.431"
  %"cast_ptr.432" = bitcast ptr %"R9" to ptr
  %".3448" = load float, ptr %"cast_ptr.432"
  %"cast_ptr.433" = bitcast ptr %"R12" to ptr
  %".3449" = load float, ptr %"cast_ptr.433"
  %"fmul.154" = fmul float %".3447", %".3448"
  %"fadd.131" = fadd float %"fmul.154", %".3449"
  %".3450" = bitcast ptr %"R9" to ptr
  store float %"fadd.131", ptr %".3450"
  br label %".L_x_18"
.L_x_18:
  ; BSYNC B0
  br label %".L_x_16"
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3456" = load i32, ptr %"R20"
  %".3457" = add i32 %".3456", 25165824
  %".3458" = add i32 %".3457", 0
  store i32 %".3458", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3463" = load i32, ptr %"R8"
  %".3464" = xor i1 1, -1
  %".3465" = and i32 %".3463", 2139095040
  store i32 %".3465", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3468" = load i32, ptr %"R8"
  %".3469" = load i1, ptr %"PT"
  %"cmp.30" = icmp sgt i32 %".3468", 33554431
  %".3470" = xor i1 %"cmp.30", -1
  %".3471" = and i1 %"cmp.30", %".3469"
  %".3472" = and i1 %".3470", %".3469"
  store i1 %".3471", ptr %"P0"
  ; @P0 BRA `(.L_x_20)
  %".3475" = load i1, ptr %"P0"
  %".3476" = icmp eq i1 %".3475", 1
  br i1 %".3476", label %".L_x_20", label %".L_x_16_split_0x2170_CALL_0x21b0"
.L_x_16_split_0x2170_CALL_0x21b0:
  ; MOV R24, R20
  %"cast_ptr.434" = bitcast ptr %"R20" to ptr
  %".3479" = load float, ptr %"cast_ptr.434"
  %".3480" = bitcast ptr %"R24" to ptr
  store float %".3479", ptr %".3480"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3487" = icmp ult i32 1, 32
  %"SHF_min.10" = select  i1 %".3487", i32 1, i32 32
  %".3488" = load i32, ptr %"R24"
  %"zext.346" = zext i32 0 to i64
  %"zext.347" = zext i32 %".3488" to i64
  %"zext.348" = zext i32 1 to i64
  %"shl.181" = shl i64 %"zext.346", 32
  %"or.168" = or i64 %"shl.181", %"zext.347"
  %"shl.182" = shl i64 %"or.168", %"zext.348"
  %"and.7" = and i64 %"shl.182", 4294967295
  %"trunc32.98" = trunc i64 %"and.7" to i32
  store i32 %"trunc32.98", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".3493" = icmp ult i32 24, 32
  %"SHF_min.11" = select  i1 %".3493", i32 24, i32 32
  %".3494" = load i32, ptr %"R11"
  %"zext.349" = zext i32 %".3494" to i64
  %"zext.350" = zext i32 0 to i64
  %"zext.351" = zext i32 24 to i64
  %"shl.183" = shl i64 %"zext.349", 32
  %"or.169" = or i64 %"shl.183", %"zext.350"
  %"lshr.6" = lshr i64 %"or.169", %"zext.351"
  %"lshr.7" = lshr i64 %"lshr.6", 32
  %"trunc32.99" = trunc i64 %"lshr.7" to i32
  store i32 %"trunc32.99", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".3497" = load i32, ptr %"R25"
  %".3498" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3497", 0
  %".3499" = xor i1 %"cmp.31", -1
  %".3500" = and i1 %"cmp.31", %".3498"
  %".3501" = and i1 %".3499", %".3498"
  store i1 %".3500", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".3504" = load i1, ptr %"P0"
  %".3505" = icmp eq i1 %".3504", 1
  br i1 %".3505", label %".L_x_49...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3508" = icmp ult i32 1, 32
  %"SHF_min.12" = select  i1 %".3508", i32 1, i32 32
  %".3509" = load i32, ptr %"R24"
  %"zext.352" = zext i32 0 to i64
  %"zext.353" = zext i32 %".3509" to i64
  %"zext.354" = zext i32 1 to i64
  %"shl.184" = shl i64 %"zext.352", 32
  %"or.170" = or i64 %"shl.184", %"zext.353"
  %"shl.185" = shl i64 %"or.170", %"zext.354"
  %"and.8" = and i64 %"shl.185", 4294967295
  %"trunc32.100" = trunc i64 %"and.8" to i32
  store i32 %"trunc32.100", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".3512" = load i32, ptr %"R11"
  %".3513" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3512", 0
  %".3514" = xor i1 %"cmp.32", -1
  %".3515" = and i1 %"cmp.32", %".3513"
  %".3516" = and i1 %".3514", %".3513"
  store i1 %".3515", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3519" = load i1, ptr %"P0"
  %".3520" = icmp eq i1 %".3519", 1
  br i1 %".3520", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %"cast_ptr.435" = bitcast ptr %"R24" to ptr
  %".3523" = load float, ptr %"cast_ptr.435"
  %"fmul.155" = fmul float %".3523", 0x43f0000000000000
  %"fadd.132" = fadd float %"fmul.155",              0x0
  %".3524" = bitcast ptr %"R12" to ptr
  store float %"fadd.132", ptr %".3524"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %"cast_ptr.436" = bitcast ptr %"R24" to ptr
  %".3529" = load float, ptr %"cast_ptr.436"
  %"fmul.156" = fmul float %".3529", 0x43f0000000000000
  %"fadd.133" = fadd float %"fmul.156",              0x0
  %".3530" = bitcast ptr %"R12" to ptr
  store float %"fadd.133", ptr %".3530"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2:
  ; @!P0 MUFU.RCP R11, R24
  %".3535" = load i1, ptr %"P0"
  %".3536" = icmp ne i1 %".3535", 1
  br i1 %".3536", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".3539" = load i32, ptr %"R24"
  %"sint_to_f32.1" = sitofp i32 %".3539" to float
  %".3540" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".3541" = fptosi float %".3540" to i32
  store i32 %".3541", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2:
  ; MUFU.RCP R11, R24
  %".3546" = load i32, ptr %"R24"
  %"sint_to_f32.2" = sitofp i32 %".3546" to float
  %".3547" = fdiv float 0x3ff0000000000000, %"sint_to_f32.2"
  %".3548" = fptosi float %".3547" to i32
  store i32 %".3548", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2:
  ; @P0 MUFU.RCP R13, R12
  %".3553" = load i1, ptr %"P0"
  %".3554" = icmp eq i1 %".3553", 1
  br i1 %".3554", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %"cast_ptr.437" = bitcast ptr %"R12" to ptr
  %".3557" = load float, ptr %"cast_ptr.437"
  %".3558" = fdiv float 0x3ff0000000000000, %".3557"
  %".3559" = bitcast ptr %"R13" to ptr
  store float %".3558", ptr %".3559"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2:
  ; MUFU.RCP R13, R12
  %"cast_ptr.438" = bitcast ptr %"R12" to ptr
  %".3564" = load float, ptr %"cast_ptr.438"
  %".3565" = fdiv float 0x3ff0000000000000, %".3564"
  %".3566" = bitcast ptr %"R13" to ptr
  store float %".3565", ptr %".3566"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2:
  ; @P0 FFMA R22, R12, R13, -1
  %".3571" = load i1, ptr %"P0"
  %".3572" = icmp eq i1 %".3571", 1
  br i1 %".3572", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %"cast_ptr.439" = bitcast ptr %"R12" to ptr
  %".3575" = load float, ptr %"cast_ptr.439"
  %"cast_ptr.440" = bitcast ptr %"R13" to ptr
  %".3576" = load float, ptr %"cast_ptr.440"
  %"fmul.157" = fmul float %".3575", %".3576"
  %"fadd.134" = fadd float %"fmul.157", 0xbff0000000000000
  %".3577" = bitcast ptr %"R22" to ptr
  store float %"fadd.134", ptr %".3577"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2:
  ; FFMA R22, R12, R13, -1
  %"cast_ptr.441" = bitcast ptr %"R12" to ptr
  %".3582" = load float, ptr %"cast_ptr.441"
  %"cast_ptr.442" = bitcast ptr %"R13" to ptr
  %".3583" = load float, ptr %"cast_ptr.442"
  %"fmul.158" = fmul float %".3582", %".3583"
  %"fadd.135" = fadd float %"fmul.158", 0xbff0000000000000
  %".3584" = bitcast ptr %"R22" to ptr
  store float %"fadd.135", ptr %".3584"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".3589" = load i1, ptr %"P0"
  %".3590" = icmp eq i1 %".3589", 1
  br i1 %".3590", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %"cast_ptr.443" = bitcast ptr %"R22" to ptr
  %".3593" = load float, ptr %"cast_ptr.443"
  %".3594" = fneg float %".3593"
  %".3595" = call float @"llvm.fabs"(float %".3594")
  %".3596" = fcmp ogt float %".3595",              0x0
  %".3597" = fcmp olt float %".3595", 0x3810000000000000
  %".3598" = and i1 %".3596", %".3597"
  %".3599" = select  i1 %".3598", float              0x0, float %".3594"
  %".3600" = call float @"llvm.fabs"(float              0x0)
  %".3601" = fcmp ogt float %".3600",              0x0
  %".3602" = fcmp olt float %".3600", 0x3810000000000000
  %".3603" = and i1 %".3601", %".3602"
  %".3604" = select  i1 %".3603", float              0x0, float              0x0
  %"fadd.136" = fadd float %".3599", %".3604"
  %".3605" = call float @"llvm.fabs"(float %"fadd.136")
  %".3606" = fcmp ogt float %".3605",              0x0
  %".3607" = fcmp olt float %".3605", 0x3810000000000000
  %".3608" = and i1 %".3606", %".3607"
  %".3609" = select  i1 %".3608", float              0x0, float %"fadd.136"
  %".3610" = bitcast ptr %"R22" to ptr
  store float %".3609", ptr %".3610"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2:
  ; FADD.FTZ R22, -R22, -RZ
  %"cast_ptr.444" = bitcast ptr %"R22" to ptr
  %".3615" = load float, ptr %"cast_ptr.444"
  %".3616" = fneg float %".3615"
  %".3617" = call float @"llvm.fabs"(float %".3616")
  %".3618" = fcmp ogt float %".3617",              0x0
  %".3619" = fcmp olt float %".3617", 0x3810000000000000
  %".3620" = and i1 %".3618", %".3619"
  %".3621" = select  i1 %".3620", float              0x0, float %".3616"
  %".3622" = call float @"llvm.fabs"(float              0x0)
  %".3623" = fcmp ogt float %".3622",              0x0
  %".3624" = fcmp olt float %".3622", 0x3810000000000000
  %".3625" = and i1 %".3623", %".3624"
  %".3626" = select  i1 %".3625", float              0x0, float              0x0
  %"fadd.137" = fadd float %".3621", %".3626"
  %".3627" = call float @"llvm.fabs"(float %"fadd.137")
  %".3628" = fcmp ogt float %".3627",              0x0
  %".3629" = fcmp olt float %".3627", 0x3810000000000000
  %".3630" = and i1 %".3628", %".3629"
  %".3631" = select  i1 %".3630", float              0x0, float %"fadd.137"
  %".3632" = bitcast ptr %"R22" to ptr
  store float %".3631", ptr %".3632"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2:
  ; @P0 FFMA R22, R13, R22, R13
  %".3637" = load i1, ptr %"P0"
  %".3638" = icmp eq i1 %".3637", 1
  br i1 %".3638", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %"cast_ptr.445" = bitcast ptr %"R13" to ptr
  %".3641" = load float, ptr %"cast_ptr.445"
  %"cast_ptr.446" = bitcast ptr %"R22" to ptr
  %".3642" = load float, ptr %"cast_ptr.446"
  %"cast_ptr.447" = bitcast ptr %"R13" to ptr
  %".3643" = load float, ptr %"cast_ptr.447"
  %"fmul.159" = fmul float %".3641", %".3642"
  %"fadd.138" = fadd float %"fmul.159", %".3643"
  %".3644" = bitcast ptr %"R22" to ptr
  store float %"fadd.138", ptr %".3644"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2:
  ; FFMA R22, R13, R22, R13
  %"cast_ptr.448" = bitcast ptr %"R13" to ptr
  %".3649" = load float, ptr %"cast_ptr.448"
  %"cast_ptr.449" = bitcast ptr %"R22" to ptr
  %".3650" = load float, ptr %"cast_ptr.449"
  %"cast_ptr.450" = bitcast ptr %"R13" to ptr
  %".3651" = load float, ptr %"cast_ptr.450"
  %"fmul.160" = fmul float %".3649", %".3650"
  %"fadd.139" = fadd float %"fmul.160", %".3651"
  %".3652" = bitcast ptr %"R22" to ptr
  store float %"fadd.139", ptr %".3652"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3657" = load i1, ptr %"P0"
  %".3658" = icmp eq i1 %".3657", 1
  br i1 %".3658", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %"cast_ptr.451" = bitcast ptr %"R22" to ptr
  %".3661" = load float, ptr %"cast_ptr.451"
  %"fmul.161" = fmul float %".3661", 0x43f0000000000000
  %"fadd.140" = fadd float %"fmul.161",              0x0
  %".3662" = bitcast ptr %"R11" to ptr
  store float %"fadd.140", ptr %".3662"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %"cast_ptr.452" = bitcast ptr %"R22" to ptr
  %".3667" = load float, ptr %"cast_ptr.452"
  %"fmul.162" = fmul float %".3667", 0x43f0000000000000
  %"fadd.141" = fadd float %"fmul.162",              0x0
  %".3668" = bitcast ptr %"R11" to ptr
  store float %"fadd.141", ptr %".3668"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2:
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_49...2:
  ; IADD3 R34, R25, -0xfd, RZ
  %".3675" = load i32, ptr %"R25"
  %".3676" = add i32 %".3675", -253
  %".3677" = add i32 %".3676", 0
  store i32 %".3677", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".3680" = load i32, ptr %"R34"
  %".3681" = load i1, ptr %"PT"
  %"cmp.33" = icmp sgt i32 %".3680", 1
  %".3682" = xor i1 %"cmp.33", -1
  %".3683" = and i1 %"cmp.33", %".3681"
  %".3684" = and i1 %".3682", %".3681"
  store i1 %".3683", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".3687" = load i1, ptr %"P0"
  %".3688" = icmp eq i1 %".3687", 1
  br i1 %".3688", label %".L_x_51...2", label %".L_x_49_split_0x4a30...2"
.L_x_49_split_0x4a30...2:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3691" = load i32, ptr %"R24"
  %".3692" = xor i1 1, -1
  %".3693" = and i32 %".3691", 8388607
  store i32 %".3693", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".3698" = load i32, ptr %"R11"
  %".3699" = xor i1 1, -1
  %".3700" = or i32 %".3698", 1065353216
  store i32 %".3700", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".3703" = load i32, ptr %"R34"
  %".3704" = icmp ult i32 %".3703", 32
  %"SHF_min.13" = select  i1 %".3704", i32 %".3703", i32 32
  %".3705" = load i32, ptr %"R23"
  %".3706" = load i32, ptr %"R34"
  %"zext.355" = zext i32 0 to i64
  %"zext.356" = zext i32 %".3705" to i64
  %"zext.357" = zext i32 %".3706" to i64
  %"shl.186" = shl i64 %"zext.355", 32
  %"or.171" = or i64 %"shl.186", %"zext.356"
  %"shl.187" = shl i64 %"or.171", %"zext.357"
  %"and.9" = and i64 %"shl.187", 4294967295
  %"trunc32.101" = trunc i64 %"and.9" to i32
  store i32 %"trunc32.101", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".3709" = load i32, ptr %"R11"
  %"sint_to_f32.3" = sitofp i32 %".3709" to float
  %".3710" = fdiv float 0x3ff0000000000000, %"sint_to_f32.3"
  %".3711" = fptosi float %".3710" to i32
  store i32 %".3711", ptr %"R12"
  ; FFMA R13, R11, R12, -1
  %"cast_ptr.453" = bitcast ptr %"R11" to ptr
  %".3714" = load float, ptr %"cast_ptr.453"
  %"cast_ptr.454" = bitcast ptr %"R12" to ptr
  %".3715" = load float, ptr %"cast_ptr.454"
  %"fmul.163" = fmul float %".3714", %".3715"
  %"fadd.142" = fadd float %"fmul.163", 0xbff0000000000000
  %".3716" = bitcast ptr %"R13" to ptr
  store float %"fadd.142", ptr %".3716"
  ; FADD.FTZ R13, -R13, -RZ
  %"cast_ptr.455" = bitcast ptr %"R13" to ptr
  %".3719" = load float, ptr %"cast_ptr.455"
  %".3720" = fneg float %".3719"
  %".3721" = call float @"llvm.fabs"(float %".3720")
  %".3722" = fcmp ogt float %".3721",              0x0
  %".3723" = fcmp olt float %".3721", 0x3810000000000000
  %".3724" = and i1 %".3722", %".3723"
  %".3725" = select  i1 %".3724", float              0x0, float %".3720"
  %".3726" = call float @"llvm.fabs"(float              0x0)
  %".3727" = fcmp ogt float %".3726",              0x0
  %".3728" = fcmp olt float %".3726", 0x3810000000000000
  %".3729" = and i1 %".3727", %".3728"
  %".3730" = select  i1 %".3729", float              0x0, float              0x0
  %"fadd.143" = fadd float %".3725", %".3730"
  %".3731" = call float @"llvm.fabs"(float %"fadd.143")
  %".3732" = fcmp ogt float %".3731",              0x0
  %".3733" = fcmp olt float %".3731", 0x3810000000000000
  %".3734" = and i1 %".3732", %".3733"
  %".3735" = select  i1 %".3734", float              0x0, float %"fadd.143"
  %".3736" = bitcast ptr %"R13" to ptr
  store float %".3735", ptr %".3736"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %"cast_ptr.456" = bitcast ptr %"R12" to ptr
  %".3739" = load float, ptr %"cast_ptr.456"
  %"cast_ptr.457" = bitcast ptr %"R13" to ptr
  %".3740" = load float, ptr %"cast_ptr.457"
  %"cast_ptr.458" = bitcast ptr %"R12" to ptr
  %".3741" = load float, ptr %"cast_ptr.458"
  %"fmul.164" = fmul float %".3739", %".3740"
  %"fadd.144" = fadd float %"fmul.164", %".3741"
  %".3742" = bitcast ptr %"R22" to ptr
  store float %"fadd.144", ptr %".3742"
  ; FFMA.RP R13, R12, R13, R12
  %"cast_ptr.459" = bitcast ptr %"R12" to ptr
  %".3745" = load float, ptr %"cast_ptr.459"
  %"cast_ptr.460" = bitcast ptr %"R13" to ptr
  %".3746" = load float, ptr %"cast_ptr.460"
  %"cast_ptr.461" = bitcast ptr %"R12" to ptr
  %".3747" = load float, ptr %"cast_ptr.461"
  %"fmul.165" = fmul float %".3745", %".3746"
  %"fadd.145" = fadd float %"fmul.165", %".3747"
  %".3748" = bitcast ptr %"R13" to ptr
  store float %"fadd.145", ptr %".3748"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".3751" = load i32, ptr %"R22"
  %".3752" = xor i1 1, -1
  %".3753" = and i32 %".3751", 8388607
  store i32 %".3753", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %"cast_ptr.462" = bitcast ptr %"R22" to ptr
  %".3756" = load float, ptr %"cast_ptr.462"
  %"cast_ptr.463" = bitcast ptr %"R13" to ptr
  %".3757" = load float, ptr %"cast_ptr.463"
  %".3758" = load i1, ptr %"PT"
  %".3759" = call float @"llvm.fabs"(float %".3756")
  %".3760" = fcmp ogt float %".3759",              0x0
  %".3761" = fcmp olt float %".3759", 0x3810000000000000
  %".3762" = and i1 %".3760", %".3761"
  %".3763" = select  i1 %".3762", float              0x0, float %".3756"
  %".3764" = call float @"llvm.fabs"(float %".3757")
  %".3765" = fcmp ogt float %".3764",              0x0
  %".3766" = fcmp olt float %".3764", 0x3810000000000000
  %".3767" = and i1 %".3765", %".3766"
  %".3768" = select  i1 %".3767", float              0x0, float %".3757"
  %"fcmp_ordered.1" = fcmp une float %".3763", %".3768"
  %".3769" = xor i1 %"fcmp_ordered.1", -1
  %".3770" = and i1 %"fcmp_ordered.1", %".3758"
  %".3771" = and i1 %".3769", %".3758"
  store i1 %".3770", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".3774" = load i32, ptr %"R12"
  %".3775" = xor i1 1, -1
  %".3776" = or i32 %".3774", 8388608
  store i32 %".3776", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".3779" = load i1, ptr %"P0"
  %".3780" = xor i1 %".3779", -1
  %".3781" = icmp eq i1 %".3780", 1
  %"sel.2" = select  i1 %".3781", i32 0, i32 4294967295
  store i32 %"sel.2", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".3784" = load i32, ptr %"R23"
  %".3785" = load i32, ptr %"R12"
  %".3786" = xor i1 1, -1
  %".3787" = and i32 %".3784", %".3785"
  store i32 %".3787", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".3790" = load i32, ptr %"R13"
  %".3791" = sub i32 0, %".3790"
  %".3792" = add i32 %".3791", 0
  %".3793" = add i32 %".3792", 0
  store i32 %".3793", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".3796" = load i32, ptr %"R34"
  %".3797" = icmp ult i32 %".3796", 32
  %"SHF_min.14" = select  i1 %".3797", i32 %".3796", i32 32
  %".3798" = load i32, ptr %"R23"
  %".3799" = load i32, ptr %"R34"
  %"zext.358" = zext i32 %".3798" to i64
  %"zext.359" = zext i32 0 to i64
  %"zext.360" = zext i32 %".3799" to i64
  %"shl.188" = shl i64 %"zext.358", 32
  %"or.172" = or i64 %"shl.188", %"zext.359"
  %"lshr.8" = lshr i64 %"or.172", %"zext.360"
  %"lshr.9" = lshr i64 %"lshr.8", 32
  %"trunc32.102" = trunc i64 %"lshr.9" to i32
  store i32 %"trunc32.102", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".3802" = load i32, ptr %"R13"
  %".3803" = load i32, ptr %"R34"
  %".3804" = load i32, ptr %"R12"
  %".3805" = xor i1 1, -1
  %".3806" = or i32 %".3802", %".3803"
  %".3807" = or i32 %".3802", %".3804"
  %".3808" = and i32 %".3806", %".3807"
  store i32 %".3808", ptr %"RZ"
  %".3810" = icmp ne i32 %".3808", 0
  store i1 %".3810", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".3813" = load i32, ptr %"R23"
  %".3814" = xor i1 1, -1
  %".3815" = and i32 %".3813", 1
  store i32 %".3815", ptr %"RZ"
  %".3817" = icmp ne i32 %".3815", 0
  store i1 %".3817", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".3820" = load i32, ptr %"R23"
  %".3821" = xor i1 1, -1
  %".3822" = and i32 %".3820", 2
  store i32 %".3822", ptr %"RZ"
  %".3824" = icmp ne i32 %".3822", 0
  store i1 %".3824", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3827" = load i1, ptr %"P0"
  %".3828" = load i1, ptr %"P1"
  %".3829" = or i1 %".3827", %".3828"
  %".3830" = and i1 %".3829", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3832" = load i32, ptr %"R24"
  %".3833" = xor i1 1, -1
  %".3834" = and i32 %".3832", 8388607
  store i32 %".3834", ptr %"RZ"
  %".3836" = icmp ne i32 %".3834", 0
  store i1 %".3836", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".3839" = load i1, ptr %"P0"
  %".3840" = xor i1 %".3839", -1
  %".3841" = icmp eq i1 %".3840", 1
  %"sel.3" = select  i1 %".3841", i32 0, i32 1
  store i32 %"sel.3", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".3844" = load i32, ptr %"R11"
  %".3845" = sub i32 0, %".3844"
  %".3846" = add i32 %".3845", 0
  %".3847" = add i32 %".3846", 0
  store i32 %".3847", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".3850" = load i32, ptr %"R11"
  %".3851" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3850", 0
  %".3852" = xor i1 %"cmp.34", -1
  %".3853" = and i1 %"cmp.34", %".3851"
  %".3854" = and i1 %".3852", %".3851"
  store i1 %".3853", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".3857" = load i32, ptr %"R25"
  %".3858" = add i32 %".3857", -252
  %".3859" = add i32 %".3858", 0
  store i32 %".3859", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".3862" = load i32, ptr %"R11"
  %".3863" = icmp ult i32 %".3862", 32
  %"SHF_min.15" = select  i1 %".3863", i32 %".3862", i32 32
  %".3864" = load i32, ptr %"R12"
  %".3865" = load i32, ptr %"R11"
  %"zext.361" = zext i32 %".3864" to i64
  %"zext.362" = zext i32 0 to i64
  %"zext.363" = zext i32 %".3865" to i64
  %"shl.189" = shl i64 %"zext.361", 32
  %"or.173" = or i64 %"shl.189", %"zext.362"
  %"lshr.10" = lshr i64 %"or.173", %"zext.363"
  %"lshr.11" = lshr i64 %"lshr.10", 32
  %"trunc32.103" = trunc i64 %"lshr.11" to i32
  store i32 %"trunc32.103", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".3868" = load i1, ptr %"P0"
  %".3869" = icmp ne i1 %".3868", 1
  br i1 %".3869", label %".L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".3872" = load i32, ptr %"R11"
  %".3873" = add i32 %".3872", 1
  %".3874" = add i32 %".3873", 0
  store i32 %".3874", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2:
  ; IADD3 R11, R11, 0x1, RZ
  %".3879" = load i32, ptr %"R11"
  %".3880" = add i32 %".3879", 1
  %".3881" = add i32 %".3880", 0
  store i32 %".3881", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...2"
.L_x_49_split_0x4be0...2:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".3886" = load i1, ptr %"P1"
  %".3887" = icmp ne i1 %".3886", 1
  br i1 %".3887", label %".L_x_49_split_0x4be0...2_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0...2_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".3890" = icmp ult i32 1, 32
  %"SHF_min.16" = select  i1 %".3890", i32 1, i32 32
  %".3891" = load i32, ptr %"R11"
  %"zext.364" = zext i32 0 to i64
  %"zext.365" = zext i32 %".3891" to i64
  %"zext.366" = zext i32 1 to i64
  %"shl.190" = shl i64 %"zext.364", 32
  %"or.174" = or i64 %"shl.190", %"zext.365"
  %"shl.191" = shl i64 %"or.174", %"zext.366"
  %"and.10" = and i64 %"shl.191", 4294967295
  %"trunc32.104" = trunc i64 %"and.10" to i32
  store i32 %"trunc32.104", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...2:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".3896" = icmp ult i32 1, 32
  %"SHF_min.17" = select  i1 %".3896", i32 1, i32 32
  %".3897" = load i32, ptr %"R11"
  %"zext.367" = zext i32 0 to i64
  %"zext.368" = zext i32 %".3897" to i64
  %"zext.369" = zext i32 1 to i64
  %"shl.192" = shl i64 %"zext.367", 32
  %"or.175" = or i64 %"shl.192", %"zext.368"
  %"shl.193" = shl i64 %"or.175", %"zext.369"
  %"and.11" = and i64 %"shl.193", 4294967295
  %"trunc32.105" = trunc i64 %"and.11" to i32
  store i32 %"trunc32.105", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...2"
.L_x_49_split_0x4bf0...2:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".3902" = load i32, ptr %"R11"
  %".3903" = load i32, ptr %"R24"
  %".3904" = xor i1 1, -1
  %".3905" = or i32 %".3902", 2147483648
  %".3906" = or i32 %".3902", %".3903"
  %".3907" = and i32 %".3905", %".3906"
  store i32 %".3907", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_51...2:
  ; MUFU.RCP R11, R24
  %".3912" = load i32, ptr %"R24"
  %"sint_to_f32.4" = sitofp i32 %".3912" to float
  %".3913" = fdiv float 0x3ff0000000000000, %"sint_to_f32.4"
  %".3914" = fptosi float %".3913" to i32
  store i32 %".3914", ptr %"R11"
  br label %".L_x_50...2"
.L_x_50...2:
  ; BSYNC B1
  br label %".L_x_48...2"
.L_x_48...2:
  ; MOV R22, R11
  %"cast_ptr.464" = bitcast ptr %"R11" to ptr
  %".3920" = load float, ptr %"cast_ptr.464"
  %".3921" = bitcast ptr %"R22" to ptr
  store float %".3920", ptr %".3921"
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
  %"cast_ptr.465" = bitcast ptr %"R22" to ptr
  %".3931" = load float, ptr %"cast_ptr.465"
  %".3932" = bitcast ptr %"R8" to ptr
  store float %".3931", ptr %".3932"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %"cast_ptr.466" = bitcast ptr %"R20" to ptr
  %".3937" = load float, ptr %"cast_ptr.466"
  %".3938" = fdiv float 0x3ff0000000000000, %".3937"
  %".3939" = bitcast ptr %"R11" to ptr
  store float %".3938", ptr %".3939"
  ; FFMA R8, R20, R11, -1
  %"cast_ptr.467" = bitcast ptr %"R20" to ptr
  %".3942" = load float, ptr %"cast_ptr.467"
  %"cast_ptr.468" = bitcast ptr %"R11" to ptr
  %".3943" = load float, ptr %"cast_ptr.468"
  %"fmul.166" = fmul float %".3942", %".3943"
  %"fadd.146" = fadd float %"fmul.166", 0xbff0000000000000
  %".3944" = bitcast ptr %"R8" to ptr
  store float %"fadd.146", ptr %".3944"
  ; FADD.FTZ R8, -R8, -RZ
  %"cast_ptr.469" = bitcast ptr %"R8" to ptr
  %".3947" = load float, ptr %"cast_ptr.469"
  %".3948" = fneg float %".3947"
  %".3949" = call float @"llvm.fabs"(float %".3948")
  %".3950" = fcmp ogt float %".3949",              0x0
  %".3951" = fcmp olt float %".3949", 0x3810000000000000
  %".3952" = and i1 %".3950", %".3951"
  %".3953" = select  i1 %".3952", float              0x0, float %".3948"
  %".3954" = call float @"llvm.fabs"(float              0x0)
  %".3955" = fcmp ogt float %".3954",              0x0
  %".3956" = fcmp olt float %".3954", 0x3810000000000000
  %".3957" = and i1 %".3955", %".3956"
  %".3958" = select  i1 %".3957", float              0x0, float              0x0
  %"fadd.147" = fadd float %".3953", %".3958"
  %".3959" = call float @"llvm.fabs"(float %"fadd.147")
  %".3960" = fcmp ogt float %".3959",              0x0
  %".3961" = fcmp olt float %".3959", 0x3810000000000000
  %".3962" = and i1 %".3960", %".3961"
  %".3963" = select  i1 %".3962", float              0x0, float %"fadd.147"
  %".3964" = bitcast ptr %"R8" to ptr
  store float %".3963", ptr %".3964"
  ; FFMA R8, R11, R8, R11
  %"cast_ptr.470" = bitcast ptr %"R11" to ptr
  %".3967" = load float, ptr %"cast_ptr.470"
  %"cast_ptr.471" = bitcast ptr %"R8" to ptr
  %".3968" = load float, ptr %"cast_ptr.471"
  %"cast_ptr.472" = bitcast ptr %"R11" to ptr
  %".3969" = load float, ptr %"cast_ptr.472"
  %"fmul.167" = fmul float %".3967", %".3968"
  %"fadd.148" = fadd float %"fmul.167", %".3969"
  %".3970" = bitcast ptr %"R8" to ptr
  store float %"fadd.148", ptr %".3970"
  br label %".L_x_21"
.L_x_21:
  ; BSYNC B0
  br label %".L_x_19"
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".3976" = load i32, ptr %"R28"
  %"zext.370" = zext i32 %".3976" to i64
  %".3977" = load i32, ptr %"R29"
  %"zext.371" = zext i32 %".3977" to i64
  %"shl.194" = shl i64 %"zext.371", 32
  %"or.176" = or i64 %"shl.194", %"zext.370"
  %"inttoptr_bytes.158" = inttoptr i64 %"or.176" to ptr addrspace(1)
  %"ptr_cast_for_access.158" = bitcast ptr addrspace(1) %"inttoptr_bytes.158" to ptr addrspace(1)
  %".3978" = load float, ptr addrspace(1) %"ptr_cast_for_access.158"
  %".3979" = bitcast ptr %"R11" to ptr
  store float %".3978", ptr %".3979"
  ; FADD R10, -R8, 1
  %"cast_ptr.473" = bitcast ptr %"R8" to ptr
  %".3982" = load float, ptr %"cast_ptr.473"
  %".3983" = fneg float %".3982"
  %"fadd.149" = fadd float %".3983", 0x3ff0000000000000
  %".3984" = bitcast ptr %"R10" to ptr
  store float %"fadd.149", ptr %".3984"
  ; FMUL R11, R11, R8
  %"cast_ptr.474" = bitcast ptr %"R11" to ptr
  %".3987" = load float, ptr %"cast_ptr.474"
  %"cast_ptr.475" = bitcast ptr %"R8" to ptr
  %".3988" = load float, ptr %"cast_ptr.475"
  %"fmul.168" = fmul float %".3987", %".3988"
  %".3989" = bitcast ptr %"R11" to ptr
  store float %"fmul.168", ptr %".3989"
  ; FFMA R9, R10, R9, R11
  %"cast_ptr.476" = bitcast ptr %"R10" to ptr
  %".3992" = load float, ptr %"cast_ptr.476"
  %"cast_ptr.477" = bitcast ptr %"R9" to ptr
  %".3993" = load float, ptr %"cast_ptr.477"
  %"cast_ptr.478" = bitcast ptr %"R11" to ptr
  %".3994" = load float, ptr %"cast_ptr.478"
  %"fmul.169" = fmul float %".3992", %".3993"
  %"fadd.150" = fadd float %"fmul.169", %".3994"
  %".3995" = bitcast ptr %"R9" to ptr
  store float %"fadd.150", ptr %".3995"
  ; STG.E.SYS [R28], R9
  %"cast_ptr.479" = bitcast ptr %"R9" to ptr
  %".3998" = load float, ptr %"cast_ptr.479"
  %".3999" = load i32, ptr %"R28"
  %"zext.372" = zext i32 %".3999" to i64
  %".4000" = load i32, ptr %"R29"
  %"zext.373" = zext i32 %".4000" to i64
  %"shl.195" = shl i64 %"zext.373", 32
  %"or.177" = or i64 %"shl.195", %"zext.372"
  %"inttoptr_bytes.159" = inttoptr i64 %"or.177" to ptr addrspace(1)
  %"ptr_cast_for_access.159" = bitcast ptr addrspace(1) %"inttoptr_bytes.159" to ptr addrspace(1)
  store float %".3998", ptr addrspace(1) %"ptr_cast_for_access.159"
  ; @!P3 BRA `(.L_x_22)
  %".4003" = load i1, ptr %"P3"
  %".4004" = icmp ne i1 %".4003", 1
  br i1 %".4004", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".4011" = load i32, ptr %"R15"
  %".4012" = xor i1 1, -1
  %".4013" = and i32 %".4011", 3
  store i32 %".4013", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".4016" = load i32, ptr %"R5"
  %".4017" = xor i1 1, -1
  %".4018" = and i32 %".4016", 3
  store i32 %".4018", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".4021" = load i32, ptr %"R18"
  %".4022" = sub i32 0, %".4021"
  %".4023" = add i32 %".4022", %"Arg_4"
  %".4024" = add i32 %".4023", 0
  store i32 %".4024", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".4027" = icmp ult i32 31, 32
  %"SHF_min.18" = select  i1 %".4027", i32 31, i32 32
  %".4028" = load i32, ptr %"R5"
  %"zext.374" = zext i32 %".4028" to i64
  %"zext.375" = zext i32 0 to i64
  %"zext.376" = zext i32 31 to i64
  %"shl.196" = shl i64 %"zext.374", 32
  %"or.178" = or i64 %"shl.196", %"zext.375"
  %"ashr" = ashr i64 %"or.178", %"zext.376"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.106" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.106", ptr %"R16"
  ; MOV R17, RZ
  store i32 0, ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".4033" = load i32, ptr %"R18"
  %".4034" = sub i32 0, %".4033"
  %".4035" = add i32 %".4034", %"Arg_5"
  %".4036" = add i32 %".4035", 0
  store i32 %".4036", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".4039" = load i32, ptr %"R15"
  %".4040" = sub i32 0, %".4039"
  %".4041" = add i32 %".4040", %"Arg_4"
  %".4042" = add i32 %".4041", 0
  store i32 %".4042", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".4045" = load i32, ptr %"R48"
  %".4046" = sub i32 0, %".4045"
  %".4047" = add i32 %".4046", %"Arg_5"
  %".4048" = add i32 %".4047", 0
  store i32 %".4048", ptr %"R20"
  br label %".L_x_47"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".4052" = load i32, ptr %"R49"
  %".4053" = load i1, ptr %"PT"
  %"cmp.35" = icmp sge i32 %".4052", 3
  %".4054" = xor i1 %"cmp.35", -1
  %".4055" = and i1 %"cmp.35", %".4053"
  %".4056" = and i1 %".4054", %".4053"
  store i1 %".4055", ptr %"P0"
  ; MOV R13, R17
  %".4059" = load i32, ptr %"R17"
  store i32 %".4059", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".4064" = load i32, ptr %"R17"
  %".4065" = add i32 %".4064", 1
  %".4066" = add i32 %".4065", 0
  store i32 %".4066", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".4069" = load i32, ptr %"R4"
  %".4070" = load i1, ptr %"PT"
  %"cmp.36" = icmp sge i32 %".4069", 1
  %".4071" = xor i1 %"cmp.36", -1
  %".4072" = and i1 %"cmp.36", %".4070"
  %".4073" = and i1 %".4071", %".4070"
  store i1 %".4072", ptr %"P4"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".4076" = load i32, ptr %"R15"
  %".4077" = load i1, ptr %"PT"
  %"cmp.37" = icmp ne i32 %".4076", 0
  %".4078" = xor i1 %"cmp.37", -1
  %".4079" = and i1 %"cmp.37", %".4077"
  %".4080" = and i1 %".4078", %".4077"
  store i1 %".4079", ptr %"P1"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".4083" = load i32, ptr %"R17"
  %".4084" = load i1, ptr %"PT"
  %"cmp.38" = icmp sge i32 %".4083", %"Arg_6"
  %".4085" = xor i1 %"cmp.38", -1
  %".4086" = and i1 %"cmp.38", %".4084"
  %".4087" = and i1 %".4085", %".4084"
  store i1 %".4086", ptr %"P3"
  ; MOV R21, RZ
  %".4090" = bitcast ptr %"R21" to ptr
  store float              0x0, ptr %".4090"
  ; MOV R22, RZ
  store i32 0, ptr %"R22"
  ; MOV R56, RZ
  %".4095" = bitcast ptr %"R56" to ptr
  store float              0x0, ptr %".4095"
  ; MOV R44, RZ
  %".4098" = bitcast ptr %"R44" to ptr
  store float              0x0, ptr %".4098"
  ; @!P0 BRA `(.L_x_23)
  %".4101" = load i1, ptr %"P0"
  %".4102" = icmp ne i1 %".4101", 1
  br i1 %".4102", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R25"
  ; MOV R21, RZ
  %".4107" = bitcast ptr %"R21" to ptr
  store float              0x0, ptr %".4107"
  ; MOV R22, RZ
  store i32 0, ptr %"R22"
  ; MOV R12, R19
  %".4112" = load i32, ptr %"R19"
  store i32 %".4112", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".4115" = icmp ult i32 2, 64
  %"SHF_min.19" = select  i1 %".4115", i32 2, i32 64
  %".4116" = load i32, ptr %"R16"
  %".4117" = load i32, ptr %"R25"
  %"zext.377" = zext i32 %".4116" to i64
  %"zext.378" = zext i32 %".4117" to i64
  %"zext.379" = zext i32 2 to i64
  %"shl.197" = shl i64 %"zext.377", 32
  %"or.179" = or i64 %"shl.197", %"zext.378"
  %"shl.198" = shl i64 %"or.179", %"zext.379"
  %"lshr.12" = lshr i64 %"shl.198", 32
  %"trunc32.107" = trunc i64 %"lshr.12" to i32
  store i32 %"trunc32.107", ptr %"R23"
  br label %".L_x_24"
.L_x_24:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IMAD R6, R14, c[0x0][0x180], R22.reuse
  %".4123" = load i32, ptr %"R14"
  %".4124" = load i32, ptr %"R22"
  %"imad_mul.52" = mul i32 %".4123", %"Arg_4"
  %"imad_add.52" = add i32 %"imad_mul.52", %".4124"
  store i32 %"imad_add.52", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".4129" = load i32, ptr %"R13"
  %".4130" = load i32, ptr %"R22"
  %"imad_mul.53" = mul i32 %".4129", %"Arg_4"
  %"imad_add.53" = add i32 %"imad_mul.53", %".4130"
  store i32 %"imad_add.53", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".4133" = load i32, ptr %"R6"
  %".4134" = load i32, ptr %"R7"
  %"imad_ext1.44" = zext i32 %".4133" to i64
  %"imad_ext2.44" = zext i32 %".4134" to i64
  %"imad_mul.54" = mul i64 %"imad_ext1.44", %"imad_ext2.44"
  %".4135" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.54" = add i64 %"imad_mul.54", %".4135"
  %".4136" = and i64 %"imad_add.54", 18446744069414584320
  %".4137" = lshr i64 %".4136", 32
  %"trunc32.108" = trunc i64 %".4137" to i32
  %"trunc32.109" = trunc i64 %"imad_add.54" to i32
  store i32 %"trunc32.109", ptr %"R4"
  store i32 %"trunc32.108", ptr %"R5"
  ; LEA R6, R9, R6, 0x1
  %".4141" = load i32, ptr %"R9"
  %".4142" = load i32, ptr %"R6"
  %"shl.199" = shl i32 %".4141", 1
  %"add.6" = add i32 %"shl.199", %".4142"
  store i32 %"add.6", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".4145" = load i32, ptr %"R10"
  %".4146" = load i32, ptr %"R7"
  %"imad_ext1.45" = zext i32 %".4145" to i64
  %"imad_ext2.45" = zext i32 %".4146" to i64
  %"imad_mul.55" = mul i64 %"imad_ext1.45", %"imad_ext2.45"
  %".4147" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.55" = add i64 %"imad_mul.55", %".4147"
  %".4148" = and i64 %"imad_add.55", 18446744069414584320
  %".4149" = lshr i64 %".4148", 32
  %"trunc32.110" = trunc i64 %".4149" to i32
  %"trunc32.111" = trunc i64 %"imad_add.55" to i32
  store i32 %"trunc32.111", ptr %"R10"
  store i32 %"trunc32.110", ptr %"R11"
  ; LEA R8, P0, R25, R4, 0x2
  %".4153" = load i32, ptr %"R25"
  %".4154" = load i32, ptr %"R4"
  %"shl.200" = shl i32 %".4153", 2
  %"add.7" = add i32 %"shl.200", %".4154"
  store i32 %"add.7", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".4157" = load i32, ptr %"R6"
  %".4158" = load i32, ptr %"R7"
  %"imad_ext1.46" = zext i32 %".4157" to i64
  %"imad_ext2.46" = zext i32 %".4158" to i64
  %"imad_mul.56" = mul i64 %"imad_ext1.46", %"imad_ext2.46"
  %".4159" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.56" = add i64 %"imad_mul.56", %".4159"
  %".4160" = and i64 %"imad_add.56", 18446744069414584320
  %".4161" = lshr i64 %".4160", 32
  %"trunc32.112" = trunc i64 %".4161" to i32
  %"trunc32.113" = trunc i64 %"imad_add.56" to i32
  store i32 %"trunc32.113", ptr %"R6"
  store i32 %"trunc32.112", ptr %"R7"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".4165" = load i32, ptr %"R5"
  %".4166" = load i32, ptr %"R23"
  %".4167" = load i1, ptr %"P0"
  %".4168" = xor i1 1, -1
  %".4169" = zext i1 %".4167" to i32
  %".4170" = zext i1 %".4168" to i32
  %"add.8" = add i32 %".4165", %".4166"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".4169"
  %"add.11" = add i32 %"add.10", %".4170"
  store i32 %"add.11", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".4173" = load i32, ptr %"R4"
  %"zext.380" = zext i32 %".4173" to i64
  %".4174" = load i32, ptr %"R5"
  %"zext.381" = zext i32 %".4174" to i64
  %"shl.201" = shl i64 %"zext.381", 32
  %"or.180" = or i64 %"shl.201", %"zext.380"
  %"inttoptr_bytes.160" = inttoptr i64 %"or.180" to ptr addrspace(1)
  %"ptr_cast_for_access.160" = bitcast ptr addrspace(1) %"inttoptr_bytes.160" to ptr addrspace(1)
  %".4175" = load float, ptr addrspace(1) %"ptr_cast_for_access.160"
  %".4176" = bitcast ptr %"R35" to ptr
  store float %".4175", ptr %".4176"
  ; LDG.E.SYS R24, [R10]
  %".4179" = load i32, ptr %"R10"
  %"zext.382" = zext i32 %".4179" to i64
  %".4180" = load i32, ptr %"R11"
  %"zext.383" = zext i32 %".4180" to i64
  %"shl.202" = shl i64 %"zext.383", 32
  %"or.181" = or i64 %"shl.202", %"zext.382"
  %"inttoptr_bytes.161" = inttoptr i64 %"or.181" to ptr addrspace(1)
  %"ptr_cast_for_access.161" = bitcast ptr addrspace(1) %"inttoptr_bytes.161" to ptr addrspace(1)
  %".4181" = load float, ptr addrspace(1) %"ptr_cast_for_access.161"
  %".4182" = bitcast ptr %"R24" to ptr
  store float %".4181", ptr %".4182"
  ; LDG.E.SYS R37, [R8]
  %".4185" = load i32, ptr %"R8"
  %"zext.384" = zext i32 %".4185" to i64
  %".4186" = load i32, ptr %"R9"
  %"zext.385" = zext i32 %".4186" to i64
  %"shl.203" = shl i64 %"zext.385", 32
  %"or.182" = or i64 %"shl.203", %"zext.384"
  %"inttoptr_bytes.162" = inttoptr i64 %"or.182" to ptr addrspace(1)
  %"ptr_cast_for_access.162" = bitcast ptr addrspace(1) %"inttoptr_bytes.162" to ptr addrspace(1)
  %".4187" = load float, ptr addrspace(1) %"ptr_cast_for_access.162"
  %".4188" = bitcast ptr %"R37" to ptr
  store float %".4187", ptr %".4188"
  ; LDG.E.SYS R34, [R6]
  %".4191" = load i32, ptr %"R6"
  %"zext.386" = zext i32 %".4191" to i64
  %".4192" = load i32, ptr %"R7"
  %"zext.387" = zext i32 %".4192" to i64
  %"shl.204" = shl i64 %"zext.387", 32
  %"or.183" = or i64 %"shl.204", %"zext.386"
  %"inttoptr_bytes.163" = inttoptr i64 %"or.183" to ptr addrspace(1)
  %"ptr_cast_for_access.163" = bitcast ptr addrspace(1) %"inttoptr_bytes.163" to ptr addrspace(1)
  %".4193" = load float, ptr addrspace(1) %"ptr_cast_for_access.163"
  %".4194" = bitcast ptr %"R34" to ptr
  store float %".4193", ptr %".4194"
  ; LDG.E.SYS R36, [R4+0x4]
  %".4197" = load i32, ptr %"R4"
  %"zext.388" = zext i32 %".4197" to i64
  %".4198" = load i32, ptr %"R5"
  %"zext.389" = zext i32 %".4198" to i64
  %"shl.205" = shl i64 %"zext.389", 32
  %"or.184" = or i64 %"shl.205", %"zext.388"
  %"ptr_plus_imm.115" = add i64 %"or.184", 4
  %"inttoptr_bytes.164" = inttoptr i64 %"ptr_plus_imm.115" to ptr addrspace(1)
  %"ptr_cast_for_access.164" = bitcast ptr addrspace(1) %"inttoptr_bytes.164" to ptr addrspace(1)
  %".4199" = load float, ptr addrspace(1) %"ptr_cast_for_access.164"
  %".4200" = bitcast ptr %"R36" to ptr
  store float %".4199", ptr %".4200"
  ; LDG.E.SYS R38, [R10+0x4]
  %".4203" = load i32, ptr %"R10"
  %"zext.390" = zext i32 %".4203" to i64
  %".4204" = load i32, ptr %"R11"
  %"zext.391" = zext i32 %".4204" to i64
  %"shl.206" = shl i64 %"zext.391", 32
  %"or.185" = or i64 %"shl.206", %"zext.390"
  %"ptr_plus_imm.116" = add i64 %"or.185", 4
  %"inttoptr_bytes.165" = inttoptr i64 %"ptr_plus_imm.116" to ptr addrspace(1)
  %"ptr_cast_for_access.165" = bitcast ptr addrspace(1) %"inttoptr_bytes.165" to ptr addrspace(1)
  %".4205" = load float, ptr addrspace(1) %"ptr_cast_for_access.165"
  %".4206" = bitcast ptr %"R38" to ptr
  store float %".4205", ptr %".4206"
  ; LDG.E.SYS R39, [R8+0x4]
  %".4209" = load i32, ptr %"R8"
  %"zext.392" = zext i32 %".4209" to i64
  %".4210" = load i32, ptr %"R9"
  %"zext.393" = zext i32 %".4210" to i64
  %"shl.207" = shl i64 %"zext.393", 32
  %"or.186" = or i64 %"shl.207", %"zext.392"
  %"ptr_plus_imm.117" = add i64 %"or.186", 4
  %"inttoptr_bytes.166" = inttoptr i64 %"ptr_plus_imm.117" to ptr addrspace(1)
  %"ptr_cast_for_access.166" = bitcast ptr addrspace(1) %"inttoptr_bytes.166" to ptr addrspace(1)
  %".4211" = load float, ptr addrspace(1) %"ptr_cast_for_access.166"
  %".4212" = bitcast ptr %"R39" to ptr
  store float %".4211", ptr %".4212"
  ; LDG.E.SYS R41, [R6+0x4]
  %".4215" = load i32, ptr %"R6"
  %"zext.394" = zext i32 %".4215" to i64
  %".4216" = load i32, ptr %"R7"
  %"zext.395" = zext i32 %".4216" to i64
  %"shl.208" = shl i64 %"zext.395", 32
  %"or.187" = or i64 %"shl.208", %"zext.394"
  %"ptr_plus_imm.118" = add i64 %"or.187", 4
  %"inttoptr_bytes.167" = inttoptr i64 %"ptr_plus_imm.118" to ptr addrspace(1)
  %"ptr_cast_for_access.167" = bitcast ptr addrspace(1) %"inttoptr_bytes.167" to ptr addrspace(1)
  %".4217" = load float, ptr addrspace(1) %"ptr_cast_for_access.167"
  %".4218" = bitcast ptr %"R41" to ptr
  store float %".4217", ptr %".4218"
  ; LDG.E.SYS R42, [R10+0x8]
  %".4221" = load i32, ptr %"R10"
  %"zext.396" = zext i32 %".4221" to i64
  %".4222" = load i32, ptr %"R11"
  %"zext.397" = zext i32 %".4222" to i64
  %"shl.209" = shl i64 %"zext.397", 32
  %"or.188" = or i64 %"shl.209", %"zext.396"
  %"ptr_plus_imm.119" = add i64 %"or.188", 8
  %"inttoptr_bytes.168" = inttoptr i64 %"ptr_plus_imm.119" to ptr addrspace(1)
  %"ptr_cast_for_access.168" = bitcast ptr addrspace(1) %"inttoptr_bytes.168" to ptr addrspace(1)
  %".4223" = load float, ptr addrspace(1) %"ptr_cast_for_access.168"
  %".4224" = bitcast ptr %"R42" to ptr
  store float %".4223", ptr %".4224"
  ; LDG.E.SYS R40, [R4+0x8]
  %".4227" = load i32, ptr %"R4"
  %"zext.398" = zext i32 %".4227" to i64
  %".4228" = load i32, ptr %"R5"
  %"zext.399" = zext i32 %".4228" to i64
  %"shl.210" = shl i64 %"zext.399", 32
  %"or.189" = or i64 %"shl.210", %"zext.398"
  %"ptr_plus_imm.120" = add i64 %"or.189", 8
  %"inttoptr_bytes.169" = inttoptr i64 %"ptr_plus_imm.120" to ptr addrspace(1)
  %"ptr_cast_for_access.169" = bitcast ptr addrspace(1) %"inttoptr_bytes.169" to ptr addrspace(1)
  %".4229" = load float, ptr addrspace(1) %"ptr_cast_for_access.169"
  %".4230" = bitcast ptr %"R40" to ptr
  store float %".4229", ptr %".4230"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4233" = load i32, ptr %"R8"
  %"zext.400" = zext i32 %".4233" to i64
  %".4234" = load i32, ptr %"R9"
  %"zext.401" = zext i32 %".4234" to i64
  %"shl.211" = shl i64 %"zext.401", 32
  %"or.190" = or i64 %"shl.211", %"zext.400"
  %"ptr_plus_imm.121" = add i64 %"or.190", 8
  %"inttoptr_bytes.170" = inttoptr i64 %"ptr_plus_imm.121" to ptr addrspace(1)
  %"ptr_cast_for_access.170" = bitcast ptr addrspace(1) %"inttoptr_bytes.170" to ptr addrspace(1)
  %".4235" = load float, ptr addrspace(1) %"ptr_cast_for_access.170"
  %".4236" = bitcast ptr %"R43" to ptr
  store float %".4235", ptr %".4236"
  ; LDG.E.SYS R45, [R6+0x8]
  %".4239" = load i32, ptr %"R6"
  %"zext.402" = zext i32 %".4239" to i64
  %".4240" = load i32, ptr %"R7"
  %"zext.403" = zext i32 %".4240" to i64
  %"shl.212" = shl i64 %"zext.403", 32
  %"or.191" = or i64 %"shl.212", %"zext.402"
  %"ptr_plus_imm.122" = add i64 %"or.191", 8
  %"inttoptr_bytes.171" = inttoptr i64 %"ptr_plus_imm.122" to ptr addrspace(1)
  %"ptr_cast_for_access.171" = bitcast ptr addrspace(1) %"inttoptr_bytes.171" to ptr addrspace(1)
  %".4241" = load float, ptr addrspace(1) %"ptr_cast_for_access.171"
  %".4242" = bitcast ptr %"R45" to ptr
  store float %".4241", ptr %".4242"
  ; LDG.E.SYS R47, [R10+0xc]
  %".4245" = load i32, ptr %"R10"
  %"zext.404" = zext i32 %".4245" to i64
  %".4246" = load i32, ptr %"R11"
  %"zext.405" = zext i32 %".4246" to i64
  %"shl.213" = shl i64 %"zext.405", 32
  %"or.192" = or i64 %"shl.213", %"zext.404"
  %"ptr_plus_imm.123" = add i64 %"or.192", 12
  %"inttoptr_bytes.172" = inttoptr i64 %"ptr_plus_imm.123" to ptr addrspace(1)
  %"ptr_cast_for_access.172" = bitcast ptr addrspace(1) %"inttoptr_bytes.172" to ptr addrspace(1)
  %".4247" = load float, ptr addrspace(1) %"ptr_cast_for_access.172"
  %".4248" = bitcast ptr %"R47" to ptr
  store float %".4247", ptr %".4248"
  ; LDG.E.SYS R46, [R4+0xc]
  %".4251" = load i32, ptr %"R4"
  %"zext.406" = zext i32 %".4251" to i64
  %".4252" = load i32, ptr %"R5"
  %"zext.407" = zext i32 %".4252" to i64
  %"shl.214" = shl i64 %"zext.407", 32
  %"or.193" = or i64 %"shl.214", %"zext.406"
  %"ptr_plus_imm.124" = add i64 %"or.193", 12
  %"inttoptr_bytes.173" = inttoptr i64 %"ptr_plus_imm.124" to ptr addrspace(1)
  %"ptr_cast_for_access.173" = bitcast ptr addrspace(1) %"inttoptr_bytes.173" to ptr addrspace(1)
  %".4253" = load float, ptr addrspace(1) %"ptr_cast_for_access.173"
  %".4254" = bitcast ptr %"R46" to ptr
  store float %".4253", ptr %".4254"
  ; LDG.E.SYS R50, [R8+0xc]
  %".4257" = load i32, ptr %"R8"
  %"zext.408" = zext i32 %".4257" to i64
  %".4258" = load i32, ptr %"R9"
  %"zext.409" = zext i32 %".4258" to i64
  %"shl.215" = shl i64 %"zext.409", 32
  %"or.194" = or i64 %"shl.215", %"zext.408"
  %"ptr_plus_imm.125" = add i64 %"or.194", 12
  %"inttoptr_bytes.174" = inttoptr i64 %"ptr_plus_imm.125" to ptr addrspace(1)
  %"ptr_cast_for_access.174" = bitcast ptr addrspace(1) %"inttoptr_bytes.174" to ptr addrspace(1)
  %".4259" = load float, ptr addrspace(1) %"ptr_cast_for_access.174"
  %".4260" = bitcast ptr %"R50" to ptr
  store float %".4259", ptr %".4260"
  ; LDG.E.SYS R51, [R6+0xc]
  %".4263" = load i32, ptr %"R6"
  %"zext.410" = zext i32 %".4263" to i64
  %".4264" = load i32, ptr %"R7"
  %"zext.411" = zext i32 %".4264" to i64
  %"shl.216" = shl i64 %"zext.411", 32
  %"or.195" = or i64 %"shl.216", %"zext.410"
  %"ptr_plus_imm.126" = add i64 %"or.195", 12
  %"inttoptr_bytes.175" = inttoptr i64 %"ptr_plus_imm.126" to ptr addrspace(1)
  %"ptr_cast_for_access.175" = bitcast ptr addrspace(1) %"inttoptr_bytes.175" to ptr addrspace(1)
  %".4265" = load float, ptr addrspace(1) %"ptr_cast_for_access.175"
  %".4266" = bitcast ptr %"R51" to ptr
  store float %".4265", ptr %".4266"
  ; IADD3 R12, R12, -0x4, RZ
  %".4269" = load i32, ptr %"R12"
  %".4270" = add i32 %".4269", -4
  %".4271" = add i32 %".4270", 0
  store i32 %".4271", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".4274" = load i32, ptr %"R22"
  %".4275" = add i32 %".4274", 4
  %".4276" = add i32 %".4275", 0
  store i32 %".4276", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".4279" = load i32, ptr %"R12"
  %".4280" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".4279", 0
  %".4281" = xor i1 %"cmp.39", -1
  %".4282" = and i1 %"cmp.39", %".4280"
  %".4283" = and i1 %".4281", %".4280"
  store i1 %".4282", ptr %"P0"
  ; FFMA R35, R35, R24, R44
  %"cast_ptr.480" = bitcast ptr %"R35" to ptr
  %".4286" = load float, ptr %"cast_ptr.480"
  %"cast_ptr.481" = bitcast ptr %"R24" to ptr
  %".4287" = load float, ptr %"cast_ptr.481"
  %"cast_ptr.482" = bitcast ptr %"R44" to ptr
  %".4288" = load float, ptr %"cast_ptr.482"
  %"fmul.170" = fmul float %".4286", %".4287"
  %"fadd.151" = fadd float %"fmul.170", %".4288"
  %".4289" = bitcast ptr %"R35" to ptr
  store float %"fadd.151", ptr %".4289"
  ; FFMA R37, R24.reuse, R37, R56
  %"cast_ptr.483" = bitcast ptr %"R24" to ptr
  %".4292" = load float, ptr %"cast_ptr.483"
  %"cast_ptr.484" = bitcast ptr %"R37" to ptr
  %".4293" = load float, ptr %"cast_ptr.484"
  %"cast_ptr.485" = bitcast ptr %"R56" to ptr
  %".4294" = load float, ptr %"cast_ptr.485"
  %"fmul.171" = fmul float %".4292", %".4293"
  %"fadd.152" = fadd float %"fmul.171", %".4294"
  %".4295" = bitcast ptr %"R37" to ptr
  store float %"fadd.152", ptr %".4295"
  ; FFMA R34, R24, R34, R21
  %"cast_ptr.486" = bitcast ptr %"R24" to ptr
  %".4298" = load float, ptr %"cast_ptr.486"
  %"cast_ptr.487" = bitcast ptr %"R34" to ptr
  %".4299" = load float, ptr %"cast_ptr.487"
  %"cast_ptr.488" = bitcast ptr %"R21" to ptr
  %".4300" = load float, ptr %"cast_ptr.488"
  %"fmul.172" = fmul float %".4298", %".4299"
  %"fadd.153" = fadd float %"fmul.172", %".4300"
  %".4301" = bitcast ptr %"R34" to ptr
  store float %"fadd.153", ptr %".4301"
  ; FFMA R35, R36, R38, R35
  %"cast_ptr.489" = bitcast ptr %"R36" to ptr
  %".4304" = load float, ptr %"cast_ptr.489"
  %"cast_ptr.490" = bitcast ptr %"R38" to ptr
  %".4305" = load float, ptr %"cast_ptr.490"
  %"cast_ptr.491" = bitcast ptr %"R35" to ptr
  %".4306" = load float, ptr %"cast_ptr.491"
  %"fmul.173" = fmul float %".4304", %".4305"
  %"fadd.154" = fadd float %"fmul.173", %".4306"
  %".4307" = bitcast ptr %"R35" to ptr
  store float %"fadd.154", ptr %".4307"
  ; FFMA R37, R38, R39, R37
  %"cast_ptr.492" = bitcast ptr %"R38" to ptr
  %".4310" = load float, ptr %"cast_ptr.492"
  %"cast_ptr.493" = bitcast ptr %"R39" to ptr
  %".4311" = load float, ptr %"cast_ptr.493"
  %"cast_ptr.494" = bitcast ptr %"R37" to ptr
  %".4312" = load float, ptr %"cast_ptr.494"
  %"fmul.174" = fmul float %".4310", %".4311"
  %"fadd.155" = fadd float %"fmul.174", %".4312"
  %".4313" = bitcast ptr %"R37" to ptr
  store float %"fadd.155", ptr %".4313"
  ; FFMA R34, R38, R41, R34
  %"cast_ptr.495" = bitcast ptr %"R38" to ptr
  %".4316" = load float, ptr %"cast_ptr.495"
  %"cast_ptr.496" = bitcast ptr %"R41" to ptr
  %".4317" = load float, ptr %"cast_ptr.496"
  %"cast_ptr.497" = bitcast ptr %"R34" to ptr
  %".4318" = load float, ptr %"cast_ptr.497"
  %"fmul.175" = fmul float %".4316", %".4317"
  %"fadd.156" = fadd float %"fmul.175", %".4318"
  %".4319" = bitcast ptr %"R34" to ptr
  store float %"fadd.156", ptr %".4319"
  ; FFMA R35, R40, R42, R35
  %"cast_ptr.498" = bitcast ptr %"R40" to ptr
  %".4322" = load float, ptr %"cast_ptr.498"
  %"cast_ptr.499" = bitcast ptr %"R42" to ptr
  %".4323" = load float, ptr %"cast_ptr.499"
  %"cast_ptr.500" = bitcast ptr %"R35" to ptr
  %".4324" = load float, ptr %"cast_ptr.500"
  %"fmul.176" = fmul float %".4322", %".4323"
  %"fadd.157" = fadd float %"fmul.176", %".4324"
  %".4325" = bitcast ptr %"R35" to ptr
  store float %"fadd.157", ptr %".4325"
  ; FFMA R37, R42.reuse, R43, R37
  %"cast_ptr.501" = bitcast ptr %"R42" to ptr
  %".4328" = load float, ptr %"cast_ptr.501"
  %"cast_ptr.502" = bitcast ptr %"R43" to ptr
  %".4329" = load float, ptr %"cast_ptr.502"
  %"cast_ptr.503" = bitcast ptr %"R37" to ptr
  %".4330" = load float, ptr %"cast_ptr.503"
  %"fmul.177" = fmul float %".4328", %".4329"
  %"fadd.158" = fadd float %"fmul.177", %".4330"
  %".4331" = bitcast ptr %"R37" to ptr
  store float %"fadd.158", ptr %".4331"
  ; FFMA R34, R42, R45, R34
  %"cast_ptr.504" = bitcast ptr %"R42" to ptr
  %".4334" = load float, ptr %"cast_ptr.504"
  %"cast_ptr.505" = bitcast ptr %"R45" to ptr
  %".4335" = load float, ptr %"cast_ptr.505"
  %"cast_ptr.506" = bitcast ptr %"R34" to ptr
  %".4336" = load float, ptr %"cast_ptr.506"
  %"fmul.178" = fmul float %".4334", %".4335"
  %"fadd.159" = fadd float %"fmul.178", %".4336"
  %".4337" = bitcast ptr %"R34" to ptr
  store float %"fadd.159", ptr %".4337"
  ; FFMA R44, R46, R47, R35
  %"cast_ptr.507" = bitcast ptr %"R46" to ptr
  %".4340" = load float, ptr %"cast_ptr.507"
  %"cast_ptr.508" = bitcast ptr %"R47" to ptr
  %".4341" = load float, ptr %"cast_ptr.508"
  %"cast_ptr.509" = bitcast ptr %"R35" to ptr
  %".4342" = load float, ptr %"cast_ptr.509"
  %"fmul.179" = fmul float %".4340", %".4341"
  %"fadd.160" = fadd float %"fmul.179", %".4342"
  %".4343" = bitcast ptr %"R44" to ptr
  store float %"fadd.160", ptr %".4343"
  ; FFMA R56, R47, R50, R37
  %"cast_ptr.510" = bitcast ptr %"R47" to ptr
  %".4346" = load float, ptr %"cast_ptr.510"
  %"cast_ptr.511" = bitcast ptr %"R50" to ptr
  %".4347" = load float, ptr %"cast_ptr.511"
  %"cast_ptr.512" = bitcast ptr %"R37" to ptr
  %".4348" = load float, ptr %"cast_ptr.512"
  %"fmul.180" = fmul float %".4346", %".4347"
  %"fadd.161" = fadd float %"fmul.180", %".4348"
  %".4349" = bitcast ptr %"R56" to ptr
  store float %"fadd.161", ptr %".4349"
  ; FFMA R21, R47, R51, R34
  %"cast_ptr.513" = bitcast ptr %"R47" to ptr
  %".4352" = load float, ptr %"cast_ptr.513"
  %"cast_ptr.514" = bitcast ptr %"R51" to ptr
  %".4353" = load float, ptr %"cast_ptr.514"
  %"cast_ptr.515" = bitcast ptr %"R34" to ptr
  %".4354" = load float, ptr %"cast_ptr.515"
  %"fmul.181" = fmul float %".4352", %".4353"
  %"fadd.162" = fadd float %"fmul.181", %".4354"
  %".4355" = bitcast ptr %"R21" to ptr
  store float %"fadd.162", ptr %".4355"
  ; @P0 BRA `(.L_x_24)
  %".4358" = load i1, ptr %"P0"
  %".4359" = icmp eq i1 %".4358", 1
  br i1 %".4359", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".4362" = load i1, ptr %"P1"
  %".4363" = icmp ne i1 %".4362", 1
  br i1 %".4363", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".4368" = load i32, ptr %"R14"
  %".4369" = load i32, ptr %"R22"
  %"imad_mul.57" = mul i32 %".4368", %"Arg_4"
  %"imad_add.57" = add i32 %"imad_mul.57", %".4369"
  store i32 %"imad_add.57", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".4374" = load i32, ptr %"R13"
  %".4375" = load i32, ptr %"R22"
  %"imad_mul.58" = mul i32 %".4374", %"Arg_4"
  %"imad_add.58" = add i32 %"imad_mul.58", %".4375"
  store i32 %"imad_add.58", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".4380" = load i32, ptr %"R7"
  %".4381" = load i32, ptr %"R11"
  %"imad_ext1.47" = zext i32 %".4380" to i64
  %"imad_ext2.47" = zext i32 %".4381" to i64
  %"imad_mul.59" = mul i64 %"imad_ext1.47", %"imad_ext2.47"
  %".4382" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.59" = add i64 %"imad_mul.59", %".4382"
  %".4383" = and i64 %"imad_add.59", 18446744069414584320
  %".4384" = lshr i64 %".4383", 32
  %"trunc32.114" = trunc i64 %".4384" to i32
  %"trunc32.115" = trunc i64 %"imad_add.59" to i32
  store i32 %"trunc32.115", ptr %"R4"
  store i32 %"trunc32.114", ptr %"R5"
  ; LEA R10, R10, R7, 0x1
  %".4388" = load i32, ptr %"R10"
  %".4389" = load i32, ptr %"R7"
  %"shl.217" = shl i32 %".4388", 1
  %"add.12" = add i32 %"shl.217", %".4389"
  store i32 %"add.12", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".4392" = load i32, ptr %"R6"
  %".4393" = load i32, ptr %"R11"
  %"imad_ext1.48" = zext i32 %".4392" to i64
  %"imad_ext2.48" = zext i32 %".4393" to i64
  %"imad_mul.60" = mul i64 %"imad_ext1.48", %"imad_ext2.48"
  %".4394" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.60" = add i64 %"imad_mul.60", %".4394"
  %".4395" = and i64 %"imad_add.60", 18446744069414584320
  %".4396" = lshr i64 %".4395", 32
  %"trunc32.116" = trunc i64 %".4396" to i32
  %"trunc32.117" = trunc i64 %"imad_add.60" to i32
  store i32 %"trunc32.117", ptr %"R6"
  store i32 %"trunc32.116", ptr %"R7"
  ; LEA R8, P0, R9, R4, 0x2
  %".4400" = load i32, ptr %"R9"
  %".4401" = load i32, ptr %"R4"
  %"shl.218" = shl i32 %".4400", 2
  %"add.13" = add i32 %"shl.218", %".4401"
  store i32 %"add.13", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4404" = load i32, ptr %"R10"
  %".4405" = load i32, ptr %"R11"
  %"imad_ext1.49" = zext i32 %".4404" to i64
  %"imad_ext2.49" = zext i32 %".4405" to i64
  %"imad_mul.61" = mul i64 %"imad_ext1.49", %"imad_ext2.49"
  %".4406" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.61" = add i64 %"imad_mul.61", %".4406"
  %".4407" = and i64 %"imad_add.61", 18446744069414584320
  %".4408" = lshr i64 %".4407", 32
  %"trunc32.118" = trunc i64 %".4408" to i32
  %"trunc32.119" = trunc i64 %"imad_add.61" to i32
  store i32 %"trunc32.119", ptr %"R10"
  store i32 %"trunc32.118", ptr %"R11"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".4412" = load i32, ptr %"R5"
  %".4413" = load i32, ptr %"R16"
  %"shl.219" = shl i32 %".4412", 2
  %"add.14" = add i32 %"shl.219", %".4413"
  store i32 %"add.14", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".4416" = load i32, ptr %"R4"
  %"zext.412" = zext i32 %".4416" to i64
  %".4417" = load i32, ptr %"R5"
  %"zext.413" = zext i32 %".4417" to i64
  %"shl.220" = shl i64 %"zext.413", 32
  %"or.196" = or i64 %"shl.220", %"zext.412"
  %"inttoptr_bytes.176" = inttoptr i64 %"or.196" to ptr addrspace(1)
  %"ptr_cast_for_access.176" = bitcast ptr addrspace(1) %"inttoptr_bytes.176" to ptr addrspace(1)
  %".4418" = load float, ptr addrspace(1) %"ptr_cast_for_access.176"
  %".4419" = bitcast ptr %"R13" to ptr
  store float %".4418", ptr %".4419"
  ; LDG.E.SYS R12, [R6]
  %".4422" = load i32, ptr %"R6"
  %"zext.414" = zext i32 %".4422" to i64
  %".4423" = load i32, ptr %"R7"
  %"zext.415" = zext i32 %".4423" to i64
  %"shl.221" = shl i64 %"zext.415", 32
  %"or.197" = or i64 %"shl.221", %"zext.414"
  %"inttoptr_bytes.177" = inttoptr i64 %"or.197" to ptr addrspace(1)
  %"ptr_cast_for_access.177" = bitcast ptr addrspace(1) %"inttoptr_bytes.177" to ptr addrspace(1)
  %".4424" = load float, ptr addrspace(1) %"ptr_cast_for_access.177"
  %".4425" = bitcast ptr %"R12" to ptr
  store float %".4424", ptr %".4425"
  ; LDG.E.SYS R23, [R8]
  %".4428" = load i32, ptr %"R8"
  %"zext.416" = zext i32 %".4428" to i64
  %".4429" = load i32, ptr %"R9"
  %"zext.417" = zext i32 %".4429" to i64
  %"shl.222" = shl i64 %"zext.417", 32
  %"or.198" = or i64 %"shl.222", %"zext.416"
  %"inttoptr_bytes.178" = inttoptr i64 %"or.198" to ptr addrspace(1)
  %"ptr_cast_for_access.178" = bitcast ptr addrspace(1) %"inttoptr_bytes.178" to ptr addrspace(1)
  %".4430" = load float, ptr addrspace(1) %"ptr_cast_for_access.178"
  %".4431" = bitcast ptr %"R23" to ptr
  store float %".4430", ptr %".4431"
  ; LDG.E.SYS R22, [R10]
  %".4434" = load i32, ptr %"R10"
  %"zext.418" = zext i32 %".4434" to i64
  %".4435" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".4435" to i64
  %"shl.223" = shl i64 %"zext.419", 32
  %"or.199" = or i64 %"shl.223", %"zext.418"
  %"inttoptr_bytes.179" = inttoptr i64 %"or.199" to ptr addrspace(1)
  %"ptr_cast_for_access.179" = bitcast ptr addrspace(1) %"inttoptr_bytes.179" to ptr addrspace(1)
  %".4436" = load float, ptr addrspace(1) %"ptr_cast_for_access.179"
  %".4437" = bitcast ptr %"R22" to ptr
  store float %".4436", ptr %".4437"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".4440" = load i32, ptr %"R15"
  %".4441" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".4440", 1
  %".4442" = xor i1 %"cmp.40", -1
  %".4443" = and i1 %"cmp.40", %".4441"
  %".4444" = and i1 %".4442", %".4441"
  store i1 %".4443", ptr %"P0"
  ; FFMA R44, R13, R12, R44
  %"cast_ptr.516" = bitcast ptr %"R13" to ptr
  %".4447" = load float, ptr %"cast_ptr.516"
  %"cast_ptr.517" = bitcast ptr %"R12" to ptr
  %".4448" = load float, ptr %"cast_ptr.517"
  %"cast_ptr.518" = bitcast ptr %"R44" to ptr
  %".4449" = load float, ptr %"cast_ptr.518"
  %"fmul.182" = fmul float %".4447", %".4448"
  %"fadd.163" = fadd float %"fmul.182", %".4449"
  %".4450" = bitcast ptr %"R44" to ptr
  store float %"fadd.163", ptr %".4450"
  ; FFMA R56, R12.reuse, R23, R56
  %"cast_ptr.519" = bitcast ptr %"R12" to ptr
  %".4453" = load float, ptr %"cast_ptr.519"
  %"cast_ptr.520" = bitcast ptr %"R23" to ptr
  %".4454" = load float, ptr %"cast_ptr.520"
  %"cast_ptr.521" = bitcast ptr %"R56" to ptr
  %".4455" = load float, ptr %"cast_ptr.521"
  %"fmul.183" = fmul float %".4453", %".4454"
  %"fadd.164" = fadd float %"fmul.183", %".4455"
  %".4456" = bitcast ptr %"R56" to ptr
  store float %"fadd.164", ptr %".4456"
  ; FFMA R21, R12, R22, R21
  %"cast_ptr.522" = bitcast ptr %"R12" to ptr
  %".4459" = load float, ptr %"cast_ptr.522"
  %"cast_ptr.523" = bitcast ptr %"R22" to ptr
  %".4460" = load float, ptr %"cast_ptr.523"
  %"cast_ptr.524" = bitcast ptr %"R21" to ptr
  %".4461" = load float, ptr %"cast_ptr.524"
  %"fmul.184" = fmul float %".4459", %".4460"
  %"fadd.165" = fadd float %"fmul.184", %".4461"
  %".4462" = bitcast ptr %"R21" to ptr
  store float %"fadd.165", ptr %".4462"
  ; @!P0 BRA `(.L_x_25)
  %".4465" = load i1, ptr %"P0"
  %".4466" = icmp ne i1 %".4465", 1
  br i1 %".4466", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".4469" = load i32, ptr %"R15"
  %".4470" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".4469", 2
  %".4471" = xor i1 %"cmp.41", -1
  %".4472" = and i1 %"cmp.41", %".4470"
  %".4473" = and i1 %".4471", %".4470"
  store i1 %".4472", ptr %"P0"
  ; LDG.E.SYS R13, [R4+0x4]
  %".4476" = load i32, ptr %"R4"
  %"zext.420" = zext i32 %".4476" to i64
  %".4477" = load i32, ptr %"R5"
  %"zext.421" = zext i32 %".4477" to i64
  %"shl.224" = shl i64 %"zext.421", 32
  %"or.200" = or i64 %"shl.224", %"zext.420"
  %"ptr_plus_imm.127" = add i64 %"or.200", 4
  %"inttoptr_bytes.180" = inttoptr i64 %"ptr_plus_imm.127" to ptr addrspace(1)
  %"ptr_cast_for_access.180" = bitcast ptr addrspace(1) %"inttoptr_bytes.180" to ptr addrspace(1)
  %".4478" = load float, ptr addrspace(1) %"ptr_cast_for_access.180"
  %".4479" = bitcast ptr %"R13" to ptr
  store float %".4478", ptr %".4479"
  ; LDG.E.SYS R12, [R6+0x4]
  %".4482" = load i32, ptr %"R6"
  %"zext.422" = zext i32 %".4482" to i64
  %".4483" = load i32, ptr %"R7"
  %"zext.423" = zext i32 %".4483" to i64
  %"shl.225" = shl i64 %"zext.423", 32
  %"or.201" = or i64 %"shl.225", %"zext.422"
  %"ptr_plus_imm.128" = add i64 %"or.201", 4
  %"inttoptr_bytes.181" = inttoptr i64 %"ptr_plus_imm.128" to ptr addrspace(1)
  %"ptr_cast_for_access.181" = bitcast ptr addrspace(1) %"inttoptr_bytes.181" to ptr addrspace(1)
  %".4484" = load float, ptr addrspace(1) %"ptr_cast_for_access.181"
  %".4485" = bitcast ptr %"R12" to ptr
  store float %".4484", ptr %".4485"
  ; LDG.E.SYS R23, [R8+0x4]
  %".4488" = load i32, ptr %"R8"
  %"zext.424" = zext i32 %".4488" to i64
  %".4489" = load i32, ptr %"R9"
  %"zext.425" = zext i32 %".4489" to i64
  %"shl.226" = shl i64 %"zext.425", 32
  %"or.202" = or i64 %"shl.226", %"zext.424"
  %"ptr_plus_imm.129" = add i64 %"or.202", 4
  %"inttoptr_bytes.182" = inttoptr i64 %"ptr_plus_imm.129" to ptr addrspace(1)
  %"ptr_cast_for_access.182" = bitcast ptr addrspace(1) %"inttoptr_bytes.182" to ptr addrspace(1)
  %".4490" = load float, ptr addrspace(1) %"ptr_cast_for_access.182"
  %".4491" = bitcast ptr %"R23" to ptr
  store float %".4490", ptr %".4491"
  ; LDG.E.SYS R22, [R10+0x4]
  %".4494" = load i32, ptr %"R10"
  %"zext.426" = zext i32 %".4494" to i64
  %".4495" = load i32, ptr %"R11"
  %"zext.427" = zext i32 %".4495" to i64
  %"shl.227" = shl i64 %"zext.427", 32
  %"or.203" = or i64 %"shl.227", %"zext.426"
  %"ptr_plus_imm.130" = add i64 %"or.203", 4
  %"inttoptr_bytes.183" = inttoptr i64 %"ptr_plus_imm.130" to ptr addrspace(1)
  %"ptr_cast_for_access.183" = bitcast ptr addrspace(1) %"inttoptr_bytes.183" to ptr addrspace(1)
  %".4496" = load float, ptr addrspace(1) %"ptr_cast_for_access.183"
  %".4497" = bitcast ptr %"R22" to ptr
  store float %".4496", ptr %".4497"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".4500" = load i1, ptr %"P0"
  %".4501" = icmp eq i1 %".4500", 1
  br i1 %".4501", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".4504" = load i32, ptr %"R4"
  %"zext.428" = zext i32 %".4504" to i64
  %".4505" = load i32, ptr %"R5"
  %"zext.429" = zext i32 %".4505" to i64
  %"shl.228" = shl i64 %"zext.429", 32
  %"or.204" = or i64 %"shl.228", %"zext.428"
  %"ptr_plus_imm.131" = add i64 %"or.204", 8
  %"inttoptr_bytes.184" = inttoptr i64 %"ptr_plus_imm.131" to ptr addrspace(1)
  %"ptr_cast_for_access.184" = bitcast ptr addrspace(1) %"inttoptr_bytes.184" to ptr addrspace(1)
  %".4506" = load float, ptr addrspace(1) %"ptr_cast_for_access.184"
  %".4507" = bitcast ptr %"R25" to ptr
  store float %".4506", ptr %".4507"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".4512" = load i1, ptr %"P0"
  %".4513" = icmp eq i1 %".4512", 1
  br i1 %".4513", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".4516" = load i32, ptr %"R6"
  %"zext.430" = zext i32 %".4516" to i64
  %".4517" = load i32, ptr %"R7"
  %"zext.431" = zext i32 %".4517" to i64
  %"shl.229" = shl i64 %"zext.431", 32
  %"or.205" = or i64 %"shl.229", %"zext.430"
  %"ptr_plus_imm.132" = add i64 %"or.205", 8
  %"inttoptr_bytes.185" = inttoptr i64 %"ptr_plus_imm.132" to ptr addrspace(1)
  %"ptr_cast_for_access.185" = bitcast ptr addrspace(1) %"inttoptr_bytes.185" to ptr addrspace(1)
  %".4518" = load float, ptr addrspace(1) %"ptr_cast_for_access.185"
  %".4519" = bitcast ptr %"R24" to ptr
  store float %".4518", ptr %".4519"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".4524" = load i1, ptr %"P0"
  %".4525" = icmp eq i1 %".4524", 1
  br i1 %".4525", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".4528" = load i32, ptr %"R8"
  %"zext.432" = zext i32 %".4528" to i64
  %".4529" = load i32, ptr %"R9"
  %"zext.433" = zext i32 %".4529" to i64
  %"shl.230" = shl i64 %"zext.433", 32
  %"or.206" = or i64 %"shl.230", %"zext.432"
  %"ptr_plus_imm.133" = add i64 %"or.206", 8
  %"inttoptr_bytes.186" = inttoptr i64 %"ptr_plus_imm.133" to ptr addrspace(1)
  %"ptr_cast_for_access.186" = bitcast ptr addrspace(1) %"inttoptr_bytes.186" to ptr addrspace(1)
  %".4530" = load float, ptr addrspace(1) %"ptr_cast_for_access.186"
  %".4531" = bitcast ptr %"R35" to ptr
  store float %".4530", ptr %".4531"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".4536" = load i1, ptr %"P0"
  %".4537" = icmp eq i1 %".4536", 1
  br i1 %".4537", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".4540" = load i32, ptr %"R10"
  %"zext.434" = zext i32 %".4540" to i64
  %".4541" = load i32, ptr %"R11"
  %"zext.435" = zext i32 %".4541" to i64
  %"shl.231" = shl i64 %"zext.435", 32
  %"or.207" = or i64 %"shl.231", %"zext.434"
  %"ptr_plus_imm.134" = add i64 %"or.207", 8
  %"inttoptr_bytes.187" = inttoptr i64 %"ptr_plus_imm.134" to ptr addrspace(1)
  %"ptr_cast_for_access.187" = bitcast ptr addrspace(1) %"inttoptr_bytes.187" to ptr addrspace(1)
  %".4542" = load float, ptr addrspace(1) %"ptr_cast_for_access.187"
  %".4543" = bitcast ptr %"R34" to ptr
  store float %".4542", ptr %".4543"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %"cast_ptr.525" = bitcast ptr %"R13" to ptr
  %".4548" = load float, ptr %"cast_ptr.525"
  %"cast_ptr.526" = bitcast ptr %"R12" to ptr
  %".4549" = load float, ptr %"cast_ptr.526"
  %"cast_ptr.527" = bitcast ptr %"R44" to ptr
  %".4550" = load float, ptr %"cast_ptr.527"
  %"fmul.185" = fmul float %".4548", %".4549"
  %"fadd.166" = fadd float %"fmul.185", %".4550"
  %".4551" = bitcast ptr %"R44" to ptr
  store float %"fadd.166", ptr %".4551"
  ; FFMA R56, R12.reuse, R23, R56
  %"cast_ptr.528" = bitcast ptr %"R12" to ptr
  %".4554" = load float, ptr %"cast_ptr.528"
  %"cast_ptr.529" = bitcast ptr %"R23" to ptr
  %".4555" = load float, ptr %"cast_ptr.529"
  %"cast_ptr.530" = bitcast ptr %"R56" to ptr
  %".4556" = load float, ptr %"cast_ptr.530"
  %"fmul.186" = fmul float %".4554", %".4555"
  %"fadd.167" = fadd float %"fmul.186", %".4556"
  %".4557" = bitcast ptr %"R56" to ptr
  store float %"fadd.167", ptr %".4557"
  ; FFMA R21, R12, R22, R21
  %"cast_ptr.531" = bitcast ptr %"R12" to ptr
  %".4560" = load float, ptr %"cast_ptr.531"
  %"cast_ptr.532" = bitcast ptr %"R22" to ptr
  %".4561" = load float, ptr %"cast_ptr.532"
  %"cast_ptr.533" = bitcast ptr %"R21" to ptr
  %".4562" = load float, ptr %"cast_ptr.533"
  %"fmul.187" = fmul float %".4560", %".4561"
  %"fadd.168" = fadd float %"fmul.187", %".4562"
  %".4563" = bitcast ptr %"R21" to ptr
  store float %"fadd.168", ptr %".4563"
  ; @P0 FFMA R44, R25, R24, R44
  %".4566" = load i1, ptr %"P0"
  %".4567" = icmp eq i1 %".4566", 1
  br i1 %".4567", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %"cast_ptr.534" = bitcast ptr %"R25" to ptr
  %".4570" = load float, ptr %"cast_ptr.534"
  %"cast_ptr.535" = bitcast ptr %"R24" to ptr
  %".4571" = load float, ptr %"cast_ptr.535"
  %"cast_ptr.536" = bitcast ptr %"R44" to ptr
  %".4572" = load float, ptr %"cast_ptr.536"
  %"fmul.188" = fmul float %".4570", %".4571"
  %"fadd.169" = fadd float %"fmul.188", %".4572"
  %".4573" = bitcast ptr %"R44" to ptr
  store float %"fadd.169", ptr %".4573"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".4578" = load i1, ptr %"P0"
  %".4579" = icmp eq i1 %".4578", 1
  br i1 %".4579", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %"cast_ptr.537" = bitcast ptr %"R24" to ptr
  %".4582" = load float, ptr %"cast_ptr.537"
  %"cast_ptr.538" = bitcast ptr %"R35" to ptr
  %".4583" = load float, ptr %"cast_ptr.538"
  %"cast_ptr.539" = bitcast ptr %"R56" to ptr
  %".4584" = load float, ptr %"cast_ptr.539"
  %"fmul.189" = fmul float %".4582", %".4583"
  %"fadd.170" = fadd float %"fmul.189", %".4584"
  %".4585" = bitcast ptr %"R56" to ptr
  store float %"fadd.170", ptr %".4585"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".4590" = load i1, ptr %"P0"
  %".4591" = icmp eq i1 %".4590", 1
  br i1 %".4591", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %"cast_ptr.540" = bitcast ptr %"R24" to ptr
  %".4594" = load float, ptr %"cast_ptr.540"
  %"cast_ptr.541" = bitcast ptr %"R34" to ptr
  %".4595" = load float, ptr %"cast_ptr.541"
  %"cast_ptr.542" = bitcast ptr %"R21" to ptr
  %".4596" = load float, ptr %"cast_ptr.542"
  %"fmul.190" = fmul float %".4594", %".4595"
  %"fadd.171" = fadd float %"fmul.190", %".4596"
  %".4597" = bitcast ptr %"R21" to ptr
  store float %"fadd.171", ptr %".4597"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".4602" = load i1, ptr %"P4"
  %".4603" = icmp ne i1 %".4602", 1
  br i1 %".4603", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4606" = load i32, ptr %"R18"
  %".4607" = load i1, ptr %"PT"
  %"cmp.42" = icmp sge i32 %".4606", 3
  %".4608" = xor i1 %"cmp.42", -1
  %".4609" = and i1 %"cmp.42", %".4607"
  %".4610" = and i1 %".4608", %".4607"
  store i1 %".4609", ptr %"P0"
  ; MOV R23, RZ
  store i32 0, ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".4615" = load i1, ptr %"P0"
  %".4616" = icmp ne i1 %".4615", 1
  br i1 %".4616", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4619" = load i32, ptr %"R20"
  %".4620" = load i1, ptr %"PT"
  %"cmp.43" = icmp sgt i32 %".4619", 0
  %".4621" = xor i1 %"cmp.43", -1
  %".4622" = and i1 %"cmp.43", %".4620"
  %".4623" = and i1 %".4621", %".4620"
  store i1 %".4622", ptr %"P0"
  ; MOV R23, RZ
  store i32 0, ptr %"R23"
  ; MOV R22, R20
  %".4628" = load i32, ptr %"R20"
  store i32 %".4628", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".4631" = load i1, ptr %"P0"
  %".4632" = icmp ne i1 %".4631", 1
  br i1 %".4632", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4635" = load i32, ptr %"R22"
  %".4636" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".4635", 12
  %".4637" = xor i1 %"cmp.44", -1
  %".4638" = and i1 %"cmp.44", %".4636"
  %".4639" = and i1 %".4637", %".4636"
  store i1 %".4638", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4642" = and i1 1, 1
  %".4643" = and i1 %".4642", 1
  ; @!P1 BRA `(.L_x_29)
  %".4645" = load i1, ptr %"P1"
  %".4646" = icmp ne i1 %".4645", 1
  br i1 %".4646", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4649" = xor i1 1, 1
  %".4650" = and i1 %".4649", 1
  %".4651" = and i1 %".4650", 1
  br label %".L_x_30"
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".4654" = load i32, ptr %"R0"
  %".4655" = load i32, ptr %"R23"
  %".4656" = add i32 %".4654", %".4655"
  %".4657" = add i32 %".4656", 0
  store i32 %".4657", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".4662" = load i32, ptr %"R2"
  %".4663" = load i32, ptr %"R25"
  %"imad_mul.62" = mul i32 %".4662", 3
  %"imad_add.62" = add i32 %"imad_mul.62", %".4663"
  store i32 %"imad_add.62", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".4666" = load i32, ptr %"R2"
  %".4667" = load i32, ptr %"R25"
  %"shl.232" = shl i32 %".4666", 2
  %"add.15" = add i32 %"shl.232", %".4667"
  store i32 %"add.15", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".4670" = load i32, ptr %"R23"
  %".4671" = load i32, ptr %"R24"
  %"imad_ext1.50" = zext i32 %".4670" to i64
  %"imad_ext2.50" = zext i32 %".4671" to i64
  %"imad_mul.63" = mul i64 %"imad_ext1.50", %"imad_ext2.50"
  %".4672" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.63" = add i64 %"imad_mul.63", %".4672"
  %".4673" = and i64 %"imad_add.63", 18446744069414584320
  %".4674" = lshr i64 %".4673", 32
  %"trunc32.120" = trunc i64 %".4674" to i32
  %"trunc32.121" = trunc i64 %"imad_add.63" to i32
  store i32 %"trunc32.121", ptr %"R36"
  store i32 %"trunc32.120", ptr %"R37"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".4678" = load i32, ptr %"R35"
  %".4679" = load i32, ptr %"R24"
  %"imad_ext1.51" = zext i32 %".4678" to i64
  %"imad_ext2.51" = zext i32 %".4679" to i64
  %"imad_mul.64" = mul i64 %"imad_ext1.51", %"imad_ext2.51"
  %".4680" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.64" = add i64 %"imad_mul.64", %".4680"
  %".4681" = and i64 %"imad_add.64", 18446744069414584320
  %".4682" = lshr i64 %".4681", 32
  %"trunc32.122" = trunc i64 %".4682" to i32
  %"trunc32.123" = trunc i64 %"imad_add.64" to i32
  store i32 %"trunc32.123", ptr %"R8"
  store i32 %"trunc32.122", ptr %"R9"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".4686" = load i32, ptr %"R25"
  %".4687" = load i32, ptr %"R24"
  %"imad_ext1.52" = zext i32 %".4686" to i64
  %"imad_ext2.52" = zext i32 %".4687" to i64
  %"imad_mul.65" = mul i64 %"imad_ext1.52", %"imad_ext2.52"
  %".4688" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.65" = add i64 %"imad_mul.65", %".4688"
  %".4689" = and i64 %"imad_add.65", 18446744069414584320
  %".4690" = lshr i64 %".4689", 32
  %"trunc32.124" = trunc i64 %".4690" to i32
  %"trunc32.125" = trunc i64 %"imad_add.65" to i32
  store i32 %"trunc32.125", ptr %"R12"
  store i32 %"trunc32.124", ptr %"R13"
  ; LDG.E.SYS R39, [R36]
  %".4694" = load i32, ptr %"R36"
  %"zext.436" = zext i32 %".4694" to i64
  %".4695" = load i32, ptr %"R37"
  %"zext.437" = zext i32 %".4695" to i64
  %"shl.233" = shl i64 %"zext.437", 32
  %"or.208" = or i64 %"shl.233", %"zext.436"
  %"inttoptr_bytes.188" = inttoptr i64 %"or.208" to ptr addrspace(1)
  %"ptr_cast_for_access.188" = bitcast ptr addrspace(1) %"inttoptr_bytes.188" to ptr addrspace(1)
  %".4696" = load float, ptr addrspace(1) %"ptr_cast_for_access.188"
  %".4697" = bitcast ptr %"R39" to ptr
  store float %".4696", ptr %".4697"
  ; LDG.E.SYS R41, [R8]
  %".4700" = load i32, ptr %"R8"
  %"zext.438" = zext i32 %".4700" to i64
  %".4701" = load i32, ptr %"R9"
  %"zext.439" = zext i32 %".4701" to i64
  %"shl.234" = shl i64 %"zext.439", 32
  %"or.209" = or i64 %"shl.234", %"zext.438"
  %"inttoptr_bytes.189" = inttoptr i64 %"or.209" to ptr addrspace(1)
  %"ptr_cast_for_access.189" = bitcast ptr addrspace(1) %"inttoptr_bytes.189" to ptr addrspace(1)
  %".4702" = load float, ptr addrspace(1) %"ptr_cast_for_access.189"
  %".4703" = bitcast ptr %"R41" to ptr
  store float %".4702", ptr %".4703"
  ; LDG.E.SYS R40, [R12]
  %".4706" = load i32, ptr %"R12"
  %"zext.440" = zext i32 %".4706" to i64
  %".4707" = load i32, ptr %"R13"
  %"zext.441" = zext i32 %".4707" to i64
  %"shl.235" = shl i64 %"zext.441", 32
  %"or.210" = or i64 %"shl.235", %"zext.440"
  %"inttoptr_bytes.190" = inttoptr i64 %"or.210" to ptr addrspace(1)
  %"ptr_cast_for_access.190" = bitcast ptr addrspace(1) %"inttoptr_bytes.190" to ptr addrspace(1)
  %".4708" = load float, ptr addrspace(1) %"ptr_cast_for_access.190"
  %".4709" = bitcast ptr %"R40" to ptr
  store float %".4708", ptr %".4709"
  ; LDG.E.SYS R52, [R36+0x4]
  %".4712" = load i32, ptr %"R36"
  %"zext.442" = zext i32 %".4712" to i64
  %".4713" = load i32, ptr %"R37"
  %"zext.443" = zext i32 %".4713" to i64
  %"shl.236" = shl i64 %"zext.443", 32
  %"or.211" = or i64 %"shl.236", %"zext.442"
  %"ptr_plus_imm.135" = add i64 %"or.211", 4
  %"inttoptr_bytes.191" = inttoptr i64 %"ptr_plus_imm.135" to ptr addrspace(1)
  %"ptr_cast_for_access.191" = bitcast ptr addrspace(1) %"inttoptr_bytes.191" to ptr addrspace(1)
  %".4714" = load float, ptr addrspace(1) %"ptr_cast_for_access.191"
  %".4715" = bitcast ptr %"R52" to ptr
  store float %".4714", ptr %".4715"
  ; LDG.E.SYS R53, [R8+0x4]
  %".4718" = load i32, ptr %"R8"
  %"zext.444" = zext i32 %".4718" to i64
  %".4719" = load i32, ptr %"R9"
  %"zext.445" = zext i32 %".4719" to i64
  %"shl.237" = shl i64 %"zext.445", 32
  %"or.212" = or i64 %"shl.237", %"zext.444"
  %"ptr_plus_imm.136" = add i64 %"or.212", 4
  %"inttoptr_bytes.192" = inttoptr i64 %"ptr_plus_imm.136" to ptr addrspace(1)
  %"ptr_cast_for_access.192" = bitcast ptr addrspace(1) %"inttoptr_bytes.192" to ptr addrspace(1)
  %".4720" = load float, ptr addrspace(1) %"ptr_cast_for_access.192"
  %".4721" = bitcast ptr %"R53" to ptr
  store float %".4720", ptr %".4721"
  ; LDG.E.SYS R55, [R12+0x4]
  %".4724" = load i32, ptr %"R12"
  %"zext.446" = zext i32 %".4724" to i64
  %".4725" = load i32, ptr %"R13"
  %"zext.447" = zext i32 %".4725" to i64
  %"shl.238" = shl i64 %"zext.447", 32
  %"or.213" = or i64 %"shl.238", %"zext.446"
  %"ptr_plus_imm.137" = add i64 %"or.213", 4
  %"inttoptr_bytes.193" = inttoptr i64 %"ptr_plus_imm.137" to ptr addrspace(1)
  %"ptr_cast_for_access.193" = bitcast ptr addrspace(1) %"inttoptr_bytes.193" to ptr addrspace(1)
  %".4726" = load float, ptr addrspace(1) %"ptr_cast_for_access.193"
  %".4727" = bitcast ptr %"R55" to ptr
  store float %".4726", ptr %".4727"
  ; IADD3 R11, R23, 0x4, RZ
  %".4730" = load i32, ptr %"R23"
  %".4731" = add i32 %".4730", 4
  %".4732" = add i32 %".4731", 0
  store i32 %".4732", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".4735" = load i32, ptr %"R36"
  %"zext.448" = zext i32 %".4735" to i64
  %".4736" = load i32, ptr %"R37"
  %"zext.449" = zext i32 %".4736" to i64
  %"shl.239" = shl i64 %"zext.449", 32
  %"or.214" = or i64 %"shl.239", %"zext.448"
  %"ptr_plus_imm.138" = add i64 %"or.214", 8
  %"inttoptr_bytes.194" = inttoptr i64 %"ptr_plus_imm.138" to ptr addrspace(1)
  %"ptr_cast_for_access.194" = bitcast ptr addrspace(1) %"inttoptr_bytes.194" to ptr addrspace(1)
  %".4737" = load float, ptr addrspace(1) %"ptr_cast_for_access.194"
  %".4738" = bitcast ptr %"R50" to ptr
  store float %".4737", ptr %".4738"
  ; IADD3 R7, R35, 0x4, RZ
  %".4741" = load i32, ptr %"R35"
  %".4742" = add i32 %".4741", 4
  %".4743" = add i32 %".4742", 0
  store i32 %".4743", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4746" = load i32, ptr %"R8"
  %"zext.450" = zext i32 %".4746" to i64
  %".4747" = load i32, ptr %"R9"
  %"zext.451" = zext i32 %".4747" to i64
  %"shl.240" = shl i64 %"zext.451", 32
  %"or.215" = or i64 %"shl.240", %"zext.450"
  %"ptr_plus_imm.139" = add i64 %"or.215", 8
  %"inttoptr_bytes.195" = inttoptr i64 %"ptr_plus_imm.139" to ptr addrspace(1)
  %"ptr_cast_for_access.195" = bitcast ptr addrspace(1) %"inttoptr_bytes.195" to ptr addrspace(1)
  %".4748" = load float, ptr addrspace(1) %"ptr_cast_for_access.195"
  %".4749" = bitcast ptr %"R43" to ptr
  store float %".4748", ptr %".4749"
  ; IADD3 R5, R25, 0x4, RZ
  %".4752" = load i32, ptr %"R25"
  %".4753" = add i32 %".4752", 4
  %".4754" = add i32 %".4753", 0
  store i32 %".4754", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".4757" = load i32, ptr %"R12"
  %"zext.452" = zext i32 %".4757" to i64
  %".4758" = load i32, ptr %"R13"
  %"zext.453" = zext i32 %".4758" to i64
  %"shl.241" = shl i64 %"zext.453", 32
  %"or.216" = or i64 %"shl.241", %"zext.452"
  %"ptr_plus_imm.140" = add i64 %"or.216", 8
  %"inttoptr_bytes.196" = inttoptr i64 %"ptr_plus_imm.140" to ptr addrspace(1)
  %"ptr_cast_for_access.196" = bitcast ptr addrspace(1) %"inttoptr_bytes.196" to ptr addrspace(1)
  %".4759" = load float, ptr addrspace(1) %"ptr_cast_for_access.196"
  %".4760" = bitcast ptr %"R51" to ptr
  store float %".4759", ptr %".4760"
  ; LDG.E.SYS R47, [R36+0xc]
  %".4763" = load i32, ptr %"R36"
  %"zext.454" = zext i32 %".4763" to i64
  %".4764" = load i32, ptr %"R37"
  %"zext.455" = zext i32 %".4764" to i64
  %"shl.242" = shl i64 %"zext.455", 32
  %"or.217" = or i64 %"shl.242", %"zext.454"
  %"ptr_plus_imm.141" = add i64 %"or.217", 12
  %"inttoptr_bytes.197" = inttoptr i64 %"ptr_plus_imm.141" to ptr addrspace(1)
  %"ptr_cast_for_access.197" = bitcast ptr addrspace(1) %"inttoptr_bytes.197" to ptr addrspace(1)
  %".4765" = load float, ptr addrspace(1) %"ptr_cast_for_access.197"
  %".4766" = bitcast ptr %"R47" to ptr
  store float %".4765", ptr %".4766"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4769" = load i32, ptr %"R8"
  %"zext.456" = zext i32 %".4769" to i64
  %".4770" = load i32, ptr %"R9"
  %"zext.457" = zext i32 %".4770" to i64
  %"shl.243" = shl i64 %"zext.457", 32
  %"or.218" = or i64 %"shl.243", %"zext.456"
  %"ptr_plus_imm.142" = add i64 %"or.218", 12
  %"inttoptr_bytes.198" = inttoptr i64 %"ptr_plus_imm.142" to ptr addrspace(1)
  %"ptr_cast_for_access.198" = bitcast ptr addrspace(1) %"inttoptr_bytes.198" to ptr addrspace(1)
  %".4771" = load float, ptr addrspace(1) %"ptr_cast_for_access.198"
  %".4772" = bitcast ptr %"R54" to ptr
  store float %".4771", ptr %".4772"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4775" = load i32, ptr %"R12"
  %"zext.458" = zext i32 %".4775" to i64
  %".4776" = load i32, ptr %"R13"
  %"zext.459" = zext i32 %".4776" to i64
  %"shl.244" = shl i64 %"zext.459", 32
  %"or.219" = or i64 %"shl.244", %"zext.458"
  %"ptr_plus_imm.143" = add i64 %"or.219", 12
  %"inttoptr_bytes.199" = inttoptr i64 %"ptr_plus_imm.143" to ptr addrspace(1)
  %"ptr_cast_for_access.199" = bitcast ptr addrspace(1) %"inttoptr_bytes.199" to ptr addrspace(1)
  %".4777" = load float, ptr addrspace(1) %"ptr_cast_for_access.199"
  %".4778" = bitcast ptr %"R58" to ptr
  store float %".4777", ptr %".4778"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4781" = load i32, ptr %"R11"
  %".4782" = load i32, ptr %"R24"
  %"imad_ext1.53" = zext i32 %".4781" to i64
  %"imad_ext2.53" = zext i32 %".4782" to i64
  %"imad_mul.66" = mul i64 %"imad_ext1.53", %"imad_ext2.53"
  %".4783" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.66" = add i64 %"imad_mul.66", %".4783"
  %".4784" = and i64 %"imad_add.66", 18446744069414584320
  %".4785" = lshr i64 %".4784", 32
  %"trunc32.126" = trunc i64 %".4785" to i32
  %"trunc32.127" = trunc i64 %"imad_add.66" to i32
  store i32 %"trunc32.127", ptr %"R10"
  store i32 %"trunc32.126", ptr %"R11"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".4789" = load i32, ptr %"R7"
  %".4790" = load i32, ptr %"R24"
  %"imad_ext1.54" = zext i32 %".4789" to i64
  %"imad_ext2.54" = zext i32 %".4790" to i64
  %"imad_mul.67" = mul i64 %"imad_ext1.54", %"imad_ext2.54"
  %".4791" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.67" = add i64 %"imad_mul.67", %".4791"
  %".4792" = and i64 %"imad_add.67", 18446744069414584320
  %".4793" = lshr i64 %".4792", 32
  %"trunc32.128" = trunc i64 %".4793" to i32
  %"trunc32.129" = trunc i64 %"imad_add.67" to i32
  store i32 %"trunc32.129", ptr %"R6"
  store i32 %"trunc32.128", ptr %"R7"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".4797" = load i32, ptr %"R5"
  %".4798" = load i32, ptr %"R24"
  %"imad_ext1.55" = zext i32 %".4797" to i64
  %"imad_ext2.55" = zext i32 %".4798" to i64
  %"imad_mul.68" = mul i64 %"imad_ext1.55", %"imad_ext2.55"
  %".4799" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.68" = add i64 %"imad_mul.68", %".4799"
  %".4800" = and i64 %"imad_add.68", 18446744069414584320
  %".4801" = lshr i64 %".4800", 32
  %"trunc32.130" = trunc i64 %".4801" to i32
  %"trunc32.131" = trunc i64 %"imad_add.68" to i32
  store i32 %"trunc32.131", ptr %"R4"
  store i32 %"trunc32.130", ptr %"R5"
  ; LDG.E.SYS R46, [R10]
  %".4805" = load i32, ptr %"R10"
  %"zext.460" = zext i32 %".4805" to i64
  %".4806" = load i32, ptr %"R11"
  %"zext.461" = zext i32 %".4806" to i64
  %"shl.245" = shl i64 %"zext.461", 32
  %"or.220" = or i64 %"shl.245", %"zext.460"
  %"inttoptr_bytes.200" = inttoptr i64 %"or.220" to ptr addrspace(1)
  %"ptr_cast_for_access.200" = bitcast ptr addrspace(1) %"inttoptr_bytes.200" to ptr addrspace(1)
  %".4807" = load float, ptr addrspace(1) %"ptr_cast_for_access.200"
  %".4808" = bitcast ptr %"R46" to ptr
  store float %".4807", ptr %".4808"
  ; LDG.E.SYS R42, [R6]
  %".4811" = load i32, ptr %"R6"
  %"zext.462" = zext i32 %".4811" to i64
  %".4812" = load i32, ptr %"R7"
  %"zext.463" = zext i32 %".4812" to i64
  %"shl.246" = shl i64 %"zext.463", 32
  %"or.221" = or i64 %"shl.246", %"zext.462"
  %"inttoptr_bytes.201" = inttoptr i64 %"or.221" to ptr addrspace(1)
  %"ptr_cast_for_access.201" = bitcast ptr addrspace(1) %"inttoptr_bytes.201" to ptr addrspace(1)
  %".4813" = load float, ptr addrspace(1) %"ptr_cast_for_access.201"
  %".4814" = bitcast ptr %"R42" to ptr
  store float %".4813", ptr %".4814"
  ; LDG.E.SYS R45, [R4]
  %".4817" = load i32, ptr %"R4"
  %"zext.464" = zext i32 %".4817" to i64
  %".4818" = load i32, ptr %"R5"
  %"zext.465" = zext i32 %".4818" to i64
  %"shl.247" = shl i64 %"zext.465", 32
  %"or.222" = or i64 %"shl.247", %"zext.464"
  %"inttoptr_bytes.202" = inttoptr i64 %"or.222" to ptr addrspace(1)
  %"ptr_cast_for_access.202" = bitcast ptr addrspace(1) %"inttoptr_bytes.202" to ptr addrspace(1)
  %".4819" = load float, ptr addrspace(1) %"ptr_cast_for_access.202"
  %".4820" = bitcast ptr %"R45" to ptr
  store float %".4819", ptr %".4820"
  ; LDG.E.SYS R34, [R10+0x4]
  %".4823" = load i32, ptr %"R10"
  %"zext.466" = zext i32 %".4823" to i64
  %".4824" = load i32, ptr %"R11"
  %"zext.467" = zext i32 %".4824" to i64
  %"shl.248" = shl i64 %"zext.467", 32
  %"or.223" = or i64 %"shl.248", %"zext.466"
  %"ptr_plus_imm.144" = add i64 %"or.223", 4
  %"inttoptr_bytes.203" = inttoptr i64 %"ptr_plus_imm.144" to ptr addrspace(1)
  %"ptr_cast_for_access.203" = bitcast ptr addrspace(1) %"inttoptr_bytes.203" to ptr addrspace(1)
  %".4825" = load float, ptr addrspace(1) %"ptr_cast_for_access.203"
  %".4826" = bitcast ptr %"R34" to ptr
  store float %".4825", ptr %".4826"
  ; LDG.E.SYS R37, [R6+0x4]
  %".4829" = load i32, ptr %"R6"
  %"zext.468" = zext i32 %".4829" to i64
  %".4830" = load i32, ptr %"R7"
  %"zext.469" = zext i32 %".4830" to i64
  %"shl.249" = shl i64 %"zext.469", 32
  %"or.224" = or i64 %"shl.249", %"zext.468"
  %"ptr_plus_imm.145" = add i64 %"or.224", 4
  %"inttoptr_bytes.204" = inttoptr i64 %"ptr_plus_imm.145" to ptr addrspace(1)
  %"ptr_cast_for_access.204" = bitcast ptr addrspace(1) %"inttoptr_bytes.204" to ptr addrspace(1)
  %".4831" = load float, ptr addrspace(1) %"ptr_cast_for_access.204"
  %".4832" = bitcast ptr %"R37" to ptr
  store float %".4831", ptr %".4832"
  ; IADD3 R9, R23, 0x8, RZ
  %".4835" = load i32, ptr %"R23"
  %".4836" = add i32 %".4835", 8
  %".4837" = add i32 %".4836", 0
  store i32 %".4837", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".4840" = load i32, ptr %"R10"
  %"zext.470" = zext i32 %".4840" to i64
  %".4841" = load i32, ptr %"R11"
  %"zext.471" = zext i32 %".4841" to i64
  %"shl.250" = shl i64 %"zext.471", 32
  %"or.225" = or i64 %"shl.250", %"zext.470"
  %"ptr_plus_imm.146" = add i64 %"or.225", 8
  %"inttoptr_bytes.205" = inttoptr i64 %"ptr_plus_imm.146" to ptr addrspace(1)
  %"ptr_cast_for_access.205" = bitcast ptr addrspace(1) %"inttoptr_bytes.205" to ptr addrspace(1)
  %".4842" = load float, ptr addrspace(1) %"ptr_cast_for_access.205"
  %".4843" = bitcast ptr %"R36" to ptr
  store float %".4842", ptr %".4843"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".4846" = load i32, ptr %"R9"
  %".4847" = load i32, ptr %"R24"
  %"imad_ext1.56" = zext i32 %".4846" to i64
  %"imad_ext2.56" = zext i32 %".4847" to i64
  %"imad_mul.69" = mul i64 %"imad_ext1.56", %"imad_ext2.56"
  %".4848" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.69" = add i64 %"imad_mul.69", %".4848"
  %".4849" = and i64 %"imad_add.69", 18446744069414584320
  %".4850" = lshr i64 %".4849", 32
  %"trunc32.132" = trunc i64 %".4850" to i32
  %"trunc32.133" = trunc i64 %"imad_add.69" to i32
  store i32 %"trunc32.133", ptr %"R8"
  store i32 %"trunc32.132", ptr %"R9"
  ; LDG.E.SYS R38, [R10+0xc]
  %".4854" = load i32, ptr %"R10"
  %"zext.472" = zext i32 %".4854" to i64
  %".4855" = load i32, ptr %"R11"
  %"zext.473" = zext i32 %".4855" to i64
  %"shl.251" = shl i64 %"zext.473", 32
  %"or.226" = or i64 %"shl.251", %"zext.472"
  %"ptr_plus_imm.147" = add i64 %"or.226", 12
  %"inttoptr_bytes.206" = inttoptr i64 %"ptr_plus_imm.147" to ptr addrspace(1)
  %"ptr_cast_for_access.206" = bitcast ptr addrspace(1) %"inttoptr_bytes.206" to ptr addrspace(1)
  %".4856" = load float, ptr addrspace(1) %"ptr_cast_for_access.206"
  %".4857" = bitcast ptr %"R38" to ptr
  store float %".4856", ptr %".4857"
  ; IADD3 R13, R23, 0xc, RZ
  %".4860" = load i32, ptr %"R23"
  %".4861" = add i32 %".4860", 12
  %".4862" = add i32 %".4861", 0
  store i32 %".4862", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".4865" = load i32, ptr %"R35"
  %".4866" = add i32 %".4865", 8
  %".4867" = add i32 %".4866", 0
  store i32 %".4867", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".4870" = load i32, ptr %"R13"
  %".4871" = load i32, ptr %"R24"
  %"imad_ext1.57" = zext i32 %".4870" to i64
  %"imad_ext2.57" = zext i32 %".4871" to i64
  %"imad_mul.70" = mul i64 %"imad_ext1.57", %"imad_ext2.57"
  %".4872" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.70" = add i64 %"imad_mul.70", %".4872"
  %".4873" = and i64 %"imad_add.70", 18446744069414584320
  %".4874" = lshr i64 %".4873", 32
  %"trunc32.134" = trunc i64 %".4874" to i32
  %"trunc32.135" = trunc i64 %"imad_add.70" to i32
  store i32 %"trunc32.135", ptr %"R12"
  store i32 %"trunc32.134", ptr %"R13"
  ; FFMA R57, R41, R39, R44
  %"cast_ptr.543" = bitcast ptr %"R41" to ptr
  %".4878" = load float, ptr %"cast_ptr.543"
  %"cast_ptr.544" = bitcast ptr %"R39" to ptr
  %".4879" = load float, ptr %"cast_ptr.544"
  %"cast_ptr.545" = bitcast ptr %"R44" to ptr
  %".4880" = load float, ptr %"cast_ptr.545"
  %"fmul.191" = fmul float %".4878", %".4879"
  %"fadd.172" = fadd float %"fmul.191", %".4880"
  %".4881" = bitcast ptr %"R57" to ptr
  store float %"fadd.172", ptr %".4881"
  ; LDG.E.SYS R41, [R8]
  %".4884" = load i32, ptr %"R8"
  %"zext.474" = zext i32 %".4884" to i64
  %".4885" = load i32, ptr %"R9"
  %"zext.475" = zext i32 %".4885" to i64
  %"shl.252" = shl i64 %"zext.475", 32
  %"or.227" = or i64 %"shl.252", %"zext.474"
  %"inttoptr_bytes.207" = inttoptr i64 %"or.227" to ptr addrspace(1)
  %"ptr_cast_for_access.207" = bitcast ptr addrspace(1) %"inttoptr_bytes.207" to ptr addrspace(1)
  %".4886" = load float, ptr addrspace(1) %"ptr_cast_for_access.207"
  %".4887" = bitcast ptr %"R41" to ptr
  store float %".4886", ptr %".4887"
  ; FFMA R56, R39, R40, R56
  %"cast_ptr.546" = bitcast ptr %"R39" to ptr
  %".4890" = load float, ptr %"cast_ptr.546"
  %"cast_ptr.547" = bitcast ptr %"R40" to ptr
  %".4891" = load float, ptr %"cast_ptr.547"
  %"cast_ptr.548" = bitcast ptr %"R56" to ptr
  %".4892" = load float, ptr %"cast_ptr.548"
  %"fmul.192" = fmul float %".4890", %".4891"
  %"fadd.173" = fadd float %"fmul.192", %".4892"
  %".4893" = bitcast ptr %"R56" to ptr
  store float %"fadd.173", ptr %".4893"
  ; LDG.E.SYS R40, [R8+0x4]
  %".4896" = load i32, ptr %"R8"
  %"zext.476" = zext i32 %".4896" to i64
  %".4897" = load i32, ptr %"R9"
  %"zext.477" = zext i32 %".4897" to i64
  %"shl.253" = shl i64 %"zext.477", 32
  %"or.228" = or i64 %"shl.253", %"zext.476"
  %"ptr_plus_imm.148" = add i64 %"or.228", 4
  %"inttoptr_bytes.208" = inttoptr i64 %"ptr_plus_imm.148" to ptr addrspace(1)
  %"ptr_cast_for_access.208" = bitcast ptr addrspace(1) %"inttoptr_bytes.208" to ptr addrspace(1)
  %".4898" = load float, ptr addrspace(1) %"ptr_cast_for_access.208"
  %".4899" = bitcast ptr %"R40" to ptr
  store float %".4898", ptr %".4899"
  ; LDG.E.SYS R39, [R8+0x8]
  %".4902" = load i32, ptr %"R8"
  %"zext.478" = zext i32 %".4902" to i64
  %".4903" = load i32, ptr %"R9"
  %"zext.479" = zext i32 %".4903" to i64
  %"shl.254" = shl i64 %"zext.479", 32
  %"or.229" = or i64 %"shl.254", %"zext.478"
  %"ptr_plus_imm.149" = add i64 %"or.229", 8
  %"inttoptr_bytes.209" = inttoptr i64 %"ptr_plus_imm.149" to ptr addrspace(1)
  %"ptr_cast_for_access.209" = bitcast ptr addrspace(1) %"inttoptr_bytes.209" to ptr addrspace(1)
  %".4904" = load float, ptr addrspace(1) %"ptr_cast_for_access.209"
  %".4905" = bitcast ptr %"R39" to ptr
  store float %".4904", ptr %".4905"
  ; FFMA R57, R53, R52, R57
  %"cast_ptr.549" = bitcast ptr %"R53" to ptr
  %".4908" = load float, ptr %"cast_ptr.549"
  %"cast_ptr.550" = bitcast ptr %"R52" to ptr
  %".4909" = load float, ptr %"cast_ptr.550"
  %"cast_ptr.551" = bitcast ptr %"R57" to ptr
  %".4910" = load float, ptr %"cast_ptr.551"
  %"fmul.193" = fmul float %".4908", %".4909"
  %"fadd.174" = fadd float %"fmul.193", %".4910"
  %".4911" = bitcast ptr %"R57" to ptr
  store float %"fadd.174", ptr %".4911"
  ; LDG.E.SYS R44, [R8+0xc]
  %".4914" = load i32, ptr %"R8"
  %"zext.480" = zext i32 %".4914" to i64
  %".4915" = load i32, ptr %"R9"
  %"zext.481" = zext i32 %".4915" to i64
  %"shl.255" = shl i64 %"zext.481", 32
  %"or.230" = or i64 %"shl.255", %"zext.480"
  %"ptr_plus_imm.150" = add i64 %"or.230", 12
  %"inttoptr_bytes.210" = inttoptr i64 %"ptr_plus_imm.150" to ptr addrspace(1)
  %"ptr_cast_for_access.210" = bitcast ptr addrspace(1) %"inttoptr_bytes.210" to ptr addrspace(1)
  %".4916" = load float, ptr addrspace(1) %"ptr_cast_for_access.210"
  %".4917" = bitcast ptr %"R44" to ptr
  store float %".4916", ptr %".4917"
  ; FFMA R59, R52, R55, R56
  %"cast_ptr.552" = bitcast ptr %"R52" to ptr
  %".4920" = load float, ptr %"cast_ptr.552"
  %"cast_ptr.553" = bitcast ptr %"R55" to ptr
  %".4921" = load float, ptr %"cast_ptr.553"
  %"cast_ptr.554" = bitcast ptr %"R56" to ptr
  %".4922" = load float, ptr %"cast_ptr.554"
  %"fmul.194" = fmul float %".4920", %".4921"
  %"fadd.175" = fadd float %"fmul.194", %".4922"
  %".4923" = bitcast ptr %"R59" to ptr
  store float %"fadd.175", ptr %".4923"
  ; LDG.E.SYS R55, [R12]
  %".4926" = load i32, ptr %"R12"
  %"zext.482" = zext i32 %".4926" to i64
  %".4927" = load i32, ptr %"R13"
  %"zext.483" = zext i32 %".4927" to i64
  %"shl.256" = shl i64 %"zext.483", 32
  %"or.231" = or i64 %"shl.256", %"zext.482"
  %"inttoptr_bytes.211" = inttoptr i64 %"or.231" to ptr addrspace(1)
  %"ptr_cast_for_access.211" = bitcast ptr addrspace(1) %"inttoptr_bytes.211" to ptr addrspace(1)
  %".4928" = load float, ptr addrspace(1) %"ptr_cast_for_access.211"
  %".4929" = bitcast ptr %"R55" to ptr
  store float %".4928", ptr %".4929"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4932" = load i32, ptr %"R12"
  %"zext.484" = zext i32 %".4932" to i64
  %".4933" = load i32, ptr %"R13"
  %"zext.485" = zext i32 %".4933" to i64
  %"shl.257" = shl i64 %"zext.485", 32
  %"or.232" = or i64 %"shl.257", %"zext.484"
  %"ptr_plus_imm.151" = add i64 %"or.232", 4
  %"inttoptr_bytes.212" = inttoptr i64 %"ptr_plus_imm.151" to ptr addrspace(1)
  %"ptr_cast_for_access.212" = bitcast ptr addrspace(1) %"inttoptr_bytes.212" to ptr addrspace(1)
  %".4934" = load float, ptr addrspace(1) %"ptr_cast_for_access.212"
  %".4935" = bitcast ptr %"R53" to ptr
  store float %".4934", ptr %".4935"
  ; FFMA R43, R43, R50, R57
  %"cast_ptr.555" = bitcast ptr %"R43" to ptr
  %".4938" = load float, ptr %"cast_ptr.555"
  %"cast_ptr.556" = bitcast ptr %"R50" to ptr
  %".4939" = load float, ptr %"cast_ptr.556"
  %"cast_ptr.557" = bitcast ptr %"R57" to ptr
  %".4940" = load float, ptr %"cast_ptr.557"
  %"fmul.195" = fmul float %".4938", %".4939"
  %"fadd.176" = fadd float %"fmul.195", %".4940"
  %".4941" = bitcast ptr %"R43" to ptr
  store float %"fadd.176", ptr %".4941"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".4944" = load i32, ptr %"R11"
  %".4945" = load i32, ptr %"R24"
  %"imad_ext1.58" = zext i32 %".4944" to i64
  %"imad_ext2.58" = zext i32 %".4945" to i64
  %"imad_mul.71" = mul i64 %"imad_ext1.58", %"imad_ext2.58"
  %".4946" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.71" = add i64 %"imad_mul.71", %".4946"
  %".4947" = and i64 %"imad_add.71", 18446744069414584320
  %".4948" = lshr i64 %".4947", 32
  %"trunc32.136" = trunc i64 %".4948" to i32
  %"trunc32.137" = trunc i64 %"imad_add.71" to i32
  store i32 %"trunc32.137", ptr %"R8"
  store i32 %"trunc32.136", ptr %"R9"
  ; LDG.E.SYS R52, [R12+0x8]
  %".4952" = load i32, ptr %"R12"
  %"zext.486" = zext i32 %".4952" to i64
  %".4953" = load i32, ptr %"R13"
  %"zext.487" = zext i32 %".4953" to i64
  %"shl.258" = shl i64 %"zext.487", 32
  %"or.233" = or i64 %"shl.258", %"zext.486"
  %"ptr_plus_imm.152" = add i64 %"or.233", 8
  %"inttoptr_bytes.213" = inttoptr i64 %"ptr_plus_imm.152" to ptr addrspace(1)
  %"ptr_cast_for_access.213" = bitcast ptr addrspace(1) %"inttoptr_bytes.213" to ptr addrspace(1)
  %".4954" = load float, ptr addrspace(1) %"ptr_cast_for_access.213"
  %".4955" = bitcast ptr %"R52" to ptr
  store float %".4954", ptr %".4955"
  ; FFMA R51, R50, R51, R59
  %"cast_ptr.558" = bitcast ptr %"R50" to ptr
  %".4958" = load float, ptr %"cast_ptr.558"
  %"cast_ptr.559" = bitcast ptr %"R51" to ptr
  %".4959" = load float, ptr %"cast_ptr.559"
  %"cast_ptr.560" = bitcast ptr %"R59" to ptr
  %".4960" = load float, ptr %"cast_ptr.560"
  %"fmul.196" = fmul float %".4958", %".4959"
  %"fadd.177" = fadd float %"fmul.196", %".4960"
  %".4961" = bitcast ptr %"R51" to ptr
  store float %"fadd.177", ptr %".4961"
  ; IADD3 R57, R25, 0x8, RZ
  %".4964" = load i32, ptr %"R25"
  %".4965" = add i32 %".4964", 8
  %".4966" = add i32 %".4965", 0
  store i32 %".4966", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".4969" = load i32, ptr %"R4"
  %"zext.488" = zext i32 %".4969" to i64
  %".4970" = load i32, ptr %"R5"
  %"zext.489" = zext i32 %".4970" to i64
  %"shl.259" = shl i64 %"zext.489", 32
  %"or.234" = or i64 %"shl.259", %"zext.488"
  %"ptr_plus_imm.153" = add i64 %"or.234", 12
  %"inttoptr_bytes.214" = inttoptr i64 %"ptr_plus_imm.153" to ptr addrspace(1)
  %"ptr_cast_for_access.214" = bitcast ptr addrspace(1) %"inttoptr_bytes.214" to ptr addrspace(1)
  %".4971" = load float, ptr addrspace(1) %"ptr_cast_for_access.214"
  %".4972" = bitcast ptr %"R59" to ptr
  store float %".4971", ptr %".4972"
  ; FFMA R61, R54, R47, R43
  %"cast_ptr.561" = bitcast ptr %"R54" to ptr
  %".4975" = load float, ptr %"cast_ptr.561"
  %"cast_ptr.562" = bitcast ptr %"R47" to ptr
  %".4976" = load float, ptr %"cast_ptr.562"
  %"cast_ptr.563" = bitcast ptr %"R43" to ptr
  %".4977" = load float, ptr %"cast_ptr.563"
  %"fmul.197" = fmul float %".4975", %".4976"
  %"fadd.178" = fadd float %"fmul.197", %".4977"
  %".4978" = bitcast ptr %"R61" to ptr
  store float %"fadd.178", ptr %".4978"
  ; LDG.E.SYS R50, [R8]
  %".4981" = load i32, ptr %"R8"
  %"zext.490" = zext i32 %".4981" to i64
  %".4982" = load i32, ptr %"R9"
  %"zext.491" = zext i32 %".4982" to i64
  %"shl.260" = shl i64 %"zext.491", 32
  %"or.235" = or i64 %"shl.260", %"zext.490"
  %"inttoptr_bytes.215" = inttoptr i64 %"or.235" to ptr addrspace(1)
  %"ptr_cast_for_access.215" = bitcast ptr addrspace(1) %"inttoptr_bytes.215" to ptr addrspace(1)
  %".4983" = load float, ptr addrspace(1) %"ptr_cast_for_access.215"
  %".4984" = bitcast ptr %"R50" to ptr
  store float %".4983", ptr %".4984"
  ; FFMA R58, R47, R58, R51
  %"cast_ptr.564" = bitcast ptr %"R47" to ptr
  %".4987" = load float, ptr %"cast_ptr.564"
  %"cast_ptr.565" = bitcast ptr %"R58" to ptr
  %".4988" = load float, ptr %"cast_ptr.565"
  %"cast_ptr.566" = bitcast ptr %"R51" to ptr
  %".4989" = load float, ptr %"cast_ptr.566"
  %"fmul.198" = fmul float %".4987", %".4988"
  %"fadd.179" = fadd float %"fmul.198", %".4989"
  %".4990" = bitcast ptr %"R58" to ptr
  store float %"fadd.179", ptr %".4990"
  ; LDG.E.SYS R43, [R6+0x8]
  %".4993" = load i32, ptr %"R6"
  %"zext.492" = zext i32 %".4993" to i64
  %".4994" = load i32, ptr %"R7"
  %"zext.493" = zext i32 %".4994" to i64
  %"shl.261" = shl i64 %"zext.493", 32
  %"or.236" = or i64 %"shl.261", %"zext.492"
  %"ptr_plus_imm.154" = add i64 %"or.236", 8
  %"inttoptr_bytes.216" = inttoptr i64 %"ptr_plus_imm.154" to ptr addrspace(1)
  %"ptr_cast_for_access.216" = bitcast ptr addrspace(1) %"inttoptr_bytes.216" to ptr addrspace(1)
  %".4995" = load float, ptr addrspace(1) %"ptr_cast_for_access.216"
  %".4996" = bitcast ptr %"R43" to ptr
  store float %".4995", ptr %".4996"
  ; LDG.E.SYS R47, [R4+0x4]
  %".4999" = load i32, ptr %"R4"
  %"zext.494" = zext i32 %".4999" to i64
  %".5000" = load i32, ptr %"R5"
  %"zext.495" = zext i32 %".5000" to i64
  %"shl.262" = shl i64 %"zext.495", 32
  %"or.237" = or i64 %"shl.262", %"zext.494"
  %"ptr_plus_imm.155" = add i64 %"or.237", 4
  %"inttoptr_bytes.217" = inttoptr i64 %"ptr_plus_imm.155" to ptr addrspace(1)
  %"ptr_cast_for_access.217" = bitcast ptr addrspace(1) %"inttoptr_bytes.217" to ptr addrspace(1)
  %".5001" = load float, ptr addrspace(1) %"ptr_cast_for_access.217"
  %".5002" = bitcast ptr %"R47" to ptr
  store float %".5001", ptr %".5002"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".5005" = load i32, ptr %"R57"
  %".5006" = load i32, ptr %"R24"
  %"imad_ext1.59" = zext i32 %".5005" to i64
  %"imad_ext2.59" = zext i32 %".5006" to i64
  %"imad_mul.72" = mul i64 %"imad_ext1.59", %"imad_ext2.59"
  %".5007" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.72" = add i64 %"imad_mul.72", %".5007"
  %".5008" = and i64 %"imad_add.72", 18446744069414584320
  %".5009" = lshr i64 %".5008", 32
  %"trunc32.138" = trunc i64 %".5009" to i32
  %"trunc32.139" = trunc i64 %"imad_add.72" to i32
  store i32 %"trunc32.139", ptr %"R10"
  store i32 %"trunc32.138", ptr %"R11"
  ; LDG.E.SYS R51, [R4+0x8]
  %".5013" = load i32, ptr %"R4"
  %"zext.496" = zext i32 %".5013" to i64
  %".5014" = load i32, ptr %"R5"
  %"zext.497" = zext i32 %".5014" to i64
  %"shl.263" = shl i64 %"zext.497", 32
  %"or.238" = or i64 %"shl.263", %"zext.496"
  %"ptr_plus_imm.156" = add i64 %"or.238", 8
  %"inttoptr_bytes.218" = inttoptr i64 %"ptr_plus_imm.156" to ptr addrspace(1)
  %"ptr_cast_for_access.218" = bitcast ptr addrspace(1) %"inttoptr_bytes.218" to ptr addrspace(1)
  %".5015" = load float, ptr addrspace(1) %"ptr_cast_for_access.218"
  %".5016" = bitcast ptr %"R51" to ptr
  store float %".5015", ptr %".5016"
  ; LDG.E.SYS R57, [R6+0xc]
  %".5019" = load i32, ptr %"R6"
  %"zext.498" = zext i32 %".5019" to i64
  %".5020" = load i32, ptr %"R7"
  %"zext.499" = zext i32 %".5020" to i64
  %"shl.264" = shl i64 %"zext.499", 32
  %"or.239" = or i64 %"shl.264", %"zext.498"
  %"ptr_plus_imm.157" = add i64 %"or.239", 12
  %"inttoptr_bytes.219" = inttoptr i64 %"ptr_plus_imm.157" to ptr addrspace(1)
  %"ptr_cast_for_access.219" = bitcast ptr addrspace(1) %"inttoptr_bytes.219" to ptr addrspace(1)
  %".5021" = load float, ptr addrspace(1) %"ptr_cast_for_access.219"
  %".5022" = bitcast ptr %"R57" to ptr
  store float %".5021", ptr %".5022"
  ; FFMA R42, R42, R46, R61
  %"cast_ptr.567" = bitcast ptr %"R42" to ptr
  %".5025" = load float, ptr %"cast_ptr.567"
  %"cast_ptr.568" = bitcast ptr %"R46" to ptr
  %".5026" = load float, ptr %"cast_ptr.568"
  %"cast_ptr.569" = bitcast ptr %"R61" to ptr
  %".5027" = load float, ptr %"cast_ptr.569"
  %"fmul.199" = fmul float %".5025", %".5026"
  %"fadd.180" = fadd float %"fmul.199", %".5027"
  %".5028" = bitcast ptr %"R42" to ptr
  store float %"fadd.180", ptr %".5028"
  ; IADD3 R25, R25, 0xc, RZ
  %".5031" = load i32, ptr %"R25"
  %".5032" = add i32 %".5031", 12
  %".5033" = add i32 %".5032", 0
  store i32 %".5033", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".5036" = load i32, ptr %"R12"
  %"zext.500" = zext i32 %".5036" to i64
  %".5037" = load i32, ptr %"R13"
  %"zext.501" = zext i32 %".5037" to i64
  %"shl.265" = shl i64 %"zext.501", 32
  %"or.240" = or i64 %"shl.265", %"zext.500"
  %"ptr_plus_imm.158" = add i64 %"or.240", 12
  %"inttoptr_bytes.220" = inttoptr i64 %"ptr_plus_imm.158" to ptr addrspace(1)
  %"ptr_cast_for_access.220" = bitcast ptr addrspace(1) %"inttoptr_bytes.220" to ptr addrspace(1)
  %".5038" = load float, ptr addrspace(1) %"ptr_cast_for_access.220"
  %".5039" = bitcast ptr %"R56" to ptr
  store float %".5038", ptr %".5039"
  ; FFMA R45, R46, R45, R58
  %"cast_ptr.570" = bitcast ptr %"R46" to ptr
  %".5042" = load float, ptr %"cast_ptr.570"
  %"cast_ptr.571" = bitcast ptr %"R45" to ptr
  %".5043" = load float, ptr %"cast_ptr.571"
  %"cast_ptr.572" = bitcast ptr %"R58" to ptr
  %".5044" = load float, ptr %"cast_ptr.572"
  %"fmul.200" = fmul float %".5042", %".5043"
  %"fadd.181" = fadd float %"fmul.200", %".5044"
  %".5045" = bitcast ptr %"R45" to ptr
  store float %"fadd.181", ptr %".5045"
  ; LDG.E.SYS R46, [R10]
  %".5048" = load i32, ptr %"R10"
  %"zext.502" = zext i32 %".5048" to i64
  %".5049" = load i32, ptr %"R11"
  %"zext.503" = zext i32 %".5049" to i64
  %"shl.266" = shl i64 %"zext.503", 32
  %"or.241" = or i64 %"shl.266", %"zext.502"
  %"inttoptr_bytes.221" = inttoptr i64 %"or.241" to ptr addrspace(1)
  %"ptr_cast_for_access.221" = bitcast ptr addrspace(1) %"inttoptr_bytes.221" to ptr addrspace(1)
  %".5050" = load float, ptr addrspace(1) %"ptr_cast_for_access.221"
  %".5051" = bitcast ptr %"R46" to ptr
  store float %".5050", ptr %".5051"
  ; LDG.E.SYS R61, [R8+0x4]
  %".5054" = load i32, ptr %"R8"
  %"zext.504" = zext i32 %".5054" to i64
  %".5055" = load i32, ptr %"R9"
  %"zext.505" = zext i32 %".5055" to i64
  %"shl.267" = shl i64 %"zext.505", 32
  %"or.242" = or i64 %"shl.267", %"zext.504"
  %"ptr_plus_imm.159" = add i64 %"or.242", 4
  %"inttoptr_bytes.222" = inttoptr i64 %"ptr_plus_imm.159" to ptr addrspace(1)
  %"ptr_cast_for_access.222" = bitcast ptr addrspace(1) %"inttoptr_bytes.222" to ptr addrspace(1)
  %".5056" = load float, ptr addrspace(1) %"ptr_cast_for_access.222"
  %".5057" = bitcast ptr %"R61" to ptr
  store float %".5056", ptr %".5057"
  ; IADD3 R13, R35, 0xc, RZ
  %".5060" = load i32, ptr %"R35"
  %".5061" = add i32 %".5060", 12
  %".5062" = add i32 %".5061", 0
  store i32 %".5062", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".5065" = load i32, ptr %"R10"
  %"zext.506" = zext i32 %".5065" to i64
  %".5066" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".5066" to i64
  %"shl.268" = shl i64 %"zext.507", 32
  %"or.243" = or i64 %"shl.268", %"zext.506"
  %"ptr_plus_imm.160" = add i64 %"or.243", 4
  %"inttoptr_bytes.223" = inttoptr i64 %"ptr_plus_imm.160" to ptr addrspace(1)
  %"ptr_cast_for_access.223" = bitcast ptr addrspace(1) %"inttoptr_bytes.223" to ptr addrspace(1)
  %".5067" = load float, ptr addrspace(1) %"ptr_cast_for_access.223"
  %".5068" = bitcast ptr %"R35" to ptr
  store float %".5067", ptr %".5068"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".5071" = load i32, ptr %"R13"
  %".5072" = load i32, ptr %"R24"
  %"imad_ext1.60" = zext i32 %".5071" to i64
  %"imad_ext2.60" = zext i32 %".5072" to i64
  %"imad_mul.73" = mul i64 %"imad_ext1.60", %"imad_ext2.60"
  %".5073" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.73" = add i64 %"imad_mul.73", %".5073"
  %".5074" = and i64 %"imad_add.73", 18446744069414584320
  %".5075" = lshr i64 %".5074", 32
  %"trunc32.140" = trunc i64 %".5075" to i32
  %"trunc32.141" = trunc i64 %"imad_add.73" to i32
  store i32 %"trunc32.141", ptr %"R12"
  store i32 %"trunc32.140", ptr %"R13"
  ; LDG.E.SYS R6, [R8+0x8]
  %".5079" = load i32, ptr %"R8"
  %"zext.508" = zext i32 %".5079" to i64
  %".5080" = load i32, ptr %"R9"
  %"zext.509" = zext i32 %".5080" to i64
  %"shl.269" = shl i64 %"zext.509", 32
  %"or.244" = or i64 %"shl.269", %"zext.508"
  %"ptr_plus_imm.161" = add i64 %"or.244", 8
  %"inttoptr_bytes.224" = inttoptr i64 %"ptr_plus_imm.161" to ptr addrspace(1)
  %"ptr_cast_for_access.224" = bitcast ptr addrspace(1) %"inttoptr_bytes.224" to ptr addrspace(1)
  %".5081" = load float, ptr addrspace(1) %"ptr_cast_for_access.224"
  %".5082" = bitcast ptr %"R6" to ptr
  store float %".5081", ptr %".5082"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".5085" = load i32, ptr %"R25"
  %".5086" = load i32, ptr %"R24"
  %"imad_ext1.61" = zext i32 %".5085" to i64
  %"imad_ext2.61" = zext i32 %".5086" to i64
  %"imad_mul.74" = mul i64 %"imad_ext1.61", %"imad_ext2.61"
  %".5087" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.74" = add i64 %"imad_mul.74", %".5087"
  %".5088" = and i64 %"imad_add.74", 18446744069414584320
  %".5089" = lshr i64 %".5088", 32
  %"trunc32.142" = trunc i64 %".5089" to i32
  %"trunc32.143" = trunc i64 %"imad_add.74" to i32
  store i32 %"trunc32.143", ptr %"R24"
  store i32 %"trunc32.142", ptr %"R25"
  ; LDG.E.SYS R4, [R10+0x8]
  %".5093" = load i32, ptr %"R10"
  %"zext.510" = zext i32 %".5093" to i64
  %".5094" = load i32, ptr %"R11"
  %"zext.511" = zext i32 %".5094" to i64
  %"shl.270" = shl i64 %"zext.511", 32
  %"or.245" = or i64 %"shl.270", %"zext.510"
  %"ptr_plus_imm.162" = add i64 %"or.245", 8
  %"inttoptr_bytes.225" = inttoptr i64 %"ptr_plus_imm.162" to ptr addrspace(1)
  %"ptr_cast_for_access.225" = bitcast ptr addrspace(1) %"inttoptr_bytes.225" to ptr addrspace(1)
  %".5095" = load float, ptr addrspace(1) %"ptr_cast_for_access.225"
  %".5096" = bitcast ptr %"R4" to ptr
  store float %".5095", ptr %".5096"
  ; LDG.E.SYS R5, [R8+0xc]
  %".5099" = load i32, ptr %"R8"
  %"zext.512" = zext i32 %".5099" to i64
  %".5100" = load i32, ptr %"R9"
  %"zext.513" = zext i32 %".5100" to i64
  %"shl.271" = shl i64 %"zext.513", 32
  %"or.246" = or i64 %"shl.271", %"zext.512"
  %"ptr_plus_imm.163" = add i64 %"or.246", 12
  %"inttoptr_bytes.226" = inttoptr i64 %"ptr_plus_imm.163" to ptr addrspace(1)
  %"ptr_cast_for_access.226" = bitcast ptr addrspace(1) %"inttoptr_bytes.226" to ptr addrspace(1)
  %".5101" = load float, ptr addrspace(1) %"ptr_cast_for_access.226"
  %".5102" = bitcast ptr %"R5" to ptr
  store float %".5101", ptr %".5102"
  ; LDG.E.SYS R60, [R10+0xc]
  %".5105" = load i32, ptr %"R10"
  %"zext.514" = zext i32 %".5105" to i64
  %".5106" = load i32, ptr %"R11"
  %"zext.515" = zext i32 %".5106" to i64
  %"shl.272" = shl i64 %"zext.515", 32
  %"or.247" = or i64 %"shl.272", %"zext.514"
  %"ptr_plus_imm.164" = add i64 %"or.247", 12
  %"inttoptr_bytes.227" = inttoptr i64 %"ptr_plus_imm.164" to ptr addrspace(1)
  %"ptr_cast_for_access.227" = bitcast ptr addrspace(1) %"inttoptr_bytes.227" to ptr addrspace(1)
  %".5107" = load float, ptr addrspace(1) %"ptr_cast_for_access.227"
  %".5108" = bitcast ptr %"R60" to ptr
  store float %".5107", ptr %".5108"
  ; LDG.E.SYS R58, [R12]
  %".5111" = load i32, ptr %"R12"
  %"zext.516" = zext i32 %".5111" to i64
  %".5112" = load i32, ptr %"R13"
  %"zext.517" = zext i32 %".5112" to i64
  %"shl.273" = shl i64 %"zext.517", 32
  %"or.248" = or i64 %"shl.273", %"zext.516"
  %"inttoptr_bytes.228" = inttoptr i64 %"or.248" to ptr addrspace(1)
  %"ptr_cast_for_access.228" = bitcast ptr addrspace(1) %"inttoptr_bytes.228" to ptr addrspace(1)
  %".5113" = load float, ptr addrspace(1) %"ptr_cast_for_access.228"
  %".5114" = bitcast ptr %"R58" to ptr
  store float %".5113", ptr %".5114"
  ; LDG.E.SYS R54, [R12+0x4]
  %".5117" = load i32, ptr %"R12"
  %"zext.518" = zext i32 %".5117" to i64
  %".5118" = load i32, ptr %"R13"
  %"zext.519" = zext i32 %".5118" to i64
  %"shl.274" = shl i64 %"zext.519", 32
  %"or.249" = or i64 %"shl.274", %"zext.518"
  %"ptr_plus_imm.165" = add i64 %"or.249", 4
  %"inttoptr_bytes.229" = inttoptr i64 %"ptr_plus_imm.165" to ptr addrspace(1)
  %"ptr_cast_for_access.229" = bitcast ptr addrspace(1) %"inttoptr_bytes.229" to ptr addrspace(1)
  %".5119" = load float, ptr addrspace(1) %"ptr_cast_for_access.229"
  %".5120" = bitcast ptr %"R54" to ptr
  store float %".5119", ptr %".5120"
  ; FFMA R10, R37, R34, R42
  %"cast_ptr.573" = bitcast ptr %"R37" to ptr
  %".5123" = load float, ptr %"cast_ptr.573"
  %"cast_ptr.574" = bitcast ptr %"R34" to ptr
  %".5124" = load float, ptr %"cast_ptr.574"
  %"cast_ptr.575" = bitcast ptr %"R42" to ptr
  %".5125" = load float, ptr %"cast_ptr.575"
  %"fmul.201" = fmul float %".5123", %".5124"
  %"fadd.182" = fadd float %"fmul.201", %".5125"
  %".5126" = bitcast ptr %"R10" to ptr
  store float %"fadd.182", ptr %".5126"
  ; LDG.E.SYS R37, [R24]
  %".5129" = load i32, ptr %"R24"
  %"zext.520" = zext i32 %".5129" to i64
  %".5130" = load i32, ptr %"R25"
  %"zext.521" = zext i32 %".5130" to i64
  %"shl.275" = shl i64 %"zext.521", 32
  %"or.250" = or i64 %"shl.275", %"zext.520"
  %"inttoptr_bytes.230" = inttoptr i64 %"or.250" to ptr addrspace(1)
  %"ptr_cast_for_access.230" = bitcast ptr addrspace(1) %"inttoptr_bytes.230" to ptr addrspace(1)
  %".5131" = load float, ptr addrspace(1) %"ptr_cast_for_access.230"
  %".5132" = bitcast ptr %"R37" to ptr
  store float %".5131", ptr %".5132"
  ; LDG.E.SYS R42, [R24+0x4]
  %".5135" = load i32, ptr %"R24"
  %"zext.522" = zext i32 %".5135" to i64
  %".5136" = load i32, ptr %"R25"
  %"zext.523" = zext i32 %".5136" to i64
  %"shl.276" = shl i64 %"zext.523", 32
  %"or.251" = or i64 %"shl.276", %"zext.522"
  %"ptr_plus_imm.166" = add i64 %"or.251", 4
  %"inttoptr_bytes.231" = inttoptr i64 %"ptr_plus_imm.166" to ptr addrspace(1)
  %"ptr_cast_for_access.231" = bitcast ptr addrspace(1) %"inttoptr_bytes.231" to ptr addrspace(1)
  %".5137" = load float, ptr addrspace(1) %"ptr_cast_for_access.231"
  %".5138" = bitcast ptr %"R42" to ptr
  store float %".5137", ptr %".5138"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5141" = load i32, ptr %"R12"
  %"zext.524" = zext i32 %".5141" to i64
  %".5142" = load i32, ptr %"R13"
  %"zext.525" = zext i32 %".5142" to i64
  %"shl.277" = shl i64 %"zext.525", 32
  %"or.252" = or i64 %"shl.277", %"zext.524"
  %"ptr_plus_imm.167" = add i64 %"or.252", 8
  %"inttoptr_bytes.232" = inttoptr i64 %"ptr_plus_imm.167" to ptr addrspace(1)
  %"ptr_cast_for_access.232" = bitcast ptr addrspace(1) %"inttoptr_bytes.232" to ptr addrspace(1)
  %".5143" = load float, ptr addrspace(1) %"ptr_cast_for_access.232"
  %".5144" = bitcast ptr %"R7" to ptr
  store float %".5143", ptr %".5144"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5147" = load i32, ptr %"R24"
  %"zext.526" = zext i32 %".5147" to i64
  %".5148" = load i32, ptr %"R25"
  %"zext.527" = zext i32 %".5148" to i64
  %"shl.278" = shl i64 %"zext.527", 32
  %"or.253" = or i64 %"shl.278", %"zext.526"
  %"ptr_plus_imm.168" = add i64 %"or.253", 8
  %"inttoptr_bytes.233" = inttoptr i64 %"ptr_plus_imm.168" to ptr addrspace(1)
  %"ptr_cast_for_access.233" = bitcast ptr addrspace(1) %"inttoptr_bytes.233" to ptr addrspace(1)
  %".5149" = load float, ptr addrspace(1) %"ptr_cast_for_access.233"
  %".5150" = bitcast ptr %"R9" to ptr
  store float %".5149", ptr %".5150"
  ; LDG.E.SYS R8, [R24+0xc]
  %".5153" = load i32, ptr %"R24"
  %"zext.528" = zext i32 %".5153" to i64
  %".5154" = load i32, ptr %"R25"
  %"zext.529" = zext i32 %".5154" to i64
  %"shl.279" = shl i64 %"zext.529", 32
  %"or.254" = or i64 %"shl.279", %"zext.528"
  %"ptr_plus_imm.169" = add i64 %"or.254", 12
  %"inttoptr_bytes.234" = inttoptr i64 %"ptr_plus_imm.169" to ptr addrspace(1)
  %"ptr_cast_for_access.234" = bitcast ptr addrspace(1) %"inttoptr_bytes.234" to ptr addrspace(1)
  %".5155" = load float, ptr addrspace(1) %"ptr_cast_for_access.234"
  %".5156" = bitcast ptr %"R8" to ptr
  store float %".5155", ptr %".5156"
  ; LDG.E.SYS R13, [R12+0xc]
  %".5159" = load i32, ptr %"R12"
  %"zext.530" = zext i32 %".5159" to i64
  %".5160" = load i32, ptr %"R13"
  %"zext.531" = zext i32 %".5160" to i64
  %"shl.280" = shl i64 %"zext.531", 32
  %"or.255" = or i64 %"shl.280", %"zext.530"
  %"ptr_plus_imm.170" = add i64 %"or.255", 12
  %"inttoptr_bytes.235" = inttoptr i64 %"ptr_plus_imm.170" to ptr addrspace(1)
  %"ptr_cast_for_access.235" = bitcast ptr addrspace(1) %"inttoptr_bytes.235" to ptr addrspace(1)
  %".5161" = load float, ptr addrspace(1) %"ptr_cast_for_access.235"
  %".5162" = bitcast ptr %"R13" to ptr
  store float %".5161", ptr %".5162"
  ; IADD3 R22, R22, -0x10, RZ
  %".5165" = load i32, ptr %"R22"
  %".5166" = add i32 %".5165", -16
  %".5167" = add i32 %".5166", 0
  store i32 %".5167", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".5170" = load i32, ptr %"R22"
  %".5171" = load i1, ptr %"PT"
  %"cmp.45" = icmp sgt i32 %".5170", 12
  %".5172" = xor i1 %"cmp.45", -1
  %".5173" = and i1 %"cmp.45", %".5171"
  %".5174" = and i1 %".5172", %".5171"
  store i1 %".5173", ptr %"P1"
  ; IADD3 R23, R23, 0x10, RZ
  %".5177" = load i32, ptr %"R23"
  %".5178" = add i32 %".5177", 16
  %".5179" = add i32 %".5178", 0
  store i32 %".5179", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %"cast_ptr.576" = bitcast ptr %"R43" to ptr
  %".5182" = load float, ptr %"cast_ptr.576"
  %"cast_ptr.577" = bitcast ptr %"R36" to ptr
  %".5183" = load float, ptr %"cast_ptr.577"
  %"cast_ptr.578" = bitcast ptr %"R10" to ptr
  %".5184" = load float, ptr %"cast_ptr.578"
  %"fmul.202" = fmul float %".5182", %".5183"
  %"fadd.183" = fadd float %"fmul.202", %".5184"
  %".5185" = bitcast ptr %"R10" to ptr
  store float %"fadd.183", ptr %".5185"
  ; FFMA R45, R34, R47, R45
  %"cast_ptr.579" = bitcast ptr %"R34" to ptr
  %".5188" = load float, ptr %"cast_ptr.579"
  %"cast_ptr.580" = bitcast ptr %"R47" to ptr
  %".5189" = load float, ptr %"cast_ptr.580"
  %"cast_ptr.581" = bitcast ptr %"R45" to ptr
  %".5190" = load float, ptr %"cast_ptr.581"
  %"fmul.203" = fmul float %".5188", %".5189"
  %"fadd.184" = fadd float %"fmul.203", %".5190"
  %".5191" = bitcast ptr %"R45" to ptr
  store float %"fadd.184", ptr %".5191"
  ; FFMA R45, R36, R51, R45
  %"cast_ptr.582" = bitcast ptr %"R36" to ptr
  %".5194" = load float, ptr %"cast_ptr.582"
  %"cast_ptr.583" = bitcast ptr %"R51" to ptr
  %".5195" = load float, ptr %"cast_ptr.583"
  %"cast_ptr.584" = bitcast ptr %"R45" to ptr
  %".5196" = load float, ptr %"cast_ptr.584"
  %"fmul.204" = fmul float %".5194", %".5195"
  %"fadd.185" = fadd float %"fmul.204", %".5196"
  %".5197" = bitcast ptr %"R45" to ptr
  store float %"fadd.185", ptr %".5197"
  ; FFMA R10, R57, R38, R10
  %"cast_ptr.585" = bitcast ptr %"R57" to ptr
  %".5200" = load float, ptr %"cast_ptr.585"
  %"cast_ptr.586" = bitcast ptr %"R38" to ptr
  %".5201" = load float, ptr %"cast_ptr.586"
  %"cast_ptr.587" = bitcast ptr %"R10" to ptr
  %".5202" = load float, ptr %"cast_ptr.587"
  %"fmul.205" = fmul float %".5200", %".5201"
  %"fadd.186" = fadd float %"fmul.205", %".5202"
  %".5203" = bitcast ptr %"R10" to ptr
  store float %"fadd.186", ptr %".5203"
  ; FFMA R45, R38, R59, R45
  %"cast_ptr.588" = bitcast ptr %"R38" to ptr
  %".5206" = load float, ptr %"cast_ptr.588"
  %"cast_ptr.589" = bitcast ptr %"R59" to ptr
  %".5207" = load float, ptr %"cast_ptr.589"
  %"cast_ptr.590" = bitcast ptr %"R45" to ptr
  %".5208" = load float, ptr %"cast_ptr.590"
  %"fmul.206" = fmul float %".5206", %".5207"
  %"fadd.187" = fadd float %"fmul.206", %".5208"
  %".5209" = bitcast ptr %"R45" to ptr
  store float %"fadd.187", ptr %".5209"
  ; FFMA R10, R50, R41, R10
  %"cast_ptr.591" = bitcast ptr %"R50" to ptr
  %".5212" = load float, ptr %"cast_ptr.591"
  %"cast_ptr.592" = bitcast ptr %"R41" to ptr
  %".5213" = load float, ptr %"cast_ptr.592"
  %"cast_ptr.593" = bitcast ptr %"R10" to ptr
  %".5214" = load float, ptr %"cast_ptr.593"
  %"fmul.207" = fmul float %".5212", %".5213"
  %"fadd.188" = fadd float %"fmul.207", %".5214"
  %".5215" = bitcast ptr %"R10" to ptr
  store float %"fadd.188", ptr %".5215"
  ; FFMA R45, R41, R46, R45
  %"cast_ptr.594" = bitcast ptr %"R41" to ptr
  %".5218" = load float, ptr %"cast_ptr.594"
  %"cast_ptr.595" = bitcast ptr %"R46" to ptr
  %".5219" = load float, ptr %"cast_ptr.595"
  %"cast_ptr.596" = bitcast ptr %"R45" to ptr
  %".5220" = load float, ptr %"cast_ptr.596"
  %"fmul.208" = fmul float %".5218", %".5219"
  %"fadd.189" = fadd float %"fmul.208", %".5220"
  %".5221" = bitcast ptr %"R45" to ptr
  store float %"fadd.189", ptr %".5221"
  ; FFMA R10, R61, R40, R10
  %"cast_ptr.597" = bitcast ptr %"R61" to ptr
  %".5224" = load float, ptr %"cast_ptr.597"
  %"cast_ptr.598" = bitcast ptr %"R40" to ptr
  %".5225" = load float, ptr %"cast_ptr.598"
  %"cast_ptr.599" = bitcast ptr %"R10" to ptr
  %".5226" = load float, ptr %"cast_ptr.599"
  %"fmul.209" = fmul float %".5224", %".5225"
  %"fadd.190" = fadd float %"fmul.209", %".5226"
  %".5227" = bitcast ptr %"R10" to ptr
  store float %"fadd.190", ptr %".5227"
  ; FFMA R35, R40, R35, R45
  %"cast_ptr.600" = bitcast ptr %"R40" to ptr
  %".5230" = load float, ptr %"cast_ptr.600"
  %"cast_ptr.601" = bitcast ptr %"R35" to ptr
  %".5231" = load float, ptr %"cast_ptr.601"
  %"cast_ptr.602" = bitcast ptr %"R45" to ptr
  %".5232" = load float, ptr %"cast_ptr.602"
  %"fmul.210" = fmul float %".5230", %".5231"
  %"fadd.191" = fadd float %"fmul.210", %".5232"
  %".5233" = bitcast ptr %"R35" to ptr
  store float %"fadd.191", ptr %".5233"
  ; FFMA R6, R6, R39, R10
  %"cast_ptr.603" = bitcast ptr %"R6" to ptr
  %".5236" = load float, ptr %"cast_ptr.603"
  %"cast_ptr.604" = bitcast ptr %"R39" to ptr
  %".5237" = load float, ptr %"cast_ptr.604"
  %"cast_ptr.605" = bitcast ptr %"R10" to ptr
  %".5238" = load float, ptr %"cast_ptr.605"
  %"fmul.211" = fmul float %".5236", %".5237"
  %"fadd.192" = fadd float %"fmul.211", %".5238"
  %".5239" = bitcast ptr %"R6" to ptr
  store float %"fadd.192", ptr %".5239"
  ; FFMA R35, R39, R4, R35
  %"cast_ptr.606" = bitcast ptr %"R39" to ptr
  %".5242" = load float, ptr %"cast_ptr.606"
  %"cast_ptr.607" = bitcast ptr %"R4" to ptr
  %".5243" = load float, ptr %"cast_ptr.607"
  %"cast_ptr.608" = bitcast ptr %"R35" to ptr
  %".5244" = load float, ptr %"cast_ptr.608"
  %"fmul.212" = fmul float %".5242", %".5243"
  %"fadd.193" = fadd float %"fmul.212", %".5244"
  %".5245" = bitcast ptr %"R35" to ptr
  store float %"fadd.193", ptr %".5245"
  ; FFMA R5, R5, R44, R6
  %"cast_ptr.609" = bitcast ptr %"R5" to ptr
  %".5248" = load float, ptr %"cast_ptr.609"
  %"cast_ptr.610" = bitcast ptr %"R44" to ptr
  %".5249" = load float, ptr %"cast_ptr.610"
  %"cast_ptr.611" = bitcast ptr %"R6" to ptr
  %".5250" = load float, ptr %"cast_ptr.611"
  %"fmul.213" = fmul float %".5248", %".5249"
  %"fadd.194" = fadd float %"fmul.213", %".5250"
  %".5251" = bitcast ptr %"R5" to ptr
  store float %"fadd.194", ptr %".5251"
  ; FFMA R60, R44, R60, R35
  %"cast_ptr.612" = bitcast ptr %"R44" to ptr
  %".5254" = load float, ptr %"cast_ptr.612"
  %"cast_ptr.613" = bitcast ptr %"R60" to ptr
  %".5255" = load float, ptr %"cast_ptr.613"
  %"cast_ptr.614" = bitcast ptr %"R35" to ptr
  %".5256" = load float, ptr %"cast_ptr.614"
  %"fmul.214" = fmul float %".5254", %".5255"
  %"fadd.195" = fadd float %"fmul.214", %".5256"
  %".5257" = bitcast ptr %"R60" to ptr
  store float %"fadd.195", ptr %".5257"
  ; FFMA R5, R58, R55, R5
  %"cast_ptr.615" = bitcast ptr %"R58" to ptr
  %".5260" = load float, ptr %"cast_ptr.615"
  %"cast_ptr.616" = bitcast ptr %"R55" to ptr
  %".5261" = load float, ptr %"cast_ptr.616"
  %"cast_ptr.617" = bitcast ptr %"R5" to ptr
  %".5262" = load float, ptr %"cast_ptr.617"
  %"fmul.215" = fmul float %".5260", %".5261"
  %"fadd.196" = fadd float %"fmul.215", %".5262"
  %".5263" = bitcast ptr %"R5" to ptr
  store float %"fadd.196", ptr %".5263"
  ; FFMA R5, R54, R53, R5
  %"cast_ptr.618" = bitcast ptr %"R54" to ptr
  %".5266" = load float, ptr %"cast_ptr.618"
  %"cast_ptr.619" = bitcast ptr %"R53" to ptr
  %".5267" = load float, ptr %"cast_ptr.619"
  %"cast_ptr.620" = bitcast ptr %"R5" to ptr
  %".5268" = load float, ptr %"cast_ptr.620"
  %"fmul.216" = fmul float %".5266", %".5267"
  %"fadd.197" = fadd float %"fmul.216", %".5268"
  %".5269" = bitcast ptr %"R5" to ptr
  store float %"fadd.197", ptr %".5269"
  ; FFMA R37, R55, R37, R60
  %"cast_ptr.621" = bitcast ptr %"R55" to ptr
  %".5272" = load float, ptr %"cast_ptr.621"
  %"cast_ptr.622" = bitcast ptr %"R37" to ptr
  %".5273" = load float, ptr %"cast_ptr.622"
  %"cast_ptr.623" = bitcast ptr %"R60" to ptr
  %".5274" = load float, ptr %"cast_ptr.623"
  %"fmul.217" = fmul float %".5272", %".5273"
  %"fadd.198" = fadd float %"fmul.217", %".5274"
  %".5275" = bitcast ptr %"R37" to ptr
  store float %"fadd.198", ptr %".5275"
  ; FFMA R37, R53, R42, R37
  %"cast_ptr.624" = bitcast ptr %"R53" to ptr
  %".5278" = load float, ptr %"cast_ptr.624"
  %"cast_ptr.625" = bitcast ptr %"R42" to ptr
  %".5279" = load float, ptr %"cast_ptr.625"
  %"cast_ptr.626" = bitcast ptr %"R37" to ptr
  %".5280" = load float, ptr %"cast_ptr.626"
  %"fmul.218" = fmul float %".5278", %".5279"
  %"fadd.199" = fadd float %"fmul.218", %".5280"
  %".5281" = bitcast ptr %"R37" to ptr
  store float %"fadd.199", ptr %".5281"
  ; FFMA R5, R7, R52, R5
  %"cast_ptr.627" = bitcast ptr %"R7" to ptr
  %".5284" = load float, ptr %"cast_ptr.627"
  %"cast_ptr.628" = bitcast ptr %"R52" to ptr
  %".5285" = load float, ptr %"cast_ptr.628"
  %"cast_ptr.629" = bitcast ptr %"R5" to ptr
  %".5286" = load float, ptr %"cast_ptr.629"
  %"fmul.219" = fmul float %".5284", %".5285"
  %"fadd.200" = fadd float %"fmul.219", %".5286"
  %".5287" = bitcast ptr %"R5" to ptr
  store float %"fadd.200", ptr %".5287"
  ; FFMA R9, R52, R9, R37
  %"cast_ptr.630" = bitcast ptr %"R52" to ptr
  %".5290" = load float, ptr %"cast_ptr.630"
  %"cast_ptr.631" = bitcast ptr %"R9" to ptr
  %".5291" = load float, ptr %"cast_ptr.631"
  %"cast_ptr.632" = bitcast ptr %"R37" to ptr
  %".5292" = load float, ptr %"cast_ptr.632"
  %"fmul.220" = fmul float %".5290", %".5291"
  %"fadd.201" = fadd float %"fmul.220", %".5292"
  %".5293" = bitcast ptr %"R9" to ptr
  store float %"fadd.201", ptr %".5293"
  ; FFMA R44, R13, R56, R5
  %"cast_ptr.633" = bitcast ptr %"R13" to ptr
  %".5296" = load float, ptr %"cast_ptr.633"
  %"cast_ptr.634" = bitcast ptr %"R56" to ptr
  %".5297" = load float, ptr %"cast_ptr.634"
  %"cast_ptr.635" = bitcast ptr %"R5" to ptr
  %".5298" = load float, ptr %"cast_ptr.635"
  %"fmul.221" = fmul float %".5296", %".5297"
  %"fadd.202" = fadd float %"fmul.221", %".5298"
  %".5299" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5299"
  ; FFMA R56, R56, R8, R9
  %"cast_ptr.636" = bitcast ptr %"R56" to ptr
  %".5302" = load float, ptr %"cast_ptr.636"
  %"cast_ptr.637" = bitcast ptr %"R8" to ptr
  %".5303" = load float, ptr %"cast_ptr.637"
  %"cast_ptr.638" = bitcast ptr %"R9" to ptr
  %".5304" = load float, ptr %"cast_ptr.638"
  %"fmul.222" = fmul float %".5302", %".5303"
  %"fadd.203" = fadd float %"fmul.222", %".5304"
  %".5305" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5305"
  ; @P1 BRA `(.L_x_30)
  %".5308" = load i1, ptr %"P1"
  %".5309" = icmp eq i1 %".5308", 1
  br i1 %".5309", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".5312" = load i32, ptr %"R22"
  %".5313" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5312", 4
  %".5314" = xor i1 %"cmp.46", -1
  %".5315" = and i1 %"cmp.46", %".5313"
  %".5316" = and i1 %".5314", %".5313"
  store i1 %".5315", ptr %"P1"
  ; @!P1 BRA `(.L_x_31)
  %".5319" = load i1, ptr %"P1"
  %".5320" = icmp ne i1 %".5319", 1
  br i1 %".5320", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".5323" = load i32, ptr %"R0"
  %".5324" = load i32, ptr %"R23"
  %".5325" = add i32 %".5323", %".5324"
  %".5326" = add i32 %".5325", 0
  store i32 %".5326", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".5331" = load i32, ptr %"R2"
  %".5332" = load i32, ptr %"R5"
  %"shl.281" = shl i32 %".5331", 2
  %"add.16" = add i32 %"shl.281", %".5332"
  store i32 %"add.16", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".5335" = load i32, ptr %"R2"
  %".5336" = load i32, ptr %"R5"
  %"imad_mul.75" = mul i32 %".5335", 3
  %"imad_add.75" = add i32 %"imad_mul.75", %".5336"
  store i32 %"imad_add.75", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".5339" = load i32, ptr %"R23"
  %".5340" = add i32 %".5339", 4
  %".5341" = add i32 %".5340", 0
  store i32 %".5341", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".5344" = load i32, ptr %"R23"
  %".5345" = load i32, ptr %"R25"
  %"imad_ext1.62" = zext i32 %".5344" to i64
  %"imad_ext2.62" = zext i32 %".5345" to i64
  %"imad_mul.76" = mul i64 %"imad_ext1.62", %"imad_ext2.62"
  %".5346" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.76" = add i64 %"imad_mul.76", %".5346"
  %".5347" = and i64 %"imad_add.76", 18446744069414584320
  %".5348" = lshr i64 %".5347", 32
  %"trunc32.144" = trunc i64 %".5348" to i32
  %"trunc32.145" = trunc i64 %"imad_add.76" to i32
  store i32 %"trunc32.145", ptr %"R8"
  store i32 %"trunc32.144", ptr %"R9"
  ; IADD3 R24, R13, 0x4, RZ
  %".5352" = load i32, ptr %"R13"
  %".5353" = add i32 %".5352", 4
  %".5354" = add i32 %".5353", 0
  store i32 %".5354", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".5357" = load i32, ptr %"R12"
  %".5358" = load i32, ptr %"R25"
  %"imad_ext1.63" = zext i32 %".5357" to i64
  %"imad_ext2.63" = zext i32 %".5358" to i64
  %"imad_mul.77" = mul i64 %"imad_ext1.63", %"imad_ext2.63"
  %".5359" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.77" = add i64 %"imad_mul.77", %".5359"
  %".5360" = and i64 %"imad_add.77", 18446744069414584320
  %".5361" = lshr i64 %".5360", 32
  %"trunc32.146" = trunc i64 %".5361" to i32
  %"trunc32.147" = trunc i64 %"imad_add.77" to i32
  store i32 %"trunc32.147", ptr %"R4"
  store i32 %"trunc32.146", ptr %"R5"
  ; IADD3 R12, R12, 0x4, RZ
  %".5365" = load i32, ptr %"R12"
  %".5366" = add i32 %".5365", 4
  %".5367" = add i32 %".5366", 0
  store i32 %".5367", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".5370" = load i32, ptr %"R13"
  %".5371" = load i32, ptr %"R25"
  %"imad_ext1.64" = zext i32 %".5370" to i64
  %"imad_ext2.64" = zext i32 %".5371" to i64
  %"imad_mul.78" = mul i64 %"imad_ext1.64", %"imad_ext2.64"
  %".5372" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.78" = add i64 %"imad_mul.78", %".5372"
  %".5373" = and i64 %"imad_add.78", 18446744069414584320
  %".5374" = lshr i64 %".5373", 32
  %"trunc32.148" = trunc i64 %".5374" to i32
  %"trunc32.149" = trunc i64 %"imad_add.78" to i32
  store i32 %"trunc32.149", ptr %"R10"
  store i32 %"trunc32.148", ptr %"R11"
  ; LDG.E.SYS R43, [R8]
  %".5378" = load i32, ptr %"R8"
  %"zext.532" = zext i32 %".5378" to i64
  %".5379" = load i32, ptr %"R9"
  %"zext.533" = zext i32 %".5379" to i64
  %"shl.282" = shl i64 %"zext.533", 32
  %"or.256" = or i64 %"shl.282", %"zext.532"
  %"inttoptr_bytes.236" = inttoptr i64 %"or.256" to ptr addrspace(1)
  %"ptr_cast_for_access.236" = bitcast ptr addrspace(1) %"inttoptr_bytes.236" to ptr addrspace(1)
  %".5380" = load float, ptr addrspace(1) %"ptr_cast_for_access.236"
  %".5381" = bitcast ptr %"R43" to ptr
  store float %".5380", ptr %".5381"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".5384" = load i32, ptr %"R6"
  %".5385" = load i32, ptr %"R25"
  %"imad_ext1.65" = zext i32 %".5384" to i64
  %"imad_ext2.65" = zext i32 %".5385" to i64
  %"imad_mul.79" = mul i64 %"imad_ext1.65", %"imad_ext2.65"
  %".5386" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.79" = add i64 %"imad_mul.79", %".5386"
  %".5387" = and i64 %"imad_add.79", 18446744069414584320
  %".5388" = lshr i64 %".5387", 32
  %"trunc32.150" = trunc i64 %".5388" to i32
  %"trunc32.151" = trunc i64 %"imad_add.79" to i32
  store i32 %"trunc32.151", ptr %"R6"
  store i32 %"trunc32.150", ptr %"R7"
  ; LDG.E.SYS R52, [R4]
  %".5392" = load i32, ptr %"R4"
  %"zext.534" = zext i32 %".5392" to i64
  %".5393" = load i32, ptr %"R5"
  %"zext.535" = zext i32 %".5393" to i64
  %"shl.283" = shl i64 %"zext.535", 32
  %"or.257" = or i64 %"shl.283", %"zext.534"
  %"inttoptr_bytes.237" = inttoptr i64 %"or.257" to ptr addrspace(1)
  %"ptr_cast_for_access.237" = bitcast ptr addrspace(1) %"inttoptr_bytes.237" to ptr addrspace(1)
  %".5394" = load float, ptr addrspace(1) %"ptr_cast_for_access.237"
  %".5395" = bitcast ptr %"R52" to ptr
  store float %".5394", ptr %".5395"
  ; LDG.E.SYS R38, [R10]
  %".5398" = load i32, ptr %"R10"
  %"zext.536" = zext i32 %".5398" to i64
  %".5399" = load i32, ptr %"R11"
  %"zext.537" = zext i32 %".5399" to i64
  %"shl.284" = shl i64 %"zext.537", 32
  %"or.258" = or i64 %"shl.284", %"zext.536"
  %"inttoptr_bytes.238" = inttoptr i64 %"or.258" to ptr addrspace(1)
  %"ptr_cast_for_access.238" = bitcast ptr addrspace(1) %"inttoptr_bytes.238" to ptr addrspace(1)
  %".5400" = load float, ptr addrspace(1) %"ptr_cast_for_access.238"
  %".5401" = bitcast ptr %"R38" to ptr
  store float %".5400", ptr %".5401"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".5404" = load i32, ptr %"R12"
  %".5405" = load i32, ptr %"R25"
  %"imad_ext1.66" = zext i32 %".5404" to i64
  %"imad_ext2.66" = zext i32 %".5405" to i64
  %"imad_mul.80" = mul i64 %"imad_ext1.66", %"imad_ext2.66"
  %".5406" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.80" = add i64 %"imad_mul.80", %".5406"
  %".5407" = and i64 %"imad_add.80", 18446744069414584320
  %".5408" = lshr i64 %".5407", 32
  %"trunc32.152" = trunc i64 %".5408" to i32
  %"trunc32.153" = trunc i64 %"imad_add.80" to i32
  store i32 %"trunc32.153", ptr %"R12"
  store i32 %"trunc32.152", ptr %"R13"
  ; LDG.E.SYS R36, [R8+0x4]
  %".5412" = load i32, ptr %"R8"
  %"zext.538" = zext i32 %".5412" to i64
  %".5413" = load i32, ptr %"R9"
  %"zext.539" = zext i32 %".5413" to i64
  %"shl.285" = shl i64 %"zext.539", 32
  %"or.259" = or i64 %"shl.285", %"zext.538"
  %"ptr_plus_imm.171" = add i64 %"or.259", 4
  %"inttoptr_bytes.239" = inttoptr i64 %"ptr_plus_imm.171" to ptr addrspace(1)
  %"ptr_cast_for_access.239" = bitcast ptr addrspace(1) %"inttoptr_bytes.239" to ptr addrspace(1)
  %".5414" = load float, ptr addrspace(1) %"ptr_cast_for_access.239"
  %".5415" = bitcast ptr %"R36" to ptr
  store float %".5414", ptr %".5415"
  ; LDG.E.SYS R41, [R4+0x4]
  %".5418" = load i32, ptr %"R4"
  %"zext.540" = zext i32 %".5418" to i64
  %".5419" = load i32, ptr %"R5"
  %"zext.541" = zext i32 %".5419" to i64
  %"shl.286" = shl i64 %"zext.541", 32
  %"or.260" = or i64 %"shl.286", %"zext.540"
  %"ptr_plus_imm.172" = add i64 %"or.260", 4
  %"inttoptr_bytes.240" = inttoptr i64 %"ptr_plus_imm.172" to ptr addrspace(1)
  %"ptr_cast_for_access.240" = bitcast ptr addrspace(1) %"inttoptr_bytes.240" to ptr addrspace(1)
  %".5420" = load float, ptr addrspace(1) %"ptr_cast_for_access.240"
  %".5421" = bitcast ptr %"R41" to ptr
  store float %".5420", ptr %".5421"
  ; LDG.E.SYS R39, [R10+0x4]
  %".5424" = load i32, ptr %"R10"
  %"zext.542" = zext i32 %".5424" to i64
  %".5425" = load i32, ptr %"R11"
  %"zext.543" = zext i32 %".5425" to i64
  %"shl.287" = shl i64 %"zext.543", 32
  %"or.261" = or i64 %"shl.287", %"zext.542"
  %"ptr_plus_imm.173" = add i64 %"or.261", 4
  %"inttoptr_bytes.241" = inttoptr i64 %"ptr_plus_imm.173" to ptr addrspace(1)
  %"ptr_cast_for_access.241" = bitcast ptr addrspace(1) %"inttoptr_bytes.241" to ptr addrspace(1)
  %".5426" = load float, ptr addrspace(1) %"ptr_cast_for_access.241"
  %".5427" = bitcast ptr %"R39" to ptr
  store float %".5426", ptr %".5427"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".5430" = load i32, ptr %"R24"
  %".5431" = load i32, ptr %"R25"
  %"imad_ext1.67" = zext i32 %".5430" to i64
  %"imad_ext2.67" = zext i32 %".5431" to i64
  %"imad_mul.81" = mul i64 %"imad_ext1.67", %"imad_ext2.67"
  %".5432" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.81" = add i64 %"imad_mul.81", %".5432"
  %".5433" = and i64 %"imad_add.81", 18446744069414584320
  %".5434" = lshr i64 %".5433", 32
  %"trunc32.154" = trunc i64 %".5434" to i32
  %"trunc32.155" = trunc i64 %"imad_add.81" to i32
  store i32 %"trunc32.155", ptr %"R24"
  store i32 %"trunc32.154", ptr %"R25"
  ; LDG.E.SYS R34, [R8+0x8]
  %".5438" = load i32, ptr %"R8"
  %"zext.544" = zext i32 %".5438" to i64
  %".5439" = load i32, ptr %"R9"
  %"zext.545" = zext i32 %".5439" to i64
  %"shl.288" = shl i64 %"zext.545", 32
  %"or.262" = or i64 %"shl.288", %"zext.544"
  %"ptr_plus_imm.174" = add i64 %"or.262", 8
  %"inttoptr_bytes.242" = inttoptr i64 %"ptr_plus_imm.174" to ptr addrspace(1)
  %"ptr_cast_for_access.242" = bitcast ptr addrspace(1) %"inttoptr_bytes.242" to ptr addrspace(1)
  %".5440" = load float, ptr addrspace(1) %"ptr_cast_for_access.242"
  %".5441" = bitcast ptr %"R34" to ptr
  store float %".5440", ptr %".5441"
  ; LDG.E.SYS R37, [R4+0x8]
  %".5444" = load i32, ptr %"R4"
  %"zext.546" = zext i32 %".5444" to i64
  %".5445" = load i32, ptr %"R5"
  %"zext.547" = zext i32 %".5445" to i64
  %"shl.289" = shl i64 %"zext.547", 32
  %"or.263" = or i64 %"shl.289", %"zext.546"
  %"ptr_plus_imm.175" = add i64 %"or.263", 8
  %"inttoptr_bytes.243" = inttoptr i64 %"ptr_plus_imm.175" to ptr addrspace(1)
  %"ptr_cast_for_access.243" = bitcast ptr addrspace(1) %"inttoptr_bytes.243" to ptr addrspace(1)
  %".5446" = load float, ptr addrspace(1) %"ptr_cast_for_access.243"
  %".5447" = bitcast ptr %"R37" to ptr
  store float %".5446", ptr %".5447"
  ; LDG.E.SYS R35, [R10+0x8]
  %".5450" = load i32, ptr %"R10"
  %"zext.548" = zext i32 %".5450" to i64
  %".5451" = load i32, ptr %"R11"
  %"zext.549" = zext i32 %".5451" to i64
  %"shl.290" = shl i64 %"zext.549", 32
  %"or.264" = or i64 %"shl.290", %"zext.548"
  %"ptr_plus_imm.176" = add i64 %"or.264", 8
  %"inttoptr_bytes.244" = inttoptr i64 %"ptr_plus_imm.176" to ptr addrspace(1)
  %"ptr_cast_for_access.244" = bitcast ptr addrspace(1) %"inttoptr_bytes.244" to ptr addrspace(1)
  %".5452" = load float, ptr addrspace(1) %"ptr_cast_for_access.244"
  %".5453" = bitcast ptr %"R35" to ptr
  store float %".5452", ptr %".5453"
  ; LDG.E.SYS R40, [R8+0xc]
  %".5456" = load i32, ptr %"R8"
  %"zext.550" = zext i32 %".5456" to i64
  %".5457" = load i32, ptr %"R9"
  %"zext.551" = zext i32 %".5457" to i64
  %"shl.291" = shl i64 %"zext.551", 32
  %"or.265" = or i64 %"shl.291", %"zext.550"
  %"ptr_plus_imm.177" = add i64 %"or.265", 12
  %"inttoptr_bytes.245" = inttoptr i64 %"ptr_plus_imm.177" to ptr addrspace(1)
  %"ptr_cast_for_access.245" = bitcast ptr addrspace(1) %"inttoptr_bytes.245" to ptr addrspace(1)
  %".5458" = load float, ptr addrspace(1) %"ptr_cast_for_access.245"
  %".5459" = bitcast ptr %"R40" to ptr
  store float %".5458", ptr %".5459"
  ; LDG.E.SYS R45, [R4+0xc]
  %".5462" = load i32, ptr %"R4"
  %"zext.552" = zext i32 %".5462" to i64
  %".5463" = load i32, ptr %"R5"
  %"zext.553" = zext i32 %".5463" to i64
  %"shl.292" = shl i64 %"zext.553", 32
  %"or.266" = or i64 %"shl.292", %"zext.552"
  %"ptr_plus_imm.178" = add i64 %"or.266", 12
  %"inttoptr_bytes.246" = inttoptr i64 %"ptr_plus_imm.178" to ptr addrspace(1)
  %"ptr_cast_for_access.246" = bitcast ptr addrspace(1) %"inttoptr_bytes.246" to ptr addrspace(1)
  %".5464" = load float, ptr addrspace(1) %"ptr_cast_for_access.246"
  %".5465" = bitcast ptr %"R45" to ptr
  store float %".5464", ptr %".5465"
  ; LDG.E.SYS R59, [R10+0xc]
  %".5468" = load i32, ptr %"R10"
  %"zext.554" = zext i32 %".5468" to i64
  %".5469" = load i32, ptr %"R11"
  %"zext.555" = zext i32 %".5469" to i64
  %"shl.293" = shl i64 %"zext.555", 32
  %"or.267" = or i64 %"shl.293", %"zext.554"
  %"ptr_plus_imm.179" = add i64 %"or.267", 12
  %"inttoptr_bytes.247" = inttoptr i64 %"ptr_plus_imm.179" to ptr addrspace(1)
  %"ptr_cast_for_access.247" = bitcast ptr addrspace(1) %"inttoptr_bytes.247" to ptr addrspace(1)
  %".5470" = load float, ptr addrspace(1) %"ptr_cast_for_access.247"
  %".5471" = bitcast ptr %"R59" to ptr
  store float %".5470", ptr %".5471"
  ; LDG.E.SYS R50, [R6]
  %".5474" = load i32, ptr %"R6"
  %"zext.556" = zext i32 %".5474" to i64
  %".5475" = load i32, ptr %"R7"
  %"zext.557" = zext i32 %".5475" to i64
  %"shl.294" = shl i64 %"zext.557", 32
  %"or.268" = or i64 %"shl.294", %"zext.556"
  %"inttoptr_bytes.248" = inttoptr i64 %"or.268" to ptr addrspace(1)
  %"ptr_cast_for_access.248" = bitcast ptr addrspace(1) %"inttoptr_bytes.248" to ptr addrspace(1)
  %".5476" = load float, ptr addrspace(1) %"ptr_cast_for_access.248"
  %".5477" = bitcast ptr %"R50" to ptr
  store float %".5476", ptr %".5477"
  ; LDG.E.SYS R57, [R12]
  %".5480" = load i32, ptr %"R12"
  %"zext.558" = zext i32 %".5480" to i64
  %".5481" = load i32, ptr %"R13"
  %"zext.559" = zext i32 %".5481" to i64
  %"shl.295" = shl i64 %"zext.559", 32
  %"or.269" = or i64 %"shl.295", %"zext.558"
  %"inttoptr_bytes.249" = inttoptr i64 %"or.269" to ptr addrspace(1)
  %"ptr_cast_for_access.249" = bitcast ptr addrspace(1) %"inttoptr_bytes.249" to ptr addrspace(1)
  %".5482" = load float, ptr addrspace(1) %"ptr_cast_for_access.249"
  %".5483" = bitcast ptr %"R57" to ptr
  store float %".5482", ptr %".5483"
  ; LDG.E.SYS R55, [R24]
  %".5486" = load i32, ptr %"R24"
  %"zext.560" = zext i32 %".5486" to i64
  %".5487" = load i32, ptr %"R25"
  %"zext.561" = zext i32 %".5487" to i64
  %"shl.296" = shl i64 %"zext.561", 32
  %"or.270" = or i64 %"shl.296", %"zext.560"
  %"inttoptr_bytes.250" = inttoptr i64 %"or.270" to ptr addrspace(1)
  %"ptr_cast_for_access.250" = bitcast ptr addrspace(1) %"inttoptr_bytes.250" to ptr addrspace(1)
  %".5488" = load float, ptr addrspace(1) %"ptr_cast_for_access.250"
  %".5489" = bitcast ptr %"R55" to ptr
  store float %".5488", ptr %".5489"
  ; LDG.E.SYS R46, [R6+0x4]
  %".5492" = load i32, ptr %"R6"
  %"zext.562" = zext i32 %".5492" to i64
  %".5493" = load i32, ptr %"R7"
  %"zext.563" = zext i32 %".5493" to i64
  %"shl.297" = shl i64 %"zext.563", 32
  %"or.271" = or i64 %"shl.297", %"zext.562"
  %"ptr_plus_imm.180" = add i64 %"or.271", 4
  %"inttoptr_bytes.251" = inttoptr i64 %"ptr_plus_imm.180" to ptr addrspace(1)
  %"ptr_cast_for_access.251" = bitcast ptr addrspace(1) %"inttoptr_bytes.251" to ptr addrspace(1)
  %".5494" = load float, ptr addrspace(1) %"ptr_cast_for_access.251"
  %".5495" = bitcast ptr %"R46" to ptr
  store float %".5494", ptr %".5495"
  ; LDG.E.SYS R53, [R12+0x4]
  %".5498" = load i32, ptr %"R12"
  %"zext.564" = zext i32 %".5498" to i64
  %".5499" = load i32, ptr %"R13"
  %"zext.565" = zext i32 %".5499" to i64
  %"shl.298" = shl i64 %"zext.565", 32
  %"or.272" = or i64 %"shl.298", %"zext.564"
  %"ptr_plus_imm.181" = add i64 %"or.272", 4
  %"inttoptr_bytes.252" = inttoptr i64 %"ptr_plus_imm.181" to ptr addrspace(1)
  %"ptr_cast_for_access.252" = bitcast ptr addrspace(1) %"inttoptr_bytes.252" to ptr addrspace(1)
  %".5500" = load float, ptr addrspace(1) %"ptr_cast_for_access.252"
  %".5501" = bitcast ptr %"R53" to ptr
  store float %".5500", ptr %".5501"
  ; LDG.E.SYS R51, [R24+0x4]
  %".5504" = load i32, ptr %"R24"
  %"zext.566" = zext i32 %".5504" to i64
  %".5505" = load i32, ptr %"R25"
  %"zext.567" = zext i32 %".5505" to i64
  %"shl.299" = shl i64 %"zext.567", 32
  %"or.273" = or i64 %"shl.299", %"zext.566"
  %"ptr_plus_imm.182" = add i64 %"or.273", 4
  %"inttoptr_bytes.253" = inttoptr i64 %"ptr_plus_imm.182" to ptr addrspace(1)
  %"ptr_cast_for_access.253" = bitcast ptr addrspace(1) %"inttoptr_bytes.253" to ptr addrspace(1)
  %".5506" = load float, ptr addrspace(1) %"ptr_cast_for_access.253"
  %".5507" = bitcast ptr %"R51" to ptr
  store float %".5506", ptr %".5507"
  ; LDG.E.SYS R42, [R6+0x8]
  %".5510" = load i32, ptr %"R6"
  %"zext.568" = zext i32 %".5510" to i64
  %".5511" = load i32, ptr %"R7"
  %"zext.569" = zext i32 %".5511" to i64
  %"shl.300" = shl i64 %"zext.569", 32
  %"or.274" = or i64 %"shl.300", %"zext.568"
  %"ptr_plus_imm.183" = add i64 %"or.274", 8
  %"inttoptr_bytes.254" = inttoptr i64 %"ptr_plus_imm.183" to ptr addrspace(1)
  %"ptr_cast_for_access.254" = bitcast ptr addrspace(1) %"inttoptr_bytes.254" to ptr addrspace(1)
  %".5512" = load float, ptr addrspace(1) %"ptr_cast_for_access.254"
  %".5513" = bitcast ptr %"R42" to ptr
  store float %".5512", ptr %".5513"
  ; LDG.E.SYS R47, [R12+0x8]
  %".5516" = load i32, ptr %"R12"
  %"zext.570" = zext i32 %".5516" to i64
  %".5517" = load i32, ptr %"R13"
  %"zext.571" = zext i32 %".5517" to i64
  %"shl.301" = shl i64 %"zext.571", 32
  %"or.275" = or i64 %"shl.301", %"zext.570"
  %"ptr_plus_imm.184" = add i64 %"or.275", 8
  %"inttoptr_bytes.255" = inttoptr i64 %"ptr_plus_imm.184" to ptr addrspace(1)
  %"ptr_cast_for_access.255" = bitcast ptr addrspace(1) %"inttoptr_bytes.255" to ptr addrspace(1)
  %".5518" = load float, ptr addrspace(1) %"ptr_cast_for_access.255"
  %".5519" = bitcast ptr %"R47" to ptr
  store float %".5518", ptr %".5519"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5522" = load i32, ptr %"R24"
  %"zext.572" = zext i32 %".5522" to i64
  %".5523" = load i32, ptr %"R25"
  %"zext.573" = zext i32 %".5523" to i64
  %"shl.302" = shl i64 %"zext.573", 32
  %"or.276" = or i64 %"shl.302", %"zext.572"
  %"ptr_plus_imm.185" = add i64 %"or.276", 8
  %"inttoptr_bytes.256" = inttoptr i64 %"ptr_plus_imm.185" to ptr addrspace(1)
  %"ptr_cast_for_access.256" = bitcast ptr addrspace(1) %"inttoptr_bytes.256" to ptr addrspace(1)
  %".5524" = load float, ptr addrspace(1) %"ptr_cast_for_access.256"
  %".5525" = bitcast ptr %"R9" to ptr
  store float %".5524", ptr %".5525"
  ; LDG.E.SYS R4, [R6+0xc]
  %".5528" = load i32, ptr %"R6"
  %"zext.574" = zext i32 %".5528" to i64
  %".5529" = load i32, ptr %"R7"
  %"zext.575" = zext i32 %".5529" to i64
  %"shl.303" = shl i64 %"zext.575", 32
  %"or.277" = or i64 %"shl.303", %"zext.574"
  %"ptr_plus_imm.186" = add i64 %"or.277", 12
  %"inttoptr_bytes.257" = inttoptr i64 %"ptr_plus_imm.186" to ptr addrspace(1)
  %"ptr_cast_for_access.257" = bitcast ptr addrspace(1) %"inttoptr_bytes.257" to ptr addrspace(1)
  %".5530" = load float, ptr addrspace(1) %"ptr_cast_for_access.257"
  %".5531" = bitcast ptr %"R4" to ptr
  store float %".5530", ptr %".5531"
  ; LDG.E.SYS R5, [R12+0xc]
  %".5534" = load i32, ptr %"R12"
  %"zext.576" = zext i32 %".5534" to i64
  %".5535" = load i32, ptr %"R13"
  %"zext.577" = zext i32 %".5535" to i64
  %"shl.304" = shl i64 %"zext.577", 32
  %"or.278" = or i64 %"shl.304", %"zext.576"
  %"ptr_plus_imm.187" = add i64 %"or.278", 12
  %"inttoptr_bytes.258" = inttoptr i64 %"ptr_plus_imm.187" to ptr addrspace(1)
  %"ptr_cast_for_access.258" = bitcast ptr addrspace(1) %"inttoptr_bytes.258" to ptr addrspace(1)
  %".5536" = load float, ptr addrspace(1) %"ptr_cast_for_access.258"
  %".5537" = bitcast ptr %"R5" to ptr
  store float %".5536", ptr %".5537"
  ; LDG.E.SYS R11, [R24+0xc]
  %".5540" = load i32, ptr %"R24"
  %"zext.578" = zext i32 %".5540" to i64
  %".5541" = load i32, ptr %"R25"
  %"zext.579" = zext i32 %".5541" to i64
  %"shl.305" = shl i64 %"zext.579", 32
  %"or.279" = or i64 %"shl.305", %"zext.578"
  %"ptr_plus_imm.188" = add i64 %"or.279", 12
  %"inttoptr_bytes.259" = inttoptr i64 %"ptr_plus_imm.188" to ptr addrspace(1)
  %"ptr_cast_for_access.259" = bitcast ptr addrspace(1) %"inttoptr_bytes.259" to ptr addrspace(1)
  %".5542" = load float, ptr addrspace(1) %"ptr_cast_for_access.259"
  %".5543" = bitcast ptr %"R11" to ptr
  store float %".5542", ptr %".5543"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5546" = xor i1 1, 1
  %".5547" = and i1 %".5546", 1
  %".5548" = and i1 %".5547", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".5550" = load i32, ptr %"R22"
  %".5551" = add i32 %".5550", -8
  %".5552" = add i32 %".5551", 0
  store i32 %".5552", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".5555" = load i32, ptr %"R23"
  %".5556" = add i32 %".5555", 8
  %".5557" = add i32 %".5556", 0
  store i32 %".5557", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %"cast_ptr.639" = bitcast ptr %"R52" to ptr
  %".5560" = load float, ptr %"cast_ptr.639"
  %"cast_ptr.640" = bitcast ptr %"R43" to ptr
  %".5561" = load float, ptr %"cast_ptr.640"
  %"cast_ptr.641" = bitcast ptr %"R44" to ptr
  %".5562" = load float, ptr %"cast_ptr.641"
  %"fmul.223" = fmul float %".5560", %".5561"
  %"fadd.204" = fadd float %"fmul.223", %".5562"
  %".5563" = bitcast ptr %"R52" to ptr
  store float %"fadd.204", ptr %".5563"
  ; FFMA R38, R43, R38, R56
  %"cast_ptr.642" = bitcast ptr %"R43" to ptr
  %".5566" = load float, ptr %"cast_ptr.642"
  %"cast_ptr.643" = bitcast ptr %"R38" to ptr
  %".5567" = load float, ptr %"cast_ptr.643"
  %"cast_ptr.644" = bitcast ptr %"R56" to ptr
  %".5568" = load float, ptr %"cast_ptr.644"
  %"fmul.224" = fmul float %".5566", %".5567"
  %"fadd.205" = fadd float %"fmul.224", %".5568"
  %".5569" = bitcast ptr %"R38" to ptr
  store float %"fadd.205", ptr %".5569"
  ; FFMA R41, R41, R36, R52
  %"cast_ptr.645" = bitcast ptr %"R41" to ptr
  %".5572" = load float, ptr %"cast_ptr.645"
  %"cast_ptr.646" = bitcast ptr %"R36" to ptr
  %".5573" = load float, ptr %"cast_ptr.646"
  %"cast_ptr.647" = bitcast ptr %"R52" to ptr
  %".5574" = load float, ptr %"cast_ptr.647"
  %"fmul.225" = fmul float %".5572", %".5573"
  %"fadd.206" = fadd float %"fmul.225", %".5574"
  %".5575" = bitcast ptr %"R41" to ptr
  store float %"fadd.206", ptr %".5575"
  ; FFMA R38, R36, R39, R38
  %"cast_ptr.648" = bitcast ptr %"R36" to ptr
  %".5578" = load float, ptr %"cast_ptr.648"
  %"cast_ptr.649" = bitcast ptr %"R39" to ptr
  %".5579" = load float, ptr %"cast_ptr.649"
  %"cast_ptr.650" = bitcast ptr %"R38" to ptr
  %".5580" = load float, ptr %"cast_ptr.650"
  %"fmul.226" = fmul float %".5578", %".5579"
  %"fadd.207" = fadd float %"fmul.226", %".5580"
  %".5581" = bitcast ptr %"R38" to ptr
  store float %"fadd.207", ptr %".5581"
  ; FFMA R37, R37, R34, R41
  %"cast_ptr.651" = bitcast ptr %"R37" to ptr
  %".5584" = load float, ptr %"cast_ptr.651"
  %"cast_ptr.652" = bitcast ptr %"R34" to ptr
  %".5585" = load float, ptr %"cast_ptr.652"
  %"cast_ptr.653" = bitcast ptr %"R41" to ptr
  %".5586" = load float, ptr %"cast_ptr.653"
  %"fmul.227" = fmul float %".5584", %".5585"
  %"fadd.208" = fadd float %"fmul.227", %".5586"
  %".5587" = bitcast ptr %"R37" to ptr
  store float %"fadd.208", ptr %".5587"
  ; FFMA R35, R34, R35, R38
  %"cast_ptr.654" = bitcast ptr %"R34" to ptr
  %".5590" = load float, ptr %"cast_ptr.654"
  %"cast_ptr.655" = bitcast ptr %"R35" to ptr
  %".5591" = load float, ptr %"cast_ptr.655"
  %"cast_ptr.656" = bitcast ptr %"R38" to ptr
  %".5592" = load float, ptr %"cast_ptr.656"
  %"fmul.228" = fmul float %".5590", %".5591"
  %"fadd.209" = fadd float %"fmul.228", %".5592"
  %".5593" = bitcast ptr %"R35" to ptr
  store float %"fadd.209", ptr %".5593"
  ; FFMA R37, R45, R40, R37
  %"cast_ptr.657" = bitcast ptr %"R45" to ptr
  %".5596" = load float, ptr %"cast_ptr.657"
  %"cast_ptr.658" = bitcast ptr %"R40" to ptr
  %".5597" = load float, ptr %"cast_ptr.658"
  %"cast_ptr.659" = bitcast ptr %"R37" to ptr
  %".5598" = load float, ptr %"cast_ptr.659"
  %"fmul.229" = fmul float %".5596", %".5597"
  %"fadd.210" = fadd float %"fmul.229", %".5598"
  %".5599" = bitcast ptr %"R37" to ptr
  store float %"fadd.210", ptr %".5599"
  ; FFMA R35, R40, R59, R35
  %"cast_ptr.660" = bitcast ptr %"R40" to ptr
  %".5602" = load float, ptr %"cast_ptr.660"
  %"cast_ptr.661" = bitcast ptr %"R59" to ptr
  %".5603" = load float, ptr %"cast_ptr.661"
  %"cast_ptr.662" = bitcast ptr %"R35" to ptr
  %".5604" = load float, ptr %"cast_ptr.662"
  %"fmul.230" = fmul float %".5602", %".5603"
  %"fadd.211" = fadd float %"fmul.230", %".5604"
  %".5605" = bitcast ptr %"R35" to ptr
  store float %"fadd.211", ptr %".5605"
  ; FFMA R37, R57, R50, R37
  %"cast_ptr.663" = bitcast ptr %"R57" to ptr
  %".5608" = load float, ptr %"cast_ptr.663"
  %"cast_ptr.664" = bitcast ptr %"R50" to ptr
  %".5609" = load float, ptr %"cast_ptr.664"
  %"cast_ptr.665" = bitcast ptr %"R37" to ptr
  %".5610" = load float, ptr %"cast_ptr.665"
  %"fmul.231" = fmul float %".5608", %".5609"
  %"fadd.212" = fadd float %"fmul.231", %".5610"
  %".5611" = bitcast ptr %"R37" to ptr
  store float %"fadd.212", ptr %".5611"
  ; FFMA R35, R50, R55, R35
  %"cast_ptr.666" = bitcast ptr %"R50" to ptr
  %".5614" = load float, ptr %"cast_ptr.666"
  %"cast_ptr.667" = bitcast ptr %"R55" to ptr
  %".5615" = load float, ptr %"cast_ptr.667"
  %"cast_ptr.668" = bitcast ptr %"R35" to ptr
  %".5616" = load float, ptr %"cast_ptr.668"
  %"fmul.232" = fmul float %".5614", %".5615"
  %"fadd.213" = fadd float %"fmul.232", %".5616"
  %".5617" = bitcast ptr %"R35" to ptr
  store float %"fadd.213", ptr %".5617"
  ; FFMA R37, R53, R46, R37
  %"cast_ptr.669" = bitcast ptr %"R53" to ptr
  %".5620" = load float, ptr %"cast_ptr.669"
  %"cast_ptr.670" = bitcast ptr %"R46" to ptr
  %".5621" = load float, ptr %"cast_ptr.670"
  %"cast_ptr.671" = bitcast ptr %"R37" to ptr
  %".5622" = load float, ptr %"cast_ptr.671"
  %"fmul.233" = fmul float %".5620", %".5621"
  %"fadd.214" = fadd float %"fmul.233", %".5622"
  %".5623" = bitcast ptr %"R37" to ptr
  store float %"fadd.214", ptr %".5623"
  ; FFMA R35, R46, R51, R35
  %"cast_ptr.672" = bitcast ptr %"R46" to ptr
  %".5626" = load float, ptr %"cast_ptr.672"
  %"cast_ptr.673" = bitcast ptr %"R51" to ptr
  %".5627" = load float, ptr %"cast_ptr.673"
  %"cast_ptr.674" = bitcast ptr %"R35" to ptr
  %".5628" = load float, ptr %"cast_ptr.674"
  %"fmul.234" = fmul float %".5626", %".5627"
  %"fadd.215" = fadd float %"fmul.234", %".5628"
  %".5629" = bitcast ptr %"R35" to ptr
  store float %"fadd.215", ptr %".5629"
  ; FFMA R37, R47, R42, R37
  %"cast_ptr.675" = bitcast ptr %"R47" to ptr
  %".5632" = load float, ptr %"cast_ptr.675"
  %"cast_ptr.676" = bitcast ptr %"R42" to ptr
  %".5633" = load float, ptr %"cast_ptr.676"
  %"cast_ptr.677" = bitcast ptr %"R37" to ptr
  %".5634" = load float, ptr %"cast_ptr.677"
  %"fmul.235" = fmul float %".5632", %".5633"
  %"fadd.216" = fadd float %"fmul.235", %".5634"
  %".5635" = bitcast ptr %"R37" to ptr
  store float %"fadd.216", ptr %".5635"
  ; FFMA R9, R42, R9, R35
  %"cast_ptr.678" = bitcast ptr %"R42" to ptr
  %".5638" = load float, ptr %"cast_ptr.678"
  %"cast_ptr.679" = bitcast ptr %"R9" to ptr
  %".5639" = load float, ptr %"cast_ptr.679"
  %"cast_ptr.680" = bitcast ptr %"R35" to ptr
  %".5640" = load float, ptr %"cast_ptr.680"
  %"fmul.236" = fmul float %".5638", %".5639"
  %"fadd.217" = fadd float %"fmul.236", %".5640"
  %".5641" = bitcast ptr %"R9" to ptr
  store float %"fadd.217", ptr %".5641"
  ; FFMA R44, R5, R4, R37
  %"cast_ptr.681" = bitcast ptr %"R5" to ptr
  %".5644" = load float, ptr %"cast_ptr.681"
  %"cast_ptr.682" = bitcast ptr %"R4" to ptr
  %".5645" = load float, ptr %"cast_ptr.682"
  %"cast_ptr.683" = bitcast ptr %"R37" to ptr
  %".5646" = load float, ptr %"cast_ptr.683"
  %"fmul.237" = fmul float %".5644", %".5645"
  %"fadd.218" = fadd float %"fmul.237", %".5646"
  %".5647" = bitcast ptr %"R44" to ptr
  store float %"fadd.218", ptr %".5647"
  ; FFMA R56, R4, R11, R9
  %"cast_ptr.684" = bitcast ptr %"R4" to ptr
  %".5650" = load float, ptr %"cast_ptr.684"
  %"cast_ptr.685" = bitcast ptr %"R11" to ptr
  %".5651" = load float, ptr %"cast_ptr.685"
  %"cast_ptr.686" = bitcast ptr %"R9" to ptr
  %".5652" = load float, ptr %"cast_ptr.686"
  %"fmul.238" = fmul float %".5650", %".5651"
  %"fadd.219" = fadd float %"fmul.238", %".5652"
  %".5653" = bitcast ptr %"R56" to ptr
  store float %"fadd.219", ptr %".5653"
  br label %".L_x_31"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".5657" = load i32, ptr %"R22"
  %".5658" = load i1, ptr %"P0"
  %"cmp.47" = icmp ne i32 %".5657", 0
  %".5659" = xor i1 %"cmp.47", -1
  %".5660" = or i1 %"cmp.47", %".5658"
  %".5661" = or i1 %".5659", %".5658"
  store i1 %".5660", ptr %"P0"
  ; @!P0 BRA `(.L_x_27)
  %".5664" = load i1, ptr %"P0"
  %".5665" = icmp ne i1 %".5664", 1
  br i1 %".5665", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".5668" = load i32, ptr %"R0"
  %".5669" = load i32, ptr %"R23"
  %".5670" = add i32 %".5668", %".5669"
  %".5671" = add i32 %".5670", 0
  store i32 %".5671", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".5676" = load i32, ptr %"R2"
  %".5677" = load i32, ptr %"R5"
  %"shl.306" = shl i32 %".5676", 2
  %"add.17" = add i32 %"shl.306", %".5677"
  store i32 %"add.17", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".5680" = load i32, ptr %"R2"
  %".5681" = load i32, ptr %"R5"
  %"imad_mul.82" = mul i32 %".5680", 3
  %"imad_add.82" = add i32 %"imad_mul.82", %".5681"
  store i32 %"imad_add.82", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".5684" = load i32, ptr %"R23"
  %".5685" = load i32, ptr %"R6"
  %"imad_ext1.68" = zext i32 %".5684" to i64
  %"imad_ext2.68" = zext i32 %".5685" to i64
  %"imad_mul.83" = mul i64 %"imad_ext1.68", %"imad_ext2.68"
  %".5686" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.83" = add i64 %"imad_mul.83", %".5686"
  %".5687" = and i64 %"imad_add.83", 18446744069414584320
  %".5688" = lshr i64 %".5687", 32
  %"trunc32.156" = trunc i64 %".5688" to i32
  %"trunc32.157" = trunc i64 %"imad_add.83" to i32
  store i32 %"trunc32.157", ptr %"R8"
  store i32 %"trunc32.156", ptr %"R9"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".5692" = load i32, ptr %"R7"
  %".5693" = load i32, ptr %"R6"
  %"imad_ext1.69" = zext i32 %".5692" to i64
  %"imad_ext2.69" = zext i32 %".5693" to i64
  %"imad_mul.84" = mul i64 %"imad_ext1.69", %"imad_ext2.69"
  %".5694" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.84" = add i64 %"imad_mul.84", %".5694"
  %".5695" = and i64 %"imad_add.84", 18446744069414584320
  %".5696" = lshr i64 %".5695", 32
  %"trunc32.158" = trunc i64 %".5696" to i32
  %"trunc32.159" = trunc i64 %"imad_add.84" to i32
  store i32 %"trunc32.159", ptr %"R4"
  store i32 %"trunc32.158", ptr %"R5"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".5700" = load i32, ptr %"R11"
  %".5701" = load i32, ptr %"R6"
  %"imad_ext1.70" = zext i32 %".5700" to i64
  %"imad_ext2.70" = zext i32 %".5701" to i64
  %"imad_mul.85" = mul i64 %"imad_ext1.70", %"imad_ext2.70"
  %".5702" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.85" = add i64 %"imad_mul.85", %".5702"
  %".5703" = and i64 %"imad_add.85", 18446744069414584320
  %".5704" = lshr i64 %".5703", 32
  %"trunc32.160" = trunc i64 %".5704" to i32
  %"trunc32.161" = trunc i64 %"imad_add.85" to i32
  store i32 %"trunc32.161", ptr %"R6"
  store i32 %"trunc32.160", ptr %"R7"
  ; LDG.E.SYS R13, [R8]
  %".5708" = load i32, ptr %"R8"
  %"zext.580" = zext i32 %".5708" to i64
  %".5709" = load i32, ptr %"R9"
  %"zext.581" = zext i32 %".5709" to i64
  %"shl.307" = shl i64 %"zext.581", 32
  %"or.280" = or i64 %"shl.307", %"zext.580"
  %"inttoptr_bytes.260" = inttoptr i64 %"or.280" to ptr addrspace(1)
  %"ptr_cast_for_access.260" = bitcast ptr addrspace(1) %"inttoptr_bytes.260" to ptr addrspace(1)
  %".5710" = load float, ptr addrspace(1) %"ptr_cast_for_access.260"
  %".5711" = bitcast ptr %"R13" to ptr
  store float %".5710", ptr %".5711"
  ; LDG.E.SYS R11, [R4]
  %".5714" = load i32, ptr %"R4"
  %"zext.582" = zext i32 %".5714" to i64
  %".5715" = load i32, ptr %"R5"
  %"zext.583" = zext i32 %".5715" to i64
  %"shl.308" = shl i64 %"zext.583", 32
  %"or.281" = or i64 %"shl.308", %"zext.582"
  %"inttoptr_bytes.261" = inttoptr i64 %"or.281" to ptr addrspace(1)
  %"ptr_cast_for_access.261" = bitcast ptr addrspace(1) %"inttoptr_bytes.261" to ptr addrspace(1)
  %".5716" = load float, ptr addrspace(1) %"ptr_cast_for_access.261"
  %".5717" = bitcast ptr %"R11" to ptr
  store float %".5716", ptr %".5717"
  ; LDG.E.SYS R10, [R6]
  %".5720" = load i32, ptr %"R6"
  %"zext.584" = zext i32 %".5720" to i64
  %".5721" = load i32, ptr %"R7"
  %"zext.585" = zext i32 %".5721" to i64
  %"shl.309" = shl i64 %"zext.585", 32
  %"or.282" = or i64 %"shl.309", %"zext.584"
  %"inttoptr_bytes.262" = inttoptr i64 %"or.282" to ptr addrspace(1)
  %"ptr_cast_for_access.262" = bitcast ptr addrspace(1) %"inttoptr_bytes.262" to ptr addrspace(1)
  %".5722" = load float, ptr addrspace(1) %"ptr_cast_for_access.262"
  %".5723" = bitcast ptr %"R10" to ptr
  store float %".5722", ptr %".5723"
  ; LDG.E.SYS R25, [R8+0x4]
  %".5726" = load i32, ptr %"R8"
  %"zext.586" = zext i32 %".5726" to i64
  %".5727" = load i32, ptr %"R9"
  %"zext.587" = zext i32 %".5727" to i64
  %"shl.310" = shl i64 %"zext.587", 32
  %"or.283" = or i64 %"shl.310", %"zext.586"
  %"ptr_plus_imm.189" = add i64 %"or.283", 4
  %"inttoptr_bytes.263" = inttoptr i64 %"ptr_plus_imm.189" to ptr addrspace(1)
  %"ptr_cast_for_access.263" = bitcast ptr addrspace(1) %"inttoptr_bytes.263" to ptr addrspace(1)
  %".5728" = load float, ptr addrspace(1) %"ptr_cast_for_access.263"
  %".5729" = bitcast ptr %"R25" to ptr
  store float %".5728", ptr %".5729"
  ; LDG.E.SYS R12, [R4+0x4]
  %".5732" = load i32, ptr %"R4"
  %"zext.588" = zext i32 %".5732" to i64
  %".5733" = load i32, ptr %"R5"
  %"zext.589" = zext i32 %".5733" to i64
  %"shl.311" = shl i64 %"zext.589", 32
  %"or.284" = or i64 %"shl.311", %"zext.588"
  %"ptr_plus_imm.190" = add i64 %"or.284", 4
  %"inttoptr_bytes.264" = inttoptr i64 %"ptr_plus_imm.190" to ptr addrspace(1)
  %"ptr_cast_for_access.264" = bitcast ptr addrspace(1) %"inttoptr_bytes.264" to ptr addrspace(1)
  %".5734" = load float, ptr addrspace(1) %"ptr_cast_for_access.264"
  %".5735" = bitcast ptr %"R12" to ptr
  store float %".5734", ptr %".5735"
  ; LDG.E.SYS R24, [R6+0x4]
  %".5738" = load i32, ptr %"R6"
  %"zext.590" = zext i32 %".5738" to i64
  %".5739" = load i32, ptr %"R7"
  %"zext.591" = zext i32 %".5739" to i64
  %"shl.312" = shl i64 %"zext.591", 32
  %"or.285" = or i64 %"shl.312", %"zext.590"
  %"ptr_plus_imm.191" = add i64 %"or.285", 4
  %"inttoptr_bytes.265" = inttoptr i64 %"ptr_plus_imm.191" to ptr addrspace(1)
  %"ptr_cast_for_access.265" = bitcast ptr addrspace(1) %"inttoptr_bytes.265" to ptr addrspace(1)
  %".5740" = load float, ptr addrspace(1) %"ptr_cast_for_access.265"
  %".5741" = bitcast ptr %"R24" to ptr
  store float %".5740", ptr %".5741"
  ; LDG.E.SYS R35, [R8+0x8]
  %".5744" = load i32, ptr %"R8"
  %"zext.592" = zext i32 %".5744" to i64
  %".5745" = load i32, ptr %"R9"
  %"zext.593" = zext i32 %".5745" to i64
  %"shl.313" = shl i64 %"zext.593", 32
  %"or.286" = or i64 %"shl.313", %"zext.592"
  %"ptr_plus_imm.192" = add i64 %"or.286", 8
  %"inttoptr_bytes.266" = inttoptr i64 %"ptr_plus_imm.192" to ptr addrspace(1)
  %"ptr_cast_for_access.266" = bitcast ptr addrspace(1) %"inttoptr_bytes.266" to ptr addrspace(1)
  %".5746" = load float, ptr addrspace(1) %"ptr_cast_for_access.266"
  %".5747" = bitcast ptr %"R35" to ptr
  store float %".5746", ptr %".5747"
  ; LDG.E.SYS R34, [R4+0x8]
  %".5750" = load i32, ptr %"R4"
  %"zext.594" = zext i32 %".5750" to i64
  %".5751" = load i32, ptr %"R5"
  %"zext.595" = zext i32 %".5751" to i64
  %"shl.314" = shl i64 %"zext.595", 32
  %"or.287" = or i64 %"shl.314", %"zext.594"
  %"ptr_plus_imm.193" = add i64 %"or.287", 8
  %"inttoptr_bytes.267" = inttoptr i64 %"ptr_plus_imm.193" to ptr addrspace(1)
  %"ptr_cast_for_access.267" = bitcast ptr addrspace(1) %"inttoptr_bytes.267" to ptr addrspace(1)
  %".5752" = load float, ptr addrspace(1) %"ptr_cast_for_access.267"
  %".5753" = bitcast ptr %"R34" to ptr
  store float %".5752", ptr %".5753"
  ; LDG.E.SYS R36, [R6+0x8]
  %".5756" = load i32, ptr %"R6"
  %"zext.596" = zext i32 %".5756" to i64
  %".5757" = load i32, ptr %"R7"
  %"zext.597" = zext i32 %".5757" to i64
  %"shl.315" = shl i64 %"zext.597", 32
  %"or.288" = or i64 %"shl.315", %"zext.596"
  %"ptr_plus_imm.194" = add i64 %"or.288", 8
  %"inttoptr_bytes.268" = inttoptr i64 %"ptr_plus_imm.194" to ptr addrspace(1)
  %"ptr_cast_for_access.268" = bitcast ptr addrspace(1) %"inttoptr_bytes.268" to ptr addrspace(1)
  %".5758" = load float, ptr addrspace(1) %"ptr_cast_for_access.268"
  %".5759" = bitcast ptr %"R36" to ptr
  store float %".5758", ptr %".5759"
  ; LDG.E.SYS R37, [R8+0xc]
  %".5762" = load i32, ptr %"R8"
  %"zext.598" = zext i32 %".5762" to i64
  %".5763" = load i32, ptr %"R9"
  %"zext.599" = zext i32 %".5763" to i64
  %"shl.316" = shl i64 %"zext.599", 32
  %"or.289" = or i64 %"shl.316", %"zext.598"
  %"ptr_plus_imm.195" = add i64 %"or.289", 12
  %"inttoptr_bytes.269" = inttoptr i64 %"ptr_plus_imm.195" to ptr addrspace(1)
  %"ptr_cast_for_access.269" = bitcast ptr addrspace(1) %"inttoptr_bytes.269" to ptr addrspace(1)
  %".5764" = load float, ptr addrspace(1) %"ptr_cast_for_access.269"
  %".5765" = bitcast ptr %"R37" to ptr
  store float %".5764", ptr %".5765"
  ; LDG.E.SYS R38, [R4+0xc]
  %".5768" = load i32, ptr %"R4"
  %"zext.600" = zext i32 %".5768" to i64
  %".5769" = load i32, ptr %"R5"
  %"zext.601" = zext i32 %".5769" to i64
  %"shl.317" = shl i64 %"zext.601", 32
  %"or.290" = or i64 %"shl.317", %"zext.600"
  %"ptr_plus_imm.196" = add i64 %"or.290", 12
  %"inttoptr_bytes.270" = inttoptr i64 %"ptr_plus_imm.196" to ptr addrspace(1)
  %"ptr_cast_for_access.270" = bitcast ptr addrspace(1) %"inttoptr_bytes.270" to ptr addrspace(1)
  %".5770" = load float, ptr addrspace(1) %"ptr_cast_for_access.270"
  %".5771" = bitcast ptr %"R38" to ptr
  store float %".5770", ptr %".5771"
  ; LDG.E.SYS R39, [R6+0xc]
  %".5774" = load i32, ptr %"R6"
  %"zext.602" = zext i32 %".5774" to i64
  %".5775" = load i32, ptr %"R7"
  %"zext.603" = zext i32 %".5775" to i64
  %"shl.318" = shl i64 %"zext.603", 32
  %"or.291" = or i64 %"shl.318", %"zext.602"
  %"ptr_plus_imm.197" = add i64 %"or.291", 12
  %"inttoptr_bytes.271" = inttoptr i64 %"ptr_plus_imm.197" to ptr addrspace(1)
  %"ptr_cast_for_access.271" = bitcast ptr addrspace(1) %"inttoptr_bytes.271" to ptr addrspace(1)
  %".5776" = load float, ptr addrspace(1) %"ptr_cast_for_access.271"
  %".5777" = bitcast ptr %"R39" to ptr
  store float %".5776", ptr %".5777"
  ; IADD3 R22, R22, -0x4, RZ
  %".5780" = load i32, ptr %"R22"
  %".5781" = add i32 %".5780", -4
  %".5782" = add i32 %".5781", 0
  store i32 %".5782", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".5785" = load i32, ptr %"R23"
  %".5786" = add i32 %".5785", 4
  %".5787" = add i32 %".5786", 0
  store i32 %".5787", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".5790" = load i32, ptr %"R22"
  %".5791" = load i1, ptr %"PT"
  %"cmp.48" = icmp ne i32 %".5790", 0
  %".5792" = xor i1 %"cmp.48", -1
  %".5793" = and i1 %"cmp.48", %".5791"
  %".5794" = and i1 %".5792", %".5791"
  store i1 %".5793", ptr %"P0"
  ; FFMA R11, R11, R13, R44
  %"cast_ptr.687" = bitcast ptr %"R11" to ptr
  %".5797" = load float, ptr %"cast_ptr.687"
  %"cast_ptr.688" = bitcast ptr %"R13" to ptr
  %".5798" = load float, ptr %"cast_ptr.688"
  %"cast_ptr.689" = bitcast ptr %"R44" to ptr
  %".5799" = load float, ptr %"cast_ptr.689"
  %"fmul.239" = fmul float %".5797", %".5798"
  %"fadd.220" = fadd float %"fmul.239", %".5799"
  %".5800" = bitcast ptr %"R11" to ptr
  store float %"fadd.220", ptr %".5800"
  ; FFMA R10, R13, R10, R56
  %"cast_ptr.690" = bitcast ptr %"R13" to ptr
  %".5803" = load float, ptr %"cast_ptr.690"
  %"cast_ptr.691" = bitcast ptr %"R10" to ptr
  %".5804" = load float, ptr %"cast_ptr.691"
  %"cast_ptr.692" = bitcast ptr %"R56" to ptr
  %".5805" = load float, ptr %"cast_ptr.692"
  %"fmul.240" = fmul float %".5803", %".5804"
  %"fadd.221" = fadd float %"fmul.240", %".5805"
  %".5806" = bitcast ptr %"R10" to ptr
  store float %"fadd.221", ptr %".5806"
  ; FFMA R11, R12, R25, R11
  %"cast_ptr.693" = bitcast ptr %"R12" to ptr
  %".5809" = load float, ptr %"cast_ptr.693"
  %"cast_ptr.694" = bitcast ptr %"R25" to ptr
  %".5810" = load float, ptr %"cast_ptr.694"
  %"cast_ptr.695" = bitcast ptr %"R11" to ptr
  %".5811" = load float, ptr %"cast_ptr.695"
  %"fmul.241" = fmul float %".5809", %".5810"
  %"fadd.222" = fadd float %"fmul.241", %".5811"
  %".5812" = bitcast ptr %"R11" to ptr
  store float %"fadd.222", ptr %".5812"
  ; FFMA R10, R25, R24, R10
  %"cast_ptr.696" = bitcast ptr %"R25" to ptr
  %".5815" = load float, ptr %"cast_ptr.696"
  %"cast_ptr.697" = bitcast ptr %"R24" to ptr
  %".5816" = load float, ptr %"cast_ptr.697"
  %"cast_ptr.698" = bitcast ptr %"R10" to ptr
  %".5817" = load float, ptr %"cast_ptr.698"
  %"fmul.242" = fmul float %".5815", %".5816"
  %"fadd.223" = fadd float %"fmul.242", %".5817"
  %".5818" = bitcast ptr %"R10" to ptr
  store float %"fadd.223", ptr %".5818"
  ; FFMA R11, R34, R35, R11
  %"cast_ptr.699" = bitcast ptr %"R34" to ptr
  %".5821" = load float, ptr %"cast_ptr.699"
  %"cast_ptr.700" = bitcast ptr %"R35" to ptr
  %".5822" = load float, ptr %"cast_ptr.700"
  %"cast_ptr.701" = bitcast ptr %"R11" to ptr
  %".5823" = load float, ptr %"cast_ptr.701"
  %"fmul.243" = fmul float %".5821", %".5822"
  %"fadd.224" = fadd float %"fmul.243", %".5823"
  %".5824" = bitcast ptr %"R11" to ptr
  store float %"fadd.224", ptr %".5824"
  ; FFMA R10, R35, R36, R10
  %"cast_ptr.702" = bitcast ptr %"R35" to ptr
  %".5827" = load float, ptr %"cast_ptr.702"
  %"cast_ptr.703" = bitcast ptr %"R36" to ptr
  %".5828" = load float, ptr %"cast_ptr.703"
  %"cast_ptr.704" = bitcast ptr %"R10" to ptr
  %".5829" = load float, ptr %"cast_ptr.704"
  %"fmul.244" = fmul float %".5827", %".5828"
  %"fadd.225" = fadd float %"fmul.244", %".5829"
  %".5830" = bitcast ptr %"R10" to ptr
  store float %"fadd.225", ptr %".5830"
  ; FFMA R44, R38, R37, R11
  %"cast_ptr.705" = bitcast ptr %"R38" to ptr
  %".5833" = load float, ptr %"cast_ptr.705"
  %"cast_ptr.706" = bitcast ptr %"R37" to ptr
  %".5834" = load float, ptr %"cast_ptr.706"
  %"cast_ptr.707" = bitcast ptr %"R11" to ptr
  %".5835" = load float, ptr %"cast_ptr.707"
  %"fmul.245" = fmul float %".5833", %".5834"
  %"fadd.226" = fadd float %"fmul.245", %".5835"
  %".5836" = bitcast ptr %"R44" to ptr
  store float %"fadd.226", ptr %".5836"
  ; FFMA R56, R37, R39, R10
  %"cast_ptr.708" = bitcast ptr %"R37" to ptr
  %".5839" = load float, ptr %"cast_ptr.708"
  %"cast_ptr.709" = bitcast ptr %"R39" to ptr
  %".5840" = load float, ptr %"cast_ptr.709"
  %"cast_ptr.710" = bitcast ptr %"R10" to ptr
  %".5841" = load float, ptr %"cast_ptr.710"
  %"fmul.246" = fmul float %".5839", %".5840"
  %"fadd.227" = fadd float %"fmul.246", %".5841"
  %".5842" = bitcast ptr %"R56" to ptr
  store float %"fadd.227", ptr %".5842"
  ; @P0 BRA `(.L_x_28)
  %".5845" = load i1, ptr %"P0"
  %".5846" = icmp eq i1 %".5845", 1
  br i1 %".5846", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5849" = load i32, ptr %"R48"
  %".5850" = load i1, ptr %"PT"
  %"cmp.49" = icmp ne i32 %".5849", 0
  %".5851" = xor i1 %"cmp.49", -1
  %".5852" = and i1 %"cmp.49", %".5850"
  %".5853" = and i1 %".5851", %".5850"
  store i1 %".5852", ptr %"P0"
  ; @!P0 BRA `(.L_x_26)
  %".5856" = load i1, ptr %"P0"
  %".5857" = icmp ne i1 %".5856", 1
  br i1 %".5857", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".5860" = load i32, ptr %"R0"
  %".5861" = load i32, ptr %"R23"
  %".5862" = add i32 %".5860", %".5861"
  %".5863" = add i32 %".5862", 0
  store i32 %".5863", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".5868" = load i32, ptr %"R2"
  %".5869" = load i32, ptr %"R5"
  %"shl.319" = shl i32 %".5868", 2
  %"add.18" = add i32 %"shl.319", %".5869"
  store i32 %"add.18", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".5872" = load i32, ptr %"R2"
  %".5873" = load i32, ptr %"R5"
  %"imad_mul.86" = mul i32 %".5872", 3
  %"imad_add.86" = add i32 %"imad_mul.86", %".5873"
  store i32 %"imad_add.86", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".5876" = load i32, ptr %"R23"
  %".5877" = load i32, ptr %"R9"
  %"imad_ext1.71" = zext i32 %".5876" to i64
  %"imad_ext2.71" = zext i32 %".5877" to i64
  %"imad_mul.87" = mul i64 %"imad_ext1.71", %"imad_ext2.71"
  %".5878" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.87" = add i64 %"imad_mul.87", %".5878"
  %".5879" = and i64 %"imad_add.87", 18446744069414584320
  %".5880" = lshr i64 %".5879", 32
  %"trunc32.162" = trunc i64 %".5880" to i32
  %"trunc32.163" = trunc i64 %"imad_add.87" to i32
  store i32 %"trunc32.163", ptr %"R4"
  store i32 %"trunc32.162", ptr %"R5"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".5884" = load i32, ptr %"R6"
  %".5885" = load i32, ptr %"R9"
  %"imad_ext1.72" = zext i32 %".5884" to i64
  %"imad_ext2.72" = zext i32 %".5885" to i64
  %"imad_mul.88" = mul i64 %"imad_ext1.72", %"imad_ext2.72"
  %".5886" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.88" = add i64 %"imad_mul.88", %".5886"
  %".5887" = and i64 %"imad_add.88", 18446744069414584320
  %".5888" = lshr i64 %".5887", 32
  %"trunc32.164" = trunc i64 %".5888" to i32
  %"trunc32.165" = trunc i64 %"imad_add.88" to i32
  store i32 %"trunc32.165", ptr %"R6"
  store i32 %"trunc32.164", ptr %"R7"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".5892" = load i32, ptr %"R8"
  %".5893" = load i32, ptr %"R9"
  %"imad_ext1.73" = zext i32 %".5892" to i64
  %"imad_ext2.73" = zext i32 %".5893" to i64
  %"imad_mul.89" = mul i64 %"imad_ext1.73", %"imad_ext2.73"
  %".5894" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.89" = add i64 %"imad_mul.89", %".5894"
  %".5895" = and i64 %"imad_add.89", 18446744069414584320
  %".5896" = lshr i64 %".5895", 32
  %"trunc32.166" = trunc i64 %".5896" to i32
  %"trunc32.167" = trunc i64 %"imad_add.89" to i32
  store i32 %"trunc32.167", ptr %"R8"
  store i32 %"trunc32.166", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".5900" = load i32, ptr %"R4"
  %"zext.604" = zext i32 %".5900" to i64
  %".5901" = load i32, ptr %"R5"
  %"zext.605" = zext i32 %".5901" to i64
  %"shl.320" = shl i64 %"zext.605", 32
  %"or.292" = or i64 %"shl.320", %"zext.604"
  %"inttoptr_bytes.272" = inttoptr i64 %"or.292" to ptr addrspace(1)
  %"ptr_cast_for_access.272" = bitcast ptr addrspace(1) %"inttoptr_bytes.272" to ptr addrspace(1)
  %".5902" = load float, ptr addrspace(1) %"ptr_cast_for_access.272"
  %".5903" = bitcast ptr %"R13" to ptr
  store float %".5902", ptr %".5903"
  ; LDG.E.SYS R11, [R6]
  %".5906" = load i32, ptr %"R6"
  %"zext.606" = zext i32 %".5906" to i64
  %".5907" = load i32, ptr %"R7"
  %"zext.607" = zext i32 %".5907" to i64
  %"shl.321" = shl i64 %"zext.607", 32
  %"or.293" = or i64 %"shl.321", %"zext.606"
  %"inttoptr_bytes.273" = inttoptr i64 %"or.293" to ptr addrspace(1)
  %"ptr_cast_for_access.273" = bitcast ptr addrspace(1) %"inttoptr_bytes.273" to ptr addrspace(1)
  %".5908" = load float, ptr addrspace(1) %"ptr_cast_for_access.273"
  %".5909" = bitcast ptr %"R11" to ptr
  store float %".5908", ptr %".5909"
  ; LDG.E.SYS R10, [R8]
  %".5912" = load i32, ptr %"R8"
  %"zext.608" = zext i32 %".5912" to i64
  %".5913" = load i32, ptr %"R9"
  %"zext.609" = zext i32 %".5913" to i64
  %"shl.322" = shl i64 %"zext.609", 32
  %"or.294" = or i64 %"shl.322", %"zext.608"
  %"inttoptr_bytes.274" = inttoptr i64 %"or.294" to ptr addrspace(1)
  %"ptr_cast_for_access.274" = bitcast ptr addrspace(1) %"inttoptr_bytes.274" to ptr addrspace(1)
  %".5914" = load float, ptr addrspace(1) %"ptr_cast_for_access.274"
  %".5915" = bitcast ptr %"R10" to ptr
  store float %".5914", ptr %".5915"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".5918" = load i32, ptr %"R48"
  %".5919" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".5918", 1
  %".5920" = xor i1 %"cmp.50", -1
  %".5921" = and i1 %"cmp.50", %".5919"
  %".5922" = and i1 %".5920", %".5919"
  store i1 %".5921", ptr %"P0"
  ; FFMA R44, R11, R13, R44
  %"cast_ptr.711" = bitcast ptr %"R11" to ptr
  %".5925" = load float, ptr %"cast_ptr.711"
  %"cast_ptr.712" = bitcast ptr %"R13" to ptr
  %".5926" = load float, ptr %"cast_ptr.712"
  %"cast_ptr.713" = bitcast ptr %"R44" to ptr
  %".5927" = load float, ptr %"cast_ptr.713"
  %"fmul.247" = fmul float %".5925", %".5926"
  %"fadd.228" = fadd float %"fmul.247", %".5927"
  %".5928" = bitcast ptr %"R44" to ptr
  store float %"fadd.228", ptr %".5928"
  ; FFMA R56, R13, R10, R56
  %"cast_ptr.714" = bitcast ptr %"R13" to ptr
  %".5931" = load float, ptr %"cast_ptr.714"
  %"cast_ptr.715" = bitcast ptr %"R10" to ptr
  %".5932" = load float, ptr %"cast_ptr.715"
  %"cast_ptr.716" = bitcast ptr %"R56" to ptr
  %".5933" = load float, ptr %"cast_ptr.716"
  %"fmul.248" = fmul float %".5931", %".5932"
  %"fadd.229" = fadd float %"fmul.248", %".5933"
  %".5934" = bitcast ptr %"R56" to ptr
  store float %"fadd.229", ptr %".5934"
  ; @!P0 BRA `(.L_x_26)
  %".5937" = load i1, ptr %"P0"
  %".5938" = icmp ne i1 %".5937", 1
  br i1 %".5938", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".5941" = load i32, ptr %"R48"
  %".5942" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".5941", 2
  %".5943" = xor i1 %"cmp.51", -1
  %".5944" = and i1 %"cmp.51", %".5942"
  %".5945" = and i1 %".5943", %".5942"
  store i1 %".5944", ptr %"P0"
  ; LDG.E.SYS R11, [R6+0x4]
  %".5948" = load i32, ptr %"R6"
  %"zext.610" = zext i32 %".5948" to i64
  %".5949" = load i32, ptr %"R7"
  %"zext.611" = zext i32 %".5949" to i64
  %"shl.323" = shl i64 %"zext.611", 32
  %"or.295" = or i64 %"shl.323", %"zext.610"
  %"ptr_plus_imm.198" = add i64 %"or.295", 4
  %"inttoptr_bytes.275" = inttoptr i64 %"ptr_plus_imm.198" to ptr addrspace(1)
  %"ptr_cast_for_access.275" = bitcast ptr addrspace(1) %"inttoptr_bytes.275" to ptr addrspace(1)
  %".5950" = load float, ptr addrspace(1) %"ptr_cast_for_access.275"
  %".5951" = bitcast ptr %"R11" to ptr
  store float %".5950", ptr %".5951"
  ; LDG.E.SYS R13, [R4+0x4]
  %".5954" = load i32, ptr %"R4"
  %"zext.612" = zext i32 %".5954" to i64
  %".5955" = load i32, ptr %"R5"
  %"zext.613" = zext i32 %".5955" to i64
  %"shl.324" = shl i64 %"zext.613", 32
  %"or.296" = or i64 %"shl.324", %"zext.612"
  %"ptr_plus_imm.199" = add i64 %"or.296", 4
  %"inttoptr_bytes.276" = inttoptr i64 %"ptr_plus_imm.199" to ptr addrspace(1)
  %"ptr_cast_for_access.276" = bitcast ptr addrspace(1) %"inttoptr_bytes.276" to ptr addrspace(1)
  %".5956" = load float, ptr addrspace(1) %"ptr_cast_for_access.276"
  %".5957" = bitcast ptr %"R13" to ptr
  store float %".5956", ptr %".5957"
  ; LDG.E.SYS R10, [R8+0x4]
  %".5960" = load i32, ptr %"R8"
  %"zext.614" = zext i32 %".5960" to i64
  %".5961" = load i32, ptr %"R9"
  %"zext.615" = zext i32 %".5961" to i64
  %"shl.325" = shl i64 %"zext.615", 32
  %"or.297" = or i64 %"shl.325", %"zext.614"
  %"ptr_plus_imm.200" = add i64 %"or.297", 4
  %"inttoptr_bytes.277" = inttoptr i64 %"ptr_plus_imm.200" to ptr addrspace(1)
  %"ptr_cast_for_access.277" = bitcast ptr addrspace(1) %"inttoptr_bytes.277" to ptr addrspace(1)
  %".5962" = load float, ptr addrspace(1) %"ptr_cast_for_access.277"
  %".5963" = bitcast ptr %"R10" to ptr
  store float %".5962", ptr %".5963"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".5966" = load i1, ptr %"P0"
  %".5967" = icmp eq i1 %".5966", 1
  br i1 %".5967", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".5970" = load i32, ptr %"R6"
  %"zext.616" = zext i32 %".5970" to i64
  %".5971" = load i32, ptr %"R7"
  %"zext.617" = zext i32 %".5971" to i64
  %"shl.326" = shl i64 %"zext.617", 32
  %"or.298" = or i64 %"shl.326", %"zext.616"
  %"ptr_plus_imm.201" = add i64 %"or.298", 8
  %"inttoptr_bytes.278" = inttoptr i64 %"ptr_plus_imm.201" to ptr addrspace(1)
  %"ptr_cast_for_access.278" = bitcast ptr addrspace(1) %"inttoptr_bytes.278" to ptr addrspace(1)
  %".5972" = load float, ptr addrspace(1) %"ptr_cast_for_access.278"
  %".5973" = bitcast ptr %"R23" to ptr
  store float %".5972", ptr %".5973"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".5978" = load i1, ptr %"P0"
  %".5979" = icmp eq i1 %".5978", 1
  br i1 %".5979", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".5982" = load i32, ptr %"R4"
  %"zext.618" = zext i32 %".5982" to i64
  %".5983" = load i32, ptr %"R5"
  %"zext.619" = zext i32 %".5983" to i64
  %"shl.327" = shl i64 %"zext.619", 32
  %"or.299" = or i64 %"shl.327", %"zext.618"
  %"ptr_plus_imm.202" = add i64 %"or.299", 8
  %"inttoptr_bytes.279" = inttoptr i64 %"ptr_plus_imm.202" to ptr addrspace(1)
  %"ptr_cast_for_access.279" = bitcast ptr addrspace(1) %"inttoptr_bytes.279" to ptr addrspace(1)
  %".5984" = load float, ptr addrspace(1) %"ptr_cast_for_access.279"
  %".5985" = bitcast ptr %"R25" to ptr
  store float %".5984", ptr %".5985"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".5990" = load i1, ptr %"P0"
  %".5991" = icmp eq i1 %".5990", 1
  br i1 %".5991", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".5994" = load i32, ptr %"R8"
  %"zext.620" = zext i32 %".5994" to i64
  %".5995" = load i32, ptr %"R9"
  %"zext.621" = zext i32 %".5995" to i64
  %"shl.328" = shl i64 %"zext.621", 32
  %"or.300" = or i64 %"shl.328", %"zext.620"
  %"ptr_plus_imm.203" = add i64 %"or.300", 8
  %"inttoptr_bytes.280" = inttoptr i64 %"ptr_plus_imm.203" to ptr addrspace(1)
  %"ptr_cast_for_access.280" = bitcast ptr addrspace(1) %"inttoptr_bytes.280" to ptr addrspace(1)
  %".5996" = load float, ptr addrspace(1) %"ptr_cast_for_access.280"
  %".5997" = bitcast ptr %"R12" to ptr
  store float %".5996", ptr %".5997"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %"cast_ptr.717" = bitcast ptr %"R11" to ptr
  %".6002" = load float, ptr %"cast_ptr.717"
  %"cast_ptr.718" = bitcast ptr %"R13" to ptr
  %".6003" = load float, ptr %"cast_ptr.718"
  %"cast_ptr.719" = bitcast ptr %"R44" to ptr
  %".6004" = load float, ptr %"cast_ptr.719"
  %"fmul.249" = fmul float %".6002", %".6003"
  %"fadd.230" = fadd float %"fmul.249", %".6004"
  %".6005" = bitcast ptr %"R44" to ptr
  store float %"fadd.230", ptr %".6005"
  ; FFMA R56, R13, R10, R56
  %"cast_ptr.720" = bitcast ptr %"R13" to ptr
  %".6008" = load float, ptr %"cast_ptr.720"
  %"cast_ptr.721" = bitcast ptr %"R10" to ptr
  %".6009" = load float, ptr %"cast_ptr.721"
  %"cast_ptr.722" = bitcast ptr %"R56" to ptr
  %".6010" = load float, ptr %"cast_ptr.722"
  %"fmul.250" = fmul float %".6008", %".6009"
  %"fadd.231" = fadd float %"fmul.250", %".6010"
  %".6011" = bitcast ptr %"R56" to ptr
  store float %"fadd.231", ptr %".6011"
  ; @P0 FFMA R44, R23, R25, R44
  %".6014" = load i1, ptr %"P0"
  %".6015" = icmp eq i1 %".6014", 1
  br i1 %".6015", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %"cast_ptr.723" = bitcast ptr %"R23" to ptr
  %".6018" = load float, ptr %"cast_ptr.723"
  %"cast_ptr.724" = bitcast ptr %"R25" to ptr
  %".6019" = load float, ptr %"cast_ptr.724"
  %"cast_ptr.725" = bitcast ptr %"R44" to ptr
  %".6020" = load float, ptr %"cast_ptr.725"
  %"fmul.251" = fmul float %".6018", %".6019"
  %"fadd.232" = fadd float %"fmul.251", %".6020"
  %".6021" = bitcast ptr %"R44" to ptr
  store float %"fadd.232", ptr %".6021"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".6026" = load i1, ptr %"P0"
  %".6027" = icmp eq i1 %".6026", 1
  br i1 %".6027", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %"cast_ptr.726" = bitcast ptr %"R25" to ptr
  %".6030" = load float, ptr %"cast_ptr.726"
  %"cast_ptr.727" = bitcast ptr %"R12" to ptr
  %".6031" = load float, ptr %"cast_ptr.727"
  %"cast_ptr.728" = bitcast ptr %"R56" to ptr
  %".6032" = load float, ptr %"cast_ptr.728"
  %"fmul.252" = fmul float %".6030", %".6031"
  %"fadd.233" = fadd float %"fmul.252", %".6032"
  %".6033" = bitcast ptr %"R56" to ptr
  store float %"fadd.233", ptr %".6033"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".6038" = load i32, ptr %"R26"
  %"zext.622" = zext i32 %".6038" to i64
  %".6039" = load i32, ptr %"R27"
  %"zext.623" = zext i32 %".6039" to i64
  %"shl.329" = shl i64 %"zext.623", 32
  %"or.301" = or i64 %"shl.329", %"zext.622"
  %"inttoptr_bytes.281" = inttoptr i64 %"or.301" to ptr addrspace(1)
  %"ptr_cast_for_access.281" = bitcast ptr addrspace(1) %"inttoptr_bytes.281" to ptr addrspace(1)
  %".6040" = load float, ptr addrspace(1) %"ptr_cast_for_access.281"
  %".6041" = bitcast ptr %"R5" to ptr
  store float %".6040", ptr %".6041"
  ; MOV R4, 0x3bbb989d
  %".6044" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6044"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".6048" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6048"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %"cast_ptr.729" = bitcast ptr %"R5" to ptr
  %".6052" = load float, ptr %"cast_ptr.729"
  %"cast_ptr.730" = bitcast ptr %"R44" to ptr
  %".6053" = load float, ptr %"cast_ptr.730"
  %"fadd.234" = fadd float %".6052", %".6053"
  %".6054" = bitcast ptr %"R5" to ptr
  store float %"fadd.234", ptr %".6054"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %"cast_ptr.731" = bitcast ptr %"R5" to ptr
  %".6057" = load float, ptr %"cast_ptr.731"
  %".6058" = fneg float %".6057"
  %"cast_ptr.732" = bitcast ptr %"R4" to ptr
  %".6059" = load float, ptr %"cast_ptr.732"
  %"fmul.253" = fmul float %".6058", %".6059"
  %"fadd.235" = fadd float %"fmul.253", 0x3fe0000000000000
  %".6060" = bitcast ptr %"R4" to ptr
  store float %"fadd.235", ptr %".6060"
  ; FFMA.RM R4, R4, R7, 12582913
  %"cast_ptr.733" = bitcast ptr %"R4" to ptr
  %".6063" = load float, ptr %"cast_ptr.733"
  %"cast_ptr.734" = bitcast ptr %"R7" to ptr
  %".6064" = load float, ptr %"cast_ptr.734"
  %"fmul.254" = fmul float %".6063", %".6064"
  %"fadd.236" = fadd float %"fmul.254", 0x4168000020000000
  %".6065" = bitcast ptr %"R4" to ptr
  store float %"fadd.236", ptr %".6065"
  ; FADD R6, R4.reuse, -12583039
  %"cast_ptr.735" = bitcast ptr %"R4" to ptr
  %".6068" = load float, ptr %"cast_ptr.735"
  %"fadd.237" = fadd float %".6068", 0xc168000fe0000000
  %".6069" = bitcast ptr %"R6" to ptr
  store float %"fadd.237", ptr %".6069"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".6072" = icmp ult i32 23, 32
  %"SHF_min.20" = select  i1 %".6072", i32 23, i32 32
  %".6073" = load i32, ptr %"R4"
  %"zext.624" = zext i32 0 to i64
  %"zext.625" = zext i32 %".6073" to i64
  %"zext.626" = zext i32 23 to i64
  %"shl.330" = shl i64 %"zext.624", 32
  %"or.302" = or i64 %"shl.330", %"zext.625"
  %"shl.331" = shl i64 %"or.302", %"zext.626"
  %"and.12" = and i64 %"shl.331", 4294967295
  %"trunc32.168" = trunc i64 %"and.12" to i32
  store i32 %"trunc32.168", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %"cast_ptr.736" = bitcast ptr %"R5" to ptr
  %".6076" = load float, ptr %"cast_ptr.736"
  %".6077" = fneg float %".6076"
  %"cast_ptr.737" = bitcast ptr %"R6" to ptr
  %".6078" = load float, ptr %"cast_ptr.737"
  %".6079" = fneg float %".6078"
  %"fmul.255" = fmul float %".6077", 0x3ff7154760000000
  %"fadd.238" = fadd float %"fmul.255", %".6079"
  %".6080" = bitcast ptr %"R6" to ptr
  store float %"fadd.238", ptr %".6080"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %"cast_ptr.738" = bitcast ptr %"R5" to ptr
  %".6083" = load float, ptr %"cast_ptr.738"
  %".6084" = fneg float %".6083"
  %"cast_ptr.739" = bitcast ptr %"R6" to ptr
  %".6085" = load float, ptr %"cast_ptr.739"
  %"fmul.256" = fmul float %".6084", 0x3e54ae0c00000000
  %"fadd.239" = fadd float %"fmul.256", %".6085"
  %".6086" = bitcast ptr %"R6" to ptr
  store float %"fadd.239", ptr %".6086"
  ; MUFU.EX2 R5, R6
  %"cast_ptr.740" = bitcast ptr %"R6" to ptr
  %".6089" = load float, ptr %"cast_ptr.740"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".6089")
  %".6090" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".6090"
  ; FFMA R24, R4, R5, 1
  %"cast_ptr.741" = bitcast ptr %"R4" to ptr
  %".6093" = load float, ptr %"cast_ptr.741"
  %"cast_ptr.742" = bitcast ptr %"R5" to ptr
  %".6094" = load float, ptr %"cast_ptr.742"
  %"fmul.257" = fmul float %".6093", %".6094"
  %"fadd.240" = fadd float %"fmul.257", 0x3ff0000000000000
  %".6095" = bitcast ptr %"R24" to ptr
  store float %"fadd.240", ptr %".6095"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".6098" = load i32, ptr %"R24"
  %".6099" = add i32 %".6098", 25165824
  %".6100" = add i32 %".6099", 0
  store i32 %".6100", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".6103" = load i32, ptr %"R4"
  %".6104" = xor i1 1, -1
  %".6105" = and i32 %".6103", 2139095040
  store i32 %".6105", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".6108" = load i32, ptr %"R4"
  %".6109" = load i1, ptr %"PT"
  %"cmp.52" = icmp sgt i32 %".6108", 33554431
  %".6110" = xor i1 %"cmp.52", -1
  %".6111" = and i1 %"cmp.52", %".6109"
  %".6112" = and i1 %".6110", %".6109"
  store i1 %".6111", ptr %"P0"
  ; @P0 BRA `(.L_x_33)
  %".6115" = load i1, ptr %"P0"
  %".6116" = icmp eq i1 %".6115", 1
  br i1 %".6116", label %".L_x_33", label %".L_x_26_split_0x3910_CALL_0x3930"
.L_x_26_split_0x3910_CALL_0x3930:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6123" = icmp ult i32 1, 32
  %"SHF_min.21" = select  i1 %".6123", i32 1, i32 32
  %".6124" = load i32, ptr %"R24"
  %"zext.627" = zext i32 0 to i64
  %"zext.628" = zext i32 %".6124" to i64
  %"zext.629" = zext i32 1 to i64
  %"shl.332" = shl i64 %"zext.627", 32
  %"or.303" = or i64 %"shl.332", %"zext.628"
  %"shl.333" = shl i64 %"or.303", %"zext.629"
  %"and.13" = and i64 %"shl.333", 4294967295
  %"trunc32.169" = trunc i64 %"and.13" to i32
  store i32 %"trunc32.169", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".6129" = icmp ult i32 24, 32
  %"SHF_min.22" = select  i1 %".6129", i32 24, i32 32
  %".6130" = load i32, ptr %"R11"
  %"zext.630" = zext i32 %".6130" to i64
  %"zext.631" = zext i32 0 to i64
  %"zext.632" = zext i32 24 to i64
  %"shl.334" = shl i64 %"zext.630", 32
  %"or.304" = or i64 %"shl.334", %"zext.631"
  %"lshr.13" = lshr i64 %"or.304", %"zext.632"
  %"lshr.14" = lshr i64 %"lshr.13", 32
  %"trunc32.170" = trunc i64 %"lshr.14" to i32
  store i32 %"trunc32.170", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".6133" = load i32, ptr %"R25"
  %".6134" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6133", 0
  %".6135" = xor i1 %"cmp.53", -1
  %".6136" = and i1 %"cmp.53", %".6134"
  %".6137" = and i1 %".6135", %".6134"
  store i1 %".6136", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".6140" = load i1, ptr %"P0"
  %".6141" = icmp eq i1 %".6140", 1
  br i1 %".6141", label %".L_x_49...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6144" = icmp ult i32 1, 32
  %"SHF_min.23" = select  i1 %".6144", i32 1, i32 32
  %".6145" = load i32, ptr %"R24"
  %"zext.633" = zext i32 0 to i64
  %"zext.634" = zext i32 %".6145" to i64
  %"zext.635" = zext i32 1 to i64
  %"shl.335" = shl i64 %"zext.633", 32
  %"or.305" = or i64 %"shl.335", %"zext.634"
  %"shl.336" = shl i64 %"or.305", %"zext.635"
  %"and.14" = and i64 %"shl.336", 4294967295
  %"trunc32.171" = trunc i64 %"and.14" to i32
  store i32 %"trunc32.171", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".6148" = load i32, ptr %"R11"
  %".6149" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6148", 0
  %".6150" = xor i1 %"cmp.54", -1
  %".6151" = and i1 %"cmp.54", %".6149"
  %".6152" = and i1 %".6150", %".6149"
  store i1 %".6151", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6155" = load i1, ptr %"P0"
  %".6156" = icmp eq i1 %".6155", 1
  br i1 %".6156", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %"cast_ptr.743" = bitcast ptr %"R24" to ptr
  %".6159" = load float, ptr %"cast_ptr.743"
  %"fmul.258" = fmul float %".6159", 0x43f0000000000000
  %"fadd.241" = fadd float %"fmul.258",              0x0
  %".6160" = bitcast ptr %"R12" to ptr
  store float %"fadd.241", ptr %".6160"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %"cast_ptr.744" = bitcast ptr %"R24" to ptr
  %".6165" = load float, ptr %"cast_ptr.744"
  %"fmul.259" = fmul float %".6165", 0x43f0000000000000
  %"fadd.242" = fadd float %"fmul.259",              0x0
  %".6166" = bitcast ptr %"R12" to ptr
  store float %"fadd.242", ptr %".6166"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3:
  ; @!P0 MUFU.RCP R11, R24
  %".6171" = load i1, ptr %"P0"
  %".6172" = icmp ne i1 %".6171", 1
  br i1 %".6172", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %"cast_ptr.745" = bitcast ptr %"R24" to ptr
  %".6175" = load float, ptr %"cast_ptr.745"
  %".6176" = fdiv float 0x3ff0000000000000, %".6175"
  %".6177" = bitcast ptr %"R11" to ptr
  store float %".6176", ptr %".6177"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3:
  ; MUFU.RCP R11, R24
  %"cast_ptr.746" = bitcast ptr %"R24" to ptr
  %".6182" = load float, ptr %"cast_ptr.746"
  %".6183" = fdiv float 0x3ff0000000000000, %".6182"
  %".6184" = bitcast ptr %"R11" to ptr
  store float %".6183", ptr %".6184"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3:
  ; @P0 MUFU.RCP R13, R12
  %".6189" = load i1, ptr %"P0"
  %".6190" = icmp eq i1 %".6189", 1
  br i1 %".6190", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %"cast_ptr.747" = bitcast ptr %"R12" to ptr
  %".6193" = load float, ptr %"cast_ptr.747"
  %".6194" = fdiv float 0x3ff0000000000000, %".6193"
  %".6195" = bitcast ptr %"R13" to ptr
  store float %".6194", ptr %".6195"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3:
  ; MUFU.RCP R13, R12
  %"cast_ptr.748" = bitcast ptr %"R12" to ptr
  %".6200" = load float, ptr %"cast_ptr.748"
  %".6201" = fdiv float 0x3ff0000000000000, %".6200"
  %".6202" = bitcast ptr %"R13" to ptr
  store float %".6201", ptr %".6202"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3:
  ; @P0 FFMA R22, R12, R13, -1
  %".6207" = load i1, ptr %"P0"
  %".6208" = icmp eq i1 %".6207", 1
  br i1 %".6208", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %"cast_ptr.749" = bitcast ptr %"R12" to ptr
  %".6211" = load float, ptr %"cast_ptr.749"
  %"cast_ptr.750" = bitcast ptr %"R13" to ptr
  %".6212" = load float, ptr %"cast_ptr.750"
  %"fmul.260" = fmul float %".6211", %".6212"
  %"fadd.243" = fadd float %"fmul.260", 0xbff0000000000000
  %".6213" = bitcast ptr %"R22" to ptr
  store float %"fadd.243", ptr %".6213"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3:
  ; FFMA R22, R12, R13, -1
  %"cast_ptr.751" = bitcast ptr %"R12" to ptr
  %".6218" = load float, ptr %"cast_ptr.751"
  %"cast_ptr.752" = bitcast ptr %"R13" to ptr
  %".6219" = load float, ptr %"cast_ptr.752"
  %"fmul.261" = fmul float %".6218", %".6219"
  %"fadd.244" = fadd float %"fmul.261", 0xbff0000000000000
  %".6220" = bitcast ptr %"R22" to ptr
  store float %"fadd.244", ptr %".6220"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".6225" = load i1, ptr %"P0"
  %".6226" = icmp eq i1 %".6225", 1
  br i1 %".6226", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %"cast_ptr.753" = bitcast ptr %"R22" to ptr
  %".6229" = load float, ptr %"cast_ptr.753"
  %".6230" = fneg float %".6229"
  %".6231" = call float @"llvm.fabs"(float %".6230")
  %".6232" = fcmp ogt float %".6231",              0x0
  %".6233" = fcmp olt float %".6231", 0x3810000000000000
  %".6234" = and i1 %".6232", %".6233"
  %".6235" = select  i1 %".6234", float              0x0, float %".6230"
  %".6236" = call float @"llvm.fabs"(float              0x0)
  %".6237" = fcmp ogt float %".6236",              0x0
  %".6238" = fcmp olt float %".6236", 0x3810000000000000
  %".6239" = and i1 %".6237", %".6238"
  %".6240" = select  i1 %".6239", float              0x0, float              0x0
  %"fadd.245" = fadd float %".6235", %".6240"
  %".6241" = call float @"llvm.fabs"(float %"fadd.245")
  %".6242" = fcmp ogt float %".6241",              0x0
  %".6243" = fcmp olt float %".6241", 0x3810000000000000
  %".6244" = and i1 %".6242", %".6243"
  %".6245" = select  i1 %".6244", float              0x0, float %"fadd.245"
  %".6246" = bitcast ptr %"R22" to ptr
  store float %".6245", ptr %".6246"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3:
  ; FADD.FTZ R22, -R22, -RZ
  %"cast_ptr.754" = bitcast ptr %"R22" to ptr
  %".6251" = load float, ptr %"cast_ptr.754"
  %".6252" = fneg float %".6251"
  %".6253" = call float @"llvm.fabs"(float %".6252")
  %".6254" = fcmp ogt float %".6253",              0x0
  %".6255" = fcmp olt float %".6253", 0x3810000000000000
  %".6256" = and i1 %".6254", %".6255"
  %".6257" = select  i1 %".6256", float              0x0, float %".6252"
  %".6258" = call float @"llvm.fabs"(float              0x0)
  %".6259" = fcmp ogt float %".6258",              0x0
  %".6260" = fcmp olt float %".6258", 0x3810000000000000
  %".6261" = and i1 %".6259", %".6260"
  %".6262" = select  i1 %".6261", float              0x0, float              0x0
  %"fadd.246" = fadd float %".6257", %".6262"
  %".6263" = call float @"llvm.fabs"(float %"fadd.246")
  %".6264" = fcmp ogt float %".6263",              0x0
  %".6265" = fcmp olt float %".6263", 0x3810000000000000
  %".6266" = and i1 %".6264", %".6265"
  %".6267" = select  i1 %".6266", float              0x0, float %"fadd.246"
  %".6268" = bitcast ptr %"R22" to ptr
  store float %".6267", ptr %".6268"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3:
  ; @P0 FFMA R22, R13, R22, R13
  %".6273" = load i1, ptr %"P0"
  %".6274" = icmp eq i1 %".6273", 1
  br i1 %".6274", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %"cast_ptr.755" = bitcast ptr %"R13" to ptr
  %".6277" = load float, ptr %"cast_ptr.755"
  %"cast_ptr.756" = bitcast ptr %"R22" to ptr
  %".6278" = load float, ptr %"cast_ptr.756"
  %"cast_ptr.757" = bitcast ptr %"R13" to ptr
  %".6279" = load float, ptr %"cast_ptr.757"
  %"fmul.262" = fmul float %".6277", %".6278"
  %"fadd.247" = fadd float %"fmul.262", %".6279"
  %".6280" = bitcast ptr %"R22" to ptr
  store float %"fadd.247", ptr %".6280"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3:
  ; FFMA R22, R13, R22, R13
  %"cast_ptr.758" = bitcast ptr %"R13" to ptr
  %".6285" = load float, ptr %"cast_ptr.758"
  %"cast_ptr.759" = bitcast ptr %"R22" to ptr
  %".6286" = load float, ptr %"cast_ptr.759"
  %"cast_ptr.760" = bitcast ptr %"R13" to ptr
  %".6287" = load float, ptr %"cast_ptr.760"
  %"fmul.263" = fmul float %".6285", %".6286"
  %"fadd.248" = fadd float %"fmul.263", %".6287"
  %".6288" = bitcast ptr %"R22" to ptr
  store float %"fadd.248", ptr %".6288"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6293" = load i1, ptr %"P0"
  %".6294" = icmp eq i1 %".6293", 1
  br i1 %".6294", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %"cast_ptr.761" = bitcast ptr %"R22" to ptr
  %".6297" = load float, ptr %"cast_ptr.761"
  %"fmul.264" = fmul float %".6297", 0x43f0000000000000
  %"fadd.249" = fadd float %"fmul.264",              0x0
  %".6298" = bitcast ptr %"R11" to ptr
  store float %"fadd.249", ptr %".6298"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %"cast_ptr.762" = bitcast ptr %"R22" to ptr
  %".6303" = load float, ptr %"cast_ptr.762"
  %"fmul.265" = fmul float %".6303", 0x43f0000000000000
  %"fadd.250" = fadd float %"fmul.265",              0x0
  %".6304" = bitcast ptr %"R11" to ptr
  store float %"fadd.250", ptr %".6304"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3:
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_49...3:
  ; IADD3 R34, R25, -0xfd, RZ
  %".6311" = load i32, ptr %"R25"
  %".6312" = add i32 %".6311", -253
  %".6313" = add i32 %".6312", 0
  store i32 %".6313", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".6316" = load i32, ptr %"R34"
  %".6317" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6316", 1
  %".6318" = xor i1 %"cmp.55", -1
  %".6319" = and i1 %"cmp.55", %".6317"
  %".6320" = and i1 %".6318", %".6317"
  store i1 %".6319", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".6323" = load i1, ptr %"P0"
  %".6324" = icmp eq i1 %".6323", 1
  br i1 %".6324", label %".L_x_51...3", label %".L_x_49_split_0x4a30...3"
.L_x_49_split_0x4a30...3:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6327" = load i32, ptr %"R24"
  %".6328" = xor i1 1, -1
  %".6329" = and i32 %".6327", 8388607
  store i32 %".6329", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".6334" = load i32, ptr %"R11"
  %".6335" = xor i1 1, -1
  %".6336" = or i32 %".6334", 1065353216
  store i32 %".6336", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".6339" = load i32, ptr %"R34"
  %".6340" = icmp ult i32 %".6339", 32
  %"SHF_min.24" = select  i1 %".6340", i32 %".6339", i32 32
  %".6341" = load i32, ptr %"R23"
  %".6342" = load i32, ptr %"R34"
  %"zext.636" = zext i32 0 to i64
  %"zext.637" = zext i32 %".6341" to i64
  %"zext.638" = zext i32 %".6342" to i64
  %"shl.337" = shl i64 %"zext.636", 32
  %"or.306" = or i64 %"shl.337", %"zext.637"
  %"shl.338" = shl i64 %"or.306", %"zext.638"
  %"and.15" = and i64 %"shl.338", 4294967295
  %"trunc32.172" = trunc i64 %"and.15" to i32
  store i32 %"trunc32.172", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".6345" = load i32, ptr %"R11"
  %"sint_to_f32.5" = sitofp i32 %".6345" to float
  %".6346" = fdiv float 0x3ff0000000000000, %"sint_to_f32.5"
  %".6347" = fptosi float %".6346" to i32
  store i32 %".6347", ptr %"R12"
  ; FFMA R13, R11, R12, -1
  %"cast_ptr.763" = bitcast ptr %"R11" to ptr
  %".6350" = load float, ptr %"cast_ptr.763"
  %"cast_ptr.764" = bitcast ptr %"R12" to ptr
  %".6351" = load float, ptr %"cast_ptr.764"
  %"fmul.266" = fmul float %".6350", %".6351"
  %"fadd.251" = fadd float %"fmul.266", 0xbff0000000000000
  %".6352" = bitcast ptr %"R13" to ptr
  store float %"fadd.251", ptr %".6352"
  ; FADD.FTZ R13, -R13, -RZ
  %"cast_ptr.765" = bitcast ptr %"R13" to ptr
  %".6355" = load float, ptr %"cast_ptr.765"
  %".6356" = fneg float %".6355"
  %".6357" = call float @"llvm.fabs"(float %".6356")
  %".6358" = fcmp ogt float %".6357",              0x0
  %".6359" = fcmp olt float %".6357", 0x3810000000000000
  %".6360" = and i1 %".6358", %".6359"
  %".6361" = select  i1 %".6360", float              0x0, float %".6356"
  %".6362" = call float @"llvm.fabs"(float              0x0)
  %".6363" = fcmp ogt float %".6362",              0x0
  %".6364" = fcmp olt float %".6362", 0x3810000000000000
  %".6365" = and i1 %".6363", %".6364"
  %".6366" = select  i1 %".6365", float              0x0, float              0x0
  %"fadd.252" = fadd float %".6361", %".6366"
  %".6367" = call float @"llvm.fabs"(float %"fadd.252")
  %".6368" = fcmp ogt float %".6367",              0x0
  %".6369" = fcmp olt float %".6367", 0x3810000000000000
  %".6370" = and i1 %".6368", %".6369"
  %".6371" = select  i1 %".6370", float              0x0, float %"fadd.252"
  %".6372" = bitcast ptr %"R13" to ptr
  store float %".6371", ptr %".6372"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %"cast_ptr.766" = bitcast ptr %"R12" to ptr
  %".6375" = load float, ptr %"cast_ptr.766"
  %"cast_ptr.767" = bitcast ptr %"R13" to ptr
  %".6376" = load float, ptr %"cast_ptr.767"
  %"cast_ptr.768" = bitcast ptr %"R12" to ptr
  %".6377" = load float, ptr %"cast_ptr.768"
  %"fmul.267" = fmul float %".6375", %".6376"
  %"fadd.253" = fadd float %"fmul.267", %".6377"
  %".6378" = bitcast ptr %"R22" to ptr
  store float %"fadd.253", ptr %".6378"
  ; FFMA.RP R13, R12, R13, R12
  %"cast_ptr.769" = bitcast ptr %"R12" to ptr
  %".6381" = load float, ptr %"cast_ptr.769"
  %"cast_ptr.770" = bitcast ptr %"R13" to ptr
  %".6382" = load float, ptr %"cast_ptr.770"
  %"cast_ptr.771" = bitcast ptr %"R12" to ptr
  %".6383" = load float, ptr %"cast_ptr.771"
  %"fmul.268" = fmul float %".6381", %".6382"
  %"fadd.254" = fadd float %"fmul.268", %".6383"
  %".6384" = bitcast ptr %"R13" to ptr
  store float %"fadd.254", ptr %".6384"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".6387" = load i32, ptr %"R22"
  %".6388" = xor i1 1, -1
  %".6389" = and i32 %".6387", 8388607
  store i32 %".6389", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %"cast_ptr.772" = bitcast ptr %"R22" to ptr
  %".6392" = load float, ptr %"cast_ptr.772"
  %"cast_ptr.773" = bitcast ptr %"R13" to ptr
  %".6393" = load float, ptr %"cast_ptr.773"
  %".6394" = load i1, ptr %"PT"
  %".6395" = call float @"llvm.fabs"(float %".6392")
  %".6396" = fcmp ogt float %".6395",              0x0
  %".6397" = fcmp olt float %".6395", 0x3810000000000000
  %".6398" = and i1 %".6396", %".6397"
  %".6399" = select  i1 %".6398", float              0x0, float %".6392"
  %".6400" = call float @"llvm.fabs"(float %".6393")
  %".6401" = fcmp ogt float %".6400",              0x0
  %".6402" = fcmp olt float %".6400", 0x3810000000000000
  %".6403" = and i1 %".6401", %".6402"
  %".6404" = select  i1 %".6403", float              0x0, float %".6393"
  %"fcmp_ordered.2" = fcmp une float %".6399", %".6404"
  %".6405" = xor i1 %"fcmp_ordered.2", -1
  %".6406" = and i1 %"fcmp_ordered.2", %".6394"
  %".6407" = and i1 %".6405", %".6394"
  store i1 %".6406", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".6410" = load i32, ptr %"R12"
  %".6411" = xor i1 1, -1
  %".6412" = or i32 %".6410", 8388608
  store i32 %".6412", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".6415" = load i1, ptr %"P0"
  %".6416" = xor i1 %".6415", -1
  %".6417" = icmp eq i1 %".6416", 1
  %"sel.4" = select  i1 %".6417", i32 0, i32 4294967295
  store i32 %"sel.4", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".6420" = load i32, ptr %"R23"
  %".6421" = load i32, ptr %"R12"
  %".6422" = xor i1 1, -1
  %".6423" = and i32 %".6420", %".6421"
  store i32 %".6423", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".6426" = load i32, ptr %"R13"
  %".6427" = sub i32 0, %".6426"
  %".6428" = add i32 %".6427", 0
  %".6429" = add i32 %".6428", 0
  store i32 %".6429", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".6432" = load i32, ptr %"R34"
  %".6433" = icmp ult i32 %".6432", 32
  %"SHF_min.25" = select  i1 %".6433", i32 %".6432", i32 32
  %".6434" = load i32, ptr %"R23"
  %".6435" = load i32, ptr %"R34"
  %"zext.639" = zext i32 %".6434" to i64
  %"zext.640" = zext i32 0 to i64
  %"zext.641" = zext i32 %".6435" to i64
  %"shl.339" = shl i64 %"zext.639", 32
  %"or.307" = or i64 %"shl.339", %"zext.640"
  %"lshr.15" = lshr i64 %"or.307", %"zext.641"
  %"lshr.16" = lshr i64 %"lshr.15", 32
  %"trunc32.173" = trunc i64 %"lshr.16" to i32
  store i32 %"trunc32.173", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".6438" = load i32, ptr %"R13"
  %".6439" = load i32, ptr %"R34"
  %".6440" = load i32, ptr %"R12"
  %".6441" = xor i1 1, -1
  %".6442" = or i32 %".6438", %".6439"
  %".6443" = or i32 %".6438", %".6440"
  %".6444" = and i32 %".6442", %".6443"
  store i32 %".6444", ptr %"RZ"
  %".6446" = icmp ne i32 %".6444", 0
  store i1 %".6446", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".6449" = load i32, ptr %"R23"
  %".6450" = xor i1 1, -1
  %".6451" = and i32 %".6449", 1
  store i32 %".6451", ptr %"RZ"
  %".6453" = icmp ne i32 %".6451", 0
  store i1 %".6453", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".6456" = load i32, ptr %"R23"
  %".6457" = xor i1 1, -1
  %".6458" = and i32 %".6456", 2
  store i32 %".6458", ptr %"RZ"
  %".6460" = icmp ne i32 %".6458", 0
  store i1 %".6460", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".6463" = load i1, ptr %"P0"
  %".6464" = load i1, ptr %"P1"
  %".6465" = or i1 %".6463", %".6464"
  %".6466" = and i1 %".6465", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6468" = load i32, ptr %"R24"
  %".6469" = xor i1 1, -1
  %".6470" = and i32 %".6468", 8388607
  store i32 %".6470", ptr %"RZ"
  %".6472" = icmp ne i32 %".6470", 0
  store i1 %".6472", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".6475" = load i1, ptr %"P0"
  %".6476" = xor i1 %".6475", -1
  %".6477" = icmp eq i1 %".6476", 1
  %"sel.5" = select  i1 %".6477", i32 0, i32 1
  store i32 %"sel.5", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".6480" = load i32, ptr %"R11"
  %".6481" = sub i32 0, %".6480"
  %".6482" = add i32 %".6481", 0
  %".6483" = add i32 %".6482", 0
  store i32 %".6483", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".6486" = load i32, ptr %"R11"
  %".6487" = load i1, ptr %"PT"
  %"cmp.56" = icmp sge i32 %".6486", 0
  %".6488" = xor i1 %"cmp.56", -1
  %".6489" = and i1 %"cmp.56", %".6487"
  %".6490" = and i1 %".6488", %".6487"
  store i1 %".6489", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".6493" = load i32, ptr %"R25"
  %".6494" = add i32 %".6493", -252
  %".6495" = add i32 %".6494", 0
  store i32 %".6495", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".6498" = load i32, ptr %"R11"
  %".6499" = icmp ult i32 %".6498", 32
  %"SHF_min.26" = select  i1 %".6499", i32 %".6498", i32 32
  %".6500" = load i32, ptr %"R12"
  %".6501" = load i32, ptr %"R11"
  %"zext.642" = zext i32 %".6500" to i64
  %"zext.643" = zext i32 0 to i64
  %"zext.644" = zext i32 %".6501" to i64
  %"shl.340" = shl i64 %"zext.642", 32
  %"or.308" = or i64 %"shl.340", %"zext.643"
  %"lshr.17" = lshr i64 %"or.308", %"zext.644"
  %"lshr.18" = lshr i64 %"lshr.17", 32
  %"trunc32.174" = trunc i64 %"lshr.18" to i32
  store i32 %"trunc32.174", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".6504" = load i1, ptr %"P0"
  %".6505" = icmp ne i1 %".6504", 1
  br i1 %".6505", label %".L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".6508" = load i32, ptr %"R11"
  %".6509" = add i32 %".6508", 1
  %".6510" = add i32 %".6509", 0
  store i32 %".6510", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3:
  ; IADD3 R11, R11, 0x1, RZ
  %".6515" = load i32, ptr %"R11"
  %".6516" = add i32 %".6515", 1
  %".6517" = add i32 %".6516", 0
  store i32 %".6517", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...3"
.L_x_49_split_0x4be0...3:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".6522" = load i1, ptr %"P1"
  %".6523" = icmp ne i1 %".6522", 1
  br i1 %".6523", label %".L_x_49_split_0x4be0...3_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0...3_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6526" = icmp ult i32 1, 32
  %"SHF_min.27" = select  i1 %".6526", i32 1, i32 32
  %".6527" = load i32, ptr %"R11"
  %"zext.645" = zext i32 0 to i64
  %"zext.646" = zext i32 %".6527" to i64
  %"zext.647" = zext i32 1 to i64
  %"shl.341" = shl i64 %"zext.645", 32
  %"or.309" = or i64 %"shl.341", %"zext.646"
  %"shl.342" = shl i64 %"or.309", %"zext.647"
  %"and.16" = and i64 %"shl.342", 4294967295
  %"trunc32.175" = trunc i64 %"and.16" to i32
  store i32 %"trunc32.175", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...3:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6532" = icmp ult i32 1, 32
  %"SHF_min.28" = select  i1 %".6532", i32 1, i32 32
  %".6533" = load i32, ptr %"R11"
  %"zext.648" = zext i32 0 to i64
  %"zext.649" = zext i32 %".6533" to i64
  %"zext.650" = zext i32 1 to i64
  %"shl.343" = shl i64 %"zext.648", 32
  %"or.310" = or i64 %"shl.343", %"zext.649"
  %"shl.344" = shl i64 %"or.310", %"zext.650"
  %"and.17" = and i64 %"shl.344", 4294967295
  %"trunc32.176" = trunc i64 %"and.17" to i32
  store i32 %"trunc32.176", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...3"
.L_x_49_split_0x4bf0...3:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".6538" = load i32, ptr %"R11"
  %".6539" = load i32, ptr %"R24"
  %".6540" = xor i1 1, -1
  %".6541" = or i32 %".6538", 2147483648
  %".6542" = or i32 %".6538", %".6539"
  %".6543" = and i32 %".6541", %".6542"
  store i32 %".6543", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_51...3:
  ; MUFU.RCP R11, R24
  %"cast_ptr.774" = bitcast ptr %"R24" to ptr
  %".6548" = load float, ptr %"cast_ptr.774"
  %".6549" = fdiv float 0x3ff0000000000000, %".6548"
  %".6550" = bitcast ptr %"R11" to ptr
  store float %".6549", ptr %".6550"
  br label %".L_x_50...3"
.L_x_50...3:
  ; BSYNC B1
  br label %".L_x_48...3"
.L_x_48...3:
  ; MOV R22, R11
  %"cast_ptr.775" = bitcast ptr %"R11" to ptr
  %".6556" = load float, ptr %"cast_ptr.775"
  %".6557" = bitcast ptr %"R22" to ptr
  store float %".6556", ptr %".6557"
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
  %"cast_ptr.776" = bitcast ptr %"R24" to ptr
  %".6569" = load float, ptr %"cast_ptr.776"
  %".6570" = fdiv float 0x3ff0000000000000, %".6569"
  %".6571" = bitcast ptr %"R22" to ptr
  store float %".6570", ptr %".6571"
  ; FFMA R4, R24, R22, -1
  %"cast_ptr.777" = bitcast ptr %"R24" to ptr
  %".6574" = load float, ptr %"cast_ptr.777"
  %"cast_ptr.778" = bitcast ptr %"R22" to ptr
  %".6575" = load float, ptr %"cast_ptr.778"
  %"fmul.269" = fmul float %".6574", %".6575"
  %"fadd.255" = fadd float %"fmul.269", 0xbff0000000000000
  %".6576" = bitcast ptr %"R4" to ptr
  store float %"fadd.255", ptr %".6576"
  ; FADD.FTZ R5, -R4, -RZ
  %"cast_ptr.779" = bitcast ptr %"R4" to ptr
  %".6579" = load float, ptr %"cast_ptr.779"
  %".6580" = fneg float %".6579"
  %".6581" = call float @"llvm.fabs"(float %".6580")
  %".6582" = fcmp ogt float %".6581",              0x0
  %".6583" = fcmp olt float %".6581", 0x3810000000000000
  %".6584" = and i1 %".6582", %".6583"
  %".6585" = select  i1 %".6584", float              0x0, float %".6580"
  %".6586" = call float @"llvm.fabs"(float              0x0)
  %".6587" = fcmp ogt float %".6586",              0x0
  %".6588" = fcmp olt float %".6586", 0x3810000000000000
  %".6589" = and i1 %".6587", %".6588"
  %".6590" = select  i1 %".6589", float              0x0, float              0x0
  %"fadd.256" = fadd float %".6585", %".6590"
  %".6591" = call float @"llvm.fabs"(float %"fadd.256")
  %".6592" = fcmp ogt float %".6591",              0x0
  %".6593" = fcmp olt float %".6591", 0x3810000000000000
  %".6594" = and i1 %".6592", %".6593"
  %".6595" = select  i1 %".6594", float              0x0, float %"fadd.256"
  %".6596" = bitcast ptr %"R5" to ptr
  store float %".6595", ptr %".6596"
  ; FFMA R22, R22, R5, R22
  %"cast_ptr.780" = bitcast ptr %"R22" to ptr
  %".6599" = load float, ptr %"cast_ptr.780"
  %"cast_ptr.781" = bitcast ptr %"R5" to ptr
  %".6600" = load float, ptr %"cast_ptr.781"
  %"cast_ptr.782" = bitcast ptr %"R22" to ptr
  %".6601" = load float, ptr %"cast_ptr.782"
  %"fmul.270" = fmul float %".6599", %".6600"
  %"fadd.257" = fadd float %"fmul.270", %".6601"
  %".6602" = bitcast ptr %"R22" to ptr
  store float %"fadd.257", ptr %".6602"
  br label %".L_x_34"
.L_x_34:
  ; BSYNC B0
  br label %".L_x_32"
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".6608" = load i32, ptr %"R32"
  %"zext.651" = zext i32 %".6608" to i64
  %".6609" = load i32, ptr %"R33"
  %"zext.652" = zext i32 %".6609" to i64
  %"shl.345" = shl i64 %"zext.652", 32
  %"or.311" = or i64 %"shl.345", %"zext.651"
  %"inttoptr_bytes.282" = inttoptr i64 %"or.311" to ptr addrspace(1)
  %"ptr_cast_for_access.282" = bitcast ptr addrspace(1) %"inttoptr_bytes.282" to ptr addrspace(1)
  %".6610" = load float, ptr addrspace(1) %"ptr_cast_for_access.282"
  %".6611" = bitcast ptr %"R5" to ptr
  store float %".6610", ptr %".6611"
  ; MOV R4, 0x3bbb989d
  %".6614" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6614"
  ; MOV R7, 0x437c0000
  %".6617" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6617"
  ; FADD R5, R5, R56
  %"cast_ptr.783" = bitcast ptr %"R5" to ptr
  %".6620" = load float, ptr %"cast_ptr.783"
  %"cast_ptr.784" = bitcast ptr %"R56" to ptr
  %".6621" = load float, ptr %"cast_ptr.784"
  %"fadd.258" = fadd float %".6620", %".6621"
  %".6622" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6622"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %"cast_ptr.785" = bitcast ptr %"R5" to ptr
  %".6625" = load float, ptr %"cast_ptr.785"
  %".6626" = fneg float %".6625"
  %"cast_ptr.786" = bitcast ptr %"R4" to ptr
  %".6627" = load float, ptr %"cast_ptr.786"
  %"fmul.271" = fmul float %".6626", %".6627"
  %"fadd.259" = fadd float %"fmul.271", 0x3fe0000000000000
  %".6628" = bitcast ptr %"R4" to ptr
  store float %"fadd.259", ptr %".6628"
  ; FFMA.RM R4, R4, R7, 12582913
  %"cast_ptr.787" = bitcast ptr %"R4" to ptr
  %".6631" = load float, ptr %"cast_ptr.787"
  %"cast_ptr.788" = bitcast ptr %"R7" to ptr
  %".6632" = load float, ptr %"cast_ptr.788"
  %"fmul.272" = fmul float %".6631", %".6632"
  %"fadd.260" = fadd float %"fmul.272", 0x4168000020000000
  %".6633" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6633"
  ; FADD R6, R4.reuse, -12583039
  %"cast_ptr.789" = bitcast ptr %"R4" to ptr
  %".6636" = load float, ptr %"cast_ptr.789"
  %"fadd.261" = fadd float %".6636", 0xc168000fe0000000
  %".6637" = bitcast ptr %"R6" to ptr
  store float %"fadd.261", ptr %".6637"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".6640" = icmp ult i32 23, 32
  %"SHF_min.29" = select  i1 %".6640", i32 23, i32 32
  %".6641" = load i32, ptr %"R4"
  %"zext.653" = zext i32 0 to i64
  %"zext.654" = zext i32 %".6641" to i64
  %"zext.655" = zext i32 23 to i64
  %"shl.346" = shl i64 %"zext.653", 32
  %"or.312" = or i64 %"shl.346", %"zext.654"
  %"shl.347" = shl i64 %"or.312", %"zext.655"
  %"and.18" = and i64 %"shl.347", 4294967295
  %"trunc32.177" = trunc i64 %"and.18" to i32
  store i32 %"trunc32.177", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %"cast_ptr.790" = bitcast ptr %"R5" to ptr
  %".6644" = load float, ptr %"cast_ptr.790"
  %".6645" = fneg float %".6644"
  %"cast_ptr.791" = bitcast ptr %"R6" to ptr
  %".6646" = load float, ptr %"cast_ptr.791"
  %".6647" = fneg float %".6646"
  %"fmul.273" = fmul float %".6645", 0x3ff7154760000000
  %"fadd.262" = fadd float %"fmul.273", %".6647"
  %".6648" = bitcast ptr %"R6" to ptr
  store float %"fadd.262", ptr %".6648"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %"cast_ptr.792" = bitcast ptr %"R5" to ptr
  %".6651" = load float, ptr %"cast_ptr.792"
  %".6652" = fneg float %".6651"
  %"cast_ptr.793" = bitcast ptr %"R6" to ptr
  %".6653" = load float, ptr %"cast_ptr.793"
  %"fmul.274" = fmul float %".6652", 0x3e54ae0c00000000
  %"fadd.263" = fadd float %"fmul.274", %".6653"
  %".6654" = bitcast ptr %"R6" to ptr
  store float %"fadd.263", ptr %".6654"
  ; MUFU.EX2 R6, R6
  %"cast_ptr.794" = bitcast ptr %"R6" to ptr
  %".6657" = load float, ptr %"cast_ptr.794"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".6657")
  %".6658" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".6658"
  ; FFMA R23, R23, R6, 1
  %"cast_ptr.795" = bitcast ptr %"R23" to ptr
  %".6661" = load float, ptr %"cast_ptr.795"
  %"cast_ptr.796" = bitcast ptr %"R6" to ptr
  %".6662" = load float, ptr %"cast_ptr.796"
  %"fmul.275" = fmul float %".6661", %".6662"
  %"fadd.264" = fadd float %"fmul.275", 0x3ff0000000000000
  %".6663" = bitcast ptr %"R23" to ptr
  store float %"fadd.264", ptr %".6663"
  ; @!P4 BRA `(.L_x_35)
  %".6666" = load i1, ptr %"P4"
  %".6667" = icmp ne i1 %".6666", 1
  br i1 %".6667", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".6670" = load i32, ptr %"R18"
  %".6671" = load i1, ptr %"PT"
  %"cmp.57" = icmp sge i32 %".6670", 3
  %".6672" = xor i1 %"cmp.57", -1
  %".6673" = and i1 %"cmp.57", %".6671"
  %".6674" = and i1 %".6672", %".6671"
  store i1 %".6673", ptr %"P0"
  ; MOV R34, RZ
  store i32 0, ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".6679" = load i1, ptr %"P0"
  %".6680" = icmp ne i1 %".6679", 1
  br i1 %".6680", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".6683" = load i32, ptr %"R20"
  %".6684" = load i1, ptr %"PT"
  %"cmp.58" = icmp sgt i32 %".6683", 0
  %".6685" = xor i1 %"cmp.58", -1
  %".6686" = and i1 %"cmp.58", %".6684"
  %".6687" = and i1 %".6685", %".6684"
  store i1 %".6686", ptr %"P0"
  ; MOV R34, RZ
  store i32 0, ptr %"R34"
  ; MOV R35, R20
  %".6692" = load i32, ptr %"R20"
  store i32 %".6692", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".6695" = load i1, ptr %"P0"
  %".6696" = icmp ne i1 %".6695", 1
  br i1 %".6696", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".6699" = load i32, ptr %"R35"
  %".6700" = load i1, ptr %"PT"
  %"cmp.59" = icmp sgt i32 %".6699", 12
  %".6701" = xor i1 %"cmp.59", -1
  %".6702" = and i1 %"cmp.59", %".6700"
  %".6703" = and i1 %".6701", %".6700"
  store i1 %".6702", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".6706" = and i1 1, 1
  %".6707" = and i1 %".6706", 1
  ; @!P1 BRA `(.L_x_38)
  %".6709" = load i1, ptr %"P1"
  %".6710" = icmp ne i1 %".6709", 1
  br i1 %".6710", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".6713" = xor i1 1, 1
  %".6714" = and i1 %".6713", 1
  %".6715" = and i1 %".6714", 1
  br label %".L_x_39"
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".6720" = load i32, ptr %"R3"
  %".6721" = load i32, ptr %"R34"
  %".6722" = add i32 %".6720", %".6721"
  %".6723" = add i32 %".6722", 0
  store i32 %".6723", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".6726" = load i32, ptr %"R34"
  %".6727" = load i32, ptr %"R41"
  %"imad_ext1.74" = zext i32 %".6726" to i64
  %"imad_ext2.74" = zext i32 %".6727" to i64
  %"imad_mul.90" = mul i64 %"imad_ext1.74", %"imad_ext2.74"
  %".6728" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.90" = add i64 %"imad_mul.90", %".6728"
  %".6729" = and i64 %"imad_add.90", 18446744069414584320
  %".6730" = lshr i64 %".6729", 32
  %"trunc32.178" = trunc i64 %".6730" to i32
  %"trunc32.179" = trunc i64 %"imad_add.90" to i32
  store i32 %"trunc32.179", ptr %"R12"
  store i32 %"trunc32.178", ptr %"R13"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".6734" = load i32, ptr %"R10"
  %".6735" = load i32, ptr %"R41"
  %"imad_ext1.75" = zext i32 %".6734" to i64
  %"imad_ext2.75" = zext i32 %".6735" to i64
  %"imad_mul.91" = mul i64 %"imad_ext1.75", %"imad_ext2.75"
  %".6736" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.91" = add i64 %"imad_mul.91", %".6736"
  %".6737" = and i64 %"imad_add.91", 18446744069414584320
  %".6738" = lshr i64 %".6737", 32
  %"trunc32.180" = trunc i64 %".6738" to i32
  %"trunc32.181" = trunc i64 %"imad_add.91" to i32
  store i32 %"trunc32.181", ptr %"R10"
  store i32 %"trunc32.180", ptr %"R11"
  ; IADD3 R4, R34, 0x4, RZ
  %".6742" = load i32, ptr %"R34"
  %".6743" = add i32 %".6742", 4
  %".6744" = add i32 %".6743", 0
  store i32 %".6744", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".6747" = load i32, ptr %"R12"
  %"zext.656" = zext i32 %".6747" to i64
  %".6748" = load i32, ptr %"R13"
  %"zext.657" = zext i32 %".6748" to i64
  %"shl.348" = shl i64 %"zext.657", 32
  %"or.313" = or i64 %"shl.348", %"zext.656"
  %"inttoptr_bytes.283" = inttoptr i64 %"or.313" to ptr addrspace(1)
  %"ptr_cast_for_access.283" = bitcast ptr addrspace(1) %"inttoptr_bytes.283" to ptr addrspace(1)
  %".6749" = load float, ptr addrspace(1) %"ptr_cast_for_access.283"
  %".6750" = bitcast ptr %"R25" to ptr
  store float %".6749", ptr %".6750"
  ; IADD3 R6, R3, R4, RZ
  %".6753" = load i32, ptr %"R3"
  %".6754" = load i32, ptr %"R4"
  %".6755" = add i32 %".6753", %".6754"
  %".6756" = add i32 %".6755", 0
  store i32 %".6756", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".6759" = load i32, ptr %"R10"
  %"zext.658" = zext i32 %".6759" to i64
  %".6760" = load i32, ptr %"R11"
  %"zext.659" = zext i32 %".6760" to i64
  %"shl.349" = shl i64 %"zext.659", 32
  %"or.314" = or i64 %"shl.349", %"zext.658"
  %"inttoptr_bytes.284" = inttoptr i64 %"or.314" to ptr addrspace(1)
  %"ptr_cast_for_access.284" = bitcast ptr addrspace(1) %"inttoptr_bytes.284" to ptr addrspace(1)
  %".6761" = load float, ptr addrspace(1) %"ptr_cast_for_access.284"
  %".6762" = bitcast ptr %"R36" to ptr
  store float %".6761", ptr %".6762"
  ; LDG.E.SYS R37, [R12+0x4]
  %".6765" = load i32, ptr %"R12"
  %"zext.660" = zext i32 %".6765" to i64
  %".6766" = load i32, ptr %"R13"
  %"zext.661" = zext i32 %".6766" to i64
  %"shl.350" = shl i64 %"zext.661", 32
  %"or.315" = or i64 %"shl.350", %"zext.660"
  %"ptr_plus_imm.204" = add i64 %"or.315", 4
  %"inttoptr_bytes.285" = inttoptr i64 %"ptr_plus_imm.204" to ptr addrspace(1)
  %"ptr_cast_for_access.285" = bitcast ptr addrspace(1) %"inttoptr_bytes.285" to ptr addrspace(1)
  %".6767" = load float, ptr addrspace(1) %"ptr_cast_for_access.285"
  %".6768" = bitcast ptr %"R37" to ptr
  store float %".6767", ptr %".6768"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".6771" = load i32, ptr %"R4"
  %".6772" = load i32, ptr %"R41"
  %"imad_ext1.76" = zext i32 %".6771" to i64
  %"imad_ext2.76" = zext i32 %".6772" to i64
  %"imad_mul.92" = mul i64 %"imad_ext1.76", %"imad_ext2.76"
  %".6773" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.92" = add i64 %"imad_mul.92", %".6773"
  %".6774" = and i64 %"imad_add.92", 18446744069414584320
  %".6775" = lshr i64 %".6774", 32
  %"trunc32.182" = trunc i64 %".6775" to i32
  %"trunc32.183" = trunc i64 %"imad_add.92" to i32
  store i32 %"trunc32.183", ptr %"R4"
  store i32 %"trunc32.182", ptr %"R5"
  ; LDG.E.SYS R24, [R10+0x4]
  %".6779" = load i32, ptr %"R10"
  %"zext.662" = zext i32 %".6779" to i64
  %".6780" = load i32, ptr %"R11"
  %"zext.663" = zext i32 %".6780" to i64
  %"shl.351" = shl i64 %"zext.663", 32
  %"or.316" = or i64 %"shl.351", %"zext.662"
  %"ptr_plus_imm.205" = add i64 %"or.316", 4
  %"inttoptr_bytes.286" = inttoptr i64 %"ptr_plus_imm.205" to ptr addrspace(1)
  %"ptr_cast_for_access.286" = bitcast ptr addrspace(1) %"inttoptr_bytes.286" to ptr addrspace(1)
  %".6781" = load float, ptr addrspace(1) %"ptr_cast_for_access.286"
  %".6782" = bitcast ptr %"R24" to ptr
  store float %".6781", ptr %".6782"
  ; LDG.E.SYS R39, [R12+0x8]
  %".6785" = load i32, ptr %"R12"
  %"zext.664" = zext i32 %".6785" to i64
  %".6786" = load i32, ptr %"R13"
  %"zext.665" = zext i32 %".6786" to i64
  %"shl.352" = shl i64 %"zext.665", 32
  %"or.317" = or i64 %"shl.352", %"zext.664"
  %"ptr_plus_imm.206" = add i64 %"or.317", 8
  %"inttoptr_bytes.287" = inttoptr i64 %"ptr_plus_imm.206" to ptr addrspace(1)
  %"ptr_cast_for_access.287" = bitcast ptr addrspace(1) %"inttoptr_bytes.287" to ptr addrspace(1)
  %".6787" = load float, ptr addrspace(1) %"ptr_cast_for_access.287"
  %".6788" = bitcast ptr %"R39" to ptr
  store float %".6787", ptr %".6788"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".6791" = load i32, ptr %"R6"
  %".6792" = load i32, ptr %"R41"
  %"imad_ext1.77" = zext i32 %".6791" to i64
  %"imad_ext2.77" = zext i32 %".6792" to i64
  %"imad_mul.93" = mul i64 %"imad_ext1.77", %"imad_ext2.77"
  %".6793" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.93" = add i64 %"imad_mul.93", %".6793"
  %".6794" = and i64 %"imad_add.93", 18446744069414584320
  %".6795" = lshr i64 %".6794", 32
  %"trunc32.184" = trunc i64 %".6795" to i32
  %"trunc32.185" = trunc i64 %"imad_add.93" to i32
  store i32 %"trunc32.185", ptr %"R6"
  store i32 %"trunc32.184", ptr %"R7"
  ; LDG.E.SYS R38, [R10+0x8]
  %".6799" = load i32, ptr %"R10"
  %"zext.666" = zext i32 %".6799" to i64
  %".6800" = load i32, ptr %"R11"
  %"zext.667" = zext i32 %".6800" to i64
  %"shl.353" = shl i64 %"zext.667", 32
  %"or.318" = or i64 %"shl.353", %"zext.666"
  %"ptr_plus_imm.207" = add i64 %"or.318", 8
  %"inttoptr_bytes.288" = inttoptr i64 %"ptr_plus_imm.207" to ptr addrspace(1)
  %"ptr_cast_for_access.288" = bitcast ptr addrspace(1) %"inttoptr_bytes.288" to ptr addrspace(1)
  %".6801" = load float, ptr addrspace(1) %"ptr_cast_for_access.288"
  %".6802" = bitcast ptr %"R38" to ptr
  store float %".6801", ptr %".6802"
  ; LDG.E.SYS R43, [R12+0xc]
  %".6805" = load i32, ptr %"R12"
  %"zext.668" = zext i32 %".6805" to i64
  %".6806" = load i32, ptr %"R13"
  %"zext.669" = zext i32 %".6806" to i64
  %"shl.354" = shl i64 %"zext.669", 32
  %"or.319" = or i64 %"shl.354", %"zext.668"
  %"ptr_plus_imm.208" = add i64 %"or.319", 12
  %"inttoptr_bytes.289" = inttoptr i64 %"ptr_plus_imm.208" to ptr addrspace(1)
  %"ptr_cast_for_access.289" = bitcast ptr addrspace(1) %"inttoptr_bytes.289" to ptr addrspace(1)
  %".6807" = load float, ptr addrspace(1) %"ptr_cast_for_access.289"
  %".6808" = bitcast ptr %"R43" to ptr
  store float %".6807", ptr %".6808"
  ; IADD3 R8, R34, 0x8, RZ
  %".6811" = load i32, ptr %"R34"
  %".6812" = add i32 %".6811", 8
  %".6813" = add i32 %".6812", 0
  store i32 %".6813", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".6816" = load i32, ptr %"R10"
  %"zext.670" = zext i32 %".6816" to i64
  %".6817" = load i32, ptr %"R11"
  %"zext.671" = zext i32 %".6817" to i64
  %"shl.355" = shl i64 %"zext.671", 32
  %"or.320" = or i64 %"shl.355", %"zext.670"
  %"ptr_plus_imm.209" = add i64 %"or.320", 12
  %"inttoptr_bytes.290" = inttoptr i64 %"ptr_plus_imm.209" to ptr addrspace(1)
  %"ptr_cast_for_access.290" = bitcast ptr addrspace(1) %"inttoptr_bytes.290" to ptr addrspace(1)
  %".6818" = load float, ptr addrspace(1) %"ptr_cast_for_access.290"
  %".6819" = bitcast ptr %"R46" to ptr
  store float %".6818", ptr %".6819"
  ; LDG.E.SYS R51, [R4]
  %".6822" = load i32, ptr %"R4"
  %"zext.672" = zext i32 %".6822" to i64
  %".6823" = load i32, ptr %"R5"
  %"zext.673" = zext i32 %".6823" to i64
  %"shl.356" = shl i64 %"zext.673", 32
  %"or.321" = or i64 %"shl.356", %"zext.672"
  %"inttoptr_bytes.291" = inttoptr i64 %"or.321" to ptr addrspace(1)
  %"ptr_cast_for_access.291" = bitcast ptr addrspace(1) %"inttoptr_bytes.291" to ptr addrspace(1)
  %".6824" = load float, ptr addrspace(1) %"ptr_cast_for_access.291"
  %".6825" = bitcast ptr %"R51" to ptr
  store float %".6824", ptr %".6825"
  ; IADD3 R50, R3, R8, RZ
  %".6828" = load i32, ptr %"R3"
  %".6829" = load i32, ptr %"R8"
  %".6830" = add i32 %".6828", %".6829"
  %".6831" = add i32 %".6830", 0
  store i32 %".6831", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".6834" = load i32, ptr %"R6"
  %"zext.674" = zext i32 %".6834" to i64
  %".6835" = load i32, ptr %"R7"
  %"zext.675" = zext i32 %".6835" to i64
  %"shl.357" = shl i64 %"zext.675", 32
  %"or.322" = or i64 %"shl.357", %"zext.674"
  %"inttoptr_bytes.292" = inttoptr i64 %"or.322" to ptr addrspace(1)
  %"ptr_cast_for_access.292" = bitcast ptr addrspace(1) %"inttoptr_bytes.292" to ptr addrspace(1)
  %".6836" = load float, ptr addrspace(1) %"ptr_cast_for_access.292"
  %".6837" = bitcast ptr %"R44" to ptr
  store float %".6836", ptr %".6837"
  ; LDG.E.SYS R47, [R4+0x4]
  %".6840" = load i32, ptr %"R4"
  %"zext.676" = zext i32 %".6840" to i64
  %".6841" = load i32, ptr %"R5"
  %"zext.677" = zext i32 %".6841" to i64
  %"shl.358" = shl i64 %"zext.677", 32
  %"or.323" = or i64 %"shl.358", %"zext.676"
  %"ptr_plus_imm.210" = add i64 %"or.323", 4
  %"inttoptr_bytes.293" = inttoptr i64 %"ptr_plus_imm.210" to ptr addrspace(1)
  %"ptr_cast_for_access.293" = bitcast ptr addrspace(1) %"inttoptr_bytes.293" to ptr addrspace(1)
  %".6842" = load float, ptr addrspace(1) %"ptr_cast_for_access.293"
  %".6843" = bitcast ptr %"R47" to ptr
  store float %".6842", ptr %".6843"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".6846" = load i32, ptr %"R8"
  %".6847" = load i32, ptr %"R41"
  %"imad_ext1.78" = zext i32 %".6846" to i64
  %"imad_ext2.78" = zext i32 %".6847" to i64
  %"imad_mul.94" = mul i64 %"imad_ext1.78", %"imad_ext2.78"
  %".6848" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.94" = add i64 %"imad_mul.94", %".6848"
  %".6849" = and i64 %"imad_add.94", 18446744069414584320
  %".6850" = lshr i64 %".6849", 32
  %"trunc32.186" = trunc i64 %".6850" to i32
  %"trunc32.187" = trunc i64 %"imad_add.94" to i32
  store i32 %"trunc32.187", ptr %"R8"
  store i32 %"trunc32.186", ptr %"R9"
  ; LDG.E.SYS R42, [R6+0x4]
  %".6854" = load i32, ptr %"R6"
  %"zext.678" = zext i32 %".6854" to i64
  %".6855" = load i32, ptr %"R7"
  %"zext.679" = zext i32 %".6855" to i64
  %"shl.359" = shl i64 %"zext.679", 32
  %"or.324" = or i64 %"shl.359", %"zext.678"
  %"ptr_plus_imm.211" = add i64 %"or.324", 4
  %"inttoptr_bytes.294" = inttoptr i64 %"ptr_plus_imm.211" to ptr addrspace(1)
  %"ptr_cast_for_access.294" = bitcast ptr addrspace(1) %"inttoptr_bytes.294" to ptr addrspace(1)
  %".6856" = load float, ptr addrspace(1) %"ptr_cast_for_access.294"
  %".6857" = bitcast ptr %"R42" to ptr
  store float %".6856", ptr %".6857"
  ; LDG.E.SYS R45, [R4+0x8]
  %".6860" = load i32, ptr %"R4"
  %"zext.680" = zext i32 %".6860" to i64
  %".6861" = load i32, ptr %"R5"
  %"zext.681" = zext i32 %".6861" to i64
  %"shl.360" = shl i64 %"zext.681", 32
  %"or.325" = or i64 %"shl.360", %"zext.680"
  %"ptr_plus_imm.212" = add i64 %"or.325", 8
  %"inttoptr_bytes.295" = inttoptr i64 %"ptr_plus_imm.212" to ptr addrspace(1)
  %"ptr_cast_for_access.295" = bitcast ptr addrspace(1) %"inttoptr_bytes.295" to ptr addrspace(1)
  %".6862" = load float, ptr addrspace(1) %"ptr_cast_for_access.295"
  %".6863" = bitcast ptr %"R45" to ptr
  store float %".6862", ptr %".6863"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".6866" = load i32, ptr %"R50"
  %".6867" = load i32, ptr %"R41"
  %"imad_ext1.79" = zext i32 %".6866" to i64
  %"imad_ext2.79" = zext i32 %".6867" to i64
  %"imad_mul.95" = mul i64 %"imad_ext1.79", %"imad_ext2.79"
  %".6868" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.95" = add i64 %"imad_mul.95", %".6868"
  %".6869" = and i64 %"imad_add.95", 18446744069414584320
  %".6870" = lshr i64 %".6869", 32
  %"trunc32.188" = trunc i64 %".6870" to i32
  %"trunc32.189" = trunc i64 %"imad_add.95" to i32
  store i32 %"trunc32.189", ptr %"R10"
  store i32 %"trunc32.188", ptr %"R11"
  ; LDG.E.SYS R40, [R6+0x8]
  %".6874" = load i32, ptr %"R6"
  %"zext.682" = zext i32 %".6874" to i64
  %".6875" = load i32, ptr %"R7"
  %"zext.683" = zext i32 %".6875" to i64
  %"shl.361" = shl i64 %"zext.683", 32
  %"or.326" = or i64 %"shl.361", %"zext.682"
  %"ptr_plus_imm.213" = add i64 %"or.326", 8
  %"inttoptr_bytes.296" = inttoptr i64 %"ptr_plus_imm.213" to ptr addrspace(1)
  %"ptr_cast_for_access.296" = bitcast ptr addrspace(1) %"inttoptr_bytes.296" to ptr addrspace(1)
  %".6876" = load float, ptr addrspace(1) %"ptr_cast_for_access.296"
  %".6877" = bitcast ptr %"R40" to ptr
  store float %".6876", ptr %".6877"
  ; LDG.E.SYS R53, [R4+0xc]
  %".6880" = load i32, ptr %"R4"
  %"zext.684" = zext i32 %".6880" to i64
  %".6881" = load i32, ptr %"R5"
  %"zext.685" = zext i32 %".6881" to i64
  %"shl.362" = shl i64 %"zext.685", 32
  %"or.327" = or i64 %"shl.362", %"zext.684"
  %"ptr_plus_imm.214" = add i64 %"or.327", 12
  %"inttoptr_bytes.297" = inttoptr i64 %"ptr_plus_imm.214" to ptr addrspace(1)
  %"ptr_cast_for_access.297" = bitcast ptr addrspace(1) %"inttoptr_bytes.297" to ptr addrspace(1)
  %".6882" = load float, ptr addrspace(1) %"ptr_cast_for_access.297"
  %".6883" = bitcast ptr %"R53" to ptr
  store float %".6882", ptr %".6883"
  ; IADD3 R12, R34, 0xc, RZ
  %".6886" = load i32, ptr %"R34"
  %".6887" = add i32 %".6886", 12
  %".6888" = add i32 %".6887", 0
  store i32 %".6888", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".6891" = load i32, ptr %"R6"
  %"zext.686" = zext i32 %".6891" to i64
  %".6892" = load i32, ptr %"R7"
  %"zext.687" = zext i32 %".6892" to i64
  %"shl.363" = shl i64 %"zext.687", 32
  %"or.328" = or i64 %"shl.363", %"zext.686"
  %"ptr_plus_imm.215" = add i64 %"or.328", 12
  %"inttoptr_bytes.298" = inttoptr i64 %"ptr_plus_imm.215" to ptr addrspace(1)
  %"ptr_cast_for_access.298" = bitcast ptr addrspace(1) %"inttoptr_bytes.298" to ptr addrspace(1)
  %".6893" = load float, ptr addrspace(1) %"ptr_cast_for_access.298"
  %".6894" = bitcast ptr %"R54" to ptr
  store float %".6893", ptr %".6894"
  ; LDG.E.SYS R59, [R8]
  %".6897" = load i32, ptr %"R8"
  %"zext.688" = zext i32 %".6897" to i64
  %".6898" = load i32, ptr %"R9"
  %"zext.689" = zext i32 %".6898" to i64
  %"shl.364" = shl i64 %"zext.689", 32
  %"or.329" = or i64 %"shl.364", %"zext.688"
  %"inttoptr_bytes.299" = inttoptr i64 %"or.329" to ptr addrspace(1)
  %"ptr_cast_for_access.299" = bitcast ptr addrspace(1) %"inttoptr_bytes.299" to ptr addrspace(1)
  %".6899" = load float, ptr addrspace(1) %"ptr_cast_for_access.299"
  %".6900" = bitcast ptr %"R59" to ptr
  store float %".6899", ptr %".6900"
  ; IADD3 R58, R3, R12, RZ
  %".6903" = load i32, ptr %"R3"
  %".6904" = load i32, ptr %"R12"
  %".6905" = add i32 %".6903", %".6904"
  %".6906" = add i32 %".6905", 0
  store i32 %".6906", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".6909" = load i32, ptr %"R10"
  %"zext.690" = zext i32 %".6909" to i64
  %".6910" = load i32, ptr %"R11"
  %"zext.691" = zext i32 %".6910" to i64
  %"shl.365" = shl i64 %"zext.691", 32
  %"or.330" = or i64 %"shl.365", %"zext.690"
  %"inttoptr_bytes.300" = inttoptr i64 %"or.330" to ptr addrspace(1)
  %"ptr_cast_for_access.300" = bitcast ptr addrspace(1) %"inttoptr_bytes.300" to ptr addrspace(1)
  %".6911" = load float, ptr addrspace(1) %"ptr_cast_for_access.300"
  %".6912" = bitcast ptr %"R52" to ptr
  store float %".6911", ptr %".6912"
  ; LDG.E.SYS R57, [R8+0x4]
  %".6915" = load i32, ptr %"R8"
  %"zext.692" = zext i32 %".6915" to i64
  %".6916" = load i32, ptr %"R9"
  %"zext.693" = zext i32 %".6916" to i64
  %"shl.366" = shl i64 %"zext.693", 32
  %"or.331" = or i64 %"shl.366", %"zext.692"
  %"ptr_plus_imm.216" = add i64 %"or.331", 4
  %"inttoptr_bytes.301" = inttoptr i64 %"ptr_plus_imm.216" to ptr addrspace(1)
  %"ptr_cast_for_access.301" = bitcast ptr addrspace(1) %"inttoptr_bytes.301" to ptr addrspace(1)
  %".6917" = load float, ptr addrspace(1) %"ptr_cast_for_access.301"
  %".6918" = bitcast ptr %"R57" to ptr
  store float %".6917", ptr %".6918"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".6921" = load i32, ptr %"R12"
  %".6922" = load i32, ptr %"R41"
  %"imad_ext1.80" = zext i32 %".6921" to i64
  %"imad_ext2.80" = zext i32 %".6922" to i64
  %"imad_mul.96" = mul i64 %"imad_ext1.80", %"imad_ext2.80"
  %".6923" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.96" = add i64 %"imad_mul.96", %".6923"
  %".6924" = and i64 %"imad_add.96", 18446744069414584320
  %".6925" = lshr i64 %".6924", 32
  %"trunc32.190" = trunc i64 %".6925" to i32
  %"trunc32.191" = trunc i64 %"imad_add.96" to i32
  store i32 %"trunc32.191", ptr %"R12"
  store i32 %"trunc32.190", ptr %"R13"
  ; LDG.E.SYS R50, [R10+0x4]
  %".6929" = load i32, ptr %"R10"
  %"zext.694" = zext i32 %".6929" to i64
  %".6930" = load i32, ptr %"R11"
  %"zext.695" = zext i32 %".6930" to i64
  %"shl.367" = shl i64 %"zext.695", 32
  %"or.332" = or i64 %"shl.367", %"zext.694"
  %"ptr_plus_imm.217" = add i64 %"or.332", 4
  %"inttoptr_bytes.302" = inttoptr i64 %"ptr_plus_imm.217" to ptr addrspace(1)
  %"ptr_cast_for_access.302" = bitcast ptr addrspace(1) %"inttoptr_bytes.302" to ptr addrspace(1)
  %".6931" = load float, ptr addrspace(1) %"ptr_cast_for_access.302"
  %".6932" = bitcast ptr %"R50" to ptr
  store float %".6931", ptr %".6932"
  ; LDG.E.SYS R55, [R8+0x8]
  %".6935" = load i32, ptr %"R8"
  %"zext.696" = zext i32 %".6935" to i64
  %".6936" = load i32, ptr %"R9"
  %"zext.697" = zext i32 %".6936" to i64
  %"shl.368" = shl i64 %"zext.697", 32
  %"or.333" = or i64 %"shl.368", %"zext.696"
  %"ptr_plus_imm.218" = add i64 %"or.333", 8
  %"inttoptr_bytes.303" = inttoptr i64 %"ptr_plus_imm.218" to ptr addrspace(1)
  %"ptr_cast_for_access.303" = bitcast ptr addrspace(1) %"inttoptr_bytes.303" to ptr addrspace(1)
  %".6937" = load float, ptr addrspace(1) %"ptr_cast_for_access.303"
  %".6938" = bitcast ptr %"R55" to ptr
  store float %".6937", ptr %".6938"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".6941" = load i32, ptr %"R58"
  %".6942" = load i32, ptr %"R41"
  %"imad_ext1.81" = zext i32 %".6941" to i64
  %"imad_ext2.81" = zext i32 %".6942" to i64
  %"imad_mul.97" = mul i64 %"imad_ext1.81", %"imad_ext2.81"
  %".6943" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.97" = add i64 %"imad_mul.97", %".6943"
  %".6944" = and i64 %"imad_add.97", 18446744069414584320
  %".6945" = lshr i64 %".6944", 32
  %"trunc32.192" = trunc i64 %".6945" to i32
  %"trunc32.193" = trunc i64 %"imad_add.97" to i32
  store i32 %"trunc32.193", ptr %"R4"
  store i32 %"trunc32.192", ptr %"R5"
  ; LDG.E.SYS R61, [R8+0xc]
  %".6949" = load i32, ptr %"R8"
  %"zext.698" = zext i32 %".6949" to i64
  %".6950" = load i32, ptr %"R9"
  %"zext.699" = zext i32 %".6950" to i64
  %"shl.369" = shl i64 %"zext.699", 32
  %"or.334" = or i64 %"shl.369", %"zext.698"
  %"ptr_plus_imm.219" = add i64 %"or.334", 12
  %"inttoptr_bytes.304" = inttoptr i64 %"ptr_plus_imm.219" to ptr addrspace(1)
  %"ptr_cast_for_access.304" = bitcast ptr addrspace(1) %"inttoptr_bytes.304" to ptr addrspace(1)
  %".6951" = load float, ptr addrspace(1) %"ptr_cast_for_access.304"
  %".6952" = bitcast ptr %"R61" to ptr
  store float %".6951", ptr %".6952"
  ; LDG.E.SYS R56, [R10+0x8]
  %".6955" = load i32, ptr %"R10"
  %"zext.700" = zext i32 %".6955" to i64
  %".6956" = load i32, ptr %"R11"
  %"zext.701" = zext i32 %".6956" to i64
  %"shl.370" = shl i64 %"zext.701", 32
  %"or.335" = or i64 %"shl.370", %"zext.700"
  %"ptr_plus_imm.220" = add i64 %"or.335", 8
  %"inttoptr_bytes.305" = inttoptr i64 %"ptr_plus_imm.220" to ptr addrspace(1)
  %"ptr_cast_for_access.305" = bitcast ptr addrspace(1) %"inttoptr_bytes.305" to ptr addrspace(1)
  %".6957" = load float, ptr addrspace(1) %"ptr_cast_for_access.305"
  %".6958" = bitcast ptr %"R56" to ptr
  store float %".6957", ptr %".6958"
  ; LDG.E.SYS R58, [R10+0xc]
  %".6961" = load i32, ptr %"R10"
  %"zext.702" = zext i32 %".6961" to i64
  %".6962" = load i32, ptr %"R11"
  %"zext.703" = zext i32 %".6962" to i64
  %"shl.371" = shl i64 %"zext.703", 32
  %"or.336" = or i64 %"shl.371", %"zext.702"
  %"ptr_plus_imm.221" = add i64 %"or.336", 12
  %"inttoptr_bytes.306" = inttoptr i64 %"ptr_plus_imm.221" to ptr addrspace(1)
  %"ptr_cast_for_access.306" = bitcast ptr addrspace(1) %"inttoptr_bytes.306" to ptr addrspace(1)
  %".6963" = load float, ptr addrspace(1) %"ptr_cast_for_access.306"
  %".6964" = bitcast ptr %"R58" to ptr
  store float %".6963", ptr %".6964"
  ; LDG.E.SYS R6, [R12]
  %".6967" = load i32, ptr %"R12"
  %"zext.704" = zext i32 %".6967" to i64
  %".6968" = load i32, ptr %"R13"
  %"zext.705" = zext i32 %".6968" to i64
  %"shl.372" = shl i64 %"zext.705", 32
  %"or.337" = or i64 %"shl.372", %"zext.704"
  %"inttoptr_bytes.307" = inttoptr i64 %"or.337" to ptr addrspace(1)
  %"ptr_cast_for_access.307" = bitcast ptr addrspace(1) %"inttoptr_bytes.307" to ptr addrspace(1)
  %".6969" = load float, ptr addrspace(1) %"ptr_cast_for_access.307"
  %".6970" = bitcast ptr %"R6" to ptr
  store float %".6969", ptr %".6970"
  ; LDG.E.SYS R41, [R12+0x4]
  %".6973" = load i32, ptr %"R12"
  %"zext.706" = zext i32 %".6973" to i64
  %".6974" = load i32, ptr %"R13"
  %"zext.707" = zext i32 %".6974" to i64
  %"shl.373" = shl i64 %"zext.707", 32
  %"or.338" = or i64 %"shl.373", %"zext.706"
  %"ptr_plus_imm.222" = add i64 %"or.338", 4
  %"inttoptr_bytes.308" = inttoptr i64 %"ptr_plus_imm.222" to ptr addrspace(1)
  %"ptr_cast_for_access.308" = bitcast ptr addrspace(1) %"inttoptr_bytes.308" to ptr addrspace(1)
  %".6975" = load float, ptr addrspace(1) %"ptr_cast_for_access.308"
  %".6976" = bitcast ptr %"R41" to ptr
  store float %".6975", ptr %".6976"
  ; LDG.E.SYS R10, [R4]
  %".6979" = load i32, ptr %"R4"
  %"zext.708" = zext i32 %".6979" to i64
  %".6980" = load i32, ptr %"R5"
  %"zext.709" = zext i32 %".6980" to i64
  %"shl.374" = shl i64 %"zext.709", 32
  %"or.339" = or i64 %"shl.374", %"zext.708"
  %"inttoptr_bytes.309" = inttoptr i64 %"or.339" to ptr addrspace(1)
  %"ptr_cast_for_access.309" = bitcast ptr addrspace(1) %"inttoptr_bytes.309" to ptr addrspace(1)
  %".6981" = load float, ptr addrspace(1) %"ptr_cast_for_access.309"
  %".6982" = bitcast ptr %"R10" to ptr
  store float %".6981", ptr %".6982"
  ; LDG.E.SYS R7, [R12+0x8]
  %".6985" = load i32, ptr %"R12"
  %"zext.710" = zext i32 %".6985" to i64
  %".6986" = load i32, ptr %"R13"
  %"zext.711" = zext i32 %".6986" to i64
  %"shl.375" = shl i64 %"zext.711", 32
  %"or.340" = or i64 %"shl.375", %"zext.710"
  %"ptr_plus_imm.223" = add i64 %"or.340", 8
  %"inttoptr_bytes.310" = inttoptr i64 %"ptr_plus_imm.223" to ptr addrspace(1)
  %"ptr_cast_for_access.310" = bitcast ptr addrspace(1) %"inttoptr_bytes.310" to ptr addrspace(1)
  %".6987" = load float, ptr addrspace(1) %"ptr_cast_for_access.310"
  %".6988" = bitcast ptr %"R7" to ptr
  store float %".6987", ptr %".6988"
  ; LDG.E.SYS R9, [R4+0x4]
  %".6991" = load i32, ptr %"R4"
  %"zext.712" = zext i32 %".6991" to i64
  %".6992" = load i32, ptr %"R5"
  %"zext.713" = zext i32 %".6992" to i64
  %"shl.376" = shl i64 %"zext.713", 32
  %"or.341" = or i64 %"shl.376", %"zext.712"
  %"ptr_plus_imm.224" = add i64 %"or.341", 4
  %"inttoptr_bytes.311" = inttoptr i64 %"ptr_plus_imm.224" to ptr addrspace(1)
  %"ptr_cast_for_access.311" = bitcast ptr addrspace(1) %"inttoptr_bytes.311" to ptr addrspace(1)
  %".6993" = load float, ptr addrspace(1) %"ptr_cast_for_access.311"
  %".6994" = bitcast ptr %"R9" to ptr
  store float %".6993", ptr %".6994"
  ; LDG.E.SYS R60, [R12+0xc]
  %".6997" = load i32, ptr %"R12"
  %"zext.714" = zext i32 %".6997" to i64
  %".6998" = load i32, ptr %"R13"
  %"zext.715" = zext i32 %".6998" to i64
  %"shl.377" = shl i64 %"zext.715", 32
  %"or.342" = or i64 %"shl.377", %"zext.714"
  %"ptr_plus_imm.225" = add i64 %"or.342", 12
  %"inttoptr_bytes.312" = inttoptr i64 %"ptr_plus_imm.225" to ptr addrspace(1)
  %"ptr_cast_for_access.312" = bitcast ptr addrspace(1) %"inttoptr_bytes.312" to ptr addrspace(1)
  %".6999" = load float, ptr addrspace(1) %"ptr_cast_for_access.312"
  %".7000" = bitcast ptr %"R60" to ptr
  store float %".6999", ptr %".7000"
  ; LDG.E.SYS R8, [R4+0x8]
  %".7003" = load i32, ptr %"R4"
  %"zext.716" = zext i32 %".7003" to i64
  %".7004" = load i32, ptr %"R5"
  %"zext.717" = zext i32 %".7004" to i64
  %"shl.378" = shl i64 %"zext.717", 32
  %"or.343" = or i64 %"shl.378", %"zext.716"
  %"ptr_plus_imm.226" = add i64 %"or.343", 8
  %"inttoptr_bytes.313" = inttoptr i64 %"ptr_plus_imm.226" to ptr addrspace(1)
  %"ptr_cast_for_access.313" = bitcast ptr addrspace(1) %"inttoptr_bytes.313" to ptr addrspace(1)
  %".7005" = load float, ptr addrspace(1) %"ptr_cast_for_access.313"
  %".7006" = bitcast ptr %"R8" to ptr
  store float %".7005", ptr %".7006"
  ; LDG.E.SYS R11, [R4+0xc]
  %".7009" = load i32, ptr %"R4"
  %"zext.718" = zext i32 %".7009" to i64
  %".7010" = load i32, ptr %"R5"
  %"zext.719" = zext i32 %".7010" to i64
  %"shl.379" = shl i64 %"zext.719", 32
  %"or.344" = or i64 %"shl.379", %"zext.718"
  %"ptr_plus_imm.227" = add i64 %"or.344", 12
  %"inttoptr_bytes.314" = inttoptr i64 %"ptr_plus_imm.227" to ptr addrspace(1)
  %"ptr_cast_for_access.314" = bitcast ptr addrspace(1) %"inttoptr_bytes.314" to ptr addrspace(1)
  %".7011" = load float, ptr addrspace(1) %"ptr_cast_for_access.314"
  %".7012" = bitcast ptr %"R11" to ptr
  store float %".7011", ptr %".7012"
  ; IADD3 R35, R35, -0x10, RZ
  %".7015" = load i32, ptr %"R35"
  %".7016" = add i32 %".7015", -16
  %".7017" = add i32 %".7016", 0
  store i32 %".7017", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".7020" = load i32, ptr %"R35"
  %".7021" = load i1, ptr %"PT"
  %"cmp.60" = icmp sgt i32 %".7020", 12
  %".7022" = xor i1 %"cmp.60", -1
  %".7023" = and i1 %"cmp.60", %".7021"
  %".7024" = and i1 %".7022", %".7021"
  store i1 %".7023", ptr %"P1"
  ; IADD3 R34, R34, 0x10, RZ
  %".7027" = load i32, ptr %"R34"
  %".7028" = add i32 %".7027", 16
  %".7029" = add i32 %".7028", 0
  store i32 %".7029", ptr %"R34"
  ; FMUL R25, R25, R22
  %"cast_ptr.797" = bitcast ptr %"R25" to ptr
  %".7032" = load float, ptr %"cast_ptr.797"
  %"cast_ptr.798" = bitcast ptr %"R22" to ptr
  %".7033" = load float, ptr %"cast_ptr.798"
  %"fmul.276" = fmul float %".7032", %".7033"
  %".7034" = bitcast ptr %"R25" to ptr
  store float %"fmul.276", ptr %".7034"
  ; FFMA R25, R25, R36, R21
  %"cast_ptr.799" = bitcast ptr %"R25" to ptr
  %".7037" = load float, ptr %"cast_ptr.799"
  %"cast_ptr.800" = bitcast ptr %"R36" to ptr
  %".7038" = load float, ptr %"cast_ptr.800"
  %"cast_ptr.801" = bitcast ptr %"R21" to ptr
  %".7039" = load float, ptr %"cast_ptr.801"
  %"fmul.277" = fmul float %".7037", %".7038"
  %"fadd.265" = fadd float %"fmul.277", %".7039"
  %".7040" = bitcast ptr %"R25" to ptr
  store float %"fadd.265", ptr %".7040"
  ; FMUL R37, R37, R22
  %"cast_ptr.802" = bitcast ptr %"R37" to ptr
  %".7043" = load float, ptr %"cast_ptr.802"
  %"cast_ptr.803" = bitcast ptr %"R22" to ptr
  %".7044" = load float, ptr %"cast_ptr.803"
  %"fmul.278" = fmul float %".7043", %".7044"
  %".7045" = bitcast ptr %"R37" to ptr
  store float %"fmul.278", ptr %".7045"
  ; FFMA R25, R37, R24, R25
  %"cast_ptr.804" = bitcast ptr %"R37" to ptr
  %".7048" = load float, ptr %"cast_ptr.804"
  %"cast_ptr.805" = bitcast ptr %"R24" to ptr
  %".7049" = load float, ptr %"cast_ptr.805"
  %"cast_ptr.806" = bitcast ptr %"R25" to ptr
  %".7050" = load float, ptr %"cast_ptr.806"
  %"fmul.279" = fmul float %".7048", %".7049"
  %"fadd.266" = fadd float %"fmul.279", %".7050"
  %".7051" = bitcast ptr %"R25" to ptr
  store float %"fadd.266", ptr %".7051"
  ; FMUL R39, R39, R22
  %"cast_ptr.807" = bitcast ptr %"R39" to ptr
  %".7054" = load float, ptr %"cast_ptr.807"
  %"cast_ptr.808" = bitcast ptr %"R22" to ptr
  %".7055" = load float, ptr %"cast_ptr.808"
  %"fmul.280" = fmul float %".7054", %".7055"
  %".7056" = bitcast ptr %"R39" to ptr
  store float %"fmul.280", ptr %".7056"
  ; FFMA R25, R39, R38, R25
  %"cast_ptr.809" = bitcast ptr %"R39" to ptr
  %".7059" = load float, ptr %"cast_ptr.809"
  %"cast_ptr.810" = bitcast ptr %"R38" to ptr
  %".7060" = load float, ptr %"cast_ptr.810"
  %"cast_ptr.811" = bitcast ptr %"R25" to ptr
  %".7061" = load float, ptr %"cast_ptr.811"
  %"fmul.281" = fmul float %".7059", %".7060"
  %"fadd.267" = fadd float %"fmul.281", %".7061"
  %".7062" = bitcast ptr %"R25" to ptr
  store float %"fadd.267", ptr %".7062"
  ; FMUL R43, R43, R22
  %"cast_ptr.812" = bitcast ptr %"R43" to ptr
  %".7065" = load float, ptr %"cast_ptr.812"
  %"cast_ptr.813" = bitcast ptr %"R22" to ptr
  %".7066" = load float, ptr %"cast_ptr.813"
  %"fmul.282" = fmul float %".7065", %".7066"
  %".7067" = bitcast ptr %"R43" to ptr
  store float %"fmul.282", ptr %".7067"
  ; FFMA R25, R43, R46, R25
  %"cast_ptr.814" = bitcast ptr %"R43" to ptr
  %".7070" = load float, ptr %"cast_ptr.814"
  %"cast_ptr.815" = bitcast ptr %"R46" to ptr
  %".7071" = load float, ptr %"cast_ptr.815"
  %"cast_ptr.816" = bitcast ptr %"R25" to ptr
  %".7072" = load float, ptr %"cast_ptr.816"
  %"fmul.283" = fmul float %".7070", %".7071"
  %"fadd.268" = fadd float %"fmul.283", %".7072"
  %".7073" = bitcast ptr %"R25" to ptr
  store float %"fadd.268", ptr %".7073"
  ; FMUL R51, R51, R22
  %"cast_ptr.817" = bitcast ptr %"R51" to ptr
  %".7076" = load float, ptr %"cast_ptr.817"
  %"cast_ptr.818" = bitcast ptr %"R22" to ptr
  %".7077" = load float, ptr %"cast_ptr.818"
  %"fmul.284" = fmul float %".7076", %".7077"
  %".7078" = bitcast ptr %"R51" to ptr
  store float %"fmul.284", ptr %".7078"
  ; FFMA R25, R51, R44, R25
  %"cast_ptr.819" = bitcast ptr %"R51" to ptr
  %".7081" = load float, ptr %"cast_ptr.819"
  %"cast_ptr.820" = bitcast ptr %"R44" to ptr
  %".7082" = load float, ptr %"cast_ptr.820"
  %"cast_ptr.821" = bitcast ptr %"R25" to ptr
  %".7083" = load float, ptr %"cast_ptr.821"
  %"fmul.285" = fmul float %".7081", %".7082"
  %"fadd.269" = fadd float %"fmul.285", %".7083"
  %".7084" = bitcast ptr %"R25" to ptr
  store float %"fadd.269", ptr %".7084"
  ; FMUL R47, R47, R22
  %"cast_ptr.822" = bitcast ptr %"R47" to ptr
  %".7087" = load float, ptr %"cast_ptr.822"
  %"cast_ptr.823" = bitcast ptr %"R22" to ptr
  %".7088" = load float, ptr %"cast_ptr.823"
  %"fmul.286" = fmul float %".7087", %".7088"
  %".7089" = bitcast ptr %"R47" to ptr
  store float %"fmul.286", ptr %".7089"
  ; FFMA R25, R47, R42, R25
  %"cast_ptr.824" = bitcast ptr %"R47" to ptr
  %".7092" = load float, ptr %"cast_ptr.824"
  %"cast_ptr.825" = bitcast ptr %"R42" to ptr
  %".7093" = load float, ptr %"cast_ptr.825"
  %"cast_ptr.826" = bitcast ptr %"R25" to ptr
  %".7094" = load float, ptr %"cast_ptr.826"
  %"fmul.287" = fmul float %".7092", %".7093"
  %"fadd.270" = fadd float %"fmul.287", %".7094"
  %".7095" = bitcast ptr %"R25" to ptr
  store float %"fadd.270", ptr %".7095"
  ; FMUL R45, R45, R22
  %"cast_ptr.827" = bitcast ptr %"R45" to ptr
  %".7098" = load float, ptr %"cast_ptr.827"
  %"cast_ptr.828" = bitcast ptr %"R22" to ptr
  %".7099" = load float, ptr %"cast_ptr.828"
  %"fmul.288" = fmul float %".7098", %".7099"
  %".7100" = bitcast ptr %"R45" to ptr
  store float %"fmul.288", ptr %".7100"
  ; FFMA R25, R45, R40, R25
  %"cast_ptr.829" = bitcast ptr %"R45" to ptr
  %".7103" = load float, ptr %"cast_ptr.829"
  %"cast_ptr.830" = bitcast ptr %"R40" to ptr
  %".7104" = load float, ptr %"cast_ptr.830"
  %"cast_ptr.831" = bitcast ptr %"R25" to ptr
  %".7105" = load float, ptr %"cast_ptr.831"
  %"fmul.289" = fmul float %".7103", %".7104"
  %"fadd.271" = fadd float %"fmul.289", %".7105"
  %".7106" = bitcast ptr %"R25" to ptr
  store float %"fadd.271", ptr %".7106"
  ; FMUL R53, R53, R22
  %"cast_ptr.832" = bitcast ptr %"R53" to ptr
  %".7109" = load float, ptr %"cast_ptr.832"
  %"cast_ptr.833" = bitcast ptr %"R22" to ptr
  %".7110" = load float, ptr %"cast_ptr.833"
  %"fmul.290" = fmul float %".7109", %".7110"
  %".7111" = bitcast ptr %"R53" to ptr
  store float %"fmul.290", ptr %".7111"
  ; FFMA R25, R53, R54, R25
  %"cast_ptr.834" = bitcast ptr %"R53" to ptr
  %".7114" = load float, ptr %"cast_ptr.834"
  %"cast_ptr.835" = bitcast ptr %"R54" to ptr
  %".7115" = load float, ptr %"cast_ptr.835"
  %"cast_ptr.836" = bitcast ptr %"R25" to ptr
  %".7116" = load float, ptr %"cast_ptr.836"
  %"fmul.291" = fmul float %".7114", %".7115"
  %"fadd.272" = fadd float %"fmul.291", %".7116"
  %".7117" = bitcast ptr %"R25" to ptr
  store float %"fadd.272", ptr %".7117"
  ; FMUL R59, R59, R22
  %"cast_ptr.837" = bitcast ptr %"R59" to ptr
  %".7120" = load float, ptr %"cast_ptr.837"
  %"cast_ptr.838" = bitcast ptr %"R22" to ptr
  %".7121" = load float, ptr %"cast_ptr.838"
  %"fmul.292" = fmul float %".7120", %".7121"
  %".7122" = bitcast ptr %"R59" to ptr
  store float %"fmul.292", ptr %".7122"
  ; FFMA R25, R59, R52, R25
  %"cast_ptr.839" = bitcast ptr %"R59" to ptr
  %".7125" = load float, ptr %"cast_ptr.839"
  %"cast_ptr.840" = bitcast ptr %"R52" to ptr
  %".7126" = load float, ptr %"cast_ptr.840"
  %"cast_ptr.841" = bitcast ptr %"R25" to ptr
  %".7127" = load float, ptr %"cast_ptr.841"
  %"fmul.293" = fmul float %".7125", %".7126"
  %"fadd.273" = fadd float %"fmul.293", %".7127"
  %".7128" = bitcast ptr %"R25" to ptr
  store float %"fadd.273", ptr %".7128"
  ; FMUL R57, R57, R22
  %"cast_ptr.842" = bitcast ptr %"R57" to ptr
  %".7131" = load float, ptr %"cast_ptr.842"
  %"cast_ptr.843" = bitcast ptr %"R22" to ptr
  %".7132" = load float, ptr %"cast_ptr.843"
  %"fmul.294" = fmul float %".7131", %".7132"
  %".7133" = bitcast ptr %"R57" to ptr
  store float %"fmul.294", ptr %".7133"
  ; FFMA R25, R57, R50, R25
  %"cast_ptr.844" = bitcast ptr %"R57" to ptr
  %".7136" = load float, ptr %"cast_ptr.844"
  %"cast_ptr.845" = bitcast ptr %"R50" to ptr
  %".7137" = load float, ptr %"cast_ptr.845"
  %"cast_ptr.846" = bitcast ptr %"R25" to ptr
  %".7138" = load float, ptr %"cast_ptr.846"
  %"fmul.295" = fmul float %".7136", %".7137"
  %"fadd.274" = fadd float %"fmul.295", %".7138"
  %".7139" = bitcast ptr %"R25" to ptr
  store float %"fadd.274", ptr %".7139"
  ; FMUL R55, R55, R22.reuse
  %"cast_ptr.847" = bitcast ptr %"R55" to ptr
  %".7142" = load float, ptr %"cast_ptr.847"
  %"cast_ptr.848" = bitcast ptr %"R22" to ptr
  %".7143" = load float, ptr %"cast_ptr.848"
  %"fmul.296" = fmul float %".7142", %".7143"
  %".7144" = bitcast ptr %"R55" to ptr
  store float %"fmul.296", ptr %".7144"
  ; FMUL R61, R61, R22
  %"cast_ptr.849" = bitcast ptr %"R61" to ptr
  %".7147" = load float, ptr %"cast_ptr.849"
  %"cast_ptr.850" = bitcast ptr %"R22" to ptr
  %".7148" = load float, ptr %"cast_ptr.850"
  %"fmul.297" = fmul float %".7147", %".7148"
  %".7149" = bitcast ptr %"R61" to ptr
  store float %"fmul.297", ptr %".7149"
  ; FFMA R25, R55, R56, R25
  %"cast_ptr.851" = bitcast ptr %"R55" to ptr
  %".7152" = load float, ptr %"cast_ptr.851"
  %"cast_ptr.852" = bitcast ptr %"R56" to ptr
  %".7153" = load float, ptr %"cast_ptr.852"
  %"cast_ptr.853" = bitcast ptr %"R25" to ptr
  %".7154" = load float, ptr %"cast_ptr.853"
  %"fmul.298" = fmul float %".7152", %".7153"
  %"fadd.275" = fadd float %"fmul.298", %".7154"
  %".7155" = bitcast ptr %"R25" to ptr
  store float %"fadd.275", ptr %".7155"
  ; FFMA R25, R61, R58, R25
  %"cast_ptr.854" = bitcast ptr %"R61" to ptr
  %".7158" = load float, ptr %"cast_ptr.854"
  %"cast_ptr.855" = bitcast ptr %"R58" to ptr
  %".7159" = load float, ptr %"cast_ptr.855"
  %"cast_ptr.856" = bitcast ptr %"R25" to ptr
  %".7160" = load float, ptr %"cast_ptr.856"
  %"fmul.299" = fmul float %".7158", %".7159"
  %"fadd.276" = fadd float %"fmul.299", %".7160"
  %".7161" = bitcast ptr %"R25" to ptr
  store float %"fadd.276", ptr %".7161"
  ; FMUL R6, R6, R22.reuse
  %"cast_ptr.857" = bitcast ptr %"R6" to ptr
  %".7164" = load float, ptr %"cast_ptr.857"
  %"cast_ptr.858" = bitcast ptr %"R22" to ptr
  %".7165" = load float, ptr %"cast_ptr.858"
  %"fmul.300" = fmul float %".7164", %".7165"
  %".7166" = bitcast ptr %"R6" to ptr
  store float %"fmul.300", ptr %".7166"
  ; FMUL R41, R41, R22
  %"cast_ptr.859" = bitcast ptr %"R41" to ptr
  %".7169" = load float, ptr %"cast_ptr.859"
  %"cast_ptr.860" = bitcast ptr %"R22" to ptr
  %".7170" = load float, ptr %"cast_ptr.860"
  %"fmul.301" = fmul float %".7169", %".7170"
  %".7171" = bitcast ptr %"R41" to ptr
  store float %"fmul.301", ptr %".7171"
  ; FFMA R6, R6, R10, R25
  %"cast_ptr.861" = bitcast ptr %"R6" to ptr
  %".7174" = load float, ptr %"cast_ptr.861"
  %"cast_ptr.862" = bitcast ptr %"R10" to ptr
  %".7175" = load float, ptr %"cast_ptr.862"
  %"cast_ptr.863" = bitcast ptr %"R25" to ptr
  %".7176" = load float, ptr %"cast_ptr.863"
  %"fmul.302" = fmul float %".7174", %".7175"
  %"fadd.277" = fadd float %"fmul.302", %".7176"
  %".7177" = bitcast ptr %"R6" to ptr
  store float %"fadd.277", ptr %".7177"
  ; FMUL R7, R7, R22
  %"cast_ptr.864" = bitcast ptr %"R7" to ptr
  %".7180" = load float, ptr %"cast_ptr.864"
  %"cast_ptr.865" = bitcast ptr %"R22" to ptr
  %".7181" = load float, ptr %"cast_ptr.865"
  %"fmul.303" = fmul float %".7180", %".7181"
  %".7182" = bitcast ptr %"R7" to ptr
  store float %"fmul.303", ptr %".7182"
  ; FFMA R9, R41, R9, R6
  %"cast_ptr.866" = bitcast ptr %"R41" to ptr
  %".7185" = load float, ptr %"cast_ptr.866"
  %"cast_ptr.867" = bitcast ptr %"R9" to ptr
  %".7186" = load float, ptr %"cast_ptr.867"
  %"cast_ptr.868" = bitcast ptr %"R6" to ptr
  %".7187" = load float, ptr %"cast_ptr.868"
  %"fmul.304" = fmul float %".7185", %".7186"
  %"fadd.278" = fadd float %"fmul.304", %".7187"
  %".7188" = bitcast ptr %"R9" to ptr
  store float %"fadd.278", ptr %".7188"
  ; FMUL R60, R60, R22
  %"cast_ptr.869" = bitcast ptr %"R60" to ptr
  %".7191" = load float, ptr %"cast_ptr.869"
  %"cast_ptr.870" = bitcast ptr %"R22" to ptr
  %".7192" = load float, ptr %"cast_ptr.870"
  %"fmul.305" = fmul float %".7191", %".7192"
  %".7193" = bitcast ptr %"R60" to ptr
  store float %"fmul.305", ptr %".7193"
  ; FFMA R8, R7, R8, R9
  %"cast_ptr.871" = bitcast ptr %"R7" to ptr
  %".7196" = load float, ptr %"cast_ptr.871"
  %"cast_ptr.872" = bitcast ptr %"R8" to ptr
  %".7197" = load float, ptr %"cast_ptr.872"
  %"cast_ptr.873" = bitcast ptr %"R9" to ptr
  %".7198" = load float, ptr %"cast_ptr.873"
  %"fmul.306" = fmul float %".7196", %".7197"
  %"fadd.279" = fadd float %"fmul.306", %".7198"
  %".7199" = bitcast ptr %"R8" to ptr
  store float %"fadd.279", ptr %".7199"
  ; FFMA R21, R60, R11, R8
  %"cast_ptr.874" = bitcast ptr %"R60" to ptr
  %".7202" = load float, ptr %"cast_ptr.874"
  %"cast_ptr.875" = bitcast ptr %"R11" to ptr
  %".7203" = load float, ptr %"cast_ptr.875"
  %"cast_ptr.876" = bitcast ptr %"R8" to ptr
  %".7204" = load float, ptr %"cast_ptr.876"
  %"fmul.307" = fmul float %".7202", %".7203"
  %"fadd.280" = fadd float %"fmul.307", %".7204"
  %".7205" = bitcast ptr %"R21" to ptr
  store float %"fadd.280", ptr %".7205"
  ; @P1 BRA `(.L_x_39)
  %".7208" = load i1, ptr %"P1"
  %".7209" = icmp eq i1 %".7208", 1
  br i1 %".7209", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".7212" = load i32, ptr %"R35"
  %".7213" = load i1, ptr %"PT"
  %"cmp.61" = icmp sgt i32 %".7212", 4
  %".7214" = xor i1 %"cmp.61", -1
  %".7215" = and i1 %"cmp.61", %".7213"
  %".7216" = and i1 %".7214", %".7213"
  store i1 %".7215", ptr %"P1"
  ; @!P1 BRA `(.L_x_40)
  %".7219" = load i1, ptr %"P1"
  %".7220" = icmp ne i1 %".7219", 1
  br i1 %".7220", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".7225" = load i32, ptr %"R3"
  %".7226" = load i32, ptr %"R34"
  %".7227" = add i32 %".7225", %".7226"
  %".7228" = add i32 %".7227", 0
  store i32 %".7228", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".7231" = load i32, ptr %"R34"
  %".7232" = load i32, ptr %"R11"
  %"imad_ext1.82" = zext i32 %".7231" to i64
  %"imad_ext2.82" = zext i32 %".7232" to i64
  %"imad_mul.98" = mul i64 %"imad_ext1.82", %"imad_ext2.82"
  %".7233" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.98" = add i64 %"imad_mul.98", %".7233"
  %".7234" = and i64 %"imad_add.98", 18446744069414584320
  %".7235" = lshr i64 %".7234", 32
  %"trunc32.194" = trunc i64 %".7235" to i32
  %"trunc32.195" = trunc i64 %"imad_add.98" to i32
  store i32 %"trunc32.195", ptr %"R8"
  store i32 %"trunc32.194", ptr %"R9"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".7239" = load i32, ptr %"R6"
  %".7240" = load i32, ptr %"R11"
  %"imad_ext1.83" = zext i32 %".7239" to i64
  %"imad_ext2.83" = zext i32 %".7240" to i64
  %"imad_mul.99" = mul i64 %"imad_ext1.83", %"imad_ext2.83"
  %".7241" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.99" = add i64 %"imad_mul.99", %".7241"
  %".7242" = and i64 %"imad_add.99", 18446744069414584320
  %".7243" = lshr i64 %".7242", 32
  %"trunc32.196" = trunc i64 %".7243" to i32
  %"trunc32.197" = trunc i64 %"imad_add.99" to i32
  store i32 %"trunc32.197", ptr %"R6"
  store i32 %"trunc32.196", ptr %"R7"
  ; IADD3 R4, R34, 0x4, RZ
  %".7247" = load i32, ptr %"R34"
  %".7248" = add i32 %".7247", 4
  %".7249" = add i32 %".7248", 0
  store i32 %".7249", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".7252" = load i32, ptr %"R8"
  %"zext.720" = zext i32 %".7252" to i64
  %".7253" = load i32, ptr %"R9"
  %"zext.721" = zext i32 %".7253" to i64
  %"shl.380" = shl i64 %"zext.721", 32
  %"or.345" = or i64 %"shl.380", %"zext.720"
  %"inttoptr_bytes.315" = inttoptr i64 %"or.345" to ptr addrspace(1)
  %"ptr_cast_for_access.315" = bitcast ptr addrspace(1) %"inttoptr_bytes.315" to ptr addrspace(1)
  %".7254" = load float, ptr addrspace(1) %"ptr_cast_for_access.315"
  %".7255" = bitcast ptr %"R13" to ptr
  store float %".7254", ptr %".7255"
  ; IADD3 R10, R3, R4, RZ
  %".7258" = load i32, ptr %"R3"
  %".7259" = load i32, ptr %"R4"
  %".7260" = add i32 %".7258", %".7259"
  %".7261" = add i32 %".7260", 0
  store i32 %".7261", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".7264" = load i32, ptr %"R6"
  %"zext.722" = zext i32 %".7264" to i64
  %".7265" = load i32, ptr %"R7"
  %"zext.723" = zext i32 %".7265" to i64
  %"shl.381" = shl i64 %"zext.723", 32
  %"or.346" = or i64 %"shl.381", %"zext.722"
  %"inttoptr_bytes.316" = inttoptr i64 %"or.346" to ptr addrspace(1)
  %"ptr_cast_for_access.316" = bitcast ptr addrspace(1) %"inttoptr_bytes.316" to ptr addrspace(1)
  %".7266" = load float, ptr addrspace(1) %"ptr_cast_for_access.316"
  %".7267" = bitcast ptr %"R12" to ptr
  store float %".7266", ptr %".7267"
  ; LDG.E.SYS R25, [R8+0x4]
  %".7270" = load i32, ptr %"R8"
  %"zext.724" = zext i32 %".7270" to i64
  %".7271" = load i32, ptr %"R9"
  %"zext.725" = zext i32 %".7271" to i64
  %"shl.382" = shl i64 %"zext.725", 32
  %"or.347" = or i64 %"shl.382", %"zext.724"
  %"ptr_plus_imm.228" = add i64 %"or.347", 4
  %"inttoptr_bytes.317" = inttoptr i64 %"ptr_plus_imm.228" to ptr addrspace(1)
  %"ptr_cast_for_access.317" = bitcast ptr addrspace(1) %"inttoptr_bytes.317" to ptr addrspace(1)
  %".7272" = load float, ptr addrspace(1) %"ptr_cast_for_access.317"
  %".7273" = bitcast ptr %"R25" to ptr
  store float %".7272", ptr %".7273"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".7276" = load i32, ptr %"R4"
  %".7277" = load i32, ptr %"R11"
  %"imad_ext1.84" = zext i32 %".7276" to i64
  %"imad_ext2.84" = zext i32 %".7277" to i64
  %"imad_mul.100" = mul i64 %"imad_ext1.84", %"imad_ext2.84"
  %".7278" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.100" = add i64 %"imad_mul.100", %".7278"
  %".7279" = and i64 %"imad_add.100", 18446744069414584320
  %".7280" = lshr i64 %".7279", 32
  %"trunc32.198" = trunc i64 %".7280" to i32
  %"trunc32.199" = trunc i64 %"imad_add.100" to i32
  store i32 %"trunc32.199", ptr %"R4"
  store i32 %"trunc32.198", ptr %"R5"
  ; LDG.E.SYS R24, [R6+0x4]
  %".7284" = load i32, ptr %"R6"
  %"zext.726" = zext i32 %".7284" to i64
  %".7285" = load i32, ptr %"R7"
  %"zext.727" = zext i32 %".7285" to i64
  %"shl.383" = shl i64 %"zext.727", 32
  %"or.348" = or i64 %"shl.383", %"zext.726"
  %"ptr_plus_imm.229" = add i64 %"or.348", 4
  %"inttoptr_bytes.318" = inttoptr i64 %"ptr_plus_imm.229" to ptr addrspace(1)
  %"ptr_cast_for_access.318" = bitcast ptr addrspace(1) %"inttoptr_bytes.318" to ptr addrspace(1)
  %".7286" = load float, ptr addrspace(1) %"ptr_cast_for_access.318"
  %".7287" = bitcast ptr %"R24" to ptr
  store float %".7286", ptr %".7287"
  ; LDG.E.SYS R37, [R8+0x8]
  %".7290" = load i32, ptr %"R8"
  %"zext.728" = zext i32 %".7290" to i64
  %".7291" = load i32, ptr %"R9"
  %"zext.729" = zext i32 %".7291" to i64
  %"shl.384" = shl i64 %"zext.729", 32
  %"or.349" = or i64 %"shl.384", %"zext.728"
  %"ptr_plus_imm.230" = add i64 %"or.349", 8
  %"inttoptr_bytes.319" = inttoptr i64 %"ptr_plus_imm.230" to ptr addrspace(1)
  %"ptr_cast_for_access.319" = bitcast ptr addrspace(1) %"inttoptr_bytes.319" to ptr addrspace(1)
  %".7292" = load float, ptr addrspace(1) %"ptr_cast_for_access.319"
  %".7293" = bitcast ptr %"R37" to ptr
  store float %".7292", ptr %".7293"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".7296" = load i32, ptr %"R10"
  %".7297" = load i32, ptr %"R11"
  %"imad_ext1.85" = zext i32 %".7296" to i64
  %"imad_ext2.85" = zext i32 %".7297" to i64
  %"imad_mul.101" = mul i64 %"imad_ext1.85", %"imad_ext2.85"
  %".7298" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.101" = add i64 %"imad_mul.101", %".7298"
  %".7299" = and i64 %"imad_add.101", 18446744069414584320
  %".7300" = lshr i64 %".7299", 32
  %"trunc32.200" = trunc i64 %".7300" to i32
  %"trunc32.201" = trunc i64 %"imad_add.101" to i32
  store i32 %"trunc32.201", ptr %"R10"
  store i32 %"trunc32.200", ptr %"R11"
  ; LDG.E.SYS R36, [R6+0x8]
  %".7304" = load i32, ptr %"R6"
  %"zext.730" = zext i32 %".7304" to i64
  %".7305" = load i32, ptr %"R7"
  %"zext.731" = zext i32 %".7305" to i64
  %"shl.385" = shl i64 %"zext.731", 32
  %"or.350" = or i64 %"shl.385", %"zext.730"
  %"ptr_plus_imm.231" = add i64 %"or.350", 8
  %"inttoptr_bytes.320" = inttoptr i64 %"ptr_plus_imm.231" to ptr addrspace(1)
  %"ptr_cast_for_access.320" = bitcast ptr addrspace(1) %"inttoptr_bytes.320" to ptr addrspace(1)
  %".7306" = load float, ptr addrspace(1) %"ptr_cast_for_access.320"
  %".7307" = bitcast ptr %"R36" to ptr
  store float %".7306", ptr %".7307"
  ; LDG.E.SYS R39, [R8+0xc]
  %".7310" = load i32, ptr %"R8"
  %"zext.732" = zext i32 %".7310" to i64
  %".7311" = load i32, ptr %"R9"
  %"zext.733" = zext i32 %".7311" to i64
  %"shl.386" = shl i64 %"zext.733", 32
  %"or.351" = or i64 %"shl.386", %"zext.732"
  %"ptr_plus_imm.232" = add i64 %"or.351", 12
  %"inttoptr_bytes.321" = inttoptr i64 %"ptr_plus_imm.232" to ptr addrspace(1)
  %"ptr_cast_for_access.321" = bitcast ptr addrspace(1) %"inttoptr_bytes.321" to ptr addrspace(1)
  %".7312" = load float, ptr addrspace(1) %"ptr_cast_for_access.321"
  %".7313" = bitcast ptr %"R39" to ptr
  store float %".7312", ptr %".7313"
  ; LDG.E.SYS R38, [R6+0xc]
  %".7316" = load i32, ptr %"R6"
  %"zext.734" = zext i32 %".7316" to i64
  %".7317" = load i32, ptr %"R7"
  %"zext.735" = zext i32 %".7317" to i64
  %"shl.387" = shl i64 %"zext.735", 32
  %"or.352" = or i64 %"shl.387", %"zext.734"
  %"ptr_plus_imm.233" = add i64 %"or.352", 12
  %"inttoptr_bytes.322" = inttoptr i64 %"ptr_plus_imm.233" to ptr addrspace(1)
  %"ptr_cast_for_access.322" = bitcast ptr addrspace(1) %"inttoptr_bytes.322" to ptr addrspace(1)
  %".7318" = load float, ptr addrspace(1) %"ptr_cast_for_access.322"
  %".7319" = bitcast ptr %"R38" to ptr
  store float %".7318", ptr %".7319"
  ; LDG.E.SYS R41, [R4]
  %".7322" = load i32, ptr %"R4"
  %"zext.736" = zext i32 %".7322" to i64
  %".7323" = load i32, ptr %"R5"
  %"zext.737" = zext i32 %".7323" to i64
  %"shl.388" = shl i64 %"zext.737", 32
  %"or.353" = or i64 %"shl.388", %"zext.736"
  %"inttoptr_bytes.323" = inttoptr i64 %"or.353" to ptr addrspace(1)
  %"ptr_cast_for_access.323" = bitcast ptr addrspace(1) %"inttoptr_bytes.323" to ptr addrspace(1)
  %".7324" = load float, ptr addrspace(1) %"ptr_cast_for_access.323"
  %".7325" = bitcast ptr %"R41" to ptr
  store float %".7324", ptr %".7325"
  ; LDG.E.SYS R40, [R10]
  %".7328" = load i32, ptr %"R10"
  %"zext.738" = zext i32 %".7328" to i64
  %".7329" = load i32, ptr %"R11"
  %"zext.739" = zext i32 %".7329" to i64
  %"shl.389" = shl i64 %"zext.739", 32
  %"or.354" = or i64 %"shl.389", %"zext.738"
  %"inttoptr_bytes.324" = inttoptr i64 %"or.354" to ptr addrspace(1)
  %"ptr_cast_for_access.324" = bitcast ptr addrspace(1) %"inttoptr_bytes.324" to ptr addrspace(1)
  %".7330" = load float, ptr addrspace(1) %"ptr_cast_for_access.324"
  %".7331" = bitcast ptr %"R40" to ptr
  store float %".7330", ptr %".7331"
  ; LDG.E.SYS R43, [R4+0x4]
  %".7334" = load i32, ptr %"R4"
  %"zext.740" = zext i32 %".7334" to i64
  %".7335" = load i32, ptr %"R5"
  %"zext.741" = zext i32 %".7335" to i64
  %"shl.390" = shl i64 %"zext.741", 32
  %"or.355" = or i64 %"shl.390", %"zext.740"
  %"ptr_plus_imm.234" = add i64 %"or.355", 4
  %"inttoptr_bytes.325" = inttoptr i64 %"ptr_plus_imm.234" to ptr addrspace(1)
  %"ptr_cast_for_access.325" = bitcast ptr addrspace(1) %"inttoptr_bytes.325" to ptr addrspace(1)
  %".7336" = load float, ptr addrspace(1) %"ptr_cast_for_access.325"
  %".7337" = bitcast ptr %"R43" to ptr
  store float %".7336", ptr %".7337"
  ; LDG.E.SYS R42, [R10+0x4]
  %".7340" = load i32, ptr %"R10"
  %"zext.742" = zext i32 %".7340" to i64
  %".7341" = load i32, ptr %"R11"
  %"zext.743" = zext i32 %".7341" to i64
  %"shl.391" = shl i64 %"zext.743", 32
  %"or.356" = or i64 %"shl.391", %"zext.742"
  %"ptr_plus_imm.235" = add i64 %"or.356", 4
  %"inttoptr_bytes.326" = inttoptr i64 %"ptr_plus_imm.235" to ptr addrspace(1)
  %"ptr_cast_for_access.326" = bitcast ptr addrspace(1) %"inttoptr_bytes.326" to ptr addrspace(1)
  %".7342" = load float, ptr addrspace(1) %"ptr_cast_for_access.326"
  %".7343" = bitcast ptr %"R42" to ptr
  store float %".7342", ptr %".7343"
  ; LDG.E.SYS R45, [R4+0x8]
  %".7346" = load i32, ptr %"R4"
  %"zext.744" = zext i32 %".7346" to i64
  %".7347" = load i32, ptr %"R5"
  %"zext.745" = zext i32 %".7347" to i64
  %"shl.392" = shl i64 %"zext.745", 32
  %"or.357" = or i64 %"shl.392", %"zext.744"
  %"ptr_plus_imm.236" = add i64 %"or.357", 8
  %"inttoptr_bytes.327" = inttoptr i64 %"ptr_plus_imm.236" to ptr addrspace(1)
  %"ptr_cast_for_access.327" = bitcast ptr addrspace(1) %"inttoptr_bytes.327" to ptr addrspace(1)
  %".7348" = load float, ptr addrspace(1) %"ptr_cast_for_access.327"
  %".7349" = bitcast ptr %"R45" to ptr
  store float %".7348", ptr %".7349"
  ; LDG.E.SYS R47, [R4+0xc]
  %".7352" = load i32, ptr %"R4"
  %"zext.746" = zext i32 %".7352" to i64
  %".7353" = load i32, ptr %"R5"
  %"zext.747" = zext i32 %".7353" to i64
  %"shl.393" = shl i64 %"zext.747", 32
  %"or.358" = or i64 %"shl.393", %"zext.746"
  %"ptr_plus_imm.237" = add i64 %"or.358", 12
  %"inttoptr_bytes.328" = inttoptr i64 %"ptr_plus_imm.237" to ptr addrspace(1)
  %"ptr_cast_for_access.328" = bitcast ptr addrspace(1) %"inttoptr_bytes.328" to ptr addrspace(1)
  %".7354" = load float, ptr addrspace(1) %"ptr_cast_for_access.328"
  %".7355" = bitcast ptr %"R47" to ptr
  store float %".7354", ptr %".7355"
  ; LDG.E.SYS R44, [R10+0x8]
  %".7358" = load i32, ptr %"R10"
  %"zext.748" = zext i32 %".7358" to i64
  %".7359" = load i32, ptr %"R11"
  %"zext.749" = zext i32 %".7359" to i64
  %"shl.394" = shl i64 %"zext.749", 32
  %"or.359" = or i64 %"shl.394", %"zext.748"
  %"ptr_plus_imm.238" = add i64 %"or.359", 8
  %"inttoptr_bytes.329" = inttoptr i64 %"ptr_plus_imm.238" to ptr addrspace(1)
  %"ptr_cast_for_access.329" = bitcast ptr addrspace(1) %"inttoptr_bytes.329" to ptr addrspace(1)
  %".7360" = load float, ptr addrspace(1) %"ptr_cast_for_access.329"
  %".7361" = bitcast ptr %"R44" to ptr
  store float %".7360", ptr %".7361"
  ; LDG.E.SYS R46, [R10+0xc]
  %".7364" = load i32, ptr %"R10"
  %"zext.750" = zext i32 %".7364" to i64
  %".7365" = load i32, ptr %"R11"
  %"zext.751" = zext i32 %".7365" to i64
  %"shl.395" = shl i64 %"zext.751", 32
  %"or.360" = or i64 %"shl.395", %"zext.750"
  %"ptr_plus_imm.239" = add i64 %"or.360", 12
  %"inttoptr_bytes.330" = inttoptr i64 %"ptr_plus_imm.239" to ptr addrspace(1)
  %"ptr_cast_for_access.330" = bitcast ptr addrspace(1) %"inttoptr_bytes.330" to ptr addrspace(1)
  %".7366" = load float, ptr addrspace(1) %"ptr_cast_for_access.330"
  %".7367" = bitcast ptr %"R46" to ptr
  store float %".7366", ptr %".7367"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".7370" = xor i1 1, 1
  %".7371" = and i1 %".7370", 1
  %".7372" = and i1 %".7371", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".7374" = load i32, ptr %"R35"
  %".7375" = add i32 %".7374", -8
  %".7376" = add i32 %".7375", 0
  store i32 %".7376", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".7379" = load i32, ptr %"R34"
  %".7380" = add i32 %".7379", 8
  %".7381" = add i32 %".7380", 0
  store i32 %".7381", ptr %"R34"
  ; FMUL R8, R13, R22
  %"cast_ptr.877" = bitcast ptr %"R13" to ptr
  %".7384" = load float, ptr %"cast_ptr.877"
  %"cast_ptr.878" = bitcast ptr %"R22" to ptr
  %".7385" = load float, ptr %"cast_ptr.878"
  %"fmul.308" = fmul float %".7384", %".7385"
  %".7386" = bitcast ptr %"R8" to ptr
  store float %"fmul.308", ptr %".7386"
  ; FFMA R8, R8, R12, R21
  %"cast_ptr.879" = bitcast ptr %"R8" to ptr
  %".7389" = load float, ptr %"cast_ptr.879"
  %"cast_ptr.880" = bitcast ptr %"R12" to ptr
  %".7390" = load float, ptr %"cast_ptr.880"
  %"cast_ptr.881" = bitcast ptr %"R21" to ptr
  %".7391" = load float, ptr %"cast_ptr.881"
  %"fmul.309" = fmul float %".7389", %".7390"
  %"fadd.281" = fadd float %"fmul.309", %".7391"
  %".7392" = bitcast ptr %"R8" to ptr
  store float %"fadd.281", ptr %".7392"
  ; FMUL R25, R25, R22
  %"cast_ptr.882" = bitcast ptr %"R25" to ptr
  %".7395" = load float, ptr %"cast_ptr.882"
  %"cast_ptr.883" = bitcast ptr %"R22" to ptr
  %".7396" = load float, ptr %"cast_ptr.883"
  %"fmul.310" = fmul float %".7395", %".7396"
  %".7397" = bitcast ptr %"R25" to ptr
  store float %"fmul.310", ptr %".7397"
  ; FFMA R8, R25, R24, R8
  %"cast_ptr.884" = bitcast ptr %"R25" to ptr
  %".7400" = load float, ptr %"cast_ptr.884"
  %"cast_ptr.885" = bitcast ptr %"R24" to ptr
  %".7401" = load float, ptr %"cast_ptr.885"
  %"cast_ptr.886" = bitcast ptr %"R8" to ptr
  %".7402" = load float, ptr %"cast_ptr.886"
  %"fmul.311" = fmul float %".7400", %".7401"
  %"fadd.282" = fadd float %"fmul.311", %".7402"
  %".7403" = bitcast ptr %"R8" to ptr
  store float %"fadd.282", ptr %".7403"
  ; FMUL R37, R37, R22
  %"cast_ptr.887" = bitcast ptr %"R37" to ptr
  %".7406" = load float, ptr %"cast_ptr.887"
  %"cast_ptr.888" = bitcast ptr %"R22" to ptr
  %".7407" = load float, ptr %"cast_ptr.888"
  %"fmul.312" = fmul float %".7406", %".7407"
  %".7408" = bitcast ptr %"R37" to ptr
  store float %"fmul.312", ptr %".7408"
  ; FFMA R8, R37, R36, R8
  %"cast_ptr.889" = bitcast ptr %"R37" to ptr
  %".7411" = load float, ptr %"cast_ptr.889"
  %"cast_ptr.890" = bitcast ptr %"R36" to ptr
  %".7412" = load float, ptr %"cast_ptr.890"
  %"cast_ptr.891" = bitcast ptr %"R8" to ptr
  %".7413" = load float, ptr %"cast_ptr.891"
  %"fmul.313" = fmul float %".7411", %".7412"
  %"fadd.283" = fadd float %"fmul.313", %".7413"
  %".7414" = bitcast ptr %"R8" to ptr
  store float %"fadd.283", ptr %".7414"
  ; FMUL R39, R39, R22
  %"cast_ptr.892" = bitcast ptr %"R39" to ptr
  %".7417" = load float, ptr %"cast_ptr.892"
  %"cast_ptr.893" = bitcast ptr %"R22" to ptr
  %".7418" = load float, ptr %"cast_ptr.893"
  %"fmul.314" = fmul float %".7417", %".7418"
  %".7419" = bitcast ptr %"R39" to ptr
  store float %"fmul.314", ptr %".7419"
  ; FFMA R8, R39, R38, R8
  %"cast_ptr.894" = bitcast ptr %"R39" to ptr
  %".7422" = load float, ptr %"cast_ptr.894"
  %"cast_ptr.895" = bitcast ptr %"R38" to ptr
  %".7423" = load float, ptr %"cast_ptr.895"
  %"cast_ptr.896" = bitcast ptr %"R8" to ptr
  %".7424" = load float, ptr %"cast_ptr.896"
  %"fmul.315" = fmul float %".7422", %".7423"
  %"fadd.284" = fadd float %"fmul.315", %".7424"
  %".7425" = bitcast ptr %"R8" to ptr
  store float %"fadd.284", ptr %".7425"
  ; FMUL R41, R41, R22
  %"cast_ptr.897" = bitcast ptr %"R41" to ptr
  %".7428" = load float, ptr %"cast_ptr.897"
  %"cast_ptr.898" = bitcast ptr %"R22" to ptr
  %".7429" = load float, ptr %"cast_ptr.898"
  %"fmul.316" = fmul float %".7428", %".7429"
  %".7430" = bitcast ptr %"R41" to ptr
  store float %"fmul.316", ptr %".7430"
  ; FFMA R8, R41, R40, R8
  %"cast_ptr.899" = bitcast ptr %"R41" to ptr
  %".7433" = load float, ptr %"cast_ptr.899"
  %"cast_ptr.900" = bitcast ptr %"R40" to ptr
  %".7434" = load float, ptr %"cast_ptr.900"
  %"cast_ptr.901" = bitcast ptr %"R8" to ptr
  %".7435" = load float, ptr %"cast_ptr.901"
  %"fmul.317" = fmul float %".7433", %".7434"
  %"fadd.285" = fadd float %"fmul.317", %".7435"
  %".7436" = bitcast ptr %"R8" to ptr
  store float %"fadd.285", ptr %".7436"
  ; FMUL R43, R43, R22
  %"cast_ptr.902" = bitcast ptr %"R43" to ptr
  %".7439" = load float, ptr %"cast_ptr.902"
  %"cast_ptr.903" = bitcast ptr %"R22" to ptr
  %".7440" = load float, ptr %"cast_ptr.903"
  %"fmul.318" = fmul float %".7439", %".7440"
  %".7441" = bitcast ptr %"R43" to ptr
  store float %"fmul.318", ptr %".7441"
  ; FFMA R8, R43, R42, R8
  %"cast_ptr.904" = bitcast ptr %"R43" to ptr
  %".7444" = load float, ptr %"cast_ptr.904"
  %"cast_ptr.905" = bitcast ptr %"R42" to ptr
  %".7445" = load float, ptr %"cast_ptr.905"
  %"cast_ptr.906" = bitcast ptr %"R8" to ptr
  %".7446" = load float, ptr %"cast_ptr.906"
  %"fmul.319" = fmul float %".7444", %".7445"
  %"fadd.286" = fadd float %"fmul.319", %".7446"
  %".7447" = bitcast ptr %"R8" to ptr
  store float %"fadd.286", ptr %".7447"
  ; FMUL R45, R45, R22.reuse
  %"cast_ptr.907" = bitcast ptr %"R45" to ptr
  %".7450" = load float, ptr %"cast_ptr.907"
  %"cast_ptr.908" = bitcast ptr %"R22" to ptr
  %".7451" = load float, ptr %"cast_ptr.908"
  %"fmul.320" = fmul float %".7450", %".7451"
  %".7452" = bitcast ptr %"R45" to ptr
  store float %"fmul.320", ptr %".7452"
  ; FMUL R47, R47, R22
  %"cast_ptr.909" = bitcast ptr %"R47" to ptr
  %".7455" = load float, ptr %"cast_ptr.909"
  %"cast_ptr.910" = bitcast ptr %"R22" to ptr
  %".7456" = load float, ptr %"cast_ptr.910"
  %"fmul.321" = fmul float %".7455", %".7456"
  %".7457" = bitcast ptr %"R47" to ptr
  store float %"fmul.321", ptr %".7457"
  ; FFMA R8, R45, R44, R8
  %"cast_ptr.911" = bitcast ptr %"R45" to ptr
  %".7460" = load float, ptr %"cast_ptr.911"
  %"cast_ptr.912" = bitcast ptr %"R44" to ptr
  %".7461" = load float, ptr %"cast_ptr.912"
  %"cast_ptr.913" = bitcast ptr %"R8" to ptr
  %".7462" = load float, ptr %"cast_ptr.913"
  %"fmul.322" = fmul float %".7460", %".7461"
  %"fadd.287" = fadd float %"fmul.322", %".7462"
  %".7463" = bitcast ptr %"R8" to ptr
  store float %"fadd.287", ptr %".7463"
  ; FFMA R21, R47, R46, R8
  %"cast_ptr.914" = bitcast ptr %"R47" to ptr
  %".7466" = load float, ptr %"cast_ptr.914"
  %"cast_ptr.915" = bitcast ptr %"R46" to ptr
  %".7467" = load float, ptr %"cast_ptr.915"
  %"cast_ptr.916" = bitcast ptr %"R8" to ptr
  %".7468" = load float, ptr %"cast_ptr.916"
  %"fmul.323" = fmul float %".7466", %".7467"
  %"fadd.288" = fadd float %"fmul.323", %".7468"
  %".7469" = bitcast ptr %"R21" to ptr
  store float %"fadd.288", ptr %".7469"
  br label %".L_x_40"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".7473" = load i32, ptr %"R35"
  %".7474" = load i1, ptr %"P0"
  %"cmp.62" = icmp ne i32 %".7473", 0
  %".7475" = xor i1 %"cmp.62", -1
  %".7476" = or i1 %"cmp.62", %".7474"
  %".7477" = or i1 %".7475", %".7474"
  store i1 %".7476", ptr %"P0"
  ; @!P0 BRA `(.L_x_36)
  %".7480" = load i1, ptr %"P0"
  %".7481" = icmp ne i1 %".7480", 1
  br i1 %".7481", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".7486" = load i32, ptr %"R3"
  %".7487" = load i32, ptr %"R34"
  %".7488" = add i32 %".7486", %".7487"
  %".7489" = add i32 %".7488", 0
  store i32 %".7489", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".7492" = load i32, ptr %"R34"
  %".7493" = load i32, ptr %"R7"
  %"imad_ext1.86" = zext i32 %".7492" to i64
  %"imad_ext2.86" = zext i32 %".7493" to i64
  %"imad_mul.102" = mul i64 %"imad_ext1.86", %"imad_ext2.86"
  %".7494" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.102" = add i64 %"imad_mul.102", %".7494"
  %".7495" = and i64 %"imad_add.102", 18446744069414584320
  %".7496" = lshr i64 %".7495", 32
  %"trunc32.202" = trunc i64 %".7496" to i32
  %"trunc32.203" = trunc i64 %"imad_add.102" to i32
  store i32 %"trunc32.203", ptr %"R4"
  store i32 %"trunc32.202", ptr %"R5"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".7500" = load i32, ptr %"R6"
  %".7501" = load i32, ptr %"R7"
  %"imad_ext1.87" = zext i32 %".7500" to i64
  %"imad_ext2.87" = zext i32 %".7501" to i64
  %"imad_mul.103" = mul i64 %"imad_ext1.87", %"imad_ext2.87"
  %".7502" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.103" = add i64 %"imad_mul.103", %".7502"
  %".7503" = and i64 %"imad_add.103", 18446744069414584320
  %".7504" = lshr i64 %".7503", 32
  %"trunc32.204" = trunc i64 %".7504" to i32
  %"trunc32.205" = trunc i64 %"imad_add.103" to i32
  store i32 %"trunc32.205", ptr %"R6"
  store i32 %"trunc32.204", ptr %"R7"
  ; LDG.E.SYS R9, [R4]
  %".7508" = load i32, ptr %"R4"
  %"zext.752" = zext i32 %".7508" to i64
  %".7509" = load i32, ptr %"R5"
  %"zext.753" = zext i32 %".7509" to i64
  %"shl.396" = shl i64 %"zext.753", 32
  %"or.361" = or i64 %"shl.396", %"zext.752"
  %"inttoptr_bytes.331" = inttoptr i64 %"or.361" to ptr addrspace(1)
  %"ptr_cast_for_access.331" = bitcast ptr addrspace(1) %"inttoptr_bytes.331" to ptr addrspace(1)
  %".7510" = load float, ptr addrspace(1) %"ptr_cast_for_access.331"
  %".7511" = bitcast ptr %"R9" to ptr
  store float %".7510", ptr %".7511"
  ; LDG.E.SYS R10, [R6]
  %".7514" = load i32, ptr %"R6"
  %"zext.754" = zext i32 %".7514" to i64
  %".7515" = load i32, ptr %"R7"
  %"zext.755" = zext i32 %".7515" to i64
  %"shl.397" = shl i64 %"zext.755", 32
  %"or.362" = or i64 %"shl.397", %"zext.754"
  %"inttoptr_bytes.332" = inttoptr i64 %"or.362" to ptr addrspace(1)
  %"ptr_cast_for_access.332" = bitcast ptr addrspace(1) %"inttoptr_bytes.332" to ptr addrspace(1)
  %".7516" = load float, ptr addrspace(1) %"ptr_cast_for_access.332"
  %".7517" = bitcast ptr %"R10" to ptr
  store float %".7516", ptr %".7517"
  ; LDG.E.SYS R11, [R4+0x4]
  %".7520" = load i32, ptr %"R4"
  %"zext.756" = zext i32 %".7520" to i64
  %".7521" = load i32, ptr %"R5"
  %"zext.757" = zext i32 %".7521" to i64
  %"shl.398" = shl i64 %"zext.757", 32
  %"or.363" = or i64 %"shl.398", %"zext.756"
  %"ptr_plus_imm.240" = add i64 %"or.363", 4
  %"inttoptr_bytes.333" = inttoptr i64 %"ptr_plus_imm.240" to ptr addrspace(1)
  %"ptr_cast_for_access.333" = bitcast ptr addrspace(1) %"inttoptr_bytes.333" to ptr addrspace(1)
  %".7522" = load float, ptr addrspace(1) %"ptr_cast_for_access.333"
  %".7523" = bitcast ptr %"R11" to ptr
  store float %".7522", ptr %".7523"
  ; LDG.E.SYS R12, [R6+0x4]
  %".7526" = load i32, ptr %"R6"
  %"zext.758" = zext i32 %".7526" to i64
  %".7527" = load i32, ptr %"R7"
  %"zext.759" = zext i32 %".7527" to i64
  %"shl.399" = shl i64 %"zext.759", 32
  %"or.364" = or i64 %"shl.399", %"zext.758"
  %"ptr_plus_imm.241" = add i64 %"or.364", 4
  %"inttoptr_bytes.334" = inttoptr i64 %"ptr_plus_imm.241" to ptr addrspace(1)
  %"ptr_cast_for_access.334" = bitcast ptr addrspace(1) %"inttoptr_bytes.334" to ptr addrspace(1)
  %".7528" = load float, ptr addrspace(1) %"ptr_cast_for_access.334"
  %".7529" = bitcast ptr %"R12" to ptr
  store float %".7528", ptr %".7529"
  ; LDG.E.SYS R13, [R4+0x8]
  %".7532" = load i32, ptr %"R4"
  %"zext.760" = zext i32 %".7532" to i64
  %".7533" = load i32, ptr %"R5"
  %"zext.761" = zext i32 %".7533" to i64
  %"shl.400" = shl i64 %"zext.761", 32
  %"or.365" = or i64 %"shl.400", %"zext.760"
  %"ptr_plus_imm.242" = add i64 %"or.365", 8
  %"inttoptr_bytes.335" = inttoptr i64 %"ptr_plus_imm.242" to ptr addrspace(1)
  %"ptr_cast_for_access.335" = bitcast ptr addrspace(1) %"inttoptr_bytes.335" to ptr addrspace(1)
  %".7534" = load float, ptr addrspace(1) %"ptr_cast_for_access.335"
  %".7535" = bitcast ptr %"R13" to ptr
  store float %".7534", ptr %".7535"
  ; LDG.E.SYS R24, [R6+0x8]
  %".7538" = load i32, ptr %"R6"
  %"zext.762" = zext i32 %".7538" to i64
  %".7539" = load i32, ptr %"R7"
  %"zext.763" = zext i32 %".7539" to i64
  %"shl.401" = shl i64 %"zext.763", 32
  %"or.366" = or i64 %"shl.401", %"zext.762"
  %"ptr_plus_imm.243" = add i64 %"or.366", 8
  %"inttoptr_bytes.336" = inttoptr i64 %"ptr_plus_imm.243" to ptr addrspace(1)
  %"ptr_cast_for_access.336" = bitcast ptr addrspace(1) %"inttoptr_bytes.336" to ptr addrspace(1)
  %".7540" = load float, ptr addrspace(1) %"ptr_cast_for_access.336"
  %".7541" = bitcast ptr %"R24" to ptr
  store float %".7540", ptr %".7541"
  ; LDG.E.SYS R25, [R4+0xc]
  %".7544" = load i32, ptr %"R4"
  %"zext.764" = zext i32 %".7544" to i64
  %".7545" = load i32, ptr %"R5"
  %"zext.765" = zext i32 %".7545" to i64
  %"shl.402" = shl i64 %"zext.765", 32
  %"or.367" = or i64 %"shl.402", %"zext.764"
  %"ptr_plus_imm.244" = add i64 %"or.367", 12
  %"inttoptr_bytes.337" = inttoptr i64 %"ptr_plus_imm.244" to ptr addrspace(1)
  %"ptr_cast_for_access.337" = bitcast ptr addrspace(1) %"inttoptr_bytes.337" to ptr addrspace(1)
  %".7546" = load float, ptr addrspace(1) %"ptr_cast_for_access.337"
  %".7547" = bitcast ptr %"R25" to ptr
  store float %".7546", ptr %".7547"
  ; LDG.E.SYS R36, [R6+0xc]
  %".7550" = load i32, ptr %"R6"
  %"zext.766" = zext i32 %".7550" to i64
  %".7551" = load i32, ptr %"R7"
  %"zext.767" = zext i32 %".7551" to i64
  %"shl.403" = shl i64 %"zext.767", 32
  %"or.368" = or i64 %"shl.403", %"zext.766"
  %"ptr_plus_imm.245" = add i64 %"or.368", 12
  %"inttoptr_bytes.338" = inttoptr i64 %"ptr_plus_imm.245" to ptr addrspace(1)
  %"ptr_cast_for_access.338" = bitcast ptr addrspace(1) %"inttoptr_bytes.338" to ptr addrspace(1)
  %".7552" = load float, ptr addrspace(1) %"ptr_cast_for_access.338"
  %".7553" = bitcast ptr %"R36" to ptr
  store float %".7552", ptr %".7553"
  ; IADD3 R35, R35, -0x4, RZ
  %".7556" = load i32, ptr %"R35"
  %".7557" = add i32 %".7556", -4
  %".7558" = add i32 %".7557", 0
  store i32 %".7558", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".7561" = load i32, ptr %"R34"
  %".7562" = add i32 %".7561", 4
  %".7563" = add i32 %".7562", 0
  store i32 %".7563", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".7566" = load i32, ptr %"R35"
  %".7567" = load i1, ptr %"PT"
  %"cmp.63" = icmp ne i32 %".7566", 0
  %".7568" = xor i1 %"cmp.63", -1
  %".7569" = and i1 %"cmp.63", %".7567"
  %".7570" = and i1 %".7568", %".7567"
  store i1 %".7569", ptr %"P0"
  ; FMUL R8, R9, R22
  %"cast_ptr.917" = bitcast ptr %"R9" to ptr
  %".7573" = load float, ptr %"cast_ptr.917"
  %"cast_ptr.918" = bitcast ptr %"R22" to ptr
  %".7574" = load float, ptr %"cast_ptr.918"
  %"fmul.324" = fmul float %".7573", %".7574"
  %".7575" = bitcast ptr %"R8" to ptr
  store float %"fmul.324", ptr %".7575"
  ; FFMA R8, R8, R10, R21
  %"cast_ptr.919" = bitcast ptr %"R8" to ptr
  %".7578" = load float, ptr %"cast_ptr.919"
  %"cast_ptr.920" = bitcast ptr %"R10" to ptr
  %".7579" = load float, ptr %"cast_ptr.920"
  %"cast_ptr.921" = bitcast ptr %"R21" to ptr
  %".7580" = load float, ptr %"cast_ptr.921"
  %"fmul.325" = fmul float %".7578", %".7579"
  %"fadd.289" = fadd float %"fmul.325", %".7580"
  %".7581" = bitcast ptr %"R8" to ptr
  store float %"fadd.289", ptr %".7581"
  ; FMUL R11, R11, R22
  %"cast_ptr.922" = bitcast ptr %"R11" to ptr
  %".7584" = load float, ptr %"cast_ptr.922"
  %"cast_ptr.923" = bitcast ptr %"R22" to ptr
  %".7585" = load float, ptr %"cast_ptr.923"
  %"fmul.326" = fmul float %".7584", %".7585"
  %".7586" = bitcast ptr %"R11" to ptr
  store float %"fmul.326", ptr %".7586"
  ; FFMA R8, R11, R12, R8
  %"cast_ptr.924" = bitcast ptr %"R11" to ptr
  %".7589" = load float, ptr %"cast_ptr.924"
  %"cast_ptr.925" = bitcast ptr %"R12" to ptr
  %".7590" = load float, ptr %"cast_ptr.925"
  %"cast_ptr.926" = bitcast ptr %"R8" to ptr
  %".7591" = load float, ptr %"cast_ptr.926"
  %"fmul.327" = fmul float %".7589", %".7590"
  %"fadd.290" = fadd float %"fmul.327", %".7591"
  %".7592" = bitcast ptr %"R8" to ptr
  store float %"fadd.290", ptr %".7592"
  ; FMUL R13, R13, R22
  %"cast_ptr.927" = bitcast ptr %"R13" to ptr
  %".7595" = load float, ptr %"cast_ptr.927"
  %"cast_ptr.928" = bitcast ptr %"R22" to ptr
  %".7596" = load float, ptr %"cast_ptr.928"
  %"fmul.328" = fmul float %".7595", %".7596"
  %".7597" = bitcast ptr %"R13" to ptr
  store float %"fmul.328", ptr %".7597"
  ; FFMA R8, R13, R24, R8
  %"cast_ptr.929" = bitcast ptr %"R13" to ptr
  %".7600" = load float, ptr %"cast_ptr.929"
  %"cast_ptr.930" = bitcast ptr %"R24" to ptr
  %".7601" = load float, ptr %"cast_ptr.930"
  %"cast_ptr.931" = bitcast ptr %"R8" to ptr
  %".7602" = load float, ptr %"cast_ptr.931"
  %"fmul.329" = fmul float %".7600", %".7601"
  %"fadd.291" = fadd float %"fmul.329", %".7602"
  %".7603" = bitcast ptr %"R8" to ptr
  store float %"fadd.291", ptr %".7603"
  ; FMUL R25, R25, R22
  %"cast_ptr.932" = bitcast ptr %"R25" to ptr
  %".7606" = load float, ptr %"cast_ptr.932"
  %"cast_ptr.933" = bitcast ptr %"R22" to ptr
  %".7607" = load float, ptr %"cast_ptr.933"
  %"fmul.330" = fmul float %".7606", %".7607"
  %".7608" = bitcast ptr %"R25" to ptr
  store float %"fmul.330", ptr %".7608"
  ; FFMA R21, R25, R36, R8
  %"cast_ptr.934" = bitcast ptr %"R25" to ptr
  %".7611" = load float, ptr %"cast_ptr.934"
  %"cast_ptr.935" = bitcast ptr %"R36" to ptr
  %".7612" = load float, ptr %"cast_ptr.935"
  %"cast_ptr.936" = bitcast ptr %"R8" to ptr
  %".7613" = load float, ptr %"cast_ptr.936"
  %"fmul.331" = fmul float %".7611", %".7612"
  %"fadd.292" = fadd float %"fmul.331", %".7613"
  %".7614" = bitcast ptr %"R21" to ptr
  store float %"fadd.292", ptr %".7614"
  ; @P0 BRA `(.L_x_37)
  %".7617" = load i1, ptr %"P0"
  %".7618" = icmp eq i1 %".7617", 1
  br i1 %".7618", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".7621" = load i32, ptr %"R48"
  %".7622" = load i1, ptr %"PT"
  %"cmp.64" = icmp ne i32 %".7621", 0
  %".7623" = xor i1 %"cmp.64", -1
  %".7624" = and i1 %"cmp.64", %".7622"
  %".7625" = and i1 %".7623", %".7622"
  store i1 %".7624", ptr %"P0"
  ; @!P0 BRA `(.L_x_35)
  %".7628" = load i1, ptr %"P0"
  %".7629" = icmp ne i1 %".7628", 1
  br i1 %".7629", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".7634" = load i32, ptr %"R3"
  %".7635" = load i32, ptr %"R34"
  %".7636" = add i32 %".7634", %".7635"
  %".7637" = add i32 %".7636", 0
  store i32 %".7637", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".7640" = load i32, ptr %"R34"
  %".7641" = load i32, ptr %"R5"
  %"imad_ext1.88" = zext i32 %".7640" to i64
  %"imad_ext2.88" = zext i32 %".7641" to i64
  %"imad_mul.104" = mul i64 %"imad_ext1.88", %"imad_ext2.88"
  %".7642" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.104" = add i64 %"imad_mul.104", %".7642"
  %".7643" = and i64 %"imad_add.104", 18446744069414584320
  %".7644" = lshr i64 %".7643", 32
  %"trunc32.206" = trunc i64 %".7644" to i32
  %"trunc32.207" = trunc i64 %"imad_add.104" to i32
  store i32 %"trunc32.207", ptr %"R34"
  store i32 %"trunc32.206", ptr %"R35"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".7648" = load i32, ptr %"R4"
  %".7649" = load i32, ptr %"R5"
  %"imad_ext1.89" = zext i32 %".7648" to i64
  %"imad_ext2.89" = zext i32 %".7649" to i64
  %"imad_mul.105" = mul i64 %"imad_ext1.89", %"imad_ext2.89"
  %".7650" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.105" = add i64 %"imad_mul.105", %".7650"
  %".7651" = and i64 %"imad_add.105", 18446744069414584320
  %".7652" = lshr i64 %".7651", 32
  %"trunc32.208" = trunc i64 %".7652" to i32
  %"trunc32.209" = trunc i64 %"imad_add.105" to i32
  store i32 %"trunc32.209", ptr %"R4"
  store i32 %"trunc32.208", ptr %"R5"
  ; LDG.E.SYS R7, [R34]
  %".7656" = load i32, ptr %"R34"
  %"zext.768" = zext i32 %".7656" to i64
  %".7657" = load i32, ptr %"R35"
  %"zext.769" = zext i32 %".7657" to i64
  %"shl.404" = shl i64 %"zext.769", 32
  %"or.369" = or i64 %"shl.404", %"zext.768"
  %"inttoptr_bytes.339" = inttoptr i64 %"or.369" to ptr addrspace(1)
  %"ptr_cast_for_access.339" = bitcast ptr addrspace(1) %"inttoptr_bytes.339" to ptr addrspace(1)
  %".7658" = load float, ptr addrspace(1) %"ptr_cast_for_access.339"
  %".7659" = bitcast ptr %"R7" to ptr
  store float %".7658", ptr %".7659"
  ; LDG.E.SYS R8, [R4]
  %".7662" = load i32, ptr %"R4"
  %"zext.770" = zext i32 %".7662" to i64
  %".7663" = load i32, ptr %"R5"
  %"zext.771" = zext i32 %".7663" to i64
  %"shl.405" = shl i64 %"zext.771", 32
  %"or.370" = or i64 %"shl.405", %"zext.770"
  %"inttoptr_bytes.340" = inttoptr i64 %"or.370" to ptr addrspace(1)
  %"ptr_cast_for_access.340" = bitcast ptr addrspace(1) %"inttoptr_bytes.340" to ptr addrspace(1)
  %".7664" = load float, ptr addrspace(1) %"ptr_cast_for_access.340"
  %".7665" = bitcast ptr %"R8" to ptr
  store float %".7664", ptr %".7665"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".7668" = load i32, ptr %"R48"
  %".7669" = load i1, ptr %"PT"
  %"cmp.65" = icmp ne i32 %".7668", 1
  %".7670" = xor i1 %"cmp.65", -1
  %".7671" = and i1 %"cmp.65", %".7669"
  %".7672" = and i1 %".7670", %".7669"
  store i1 %".7671", ptr %"P0"
  ; FMUL R6, R7, R22
  %"cast_ptr.937" = bitcast ptr %"R7" to ptr
  %".7675" = load float, ptr %"cast_ptr.937"
  %"cast_ptr.938" = bitcast ptr %"R22" to ptr
  %".7676" = load float, ptr %"cast_ptr.938"
  %"fmul.332" = fmul float %".7675", %".7676"
  %".7677" = bitcast ptr %"R6" to ptr
  store float %"fmul.332", ptr %".7677"
  ; FFMA R21, R6, R8, R21
  %"cast_ptr.939" = bitcast ptr %"R6" to ptr
  %".7680" = load float, ptr %"cast_ptr.939"
  %"cast_ptr.940" = bitcast ptr %"R8" to ptr
  %".7681" = load float, ptr %"cast_ptr.940"
  %"cast_ptr.941" = bitcast ptr %"R21" to ptr
  %".7682" = load float, ptr %"cast_ptr.941"
  %"fmul.333" = fmul float %".7680", %".7681"
  %"fadd.293" = fadd float %"fmul.333", %".7682"
  %".7683" = bitcast ptr %"R21" to ptr
  store float %"fadd.293", ptr %".7683"
  ; @!P0 BRA `(.L_x_35)
  %".7686" = load i1, ptr %"P0"
  %".7687" = icmp ne i1 %".7686", 1
  br i1 %".7687", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".7690" = load i32, ptr %"R48"
  %".7691" = load i1, ptr %"PT"
  %"cmp.66" = icmp ne i32 %".7690", 2
  %".7692" = xor i1 %"cmp.66", -1
  %".7693" = and i1 %"cmp.66", %".7691"
  %".7694" = and i1 %".7692", %".7691"
  store i1 %".7693", ptr %"P0"
  ; LDG.E.SYS R7, [R34+0x4]
  %".7697" = load i32, ptr %"R34"
  %"zext.772" = zext i32 %".7697" to i64
  %".7698" = load i32, ptr %"R35"
  %"zext.773" = zext i32 %".7698" to i64
  %"shl.406" = shl i64 %"zext.773", 32
  %"or.371" = or i64 %"shl.406", %"zext.772"
  %"ptr_plus_imm.246" = add i64 %"or.371", 4
  %"inttoptr_bytes.341" = inttoptr i64 %"ptr_plus_imm.246" to ptr addrspace(1)
  %"ptr_cast_for_access.341" = bitcast ptr addrspace(1) %"inttoptr_bytes.341" to ptr addrspace(1)
  %".7699" = load float, ptr addrspace(1) %"ptr_cast_for_access.341"
  %".7700" = bitcast ptr %"R7" to ptr
  store float %".7699", ptr %".7700"
  ; LDG.E.SYS R8, [R4+0x4]
  %".7703" = load i32, ptr %"R4"
  %"zext.774" = zext i32 %".7703" to i64
  %".7704" = load i32, ptr %"R5"
  %"zext.775" = zext i32 %".7704" to i64
  %"shl.407" = shl i64 %"zext.775", 32
  %"or.372" = or i64 %"shl.407", %"zext.774"
  %"ptr_plus_imm.247" = add i64 %"or.372", 4
  %"inttoptr_bytes.342" = inttoptr i64 %"ptr_plus_imm.247" to ptr addrspace(1)
  %"ptr_cast_for_access.342" = bitcast ptr addrspace(1) %"inttoptr_bytes.342" to ptr addrspace(1)
  %".7705" = load float, ptr addrspace(1) %"ptr_cast_for_access.342"
  %".7706" = bitcast ptr %"R8" to ptr
  store float %".7705", ptr %".7706"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".7709" = load i1, ptr %"P0"
  %".7710" = icmp eq i1 %".7709", 1
  br i1 %".7710", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".7713" = load i32, ptr %"R34"
  %"zext.776" = zext i32 %".7713" to i64
  %".7714" = load i32, ptr %"R35"
  %"zext.777" = zext i32 %".7714" to i64
  %"shl.408" = shl i64 %"zext.777", 32
  %"or.373" = or i64 %"shl.408", %"zext.776"
  %"ptr_plus_imm.248" = add i64 %"or.373", 8
  %"inttoptr_bytes.343" = inttoptr i64 %"ptr_plus_imm.248" to ptr addrspace(1)
  %"ptr_cast_for_access.343" = bitcast ptr addrspace(1) %"inttoptr_bytes.343" to ptr addrspace(1)
  %".7715" = load float, ptr addrspace(1) %"ptr_cast_for_access.343"
  %".7716" = bitcast ptr %"R9" to ptr
  store float %".7715", ptr %".7716"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".7721" = load i1, ptr %"P0"
  %".7722" = icmp eq i1 %".7721", 1
  br i1 %".7722", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".7725" = load i32, ptr %"R4"
  %"zext.778" = zext i32 %".7725" to i64
  %".7726" = load i32, ptr %"R5"
  %"zext.779" = zext i32 %".7726" to i64
  %"shl.409" = shl i64 %"zext.779", 32
  %"or.374" = or i64 %"shl.409", %"zext.778"
  %"ptr_plus_imm.249" = add i64 %"or.374", 8
  %"inttoptr_bytes.344" = inttoptr i64 %"ptr_plus_imm.249" to ptr addrspace(1)
  %"ptr_cast_for_access.344" = bitcast ptr addrspace(1) %"inttoptr_bytes.344" to ptr addrspace(1)
  %".7727" = load float, ptr addrspace(1) %"ptr_cast_for_access.344"
  %".7728" = bitcast ptr %"R10" to ptr
  store float %".7727", ptr %".7728"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %"cast_ptr.942" = bitcast ptr %"R7" to ptr
  %".7733" = load float, ptr %"cast_ptr.942"
  %"cast_ptr.943" = bitcast ptr %"R22" to ptr
  %".7734" = load float, ptr %"cast_ptr.943"
  %"fmul.334" = fmul float %".7733", %".7734"
  %".7735" = bitcast ptr %"R6" to ptr
  store float %"fmul.334", ptr %".7735"
  ; FFMA R21, R6, R8, R21
  %"cast_ptr.944" = bitcast ptr %"R6" to ptr
  %".7738" = load float, ptr %"cast_ptr.944"
  %"cast_ptr.945" = bitcast ptr %"R8" to ptr
  %".7739" = load float, ptr %"cast_ptr.945"
  %"cast_ptr.946" = bitcast ptr %"R21" to ptr
  %".7740" = load float, ptr %"cast_ptr.946"
  %"fmul.335" = fmul float %".7738", %".7739"
  %"fadd.294" = fadd float %"fmul.335", %".7740"
  %".7741" = bitcast ptr %"R21" to ptr
  store float %"fadd.294", ptr %".7741"
  ; @P0 FMUL R22, R9, R22
  %".7744" = load i1, ptr %"P0"
  %".7745" = icmp eq i1 %".7744", 1
  br i1 %".7745", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %"cast_ptr.947" = bitcast ptr %"R9" to ptr
  %".7748" = load float, ptr %"cast_ptr.947"
  %"cast_ptr.948" = bitcast ptr %"R22" to ptr
  %".7749" = load float, ptr %"cast_ptr.948"
  %"fmul.336" = fmul float %".7748", %".7749"
  %".7750" = bitcast ptr %"R22" to ptr
  store float %"fmul.336", ptr %".7750"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".7755" = load i1, ptr %"P0"
  %".7756" = icmp eq i1 %".7755", 1
  br i1 %".7756", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %"cast_ptr.949" = bitcast ptr %"R22" to ptr
  %".7759" = load float, ptr %"cast_ptr.949"
  %"cast_ptr.950" = bitcast ptr %"R10" to ptr
  %".7760" = load float, ptr %"cast_ptr.950"
  %"cast_ptr.951" = bitcast ptr %"R21" to ptr
  %".7761" = load float, ptr %"cast_ptr.951"
  %"fmul.337" = fmul float %".7759", %".7760"
  %"fadd.295" = fadd float %"fmul.337", %".7761"
  %".7762" = bitcast ptr %"R21" to ptr
  store float %"fadd.295", ptr %".7762"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".7767" = load i32, ptr %"R30"
  %"zext.780" = zext i32 %".7767" to i64
  %".7768" = load i32, ptr %"R31"
  %"zext.781" = zext i32 %".7768" to i64
  %"shl.410" = shl i64 %"zext.781", 32
  %"or.375" = or i64 %"shl.410", %"zext.780"
  %"inttoptr_bytes.345" = inttoptr i64 %"or.375" to ptr addrspace(1)
  %"ptr_cast_for_access.345" = bitcast ptr addrspace(1) %"inttoptr_bytes.345" to ptr addrspace(1)
  %".7769" = load float, ptr addrspace(1) %"ptr_cast_for_access.345"
  %".7770" = bitcast ptr %"R4" to ptr
  store float %".7769", ptr %".7770"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %"cast_ptr.952" = bitcast ptr %"R4" to ptr
  %".7775" = load float, ptr %"cast_ptr.952"
  %"cast_ptr.953" = bitcast ptr %"R21" to ptr
  %".7776" = load float, ptr %"cast_ptr.953"
  %"fadd.296" = fadd float %".7775", %".7776"
  %".7777" = bitcast ptr %"R21" to ptr
  store float %"fadd.296", ptr %".7777"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %"cast_ptr.954" = bitcast ptr %"R21" to ptr
  %".7780" = load float, ptr %"cast_ptr.954"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".7780")
  %".7781" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".7782" = xor i1 %"fcmp_unordered.2", -1
  %".7783" = and i1 %"fcmp_unordered.2", %".7781"
  %".7784" = and i1 %".7782", %".7781"
  store i1 %".7783", ptr %"P0"
  ; @!P0 BRA `(.L_x_42)
  %".7787" = load i1, ptr %"P0"
  %".7788" = icmp ne i1 %".7787", 1
  br i1 %".7788", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %"cast_ptr.955" = bitcast ptr %"R21" to ptr
  %".7791" = load float, ptr %"cast_ptr.955"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".7791")
  %"fmul.338" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".7792" = bitcast ptr %"R5" to ptr
  store float %"fmul.338", ptr %".7792"
  ; MOV R7, 0x3f800000
  %".7795" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".7795"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %"cast_ptr.956" = bitcast ptr %"R21" to ptr
  %".7798" = load float, ptr %"cast_ptr.956"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".7798")
  %".7799" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".7800" = xor i1 %"fcmp_unordered.3", -1
  %".7801" = and i1 %"fcmp_unordered.3", %".7799"
  %".7802" = and i1 %".7800", %".7799"
  store i1 %".7801", ptr %"P0"
  ; MUFU.EX2 R5, R5
  %"cast_ptr.957" = bitcast ptr %"R5" to ptr
  %".7805" = load float, ptr %"cast_ptr.957"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".7805")
  %".7806" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".7806"
  ; FADD R6, R5, 1
  %"cast_ptr.958" = bitcast ptr %"R5" to ptr
  %".7809" = load float, ptr %"cast_ptr.958"
  %"fadd.297" = fadd float %".7809", 0x3ff0000000000000
  %".7810" = bitcast ptr %"R6" to ptr
  store float %"fadd.297", ptr %".7810"
  ; MUFU.RCP R6, R6
  %"cast_ptr.959" = bitcast ptr %"R6" to ptr
  %".7813" = load float, ptr %"cast_ptr.959"
  %".7814" = fdiv float 0x3ff0000000000000, %".7813"
  %".7815" = bitcast ptr %"R6" to ptr
  store float %".7814", ptr %".7815"
  ; FFMA R4, R6, -2, R7
  %"cast_ptr.960" = bitcast ptr %"R6" to ptr
  %".7818" = load float, ptr %"cast_ptr.960"
  %"cast_ptr.961" = bitcast ptr %"R7" to ptr
  %".7819" = load float, ptr %"cast_ptr.961"
  %"fmul.339" = fmul float %".7818", 0xc000000000000000
  %"fadd.298" = fadd float %"fmul.339", %".7819"
  %".7820" = bitcast ptr %"R4" to ptr
  store float %"fadd.298", ptr %".7820"
  ; FSEL R4, R4, 1, !P0
  %"cast_ptr.962" = bitcast ptr %"R4" to ptr
  %".7823" = load float, ptr %"cast_ptr.962"
  %".7824" = load i1, ptr %"P0"
  %".7825" = xor i1 %".7824", -1
  %".7826" = icmp eq i1 %".7825", 1
  %"fsel.1" = select  i1 %".7826", float %".7823", float 0x3ff0000000000000
  %".7827" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".7827"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".7830" = load i32, ptr %"R4"
  %".7831" = load i32, ptr %"R21"
  %".7832" = xor i1 1, -1
  %".7833" = or i32 %".7830", 2147483648
  %".7834" = or i32 %".7830", %".7831"
  %".7835" = and i32 %".7833", %".7834"
  store i32 %".7835", ptr %"R4"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".7840" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".7840"
  ; FMUL R4, R21, R21
  %"cast_ptr.963" = bitcast ptr %"R21" to ptr
  %".7843" = load float, ptr %"cast_ptr.963"
  %"cast_ptr.964" = bitcast ptr %"R21" to ptr
  %".7844" = load float, ptr %"cast_ptr.964"
  %"fmul.340" = fmul float %".7843", %".7844"
  %".7845" = bitcast ptr %"R4" to ptr
  store float %"fmul.340", ptr %".7845"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %"cast_ptr.965" = bitcast ptr %"R4" to ptr
  %".7848" = load float, ptr %"cast_ptr.965"
  %"cast_ptr.966" = bitcast ptr %"R5" to ptr
  %".7849" = load float, ptr %"cast_ptr.966"
  %"fmul.341" = fmul float %".7848", %".7849"
  %"fadd.299" = fadd float %"fmul.341", 0xbfaac795c0000000
  %".7850" = bitcast ptr %"R5" to ptr
  store float %"fadd.299", ptr %".7850"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %"cast_ptr.967" = bitcast ptr %"R4" to ptr
  %".7853" = load float, ptr %"cast_ptr.967"
  %"cast_ptr.968" = bitcast ptr %"R5" to ptr
  %".7854" = load float, ptr %"cast_ptr.968"
  %"fmul.342" = fmul float %".7853", %".7854"
  %"fadd.300" = fadd float %"fmul.342", 0x3fc10b2820000000
  %".7855" = bitcast ptr %"R5" to ptr
  store float %"fadd.300", ptr %".7855"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %"cast_ptr.969" = bitcast ptr %"R4" to ptr
  %".7858" = load float, ptr %"cast_ptr.969"
  %"cast_ptr.970" = bitcast ptr %"R5" to ptr
  %".7859" = load float, ptr %"cast_ptr.970"
  %"fmul.343" = fmul float %".7858", %".7859"
  %"fadd.301" = fadd float %"fmul.343", 0xbfd5553da0000000
  %".7860" = bitcast ptr %"R5" to ptr
  store float %"fadd.301", ptr %".7860"
  ; FFMA R4, R4, R5, RZ
  %"cast_ptr.971" = bitcast ptr %"R4" to ptr
  %".7863" = load float, ptr %"cast_ptr.971"
  %"cast_ptr.972" = bitcast ptr %"R5" to ptr
  %".7864" = load float, ptr %"cast_ptr.972"
  %"fmul.344" = fmul float %".7863", %".7864"
  %"fadd.302" = fadd float %"fmul.344",              0x0
  %".7865" = bitcast ptr %"R4" to ptr
  store float %"fadd.302", ptr %".7865"
  ; FFMA R4, R21, R4, R21
  %"cast_ptr.973" = bitcast ptr %"R21" to ptr
  %".7868" = load float, ptr %"cast_ptr.973"
  %"cast_ptr.974" = bitcast ptr %"R4" to ptr
  %".7869" = load float, ptr %"cast_ptr.974"
  %"cast_ptr.975" = bitcast ptr %"R21" to ptr
  %".7870" = load float, ptr %"cast_ptr.975"
  %"fmul.345" = fmul float %".7868", %".7869"
  %"fadd.303" = fadd float %"fmul.345", %".7870"
  %".7871" = bitcast ptr %"R4" to ptr
  store float %"fadd.303", ptr %".7871"
  br label %".L_x_43"
.L_x_43:
  ; BSYNC B0
  br label %".L_x_41"
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".7877" = load i32, ptr %"R23"
  %".7878" = add i32 %".7877", 25165824
  %".7879" = add i32 %".7878", 0
  store i32 %".7879", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".7884" = load i32, ptr %"R5"
  %".7885" = xor i1 1, -1
  %".7886" = and i32 %".7884", 2139095040
  store i32 %".7886", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".7889" = load i32, ptr %"R5"
  %".7890" = load i1, ptr %"PT"
  %"cmp.67" = icmp sgt i32 %".7889", 33554431
  %".7891" = xor i1 %"cmp.67", -1
  %".7892" = and i1 %"cmp.67", %".7890"
  %".7893" = and i1 %".7891", %".7890"
  store i1 %".7892", ptr %"P0"
  ; @P0 BRA `(.L_x_45)
  %".7896" = load i1, ptr %"P0"
  %".7897" = icmp eq i1 %".7896", 1
  br i1 %".7897", label %".L_x_45", label %".L_x_41_split_0x47f0_CALL_0x4830"
.L_x_41_split_0x47f0_CALL_0x4830:
  ; MOV R24, R23
  %"cast_ptr.976" = bitcast ptr %"R23" to ptr
  %".7900" = load float, ptr %"cast_ptr.976"
  %".7901" = bitcast ptr %"R24" to ptr
  store float %".7900", ptr %".7901"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".7908" = icmp ult i32 1, 32
  %"SHF_min.30" = select  i1 %".7908", i32 1, i32 32
  %".7909" = load i32, ptr %"R24"
  %"zext.782" = zext i32 0 to i64
  %"zext.783" = zext i32 %".7909" to i64
  %"zext.784" = zext i32 1 to i64
  %"shl.411" = shl i64 %"zext.782", 32
  %"or.376" = or i64 %"shl.411", %"zext.783"
  %"shl.412" = shl i64 %"or.376", %"zext.784"
  %"and.19" = and i64 %"shl.412", 4294967295
  %"trunc32.210" = trunc i64 %"and.19" to i32
  store i32 %"trunc32.210", ptr %"R11"
  ; BMOV.32.CLEAR RZ, B1
  ; BSSY B1, `(.L_x_48)
  ; SHF.R.U32.HI R25, RZ, 0x18, R11
  %".7914" = icmp ult i32 24, 32
  %"SHF_min.31" = select  i1 %".7914", i32 24, i32 32
  %".7915" = load i32, ptr %"R11"
  %"zext.785" = zext i32 %".7915" to i64
  %"zext.786" = zext i32 0 to i64
  %"zext.787" = zext i32 24 to i64
  %"shl.413" = shl i64 %"zext.785", 32
  %"or.377" = or i64 %"shl.413", %"zext.786"
  %"lshr.19" = lshr i64 %"or.377", %"zext.787"
  %"lshr.20" = lshr i64 %"lshr.19", 32
  %"trunc32.211" = trunc i64 %"lshr.20" to i32
  store i32 %"trunc32.211", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".7918" = load i32, ptr %"R25"
  %".7919" = load i1, ptr %"PT"
  %"cmp.68" = icmp ne i32 %".7918", 0
  %".7920" = xor i1 %"cmp.68", -1
  %".7921" = and i1 %"cmp.68", %".7919"
  %".7922" = and i1 %".7920", %".7919"
  store i1 %".7921", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".7925" = load i1, ptr %"P0"
  %".7926" = icmp eq i1 %".7925", 1
  br i1 %".7926", label %".L_x_49...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".7929" = icmp ult i32 1, 32
  %"SHF_min.32" = select  i1 %".7929", i32 1, i32 32
  %".7930" = load i32, ptr %"R24"
  %"zext.788" = zext i32 0 to i64
  %"zext.789" = zext i32 %".7930" to i64
  %"zext.790" = zext i32 1 to i64
  %"shl.414" = shl i64 %"zext.788", 32
  %"or.378" = or i64 %"shl.414", %"zext.789"
  %"shl.415" = shl i64 %"or.378", %"zext.790"
  %"and.20" = and i64 %"shl.415", 4294967295
  %"trunc32.212" = trunc i64 %"and.20" to i32
  store i32 %"trunc32.212", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".7933" = load i32, ptr %"R11"
  %".7934" = load i1, ptr %"PT"
  %"cmp.69" = icmp ne i32 %".7933", 0
  %".7935" = xor i1 %"cmp.69", -1
  %".7936" = and i1 %"cmp.69", %".7934"
  %".7937" = and i1 %".7935", %".7934"
  store i1 %".7936", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".7940" = load i1, ptr %"P0"
  %".7941" = icmp eq i1 %".7940", 1
  br i1 %".7941", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %"cast_ptr.977" = bitcast ptr %"R24" to ptr
  %".7944" = load float, ptr %"cast_ptr.977"
  %"fmul.346" = fmul float %".7944", 0x43f0000000000000
  %"fadd.304" = fadd float %"fmul.346",              0x0
  %".7945" = bitcast ptr %"R12" to ptr
  store float %"fadd.304", ptr %".7945"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %"cast_ptr.978" = bitcast ptr %"R24" to ptr
  %".7950" = load float, ptr %"cast_ptr.978"
  %"fmul.347" = fmul float %".7950", 0x43f0000000000000
  %"fadd.305" = fadd float %"fmul.347",              0x0
  %".7951" = bitcast ptr %"R12" to ptr
  store float %"fadd.305", ptr %".7951"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4:
  ; @!P0 MUFU.RCP R11, R24
  %".7956" = load i1, ptr %"P0"
  %".7957" = icmp ne i1 %".7956", 1
  br i1 %".7957", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".7960" = load i32, ptr %"R24"
  %"sint_to_f32.6" = sitofp i32 %".7960" to float
  %".7961" = fdiv float 0x3ff0000000000000, %"sint_to_f32.6"
  %".7962" = fptosi float %".7961" to i32
  store i32 %".7962", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4:
  ; MUFU.RCP R11, R24
  %".7967" = load i32, ptr %"R24"
  %"sint_to_f32.7" = sitofp i32 %".7967" to float
  %".7968" = fdiv float 0x3ff0000000000000, %"sint_to_f32.7"
  %".7969" = fptosi float %".7968" to i32
  store i32 %".7969", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4:
  ; @P0 MUFU.RCP R13, R12
  %".7974" = load i1, ptr %"P0"
  %".7975" = icmp eq i1 %".7974", 1
  br i1 %".7975", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %"cast_ptr.979" = bitcast ptr %"R12" to ptr
  %".7978" = load float, ptr %"cast_ptr.979"
  %".7979" = fdiv float 0x3ff0000000000000, %".7978"
  %".7980" = bitcast ptr %"R13" to ptr
  store float %".7979", ptr %".7980"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4:
  ; MUFU.RCP R13, R12
  %"cast_ptr.980" = bitcast ptr %"R12" to ptr
  %".7985" = load float, ptr %"cast_ptr.980"
  %".7986" = fdiv float 0x3ff0000000000000, %".7985"
  %".7987" = bitcast ptr %"R13" to ptr
  store float %".7986", ptr %".7987"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4:
  ; @P0 FFMA R22, R12, R13, -1
  %".7992" = load i1, ptr %"P0"
  %".7993" = icmp eq i1 %".7992", 1
  br i1 %".7993", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %"cast_ptr.981" = bitcast ptr %"R12" to ptr
  %".7996" = load float, ptr %"cast_ptr.981"
  %"cast_ptr.982" = bitcast ptr %"R13" to ptr
  %".7997" = load float, ptr %"cast_ptr.982"
  %"fmul.348" = fmul float %".7996", %".7997"
  %"fadd.306" = fadd float %"fmul.348", 0xbff0000000000000
  %".7998" = bitcast ptr %"R22" to ptr
  store float %"fadd.306", ptr %".7998"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4:
  ; FFMA R22, R12, R13, -1
  %"cast_ptr.983" = bitcast ptr %"R12" to ptr
  %".8003" = load float, ptr %"cast_ptr.983"
  %"cast_ptr.984" = bitcast ptr %"R13" to ptr
  %".8004" = load float, ptr %"cast_ptr.984"
  %"fmul.349" = fmul float %".8003", %".8004"
  %"fadd.307" = fadd float %"fmul.349", 0xbff0000000000000
  %".8005" = bitcast ptr %"R22" to ptr
  store float %"fadd.307", ptr %".8005"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".8010" = load i1, ptr %"P0"
  %".8011" = icmp eq i1 %".8010", 1
  br i1 %".8011", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %"cast_ptr.985" = bitcast ptr %"R22" to ptr
  %".8014" = load float, ptr %"cast_ptr.985"
  %".8015" = fneg float %".8014"
  %".8016" = call float @"llvm.fabs"(float %".8015")
  %".8017" = fcmp ogt float %".8016",              0x0
  %".8018" = fcmp olt float %".8016", 0x3810000000000000
  %".8019" = and i1 %".8017", %".8018"
  %".8020" = select  i1 %".8019", float              0x0, float %".8015"
  %".8021" = call float @"llvm.fabs"(float              0x0)
  %".8022" = fcmp ogt float %".8021",              0x0
  %".8023" = fcmp olt float %".8021", 0x3810000000000000
  %".8024" = and i1 %".8022", %".8023"
  %".8025" = select  i1 %".8024", float              0x0, float              0x0
  %"fadd.308" = fadd float %".8020", %".8025"
  %".8026" = call float @"llvm.fabs"(float %"fadd.308")
  %".8027" = fcmp ogt float %".8026",              0x0
  %".8028" = fcmp olt float %".8026", 0x3810000000000000
  %".8029" = and i1 %".8027", %".8028"
  %".8030" = select  i1 %".8029", float              0x0, float %"fadd.308"
  %".8031" = bitcast ptr %"R22" to ptr
  store float %".8030", ptr %".8031"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4:
  ; FADD.FTZ R22, -R22, -RZ
  %"cast_ptr.986" = bitcast ptr %"R22" to ptr
  %".8036" = load float, ptr %"cast_ptr.986"
  %".8037" = fneg float %".8036"
  %".8038" = call float @"llvm.fabs"(float %".8037")
  %".8039" = fcmp ogt float %".8038",              0x0
  %".8040" = fcmp olt float %".8038", 0x3810000000000000
  %".8041" = and i1 %".8039", %".8040"
  %".8042" = select  i1 %".8041", float              0x0, float %".8037"
  %".8043" = call float @"llvm.fabs"(float              0x0)
  %".8044" = fcmp ogt float %".8043",              0x0
  %".8045" = fcmp olt float %".8043", 0x3810000000000000
  %".8046" = and i1 %".8044", %".8045"
  %".8047" = select  i1 %".8046", float              0x0, float              0x0
  %"fadd.309" = fadd float %".8042", %".8047"
  %".8048" = call float @"llvm.fabs"(float %"fadd.309")
  %".8049" = fcmp ogt float %".8048",              0x0
  %".8050" = fcmp olt float %".8048", 0x3810000000000000
  %".8051" = and i1 %".8049", %".8050"
  %".8052" = select  i1 %".8051", float              0x0, float %"fadd.309"
  %".8053" = bitcast ptr %"R22" to ptr
  store float %".8052", ptr %".8053"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4:
  ; @P0 FFMA R22, R13, R22, R13
  %".8058" = load i1, ptr %"P0"
  %".8059" = icmp eq i1 %".8058", 1
  br i1 %".8059", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %"cast_ptr.987" = bitcast ptr %"R13" to ptr
  %".8062" = load float, ptr %"cast_ptr.987"
  %"cast_ptr.988" = bitcast ptr %"R22" to ptr
  %".8063" = load float, ptr %"cast_ptr.988"
  %"cast_ptr.989" = bitcast ptr %"R13" to ptr
  %".8064" = load float, ptr %"cast_ptr.989"
  %"fmul.350" = fmul float %".8062", %".8063"
  %"fadd.310" = fadd float %"fmul.350", %".8064"
  %".8065" = bitcast ptr %"R22" to ptr
  store float %"fadd.310", ptr %".8065"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4:
  ; FFMA R22, R13, R22, R13
  %"cast_ptr.990" = bitcast ptr %"R13" to ptr
  %".8070" = load float, ptr %"cast_ptr.990"
  %"cast_ptr.991" = bitcast ptr %"R22" to ptr
  %".8071" = load float, ptr %"cast_ptr.991"
  %"cast_ptr.992" = bitcast ptr %"R13" to ptr
  %".8072" = load float, ptr %"cast_ptr.992"
  %"fmul.351" = fmul float %".8070", %".8071"
  %"fadd.311" = fadd float %"fmul.351", %".8072"
  %".8073" = bitcast ptr %"R22" to ptr
  store float %"fadd.311", ptr %".8073"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8078" = load i1, ptr %"P0"
  %".8079" = icmp eq i1 %".8078", 1
  br i1 %".8079", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %"cast_ptr.993" = bitcast ptr %"R22" to ptr
  %".8082" = load float, ptr %"cast_ptr.993"
  %"fmul.352" = fmul float %".8082", 0x43f0000000000000
  %"fadd.312" = fadd float %"fmul.352",              0x0
  %".8083" = bitcast ptr %"R11" to ptr
  store float %"fadd.312", ptr %".8083"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %"cast_ptr.994" = bitcast ptr %"R22" to ptr
  %".8088" = load float, ptr %"cast_ptr.994"
  %"fmul.353" = fmul float %".8088", 0x43f0000000000000
  %"fadd.313" = fadd float %"fmul.353",              0x0
  %".8089" = bitcast ptr %"R11" to ptr
  store float %"fadd.313", ptr %".8089"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4:
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_49...4:
  ; IADD3 R34, R25, -0xfd, RZ
  %".8096" = load i32, ptr %"R25"
  %".8097" = add i32 %".8096", -253
  %".8098" = add i32 %".8097", 0
  store i32 %".8098", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".8101" = load i32, ptr %"R34"
  %".8102" = load i1, ptr %"PT"
  %"cmp.70" = icmp sgt i32 %".8101", 1
  %".8103" = xor i1 %"cmp.70", -1
  %".8104" = and i1 %"cmp.70", %".8102"
  %".8105" = and i1 %".8103", %".8102"
  store i1 %".8104", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".8108" = load i1, ptr %"P0"
  %".8109" = icmp eq i1 %".8108", 1
  br i1 %".8109", label %".L_x_51...4", label %".L_x_49_split_0x4a30...4"
.L_x_49_split_0x4a30...4:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8112" = load i32, ptr %"R24"
  %".8113" = xor i1 1, -1
  %".8114" = and i32 %".8112", 8388607
  store i32 %".8114", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".8119" = load i32, ptr %"R11"
  %".8120" = xor i1 1, -1
  %".8121" = or i32 %".8119", 1065353216
  store i32 %".8121", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".8124" = load i32, ptr %"R34"
  %".8125" = icmp ult i32 %".8124", 32
  %"SHF_min.33" = select  i1 %".8125", i32 %".8124", i32 32
  %".8126" = load i32, ptr %"R23"
  %".8127" = load i32, ptr %"R34"
  %"zext.791" = zext i32 0 to i64
  %"zext.792" = zext i32 %".8126" to i64
  %"zext.793" = zext i32 %".8127" to i64
  %"shl.416" = shl i64 %"zext.791", 32
  %"or.379" = or i64 %"shl.416", %"zext.792"
  %"shl.417" = shl i64 %"or.379", %"zext.793"
  %"and.21" = and i64 %"shl.417", 4294967295
  %"trunc32.213" = trunc i64 %"and.21" to i32
  store i32 %"trunc32.213", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".8130" = load i32, ptr %"R11"
  %"sint_to_f32.8" = sitofp i32 %".8130" to float
  %".8131" = fdiv float 0x3ff0000000000000, %"sint_to_f32.8"
  %".8132" = fptosi float %".8131" to i32
  store i32 %".8132", ptr %"R12"
  ; FFMA R13, R11, R12, -1
  %"cast_ptr.995" = bitcast ptr %"R11" to ptr
  %".8135" = load float, ptr %"cast_ptr.995"
  %"cast_ptr.996" = bitcast ptr %"R12" to ptr
  %".8136" = load float, ptr %"cast_ptr.996"
  %"fmul.354" = fmul float %".8135", %".8136"
  %"fadd.314" = fadd float %"fmul.354", 0xbff0000000000000
  %".8137" = bitcast ptr %"R13" to ptr
  store float %"fadd.314", ptr %".8137"
  ; FADD.FTZ R13, -R13, -RZ
  %"cast_ptr.997" = bitcast ptr %"R13" to ptr
  %".8140" = load float, ptr %"cast_ptr.997"
  %".8141" = fneg float %".8140"
  %".8142" = call float @"llvm.fabs"(float %".8141")
  %".8143" = fcmp ogt float %".8142",              0x0
  %".8144" = fcmp olt float %".8142", 0x3810000000000000
  %".8145" = and i1 %".8143", %".8144"
  %".8146" = select  i1 %".8145", float              0x0, float %".8141"
  %".8147" = call float @"llvm.fabs"(float              0x0)
  %".8148" = fcmp ogt float %".8147",              0x0
  %".8149" = fcmp olt float %".8147", 0x3810000000000000
  %".8150" = and i1 %".8148", %".8149"
  %".8151" = select  i1 %".8150", float              0x0, float              0x0
  %"fadd.315" = fadd float %".8146", %".8151"
  %".8152" = call float @"llvm.fabs"(float %"fadd.315")
  %".8153" = fcmp ogt float %".8152",              0x0
  %".8154" = fcmp olt float %".8152", 0x3810000000000000
  %".8155" = and i1 %".8153", %".8154"
  %".8156" = select  i1 %".8155", float              0x0, float %"fadd.315"
  %".8157" = bitcast ptr %"R13" to ptr
  store float %".8156", ptr %".8157"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %"cast_ptr.998" = bitcast ptr %"R12" to ptr
  %".8160" = load float, ptr %"cast_ptr.998"
  %"cast_ptr.999" = bitcast ptr %"R13" to ptr
  %".8161" = load float, ptr %"cast_ptr.999"
  %"cast_ptr.1000" = bitcast ptr %"R12" to ptr
  %".8162" = load float, ptr %"cast_ptr.1000"
  %"fmul.355" = fmul float %".8160", %".8161"
  %"fadd.316" = fadd float %"fmul.355", %".8162"
  %".8163" = bitcast ptr %"R22" to ptr
  store float %"fadd.316", ptr %".8163"
  ; FFMA.RP R13, R12, R13, R12
  %"cast_ptr.1001" = bitcast ptr %"R12" to ptr
  %".8166" = load float, ptr %"cast_ptr.1001"
  %"cast_ptr.1002" = bitcast ptr %"R13" to ptr
  %".8167" = load float, ptr %"cast_ptr.1002"
  %"cast_ptr.1003" = bitcast ptr %"R12" to ptr
  %".8168" = load float, ptr %"cast_ptr.1003"
  %"fmul.356" = fmul float %".8166", %".8167"
  %"fadd.317" = fadd float %"fmul.356", %".8168"
  %".8169" = bitcast ptr %"R13" to ptr
  store float %"fadd.317", ptr %".8169"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".8172" = load i32, ptr %"R22"
  %".8173" = xor i1 1, -1
  %".8174" = and i32 %".8172", 8388607
  store i32 %".8174", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %"cast_ptr.1004" = bitcast ptr %"R22" to ptr
  %".8177" = load float, ptr %"cast_ptr.1004"
  %"cast_ptr.1005" = bitcast ptr %"R13" to ptr
  %".8178" = load float, ptr %"cast_ptr.1005"
  %".8179" = load i1, ptr %"PT"
  %".8180" = call float @"llvm.fabs"(float %".8177")
  %".8181" = fcmp ogt float %".8180",              0x0
  %".8182" = fcmp olt float %".8180", 0x3810000000000000
  %".8183" = and i1 %".8181", %".8182"
  %".8184" = select  i1 %".8183", float              0x0, float %".8177"
  %".8185" = call float @"llvm.fabs"(float %".8178")
  %".8186" = fcmp ogt float %".8185",              0x0
  %".8187" = fcmp olt float %".8185", 0x3810000000000000
  %".8188" = and i1 %".8186", %".8187"
  %".8189" = select  i1 %".8188", float              0x0, float %".8178"
  %"fcmp_ordered.3" = fcmp une float %".8184", %".8189"
  %".8190" = xor i1 %"fcmp_ordered.3", -1
  %".8191" = and i1 %"fcmp_ordered.3", %".8179"
  %".8192" = and i1 %".8190", %".8179"
  store i1 %".8191", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".8195" = load i32, ptr %"R12"
  %".8196" = xor i1 1, -1
  %".8197" = or i32 %".8195", 8388608
  store i32 %".8197", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".8200" = load i1, ptr %"P0"
  %".8201" = xor i1 %".8200", -1
  %".8202" = icmp eq i1 %".8201", 1
  %"sel.6" = select  i1 %".8202", i32 0, i32 4294967295
  store i32 %"sel.6", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".8205" = load i32, ptr %"R23"
  %".8206" = load i32, ptr %"R12"
  %".8207" = xor i1 1, -1
  %".8208" = and i32 %".8205", %".8206"
  store i32 %".8208", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".8211" = load i32, ptr %"R13"
  %".8212" = sub i32 0, %".8211"
  %".8213" = add i32 %".8212", 0
  %".8214" = add i32 %".8213", 0
  store i32 %".8214", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".8217" = load i32, ptr %"R34"
  %".8218" = icmp ult i32 %".8217", 32
  %"SHF_min.34" = select  i1 %".8218", i32 %".8217", i32 32
  %".8219" = load i32, ptr %"R23"
  %".8220" = load i32, ptr %"R34"
  %"zext.794" = zext i32 %".8219" to i64
  %"zext.795" = zext i32 0 to i64
  %"zext.796" = zext i32 %".8220" to i64
  %"shl.418" = shl i64 %"zext.794", 32
  %"or.380" = or i64 %"shl.418", %"zext.795"
  %"lshr.21" = lshr i64 %"or.380", %"zext.796"
  %"lshr.22" = lshr i64 %"lshr.21", 32
  %"trunc32.214" = trunc i64 %"lshr.22" to i32
  store i32 %"trunc32.214", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".8223" = load i32, ptr %"R13"
  %".8224" = load i32, ptr %"R34"
  %".8225" = load i32, ptr %"R12"
  %".8226" = xor i1 1, -1
  %".8227" = or i32 %".8223", %".8224"
  %".8228" = or i32 %".8223", %".8225"
  %".8229" = and i32 %".8227", %".8228"
  store i32 %".8229", ptr %"RZ"
  %".8231" = icmp ne i32 %".8229", 0
  store i1 %".8231", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".8234" = load i32, ptr %"R23"
  %".8235" = xor i1 1, -1
  %".8236" = and i32 %".8234", 1
  store i32 %".8236", ptr %"RZ"
  %".8238" = icmp ne i32 %".8236", 0
  store i1 %".8238", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".8241" = load i32, ptr %"R23"
  %".8242" = xor i1 1, -1
  %".8243" = and i32 %".8241", 2
  store i32 %".8243", ptr %"RZ"
  %".8245" = icmp ne i32 %".8243", 0
  store i1 %".8245", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".8248" = load i1, ptr %"P0"
  %".8249" = load i1, ptr %"P1"
  %".8250" = or i1 %".8248", %".8249"
  %".8251" = and i1 %".8250", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8253" = load i32, ptr %"R24"
  %".8254" = xor i1 1, -1
  %".8255" = and i32 %".8253", 8388607
  store i32 %".8255", ptr %"RZ"
  %".8257" = icmp ne i32 %".8255", 0
  store i1 %".8257", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".8260" = load i1, ptr %"P0"
  %".8261" = xor i1 %".8260", -1
  %".8262" = icmp eq i1 %".8261", 1
  %"sel.7" = select  i1 %".8262", i32 0, i32 1
  store i32 %"sel.7", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".8265" = load i32, ptr %"R11"
  %".8266" = sub i32 0, %".8265"
  %".8267" = add i32 %".8266", 0
  %".8268" = add i32 %".8267", 0
  store i32 %".8268", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".8271" = load i32, ptr %"R11"
  %".8272" = load i1, ptr %"PT"
  %"cmp.71" = icmp sge i32 %".8271", 0
  %".8273" = xor i1 %"cmp.71", -1
  %".8274" = and i1 %"cmp.71", %".8272"
  %".8275" = and i1 %".8273", %".8272"
  store i1 %".8274", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".8278" = load i32, ptr %"R25"
  %".8279" = add i32 %".8278", -252
  %".8280" = add i32 %".8279", 0
  store i32 %".8280", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".8283" = load i32, ptr %"R11"
  %".8284" = icmp ult i32 %".8283", 32
  %"SHF_min.35" = select  i1 %".8284", i32 %".8283", i32 32
  %".8285" = load i32, ptr %"R12"
  %".8286" = load i32, ptr %"R11"
  %"zext.797" = zext i32 %".8285" to i64
  %"zext.798" = zext i32 0 to i64
  %"zext.799" = zext i32 %".8286" to i64
  %"shl.419" = shl i64 %"zext.797", 32
  %"or.381" = or i64 %"shl.419", %"zext.798"
  %"lshr.23" = lshr i64 %"or.381", %"zext.799"
  %"lshr.24" = lshr i64 %"lshr.23", 32
  %"trunc32.215" = trunc i64 %"lshr.24" to i32
  store i32 %"trunc32.215", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".8289" = load i1, ptr %"P0"
  %".8290" = icmp ne i1 %".8289", 1
  br i1 %".8290", label %".L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".8293" = load i32, ptr %"R11"
  %".8294" = add i32 %".8293", 1
  %".8295" = add i32 %".8294", 0
  store i32 %".8295", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4:
  ; IADD3 R11, R11, 0x1, RZ
  %".8300" = load i32, ptr %"R11"
  %".8301" = add i32 %".8300", 1
  %".8302" = add i32 %".8301", 0
  store i32 %".8302", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...4"
.L_x_49_split_0x4be0...4:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".8307" = load i1, ptr %"P1"
  %".8308" = icmp ne i1 %".8307", 1
  br i1 %".8308", label %".L_x_49_split_0x4be0...4_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0...4_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8311" = icmp ult i32 1, 32
  %"SHF_min.36" = select  i1 %".8311", i32 1, i32 32
  %".8312" = load i32, ptr %"R11"
  %"zext.800" = zext i32 0 to i64
  %"zext.801" = zext i32 %".8312" to i64
  %"zext.802" = zext i32 1 to i64
  %"shl.420" = shl i64 %"zext.800", 32
  %"or.382" = or i64 %"shl.420", %"zext.801"
  %"shl.421" = shl i64 %"or.382", %"zext.802"
  %"and.22" = and i64 %"shl.421", 4294967295
  %"trunc32.216" = trunc i64 %"and.22" to i32
  store i32 %"trunc32.216", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4)
  br label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0_conditionalExpr_0x4be0...4:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8317" = icmp ult i32 1, 32
  %"SHF_min.37" = select  i1 %".8317", i32 1, i32 32
  %".8318" = load i32, ptr %"R11"
  %"zext.803" = zext i32 0 to i64
  %"zext.804" = zext i32 %".8318" to i64
  %"zext.805" = zext i32 1 to i64
  %"shl.422" = shl i64 %"zext.803", 32
  %"or.383" = or i64 %"shl.422", %"zext.804"
  %"shl.423" = shl i64 %"or.383", %"zext.805"
  %"and.23" = and i64 %"shl.423", 4294967295
  %"trunc32.217" = trunc i64 %"and.23" to i32
  store i32 %"trunc32.217", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4bf0)
  br label %".L_x_49_split_0x4bf0...4"
.L_x_49_split_0x4bf0...4:
  ; LOP3.LUT R11, R11, 0x80000000, R24, 0xf8, !PT
  %".8323" = load i32, ptr %"R11"
  %".8324" = load i32, ptr %"R24"
  %".8325" = xor i1 1, -1
  %".8326" = or i32 %".8323", 2147483648
  %".8327" = or i32 %".8323", %".8324"
  %".8328" = and i32 %".8326", %".8327"
  store i32 %".8328", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_51...4:
  ; MUFU.RCP R11, R24
  %".8333" = load i32, ptr %"R24"
  %"sint_to_f32.9" = sitofp i32 %".8333" to float
  %".8334" = fdiv float 0x3ff0000000000000, %"sint_to_f32.9"
  %".8335" = fptosi float %".8334" to i32
  store i32 %".8335", ptr %"R11"
  br label %".L_x_50...4"
.L_x_50...4:
  ; BSYNC B1
  br label %".L_x_48...4"
.L_x_48...4:
  ; MOV R22, R11
  %".8341" = load i32, ptr %"R11"
  store i32 %".8341", ptr %"R22"
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
  %".8351" = load i32, ptr %"R22"
  store i32 %".8351", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %"cast_ptr.1006" = bitcast ptr %"R23" to ptr
  %".8356" = load float, ptr %"cast_ptr.1006"
  %".8357" = fdiv float 0x3ff0000000000000, %".8356"
  %".8358" = bitcast ptr %"R6" to ptr
  store float %".8357", ptr %".8358"
  ; FFMA R5, R23, R6, -1
  %"cast_ptr.1007" = bitcast ptr %"R23" to ptr
  %".8361" = load float, ptr %"cast_ptr.1007"
  %"cast_ptr.1008" = bitcast ptr %"R6" to ptr
  %".8362" = load float, ptr %"cast_ptr.1008"
  %"fmul.357" = fmul float %".8361", %".8362"
  %"fadd.318" = fadd float %"fmul.357", 0xbff0000000000000
  %".8363" = bitcast ptr %"R5" to ptr
  store float %"fadd.318", ptr %".8363"
  ; FADD.FTZ R5, -R5, -RZ
  %"cast_ptr.1009" = bitcast ptr %"R5" to ptr
  %".8366" = load float, ptr %"cast_ptr.1009"
  %".8367" = fneg float %".8366"
  %".8368" = call float @"llvm.fabs"(float %".8367")
  %".8369" = fcmp ogt float %".8368",              0x0
  %".8370" = fcmp olt float %".8368", 0x3810000000000000
  %".8371" = and i1 %".8369", %".8370"
  %".8372" = select  i1 %".8371", float              0x0, float %".8367"
  %".8373" = call float @"llvm.fabs"(float              0x0)
  %".8374" = fcmp ogt float %".8373",              0x0
  %".8375" = fcmp olt float %".8373", 0x3810000000000000
  %".8376" = and i1 %".8374", %".8375"
  %".8377" = select  i1 %".8376", float              0x0, float              0x0
  %"fadd.319" = fadd float %".8372", %".8377"
  %".8378" = call float @"llvm.fabs"(float %"fadd.319")
  %".8379" = fcmp ogt float %".8378",              0x0
  %".8380" = fcmp olt float %".8378", 0x3810000000000000
  %".8381" = and i1 %".8379", %".8380"
  %".8382" = select  i1 %".8381", float              0x0, float %"fadd.319"
  %".8383" = bitcast ptr %"R5" to ptr
  store float %".8382", ptr %".8383"
  ; FFMA R5, R6, R5, R6
  %"cast_ptr.1010" = bitcast ptr %"R6" to ptr
  %".8386" = load float, ptr %"cast_ptr.1010"
  %"cast_ptr.1011" = bitcast ptr %"R5" to ptr
  %".8387" = load float, ptr %"cast_ptr.1011"
  %"cast_ptr.1012" = bitcast ptr %"R6" to ptr
  %".8388" = load float, ptr %"cast_ptr.1012"
  %"fmul.358" = fmul float %".8386", %".8387"
  %"fadd.320" = fadd float %"fmul.358", %".8388"
  %".8389" = bitcast ptr %"R5" to ptr
  store float %"fadd.320", ptr %".8389"
  br label %".L_x_46"
.L_x_46:
  ; BSYNC B0
  br label %".L_x_44"
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".8395" = load i32, ptr %"R28"
  %"zext.806" = zext i32 %".8395" to i64
  %".8396" = load i32, ptr %"R29"
  %"zext.807" = zext i32 %".8396" to i64
  %"shl.424" = shl i64 %"zext.807", 32
  %"or.384" = or i64 %"shl.424", %"zext.806"
  %"inttoptr_bytes.346" = inttoptr i64 %"or.384" to ptr addrspace(1)
  %"ptr_cast_for_access.346" = bitcast ptr addrspace(1) %"inttoptr_bytes.346" to ptr addrspace(1)
  %".8397" = load float, ptr addrspace(1) %"ptr_cast_for_access.346"
  %".8398" = bitcast ptr %"R6" to ptr
  store float %".8397", ptr %".8398"
  ; FADD R7, -R5, 1
  %"cast_ptr.1013" = bitcast ptr %"R5" to ptr
  %".8401" = load float, ptr %"cast_ptr.1013"
  %".8402" = fneg float %".8401"
  %"fadd.321" = fadd float %".8402", 0x3ff0000000000000
  %".8403" = bitcast ptr %"R7" to ptr
  store float %"fadd.321", ptr %".8403"
  ; FMUL R6, R6, R5
  %"cast_ptr.1014" = bitcast ptr %"R6" to ptr
  %".8406" = load float, ptr %"cast_ptr.1014"
  %"cast_ptr.1015" = bitcast ptr %"R5" to ptr
  %".8407" = load float, ptr %"cast_ptr.1015"
  %"fmul.359" = fmul float %".8406", %".8407"
  %".8408" = bitcast ptr %"R6" to ptr
  store float %"fmul.359", ptr %".8408"
  ; FFMA R7, R7, R4, R6
  %"cast_ptr.1016" = bitcast ptr %"R7" to ptr
  %".8411" = load float, ptr %"cast_ptr.1016"
  %"cast_ptr.1017" = bitcast ptr %"R4" to ptr
  %".8412" = load float, ptr %"cast_ptr.1017"
  %"cast_ptr.1018" = bitcast ptr %"R6" to ptr
  %".8413" = load float, ptr %"cast_ptr.1018"
  %"fmul.360" = fmul float %".8411", %".8412"
  %"fadd.322" = fadd float %"fmul.360", %".8413"
  %".8414" = bitcast ptr %"R7" to ptr
  store float %"fadd.322", ptr %".8414"
  ; STG.E.SYS [R28], R7
  %"cast_ptr.1019" = bitcast ptr %"R7" to ptr
  %".8417" = load float, ptr %"cast_ptr.1019"
  %".8418" = load i32, ptr %"R28"
  %"zext.808" = zext i32 %".8418" to i64
  %".8419" = load i32, ptr %"R29"
  %"zext.809" = zext i32 %".8419" to i64
  %"shl.425" = shl i64 %"zext.809", 32
  %"or.385" = or i64 %"shl.425", %"zext.808"
  %"inttoptr_bytes.347" = inttoptr i64 %"or.385" to ptr addrspace(1)
  %"ptr_cast_for_access.347" = bitcast ptr addrspace(1) %"inttoptr_bytes.347" to ptr addrspace(1)
  store float %".8417", ptr addrspace(1) %"ptr_cast_for_access.347"
  ; @!P3 BRA `(.L_x_47)
  %".8422" = load i1, ptr %"P3"
  %".8423" = icmp ne i1 %".8422", 1
  br i1 %".8423", label %".L_x_47", label %".L_x_44_split_0x48f0"
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

