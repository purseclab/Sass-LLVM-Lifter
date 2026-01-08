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
  %".123" = load i32, ptr %"RZ"
  store i32 %".123", ptr %"R6"
  ; IADD3 R7, -R4, c[0x0][0x184], RZ
  %".126" = load i32, ptr %"R4"
  %".127" = sub i32 0, %".126"
  %".128" = add i32 %".127", %"Arg_5"
  %".129" = add i32 %".128", 0
  store i32 %".129", ptr %"R7"
  br label %".L_x_22"
.L_x_22:
  ; MOV R8, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R8"
  ; IADD3 R6, R6, 0x1, RZ
  %".135" = load i32, ptr %"R6"
  %".136" = add i32 %".135", 1
  %".137" = add i32 %".136", 0
  store i32 %".137", ptr %"R6"
  ; ISETP.GE.AND P4, PT, R8, 0x1, PT
  %".140" = load i32, ptr %"R8"
  %".141" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".140", 1
  %".142" = xor i1 %"cmp.3", -1
  %".143" = and i1 %"cmp.3", %".141"
  %".144" = and i1 %".142", %".141"
  store i1 %".143", ptr %"P4"
  ; ISETP.GE.AND P3, PT, R6, c[0x0][0x188], PT
  %".147" = load i32, ptr %"R6"
  %".148" = load i1, ptr %"PT"
  %"cmp.4" = icmp sge i32 %".147", %"Arg_6"
  %".149" = xor i1 %"cmp.4", -1
  %".150" = and i1 %"cmp.4", %".148"
  %".151" = and i1 %".149", %".148"
  store i1 %".150", ptr %"P3"
  ; MOV R8, RZ
  %".154" = load float, ptr %"RZ"
  %".155" = bitcast ptr %"R8" to ptr
  store float %".154", ptr %".155"
  ; MOV R52, RZ
  %".158" = load float, ptr %"RZ"
  %".159" = bitcast ptr %"R52" to ptr
  store float %".158", ptr %".159"
  ; MOV R54, RZ
  %".162" = load float, ptr %"RZ"
  %".163" = bitcast ptr %"R54" to ptr
  store float %".162", ptr %".163"
  ; @!P4 BRA `(.L_x_1)
  %".166" = load i1, ptr %"P4"
  %".167" = icmp ne i1 %".166", 1
  br i1 %".167", label %".L_x_1", label %".L_x_22_split_0x0230"
.L_x_22_split_0x0230:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".170" = load i32, ptr %"R5"
  %".171" = load i1, ptr %"PT"
  %"cmp.5" = icmp sge i32 %".170", 3
  %".172" = xor i1 %"cmp.5", -1
  %".173" = and i1 %"cmp.5", %".171"
  %".174" = and i1 %".172", %".171"
  store i1 %".173", ptr %"P0"
  ; MOV R54, RZ
  %".177" = load float, ptr %"RZ"
  %".178" = bitcast ptr %"R54" to ptr
  store float %".177", ptr %".178"
  ; MOV R11, RZ
  %".181" = load i32, ptr %"RZ"
  store i32 %".181", ptr %"R11"
  ; MOV R52, RZ
  %".184" = load float, ptr %"RZ"
  %".185" = bitcast ptr %"R52" to ptr
  store float %".184", ptr %".185"
  ; @!P0 BRA `(.L_x_2)
  %".188" = load i1, ptr %"P0"
  %".189" = icmp ne i1 %".188", 1
  br i1 %".189", label %".L_x_2", label %".L_x_22_split_0x0280"
.L_x_22_split_0x0280:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".192" = load i32, ptr %"R7"
  %".193" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".192", 0
  %".194" = xor i1 %"cmp.6", -1
  %".195" = and i1 %"cmp.6", %".193"
  %".196" = and i1 %".194", %".193"
  store i1 %".195", ptr %"P0"
  ; MOV R54, RZ
  %".199" = load float, ptr %"RZ"
  %".200" = bitcast ptr %"R54" to ptr
  store float %".199", ptr %".200"
  ; MOV R11, RZ
  %".203" = load i32, ptr %"RZ"
  store i32 %".203", ptr %"R11"
  ; MOV R9, R7
  %".206" = load i32, ptr %"R7"
  store i32 %".206", ptr %"R9"
  ; @!P0 BRA `(.L_x_3)
  %".209" = load i1, ptr %"P0"
  %".210" = icmp ne i1 %".209", 1
  br i1 %".210", label %".L_x_3", label %".L_x_22_split_0x02d0"
.L_x_22_split_0x02d0:
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".213" = load i32, ptr %"R9"
  %".214" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".213", 12
  %".215" = xor i1 %"cmp.7", -1
  %".216" = and i1 %"cmp.7", %".214"
  %".217" = and i1 %".215", %".214"
  store i1 %".216", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".220" = and i1 1, 1
  %".221" = and i1 %".220", 1
  ; @!P1 BRA `(.L_x_4)
  %".223" = load i1, ptr %"P1"
  %".224" = icmp ne i1 %".223", 1
  br i1 %".224", label %".L_x_4", label %".L_x_22_split_0x0300"
.L_x_22_split_0x0300:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".227" = xor i1 1, 1
  %".228" = and i1 %".227", 1
  %".229" = and i1 %".228", 1
  br label %".L_x_5"
.L_x_5:
  ; IADD3 R25, R0, R11, RZ
  %".232" = load i32, ptr %"R0"
  %".233" = load i32, ptr %"R11"
  %".234" = add i32 %".232", %".233"
  %".235" = add i32 %".234", 0
  store i32 %".235", ptr %"R25"
  ; MOV R18, 0x4
  store i32 4, ptr %"R18"
  ; IMAD R23, R2.reuse, 0x3, R25
  %".240" = load i32, ptr %"R2"
  %".241" = load i32, ptr %"R25"
  %"imad_mul.8" = mul i32 %".240", 3
  %"imad_add.8" = add i32 %"imad_mul.8", %".241"
  store i32 %"imad_add.8", ptr %"R23"
  ; LEA R25, R2, R25, 0x2
  %".244" = load i32, ptr %"R2"
  %".245" = load i32, ptr %"R25"
  %"shl.2" = shl i32 %".244", 2
  %"add.2" = add i32 %"shl.2", %".245"
  store i32 %"add.2", ptr %"R25"
  ; IMAD.WIDE R38, R11, R18, c[0x0][0x168]
  %".248" = load i32, ptr %"R11"
  %".249" = load i32, ptr %"R18"
  %"imad_ext1.4" = zext i32 %".248" to i64
  %"imad_ext2.4" = zext i32 %".249" to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %".250" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %".250"
  %".251" = and i64 %"imad_add.9", 18446744069414584320
  %".252" = lshr i64 %".251", 32
  %"trunc32.8" = trunc i64 %".252" to i32
  %"trunc32.9" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.9", ptr %"R38"
  store i32 %"trunc32.8", ptr %"R39"
  ; IMAD.WIDE R16, R23, R18, c[0x0][0x170]
  %".256" = load i32, ptr %"R23"
  %".257" = load i32, ptr %"R18"
  %"imad_ext1.5" = zext i32 %".256" to i64
  %"imad_ext2.5" = zext i32 %".257" to i64
  %"imad_mul.10" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %".258" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.10" = add i64 %"imad_mul.10", %".258"
  %".259" = and i64 %"imad_add.10", 18446744069414584320
  %".260" = lshr i64 %".259", 32
  %"trunc32.10" = trunc i64 %".260" to i32
  %"trunc32.11" = trunc i64 %"imad_add.10" to i32
  store i32 %"trunc32.11", ptr %"R16"
  store i32 %"trunc32.10", ptr %"R17"
  ; IMAD.WIDE R20, R25, R18, c[0x0][0x170]
  %".264" = load i32, ptr %"R25"
  %".265" = load i32, ptr %"R18"
  %"imad_ext1.6" = zext i32 %".264" to i64
  %"imad_ext2.6" = zext i32 %".265" to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".266" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %".266"
  %".267" = and i64 %"imad_add.11", 18446744069414584320
  %".268" = lshr i64 %".267", 32
  %"trunc32.12" = trunc i64 %".268" to i32
  %"trunc32.13" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.13", ptr %"R20"
  store i32 %"trunc32.12", ptr %"R21"
  ; LDG.E.SYS R57, [R38]
  %".272" = load i32, ptr %"R38"
  %"zext" = zext i32 %".272" to i64
  %".273" = load i32, ptr %"R39"
  %"zext.1" = zext i32 %".273" to i64
  %"shl.3" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl.3", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".274" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".275" = bitcast ptr %"R57" to ptr
  store float %".274", ptr %".275"
  ; LDG.E.SYS R56, [R16]
  %".278" = load i32, ptr %"R16"
  %"zext.2" = zext i32 %".278" to i64
  %".279" = load i32, ptr %"R17"
  %"zext.3" = zext i32 %".279" to i64
  %"shl.4" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.4", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".280" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".281" = bitcast ptr %"R56" to ptr
  store float %".280", ptr %".281"
  ; LDG.E.SYS R58, [R20]
  %".284" = load i32, ptr %"R20"
  %"zext.4" = zext i32 %".284" to i64
  %".285" = load i32, ptr %"R21"
  %"zext.5" = zext i32 %".285" to i64
  %"shl.5" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.5", %"zext.4"
  %"inttoptr_bytes.2" = inttoptr i64 %"or.2" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".286" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".287" = bitcast ptr %"R58" to ptr
  store float %".286", ptr %".287"
  ; LDG.E.SYS R24, [R38+0x4]
  %".290" = load i32, ptr %"R38"
  %"zext.6" = zext i32 %".290" to i64
  %".291" = load i32, ptr %"R39"
  %"zext.7" = zext i32 %".291" to i64
  %"shl.6" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.6", %"zext.6"
  %"ptr_plus_imm" = add i64 %"or.3", 4
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".292" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".293" = bitcast ptr %"R24" to ptr
  store float %".292", ptr %".293"
  ; LDG.E.SYS R47, [R16+0x4]
  %".296" = load i32, ptr %"R16"
  %"zext.8" = zext i32 %".296" to i64
  %".297" = load i32, ptr %"R17"
  %"zext.9" = zext i32 %".297" to i64
  %"shl.7" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.7", %"zext.8"
  %"ptr_plus_imm.1" = add i64 %"or.4", 4
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".298" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".299" = bitcast ptr %"R47" to ptr
  store float %".298", ptr %".299"
  ; LDG.E.SYS R49, [R20+0x4]
  %".302" = load i32, ptr %"R20"
  %"zext.10" = zext i32 %".302" to i64
  %".303" = load i32, ptr %"R21"
  %"zext.11" = zext i32 %".303" to i64
  %"shl.8" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.8", %"zext.10"
  %"ptr_plus_imm.2" = add i64 %"or.5", 4
  %"inttoptr_bytes.5" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".304" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".305" = bitcast ptr %"R49" to ptr
  store float %".304", ptr %".305"
  ; LDG.E.SYS R22, [R38+0x8]
  %".308" = load i32, ptr %"R38"
  %"zext.12" = zext i32 %".308" to i64
  %".309" = load i32, ptr %"R39"
  %"zext.13" = zext i32 %".309" to i64
  %"shl.9" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.9", %"zext.12"
  %"ptr_plus_imm.3" = add i64 %"or.6", 8
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".310" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".311" = bitcast ptr %"R22" to ptr
  store float %".310", ptr %".311"
  ; LDG.E.SYS R43, [R16+0x8]
  %".314" = load i32, ptr %"R16"
  %"zext.14" = zext i32 %".314" to i64
  %".315" = load i32, ptr %"R17"
  %"zext.15" = zext i32 %".315" to i64
  %"shl.10" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.10", %"zext.14"
  %"ptr_plus_imm.4" = add i64 %"or.7", 8
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".316" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".317" = bitcast ptr %"R43" to ptr
  store float %".316", ptr %".317"
  ; LDG.E.SYS R45, [R20+0x8]
  %".320" = load i32, ptr %"R20"
  %"zext.16" = zext i32 %".320" to i64
  %".321" = load i32, ptr %"R21"
  %"zext.17" = zext i32 %".321" to i64
  %"shl.11" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.11", %"zext.16"
  %"ptr_plus_imm.5" = add i64 %"or.8", 8
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".322" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".323" = bitcast ptr %"R45" to ptr
  store float %".322", ptr %".323"
  ; LDG.E.SYS R15, [R38+0xc]
  %".326" = load i32, ptr %"R38"
  %"zext.18" = zext i32 %".326" to i64
  %".327" = load i32, ptr %"R39"
  %"zext.19" = zext i32 %".327" to i64
  %"shl.12" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.12", %"zext.18"
  %"ptr_plus_imm.6" = add i64 %"or.9", 12
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".328" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".329" = bitcast ptr %"R15" to ptr
  store float %".328", ptr %".329"
  ; LDG.E.SYS R14, [R16+0xc]
  %".332" = load i32, ptr %"R16"
  %"zext.20" = zext i32 %".332" to i64
  %".333" = load i32, ptr %"R17"
  %"zext.21" = zext i32 %".333" to i64
  %"shl.13" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.13", %"zext.20"
  %"ptr_plus_imm.7" = add i64 %"or.10", 12
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".334" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".335" = bitcast ptr %"R14" to ptr
  store float %".334", ptr %".335"
  ; LDG.E.SYS R13, [R20+0xc]
  %".338" = load i32, ptr %"R20"
  %"zext.22" = zext i32 %".338" to i64
  %".339" = load i32, ptr %"R21"
  %"zext.23" = zext i32 %".339" to i64
  %"shl.14" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.14", %"zext.22"
  %"ptr_plus_imm.8" = add i64 %"or.11", 12
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".340" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".341" = bitcast ptr %"R13" to ptr
  store float %".340", ptr %".341"
  ; IADD3 R41, R11, 0x4, RZ
  %".344" = load i32, ptr %"R11"
  %".345" = add i32 %".344", 4
  %".346" = add i32 %".345", 0
  store i32 %".346", ptr %"R41"
  ; IADD3 R51, R23, 0x4, RZ
  %".349" = load i32, ptr %"R23"
  %".350" = add i32 %".349", 4
  %".351" = add i32 %".350", 0
  store i32 %".351", ptr %"R51"
  ; IADD3 R35, R11, 0x8, RZ
  %".354" = load i32, ptr %"R11"
  %".355" = add i32 %".354", 8
  %".356" = add i32 %".355", 0
  store i32 %".356", ptr %"R35"
  ; IMAD.WIDE R40, R41, R18, c[0x0][0x168]
  %".359" = load i32, ptr %"R41"
  %".360" = load i32, ptr %"R18"
  %"imad_ext1.7" = zext i32 %".359" to i64
  %"imad_ext2.7" = zext i32 %".360" to i64
  %"imad_mul.12" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".361" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.12" = add i64 %"imad_mul.12", %".361"
  %".362" = and i64 %"imad_add.12", 18446744069414584320
  %".363" = lshr i64 %".362", 32
  %"trunc32.14" = trunc i64 %".363" to i32
  %"trunc32.15" = trunc i64 %"imad_add.12" to i32
  store i32 %"trunc32.15", ptr %"R40"
  store i32 %"trunc32.14", ptr %"R41"
  ; IADD3 R37, R11, 0xc, RZ
  %".367" = load i32, ptr %"R11"
  %".368" = add i32 %".367", 12
  %".369" = add i32 %".368", 0
  store i32 %".369", ptr %"R37"
  ; IMAD.WIDE R38, R51, R18, c[0x0][0x170]
  %".372" = load i32, ptr %"R51"
  %".373" = load i32, ptr %"R18"
  %"imad_ext1.8" = zext i32 %".372" to i64
  %"imad_ext2.8" = zext i32 %".373" to i64
  %"imad_mul.13" = mul i64 %"imad_ext1.8", %"imad_ext2.8"
  %".374" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.13" = add i64 %"imad_mul.13", %".374"
  %".375" = and i64 %"imad_add.13", 18446744069414584320
  %".376" = lshr i64 %".375", 32
  %"trunc32.16" = trunc i64 %".376" to i32
  %"trunc32.17" = trunc i64 %"imad_add.13" to i32
  store i32 %"trunc32.17", ptr %"R38"
  store i32 %"trunc32.16", ptr %"R39"
  ; IADD3 R51, R25, 0x4, RZ
  %".380" = load i32, ptr %"R25"
  %".381" = add i32 %".380", 4
  %".382" = add i32 %".381", 0
  store i32 %".382", ptr %"R51"
  ; LDG.E.SYS R12, [R40]
  %".385" = load i32, ptr %"R40"
  %"zext.24" = zext i32 %".385" to i64
  %".386" = load i32, ptr %"R41"
  %"zext.25" = zext i32 %".386" to i64
  %"shl.15" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.15", %"zext.24"
  %"inttoptr_bytes.12" = inttoptr i64 %"or.12" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".387" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".388" = bitcast ptr %"R12" to ptr
  store float %".387", ptr %".388"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x168]
  %".391" = load i32, ptr %"R35"
  %".392" = load i32, ptr %"R18"
  %"imad_ext1.9" = zext i32 %".391" to i64
  %"imad_ext2.9" = zext i32 %".392" to i64
  %"imad_mul.14" = mul i64 %"imad_ext1.9", %"imad_ext2.9"
  %".393" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.14" = add i64 %"imad_mul.14", %".393"
  %".394" = and i64 %"imad_add.14", 18446744069414584320
  %".395" = lshr i64 %".394", 32
  %"trunc32.18" = trunc i64 %".395" to i32
  %"trunc32.19" = trunc i64 %"imad_add.14" to i32
  store i32 %"trunc32.19", ptr %"R34"
  store i32 %"trunc32.18", ptr %"R35"
  ; LDG.E.SYS R10, [R40+0x4]
  %".399" = load i32, ptr %"R40"
  %"zext.26" = zext i32 %".399" to i64
  %".400" = load i32, ptr %"R41"
  %"zext.27" = zext i32 %".400" to i64
  %"shl.16" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.16", %"zext.26"
  %"ptr_plus_imm.9" = add i64 %"or.13", 4
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".401" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".402" = bitcast ptr %"R10" to ptr
  store float %".401", ptr %".402"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x168]
  %".405" = load i32, ptr %"R37"
  %".406" = load i32, ptr %"R18"
  %"imad_ext1.10" = zext i32 %".405" to i64
  %"imad_ext2.10" = zext i32 %".406" to i64
  %"imad_mul.15" = mul i64 %"imad_ext1.10", %"imad_ext2.10"
  %".407" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.15" = add i64 %"imad_mul.15", %".407"
  %".408" = and i64 %"imad_add.15", 18446744069414584320
  %".409" = lshr i64 %".408", 32
  %"trunc32.20" = trunc i64 %".409" to i32
  %"trunc32.21" = trunc i64 %"imad_add.15" to i32
  store i32 %"trunc32.21", ptr %"R36"
  store i32 %"trunc32.20", ptr %"R37"
  ; LDG.E.SYS R16, [R40+0x8]
  %".413" = load i32, ptr %"R40"
  %"zext.28" = zext i32 %".413" to i64
  %".414" = load i32, ptr %"R41"
  %"zext.29" = zext i32 %".414" to i64
  %"shl.17" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.17", %"zext.28"
  %"ptr_plus_imm.10" = add i64 %"or.14", 8
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".415" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".416" = bitcast ptr %"R16" to ptr
  store float %".415", ptr %".416"
  ; LDG.E.SYS R17, [R40+0xc]
  %".419" = load i32, ptr %"R40"
  %"zext.30" = zext i32 %".419" to i64
  %".420" = load i32, ptr %"R41"
  %"zext.31" = zext i32 %".420" to i64
  %"shl.18" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.18", %"zext.30"
  %"ptr_plus_imm.11" = add i64 %"or.15", 12
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".421" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".422" = bitcast ptr %"R17" to ptr
  store float %".421", ptr %".422"
  ; LDG.E.SYS R19, [R34]
  %".425" = load i32, ptr %"R34"
  %"zext.32" = zext i32 %".425" to i64
  %".426" = load i32, ptr %"R35"
  %"zext.33" = zext i32 %".426" to i64
  %"shl.19" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.19", %"zext.32"
  %"inttoptr_bytes.16" = inttoptr i64 %"or.16" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".427" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".428" = bitcast ptr %"R19" to ptr
  store float %".427", ptr %".428"
  ; LDG.E.SYS R20, [R34+0x4]
  %".431" = load i32, ptr %"R34"
  %"zext.34" = zext i32 %".431" to i64
  %".432" = load i32, ptr %"R35"
  %"zext.35" = zext i32 %".432" to i64
  %"shl.20" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.20", %"zext.34"
  %"ptr_plus_imm.12" = add i64 %"or.17", 4
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".433" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".434" = bitcast ptr %"R20" to ptr
  store float %".433", ptr %".434"
  ; IMAD.WIDE R40, R51, R18, c[0x0][0x170]
  %".437" = load i32, ptr %"R51"
  %".438" = load i32, ptr %"R18"
  %"imad_ext1.11" = zext i32 %".437" to i64
  %"imad_ext2.11" = zext i32 %".438" to i64
  %"imad_mul.16" = mul i64 %"imad_ext1.11", %"imad_ext2.11"
  %".439" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.16" = add i64 %"imad_mul.16", %".439"
  %".440" = and i64 %"imad_add.16", 18446744069414584320
  %".441" = lshr i64 %".440", 32
  %"trunc32.22" = trunc i64 %".441" to i32
  %"trunc32.23" = trunc i64 %"imad_add.16" to i32
  store i32 %"trunc32.23", ptr %"R40"
  store i32 %"trunc32.22", ptr %"R41"
  ; LDG.E.SYS R51, [R38]
  %".445" = load i32, ptr %"R38"
  %"zext.36" = zext i32 %".445" to i64
  %".446" = load i32, ptr %"R39"
  %"zext.37" = zext i32 %".446" to i64
  %"shl.21" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.21", %"zext.36"
  %"inttoptr_bytes.18" = inttoptr i64 %"or.18" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".447" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".448" = bitcast ptr %"R51" to ptr
  store float %".447", ptr %".448"
  ; LDG.E.SYS R21, [R34+0x8]
  %".451" = load i32, ptr %"R34"
  %"zext.38" = zext i32 %".451" to i64
  %".452" = load i32, ptr %"R35"
  %"zext.39" = zext i32 %".452" to i64
  %"shl.22" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.22", %"zext.38"
  %"ptr_plus_imm.13" = add i64 %"or.19", 8
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".453" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".454" = bitcast ptr %"R21" to ptr
  store float %".453", ptr %".454"
  ; LDG.E.SYS R42, [R34+0xc]
  %".457" = load i32, ptr %"R34"
  %"zext.40" = zext i32 %".457" to i64
  %".458" = load i32, ptr %"R35"
  %"zext.41" = zext i32 %".458" to i64
  %"shl.23" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.23", %"zext.40"
  %"ptr_plus_imm.14" = add i64 %"or.20", 12
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".459" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".460" = bitcast ptr %"R42" to ptr
  store float %".459", ptr %".460"
  ; LDG.E.SYS R44, [R36]
  %".463" = load i32, ptr %"R36"
  %"zext.42" = zext i32 %".463" to i64
  %".464" = load i32, ptr %"R37"
  %"zext.43" = zext i32 %".464" to i64
  %"shl.24" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.24", %"zext.42"
  %"inttoptr_bytes.21" = inttoptr i64 %"or.21" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".465" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".466" = bitcast ptr %"R44" to ptr
  store float %".465", ptr %".466"
  ; LDG.E.SYS R46, [R36+0x4]
  %".469" = load i32, ptr %"R36"
  %"zext.44" = zext i32 %".469" to i64
  %".470" = load i32, ptr %"R37"
  %"zext.45" = zext i32 %".470" to i64
  %"shl.25" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.25", %"zext.44"
  %"ptr_plus_imm.15" = add i64 %"or.22", 4
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".471" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".472" = bitcast ptr %"R46" to ptr
  store float %".471", ptr %".472"
  ; IADD3 R35, R23, 0x8, RZ
  %".475" = load i32, ptr %"R23"
  %".476" = add i32 %".475", 8
  %".477" = add i32 %".476", 0
  store i32 %".477", ptr %"R35"
  ; LDG.E.SYS R48, [R36+0x8]
  %".480" = load i32, ptr %"R36"
  %"zext.46" = zext i32 %".480" to i64
  %".481" = load i32, ptr %"R37"
  %"zext.47" = zext i32 %".481" to i64
  %"shl.26" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.26", %"zext.46"
  %"ptr_plus_imm.16" = add i64 %"or.23", 8
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".482" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".483" = bitcast ptr %"R48" to ptr
  store float %".482", ptr %".483"
  ; LDG.E.SYS R50, [R36+0xc]
  %".486" = load i32, ptr %"R36"
  %"zext.48" = zext i32 %".486" to i64
  %".487" = load i32, ptr %"R37"
  %"zext.49" = zext i32 %".487" to i64
  %"shl.27" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.27", %"zext.48"
  %"ptr_plus_imm.17" = add i64 %"or.24", 12
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".488" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".489" = bitcast ptr %"R50" to ptr
  store float %".488", ptr %".489"
  ; LDG.E.SYS R53, [R38+0x4]
  %".492" = load i32, ptr %"R38"
  %"zext.50" = zext i32 %".492" to i64
  %".493" = load i32, ptr %"R39"
  %"zext.51" = zext i32 %".493" to i64
  %"shl.28" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.28", %"zext.50"
  %"ptr_plus_imm.18" = add i64 %"or.25", 4
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".494" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".495" = bitcast ptr %"R53" to ptr
  store float %".494", ptr %".495"
  ; LDG.E.SYS R59, [R40+0x4]
  %".498" = load i32, ptr %"R40"
  %"zext.52" = zext i32 %".498" to i64
  %".499" = load i32, ptr %"R41"
  %"zext.53" = zext i32 %".499" to i64
  %"shl.29" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.29", %"zext.52"
  %"ptr_plus_imm.19" = add i64 %"or.26", 4
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".500" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".501" = bitcast ptr %"R59" to ptr
  store float %".500", ptr %".501"
  ; IADD3 R37, R25, 0x8, RZ
  %".504" = load i32, ptr %"R25"
  %".505" = add i32 %".504", 8
  %".506" = add i32 %".505", 0
  store i32 %".506", ptr %"R37"
  ; IMAD.WIDE R34, R35, R18, c[0x0][0x170]
  %".509" = load i32, ptr %"R35"
  %".510" = load i32, ptr %"R18"
  %"imad_ext1.12" = zext i32 %".509" to i64
  %"imad_ext2.12" = zext i32 %".510" to i64
  %"imad_mul.17" = mul i64 %"imad_ext1.12", %"imad_ext2.12"
  %".511" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.17" = add i64 %"imad_mul.17", %".511"
  %".512" = and i64 %"imad_add.17", 18446744069414584320
  %".513" = lshr i64 %".512", 32
  %"trunc32.24" = trunc i64 %".513" to i32
  %"trunc32.25" = trunc i64 %"imad_add.17" to i32
  store i32 %"trunc32.25", ptr %"R34"
  store i32 %"trunc32.24", ptr %"R35"
  ; LDG.E.SYS R55, [R38+0x8]
  %".517" = load i32, ptr %"R38"
  %"zext.54" = zext i32 %".517" to i64
  %".518" = load i32, ptr %"R39"
  %"zext.55" = zext i32 %".518" to i64
  %"shl.30" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.30", %"zext.54"
  %"ptr_plus_imm.20" = add i64 %"or.27", 8
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".519" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".520" = bitcast ptr %"R55" to ptr
  store float %".519", ptr %".520"
  ; IMAD.WIDE R36, R37, R18, c[0x0][0x170]
  %".523" = load i32, ptr %"R37"
  %".524" = load i32, ptr %"R18"
  %"imad_ext1.13" = zext i32 %".523" to i64
  %"imad_ext2.13" = zext i32 %".524" to i64
  %"imad_mul.18" = mul i64 %"imad_ext1.13", %"imad_ext2.13"
  %".525" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.18" = add i64 %"imad_mul.18", %".525"
  %".526" = and i64 %"imad_add.18", 18446744069414584320
  %".527" = lshr i64 %".526", 32
  %"trunc32.26" = trunc i64 %".527" to i32
  %"trunc32.27" = trunc i64 %"imad_add.18" to i32
  store i32 %"trunc32.27", ptr %"R36"
  store i32 %"trunc32.26", ptr %"R37"
  ; LDG.E.SYS R61, [R40+0x8]
  %".531" = load i32, ptr %"R40"
  %"zext.56" = zext i32 %".531" to i64
  %".532" = load i32, ptr %"R41"
  %"zext.57" = zext i32 %".532" to i64
  %"shl.31" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.31", %"zext.56"
  %"ptr_plus_imm.21" = add i64 %"or.28", 8
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".533" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".534" = bitcast ptr %"R61" to ptr
  store float %".533", ptr %".534"
  ; LDG.E.SYS R60, [R38+0xc]
  %".537" = load i32, ptr %"R38"
  %"zext.58" = zext i32 %".537" to i64
  %".538" = load i32, ptr %"R39"
  %"zext.59" = zext i32 %".538" to i64
  %"shl.32" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.32", %"zext.58"
  %"ptr_plus_imm.22" = add i64 %"or.29", 12
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".539" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".540" = bitcast ptr %"R60" to ptr
  store float %".539", ptr %".540"
  ; IADD3 R23, R23, 0xc, RZ
  %".543" = load i32, ptr %"R23"
  %".544" = add i32 %".543", 12
  %".545" = add i32 %".544", 0
  store i32 %".545", ptr %"R23"
  ; IADD3 R25, R25, 0xc, RZ
  %".548" = load i32, ptr %"R25"
  %".549" = add i32 %".548", 12
  %".550" = add i32 %".549", 0
  store i32 %".550", ptr %"R25"
  ; LDG.E.SYS R39, [R34+0x4]
  %".553" = load i32, ptr %"R34"
  %"zext.60" = zext i32 %".553" to i64
  %".554" = load i32, ptr %"R35"
  %"zext.61" = zext i32 %".554" to i64
  %"shl.33" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.33", %"zext.60"
  %"ptr_plus_imm.23" = add i64 %"or.30", 4
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".555" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".556" = bitcast ptr %"R39" to ptr
  store float %".555", ptr %".556"
  ; LDG.E.SYS R38, [R34+0x8]
  %".559" = load i32, ptr %"R34"
  %"zext.62" = zext i32 %".559" to i64
  %".560" = load i32, ptr %"R35"
  %"zext.63" = zext i32 %".560" to i64
  %"shl.34" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.34", %"zext.62"
  %"ptr_plus_imm.24" = add i64 %"or.31", 8
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".561" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".562" = bitcast ptr %"R38" to ptr
  store float %".561", ptr %".562"
  ; FFMA R56, R56, R57, R52
  %".565" = load float, ptr %"R56"
  %".566" = load float, ptr %"R57"
  %".567" = load float, ptr %"R52"
  %"fmul" = fmul float %".565", %".566"
  %"fadd" = fadd float %"fmul", %".567"
  %".568" = bitcast ptr %"R56" to ptr
  store float %"fadd", ptr %".568"
  ; LDG.E.SYS R52, [R40+0xc]
  %".571" = load i32, ptr %"R40"
  %"zext.64" = zext i32 %".571" to i64
  %".572" = load i32, ptr %"R41"
  %"zext.65" = zext i32 %".572" to i64
  %"shl.35" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.35", %"zext.64"
  %"ptr_plus_imm.25" = add i64 %"or.32", 12
  %"inttoptr_bytes.32" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".573" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".574" = bitcast ptr %"R52" to ptr
  store float %".573", ptr %".574"
  ; FFMA R58, R57, R58, R54
  %".577" = load float, ptr %"R57"
  %".578" = load float, ptr %"R58"
  %".579" = load float, ptr %"R54"
  %"fmul.1" = fmul float %".577", %".578"
  %"fadd.1" = fadd float %"fmul.1", %".579"
  %".580" = bitcast ptr %"R58" to ptr
  store float %"fadd.1", ptr %".580"
  ; LDG.E.SYS R57, [R40]
  %".583" = load i32, ptr %"R40"
  %"zext.66" = zext i32 %".583" to i64
  %".584" = load i32, ptr %"R41"
  %"zext.67" = zext i32 %".584" to i64
  %"shl.36" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.36", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".585" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".586" = bitcast ptr %"R57" to ptr
  store float %".585", ptr %".586"
  ; LDG.E.SYS R54, [R34]
  %".589" = load i32, ptr %"R34"
  %"zext.68" = zext i32 %".589" to i64
  %".590" = load i32, ptr %"R35"
  %"zext.69" = zext i32 %".590" to i64
  %"shl.37" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.37", %"zext.68"
  %"inttoptr_bytes.34" = inttoptr i64 %"or.34" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".591" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".592" = bitcast ptr %"R54" to ptr
  store float %".591", ptr %".592"
  ; FFMA R56, R47, R24, R56
  %".595" = load float, ptr %"R47"
  %".596" = load float, ptr %"R24"
  %".597" = load float, ptr %"R56"
  %"fmul.2" = fmul float %".595", %".596"
  %"fadd.2" = fadd float %"fmul.2", %".597"
  %".598" = bitcast ptr %"R56" to ptr
  store float %"fadd.2", ptr %".598"
  ; LDG.E.SYS R47, [R34+0xc]
  %".601" = load i32, ptr %"R34"
  %"zext.70" = zext i32 %".601" to i64
  %".602" = load i32, ptr %"R35"
  %"zext.71" = zext i32 %".602" to i64
  %"shl.38" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.38", %"zext.70"
  %"ptr_plus_imm.26" = add i64 %"or.35", 12
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".603" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".604" = bitcast ptr %"R47" to ptr
  store float %".603", ptr %".604"
  ; FFMA R58, R24, R49, R58
  %".607" = load float, ptr %"R24"
  %".608" = load float, ptr %"R49"
  %".609" = load float, ptr %"R58"
  %"fmul.3" = fmul float %".607", %".608"
  %"fadd.3" = fadd float %"fmul.3", %".609"
  %".610" = bitcast ptr %"R58" to ptr
  store float %"fadd.3", ptr %".610"
  ; LDG.E.SYS R41, [R36+0x4]
  %".613" = load i32, ptr %"R36"
  %"zext.72" = zext i32 %".613" to i64
  %".614" = load i32, ptr %"R37"
  %"zext.73" = zext i32 %".614" to i64
  %"shl.39" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.39", %"zext.72"
  %"ptr_plus_imm.27" = add i64 %"or.36", 4
  %"inttoptr_bytes.36" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".615" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".616" = bitcast ptr %"R41" to ptr
  store float %".615", ptr %".616"
  ; LDG.E.SYS R40, [R36+0x8]
  %".619" = load i32, ptr %"R36"
  %"zext.74" = zext i32 %".619" to i64
  %".620" = load i32, ptr %"R37"
  %"zext.75" = zext i32 %".620" to i64
  %"shl.40" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.40", %"zext.74"
  %"ptr_plus_imm.28" = add i64 %"or.37", 8
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".621" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".622" = bitcast ptr %"R40" to ptr
  store float %".621", ptr %".622"
  ; FFMA R49, R43, R22, R56
  %".625" = load float, ptr %"R43"
  %".626" = load float, ptr %"R22"
  %".627" = load float, ptr %"R56"
  %"fmul.4" = fmul float %".625", %".626"
  %"fadd.4" = fadd float %"fmul.4", %".627"
  %".628" = bitcast ptr %"R49" to ptr
  store float %"fadd.4", ptr %".628"
  ; LDG.E.SYS R56, [R36]
  %".631" = load i32, ptr %"R36"
  %"zext.76" = zext i32 %".631" to i64
  %".632" = load i32, ptr %"R37"
  %"zext.77" = zext i32 %".632" to i64
  %"shl.41" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.41", %"zext.76"
  %"inttoptr_bytes.38" = inttoptr i64 %"or.38" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".633" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".634" = bitcast ptr %"R56" to ptr
  store float %".633", ptr %".634"
  ; IMAD.WIDE R24, R25, R18, c[0x0][0x170]
  %".637" = load i32, ptr %"R25"
  %".638" = load i32, ptr %"R18"
  %"imad_ext1.14" = zext i32 %".637" to i64
  %"imad_ext2.14" = zext i32 %".638" to i64
  %"imad_mul.19" = mul i64 %"imad_ext1.14", %"imad_ext2.14"
  %".639" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.19" = add i64 %"imad_mul.19", %".639"
  %".640" = and i64 %"imad_add.19", 18446744069414584320
  %".641" = lshr i64 %".640", 32
  %"trunc32.28" = trunc i64 %".641" to i32
  %"trunc32.29" = trunc i64 %"imad_add.19" to i32
  store i32 %"trunc32.29", ptr %"R24"
  store i32 %"trunc32.28", ptr %"R25"
  ; LDG.E.SYS R43, [R36+0xc]
  %".645" = load i32, ptr %"R36"
  %"zext.78" = zext i32 %".645" to i64
  %".646" = load i32, ptr %"R37"
  %"zext.79" = zext i32 %".646" to i64
  %"shl.42" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.42", %"zext.78"
  %"ptr_plus_imm.29" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".647" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".648" = bitcast ptr %"R43" to ptr
  store float %".647", ptr %".648"
  ; FFMA R58, R22, R45, R58
  %".651" = load float, ptr %"R22"
  %".652" = load float, ptr %"R45"
  %".653" = load float, ptr %"R58"
  %"fmul.5" = fmul float %".651", %".652"
  %"fadd.5" = fadd float %"fmul.5", %".653"
  %".654" = bitcast ptr %"R58" to ptr
  store float %"fadd.5", ptr %".654"
  ; IMAD.WIDE R22, R23, R18, c[0x0][0x170]
  %".657" = load i32, ptr %"R23"
  %".658" = load i32, ptr %"R18"
  %"imad_ext1.15" = zext i32 %".657" to i64
  %"imad_ext2.15" = zext i32 %".658" to i64
  %"imad_mul.20" = mul i64 %"imad_ext1.15", %"imad_ext2.15"
  %".659" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.20" = add i64 %"imad_mul.20", %".659"
  %".660" = and i64 %"imad_add.20", 18446744069414584320
  %".661" = lshr i64 %".660", 32
  %"trunc32.30" = trunc i64 %".661" to i32
  %"trunc32.31" = trunc i64 %"imad_add.20" to i32
  store i32 %"trunc32.31", ptr %"R22"
  store i32 %"trunc32.30", ptr %"R23"
  ; LDG.E.SYS R18, [R24]
  %".665" = load i32, ptr %"R24"
  %"zext.80" = zext i32 %".665" to i64
  %".666" = load i32, ptr %"R25"
  %"zext.81" = zext i32 %".666" to i64
  %"shl.43" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.43", %"zext.80"
  %"inttoptr_bytes.40" = inttoptr i64 %"or.40" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".667" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".668" = bitcast ptr %"R18" to ptr
  store float %".667", ptr %".668"
  ; FFMA R14, R14, R15, R49
  %".671" = load float, ptr %"R14"
  %".672" = load float, ptr %"R15"
  %".673" = load float, ptr %"R49"
  %"fmul.6" = fmul float %".671", %".672"
  %"fadd.6" = fadd float %"fmul.6", %".673"
  %".674" = bitcast ptr %"R14" to ptr
  store float %"fadd.6", ptr %".674"
  ; LDG.E.SYS R49, [R24+0x4]
  %".677" = load i32, ptr %"R24"
  %"zext.82" = zext i32 %".677" to i64
  %".678" = load i32, ptr %"R25"
  %"zext.83" = zext i32 %".678" to i64
  %"shl.44" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.44", %"zext.82"
  %"ptr_plus_imm.30" = add i64 %"or.41", 4
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".679" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".680" = bitcast ptr %"R49" to ptr
  store float %".679", ptr %".680"
  ; FFMA R58, R15, R13, R58
  %".683" = load float, ptr %"R15"
  %".684" = load float, ptr %"R13"
  %".685" = load float, ptr %"R58"
  %"fmul.7" = fmul float %".683", %".684"
  %"fadd.7" = fadd float %"fmul.7", %".685"
  %".686" = bitcast ptr %"R58" to ptr
  store float %"fadd.7", ptr %".686"
  ; LDG.E.SYS R35, [R22]
  %".689" = load i32, ptr %"R22"
  %"zext.84" = zext i32 %".689" to i64
  %".690" = load i32, ptr %"R23"
  %"zext.85" = zext i32 %".690" to i64
  %"shl.45" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.45", %"zext.84"
  %"inttoptr_bytes.42" = inttoptr i64 %"or.42" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".691" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".692" = bitcast ptr %"R35" to ptr
  store float %".691", ptr %".692"
  ; LDG.E.SYS R15, [R22+0x4]
  %".695" = load i32, ptr %"R22"
  %"zext.86" = zext i32 %".695" to i64
  %".696" = load i32, ptr %"R23"
  %"zext.87" = zext i32 %".696" to i64
  %"shl.46" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.46", %"zext.86"
  %"ptr_plus_imm.31" = add i64 %"or.43", 4
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".697" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".698" = bitcast ptr %"R15" to ptr
  store float %".697", ptr %".698"
  ; LDG.E.SYS R13, [R22+0x8]
  %".701" = load i32, ptr %"R22"
  %"zext.88" = zext i32 %".701" to i64
  %".702" = load i32, ptr %"R23"
  %"zext.89" = zext i32 %".702" to i64
  %"shl.47" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.47", %"zext.88"
  %"ptr_plus_imm.32" = add i64 %"or.44", 8
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".703" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".704" = bitcast ptr %"R13" to ptr
  store float %".703", ptr %".704"
  ; LDG.E.SYS R37, [R24+0x8]
  %".707" = load i32, ptr %"R24"
  %"zext.90" = zext i32 %".707" to i64
  %".708" = load i32, ptr %"R25"
  %"zext.91" = zext i32 %".708" to i64
  %"shl.48" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.48", %"zext.90"
  %"ptr_plus_imm.33" = add i64 %"or.45", 8
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".709" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".710" = bitcast ptr %"R37" to ptr
  store float %".709", ptr %".710"
  ; LDG.E.SYS R45, [R22+0xc]
  %".713" = load i32, ptr %"R22"
  %"zext.92" = zext i32 %".713" to i64
  %".714" = load i32, ptr %"R23"
  %"zext.93" = zext i32 %".714" to i64
  %"shl.49" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.49", %"zext.92"
  %"ptr_plus_imm.34" = add i64 %"or.46", 12
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".715" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".716" = bitcast ptr %"R45" to ptr
  store float %".715", ptr %".716"
  ; LDG.E.SYS R34, [R24+0xc]
  %".719" = load i32, ptr %"R24"
  %"zext.94" = zext i32 %".719" to i64
  %".720" = load i32, ptr %"R25"
  %"zext.95" = zext i32 %".720" to i64
  %"shl.50" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.50", %"zext.94"
  %"ptr_plus_imm.35" = add i64 %"or.47", 12
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".721" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".722" = bitcast ptr %"R34" to ptr
  store float %".721", ptr %".722"
  ; FFMA R14, R51, R12, R14
  %".725" = load float, ptr %"R51"
  %".726" = load float, ptr %"R12"
  %".727" = load float, ptr %"R14"
  %"fmul.8" = fmul float %".725", %".726"
  %"fadd.8" = fadd float %"fmul.8", %".727"
  %".728" = bitcast ptr %"R14" to ptr
  store float %"fadd.8", ptr %".728"
  ; IADD3 R9, R9, -0x10, RZ
  %".731" = load i32, ptr %"R9"
  %".732" = add i32 %".731", -16
  %".733" = add i32 %".732", 0
  store i32 %".733", ptr %"R9"
  ; FFMA R14, R53, R10, R14
  %".736" = load float, ptr %"R53"
  %".737" = load float, ptr %"R10"
  %".738" = load float, ptr %"R14"
  %"fmul.9" = fmul float %".736", %".737"
  %"fadd.9" = fadd float %"fmul.9", %".738"
  %".739" = bitcast ptr %"R14" to ptr
  store float %"fadd.9", ptr %".739"
  ; FFMA R14, R55, R16, R14
  %".742" = load float, ptr %"R55"
  %".743" = load float, ptr %"R16"
  %".744" = load float, ptr %"R14"
  %"fmul.10" = fmul float %".742", %".743"
  %"fadd.10" = fadd float %"fmul.10", %".744"
  %".745" = bitcast ptr %"R14" to ptr
  store float %"fadd.10", ptr %".745"
  ; FFMA R14, R60, R17, R14
  %".748" = load float, ptr %"R60"
  %".749" = load float, ptr %"R17"
  %".750" = load float, ptr %"R14"
  %"fmul.11" = fmul float %".748", %".749"
  %"fadd.11" = fadd float %"fmul.11", %".750"
  %".751" = bitcast ptr %"R14" to ptr
  store float %"fadd.11", ptr %".751"
  ; ISETP.GT.AND P1, PT, R9, 0xc, PT
  %".754" = load i32, ptr %"R9"
  %".755" = load i1, ptr %"PT"
  %"cmp.8" = icmp sgt i32 %".754", 12
  %".756" = xor i1 %"cmp.8", -1
  %".757" = and i1 %"cmp.8", %".755"
  %".758" = and i1 %".756", %".755"
  store i1 %".757", ptr %"P1"
  ; IADD3 R11, R11, 0x10, RZ
  %".761" = load i32, ptr %"R11"
  %".762" = add i32 %".761", 16
  %".763" = add i32 %".762", 0
  store i32 %".763", ptr %"R11"
  ; FFMA R57, R12, R57, R58
  %".766" = load float, ptr %"R12"
  %".767" = load float, ptr %"R57"
  %".768" = load float, ptr %"R58"
  %"fmul.12" = fmul float %".766", %".767"
  %"fadd.12" = fadd float %"fmul.12", %".768"
  %".769" = bitcast ptr %"R57" to ptr
  store float %"fadd.12", ptr %".769"
  ; FFMA R57, R10, R59, R57
  %".772" = load float, ptr %"R10"
  %".773" = load float, ptr %"R59"
  %".774" = load float, ptr %"R57"
  %"fmul.13" = fmul float %".772", %".773"
  %"fadd.13" = fadd float %"fmul.13", %".774"
  %".775" = bitcast ptr %"R57" to ptr
  store float %"fadd.13", ptr %".775"
  ; FFMA R57, R16, R61, R57
  %".778" = load float, ptr %"R16"
  %".779" = load float, ptr %"R61"
  %".780" = load float, ptr %"R57"
  %"fmul.14" = fmul float %".778", %".779"
  %"fadd.14" = fadd float %"fmul.14", %".780"
  %".781" = bitcast ptr %"R57" to ptr
  store float %"fadd.14", ptr %".781"
  ; FFMA R52, R17, R52, R57
  %".784" = load float, ptr %"R17"
  %".785" = load float, ptr %"R52"
  %".786" = load float, ptr %"R57"
  %"fmul.15" = fmul float %".784", %".785"
  %"fadd.15" = fadd float %"fmul.15", %".786"
  %".787" = bitcast ptr %"R52" to ptr
  store float %"fadd.15", ptr %".787"
  ; FFMA R14, R54, R19, R14
  %".790" = load float, ptr %"R54"
  %".791" = load float, ptr %"R19"
  %".792" = load float, ptr %"R14"
  %"fmul.16" = fmul float %".790", %".791"
  %"fadd.16" = fadd float %"fmul.16", %".792"
  %".793" = bitcast ptr %"R14" to ptr
  store float %"fadd.16", ptr %".793"
  ; FFMA R52, R19, R56, R52
  %".796" = load float, ptr %"R19"
  %".797" = load float, ptr %"R56"
  %".798" = load float, ptr %"R52"
  %"fmul.17" = fmul float %".796", %".797"
  %"fadd.17" = fadd float %"fmul.17", %".798"
  %".799" = bitcast ptr %"R52" to ptr
  store float %"fadd.17", ptr %".799"
  ; FFMA R14, R39, R20, R14
  %".802" = load float, ptr %"R39"
  %".803" = load float, ptr %"R20"
  %".804" = load float, ptr %"R14"
  %"fmul.18" = fmul float %".802", %".803"
  %"fadd.18" = fadd float %"fmul.18", %".804"
  %".805" = bitcast ptr %"R14" to ptr
  store float %"fadd.18", ptr %".805"
  ; FFMA R41, R20, R41, R52
  %".808" = load float, ptr %"R20"
  %".809" = load float, ptr %"R41"
  %".810" = load float, ptr %"R52"
  %"fmul.19" = fmul float %".808", %".809"
  %"fadd.19" = fadd float %"fmul.19", %".810"
  %".811" = bitcast ptr %"R41" to ptr
  store float %"fadd.19", ptr %".811"
  ; FFMA R14, R38, R21, R14
  %".814" = load float, ptr %"R38"
  %".815" = load float, ptr %"R21"
  %".816" = load float, ptr %"R14"
  %"fmul.20" = fmul float %".814", %".815"
  %"fadd.20" = fadd float %"fmul.20", %".816"
  %".817" = bitcast ptr %"R14" to ptr
  store float %"fadd.20", ptr %".817"
  ; FFMA R40, R21, R40, R41
  %".820" = load float, ptr %"R21"
  %".821" = load float, ptr %"R40"
  %".822" = load float, ptr %"R41"
  %"fmul.21" = fmul float %".820", %".821"
  %"fadd.21" = fadd float %"fmul.21", %".822"
  %".823" = bitcast ptr %"R40" to ptr
  store float %"fadd.21", ptr %".823"
  ; FFMA R14, R47, R42, R14
  %".826" = load float, ptr %"R47"
  %".827" = load float, ptr %"R42"
  %".828" = load float, ptr %"R14"
  %"fmul.22" = fmul float %".826", %".827"
  %"fadd.22" = fadd float %"fmul.22", %".828"
  %".829" = bitcast ptr %"R14" to ptr
  store float %"fadd.22", ptr %".829"
  ; FFMA R43, R42, R43, R40
  %".832" = load float, ptr %"R42"
  %".833" = load float, ptr %"R43"
  %".834" = load float, ptr %"R40"
  %"fmul.23" = fmul float %".832", %".833"
  %"fadd.23" = fadd float %"fmul.23", %".834"
  %".835" = bitcast ptr %"R43" to ptr
  store float %"fadd.23", ptr %".835"
  ; FFMA R18, R44, R18, R43
  %".838" = load float, ptr %"R44"
  %".839" = load float, ptr %"R18"
  %".840" = load float, ptr %"R43"
  %"fmul.24" = fmul float %".838", %".839"
  %"fadd.24" = fadd float %"fmul.24", %".840"
  %".841" = bitcast ptr %"R18" to ptr
  store float %"fadd.24", ptr %".841"
  ; FFMA R14, R35, R44, R14
  %".844" = load float, ptr %"R35"
  %".845" = load float, ptr %"R44"
  %".846" = load float, ptr %"R14"
  %"fmul.25" = fmul float %".844", %".845"
  %"fadd.25" = fadd float %"fmul.25", %".846"
  %".847" = bitcast ptr %"R14" to ptr
  store float %"fadd.25", ptr %".847"
  ; FFMA R18, R46, R49, R18
  %".850" = load float, ptr %"R46"
  %".851" = load float, ptr %"R49"
  %".852" = load float, ptr %"R18"
  %"fmul.26" = fmul float %".850", %".851"
  %"fadd.26" = fadd float %"fmul.26", %".852"
  %".853" = bitcast ptr %"R18" to ptr
  store float %"fadd.26", ptr %".853"
  ; FFMA R14, R15, R46, R14
  %".856" = load float, ptr %"R15"
  %".857" = load float, ptr %"R46"
  %".858" = load float, ptr %"R14"
  %"fmul.27" = fmul float %".856", %".857"
  %"fadd.27" = fadd float %"fmul.27", %".858"
  %".859" = bitcast ptr %"R14" to ptr
  store float %"fadd.27", ptr %".859"
  ; FFMA R13, R13, R48, R14
  %".862" = load float, ptr %"R13"
  %".863" = load float, ptr %"R48"
  %".864" = load float, ptr %"R14"
  %"fmul.28" = fmul float %".862", %".863"
  %"fadd.28" = fadd float %"fmul.28", %".864"
  %".865" = bitcast ptr %"R13" to ptr
  store float %"fadd.28", ptr %".865"
  ; FFMA R37, R48, R37, R18
  %".868" = load float, ptr %"R48"
  %".869" = load float, ptr %"R37"
  %".870" = load float, ptr %"R18"
  %"fmul.29" = fmul float %".868", %".869"
  %"fadd.29" = fadd float %"fmul.29", %".870"
  %".871" = bitcast ptr %"R37" to ptr
  store float %"fadd.29", ptr %".871"
  ; FFMA R52, R45, R50, R13
  %".874" = load float, ptr %"R45"
  %".875" = load float, ptr %"R50"
  %".876" = load float, ptr %"R13"
  %"fmul.30" = fmul float %".874", %".875"
  %"fadd.30" = fadd float %"fmul.30", %".876"
  %".877" = bitcast ptr %"R52" to ptr
  store float %"fadd.30", ptr %".877"
  ; FFMA R54, R50, R34, R37
  %".880" = load float, ptr %"R50"
  %".881" = load float, ptr %"R34"
  %".882" = load float, ptr %"R37"
  %"fmul.31" = fmul float %".880", %".881"
  %"fadd.31" = fadd float %"fmul.31", %".882"
  %".883" = bitcast ptr %"R54" to ptr
  store float %"fadd.31", ptr %".883"
  ; @P1 BRA `(.L_x_5)
  %".886" = load i1, ptr %"P1"
  %".887" = icmp eq i1 %".886", 1
  br i1 %".887", label %".L_x_5", label %".L_x_4"
.L_x_4:
  ; ISETP.GT.AND P1, PT, R9, 0x4, PT
  %".890" = load i32, ptr %"R9"
  %".891" = load i1, ptr %"PT"
  %"cmp.9" = icmp sgt i32 %".890", 4
  %".892" = xor i1 %"cmp.9", -1
  %".893" = and i1 %"cmp.9", %".891"
  %".894" = and i1 %".892", %".891"
  store i1 %".893", ptr %"P1"
  ; @!P1 BRA `(.L_x_6)
  %".897" = load i1, ptr %"P1"
  %".898" = icmp ne i1 %".897", 1
  br i1 %".898", label %".L_x_6", label %".L_x_4_split_0x0a00"
.L_x_4_split_0x0a00:
  ; IADD3 R13, R0, R11, RZ
  %".901" = load i32, ptr %"R0"
  %".902" = load i32, ptr %"R11"
  %".903" = add i32 %".901", %".902"
  %".904" = add i32 %".903", 0
  store i32 %".904", ptr %"R13"
  ; MOV R17, 0x4
  store i32 4, ptr %"R17"
  ; LEA R14, R2.reuse, R13, 0x2
  %".909" = load i32, ptr %"R2"
  %".910" = load i32, ptr %"R13"
  %"shl.51" = shl i32 %".909", 2
  %"add.3" = add i32 %"shl.51", %".910"
  store i32 %"add.3", ptr %"R14"
  ; IMAD R10, R2, 0x3, R13
  %".913" = load i32, ptr %"R2"
  %".914" = load i32, ptr %"R13"
  %"imad_mul.21" = mul i32 %".913", 3
  %"imad_add.21" = add i32 %"imad_mul.21", %".914"
  store i32 %"imad_add.21", ptr %"R10"
  ; IADD3 R12, R11.reuse, 0x4, RZ
  %".917" = load i32, ptr %"R11"
  %".918" = add i32 %".917", 4
  %".919" = add i32 %".918", 0
  store i32 %".919", ptr %"R12"
  ; IMAD.WIDE R18, R11, R17.reuse, c[0x0][0x168]
  %".922" = load i32, ptr %"R11"
  %".923" = load i32, ptr %"R17"
  %"imad_ext1.16" = zext i32 %".922" to i64
  %"imad_ext2.16" = zext i32 %".923" to i64
  %"imad_mul.22" = mul i64 %"imad_ext1.16", %"imad_ext2.16"
  %".924" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.22" = add i64 %"imad_mul.22", %".924"
  %".925" = and i64 %"imad_add.22", 18446744069414584320
  %".926" = lshr i64 %".925", 32
  %"trunc32.32" = trunc i64 %".926" to i32
  %"trunc32.33" = trunc i64 %"imad_add.22" to i32
  store i32 %"trunc32.33", ptr %"R18"
  store i32 %"trunc32.32", ptr %"R19"
  ; IADD3 R16, R14, 0x4, RZ
  %".930" = load i32, ptr %"R14"
  %".931" = add i32 %".930", 4
  %".932" = add i32 %".931", 0
  store i32 %".932", ptr %"R16"
  ; IADD3 R15, R10.reuse, 0x4, RZ
  %".935" = load i32, ptr %"R10"
  %".936" = add i32 %".935", 4
  %".937" = add i32 %".936", 0
  store i32 %".937", ptr %"R15"
  ; IMAD.WIDE R22, R10, R17, c[0x0][0x170]
  %".940" = load i32, ptr %"R10"
  %".941" = load i32, ptr %"R17"
  %"imad_ext1.17" = zext i32 %".940" to i64
  %"imad_ext2.17" = zext i32 %".941" to i64
  %"imad_mul.23" = mul i64 %"imad_ext1.17", %"imad_ext2.17"
  %".942" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.23" = add i64 %"imad_mul.23", %".942"
  %".943" = and i64 %"imad_add.23", 18446744069414584320
  %".944" = lshr i64 %".943", 32
  %"trunc32.34" = trunc i64 %".944" to i32
  %"trunc32.35" = trunc i64 %"imad_add.23" to i32
  store i32 %"trunc32.35", ptr %"R22"
  store i32 %"trunc32.34", ptr %"R23"
  ; IMAD.WIDE R20, R14, R17.reuse, c[0x0][0x170]
  %".948" = load i32, ptr %"R14"
  %".949" = load i32, ptr %"R17"
  %"imad_ext1.18" = zext i32 %".948" to i64
  %"imad_ext2.18" = zext i32 %".949" to i64
  %"imad_mul.24" = mul i64 %"imad_ext1.18", %"imad_ext2.18"
  %".950" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.24" = add i64 %"imad_mul.24", %".950"
  %".951" = and i64 %"imad_add.24", 18446744069414584320
  %".952" = lshr i64 %".951", 32
  %"trunc32.36" = trunc i64 %".952" to i32
  %"trunc32.37" = trunc i64 %"imad_add.24" to i32
  store i32 %"trunc32.37", ptr %"R20"
  store i32 %"trunc32.36", ptr %"R21"
  ; LDG.E.SYS R39, [R18]
  %".956" = load i32, ptr %"R18"
  %"zext.96" = zext i32 %".956" to i64
  %".957" = load i32, ptr %"R19"
  %"zext.97" = zext i32 %".957" to i64
  %"shl.52" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.52", %"zext.96"
  %"inttoptr_bytes.48" = inttoptr i64 %"or.48" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".958" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".959" = bitcast ptr %"R39" to ptr
  store float %".958", ptr %".959"
  ; IMAD.WIDE R12, R12, R17.reuse, c[0x0][0x168]
  %".962" = load i32, ptr %"R12"
  %".963" = load i32, ptr %"R17"
  %"imad_ext1.19" = zext i32 %".962" to i64
  %"imad_ext2.19" = zext i32 %".963" to i64
  %"imad_mul.25" = mul i64 %"imad_ext1.19", %"imad_ext2.19"
  %".964" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.25" = add i64 %"imad_mul.25", %".964"
  %".965" = and i64 %"imad_add.25", 18446744069414584320
  %".966" = lshr i64 %".965", 32
  %"trunc32.38" = trunc i64 %".966" to i32
  %"trunc32.39" = trunc i64 %"imad_add.25" to i32
  store i32 %"trunc32.39", ptr %"R12"
  store i32 %"trunc32.38", ptr %"R13"
  ; LDG.E.SYS R37, [R22]
  %".970" = load i32, ptr %"R22"
  %"zext.98" = zext i32 %".970" to i64
  %".971" = load i32, ptr %"R23"
  %"zext.99" = zext i32 %".971" to i64
  %"shl.53" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.53", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".972" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".973" = bitcast ptr %"R37" to ptr
  store float %".972", ptr %".973"
  ; LDG.E.SYS R36, [R20]
  %".976" = load i32, ptr %"R20"
  %"zext.100" = zext i32 %".976" to i64
  %".977" = load i32, ptr %"R21"
  %"zext.101" = zext i32 %".977" to i64
  %"shl.54" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.54", %"zext.100"
  %"inttoptr_bytes.50" = inttoptr i64 %"or.50" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".978" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".979" = bitcast ptr %"R36" to ptr
  store float %".978", ptr %".979"
  ; IMAD.WIDE R14, R15, R17, c[0x0][0x170]
  %".982" = load i32, ptr %"R15"
  %".983" = load i32, ptr %"R17"
  %"imad_ext1.20" = zext i32 %".982" to i64
  %"imad_ext2.20" = zext i32 %".983" to i64
  %"imad_mul.26" = mul i64 %"imad_ext1.20", %"imad_ext2.20"
  %".984" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.26" = add i64 %"imad_mul.26", %".984"
  %".985" = and i64 %"imad_add.26", 18446744069414584320
  %".986" = lshr i64 %".985", 32
  %"trunc32.40" = trunc i64 %".986" to i32
  %"trunc32.41" = trunc i64 %"imad_add.26" to i32
  store i32 %"trunc32.41", ptr %"R14"
  store i32 %"trunc32.40", ptr %"R15"
  ; LDG.E.SYS R34, [R18+0x4]
  %".990" = load i32, ptr %"R18"
  %"zext.102" = zext i32 %".990" to i64
  %".991" = load i32, ptr %"R19"
  %"zext.103" = zext i32 %".991" to i64
  %"shl.55" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.55", %"zext.102"
  %"ptr_plus_imm.36" = add i64 %"or.51", 4
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".992" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".993" = bitcast ptr %"R34" to ptr
  store float %".992", ptr %".993"
  ; LDG.E.SYS R38, [R22+0x4]
  %".996" = load i32, ptr %"R22"
  %"zext.104" = zext i32 %".996" to i64
  %".997" = load i32, ptr %"R23"
  %"zext.105" = zext i32 %".997" to i64
  %"shl.56" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.56", %"zext.104"
  %"ptr_plus_imm.37" = add i64 %"or.52", 4
  %"inttoptr_bytes.52" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".998" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".999" = bitcast ptr %"R38" to ptr
  store float %".998", ptr %".999"
  ; LDG.E.SYS R35, [R20+0x4]
  %".1002" = load i32, ptr %"R20"
  %"zext.106" = zext i32 %".1002" to i64
  %".1003" = load i32, ptr %"R21"
  %"zext.107" = zext i32 %".1003" to i64
  %"shl.57" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.57", %"zext.106"
  %"ptr_plus_imm.38" = add i64 %"or.53", 4
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".1004" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".1005" = bitcast ptr %"R35" to ptr
  store float %".1004", ptr %".1005"
  ; IMAD.WIDE R16, R16, R17, c[0x0][0x170]
  %".1008" = load i32, ptr %"R16"
  %".1009" = load i32, ptr %"R17"
  %"imad_ext1.21" = zext i32 %".1008" to i64
  %"imad_ext2.21" = zext i32 %".1009" to i64
  %"imad_mul.27" = mul i64 %"imad_ext1.21", %"imad_ext2.21"
  %".1010" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.27" = add i64 %"imad_mul.27", %".1010"
  %".1011" = and i64 %"imad_add.27", 18446744069414584320
  %".1012" = lshr i64 %".1011", 32
  %"trunc32.42" = trunc i64 %".1012" to i32
  %"trunc32.43" = trunc i64 %"imad_add.27" to i32
  store i32 %"trunc32.43", ptr %"R16"
  store i32 %"trunc32.42", ptr %"R17"
  ; LDG.E.SYS R24, [R18+0x8]
  %".1016" = load i32, ptr %"R18"
  %"zext.108" = zext i32 %".1016" to i64
  %".1017" = load i32, ptr %"R19"
  %"zext.109" = zext i32 %".1017" to i64
  %"shl.58" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.58", %"zext.108"
  %"ptr_plus_imm.39" = add i64 %"or.54", 8
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".1018" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".1019" = bitcast ptr %"R24" to ptr
  store float %".1018", ptr %".1019"
  ; LDG.E.SYS R40, [R22+0x8]
  %".1022" = load i32, ptr %"R22"
  %"zext.110" = zext i32 %".1022" to i64
  %".1023" = load i32, ptr %"R23"
  %"zext.111" = zext i32 %".1023" to i64
  %"shl.59" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.59", %"zext.110"
  %"ptr_plus_imm.40" = add i64 %"or.55", 8
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".1024" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".1025" = bitcast ptr %"R40" to ptr
  store float %".1024", ptr %".1025"
  ; LDG.E.SYS R41, [R20+0x8]
  %".1028" = load i32, ptr %"R20"
  %"zext.112" = zext i32 %".1028" to i64
  %".1029" = load i32, ptr %"R21"
  %"zext.113" = zext i32 %".1029" to i64
  %"shl.60" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.60", %"zext.112"
  %"ptr_plus_imm.41" = add i64 %"or.56", 8
  %"inttoptr_bytes.56" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".1030" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".1031" = bitcast ptr %"R41" to ptr
  store float %".1030", ptr %".1031"
  ; LDG.E.SYS R44, [R18+0xc]
  %".1034" = load i32, ptr %"R18"
  %"zext.114" = zext i32 %".1034" to i64
  %".1035" = load i32, ptr %"R19"
  %"zext.115" = zext i32 %".1035" to i64
  %"shl.61" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.61", %"zext.114"
  %"ptr_plus_imm.42" = add i64 %"or.57", 12
  %"inttoptr_bytes.57" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".1036" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".1037" = bitcast ptr %"R44" to ptr
  store float %".1036", ptr %".1037"
  ; LDG.E.SYS R42, [R22+0xc]
  %".1040" = load i32, ptr %"R22"
  %"zext.116" = zext i32 %".1040" to i64
  %".1041" = load i32, ptr %"R23"
  %"zext.117" = zext i32 %".1041" to i64
  %"shl.62" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.62", %"zext.116"
  %"ptr_plus_imm.43" = add i64 %"or.58", 12
  %"inttoptr_bytes.58" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".1042" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".1043" = bitcast ptr %"R42" to ptr
  store float %".1042", ptr %".1043"
  ; LDG.E.SYS R43, [R20+0xc]
  %".1046" = load i32, ptr %"R20"
  %"zext.118" = zext i32 %".1046" to i64
  %".1047" = load i32, ptr %"R21"
  %"zext.119" = zext i32 %".1047" to i64
  %"shl.63" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.63", %"zext.118"
  %"ptr_plus_imm.44" = add i64 %"or.59", 12
  %"inttoptr_bytes.59" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  %".1048" = load float, ptr addrspace(1) %"ptr_cast_for_access.59"
  %".1049" = bitcast ptr %"R43" to ptr
  store float %".1048", ptr %".1049"
  ; LDG.E.SYS R48, [R12]
  %".1052" = load i32, ptr %"R12"
  %"zext.120" = zext i32 %".1052" to i64
  %".1053" = load i32, ptr %"R13"
  %"zext.121" = zext i32 %".1053" to i64
  %"shl.64" = shl i64 %"zext.121", 32
  %"or.60" = or i64 %"shl.64", %"zext.120"
  %"inttoptr_bytes.60" = inttoptr i64 %"or.60" to ptr addrspace(1)
  %"ptr_cast_for_access.60" = bitcast ptr addrspace(1) %"inttoptr_bytes.60" to ptr addrspace(1)
  %".1054" = load float, ptr addrspace(1) %"ptr_cast_for_access.60"
  %".1055" = bitcast ptr %"R48" to ptr
  store float %".1054", ptr %".1055"
  ; LDG.E.SYS R46, [R14]
  %".1058" = load i32, ptr %"R14"
  %"zext.122" = zext i32 %".1058" to i64
  %".1059" = load i32, ptr %"R15"
  %"zext.123" = zext i32 %".1059" to i64
  %"shl.65" = shl i64 %"zext.123", 32
  %"or.61" = or i64 %"shl.65", %"zext.122"
  %"inttoptr_bytes.61" = inttoptr i64 %"or.61" to ptr addrspace(1)
  %"ptr_cast_for_access.61" = bitcast ptr addrspace(1) %"inttoptr_bytes.61" to ptr addrspace(1)
  %".1060" = load float, ptr addrspace(1) %"ptr_cast_for_access.61"
  %".1061" = bitcast ptr %"R46" to ptr
  store float %".1060", ptr %".1061"
  ; LDG.E.SYS R45, [R16]
  %".1064" = load i32, ptr %"R16"
  %"zext.124" = zext i32 %".1064" to i64
  %".1065" = load i32, ptr %"R17"
  %"zext.125" = zext i32 %".1065" to i64
  %"shl.66" = shl i64 %"zext.125", 32
  %"or.62" = or i64 %"shl.66", %"zext.124"
  %"inttoptr_bytes.62" = inttoptr i64 %"or.62" to ptr addrspace(1)
  %"ptr_cast_for_access.62" = bitcast ptr addrspace(1) %"inttoptr_bytes.62" to ptr addrspace(1)
  %".1066" = load float, ptr addrspace(1) %"ptr_cast_for_access.62"
  %".1067" = bitcast ptr %"R45" to ptr
  store float %".1066", ptr %".1067"
  ; LDG.E.SYS R56, [R12+0x4]
  %".1070" = load i32, ptr %"R12"
  %"zext.126" = zext i32 %".1070" to i64
  %".1071" = load i32, ptr %"R13"
  %"zext.127" = zext i32 %".1071" to i64
  %"shl.67" = shl i64 %"zext.127", 32
  %"or.63" = or i64 %"shl.67", %"zext.126"
  %"ptr_plus_imm.45" = add i64 %"or.63", 4
  %"inttoptr_bytes.63" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.63" = bitcast ptr addrspace(1) %"inttoptr_bytes.63" to ptr addrspace(1)
  %".1072" = load float, ptr addrspace(1) %"ptr_cast_for_access.63"
  %".1073" = bitcast ptr %"R56" to ptr
  store float %".1072", ptr %".1073"
  ; LDG.E.SYS R50, [R14+0x4]
  %".1076" = load i32, ptr %"R14"
  %"zext.128" = zext i32 %".1076" to i64
  %".1077" = load i32, ptr %"R15"
  %"zext.129" = zext i32 %".1077" to i64
  %"shl.68" = shl i64 %"zext.129", 32
  %"or.64" = or i64 %"shl.68", %"zext.128"
  %"ptr_plus_imm.46" = add i64 %"or.64", 4
  %"inttoptr_bytes.64" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.64" = bitcast ptr addrspace(1) %"inttoptr_bytes.64" to ptr addrspace(1)
  %".1078" = load float, ptr addrspace(1) %"ptr_cast_for_access.64"
  %".1079" = bitcast ptr %"R50" to ptr
  store float %".1078", ptr %".1079"
  ; LDG.E.SYS R47, [R16+0x4]
  %".1082" = load i32, ptr %"R16"
  %"zext.130" = zext i32 %".1082" to i64
  %".1083" = load i32, ptr %"R17"
  %"zext.131" = zext i32 %".1083" to i64
  %"shl.69" = shl i64 %"zext.131", 32
  %"or.65" = or i64 %"shl.69", %"zext.130"
  %"ptr_plus_imm.47" = add i64 %"or.65", 4
  %"inttoptr_bytes.65" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.65" = bitcast ptr addrspace(1) %"inttoptr_bytes.65" to ptr addrspace(1)
  %".1084" = load float, ptr addrspace(1) %"ptr_cast_for_access.65"
  %".1085" = bitcast ptr %"R47" to ptr
  store float %".1084", ptr %".1085"
  ; LDG.E.SYS R10, [R12+0x8]
  %".1088" = load i32, ptr %"R12"
  %"zext.132" = zext i32 %".1088" to i64
  %".1089" = load i32, ptr %"R13"
  %"zext.133" = zext i32 %".1089" to i64
  %"shl.70" = shl i64 %"zext.133", 32
  %"or.66" = or i64 %"shl.70", %"zext.132"
  %"ptr_plus_imm.48" = add i64 %"or.66", 8
  %"inttoptr_bytes.66" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.66" = bitcast ptr addrspace(1) %"inttoptr_bytes.66" to ptr addrspace(1)
  %".1090" = load float, ptr addrspace(1) %"ptr_cast_for_access.66"
  %".1091" = bitcast ptr %"R10" to ptr
  store float %".1090", ptr %".1091"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1094" = load i32, ptr %"R14"
  %"zext.134" = zext i32 %".1094" to i64
  %".1095" = load i32, ptr %"R15"
  %"zext.135" = zext i32 %".1095" to i64
  %"shl.71" = shl i64 %"zext.135", 32
  %"or.67" = or i64 %"shl.71", %"zext.134"
  %"ptr_plus_imm.49" = add i64 %"or.67", 8
  %"inttoptr_bytes.67" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.67" = bitcast ptr addrspace(1) %"inttoptr_bytes.67" to ptr addrspace(1)
  %".1096" = load float, ptr addrspace(1) %"ptr_cast_for_access.67"
  %".1097" = bitcast ptr %"R25" to ptr
  store float %".1096", ptr %".1097"
  ; LDG.E.SYS R19, [R16+0x8]
  %".1100" = load i32, ptr %"R16"
  %"zext.136" = zext i32 %".1100" to i64
  %".1101" = load i32, ptr %"R17"
  %"zext.137" = zext i32 %".1101" to i64
  %"shl.72" = shl i64 %"zext.137", 32
  %"or.68" = or i64 %"shl.72", %"zext.136"
  %"ptr_plus_imm.50" = add i64 %"or.68", 8
  %"inttoptr_bytes.68" = inttoptr i64 %"ptr_plus_imm.50" to ptr addrspace(1)
  %"ptr_cast_for_access.68" = bitcast ptr addrspace(1) %"inttoptr_bytes.68" to ptr addrspace(1)
  %".1102" = load float, ptr addrspace(1) %"ptr_cast_for_access.68"
  %".1103" = bitcast ptr %"R19" to ptr
  store float %".1102", ptr %".1103"
  ; LDG.E.SYS R18, [R12+0xc]
  %".1106" = load i32, ptr %"R12"
  %"zext.138" = zext i32 %".1106" to i64
  %".1107" = load i32, ptr %"R13"
  %"zext.139" = zext i32 %".1107" to i64
  %"shl.73" = shl i64 %"zext.139", 32
  %"or.69" = or i64 %"shl.73", %"zext.138"
  %"ptr_plus_imm.51" = add i64 %"or.69", 12
  %"inttoptr_bytes.69" = inttoptr i64 %"ptr_plus_imm.51" to ptr addrspace(1)
  %"ptr_cast_for_access.69" = bitcast ptr addrspace(1) %"inttoptr_bytes.69" to ptr addrspace(1)
  %".1108" = load float, ptr addrspace(1) %"ptr_cast_for_access.69"
  %".1109" = bitcast ptr %"R18" to ptr
  store float %".1108", ptr %".1109"
  ; LDG.E.SYS R20, [R14+0xc]
  %".1112" = load i32, ptr %"R14"
  %"zext.140" = zext i32 %".1112" to i64
  %".1113" = load i32, ptr %"R15"
  %"zext.141" = zext i32 %".1113" to i64
  %"shl.74" = shl i64 %"zext.141", 32
  %"or.70" = or i64 %"shl.74", %"zext.140"
  %"ptr_plus_imm.52" = add i64 %"or.70", 12
  %"inttoptr_bytes.70" = inttoptr i64 %"ptr_plus_imm.52" to ptr addrspace(1)
  %"ptr_cast_for_access.70" = bitcast ptr addrspace(1) %"inttoptr_bytes.70" to ptr addrspace(1)
  %".1114" = load float, ptr addrspace(1) %"ptr_cast_for_access.70"
  %".1115" = bitcast ptr %"R20" to ptr
  store float %".1114", ptr %".1115"
  ; LDG.E.SYS R21, [R16+0xc]
  %".1118" = load i32, ptr %"R16"
  %"zext.142" = zext i32 %".1118" to i64
  %".1119" = load i32, ptr %"R17"
  %"zext.143" = zext i32 %".1119" to i64
  %"shl.75" = shl i64 %"zext.143", 32
  %"or.71" = or i64 %"shl.75", %"zext.142"
  %"ptr_plus_imm.53" = add i64 %"or.71", 12
  %"inttoptr_bytes.71" = inttoptr i64 %"ptr_plus_imm.53" to ptr addrspace(1)
  %"ptr_cast_for_access.71" = bitcast ptr addrspace(1) %"inttoptr_bytes.71" to ptr addrspace(1)
  %".1120" = load float, ptr addrspace(1) %"ptr_cast_for_access.71"
  %".1121" = bitcast ptr %"R21" to ptr
  store float %".1120", ptr %".1121"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".1124" = xor i1 1, 1
  %".1125" = and i1 %".1124", 1
  %".1126" = and i1 %".1125", 1
  ; IADD3 R9, R9, -0x8, RZ
  %".1128" = load i32, ptr %"R9"
  %".1129" = add i32 %".1128", -8
  %".1130" = add i32 %".1129", 0
  store i32 %".1130", ptr %"R9"
  ; IADD3 R11, R11, 0x8, RZ
  %".1133" = load i32, ptr %"R11"
  %".1134" = add i32 %".1133", 8
  %".1135" = add i32 %".1134", 0
  store i32 %".1135", ptr %"R11"
  ; FFMA R37, R37, R39, R52
  %".1138" = load float, ptr %"R37"
  %".1139" = load float, ptr %"R39"
  %".1140" = load float, ptr %"R52"
  %"fmul.32" = fmul float %".1138", %".1139"
  %"fadd.32" = fadd float %"fmul.32", %".1140"
  %".1141" = bitcast ptr %"R37" to ptr
  store float %"fadd.32", ptr %".1141"
  ; FFMA R36, R39, R36, R54
  %".1144" = load float, ptr %"R39"
  %".1145" = load float, ptr %"R36"
  %".1146" = load float, ptr %"R54"
  %"fmul.33" = fmul float %".1144", %".1145"
  %"fadd.33" = fadd float %"fmul.33", %".1146"
  %".1147" = bitcast ptr %"R36" to ptr
  store float %"fadd.33", ptr %".1147"
  ; FFMA R37, R38, R34, R37
  %".1150" = load float, ptr %"R38"
  %".1151" = load float, ptr %"R34"
  %".1152" = load float, ptr %"R37"
  %"fmul.34" = fmul float %".1150", %".1151"
  %"fadd.34" = fadd float %"fmul.34", %".1152"
  %".1153" = bitcast ptr %"R37" to ptr
  store float %"fadd.34", ptr %".1153"
  ; FFMA R35, R34, R35, R36
  %".1156" = load float, ptr %"R34"
  %".1157" = load float, ptr %"R35"
  %".1158" = load float, ptr %"R36"
  %"fmul.35" = fmul float %".1156", %".1157"
  %"fadd.35" = fadd float %"fmul.35", %".1158"
  %".1159" = bitcast ptr %"R35" to ptr
  store float %"fadd.35", ptr %".1159"
  ; FFMA R37, R40, R24, R37
  %".1162" = load float, ptr %"R40"
  %".1163" = load float, ptr %"R24"
  %".1164" = load float, ptr %"R37"
  %"fmul.36" = fmul float %".1162", %".1163"
  %"fadd.36" = fadd float %"fmul.36", %".1164"
  %".1165" = bitcast ptr %"R37" to ptr
  store float %"fadd.36", ptr %".1165"
  ; FFMA R35, R24, R41, R35
  %".1168" = load float, ptr %"R24"
  %".1169" = load float, ptr %"R41"
  %".1170" = load float, ptr %"R35"
  %"fmul.37" = fmul float %".1168", %".1169"
  %"fadd.37" = fadd float %"fmul.37", %".1170"
  %".1171" = bitcast ptr %"R35" to ptr
  store float %"fadd.37", ptr %".1171"
  ; FFMA R37, R42, R44, R37
  %".1174" = load float, ptr %"R42"
  %".1175" = load float, ptr %"R44"
  %".1176" = load float, ptr %"R37"
  %"fmul.38" = fmul float %".1174", %".1175"
  %"fadd.38" = fadd float %"fmul.38", %".1176"
  %".1177" = bitcast ptr %"R37" to ptr
  store float %"fadd.38", ptr %".1177"
  ; FFMA R35, R44, R43, R35
  %".1180" = load float, ptr %"R44"
  %".1181" = load float, ptr %"R43"
  %".1182" = load float, ptr %"R35"
  %"fmul.39" = fmul float %".1180", %".1181"
  %"fadd.39" = fadd float %"fmul.39", %".1182"
  %".1183" = bitcast ptr %"R35" to ptr
  store float %"fadd.39", ptr %".1183"
  ; FFMA R37, R46, R48, R37
  %".1186" = load float, ptr %"R46"
  %".1187" = load float, ptr %"R48"
  %".1188" = load float, ptr %"R37"
  %"fmul.40" = fmul float %".1186", %".1187"
  %"fadd.40" = fadd float %"fmul.40", %".1188"
  %".1189" = bitcast ptr %"R37" to ptr
  store float %"fadd.40", ptr %".1189"
  ; FFMA R35, R48, R45, R35
  %".1192" = load float, ptr %"R48"
  %".1193" = load float, ptr %"R45"
  %".1194" = load float, ptr %"R35"
  %"fmul.41" = fmul float %".1192", %".1193"
  %"fadd.41" = fadd float %"fmul.41", %".1194"
  %".1195" = bitcast ptr %"R35" to ptr
  store float %"fadd.41", ptr %".1195"
  ; FFMA R37, R50, R56, R37
  %".1198" = load float, ptr %"R50"
  %".1199" = load float, ptr %"R56"
  %".1200" = load float, ptr %"R37"
  %"fmul.42" = fmul float %".1198", %".1199"
  %"fadd.42" = fadd float %"fmul.42", %".1200"
  %".1201" = bitcast ptr %"R37" to ptr
  store float %"fadd.42", ptr %".1201"
  ; FFMA R35, R56, R47, R35
  %".1204" = load float, ptr %"R56"
  %".1205" = load float, ptr %"R47"
  %".1206" = load float, ptr %"R35"
  %"fmul.43" = fmul float %".1204", %".1205"
  %"fadd.43" = fadd float %"fmul.43", %".1206"
  %".1207" = bitcast ptr %"R35" to ptr
  store float %"fadd.43", ptr %".1207"
  ; FFMA R25, R25, R10, R37
  %".1210" = load float, ptr %"R25"
  %".1211" = load float, ptr %"R10"
  %".1212" = load float, ptr %"R37"
  %"fmul.44" = fmul float %".1210", %".1211"
  %"fadd.44" = fadd float %"fmul.44", %".1212"
  %".1213" = bitcast ptr %"R25" to ptr
  store float %"fadd.44", ptr %".1213"
  ; FFMA R19, R10, R19, R35
  %".1216" = load float, ptr %"R10"
  %".1217" = load float, ptr %"R19"
  %".1218" = load float, ptr %"R35"
  %"fmul.45" = fmul float %".1216", %".1217"
  %"fadd.45" = fadd float %"fmul.45", %".1218"
  %".1219" = bitcast ptr %"R19" to ptr
  store float %"fadd.45", ptr %".1219"
  ; FFMA R52, R20, R18, R25
  %".1222" = load float, ptr %"R20"
  %".1223" = load float, ptr %"R18"
  %".1224" = load float, ptr %"R25"
  %"fmul.46" = fmul float %".1222", %".1223"
  %"fadd.46" = fadd float %"fmul.46", %".1224"
  %".1225" = bitcast ptr %"R52" to ptr
  store float %"fadd.46", ptr %".1225"
  ; FFMA R54, R18, R21, R19
  %".1228" = load float, ptr %"R18"
  %".1229" = load float, ptr %"R21"
  %".1230" = load float, ptr %"R19"
  %"fmul.47" = fmul float %".1228", %".1229"
  %"fadd.47" = fadd float %"fmul.47", %".1230"
  %".1231" = bitcast ptr %"R54" to ptr
  store float %"fadd.47", ptr %".1231"
  br label %".L_x_6"
.L_x_6:
  ; ISETP.NE.OR P0, PT, R9, RZ, P0
  %".1235" = load i32, ptr %"R9"
  %".1236" = load i1, ptr %"P0"
  %"cmp.10" = icmp ne i32 %".1235", 0
  %".1237" = xor i1 %"cmp.10", -1
  %".1238" = or i1 %"cmp.10", %".1236"
  %".1239" = or i1 %".1237", %".1236"
  store i1 %".1238", ptr %"P0"
  ; @!P0 BRA `(.L_x_2)
  %".1242" = load i1, ptr %"P0"
  %".1243" = icmp ne i1 %".1242", 1
  br i1 %".1243", label %".L_x_2", label %".L_x_3"
.L_x_3:
  ; IADD3 R13, R0, R11, RZ
  %".1246" = load i32, ptr %"R0"
  %".1247" = load i32, ptr %"R11"
  %".1248" = add i32 %".1246", %".1247"
  %".1249" = add i32 %".1248", 0
  store i32 %".1249", ptr %"R13"
  ; MOV R16, 0x4
  store i32 4, ptr %"R16"
  ; LEA R17, R2.reuse, R13, 0x2
  %".1254" = load i32, ptr %"R2"
  %".1255" = load i32, ptr %"R13"
  %"shl.76" = shl i32 %".1254", 2
  %"add.4" = add i32 %"shl.76", %".1255"
  store i32 %"add.4", ptr %"R17"
  ; IMAD R15, R2, 0x3, R13
  %".1258" = load i32, ptr %"R2"
  %".1259" = load i32, ptr %"R13"
  %"imad_mul.28" = mul i32 %".1258", 3
  %"imad_add.28" = add i32 %"imad_mul.28", %".1259"
  store i32 %"imad_add.28", ptr %"R15"
  ; IMAD.WIDE R12, R11, R16, c[0x0][0x168]
  %".1262" = load i32, ptr %"R11"
  %".1263" = load i32, ptr %"R16"
  %"imad_ext1.22" = zext i32 %".1262" to i64
  %"imad_ext2.22" = zext i32 %".1263" to i64
  %"imad_mul.29" = mul i64 %"imad_ext1.22", %"imad_ext2.22"
  %".1264" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.29" = add i64 %"imad_mul.29", %".1264"
  %".1265" = and i64 %"imad_add.29", 18446744069414584320
  %".1266" = lshr i64 %".1265", 32
  %"trunc32.44" = trunc i64 %".1266" to i32
  %"trunc32.45" = trunc i64 %"imad_add.29" to i32
  store i32 %"trunc32.45", ptr %"R12"
  store i32 %"trunc32.44", ptr %"R13"
  ; IMAD.WIDE R14, R15, R16, c[0x0][0x170]
  %".1270" = load i32, ptr %"R15"
  %".1271" = load i32, ptr %"R16"
  %"imad_ext1.23" = zext i32 %".1270" to i64
  %"imad_ext2.23" = zext i32 %".1271" to i64
  %"imad_mul.30" = mul i64 %"imad_ext1.23", %"imad_ext2.23"
  %".1272" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.30" = add i64 %"imad_mul.30", %".1272"
  %".1273" = and i64 %"imad_add.30", 18446744069414584320
  %".1274" = lshr i64 %".1273", 32
  %"trunc32.46" = trunc i64 %".1274" to i32
  %"trunc32.47" = trunc i64 %"imad_add.30" to i32
  store i32 %"trunc32.47", ptr %"R14"
  store i32 %"trunc32.46", ptr %"R15"
  ; IMAD.WIDE R16, R17, R16, c[0x0][0x170]
  %".1278" = load i32, ptr %"R17"
  %".1279" = load i32, ptr %"R16"
  %"imad_ext1.24" = zext i32 %".1278" to i64
  %"imad_ext2.24" = zext i32 %".1279" to i64
  %"imad_mul.31" = mul i64 %"imad_ext1.24", %"imad_ext2.24"
  %".1280" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.31" = add i64 %"imad_mul.31", %".1280"
  %".1281" = and i64 %"imad_add.31", 18446744069414584320
  %".1282" = lshr i64 %".1281", 32
  %"trunc32.48" = trunc i64 %".1282" to i32
  %"trunc32.49" = trunc i64 %"imad_add.31" to i32
  store i32 %"trunc32.49", ptr %"R16"
  store i32 %"trunc32.48", ptr %"R17"
  ; LDG.E.SYS R21, [R12]
  %".1286" = load i32, ptr %"R12"
  %"zext.144" = zext i32 %".1286" to i64
  %".1287" = load i32, ptr %"R13"
  %"zext.145" = zext i32 %".1287" to i64
  %"shl.77" = shl i64 %"zext.145", 32
  %"or.72" = or i64 %"shl.77", %"zext.144"
  %"inttoptr_bytes.72" = inttoptr i64 %"or.72" to ptr addrspace(1)
  %"ptr_cast_for_access.72" = bitcast ptr addrspace(1) %"inttoptr_bytes.72" to ptr addrspace(1)
  %".1288" = load float, ptr addrspace(1) %"ptr_cast_for_access.72"
  %".1289" = bitcast ptr %"R21" to ptr
  store float %".1288", ptr %".1289"
  ; LDG.E.SYS R19, [R14]
  %".1292" = load i32, ptr %"R14"
  %"zext.146" = zext i32 %".1292" to i64
  %".1293" = load i32, ptr %"R15"
  %"zext.147" = zext i32 %".1293" to i64
  %"shl.78" = shl i64 %"zext.147", 32
  %"or.73" = or i64 %"shl.78", %"zext.146"
  %"inttoptr_bytes.73" = inttoptr i64 %"or.73" to ptr addrspace(1)
  %"ptr_cast_for_access.73" = bitcast ptr addrspace(1) %"inttoptr_bytes.73" to ptr addrspace(1)
  %".1294" = load float, ptr addrspace(1) %"ptr_cast_for_access.73"
  %".1295" = bitcast ptr %"R19" to ptr
  store float %".1294", ptr %".1295"
  ; LDG.E.SYS R10, [R16]
  %".1298" = load i32, ptr %"R16"
  %"zext.148" = zext i32 %".1298" to i64
  %".1299" = load i32, ptr %"R17"
  %"zext.149" = zext i32 %".1299" to i64
  %"shl.79" = shl i64 %"zext.149", 32
  %"or.74" = or i64 %"shl.79", %"zext.148"
  %"inttoptr_bytes.74" = inttoptr i64 %"or.74" to ptr addrspace(1)
  %"ptr_cast_for_access.74" = bitcast ptr addrspace(1) %"inttoptr_bytes.74" to ptr addrspace(1)
  %".1300" = load float, ptr addrspace(1) %"ptr_cast_for_access.74"
  %".1301" = bitcast ptr %"R10" to ptr
  store float %".1300", ptr %".1301"
  ; LDG.E.SYS R23, [R12+0x4]
  %".1304" = load i32, ptr %"R12"
  %"zext.150" = zext i32 %".1304" to i64
  %".1305" = load i32, ptr %"R13"
  %"zext.151" = zext i32 %".1305" to i64
  %"shl.80" = shl i64 %"zext.151", 32
  %"or.75" = or i64 %"shl.80", %"zext.150"
  %"ptr_plus_imm.54" = add i64 %"or.75", 4
  %"inttoptr_bytes.75" = inttoptr i64 %"ptr_plus_imm.54" to ptr addrspace(1)
  %"ptr_cast_for_access.75" = bitcast ptr addrspace(1) %"inttoptr_bytes.75" to ptr addrspace(1)
  %".1306" = load float, ptr addrspace(1) %"ptr_cast_for_access.75"
  %".1307" = bitcast ptr %"R23" to ptr
  store float %".1306", ptr %".1307"
  ; LDG.E.SYS R18, [R14+0x4]
  %".1310" = load i32, ptr %"R14"
  %"zext.152" = zext i32 %".1310" to i64
  %".1311" = load i32, ptr %"R15"
  %"zext.153" = zext i32 %".1311" to i64
  %"shl.81" = shl i64 %"zext.153", 32
  %"or.76" = or i64 %"shl.81", %"zext.152"
  %"ptr_plus_imm.55" = add i64 %"or.76", 4
  %"inttoptr_bytes.76" = inttoptr i64 %"ptr_plus_imm.55" to ptr addrspace(1)
  %"ptr_cast_for_access.76" = bitcast ptr addrspace(1) %"inttoptr_bytes.76" to ptr addrspace(1)
  %".1312" = load float, ptr addrspace(1) %"ptr_cast_for_access.76"
  %".1313" = bitcast ptr %"R18" to ptr
  store float %".1312", ptr %".1313"
  ; LDG.E.SYS R20, [R16+0x4]
  %".1316" = load i32, ptr %"R16"
  %"zext.154" = zext i32 %".1316" to i64
  %".1317" = load i32, ptr %"R17"
  %"zext.155" = zext i32 %".1317" to i64
  %"shl.82" = shl i64 %"zext.155", 32
  %"or.77" = or i64 %"shl.82", %"zext.154"
  %"ptr_plus_imm.56" = add i64 %"or.77", 4
  %"inttoptr_bytes.77" = inttoptr i64 %"ptr_plus_imm.56" to ptr addrspace(1)
  %"ptr_cast_for_access.77" = bitcast ptr addrspace(1) %"inttoptr_bytes.77" to ptr addrspace(1)
  %".1318" = load float, ptr addrspace(1) %"ptr_cast_for_access.77"
  %".1319" = bitcast ptr %"R20" to ptr
  store float %".1318", ptr %".1319"
  ; LDG.E.SYS R35, [R12+0x8]
  %".1322" = load i32, ptr %"R12"
  %"zext.156" = zext i32 %".1322" to i64
  %".1323" = load i32, ptr %"R13"
  %"zext.157" = zext i32 %".1323" to i64
  %"shl.83" = shl i64 %"zext.157", 32
  %"or.78" = or i64 %"shl.83", %"zext.156"
  %"ptr_plus_imm.57" = add i64 %"or.78", 8
  %"inttoptr_bytes.78" = inttoptr i64 %"ptr_plus_imm.57" to ptr addrspace(1)
  %"ptr_cast_for_access.78" = bitcast ptr addrspace(1) %"inttoptr_bytes.78" to ptr addrspace(1)
  %".1324" = load float, ptr addrspace(1) %"ptr_cast_for_access.78"
  %".1325" = bitcast ptr %"R35" to ptr
  store float %".1324", ptr %".1325"
  ; LDG.E.SYS R25, [R14+0x8]
  %".1328" = load i32, ptr %"R14"
  %"zext.158" = zext i32 %".1328" to i64
  %".1329" = load i32, ptr %"R15"
  %"zext.159" = zext i32 %".1329" to i64
  %"shl.84" = shl i64 %"zext.159", 32
  %"or.79" = or i64 %"shl.84", %"zext.158"
  %"ptr_plus_imm.58" = add i64 %"or.79", 8
  %"inttoptr_bytes.79" = inttoptr i64 %"ptr_plus_imm.58" to ptr addrspace(1)
  %"ptr_cast_for_access.79" = bitcast ptr addrspace(1) %"inttoptr_bytes.79" to ptr addrspace(1)
  %".1330" = load float, ptr addrspace(1) %"ptr_cast_for_access.79"
  %".1331" = bitcast ptr %"R25" to ptr
  store float %".1330", ptr %".1331"
  ; LDG.E.SYS R22, [R16+0x8]
  %".1334" = load i32, ptr %"R16"
  %"zext.160" = zext i32 %".1334" to i64
  %".1335" = load i32, ptr %"R17"
  %"zext.161" = zext i32 %".1335" to i64
  %"shl.85" = shl i64 %"zext.161", 32
  %"or.80" = or i64 %"shl.85", %"zext.160"
  %"ptr_plus_imm.59" = add i64 %"or.80", 8
  %"inttoptr_bytes.80" = inttoptr i64 %"ptr_plus_imm.59" to ptr addrspace(1)
  %"ptr_cast_for_access.80" = bitcast ptr addrspace(1) %"inttoptr_bytes.80" to ptr addrspace(1)
  %".1336" = load float, ptr addrspace(1) %"ptr_cast_for_access.80"
  %".1337" = bitcast ptr %"R22" to ptr
  store float %".1336", ptr %".1337"
  ; LDG.E.SYS R39, [R12+0xc]
  %".1340" = load i32, ptr %"R12"
  %"zext.162" = zext i32 %".1340" to i64
  %".1341" = load i32, ptr %"R13"
  %"zext.163" = zext i32 %".1341" to i64
  %"shl.86" = shl i64 %"zext.163", 32
  %"or.81" = or i64 %"shl.86", %"zext.162"
  %"ptr_plus_imm.60" = add i64 %"or.81", 12
  %"inttoptr_bytes.81" = inttoptr i64 %"ptr_plus_imm.60" to ptr addrspace(1)
  %"ptr_cast_for_access.81" = bitcast ptr addrspace(1) %"inttoptr_bytes.81" to ptr addrspace(1)
  %".1342" = load float, ptr addrspace(1) %"ptr_cast_for_access.81"
  %".1343" = bitcast ptr %"R39" to ptr
  store float %".1342", ptr %".1343"
  ; LDG.E.SYS R37, [R14+0xc]
  %".1346" = load i32, ptr %"R14"
  %"zext.164" = zext i32 %".1346" to i64
  %".1347" = load i32, ptr %"R15"
  %"zext.165" = zext i32 %".1347" to i64
  %"shl.87" = shl i64 %"zext.165", 32
  %"or.82" = or i64 %"shl.87", %"zext.164"
  %"ptr_plus_imm.61" = add i64 %"or.82", 12
  %"inttoptr_bytes.82" = inttoptr i64 %"ptr_plus_imm.61" to ptr addrspace(1)
  %"ptr_cast_for_access.82" = bitcast ptr addrspace(1) %"inttoptr_bytes.82" to ptr addrspace(1)
  %".1348" = load float, ptr addrspace(1) %"ptr_cast_for_access.82"
  %".1349" = bitcast ptr %"R37" to ptr
  store float %".1348", ptr %".1349"
  ; LDG.E.SYS R24, [R16+0xc]
  %".1352" = load i32, ptr %"R16"
  %"zext.166" = zext i32 %".1352" to i64
  %".1353" = load i32, ptr %"R17"
  %"zext.167" = zext i32 %".1353" to i64
  %"shl.88" = shl i64 %"zext.167", 32
  %"or.83" = or i64 %"shl.88", %"zext.166"
  %"ptr_plus_imm.62" = add i64 %"or.83", 12
  %"inttoptr_bytes.83" = inttoptr i64 %"ptr_plus_imm.62" to ptr addrspace(1)
  %"ptr_cast_for_access.83" = bitcast ptr addrspace(1) %"inttoptr_bytes.83" to ptr addrspace(1)
  %".1354" = load float, ptr addrspace(1) %"ptr_cast_for_access.83"
  %".1355" = bitcast ptr %"R24" to ptr
  store float %".1354", ptr %".1355"
  ; IADD3 R9, R9, -0x4, RZ
  %".1358" = load i32, ptr %"R9"
  %".1359" = add i32 %".1358", -4
  %".1360" = add i32 %".1359", 0
  store i32 %".1360", ptr %"R9"
  ; IADD3 R11, R11, 0x4, RZ
  %".1363" = load i32, ptr %"R11"
  %".1364" = add i32 %".1363", 4
  %".1365" = add i32 %".1364", 0
  store i32 %".1365", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R9, RZ, PT
  %".1368" = load i32, ptr %"R9"
  %".1369" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".1368", 0
  %".1370" = xor i1 %"cmp.11", -1
  %".1371" = and i1 %"cmp.11", %".1369"
  %".1372" = and i1 %".1370", %".1369"
  store i1 %".1371", ptr %"P0"
  ; FFMA R19, R19, R21, R52
  %".1375" = load float, ptr %"R19"
  %".1376" = load float, ptr %"R21"
  %".1377" = load float, ptr %"R52"
  %"fmul.48" = fmul float %".1375", %".1376"
  %"fadd.48" = fadd float %"fmul.48", %".1377"
  %".1378" = bitcast ptr %"R19" to ptr
  store float %"fadd.48", ptr %".1378"
  ; FFMA R10, R21, R10, R54
  %".1381" = load float, ptr %"R21"
  %".1382" = load float, ptr %"R10"
  %".1383" = load float, ptr %"R54"
  %"fmul.49" = fmul float %".1381", %".1382"
  %"fadd.49" = fadd float %"fmul.49", %".1383"
  %".1384" = bitcast ptr %"R10" to ptr
  store float %"fadd.49", ptr %".1384"
  ; FFMA R18, R18, R23, R19
  %".1387" = load float, ptr %"R18"
  %".1388" = load float, ptr %"R23"
  %".1389" = load float, ptr %"R19"
  %"fmul.50" = fmul float %".1387", %".1388"
  %"fadd.50" = fadd float %"fmul.50", %".1389"
  %".1390" = bitcast ptr %"R18" to ptr
  store float %"fadd.50", ptr %".1390"
  ; FFMA R10, R23, R20, R10
  %".1393" = load float, ptr %"R23"
  %".1394" = load float, ptr %"R20"
  %".1395" = load float, ptr %"R10"
  %"fmul.51" = fmul float %".1393", %".1394"
  %"fadd.51" = fadd float %"fmul.51", %".1395"
  %".1396" = bitcast ptr %"R10" to ptr
  store float %"fadd.51", ptr %".1396"
  ; FFMA R18, R25, R35, R18
  %".1399" = load float, ptr %"R25"
  %".1400" = load float, ptr %"R35"
  %".1401" = load float, ptr %"R18"
  %"fmul.52" = fmul float %".1399", %".1400"
  %"fadd.52" = fadd float %"fmul.52", %".1401"
  %".1402" = bitcast ptr %"R18" to ptr
  store float %"fadd.52", ptr %".1402"
  ; FFMA R10, R35, R22, R10
  %".1405" = load float, ptr %"R35"
  %".1406" = load float, ptr %"R22"
  %".1407" = load float, ptr %"R10"
  %"fmul.53" = fmul float %".1405", %".1406"
  %"fadd.53" = fadd float %"fmul.53", %".1407"
  %".1408" = bitcast ptr %"R10" to ptr
  store float %"fadd.53", ptr %".1408"
  ; FFMA R52, R37, R39, R18
  %".1411" = load float, ptr %"R37"
  %".1412" = load float, ptr %"R39"
  %".1413" = load float, ptr %"R18"
  %"fmul.54" = fmul float %".1411", %".1412"
  %"fadd.54" = fadd float %"fmul.54", %".1413"
  %".1414" = bitcast ptr %"R52" to ptr
  store float %"fadd.54", ptr %".1414"
  ; FFMA R54, R39, R24, R10
  %".1417" = load float, ptr %"R39"
  %".1418" = load float, ptr %"R24"
  %".1419" = load float, ptr %"R10"
  %"fmul.55" = fmul float %".1417", %".1418"
  %"fadd.55" = fadd float %"fmul.55", %".1419"
  %".1420" = bitcast ptr %"R54" to ptr
  store float %"fadd.55", ptr %".1420"
  ; @P0 BRA `(.L_x_3)
  %".1423" = load i1, ptr %"P0"
  %".1424" = icmp eq i1 %".1423", 1
  br i1 %".1424", label %".L_x_3", label %".L_x_2"
.L_x_2:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".1427" = load i32, ptr %"R4"
  %".1428" = load i1, ptr %"PT"
  %"cmp.12" = icmp ne i32 %".1427", 0
  %".1429" = xor i1 %"cmp.12", -1
  %".1430" = and i1 %"cmp.12", %".1428"
  %".1431" = and i1 %".1429", %".1428"
  store i1 %".1430", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".1434" = load i1, ptr %"P0"
  %".1435" = icmp ne i1 %".1434", 1
  br i1 %".1435", label %".L_x_1", label %".L_x_2_split_0x0fb0"
.L_x_2_split_0x0fb0:
  ; IADD3 R9, R0, R11, RZ
  %".1438" = load i32, ptr %"R0"
  %".1439" = load i32, ptr %"R11"
  %".1440" = add i32 %".1438", %".1439"
  %".1441" = add i32 %".1440", 0
  store i32 %".1441", ptr %"R9"
  ; MOV R15, 0x4
  store i32 4, ptr %"R15"
  ; LEA R14, R2.reuse, R9, 0x2
  %".1446" = load i32, ptr %"R2"
  %".1447" = load i32, ptr %"R9"
  %"shl.89" = shl i32 %".1446", 2
  %"add.5" = add i32 %"shl.89", %".1447"
  store i32 %"add.5", ptr %"R14"
  ; IMAD R12, R2, 0x3, R9
  %".1450" = load i32, ptr %"R2"
  %".1451" = load i32, ptr %"R9"
  %"imad_mul.32" = mul i32 %".1450", 3
  %"imad_add.32" = add i32 %"imad_mul.32", %".1451"
  store i32 %"imad_add.32", ptr %"R12"
  ; IMAD.WIDE R10, R11, R15, c[0x0][0x168]
  %".1454" = load i32, ptr %"R11"
  %".1455" = load i32, ptr %"R15"
  %"imad_ext1.25" = zext i32 %".1454" to i64
  %"imad_ext2.25" = zext i32 %".1455" to i64
  %"imad_mul.33" = mul i64 %"imad_ext1.25", %"imad_ext2.25"
  %".1456" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.33" = add i64 %"imad_mul.33", %".1456"
  %".1457" = and i64 %"imad_add.33", 18446744069414584320
  %".1458" = lshr i64 %".1457", 32
  %"trunc32.50" = trunc i64 %".1458" to i32
  %"trunc32.51" = trunc i64 %"imad_add.33" to i32
  store i32 %"trunc32.51", ptr %"R10"
  store i32 %"trunc32.50", ptr %"R11"
  ; IMAD.WIDE R12, R12, R15, c[0x0][0x170]
  %".1462" = load i32, ptr %"R12"
  %".1463" = load i32, ptr %"R15"
  %"imad_ext1.26" = zext i32 %".1462" to i64
  %"imad_ext2.26" = zext i32 %".1463" to i64
  %"imad_mul.34" = mul i64 %"imad_ext1.26", %"imad_ext2.26"
  %".1464" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.34" = add i64 %"imad_mul.34", %".1464"
  %".1465" = and i64 %"imad_add.34", 18446744069414584320
  %".1466" = lshr i64 %".1465", 32
  %"trunc32.52" = trunc i64 %".1466" to i32
  %"trunc32.53" = trunc i64 %"imad_add.34" to i32
  store i32 %"trunc32.53", ptr %"R12"
  store i32 %"trunc32.52", ptr %"R13"
  ; IMAD.WIDE R14, R14, R15, c[0x0][0x170]
  %".1470" = load i32, ptr %"R14"
  %".1471" = load i32, ptr %"R15"
  %"imad_ext1.27" = zext i32 %".1470" to i64
  %"imad_ext2.27" = zext i32 %".1471" to i64
  %"imad_mul.35" = mul i64 %"imad_ext1.27", %"imad_ext2.27"
  %".1472" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.35" = add i64 %"imad_mul.35", %".1472"
  %".1473" = and i64 %"imad_add.35", 18446744069414584320
  %".1474" = lshr i64 %".1473", 32
  %"trunc32.54" = trunc i64 %".1474" to i32
  %"trunc32.55" = trunc i64 %"imad_add.35" to i32
  store i32 %"trunc32.55", ptr %"R14"
  store i32 %"trunc32.54", ptr %"R15"
  ; LDG.E.SYS R17, [R10]
  %".1478" = load i32, ptr %"R10"
  %"zext.168" = zext i32 %".1478" to i64
  %".1479" = load i32, ptr %"R11"
  %"zext.169" = zext i32 %".1479" to i64
  %"shl.90" = shl i64 %"zext.169", 32
  %"or.84" = or i64 %"shl.90", %"zext.168"
  %"inttoptr_bytes.84" = inttoptr i64 %"or.84" to ptr addrspace(1)
  %"ptr_cast_for_access.84" = bitcast ptr addrspace(1) %"inttoptr_bytes.84" to ptr addrspace(1)
  %".1480" = load float, ptr addrspace(1) %"ptr_cast_for_access.84"
  %".1481" = bitcast ptr %"R17" to ptr
  store float %".1480", ptr %".1481"
  ; LDG.E.SYS R9, [R12]
  %".1484" = load i32, ptr %"R12"
  %"zext.170" = zext i32 %".1484" to i64
  %".1485" = load i32, ptr %"R13"
  %"zext.171" = zext i32 %".1485" to i64
  %"shl.91" = shl i64 %"zext.171", 32
  %"or.85" = or i64 %"shl.91", %"zext.170"
  %"inttoptr_bytes.85" = inttoptr i64 %"or.85" to ptr addrspace(1)
  %"ptr_cast_for_access.85" = bitcast ptr addrspace(1) %"inttoptr_bytes.85" to ptr addrspace(1)
  %".1486" = load float, ptr addrspace(1) %"ptr_cast_for_access.85"
  %".1487" = bitcast ptr %"R9" to ptr
  store float %".1486", ptr %".1487"
  ; LDG.E.SYS R16, [R14]
  %".1490" = load i32, ptr %"R14"
  %"zext.172" = zext i32 %".1490" to i64
  %".1491" = load i32, ptr %"R15"
  %"zext.173" = zext i32 %".1491" to i64
  %"shl.92" = shl i64 %"zext.173", 32
  %"or.86" = or i64 %"shl.92", %"zext.172"
  %"inttoptr_bytes.86" = inttoptr i64 %"or.86" to ptr addrspace(1)
  %"ptr_cast_for_access.86" = bitcast ptr addrspace(1) %"inttoptr_bytes.86" to ptr addrspace(1)
  %".1492" = load float, ptr addrspace(1) %"ptr_cast_for_access.86"
  %".1493" = bitcast ptr %"R16" to ptr
  store float %".1492", ptr %".1493"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".1496" = load i32, ptr %"R4"
  %".1497" = load i1, ptr %"PT"
  %"cmp.13" = icmp ne i32 %".1496", 1
  %".1498" = xor i1 %"cmp.13", -1
  %".1499" = and i1 %"cmp.13", %".1497"
  %".1500" = and i1 %".1498", %".1497"
  store i1 %".1499", ptr %"P0"
  ; FFMA R52, R9, R17, R52
  %".1503" = load float, ptr %"R9"
  %".1504" = load float, ptr %"R17"
  %".1505" = load float, ptr %"R52"
  %"fmul.56" = fmul float %".1503", %".1504"
  %"fadd.56" = fadd float %"fmul.56", %".1505"
  %".1506" = bitcast ptr %"R52" to ptr
  store float %"fadd.56", ptr %".1506"
  ; FFMA R54, R17, R16, R54
  %".1509" = load float, ptr %"R17"
  %".1510" = load float, ptr %"R16"
  %".1511" = load float, ptr %"R54"
  %"fmul.57" = fmul float %".1509", %".1510"
  %"fadd.57" = fadd float %"fmul.57", %".1511"
  %".1512" = bitcast ptr %"R54" to ptr
  store float %"fadd.57", ptr %".1512"
  ; @!P0 BRA `(.L_x_1)
  %".1515" = load i1, ptr %"P0"
  %".1516" = icmp ne i1 %".1515", 1
  br i1 %".1516", label %".L_x_1", label %".L_x_2_split_0x1090"
.L_x_2_split_0x1090:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".1519" = load i32, ptr %"R4"
  %".1520" = load i1, ptr %"PT"
  %"cmp.14" = icmp ne i32 %".1519", 2
  %".1521" = xor i1 %"cmp.14", -1
  %".1522" = and i1 %"cmp.14", %".1520"
  %".1523" = and i1 %".1521", %".1520"
  store i1 %".1522", ptr %"P0"
  ; LDG.E.SYS R9, [R12+0x4]
  %".1526" = load i32, ptr %"R12"
  %"zext.174" = zext i32 %".1526" to i64
  %".1527" = load i32, ptr %"R13"
  %"zext.175" = zext i32 %".1527" to i64
  %"shl.93" = shl i64 %"zext.175", 32
  %"or.87" = or i64 %"shl.93", %"zext.174"
  %"ptr_plus_imm.63" = add i64 %"or.87", 4
  %"inttoptr_bytes.87" = inttoptr i64 %"ptr_plus_imm.63" to ptr addrspace(1)
  %"ptr_cast_for_access.87" = bitcast ptr addrspace(1) %"inttoptr_bytes.87" to ptr addrspace(1)
  %".1528" = load float, ptr addrspace(1) %"ptr_cast_for_access.87"
  %".1529" = bitcast ptr %"R9" to ptr
  store float %".1528", ptr %".1529"
  ; LDG.E.SYS R17, [R10+0x4]
  %".1532" = load i32, ptr %"R10"
  %"zext.176" = zext i32 %".1532" to i64
  %".1533" = load i32, ptr %"R11"
  %"zext.177" = zext i32 %".1533" to i64
  %"shl.94" = shl i64 %"zext.177", 32
  %"or.88" = or i64 %"shl.94", %"zext.176"
  %"ptr_plus_imm.64" = add i64 %"or.88", 4
  %"inttoptr_bytes.88" = inttoptr i64 %"ptr_plus_imm.64" to ptr addrspace(1)
  %"ptr_cast_for_access.88" = bitcast ptr addrspace(1) %"inttoptr_bytes.88" to ptr addrspace(1)
  %".1534" = load float, ptr addrspace(1) %"ptr_cast_for_access.88"
  %".1535" = bitcast ptr %"R17" to ptr
  store float %".1534", ptr %".1535"
  ; LDG.E.SYS R16, [R14+0x4]
  %".1538" = load i32, ptr %"R14"
  %"zext.178" = zext i32 %".1538" to i64
  %".1539" = load i32, ptr %"R15"
  %"zext.179" = zext i32 %".1539" to i64
  %"shl.95" = shl i64 %"zext.179", 32
  %"or.89" = or i64 %"shl.95", %"zext.178"
  %"ptr_plus_imm.65" = add i64 %"or.89", 4
  %"inttoptr_bytes.89" = inttoptr i64 %"ptr_plus_imm.65" to ptr addrspace(1)
  %"ptr_cast_for_access.89" = bitcast ptr addrspace(1) %"inttoptr_bytes.89" to ptr addrspace(1)
  %".1540" = load float, ptr addrspace(1) %"ptr_cast_for_access.89"
  %".1541" = bitcast ptr %"R16" to ptr
  store float %".1540", ptr %".1541"
  ; @P0 LDG.E.SYS R19, [R12+0x8]
  %".1544" = load i1, ptr %"P0"
  %".1545" = icmp eq i1 %".1544", 1
  br i1 %".1545", label %".L_x_2_split_0x1090_conditionalExpr_0x10d0", label %".L_x_2_split_0x10e0"
.L_x_2_split_0x1090_conditionalExpr_0x10d0:
  ; LDG.E.SYS R19, [R12+0x8]
  %".1548" = load i32, ptr %"R12"
  %"zext.180" = zext i32 %".1548" to i64
  %".1549" = load i32, ptr %"R13"
  %"zext.181" = zext i32 %".1549" to i64
  %"shl.96" = shl i64 %"zext.181", 32
  %"or.90" = or i64 %"shl.96", %"zext.180"
  %"ptr_plus_imm.66" = add i64 %"or.90", 8
  %"inttoptr_bytes.90" = inttoptr i64 %"ptr_plus_imm.66" to ptr addrspace(1)
  %"ptr_cast_for_access.90" = bitcast ptr addrspace(1) %"inttoptr_bytes.90" to ptr addrspace(1)
  %".1550" = load float, ptr addrspace(1) %"ptr_cast_for_access.90"
  %".1551" = bitcast ptr %"R19" to ptr
  store float %".1550", ptr %".1551"
  ; BRA `(.L_x_2_split_0x10e0)
  br label %".L_x_2_split_0x10e0"
.L_x_2_split_0x10e0:
  ; @P0 LDG.E.SYS R21, [R10+0x8]
  %".1556" = load i1, ptr %"P0"
  %".1557" = icmp eq i1 %".1556", 1
  br i1 %".1557", label %".L_x_2_split_0x10e0_conditionalExpr_0x10e0", label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10e0_conditionalExpr_0x10e0:
  ; LDG.E.SYS R21, [R10+0x8]
  %".1560" = load i32, ptr %"R10"
  %"zext.182" = zext i32 %".1560" to i64
  %".1561" = load i32, ptr %"R11"
  %"zext.183" = zext i32 %".1561" to i64
  %"shl.97" = shl i64 %"zext.183", 32
  %"or.91" = or i64 %"shl.97", %"zext.182"
  %"ptr_plus_imm.67" = add i64 %"or.91", 8
  %"inttoptr_bytes.91" = inttoptr i64 %"ptr_plus_imm.67" to ptr addrspace(1)
  %"ptr_cast_for_access.91" = bitcast ptr addrspace(1) %"inttoptr_bytes.91" to ptr addrspace(1)
  %".1562" = load float, ptr addrspace(1) %"ptr_cast_for_access.91"
  %".1563" = bitcast ptr %"R21" to ptr
  store float %".1562", ptr %".1563"
  ; BRA `(.L_x_2_split_0x10f0)
  br label %".L_x_2_split_0x10f0"
.L_x_2_split_0x10f0:
  ; @P0 LDG.E.SYS R18, [R14+0x8]
  %".1568" = load i1, ptr %"P0"
  %".1569" = icmp eq i1 %".1568", 1
  br i1 %".1569", label %".L_x_2_split_0x10f0_conditionalExpr_0x10f0", label %".L_x_2_split_0x1100"
.L_x_2_split_0x10f0_conditionalExpr_0x10f0:
  ; LDG.E.SYS R18, [R14+0x8]
  %".1572" = load i32, ptr %"R14"
  %"zext.184" = zext i32 %".1572" to i64
  %".1573" = load i32, ptr %"R15"
  %"zext.185" = zext i32 %".1573" to i64
  %"shl.98" = shl i64 %"zext.185", 32
  %"or.92" = or i64 %"shl.98", %"zext.184"
  %"ptr_plus_imm.68" = add i64 %"or.92", 8
  %"inttoptr_bytes.92" = inttoptr i64 %"ptr_plus_imm.68" to ptr addrspace(1)
  %"ptr_cast_for_access.92" = bitcast ptr addrspace(1) %"inttoptr_bytes.92" to ptr addrspace(1)
  %".1574" = load float, ptr addrspace(1) %"ptr_cast_for_access.92"
  %".1575" = bitcast ptr %"R18" to ptr
  store float %".1574", ptr %".1575"
  ; BRA `(.L_x_2_split_0x1100)
  br label %".L_x_2_split_0x1100"
.L_x_2_split_0x1100:
  ; FFMA R52, R9, R17, R52
  %".1580" = load float, ptr %"R9"
  %".1581" = load float, ptr %"R17"
  %".1582" = load float, ptr %"R52"
  %"fmul.58" = fmul float %".1580", %".1581"
  %"fadd.58" = fadd float %"fmul.58", %".1582"
  %".1583" = bitcast ptr %"R52" to ptr
  store float %"fadd.58", ptr %".1583"
  ; FFMA R54, R17, R16, R54
  %".1586" = load float, ptr %"R17"
  %".1587" = load float, ptr %"R16"
  %".1588" = load float, ptr %"R54"
  %"fmul.59" = fmul float %".1586", %".1587"
  %"fadd.59" = fadd float %"fmul.59", %".1588"
  %".1589" = bitcast ptr %"R54" to ptr
  store float %"fadd.59", ptr %".1589"
  ; @P0 FFMA R52, R19, R21, R52
  %".1592" = load i1, ptr %"P0"
  %".1593" = icmp eq i1 %".1592", 1
  br i1 %".1593", label %".L_x_2_split_0x1100_conditionalExpr_0x1120", label %".L_x_2_split_0x1130"
.L_x_2_split_0x1100_conditionalExpr_0x1120:
  ; FFMA R52, R19, R21, R52
  %".1596" = load float, ptr %"R19"
  %".1597" = load float, ptr %"R21"
  %".1598" = load float, ptr %"R52"
  %"fmul.60" = fmul float %".1596", %".1597"
  %"fadd.60" = fadd float %"fmul.60", %".1598"
  %".1599" = bitcast ptr %"R52" to ptr
  store float %"fadd.60", ptr %".1599"
  ; BRA `(.L_x_2_split_0x1130)
  br label %".L_x_2_split_0x1130"
.L_x_2_split_0x1130:
  ; @P0 FFMA R54, R21, R18, R54
  %".1604" = load i1, ptr %"P0"
  %".1605" = icmp eq i1 %".1604", 1
  br i1 %".1605", label %".L_x_2_split_0x1130_conditionalExpr_0x1130", label %".L_x_1"
.L_x_2_split_0x1130_conditionalExpr_0x1130:
  ; FFMA R54, R21, R18, R54
  %".1608" = load float, ptr %"R21"
  %".1609" = load float, ptr %"R18"
  %".1610" = load float, ptr %"R54"
  %"fmul.61" = fmul float %".1608", %".1609"
  %"fadd.61" = fadd float %"fmul.61", %".1610"
  %".1611" = bitcast ptr %"R54" to ptr
  store float %"fadd.61", ptr %".1611"
  ; BRA `(.L_x_1)
  br label %".L_x_1"
.L_x_1:
  ; LDG.E.SYS R9, [R26]
  %".1616" = load i32, ptr %"R26"
  %"zext.186" = zext i32 %".1616" to i64
  %".1617" = load i32, ptr %"R27"
  %"zext.187" = zext i32 %".1617" to i64
  %"shl.99" = shl i64 %"zext.187", 32
  %"or.93" = or i64 %"shl.99", %"zext.186"
  %"inttoptr_bytes.93" = inttoptr i64 %"or.93" to ptr addrspace(1)
  %"ptr_cast_for_access.93" = bitcast ptr addrspace(1) %"inttoptr_bytes.93" to ptr addrspace(1)
  %".1618" = load float, ptr addrspace(1) %"ptr_cast_for_access.93"
  %".1619" = bitcast ptr %"R9" to ptr
  store float %".1618", ptr %".1619"
  ; MOV R10, 0x3bbb989d
  %".1622" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".1622"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R11, 0x437c0000
  %".1626" = bitcast ptr %"R11" to ptr
  store float 0x41d0df0000000000, ptr %".1626"
  ; BSSY B0, `(.L_x_7)
  ; FADD R9, R9, R52
  %".1630" = load float, ptr %"R9"
  %".1631" = load float, ptr %"R52"
  %"fadd.62" = fadd float %".1630", %".1631"
  %".1632" = bitcast ptr %"R9" to ptr
  store float %"fadd.62", ptr %".1632"
  ; FFMA.SAT R10, -R9, R10, 0.5
  %".1635" = load float, ptr %"R9"
  %".1636" = fneg float %".1635"
  %".1637" = load float, ptr %"R10"
  %"fmul.62" = fmul float %".1636", %".1637"
  %"fadd.63" = fadd float %"fmul.62", 0x3fe0000000000000
  %".1638" = bitcast ptr %"R10" to ptr
  store float %"fadd.63", ptr %".1638"
  ; FFMA.RM R10, R10, R11, 12582913
  %".1641" = load float, ptr %"R10"
  %".1642" = load float, ptr %"R11"
  %"fmul.63" = fmul float %".1641", %".1642"
  %"fadd.64" = fadd float %"fmul.63", 0x4168000020000000
  %".1643" = bitcast ptr %"R10" to ptr
  store float %"fadd.64", ptr %".1643"
  ; FADD R12, R10.reuse, -12583039
  %".1646" = load float, ptr %"R10"
  %"fadd.65" = fadd float %".1646", 0xc168000fe0000000
  %".1647" = bitcast ptr %"R12" to ptr
  store float %"fadd.65", ptr %".1647"
  ; SHF.L.U32 R10, R10, 0x17, RZ
  %".1650" = icmp ult i32 23, 32
  %"SHF_min" = select  i1 %".1650", i32 23, i32 32
  %".1651" = load i32, ptr %"R10"
  %"zext.188" = zext i32 0 to i64
  %"zext.189" = zext i32 %".1651" to i64
  %"zext.190" = zext i32 23 to i64
  %"shl.100" = shl i64 %"zext.188", 32
  %"or.94" = or i64 %"shl.100", %"zext.189"
  %"shl.101" = shl i64 %"or.94", %"zext.190"
  %"and" = and i64 %"shl.101", 4294967295
  %"trunc32.56" = trunc i64 %"and" to i32
  store i32 %"trunc32.56", ptr %"R10"
  ; FFMA R12, -R9, 1.4426950216293334961, -R12
  %".1654" = load float, ptr %"R9"
  %".1655" = fneg float %".1654"
  %".1656" = load float, ptr %"R12"
  %".1657" = fneg float %".1656"
  %"fmul.64" = fmul float %".1655", 0x3ff7154760000000
  %"fadd.66" = fadd float %"fmul.64", %".1657"
  %".1658" = bitcast ptr %"R12" to ptr
  store float %"fadd.66", ptr %".1658"
  ; FFMA R12, -R9, 1.925963033500011079e-08, R12
  %".1661" = load float, ptr %"R9"
  %".1662" = fneg float %".1661"
  %".1663" = load float, ptr %"R12"
  %"fmul.65" = fmul float %".1662", 0x3e54ae0c00000000
  %"fadd.67" = fadd float %"fmul.65", %".1663"
  %".1664" = bitcast ptr %"R12" to ptr
  store float %"fadd.67", ptr %".1664"
  ; MUFU.EX2 R9, R12
  %".1667" = load float, ptr %"R12"
  %"llvm_exp2_f32_result" = call float @"llvm.exp2.f32"(float %".1667")
  %".1668" = bitcast ptr %"R9" to ptr
  store float %"llvm_exp2_f32_result", ptr %".1668"
  ; FFMA R24, R10, R9, 1
  %".1671" = load float, ptr %"R10"
  %".1672" = load float, ptr %"R9"
  %"fmul.66" = fmul float %".1671", %".1672"
  %"fadd.68" = fadd float %"fmul.66", 0x3ff0000000000000
  %".1673" = bitcast ptr %"R24" to ptr
  store float %"fadd.68", ptr %".1673"
  ; IADD3 R9, R24, 0x1800000, RZ
  %".1676" = load i32, ptr %"R24"
  %".1677" = add i32 %".1676", 25165824
  %".1678" = add i32 %".1677", 0
  store i32 %".1678", ptr %"R9"
  ; LOP3.LUT R9, R9, 0x7f800000, RZ, 0xc0, !PT
  %".1681" = load i32, ptr %"R9"
  %".1682" = xor i1 1, -1
  %".1683" = and i32 %".1681", 2139095040
  store i32 %".1683", ptr %"R9"
  ; ISETP.GT.U32.AND P0, PT, R9, 0x1ffffff, PT
  %".1686" = load i32, ptr %"R9"
  %".1687" = load i1, ptr %"PT"
  %"cmp.15" = icmp sgt i32 %".1686", 33554431
  %".1688" = xor i1 %"cmp.15", -1
  %".1689" = and i1 %"cmp.15", %".1687"
  %".1690" = and i1 %".1688", %".1687"
  store i1 %".1689", ptr %"P0"
  ; @P0 BRA `(.L_x_8)
  %".1693" = load i1, ptr %"P0"
  %".1694" = icmp eq i1 %".1693", 1
  br i1 %".1694", label %".L_x_8", label %".L_x_1_split_0x1260_CALL_0x1290"
.L_x_1_split_0x1260_CALL_0x1290:
  ; MOV R10, 0x1280
  store i32 4736, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1701" = icmp ult i32 1, 32
  %"SHF_min.1" = select  i1 %".1701", i32 1, i32 32
  %".1702" = load i32, ptr %"R24"
  %"zext.191" = zext i32 0 to i64
  %"zext.192" = zext i32 %".1702" to i64
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
  %".1707" = icmp ult i32 24, 32
  %"SHF_min.2" = select  i1 %".1707", i32 24, i32 32
  %".1708" = load i32, ptr %"R11"
  %"zext.194" = zext i32 %".1708" to i64
  %"zext.195" = zext i32 0 to i64
  %"zext.196" = zext i32 24 to i64
  %"shl.104" = shl i64 %"zext.194", 32
  %"or.96" = or i64 %"shl.104", %"zext.195"
  %"lshr" = lshr i64 %"or.96", %"zext.196"
  %"lshr.1" = lshr i64 %"lshr", 32
  %"trunc32.58" = trunc i64 %"lshr.1" to i32
  store i32 %"trunc32.58", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".1711" = load i32, ptr %"R25"
  %".1712" = load i1, ptr %"PT"
  %"cmp.16" = icmp ne i32 %".1711", 0
  %".1713" = xor i1 %"cmp.16", -1
  %".1714" = and i1 %"cmp.16", %".1712"
  %".1715" = and i1 %".1713", %".1712"
  store i1 %".1714", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".1718" = load i1, ptr %"P0"
  %".1719" = icmp eq i1 %".1718", 1
  br i1 %".1719", label %".L_x_49...1", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".1722" = icmp ult i32 1, 32
  %"SHF_min.3" = select  i1 %".1722", i32 1, i32 32
  %".1723" = load i32, ptr %"R24"
  %"zext.197" = zext i32 0 to i64
  %"zext.198" = zext i32 %".1723" to i64
  %"zext.199" = zext i32 1 to i64
  %"shl.105" = shl i64 %"zext.197", 32
  %"or.97" = or i64 %"shl.105", %"zext.198"
  %"shl.106" = shl i64 %"or.97", %"zext.199"
  %"and.2" = and i64 %"shl.106", 4294967295
  %"trunc32.59" = trunc i64 %"and.2" to i32
  store i32 %"trunc32.59", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".1726" = load i32, ptr %"R11"
  %".1727" = load i1, ptr %"PT"
  %"cmp.17" = icmp ne i32 %".1726", 0
  %".1728" = xor i1 %"cmp.17", -1
  %".1729" = and i1 %"cmp.17", %".1727"
  %".1730" = and i1 %".1728", %".1727"
  store i1 %".1729", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1733" = load i1, ptr %"P0"
  %".1734" = icmp eq i1 %".1733", 1
  br i1 %".1734", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...1_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1737" = load float, ptr %"R24"
  %"fmul.67" = fmul float %".1737", 0x43f0000000000000
  %"fadd.69" = fadd float %"fmul.67",              0x0
  %".1738" = bitcast ptr %"R12" to ptr
  store float %"fadd.69", ptr %".1738"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...1:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".1743" = load float, ptr %"R24"
  %"fmul.68" = fmul float %".1743", 0x43f0000000000000
  %"fadd.70" = fadd float %"fmul.68",              0x0
  %".1744" = bitcast ptr %"R12" to ptr
  store float %"fadd.70", ptr %".1744"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1:
  ; @!P0 MUFU.RCP R11, R24
  %".1749" = load i1, ptr %"P0"
  %".1750" = icmp ne i1 %".1749", 1
  br i1 %".1750", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...1_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".1753" = load float, ptr %"R24"
  %".1754" = fdiv float 0x3ff0000000000000, %".1753"
  %".1755" = bitcast ptr %"R11" to ptr
  store float %".1754", ptr %".1755"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...1:
  ; MUFU.RCP R11, R24
  %".1760" = load float, ptr %"R24"
  %".1761" = fdiv float 0x3ff0000000000000, %".1760"
  %".1762" = bitcast ptr %"R11" to ptr
  store float %".1761", ptr %".1762"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1:
  ; @P0 MUFU.RCP R13, R12
  %".1767" = load i1, ptr %"P0"
  %".1768" = icmp eq i1 %".1767", 1
  br i1 %".1768", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...1_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".1771" = load float, ptr %"R12"
  %".1772" = fdiv float 0x3ff0000000000000, %".1771"
  %".1773" = bitcast ptr %"R13" to ptr
  store float %".1772", ptr %".1773"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...1:
  ; MUFU.RCP R13, R12
  %".1778" = load float, ptr %"R12"
  %".1779" = fdiv float 0x3ff0000000000000, %".1778"
  %".1780" = bitcast ptr %"R13" to ptr
  store float %".1779", ptr %".1780"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1:
  ; @P0 FFMA R22, R12, R13, -1
  %".1785" = load i1, ptr %"P0"
  %".1786" = icmp eq i1 %".1785", 1
  br i1 %".1786", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...1_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".1789" = load float, ptr %"R12"
  %".1790" = load float, ptr %"R13"
  %"fmul.69" = fmul float %".1789", %".1790"
  %"fadd.71" = fadd float %"fmul.69", 0xbff0000000000000
  %".1791" = bitcast ptr %"R22" to ptr
  store float %"fadd.71", ptr %".1791"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...1:
  ; FFMA R22, R12, R13, -1
  %".1796" = load float, ptr %"R12"
  %".1797" = load float, ptr %"R13"
  %"fmul.70" = fmul float %".1796", %".1797"
  %"fadd.72" = fadd float %"fmul.70", 0xbff0000000000000
  %".1798" = bitcast ptr %"R22" to ptr
  store float %"fadd.72", ptr %".1798"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".1803" = load i1, ptr %"P0"
  %".1804" = icmp eq i1 %".1803", 1
  br i1 %".1804", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...1_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".1807" = load float, ptr %"R22"
  %".1808" = fneg float %".1807"
  %".1809" = call float @"llvm.fabs"(float %".1808")
  %".1810" = fcmp ogt float %".1809",              0x0
  %".1811" = fcmp olt float %".1809", 0x3810000000000000
  %".1812" = and i1 %".1810", %".1811"
  %".1813" = select  i1 %".1812", float              0x0, float %".1808"
  %".1814" = call float @"llvm.fabs"(float              0x0)
  %".1815" = fcmp ogt float %".1814",              0x0
  %".1816" = fcmp olt float %".1814", 0x3810000000000000
  %".1817" = and i1 %".1815", %".1816"
  %".1818" = select  i1 %".1817", float              0x0, float              0x0
  %"fadd.73" = fadd float %".1813", %".1818"
  %".1819" = call float @"llvm.fabs"(float %"fadd.73")
  %".1820" = fcmp ogt float %".1819",              0x0
  %".1821" = fcmp olt float %".1819", 0x3810000000000000
  %".1822" = and i1 %".1820", %".1821"
  %".1823" = select  i1 %".1822", float              0x0, float %"fadd.73"
  %".1824" = bitcast ptr %"R22" to ptr
  store float %".1823", ptr %".1824"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...1:
  ; FADD.FTZ R22, -R22, -RZ
  %".1829" = load float, ptr %"R22"
  %".1830" = fneg float %".1829"
  %".1831" = call float @"llvm.fabs"(float %".1830")
  %".1832" = fcmp ogt float %".1831",              0x0
  %".1833" = fcmp olt float %".1831", 0x3810000000000000
  %".1834" = and i1 %".1832", %".1833"
  %".1835" = select  i1 %".1834", float              0x0, float %".1830"
  %".1836" = call float @"llvm.fabs"(float              0x0)
  %".1837" = fcmp ogt float %".1836",              0x0
  %".1838" = fcmp olt float %".1836", 0x3810000000000000
  %".1839" = and i1 %".1837", %".1838"
  %".1840" = select  i1 %".1839", float              0x0, float              0x0
  %"fadd.74" = fadd float %".1835", %".1840"
  %".1841" = call float @"llvm.fabs"(float %"fadd.74")
  %".1842" = fcmp ogt float %".1841",              0x0
  %".1843" = fcmp olt float %".1841", 0x3810000000000000
  %".1844" = and i1 %".1842", %".1843"
  %".1845" = select  i1 %".1844", float              0x0, float %"fadd.74"
  %".1846" = bitcast ptr %"R22" to ptr
  store float %".1845", ptr %".1846"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1:
  ; @P0 FFMA R22, R13, R22, R13
  %".1851" = load i1, ptr %"P0"
  %".1852" = icmp eq i1 %".1851", 1
  br i1 %".1852", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...1_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".1855" = load float, ptr %"R13"
  %".1856" = load float, ptr %"R22"
  %".1857" = load float, ptr %"R13"
  %"fmul.71" = fmul float %".1855", %".1856"
  %"fadd.75" = fadd float %"fmul.71", %".1857"
  %".1858" = bitcast ptr %"R22" to ptr
  store float %"fadd.75", ptr %".1858"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...1:
  ; FFMA R22, R13, R22, R13
  %".1863" = load float, ptr %"R13"
  %".1864" = load float, ptr %"R22"
  %".1865" = load float, ptr %"R13"
  %"fmul.72" = fmul float %".1863", %".1864"
  %"fadd.76" = fadd float %"fmul.72", %".1865"
  %".1866" = bitcast ptr %"R22" to ptr
  store float %"fadd.76", ptr %".1866"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".1871" = load i1, ptr %"P0"
  %".1872" = icmp eq i1 %".1871", 1
  br i1 %".1872", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...1_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".1875" = load float, ptr %"R22"
  %"fmul.73" = fmul float %".1875", 0x43f0000000000000
  %"fadd.77" = fadd float %"fmul.73",              0x0
  %".1876" = bitcast ptr %"R11" to ptr
  store float %"fadd.77", ptr %".1876"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...1:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".1881" = load float, ptr %"R22"
  %"fmul.74" = fmul float %".1881", 0x43f0000000000000
  %"fadd.78" = fadd float %"fmul.74",              0x0
  %".1882" = bitcast ptr %"R11" to ptr
  store float %"fadd.78", ptr %".1882"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...1:
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_49...1:
  ; IADD3 R34, R25, -0xfd, RZ
  %".1889" = load i32, ptr %"R25"
  %".1890" = add i32 %".1889", -253
  %".1891" = add i32 %".1890", 0
  store i32 %".1891", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".1894" = load i32, ptr %"R34"
  %".1895" = load i1, ptr %"PT"
  %"cmp.18" = icmp sgt i32 %".1894", 1
  %".1896" = xor i1 %"cmp.18", -1
  %".1897" = and i1 %"cmp.18", %".1895"
  %".1898" = and i1 %".1896", %".1895"
  store i1 %".1897", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".1901" = load i1, ptr %"P0"
  %".1902" = icmp eq i1 %".1901", 1
  br i1 %".1902", label %".L_x_51...1", label %".L_x_49_split_0x4a30...1"
.L_x_49_split_0x4a30...1:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".1905" = load i32, ptr %"R24"
  %".1906" = xor i1 1, -1
  %".1907" = and i32 %".1905", 8388607
  store i32 %".1907", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".1912" = load i32, ptr %"R11"
  %".1913" = xor i1 1, -1
  %".1914" = or i32 %".1912", 1065353216
  store i32 %".1914", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".1917" = load i32, ptr %"R34"
  %".1918" = icmp ult i32 %".1917", 32
  %"SHF_min.4" = select  i1 %".1918", i32 %".1917", i32 32
  %".1919" = load i32, ptr %"R23"
  %".1920" = load i32, ptr %"R34"
  %"zext.200" = zext i32 0 to i64
  %"zext.201" = zext i32 %".1919" to i64
  %"zext.202" = zext i32 %".1920" to i64
  %"shl.107" = shl i64 %"zext.200", 32
  %"or.98" = or i64 %"shl.107", %"zext.201"
  %"shl.108" = shl i64 %"or.98", %"zext.202"
  %"and.3" = and i64 %"shl.108", 4294967295
  %"trunc32.60" = trunc i64 %"and.3" to i32
  store i32 %"trunc32.60", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".1923" = load i32, ptr %"R11"
  %"sint_to_f32" = sitofp i32 %".1923" to float
  %".1924" = fdiv float 0x3ff0000000000000, %"sint_to_f32"
  %".1925" = fptosi float %".1924" to i32
  store i32 %".1925", ptr %"R12"
  ; FFMA R13, R11, R12, -1
  %".1928" = load float, ptr %"R11"
  %".1929" = load float, ptr %"R12"
  %"fmul.75" = fmul float %".1928", %".1929"
  %"fadd.79" = fadd float %"fmul.75", 0xbff0000000000000
  %".1930" = bitcast ptr %"R13" to ptr
  store float %"fadd.79", ptr %".1930"
  ; FADD.FTZ R13, -R13, -RZ
  %".1933" = load float, ptr %"R13"
  %".1934" = fneg float %".1933"
  %".1935" = call float @"llvm.fabs"(float %".1934")
  %".1936" = fcmp ogt float %".1935",              0x0
  %".1937" = fcmp olt float %".1935", 0x3810000000000000
  %".1938" = and i1 %".1936", %".1937"
  %".1939" = select  i1 %".1938", float              0x0, float %".1934"
  %".1940" = call float @"llvm.fabs"(float              0x0)
  %".1941" = fcmp ogt float %".1940",              0x0
  %".1942" = fcmp olt float %".1940", 0x3810000000000000
  %".1943" = and i1 %".1941", %".1942"
  %".1944" = select  i1 %".1943", float              0x0, float              0x0
  %"fadd.80" = fadd float %".1939", %".1944"
  %".1945" = call float @"llvm.fabs"(float %"fadd.80")
  %".1946" = fcmp ogt float %".1945",              0x0
  %".1947" = fcmp olt float %".1945", 0x3810000000000000
  %".1948" = and i1 %".1946", %".1947"
  %".1949" = select  i1 %".1948", float              0x0, float %"fadd.80"
  %".1950" = bitcast ptr %"R13" to ptr
  store float %".1949", ptr %".1950"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".1953" = load float, ptr %"R12"
  %".1954" = load float, ptr %"R13"
  %".1955" = load float, ptr %"R12"
  %"fmul.76" = fmul float %".1953", %".1954"
  %"fadd.81" = fadd float %"fmul.76", %".1955"
  %".1956" = bitcast ptr %"R22" to ptr
  store float %"fadd.81", ptr %".1956"
  ; FFMA.RP R13, R12, R13, R12
  %".1959" = load float, ptr %"R12"
  %".1960" = load float, ptr %"R13"
  %".1961" = load float, ptr %"R12"
  %"fmul.77" = fmul float %".1959", %".1960"
  %"fadd.82" = fadd float %"fmul.77", %".1961"
  %".1962" = bitcast ptr %"R13" to ptr
  store float %"fadd.82", ptr %".1962"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".1965" = load i32, ptr %"R22"
  %".1966" = xor i1 1, -1
  %".1967" = and i32 %".1965", 8388607
  store i32 %".1967", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".1970" = load float, ptr %"R22"
  %".1971" = load float, ptr %"R13"
  %".1972" = load i1, ptr %"PT"
  %".1973" = call float @"llvm.fabs"(float %".1970")
  %".1974" = fcmp ogt float %".1973",              0x0
  %".1975" = fcmp olt float %".1973", 0x3810000000000000
  %".1976" = and i1 %".1974", %".1975"
  %".1977" = select  i1 %".1976", float              0x0, float %".1970"
  %".1978" = call float @"llvm.fabs"(float %".1971")
  %".1979" = fcmp ogt float %".1978",              0x0
  %".1980" = fcmp olt float %".1978", 0x3810000000000000
  %".1981" = and i1 %".1979", %".1980"
  %".1982" = select  i1 %".1981", float              0x0, float %".1971"
  %"fcmp_ordered" = fcmp une float %".1977", %".1982"
  %".1983" = xor i1 %"fcmp_ordered", -1
  %".1984" = and i1 %"fcmp_ordered", %".1972"
  %".1985" = and i1 %".1983", %".1972"
  store i1 %".1984", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".1988" = load i32, ptr %"R12"
  %".1989" = xor i1 1, -1
  %".1990" = or i32 %".1988", 8388608
  store i32 %".1990", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".1993" = load i1, ptr %"P0"
  %".1994" = xor i1 %".1993", -1
  %".1995" = icmp eq i1 %".1994", 1
  %"sel" = select  i1 %".1995", i32 0, i32 4294967295
  store i32 %"sel", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".1998" = load i32, ptr %"R23"
  %".1999" = load i32, ptr %"R12"
  %".2000" = xor i1 1, -1
  %".2001" = and i32 %".1998", %".1999"
  store i32 %".2001", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".2004" = load i32, ptr %"R13"
  %".2005" = sub i32 0, %".2004"
  %".2006" = add i32 %".2005", 0
  %".2007" = add i32 %".2006", 0
  store i32 %".2007", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".2010" = load i32, ptr %"R34"
  %".2011" = icmp ult i32 %".2010", 32
  %"SHF_min.5" = select  i1 %".2011", i32 %".2010", i32 32
  %".2012" = load i32, ptr %"R23"
  %".2013" = load i32, ptr %"R34"
  %"zext.203" = zext i32 %".2012" to i64
  %"zext.204" = zext i32 0 to i64
  %"zext.205" = zext i32 %".2013" to i64
  %"shl.109" = shl i64 %"zext.203", 32
  %"or.99" = or i64 %"shl.109", %"zext.204"
  %"lshr.2" = lshr i64 %"or.99", %"zext.205"
  %"lshr.3" = lshr i64 %"lshr.2", 32
  %"trunc32.61" = trunc i64 %"lshr.3" to i32
  store i32 %"trunc32.61", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".2016" = load i32, ptr %"R13"
  %".2017" = load i32, ptr %"R34"
  %".2018" = load i32, ptr %"R12"
  %".2019" = xor i1 1, -1
  %".2020" = or i32 %".2016", %".2017"
  %".2021" = or i32 %".2016", %".2018"
  %".2022" = and i32 %".2020", %".2021"
  store i32 %".2022", ptr %"RZ"
  %".2024" = icmp ne i32 %".2022", 0
  store i1 %".2024", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".2027" = load i32, ptr %"R23"
  %".2028" = xor i1 1, -1
  %".2029" = and i32 %".2027", 1
  store i32 %".2029", ptr %"RZ"
  %".2031" = icmp ne i32 %".2029", 0
  store i1 %".2031", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".2034" = load i32, ptr %"R23"
  %".2035" = xor i1 1, -1
  %".2036" = and i32 %".2034", 2
  store i32 %".2036", ptr %"RZ"
  %".2038" = icmp ne i32 %".2036", 0
  store i1 %".2038", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".2041" = load i1, ptr %"P0"
  %".2042" = load i1, ptr %"P1"
  %".2043" = or i1 %".2041", %".2042"
  %".2044" = and i1 %".2043", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".2046" = load i32, ptr %"R24"
  %".2047" = xor i1 1, -1
  %".2048" = and i32 %".2046", 8388607
  store i32 %".2048", ptr %"RZ"
  %".2050" = icmp ne i32 %".2048", 0
  store i1 %".2050", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".2053" = load i1, ptr %"P0"
  %".2054" = xor i1 %".2053", -1
  %".2055" = icmp eq i1 %".2054", 1
  %"sel.1" = select  i1 %".2055", i32 0, i32 1
  store i32 %"sel.1", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".2058" = load i32, ptr %"R11"
  %".2059" = sub i32 0, %".2058"
  %".2060" = add i32 %".2059", 0
  %".2061" = add i32 %".2060", 0
  store i32 %".2061", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".2064" = load i32, ptr %"R11"
  %".2065" = load i1, ptr %"PT"
  %"cmp.19" = icmp sge i32 %".2064", 0
  %".2066" = xor i1 %"cmp.19", -1
  %".2067" = and i1 %"cmp.19", %".2065"
  %".2068" = and i1 %".2066", %".2065"
  store i1 %".2067", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".2071" = load i32, ptr %"R25"
  %".2072" = add i32 %".2071", -252
  %".2073" = add i32 %".2072", 0
  store i32 %".2073", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".2076" = load i32, ptr %"R11"
  %".2077" = icmp ult i32 %".2076", 32
  %"SHF_min.6" = select  i1 %".2077", i32 %".2076", i32 32
  %".2078" = load i32, ptr %"R12"
  %".2079" = load i32, ptr %"R11"
  %"zext.206" = zext i32 %".2078" to i64
  %"zext.207" = zext i32 0 to i64
  %"zext.208" = zext i32 %".2079" to i64
  %"shl.110" = shl i64 %"zext.206", 32
  %"or.100" = or i64 %"shl.110", %"zext.207"
  %"lshr.4" = lshr i64 %"or.100", %"zext.208"
  %"lshr.5" = lshr i64 %"lshr.4", 32
  %"trunc32.62" = trunc i64 %"lshr.5" to i32
  store i32 %"trunc32.62", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".2082" = load i1, ptr %"P0"
  %".2083" = icmp ne i1 %".2082", 1
  br i1 %".2083", label %".L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30...1_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".2086" = load i32, ptr %"R11"
  %".2087" = add i32 %".2086", 1
  %".2088" = add i32 %".2087", 0
  store i32 %".2088", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...1:
  ; IADD3 R11, R11, 0x1, RZ
  %".2093" = load i32, ptr %"R11"
  %".2094" = add i32 %".2093", 1
  %".2095" = add i32 %".2094", 0
  store i32 %".2095", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...1"
.L_x_49_split_0x4be0...1:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".2100" = load i1, ptr %"P1"
  %".2101" = icmp ne i1 %".2100", 1
  br i1 %".2101", label %".L_x_49_split_0x4be0...1_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...1"
.L_x_49_split_0x4be0...1_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".2104" = icmp ult i32 1, 32
  %"SHF_min.7" = select  i1 %".2104", i32 1, i32 32
  %".2105" = load i32, ptr %"R11"
  %"zext.209" = zext i32 0 to i64
  %"zext.210" = zext i32 %".2105" to i64
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
  %".2110" = icmp ult i32 1, 32
  %"SHF_min.8" = select  i1 %".2110", i32 1, i32 32
  %".2111" = load i32, ptr %"R11"
  %"zext.212" = zext i32 0 to i64
  %"zext.213" = zext i32 %".2111" to i64
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
  %".2116" = load i32, ptr %"R11"
  %".2117" = load i32, ptr %"R24"
  %".2118" = xor i1 1, -1
  %".2119" = or i32 %".2116", 2147483648
  %".2120" = or i32 %".2116", %".2117"
  %".2121" = and i32 %".2119", %".2120"
  store i32 %".2121", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...1"
.L_x_51...1:
  ; MUFU.RCP R11, R24
  %".2126" = load float, ptr %"R24"
  %".2127" = fdiv float 0x3ff0000000000000, %".2126"
  %".2128" = bitcast ptr %"R11" to ptr
  store float %".2127", ptr %".2128"
  br label %".L_x_50...1"
.L_x_50...1:
  ; BSYNC B1
  br label %".L_x_48...1"
.L_x_48...1:
  ; MOV R22, R11
  %".2134" = load float, ptr %"R11"
  %".2135" = bitcast ptr %"R22" to ptr
  store float %".2134", ptr %".2135"
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
  %".2145" = load float, ptr %"R22"
  %".2146" = bitcast ptr %"R9" to ptr
  store float %".2145", ptr %".2146"
  ; BRA `(.L_x_9)
  br label %".L_x_9"
.L_x_8:
  ; MUFU.RCP R9, R24
  %".2151" = load float, ptr %"R24"
  %".2152" = fdiv float 0x3ff0000000000000, %".2151"
  %".2153" = bitcast ptr %"R9" to ptr
  store float %".2152", ptr %".2153"
  ; FFMA R10, R24, R9, -1
  %".2156" = load float, ptr %"R24"
  %".2157" = load float, ptr %"R9"
  %"fmul.78" = fmul float %".2156", %".2157"
  %"fadd.83" = fadd float %"fmul.78", 0xbff0000000000000
  %".2158" = bitcast ptr %"R10" to ptr
  store float %"fadd.83", ptr %".2158"
  ; FADD.FTZ R10, -R10, -RZ
  %".2161" = load float, ptr %"R10"
  %".2162" = fneg float %".2161"
  %".2163" = call float @"llvm.fabs"(float %".2162")
  %".2164" = fcmp ogt float %".2163",              0x0
  %".2165" = fcmp olt float %".2163", 0x3810000000000000
  %".2166" = and i1 %".2164", %".2165"
  %".2167" = select  i1 %".2166", float              0x0, float %".2162"
  %".2168" = call float @"llvm.fabs"(float              0x0)
  %".2169" = fcmp ogt float %".2168",              0x0
  %".2170" = fcmp olt float %".2168", 0x3810000000000000
  %".2171" = and i1 %".2169", %".2170"
  %".2172" = select  i1 %".2171", float              0x0, float              0x0
  %"fadd.84" = fadd float %".2167", %".2172"
  %".2173" = call float @"llvm.fabs"(float %"fadd.84")
  %".2174" = fcmp ogt float %".2173",              0x0
  %".2175" = fcmp olt float %".2173", 0x3810000000000000
  %".2176" = and i1 %".2174", %".2175"
  %".2177" = select  i1 %".2176", float              0x0, float %"fadd.84"
  %".2178" = bitcast ptr %"R10" to ptr
  store float %".2177", ptr %".2178"
  ; FFMA R9, R9, R10, R9
  %".2181" = load float, ptr %"R9"
  %".2182" = load float, ptr %"R10"
  %".2183" = load float, ptr %"R9"
  %"fmul.79" = fmul float %".2181", %".2182"
  %"fadd.85" = fadd float %"fmul.79", %".2183"
  %".2184" = bitcast ptr %"R9" to ptr
  store float %"fadd.85", ptr %".2184"
  br label %".L_x_9"
.L_x_9:
  ; BSYNC B0
  br label %".L_x_7"
.L_x_7:
  ; LDG.E.SYS R11, [R32]
  %".2190" = load i32, ptr %"R32"
  %"zext.215" = zext i32 %".2190" to i64
  %".2191" = load i32, ptr %"R33"
  %"zext.216" = zext i32 %".2191" to i64
  %"shl.115" = shl i64 %"zext.216", 32
  %"or.103" = or i64 %"shl.115", %"zext.215"
  %"inttoptr_bytes.94" = inttoptr i64 %"or.103" to ptr addrspace(1)
  %"ptr_cast_for_access.94" = bitcast ptr addrspace(1) %"inttoptr_bytes.94" to ptr addrspace(1)
  %".2192" = load float, ptr addrspace(1) %"ptr_cast_for_access.94"
  %".2193" = bitcast ptr %"R11" to ptr
  store float %".2192", ptr %".2193"
  ; MOV R10, 0x3bbb989d
  %".2196" = bitcast ptr %"R10" to ptr
  store float 0x41cdddcc40000000, ptr %".2196"
  ; MOV R13, 0x437c0000
  %".2199" = bitcast ptr %"R13" to ptr
  store float 0x41d0df0000000000, ptr %".2199"
  ; FADD R11, R11, R54
  %".2202" = load float, ptr %"R11"
  %".2203" = load float, ptr %"R54"
  %"fadd.86" = fadd float %".2202", %".2203"
  %".2204" = bitcast ptr %"R11" to ptr
  store float %"fadd.86", ptr %".2204"
  ; FFMA.SAT R10, -R11, R10, 0.5
  %".2207" = load float, ptr %"R11"
  %".2208" = fneg float %".2207"
  %".2209" = load float, ptr %"R10"
  %"fmul.80" = fmul float %".2208", %".2209"
  %"fadd.87" = fadd float %"fmul.80", 0x3fe0000000000000
  %".2210" = bitcast ptr %"R10" to ptr
  store float %"fadd.87", ptr %".2210"
  ; FFMA.RM R10, R10, R13, 12582913
  %".2213" = load float, ptr %"R10"
  %".2214" = load float, ptr %"R13"
  %"fmul.81" = fmul float %".2213", %".2214"
  %"fadd.88" = fadd float %"fmul.81", 0x4168000020000000
  %".2215" = bitcast ptr %"R10" to ptr
  store float %"fadd.88", ptr %".2215"
  ; FADD R12, R10.reuse, -12583039
  %".2218" = load float, ptr %"R10"
  %"fadd.89" = fadd float %".2218", 0xc168000fe0000000
  %".2219" = bitcast ptr %"R12" to ptr
  store float %"fadd.89", ptr %".2219"
  ; SHF.L.U32 R20, R10, 0x17, RZ
  %".2222" = icmp ult i32 23, 32
  %"SHF_min.9" = select  i1 %".2222", i32 23, i32 32
  %".2223" = load i32, ptr %"R10"
  %"zext.217" = zext i32 0 to i64
  %"zext.218" = zext i32 %".2223" to i64
  %"zext.219" = zext i32 23 to i64
  %"shl.116" = shl i64 %"zext.217", 32
  %"or.104" = or i64 %"shl.116", %"zext.218"
  %"shl.117" = shl i64 %"or.104", %"zext.219"
  %"and.6" = and i64 %"shl.117", 4294967295
  %"trunc32.65" = trunc i64 %"and.6" to i32
  store i32 %"trunc32.65", ptr %"R20"
  ; FFMA R12, -R11, 1.4426950216293334961, -R12
  %".2226" = load float, ptr %"R11"
  %".2227" = fneg float %".2226"
  %".2228" = load float, ptr %"R12"
  %".2229" = fneg float %".2228"
  %"fmul.82" = fmul float %".2227", 0x3ff7154760000000
  %"fadd.90" = fadd float %"fmul.82", %".2229"
  %".2230" = bitcast ptr %"R12" to ptr
  store float %"fadd.90", ptr %".2230"
  ; FFMA R12, -R11, 1.925963033500011079e-08, R12
  %".2233" = load float, ptr %"R11"
  %".2234" = fneg float %".2233"
  %".2235" = load float, ptr %"R12"
  %"fmul.83" = fmul float %".2234", 0x3e54ae0c00000000
  %"fadd.91" = fadd float %"fmul.83", %".2235"
  %".2236" = bitcast ptr %"R12" to ptr
  store float %"fadd.91", ptr %".2236"
  ; MUFU.EX2 R11, R12
  %".2239" = load float, ptr %"R12"
  %"llvm_exp2_f32_result.1" = call float @"llvm.exp2.f32"(float %".2239")
  %".2240" = bitcast ptr %"R11" to ptr
  store float %"llvm_exp2_f32_result.1", ptr %".2240"
  ; FFMA R20, R20, R11, 1
  %".2243" = load float, ptr %"R20"
  %".2244" = load float, ptr %"R11"
  %"fmul.84" = fmul float %".2243", %".2244"
  %"fadd.92" = fadd float %"fmul.84", 0x3ff0000000000000
  %".2245" = bitcast ptr %"R20" to ptr
  store float %"fadd.92", ptr %".2245"
  ; @!P4 BRA `(.L_x_10)
  %".2248" = load i1, ptr %"P4"
  %".2249" = icmp ne i1 %".2248", 1
  br i1 %".2249", label %".L_x_10", label %".L_x_7_split_0x13c0"
.L_x_7_split_0x13c0:
  ; ISETP.GE.U32.AND P0, PT, R5, 0x3, PT
  %".2252" = load i32, ptr %"R5"
  %".2253" = load i1, ptr %"PT"
  %"cmp.20" = icmp sge i32 %".2252", 3
  %".2254" = xor i1 %"cmp.20", -1
  %".2255" = and i1 %"cmp.20", %".2253"
  %".2256" = and i1 %".2254", %".2253"
  store i1 %".2255", ptr %"P0"
  ; MOV R8, RZ
  %".2259" = load float, ptr %"RZ"
  %".2260" = bitcast ptr %"R8" to ptr
  store float %".2259", ptr %".2260"
  ; MOV R22, RZ
  %".2263" = load i32, ptr %"RZ"
  store i32 %".2263", ptr %"R22"
  ; @!P0 BRA `(.L_x_11)
  %".2266" = load i1, ptr %"P0"
  %".2267" = icmp ne i1 %".2266", 1
  br i1 %".2267", label %".L_x_11", label %".L_x_7_split_0x1400"
.L_x_7_split_0x1400:
  ; ISETP.GT.AND P0, PT, R7, RZ, PT
  %".2270" = load i32, ptr %"R7"
  %".2271" = load i1, ptr %"PT"
  %"cmp.21" = icmp sgt i32 %".2270", 0
  %".2272" = xor i1 %"cmp.21", -1
  %".2273" = and i1 %"cmp.21", %".2271"
  %".2274" = and i1 %".2272", %".2271"
  store i1 %".2273", ptr %"P0"
  ; MOV R8, RZ
  %".2277" = load float, ptr %"RZ"
  %".2278" = bitcast ptr %"R8" to ptr
  store float %".2277", ptr %".2278"
  ; MOV R22, RZ
  %".2281" = load i32, ptr %"RZ"
  store i32 %".2281", ptr %"R22"
  ; MOV R23, R7
  %".2284" = load i32, ptr %"R7"
  store i32 %".2284", ptr %"R23"
  ; @!P0 BRA `(.L_x_12)
  %".2287" = load i1, ptr %"P0"
  %".2288" = icmp ne i1 %".2287", 1
  br i1 %".2288", label %".L_x_12", label %".L_x_7_split_0x1450"
.L_x_7_split_0x1450:
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2291" = load i32, ptr %"R23"
  %".2292" = load i1, ptr %"PT"
  %"cmp.22" = icmp sgt i32 %".2291", 12
  %".2293" = xor i1 %"cmp.22", -1
  %".2294" = and i1 %"cmp.22", %".2292"
  %".2295" = and i1 %".2293", %".2292"
  store i1 %".2294", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".2298" = and i1 1, 1
  %".2299" = and i1 %".2298", 1
  ; @!P1 BRA `(.L_x_13)
  %".2301" = load i1, ptr %"P1"
  %".2302" = icmp ne i1 %".2301", 1
  br i1 %".2302", label %".L_x_13", label %".L_x_7_split_0x1480"
.L_x_7_split_0x1480:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2305" = xor i1 1, 1
  %".2306" = and i1 %".2305", 1
  %".2307" = and i1 %".2306", 1
  br label %".L_x_14"
.L_x_14:
  ; MOV R49, 0x4
  store i32 4, ptr %"R49"
  ; IADD3 R16, R3, R22, RZ
  %".2312" = load i32, ptr %"R3"
  %".2313" = load i32, ptr %"R22"
  %".2314" = add i32 %".2312", %".2313"
  %".2315" = add i32 %".2314", 0
  store i32 %".2315", ptr %"R16"
  ; IMAD.WIDE R12, R22, R49, c[0x0][0x168]
  %".2318" = load i32, ptr %"R22"
  %".2319" = load i32, ptr %"R49"
  %"imad_ext1.28" = zext i32 %".2318" to i64
  %"imad_ext2.28" = zext i32 %".2319" to i64
  %"imad_mul.36" = mul i64 %"imad_ext1.28", %"imad_ext2.28"
  %".2320" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.36" = add i64 %"imad_mul.36", %".2320"
  %".2321" = and i64 %"imad_add.36", 18446744069414584320
  %".2322" = lshr i64 %".2321", 32
  %"trunc32.66" = trunc i64 %".2322" to i32
  %"trunc32.67" = trunc i64 %"imad_add.36" to i32
  store i32 %"trunc32.67", ptr %"R12"
  store i32 %"trunc32.66", ptr %"R13"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x170]
  %".2326" = load i32, ptr %"R16"
  %".2327" = load i32, ptr %"R49"
  %"imad_ext1.29" = zext i32 %".2326" to i64
  %"imad_ext2.29" = zext i32 %".2327" to i64
  %"imad_mul.37" = mul i64 %"imad_ext1.29", %"imad_ext2.29"
  %".2328" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.37" = add i64 %"imad_mul.37", %".2328"
  %".2329" = and i64 %"imad_add.37", 18446744069414584320
  %".2330" = lshr i64 %".2329", 32
  %"trunc32.68" = trunc i64 %".2330" to i32
  %"trunc32.69" = trunc i64 %"imad_add.37" to i32
  store i32 %"trunc32.69", ptr %"R16"
  store i32 %"trunc32.68", ptr %"R17"
  ; IADD3 R18, R22, 0x4, RZ
  %".2334" = load i32, ptr %"R22"
  %".2335" = add i32 %".2334", 4
  %".2336" = add i32 %".2335", 0
  store i32 %".2336", ptr %"R18"
  ; LDG.E.SYS R24, [R12]
  %".2339" = load i32, ptr %"R12"
  %"zext.220" = zext i32 %".2339" to i64
  %".2340" = load i32, ptr %"R13"
  %"zext.221" = zext i32 %".2340" to i64
  %"shl.118" = shl i64 %"zext.221", 32
  %"or.105" = or i64 %"shl.118", %"zext.220"
  %"inttoptr_bytes.95" = inttoptr i64 %"or.105" to ptr addrspace(1)
  %"ptr_cast_for_access.95" = bitcast ptr addrspace(1) %"inttoptr_bytes.95" to ptr addrspace(1)
  %".2341" = load float, ptr addrspace(1) %"ptr_cast_for_access.95"
  %".2342" = bitcast ptr %"R24" to ptr
  store float %".2341", ptr %".2342"
  ; IADD3 R14, R3, R18, RZ
  %".2345" = load i32, ptr %"R3"
  %".2346" = load i32, ptr %"R18"
  %".2347" = add i32 %".2345", %".2346"
  %".2348" = add i32 %".2347", 0
  store i32 %".2348", ptr %"R14"
  ; LDG.E.SYS R21, [R16]
  %".2351" = load i32, ptr %"R16"
  %"zext.222" = zext i32 %".2351" to i64
  %".2352" = load i32, ptr %"R17"
  %"zext.223" = zext i32 %".2352" to i64
  %"shl.119" = shl i64 %"zext.223", 32
  %"or.106" = or i64 %"shl.119", %"zext.222"
  %"inttoptr_bytes.96" = inttoptr i64 %"or.106" to ptr addrspace(1)
  %"ptr_cast_for_access.96" = bitcast ptr addrspace(1) %"inttoptr_bytes.96" to ptr addrspace(1)
  %".2353" = load float, ptr addrspace(1) %"ptr_cast_for_access.96"
  %".2354" = bitcast ptr %"R21" to ptr
  store float %".2353", ptr %".2354"
  ; LDG.E.SYS R36, [R12+0x4]
  %".2357" = load i32, ptr %"R12"
  %"zext.224" = zext i32 %".2357" to i64
  %".2358" = load i32, ptr %"R13"
  %"zext.225" = zext i32 %".2358" to i64
  %"shl.120" = shl i64 %"zext.225", 32
  %"or.107" = or i64 %"shl.120", %"zext.224"
  %"ptr_plus_imm.69" = add i64 %"or.107", 4
  %"inttoptr_bytes.97" = inttoptr i64 %"ptr_plus_imm.69" to ptr addrspace(1)
  %"ptr_cast_for_access.97" = bitcast ptr addrspace(1) %"inttoptr_bytes.97" to ptr addrspace(1)
  %".2359" = load float, ptr addrspace(1) %"ptr_cast_for_access.97"
  %".2360" = bitcast ptr %"R36" to ptr
  store float %".2359", ptr %".2360"
  ; IMAD.WIDE R18, R18, R49, c[0x0][0x168]
  %".2363" = load i32, ptr %"R18"
  %".2364" = load i32, ptr %"R49"
  %"imad_ext1.30" = zext i32 %".2363" to i64
  %"imad_ext2.30" = zext i32 %".2364" to i64
  %"imad_mul.38" = mul i64 %"imad_ext1.30", %"imad_ext2.30"
  %".2365" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.38" = add i64 %"imad_mul.38", %".2365"
  %".2366" = and i64 %"imad_add.38", 18446744069414584320
  %".2367" = lshr i64 %".2366", 32
  %"trunc32.70" = trunc i64 %".2367" to i32
  %"trunc32.71" = trunc i64 %"imad_add.38" to i32
  store i32 %"trunc32.71", ptr %"R18"
  store i32 %"trunc32.70", ptr %"R19"
  ; LDG.E.SYS R25, [R16+0x4]
  %".2371" = load i32, ptr %"R16"
  %"zext.226" = zext i32 %".2371" to i64
  %".2372" = load i32, ptr %"R17"
  %"zext.227" = zext i32 %".2372" to i64
  %"shl.121" = shl i64 %"zext.227", 32
  %"or.108" = or i64 %"shl.121", %"zext.226"
  %"ptr_plus_imm.70" = add i64 %"or.108", 4
  %"inttoptr_bytes.98" = inttoptr i64 %"ptr_plus_imm.70" to ptr addrspace(1)
  %"ptr_cast_for_access.98" = bitcast ptr addrspace(1) %"inttoptr_bytes.98" to ptr addrspace(1)
  %".2373" = load float, ptr addrspace(1) %"ptr_cast_for_access.98"
  %".2374" = bitcast ptr %"R25" to ptr
  store float %".2373", ptr %".2374"
  ; LDG.E.SYS R46, [R12+0x8]
  %".2377" = load i32, ptr %"R12"
  %"zext.228" = zext i32 %".2377" to i64
  %".2378" = load i32, ptr %"R13"
  %"zext.229" = zext i32 %".2378" to i64
  %"shl.122" = shl i64 %"zext.229", 32
  %"or.109" = or i64 %"shl.122", %"zext.228"
  %"ptr_plus_imm.71" = add i64 %"or.109", 8
  %"inttoptr_bytes.99" = inttoptr i64 %"ptr_plus_imm.71" to ptr addrspace(1)
  %"ptr_cast_for_access.99" = bitcast ptr addrspace(1) %"inttoptr_bytes.99" to ptr addrspace(1)
  %".2379" = load float, ptr addrspace(1) %"ptr_cast_for_access.99"
  %".2380" = bitcast ptr %"R46" to ptr
  store float %".2379", ptr %".2380"
  ; IMAD.WIDE R14, R14, R49, c[0x0][0x170]
  %".2383" = load i32, ptr %"R14"
  %".2384" = load i32, ptr %"R49"
  %"imad_ext1.31" = zext i32 %".2383" to i64
  %"imad_ext2.31" = zext i32 %".2384" to i64
  %"imad_mul.39" = mul i64 %"imad_ext1.31", %"imad_ext2.31"
  %".2385" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.39" = add i64 %"imad_mul.39", %".2385"
  %".2386" = and i64 %"imad_add.39", 18446744069414584320
  %".2387" = lshr i64 %".2386", 32
  %"trunc32.72" = trunc i64 %".2387" to i32
  %"trunc32.73" = trunc i64 %"imad_add.39" to i32
  store i32 %"trunc32.73", ptr %"R14"
  store i32 %"trunc32.72", ptr %"R15"
  ; LDG.E.SYS R34, [R16+0x8]
  %".2391" = load i32, ptr %"R16"
  %"zext.230" = zext i32 %".2391" to i64
  %".2392" = load i32, ptr %"R17"
  %"zext.231" = zext i32 %".2392" to i64
  %"shl.123" = shl i64 %"zext.231", 32
  %"or.110" = or i64 %"shl.123", %"zext.230"
  %"ptr_plus_imm.72" = add i64 %"or.110", 8
  %"inttoptr_bytes.100" = inttoptr i64 %"ptr_plus_imm.72" to ptr addrspace(1)
  %"ptr_cast_for_access.100" = bitcast ptr addrspace(1) %"inttoptr_bytes.100" to ptr addrspace(1)
  %".2393" = load float, ptr addrspace(1) %"ptr_cast_for_access.100"
  %".2394" = bitcast ptr %"R34" to ptr
  store float %".2393", ptr %".2394"
  ; LDG.E.SYS R44, [R12+0xc]
  %".2397" = load i32, ptr %"R12"
  %"zext.232" = zext i32 %".2397" to i64
  %".2398" = load i32, ptr %"R13"
  %"zext.233" = zext i32 %".2398" to i64
  %"shl.124" = shl i64 %"zext.233", 32
  %"or.111" = or i64 %"shl.124", %"zext.232"
  %"ptr_plus_imm.73" = add i64 %"or.111", 12
  %"inttoptr_bytes.101" = inttoptr i64 %"ptr_plus_imm.73" to ptr addrspace(1)
  %"ptr_cast_for_access.101" = bitcast ptr addrspace(1) %"inttoptr_bytes.101" to ptr addrspace(1)
  %".2399" = load float, ptr addrspace(1) %"ptr_cast_for_access.101"
  %".2400" = bitcast ptr %"R44" to ptr
  store float %".2399", ptr %".2400"
  ; IADD3 R10, R22, 0x8, RZ
  %".2403" = load i32, ptr %"R22"
  %".2404" = add i32 %".2403", 8
  %".2405" = add i32 %".2404", 0
  store i32 %".2405", ptr %"R10"
  ; LDG.E.SYS R41, [R16+0xc]
  %".2408" = load i32, ptr %"R16"
  %"zext.234" = zext i32 %".2408" to i64
  %".2409" = load i32, ptr %"R17"
  %"zext.235" = zext i32 %".2409" to i64
  %"shl.125" = shl i64 %"zext.235", 32
  %"or.112" = or i64 %"shl.125", %"zext.234"
  %"ptr_plus_imm.74" = add i64 %"or.112", 12
  %"inttoptr_bytes.102" = inttoptr i64 %"ptr_plus_imm.74" to ptr addrspace(1)
  %"ptr_cast_for_access.102" = bitcast ptr addrspace(1) %"inttoptr_bytes.102" to ptr addrspace(1)
  %".2410" = load float, ptr addrspace(1) %"ptr_cast_for_access.102"
  %".2411" = bitcast ptr %"R41" to ptr
  store float %".2410", ptr %".2411"
  ; LDG.E.SYS R42, [R18]
  %".2414" = load i32, ptr %"R18"
  %"zext.236" = zext i32 %".2414" to i64
  %".2415" = load i32, ptr %"R19"
  %"zext.237" = zext i32 %".2415" to i64
  %"shl.126" = shl i64 %"zext.237", 32
  %"or.113" = or i64 %"shl.126", %"zext.236"
  %"inttoptr_bytes.103" = inttoptr i64 %"or.113" to ptr addrspace(1)
  %"ptr_cast_for_access.103" = bitcast ptr addrspace(1) %"inttoptr_bytes.103" to ptr addrspace(1)
  %".2416" = load float, ptr addrspace(1) %"ptr_cast_for_access.103"
  %".2417" = bitcast ptr %"R42" to ptr
  store float %".2416", ptr %".2417"
  ; IADD3 R50, R3, R10, RZ
  %".2420" = load i32, ptr %"R3"
  %".2421" = load i32, ptr %"R10"
  %".2422" = add i32 %".2420", %".2421"
  %".2423" = add i32 %".2422", 0
  store i32 %".2423", ptr %"R50"
  ; LDG.E.SYS R39, [R14]
  %".2426" = load i32, ptr %"R14"
  %"zext.238" = zext i32 %".2426" to i64
  %".2427" = load i32, ptr %"R15"
  %"zext.239" = zext i32 %".2427" to i64
  %"shl.127" = shl i64 %"zext.239", 32
  %"or.114" = or i64 %"shl.127", %"zext.238"
  %"inttoptr_bytes.104" = inttoptr i64 %"or.114" to ptr addrspace(1)
  %"ptr_cast_for_access.104" = bitcast ptr addrspace(1) %"inttoptr_bytes.104" to ptr addrspace(1)
  %".2428" = load float, ptr addrspace(1) %"ptr_cast_for_access.104"
  %".2429" = bitcast ptr %"R39" to ptr
  store float %".2428", ptr %".2429"
  ; LDG.E.SYS R40, [R18+0x4]
  %".2432" = load i32, ptr %"R18"
  %"zext.240" = zext i32 %".2432" to i64
  %".2433" = load i32, ptr %"R19"
  %"zext.241" = zext i32 %".2433" to i64
  %"shl.128" = shl i64 %"zext.241", 32
  %"or.115" = or i64 %"shl.128", %"zext.240"
  %"ptr_plus_imm.75" = add i64 %"or.115", 4
  %"inttoptr_bytes.105" = inttoptr i64 %"ptr_plus_imm.75" to ptr addrspace(1)
  %"ptr_cast_for_access.105" = bitcast ptr addrspace(1) %"inttoptr_bytes.105" to ptr addrspace(1)
  %".2434" = load float, ptr addrspace(1) %"ptr_cast_for_access.105"
  %".2435" = bitcast ptr %"R40" to ptr
  store float %".2434", ptr %".2435"
  ; IMAD.WIDE R10, R10, R49, c[0x0][0x168]
  %".2438" = load i32, ptr %"R10"
  %".2439" = load i32, ptr %"R49"
  %"imad_ext1.32" = zext i32 %".2438" to i64
  %"imad_ext2.32" = zext i32 %".2439" to i64
  %"imad_mul.40" = mul i64 %"imad_ext1.32", %"imad_ext2.32"
  %".2440" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.40" = add i64 %"imad_mul.40", %".2440"
  %".2441" = and i64 %"imad_add.40", 18446744069414584320
  %".2442" = lshr i64 %".2441", 32
  %"trunc32.74" = trunc i64 %".2442" to i32
  %"trunc32.75" = trunc i64 %"imad_add.40" to i32
  store i32 %"trunc32.75", ptr %"R10"
  store i32 %"trunc32.74", ptr %"R11"
  ; LDG.E.SYS R37, [R14+0x4]
  %".2446" = load i32, ptr %"R14"
  %"zext.242" = zext i32 %".2446" to i64
  %".2447" = load i32, ptr %"R15"
  %"zext.243" = zext i32 %".2447" to i64
  %"shl.129" = shl i64 %"zext.243", 32
  %"or.116" = or i64 %"shl.129", %"zext.242"
  %"ptr_plus_imm.76" = add i64 %"or.116", 4
  %"inttoptr_bytes.106" = inttoptr i64 %"ptr_plus_imm.76" to ptr addrspace(1)
  %"ptr_cast_for_access.106" = bitcast ptr addrspace(1) %"inttoptr_bytes.106" to ptr addrspace(1)
  %".2448" = load float, ptr addrspace(1) %"ptr_cast_for_access.106"
  %".2449" = bitcast ptr %"R37" to ptr
  store float %".2448", ptr %".2449"
  ; LDG.E.SYS R38, [R18+0x8]
  %".2452" = load i32, ptr %"R18"
  %"zext.244" = zext i32 %".2452" to i64
  %".2453" = load i32, ptr %"R19"
  %"zext.245" = zext i32 %".2453" to i64
  %"shl.130" = shl i64 %"zext.245", 32
  %"or.117" = or i64 %"shl.130", %"zext.244"
  %"ptr_plus_imm.77" = add i64 %"or.117", 8
  %"inttoptr_bytes.107" = inttoptr i64 %"ptr_plus_imm.77" to ptr addrspace(1)
  %"ptr_cast_for_access.107" = bitcast ptr addrspace(1) %"inttoptr_bytes.107" to ptr addrspace(1)
  %".2454" = load float, ptr addrspace(1) %"ptr_cast_for_access.107"
  %".2455" = bitcast ptr %"R38" to ptr
  store float %".2454", ptr %".2455"
  ; IMAD.WIDE R12, R50, R49, c[0x0][0x170]
  %".2458" = load i32, ptr %"R50"
  %".2459" = load i32, ptr %"R49"
  %"imad_ext1.33" = zext i32 %".2458" to i64
  %"imad_ext2.33" = zext i32 %".2459" to i64
  %"imad_mul.41" = mul i64 %"imad_ext1.33", %"imad_ext2.33"
  %".2460" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.41" = add i64 %"imad_mul.41", %".2460"
  %".2461" = and i64 %"imad_add.41", 18446744069414584320
  %".2462" = lshr i64 %".2461", 32
  %"trunc32.76" = trunc i64 %".2462" to i32
  %"trunc32.77" = trunc i64 %"imad_add.41" to i32
  store i32 %"trunc32.77", ptr %"R12"
  store i32 %"trunc32.76", ptr %"R13"
  ; LDG.E.SYS R35, [R14+0x8]
  %".2466" = load i32, ptr %"R14"
  %"zext.246" = zext i32 %".2466" to i64
  %".2467" = load i32, ptr %"R15"
  %"zext.247" = zext i32 %".2467" to i64
  %"shl.131" = shl i64 %"zext.247", 32
  %"or.118" = or i64 %"shl.131", %"zext.246"
  %"ptr_plus_imm.78" = add i64 %"or.118", 8
  %"inttoptr_bytes.108" = inttoptr i64 %"ptr_plus_imm.78" to ptr addrspace(1)
  %"ptr_cast_for_access.108" = bitcast ptr addrspace(1) %"inttoptr_bytes.108" to ptr addrspace(1)
  %".2468" = load float, ptr addrspace(1) %"ptr_cast_for_access.108"
  %".2469" = bitcast ptr %"R35" to ptr
  store float %".2468", ptr %".2469"
  ; LDG.E.SYS R48, [R18+0xc]
  %".2472" = load i32, ptr %"R18"
  %"zext.248" = zext i32 %".2472" to i64
  %".2473" = load i32, ptr %"R19"
  %"zext.249" = zext i32 %".2473" to i64
  %"shl.132" = shl i64 %"zext.249", 32
  %"or.119" = or i64 %"shl.132", %"zext.248"
  %"ptr_plus_imm.79" = add i64 %"or.119", 12
  %"inttoptr_bytes.109" = inttoptr i64 %"ptr_plus_imm.79" to ptr addrspace(1)
  %"ptr_cast_for_access.109" = bitcast ptr addrspace(1) %"inttoptr_bytes.109" to ptr addrspace(1)
  %".2474" = load float, ptr addrspace(1) %"ptr_cast_for_access.109"
  %".2475" = bitcast ptr %"R48" to ptr
  store float %".2474", ptr %".2475"
  ; IADD3 R16, R22, 0xc, RZ
  %".2478" = load i32, ptr %"R22"
  %".2479" = add i32 %".2478", 12
  %".2480" = add i32 %".2479", 0
  store i32 %".2480", ptr %"R16"
  ; LDG.E.SYS R47, [R14+0xc]
  %".2483" = load i32, ptr %"R14"
  %"zext.250" = zext i32 %".2483" to i64
  %".2484" = load i32, ptr %"R15"
  %"zext.251" = zext i32 %".2484" to i64
  %"shl.133" = shl i64 %"zext.251", 32
  %"or.120" = or i64 %"shl.133", %"zext.250"
  %"ptr_plus_imm.80" = add i64 %"or.120", 12
  %"inttoptr_bytes.110" = inttoptr i64 %"ptr_plus_imm.80" to ptr addrspace(1)
  %"ptr_cast_for_access.110" = bitcast ptr addrspace(1) %"inttoptr_bytes.110" to ptr addrspace(1)
  %".2485" = load float, ptr addrspace(1) %"ptr_cast_for_access.110"
  %".2486" = bitcast ptr %"R47" to ptr
  store float %".2485", ptr %".2486"
  ; LDG.E.SYS R54, [R10]
  %".2489" = load i32, ptr %"R10"
  %"zext.252" = zext i32 %".2489" to i64
  %".2490" = load i32, ptr %"R11"
  %"zext.253" = zext i32 %".2490" to i64
  %"shl.134" = shl i64 %"zext.253", 32
  %"or.121" = or i64 %"shl.134", %"zext.252"
  %"inttoptr_bytes.111" = inttoptr i64 %"or.121" to ptr addrspace(1)
  %"ptr_cast_for_access.111" = bitcast ptr addrspace(1) %"inttoptr_bytes.111" to ptr addrspace(1)
  %".2491" = load float, ptr addrspace(1) %"ptr_cast_for_access.111"
  %".2492" = bitcast ptr %"R54" to ptr
  store float %".2491", ptr %".2492"
  ; IADD3 R58, R3, R16, RZ
  %".2495" = load i32, ptr %"R3"
  %".2496" = load i32, ptr %"R16"
  %".2497" = add i32 %".2495", %".2496"
  %".2498" = add i32 %".2497", 0
  store i32 %".2498", ptr %"R58"
  ; LDG.E.SYS R45, [R12]
  %".2501" = load i32, ptr %"R12"
  %"zext.254" = zext i32 %".2501" to i64
  %".2502" = load i32, ptr %"R13"
  %"zext.255" = zext i32 %".2502" to i64
  %"shl.135" = shl i64 %"zext.255", 32
  %"or.122" = or i64 %"shl.135", %"zext.254"
  %"inttoptr_bytes.112" = inttoptr i64 %"or.122" to ptr addrspace(1)
  %"ptr_cast_for_access.112" = bitcast ptr addrspace(1) %"inttoptr_bytes.112" to ptr addrspace(1)
  %".2503" = load float, ptr addrspace(1) %"ptr_cast_for_access.112"
  %".2504" = bitcast ptr %"R45" to ptr
  store float %".2503", ptr %".2504"
  ; LDG.E.SYS R52, [R10+0x4]
  %".2507" = load i32, ptr %"R10"
  %"zext.256" = zext i32 %".2507" to i64
  %".2508" = load i32, ptr %"R11"
  %"zext.257" = zext i32 %".2508" to i64
  %"shl.136" = shl i64 %"zext.257", 32
  %"or.123" = or i64 %"shl.136", %"zext.256"
  %"ptr_plus_imm.81" = add i64 %"or.123", 4
  %"inttoptr_bytes.113" = inttoptr i64 %"ptr_plus_imm.81" to ptr addrspace(1)
  %"ptr_cast_for_access.113" = bitcast ptr addrspace(1) %"inttoptr_bytes.113" to ptr addrspace(1)
  %".2509" = load float, ptr addrspace(1) %"ptr_cast_for_access.113"
  %".2510" = bitcast ptr %"R52" to ptr
  store float %".2509", ptr %".2510"
  ; IMAD.WIDE R16, R16, R49, c[0x0][0x168]
  %".2513" = load i32, ptr %"R16"
  %".2514" = load i32, ptr %"R49"
  %"imad_ext1.34" = zext i32 %".2513" to i64
  %"imad_ext2.34" = zext i32 %".2514" to i64
  %"imad_mul.42" = mul i64 %"imad_ext1.34", %"imad_ext2.34"
  %".2515" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.42" = add i64 %"imad_mul.42", %".2515"
  %".2516" = and i64 %"imad_add.42", 18446744069414584320
  %".2517" = lshr i64 %".2516", 32
  %"trunc32.78" = trunc i64 %".2517" to i32
  %"trunc32.79" = trunc i64 %"imad_add.42" to i32
  store i32 %"trunc32.79", ptr %"R16"
  store i32 %"trunc32.78", ptr %"R17"
  ; LDG.E.SYS R43, [R12+0x4]
  %".2521" = load i32, ptr %"R12"
  %"zext.258" = zext i32 %".2521" to i64
  %".2522" = load i32, ptr %"R13"
  %"zext.259" = zext i32 %".2522" to i64
  %"shl.137" = shl i64 %"zext.259", 32
  %"or.124" = or i64 %"shl.137", %"zext.258"
  %"ptr_plus_imm.82" = add i64 %"or.124", 4
  %"inttoptr_bytes.114" = inttoptr i64 %"ptr_plus_imm.82" to ptr addrspace(1)
  %"ptr_cast_for_access.114" = bitcast ptr addrspace(1) %"inttoptr_bytes.114" to ptr addrspace(1)
  %".2523" = load float, ptr addrspace(1) %"ptr_cast_for_access.114"
  %".2524" = bitcast ptr %"R43" to ptr
  store float %".2523", ptr %".2524"
  ; LDG.E.SYS R50, [R10+0x8]
  %".2527" = load i32, ptr %"R10"
  %"zext.260" = zext i32 %".2527" to i64
  %".2528" = load i32, ptr %"R11"
  %"zext.261" = zext i32 %".2528" to i64
  %"shl.138" = shl i64 %"zext.261", 32
  %"or.125" = or i64 %"shl.138", %"zext.260"
  %"ptr_plus_imm.83" = add i64 %"or.125", 8
  %"inttoptr_bytes.115" = inttoptr i64 %"ptr_plus_imm.83" to ptr addrspace(1)
  %"ptr_cast_for_access.115" = bitcast ptr addrspace(1) %"inttoptr_bytes.115" to ptr addrspace(1)
  %".2529" = load float, ptr addrspace(1) %"ptr_cast_for_access.115"
  %".2530" = bitcast ptr %"R50" to ptr
  store float %".2529", ptr %".2530"
  ; IMAD.WIDE R14, R58, R49, c[0x0][0x170]
  %".2533" = load i32, ptr %"R58"
  %".2534" = load i32, ptr %"R49"
  %"imad_ext1.35" = zext i32 %".2533" to i64
  %"imad_ext2.35" = zext i32 %".2534" to i64
  %"imad_mul.43" = mul i64 %"imad_ext1.35", %"imad_ext2.35"
  %".2535" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.43" = add i64 %"imad_mul.43", %".2535"
  %".2536" = and i64 %"imad_add.43", 18446744069414584320
  %".2537" = lshr i64 %".2536", 32
  %"trunc32.80" = trunc i64 %".2537" to i32
  %"trunc32.81" = trunc i64 %"imad_add.43" to i32
  store i32 %"trunc32.81", ptr %"R14"
  store i32 %"trunc32.80", ptr %"R15"
  ; LDG.E.SYS R18, [R12+0x8]
  %".2541" = load i32, ptr %"R12"
  %"zext.262" = zext i32 %".2541" to i64
  %".2542" = load i32, ptr %"R13"
  %"zext.263" = zext i32 %".2542" to i64
  %"shl.139" = shl i64 %"zext.263", 32
  %"or.126" = or i64 %"shl.139", %"zext.262"
  %"ptr_plus_imm.84" = add i64 %"or.126", 8
  %"inttoptr_bytes.116" = inttoptr i64 %"ptr_plus_imm.84" to ptr addrspace(1)
  %"ptr_cast_for_access.116" = bitcast ptr addrspace(1) %"inttoptr_bytes.116" to ptr addrspace(1)
  %".2543" = load float, ptr addrspace(1) %"ptr_cast_for_access.116"
  %".2544" = bitcast ptr %"R18" to ptr
  store float %".2543", ptr %".2544"
  ; LDG.E.SYS R56, [R10+0xc]
  %".2547" = load i32, ptr %"R10"
  %"zext.264" = zext i32 %".2547" to i64
  %".2548" = load i32, ptr %"R11"
  %"zext.265" = zext i32 %".2548" to i64
  %"shl.140" = shl i64 %"zext.265", 32
  %"or.127" = or i64 %"shl.140", %"zext.264"
  %"ptr_plus_imm.85" = add i64 %"or.127", 12
  %"inttoptr_bytes.117" = inttoptr i64 %"ptr_plus_imm.85" to ptr addrspace(1)
  %"ptr_cast_for_access.117" = bitcast ptr addrspace(1) %"inttoptr_bytes.117" to ptr addrspace(1)
  %".2549" = load float, ptr addrspace(1) %"ptr_cast_for_access.117"
  %".2550" = bitcast ptr %"R56" to ptr
  store float %".2549", ptr %".2550"
  ; LDG.E.SYS R55, [R12+0xc]
  %".2553" = load i32, ptr %"R12"
  %"zext.266" = zext i32 %".2553" to i64
  %".2554" = load i32, ptr %"R13"
  %"zext.267" = zext i32 %".2554" to i64
  %"shl.141" = shl i64 %"zext.267", 32
  %"or.128" = or i64 %"shl.141", %"zext.266"
  %"ptr_plus_imm.86" = add i64 %"or.128", 12
  %"inttoptr_bytes.118" = inttoptr i64 %"ptr_plus_imm.86" to ptr addrspace(1)
  %"ptr_cast_for_access.118" = bitcast ptr addrspace(1) %"inttoptr_bytes.118" to ptr addrspace(1)
  %".2555" = load float, ptr addrspace(1) %"ptr_cast_for_access.118"
  %".2556" = bitcast ptr %"R55" to ptr
  store float %".2555", ptr %".2556"
  ; LDG.E.SYS R51, [R16]
  %".2559" = load i32, ptr %"R16"
  %"zext.268" = zext i32 %".2559" to i64
  %".2560" = load i32, ptr %"R17"
  %"zext.269" = zext i32 %".2560" to i64
  %"shl.142" = shl i64 %"zext.269", 32
  %"or.129" = or i64 %"shl.142", %"zext.268"
  %"inttoptr_bytes.119" = inttoptr i64 %"or.129" to ptr addrspace(1)
  %"ptr_cast_for_access.119" = bitcast ptr addrspace(1) %"inttoptr_bytes.119" to ptr addrspace(1)
  %".2561" = load float, ptr addrspace(1) %"ptr_cast_for_access.119"
  %".2562" = bitcast ptr %"R51" to ptr
  store float %".2561", ptr %".2562"
  ; LDG.E.SYS R53, [R14]
  %".2565" = load i32, ptr %"R14"
  %"zext.270" = zext i32 %".2565" to i64
  %".2566" = load i32, ptr %"R15"
  %"zext.271" = zext i32 %".2566" to i64
  %"shl.143" = shl i64 %"zext.271", 32
  %"or.130" = or i64 %"shl.143", %"zext.270"
  %"inttoptr_bytes.120" = inttoptr i64 %"or.130" to ptr addrspace(1)
  %"ptr_cast_for_access.120" = bitcast ptr addrspace(1) %"inttoptr_bytes.120" to ptr addrspace(1)
  %".2567" = load float, ptr addrspace(1) %"ptr_cast_for_access.120"
  %".2568" = bitcast ptr %"R53" to ptr
  store float %".2567", ptr %".2568"
  ; LDG.E.SYS R60, [R16+0x4]
  %".2571" = load i32, ptr %"R16"
  %"zext.272" = zext i32 %".2571" to i64
  %".2572" = load i32, ptr %"R17"
  %"zext.273" = zext i32 %".2572" to i64
  %"shl.144" = shl i64 %"zext.273", 32
  %"or.131" = or i64 %"shl.144", %"zext.272"
  %"ptr_plus_imm.87" = add i64 %"or.131", 4
  %"inttoptr_bytes.121" = inttoptr i64 %"ptr_plus_imm.87" to ptr addrspace(1)
  %"ptr_cast_for_access.121" = bitcast ptr addrspace(1) %"inttoptr_bytes.121" to ptr addrspace(1)
  %".2573" = load float, ptr addrspace(1) %"ptr_cast_for_access.121"
  %".2574" = bitcast ptr %"R60" to ptr
  store float %".2573", ptr %".2574"
  ; LDG.E.SYS R49, [R14+0x4]
  %".2577" = load i32, ptr %"R14"
  %"zext.274" = zext i32 %".2577" to i64
  %".2578" = load i32, ptr %"R15"
  %"zext.275" = zext i32 %".2578" to i64
  %"shl.145" = shl i64 %"zext.275", 32
  %"or.132" = or i64 %"shl.145", %"zext.274"
  %"ptr_plus_imm.88" = add i64 %"or.132", 4
  %"inttoptr_bytes.122" = inttoptr i64 %"ptr_plus_imm.88" to ptr addrspace(1)
  %"ptr_cast_for_access.122" = bitcast ptr addrspace(1) %"inttoptr_bytes.122" to ptr addrspace(1)
  %".2579" = load float, ptr addrspace(1) %"ptr_cast_for_access.122"
  %".2580" = bitcast ptr %"R49" to ptr
  store float %".2579", ptr %".2580"
  ; LDG.E.SYS R58, [R16+0x8]
  %".2583" = load i32, ptr %"R16"
  %"zext.276" = zext i32 %".2583" to i64
  %".2584" = load i32, ptr %"R17"
  %"zext.277" = zext i32 %".2584" to i64
  %"shl.146" = shl i64 %"zext.277", 32
  %"or.133" = or i64 %"shl.146", %"zext.276"
  %"ptr_plus_imm.89" = add i64 %"or.133", 8
  %"inttoptr_bytes.123" = inttoptr i64 %"ptr_plus_imm.89" to ptr addrspace(1)
  %"ptr_cast_for_access.123" = bitcast ptr addrspace(1) %"inttoptr_bytes.123" to ptr addrspace(1)
  %".2585" = load float, ptr addrspace(1) %"ptr_cast_for_access.123"
  %".2586" = bitcast ptr %"R58" to ptr
  store float %".2585", ptr %".2586"
  ; LDG.E.SYS R19, [R14+0x8]
  %".2589" = load i32, ptr %"R14"
  %"zext.278" = zext i32 %".2589" to i64
  %".2590" = load i32, ptr %"R15"
  %"zext.279" = zext i32 %".2590" to i64
  %"shl.147" = shl i64 %"zext.279", 32
  %"or.134" = or i64 %"shl.147", %"zext.278"
  %"ptr_plus_imm.90" = add i64 %"or.134", 8
  %"inttoptr_bytes.124" = inttoptr i64 %"ptr_plus_imm.90" to ptr addrspace(1)
  %"ptr_cast_for_access.124" = bitcast ptr addrspace(1) %"inttoptr_bytes.124" to ptr addrspace(1)
  %".2591" = load float, ptr addrspace(1) %"ptr_cast_for_access.124"
  %".2592" = bitcast ptr %"R19" to ptr
  store float %".2591", ptr %".2592"
  ; LDG.E.SYS R57, [R16+0xc]
  %".2595" = load i32, ptr %"R16"
  %"zext.280" = zext i32 %".2595" to i64
  %".2596" = load i32, ptr %"R17"
  %"zext.281" = zext i32 %".2596" to i64
  %"shl.148" = shl i64 %"zext.281", 32
  %"or.135" = or i64 %"shl.148", %"zext.280"
  %"ptr_plus_imm.91" = add i64 %"or.135", 12
  %"inttoptr_bytes.125" = inttoptr i64 %"ptr_plus_imm.91" to ptr addrspace(1)
  %"ptr_cast_for_access.125" = bitcast ptr addrspace(1) %"inttoptr_bytes.125" to ptr addrspace(1)
  %".2597" = load float, ptr addrspace(1) %"ptr_cast_for_access.125"
  %".2598" = bitcast ptr %"R57" to ptr
  store float %".2597", ptr %".2598"
  ; LDG.E.SYS R59, [R14+0xc]
  %".2601" = load i32, ptr %"R14"
  %"zext.282" = zext i32 %".2601" to i64
  %".2602" = load i32, ptr %"R15"
  %"zext.283" = zext i32 %".2602" to i64
  %"shl.149" = shl i64 %"zext.283", 32
  %"or.136" = or i64 %"shl.149", %"zext.282"
  %"ptr_plus_imm.92" = add i64 %"or.136", 12
  %"inttoptr_bytes.126" = inttoptr i64 %"ptr_plus_imm.92" to ptr addrspace(1)
  %"ptr_cast_for_access.126" = bitcast ptr addrspace(1) %"inttoptr_bytes.126" to ptr addrspace(1)
  %".2603" = load float, ptr addrspace(1) %"ptr_cast_for_access.126"
  %".2604" = bitcast ptr %"R59" to ptr
  store float %".2603", ptr %".2604"
  ; IADD3 R23, R23, -0x10, RZ
  %".2607" = load i32, ptr %"R23"
  %".2608" = add i32 %".2607", -16
  %".2609" = add i32 %".2608", 0
  store i32 %".2609", ptr %"R23"
  ; IADD3 R22, R22, 0x10, RZ
  %".2612" = load i32, ptr %"R22"
  %".2613" = add i32 %".2612", 16
  %".2614" = add i32 %".2613", 0
  store i32 %".2614", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R23, 0xc, PT
  %".2617" = load i32, ptr %"R23"
  %".2618" = load i1, ptr %"PT"
  %"cmp.23" = icmp sgt i32 %".2617", 12
  %".2619" = xor i1 %"cmp.23", -1
  %".2620" = and i1 %"cmp.23", %".2618"
  %".2621" = and i1 %".2619", %".2618"
  store i1 %".2620", ptr %"P1"
  ; FMUL R24, R24, R9
  %".2624" = load float, ptr %"R24"
  %".2625" = load float, ptr %"R9"
  %"fmul.85" = fmul float %".2624", %".2625"
  %".2626" = bitcast ptr %"R24" to ptr
  store float %"fmul.85", ptr %".2626"
  ; FFMA R24, R24, R21, R8
  %".2629" = load float, ptr %"R24"
  %".2630" = load float, ptr %"R21"
  %".2631" = load float, ptr %"R8"
  %"fmul.86" = fmul float %".2629", %".2630"
  %"fadd.93" = fadd float %"fmul.86", %".2631"
  %".2632" = bitcast ptr %"R24" to ptr
  store float %"fadd.93", ptr %".2632"
  ; FMUL R36, R36, R9
  %".2635" = load float, ptr %"R36"
  %".2636" = load float, ptr %"R9"
  %"fmul.87" = fmul float %".2635", %".2636"
  %".2637" = bitcast ptr %"R36" to ptr
  store float %"fmul.87", ptr %".2637"
  ; FFMA R25, R36, R25, R24
  %".2640" = load float, ptr %"R36"
  %".2641" = load float, ptr %"R25"
  %".2642" = load float, ptr %"R24"
  %"fmul.88" = fmul float %".2640", %".2641"
  %"fadd.94" = fadd float %"fmul.88", %".2642"
  %".2643" = bitcast ptr %"R25" to ptr
  store float %"fadd.94", ptr %".2643"
  ; FMUL R46, R46, R9
  %".2646" = load float, ptr %"R46"
  %".2647" = load float, ptr %"R9"
  %"fmul.89" = fmul float %".2646", %".2647"
  %".2648" = bitcast ptr %"R46" to ptr
  store float %"fmul.89", ptr %".2648"
  ; FFMA R34, R46, R34, R25
  %".2651" = load float, ptr %"R46"
  %".2652" = load float, ptr %"R34"
  %".2653" = load float, ptr %"R25"
  %"fmul.90" = fmul float %".2651", %".2652"
  %"fadd.95" = fadd float %"fmul.90", %".2653"
  %".2654" = bitcast ptr %"R34" to ptr
  store float %"fadd.95", ptr %".2654"
  ; FMUL R44, R44, R9
  %".2657" = load float, ptr %"R44"
  %".2658" = load float, ptr %"R9"
  %"fmul.91" = fmul float %".2657", %".2658"
  %".2659" = bitcast ptr %"R44" to ptr
  store float %"fmul.91", ptr %".2659"
  ; FFMA R34, R44, R41, R34
  %".2662" = load float, ptr %"R44"
  %".2663" = load float, ptr %"R41"
  %".2664" = load float, ptr %"R34"
  %"fmul.92" = fmul float %".2662", %".2663"
  %"fadd.96" = fadd float %"fmul.92", %".2664"
  %".2665" = bitcast ptr %"R34" to ptr
  store float %"fadd.96", ptr %".2665"
  ; FMUL R42, R42, R9
  %".2668" = load float, ptr %"R42"
  %".2669" = load float, ptr %"R9"
  %"fmul.93" = fmul float %".2668", %".2669"
  %".2670" = bitcast ptr %"R42" to ptr
  store float %"fmul.93", ptr %".2670"
  ; FFMA R34, R42, R39, R34
  %".2673" = load float, ptr %"R42"
  %".2674" = load float, ptr %"R39"
  %".2675" = load float, ptr %"R34"
  %"fmul.94" = fmul float %".2673", %".2674"
  %"fadd.97" = fadd float %"fmul.94", %".2675"
  %".2676" = bitcast ptr %"R34" to ptr
  store float %"fadd.97", ptr %".2676"
  ; FMUL R40, R40, R9
  %".2679" = load float, ptr %"R40"
  %".2680" = load float, ptr %"R9"
  %"fmul.95" = fmul float %".2679", %".2680"
  %".2681" = bitcast ptr %"R40" to ptr
  store float %"fmul.95", ptr %".2681"
  ; FFMA R34, R40, R37, R34
  %".2684" = load float, ptr %"R40"
  %".2685" = load float, ptr %"R37"
  %".2686" = load float, ptr %"R34"
  %"fmul.96" = fmul float %".2684", %".2685"
  %"fadd.98" = fadd float %"fmul.96", %".2686"
  %".2687" = bitcast ptr %"R34" to ptr
  store float %"fadd.98", ptr %".2687"
  ; FMUL R38, R38, R9
  %".2690" = load float, ptr %"R38"
  %".2691" = load float, ptr %"R9"
  %"fmul.97" = fmul float %".2690", %".2691"
  %".2692" = bitcast ptr %"R38" to ptr
  store float %"fmul.97", ptr %".2692"
  ; FFMA R34, R38, R35, R34
  %".2695" = load float, ptr %"R38"
  %".2696" = load float, ptr %"R35"
  %".2697" = load float, ptr %"R34"
  %"fmul.98" = fmul float %".2695", %".2696"
  %"fadd.99" = fadd float %"fmul.98", %".2697"
  %".2698" = bitcast ptr %"R34" to ptr
  store float %"fadd.99", ptr %".2698"
  ; FMUL R48, R48, R9
  %".2701" = load float, ptr %"R48"
  %".2702" = load float, ptr %"R9"
  %"fmul.99" = fmul float %".2701", %".2702"
  %".2703" = bitcast ptr %"R48" to ptr
  store float %"fmul.99", ptr %".2703"
  ; FFMA R34, R48, R47, R34
  %".2706" = load float, ptr %"R48"
  %".2707" = load float, ptr %"R47"
  %".2708" = load float, ptr %"R34"
  %"fmul.100" = fmul float %".2706", %".2707"
  %"fadd.100" = fadd float %"fmul.100", %".2708"
  %".2709" = bitcast ptr %"R34" to ptr
  store float %"fadd.100", ptr %".2709"
  ; FMUL R54, R54, R9
  %".2712" = load float, ptr %"R54"
  %".2713" = load float, ptr %"R9"
  %"fmul.101" = fmul float %".2712", %".2713"
  %".2714" = bitcast ptr %"R54" to ptr
  store float %"fmul.101", ptr %".2714"
  ; FFMA R34, R54, R45, R34
  %".2717" = load float, ptr %"R54"
  %".2718" = load float, ptr %"R45"
  %".2719" = load float, ptr %"R34"
  %"fmul.102" = fmul float %".2717", %".2718"
  %"fadd.101" = fadd float %"fmul.102", %".2719"
  %".2720" = bitcast ptr %"R34" to ptr
  store float %"fadd.101", ptr %".2720"
  ; FMUL R52, R52, R9
  %".2723" = load float, ptr %"R52"
  %".2724" = load float, ptr %"R9"
  %"fmul.103" = fmul float %".2723", %".2724"
  %".2725" = bitcast ptr %"R52" to ptr
  store float %"fmul.103", ptr %".2725"
  ; FFMA R43, R52, R43, R34
  %".2728" = load float, ptr %"R52"
  %".2729" = load float, ptr %"R43"
  %".2730" = load float, ptr %"R34"
  %"fmul.104" = fmul float %".2728", %".2729"
  %"fadd.102" = fadd float %"fmul.104", %".2730"
  %".2731" = bitcast ptr %"R43" to ptr
  store float %"fadd.102", ptr %".2731"
  ; FMUL R50, R50, R9
  %".2734" = load float, ptr %"R50"
  %".2735" = load float, ptr %"R9"
  %"fmul.105" = fmul float %".2734", %".2735"
  %".2736" = bitcast ptr %"R50" to ptr
  store float %"fmul.105", ptr %".2736"
  ; FFMA R18, R50, R18, R43
  %".2739" = load float, ptr %"R50"
  %".2740" = load float, ptr %"R18"
  %".2741" = load float, ptr %"R43"
  %"fmul.106" = fmul float %".2739", %".2740"
  %"fadd.103" = fadd float %"fmul.106", %".2741"
  %".2742" = bitcast ptr %"R18" to ptr
  store float %"fadd.103", ptr %".2742"
  ; FMUL R56, R56, R9
  %".2745" = load float, ptr %"R56"
  %".2746" = load float, ptr %"R9"
  %"fmul.107" = fmul float %".2745", %".2746"
  %".2747" = bitcast ptr %"R56" to ptr
  store float %"fmul.107", ptr %".2747"
  ; FFMA R18, R56, R55, R18
  %".2750" = load float, ptr %"R56"
  %".2751" = load float, ptr %"R55"
  %".2752" = load float, ptr %"R18"
  %"fmul.108" = fmul float %".2750", %".2751"
  %"fadd.104" = fadd float %"fmul.108", %".2752"
  %".2753" = bitcast ptr %"R18" to ptr
  store float %"fadd.104", ptr %".2753"
  ; FMUL R51, R51, R9
  %".2756" = load float, ptr %"R51"
  %".2757" = load float, ptr %"R9"
  %"fmul.109" = fmul float %".2756", %".2757"
  %".2758" = bitcast ptr %"R51" to ptr
  store float %"fmul.109", ptr %".2758"
  ; FFMA R18, R51, R53, R18
  %".2761" = load float, ptr %"R51"
  %".2762" = load float, ptr %"R53"
  %".2763" = load float, ptr %"R18"
  %"fmul.110" = fmul float %".2761", %".2762"
  %"fadd.105" = fadd float %"fmul.110", %".2763"
  %".2764" = bitcast ptr %"R18" to ptr
  store float %"fadd.105", ptr %".2764"
  ; FMUL R60, R60, R9
  %".2767" = load float, ptr %"R60"
  %".2768" = load float, ptr %"R9"
  %"fmul.111" = fmul float %".2767", %".2768"
  %".2769" = bitcast ptr %"R60" to ptr
  store float %"fmul.111", ptr %".2769"
  ; FFMA R18, R60, R49, R18
  %".2772" = load float, ptr %"R60"
  %".2773" = load float, ptr %"R49"
  %".2774" = load float, ptr %"R18"
  %"fmul.112" = fmul float %".2772", %".2773"
  %"fadd.106" = fadd float %"fmul.112", %".2774"
  %".2775" = bitcast ptr %"R18" to ptr
  store float %"fadd.106", ptr %".2775"
  ; FMUL R58, R58, R9
  %".2778" = load float, ptr %"R58"
  %".2779" = load float, ptr %"R9"
  %"fmul.113" = fmul float %".2778", %".2779"
  %".2780" = bitcast ptr %"R58" to ptr
  store float %"fmul.113", ptr %".2780"
  ; FFMA R18, R58, R19, R18
  %".2783" = load float, ptr %"R58"
  %".2784" = load float, ptr %"R19"
  %".2785" = load float, ptr %"R18"
  %"fmul.114" = fmul float %".2783", %".2784"
  %"fadd.107" = fadd float %"fmul.114", %".2785"
  %".2786" = bitcast ptr %"R18" to ptr
  store float %"fadd.107", ptr %".2786"
  ; FMUL R57, R57, R9
  %".2789" = load float, ptr %"R57"
  %".2790" = load float, ptr %"R9"
  %"fmul.115" = fmul float %".2789", %".2790"
  %".2791" = bitcast ptr %"R57" to ptr
  store float %"fmul.115", ptr %".2791"
  ; FFMA R8, R57, R59, R18
  %".2794" = load float, ptr %"R57"
  %".2795" = load float, ptr %"R59"
  %".2796" = load float, ptr %"R18"
  %"fmul.116" = fmul float %".2794", %".2795"
  %"fadd.108" = fadd float %"fmul.116", %".2796"
  %".2797" = bitcast ptr %"R8" to ptr
  store float %"fadd.108", ptr %".2797"
  ; @P1 BRA `(.L_x_14)
  %".2800" = load i1, ptr %"P1"
  %".2801" = icmp eq i1 %".2800", 1
  br i1 %".2801", label %".L_x_14", label %".L_x_13"
.L_x_13:
  ; ISETP.GT.AND P1, PT, R23, 0x4, PT
  %".2804" = load i32, ptr %"R23"
  %".2805" = load i1, ptr %"PT"
  %"cmp.24" = icmp sgt i32 %".2804", 4
  %".2806" = xor i1 %"cmp.24", -1
  %".2807" = and i1 %"cmp.24", %".2805"
  %".2808" = and i1 %".2806", %".2805"
  store i1 %".2807", ptr %"P1"
  ; @!P1 BRA `(.L_x_15)
  %".2811" = load i1, ptr %"P1"
  %".2812" = icmp ne i1 %".2811", 1
  br i1 %".2812", label %".L_x_15", label %".L_x_13_split_0x19f0"
.L_x_13_split_0x19f0:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R16, R3, R22, RZ
  %".2817" = load i32, ptr %"R3"
  %".2818" = load i32, ptr %"R22"
  %".2819" = add i32 %".2817", %".2818"
  %".2820" = add i32 %".2819", 0
  store i32 %".2820", ptr %"R16"
  ; IMAD.WIDE R14, R22, R13, c[0x0][0x168]
  %".2823" = load i32, ptr %"R22"
  %".2824" = load i32, ptr %"R13"
  %"imad_ext1.36" = zext i32 %".2823" to i64
  %"imad_ext2.36" = zext i32 %".2824" to i64
  %"imad_mul.44" = mul i64 %"imad_ext1.36", %"imad_ext2.36"
  %".2825" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.44" = add i64 %"imad_mul.44", %".2825"
  %".2826" = and i64 %"imad_add.44", 18446744069414584320
  %".2827" = lshr i64 %".2826", 32
  %"trunc32.82" = trunc i64 %".2827" to i32
  %"trunc32.83" = trunc i64 %"imad_add.44" to i32
  store i32 %"trunc32.83", ptr %"R14"
  store i32 %"trunc32.82", ptr %"R15"
  ; IMAD.WIDE R16, R16, R13, c[0x0][0x170]
  %".2831" = load i32, ptr %"R16"
  %".2832" = load i32, ptr %"R13"
  %"imad_ext1.37" = zext i32 %".2831" to i64
  %"imad_ext2.37" = zext i32 %".2832" to i64
  %"imad_mul.45" = mul i64 %"imad_ext1.37", %"imad_ext2.37"
  %".2833" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.45" = add i64 %"imad_mul.45", %".2833"
  %".2834" = and i64 %"imad_add.45", 18446744069414584320
  %".2835" = lshr i64 %".2834", 32
  %"trunc32.84" = trunc i64 %".2835" to i32
  %"trunc32.85" = trunc i64 %"imad_add.45" to i32
  store i32 %"trunc32.85", ptr %"R16"
  store i32 %"trunc32.84", ptr %"R17"
  ; IADD3 R10, R22, 0x4, RZ
  %".2839" = load i32, ptr %"R22"
  %".2840" = add i32 %".2839", 4
  %".2841" = add i32 %".2840", 0
  store i32 %".2841", ptr %"R10"
  ; LDG.E.SYS R18, [R14]
  %".2844" = load i32, ptr %"R14"
  %"zext.284" = zext i32 %".2844" to i64
  %".2845" = load i32, ptr %"R15"
  %"zext.285" = zext i32 %".2845" to i64
  %"shl.150" = shl i64 %"zext.285", 32
  %"or.137" = or i64 %"shl.150", %"zext.284"
  %"inttoptr_bytes.127" = inttoptr i64 %"or.137" to ptr addrspace(1)
  %"ptr_cast_for_access.127" = bitcast ptr addrspace(1) %"inttoptr_bytes.127" to ptr addrspace(1)
  %".2846" = load float, ptr addrspace(1) %"ptr_cast_for_access.127"
  %".2847" = bitcast ptr %"R18" to ptr
  store float %".2846", ptr %".2847"
  ; IADD3 R12, R3, R10, RZ
  %".2850" = load i32, ptr %"R3"
  %".2851" = load i32, ptr %"R10"
  %".2852" = add i32 %".2850", %".2851"
  %".2853" = add i32 %".2852", 0
  store i32 %".2853", ptr %"R12"
  ; LDG.E.SYS R19, [R16]
  %".2856" = load i32, ptr %"R16"
  %"zext.286" = zext i32 %".2856" to i64
  %".2857" = load i32, ptr %"R17"
  %"zext.287" = zext i32 %".2857" to i64
  %"shl.151" = shl i64 %"zext.287", 32
  %"or.138" = or i64 %"shl.151", %"zext.286"
  %"inttoptr_bytes.128" = inttoptr i64 %"or.138" to ptr addrspace(1)
  %"ptr_cast_for_access.128" = bitcast ptr addrspace(1) %"inttoptr_bytes.128" to ptr addrspace(1)
  %".2858" = load float, ptr addrspace(1) %"ptr_cast_for_access.128"
  %".2859" = bitcast ptr %"R19" to ptr
  store float %".2858", ptr %".2859"
  ; LDG.E.SYS R24, [R14+0x4]
  %".2862" = load i32, ptr %"R14"
  %"zext.288" = zext i32 %".2862" to i64
  %".2863" = load i32, ptr %"R15"
  %"zext.289" = zext i32 %".2863" to i64
  %"shl.152" = shl i64 %"zext.289", 32
  %"or.139" = or i64 %"shl.152", %"zext.288"
  %"ptr_plus_imm.93" = add i64 %"or.139", 4
  %"inttoptr_bytes.129" = inttoptr i64 %"ptr_plus_imm.93" to ptr addrspace(1)
  %"ptr_cast_for_access.129" = bitcast ptr addrspace(1) %"inttoptr_bytes.129" to ptr addrspace(1)
  %".2864" = load float, ptr addrspace(1) %"ptr_cast_for_access.129"
  %".2865" = bitcast ptr %"R24" to ptr
  store float %".2864", ptr %".2865"
  ; IMAD.WIDE R10, R10, R13, c[0x0][0x168]
  %".2868" = load i32, ptr %"R10"
  %".2869" = load i32, ptr %"R13"
  %"imad_ext1.38" = zext i32 %".2868" to i64
  %"imad_ext2.38" = zext i32 %".2869" to i64
  %"imad_mul.46" = mul i64 %"imad_ext1.38", %"imad_ext2.38"
  %".2870" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.46" = add i64 %"imad_mul.46", %".2870"
  %".2871" = and i64 %"imad_add.46", 18446744069414584320
  %".2872" = lshr i64 %".2871", 32
  %"trunc32.86" = trunc i64 %".2872" to i32
  %"trunc32.87" = trunc i64 %"imad_add.46" to i32
  store i32 %"trunc32.87", ptr %"R10"
  store i32 %"trunc32.86", ptr %"R11"
  ; LDG.E.SYS R21, [R16+0x4]
  %".2876" = load i32, ptr %"R16"
  %"zext.290" = zext i32 %".2876" to i64
  %".2877" = load i32, ptr %"R17"
  %"zext.291" = zext i32 %".2877" to i64
  %"shl.153" = shl i64 %"zext.291", 32
  %"or.140" = or i64 %"shl.153", %"zext.290"
  %"ptr_plus_imm.94" = add i64 %"or.140", 4
  %"inttoptr_bytes.130" = inttoptr i64 %"ptr_plus_imm.94" to ptr addrspace(1)
  %"ptr_cast_for_access.130" = bitcast ptr addrspace(1) %"inttoptr_bytes.130" to ptr addrspace(1)
  %".2878" = load float, ptr addrspace(1) %"ptr_cast_for_access.130"
  %".2879" = bitcast ptr %"R21" to ptr
  store float %".2878", ptr %".2879"
  ; LDG.E.SYS R34, [R14+0x8]
  %".2882" = load i32, ptr %"R14"
  %"zext.292" = zext i32 %".2882" to i64
  %".2883" = load i32, ptr %"R15"
  %"zext.293" = zext i32 %".2883" to i64
  %"shl.154" = shl i64 %"zext.293", 32
  %"or.141" = or i64 %"shl.154", %"zext.292"
  %"ptr_plus_imm.95" = add i64 %"or.141", 8
  %"inttoptr_bytes.131" = inttoptr i64 %"ptr_plus_imm.95" to ptr addrspace(1)
  %"ptr_cast_for_access.131" = bitcast ptr addrspace(1) %"inttoptr_bytes.131" to ptr addrspace(1)
  %".2884" = load float, ptr addrspace(1) %"ptr_cast_for_access.131"
  %".2885" = bitcast ptr %"R34" to ptr
  store float %".2884", ptr %".2885"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".2888" = load i32, ptr %"R12"
  %".2889" = load i32, ptr %"R13"
  %"imad_ext1.39" = zext i32 %".2888" to i64
  %"imad_ext2.39" = zext i32 %".2889" to i64
  %"imad_mul.47" = mul i64 %"imad_ext1.39", %"imad_ext2.39"
  %".2890" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.47" = add i64 %"imad_mul.47", %".2890"
  %".2891" = and i64 %"imad_add.47", 18446744069414584320
  %".2892" = lshr i64 %".2891", 32
  %"trunc32.88" = trunc i64 %".2892" to i32
  %"trunc32.89" = trunc i64 %"imad_add.47" to i32
  store i32 %"trunc32.89", ptr %"R12"
  store i32 %"trunc32.88", ptr %"R13"
  ; LDG.E.SYS R25, [R16+0x8]
  %".2896" = load i32, ptr %"R16"
  %"zext.294" = zext i32 %".2896" to i64
  %".2897" = load i32, ptr %"R17"
  %"zext.295" = zext i32 %".2897" to i64
  %"shl.155" = shl i64 %"zext.295", 32
  %"or.142" = or i64 %"shl.155", %"zext.294"
  %"ptr_plus_imm.96" = add i64 %"or.142", 8
  %"inttoptr_bytes.132" = inttoptr i64 %"ptr_plus_imm.96" to ptr addrspace(1)
  %"ptr_cast_for_access.132" = bitcast ptr addrspace(1) %"inttoptr_bytes.132" to ptr addrspace(1)
  %".2898" = load float, ptr addrspace(1) %"ptr_cast_for_access.132"
  %".2899" = bitcast ptr %"R25" to ptr
  store float %".2898", ptr %".2899"
  ; LDG.E.SYS R36, [R14+0xc]
  %".2902" = load i32, ptr %"R14"
  %"zext.296" = zext i32 %".2902" to i64
  %".2903" = load i32, ptr %"R15"
  %"zext.297" = zext i32 %".2903" to i64
  %"shl.156" = shl i64 %"zext.297", 32
  %"or.143" = or i64 %"shl.156", %"zext.296"
  %"ptr_plus_imm.97" = add i64 %"or.143", 12
  %"inttoptr_bytes.133" = inttoptr i64 %"ptr_plus_imm.97" to ptr addrspace(1)
  %"ptr_cast_for_access.133" = bitcast ptr addrspace(1) %"inttoptr_bytes.133" to ptr addrspace(1)
  %".2904" = load float, ptr addrspace(1) %"ptr_cast_for_access.133"
  %".2905" = bitcast ptr %"R36" to ptr
  store float %".2904", ptr %".2905"
  ; LDG.E.SYS R35, [R16+0xc]
  %".2908" = load i32, ptr %"R16"
  %"zext.298" = zext i32 %".2908" to i64
  %".2909" = load i32, ptr %"R17"
  %"zext.299" = zext i32 %".2909" to i64
  %"shl.157" = shl i64 %"zext.299", 32
  %"or.144" = or i64 %"shl.157", %"zext.298"
  %"ptr_plus_imm.98" = add i64 %"or.144", 12
  %"inttoptr_bytes.134" = inttoptr i64 %"ptr_plus_imm.98" to ptr addrspace(1)
  %"ptr_cast_for_access.134" = bitcast ptr addrspace(1) %"inttoptr_bytes.134" to ptr addrspace(1)
  %".2910" = load float, ptr addrspace(1) %"ptr_cast_for_access.134"
  %".2911" = bitcast ptr %"R35" to ptr
  store float %".2910", ptr %".2911"
  ; LDG.E.SYS R38, [R10]
  %".2914" = load i32, ptr %"R10"
  %"zext.300" = zext i32 %".2914" to i64
  %".2915" = load i32, ptr %"R11"
  %"zext.301" = zext i32 %".2915" to i64
  %"shl.158" = shl i64 %"zext.301", 32
  %"or.145" = or i64 %"shl.158", %"zext.300"
  %"inttoptr_bytes.135" = inttoptr i64 %"or.145" to ptr addrspace(1)
  %"ptr_cast_for_access.135" = bitcast ptr addrspace(1) %"inttoptr_bytes.135" to ptr addrspace(1)
  %".2916" = load float, ptr addrspace(1) %"ptr_cast_for_access.135"
  %".2917" = bitcast ptr %"R38" to ptr
  store float %".2916", ptr %".2917"
  ; LDG.E.SYS R37, [R12]
  %".2920" = load i32, ptr %"R12"
  %"zext.302" = zext i32 %".2920" to i64
  %".2921" = load i32, ptr %"R13"
  %"zext.303" = zext i32 %".2921" to i64
  %"shl.159" = shl i64 %"zext.303", 32
  %"or.146" = or i64 %"shl.159", %"zext.302"
  %"inttoptr_bytes.136" = inttoptr i64 %"or.146" to ptr addrspace(1)
  %"ptr_cast_for_access.136" = bitcast ptr addrspace(1) %"inttoptr_bytes.136" to ptr addrspace(1)
  %".2922" = load float, ptr addrspace(1) %"ptr_cast_for_access.136"
  %".2923" = bitcast ptr %"R37" to ptr
  store float %".2922", ptr %".2923"
  ; LDG.E.SYS R40, [R10+0x4]
  %".2926" = load i32, ptr %"R10"
  %"zext.304" = zext i32 %".2926" to i64
  %".2927" = load i32, ptr %"R11"
  %"zext.305" = zext i32 %".2927" to i64
  %"shl.160" = shl i64 %"zext.305", 32
  %"or.147" = or i64 %"shl.160", %"zext.304"
  %"ptr_plus_imm.99" = add i64 %"or.147", 4
  %"inttoptr_bytes.137" = inttoptr i64 %"ptr_plus_imm.99" to ptr addrspace(1)
  %"ptr_cast_for_access.137" = bitcast ptr addrspace(1) %"inttoptr_bytes.137" to ptr addrspace(1)
  %".2928" = load float, ptr addrspace(1) %"ptr_cast_for_access.137"
  %".2929" = bitcast ptr %"R40" to ptr
  store float %".2928", ptr %".2929"
  ; LDG.E.SYS R39, [R12+0x4]
  %".2932" = load i32, ptr %"R12"
  %"zext.306" = zext i32 %".2932" to i64
  %".2933" = load i32, ptr %"R13"
  %"zext.307" = zext i32 %".2933" to i64
  %"shl.161" = shl i64 %"zext.307", 32
  %"or.148" = or i64 %"shl.161", %"zext.306"
  %"ptr_plus_imm.100" = add i64 %"or.148", 4
  %"inttoptr_bytes.138" = inttoptr i64 %"ptr_plus_imm.100" to ptr addrspace(1)
  %"ptr_cast_for_access.138" = bitcast ptr addrspace(1) %"inttoptr_bytes.138" to ptr addrspace(1)
  %".2934" = load float, ptr addrspace(1) %"ptr_cast_for_access.138"
  %".2935" = bitcast ptr %"R39" to ptr
  store float %".2934", ptr %".2935"
  ; LDG.E.SYS R42, [R10+0x8]
  %".2938" = load i32, ptr %"R10"
  %"zext.308" = zext i32 %".2938" to i64
  %".2939" = load i32, ptr %"R11"
  %"zext.309" = zext i32 %".2939" to i64
  %"shl.162" = shl i64 %"zext.309", 32
  %"or.149" = or i64 %"shl.162", %"zext.308"
  %"ptr_plus_imm.101" = add i64 %"or.149", 8
  %"inttoptr_bytes.139" = inttoptr i64 %"ptr_plus_imm.101" to ptr addrspace(1)
  %"ptr_cast_for_access.139" = bitcast ptr addrspace(1) %"inttoptr_bytes.139" to ptr addrspace(1)
  %".2940" = load float, ptr addrspace(1) %"ptr_cast_for_access.139"
  %".2941" = bitcast ptr %"R42" to ptr
  store float %".2940", ptr %".2941"
  ; LDG.E.SYS R44, [R10+0xc]
  %".2944" = load i32, ptr %"R10"
  %"zext.310" = zext i32 %".2944" to i64
  %".2945" = load i32, ptr %"R11"
  %"zext.311" = zext i32 %".2945" to i64
  %"shl.163" = shl i64 %"zext.311", 32
  %"or.150" = or i64 %"shl.163", %"zext.310"
  %"ptr_plus_imm.102" = add i64 %"or.150", 12
  %"inttoptr_bytes.140" = inttoptr i64 %"ptr_plus_imm.102" to ptr addrspace(1)
  %"ptr_cast_for_access.140" = bitcast ptr addrspace(1) %"inttoptr_bytes.140" to ptr addrspace(1)
  %".2946" = load float, ptr addrspace(1) %"ptr_cast_for_access.140"
  %".2947" = bitcast ptr %"R44" to ptr
  store float %".2946", ptr %".2947"
  ; LDG.E.SYS R41, [R12+0x8]
  %".2950" = load i32, ptr %"R12"
  %"zext.312" = zext i32 %".2950" to i64
  %".2951" = load i32, ptr %"R13"
  %"zext.313" = zext i32 %".2951" to i64
  %"shl.164" = shl i64 %"zext.313", 32
  %"or.151" = or i64 %"shl.164", %"zext.312"
  %"ptr_plus_imm.103" = add i64 %"or.151", 8
  %"inttoptr_bytes.141" = inttoptr i64 %"ptr_plus_imm.103" to ptr addrspace(1)
  %"ptr_cast_for_access.141" = bitcast ptr addrspace(1) %"inttoptr_bytes.141" to ptr addrspace(1)
  %".2952" = load float, ptr addrspace(1) %"ptr_cast_for_access.141"
  %".2953" = bitcast ptr %"R41" to ptr
  store float %".2952", ptr %".2953"
  ; LDG.E.SYS R43, [R12+0xc]
  %".2956" = load i32, ptr %"R12"
  %"zext.314" = zext i32 %".2956" to i64
  %".2957" = load i32, ptr %"R13"
  %"zext.315" = zext i32 %".2957" to i64
  %"shl.165" = shl i64 %"zext.315", 32
  %"or.152" = or i64 %"shl.165", %"zext.314"
  %"ptr_plus_imm.104" = add i64 %"or.152", 12
  %"inttoptr_bytes.142" = inttoptr i64 %"ptr_plus_imm.104" to ptr addrspace(1)
  %"ptr_cast_for_access.142" = bitcast ptr addrspace(1) %"inttoptr_bytes.142" to ptr addrspace(1)
  %".2958" = load float, ptr addrspace(1) %"ptr_cast_for_access.142"
  %".2959" = bitcast ptr %"R43" to ptr
  store float %".2958", ptr %".2959"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".2962" = xor i1 1, 1
  %".2963" = and i1 %".2962", 1
  %".2964" = and i1 %".2963", 1
  ; IADD3 R23, R23, -0x8, RZ
  %".2966" = load i32, ptr %"R23"
  %".2967" = add i32 %".2966", -8
  %".2968" = add i32 %".2967", 0
  store i32 %".2968", ptr %"R23"
  ; IADD3 R22, R22, 0x8, RZ
  %".2971" = load i32, ptr %"R22"
  %".2972" = add i32 %".2971", 8
  %".2973" = add i32 %".2972", 0
  store i32 %".2973", ptr %"R22"
  ; FMUL R15, R18, R9
  %".2976" = load float, ptr %"R18"
  %".2977" = load float, ptr %"R9"
  %"fmul.117" = fmul float %".2976", %".2977"
  %".2978" = bitcast ptr %"R15" to ptr
  store float %"fmul.117", ptr %".2978"
  ; FFMA R15, R15, R19, R8
  %".2981" = load float, ptr %"R15"
  %".2982" = load float, ptr %"R19"
  %".2983" = load float, ptr %"R8"
  %"fmul.118" = fmul float %".2981", %".2982"
  %"fadd.109" = fadd float %"fmul.118", %".2983"
  %".2984" = bitcast ptr %"R15" to ptr
  store float %"fadd.109", ptr %".2984"
  ; FMUL R24, R24, R9
  %".2987" = load float, ptr %"R24"
  %".2988" = load float, ptr %"R9"
  %"fmul.119" = fmul float %".2987", %".2988"
  %".2989" = bitcast ptr %"R24" to ptr
  store float %"fmul.119", ptr %".2989"
  ; FFMA R15, R24, R21, R15
  %".2992" = load float, ptr %"R24"
  %".2993" = load float, ptr %"R21"
  %".2994" = load float, ptr %"R15"
  %"fmul.120" = fmul float %".2992", %".2993"
  %"fadd.110" = fadd float %"fmul.120", %".2994"
  %".2995" = bitcast ptr %"R15" to ptr
  store float %"fadd.110", ptr %".2995"
  ; FMUL R34, R34, R9
  %".2998" = load float, ptr %"R34"
  %".2999" = load float, ptr %"R9"
  %"fmul.121" = fmul float %".2998", %".2999"
  %".3000" = bitcast ptr %"R34" to ptr
  store float %"fmul.121", ptr %".3000"
  ; FFMA R15, R34, R25, R15
  %".3003" = load float, ptr %"R34"
  %".3004" = load float, ptr %"R25"
  %".3005" = load float, ptr %"R15"
  %"fmul.122" = fmul float %".3003", %".3004"
  %"fadd.111" = fadd float %"fmul.122", %".3005"
  %".3006" = bitcast ptr %"R15" to ptr
  store float %"fadd.111", ptr %".3006"
  ; FMUL R36, R36, R9
  %".3009" = load float, ptr %"R36"
  %".3010" = load float, ptr %"R9"
  %"fmul.123" = fmul float %".3009", %".3010"
  %".3011" = bitcast ptr %"R36" to ptr
  store float %"fmul.123", ptr %".3011"
  ; FFMA R15, R36, R35, R15
  %".3014" = load float, ptr %"R36"
  %".3015" = load float, ptr %"R35"
  %".3016" = load float, ptr %"R15"
  %"fmul.124" = fmul float %".3014", %".3015"
  %"fadd.112" = fadd float %"fmul.124", %".3016"
  %".3017" = bitcast ptr %"R15" to ptr
  store float %"fadd.112", ptr %".3017"
  ; FMUL R38, R38, R9
  %".3020" = load float, ptr %"R38"
  %".3021" = load float, ptr %"R9"
  %"fmul.125" = fmul float %".3020", %".3021"
  %".3022" = bitcast ptr %"R38" to ptr
  store float %"fmul.125", ptr %".3022"
  ; FFMA R15, R38, R37, R15
  %".3025" = load float, ptr %"R38"
  %".3026" = load float, ptr %"R37"
  %".3027" = load float, ptr %"R15"
  %"fmul.126" = fmul float %".3025", %".3026"
  %"fadd.113" = fadd float %"fmul.126", %".3027"
  %".3028" = bitcast ptr %"R15" to ptr
  store float %"fadd.113", ptr %".3028"
  ; FMUL R40, R40, R9
  %".3031" = load float, ptr %"R40"
  %".3032" = load float, ptr %"R9"
  %"fmul.127" = fmul float %".3031", %".3032"
  %".3033" = bitcast ptr %"R40" to ptr
  store float %"fmul.127", ptr %".3033"
  ; FFMA R15, R40, R39, R15
  %".3036" = load float, ptr %"R40"
  %".3037" = load float, ptr %"R39"
  %".3038" = load float, ptr %"R15"
  %"fmul.128" = fmul float %".3036", %".3037"
  %"fadd.114" = fadd float %"fmul.128", %".3038"
  %".3039" = bitcast ptr %"R15" to ptr
  store float %"fadd.114", ptr %".3039"
  ; FMUL R42, R42, R9.reuse
  %".3042" = load float, ptr %"R42"
  %".3043" = load float, ptr %"R9"
  %"fmul.129" = fmul float %".3042", %".3043"
  %".3044" = bitcast ptr %"R42" to ptr
  store float %"fmul.129", ptr %".3044"
  ; FMUL R44, R44, R9
  %".3047" = load float, ptr %"R44"
  %".3048" = load float, ptr %"R9"
  %"fmul.130" = fmul float %".3047", %".3048"
  %".3049" = bitcast ptr %"R44" to ptr
  store float %"fmul.130", ptr %".3049"
  ; FFMA R15, R42, R41, R15
  %".3052" = load float, ptr %"R42"
  %".3053" = load float, ptr %"R41"
  %".3054" = load float, ptr %"R15"
  %"fmul.131" = fmul float %".3052", %".3053"
  %"fadd.115" = fadd float %"fmul.131", %".3054"
  %".3055" = bitcast ptr %"R15" to ptr
  store float %"fadd.115", ptr %".3055"
  ; FFMA R8, R44, R43, R15
  %".3058" = load float, ptr %"R44"
  %".3059" = load float, ptr %"R43"
  %".3060" = load float, ptr %"R15"
  %"fmul.132" = fmul float %".3058", %".3059"
  %"fadd.116" = fadd float %"fmul.132", %".3060"
  %".3061" = bitcast ptr %"R8" to ptr
  store float %"fadd.116", ptr %".3061"
  br label %".L_x_15"
.L_x_15:
  ; ISETP.NE.OR P0, PT, R23, RZ, P0
  %".3065" = load i32, ptr %"R23"
  %".3066" = load i1, ptr %"P0"
  %"cmp.25" = icmp ne i32 %".3065", 0
  %".3067" = xor i1 %"cmp.25", -1
  %".3068" = or i1 %"cmp.25", %".3066"
  %".3069" = or i1 %".3067", %".3066"
  store i1 %".3068", ptr %"P0"
  ; @!P0 BRA `(.L_x_11)
  %".3072" = load i1, ptr %"P0"
  %".3073" = icmp ne i1 %".3072", 1
  br i1 %".3073", label %".L_x_11", label %".L_x_12"
.L_x_12:
  ; MOV R13, 0x4
  store i32 4, ptr %"R13"
  ; IADD3 R12, R3, R22, RZ
  %".3078" = load i32, ptr %"R3"
  %".3079" = load i32, ptr %"R22"
  %".3080" = add i32 %".3078", %".3079"
  %".3081" = add i32 %".3080", 0
  store i32 %".3081", ptr %"R12"
  ; IMAD.WIDE R10, R22, R13, c[0x0][0x168]
  %".3084" = load i32, ptr %"R22"
  %".3085" = load i32, ptr %"R13"
  %"imad_ext1.40" = zext i32 %".3084" to i64
  %"imad_ext2.40" = zext i32 %".3085" to i64
  %"imad_mul.48" = mul i64 %"imad_ext1.40", %"imad_ext2.40"
  %".3086" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.48" = add i64 %"imad_mul.48", %".3086"
  %".3087" = and i64 %"imad_add.48", 18446744069414584320
  %".3088" = lshr i64 %".3087", 32
  %"trunc32.90" = trunc i64 %".3088" to i32
  %"trunc32.91" = trunc i64 %"imad_add.48" to i32
  store i32 %"trunc32.91", ptr %"R10"
  store i32 %"trunc32.90", ptr %"R11"
  ; IMAD.WIDE R12, R12, R13, c[0x0][0x170]
  %".3092" = load i32, ptr %"R12"
  %".3093" = load i32, ptr %"R13"
  %"imad_ext1.41" = zext i32 %".3092" to i64
  %"imad_ext2.41" = zext i32 %".3093" to i64
  %"imad_mul.49" = mul i64 %"imad_ext1.41", %"imad_ext2.41"
  %".3094" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.49" = add i64 %"imad_mul.49", %".3094"
  %".3095" = and i64 %"imad_add.49", 18446744069414584320
  %".3096" = lshr i64 %".3095", 32
  %"trunc32.92" = trunc i64 %".3096" to i32
  %"trunc32.93" = trunc i64 %"imad_add.49" to i32
  store i32 %"trunc32.93", ptr %"R12"
  store i32 %"trunc32.92", ptr %"R13"
  ; LDG.E.SYS R14, [R10]
  %".3100" = load i32, ptr %"R10"
  %"zext.316" = zext i32 %".3100" to i64
  %".3101" = load i32, ptr %"R11"
  %"zext.317" = zext i32 %".3101" to i64
  %"shl.166" = shl i64 %"zext.317", 32
  %"or.153" = or i64 %"shl.166", %"zext.316"
  %"inttoptr_bytes.143" = inttoptr i64 %"or.153" to ptr addrspace(1)
  %"ptr_cast_for_access.143" = bitcast ptr addrspace(1) %"inttoptr_bytes.143" to ptr addrspace(1)
  %".3102" = load float, ptr addrspace(1) %"ptr_cast_for_access.143"
  %".3103" = bitcast ptr %"R14" to ptr
  store float %".3102", ptr %".3103"
  ; LDG.E.SYS R16, [R12]
  %".3106" = load i32, ptr %"R12"
  %"zext.318" = zext i32 %".3106" to i64
  %".3107" = load i32, ptr %"R13"
  %"zext.319" = zext i32 %".3107" to i64
  %"shl.167" = shl i64 %"zext.319", 32
  %"or.154" = or i64 %"shl.167", %"zext.318"
  %"inttoptr_bytes.144" = inttoptr i64 %"or.154" to ptr addrspace(1)
  %"ptr_cast_for_access.144" = bitcast ptr addrspace(1) %"inttoptr_bytes.144" to ptr addrspace(1)
  %".3108" = load float, ptr addrspace(1) %"ptr_cast_for_access.144"
  %".3109" = bitcast ptr %"R16" to ptr
  store float %".3108", ptr %".3109"
  ; LDG.E.SYS R18, [R10+0x4]
  %".3112" = load i32, ptr %"R10"
  %"zext.320" = zext i32 %".3112" to i64
  %".3113" = load i32, ptr %"R11"
  %"zext.321" = zext i32 %".3113" to i64
  %"shl.168" = shl i64 %"zext.321", 32
  %"or.155" = or i64 %"shl.168", %"zext.320"
  %"ptr_plus_imm.105" = add i64 %"or.155", 4
  %"inttoptr_bytes.145" = inttoptr i64 %"ptr_plus_imm.105" to ptr addrspace(1)
  %"ptr_cast_for_access.145" = bitcast ptr addrspace(1) %"inttoptr_bytes.145" to ptr addrspace(1)
  %".3114" = load float, ptr addrspace(1) %"ptr_cast_for_access.145"
  %".3115" = bitcast ptr %"R18" to ptr
  store float %".3114", ptr %".3115"
  ; LDG.E.SYS R17, [R12+0x4]
  %".3118" = load i32, ptr %"R12"
  %"zext.322" = zext i32 %".3118" to i64
  %".3119" = load i32, ptr %"R13"
  %"zext.323" = zext i32 %".3119" to i64
  %"shl.169" = shl i64 %"zext.323", 32
  %"or.156" = or i64 %"shl.169", %"zext.322"
  %"ptr_plus_imm.106" = add i64 %"or.156", 4
  %"inttoptr_bytes.146" = inttoptr i64 %"ptr_plus_imm.106" to ptr addrspace(1)
  %"ptr_cast_for_access.146" = bitcast ptr addrspace(1) %"inttoptr_bytes.146" to ptr addrspace(1)
  %".3120" = load float, ptr addrspace(1) %"ptr_cast_for_access.146"
  %".3121" = bitcast ptr %"R17" to ptr
  store float %".3120", ptr %".3121"
  ; LDG.E.SYS R24, [R10+0x8]
  %".3124" = load i32, ptr %"R10"
  %"zext.324" = zext i32 %".3124" to i64
  %".3125" = load i32, ptr %"R11"
  %"zext.325" = zext i32 %".3125" to i64
  %"shl.170" = shl i64 %"zext.325", 32
  %"or.157" = or i64 %"shl.170", %"zext.324"
  %"ptr_plus_imm.107" = add i64 %"or.157", 8
  %"inttoptr_bytes.147" = inttoptr i64 %"ptr_plus_imm.107" to ptr addrspace(1)
  %"ptr_cast_for_access.147" = bitcast ptr addrspace(1) %"inttoptr_bytes.147" to ptr addrspace(1)
  %".3126" = load float, ptr addrspace(1) %"ptr_cast_for_access.147"
  %".3127" = bitcast ptr %"R24" to ptr
  store float %".3126", ptr %".3127"
  ; LDG.E.SYS R19, [R12+0x8]
  %".3130" = load i32, ptr %"R12"
  %"zext.326" = zext i32 %".3130" to i64
  %".3131" = load i32, ptr %"R13"
  %"zext.327" = zext i32 %".3131" to i64
  %"shl.171" = shl i64 %"zext.327", 32
  %"or.158" = or i64 %"shl.171", %"zext.326"
  %"ptr_plus_imm.108" = add i64 %"or.158", 8
  %"inttoptr_bytes.148" = inttoptr i64 %"ptr_plus_imm.108" to ptr addrspace(1)
  %"ptr_cast_for_access.148" = bitcast ptr addrspace(1) %"inttoptr_bytes.148" to ptr addrspace(1)
  %".3132" = load float, ptr addrspace(1) %"ptr_cast_for_access.148"
  %".3133" = bitcast ptr %"R19" to ptr
  store float %".3132", ptr %".3133"
  ; LDG.E.SYS R34, [R10+0xc]
  %".3136" = load i32, ptr %"R10"
  %"zext.328" = zext i32 %".3136" to i64
  %".3137" = load i32, ptr %"R11"
  %"zext.329" = zext i32 %".3137" to i64
  %"shl.172" = shl i64 %"zext.329", 32
  %"or.159" = or i64 %"shl.172", %"zext.328"
  %"ptr_plus_imm.109" = add i64 %"or.159", 12
  %"inttoptr_bytes.149" = inttoptr i64 %"ptr_plus_imm.109" to ptr addrspace(1)
  %"ptr_cast_for_access.149" = bitcast ptr addrspace(1) %"inttoptr_bytes.149" to ptr addrspace(1)
  %".3138" = load float, ptr addrspace(1) %"ptr_cast_for_access.149"
  %".3139" = bitcast ptr %"R34" to ptr
  store float %".3138", ptr %".3139"
  ; LDG.E.SYS R21, [R12+0xc]
  %".3142" = load i32, ptr %"R12"
  %"zext.330" = zext i32 %".3142" to i64
  %".3143" = load i32, ptr %"R13"
  %"zext.331" = zext i32 %".3143" to i64
  %"shl.173" = shl i64 %"zext.331", 32
  %"or.160" = or i64 %"shl.173", %"zext.330"
  %"ptr_plus_imm.110" = add i64 %"or.160", 12
  %"inttoptr_bytes.150" = inttoptr i64 %"ptr_plus_imm.110" to ptr addrspace(1)
  %"ptr_cast_for_access.150" = bitcast ptr addrspace(1) %"inttoptr_bytes.150" to ptr addrspace(1)
  %".3144" = load float, ptr addrspace(1) %"ptr_cast_for_access.150"
  %".3145" = bitcast ptr %"R21" to ptr
  store float %".3144", ptr %".3145"
  ; IADD3 R23, R23, -0x4, RZ
  %".3148" = load i32, ptr %"R23"
  %".3149" = add i32 %".3148", -4
  %".3150" = add i32 %".3149", 0
  store i32 %".3150", ptr %"R23"
  ; IADD3 R22, R22, 0x4, RZ
  %".3153" = load i32, ptr %"R22"
  %".3154" = add i32 %".3153", 4
  %".3155" = add i32 %".3154", 0
  store i32 %".3155", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R23, RZ, PT
  %".3158" = load i32, ptr %"R23"
  %".3159" = load i1, ptr %"PT"
  %"cmp.26" = icmp ne i32 %".3158", 0
  %".3160" = xor i1 %"cmp.26", -1
  %".3161" = and i1 %"cmp.26", %".3159"
  %".3162" = and i1 %".3160", %".3159"
  store i1 %".3161", ptr %"P0"
  ; FMUL R15, R14, R9
  %".3165" = load float, ptr %"R14"
  %".3166" = load float, ptr %"R9"
  %"fmul.133" = fmul float %".3165", %".3166"
  %".3167" = bitcast ptr %"R15" to ptr
  store float %"fmul.133", ptr %".3167"
  ; FFMA R15, R15, R16, R8
  %".3170" = load float, ptr %"R15"
  %".3171" = load float, ptr %"R16"
  %".3172" = load float, ptr %"R8"
  %"fmul.134" = fmul float %".3170", %".3171"
  %"fadd.117" = fadd float %"fmul.134", %".3172"
  %".3173" = bitcast ptr %"R15" to ptr
  store float %"fadd.117", ptr %".3173"
  ; FMUL R18, R18, R9
  %".3176" = load float, ptr %"R18"
  %".3177" = load float, ptr %"R9"
  %"fmul.135" = fmul float %".3176", %".3177"
  %".3178" = bitcast ptr %"R18" to ptr
  store float %"fmul.135", ptr %".3178"
  ; FFMA R15, R18, R17, R15
  %".3181" = load float, ptr %"R18"
  %".3182" = load float, ptr %"R17"
  %".3183" = load float, ptr %"R15"
  %"fmul.136" = fmul float %".3181", %".3182"
  %"fadd.118" = fadd float %"fmul.136", %".3183"
  %".3184" = bitcast ptr %"R15" to ptr
  store float %"fadd.118", ptr %".3184"
  ; FMUL R24, R24, R9
  %".3187" = load float, ptr %"R24"
  %".3188" = load float, ptr %"R9"
  %"fmul.137" = fmul float %".3187", %".3188"
  %".3189" = bitcast ptr %"R24" to ptr
  store float %"fmul.137", ptr %".3189"
  ; FFMA R15, R24, R19, R15
  %".3192" = load float, ptr %"R24"
  %".3193" = load float, ptr %"R19"
  %".3194" = load float, ptr %"R15"
  %"fmul.138" = fmul float %".3192", %".3193"
  %"fadd.119" = fadd float %"fmul.138", %".3194"
  %".3195" = bitcast ptr %"R15" to ptr
  store float %"fadd.119", ptr %".3195"
  ; FMUL R34, R34, R9
  %".3198" = load float, ptr %"R34"
  %".3199" = load float, ptr %"R9"
  %"fmul.139" = fmul float %".3198", %".3199"
  %".3200" = bitcast ptr %"R34" to ptr
  store float %"fmul.139", ptr %".3200"
  ; FFMA R8, R34, R21, R15
  %".3203" = load float, ptr %"R34"
  %".3204" = load float, ptr %"R21"
  %".3205" = load float, ptr %"R15"
  %"fmul.140" = fmul float %".3203", %".3204"
  %"fadd.120" = fadd float %"fmul.140", %".3205"
  %".3206" = bitcast ptr %"R8" to ptr
  store float %"fadd.120", ptr %".3206"
  ; @P0 BRA `(.L_x_12)
  %".3209" = load i1, ptr %"P0"
  %".3210" = icmp eq i1 %".3209", 1
  br i1 %".3210", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".3213" = load i32, ptr %"R4"
  %".3214" = load i1, ptr %"PT"
  %"cmp.27" = icmp ne i32 %".3213", 0
  %".3215" = xor i1 %"cmp.27", -1
  %".3216" = and i1 %"cmp.27", %".3214"
  %".3217" = and i1 %".3215", %".3214"
  store i1 %".3216", ptr %"P0"
  ; @!P0 BRA `(.L_x_10)
  %".3220" = load i1, ptr %"P0"
  %".3221" = icmp ne i1 %".3220", 1
  br i1 %".3221", label %".L_x_10", label %".L_x_11_split_0x1e60"
.L_x_11_split_0x1e60:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R10, R3, R22, RZ
  %".3226" = load i32, ptr %"R3"
  %".3227" = load i32, ptr %"R22"
  %".3228" = add i32 %".3226", %".3227"
  %".3229" = add i32 %".3228", 0
  store i32 %".3229", ptr %"R10"
  ; IMAD.WIDE R22, R22, R11, c[0x0][0x168]
  %".3232" = load i32, ptr %"R22"
  %".3233" = load i32, ptr %"R11"
  %"imad_ext1.42" = zext i32 %".3232" to i64
  %"imad_ext2.42" = zext i32 %".3233" to i64
  %"imad_mul.50" = mul i64 %"imad_ext1.42", %"imad_ext2.42"
  %".3234" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.50" = add i64 %"imad_mul.50", %".3234"
  %".3235" = and i64 %"imad_add.50", 18446744069414584320
  %".3236" = lshr i64 %".3235", 32
  %"trunc32.94" = trunc i64 %".3236" to i32
  %"trunc32.95" = trunc i64 %"imad_add.50" to i32
  store i32 %"trunc32.95", ptr %"R22"
  store i32 %"trunc32.94", ptr %"R23"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".3240" = load i32, ptr %"R10"
  %".3241" = load i32, ptr %"R11"
  %"imad_ext1.43" = zext i32 %".3240" to i64
  %"imad_ext2.43" = zext i32 %".3241" to i64
  %"imad_mul.51" = mul i64 %"imad_ext1.43", %"imad_ext2.43"
  %".3242" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.51" = add i64 %"imad_mul.51", %".3242"
  %".3243" = and i64 %"imad_add.51", 18446744069414584320
  %".3244" = lshr i64 %".3243", 32
  %"trunc32.96" = trunc i64 %".3244" to i32
  %"trunc32.97" = trunc i64 %"imad_add.51" to i32
  store i32 %"trunc32.97", ptr %"R10"
  store i32 %"trunc32.96", ptr %"R11"
  ; LDG.E.SYS R12, [R22]
  %".3248" = load i32, ptr %"R22"
  %"zext.332" = zext i32 %".3248" to i64
  %".3249" = load i32, ptr %"R23"
  %"zext.333" = zext i32 %".3249" to i64
  %"shl.174" = shl i64 %"zext.333", 32
  %"or.161" = or i64 %"shl.174", %"zext.332"
  %"inttoptr_bytes.151" = inttoptr i64 %"or.161" to ptr addrspace(1)
  %"ptr_cast_for_access.151" = bitcast ptr addrspace(1) %"inttoptr_bytes.151" to ptr addrspace(1)
  %".3250" = load float, ptr addrspace(1) %"ptr_cast_for_access.151"
  %".3251" = bitcast ptr %"R12" to ptr
  store float %".3250", ptr %".3251"
  ; LDG.E.SYS R14, [R10]
  %".3254" = load i32, ptr %"R10"
  %"zext.334" = zext i32 %".3254" to i64
  %".3255" = load i32, ptr %"R11"
  %"zext.335" = zext i32 %".3255" to i64
  %"shl.175" = shl i64 %"zext.335", 32
  %"or.162" = or i64 %"shl.175", %"zext.334"
  %"inttoptr_bytes.152" = inttoptr i64 %"or.162" to ptr addrspace(1)
  %"ptr_cast_for_access.152" = bitcast ptr addrspace(1) %"inttoptr_bytes.152" to ptr addrspace(1)
  %".3256" = load float, ptr addrspace(1) %"ptr_cast_for_access.152"
  %".3257" = bitcast ptr %"R14" to ptr
  store float %".3256", ptr %".3257"
  ; ISETP.NE.AND P0, PT, R4, 0x1, PT
  %".3260" = load i32, ptr %"R4"
  %".3261" = load i1, ptr %"PT"
  %"cmp.28" = icmp ne i32 %".3260", 1
  %".3262" = xor i1 %"cmp.28", -1
  %".3263" = and i1 %"cmp.28", %".3261"
  %".3264" = and i1 %".3262", %".3261"
  store i1 %".3263", ptr %"P0"
  ; FMUL R13, R12, R9
  %".3267" = load float, ptr %"R12"
  %".3268" = load float, ptr %"R9"
  %"fmul.141" = fmul float %".3267", %".3268"
  %".3269" = bitcast ptr %"R13" to ptr
  store float %"fmul.141", ptr %".3269"
  ; FFMA R8, R13, R14, R8
  %".3272" = load float, ptr %"R13"
  %".3273" = load float, ptr %"R14"
  %".3274" = load float, ptr %"R8"
  %"fmul.142" = fmul float %".3272", %".3273"
  %"fadd.121" = fadd float %"fmul.142", %".3274"
  %".3275" = bitcast ptr %"R8" to ptr
  store float %"fadd.121", ptr %".3275"
  ; @!P0 BRA `(.L_x_10)
  %".3278" = load i1, ptr %"P0"
  %".3279" = icmp ne i1 %".3278", 1
  br i1 %".3279", label %".L_x_10", label %".L_x_11_split_0x1f00"
.L_x_11_split_0x1f00:
  ; ISETP.NE.AND P0, PT, R4, 0x2, PT
  %".3282" = load i32, ptr %"R4"
  %".3283" = load i1, ptr %"PT"
  %"cmp.29" = icmp ne i32 %".3282", 2
  %".3284" = xor i1 %"cmp.29", -1
  %".3285" = and i1 %"cmp.29", %".3283"
  %".3286" = and i1 %".3284", %".3283"
  store i1 %".3285", ptr %"P0"
  ; LDG.E.SYS R12, [R22+0x4]
  %".3289" = load i32, ptr %"R22"
  %"zext.336" = zext i32 %".3289" to i64
  %".3290" = load i32, ptr %"R23"
  %"zext.337" = zext i32 %".3290" to i64
  %"shl.176" = shl i64 %"zext.337", 32
  %"or.163" = or i64 %"shl.176", %"zext.336"
  %"ptr_plus_imm.111" = add i64 %"or.163", 4
  %"inttoptr_bytes.153" = inttoptr i64 %"ptr_plus_imm.111" to ptr addrspace(1)
  %"ptr_cast_for_access.153" = bitcast ptr addrspace(1) %"inttoptr_bytes.153" to ptr addrspace(1)
  %".3291" = load float, ptr addrspace(1) %"ptr_cast_for_access.153"
  %".3292" = bitcast ptr %"R12" to ptr
  store float %".3291", ptr %".3292"
  ; LDG.E.SYS R14, [R10+0x4]
  %".3295" = load i32, ptr %"R10"
  %"zext.338" = zext i32 %".3295" to i64
  %".3296" = load i32, ptr %"R11"
  %"zext.339" = zext i32 %".3296" to i64
  %"shl.177" = shl i64 %"zext.339", 32
  %"or.164" = or i64 %"shl.177", %"zext.338"
  %"ptr_plus_imm.112" = add i64 %"or.164", 4
  %"inttoptr_bytes.154" = inttoptr i64 %"ptr_plus_imm.112" to ptr addrspace(1)
  %"ptr_cast_for_access.154" = bitcast ptr addrspace(1) %"inttoptr_bytes.154" to ptr addrspace(1)
  %".3297" = load float, ptr addrspace(1) %"ptr_cast_for_access.154"
  %".3298" = bitcast ptr %"R14" to ptr
  store float %".3297", ptr %".3298"
  ; @P0 LDG.E.SYS R16, [R22+0x8]
  %".3301" = load i1, ptr %"P0"
  %".3302" = icmp eq i1 %".3301", 1
  br i1 %".3302", label %".L_x_11_split_0x1f00_conditionalExpr_0x1f30", label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f00_conditionalExpr_0x1f30:
  ; LDG.E.SYS R16, [R22+0x8]
  %".3305" = load i32, ptr %"R22"
  %"zext.340" = zext i32 %".3305" to i64
  %".3306" = load i32, ptr %"R23"
  %"zext.341" = zext i32 %".3306" to i64
  %"shl.178" = shl i64 %"zext.341", 32
  %"or.165" = or i64 %"shl.178", %"zext.340"
  %"ptr_plus_imm.113" = add i64 %"or.165", 8
  %"inttoptr_bytes.155" = inttoptr i64 %"ptr_plus_imm.113" to ptr addrspace(1)
  %"ptr_cast_for_access.155" = bitcast ptr addrspace(1) %"inttoptr_bytes.155" to ptr addrspace(1)
  %".3307" = load float, ptr addrspace(1) %"ptr_cast_for_access.155"
  %".3308" = bitcast ptr %"R16" to ptr
  store float %".3307", ptr %".3308"
  ; BRA `(.L_x_11_split_0x1f40)
  br label %".L_x_11_split_0x1f40"
.L_x_11_split_0x1f40:
  ; @P0 LDG.E.SYS R15, [R10+0x8]
  %".3313" = load i1, ptr %"P0"
  %".3314" = icmp eq i1 %".3313", 1
  br i1 %".3314", label %".L_x_11_split_0x1f40_conditionalExpr_0x1f40", label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f40_conditionalExpr_0x1f40:
  ; LDG.E.SYS R15, [R10+0x8]
  %".3317" = load i32, ptr %"R10"
  %"zext.342" = zext i32 %".3317" to i64
  %".3318" = load i32, ptr %"R11"
  %"zext.343" = zext i32 %".3318" to i64
  %"shl.179" = shl i64 %"zext.343", 32
  %"or.166" = or i64 %"shl.179", %"zext.342"
  %"ptr_plus_imm.114" = add i64 %"or.166", 8
  %"inttoptr_bytes.156" = inttoptr i64 %"ptr_plus_imm.114" to ptr addrspace(1)
  %"ptr_cast_for_access.156" = bitcast ptr addrspace(1) %"inttoptr_bytes.156" to ptr addrspace(1)
  %".3319" = load float, ptr addrspace(1) %"ptr_cast_for_access.156"
  %".3320" = bitcast ptr %"R15" to ptr
  store float %".3319", ptr %".3320"
  ; BRA `(.L_x_11_split_0x1f50)
  br label %".L_x_11_split_0x1f50"
.L_x_11_split_0x1f50:
  ; FMUL R13, R12, R9
  %".3325" = load float, ptr %"R12"
  %".3326" = load float, ptr %"R9"
  %"fmul.143" = fmul float %".3325", %".3326"
  %".3327" = bitcast ptr %"R13" to ptr
  store float %"fmul.143", ptr %".3327"
  ; FFMA R8, R13, R14, R8
  %".3330" = load float, ptr %"R13"
  %".3331" = load float, ptr %"R14"
  %".3332" = load float, ptr %"R8"
  %"fmul.144" = fmul float %".3330", %".3331"
  %"fadd.122" = fadd float %"fmul.144", %".3332"
  %".3333" = bitcast ptr %"R8" to ptr
  store float %"fadd.122", ptr %".3333"
  ; @P0 FMUL R9, R16, R9
  %".3336" = load i1, ptr %"P0"
  %".3337" = icmp eq i1 %".3336", 1
  br i1 %".3337", label %".L_x_11_split_0x1f50_conditionalExpr_0x1f70", label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f50_conditionalExpr_0x1f70:
  ; FMUL R9, R16, R9
  %".3340" = load float, ptr %"R16"
  %".3341" = load float, ptr %"R9"
  %"fmul.145" = fmul float %".3340", %".3341"
  %".3342" = bitcast ptr %"R9" to ptr
  store float %"fmul.145", ptr %".3342"
  ; BRA `(.L_x_11_split_0x1f80)
  br label %".L_x_11_split_0x1f80"
.L_x_11_split_0x1f80:
  ; @P0 FFMA R8, R9, R15, R8
  %".3347" = load i1, ptr %"P0"
  %".3348" = icmp eq i1 %".3347", 1
  br i1 %".3348", label %".L_x_11_split_0x1f80_conditionalExpr_0x1f80", label %".L_x_10"
.L_x_11_split_0x1f80_conditionalExpr_0x1f80:
  ; FFMA R8, R9, R15, R8
  %".3351" = load float, ptr %"R9"
  %".3352" = load float, ptr %"R15"
  %".3353" = load float, ptr %"R8"
  %"fmul.146" = fmul float %".3351", %".3352"
  %"fadd.123" = fadd float %"fmul.146", %".3353"
  %".3354" = bitcast ptr %"R8" to ptr
  store float %"fadd.123", ptr %".3354"
  ; BRA `(.L_x_10)
  br label %".L_x_10"
.L_x_10:
  ; LDG.E.SYS R9, [R30]
  %".3359" = load i32, ptr %"R30"
  %"zext.344" = zext i32 %".3359" to i64
  %".3360" = load i32, ptr %"R31"
  %"zext.345" = zext i32 %".3360" to i64
  %"shl.180" = shl i64 %"zext.345", 32
  %"or.167" = or i64 %"shl.180", %"zext.344"
  %"inttoptr_bytes.157" = inttoptr i64 %"or.167" to ptr addrspace(1)
  %"ptr_cast_for_access.157" = bitcast ptr addrspace(1) %"inttoptr_bytes.157" to ptr addrspace(1)
  %".3361" = load float, ptr addrspace(1) %"ptr_cast_for_access.157"
  %".3362" = bitcast ptr %"R9" to ptr
  store float %".3361", ptr %".3362"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_16)
  ; FADD R12, R9, R8
  %".3367" = load float, ptr %"R9"
  %".3368" = load float, ptr %"R8"
  %"fadd.124" = fadd float %".3367", %".3368"
  %".3369" = bitcast ptr %"R12" to ptr
  store float %"fadd.124", ptr %".3369"
  ; FSETP.GE.AND P0, PT, |R12|, 0.60000002384185791016, PT
  %".3372" = load float, ptr %"R12"
  %"llvm_fabs_result" = call float @"llvm.fabs"(float %".3372")
  %".3373" = load i1, ptr %"PT"
  %"fcmp_unordered" = fcmp oge float %"llvm_fabs_result", 0x3fe3333340000000
  %".3374" = xor i1 %"fcmp_unordered", -1
  %".3375" = and i1 %"fcmp_unordered", %".3373"
  %".3376" = and i1 %".3374", %".3373"
  store i1 %".3375", ptr %"P0"
  ; @!P0 BRA `(.L_x_17)
  %".3379" = load i1, ptr %"P0"
  %".3380" = icmp ne i1 %".3379", 1
  br i1 %".3380", label %".L_x_17", label %".L_x_10_split_0x1ff0"
.L_x_10_split_0x1ff0:
  ; FMUL R8, |R12|.reuse, 2.8853900432586669922
  %".3383" = load float, ptr %"R12"
  %"llvm_fabs_result.1" = call float @"llvm.fabs"(float %".3383")
  %"fmul.147" = fmul float %"llvm_fabs_result.1", 0x4007154760000000
  %".3384" = bitcast ptr %"R8" to ptr
  store float %"fmul.147", ptr %".3384"
  ; MOV R9, 0x3f800000
  %".3387" = bitcast ptr %"R9" to ptr
  store float 0x41cfc00000000000, ptr %".3387"
  ; FSETP.GE.AND P0, PT, |R12|, 9.010913848876953125, PT
  %".3390" = load float, ptr %"R12"
  %"llvm_fabs_result.2" = call float @"llvm.fabs"(float %".3390")
  %".3391" = load i1, ptr %"PT"
  %"fcmp_unordered.1" = fcmp oge float %"llvm_fabs_result.2", 0x4022059680000000
  %".3392" = xor i1 %"fcmp_unordered.1", -1
  %".3393" = and i1 %"fcmp_unordered.1", %".3391"
  %".3394" = and i1 %".3392", %".3391"
  store i1 %".3393", ptr %"P0"
  ; MUFU.EX2 R8, R8
  %".3397" = load float, ptr %"R8"
  %"llvm_exp2_f32_result.2" = call float @"llvm.exp2.f32"(float %".3397")
  %".3398" = bitcast ptr %"R8" to ptr
  store float %"llvm_exp2_f32_result.2", ptr %".3398"
  ; FADD R10, R8, 1
  %".3401" = load float, ptr %"R8"
  %"fadd.125" = fadd float %".3401", 0x3ff0000000000000
  %".3402" = bitcast ptr %"R10" to ptr
  store float %"fadd.125", ptr %".3402"
  ; MUFU.RCP R10, R10
  %".3405" = load float, ptr %"R10"
  %".3406" = fdiv float 0x3ff0000000000000, %".3405"
  %".3407" = bitcast ptr %"R10" to ptr
  store float %".3406", ptr %".3407"
  ; FFMA R9, R10, -2, R9
  %".3410" = load float, ptr %"R10"
  %".3411" = load float, ptr %"R9"
  %"fmul.148" = fmul float %".3410", 0xc000000000000000
  %"fadd.126" = fadd float %"fmul.148", %".3411"
  %".3412" = bitcast ptr %"R9" to ptr
  store float %"fadd.126", ptr %".3412"
  ; FSEL R9, R9, 1, !P0
  %".3415" = load float, ptr %"R9"
  %".3416" = load i1, ptr %"P0"
  %".3417" = xor i1 %".3416", -1
  %".3418" = icmp eq i1 %".3417", 1
  %"fsel" = select  i1 %".3418", float %".3415", float 0x3ff0000000000000
  %".3419" = bitcast ptr %"R9" to ptr
  store float %"fsel", ptr %".3419"
  ; LOP3.LUT R9, R9, 0x80000000, R12, 0xf8, !PT
  %".3422" = load i32, ptr %"R9"
  %".3423" = load i32, ptr %"R12"
  %".3424" = xor i1 1, -1
  %".3425" = or i32 %".3422", 2147483648
  %".3426" = or i32 %".3422", %".3423"
  %".3427" = and i32 %".3425", %".3426"
  store i32 %".3427", ptr %"R9"
  ; BRA `(.L_x_18)
  br label %".L_x_18"
.L_x_17:
  ; MOV R9, 0x3c80f082
  %".3432" = bitcast ptr %"R9" to ptr
  store float 0x41ce407840000000, ptr %".3432"
  ; FMUL R8, R12, R12
  %".3435" = load float, ptr %"R12"
  %".3436" = load float, ptr %"R12"
  %"fmul.149" = fmul float %".3435", %".3436"
  %".3437" = bitcast ptr %"R8" to ptr
  store float %"fmul.149", ptr %".3437"
  ; FFMA R9, R8, R9, -0.052303962409496307373
  %".3440" = load float, ptr %"R8"
  %".3441" = load float, ptr %"R9"
  %"fmul.150" = fmul float %".3440", %".3441"
  %"fadd.127" = fadd float %"fmul.150", 0xbfaac795c0000000
  %".3442" = bitcast ptr %"R9" to ptr
  store float %"fadd.127", ptr %".3442"
  ; FFMA R9, R8, R9, 0.1331529766321182251
  %".3445" = load float, ptr %"R8"
  %".3446" = load float, ptr %"R9"
  %"fmul.151" = fmul float %".3445", %".3446"
  %"fadd.128" = fadd float %"fmul.151", 0x3fc10b2820000000
  %".3447" = bitcast ptr %"R9" to ptr
  store float %"fadd.128", ptr %".3447"
  ; FFMA R9, R8, R9, -0.33332768082618713379
  %".3450" = load float, ptr %"R8"
  %".3451" = load float, ptr %"R9"
  %"fmul.152" = fmul float %".3450", %".3451"
  %"fadd.129" = fadd float %"fmul.152", 0xbfd5553da0000000
  %".3452" = bitcast ptr %"R9" to ptr
  store float %"fadd.129", ptr %".3452"
  ; FFMA R9, R8, R9, RZ
  %".3455" = load float, ptr %"R8"
  %".3456" = load float, ptr %"R9"
  %"fmul.153" = fmul float %".3455", %".3456"
  %"fadd.130" = fadd float %"fmul.153",              0x0
  %".3457" = bitcast ptr %"R9" to ptr
  store float %"fadd.130", ptr %".3457"
  ; FFMA R9, R12, R9, R12
  %".3460" = load float, ptr %"R12"
  %".3461" = load float, ptr %"R9"
  %".3462" = load float, ptr %"R12"
  %"fmul.154" = fmul float %".3460", %".3461"
  %"fadd.131" = fadd float %"fmul.154", %".3462"
  %".3463" = bitcast ptr %"R9" to ptr
  store float %"fadd.131", ptr %".3463"
  br label %".L_x_18"
.L_x_18:
  ; BSYNC B0
  br label %".L_x_16"
.L_x_16:
  ; IADD3 R8, R20, 0x1800000, RZ
  %".3469" = load i32, ptr %"R20"
  %".3470" = add i32 %".3469", 25165824
  %".3471" = add i32 %".3470", 0
  store i32 %".3471", ptr %"R8"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_19)
  ; LOP3.LUT R8, R8, 0x7f800000, RZ, 0xc0, !PT
  %".3476" = load i32, ptr %"R8"
  %".3477" = xor i1 1, -1
  %".3478" = and i32 %".3476", 2139095040
  store i32 %".3478", ptr %"R8"
  ; ISETP.GT.U32.AND P0, PT, R8, 0x1ffffff, PT
  %".3481" = load i32, ptr %"R8"
  %".3482" = load i1, ptr %"PT"
  %"cmp.30" = icmp sgt i32 %".3481", 33554431
  %".3483" = xor i1 %"cmp.30", -1
  %".3484" = and i1 %"cmp.30", %".3482"
  %".3485" = and i1 %".3483", %".3482"
  store i1 %".3484", ptr %"P0"
  ; @P0 BRA `(.L_x_20)
  %".3488" = load i1, ptr %"P0"
  %".3489" = icmp eq i1 %".3488", 1
  br i1 %".3489", label %".L_x_20", label %".L_x_16_split_0x2170_CALL_0x21b0"
.L_x_16_split_0x2170_CALL_0x21b0:
  ; MOV R24, R20
  %".3492" = load float, ptr %"R20"
  %".3493" = bitcast ptr %"R24" to ptr
  store float %".3492", ptr %".3493"
  ; MOV R10, 0x21a0
  store i32 8608, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3500" = icmp ult i32 1, 32
  %"SHF_min.10" = select  i1 %".3500", i32 1, i32 32
  %".3501" = load i32, ptr %"R24"
  %"zext.346" = zext i32 0 to i64
  %"zext.347" = zext i32 %".3501" to i64
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
  %".3506" = icmp ult i32 24, 32
  %"SHF_min.11" = select  i1 %".3506", i32 24, i32 32
  %".3507" = load i32, ptr %"R11"
  %"zext.349" = zext i32 %".3507" to i64
  %"zext.350" = zext i32 0 to i64
  %"zext.351" = zext i32 24 to i64
  %"shl.183" = shl i64 %"zext.349", 32
  %"or.169" = or i64 %"shl.183", %"zext.350"
  %"lshr.6" = lshr i64 %"or.169", %"zext.351"
  %"lshr.7" = lshr i64 %"lshr.6", 32
  %"trunc32.99" = trunc i64 %"lshr.7" to i32
  store i32 %"trunc32.99", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".3510" = load i32, ptr %"R25"
  %".3511" = load i1, ptr %"PT"
  %"cmp.31" = icmp ne i32 %".3510", 0
  %".3512" = xor i1 %"cmp.31", -1
  %".3513" = and i1 %"cmp.31", %".3511"
  %".3514" = and i1 %".3512", %".3511"
  store i1 %".3513", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".3517" = load i1, ptr %"P0"
  %".3518" = icmp eq i1 %".3517", 1
  br i1 %".3518", label %".L_x_49...2", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".3521" = icmp ult i32 1, 32
  %"SHF_min.12" = select  i1 %".3521", i32 1, i32 32
  %".3522" = load i32, ptr %"R24"
  %"zext.352" = zext i32 0 to i64
  %"zext.353" = zext i32 %".3522" to i64
  %"zext.354" = zext i32 1 to i64
  %"shl.184" = shl i64 %"zext.352", 32
  %"or.170" = or i64 %"shl.184", %"zext.353"
  %"shl.185" = shl i64 %"or.170", %"zext.354"
  %"and.8" = and i64 %"shl.185", 4294967295
  %"trunc32.100" = trunc i64 %"and.8" to i32
  store i32 %"trunc32.100", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".3525" = load i32, ptr %"R11"
  %".3526" = load i1, ptr %"PT"
  %"cmp.32" = icmp ne i32 %".3525", 0
  %".3527" = xor i1 %"cmp.32", -1
  %".3528" = and i1 %"cmp.32", %".3526"
  %".3529" = and i1 %".3527", %".3526"
  store i1 %".3528", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3532" = load i1, ptr %"P0"
  %".3533" = icmp eq i1 %".3532", 1
  br i1 %".3533", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...2_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3536" = load float, ptr %"R24"
  %"fmul.155" = fmul float %".3536", 0x43f0000000000000
  %"fadd.132" = fadd float %"fmul.155",              0x0
  %".3537" = bitcast ptr %"R12" to ptr
  store float %"fadd.132", ptr %".3537"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...2:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".3542" = load float, ptr %"R24"
  %"fmul.156" = fmul float %".3542", 0x43f0000000000000
  %"fadd.133" = fadd float %"fmul.156",              0x0
  %".3543" = bitcast ptr %"R12" to ptr
  store float %"fadd.133", ptr %".3543"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2:
  ; @!P0 MUFU.RCP R11, R24
  %".3548" = load i1, ptr %"P0"
  %".3549" = icmp ne i1 %".3548", 1
  br i1 %".3549", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...2_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".3552" = load i32, ptr %"R24"
  %"sint_to_f32.1" = sitofp i32 %".3552" to float
  %".3553" = fdiv float 0x3ff0000000000000, %"sint_to_f32.1"
  %".3554" = fptosi float %".3553" to i32
  store i32 %".3554", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...2:
  ; MUFU.RCP R11, R24
  %".3559" = load i32, ptr %"R24"
  %"sint_to_f32.2" = sitofp i32 %".3559" to float
  %".3560" = fdiv float 0x3ff0000000000000, %"sint_to_f32.2"
  %".3561" = fptosi float %".3560" to i32
  store i32 %".3561", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2:
  ; @P0 MUFU.RCP R13, R12
  %".3566" = load i1, ptr %"P0"
  %".3567" = icmp eq i1 %".3566", 1
  br i1 %".3567", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...2_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".3570" = load float, ptr %"R12"
  %".3571" = fdiv float 0x3ff0000000000000, %".3570"
  %".3572" = bitcast ptr %"R13" to ptr
  store float %".3571", ptr %".3572"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...2:
  ; MUFU.RCP R13, R12
  %".3577" = load float, ptr %"R12"
  %".3578" = fdiv float 0x3ff0000000000000, %".3577"
  %".3579" = bitcast ptr %"R13" to ptr
  store float %".3578", ptr %".3579"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2:
  ; @P0 FFMA R22, R12, R13, -1
  %".3584" = load i1, ptr %"P0"
  %".3585" = icmp eq i1 %".3584", 1
  br i1 %".3585", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...2_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".3588" = load float, ptr %"R12"
  %".3589" = load float, ptr %"R13"
  %"fmul.157" = fmul float %".3588", %".3589"
  %"fadd.134" = fadd float %"fmul.157", 0xbff0000000000000
  %".3590" = bitcast ptr %"R22" to ptr
  store float %"fadd.134", ptr %".3590"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...2:
  ; FFMA R22, R12, R13, -1
  %".3595" = load float, ptr %"R12"
  %".3596" = load float, ptr %"R13"
  %"fmul.158" = fmul float %".3595", %".3596"
  %"fadd.135" = fadd float %"fmul.158", 0xbff0000000000000
  %".3597" = bitcast ptr %"R22" to ptr
  store float %"fadd.135", ptr %".3597"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".3602" = load i1, ptr %"P0"
  %".3603" = icmp eq i1 %".3602", 1
  br i1 %".3603", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...2_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".3606" = load float, ptr %"R22"
  %".3607" = fneg float %".3606"
  %".3608" = call float @"llvm.fabs"(float %".3607")
  %".3609" = fcmp ogt float %".3608",              0x0
  %".3610" = fcmp olt float %".3608", 0x3810000000000000
  %".3611" = and i1 %".3609", %".3610"
  %".3612" = select  i1 %".3611", float              0x0, float %".3607"
  %".3613" = call float @"llvm.fabs"(float              0x0)
  %".3614" = fcmp ogt float %".3613",              0x0
  %".3615" = fcmp olt float %".3613", 0x3810000000000000
  %".3616" = and i1 %".3614", %".3615"
  %".3617" = select  i1 %".3616", float              0x0, float              0x0
  %"fadd.136" = fadd float %".3612", %".3617"
  %".3618" = call float @"llvm.fabs"(float %"fadd.136")
  %".3619" = fcmp ogt float %".3618",              0x0
  %".3620" = fcmp olt float %".3618", 0x3810000000000000
  %".3621" = and i1 %".3619", %".3620"
  %".3622" = select  i1 %".3621", float              0x0, float %"fadd.136"
  %".3623" = bitcast ptr %"R22" to ptr
  store float %".3622", ptr %".3623"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...2:
  ; FADD.FTZ R22, -R22, -RZ
  %".3628" = load float, ptr %"R22"
  %".3629" = fneg float %".3628"
  %".3630" = call float @"llvm.fabs"(float %".3629")
  %".3631" = fcmp ogt float %".3630",              0x0
  %".3632" = fcmp olt float %".3630", 0x3810000000000000
  %".3633" = and i1 %".3631", %".3632"
  %".3634" = select  i1 %".3633", float              0x0, float %".3629"
  %".3635" = call float @"llvm.fabs"(float              0x0)
  %".3636" = fcmp ogt float %".3635",              0x0
  %".3637" = fcmp olt float %".3635", 0x3810000000000000
  %".3638" = and i1 %".3636", %".3637"
  %".3639" = select  i1 %".3638", float              0x0, float              0x0
  %"fadd.137" = fadd float %".3634", %".3639"
  %".3640" = call float @"llvm.fabs"(float %"fadd.137")
  %".3641" = fcmp ogt float %".3640",              0x0
  %".3642" = fcmp olt float %".3640", 0x3810000000000000
  %".3643" = and i1 %".3641", %".3642"
  %".3644" = select  i1 %".3643", float              0x0, float %"fadd.137"
  %".3645" = bitcast ptr %"R22" to ptr
  store float %".3644", ptr %".3645"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2:
  ; @P0 FFMA R22, R13, R22, R13
  %".3650" = load i1, ptr %"P0"
  %".3651" = icmp eq i1 %".3650", 1
  br i1 %".3651", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...2_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".3654" = load float, ptr %"R13"
  %".3655" = load float, ptr %"R22"
  %".3656" = load float, ptr %"R13"
  %"fmul.159" = fmul float %".3654", %".3655"
  %"fadd.138" = fadd float %"fmul.159", %".3656"
  %".3657" = bitcast ptr %"R22" to ptr
  store float %"fadd.138", ptr %".3657"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...2:
  ; FFMA R22, R13, R22, R13
  %".3662" = load float, ptr %"R13"
  %".3663" = load float, ptr %"R22"
  %".3664" = load float, ptr %"R13"
  %"fmul.160" = fmul float %".3662", %".3663"
  %"fadd.139" = fadd float %"fmul.160", %".3664"
  %".3665" = bitcast ptr %"R22" to ptr
  store float %"fadd.139", ptr %".3665"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3670" = load i1, ptr %"P0"
  %".3671" = icmp eq i1 %".3670", 1
  br i1 %".3671", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...2_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3674" = load float, ptr %"R22"
  %"fmul.161" = fmul float %".3674", 0x43f0000000000000
  %"fadd.140" = fadd float %"fmul.161",              0x0
  %".3675" = bitcast ptr %"R11" to ptr
  store float %"fadd.140", ptr %".3675"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...2:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".3680" = load float, ptr %"R22"
  %"fmul.162" = fmul float %".3680", 0x43f0000000000000
  %"fadd.141" = fadd float %"fmul.162",              0x0
  %".3681" = bitcast ptr %"R11" to ptr
  store float %"fadd.141", ptr %".3681"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...2:
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_49...2:
  ; IADD3 R34, R25, -0xfd, RZ
  %".3688" = load i32, ptr %"R25"
  %".3689" = add i32 %".3688", -253
  %".3690" = add i32 %".3689", 0
  store i32 %".3690", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".3693" = load i32, ptr %"R34"
  %".3694" = load i1, ptr %"PT"
  %"cmp.33" = icmp sgt i32 %".3693", 1
  %".3695" = xor i1 %"cmp.33", -1
  %".3696" = and i1 %"cmp.33", %".3694"
  %".3697" = and i1 %".3695", %".3694"
  store i1 %".3696", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".3700" = load i1, ptr %"P0"
  %".3701" = icmp eq i1 %".3700", 1
  br i1 %".3701", label %".L_x_51...2", label %".L_x_49_split_0x4a30...2"
.L_x_49_split_0x4a30...2:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3704" = load i32, ptr %"R24"
  %".3705" = xor i1 1, -1
  %".3706" = and i32 %".3704", 8388607
  store i32 %".3706", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".3711" = load i32, ptr %"R11"
  %".3712" = xor i1 1, -1
  %".3713" = or i32 %".3711", 1065353216
  store i32 %".3713", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".3716" = load i32, ptr %"R34"
  %".3717" = icmp ult i32 %".3716", 32
  %"SHF_min.13" = select  i1 %".3717", i32 %".3716", i32 32
  %".3718" = load i32, ptr %"R23"
  %".3719" = load i32, ptr %"R34"
  %"zext.355" = zext i32 0 to i64
  %"zext.356" = zext i32 %".3718" to i64
  %"zext.357" = zext i32 %".3719" to i64
  %"shl.186" = shl i64 %"zext.355", 32
  %"or.171" = or i64 %"shl.186", %"zext.356"
  %"shl.187" = shl i64 %"or.171", %"zext.357"
  %"and.9" = and i64 %"shl.187", 4294967295
  %"trunc32.101" = trunc i64 %"and.9" to i32
  store i32 %"trunc32.101", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".3722" = load i32, ptr %"R11"
  %"sint_to_f32.3" = sitofp i32 %".3722" to float
  %".3723" = fdiv float 0x3ff0000000000000, %"sint_to_f32.3"
  %".3724" = fptosi float %".3723" to i32
  store i32 %".3724", ptr %"R12"
  ; FFMA R13, R11, R12, -1
  %".3727" = load float, ptr %"R11"
  %".3728" = load float, ptr %"R12"
  %"fmul.163" = fmul float %".3727", %".3728"
  %"fadd.142" = fadd float %"fmul.163", 0xbff0000000000000
  %".3729" = bitcast ptr %"R13" to ptr
  store float %"fadd.142", ptr %".3729"
  ; FADD.FTZ R13, -R13, -RZ
  %".3732" = load float, ptr %"R13"
  %".3733" = fneg float %".3732"
  %".3734" = call float @"llvm.fabs"(float %".3733")
  %".3735" = fcmp ogt float %".3734",              0x0
  %".3736" = fcmp olt float %".3734", 0x3810000000000000
  %".3737" = and i1 %".3735", %".3736"
  %".3738" = select  i1 %".3737", float              0x0, float %".3733"
  %".3739" = call float @"llvm.fabs"(float              0x0)
  %".3740" = fcmp ogt float %".3739",              0x0
  %".3741" = fcmp olt float %".3739", 0x3810000000000000
  %".3742" = and i1 %".3740", %".3741"
  %".3743" = select  i1 %".3742", float              0x0, float              0x0
  %"fadd.143" = fadd float %".3738", %".3743"
  %".3744" = call float @"llvm.fabs"(float %"fadd.143")
  %".3745" = fcmp ogt float %".3744",              0x0
  %".3746" = fcmp olt float %".3744", 0x3810000000000000
  %".3747" = and i1 %".3745", %".3746"
  %".3748" = select  i1 %".3747", float              0x0, float %"fadd.143"
  %".3749" = bitcast ptr %"R13" to ptr
  store float %".3748", ptr %".3749"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".3752" = load float, ptr %"R12"
  %".3753" = load float, ptr %"R13"
  %".3754" = load float, ptr %"R12"
  %"fmul.164" = fmul float %".3752", %".3753"
  %"fadd.144" = fadd float %"fmul.164", %".3754"
  %".3755" = bitcast ptr %"R22" to ptr
  store float %"fadd.144", ptr %".3755"
  ; FFMA.RP R13, R12, R13, R12
  %".3758" = load float, ptr %"R12"
  %".3759" = load float, ptr %"R13"
  %".3760" = load float, ptr %"R12"
  %"fmul.165" = fmul float %".3758", %".3759"
  %"fadd.145" = fadd float %"fmul.165", %".3760"
  %".3761" = bitcast ptr %"R13" to ptr
  store float %"fadd.145", ptr %".3761"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".3764" = load i32, ptr %"R22"
  %".3765" = xor i1 1, -1
  %".3766" = and i32 %".3764", 8388607
  store i32 %".3766", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".3769" = load float, ptr %"R22"
  %".3770" = load float, ptr %"R13"
  %".3771" = load i1, ptr %"PT"
  %".3772" = call float @"llvm.fabs"(float %".3769")
  %".3773" = fcmp ogt float %".3772",              0x0
  %".3774" = fcmp olt float %".3772", 0x3810000000000000
  %".3775" = and i1 %".3773", %".3774"
  %".3776" = select  i1 %".3775", float              0x0, float %".3769"
  %".3777" = call float @"llvm.fabs"(float %".3770")
  %".3778" = fcmp ogt float %".3777",              0x0
  %".3779" = fcmp olt float %".3777", 0x3810000000000000
  %".3780" = and i1 %".3778", %".3779"
  %".3781" = select  i1 %".3780", float              0x0, float %".3770"
  %"fcmp_ordered.1" = fcmp une float %".3776", %".3781"
  %".3782" = xor i1 %"fcmp_ordered.1", -1
  %".3783" = and i1 %"fcmp_ordered.1", %".3771"
  %".3784" = and i1 %".3782", %".3771"
  store i1 %".3783", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".3787" = load i32, ptr %"R12"
  %".3788" = xor i1 1, -1
  %".3789" = or i32 %".3787", 8388608
  store i32 %".3789", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".3792" = load i1, ptr %"P0"
  %".3793" = xor i1 %".3792", -1
  %".3794" = icmp eq i1 %".3793", 1
  %"sel.2" = select  i1 %".3794", i32 0, i32 4294967295
  store i32 %"sel.2", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".3797" = load i32, ptr %"R23"
  %".3798" = load i32, ptr %"R12"
  %".3799" = xor i1 1, -1
  %".3800" = and i32 %".3797", %".3798"
  store i32 %".3800", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".3803" = load i32, ptr %"R13"
  %".3804" = sub i32 0, %".3803"
  %".3805" = add i32 %".3804", 0
  %".3806" = add i32 %".3805", 0
  store i32 %".3806", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".3809" = load i32, ptr %"R34"
  %".3810" = icmp ult i32 %".3809", 32
  %"SHF_min.14" = select  i1 %".3810", i32 %".3809", i32 32
  %".3811" = load i32, ptr %"R23"
  %".3812" = load i32, ptr %"R34"
  %"zext.358" = zext i32 %".3811" to i64
  %"zext.359" = zext i32 0 to i64
  %"zext.360" = zext i32 %".3812" to i64
  %"shl.188" = shl i64 %"zext.358", 32
  %"or.172" = or i64 %"shl.188", %"zext.359"
  %"lshr.8" = lshr i64 %"or.172", %"zext.360"
  %"lshr.9" = lshr i64 %"lshr.8", 32
  %"trunc32.102" = trunc i64 %"lshr.9" to i32
  store i32 %"trunc32.102", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".3815" = load i32, ptr %"R13"
  %".3816" = load i32, ptr %"R34"
  %".3817" = load i32, ptr %"R12"
  %".3818" = xor i1 1, -1
  %".3819" = or i32 %".3815", %".3816"
  %".3820" = or i32 %".3815", %".3817"
  %".3821" = and i32 %".3819", %".3820"
  store i32 %".3821", ptr %"RZ"
  %".3823" = icmp ne i32 %".3821", 0
  store i1 %".3823", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".3826" = load i32, ptr %"R23"
  %".3827" = xor i1 1, -1
  %".3828" = and i32 %".3826", 1
  store i32 %".3828", ptr %"RZ"
  %".3830" = icmp ne i32 %".3828", 0
  store i1 %".3830", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".3833" = load i32, ptr %"R23"
  %".3834" = xor i1 1, -1
  %".3835" = and i32 %".3833", 2
  store i32 %".3835", ptr %"RZ"
  %".3837" = icmp ne i32 %".3835", 0
  store i1 %".3837", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".3840" = load i1, ptr %"P0"
  %".3841" = load i1, ptr %"P1"
  %".3842" = or i1 %".3840", %".3841"
  %".3843" = and i1 %".3842", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".3845" = load i32, ptr %"R24"
  %".3846" = xor i1 1, -1
  %".3847" = and i32 %".3845", 8388607
  store i32 %".3847", ptr %"RZ"
  %".3849" = icmp ne i32 %".3847", 0
  store i1 %".3849", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".3852" = load i1, ptr %"P0"
  %".3853" = xor i1 %".3852", -1
  %".3854" = icmp eq i1 %".3853", 1
  %"sel.3" = select  i1 %".3854", i32 0, i32 1
  store i32 %"sel.3", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".3857" = load i32, ptr %"R11"
  %".3858" = sub i32 0, %".3857"
  %".3859" = add i32 %".3858", 0
  %".3860" = add i32 %".3859", 0
  store i32 %".3860", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".3863" = load i32, ptr %"R11"
  %".3864" = load i1, ptr %"PT"
  %"cmp.34" = icmp sge i32 %".3863", 0
  %".3865" = xor i1 %"cmp.34", -1
  %".3866" = and i1 %"cmp.34", %".3864"
  %".3867" = and i1 %".3865", %".3864"
  store i1 %".3866", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".3870" = load i32, ptr %"R25"
  %".3871" = add i32 %".3870", -252
  %".3872" = add i32 %".3871", 0
  store i32 %".3872", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".3875" = load i32, ptr %"R11"
  %".3876" = icmp ult i32 %".3875", 32
  %"SHF_min.15" = select  i1 %".3876", i32 %".3875", i32 32
  %".3877" = load i32, ptr %"R12"
  %".3878" = load i32, ptr %"R11"
  %"zext.361" = zext i32 %".3877" to i64
  %"zext.362" = zext i32 0 to i64
  %"zext.363" = zext i32 %".3878" to i64
  %"shl.189" = shl i64 %"zext.361", 32
  %"or.173" = or i64 %"shl.189", %"zext.362"
  %"lshr.10" = lshr i64 %"or.173", %"zext.363"
  %"lshr.11" = lshr i64 %"lshr.10", 32
  %"trunc32.103" = trunc i64 %"lshr.11" to i32
  store i32 %"trunc32.103", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".3881" = load i1, ptr %"P0"
  %".3882" = icmp ne i1 %".3881", 1
  br i1 %".3882", label %".L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30...2_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".3885" = load i32, ptr %"R11"
  %".3886" = add i32 %".3885", 1
  %".3887" = add i32 %".3886", 0
  store i32 %".3887", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...2:
  ; IADD3 R11, R11, 0x1, RZ
  %".3892" = load i32, ptr %"R11"
  %".3893" = add i32 %".3892", 1
  %".3894" = add i32 %".3893", 0
  store i32 %".3894", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...2"
.L_x_49_split_0x4be0...2:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".3899" = load i1, ptr %"P1"
  %".3900" = icmp ne i1 %".3899", 1
  br i1 %".3900", label %".L_x_49_split_0x4be0...2_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...2"
.L_x_49_split_0x4be0...2_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".3903" = icmp ult i32 1, 32
  %"SHF_min.16" = select  i1 %".3903", i32 1, i32 32
  %".3904" = load i32, ptr %"R11"
  %"zext.364" = zext i32 0 to i64
  %"zext.365" = zext i32 %".3904" to i64
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
  %".3909" = icmp ult i32 1, 32
  %"SHF_min.17" = select  i1 %".3909", i32 1, i32 32
  %".3910" = load i32, ptr %"R11"
  %"zext.367" = zext i32 0 to i64
  %"zext.368" = zext i32 %".3910" to i64
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
  %".3915" = load i32, ptr %"R11"
  %".3916" = load i32, ptr %"R24"
  %".3917" = xor i1 1, -1
  %".3918" = or i32 %".3915", 2147483648
  %".3919" = or i32 %".3915", %".3916"
  %".3920" = and i32 %".3918", %".3919"
  store i32 %".3920", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...2"
.L_x_51...2:
  ; MUFU.RCP R11, R24
  %".3925" = load i32, ptr %"R24"
  %"sint_to_f32.4" = sitofp i32 %".3925" to float
  %".3926" = fdiv float 0x3ff0000000000000, %"sint_to_f32.4"
  %".3927" = fptosi float %".3926" to i32
  store i32 %".3927", ptr %"R11"
  br label %".L_x_50...2"
.L_x_50...2:
  ; BSYNC B1
  br label %".L_x_48...2"
.L_x_48...2:
  ; MOV R22, R11
  %".3933" = load float, ptr %"R11"
  %".3934" = bitcast ptr %"R22" to ptr
  store float %".3933", ptr %".3934"
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
  %".3944" = load float, ptr %"R22"
  %".3945" = bitcast ptr %"R8" to ptr
  store float %".3944", ptr %".3945"
  ; BRA `(.L_x_21)
  br label %".L_x_21"
.L_x_20:
  ; MUFU.RCP R11, R20
  %".3950" = load float, ptr %"R20"
  %".3951" = fdiv float 0x3ff0000000000000, %".3950"
  %".3952" = bitcast ptr %"R11" to ptr
  store float %".3951", ptr %".3952"
  ; FFMA R8, R20, R11, -1
  %".3955" = load float, ptr %"R20"
  %".3956" = load float, ptr %"R11"
  %"fmul.166" = fmul float %".3955", %".3956"
  %"fadd.146" = fadd float %"fmul.166", 0xbff0000000000000
  %".3957" = bitcast ptr %"R8" to ptr
  store float %"fadd.146", ptr %".3957"
  ; FADD.FTZ R8, -R8, -RZ
  %".3960" = load float, ptr %"R8"
  %".3961" = fneg float %".3960"
  %".3962" = call float @"llvm.fabs"(float %".3961")
  %".3963" = fcmp ogt float %".3962",              0x0
  %".3964" = fcmp olt float %".3962", 0x3810000000000000
  %".3965" = and i1 %".3963", %".3964"
  %".3966" = select  i1 %".3965", float              0x0, float %".3961"
  %".3967" = call float @"llvm.fabs"(float              0x0)
  %".3968" = fcmp ogt float %".3967",              0x0
  %".3969" = fcmp olt float %".3967", 0x3810000000000000
  %".3970" = and i1 %".3968", %".3969"
  %".3971" = select  i1 %".3970", float              0x0, float              0x0
  %"fadd.147" = fadd float %".3966", %".3971"
  %".3972" = call float @"llvm.fabs"(float %"fadd.147")
  %".3973" = fcmp ogt float %".3972",              0x0
  %".3974" = fcmp olt float %".3972", 0x3810000000000000
  %".3975" = and i1 %".3973", %".3974"
  %".3976" = select  i1 %".3975", float              0x0, float %"fadd.147"
  %".3977" = bitcast ptr %"R8" to ptr
  store float %".3976", ptr %".3977"
  ; FFMA R8, R11, R8, R11
  %".3980" = load float, ptr %"R11"
  %".3981" = load float, ptr %"R8"
  %".3982" = load float, ptr %"R11"
  %"fmul.167" = fmul float %".3980", %".3981"
  %"fadd.148" = fadd float %"fmul.167", %".3982"
  %".3983" = bitcast ptr %"R8" to ptr
  store float %"fadd.148", ptr %".3983"
  br label %".L_x_21"
.L_x_21:
  ; BSYNC B0
  br label %".L_x_19"
.L_x_19:
  ; LDG.E.SYS R11, [R28]
  %".3989" = load i32, ptr %"R28"
  %"zext.370" = zext i32 %".3989" to i64
  %".3990" = load i32, ptr %"R29"
  %"zext.371" = zext i32 %".3990" to i64
  %"shl.194" = shl i64 %"zext.371", 32
  %"or.176" = or i64 %"shl.194", %"zext.370"
  %"inttoptr_bytes.158" = inttoptr i64 %"or.176" to ptr addrspace(1)
  %"ptr_cast_for_access.158" = bitcast ptr addrspace(1) %"inttoptr_bytes.158" to ptr addrspace(1)
  %".3991" = load float, ptr addrspace(1) %"ptr_cast_for_access.158"
  %".3992" = bitcast ptr %"R11" to ptr
  store float %".3991", ptr %".3992"
  ; FADD R10, -R8, 1
  %".3995" = load float, ptr %"R8"
  %".3996" = fneg float %".3995"
  %"fadd.149" = fadd float %".3996", 0x3ff0000000000000
  %".3997" = bitcast ptr %"R10" to ptr
  store float %"fadd.149", ptr %".3997"
  ; FMUL R11, R11, R8
  %".4000" = load float, ptr %"R11"
  %".4001" = load float, ptr %"R8"
  %"fmul.168" = fmul float %".4000", %".4001"
  %".4002" = bitcast ptr %"R11" to ptr
  store float %"fmul.168", ptr %".4002"
  ; FFMA R9, R10, R9, R11
  %".4005" = load float, ptr %"R10"
  %".4006" = load float, ptr %"R9"
  %".4007" = load float, ptr %"R11"
  %"fmul.169" = fmul float %".4005", %".4006"
  %"fadd.150" = fadd float %"fmul.169", %".4007"
  %".4008" = bitcast ptr %"R9" to ptr
  store float %"fadd.150", ptr %".4008"
  ; STG.E.SYS [R28], R9
  %".4011" = load float, ptr %"R9"
  %".4012" = load i32, ptr %"R28"
  %"zext.372" = zext i32 %".4012" to i64
  %".4013" = load i32, ptr %"R29"
  %"zext.373" = zext i32 %".4013" to i64
  %"shl.195" = shl i64 %"zext.373", 32
  %"or.177" = or i64 %"shl.195", %"zext.372"
  %"inttoptr_bytes.159" = inttoptr i64 %"or.177" to ptr addrspace(1)
  %"ptr_cast_for_access.159" = bitcast ptr addrspace(1) %"inttoptr_bytes.159" to ptr addrspace(1)
  store float %".4011", ptr addrspace(1) %"ptr_cast_for_access.159"
  ; @!P3 BRA `(.L_x_22)
  %".4016" = load i1, ptr %"P3"
  %".4017" = icmp ne i1 %".4016", 1
  br i1 %".4017", label %".L_x_22", label %".L_x_19_split_0x2270"
.L_x_19_split_0x2270:
  ; EXIT
  br label %"ExitFunction"
.L_x_0:
  ; MOV R18, 0x1
  store i32 1, ptr %"R18"
  ; LOP3.LUT R15, R15, 0x3, RZ, 0xc0, !PT
  %".4024" = load i32, ptr %"R15"
  %".4025" = xor i1 1, -1
  %".4026" = and i32 %".4024", 3
  store i32 %".4026", ptr %"R15"
  ; LOP3.LUT R48, R5, 0x3, RZ, 0xc0, !PT
  %".4029" = load i32, ptr %"R5"
  %".4030" = xor i1 1, -1
  %".4031" = and i32 %".4029", 3
  store i32 %".4031", ptr %"R48"
  ; IADD3 R49, -R18, c[0x0][0x180], RZ
  %".4034" = load i32, ptr %"R18"
  %".4035" = sub i32 0, %".4034"
  %".4036" = add i32 %".4035", %"Arg_4"
  %".4037" = add i32 %".4036", 0
  store i32 %".4037", ptr %"R49"
  ; SHF.R.S32.HI R16, RZ, 0x1f, R5
  %".4040" = icmp ult i32 31, 32
  %"SHF_min.18" = select  i1 %".4040", i32 31, i32 32
  %".4041" = load i32, ptr %"R5"
  %"zext.374" = zext i32 %".4041" to i64
  %"zext.375" = zext i32 0 to i64
  %"zext.376" = zext i32 31 to i64
  %"shl.196" = shl i64 %"zext.374", 32
  %"or.178" = or i64 %"shl.196", %"zext.375"
  %"ashr" = ashr i64 %"or.178", %"zext.376"
  %"ashr.1" = ashr i64 %"ashr", 32
  %"trunc32.106" = trunc i64 %"ashr.1" to i32
  store i32 %"trunc32.106", ptr %"R16"
  ; MOV R17, RZ
  %".4044" = load i32, ptr %"RZ"
  store i32 %".4044", ptr %"R17"
  ; IADD3 R18, -R18, c[0x0][0x184], RZ
  %".4047" = load i32, ptr %"R18"
  %".4048" = sub i32 0, %".4047"
  %".4049" = add i32 %".4048", %"Arg_5"
  %".4050" = add i32 %".4049", 0
  store i32 %".4050", ptr %"R18"
  ; IADD3 R19, -R15, c[0x0][0x180], RZ
  %".4053" = load i32, ptr %"R15"
  %".4054" = sub i32 0, %".4053"
  %".4055" = add i32 %".4054", %"Arg_4"
  %".4056" = add i32 %".4055", 0
  store i32 %".4056", ptr %"R19"
  ; IADD3 R20, -R48, c[0x0][0x184], RZ
  %".4059" = load i32, ptr %"R48"
  %".4060" = sub i32 0, %".4059"
  %".4061" = add i32 %".4060", %"Arg_5"
  %".4062" = add i32 %".4061", 0
  store i32 %".4062", ptr %"R20"
  br label %".L_x_47"
.L_x_47:
  ; ISETP.GE.U32.AND P0, PT, R49, 0x3, PT
  %".4066" = load i32, ptr %"R49"
  %".4067" = load i1, ptr %"PT"
  %"cmp.35" = icmp sge i32 %".4066", 3
  %".4068" = xor i1 %"cmp.35", -1
  %".4069" = and i1 %"cmp.35", %".4067"
  %".4070" = and i1 %".4068", %".4067"
  store i1 %".4069", ptr %"P0"
  ; MOV R13, R17
  %".4073" = load i32, ptr %"R17"
  store i32 %".4073", ptr %"R13"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R4"
  ; IADD3 R17, R17, 0x1, RZ
  %".4078" = load i32, ptr %"R17"
  %".4079" = add i32 %".4078", 1
  %".4080" = add i32 %".4079", 0
  store i32 %".4080", ptr %"R17"
  ; ISETP.GE.AND P4, PT, R4, 0x1, PT
  %".4083" = load i32, ptr %"R4"
  %".4084" = load i1, ptr %"PT"
  %"cmp.36" = icmp sge i32 %".4083", 1
  %".4085" = xor i1 %"cmp.36", -1
  %".4086" = and i1 %"cmp.36", %".4084"
  %".4087" = and i1 %".4085", %".4084"
  store i1 %".4086", ptr %"P4"
  ; ISETP.NE.AND P1, PT, R15, RZ, PT
  %".4090" = load i32, ptr %"R15"
  %".4091" = load i1, ptr %"PT"
  %"cmp.37" = icmp ne i32 %".4090", 0
  %".4092" = xor i1 %"cmp.37", -1
  %".4093" = and i1 %"cmp.37", %".4091"
  %".4094" = and i1 %".4092", %".4091"
  store i1 %".4093", ptr %"P1"
  ; ISETP.GE.AND P3, PT, R17, c[0x0][0x188], PT
  %".4097" = load i32, ptr %"R17"
  %".4098" = load i1, ptr %"PT"
  %"cmp.38" = icmp sge i32 %".4097", %"Arg_6"
  %".4099" = xor i1 %"cmp.38", -1
  %".4100" = and i1 %"cmp.38", %".4098"
  %".4101" = and i1 %".4099", %".4098"
  store i1 %".4100", ptr %"P3"
  ; MOV R21, RZ
  %".4104" = load float, ptr %"RZ"
  %".4105" = bitcast ptr %"R21" to ptr
  store float %".4104", ptr %".4105"
  ; MOV R22, RZ
  %".4108" = load i32, ptr %"RZ"
  store i32 %".4108", ptr %"R22"
  ; MOV R56, RZ
  %".4111" = load float, ptr %"RZ"
  %".4112" = bitcast ptr %"R56" to ptr
  store float %".4111", ptr %".4112"
  ; MOV R44, RZ
  %".4115" = load float, ptr %"RZ"
  %".4116" = bitcast ptr %"R44" to ptr
  store float %".4115", ptr %".4116"
  ; @!P0 BRA `(.L_x_23)
  %".4119" = load i1, ptr %"P0"
  %".4120" = icmp ne i1 %".4119", 1
  br i1 %".4120", label %".L_x_23", label %".L_x_47_split_0x23d0"
.L_x_47_split_0x23d0:
  ; MOV R25, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R25"
  ; MOV R21, RZ
  %".4125" = load float, ptr %"RZ"
  %".4126" = bitcast ptr %"R21" to ptr
  store float %".4125", ptr %".4126"
  ; MOV R22, RZ
  %".4129" = load i32, ptr %"RZ"
  store i32 %".4129", ptr %"R22"
  ; MOV R12, R19
  %".4132" = load i32, ptr %"R19"
  store i32 %".4132", ptr %"R12"
  ; SHF.L.U64.HI R23, R25, 0x2, R16
  %".4135" = icmp ult i32 2, 64
  %"SHF_min.19" = select  i1 %".4135", i32 2, i32 64
  %".4136" = load i32, ptr %"R16"
  %".4137" = load i32, ptr %"R25"
  %"zext.377" = zext i32 %".4136" to i64
  %"zext.378" = zext i32 %".4137" to i64
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
  %".4143" = load i32, ptr %"R14"
  %".4144" = load i32, ptr %"R22"
  %"imad_mul.52" = mul i32 %".4143", %"Arg_4"
  %"imad_add.52" = add i32 %"imad_mul.52", %".4144"
  store i32 %"imad_add.52", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R9"
  ; IMAD R10, R13, c[0x0][0x180], R22
  %".4149" = load i32, ptr %"R13"
  %".4150" = load i32, ptr %"R22"
  %"imad_mul.53" = mul i32 %".4149", %"Arg_4"
  %"imad_add.53" = add i32 %"imad_mul.53", %".4150"
  store i32 %"imad_add.53", ptr %"R10"
  ; IMAD.WIDE R4, R6, R7, c[0x0][0x170]
  %".4153" = load i32, ptr %"R6"
  %".4154" = load i32, ptr %"R7"
  %"imad_ext1.44" = zext i32 %".4153" to i64
  %"imad_ext2.44" = zext i32 %".4154" to i64
  %"imad_mul.54" = mul i64 %"imad_ext1.44", %"imad_ext2.44"
  %".4155" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.54" = add i64 %"imad_mul.54", %".4155"
  %".4156" = and i64 %"imad_add.54", 18446744069414584320
  %".4157" = lshr i64 %".4156", 32
  %"trunc32.108" = trunc i64 %".4157" to i32
  %"trunc32.109" = trunc i64 %"imad_add.54" to i32
  store i32 %"trunc32.109", ptr %"R4"
  store i32 %"trunc32.108", ptr %"R5"
  ; LEA R6, R9, R6, 0x1
  %".4161" = load i32, ptr %"R9"
  %".4162" = load i32, ptr %"R6"
  %"shl.199" = shl i32 %".4161", 1
  %"add.6" = add i32 %"shl.199", %".4162"
  store i32 %"add.6", ptr %"R6"
  ; IMAD.WIDE R10, R10, R7, c[0x0][0x160]
  %".4165" = load i32, ptr %"R10"
  %".4166" = load i32, ptr %"R7"
  %"imad_ext1.45" = zext i32 %".4165" to i64
  %"imad_ext2.45" = zext i32 %".4166" to i64
  %"imad_mul.55" = mul i64 %"imad_ext1.45", %"imad_ext2.45"
  %".4167" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.55" = add i64 %"imad_mul.55", %".4167"
  %".4168" = and i64 %"imad_add.55", 18446744069414584320
  %".4169" = lshr i64 %".4168", 32
  %"trunc32.110" = trunc i64 %".4169" to i32
  %"trunc32.111" = trunc i64 %"imad_add.55" to i32
  store i32 %"trunc32.111", ptr %"R10"
  store i32 %"trunc32.110", ptr %"R11"
  ; LEA R8, P0, R25, R4, 0x2
  %".4173" = load i32, ptr %"R25"
  %".4174" = load i32, ptr %"R4"
  %"shl.200" = shl i32 %".4173", 2
  %"add.7" = add i32 %"shl.200", %".4174"
  store i32 %"add.7", ptr %"R8"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".4177" = load i32, ptr %"R6"
  %".4178" = load i32, ptr %"R7"
  %"imad_ext1.46" = zext i32 %".4177" to i64
  %"imad_ext2.46" = zext i32 %".4178" to i64
  %"imad_mul.56" = mul i64 %"imad_ext1.46", %"imad_ext2.46"
  %".4179" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.56" = add i64 %"imad_mul.56", %".4179"
  %".4180" = and i64 %"imad_add.56", 18446744069414584320
  %".4181" = lshr i64 %".4180", 32
  %"trunc32.112" = trunc i64 %".4181" to i32
  %"trunc32.113" = trunc i64 %"imad_add.56" to i32
  store i32 %"trunc32.113", ptr %"R6"
  store i32 %"trunc32.112", ptr %"R7"
  ; IADD3.X R9, R5, R23, RZ, P0, !PT
  %".4185" = load i32, ptr %"R5"
  %".4186" = load i32, ptr %"R23"
  %".4187" = load i1, ptr %"P0"
  %".4188" = xor i1 1, -1
  %".4189" = zext i1 %".4187" to i32
  %".4190" = zext i1 %".4188" to i32
  %"add.8" = add i32 %".4185", %".4186"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".4189"
  %"add.11" = add i32 %"add.10", %".4190"
  store i32 %"add.11", ptr %"R9"
  ; LDG.E.SYS R35, [R4]
  %".4193" = load i32, ptr %"R4"
  %"zext.380" = zext i32 %".4193" to i64
  %".4194" = load i32, ptr %"R5"
  %"zext.381" = zext i32 %".4194" to i64
  %"shl.201" = shl i64 %"zext.381", 32
  %"or.180" = or i64 %"shl.201", %"zext.380"
  %"inttoptr_bytes.160" = inttoptr i64 %"or.180" to ptr addrspace(1)
  %"ptr_cast_for_access.160" = bitcast ptr addrspace(1) %"inttoptr_bytes.160" to ptr addrspace(1)
  %".4195" = load float, ptr addrspace(1) %"ptr_cast_for_access.160"
  %".4196" = bitcast ptr %"R35" to ptr
  store float %".4195", ptr %".4196"
  ; LDG.E.SYS R24, [R10]
  %".4199" = load i32, ptr %"R10"
  %"zext.382" = zext i32 %".4199" to i64
  %".4200" = load i32, ptr %"R11"
  %"zext.383" = zext i32 %".4200" to i64
  %"shl.202" = shl i64 %"zext.383", 32
  %"or.181" = or i64 %"shl.202", %"zext.382"
  %"inttoptr_bytes.161" = inttoptr i64 %"or.181" to ptr addrspace(1)
  %"ptr_cast_for_access.161" = bitcast ptr addrspace(1) %"inttoptr_bytes.161" to ptr addrspace(1)
  %".4201" = load float, ptr addrspace(1) %"ptr_cast_for_access.161"
  %".4202" = bitcast ptr %"R24" to ptr
  store float %".4201", ptr %".4202"
  ; LDG.E.SYS R37, [R8]
  %".4205" = load i32, ptr %"R8"
  %"zext.384" = zext i32 %".4205" to i64
  %".4206" = load i32, ptr %"R9"
  %"zext.385" = zext i32 %".4206" to i64
  %"shl.203" = shl i64 %"zext.385", 32
  %"or.182" = or i64 %"shl.203", %"zext.384"
  %"inttoptr_bytes.162" = inttoptr i64 %"or.182" to ptr addrspace(1)
  %"ptr_cast_for_access.162" = bitcast ptr addrspace(1) %"inttoptr_bytes.162" to ptr addrspace(1)
  %".4207" = load float, ptr addrspace(1) %"ptr_cast_for_access.162"
  %".4208" = bitcast ptr %"R37" to ptr
  store float %".4207", ptr %".4208"
  ; LDG.E.SYS R34, [R6]
  %".4211" = load i32, ptr %"R6"
  %"zext.386" = zext i32 %".4211" to i64
  %".4212" = load i32, ptr %"R7"
  %"zext.387" = zext i32 %".4212" to i64
  %"shl.204" = shl i64 %"zext.387", 32
  %"or.183" = or i64 %"shl.204", %"zext.386"
  %"inttoptr_bytes.163" = inttoptr i64 %"or.183" to ptr addrspace(1)
  %"ptr_cast_for_access.163" = bitcast ptr addrspace(1) %"inttoptr_bytes.163" to ptr addrspace(1)
  %".4213" = load float, ptr addrspace(1) %"ptr_cast_for_access.163"
  %".4214" = bitcast ptr %"R34" to ptr
  store float %".4213", ptr %".4214"
  ; LDG.E.SYS R36, [R4+0x4]
  %".4217" = load i32, ptr %"R4"
  %"zext.388" = zext i32 %".4217" to i64
  %".4218" = load i32, ptr %"R5"
  %"zext.389" = zext i32 %".4218" to i64
  %"shl.205" = shl i64 %"zext.389", 32
  %"or.184" = or i64 %"shl.205", %"zext.388"
  %"ptr_plus_imm.115" = add i64 %"or.184", 4
  %"inttoptr_bytes.164" = inttoptr i64 %"ptr_plus_imm.115" to ptr addrspace(1)
  %"ptr_cast_for_access.164" = bitcast ptr addrspace(1) %"inttoptr_bytes.164" to ptr addrspace(1)
  %".4219" = load float, ptr addrspace(1) %"ptr_cast_for_access.164"
  %".4220" = bitcast ptr %"R36" to ptr
  store float %".4219", ptr %".4220"
  ; LDG.E.SYS R38, [R10+0x4]
  %".4223" = load i32, ptr %"R10"
  %"zext.390" = zext i32 %".4223" to i64
  %".4224" = load i32, ptr %"R11"
  %"zext.391" = zext i32 %".4224" to i64
  %"shl.206" = shl i64 %"zext.391", 32
  %"or.185" = or i64 %"shl.206", %"zext.390"
  %"ptr_plus_imm.116" = add i64 %"or.185", 4
  %"inttoptr_bytes.165" = inttoptr i64 %"ptr_plus_imm.116" to ptr addrspace(1)
  %"ptr_cast_for_access.165" = bitcast ptr addrspace(1) %"inttoptr_bytes.165" to ptr addrspace(1)
  %".4225" = load float, ptr addrspace(1) %"ptr_cast_for_access.165"
  %".4226" = bitcast ptr %"R38" to ptr
  store float %".4225", ptr %".4226"
  ; LDG.E.SYS R39, [R8+0x4]
  %".4229" = load i32, ptr %"R8"
  %"zext.392" = zext i32 %".4229" to i64
  %".4230" = load i32, ptr %"R9"
  %"zext.393" = zext i32 %".4230" to i64
  %"shl.207" = shl i64 %"zext.393", 32
  %"or.186" = or i64 %"shl.207", %"zext.392"
  %"ptr_plus_imm.117" = add i64 %"or.186", 4
  %"inttoptr_bytes.166" = inttoptr i64 %"ptr_plus_imm.117" to ptr addrspace(1)
  %"ptr_cast_for_access.166" = bitcast ptr addrspace(1) %"inttoptr_bytes.166" to ptr addrspace(1)
  %".4231" = load float, ptr addrspace(1) %"ptr_cast_for_access.166"
  %".4232" = bitcast ptr %"R39" to ptr
  store float %".4231", ptr %".4232"
  ; LDG.E.SYS R41, [R6+0x4]
  %".4235" = load i32, ptr %"R6"
  %"zext.394" = zext i32 %".4235" to i64
  %".4236" = load i32, ptr %"R7"
  %"zext.395" = zext i32 %".4236" to i64
  %"shl.208" = shl i64 %"zext.395", 32
  %"or.187" = or i64 %"shl.208", %"zext.394"
  %"ptr_plus_imm.118" = add i64 %"or.187", 4
  %"inttoptr_bytes.167" = inttoptr i64 %"ptr_plus_imm.118" to ptr addrspace(1)
  %"ptr_cast_for_access.167" = bitcast ptr addrspace(1) %"inttoptr_bytes.167" to ptr addrspace(1)
  %".4237" = load float, ptr addrspace(1) %"ptr_cast_for_access.167"
  %".4238" = bitcast ptr %"R41" to ptr
  store float %".4237", ptr %".4238"
  ; LDG.E.SYS R42, [R10+0x8]
  %".4241" = load i32, ptr %"R10"
  %"zext.396" = zext i32 %".4241" to i64
  %".4242" = load i32, ptr %"R11"
  %"zext.397" = zext i32 %".4242" to i64
  %"shl.209" = shl i64 %"zext.397", 32
  %"or.188" = or i64 %"shl.209", %"zext.396"
  %"ptr_plus_imm.119" = add i64 %"or.188", 8
  %"inttoptr_bytes.168" = inttoptr i64 %"ptr_plus_imm.119" to ptr addrspace(1)
  %"ptr_cast_for_access.168" = bitcast ptr addrspace(1) %"inttoptr_bytes.168" to ptr addrspace(1)
  %".4243" = load float, ptr addrspace(1) %"ptr_cast_for_access.168"
  %".4244" = bitcast ptr %"R42" to ptr
  store float %".4243", ptr %".4244"
  ; LDG.E.SYS R40, [R4+0x8]
  %".4247" = load i32, ptr %"R4"
  %"zext.398" = zext i32 %".4247" to i64
  %".4248" = load i32, ptr %"R5"
  %"zext.399" = zext i32 %".4248" to i64
  %"shl.210" = shl i64 %"zext.399", 32
  %"or.189" = or i64 %"shl.210", %"zext.398"
  %"ptr_plus_imm.120" = add i64 %"or.189", 8
  %"inttoptr_bytes.169" = inttoptr i64 %"ptr_plus_imm.120" to ptr addrspace(1)
  %"ptr_cast_for_access.169" = bitcast ptr addrspace(1) %"inttoptr_bytes.169" to ptr addrspace(1)
  %".4249" = load float, ptr addrspace(1) %"ptr_cast_for_access.169"
  %".4250" = bitcast ptr %"R40" to ptr
  store float %".4249", ptr %".4250"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4253" = load i32, ptr %"R8"
  %"zext.400" = zext i32 %".4253" to i64
  %".4254" = load i32, ptr %"R9"
  %"zext.401" = zext i32 %".4254" to i64
  %"shl.211" = shl i64 %"zext.401", 32
  %"or.190" = or i64 %"shl.211", %"zext.400"
  %"ptr_plus_imm.121" = add i64 %"or.190", 8
  %"inttoptr_bytes.170" = inttoptr i64 %"ptr_plus_imm.121" to ptr addrspace(1)
  %"ptr_cast_for_access.170" = bitcast ptr addrspace(1) %"inttoptr_bytes.170" to ptr addrspace(1)
  %".4255" = load float, ptr addrspace(1) %"ptr_cast_for_access.170"
  %".4256" = bitcast ptr %"R43" to ptr
  store float %".4255", ptr %".4256"
  ; LDG.E.SYS R45, [R6+0x8]
  %".4259" = load i32, ptr %"R6"
  %"zext.402" = zext i32 %".4259" to i64
  %".4260" = load i32, ptr %"R7"
  %"zext.403" = zext i32 %".4260" to i64
  %"shl.212" = shl i64 %"zext.403", 32
  %"or.191" = or i64 %"shl.212", %"zext.402"
  %"ptr_plus_imm.122" = add i64 %"or.191", 8
  %"inttoptr_bytes.171" = inttoptr i64 %"ptr_plus_imm.122" to ptr addrspace(1)
  %"ptr_cast_for_access.171" = bitcast ptr addrspace(1) %"inttoptr_bytes.171" to ptr addrspace(1)
  %".4261" = load float, ptr addrspace(1) %"ptr_cast_for_access.171"
  %".4262" = bitcast ptr %"R45" to ptr
  store float %".4261", ptr %".4262"
  ; LDG.E.SYS R47, [R10+0xc]
  %".4265" = load i32, ptr %"R10"
  %"zext.404" = zext i32 %".4265" to i64
  %".4266" = load i32, ptr %"R11"
  %"zext.405" = zext i32 %".4266" to i64
  %"shl.213" = shl i64 %"zext.405", 32
  %"or.192" = or i64 %"shl.213", %"zext.404"
  %"ptr_plus_imm.123" = add i64 %"or.192", 12
  %"inttoptr_bytes.172" = inttoptr i64 %"ptr_plus_imm.123" to ptr addrspace(1)
  %"ptr_cast_for_access.172" = bitcast ptr addrspace(1) %"inttoptr_bytes.172" to ptr addrspace(1)
  %".4267" = load float, ptr addrspace(1) %"ptr_cast_for_access.172"
  %".4268" = bitcast ptr %"R47" to ptr
  store float %".4267", ptr %".4268"
  ; LDG.E.SYS R46, [R4+0xc]
  %".4271" = load i32, ptr %"R4"
  %"zext.406" = zext i32 %".4271" to i64
  %".4272" = load i32, ptr %"R5"
  %"zext.407" = zext i32 %".4272" to i64
  %"shl.214" = shl i64 %"zext.407", 32
  %"or.193" = or i64 %"shl.214", %"zext.406"
  %"ptr_plus_imm.124" = add i64 %"or.193", 12
  %"inttoptr_bytes.173" = inttoptr i64 %"ptr_plus_imm.124" to ptr addrspace(1)
  %"ptr_cast_for_access.173" = bitcast ptr addrspace(1) %"inttoptr_bytes.173" to ptr addrspace(1)
  %".4273" = load float, ptr addrspace(1) %"ptr_cast_for_access.173"
  %".4274" = bitcast ptr %"R46" to ptr
  store float %".4273", ptr %".4274"
  ; LDG.E.SYS R50, [R8+0xc]
  %".4277" = load i32, ptr %"R8"
  %"zext.408" = zext i32 %".4277" to i64
  %".4278" = load i32, ptr %"R9"
  %"zext.409" = zext i32 %".4278" to i64
  %"shl.215" = shl i64 %"zext.409", 32
  %"or.194" = or i64 %"shl.215", %"zext.408"
  %"ptr_plus_imm.125" = add i64 %"or.194", 12
  %"inttoptr_bytes.174" = inttoptr i64 %"ptr_plus_imm.125" to ptr addrspace(1)
  %"ptr_cast_for_access.174" = bitcast ptr addrspace(1) %"inttoptr_bytes.174" to ptr addrspace(1)
  %".4279" = load float, ptr addrspace(1) %"ptr_cast_for_access.174"
  %".4280" = bitcast ptr %"R50" to ptr
  store float %".4279", ptr %".4280"
  ; LDG.E.SYS R51, [R6+0xc]
  %".4283" = load i32, ptr %"R6"
  %"zext.410" = zext i32 %".4283" to i64
  %".4284" = load i32, ptr %"R7"
  %"zext.411" = zext i32 %".4284" to i64
  %"shl.216" = shl i64 %"zext.411", 32
  %"or.195" = or i64 %"shl.216", %"zext.410"
  %"ptr_plus_imm.126" = add i64 %"or.195", 12
  %"inttoptr_bytes.175" = inttoptr i64 %"ptr_plus_imm.126" to ptr addrspace(1)
  %"ptr_cast_for_access.175" = bitcast ptr addrspace(1) %"inttoptr_bytes.175" to ptr addrspace(1)
  %".4285" = load float, ptr addrspace(1) %"ptr_cast_for_access.175"
  %".4286" = bitcast ptr %"R51" to ptr
  store float %".4285", ptr %".4286"
  ; IADD3 R12, R12, -0x4, RZ
  %".4289" = load i32, ptr %"R12"
  %".4290" = add i32 %".4289", -4
  %".4291" = add i32 %".4290", 0
  store i32 %".4291", ptr %"R12"
  ; IADD3 R22, R22, 0x4, RZ
  %".4294" = load i32, ptr %"R22"
  %".4295" = add i32 %".4294", 4
  %".4296" = add i32 %".4295", 0
  store i32 %".4296", ptr %"R22"
  ; ISETP.NE.AND P0, PT, R12, RZ, PT
  %".4299" = load i32, ptr %"R12"
  %".4300" = load i1, ptr %"PT"
  %"cmp.39" = icmp ne i32 %".4299", 0
  %".4301" = xor i1 %"cmp.39", -1
  %".4302" = and i1 %"cmp.39", %".4300"
  %".4303" = and i1 %".4301", %".4300"
  store i1 %".4302", ptr %"P0"
  ; FFMA R35, R35, R24, R44
  %".4306" = load float, ptr %"R35"
  %".4307" = load float, ptr %"R24"
  %".4308" = load float, ptr %"R44"
  %"fmul.170" = fmul float %".4306", %".4307"
  %"fadd.151" = fadd float %"fmul.170", %".4308"
  %".4309" = bitcast ptr %"R35" to ptr
  store float %"fadd.151", ptr %".4309"
  ; FFMA R37, R24.reuse, R37, R56
  %".4312" = load float, ptr %"R24"
  %".4313" = load float, ptr %"R37"
  %".4314" = load float, ptr %"R56"
  %"fmul.171" = fmul float %".4312", %".4313"
  %"fadd.152" = fadd float %"fmul.171", %".4314"
  %".4315" = bitcast ptr %"R37" to ptr
  store float %"fadd.152", ptr %".4315"
  ; FFMA R34, R24, R34, R21
  %".4318" = load float, ptr %"R24"
  %".4319" = load float, ptr %"R34"
  %".4320" = load float, ptr %"R21"
  %"fmul.172" = fmul float %".4318", %".4319"
  %"fadd.153" = fadd float %"fmul.172", %".4320"
  %".4321" = bitcast ptr %"R34" to ptr
  store float %"fadd.153", ptr %".4321"
  ; FFMA R35, R36, R38, R35
  %".4324" = load float, ptr %"R36"
  %".4325" = load float, ptr %"R38"
  %".4326" = load float, ptr %"R35"
  %"fmul.173" = fmul float %".4324", %".4325"
  %"fadd.154" = fadd float %"fmul.173", %".4326"
  %".4327" = bitcast ptr %"R35" to ptr
  store float %"fadd.154", ptr %".4327"
  ; FFMA R37, R38, R39, R37
  %".4330" = load float, ptr %"R38"
  %".4331" = load float, ptr %"R39"
  %".4332" = load float, ptr %"R37"
  %"fmul.174" = fmul float %".4330", %".4331"
  %"fadd.155" = fadd float %"fmul.174", %".4332"
  %".4333" = bitcast ptr %"R37" to ptr
  store float %"fadd.155", ptr %".4333"
  ; FFMA R34, R38, R41, R34
  %".4336" = load float, ptr %"R38"
  %".4337" = load float, ptr %"R41"
  %".4338" = load float, ptr %"R34"
  %"fmul.175" = fmul float %".4336", %".4337"
  %"fadd.156" = fadd float %"fmul.175", %".4338"
  %".4339" = bitcast ptr %"R34" to ptr
  store float %"fadd.156", ptr %".4339"
  ; FFMA R35, R40, R42, R35
  %".4342" = load float, ptr %"R40"
  %".4343" = load float, ptr %"R42"
  %".4344" = load float, ptr %"R35"
  %"fmul.176" = fmul float %".4342", %".4343"
  %"fadd.157" = fadd float %"fmul.176", %".4344"
  %".4345" = bitcast ptr %"R35" to ptr
  store float %"fadd.157", ptr %".4345"
  ; FFMA R37, R42.reuse, R43, R37
  %".4348" = load float, ptr %"R42"
  %".4349" = load float, ptr %"R43"
  %".4350" = load float, ptr %"R37"
  %"fmul.177" = fmul float %".4348", %".4349"
  %"fadd.158" = fadd float %"fmul.177", %".4350"
  %".4351" = bitcast ptr %"R37" to ptr
  store float %"fadd.158", ptr %".4351"
  ; FFMA R34, R42, R45, R34
  %".4354" = load float, ptr %"R42"
  %".4355" = load float, ptr %"R45"
  %".4356" = load float, ptr %"R34"
  %"fmul.178" = fmul float %".4354", %".4355"
  %"fadd.159" = fadd float %"fmul.178", %".4356"
  %".4357" = bitcast ptr %"R34" to ptr
  store float %"fadd.159", ptr %".4357"
  ; FFMA R44, R46, R47, R35
  %".4360" = load float, ptr %"R46"
  %".4361" = load float, ptr %"R47"
  %".4362" = load float, ptr %"R35"
  %"fmul.179" = fmul float %".4360", %".4361"
  %"fadd.160" = fadd float %"fmul.179", %".4362"
  %".4363" = bitcast ptr %"R44" to ptr
  store float %"fadd.160", ptr %".4363"
  ; FFMA R56, R47, R50, R37
  %".4366" = load float, ptr %"R47"
  %".4367" = load float, ptr %"R50"
  %".4368" = load float, ptr %"R37"
  %"fmul.180" = fmul float %".4366", %".4367"
  %"fadd.161" = fadd float %"fmul.180", %".4368"
  %".4369" = bitcast ptr %"R56" to ptr
  store float %"fadd.161", ptr %".4369"
  ; FFMA R21, R47, R51, R34
  %".4372" = load float, ptr %"R47"
  %".4373" = load float, ptr %"R51"
  %".4374" = load float, ptr %"R34"
  %"fmul.181" = fmul float %".4372", %".4373"
  %"fadd.162" = fadd float %"fmul.181", %".4374"
  %".4375" = bitcast ptr %"R21" to ptr
  store float %"fadd.162", ptr %".4375"
  ; @P0 BRA `(.L_x_24)
  %".4378" = load i1, ptr %"P0"
  %".4379" = icmp eq i1 %".4378", 1
  br i1 %".4379", label %".L_x_24", label %".L_x_23"
.L_x_23:
  ; @!P1 BRA `(.L_x_25)
  %".4382" = load i1, ptr %"P1"
  %".4383" = icmp ne i1 %".4382", 1
  br i1 %".4383", label %".L_x_25", label %".L_x_23_split_0x26d0"
.L_x_23_split_0x26d0:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IMAD R7, R14, c[0x0][0x180], R22.reuse
  %".4388" = load i32, ptr %"R14"
  %".4389" = load i32, ptr %"R22"
  %"imad_mul.57" = mul i32 %".4388", %"Arg_4"
  %"imad_add.57" = add i32 %"imad_mul.57", %".4389"
  store i32 %"imad_add.57", ptr %"R7"
  ; MOV R10, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R10"
  ; IMAD R6, R13, c[0x0][0x180], R22
  %".4394" = load i32, ptr %"R13"
  %".4395" = load i32, ptr %"R22"
  %"imad_mul.58" = mul i32 %".4394", %"Arg_4"
  %"imad_add.58" = add i32 %"imad_mul.58", %".4395"
  store i32 %"imad_add.58", ptr %"R6"
  ; MOV R9, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R9"
  ; IMAD.WIDE R4, R7, R11, c[0x0][0x170]
  %".4400" = load i32, ptr %"R7"
  %".4401" = load i32, ptr %"R11"
  %"imad_ext1.47" = zext i32 %".4400" to i64
  %"imad_ext2.47" = zext i32 %".4401" to i64
  %"imad_mul.59" = mul i64 %"imad_ext1.47", %"imad_ext2.47"
  %".4402" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.59" = add i64 %"imad_mul.59", %".4402"
  %".4403" = and i64 %"imad_add.59", 18446744069414584320
  %".4404" = lshr i64 %".4403", 32
  %"trunc32.114" = trunc i64 %".4404" to i32
  %"trunc32.115" = trunc i64 %"imad_add.59" to i32
  store i32 %"trunc32.115", ptr %"R4"
  store i32 %"trunc32.114", ptr %"R5"
  ; LEA R10, R10, R7, 0x1
  %".4408" = load i32, ptr %"R10"
  %".4409" = load i32, ptr %"R7"
  %"shl.217" = shl i32 %".4408", 1
  %"add.12" = add i32 %"shl.217", %".4409"
  store i32 %"add.12", ptr %"R10"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x160]
  %".4412" = load i32, ptr %"R6"
  %".4413" = load i32, ptr %"R11"
  %"imad_ext1.48" = zext i32 %".4412" to i64
  %"imad_ext2.48" = zext i32 %".4413" to i64
  %"imad_mul.60" = mul i64 %"imad_ext1.48", %"imad_ext2.48"
  %".4414" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.60" = add i64 %"imad_mul.60", %".4414"
  %".4415" = and i64 %"imad_add.60", 18446744069414584320
  %".4416" = lshr i64 %".4415", 32
  %"trunc32.116" = trunc i64 %".4416" to i32
  %"trunc32.117" = trunc i64 %"imad_add.60" to i32
  store i32 %"trunc32.117", ptr %"R6"
  store i32 %"trunc32.116", ptr %"R7"
  ; LEA R8, P0, R9, R4, 0x2
  %".4420" = load i32, ptr %"R9"
  %".4421" = load i32, ptr %"R4"
  %"shl.218" = shl i32 %".4420", 2
  %"add.13" = add i32 %"shl.218", %".4421"
  store i32 %"add.13", ptr %"R8"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".4424" = load i32, ptr %"R10"
  %".4425" = load i32, ptr %"R11"
  %"imad_ext1.49" = zext i32 %".4424" to i64
  %"imad_ext2.49" = zext i32 %".4425" to i64
  %"imad_mul.61" = mul i64 %"imad_ext1.49", %"imad_ext2.49"
  %".4426" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.61" = add i64 %"imad_mul.61", %".4426"
  %".4427" = and i64 %"imad_add.61", 18446744069414584320
  %".4428" = lshr i64 %".4427", 32
  %"trunc32.118" = trunc i64 %".4428" to i32
  %"trunc32.119" = trunc i64 %"imad_add.61" to i32
  store i32 %"trunc32.119", ptr %"R10"
  store i32 %"trunc32.118", ptr %"R11"
  ; LEA.HI.X R9, R9, R5, R16, 0x2, P0
  %".4432" = load i32, ptr %"R5"
  %".4433" = load i32, ptr %"R16"
  %"shl.219" = shl i32 %".4432", 2
  %"add.14" = add i32 %"shl.219", %".4433"
  store i32 %"add.14", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".4436" = load i32, ptr %"R4"
  %"zext.412" = zext i32 %".4436" to i64
  %".4437" = load i32, ptr %"R5"
  %"zext.413" = zext i32 %".4437" to i64
  %"shl.220" = shl i64 %"zext.413", 32
  %"or.196" = or i64 %"shl.220", %"zext.412"
  %"inttoptr_bytes.176" = inttoptr i64 %"or.196" to ptr addrspace(1)
  %"ptr_cast_for_access.176" = bitcast ptr addrspace(1) %"inttoptr_bytes.176" to ptr addrspace(1)
  %".4438" = load float, ptr addrspace(1) %"ptr_cast_for_access.176"
  %".4439" = bitcast ptr %"R13" to ptr
  store float %".4438", ptr %".4439"
  ; LDG.E.SYS R12, [R6]
  %".4442" = load i32, ptr %"R6"
  %"zext.414" = zext i32 %".4442" to i64
  %".4443" = load i32, ptr %"R7"
  %"zext.415" = zext i32 %".4443" to i64
  %"shl.221" = shl i64 %"zext.415", 32
  %"or.197" = or i64 %"shl.221", %"zext.414"
  %"inttoptr_bytes.177" = inttoptr i64 %"or.197" to ptr addrspace(1)
  %"ptr_cast_for_access.177" = bitcast ptr addrspace(1) %"inttoptr_bytes.177" to ptr addrspace(1)
  %".4444" = load float, ptr addrspace(1) %"ptr_cast_for_access.177"
  %".4445" = bitcast ptr %"R12" to ptr
  store float %".4444", ptr %".4445"
  ; LDG.E.SYS R23, [R8]
  %".4448" = load i32, ptr %"R8"
  %"zext.416" = zext i32 %".4448" to i64
  %".4449" = load i32, ptr %"R9"
  %"zext.417" = zext i32 %".4449" to i64
  %"shl.222" = shl i64 %"zext.417", 32
  %"or.198" = or i64 %"shl.222", %"zext.416"
  %"inttoptr_bytes.178" = inttoptr i64 %"or.198" to ptr addrspace(1)
  %"ptr_cast_for_access.178" = bitcast ptr addrspace(1) %"inttoptr_bytes.178" to ptr addrspace(1)
  %".4450" = load float, ptr addrspace(1) %"ptr_cast_for_access.178"
  %".4451" = bitcast ptr %"R23" to ptr
  store float %".4450", ptr %".4451"
  ; LDG.E.SYS R22, [R10]
  %".4454" = load i32, ptr %"R10"
  %"zext.418" = zext i32 %".4454" to i64
  %".4455" = load i32, ptr %"R11"
  %"zext.419" = zext i32 %".4455" to i64
  %"shl.223" = shl i64 %"zext.419", 32
  %"or.199" = or i64 %"shl.223", %"zext.418"
  %"inttoptr_bytes.179" = inttoptr i64 %"or.199" to ptr addrspace(1)
  %"ptr_cast_for_access.179" = bitcast ptr addrspace(1) %"inttoptr_bytes.179" to ptr addrspace(1)
  %".4456" = load float, ptr addrspace(1) %"ptr_cast_for_access.179"
  %".4457" = bitcast ptr %"R22" to ptr
  store float %".4456", ptr %".4457"
  ; ISETP.NE.AND P0, PT, R15, 0x1, PT
  %".4460" = load i32, ptr %"R15"
  %".4461" = load i1, ptr %"PT"
  %"cmp.40" = icmp ne i32 %".4460", 1
  %".4462" = xor i1 %"cmp.40", -1
  %".4463" = and i1 %"cmp.40", %".4461"
  %".4464" = and i1 %".4462", %".4461"
  store i1 %".4463", ptr %"P0"
  ; FFMA R44, R13, R12, R44
  %".4467" = load float, ptr %"R13"
  %".4468" = load float, ptr %"R12"
  %".4469" = load float, ptr %"R44"
  %"fmul.182" = fmul float %".4467", %".4468"
  %"fadd.163" = fadd float %"fmul.182", %".4469"
  %".4470" = bitcast ptr %"R44" to ptr
  store float %"fadd.163", ptr %".4470"
  ; FFMA R56, R12.reuse, R23, R56
  %".4473" = load float, ptr %"R12"
  %".4474" = load float, ptr %"R23"
  %".4475" = load float, ptr %"R56"
  %"fmul.183" = fmul float %".4473", %".4474"
  %"fadd.164" = fadd float %"fmul.183", %".4475"
  %".4476" = bitcast ptr %"R56" to ptr
  store float %"fadd.164", ptr %".4476"
  ; FFMA R21, R12, R22, R21
  %".4479" = load float, ptr %"R12"
  %".4480" = load float, ptr %"R22"
  %".4481" = load float, ptr %"R21"
  %"fmul.184" = fmul float %".4479", %".4480"
  %"fadd.165" = fadd float %"fmul.184", %".4481"
  %".4482" = bitcast ptr %"R21" to ptr
  store float %"fadd.165", ptr %".4482"
  ; @!P0 BRA `(.L_x_25)
  %".4485" = load i1, ptr %"P0"
  %".4486" = icmp ne i1 %".4485", 1
  br i1 %".4486", label %".L_x_25", label %".L_x_23_split_0x2810"
.L_x_23_split_0x2810:
  ; ISETP.NE.AND P0, PT, R15, 0x2, PT
  %".4489" = load i32, ptr %"R15"
  %".4490" = load i1, ptr %"PT"
  %"cmp.41" = icmp ne i32 %".4489", 2
  %".4491" = xor i1 %"cmp.41", -1
  %".4492" = and i1 %"cmp.41", %".4490"
  %".4493" = and i1 %".4491", %".4490"
  store i1 %".4492", ptr %"P0"
  ; LDG.E.SYS R13, [R4+0x4]
  %".4496" = load i32, ptr %"R4"
  %"zext.420" = zext i32 %".4496" to i64
  %".4497" = load i32, ptr %"R5"
  %"zext.421" = zext i32 %".4497" to i64
  %"shl.224" = shl i64 %"zext.421", 32
  %"or.200" = or i64 %"shl.224", %"zext.420"
  %"ptr_plus_imm.127" = add i64 %"or.200", 4
  %"inttoptr_bytes.180" = inttoptr i64 %"ptr_plus_imm.127" to ptr addrspace(1)
  %"ptr_cast_for_access.180" = bitcast ptr addrspace(1) %"inttoptr_bytes.180" to ptr addrspace(1)
  %".4498" = load float, ptr addrspace(1) %"ptr_cast_for_access.180"
  %".4499" = bitcast ptr %"R13" to ptr
  store float %".4498", ptr %".4499"
  ; LDG.E.SYS R12, [R6+0x4]
  %".4502" = load i32, ptr %"R6"
  %"zext.422" = zext i32 %".4502" to i64
  %".4503" = load i32, ptr %"R7"
  %"zext.423" = zext i32 %".4503" to i64
  %"shl.225" = shl i64 %"zext.423", 32
  %"or.201" = or i64 %"shl.225", %"zext.422"
  %"ptr_plus_imm.128" = add i64 %"or.201", 4
  %"inttoptr_bytes.181" = inttoptr i64 %"ptr_plus_imm.128" to ptr addrspace(1)
  %"ptr_cast_for_access.181" = bitcast ptr addrspace(1) %"inttoptr_bytes.181" to ptr addrspace(1)
  %".4504" = load float, ptr addrspace(1) %"ptr_cast_for_access.181"
  %".4505" = bitcast ptr %"R12" to ptr
  store float %".4504", ptr %".4505"
  ; LDG.E.SYS R23, [R8+0x4]
  %".4508" = load i32, ptr %"R8"
  %"zext.424" = zext i32 %".4508" to i64
  %".4509" = load i32, ptr %"R9"
  %"zext.425" = zext i32 %".4509" to i64
  %"shl.226" = shl i64 %"zext.425", 32
  %"or.202" = or i64 %"shl.226", %"zext.424"
  %"ptr_plus_imm.129" = add i64 %"or.202", 4
  %"inttoptr_bytes.182" = inttoptr i64 %"ptr_plus_imm.129" to ptr addrspace(1)
  %"ptr_cast_for_access.182" = bitcast ptr addrspace(1) %"inttoptr_bytes.182" to ptr addrspace(1)
  %".4510" = load float, ptr addrspace(1) %"ptr_cast_for_access.182"
  %".4511" = bitcast ptr %"R23" to ptr
  store float %".4510", ptr %".4511"
  ; LDG.E.SYS R22, [R10+0x4]
  %".4514" = load i32, ptr %"R10"
  %"zext.426" = zext i32 %".4514" to i64
  %".4515" = load i32, ptr %"R11"
  %"zext.427" = zext i32 %".4515" to i64
  %"shl.227" = shl i64 %"zext.427", 32
  %"or.203" = or i64 %"shl.227", %"zext.426"
  %"ptr_plus_imm.130" = add i64 %"or.203", 4
  %"inttoptr_bytes.183" = inttoptr i64 %"ptr_plus_imm.130" to ptr addrspace(1)
  %"ptr_cast_for_access.183" = bitcast ptr addrspace(1) %"inttoptr_bytes.183" to ptr addrspace(1)
  %".4516" = load float, ptr addrspace(1) %"ptr_cast_for_access.183"
  %".4517" = bitcast ptr %"R22" to ptr
  store float %".4516", ptr %".4517"
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".4520" = load i1, ptr %"P0"
  %".4521" = icmp eq i1 %".4520", 1
  br i1 %".4521", label %".L_x_23_split_0x2810_conditionalExpr_0x2860", label %".L_x_23_split_0x2870"
.L_x_23_split_0x2810_conditionalExpr_0x2860:
  ; LDG.E.SYS R25, [R4+0x8]
  %".4524" = load i32, ptr %"R4"
  %"zext.428" = zext i32 %".4524" to i64
  %".4525" = load i32, ptr %"R5"
  %"zext.429" = zext i32 %".4525" to i64
  %"shl.228" = shl i64 %"zext.429", 32
  %"or.204" = or i64 %"shl.228", %"zext.428"
  %"ptr_plus_imm.131" = add i64 %"or.204", 8
  %"inttoptr_bytes.184" = inttoptr i64 %"ptr_plus_imm.131" to ptr addrspace(1)
  %"ptr_cast_for_access.184" = bitcast ptr addrspace(1) %"inttoptr_bytes.184" to ptr addrspace(1)
  %".4526" = load float, ptr addrspace(1) %"ptr_cast_for_access.184"
  %".4527" = bitcast ptr %"R25" to ptr
  store float %".4526", ptr %".4527"
  ; BRA `(.L_x_23_split_0x2870)
  br label %".L_x_23_split_0x2870"
.L_x_23_split_0x2870:
  ; @P0 LDG.E.SYS R24, [R6+0x8]
  %".4532" = load i1, ptr %"P0"
  %".4533" = icmp eq i1 %".4532", 1
  br i1 %".4533", label %".L_x_23_split_0x2870_conditionalExpr_0x2870", label %".L_x_23_split_0x2880"
.L_x_23_split_0x2870_conditionalExpr_0x2870:
  ; LDG.E.SYS R24, [R6+0x8]
  %".4536" = load i32, ptr %"R6"
  %"zext.430" = zext i32 %".4536" to i64
  %".4537" = load i32, ptr %"R7"
  %"zext.431" = zext i32 %".4537" to i64
  %"shl.229" = shl i64 %"zext.431", 32
  %"or.205" = or i64 %"shl.229", %"zext.430"
  %"ptr_plus_imm.132" = add i64 %"or.205", 8
  %"inttoptr_bytes.185" = inttoptr i64 %"ptr_plus_imm.132" to ptr addrspace(1)
  %"ptr_cast_for_access.185" = bitcast ptr addrspace(1) %"inttoptr_bytes.185" to ptr addrspace(1)
  %".4538" = load float, ptr addrspace(1) %"ptr_cast_for_access.185"
  %".4539" = bitcast ptr %"R24" to ptr
  store float %".4538", ptr %".4539"
  ; BRA `(.L_x_23_split_0x2880)
  br label %".L_x_23_split_0x2880"
.L_x_23_split_0x2880:
  ; @P0 LDG.E.SYS R35, [R8+0x8]
  %".4544" = load i1, ptr %"P0"
  %".4545" = icmp eq i1 %".4544", 1
  br i1 %".4545", label %".L_x_23_split_0x2880_conditionalExpr_0x2880", label %".L_x_23_split_0x2890"
.L_x_23_split_0x2880_conditionalExpr_0x2880:
  ; LDG.E.SYS R35, [R8+0x8]
  %".4548" = load i32, ptr %"R8"
  %"zext.432" = zext i32 %".4548" to i64
  %".4549" = load i32, ptr %"R9"
  %"zext.433" = zext i32 %".4549" to i64
  %"shl.230" = shl i64 %"zext.433", 32
  %"or.206" = or i64 %"shl.230", %"zext.432"
  %"ptr_plus_imm.133" = add i64 %"or.206", 8
  %"inttoptr_bytes.186" = inttoptr i64 %"ptr_plus_imm.133" to ptr addrspace(1)
  %"ptr_cast_for_access.186" = bitcast ptr addrspace(1) %"inttoptr_bytes.186" to ptr addrspace(1)
  %".4550" = load float, ptr addrspace(1) %"ptr_cast_for_access.186"
  %".4551" = bitcast ptr %"R35" to ptr
  store float %".4550", ptr %".4551"
  ; BRA `(.L_x_23_split_0x2890)
  br label %".L_x_23_split_0x2890"
.L_x_23_split_0x2890:
  ; @P0 LDG.E.SYS R34, [R10+0x8]
  %".4556" = load i1, ptr %"P0"
  %".4557" = icmp eq i1 %".4556", 1
  br i1 %".4557", label %".L_x_23_split_0x2890_conditionalExpr_0x2890", label %".L_x_23_split_0x28a0"
.L_x_23_split_0x2890_conditionalExpr_0x2890:
  ; LDG.E.SYS R34, [R10+0x8]
  %".4560" = load i32, ptr %"R10"
  %"zext.434" = zext i32 %".4560" to i64
  %".4561" = load i32, ptr %"R11"
  %"zext.435" = zext i32 %".4561" to i64
  %"shl.231" = shl i64 %"zext.435", 32
  %"or.207" = or i64 %"shl.231", %"zext.434"
  %"ptr_plus_imm.134" = add i64 %"or.207", 8
  %"inttoptr_bytes.187" = inttoptr i64 %"ptr_plus_imm.134" to ptr addrspace(1)
  %"ptr_cast_for_access.187" = bitcast ptr addrspace(1) %"inttoptr_bytes.187" to ptr addrspace(1)
  %".4562" = load float, ptr addrspace(1) %"ptr_cast_for_access.187"
  %".4563" = bitcast ptr %"R34" to ptr
  store float %".4562", ptr %".4563"
  ; BRA `(.L_x_23_split_0x28a0)
  br label %".L_x_23_split_0x28a0"
.L_x_23_split_0x28a0:
  ; FFMA R44, R13, R12, R44
  %".4568" = load float, ptr %"R13"
  %".4569" = load float, ptr %"R12"
  %".4570" = load float, ptr %"R44"
  %"fmul.185" = fmul float %".4568", %".4569"
  %"fadd.166" = fadd float %"fmul.185", %".4570"
  %".4571" = bitcast ptr %"R44" to ptr
  store float %"fadd.166", ptr %".4571"
  ; FFMA R56, R12.reuse, R23, R56
  %".4574" = load float, ptr %"R12"
  %".4575" = load float, ptr %"R23"
  %".4576" = load float, ptr %"R56"
  %"fmul.186" = fmul float %".4574", %".4575"
  %"fadd.167" = fadd float %"fmul.186", %".4576"
  %".4577" = bitcast ptr %"R56" to ptr
  store float %"fadd.167", ptr %".4577"
  ; FFMA R21, R12, R22, R21
  %".4580" = load float, ptr %"R12"
  %".4581" = load float, ptr %"R22"
  %".4582" = load float, ptr %"R21"
  %"fmul.187" = fmul float %".4580", %".4581"
  %"fadd.168" = fadd float %"fmul.187", %".4582"
  %".4583" = bitcast ptr %"R21" to ptr
  store float %"fadd.168", ptr %".4583"
  ; @P0 FFMA R44, R25, R24, R44
  %".4586" = load i1, ptr %"P0"
  %".4587" = icmp eq i1 %".4586", 1
  br i1 %".4587", label %".L_x_23_split_0x28a0_conditionalExpr_0x28d0", label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28a0_conditionalExpr_0x28d0:
  ; FFMA R44, R25, R24, R44
  %".4590" = load float, ptr %"R25"
  %".4591" = load float, ptr %"R24"
  %".4592" = load float, ptr %"R44"
  %"fmul.188" = fmul float %".4590", %".4591"
  %"fadd.169" = fadd float %"fmul.188", %".4592"
  %".4593" = bitcast ptr %"R44" to ptr
  store float %"fadd.169", ptr %".4593"
  ; BRA `(.L_x_23_split_0x28e0)
  br label %".L_x_23_split_0x28e0"
.L_x_23_split_0x28e0:
  ; @P0 FFMA R56, R24.reuse, R35, R56
  %".4598" = load i1, ptr %"P0"
  %".4599" = icmp eq i1 %".4598", 1
  br i1 %".4599", label %".L_x_23_split_0x28e0_conditionalExpr_0x28e0", label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28e0_conditionalExpr_0x28e0:
  ; FFMA R56, R24.reuse, R35, R56
  %".4602" = load float, ptr %"R24"
  %".4603" = load float, ptr %"R35"
  %".4604" = load float, ptr %"R56"
  %"fmul.189" = fmul float %".4602", %".4603"
  %"fadd.170" = fadd float %"fmul.189", %".4604"
  %".4605" = bitcast ptr %"R56" to ptr
  store float %"fadd.170", ptr %".4605"
  ; BRA `(.L_x_23_split_0x28f0)
  br label %".L_x_23_split_0x28f0"
.L_x_23_split_0x28f0:
  ; @P0 FFMA R21, R24, R34, R21
  %".4610" = load i1, ptr %"P0"
  %".4611" = icmp eq i1 %".4610", 1
  br i1 %".4611", label %".L_x_23_split_0x28f0_conditionalExpr_0x28f0", label %".L_x_25"
.L_x_23_split_0x28f0_conditionalExpr_0x28f0:
  ; FFMA R21, R24, R34, R21
  %".4614" = load float, ptr %"R24"
  %".4615" = load float, ptr %"R34"
  %".4616" = load float, ptr %"R21"
  %"fmul.190" = fmul float %".4614", %".4615"
  %"fadd.171" = fadd float %"fmul.190", %".4616"
  %".4617" = bitcast ptr %"R21" to ptr
  store float %"fadd.171", ptr %".4617"
  ; BRA `(.L_x_25)
  br label %".L_x_25"
.L_x_25:
  ; @!P4 BRA `(.L_x_26)
  %".4622" = load i1, ptr %"P4"
  %".4623" = icmp ne i1 %".4622", 1
  br i1 %".4623", label %".L_x_26", label %".L_x_25_split_0x2910"
.L_x_25_split_0x2910:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".4626" = load i32, ptr %"R18"
  %".4627" = load i1, ptr %"PT"
  %"cmp.42" = icmp sge i32 %".4626", 3
  %".4628" = xor i1 %"cmp.42", -1
  %".4629" = and i1 %"cmp.42", %".4627"
  %".4630" = and i1 %".4628", %".4627"
  store i1 %".4629", ptr %"P0"
  ; MOV R23, RZ
  %".4633" = load i32, ptr %"RZ"
  store i32 %".4633", ptr %"R23"
  ; @!P0 BRA `(.L_x_27)
  %".4636" = load i1, ptr %"P0"
  %".4637" = icmp ne i1 %".4636", 1
  br i1 %".4637", label %".L_x_27", label %".L_x_25_split_0x2940"
.L_x_25_split_0x2940:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".4640" = load i32, ptr %"R20"
  %".4641" = load i1, ptr %"PT"
  %"cmp.43" = icmp sgt i32 %".4640", 0
  %".4642" = xor i1 %"cmp.43", -1
  %".4643" = and i1 %"cmp.43", %".4641"
  %".4644" = and i1 %".4642", %".4641"
  store i1 %".4643", ptr %"P0"
  ; MOV R23, RZ
  %".4647" = load i32, ptr %"RZ"
  store i32 %".4647", ptr %"R23"
  ; MOV R22, R20
  %".4650" = load i32, ptr %"R20"
  store i32 %".4650", ptr %"R22"
  ; @!P0 BRA `(.L_x_28)
  %".4653" = load i1, ptr %"P0"
  %".4654" = icmp ne i1 %".4653", 1
  br i1 %".4654", label %".L_x_28", label %".L_x_25_split_0x2980"
.L_x_25_split_0x2980:
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".4657" = load i32, ptr %"R22"
  %".4658" = load i1, ptr %"PT"
  %"cmp.44" = icmp sgt i32 %".4657", 12
  %".4659" = xor i1 %"cmp.44", -1
  %".4660" = and i1 %"cmp.44", %".4658"
  %".4661" = and i1 %".4659", %".4658"
  store i1 %".4660", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".4664" = and i1 1, 1
  %".4665" = and i1 %".4664", 1
  ; @!P1 BRA `(.L_x_29)
  %".4667" = load i1, ptr %"P1"
  %".4668" = icmp ne i1 %".4667", 1
  br i1 %".4668", label %".L_x_29", label %".L_x_25_split_0x29b0"
.L_x_25_split_0x29b0:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".4671" = xor i1 1, 1
  %".4672" = and i1 %".4671", 1
  %".4673" = and i1 %".4672", 1
  br label %".L_x_30"
.L_x_30:
  ; IADD3 R25, R0, R23, RZ
  %".4676" = load i32, ptr %"R0"
  %".4677" = load i32, ptr %"R23"
  %".4678" = add i32 %".4676", %".4677"
  %".4679" = add i32 %".4678", 0
  store i32 %".4679", ptr %"R25"
  ; MOV R24, 0x4
  store i32 4, ptr %"R24"
  ; IMAD R35, R2.reuse, 0x3, R25
  %".4684" = load i32, ptr %"R2"
  %".4685" = load i32, ptr %"R25"
  %"imad_mul.62" = mul i32 %".4684", 3
  %"imad_add.62" = add i32 %"imad_mul.62", %".4685"
  store i32 %"imad_add.62", ptr %"R35"
  ; LEA R25, R2, R25, 0x2
  %".4688" = load i32, ptr %"R2"
  %".4689" = load i32, ptr %"R25"
  %"shl.232" = shl i32 %".4688", 2
  %"add.15" = add i32 %"shl.232", %".4689"
  store i32 %"add.15", ptr %"R25"
  ; IMAD.WIDE R36, R23, R24, c[0x0][0x168]
  %".4692" = load i32, ptr %"R23"
  %".4693" = load i32, ptr %"R24"
  %"imad_ext1.50" = zext i32 %".4692" to i64
  %"imad_ext2.50" = zext i32 %".4693" to i64
  %"imad_mul.63" = mul i64 %"imad_ext1.50", %"imad_ext2.50"
  %".4694" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.63" = add i64 %"imad_mul.63", %".4694"
  %".4695" = and i64 %"imad_add.63", 18446744069414584320
  %".4696" = lshr i64 %".4695", 32
  %"trunc32.120" = trunc i64 %".4696" to i32
  %"trunc32.121" = trunc i64 %"imad_add.63" to i32
  store i32 %"trunc32.121", ptr %"R36"
  store i32 %"trunc32.120", ptr %"R37"
  ; IMAD.WIDE R8, R35, R24, c[0x0][0x170]
  %".4700" = load i32, ptr %"R35"
  %".4701" = load i32, ptr %"R24"
  %"imad_ext1.51" = zext i32 %".4700" to i64
  %"imad_ext2.51" = zext i32 %".4701" to i64
  %"imad_mul.64" = mul i64 %"imad_ext1.51", %"imad_ext2.51"
  %".4702" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.64" = add i64 %"imad_mul.64", %".4702"
  %".4703" = and i64 %"imad_add.64", 18446744069414584320
  %".4704" = lshr i64 %".4703", 32
  %"trunc32.122" = trunc i64 %".4704" to i32
  %"trunc32.123" = trunc i64 %"imad_add.64" to i32
  store i32 %"trunc32.123", ptr %"R8"
  store i32 %"trunc32.122", ptr %"R9"
  ; IMAD.WIDE R12, R25, R24, c[0x0][0x170]
  %".4708" = load i32, ptr %"R25"
  %".4709" = load i32, ptr %"R24"
  %"imad_ext1.52" = zext i32 %".4708" to i64
  %"imad_ext2.52" = zext i32 %".4709" to i64
  %"imad_mul.65" = mul i64 %"imad_ext1.52", %"imad_ext2.52"
  %".4710" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.65" = add i64 %"imad_mul.65", %".4710"
  %".4711" = and i64 %"imad_add.65", 18446744069414584320
  %".4712" = lshr i64 %".4711", 32
  %"trunc32.124" = trunc i64 %".4712" to i32
  %"trunc32.125" = trunc i64 %"imad_add.65" to i32
  store i32 %"trunc32.125", ptr %"R12"
  store i32 %"trunc32.124", ptr %"R13"
  ; LDG.E.SYS R39, [R36]
  %".4716" = load i32, ptr %"R36"
  %"zext.436" = zext i32 %".4716" to i64
  %".4717" = load i32, ptr %"R37"
  %"zext.437" = zext i32 %".4717" to i64
  %"shl.233" = shl i64 %"zext.437", 32
  %"or.208" = or i64 %"shl.233", %"zext.436"
  %"inttoptr_bytes.188" = inttoptr i64 %"or.208" to ptr addrspace(1)
  %"ptr_cast_for_access.188" = bitcast ptr addrspace(1) %"inttoptr_bytes.188" to ptr addrspace(1)
  %".4718" = load float, ptr addrspace(1) %"ptr_cast_for_access.188"
  %".4719" = bitcast ptr %"R39" to ptr
  store float %".4718", ptr %".4719"
  ; LDG.E.SYS R41, [R8]
  %".4722" = load i32, ptr %"R8"
  %"zext.438" = zext i32 %".4722" to i64
  %".4723" = load i32, ptr %"R9"
  %"zext.439" = zext i32 %".4723" to i64
  %"shl.234" = shl i64 %"zext.439", 32
  %"or.209" = or i64 %"shl.234", %"zext.438"
  %"inttoptr_bytes.189" = inttoptr i64 %"or.209" to ptr addrspace(1)
  %"ptr_cast_for_access.189" = bitcast ptr addrspace(1) %"inttoptr_bytes.189" to ptr addrspace(1)
  %".4724" = load float, ptr addrspace(1) %"ptr_cast_for_access.189"
  %".4725" = bitcast ptr %"R41" to ptr
  store float %".4724", ptr %".4725"
  ; LDG.E.SYS R40, [R12]
  %".4728" = load i32, ptr %"R12"
  %"zext.440" = zext i32 %".4728" to i64
  %".4729" = load i32, ptr %"R13"
  %"zext.441" = zext i32 %".4729" to i64
  %"shl.235" = shl i64 %"zext.441", 32
  %"or.210" = or i64 %"shl.235", %"zext.440"
  %"inttoptr_bytes.190" = inttoptr i64 %"or.210" to ptr addrspace(1)
  %"ptr_cast_for_access.190" = bitcast ptr addrspace(1) %"inttoptr_bytes.190" to ptr addrspace(1)
  %".4730" = load float, ptr addrspace(1) %"ptr_cast_for_access.190"
  %".4731" = bitcast ptr %"R40" to ptr
  store float %".4730", ptr %".4731"
  ; LDG.E.SYS R52, [R36+0x4]
  %".4734" = load i32, ptr %"R36"
  %"zext.442" = zext i32 %".4734" to i64
  %".4735" = load i32, ptr %"R37"
  %"zext.443" = zext i32 %".4735" to i64
  %"shl.236" = shl i64 %"zext.443", 32
  %"or.211" = or i64 %"shl.236", %"zext.442"
  %"ptr_plus_imm.135" = add i64 %"or.211", 4
  %"inttoptr_bytes.191" = inttoptr i64 %"ptr_plus_imm.135" to ptr addrspace(1)
  %"ptr_cast_for_access.191" = bitcast ptr addrspace(1) %"inttoptr_bytes.191" to ptr addrspace(1)
  %".4736" = load float, ptr addrspace(1) %"ptr_cast_for_access.191"
  %".4737" = bitcast ptr %"R52" to ptr
  store float %".4736", ptr %".4737"
  ; LDG.E.SYS R53, [R8+0x4]
  %".4740" = load i32, ptr %"R8"
  %"zext.444" = zext i32 %".4740" to i64
  %".4741" = load i32, ptr %"R9"
  %"zext.445" = zext i32 %".4741" to i64
  %"shl.237" = shl i64 %"zext.445", 32
  %"or.212" = or i64 %"shl.237", %"zext.444"
  %"ptr_plus_imm.136" = add i64 %"or.212", 4
  %"inttoptr_bytes.192" = inttoptr i64 %"ptr_plus_imm.136" to ptr addrspace(1)
  %"ptr_cast_for_access.192" = bitcast ptr addrspace(1) %"inttoptr_bytes.192" to ptr addrspace(1)
  %".4742" = load float, ptr addrspace(1) %"ptr_cast_for_access.192"
  %".4743" = bitcast ptr %"R53" to ptr
  store float %".4742", ptr %".4743"
  ; LDG.E.SYS R55, [R12+0x4]
  %".4746" = load i32, ptr %"R12"
  %"zext.446" = zext i32 %".4746" to i64
  %".4747" = load i32, ptr %"R13"
  %"zext.447" = zext i32 %".4747" to i64
  %"shl.238" = shl i64 %"zext.447", 32
  %"or.213" = or i64 %"shl.238", %"zext.446"
  %"ptr_plus_imm.137" = add i64 %"or.213", 4
  %"inttoptr_bytes.193" = inttoptr i64 %"ptr_plus_imm.137" to ptr addrspace(1)
  %"ptr_cast_for_access.193" = bitcast ptr addrspace(1) %"inttoptr_bytes.193" to ptr addrspace(1)
  %".4748" = load float, ptr addrspace(1) %"ptr_cast_for_access.193"
  %".4749" = bitcast ptr %"R55" to ptr
  store float %".4748", ptr %".4749"
  ; IADD3 R11, R23, 0x4, RZ
  %".4752" = load i32, ptr %"R23"
  %".4753" = add i32 %".4752", 4
  %".4754" = add i32 %".4753", 0
  store i32 %".4754", ptr %"R11"
  ; LDG.E.SYS R50, [R36+0x8]
  %".4757" = load i32, ptr %"R36"
  %"zext.448" = zext i32 %".4757" to i64
  %".4758" = load i32, ptr %"R37"
  %"zext.449" = zext i32 %".4758" to i64
  %"shl.239" = shl i64 %"zext.449", 32
  %"or.214" = or i64 %"shl.239", %"zext.448"
  %"ptr_plus_imm.138" = add i64 %"or.214", 8
  %"inttoptr_bytes.194" = inttoptr i64 %"ptr_plus_imm.138" to ptr addrspace(1)
  %"ptr_cast_for_access.194" = bitcast ptr addrspace(1) %"inttoptr_bytes.194" to ptr addrspace(1)
  %".4759" = load float, ptr addrspace(1) %"ptr_cast_for_access.194"
  %".4760" = bitcast ptr %"R50" to ptr
  store float %".4759", ptr %".4760"
  ; IADD3 R7, R35, 0x4, RZ
  %".4763" = load i32, ptr %"R35"
  %".4764" = add i32 %".4763", 4
  %".4765" = add i32 %".4764", 0
  store i32 %".4765", ptr %"R7"
  ; LDG.E.SYS R43, [R8+0x8]
  %".4768" = load i32, ptr %"R8"
  %"zext.450" = zext i32 %".4768" to i64
  %".4769" = load i32, ptr %"R9"
  %"zext.451" = zext i32 %".4769" to i64
  %"shl.240" = shl i64 %"zext.451", 32
  %"or.215" = or i64 %"shl.240", %"zext.450"
  %"ptr_plus_imm.139" = add i64 %"or.215", 8
  %"inttoptr_bytes.195" = inttoptr i64 %"ptr_plus_imm.139" to ptr addrspace(1)
  %"ptr_cast_for_access.195" = bitcast ptr addrspace(1) %"inttoptr_bytes.195" to ptr addrspace(1)
  %".4770" = load float, ptr addrspace(1) %"ptr_cast_for_access.195"
  %".4771" = bitcast ptr %"R43" to ptr
  store float %".4770", ptr %".4771"
  ; IADD3 R5, R25, 0x4, RZ
  %".4774" = load i32, ptr %"R25"
  %".4775" = add i32 %".4774", 4
  %".4776" = add i32 %".4775", 0
  store i32 %".4776", ptr %"R5"
  ; LDG.E.SYS R51, [R12+0x8]
  %".4779" = load i32, ptr %"R12"
  %"zext.452" = zext i32 %".4779" to i64
  %".4780" = load i32, ptr %"R13"
  %"zext.453" = zext i32 %".4780" to i64
  %"shl.241" = shl i64 %"zext.453", 32
  %"or.216" = or i64 %"shl.241", %"zext.452"
  %"ptr_plus_imm.140" = add i64 %"or.216", 8
  %"inttoptr_bytes.196" = inttoptr i64 %"ptr_plus_imm.140" to ptr addrspace(1)
  %"ptr_cast_for_access.196" = bitcast ptr addrspace(1) %"inttoptr_bytes.196" to ptr addrspace(1)
  %".4781" = load float, ptr addrspace(1) %"ptr_cast_for_access.196"
  %".4782" = bitcast ptr %"R51" to ptr
  store float %".4781", ptr %".4782"
  ; LDG.E.SYS R47, [R36+0xc]
  %".4785" = load i32, ptr %"R36"
  %"zext.454" = zext i32 %".4785" to i64
  %".4786" = load i32, ptr %"R37"
  %"zext.455" = zext i32 %".4786" to i64
  %"shl.242" = shl i64 %"zext.455", 32
  %"or.217" = or i64 %"shl.242", %"zext.454"
  %"ptr_plus_imm.141" = add i64 %"or.217", 12
  %"inttoptr_bytes.197" = inttoptr i64 %"ptr_plus_imm.141" to ptr addrspace(1)
  %"ptr_cast_for_access.197" = bitcast ptr addrspace(1) %"inttoptr_bytes.197" to ptr addrspace(1)
  %".4787" = load float, ptr addrspace(1) %"ptr_cast_for_access.197"
  %".4788" = bitcast ptr %"R47" to ptr
  store float %".4787", ptr %".4788"
  ; LDG.E.SYS R54, [R8+0xc]
  %".4791" = load i32, ptr %"R8"
  %"zext.456" = zext i32 %".4791" to i64
  %".4792" = load i32, ptr %"R9"
  %"zext.457" = zext i32 %".4792" to i64
  %"shl.243" = shl i64 %"zext.457", 32
  %"or.218" = or i64 %"shl.243", %"zext.456"
  %"ptr_plus_imm.142" = add i64 %"or.218", 12
  %"inttoptr_bytes.198" = inttoptr i64 %"ptr_plus_imm.142" to ptr addrspace(1)
  %"ptr_cast_for_access.198" = bitcast ptr addrspace(1) %"inttoptr_bytes.198" to ptr addrspace(1)
  %".4793" = load float, ptr addrspace(1) %"ptr_cast_for_access.198"
  %".4794" = bitcast ptr %"R54" to ptr
  store float %".4793", ptr %".4794"
  ; LDG.E.SYS R58, [R12+0xc]
  %".4797" = load i32, ptr %"R12"
  %"zext.458" = zext i32 %".4797" to i64
  %".4798" = load i32, ptr %"R13"
  %"zext.459" = zext i32 %".4798" to i64
  %"shl.244" = shl i64 %"zext.459", 32
  %"or.219" = or i64 %"shl.244", %"zext.458"
  %"ptr_plus_imm.143" = add i64 %"or.219", 12
  %"inttoptr_bytes.199" = inttoptr i64 %"ptr_plus_imm.143" to ptr addrspace(1)
  %"ptr_cast_for_access.199" = bitcast ptr addrspace(1) %"inttoptr_bytes.199" to ptr addrspace(1)
  %".4799" = load float, ptr addrspace(1) %"ptr_cast_for_access.199"
  %".4800" = bitcast ptr %"R58" to ptr
  store float %".4799", ptr %".4800"
  ; IMAD.WIDE R10, R11, R24, c[0x0][0x168]
  %".4803" = load i32, ptr %"R11"
  %".4804" = load i32, ptr %"R24"
  %"imad_ext1.53" = zext i32 %".4803" to i64
  %"imad_ext2.53" = zext i32 %".4804" to i64
  %"imad_mul.66" = mul i64 %"imad_ext1.53", %"imad_ext2.53"
  %".4805" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.66" = add i64 %"imad_mul.66", %".4805"
  %".4806" = and i64 %"imad_add.66", 18446744069414584320
  %".4807" = lshr i64 %".4806", 32
  %"trunc32.126" = trunc i64 %".4807" to i32
  %"trunc32.127" = trunc i64 %"imad_add.66" to i32
  store i32 %"trunc32.127", ptr %"R10"
  store i32 %"trunc32.126", ptr %"R11"
  ; IMAD.WIDE R6, R7, R24, c[0x0][0x170]
  %".4811" = load i32, ptr %"R7"
  %".4812" = load i32, ptr %"R24"
  %"imad_ext1.54" = zext i32 %".4811" to i64
  %"imad_ext2.54" = zext i32 %".4812" to i64
  %"imad_mul.67" = mul i64 %"imad_ext1.54", %"imad_ext2.54"
  %".4813" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.67" = add i64 %"imad_mul.67", %".4813"
  %".4814" = and i64 %"imad_add.67", 18446744069414584320
  %".4815" = lshr i64 %".4814", 32
  %"trunc32.128" = trunc i64 %".4815" to i32
  %"trunc32.129" = trunc i64 %"imad_add.67" to i32
  store i32 %"trunc32.129", ptr %"R6"
  store i32 %"trunc32.128", ptr %"R7"
  ; IMAD.WIDE R4, R5, R24, c[0x0][0x170]
  %".4819" = load i32, ptr %"R5"
  %".4820" = load i32, ptr %"R24"
  %"imad_ext1.55" = zext i32 %".4819" to i64
  %"imad_ext2.55" = zext i32 %".4820" to i64
  %"imad_mul.68" = mul i64 %"imad_ext1.55", %"imad_ext2.55"
  %".4821" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.68" = add i64 %"imad_mul.68", %".4821"
  %".4822" = and i64 %"imad_add.68", 18446744069414584320
  %".4823" = lshr i64 %".4822", 32
  %"trunc32.130" = trunc i64 %".4823" to i32
  %"trunc32.131" = trunc i64 %"imad_add.68" to i32
  store i32 %"trunc32.131", ptr %"R4"
  store i32 %"trunc32.130", ptr %"R5"
  ; LDG.E.SYS R46, [R10]
  %".4827" = load i32, ptr %"R10"
  %"zext.460" = zext i32 %".4827" to i64
  %".4828" = load i32, ptr %"R11"
  %"zext.461" = zext i32 %".4828" to i64
  %"shl.245" = shl i64 %"zext.461", 32
  %"or.220" = or i64 %"shl.245", %"zext.460"
  %"inttoptr_bytes.200" = inttoptr i64 %"or.220" to ptr addrspace(1)
  %"ptr_cast_for_access.200" = bitcast ptr addrspace(1) %"inttoptr_bytes.200" to ptr addrspace(1)
  %".4829" = load float, ptr addrspace(1) %"ptr_cast_for_access.200"
  %".4830" = bitcast ptr %"R46" to ptr
  store float %".4829", ptr %".4830"
  ; LDG.E.SYS R42, [R6]
  %".4833" = load i32, ptr %"R6"
  %"zext.462" = zext i32 %".4833" to i64
  %".4834" = load i32, ptr %"R7"
  %"zext.463" = zext i32 %".4834" to i64
  %"shl.246" = shl i64 %"zext.463", 32
  %"or.221" = or i64 %"shl.246", %"zext.462"
  %"inttoptr_bytes.201" = inttoptr i64 %"or.221" to ptr addrspace(1)
  %"ptr_cast_for_access.201" = bitcast ptr addrspace(1) %"inttoptr_bytes.201" to ptr addrspace(1)
  %".4835" = load float, ptr addrspace(1) %"ptr_cast_for_access.201"
  %".4836" = bitcast ptr %"R42" to ptr
  store float %".4835", ptr %".4836"
  ; LDG.E.SYS R45, [R4]
  %".4839" = load i32, ptr %"R4"
  %"zext.464" = zext i32 %".4839" to i64
  %".4840" = load i32, ptr %"R5"
  %"zext.465" = zext i32 %".4840" to i64
  %"shl.247" = shl i64 %"zext.465", 32
  %"or.222" = or i64 %"shl.247", %"zext.464"
  %"inttoptr_bytes.202" = inttoptr i64 %"or.222" to ptr addrspace(1)
  %"ptr_cast_for_access.202" = bitcast ptr addrspace(1) %"inttoptr_bytes.202" to ptr addrspace(1)
  %".4841" = load float, ptr addrspace(1) %"ptr_cast_for_access.202"
  %".4842" = bitcast ptr %"R45" to ptr
  store float %".4841", ptr %".4842"
  ; LDG.E.SYS R34, [R10+0x4]
  %".4845" = load i32, ptr %"R10"
  %"zext.466" = zext i32 %".4845" to i64
  %".4846" = load i32, ptr %"R11"
  %"zext.467" = zext i32 %".4846" to i64
  %"shl.248" = shl i64 %"zext.467", 32
  %"or.223" = or i64 %"shl.248", %"zext.466"
  %"ptr_plus_imm.144" = add i64 %"or.223", 4
  %"inttoptr_bytes.203" = inttoptr i64 %"ptr_plus_imm.144" to ptr addrspace(1)
  %"ptr_cast_for_access.203" = bitcast ptr addrspace(1) %"inttoptr_bytes.203" to ptr addrspace(1)
  %".4847" = load float, ptr addrspace(1) %"ptr_cast_for_access.203"
  %".4848" = bitcast ptr %"R34" to ptr
  store float %".4847", ptr %".4848"
  ; LDG.E.SYS R37, [R6+0x4]
  %".4851" = load i32, ptr %"R6"
  %"zext.468" = zext i32 %".4851" to i64
  %".4852" = load i32, ptr %"R7"
  %"zext.469" = zext i32 %".4852" to i64
  %"shl.249" = shl i64 %"zext.469", 32
  %"or.224" = or i64 %"shl.249", %"zext.468"
  %"ptr_plus_imm.145" = add i64 %"or.224", 4
  %"inttoptr_bytes.204" = inttoptr i64 %"ptr_plus_imm.145" to ptr addrspace(1)
  %"ptr_cast_for_access.204" = bitcast ptr addrspace(1) %"inttoptr_bytes.204" to ptr addrspace(1)
  %".4853" = load float, ptr addrspace(1) %"ptr_cast_for_access.204"
  %".4854" = bitcast ptr %"R37" to ptr
  store float %".4853", ptr %".4854"
  ; IADD3 R9, R23, 0x8, RZ
  %".4857" = load i32, ptr %"R23"
  %".4858" = add i32 %".4857", 8
  %".4859" = add i32 %".4858", 0
  store i32 %".4859", ptr %"R9"
  ; LDG.E.SYS R36, [R10+0x8]
  %".4862" = load i32, ptr %"R10"
  %"zext.470" = zext i32 %".4862" to i64
  %".4863" = load i32, ptr %"R11"
  %"zext.471" = zext i32 %".4863" to i64
  %"shl.250" = shl i64 %"zext.471", 32
  %"or.225" = or i64 %"shl.250", %"zext.470"
  %"ptr_plus_imm.146" = add i64 %"or.225", 8
  %"inttoptr_bytes.205" = inttoptr i64 %"ptr_plus_imm.146" to ptr addrspace(1)
  %"ptr_cast_for_access.205" = bitcast ptr addrspace(1) %"inttoptr_bytes.205" to ptr addrspace(1)
  %".4864" = load float, ptr addrspace(1) %"ptr_cast_for_access.205"
  %".4865" = bitcast ptr %"R36" to ptr
  store float %".4864", ptr %".4865"
  ; IMAD.WIDE R8, R9, R24, c[0x0][0x168]
  %".4868" = load i32, ptr %"R9"
  %".4869" = load i32, ptr %"R24"
  %"imad_ext1.56" = zext i32 %".4868" to i64
  %"imad_ext2.56" = zext i32 %".4869" to i64
  %"imad_mul.69" = mul i64 %"imad_ext1.56", %"imad_ext2.56"
  %".4870" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.69" = add i64 %"imad_mul.69", %".4870"
  %".4871" = and i64 %"imad_add.69", 18446744069414584320
  %".4872" = lshr i64 %".4871", 32
  %"trunc32.132" = trunc i64 %".4872" to i32
  %"trunc32.133" = trunc i64 %"imad_add.69" to i32
  store i32 %"trunc32.133", ptr %"R8"
  store i32 %"trunc32.132", ptr %"R9"
  ; LDG.E.SYS R38, [R10+0xc]
  %".4876" = load i32, ptr %"R10"
  %"zext.472" = zext i32 %".4876" to i64
  %".4877" = load i32, ptr %"R11"
  %"zext.473" = zext i32 %".4877" to i64
  %"shl.251" = shl i64 %"zext.473", 32
  %"or.226" = or i64 %"shl.251", %"zext.472"
  %"ptr_plus_imm.147" = add i64 %"or.226", 12
  %"inttoptr_bytes.206" = inttoptr i64 %"ptr_plus_imm.147" to ptr addrspace(1)
  %"ptr_cast_for_access.206" = bitcast ptr addrspace(1) %"inttoptr_bytes.206" to ptr addrspace(1)
  %".4878" = load float, ptr addrspace(1) %"ptr_cast_for_access.206"
  %".4879" = bitcast ptr %"R38" to ptr
  store float %".4878", ptr %".4879"
  ; IADD3 R13, R23, 0xc, RZ
  %".4882" = load i32, ptr %"R23"
  %".4883" = add i32 %".4882", 12
  %".4884" = add i32 %".4883", 0
  store i32 %".4884", ptr %"R13"
  ; IADD3 R11, R35, 0x8, RZ
  %".4887" = load i32, ptr %"R35"
  %".4888" = add i32 %".4887", 8
  %".4889" = add i32 %".4888", 0
  store i32 %".4889", ptr %"R11"
  ; IMAD.WIDE R12, R13, R24, c[0x0][0x168]
  %".4892" = load i32, ptr %"R13"
  %".4893" = load i32, ptr %"R24"
  %"imad_ext1.57" = zext i32 %".4892" to i64
  %"imad_ext2.57" = zext i32 %".4893" to i64
  %"imad_mul.70" = mul i64 %"imad_ext1.57", %"imad_ext2.57"
  %".4894" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.70" = add i64 %"imad_mul.70", %".4894"
  %".4895" = and i64 %"imad_add.70", 18446744069414584320
  %".4896" = lshr i64 %".4895", 32
  %"trunc32.134" = trunc i64 %".4896" to i32
  %"trunc32.135" = trunc i64 %"imad_add.70" to i32
  store i32 %"trunc32.135", ptr %"R12"
  store i32 %"trunc32.134", ptr %"R13"
  ; FFMA R57, R41, R39, R44
  %".4900" = load float, ptr %"R41"
  %".4901" = load float, ptr %"R39"
  %".4902" = load float, ptr %"R44"
  %"fmul.191" = fmul float %".4900", %".4901"
  %"fadd.172" = fadd float %"fmul.191", %".4902"
  %".4903" = bitcast ptr %"R57" to ptr
  store float %"fadd.172", ptr %".4903"
  ; LDG.E.SYS R41, [R8]
  %".4906" = load i32, ptr %"R8"
  %"zext.474" = zext i32 %".4906" to i64
  %".4907" = load i32, ptr %"R9"
  %"zext.475" = zext i32 %".4907" to i64
  %"shl.252" = shl i64 %"zext.475", 32
  %"or.227" = or i64 %"shl.252", %"zext.474"
  %"inttoptr_bytes.207" = inttoptr i64 %"or.227" to ptr addrspace(1)
  %"ptr_cast_for_access.207" = bitcast ptr addrspace(1) %"inttoptr_bytes.207" to ptr addrspace(1)
  %".4908" = load float, ptr addrspace(1) %"ptr_cast_for_access.207"
  %".4909" = bitcast ptr %"R41" to ptr
  store float %".4908", ptr %".4909"
  ; FFMA R56, R39, R40, R56
  %".4912" = load float, ptr %"R39"
  %".4913" = load float, ptr %"R40"
  %".4914" = load float, ptr %"R56"
  %"fmul.192" = fmul float %".4912", %".4913"
  %"fadd.173" = fadd float %"fmul.192", %".4914"
  %".4915" = bitcast ptr %"R56" to ptr
  store float %"fadd.173", ptr %".4915"
  ; LDG.E.SYS R40, [R8+0x4]
  %".4918" = load i32, ptr %"R8"
  %"zext.476" = zext i32 %".4918" to i64
  %".4919" = load i32, ptr %"R9"
  %"zext.477" = zext i32 %".4919" to i64
  %"shl.253" = shl i64 %"zext.477", 32
  %"or.228" = or i64 %"shl.253", %"zext.476"
  %"ptr_plus_imm.148" = add i64 %"or.228", 4
  %"inttoptr_bytes.208" = inttoptr i64 %"ptr_plus_imm.148" to ptr addrspace(1)
  %"ptr_cast_for_access.208" = bitcast ptr addrspace(1) %"inttoptr_bytes.208" to ptr addrspace(1)
  %".4920" = load float, ptr addrspace(1) %"ptr_cast_for_access.208"
  %".4921" = bitcast ptr %"R40" to ptr
  store float %".4920", ptr %".4921"
  ; LDG.E.SYS R39, [R8+0x8]
  %".4924" = load i32, ptr %"R8"
  %"zext.478" = zext i32 %".4924" to i64
  %".4925" = load i32, ptr %"R9"
  %"zext.479" = zext i32 %".4925" to i64
  %"shl.254" = shl i64 %"zext.479", 32
  %"or.229" = or i64 %"shl.254", %"zext.478"
  %"ptr_plus_imm.149" = add i64 %"or.229", 8
  %"inttoptr_bytes.209" = inttoptr i64 %"ptr_plus_imm.149" to ptr addrspace(1)
  %"ptr_cast_for_access.209" = bitcast ptr addrspace(1) %"inttoptr_bytes.209" to ptr addrspace(1)
  %".4926" = load float, ptr addrspace(1) %"ptr_cast_for_access.209"
  %".4927" = bitcast ptr %"R39" to ptr
  store float %".4926", ptr %".4927"
  ; FFMA R57, R53, R52, R57
  %".4930" = load float, ptr %"R53"
  %".4931" = load float, ptr %"R52"
  %".4932" = load float, ptr %"R57"
  %"fmul.193" = fmul float %".4930", %".4931"
  %"fadd.174" = fadd float %"fmul.193", %".4932"
  %".4933" = bitcast ptr %"R57" to ptr
  store float %"fadd.174", ptr %".4933"
  ; LDG.E.SYS R44, [R8+0xc]
  %".4936" = load i32, ptr %"R8"
  %"zext.480" = zext i32 %".4936" to i64
  %".4937" = load i32, ptr %"R9"
  %"zext.481" = zext i32 %".4937" to i64
  %"shl.255" = shl i64 %"zext.481", 32
  %"or.230" = or i64 %"shl.255", %"zext.480"
  %"ptr_plus_imm.150" = add i64 %"or.230", 12
  %"inttoptr_bytes.210" = inttoptr i64 %"ptr_plus_imm.150" to ptr addrspace(1)
  %"ptr_cast_for_access.210" = bitcast ptr addrspace(1) %"inttoptr_bytes.210" to ptr addrspace(1)
  %".4938" = load float, ptr addrspace(1) %"ptr_cast_for_access.210"
  %".4939" = bitcast ptr %"R44" to ptr
  store float %".4938", ptr %".4939"
  ; FFMA R59, R52, R55, R56
  %".4942" = load float, ptr %"R52"
  %".4943" = load float, ptr %"R55"
  %".4944" = load float, ptr %"R56"
  %"fmul.194" = fmul float %".4942", %".4943"
  %"fadd.175" = fadd float %"fmul.194", %".4944"
  %".4945" = bitcast ptr %"R59" to ptr
  store float %"fadd.175", ptr %".4945"
  ; LDG.E.SYS R55, [R12]
  %".4948" = load i32, ptr %"R12"
  %"zext.482" = zext i32 %".4948" to i64
  %".4949" = load i32, ptr %"R13"
  %"zext.483" = zext i32 %".4949" to i64
  %"shl.256" = shl i64 %"zext.483", 32
  %"or.231" = or i64 %"shl.256", %"zext.482"
  %"inttoptr_bytes.211" = inttoptr i64 %"or.231" to ptr addrspace(1)
  %"ptr_cast_for_access.211" = bitcast ptr addrspace(1) %"inttoptr_bytes.211" to ptr addrspace(1)
  %".4950" = load float, ptr addrspace(1) %"ptr_cast_for_access.211"
  %".4951" = bitcast ptr %"R55" to ptr
  store float %".4950", ptr %".4951"
  ; LDG.E.SYS R53, [R12+0x4]
  %".4954" = load i32, ptr %"R12"
  %"zext.484" = zext i32 %".4954" to i64
  %".4955" = load i32, ptr %"R13"
  %"zext.485" = zext i32 %".4955" to i64
  %"shl.257" = shl i64 %"zext.485", 32
  %"or.232" = or i64 %"shl.257", %"zext.484"
  %"ptr_plus_imm.151" = add i64 %"or.232", 4
  %"inttoptr_bytes.212" = inttoptr i64 %"ptr_plus_imm.151" to ptr addrspace(1)
  %"ptr_cast_for_access.212" = bitcast ptr addrspace(1) %"inttoptr_bytes.212" to ptr addrspace(1)
  %".4956" = load float, ptr addrspace(1) %"ptr_cast_for_access.212"
  %".4957" = bitcast ptr %"R53" to ptr
  store float %".4956", ptr %".4957"
  ; FFMA R43, R43, R50, R57
  %".4960" = load float, ptr %"R43"
  %".4961" = load float, ptr %"R50"
  %".4962" = load float, ptr %"R57"
  %"fmul.195" = fmul float %".4960", %".4961"
  %"fadd.176" = fadd float %"fmul.195", %".4962"
  %".4963" = bitcast ptr %"R43" to ptr
  store float %"fadd.176", ptr %".4963"
  ; IMAD.WIDE R8, R11, R24, c[0x0][0x170]
  %".4966" = load i32, ptr %"R11"
  %".4967" = load i32, ptr %"R24"
  %"imad_ext1.58" = zext i32 %".4966" to i64
  %"imad_ext2.58" = zext i32 %".4967" to i64
  %"imad_mul.71" = mul i64 %"imad_ext1.58", %"imad_ext2.58"
  %".4968" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.71" = add i64 %"imad_mul.71", %".4968"
  %".4969" = and i64 %"imad_add.71", 18446744069414584320
  %".4970" = lshr i64 %".4969", 32
  %"trunc32.136" = trunc i64 %".4970" to i32
  %"trunc32.137" = trunc i64 %"imad_add.71" to i32
  store i32 %"trunc32.137", ptr %"R8"
  store i32 %"trunc32.136", ptr %"R9"
  ; LDG.E.SYS R52, [R12+0x8]
  %".4974" = load i32, ptr %"R12"
  %"zext.486" = zext i32 %".4974" to i64
  %".4975" = load i32, ptr %"R13"
  %"zext.487" = zext i32 %".4975" to i64
  %"shl.258" = shl i64 %"zext.487", 32
  %"or.233" = or i64 %"shl.258", %"zext.486"
  %"ptr_plus_imm.152" = add i64 %"or.233", 8
  %"inttoptr_bytes.213" = inttoptr i64 %"ptr_plus_imm.152" to ptr addrspace(1)
  %"ptr_cast_for_access.213" = bitcast ptr addrspace(1) %"inttoptr_bytes.213" to ptr addrspace(1)
  %".4976" = load float, ptr addrspace(1) %"ptr_cast_for_access.213"
  %".4977" = bitcast ptr %"R52" to ptr
  store float %".4976", ptr %".4977"
  ; FFMA R51, R50, R51, R59
  %".4980" = load float, ptr %"R50"
  %".4981" = load float, ptr %"R51"
  %".4982" = load float, ptr %"R59"
  %"fmul.196" = fmul float %".4980", %".4981"
  %"fadd.177" = fadd float %"fmul.196", %".4982"
  %".4983" = bitcast ptr %"R51" to ptr
  store float %"fadd.177", ptr %".4983"
  ; IADD3 R57, R25, 0x8, RZ
  %".4986" = load i32, ptr %"R25"
  %".4987" = add i32 %".4986", 8
  %".4988" = add i32 %".4987", 0
  store i32 %".4988", ptr %"R57"
  ; LDG.E.SYS R59, [R4+0xc]
  %".4991" = load i32, ptr %"R4"
  %"zext.488" = zext i32 %".4991" to i64
  %".4992" = load i32, ptr %"R5"
  %"zext.489" = zext i32 %".4992" to i64
  %"shl.259" = shl i64 %"zext.489", 32
  %"or.234" = or i64 %"shl.259", %"zext.488"
  %"ptr_plus_imm.153" = add i64 %"or.234", 12
  %"inttoptr_bytes.214" = inttoptr i64 %"ptr_plus_imm.153" to ptr addrspace(1)
  %"ptr_cast_for_access.214" = bitcast ptr addrspace(1) %"inttoptr_bytes.214" to ptr addrspace(1)
  %".4993" = load float, ptr addrspace(1) %"ptr_cast_for_access.214"
  %".4994" = bitcast ptr %"R59" to ptr
  store float %".4993", ptr %".4994"
  ; FFMA R61, R54, R47, R43
  %".4997" = load float, ptr %"R54"
  %".4998" = load float, ptr %"R47"
  %".4999" = load float, ptr %"R43"
  %"fmul.197" = fmul float %".4997", %".4998"
  %"fadd.178" = fadd float %"fmul.197", %".4999"
  %".5000" = bitcast ptr %"R61" to ptr
  store float %"fadd.178", ptr %".5000"
  ; LDG.E.SYS R50, [R8]
  %".5003" = load i32, ptr %"R8"
  %"zext.490" = zext i32 %".5003" to i64
  %".5004" = load i32, ptr %"R9"
  %"zext.491" = zext i32 %".5004" to i64
  %"shl.260" = shl i64 %"zext.491", 32
  %"or.235" = or i64 %"shl.260", %"zext.490"
  %"inttoptr_bytes.215" = inttoptr i64 %"or.235" to ptr addrspace(1)
  %"ptr_cast_for_access.215" = bitcast ptr addrspace(1) %"inttoptr_bytes.215" to ptr addrspace(1)
  %".5005" = load float, ptr addrspace(1) %"ptr_cast_for_access.215"
  %".5006" = bitcast ptr %"R50" to ptr
  store float %".5005", ptr %".5006"
  ; FFMA R58, R47, R58, R51
  %".5009" = load float, ptr %"R47"
  %".5010" = load float, ptr %"R58"
  %".5011" = load float, ptr %"R51"
  %"fmul.198" = fmul float %".5009", %".5010"
  %"fadd.179" = fadd float %"fmul.198", %".5011"
  %".5012" = bitcast ptr %"R58" to ptr
  store float %"fadd.179", ptr %".5012"
  ; LDG.E.SYS R43, [R6+0x8]
  %".5015" = load i32, ptr %"R6"
  %"zext.492" = zext i32 %".5015" to i64
  %".5016" = load i32, ptr %"R7"
  %"zext.493" = zext i32 %".5016" to i64
  %"shl.261" = shl i64 %"zext.493", 32
  %"or.236" = or i64 %"shl.261", %"zext.492"
  %"ptr_plus_imm.154" = add i64 %"or.236", 8
  %"inttoptr_bytes.216" = inttoptr i64 %"ptr_plus_imm.154" to ptr addrspace(1)
  %"ptr_cast_for_access.216" = bitcast ptr addrspace(1) %"inttoptr_bytes.216" to ptr addrspace(1)
  %".5017" = load float, ptr addrspace(1) %"ptr_cast_for_access.216"
  %".5018" = bitcast ptr %"R43" to ptr
  store float %".5017", ptr %".5018"
  ; LDG.E.SYS R47, [R4+0x4]
  %".5021" = load i32, ptr %"R4"
  %"zext.494" = zext i32 %".5021" to i64
  %".5022" = load i32, ptr %"R5"
  %"zext.495" = zext i32 %".5022" to i64
  %"shl.262" = shl i64 %"zext.495", 32
  %"or.237" = or i64 %"shl.262", %"zext.494"
  %"ptr_plus_imm.155" = add i64 %"or.237", 4
  %"inttoptr_bytes.217" = inttoptr i64 %"ptr_plus_imm.155" to ptr addrspace(1)
  %"ptr_cast_for_access.217" = bitcast ptr addrspace(1) %"inttoptr_bytes.217" to ptr addrspace(1)
  %".5023" = load float, ptr addrspace(1) %"ptr_cast_for_access.217"
  %".5024" = bitcast ptr %"R47" to ptr
  store float %".5023", ptr %".5024"
  ; IMAD.WIDE R10, R57, R24, c[0x0][0x170]
  %".5027" = load i32, ptr %"R57"
  %".5028" = load i32, ptr %"R24"
  %"imad_ext1.59" = zext i32 %".5027" to i64
  %"imad_ext2.59" = zext i32 %".5028" to i64
  %"imad_mul.72" = mul i64 %"imad_ext1.59", %"imad_ext2.59"
  %".5029" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.72" = add i64 %"imad_mul.72", %".5029"
  %".5030" = and i64 %"imad_add.72", 18446744069414584320
  %".5031" = lshr i64 %".5030", 32
  %"trunc32.138" = trunc i64 %".5031" to i32
  %"trunc32.139" = trunc i64 %"imad_add.72" to i32
  store i32 %"trunc32.139", ptr %"R10"
  store i32 %"trunc32.138", ptr %"R11"
  ; LDG.E.SYS R51, [R4+0x8]
  %".5035" = load i32, ptr %"R4"
  %"zext.496" = zext i32 %".5035" to i64
  %".5036" = load i32, ptr %"R5"
  %"zext.497" = zext i32 %".5036" to i64
  %"shl.263" = shl i64 %"zext.497", 32
  %"or.238" = or i64 %"shl.263", %"zext.496"
  %"ptr_plus_imm.156" = add i64 %"or.238", 8
  %"inttoptr_bytes.218" = inttoptr i64 %"ptr_plus_imm.156" to ptr addrspace(1)
  %"ptr_cast_for_access.218" = bitcast ptr addrspace(1) %"inttoptr_bytes.218" to ptr addrspace(1)
  %".5037" = load float, ptr addrspace(1) %"ptr_cast_for_access.218"
  %".5038" = bitcast ptr %"R51" to ptr
  store float %".5037", ptr %".5038"
  ; LDG.E.SYS R57, [R6+0xc]
  %".5041" = load i32, ptr %"R6"
  %"zext.498" = zext i32 %".5041" to i64
  %".5042" = load i32, ptr %"R7"
  %"zext.499" = zext i32 %".5042" to i64
  %"shl.264" = shl i64 %"zext.499", 32
  %"or.239" = or i64 %"shl.264", %"zext.498"
  %"ptr_plus_imm.157" = add i64 %"or.239", 12
  %"inttoptr_bytes.219" = inttoptr i64 %"ptr_plus_imm.157" to ptr addrspace(1)
  %"ptr_cast_for_access.219" = bitcast ptr addrspace(1) %"inttoptr_bytes.219" to ptr addrspace(1)
  %".5043" = load float, ptr addrspace(1) %"ptr_cast_for_access.219"
  %".5044" = bitcast ptr %"R57" to ptr
  store float %".5043", ptr %".5044"
  ; FFMA R42, R42, R46, R61
  %".5047" = load float, ptr %"R42"
  %".5048" = load float, ptr %"R46"
  %".5049" = load float, ptr %"R61"
  %"fmul.199" = fmul float %".5047", %".5048"
  %"fadd.180" = fadd float %"fmul.199", %".5049"
  %".5050" = bitcast ptr %"R42" to ptr
  store float %"fadd.180", ptr %".5050"
  ; IADD3 R25, R25, 0xc, RZ
  %".5053" = load i32, ptr %"R25"
  %".5054" = add i32 %".5053", 12
  %".5055" = add i32 %".5054", 0
  store i32 %".5055", ptr %"R25"
  ; LDG.E.SYS R56, [R12+0xc]
  %".5058" = load i32, ptr %"R12"
  %"zext.500" = zext i32 %".5058" to i64
  %".5059" = load i32, ptr %"R13"
  %"zext.501" = zext i32 %".5059" to i64
  %"shl.265" = shl i64 %"zext.501", 32
  %"or.240" = or i64 %"shl.265", %"zext.500"
  %"ptr_plus_imm.158" = add i64 %"or.240", 12
  %"inttoptr_bytes.220" = inttoptr i64 %"ptr_plus_imm.158" to ptr addrspace(1)
  %"ptr_cast_for_access.220" = bitcast ptr addrspace(1) %"inttoptr_bytes.220" to ptr addrspace(1)
  %".5060" = load float, ptr addrspace(1) %"ptr_cast_for_access.220"
  %".5061" = bitcast ptr %"R56" to ptr
  store float %".5060", ptr %".5061"
  ; FFMA R45, R46, R45, R58
  %".5064" = load float, ptr %"R46"
  %".5065" = load float, ptr %"R45"
  %".5066" = load float, ptr %"R58"
  %"fmul.200" = fmul float %".5064", %".5065"
  %"fadd.181" = fadd float %"fmul.200", %".5066"
  %".5067" = bitcast ptr %"R45" to ptr
  store float %"fadd.181", ptr %".5067"
  ; LDG.E.SYS R46, [R10]
  %".5070" = load i32, ptr %"R10"
  %"zext.502" = zext i32 %".5070" to i64
  %".5071" = load i32, ptr %"R11"
  %"zext.503" = zext i32 %".5071" to i64
  %"shl.266" = shl i64 %"zext.503", 32
  %"or.241" = or i64 %"shl.266", %"zext.502"
  %"inttoptr_bytes.221" = inttoptr i64 %"or.241" to ptr addrspace(1)
  %"ptr_cast_for_access.221" = bitcast ptr addrspace(1) %"inttoptr_bytes.221" to ptr addrspace(1)
  %".5072" = load float, ptr addrspace(1) %"ptr_cast_for_access.221"
  %".5073" = bitcast ptr %"R46" to ptr
  store float %".5072", ptr %".5073"
  ; LDG.E.SYS R61, [R8+0x4]
  %".5076" = load i32, ptr %"R8"
  %"zext.504" = zext i32 %".5076" to i64
  %".5077" = load i32, ptr %"R9"
  %"zext.505" = zext i32 %".5077" to i64
  %"shl.267" = shl i64 %"zext.505", 32
  %"or.242" = or i64 %"shl.267", %"zext.504"
  %"ptr_plus_imm.159" = add i64 %"or.242", 4
  %"inttoptr_bytes.222" = inttoptr i64 %"ptr_plus_imm.159" to ptr addrspace(1)
  %"ptr_cast_for_access.222" = bitcast ptr addrspace(1) %"inttoptr_bytes.222" to ptr addrspace(1)
  %".5078" = load float, ptr addrspace(1) %"ptr_cast_for_access.222"
  %".5079" = bitcast ptr %"R61" to ptr
  store float %".5078", ptr %".5079"
  ; IADD3 R13, R35, 0xc, RZ
  %".5082" = load i32, ptr %"R35"
  %".5083" = add i32 %".5082", 12
  %".5084" = add i32 %".5083", 0
  store i32 %".5084", ptr %"R13"
  ; LDG.E.SYS R35, [R10+0x4]
  %".5087" = load i32, ptr %"R10"
  %"zext.506" = zext i32 %".5087" to i64
  %".5088" = load i32, ptr %"R11"
  %"zext.507" = zext i32 %".5088" to i64
  %"shl.268" = shl i64 %"zext.507", 32
  %"or.243" = or i64 %"shl.268", %"zext.506"
  %"ptr_plus_imm.160" = add i64 %"or.243", 4
  %"inttoptr_bytes.223" = inttoptr i64 %"ptr_plus_imm.160" to ptr addrspace(1)
  %"ptr_cast_for_access.223" = bitcast ptr addrspace(1) %"inttoptr_bytes.223" to ptr addrspace(1)
  %".5089" = load float, ptr addrspace(1) %"ptr_cast_for_access.223"
  %".5090" = bitcast ptr %"R35" to ptr
  store float %".5089", ptr %".5090"
  ; IMAD.WIDE R12, R13, R24.reuse, c[0x0][0x170]
  %".5093" = load i32, ptr %"R13"
  %".5094" = load i32, ptr %"R24"
  %"imad_ext1.60" = zext i32 %".5093" to i64
  %"imad_ext2.60" = zext i32 %".5094" to i64
  %"imad_mul.73" = mul i64 %"imad_ext1.60", %"imad_ext2.60"
  %".5095" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.73" = add i64 %"imad_mul.73", %".5095"
  %".5096" = and i64 %"imad_add.73", 18446744069414584320
  %".5097" = lshr i64 %".5096", 32
  %"trunc32.140" = trunc i64 %".5097" to i32
  %"trunc32.141" = trunc i64 %"imad_add.73" to i32
  store i32 %"trunc32.141", ptr %"R12"
  store i32 %"trunc32.140", ptr %"R13"
  ; LDG.E.SYS R6, [R8+0x8]
  %".5101" = load i32, ptr %"R8"
  %"zext.508" = zext i32 %".5101" to i64
  %".5102" = load i32, ptr %"R9"
  %"zext.509" = zext i32 %".5102" to i64
  %"shl.269" = shl i64 %"zext.509", 32
  %"or.244" = or i64 %"shl.269", %"zext.508"
  %"ptr_plus_imm.161" = add i64 %"or.244", 8
  %"inttoptr_bytes.224" = inttoptr i64 %"ptr_plus_imm.161" to ptr addrspace(1)
  %"ptr_cast_for_access.224" = bitcast ptr addrspace(1) %"inttoptr_bytes.224" to ptr addrspace(1)
  %".5103" = load float, ptr addrspace(1) %"ptr_cast_for_access.224"
  %".5104" = bitcast ptr %"R6" to ptr
  store float %".5103", ptr %".5104"
  ; IMAD.WIDE R24, R25, R24, c[0x0][0x170]
  %".5107" = load i32, ptr %"R25"
  %".5108" = load i32, ptr %"R24"
  %"imad_ext1.61" = zext i32 %".5107" to i64
  %"imad_ext2.61" = zext i32 %".5108" to i64
  %"imad_mul.74" = mul i64 %"imad_ext1.61", %"imad_ext2.61"
  %".5109" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.74" = add i64 %"imad_mul.74", %".5109"
  %".5110" = and i64 %"imad_add.74", 18446744069414584320
  %".5111" = lshr i64 %".5110", 32
  %"trunc32.142" = trunc i64 %".5111" to i32
  %"trunc32.143" = trunc i64 %"imad_add.74" to i32
  store i32 %"trunc32.143", ptr %"R24"
  store i32 %"trunc32.142", ptr %"R25"
  ; LDG.E.SYS R4, [R10+0x8]
  %".5115" = load i32, ptr %"R10"
  %"zext.510" = zext i32 %".5115" to i64
  %".5116" = load i32, ptr %"R11"
  %"zext.511" = zext i32 %".5116" to i64
  %"shl.270" = shl i64 %"zext.511", 32
  %"or.245" = or i64 %"shl.270", %"zext.510"
  %"ptr_plus_imm.162" = add i64 %"or.245", 8
  %"inttoptr_bytes.225" = inttoptr i64 %"ptr_plus_imm.162" to ptr addrspace(1)
  %"ptr_cast_for_access.225" = bitcast ptr addrspace(1) %"inttoptr_bytes.225" to ptr addrspace(1)
  %".5117" = load float, ptr addrspace(1) %"ptr_cast_for_access.225"
  %".5118" = bitcast ptr %"R4" to ptr
  store float %".5117", ptr %".5118"
  ; LDG.E.SYS R5, [R8+0xc]
  %".5121" = load i32, ptr %"R8"
  %"zext.512" = zext i32 %".5121" to i64
  %".5122" = load i32, ptr %"R9"
  %"zext.513" = zext i32 %".5122" to i64
  %"shl.271" = shl i64 %"zext.513", 32
  %"or.246" = or i64 %"shl.271", %"zext.512"
  %"ptr_plus_imm.163" = add i64 %"or.246", 12
  %"inttoptr_bytes.226" = inttoptr i64 %"ptr_plus_imm.163" to ptr addrspace(1)
  %"ptr_cast_for_access.226" = bitcast ptr addrspace(1) %"inttoptr_bytes.226" to ptr addrspace(1)
  %".5123" = load float, ptr addrspace(1) %"ptr_cast_for_access.226"
  %".5124" = bitcast ptr %"R5" to ptr
  store float %".5123", ptr %".5124"
  ; LDG.E.SYS R60, [R10+0xc]
  %".5127" = load i32, ptr %"R10"
  %"zext.514" = zext i32 %".5127" to i64
  %".5128" = load i32, ptr %"R11"
  %"zext.515" = zext i32 %".5128" to i64
  %"shl.272" = shl i64 %"zext.515", 32
  %"or.247" = or i64 %"shl.272", %"zext.514"
  %"ptr_plus_imm.164" = add i64 %"or.247", 12
  %"inttoptr_bytes.227" = inttoptr i64 %"ptr_plus_imm.164" to ptr addrspace(1)
  %"ptr_cast_for_access.227" = bitcast ptr addrspace(1) %"inttoptr_bytes.227" to ptr addrspace(1)
  %".5129" = load float, ptr addrspace(1) %"ptr_cast_for_access.227"
  %".5130" = bitcast ptr %"R60" to ptr
  store float %".5129", ptr %".5130"
  ; LDG.E.SYS R58, [R12]
  %".5133" = load i32, ptr %"R12"
  %"zext.516" = zext i32 %".5133" to i64
  %".5134" = load i32, ptr %"R13"
  %"zext.517" = zext i32 %".5134" to i64
  %"shl.273" = shl i64 %"zext.517", 32
  %"or.248" = or i64 %"shl.273", %"zext.516"
  %"inttoptr_bytes.228" = inttoptr i64 %"or.248" to ptr addrspace(1)
  %"ptr_cast_for_access.228" = bitcast ptr addrspace(1) %"inttoptr_bytes.228" to ptr addrspace(1)
  %".5135" = load float, ptr addrspace(1) %"ptr_cast_for_access.228"
  %".5136" = bitcast ptr %"R58" to ptr
  store float %".5135", ptr %".5136"
  ; LDG.E.SYS R54, [R12+0x4]
  %".5139" = load i32, ptr %"R12"
  %"zext.518" = zext i32 %".5139" to i64
  %".5140" = load i32, ptr %"R13"
  %"zext.519" = zext i32 %".5140" to i64
  %"shl.274" = shl i64 %"zext.519", 32
  %"or.249" = or i64 %"shl.274", %"zext.518"
  %"ptr_plus_imm.165" = add i64 %"or.249", 4
  %"inttoptr_bytes.229" = inttoptr i64 %"ptr_plus_imm.165" to ptr addrspace(1)
  %"ptr_cast_for_access.229" = bitcast ptr addrspace(1) %"inttoptr_bytes.229" to ptr addrspace(1)
  %".5141" = load float, ptr addrspace(1) %"ptr_cast_for_access.229"
  %".5142" = bitcast ptr %"R54" to ptr
  store float %".5141", ptr %".5142"
  ; FFMA R10, R37, R34, R42
  %".5145" = load float, ptr %"R37"
  %".5146" = load float, ptr %"R34"
  %".5147" = load float, ptr %"R42"
  %"fmul.201" = fmul float %".5145", %".5146"
  %"fadd.182" = fadd float %"fmul.201", %".5147"
  %".5148" = bitcast ptr %"R10" to ptr
  store float %"fadd.182", ptr %".5148"
  ; LDG.E.SYS R37, [R24]
  %".5151" = load i32, ptr %"R24"
  %"zext.520" = zext i32 %".5151" to i64
  %".5152" = load i32, ptr %"R25"
  %"zext.521" = zext i32 %".5152" to i64
  %"shl.275" = shl i64 %"zext.521", 32
  %"or.250" = or i64 %"shl.275", %"zext.520"
  %"inttoptr_bytes.230" = inttoptr i64 %"or.250" to ptr addrspace(1)
  %"ptr_cast_for_access.230" = bitcast ptr addrspace(1) %"inttoptr_bytes.230" to ptr addrspace(1)
  %".5153" = load float, ptr addrspace(1) %"ptr_cast_for_access.230"
  %".5154" = bitcast ptr %"R37" to ptr
  store float %".5153", ptr %".5154"
  ; LDG.E.SYS R42, [R24+0x4]
  %".5157" = load i32, ptr %"R24"
  %"zext.522" = zext i32 %".5157" to i64
  %".5158" = load i32, ptr %"R25"
  %"zext.523" = zext i32 %".5158" to i64
  %"shl.276" = shl i64 %"zext.523", 32
  %"or.251" = or i64 %"shl.276", %"zext.522"
  %"ptr_plus_imm.166" = add i64 %"or.251", 4
  %"inttoptr_bytes.231" = inttoptr i64 %"ptr_plus_imm.166" to ptr addrspace(1)
  %"ptr_cast_for_access.231" = bitcast ptr addrspace(1) %"inttoptr_bytes.231" to ptr addrspace(1)
  %".5159" = load float, ptr addrspace(1) %"ptr_cast_for_access.231"
  %".5160" = bitcast ptr %"R42" to ptr
  store float %".5159", ptr %".5160"
  ; LDG.E.SYS R7, [R12+0x8]
  %".5163" = load i32, ptr %"R12"
  %"zext.524" = zext i32 %".5163" to i64
  %".5164" = load i32, ptr %"R13"
  %"zext.525" = zext i32 %".5164" to i64
  %"shl.277" = shl i64 %"zext.525", 32
  %"or.252" = or i64 %"shl.277", %"zext.524"
  %"ptr_plus_imm.167" = add i64 %"or.252", 8
  %"inttoptr_bytes.232" = inttoptr i64 %"ptr_plus_imm.167" to ptr addrspace(1)
  %"ptr_cast_for_access.232" = bitcast ptr addrspace(1) %"inttoptr_bytes.232" to ptr addrspace(1)
  %".5165" = load float, ptr addrspace(1) %"ptr_cast_for_access.232"
  %".5166" = bitcast ptr %"R7" to ptr
  store float %".5165", ptr %".5166"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5169" = load i32, ptr %"R24"
  %"zext.526" = zext i32 %".5169" to i64
  %".5170" = load i32, ptr %"R25"
  %"zext.527" = zext i32 %".5170" to i64
  %"shl.278" = shl i64 %"zext.527", 32
  %"or.253" = or i64 %"shl.278", %"zext.526"
  %"ptr_plus_imm.168" = add i64 %"or.253", 8
  %"inttoptr_bytes.233" = inttoptr i64 %"ptr_plus_imm.168" to ptr addrspace(1)
  %"ptr_cast_for_access.233" = bitcast ptr addrspace(1) %"inttoptr_bytes.233" to ptr addrspace(1)
  %".5171" = load float, ptr addrspace(1) %"ptr_cast_for_access.233"
  %".5172" = bitcast ptr %"R9" to ptr
  store float %".5171", ptr %".5172"
  ; LDG.E.SYS R8, [R24+0xc]
  %".5175" = load i32, ptr %"R24"
  %"zext.528" = zext i32 %".5175" to i64
  %".5176" = load i32, ptr %"R25"
  %"zext.529" = zext i32 %".5176" to i64
  %"shl.279" = shl i64 %"zext.529", 32
  %"or.254" = or i64 %"shl.279", %"zext.528"
  %"ptr_plus_imm.169" = add i64 %"or.254", 12
  %"inttoptr_bytes.234" = inttoptr i64 %"ptr_plus_imm.169" to ptr addrspace(1)
  %"ptr_cast_for_access.234" = bitcast ptr addrspace(1) %"inttoptr_bytes.234" to ptr addrspace(1)
  %".5177" = load float, ptr addrspace(1) %"ptr_cast_for_access.234"
  %".5178" = bitcast ptr %"R8" to ptr
  store float %".5177", ptr %".5178"
  ; LDG.E.SYS R13, [R12+0xc]
  %".5181" = load i32, ptr %"R12"
  %"zext.530" = zext i32 %".5181" to i64
  %".5182" = load i32, ptr %"R13"
  %"zext.531" = zext i32 %".5182" to i64
  %"shl.280" = shl i64 %"zext.531", 32
  %"or.255" = or i64 %"shl.280", %"zext.530"
  %"ptr_plus_imm.170" = add i64 %"or.255", 12
  %"inttoptr_bytes.235" = inttoptr i64 %"ptr_plus_imm.170" to ptr addrspace(1)
  %"ptr_cast_for_access.235" = bitcast ptr addrspace(1) %"inttoptr_bytes.235" to ptr addrspace(1)
  %".5183" = load float, ptr addrspace(1) %"ptr_cast_for_access.235"
  %".5184" = bitcast ptr %"R13" to ptr
  store float %".5183", ptr %".5184"
  ; IADD3 R22, R22, -0x10, RZ
  %".5187" = load i32, ptr %"R22"
  %".5188" = add i32 %".5187", -16
  %".5189" = add i32 %".5188", 0
  store i32 %".5189", ptr %"R22"
  ; ISETP.GT.AND P1, PT, R22, 0xc, PT
  %".5192" = load i32, ptr %"R22"
  %".5193" = load i1, ptr %"PT"
  %"cmp.45" = icmp sgt i32 %".5192", 12
  %".5194" = xor i1 %"cmp.45", -1
  %".5195" = and i1 %"cmp.45", %".5193"
  %".5196" = and i1 %".5194", %".5193"
  store i1 %".5195", ptr %"P1"
  ; IADD3 R23, R23, 0x10, RZ
  %".5199" = load i32, ptr %"R23"
  %".5200" = add i32 %".5199", 16
  %".5201" = add i32 %".5200", 0
  store i32 %".5201", ptr %"R23"
  ; FFMA R10, R43, R36, R10
  %".5204" = load float, ptr %"R43"
  %".5205" = load float, ptr %"R36"
  %".5206" = load float, ptr %"R10"
  %"fmul.202" = fmul float %".5204", %".5205"
  %"fadd.183" = fadd float %"fmul.202", %".5206"
  %".5207" = bitcast ptr %"R10" to ptr
  store float %"fadd.183", ptr %".5207"
  ; FFMA R45, R34, R47, R45
  %".5210" = load float, ptr %"R34"
  %".5211" = load float, ptr %"R47"
  %".5212" = load float, ptr %"R45"
  %"fmul.203" = fmul float %".5210", %".5211"
  %"fadd.184" = fadd float %"fmul.203", %".5212"
  %".5213" = bitcast ptr %"R45" to ptr
  store float %"fadd.184", ptr %".5213"
  ; FFMA R45, R36, R51, R45
  %".5216" = load float, ptr %"R36"
  %".5217" = load float, ptr %"R51"
  %".5218" = load float, ptr %"R45"
  %"fmul.204" = fmul float %".5216", %".5217"
  %"fadd.185" = fadd float %"fmul.204", %".5218"
  %".5219" = bitcast ptr %"R45" to ptr
  store float %"fadd.185", ptr %".5219"
  ; FFMA R10, R57, R38, R10
  %".5222" = load float, ptr %"R57"
  %".5223" = load float, ptr %"R38"
  %".5224" = load float, ptr %"R10"
  %"fmul.205" = fmul float %".5222", %".5223"
  %"fadd.186" = fadd float %"fmul.205", %".5224"
  %".5225" = bitcast ptr %"R10" to ptr
  store float %"fadd.186", ptr %".5225"
  ; FFMA R45, R38, R59, R45
  %".5228" = load float, ptr %"R38"
  %".5229" = load float, ptr %"R59"
  %".5230" = load float, ptr %"R45"
  %"fmul.206" = fmul float %".5228", %".5229"
  %"fadd.187" = fadd float %"fmul.206", %".5230"
  %".5231" = bitcast ptr %"R45" to ptr
  store float %"fadd.187", ptr %".5231"
  ; FFMA R10, R50, R41, R10
  %".5234" = load float, ptr %"R50"
  %".5235" = load float, ptr %"R41"
  %".5236" = load float, ptr %"R10"
  %"fmul.207" = fmul float %".5234", %".5235"
  %"fadd.188" = fadd float %"fmul.207", %".5236"
  %".5237" = bitcast ptr %"R10" to ptr
  store float %"fadd.188", ptr %".5237"
  ; FFMA R45, R41, R46, R45
  %".5240" = load float, ptr %"R41"
  %".5241" = load float, ptr %"R46"
  %".5242" = load float, ptr %"R45"
  %"fmul.208" = fmul float %".5240", %".5241"
  %"fadd.189" = fadd float %"fmul.208", %".5242"
  %".5243" = bitcast ptr %"R45" to ptr
  store float %"fadd.189", ptr %".5243"
  ; FFMA R10, R61, R40, R10
  %".5246" = load float, ptr %"R61"
  %".5247" = load float, ptr %"R40"
  %".5248" = load float, ptr %"R10"
  %"fmul.209" = fmul float %".5246", %".5247"
  %"fadd.190" = fadd float %"fmul.209", %".5248"
  %".5249" = bitcast ptr %"R10" to ptr
  store float %"fadd.190", ptr %".5249"
  ; FFMA R35, R40, R35, R45
  %".5252" = load float, ptr %"R40"
  %".5253" = load float, ptr %"R35"
  %".5254" = load float, ptr %"R45"
  %"fmul.210" = fmul float %".5252", %".5253"
  %"fadd.191" = fadd float %"fmul.210", %".5254"
  %".5255" = bitcast ptr %"R35" to ptr
  store float %"fadd.191", ptr %".5255"
  ; FFMA R6, R6, R39, R10
  %".5258" = load float, ptr %"R6"
  %".5259" = load float, ptr %"R39"
  %".5260" = load float, ptr %"R10"
  %"fmul.211" = fmul float %".5258", %".5259"
  %"fadd.192" = fadd float %"fmul.211", %".5260"
  %".5261" = bitcast ptr %"R6" to ptr
  store float %"fadd.192", ptr %".5261"
  ; FFMA R35, R39, R4, R35
  %".5264" = load float, ptr %"R39"
  %".5265" = load float, ptr %"R4"
  %".5266" = load float, ptr %"R35"
  %"fmul.212" = fmul float %".5264", %".5265"
  %"fadd.193" = fadd float %"fmul.212", %".5266"
  %".5267" = bitcast ptr %"R35" to ptr
  store float %"fadd.193", ptr %".5267"
  ; FFMA R5, R5, R44, R6
  %".5270" = load float, ptr %"R5"
  %".5271" = load float, ptr %"R44"
  %".5272" = load float, ptr %"R6"
  %"fmul.213" = fmul float %".5270", %".5271"
  %"fadd.194" = fadd float %"fmul.213", %".5272"
  %".5273" = bitcast ptr %"R5" to ptr
  store float %"fadd.194", ptr %".5273"
  ; FFMA R60, R44, R60, R35
  %".5276" = load float, ptr %"R44"
  %".5277" = load float, ptr %"R60"
  %".5278" = load float, ptr %"R35"
  %"fmul.214" = fmul float %".5276", %".5277"
  %"fadd.195" = fadd float %"fmul.214", %".5278"
  %".5279" = bitcast ptr %"R60" to ptr
  store float %"fadd.195", ptr %".5279"
  ; FFMA R5, R58, R55, R5
  %".5282" = load float, ptr %"R58"
  %".5283" = load float, ptr %"R55"
  %".5284" = load float, ptr %"R5"
  %"fmul.215" = fmul float %".5282", %".5283"
  %"fadd.196" = fadd float %"fmul.215", %".5284"
  %".5285" = bitcast ptr %"R5" to ptr
  store float %"fadd.196", ptr %".5285"
  ; FFMA R5, R54, R53, R5
  %".5288" = load float, ptr %"R54"
  %".5289" = load float, ptr %"R53"
  %".5290" = load float, ptr %"R5"
  %"fmul.216" = fmul float %".5288", %".5289"
  %"fadd.197" = fadd float %"fmul.216", %".5290"
  %".5291" = bitcast ptr %"R5" to ptr
  store float %"fadd.197", ptr %".5291"
  ; FFMA R37, R55, R37, R60
  %".5294" = load float, ptr %"R55"
  %".5295" = load float, ptr %"R37"
  %".5296" = load float, ptr %"R60"
  %"fmul.217" = fmul float %".5294", %".5295"
  %"fadd.198" = fadd float %"fmul.217", %".5296"
  %".5297" = bitcast ptr %"R37" to ptr
  store float %"fadd.198", ptr %".5297"
  ; FFMA R37, R53, R42, R37
  %".5300" = load float, ptr %"R53"
  %".5301" = load float, ptr %"R42"
  %".5302" = load float, ptr %"R37"
  %"fmul.218" = fmul float %".5300", %".5301"
  %"fadd.199" = fadd float %"fmul.218", %".5302"
  %".5303" = bitcast ptr %"R37" to ptr
  store float %"fadd.199", ptr %".5303"
  ; FFMA R5, R7, R52, R5
  %".5306" = load float, ptr %"R7"
  %".5307" = load float, ptr %"R52"
  %".5308" = load float, ptr %"R5"
  %"fmul.219" = fmul float %".5306", %".5307"
  %"fadd.200" = fadd float %"fmul.219", %".5308"
  %".5309" = bitcast ptr %"R5" to ptr
  store float %"fadd.200", ptr %".5309"
  ; FFMA R9, R52, R9, R37
  %".5312" = load float, ptr %"R52"
  %".5313" = load float, ptr %"R9"
  %".5314" = load float, ptr %"R37"
  %"fmul.220" = fmul float %".5312", %".5313"
  %"fadd.201" = fadd float %"fmul.220", %".5314"
  %".5315" = bitcast ptr %"R9" to ptr
  store float %"fadd.201", ptr %".5315"
  ; FFMA R44, R13, R56, R5
  %".5318" = load float, ptr %"R13"
  %".5319" = load float, ptr %"R56"
  %".5320" = load float, ptr %"R5"
  %"fmul.221" = fmul float %".5318", %".5319"
  %"fadd.202" = fadd float %"fmul.221", %".5320"
  %".5321" = bitcast ptr %"R44" to ptr
  store float %"fadd.202", ptr %".5321"
  ; FFMA R56, R56, R8, R9
  %".5324" = load float, ptr %"R56"
  %".5325" = load float, ptr %"R8"
  %".5326" = load float, ptr %"R9"
  %"fmul.222" = fmul float %".5324", %".5325"
  %"fadd.203" = fadd float %"fmul.222", %".5326"
  %".5327" = bitcast ptr %"R56" to ptr
  store float %"fadd.203", ptr %".5327"
  ; @P1 BRA `(.L_x_30)
  %".5330" = load i1, ptr %"P1"
  %".5331" = icmp eq i1 %".5330", 1
  br i1 %".5331", label %".L_x_30", label %".L_x_29"
.L_x_29:
  ; ISETP.GT.AND P1, PT, R22, 0x4, PT
  %".5334" = load i32, ptr %"R22"
  %".5335" = load i1, ptr %"PT"
  %"cmp.46" = icmp sgt i32 %".5334", 4
  %".5336" = xor i1 %"cmp.46", -1
  %".5337" = and i1 %"cmp.46", %".5335"
  %".5338" = and i1 %".5336", %".5335"
  store i1 %".5337", ptr %"P1"
  ; @!P1 BRA `(.L_x_31)
  %".5341" = load i1, ptr %"P1"
  %".5342" = icmp ne i1 %".5341", 1
  br i1 %".5342", label %".L_x_31", label %".L_x_29_split_0x30b0"
.L_x_29_split_0x30b0:
  ; IADD3 R5, R0, R23, RZ
  %".5345" = load i32, ptr %"R0"
  %".5346" = load i32, ptr %"R23"
  %".5347" = add i32 %".5345", %".5346"
  %".5348" = add i32 %".5347", 0
  store i32 %".5348", ptr %"R5"
  ; MOV R25, 0x4
  store i32 4, ptr %"R25"
  ; LEA R13, R2.reuse, R5, 0x2
  %".5353" = load i32, ptr %"R2"
  %".5354" = load i32, ptr %"R5"
  %"shl.281" = shl i32 %".5353", 2
  %"add.16" = add i32 %"shl.281", %".5354"
  store i32 %"add.16", ptr %"R13"
  ; IMAD R12, R2, 0x3, R5
  %".5357" = load i32, ptr %"R2"
  %".5358" = load i32, ptr %"R5"
  %"imad_mul.75" = mul i32 %".5357", 3
  %"imad_add.75" = add i32 %"imad_mul.75", %".5358"
  store i32 %"imad_add.75", ptr %"R12"
  ; IADD3 R6, R23.reuse, 0x4, RZ
  %".5361" = load i32, ptr %"R23"
  %".5362" = add i32 %".5361", 4
  %".5363" = add i32 %".5362", 0
  store i32 %".5363", ptr %"R6"
  ; IMAD.WIDE R8, R23, R25, c[0x0][0x168]
  %".5366" = load i32, ptr %"R23"
  %".5367" = load i32, ptr %"R25"
  %"imad_ext1.62" = zext i32 %".5366" to i64
  %"imad_ext2.62" = zext i32 %".5367" to i64
  %"imad_mul.76" = mul i64 %"imad_ext1.62", %"imad_ext2.62"
  %".5368" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.76" = add i64 %"imad_mul.76", %".5368"
  %".5369" = and i64 %"imad_add.76", 18446744069414584320
  %".5370" = lshr i64 %".5369", 32
  %"trunc32.144" = trunc i64 %".5370" to i32
  %"trunc32.145" = trunc i64 %"imad_add.76" to i32
  store i32 %"trunc32.145", ptr %"R8"
  store i32 %"trunc32.144", ptr %"R9"
  ; IADD3 R24, R13, 0x4, RZ
  %".5374" = load i32, ptr %"R13"
  %".5375" = add i32 %".5374", 4
  %".5376" = add i32 %".5375", 0
  store i32 %".5376", ptr %"R24"
  ; IMAD.WIDE R4, R12.reuse, R25, c[0x0][0x170]
  %".5379" = load i32, ptr %"R12"
  %".5380" = load i32, ptr %"R25"
  %"imad_ext1.63" = zext i32 %".5379" to i64
  %"imad_ext2.63" = zext i32 %".5380" to i64
  %"imad_mul.77" = mul i64 %"imad_ext1.63", %"imad_ext2.63"
  %".5381" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.77" = add i64 %"imad_mul.77", %".5381"
  %".5382" = and i64 %"imad_add.77", 18446744069414584320
  %".5383" = lshr i64 %".5382", 32
  %"trunc32.146" = trunc i64 %".5383" to i32
  %"trunc32.147" = trunc i64 %"imad_add.77" to i32
  store i32 %"trunc32.147", ptr %"R4"
  store i32 %"trunc32.146", ptr %"R5"
  ; IADD3 R12, R12, 0x4, RZ
  %".5387" = load i32, ptr %"R12"
  %".5388" = add i32 %".5387", 4
  %".5389" = add i32 %".5388", 0
  store i32 %".5389", ptr %"R12"
  ; IMAD.WIDE R10, R13, R25.reuse, c[0x0][0x170]
  %".5392" = load i32, ptr %"R13"
  %".5393" = load i32, ptr %"R25"
  %"imad_ext1.64" = zext i32 %".5392" to i64
  %"imad_ext2.64" = zext i32 %".5393" to i64
  %"imad_mul.78" = mul i64 %"imad_ext1.64", %"imad_ext2.64"
  %".5394" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.78" = add i64 %"imad_mul.78", %".5394"
  %".5395" = and i64 %"imad_add.78", 18446744069414584320
  %".5396" = lshr i64 %".5395", 32
  %"trunc32.148" = trunc i64 %".5396" to i32
  %"trunc32.149" = trunc i64 %"imad_add.78" to i32
  store i32 %"trunc32.149", ptr %"R10"
  store i32 %"trunc32.148", ptr %"R11"
  ; LDG.E.SYS R43, [R8]
  %".5400" = load i32, ptr %"R8"
  %"zext.532" = zext i32 %".5400" to i64
  %".5401" = load i32, ptr %"R9"
  %"zext.533" = zext i32 %".5401" to i64
  %"shl.282" = shl i64 %"zext.533", 32
  %"or.256" = or i64 %"shl.282", %"zext.532"
  %"inttoptr_bytes.236" = inttoptr i64 %"or.256" to ptr addrspace(1)
  %"ptr_cast_for_access.236" = bitcast ptr addrspace(1) %"inttoptr_bytes.236" to ptr addrspace(1)
  %".5402" = load float, ptr addrspace(1) %"ptr_cast_for_access.236"
  %".5403" = bitcast ptr %"R43" to ptr
  store float %".5402", ptr %".5403"
  ; IMAD.WIDE R6, R6, R25.reuse, c[0x0][0x168]
  %".5406" = load i32, ptr %"R6"
  %".5407" = load i32, ptr %"R25"
  %"imad_ext1.65" = zext i32 %".5406" to i64
  %"imad_ext2.65" = zext i32 %".5407" to i64
  %"imad_mul.79" = mul i64 %"imad_ext1.65", %"imad_ext2.65"
  %".5408" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.79" = add i64 %"imad_mul.79", %".5408"
  %".5409" = and i64 %"imad_add.79", 18446744069414584320
  %".5410" = lshr i64 %".5409", 32
  %"trunc32.150" = trunc i64 %".5410" to i32
  %"trunc32.151" = trunc i64 %"imad_add.79" to i32
  store i32 %"trunc32.151", ptr %"R6"
  store i32 %"trunc32.150", ptr %"R7"
  ; LDG.E.SYS R52, [R4]
  %".5414" = load i32, ptr %"R4"
  %"zext.534" = zext i32 %".5414" to i64
  %".5415" = load i32, ptr %"R5"
  %"zext.535" = zext i32 %".5415" to i64
  %"shl.283" = shl i64 %"zext.535", 32
  %"or.257" = or i64 %"shl.283", %"zext.534"
  %"inttoptr_bytes.237" = inttoptr i64 %"or.257" to ptr addrspace(1)
  %"ptr_cast_for_access.237" = bitcast ptr addrspace(1) %"inttoptr_bytes.237" to ptr addrspace(1)
  %".5416" = load float, ptr addrspace(1) %"ptr_cast_for_access.237"
  %".5417" = bitcast ptr %"R52" to ptr
  store float %".5416", ptr %".5417"
  ; LDG.E.SYS R38, [R10]
  %".5420" = load i32, ptr %"R10"
  %"zext.536" = zext i32 %".5420" to i64
  %".5421" = load i32, ptr %"R11"
  %"zext.537" = zext i32 %".5421" to i64
  %"shl.284" = shl i64 %"zext.537", 32
  %"or.258" = or i64 %"shl.284", %"zext.536"
  %"inttoptr_bytes.238" = inttoptr i64 %"or.258" to ptr addrspace(1)
  %"ptr_cast_for_access.238" = bitcast ptr addrspace(1) %"inttoptr_bytes.238" to ptr addrspace(1)
  %".5422" = load float, ptr addrspace(1) %"ptr_cast_for_access.238"
  %".5423" = bitcast ptr %"R38" to ptr
  store float %".5422", ptr %".5423"
  ; IMAD.WIDE R12, R12, R25, c[0x0][0x170]
  %".5426" = load i32, ptr %"R12"
  %".5427" = load i32, ptr %"R25"
  %"imad_ext1.66" = zext i32 %".5426" to i64
  %"imad_ext2.66" = zext i32 %".5427" to i64
  %"imad_mul.80" = mul i64 %"imad_ext1.66", %"imad_ext2.66"
  %".5428" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.80" = add i64 %"imad_mul.80", %".5428"
  %".5429" = and i64 %"imad_add.80", 18446744069414584320
  %".5430" = lshr i64 %".5429", 32
  %"trunc32.152" = trunc i64 %".5430" to i32
  %"trunc32.153" = trunc i64 %"imad_add.80" to i32
  store i32 %"trunc32.153", ptr %"R12"
  store i32 %"trunc32.152", ptr %"R13"
  ; LDG.E.SYS R36, [R8+0x4]
  %".5434" = load i32, ptr %"R8"
  %"zext.538" = zext i32 %".5434" to i64
  %".5435" = load i32, ptr %"R9"
  %"zext.539" = zext i32 %".5435" to i64
  %"shl.285" = shl i64 %"zext.539", 32
  %"or.259" = or i64 %"shl.285", %"zext.538"
  %"ptr_plus_imm.171" = add i64 %"or.259", 4
  %"inttoptr_bytes.239" = inttoptr i64 %"ptr_plus_imm.171" to ptr addrspace(1)
  %"ptr_cast_for_access.239" = bitcast ptr addrspace(1) %"inttoptr_bytes.239" to ptr addrspace(1)
  %".5436" = load float, ptr addrspace(1) %"ptr_cast_for_access.239"
  %".5437" = bitcast ptr %"R36" to ptr
  store float %".5436", ptr %".5437"
  ; LDG.E.SYS R41, [R4+0x4]
  %".5440" = load i32, ptr %"R4"
  %"zext.540" = zext i32 %".5440" to i64
  %".5441" = load i32, ptr %"R5"
  %"zext.541" = zext i32 %".5441" to i64
  %"shl.286" = shl i64 %"zext.541", 32
  %"or.260" = or i64 %"shl.286", %"zext.540"
  %"ptr_plus_imm.172" = add i64 %"or.260", 4
  %"inttoptr_bytes.240" = inttoptr i64 %"ptr_plus_imm.172" to ptr addrspace(1)
  %"ptr_cast_for_access.240" = bitcast ptr addrspace(1) %"inttoptr_bytes.240" to ptr addrspace(1)
  %".5442" = load float, ptr addrspace(1) %"ptr_cast_for_access.240"
  %".5443" = bitcast ptr %"R41" to ptr
  store float %".5442", ptr %".5443"
  ; LDG.E.SYS R39, [R10+0x4]
  %".5446" = load i32, ptr %"R10"
  %"zext.542" = zext i32 %".5446" to i64
  %".5447" = load i32, ptr %"R11"
  %"zext.543" = zext i32 %".5447" to i64
  %"shl.287" = shl i64 %"zext.543", 32
  %"or.261" = or i64 %"shl.287", %"zext.542"
  %"ptr_plus_imm.173" = add i64 %"or.261", 4
  %"inttoptr_bytes.241" = inttoptr i64 %"ptr_plus_imm.173" to ptr addrspace(1)
  %"ptr_cast_for_access.241" = bitcast ptr addrspace(1) %"inttoptr_bytes.241" to ptr addrspace(1)
  %".5448" = load float, ptr addrspace(1) %"ptr_cast_for_access.241"
  %".5449" = bitcast ptr %"R39" to ptr
  store float %".5448", ptr %".5449"
  ; IMAD.WIDE R24, R24, R25, c[0x0][0x170]
  %".5452" = load i32, ptr %"R24"
  %".5453" = load i32, ptr %"R25"
  %"imad_ext1.67" = zext i32 %".5452" to i64
  %"imad_ext2.67" = zext i32 %".5453" to i64
  %"imad_mul.81" = mul i64 %"imad_ext1.67", %"imad_ext2.67"
  %".5454" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.81" = add i64 %"imad_mul.81", %".5454"
  %".5455" = and i64 %"imad_add.81", 18446744069414584320
  %".5456" = lshr i64 %".5455", 32
  %"trunc32.154" = trunc i64 %".5456" to i32
  %"trunc32.155" = trunc i64 %"imad_add.81" to i32
  store i32 %"trunc32.155", ptr %"R24"
  store i32 %"trunc32.154", ptr %"R25"
  ; LDG.E.SYS R34, [R8+0x8]
  %".5460" = load i32, ptr %"R8"
  %"zext.544" = zext i32 %".5460" to i64
  %".5461" = load i32, ptr %"R9"
  %"zext.545" = zext i32 %".5461" to i64
  %"shl.288" = shl i64 %"zext.545", 32
  %"or.262" = or i64 %"shl.288", %"zext.544"
  %"ptr_plus_imm.174" = add i64 %"or.262", 8
  %"inttoptr_bytes.242" = inttoptr i64 %"ptr_plus_imm.174" to ptr addrspace(1)
  %"ptr_cast_for_access.242" = bitcast ptr addrspace(1) %"inttoptr_bytes.242" to ptr addrspace(1)
  %".5462" = load float, ptr addrspace(1) %"ptr_cast_for_access.242"
  %".5463" = bitcast ptr %"R34" to ptr
  store float %".5462", ptr %".5463"
  ; LDG.E.SYS R37, [R4+0x8]
  %".5466" = load i32, ptr %"R4"
  %"zext.546" = zext i32 %".5466" to i64
  %".5467" = load i32, ptr %"R5"
  %"zext.547" = zext i32 %".5467" to i64
  %"shl.289" = shl i64 %"zext.547", 32
  %"or.263" = or i64 %"shl.289", %"zext.546"
  %"ptr_plus_imm.175" = add i64 %"or.263", 8
  %"inttoptr_bytes.243" = inttoptr i64 %"ptr_plus_imm.175" to ptr addrspace(1)
  %"ptr_cast_for_access.243" = bitcast ptr addrspace(1) %"inttoptr_bytes.243" to ptr addrspace(1)
  %".5468" = load float, ptr addrspace(1) %"ptr_cast_for_access.243"
  %".5469" = bitcast ptr %"R37" to ptr
  store float %".5468", ptr %".5469"
  ; LDG.E.SYS R35, [R10+0x8]
  %".5472" = load i32, ptr %"R10"
  %"zext.548" = zext i32 %".5472" to i64
  %".5473" = load i32, ptr %"R11"
  %"zext.549" = zext i32 %".5473" to i64
  %"shl.290" = shl i64 %"zext.549", 32
  %"or.264" = or i64 %"shl.290", %"zext.548"
  %"ptr_plus_imm.176" = add i64 %"or.264", 8
  %"inttoptr_bytes.244" = inttoptr i64 %"ptr_plus_imm.176" to ptr addrspace(1)
  %"ptr_cast_for_access.244" = bitcast ptr addrspace(1) %"inttoptr_bytes.244" to ptr addrspace(1)
  %".5474" = load float, ptr addrspace(1) %"ptr_cast_for_access.244"
  %".5475" = bitcast ptr %"R35" to ptr
  store float %".5474", ptr %".5475"
  ; LDG.E.SYS R40, [R8+0xc]
  %".5478" = load i32, ptr %"R8"
  %"zext.550" = zext i32 %".5478" to i64
  %".5479" = load i32, ptr %"R9"
  %"zext.551" = zext i32 %".5479" to i64
  %"shl.291" = shl i64 %"zext.551", 32
  %"or.265" = or i64 %"shl.291", %"zext.550"
  %"ptr_plus_imm.177" = add i64 %"or.265", 12
  %"inttoptr_bytes.245" = inttoptr i64 %"ptr_plus_imm.177" to ptr addrspace(1)
  %"ptr_cast_for_access.245" = bitcast ptr addrspace(1) %"inttoptr_bytes.245" to ptr addrspace(1)
  %".5480" = load float, ptr addrspace(1) %"ptr_cast_for_access.245"
  %".5481" = bitcast ptr %"R40" to ptr
  store float %".5480", ptr %".5481"
  ; LDG.E.SYS R45, [R4+0xc]
  %".5484" = load i32, ptr %"R4"
  %"zext.552" = zext i32 %".5484" to i64
  %".5485" = load i32, ptr %"R5"
  %"zext.553" = zext i32 %".5485" to i64
  %"shl.292" = shl i64 %"zext.553", 32
  %"or.266" = or i64 %"shl.292", %"zext.552"
  %"ptr_plus_imm.178" = add i64 %"or.266", 12
  %"inttoptr_bytes.246" = inttoptr i64 %"ptr_plus_imm.178" to ptr addrspace(1)
  %"ptr_cast_for_access.246" = bitcast ptr addrspace(1) %"inttoptr_bytes.246" to ptr addrspace(1)
  %".5486" = load float, ptr addrspace(1) %"ptr_cast_for_access.246"
  %".5487" = bitcast ptr %"R45" to ptr
  store float %".5486", ptr %".5487"
  ; LDG.E.SYS R59, [R10+0xc]
  %".5490" = load i32, ptr %"R10"
  %"zext.554" = zext i32 %".5490" to i64
  %".5491" = load i32, ptr %"R11"
  %"zext.555" = zext i32 %".5491" to i64
  %"shl.293" = shl i64 %"zext.555", 32
  %"or.267" = or i64 %"shl.293", %"zext.554"
  %"ptr_plus_imm.179" = add i64 %"or.267", 12
  %"inttoptr_bytes.247" = inttoptr i64 %"ptr_plus_imm.179" to ptr addrspace(1)
  %"ptr_cast_for_access.247" = bitcast ptr addrspace(1) %"inttoptr_bytes.247" to ptr addrspace(1)
  %".5492" = load float, ptr addrspace(1) %"ptr_cast_for_access.247"
  %".5493" = bitcast ptr %"R59" to ptr
  store float %".5492", ptr %".5493"
  ; LDG.E.SYS R50, [R6]
  %".5496" = load i32, ptr %"R6"
  %"zext.556" = zext i32 %".5496" to i64
  %".5497" = load i32, ptr %"R7"
  %"zext.557" = zext i32 %".5497" to i64
  %"shl.294" = shl i64 %"zext.557", 32
  %"or.268" = or i64 %"shl.294", %"zext.556"
  %"inttoptr_bytes.248" = inttoptr i64 %"or.268" to ptr addrspace(1)
  %"ptr_cast_for_access.248" = bitcast ptr addrspace(1) %"inttoptr_bytes.248" to ptr addrspace(1)
  %".5498" = load float, ptr addrspace(1) %"ptr_cast_for_access.248"
  %".5499" = bitcast ptr %"R50" to ptr
  store float %".5498", ptr %".5499"
  ; LDG.E.SYS R57, [R12]
  %".5502" = load i32, ptr %"R12"
  %"zext.558" = zext i32 %".5502" to i64
  %".5503" = load i32, ptr %"R13"
  %"zext.559" = zext i32 %".5503" to i64
  %"shl.295" = shl i64 %"zext.559", 32
  %"or.269" = or i64 %"shl.295", %"zext.558"
  %"inttoptr_bytes.249" = inttoptr i64 %"or.269" to ptr addrspace(1)
  %"ptr_cast_for_access.249" = bitcast ptr addrspace(1) %"inttoptr_bytes.249" to ptr addrspace(1)
  %".5504" = load float, ptr addrspace(1) %"ptr_cast_for_access.249"
  %".5505" = bitcast ptr %"R57" to ptr
  store float %".5504", ptr %".5505"
  ; LDG.E.SYS R55, [R24]
  %".5508" = load i32, ptr %"R24"
  %"zext.560" = zext i32 %".5508" to i64
  %".5509" = load i32, ptr %"R25"
  %"zext.561" = zext i32 %".5509" to i64
  %"shl.296" = shl i64 %"zext.561", 32
  %"or.270" = or i64 %"shl.296", %"zext.560"
  %"inttoptr_bytes.250" = inttoptr i64 %"or.270" to ptr addrspace(1)
  %"ptr_cast_for_access.250" = bitcast ptr addrspace(1) %"inttoptr_bytes.250" to ptr addrspace(1)
  %".5510" = load float, ptr addrspace(1) %"ptr_cast_for_access.250"
  %".5511" = bitcast ptr %"R55" to ptr
  store float %".5510", ptr %".5511"
  ; LDG.E.SYS R46, [R6+0x4]
  %".5514" = load i32, ptr %"R6"
  %"zext.562" = zext i32 %".5514" to i64
  %".5515" = load i32, ptr %"R7"
  %"zext.563" = zext i32 %".5515" to i64
  %"shl.297" = shl i64 %"zext.563", 32
  %"or.271" = or i64 %"shl.297", %"zext.562"
  %"ptr_plus_imm.180" = add i64 %"or.271", 4
  %"inttoptr_bytes.251" = inttoptr i64 %"ptr_plus_imm.180" to ptr addrspace(1)
  %"ptr_cast_for_access.251" = bitcast ptr addrspace(1) %"inttoptr_bytes.251" to ptr addrspace(1)
  %".5516" = load float, ptr addrspace(1) %"ptr_cast_for_access.251"
  %".5517" = bitcast ptr %"R46" to ptr
  store float %".5516", ptr %".5517"
  ; LDG.E.SYS R53, [R12+0x4]
  %".5520" = load i32, ptr %"R12"
  %"zext.564" = zext i32 %".5520" to i64
  %".5521" = load i32, ptr %"R13"
  %"zext.565" = zext i32 %".5521" to i64
  %"shl.298" = shl i64 %"zext.565", 32
  %"or.272" = or i64 %"shl.298", %"zext.564"
  %"ptr_plus_imm.181" = add i64 %"or.272", 4
  %"inttoptr_bytes.252" = inttoptr i64 %"ptr_plus_imm.181" to ptr addrspace(1)
  %"ptr_cast_for_access.252" = bitcast ptr addrspace(1) %"inttoptr_bytes.252" to ptr addrspace(1)
  %".5522" = load float, ptr addrspace(1) %"ptr_cast_for_access.252"
  %".5523" = bitcast ptr %"R53" to ptr
  store float %".5522", ptr %".5523"
  ; LDG.E.SYS R51, [R24+0x4]
  %".5526" = load i32, ptr %"R24"
  %"zext.566" = zext i32 %".5526" to i64
  %".5527" = load i32, ptr %"R25"
  %"zext.567" = zext i32 %".5527" to i64
  %"shl.299" = shl i64 %"zext.567", 32
  %"or.273" = or i64 %"shl.299", %"zext.566"
  %"ptr_plus_imm.182" = add i64 %"or.273", 4
  %"inttoptr_bytes.253" = inttoptr i64 %"ptr_plus_imm.182" to ptr addrspace(1)
  %"ptr_cast_for_access.253" = bitcast ptr addrspace(1) %"inttoptr_bytes.253" to ptr addrspace(1)
  %".5528" = load float, ptr addrspace(1) %"ptr_cast_for_access.253"
  %".5529" = bitcast ptr %"R51" to ptr
  store float %".5528", ptr %".5529"
  ; LDG.E.SYS R42, [R6+0x8]
  %".5532" = load i32, ptr %"R6"
  %"zext.568" = zext i32 %".5532" to i64
  %".5533" = load i32, ptr %"R7"
  %"zext.569" = zext i32 %".5533" to i64
  %"shl.300" = shl i64 %"zext.569", 32
  %"or.274" = or i64 %"shl.300", %"zext.568"
  %"ptr_plus_imm.183" = add i64 %"or.274", 8
  %"inttoptr_bytes.254" = inttoptr i64 %"ptr_plus_imm.183" to ptr addrspace(1)
  %"ptr_cast_for_access.254" = bitcast ptr addrspace(1) %"inttoptr_bytes.254" to ptr addrspace(1)
  %".5534" = load float, ptr addrspace(1) %"ptr_cast_for_access.254"
  %".5535" = bitcast ptr %"R42" to ptr
  store float %".5534", ptr %".5535"
  ; LDG.E.SYS R47, [R12+0x8]
  %".5538" = load i32, ptr %"R12"
  %"zext.570" = zext i32 %".5538" to i64
  %".5539" = load i32, ptr %"R13"
  %"zext.571" = zext i32 %".5539" to i64
  %"shl.301" = shl i64 %"zext.571", 32
  %"or.275" = or i64 %"shl.301", %"zext.570"
  %"ptr_plus_imm.184" = add i64 %"or.275", 8
  %"inttoptr_bytes.255" = inttoptr i64 %"ptr_plus_imm.184" to ptr addrspace(1)
  %"ptr_cast_for_access.255" = bitcast ptr addrspace(1) %"inttoptr_bytes.255" to ptr addrspace(1)
  %".5540" = load float, ptr addrspace(1) %"ptr_cast_for_access.255"
  %".5541" = bitcast ptr %"R47" to ptr
  store float %".5540", ptr %".5541"
  ; LDG.E.SYS R9, [R24+0x8]
  %".5544" = load i32, ptr %"R24"
  %"zext.572" = zext i32 %".5544" to i64
  %".5545" = load i32, ptr %"R25"
  %"zext.573" = zext i32 %".5545" to i64
  %"shl.302" = shl i64 %"zext.573", 32
  %"or.276" = or i64 %"shl.302", %"zext.572"
  %"ptr_plus_imm.185" = add i64 %"or.276", 8
  %"inttoptr_bytes.256" = inttoptr i64 %"ptr_plus_imm.185" to ptr addrspace(1)
  %"ptr_cast_for_access.256" = bitcast ptr addrspace(1) %"inttoptr_bytes.256" to ptr addrspace(1)
  %".5546" = load float, ptr addrspace(1) %"ptr_cast_for_access.256"
  %".5547" = bitcast ptr %"R9" to ptr
  store float %".5546", ptr %".5547"
  ; LDG.E.SYS R4, [R6+0xc]
  %".5550" = load i32, ptr %"R6"
  %"zext.574" = zext i32 %".5550" to i64
  %".5551" = load i32, ptr %"R7"
  %"zext.575" = zext i32 %".5551" to i64
  %"shl.303" = shl i64 %"zext.575", 32
  %"or.277" = or i64 %"shl.303", %"zext.574"
  %"ptr_plus_imm.186" = add i64 %"or.277", 12
  %"inttoptr_bytes.257" = inttoptr i64 %"ptr_plus_imm.186" to ptr addrspace(1)
  %"ptr_cast_for_access.257" = bitcast ptr addrspace(1) %"inttoptr_bytes.257" to ptr addrspace(1)
  %".5552" = load float, ptr addrspace(1) %"ptr_cast_for_access.257"
  %".5553" = bitcast ptr %"R4" to ptr
  store float %".5552", ptr %".5553"
  ; LDG.E.SYS R5, [R12+0xc]
  %".5556" = load i32, ptr %"R12"
  %"zext.576" = zext i32 %".5556" to i64
  %".5557" = load i32, ptr %"R13"
  %"zext.577" = zext i32 %".5557" to i64
  %"shl.304" = shl i64 %"zext.577", 32
  %"or.278" = or i64 %"shl.304", %"zext.576"
  %"ptr_plus_imm.187" = add i64 %"or.278", 12
  %"inttoptr_bytes.258" = inttoptr i64 %"ptr_plus_imm.187" to ptr addrspace(1)
  %"ptr_cast_for_access.258" = bitcast ptr addrspace(1) %"inttoptr_bytes.258" to ptr addrspace(1)
  %".5558" = load float, ptr addrspace(1) %"ptr_cast_for_access.258"
  %".5559" = bitcast ptr %"R5" to ptr
  store float %".5558", ptr %".5559"
  ; LDG.E.SYS R11, [R24+0xc]
  %".5562" = load i32, ptr %"R24"
  %"zext.578" = zext i32 %".5562" to i64
  %".5563" = load i32, ptr %"R25"
  %"zext.579" = zext i32 %".5563" to i64
  %"shl.305" = shl i64 %"zext.579", 32
  %"or.279" = or i64 %"shl.305", %"zext.578"
  %"ptr_plus_imm.188" = add i64 %"or.279", 12
  %"inttoptr_bytes.259" = inttoptr i64 %"ptr_plus_imm.188" to ptr addrspace(1)
  %"ptr_cast_for_access.259" = bitcast ptr addrspace(1) %"inttoptr_bytes.259" to ptr addrspace(1)
  %".5564" = load float, ptr addrspace(1) %"ptr_cast_for_access.259"
  %".5565" = bitcast ptr %"R11" to ptr
  store float %".5564", ptr %".5565"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".5568" = xor i1 1, 1
  %".5569" = and i1 %".5568", 1
  %".5570" = and i1 %".5569", 1
  ; IADD3 R22, R22, -0x8, RZ
  %".5572" = load i32, ptr %"R22"
  %".5573" = add i32 %".5572", -8
  %".5574" = add i32 %".5573", 0
  store i32 %".5574", ptr %"R22"
  ; IADD3 R23, R23, 0x8, RZ
  %".5577" = load i32, ptr %"R23"
  %".5578" = add i32 %".5577", 8
  %".5579" = add i32 %".5578", 0
  store i32 %".5579", ptr %"R23"
  ; FFMA R52, R52, R43, R44
  %".5582" = load float, ptr %"R52"
  %".5583" = load float, ptr %"R43"
  %".5584" = load float, ptr %"R44"
  %"fmul.223" = fmul float %".5582", %".5583"
  %"fadd.204" = fadd float %"fmul.223", %".5584"
  %".5585" = bitcast ptr %"R52" to ptr
  store float %"fadd.204", ptr %".5585"
  ; FFMA R38, R43, R38, R56
  %".5588" = load float, ptr %"R43"
  %".5589" = load float, ptr %"R38"
  %".5590" = load float, ptr %"R56"
  %"fmul.224" = fmul float %".5588", %".5589"
  %"fadd.205" = fadd float %"fmul.224", %".5590"
  %".5591" = bitcast ptr %"R38" to ptr
  store float %"fadd.205", ptr %".5591"
  ; FFMA R41, R41, R36, R52
  %".5594" = load float, ptr %"R41"
  %".5595" = load float, ptr %"R36"
  %".5596" = load float, ptr %"R52"
  %"fmul.225" = fmul float %".5594", %".5595"
  %"fadd.206" = fadd float %"fmul.225", %".5596"
  %".5597" = bitcast ptr %"R41" to ptr
  store float %"fadd.206", ptr %".5597"
  ; FFMA R38, R36, R39, R38
  %".5600" = load float, ptr %"R36"
  %".5601" = load float, ptr %"R39"
  %".5602" = load float, ptr %"R38"
  %"fmul.226" = fmul float %".5600", %".5601"
  %"fadd.207" = fadd float %"fmul.226", %".5602"
  %".5603" = bitcast ptr %"R38" to ptr
  store float %"fadd.207", ptr %".5603"
  ; FFMA R37, R37, R34, R41
  %".5606" = load float, ptr %"R37"
  %".5607" = load float, ptr %"R34"
  %".5608" = load float, ptr %"R41"
  %"fmul.227" = fmul float %".5606", %".5607"
  %"fadd.208" = fadd float %"fmul.227", %".5608"
  %".5609" = bitcast ptr %"R37" to ptr
  store float %"fadd.208", ptr %".5609"
  ; FFMA R35, R34, R35, R38
  %".5612" = load float, ptr %"R34"
  %".5613" = load float, ptr %"R35"
  %".5614" = load float, ptr %"R38"
  %"fmul.228" = fmul float %".5612", %".5613"
  %"fadd.209" = fadd float %"fmul.228", %".5614"
  %".5615" = bitcast ptr %"R35" to ptr
  store float %"fadd.209", ptr %".5615"
  ; FFMA R37, R45, R40, R37
  %".5618" = load float, ptr %"R45"
  %".5619" = load float, ptr %"R40"
  %".5620" = load float, ptr %"R37"
  %"fmul.229" = fmul float %".5618", %".5619"
  %"fadd.210" = fadd float %"fmul.229", %".5620"
  %".5621" = bitcast ptr %"R37" to ptr
  store float %"fadd.210", ptr %".5621"
  ; FFMA R35, R40, R59, R35
  %".5624" = load float, ptr %"R40"
  %".5625" = load float, ptr %"R59"
  %".5626" = load float, ptr %"R35"
  %"fmul.230" = fmul float %".5624", %".5625"
  %"fadd.211" = fadd float %"fmul.230", %".5626"
  %".5627" = bitcast ptr %"R35" to ptr
  store float %"fadd.211", ptr %".5627"
  ; FFMA R37, R57, R50, R37
  %".5630" = load float, ptr %"R57"
  %".5631" = load float, ptr %"R50"
  %".5632" = load float, ptr %"R37"
  %"fmul.231" = fmul float %".5630", %".5631"
  %"fadd.212" = fadd float %"fmul.231", %".5632"
  %".5633" = bitcast ptr %"R37" to ptr
  store float %"fadd.212", ptr %".5633"
  ; FFMA R35, R50, R55, R35
  %".5636" = load float, ptr %"R50"
  %".5637" = load float, ptr %"R55"
  %".5638" = load float, ptr %"R35"
  %"fmul.232" = fmul float %".5636", %".5637"
  %"fadd.213" = fadd float %"fmul.232", %".5638"
  %".5639" = bitcast ptr %"R35" to ptr
  store float %"fadd.213", ptr %".5639"
  ; FFMA R37, R53, R46, R37
  %".5642" = load float, ptr %"R53"
  %".5643" = load float, ptr %"R46"
  %".5644" = load float, ptr %"R37"
  %"fmul.233" = fmul float %".5642", %".5643"
  %"fadd.214" = fadd float %"fmul.233", %".5644"
  %".5645" = bitcast ptr %"R37" to ptr
  store float %"fadd.214", ptr %".5645"
  ; FFMA R35, R46, R51, R35
  %".5648" = load float, ptr %"R46"
  %".5649" = load float, ptr %"R51"
  %".5650" = load float, ptr %"R35"
  %"fmul.234" = fmul float %".5648", %".5649"
  %"fadd.215" = fadd float %"fmul.234", %".5650"
  %".5651" = bitcast ptr %"R35" to ptr
  store float %"fadd.215", ptr %".5651"
  ; FFMA R37, R47, R42, R37
  %".5654" = load float, ptr %"R47"
  %".5655" = load float, ptr %"R42"
  %".5656" = load float, ptr %"R37"
  %"fmul.235" = fmul float %".5654", %".5655"
  %"fadd.216" = fadd float %"fmul.235", %".5656"
  %".5657" = bitcast ptr %"R37" to ptr
  store float %"fadd.216", ptr %".5657"
  ; FFMA R9, R42, R9, R35
  %".5660" = load float, ptr %"R42"
  %".5661" = load float, ptr %"R9"
  %".5662" = load float, ptr %"R35"
  %"fmul.236" = fmul float %".5660", %".5661"
  %"fadd.217" = fadd float %"fmul.236", %".5662"
  %".5663" = bitcast ptr %"R9" to ptr
  store float %"fadd.217", ptr %".5663"
  ; FFMA R44, R5, R4, R37
  %".5666" = load float, ptr %"R5"
  %".5667" = load float, ptr %"R4"
  %".5668" = load float, ptr %"R37"
  %"fmul.237" = fmul float %".5666", %".5667"
  %"fadd.218" = fadd float %"fmul.237", %".5668"
  %".5669" = bitcast ptr %"R44" to ptr
  store float %"fadd.218", ptr %".5669"
  ; FFMA R56, R4, R11, R9
  %".5672" = load float, ptr %"R4"
  %".5673" = load float, ptr %"R11"
  %".5674" = load float, ptr %"R9"
  %"fmul.238" = fmul float %".5672", %".5673"
  %"fadd.219" = fadd float %"fmul.238", %".5674"
  %".5675" = bitcast ptr %"R56" to ptr
  store float %"fadd.219", ptr %".5675"
  br label %".L_x_31"
.L_x_31:
  ; ISETP.NE.OR P0, PT, R22, RZ, P0
  %".5679" = load i32, ptr %"R22"
  %".5680" = load i1, ptr %"P0"
  %"cmp.47" = icmp ne i32 %".5679", 0
  %".5681" = xor i1 %"cmp.47", -1
  %".5682" = or i1 %"cmp.47", %".5680"
  %".5683" = or i1 %".5681", %".5680"
  store i1 %".5682", ptr %"P0"
  ; @!P0 BRA `(.L_x_27)
  %".5686" = load i1, ptr %"P0"
  %".5687" = icmp ne i1 %".5686", 1
  br i1 %".5687", label %".L_x_27", label %".L_x_28"
.L_x_28:
  ; IADD3 R5, R0, R23, RZ
  %".5690" = load i32, ptr %"R0"
  %".5691" = load i32, ptr %"R23"
  %".5692" = add i32 %".5690", %".5691"
  %".5693" = add i32 %".5692", 0
  store i32 %".5693", ptr %"R5"
  ; MOV R6, 0x4
  store i32 4, ptr %"R6"
  ; LEA R11, R2.reuse, R5, 0x2
  %".5698" = load i32, ptr %"R2"
  %".5699" = load i32, ptr %"R5"
  %"shl.306" = shl i32 %".5698", 2
  %"add.17" = add i32 %"shl.306", %".5699"
  store i32 %"add.17", ptr %"R11"
  ; IMAD R7, R2, 0x3, R5
  %".5702" = load i32, ptr %"R2"
  %".5703" = load i32, ptr %"R5"
  %"imad_mul.82" = mul i32 %".5702", 3
  %"imad_add.82" = add i32 %"imad_mul.82", %".5703"
  store i32 %"imad_add.82", ptr %"R7"
  ; IMAD.WIDE R8, R23, R6, c[0x0][0x168]
  %".5706" = load i32, ptr %"R23"
  %".5707" = load i32, ptr %"R6"
  %"imad_ext1.68" = zext i32 %".5706" to i64
  %"imad_ext2.68" = zext i32 %".5707" to i64
  %"imad_mul.83" = mul i64 %"imad_ext1.68", %"imad_ext2.68"
  %".5708" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.83" = add i64 %"imad_mul.83", %".5708"
  %".5709" = and i64 %"imad_add.83", 18446744069414584320
  %".5710" = lshr i64 %".5709", 32
  %"trunc32.156" = trunc i64 %".5710" to i32
  %"trunc32.157" = trunc i64 %"imad_add.83" to i32
  store i32 %"trunc32.157", ptr %"R8"
  store i32 %"trunc32.156", ptr %"R9"
  ; IMAD.WIDE R4, R7, R6, c[0x0][0x170]
  %".5714" = load i32, ptr %"R7"
  %".5715" = load i32, ptr %"R6"
  %"imad_ext1.69" = zext i32 %".5714" to i64
  %"imad_ext2.69" = zext i32 %".5715" to i64
  %"imad_mul.84" = mul i64 %"imad_ext1.69", %"imad_ext2.69"
  %".5716" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.84" = add i64 %"imad_mul.84", %".5716"
  %".5717" = and i64 %"imad_add.84", 18446744069414584320
  %".5718" = lshr i64 %".5717", 32
  %"trunc32.158" = trunc i64 %".5718" to i32
  %"trunc32.159" = trunc i64 %"imad_add.84" to i32
  store i32 %"trunc32.159", ptr %"R4"
  store i32 %"trunc32.158", ptr %"R5"
  ; IMAD.WIDE R6, R11, R6, c[0x0][0x170]
  %".5722" = load i32, ptr %"R11"
  %".5723" = load i32, ptr %"R6"
  %"imad_ext1.70" = zext i32 %".5722" to i64
  %"imad_ext2.70" = zext i32 %".5723" to i64
  %"imad_mul.85" = mul i64 %"imad_ext1.70", %"imad_ext2.70"
  %".5724" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.85" = add i64 %"imad_mul.85", %".5724"
  %".5725" = and i64 %"imad_add.85", 18446744069414584320
  %".5726" = lshr i64 %".5725", 32
  %"trunc32.160" = trunc i64 %".5726" to i32
  %"trunc32.161" = trunc i64 %"imad_add.85" to i32
  store i32 %"trunc32.161", ptr %"R6"
  store i32 %"trunc32.160", ptr %"R7"
  ; LDG.E.SYS R13, [R8]
  %".5730" = load i32, ptr %"R8"
  %"zext.580" = zext i32 %".5730" to i64
  %".5731" = load i32, ptr %"R9"
  %"zext.581" = zext i32 %".5731" to i64
  %"shl.307" = shl i64 %"zext.581", 32
  %"or.280" = or i64 %"shl.307", %"zext.580"
  %"inttoptr_bytes.260" = inttoptr i64 %"or.280" to ptr addrspace(1)
  %"ptr_cast_for_access.260" = bitcast ptr addrspace(1) %"inttoptr_bytes.260" to ptr addrspace(1)
  %".5732" = load float, ptr addrspace(1) %"ptr_cast_for_access.260"
  %".5733" = bitcast ptr %"R13" to ptr
  store float %".5732", ptr %".5733"
  ; LDG.E.SYS R11, [R4]
  %".5736" = load i32, ptr %"R4"
  %"zext.582" = zext i32 %".5736" to i64
  %".5737" = load i32, ptr %"R5"
  %"zext.583" = zext i32 %".5737" to i64
  %"shl.308" = shl i64 %"zext.583", 32
  %"or.281" = or i64 %"shl.308", %"zext.582"
  %"inttoptr_bytes.261" = inttoptr i64 %"or.281" to ptr addrspace(1)
  %"ptr_cast_for_access.261" = bitcast ptr addrspace(1) %"inttoptr_bytes.261" to ptr addrspace(1)
  %".5738" = load float, ptr addrspace(1) %"ptr_cast_for_access.261"
  %".5739" = bitcast ptr %"R11" to ptr
  store float %".5738", ptr %".5739"
  ; LDG.E.SYS R10, [R6]
  %".5742" = load i32, ptr %"R6"
  %"zext.584" = zext i32 %".5742" to i64
  %".5743" = load i32, ptr %"R7"
  %"zext.585" = zext i32 %".5743" to i64
  %"shl.309" = shl i64 %"zext.585", 32
  %"or.282" = or i64 %"shl.309", %"zext.584"
  %"inttoptr_bytes.262" = inttoptr i64 %"or.282" to ptr addrspace(1)
  %"ptr_cast_for_access.262" = bitcast ptr addrspace(1) %"inttoptr_bytes.262" to ptr addrspace(1)
  %".5744" = load float, ptr addrspace(1) %"ptr_cast_for_access.262"
  %".5745" = bitcast ptr %"R10" to ptr
  store float %".5744", ptr %".5745"
  ; LDG.E.SYS R25, [R8+0x4]
  %".5748" = load i32, ptr %"R8"
  %"zext.586" = zext i32 %".5748" to i64
  %".5749" = load i32, ptr %"R9"
  %"zext.587" = zext i32 %".5749" to i64
  %"shl.310" = shl i64 %"zext.587", 32
  %"or.283" = or i64 %"shl.310", %"zext.586"
  %"ptr_plus_imm.189" = add i64 %"or.283", 4
  %"inttoptr_bytes.263" = inttoptr i64 %"ptr_plus_imm.189" to ptr addrspace(1)
  %"ptr_cast_for_access.263" = bitcast ptr addrspace(1) %"inttoptr_bytes.263" to ptr addrspace(1)
  %".5750" = load float, ptr addrspace(1) %"ptr_cast_for_access.263"
  %".5751" = bitcast ptr %"R25" to ptr
  store float %".5750", ptr %".5751"
  ; LDG.E.SYS R12, [R4+0x4]
  %".5754" = load i32, ptr %"R4"
  %"zext.588" = zext i32 %".5754" to i64
  %".5755" = load i32, ptr %"R5"
  %"zext.589" = zext i32 %".5755" to i64
  %"shl.311" = shl i64 %"zext.589", 32
  %"or.284" = or i64 %"shl.311", %"zext.588"
  %"ptr_plus_imm.190" = add i64 %"or.284", 4
  %"inttoptr_bytes.264" = inttoptr i64 %"ptr_plus_imm.190" to ptr addrspace(1)
  %"ptr_cast_for_access.264" = bitcast ptr addrspace(1) %"inttoptr_bytes.264" to ptr addrspace(1)
  %".5756" = load float, ptr addrspace(1) %"ptr_cast_for_access.264"
  %".5757" = bitcast ptr %"R12" to ptr
  store float %".5756", ptr %".5757"
  ; LDG.E.SYS R24, [R6+0x4]
  %".5760" = load i32, ptr %"R6"
  %"zext.590" = zext i32 %".5760" to i64
  %".5761" = load i32, ptr %"R7"
  %"zext.591" = zext i32 %".5761" to i64
  %"shl.312" = shl i64 %"zext.591", 32
  %"or.285" = or i64 %"shl.312", %"zext.590"
  %"ptr_plus_imm.191" = add i64 %"or.285", 4
  %"inttoptr_bytes.265" = inttoptr i64 %"ptr_plus_imm.191" to ptr addrspace(1)
  %"ptr_cast_for_access.265" = bitcast ptr addrspace(1) %"inttoptr_bytes.265" to ptr addrspace(1)
  %".5762" = load float, ptr addrspace(1) %"ptr_cast_for_access.265"
  %".5763" = bitcast ptr %"R24" to ptr
  store float %".5762", ptr %".5763"
  ; LDG.E.SYS R35, [R8+0x8]
  %".5766" = load i32, ptr %"R8"
  %"zext.592" = zext i32 %".5766" to i64
  %".5767" = load i32, ptr %"R9"
  %"zext.593" = zext i32 %".5767" to i64
  %"shl.313" = shl i64 %"zext.593", 32
  %"or.286" = or i64 %"shl.313", %"zext.592"
  %"ptr_plus_imm.192" = add i64 %"or.286", 8
  %"inttoptr_bytes.266" = inttoptr i64 %"ptr_plus_imm.192" to ptr addrspace(1)
  %"ptr_cast_for_access.266" = bitcast ptr addrspace(1) %"inttoptr_bytes.266" to ptr addrspace(1)
  %".5768" = load float, ptr addrspace(1) %"ptr_cast_for_access.266"
  %".5769" = bitcast ptr %"R35" to ptr
  store float %".5768", ptr %".5769"
  ; LDG.E.SYS R34, [R4+0x8]
  %".5772" = load i32, ptr %"R4"
  %"zext.594" = zext i32 %".5772" to i64
  %".5773" = load i32, ptr %"R5"
  %"zext.595" = zext i32 %".5773" to i64
  %"shl.314" = shl i64 %"zext.595", 32
  %"or.287" = or i64 %"shl.314", %"zext.594"
  %"ptr_plus_imm.193" = add i64 %"or.287", 8
  %"inttoptr_bytes.267" = inttoptr i64 %"ptr_plus_imm.193" to ptr addrspace(1)
  %"ptr_cast_for_access.267" = bitcast ptr addrspace(1) %"inttoptr_bytes.267" to ptr addrspace(1)
  %".5774" = load float, ptr addrspace(1) %"ptr_cast_for_access.267"
  %".5775" = bitcast ptr %"R34" to ptr
  store float %".5774", ptr %".5775"
  ; LDG.E.SYS R36, [R6+0x8]
  %".5778" = load i32, ptr %"R6"
  %"zext.596" = zext i32 %".5778" to i64
  %".5779" = load i32, ptr %"R7"
  %"zext.597" = zext i32 %".5779" to i64
  %"shl.315" = shl i64 %"zext.597", 32
  %"or.288" = or i64 %"shl.315", %"zext.596"
  %"ptr_plus_imm.194" = add i64 %"or.288", 8
  %"inttoptr_bytes.268" = inttoptr i64 %"ptr_plus_imm.194" to ptr addrspace(1)
  %"ptr_cast_for_access.268" = bitcast ptr addrspace(1) %"inttoptr_bytes.268" to ptr addrspace(1)
  %".5780" = load float, ptr addrspace(1) %"ptr_cast_for_access.268"
  %".5781" = bitcast ptr %"R36" to ptr
  store float %".5780", ptr %".5781"
  ; LDG.E.SYS R37, [R8+0xc]
  %".5784" = load i32, ptr %"R8"
  %"zext.598" = zext i32 %".5784" to i64
  %".5785" = load i32, ptr %"R9"
  %"zext.599" = zext i32 %".5785" to i64
  %"shl.316" = shl i64 %"zext.599", 32
  %"or.289" = or i64 %"shl.316", %"zext.598"
  %"ptr_plus_imm.195" = add i64 %"or.289", 12
  %"inttoptr_bytes.269" = inttoptr i64 %"ptr_plus_imm.195" to ptr addrspace(1)
  %"ptr_cast_for_access.269" = bitcast ptr addrspace(1) %"inttoptr_bytes.269" to ptr addrspace(1)
  %".5786" = load float, ptr addrspace(1) %"ptr_cast_for_access.269"
  %".5787" = bitcast ptr %"R37" to ptr
  store float %".5786", ptr %".5787"
  ; LDG.E.SYS R38, [R4+0xc]
  %".5790" = load i32, ptr %"R4"
  %"zext.600" = zext i32 %".5790" to i64
  %".5791" = load i32, ptr %"R5"
  %"zext.601" = zext i32 %".5791" to i64
  %"shl.317" = shl i64 %"zext.601", 32
  %"or.290" = or i64 %"shl.317", %"zext.600"
  %"ptr_plus_imm.196" = add i64 %"or.290", 12
  %"inttoptr_bytes.270" = inttoptr i64 %"ptr_plus_imm.196" to ptr addrspace(1)
  %"ptr_cast_for_access.270" = bitcast ptr addrspace(1) %"inttoptr_bytes.270" to ptr addrspace(1)
  %".5792" = load float, ptr addrspace(1) %"ptr_cast_for_access.270"
  %".5793" = bitcast ptr %"R38" to ptr
  store float %".5792", ptr %".5793"
  ; LDG.E.SYS R39, [R6+0xc]
  %".5796" = load i32, ptr %"R6"
  %"zext.602" = zext i32 %".5796" to i64
  %".5797" = load i32, ptr %"R7"
  %"zext.603" = zext i32 %".5797" to i64
  %"shl.318" = shl i64 %"zext.603", 32
  %"or.291" = or i64 %"shl.318", %"zext.602"
  %"ptr_plus_imm.197" = add i64 %"or.291", 12
  %"inttoptr_bytes.271" = inttoptr i64 %"ptr_plus_imm.197" to ptr addrspace(1)
  %"ptr_cast_for_access.271" = bitcast ptr addrspace(1) %"inttoptr_bytes.271" to ptr addrspace(1)
  %".5798" = load float, ptr addrspace(1) %"ptr_cast_for_access.271"
  %".5799" = bitcast ptr %"R39" to ptr
  store float %".5798", ptr %".5799"
  ; IADD3 R22, R22, -0x4, RZ
  %".5802" = load i32, ptr %"R22"
  %".5803" = add i32 %".5802", -4
  %".5804" = add i32 %".5803", 0
  store i32 %".5804", ptr %"R22"
  ; IADD3 R23, R23, 0x4, RZ
  %".5807" = load i32, ptr %"R23"
  %".5808" = add i32 %".5807", 4
  %".5809" = add i32 %".5808", 0
  store i32 %".5809", ptr %"R23"
  ; ISETP.NE.AND P0, PT, R22, RZ, PT
  %".5812" = load i32, ptr %"R22"
  %".5813" = load i1, ptr %"PT"
  %"cmp.48" = icmp ne i32 %".5812", 0
  %".5814" = xor i1 %"cmp.48", -1
  %".5815" = and i1 %"cmp.48", %".5813"
  %".5816" = and i1 %".5814", %".5813"
  store i1 %".5815", ptr %"P0"
  ; FFMA R11, R11, R13, R44
  %".5819" = load float, ptr %"R11"
  %".5820" = load float, ptr %"R13"
  %".5821" = load float, ptr %"R44"
  %"fmul.239" = fmul float %".5819", %".5820"
  %"fadd.220" = fadd float %"fmul.239", %".5821"
  %".5822" = bitcast ptr %"R11" to ptr
  store float %"fadd.220", ptr %".5822"
  ; FFMA R10, R13, R10, R56
  %".5825" = load float, ptr %"R13"
  %".5826" = load float, ptr %"R10"
  %".5827" = load float, ptr %"R56"
  %"fmul.240" = fmul float %".5825", %".5826"
  %"fadd.221" = fadd float %"fmul.240", %".5827"
  %".5828" = bitcast ptr %"R10" to ptr
  store float %"fadd.221", ptr %".5828"
  ; FFMA R11, R12, R25, R11
  %".5831" = load float, ptr %"R12"
  %".5832" = load float, ptr %"R25"
  %".5833" = load float, ptr %"R11"
  %"fmul.241" = fmul float %".5831", %".5832"
  %"fadd.222" = fadd float %"fmul.241", %".5833"
  %".5834" = bitcast ptr %"R11" to ptr
  store float %"fadd.222", ptr %".5834"
  ; FFMA R10, R25, R24, R10
  %".5837" = load float, ptr %"R25"
  %".5838" = load float, ptr %"R24"
  %".5839" = load float, ptr %"R10"
  %"fmul.242" = fmul float %".5837", %".5838"
  %"fadd.223" = fadd float %"fmul.242", %".5839"
  %".5840" = bitcast ptr %"R10" to ptr
  store float %"fadd.223", ptr %".5840"
  ; FFMA R11, R34, R35, R11
  %".5843" = load float, ptr %"R34"
  %".5844" = load float, ptr %"R35"
  %".5845" = load float, ptr %"R11"
  %"fmul.243" = fmul float %".5843", %".5844"
  %"fadd.224" = fadd float %"fmul.243", %".5845"
  %".5846" = bitcast ptr %"R11" to ptr
  store float %"fadd.224", ptr %".5846"
  ; FFMA R10, R35, R36, R10
  %".5849" = load float, ptr %"R35"
  %".5850" = load float, ptr %"R36"
  %".5851" = load float, ptr %"R10"
  %"fmul.244" = fmul float %".5849", %".5850"
  %"fadd.225" = fadd float %"fmul.244", %".5851"
  %".5852" = bitcast ptr %"R10" to ptr
  store float %"fadd.225", ptr %".5852"
  ; FFMA R44, R38, R37, R11
  %".5855" = load float, ptr %"R38"
  %".5856" = load float, ptr %"R37"
  %".5857" = load float, ptr %"R11"
  %"fmul.245" = fmul float %".5855", %".5856"
  %"fadd.226" = fadd float %"fmul.245", %".5857"
  %".5858" = bitcast ptr %"R44" to ptr
  store float %"fadd.226", ptr %".5858"
  ; FFMA R56, R37, R39, R10
  %".5861" = load float, ptr %"R37"
  %".5862" = load float, ptr %"R39"
  %".5863" = load float, ptr %"R10"
  %"fmul.246" = fmul float %".5861", %".5862"
  %"fadd.227" = fadd float %"fmul.246", %".5863"
  %".5864" = bitcast ptr %"R56" to ptr
  store float %"fadd.227", ptr %".5864"
  ; @P0 BRA `(.L_x_28)
  %".5867" = load i1, ptr %"P0"
  %".5868" = icmp eq i1 %".5867", 1
  br i1 %".5868", label %".L_x_28", label %".L_x_27"
.L_x_27:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".5871" = load i32, ptr %"R48"
  %".5872" = load i1, ptr %"PT"
  %"cmp.49" = icmp ne i32 %".5871", 0
  %".5873" = xor i1 %"cmp.49", -1
  %".5874" = and i1 %"cmp.49", %".5872"
  %".5875" = and i1 %".5873", %".5872"
  store i1 %".5874", ptr %"P0"
  ; @!P0 BRA `(.L_x_26)
  %".5878" = load i1, ptr %"P0"
  %".5879" = icmp ne i1 %".5878", 1
  br i1 %".5879", label %".L_x_26", label %".L_x_27_split_0x3660"
.L_x_27_split_0x3660:
  ; IADD3 R5, R0, R23, RZ
  %".5882" = load i32, ptr %"R0"
  %".5883" = load i32, ptr %"R23"
  %".5884" = add i32 %".5882", %".5883"
  %".5885" = add i32 %".5884", 0
  store i32 %".5885", ptr %"R5"
  ; MOV R9, 0x4
  store i32 4, ptr %"R9"
  ; LEA R8, R2.reuse, R5, 0x2
  %".5890" = load i32, ptr %"R2"
  %".5891" = load i32, ptr %"R5"
  %"shl.319" = shl i32 %".5890", 2
  %"add.18" = add i32 %"shl.319", %".5891"
  store i32 %"add.18", ptr %"R8"
  ; IMAD R6, R2, 0x3, R5
  %".5894" = load i32, ptr %"R2"
  %".5895" = load i32, ptr %"R5"
  %"imad_mul.86" = mul i32 %".5894", 3
  %"imad_add.86" = add i32 %"imad_mul.86", %".5895"
  store i32 %"imad_add.86", ptr %"R6"
  ; IMAD.WIDE R4, R23, R9, c[0x0][0x168]
  %".5898" = load i32, ptr %"R23"
  %".5899" = load i32, ptr %"R9"
  %"imad_ext1.71" = zext i32 %".5898" to i64
  %"imad_ext2.71" = zext i32 %".5899" to i64
  %"imad_mul.87" = mul i64 %"imad_ext1.71", %"imad_ext2.71"
  %".5900" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.87" = add i64 %"imad_mul.87", %".5900"
  %".5901" = and i64 %"imad_add.87", 18446744069414584320
  %".5902" = lshr i64 %".5901", 32
  %"trunc32.162" = trunc i64 %".5902" to i32
  %"trunc32.163" = trunc i64 %"imad_add.87" to i32
  store i32 %"trunc32.163", ptr %"R4"
  store i32 %"trunc32.162", ptr %"R5"
  ; IMAD.WIDE R6, R6, R9, c[0x0][0x170]
  %".5906" = load i32, ptr %"R6"
  %".5907" = load i32, ptr %"R9"
  %"imad_ext1.72" = zext i32 %".5906" to i64
  %"imad_ext2.72" = zext i32 %".5907" to i64
  %"imad_mul.88" = mul i64 %"imad_ext1.72", %"imad_ext2.72"
  %".5908" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.88" = add i64 %"imad_mul.88", %".5908"
  %".5909" = and i64 %"imad_add.88", 18446744069414584320
  %".5910" = lshr i64 %".5909", 32
  %"trunc32.164" = trunc i64 %".5910" to i32
  %"trunc32.165" = trunc i64 %"imad_add.88" to i32
  store i32 %"trunc32.165", ptr %"R6"
  store i32 %"trunc32.164", ptr %"R7"
  ; IMAD.WIDE R8, R8, R9, c[0x0][0x170]
  %".5914" = load i32, ptr %"R8"
  %".5915" = load i32, ptr %"R9"
  %"imad_ext1.73" = zext i32 %".5914" to i64
  %"imad_ext2.73" = zext i32 %".5915" to i64
  %"imad_mul.89" = mul i64 %"imad_ext1.73", %"imad_ext2.73"
  %".5916" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.89" = add i64 %"imad_mul.89", %".5916"
  %".5917" = and i64 %"imad_add.89", 18446744069414584320
  %".5918" = lshr i64 %".5917", 32
  %"trunc32.166" = trunc i64 %".5918" to i32
  %"trunc32.167" = trunc i64 %"imad_add.89" to i32
  store i32 %"trunc32.167", ptr %"R8"
  store i32 %"trunc32.166", ptr %"R9"
  ; LDG.E.SYS R13, [R4]
  %".5922" = load i32, ptr %"R4"
  %"zext.604" = zext i32 %".5922" to i64
  %".5923" = load i32, ptr %"R5"
  %"zext.605" = zext i32 %".5923" to i64
  %"shl.320" = shl i64 %"zext.605", 32
  %"or.292" = or i64 %"shl.320", %"zext.604"
  %"inttoptr_bytes.272" = inttoptr i64 %"or.292" to ptr addrspace(1)
  %"ptr_cast_for_access.272" = bitcast ptr addrspace(1) %"inttoptr_bytes.272" to ptr addrspace(1)
  %".5924" = load float, ptr addrspace(1) %"ptr_cast_for_access.272"
  %".5925" = bitcast ptr %"R13" to ptr
  store float %".5924", ptr %".5925"
  ; LDG.E.SYS R11, [R6]
  %".5928" = load i32, ptr %"R6"
  %"zext.606" = zext i32 %".5928" to i64
  %".5929" = load i32, ptr %"R7"
  %"zext.607" = zext i32 %".5929" to i64
  %"shl.321" = shl i64 %"zext.607", 32
  %"or.293" = or i64 %"shl.321", %"zext.606"
  %"inttoptr_bytes.273" = inttoptr i64 %"or.293" to ptr addrspace(1)
  %"ptr_cast_for_access.273" = bitcast ptr addrspace(1) %"inttoptr_bytes.273" to ptr addrspace(1)
  %".5930" = load float, ptr addrspace(1) %"ptr_cast_for_access.273"
  %".5931" = bitcast ptr %"R11" to ptr
  store float %".5930", ptr %".5931"
  ; LDG.E.SYS R10, [R8]
  %".5934" = load i32, ptr %"R8"
  %"zext.608" = zext i32 %".5934" to i64
  %".5935" = load i32, ptr %"R9"
  %"zext.609" = zext i32 %".5935" to i64
  %"shl.322" = shl i64 %"zext.609", 32
  %"or.294" = or i64 %"shl.322", %"zext.608"
  %"inttoptr_bytes.274" = inttoptr i64 %"or.294" to ptr addrspace(1)
  %"ptr_cast_for_access.274" = bitcast ptr addrspace(1) %"inttoptr_bytes.274" to ptr addrspace(1)
  %".5936" = load float, ptr addrspace(1) %"ptr_cast_for_access.274"
  %".5937" = bitcast ptr %"R10" to ptr
  store float %".5936", ptr %".5937"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".5940" = load i32, ptr %"R48"
  %".5941" = load i1, ptr %"PT"
  %"cmp.50" = icmp ne i32 %".5940", 1
  %".5942" = xor i1 %"cmp.50", -1
  %".5943" = and i1 %"cmp.50", %".5941"
  %".5944" = and i1 %".5942", %".5941"
  store i1 %".5943", ptr %"P0"
  ; FFMA R44, R11, R13, R44
  %".5947" = load float, ptr %"R11"
  %".5948" = load float, ptr %"R13"
  %".5949" = load float, ptr %"R44"
  %"fmul.247" = fmul float %".5947", %".5948"
  %"fadd.228" = fadd float %"fmul.247", %".5949"
  %".5950" = bitcast ptr %"R44" to ptr
  store float %"fadd.228", ptr %".5950"
  ; FFMA R56, R13, R10, R56
  %".5953" = load float, ptr %"R13"
  %".5954" = load float, ptr %"R10"
  %".5955" = load float, ptr %"R56"
  %"fmul.248" = fmul float %".5953", %".5954"
  %"fadd.229" = fadd float %"fmul.248", %".5955"
  %".5956" = bitcast ptr %"R56" to ptr
  store float %"fadd.229", ptr %".5956"
  ; @!P0 BRA `(.L_x_26)
  %".5959" = load i1, ptr %"P0"
  %".5960" = icmp ne i1 %".5959", 1
  br i1 %".5960", label %".L_x_26", label %".L_x_27_split_0x3740"
.L_x_27_split_0x3740:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".5963" = load i32, ptr %"R48"
  %".5964" = load i1, ptr %"PT"
  %"cmp.51" = icmp ne i32 %".5963", 2
  %".5965" = xor i1 %"cmp.51", -1
  %".5966" = and i1 %"cmp.51", %".5964"
  %".5967" = and i1 %".5965", %".5964"
  store i1 %".5966", ptr %"P0"
  ; LDG.E.SYS R11, [R6+0x4]
  %".5970" = load i32, ptr %"R6"
  %"zext.610" = zext i32 %".5970" to i64
  %".5971" = load i32, ptr %"R7"
  %"zext.611" = zext i32 %".5971" to i64
  %"shl.323" = shl i64 %"zext.611", 32
  %"or.295" = or i64 %"shl.323", %"zext.610"
  %"ptr_plus_imm.198" = add i64 %"or.295", 4
  %"inttoptr_bytes.275" = inttoptr i64 %"ptr_plus_imm.198" to ptr addrspace(1)
  %"ptr_cast_for_access.275" = bitcast ptr addrspace(1) %"inttoptr_bytes.275" to ptr addrspace(1)
  %".5972" = load float, ptr addrspace(1) %"ptr_cast_for_access.275"
  %".5973" = bitcast ptr %"R11" to ptr
  store float %".5972", ptr %".5973"
  ; LDG.E.SYS R13, [R4+0x4]
  %".5976" = load i32, ptr %"R4"
  %"zext.612" = zext i32 %".5976" to i64
  %".5977" = load i32, ptr %"R5"
  %"zext.613" = zext i32 %".5977" to i64
  %"shl.324" = shl i64 %"zext.613", 32
  %"or.296" = or i64 %"shl.324", %"zext.612"
  %"ptr_plus_imm.199" = add i64 %"or.296", 4
  %"inttoptr_bytes.276" = inttoptr i64 %"ptr_plus_imm.199" to ptr addrspace(1)
  %"ptr_cast_for_access.276" = bitcast ptr addrspace(1) %"inttoptr_bytes.276" to ptr addrspace(1)
  %".5978" = load float, ptr addrspace(1) %"ptr_cast_for_access.276"
  %".5979" = bitcast ptr %"R13" to ptr
  store float %".5978", ptr %".5979"
  ; LDG.E.SYS R10, [R8+0x4]
  %".5982" = load i32, ptr %"R8"
  %"zext.614" = zext i32 %".5982" to i64
  %".5983" = load i32, ptr %"R9"
  %"zext.615" = zext i32 %".5983" to i64
  %"shl.325" = shl i64 %"zext.615", 32
  %"or.297" = or i64 %"shl.325", %"zext.614"
  %"ptr_plus_imm.200" = add i64 %"or.297", 4
  %"inttoptr_bytes.277" = inttoptr i64 %"ptr_plus_imm.200" to ptr addrspace(1)
  %"ptr_cast_for_access.277" = bitcast ptr addrspace(1) %"inttoptr_bytes.277" to ptr addrspace(1)
  %".5984" = load float, ptr addrspace(1) %"ptr_cast_for_access.277"
  %".5985" = bitcast ptr %"R10" to ptr
  store float %".5984", ptr %".5985"
  ; @P0 LDG.E.SYS R23, [R6+0x8]
  %".5988" = load i1, ptr %"P0"
  %".5989" = icmp eq i1 %".5988", 1
  br i1 %".5989", label %".L_x_27_split_0x3740_conditionalExpr_0x3780", label %".L_x_27_split_0x3790"
.L_x_27_split_0x3740_conditionalExpr_0x3780:
  ; LDG.E.SYS R23, [R6+0x8]
  %".5992" = load i32, ptr %"R6"
  %"zext.616" = zext i32 %".5992" to i64
  %".5993" = load i32, ptr %"R7"
  %"zext.617" = zext i32 %".5993" to i64
  %"shl.326" = shl i64 %"zext.617", 32
  %"or.298" = or i64 %"shl.326", %"zext.616"
  %"ptr_plus_imm.201" = add i64 %"or.298", 8
  %"inttoptr_bytes.278" = inttoptr i64 %"ptr_plus_imm.201" to ptr addrspace(1)
  %"ptr_cast_for_access.278" = bitcast ptr addrspace(1) %"inttoptr_bytes.278" to ptr addrspace(1)
  %".5994" = load float, ptr addrspace(1) %"ptr_cast_for_access.278"
  %".5995" = bitcast ptr %"R23" to ptr
  store float %".5994", ptr %".5995"
  ; BRA `(.L_x_27_split_0x3790)
  br label %".L_x_27_split_0x3790"
.L_x_27_split_0x3790:
  ; @P0 LDG.E.SYS R25, [R4+0x8]
  %".6000" = load i1, ptr %"P0"
  %".6001" = icmp eq i1 %".6000", 1
  br i1 %".6001", label %".L_x_27_split_0x3790_conditionalExpr_0x3790", label %".L_x_27_split_0x37a0"
.L_x_27_split_0x3790_conditionalExpr_0x3790:
  ; LDG.E.SYS R25, [R4+0x8]
  %".6004" = load i32, ptr %"R4"
  %"zext.618" = zext i32 %".6004" to i64
  %".6005" = load i32, ptr %"R5"
  %"zext.619" = zext i32 %".6005" to i64
  %"shl.327" = shl i64 %"zext.619", 32
  %"or.299" = or i64 %"shl.327", %"zext.618"
  %"ptr_plus_imm.202" = add i64 %"or.299", 8
  %"inttoptr_bytes.279" = inttoptr i64 %"ptr_plus_imm.202" to ptr addrspace(1)
  %"ptr_cast_for_access.279" = bitcast ptr addrspace(1) %"inttoptr_bytes.279" to ptr addrspace(1)
  %".6006" = load float, ptr addrspace(1) %"ptr_cast_for_access.279"
  %".6007" = bitcast ptr %"R25" to ptr
  store float %".6006", ptr %".6007"
  ; BRA `(.L_x_27_split_0x37a0)
  br label %".L_x_27_split_0x37a0"
.L_x_27_split_0x37a0:
  ; @P0 LDG.E.SYS R12, [R8+0x8]
  %".6012" = load i1, ptr %"P0"
  %".6013" = icmp eq i1 %".6012", 1
  br i1 %".6013", label %".L_x_27_split_0x37a0_conditionalExpr_0x37a0", label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37a0_conditionalExpr_0x37a0:
  ; LDG.E.SYS R12, [R8+0x8]
  %".6016" = load i32, ptr %"R8"
  %"zext.620" = zext i32 %".6016" to i64
  %".6017" = load i32, ptr %"R9"
  %"zext.621" = zext i32 %".6017" to i64
  %"shl.328" = shl i64 %"zext.621", 32
  %"or.300" = or i64 %"shl.328", %"zext.620"
  %"ptr_plus_imm.203" = add i64 %"or.300", 8
  %"inttoptr_bytes.280" = inttoptr i64 %"ptr_plus_imm.203" to ptr addrspace(1)
  %"ptr_cast_for_access.280" = bitcast ptr addrspace(1) %"inttoptr_bytes.280" to ptr addrspace(1)
  %".6018" = load float, ptr addrspace(1) %"ptr_cast_for_access.280"
  %".6019" = bitcast ptr %"R12" to ptr
  store float %".6018", ptr %".6019"
  ; BRA `(.L_x_27_split_0x37b0)
  br label %".L_x_27_split_0x37b0"
.L_x_27_split_0x37b0:
  ; FFMA R44, R11, R13, R44
  %".6024" = load float, ptr %"R11"
  %".6025" = load float, ptr %"R13"
  %".6026" = load float, ptr %"R44"
  %"fmul.249" = fmul float %".6024", %".6025"
  %"fadd.230" = fadd float %"fmul.249", %".6026"
  %".6027" = bitcast ptr %"R44" to ptr
  store float %"fadd.230", ptr %".6027"
  ; FFMA R56, R13, R10, R56
  %".6030" = load float, ptr %"R13"
  %".6031" = load float, ptr %"R10"
  %".6032" = load float, ptr %"R56"
  %"fmul.250" = fmul float %".6030", %".6031"
  %"fadd.231" = fadd float %"fmul.250", %".6032"
  %".6033" = bitcast ptr %"R56" to ptr
  store float %"fadd.231", ptr %".6033"
  ; @P0 FFMA R44, R23, R25, R44
  %".6036" = load i1, ptr %"P0"
  %".6037" = icmp eq i1 %".6036", 1
  br i1 %".6037", label %".L_x_27_split_0x37b0_conditionalExpr_0x37d0", label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37b0_conditionalExpr_0x37d0:
  ; FFMA R44, R23, R25, R44
  %".6040" = load float, ptr %"R23"
  %".6041" = load float, ptr %"R25"
  %".6042" = load float, ptr %"R44"
  %"fmul.251" = fmul float %".6040", %".6041"
  %"fadd.232" = fadd float %"fmul.251", %".6042"
  %".6043" = bitcast ptr %"R44" to ptr
  store float %"fadd.232", ptr %".6043"
  ; BRA `(.L_x_27_split_0x37e0)
  br label %".L_x_27_split_0x37e0"
.L_x_27_split_0x37e0:
  ; @P0 FFMA R56, R25, R12, R56
  %".6048" = load i1, ptr %"P0"
  %".6049" = icmp eq i1 %".6048", 1
  br i1 %".6049", label %".L_x_27_split_0x37e0_conditionalExpr_0x37e0", label %".L_x_26"
.L_x_27_split_0x37e0_conditionalExpr_0x37e0:
  ; FFMA R56, R25, R12, R56
  %".6052" = load float, ptr %"R25"
  %".6053" = load float, ptr %"R12"
  %".6054" = load float, ptr %"R56"
  %"fmul.252" = fmul float %".6052", %".6053"
  %"fadd.233" = fadd float %"fmul.252", %".6054"
  %".6055" = bitcast ptr %"R56" to ptr
  store float %"fadd.233", ptr %".6055"
  ; BRA `(.L_x_26)
  br label %".L_x_26"
.L_x_26:
  ; LDG.E.SYS R5, [R26]
  %".6060" = load i32, ptr %"R26"
  %"zext.622" = zext i32 %".6060" to i64
  %".6061" = load i32, ptr %"R27"
  %"zext.623" = zext i32 %".6061" to i64
  %"shl.329" = shl i64 %"zext.623", 32
  %"or.301" = or i64 %"shl.329", %"zext.622"
  %"inttoptr_bytes.281" = inttoptr i64 %"or.301" to ptr addrspace(1)
  %"ptr_cast_for_access.281" = bitcast ptr addrspace(1) %"inttoptr_bytes.281" to ptr addrspace(1)
  %".6062" = load float, ptr addrspace(1) %"ptr_cast_for_access.281"
  %".6063" = bitcast ptr %"R5" to ptr
  store float %".6062", ptr %".6063"
  ; MOV R4, 0x3bbb989d
  %".6066" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6066"
  ; BMOV.32.CLEAR RZ, B0
  ; MOV R7, 0x437c0000
  %".6070" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6070"
  ; BSSY B0, `(.L_x_32)
  ; FADD R5, R5, R44
  %".6074" = load float, ptr %"R5"
  %".6075" = load float, ptr %"R44"
  %"fadd.234" = fadd float %".6074", %".6075"
  %".6076" = bitcast ptr %"R5" to ptr
  store float %"fadd.234", ptr %".6076"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6079" = load float, ptr %"R5"
  %".6080" = fneg float %".6079"
  %".6081" = load float, ptr %"R4"
  %"fmul.253" = fmul float %".6080", %".6081"
  %"fadd.235" = fadd float %"fmul.253", 0x3fe0000000000000
  %".6082" = bitcast ptr %"R4" to ptr
  store float %"fadd.235", ptr %".6082"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6085" = load float, ptr %"R4"
  %".6086" = load float, ptr %"R7"
  %"fmul.254" = fmul float %".6085", %".6086"
  %"fadd.236" = fadd float %"fmul.254", 0x4168000020000000
  %".6087" = bitcast ptr %"R4" to ptr
  store float %"fadd.236", ptr %".6087"
  ; FADD R6, R4.reuse, -12583039
  %".6090" = load float, ptr %"R4"
  %"fadd.237" = fadd float %".6090", 0xc168000fe0000000
  %".6091" = bitcast ptr %"R6" to ptr
  store float %"fadd.237", ptr %".6091"
  ; SHF.L.U32 R4, R4, 0x17, RZ
  %".6094" = icmp ult i32 23, 32
  %"SHF_min.20" = select  i1 %".6094", i32 23, i32 32
  %".6095" = load i32, ptr %"R4"
  %"zext.624" = zext i32 0 to i64
  %"zext.625" = zext i32 %".6095" to i64
  %"zext.626" = zext i32 23 to i64
  %"shl.330" = shl i64 %"zext.624", 32
  %"or.302" = or i64 %"shl.330", %"zext.625"
  %"shl.331" = shl i64 %"or.302", %"zext.626"
  %"and.12" = and i64 %"shl.331", 4294967295
  %"trunc32.168" = trunc i64 %"and.12" to i32
  store i32 %"trunc32.168", ptr %"R4"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6098" = load float, ptr %"R5"
  %".6099" = fneg float %".6098"
  %".6100" = load float, ptr %"R6"
  %".6101" = fneg float %".6100"
  %"fmul.255" = fmul float %".6099", 0x3ff7154760000000
  %"fadd.238" = fadd float %"fmul.255", %".6101"
  %".6102" = bitcast ptr %"R6" to ptr
  store float %"fadd.238", ptr %".6102"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6105" = load float, ptr %"R5"
  %".6106" = fneg float %".6105"
  %".6107" = load float, ptr %"R6"
  %"fmul.256" = fmul float %".6106", 0x3e54ae0c00000000
  %"fadd.239" = fadd float %"fmul.256", %".6107"
  %".6108" = bitcast ptr %"R6" to ptr
  store float %"fadd.239", ptr %".6108"
  ; MUFU.EX2 R5, R6
  %".6111" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.3" = call float @"llvm.exp2.f32"(float %".6111")
  %".6112" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.3", ptr %".6112"
  ; FFMA R24, R4, R5, 1
  %".6115" = load float, ptr %"R4"
  %".6116" = load float, ptr %"R5"
  %"fmul.257" = fmul float %".6115", %".6116"
  %"fadd.240" = fadd float %"fmul.257", 0x3ff0000000000000
  %".6117" = bitcast ptr %"R24" to ptr
  store float %"fadd.240", ptr %".6117"
  ; IADD3 R4, R24, 0x1800000, RZ
  %".6120" = load i32, ptr %"R24"
  %".6121" = add i32 %".6120", 25165824
  %".6122" = add i32 %".6121", 0
  store i32 %".6122", ptr %"R4"
  ; LOP3.LUT R4, R4, 0x7f800000, RZ, 0xc0, !PT
  %".6125" = load i32, ptr %"R4"
  %".6126" = xor i1 1, -1
  %".6127" = and i32 %".6125", 2139095040
  store i32 %".6127", ptr %"R4"
  ; ISETP.GT.U32.AND P0, PT, R4, 0x1ffffff, PT
  %".6130" = load i32, ptr %"R4"
  %".6131" = load i1, ptr %"PT"
  %"cmp.52" = icmp sgt i32 %".6130", 33554431
  %".6132" = xor i1 %"cmp.52", -1
  %".6133" = and i1 %"cmp.52", %".6131"
  %".6134" = and i1 %".6132", %".6131"
  store i1 %".6133", ptr %"P0"
  ; @P0 BRA `(.L_x_33)
  %".6137" = load i1, ptr %"P0"
  %".6138" = icmp eq i1 %".6137", 1
  br i1 %".6138", label %".L_x_33", label %".L_x_26_split_0x3910_CALL_0x3930"
.L_x_26_split_0x3910_CALL_0x3930:
  ; MOV R10, 0x3930
  store i32 14640, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6145" = icmp ult i32 1, 32
  %"SHF_min.21" = select  i1 %".6145", i32 1, i32 32
  %".6146" = load i32, ptr %"R24"
  %"zext.627" = zext i32 0 to i64
  %"zext.628" = zext i32 %".6146" to i64
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
  %".6151" = icmp ult i32 24, 32
  %"SHF_min.22" = select  i1 %".6151", i32 24, i32 32
  %".6152" = load i32, ptr %"R11"
  %"zext.630" = zext i32 %".6152" to i64
  %"zext.631" = zext i32 0 to i64
  %"zext.632" = zext i32 24 to i64
  %"shl.334" = shl i64 %"zext.630", 32
  %"or.304" = or i64 %"shl.334", %"zext.631"
  %"lshr.13" = lshr i64 %"or.304", %"zext.632"
  %"lshr.14" = lshr i64 %"lshr.13", 32
  %"trunc32.170" = trunc i64 %"lshr.14" to i32
  store i32 %"trunc32.170", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".6155" = load i32, ptr %"R25"
  %".6156" = load i1, ptr %"PT"
  %"cmp.53" = icmp ne i32 %".6155", 0
  %".6157" = xor i1 %"cmp.53", -1
  %".6158" = and i1 %"cmp.53", %".6156"
  %".6159" = and i1 %".6157", %".6156"
  store i1 %".6158", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".6162" = load i1, ptr %"P0"
  %".6163" = icmp eq i1 %".6162", 1
  br i1 %".6163", label %".L_x_49...3", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".6166" = icmp ult i32 1, 32
  %"SHF_min.23" = select  i1 %".6166", i32 1, i32 32
  %".6167" = load i32, ptr %"R24"
  %"zext.633" = zext i32 0 to i64
  %"zext.634" = zext i32 %".6167" to i64
  %"zext.635" = zext i32 1 to i64
  %"shl.335" = shl i64 %"zext.633", 32
  %"or.305" = or i64 %"shl.335", %"zext.634"
  %"shl.336" = shl i64 %"or.305", %"zext.635"
  %"and.14" = and i64 %"shl.336", 4294967295
  %"trunc32.171" = trunc i64 %"and.14" to i32
  store i32 %"trunc32.171", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".6170" = load i32, ptr %"R11"
  %".6171" = load i1, ptr %"PT"
  %"cmp.54" = icmp ne i32 %".6170", 0
  %".6172" = xor i1 %"cmp.54", -1
  %".6173" = and i1 %"cmp.54", %".6171"
  %".6174" = and i1 %".6172", %".6171"
  store i1 %".6173", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6177" = load i1, ptr %"P0"
  %".6178" = icmp eq i1 %".6177", 1
  br i1 %".6178", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...3_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6181" = load float, ptr %"R24"
  %"fmul.258" = fmul float %".6181", 0x43f0000000000000
  %"fadd.241" = fadd float %"fmul.258",              0x0
  %".6182" = bitcast ptr %"R12" to ptr
  store float %"fadd.241", ptr %".6182"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...3:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".6187" = load float, ptr %"R24"
  %"fmul.259" = fmul float %".6187", 0x43f0000000000000
  %"fadd.242" = fadd float %"fmul.259",              0x0
  %".6188" = bitcast ptr %"R12" to ptr
  store float %"fadd.242", ptr %".6188"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3:
  ; @!P0 MUFU.RCP R11, R24
  %".6193" = load i1, ptr %"P0"
  %".6194" = icmp ne i1 %".6193", 1
  br i1 %".6194", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...3_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".6197" = load float, ptr %"R24"
  %".6198" = fdiv float 0x3ff0000000000000, %".6197"
  %".6199" = bitcast ptr %"R11" to ptr
  store float %".6198", ptr %".6199"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...3:
  ; MUFU.RCP R11, R24
  %".6204" = load float, ptr %"R24"
  %".6205" = fdiv float 0x3ff0000000000000, %".6204"
  %".6206" = bitcast ptr %"R11" to ptr
  store float %".6205", ptr %".6206"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3:
  ; @P0 MUFU.RCP R13, R12
  %".6211" = load i1, ptr %"P0"
  %".6212" = icmp eq i1 %".6211", 1
  br i1 %".6212", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...3_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".6215" = load float, ptr %"R12"
  %".6216" = fdiv float 0x3ff0000000000000, %".6215"
  %".6217" = bitcast ptr %"R13" to ptr
  store float %".6216", ptr %".6217"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...3:
  ; MUFU.RCP R13, R12
  %".6222" = load float, ptr %"R12"
  %".6223" = fdiv float 0x3ff0000000000000, %".6222"
  %".6224" = bitcast ptr %"R13" to ptr
  store float %".6223", ptr %".6224"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3:
  ; @P0 FFMA R22, R12, R13, -1
  %".6229" = load i1, ptr %"P0"
  %".6230" = icmp eq i1 %".6229", 1
  br i1 %".6230", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...3_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".6233" = load float, ptr %"R12"
  %".6234" = load float, ptr %"R13"
  %"fmul.260" = fmul float %".6233", %".6234"
  %"fadd.243" = fadd float %"fmul.260", 0xbff0000000000000
  %".6235" = bitcast ptr %"R22" to ptr
  store float %"fadd.243", ptr %".6235"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...3:
  ; FFMA R22, R12, R13, -1
  %".6240" = load float, ptr %"R12"
  %".6241" = load float, ptr %"R13"
  %"fmul.261" = fmul float %".6240", %".6241"
  %"fadd.244" = fadd float %"fmul.261", 0xbff0000000000000
  %".6242" = bitcast ptr %"R22" to ptr
  store float %"fadd.244", ptr %".6242"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".6247" = load i1, ptr %"P0"
  %".6248" = icmp eq i1 %".6247", 1
  br i1 %".6248", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...3_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".6251" = load float, ptr %"R22"
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
  %"fadd.245" = fadd float %".6257", %".6262"
  %".6263" = call float @"llvm.fabs"(float %"fadd.245")
  %".6264" = fcmp ogt float %".6263",              0x0
  %".6265" = fcmp olt float %".6263", 0x3810000000000000
  %".6266" = and i1 %".6264", %".6265"
  %".6267" = select  i1 %".6266", float              0x0, float %"fadd.245"
  %".6268" = bitcast ptr %"R22" to ptr
  store float %".6267", ptr %".6268"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...3:
  ; FADD.FTZ R22, -R22, -RZ
  %".6273" = load float, ptr %"R22"
  %".6274" = fneg float %".6273"
  %".6275" = call float @"llvm.fabs"(float %".6274")
  %".6276" = fcmp ogt float %".6275",              0x0
  %".6277" = fcmp olt float %".6275", 0x3810000000000000
  %".6278" = and i1 %".6276", %".6277"
  %".6279" = select  i1 %".6278", float              0x0, float %".6274"
  %".6280" = call float @"llvm.fabs"(float              0x0)
  %".6281" = fcmp ogt float %".6280",              0x0
  %".6282" = fcmp olt float %".6280", 0x3810000000000000
  %".6283" = and i1 %".6281", %".6282"
  %".6284" = select  i1 %".6283", float              0x0, float              0x0
  %"fadd.246" = fadd float %".6279", %".6284"
  %".6285" = call float @"llvm.fabs"(float %"fadd.246")
  %".6286" = fcmp ogt float %".6285",              0x0
  %".6287" = fcmp olt float %".6285", 0x3810000000000000
  %".6288" = and i1 %".6286", %".6287"
  %".6289" = select  i1 %".6288", float              0x0, float %"fadd.246"
  %".6290" = bitcast ptr %"R22" to ptr
  store float %".6289", ptr %".6290"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3:
  ; @P0 FFMA R22, R13, R22, R13
  %".6295" = load i1, ptr %"P0"
  %".6296" = icmp eq i1 %".6295", 1
  br i1 %".6296", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...3_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".6299" = load float, ptr %"R13"
  %".6300" = load float, ptr %"R22"
  %".6301" = load float, ptr %"R13"
  %"fmul.262" = fmul float %".6299", %".6300"
  %"fadd.247" = fadd float %"fmul.262", %".6301"
  %".6302" = bitcast ptr %"R22" to ptr
  store float %"fadd.247", ptr %".6302"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...3:
  ; FFMA R22, R13, R22, R13
  %".6307" = load float, ptr %"R13"
  %".6308" = load float, ptr %"R22"
  %".6309" = load float, ptr %"R13"
  %"fmul.263" = fmul float %".6307", %".6308"
  %"fadd.248" = fadd float %"fmul.263", %".6309"
  %".6310" = bitcast ptr %"R22" to ptr
  store float %"fadd.248", ptr %".6310"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6315" = load i1, ptr %"P0"
  %".6316" = icmp eq i1 %".6315", 1
  br i1 %".6316", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...3_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6319" = load float, ptr %"R22"
  %"fmul.264" = fmul float %".6319", 0x43f0000000000000
  %"fadd.249" = fadd float %"fmul.264",              0x0
  %".6320" = bitcast ptr %"R11" to ptr
  store float %"fadd.249", ptr %".6320"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...3:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".6325" = load float, ptr %"R22"
  %"fmul.265" = fmul float %".6325", 0x43f0000000000000
  %"fadd.250" = fadd float %"fmul.265",              0x0
  %".6326" = bitcast ptr %"R11" to ptr
  store float %"fadd.250", ptr %".6326"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...3:
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_49...3:
  ; IADD3 R34, R25, -0xfd, RZ
  %".6333" = load i32, ptr %"R25"
  %".6334" = add i32 %".6333", -253
  %".6335" = add i32 %".6334", 0
  store i32 %".6335", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".6338" = load i32, ptr %"R34"
  %".6339" = load i1, ptr %"PT"
  %"cmp.55" = icmp sgt i32 %".6338", 1
  %".6340" = xor i1 %"cmp.55", -1
  %".6341" = and i1 %"cmp.55", %".6339"
  %".6342" = and i1 %".6340", %".6339"
  store i1 %".6341", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".6345" = load i1, ptr %"P0"
  %".6346" = icmp eq i1 %".6345", 1
  br i1 %".6346", label %".L_x_51...3", label %".L_x_49_split_0x4a30...3"
.L_x_49_split_0x4a30...3:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6349" = load i32, ptr %"R24"
  %".6350" = xor i1 1, -1
  %".6351" = and i32 %".6349", 8388607
  store i32 %".6351", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".6356" = load i32, ptr %"R11"
  %".6357" = xor i1 1, -1
  %".6358" = or i32 %".6356", 1065353216
  store i32 %".6358", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".6361" = load i32, ptr %"R34"
  %".6362" = icmp ult i32 %".6361", 32
  %"SHF_min.24" = select  i1 %".6362", i32 %".6361", i32 32
  %".6363" = load i32, ptr %"R23"
  %".6364" = load i32, ptr %"R34"
  %"zext.636" = zext i32 0 to i64
  %"zext.637" = zext i32 %".6363" to i64
  %"zext.638" = zext i32 %".6364" to i64
  %"shl.337" = shl i64 %"zext.636", 32
  %"or.306" = or i64 %"shl.337", %"zext.637"
  %"shl.338" = shl i64 %"or.306", %"zext.638"
  %"and.15" = and i64 %"shl.338", 4294967295
  %"trunc32.172" = trunc i64 %"and.15" to i32
  store i32 %"trunc32.172", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".6367" = load i32, ptr %"R11"
  %"sint_to_f32.5" = sitofp i32 %".6367" to float
  %".6368" = fdiv float 0x3ff0000000000000, %"sint_to_f32.5"
  %".6369" = fptosi float %".6368" to i32
  store i32 %".6369", ptr %"R12"
  ; FFMA R13, R11, R12, -1
  %".6372" = load float, ptr %"R11"
  %".6373" = load float, ptr %"R12"
  %"fmul.266" = fmul float %".6372", %".6373"
  %"fadd.251" = fadd float %"fmul.266", 0xbff0000000000000
  %".6374" = bitcast ptr %"R13" to ptr
  store float %"fadd.251", ptr %".6374"
  ; FADD.FTZ R13, -R13, -RZ
  %".6377" = load float, ptr %"R13"
  %".6378" = fneg float %".6377"
  %".6379" = call float @"llvm.fabs"(float %".6378")
  %".6380" = fcmp ogt float %".6379",              0x0
  %".6381" = fcmp olt float %".6379", 0x3810000000000000
  %".6382" = and i1 %".6380", %".6381"
  %".6383" = select  i1 %".6382", float              0x0, float %".6378"
  %".6384" = call float @"llvm.fabs"(float              0x0)
  %".6385" = fcmp ogt float %".6384",              0x0
  %".6386" = fcmp olt float %".6384", 0x3810000000000000
  %".6387" = and i1 %".6385", %".6386"
  %".6388" = select  i1 %".6387", float              0x0, float              0x0
  %"fadd.252" = fadd float %".6383", %".6388"
  %".6389" = call float @"llvm.fabs"(float %"fadd.252")
  %".6390" = fcmp ogt float %".6389",              0x0
  %".6391" = fcmp olt float %".6389", 0x3810000000000000
  %".6392" = and i1 %".6390", %".6391"
  %".6393" = select  i1 %".6392", float              0x0, float %"fadd.252"
  %".6394" = bitcast ptr %"R13" to ptr
  store float %".6393", ptr %".6394"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".6397" = load float, ptr %"R12"
  %".6398" = load float, ptr %"R13"
  %".6399" = load float, ptr %"R12"
  %"fmul.267" = fmul float %".6397", %".6398"
  %"fadd.253" = fadd float %"fmul.267", %".6399"
  %".6400" = bitcast ptr %"R22" to ptr
  store float %"fadd.253", ptr %".6400"
  ; FFMA.RP R13, R12, R13, R12
  %".6403" = load float, ptr %"R12"
  %".6404" = load float, ptr %"R13"
  %".6405" = load float, ptr %"R12"
  %"fmul.268" = fmul float %".6403", %".6404"
  %"fadd.254" = fadd float %"fmul.268", %".6405"
  %".6406" = bitcast ptr %"R13" to ptr
  store float %"fadd.254", ptr %".6406"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".6409" = load i32, ptr %"R22"
  %".6410" = xor i1 1, -1
  %".6411" = and i32 %".6409", 8388607
  store i32 %".6411", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".6414" = load float, ptr %"R22"
  %".6415" = load float, ptr %"R13"
  %".6416" = load i1, ptr %"PT"
  %".6417" = call float @"llvm.fabs"(float %".6414")
  %".6418" = fcmp ogt float %".6417",              0x0
  %".6419" = fcmp olt float %".6417", 0x3810000000000000
  %".6420" = and i1 %".6418", %".6419"
  %".6421" = select  i1 %".6420", float              0x0, float %".6414"
  %".6422" = call float @"llvm.fabs"(float %".6415")
  %".6423" = fcmp ogt float %".6422",              0x0
  %".6424" = fcmp olt float %".6422", 0x3810000000000000
  %".6425" = and i1 %".6423", %".6424"
  %".6426" = select  i1 %".6425", float              0x0, float %".6415"
  %"fcmp_ordered.2" = fcmp une float %".6421", %".6426"
  %".6427" = xor i1 %"fcmp_ordered.2", -1
  %".6428" = and i1 %"fcmp_ordered.2", %".6416"
  %".6429" = and i1 %".6427", %".6416"
  store i1 %".6428", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".6432" = load i32, ptr %"R12"
  %".6433" = xor i1 1, -1
  %".6434" = or i32 %".6432", 8388608
  store i32 %".6434", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".6437" = load i1, ptr %"P0"
  %".6438" = xor i1 %".6437", -1
  %".6439" = icmp eq i1 %".6438", 1
  %"sel.4" = select  i1 %".6439", i32 0, i32 4294967295
  store i32 %"sel.4", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".6442" = load i32, ptr %"R23"
  %".6443" = load i32, ptr %"R12"
  %".6444" = xor i1 1, -1
  %".6445" = and i32 %".6442", %".6443"
  store i32 %".6445", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".6448" = load i32, ptr %"R13"
  %".6449" = sub i32 0, %".6448"
  %".6450" = add i32 %".6449", 0
  %".6451" = add i32 %".6450", 0
  store i32 %".6451", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".6454" = load i32, ptr %"R34"
  %".6455" = icmp ult i32 %".6454", 32
  %"SHF_min.25" = select  i1 %".6455", i32 %".6454", i32 32
  %".6456" = load i32, ptr %"R23"
  %".6457" = load i32, ptr %"R34"
  %"zext.639" = zext i32 %".6456" to i64
  %"zext.640" = zext i32 0 to i64
  %"zext.641" = zext i32 %".6457" to i64
  %"shl.339" = shl i64 %"zext.639", 32
  %"or.307" = or i64 %"shl.339", %"zext.640"
  %"lshr.15" = lshr i64 %"or.307", %"zext.641"
  %"lshr.16" = lshr i64 %"lshr.15", 32
  %"trunc32.173" = trunc i64 %"lshr.16" to i32
  store i32 %"trunc32.173", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".6460" = load i32, ptr %"R13"
  %".6461" = load i32, ptr %"R34"
  %".6462" = load i32, ptr %"R12"
  %".6463" = xor i1 1, -1
  %".6464" = or i32 %".6460", %".6461"
  %".6465" = or i32 %".6460", %".6462"
  %".6466" = and i32 %".6464", %".6465"
  store i32 %".6466", ptr %"RZ"
  %".6468" = icmp ne i32 %".6466", 0
  store i1 %".6468", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".6471" = load i32, ptr %"R23"
  %".6472" = xor i1 1, -1
  %".6473" = and i32 %".6471", 1
  store i32 %".6473", ptr %"RZ"
  %".6475" = icmp ne i32 %".6473", 0
  store i1 %".6475", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".6478" = load i32, ptr %"R23"
  %".6479" = xor i1 1, -1
  %".6480" = and i32 %".6478", 2
  store i32 %".6480", ptr %"RZ"
  %".6482" = icmp ne i32 %".6480", 0
  store i1 %".6482", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".6485" = load i1, ptr %"P0"
  %".6486" = load i1, ptr %"P1"
  %".6487" = or i1 %".6485", %".6486"
  %".6488" = and i1 %".6487", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".6490" = load i32, ptr %"R24"
  %".6491" = xor i1 1, -1
  %".6492" = and i32 %".6490", 8388607
  store i32 %".6492", ptr %"RZ"
  %".6494" = icmp ne i32 %".6492", 0
  store i1 %".6494", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".6497" = load i1, ptr %"P0"
  %".6498" = xor i1 %".6497", -1
  %".6499" = icmp eq i1 %".6498", 1
  %"sel.5" = select  i1 %".6499", i32 0, i32 1
  store i32 %"sel.5", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".6502" = load i32, ptr %"R11"
  %".6503" = sub i32 0, %".6502"
  %".6504" = add i32 %".6503", 0
  %".6505" = add i32 %".6504", 0
  store i32 %".6505", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".6508" = load i32, ptr %"R11"
  %".6509" = load i1, ptr %"PT"
  %"cmp.56" = icmp sge i32 %".6508", 0
  %".6510" = xor i1 %"cmp.56", -1
  %".6511" = and i1 %"cmp.56", %".6509"
  %".6512" = and i1 %".6510", %".6509"
  store i1 %".6511", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".6515" = load i32, ptr %"R25"
  %".6516" = add i32 %".6515", -252
  %".6517" = add i32 %".6516", 0
  store i32 %".6517", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".6520" = load i32, ptr %"R11"
  %".6521" = icmp ult i32 %".6520", 32
  %"SHF_min.26" = select  i1 %".6521", i32 %".6520", i32 32
  %".6522" = load i32, ptr %"R12"
  %".6523" = load i32, ptr %"R11"
  %"zext.642" = zext i32 %".6522" to i64
  %"zext.643" = zext i32 0 to i64
  %"zext.644" = zext i32 %".6523" to i64
  %"shl.340" = shl i64 %"zext.642", 32
  %"or.308" = or i64 %"shl.340", %"zext.643"
  %"lshr.17" = lshr i64 %"or.308", %"zext.644"
  %"lshr.18" = lshr i64 %"lshr.17", 32
  %"trunc32.174" = trunc i64 %"lshr.18" to i32
  store i32 %"trunc32.174", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".6526" = load i1, ptr %"P0"
  %".6527" = icmp ne i1 %".6526", 1
  br i1 %".6527", label %".L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30...3_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".6530" = load i32, ptr %"R11"
  %".6531" = add i32 %".6530", 1
  %".6532" = add i32 %".6531", 0
  store i32 %".6532", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...3:
  ; IADD3 R11, R11, 0x1, RZ
  %".6537" = load i32, ptr %"R11"
  %".6538" = add i32 %".6537", 1
  %".6539" = add i32 %".6538", 0
  store i32 %".6539", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...3"
.L_x_49_split_0x4be0...3:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".6544" = load i1, ptr %"P1"
  %".6545" = icmp ne i1 %".6544", 1
  br i1 %".6545", label %".L_x_49_split_0x4be0...3_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...3"
.L_x_49_split_0x4be0...3_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".6548" = icmp ult i32 1, 32
  %"SHF_min.27" = select  i1 %".6548", i32 1, i32 32
  %".6549" = load i32, ptr %"R11"
  %"zext.645" = zext i32 0 to i64
  %"zext.646" = zext i32 %".6549" to i64
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
  %".6554" = icmp ult i32 1, 32
  %"SHF_min.28" = select  i1 %".6554", i32 1, i32 32
  %".6555" = load i32, ptr %"R11"
  %"zext.648" = zext i32 0 to i64
  %"zext.649" = zext i32 %".6555" to i64
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
  %".6560" = load i32, ptr %"R11"
  %".6561" = load i32, ptr %"R24"
  %".6562" = xor i1 1, -1
  %".6563" = or i32 %".6560", 2147483648
  %".6564" = or i32 %".6560", %".6561"
  %".6565" = and i32 %".6563", %".6564"
  store i32 %".6565", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...3"
.L_x_51...3:
  ; MUFU.RCP R11, R24
  %".6570" = load float, ptr %"R24"
  %".6571" = fdiv float 0x3ff0000000000000, %".6570"
  %".6572" = bitcast ptr %"R11" to ptr
  store float %".6571", ptr %".6572"
  br label %".L_x_50...3"
.L_x_50...3:
  ; BSYNC B1
  br label %".L_x_48...3"
.L_x_48...3:
  ; MOV R22, R11
  %".6578" = load float, ptr %"R11"
  %".6579" = bitcast ptr %"R22" to ptr
  store float %".6578", ptr %".6579"
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
  %".6591" = load float, ptr %"R24"
  %".6592" = fdiv float 0x3ff0000000000000, %".6591"
  %".6593" = bitcast ptr %"R22" to ptr
  store float %".6592", ptr %".6593"
  ; FFMA R4, R24, R22, -1
  %".6596" = load float, ptr %"R24"
  %".6597" = load float, ptr %"R22"
  %"fmul.269" = fmul float %".6596", %".6597"
  %"fadd.255" = fadd float %"fmul.269", 0xbff0000000000000
  %".6598" = bitcast ptr %"R4" to ptr
  store float %"fadd.255", ptr %".6598"
  ; FADD.FTZ R5, -R4, -RZ
  %".6601" = load float, ptr %"R4"
  %".6602" = fneg float %".6601"
  %".6603" = call float @"llvm.fabs"(float %".6602")
  %".6604" = fcmp ogt float %".6603",              0x0
  %".6605" = fcmp olt float %".6603", 0x3810000000000000
  %".6606" = and i1 %".6604", %".6605"
  %".6607" = select  i1 %".6606", float              0x0, float %".6602"
  %".6608" = call float @"llvm.fabs"(float              0x0)
  %".6609" = fcmp ogt float %".6608",              0x0
  %".6610" = fcmp olt float %".6608", 0x3810000000000000
  %".6611" = and i1 %".6609", %".6610"
  %".6612" = select  i1 %".6611", float              0x0, float              0x0
  %"fadd.256" = fadd float %".6607", %".6612"
  %".6613" = call float @"llvm.fabs"(float %"fadd.256")
  %".6614" = fcmp ogt float %".6613",              0x0
  %".6615" = fcmp olt float %".6613", 0x3810000000000000
  %".6616" = and i1 %".6614", %".6615"
  %".6617" = select  i1 %".6616", float              0x0, float %"fadd.256"
  %".6618" = bitcast ptr %"R5" to ptr
  store float %".6617", ptr %".6618"
  ; FFMA R22, R22, R5, R22
  %".6621" = load float, ptr %"R22"
  %".6622" = load float, ptr %"R5"
  %".6623" = load float, ptr %"R22"
  %"fmul.270" = fmul float %".6621", %".6622"
  %"fadd.257" = fadd float %"fmul.270", %".6623"
  %".6624" = bitcast ptr %"R22" to ptr
  store float %"fadd.257", ptr %".6624"
  br label %".L_x_34"
.L_x_34:
  ; BSYNC B0
  br label %".L_x_32"
.L_x_32:
  ; LDG.E.SYS R5, [R32]
  %".6630" = load i32, ptr %"R32"
  %"zext.651" = zext i32 %".6630" to i64
  %".6631" = load i32, ptr %"R33"
  %"zext.652" = zext i32 %".6631" to i64
  %"shl.345" = shl i64 %"zext.652", 32
  %"or.311" = or i64 %"shl.345", %"zext.651"
  %"inttoptr_bytes.282" = inttoptr i64 %"or.311" to ptr addrspace(1)
  %"ptr_cast_for_access.282" = bitcast ptr addrspace(1) %"inttoptr_bytes.282" to ptr addrspace(1)
  %".6632" = load float, ptr addrspace(1) %"ptr_cast_for_access.282"
  %".6633" = bitcast ptr %"R5" to ptr
  store float %".6632", ptr %".6633"
  ; MOV R4, 0x3bbb989d
  %".6636" = bitcast ptr %"R4" to ptr
  store float 0x41cdddcc40000000, ptr %".6636"
  ; MOV R7, 0x437c0000
  %".6639" = bitcast ptr %"R7" to ptr
  store float 0x41d0df0000000000, ptr %".6639"
  ; FADD R5, R5, R56
  %".6642" = load float, ptr %"R5"
  %".6643" = load float, ptr %"R56"
  %"fadd.258" = fadd float %".6642", %".6643"
  %".6644" = bitcast ptr %"R5" to ptr
  store float %"fadd.258", ptr %".6644"
  ; FFMA.SAT R4, -R5, R4, 0.5
  %".6647" = load float, ptr %"R5"
  %".6648" = fneg float %".6647"
  %".6649" = load float, ptr %"R4"
  %"fmul.271" = fmul float %".6648", %".6649"
  %"fadd.259" = fadd float %"fmul.271", 0x3fe0000000000000
  %".6650" = bitcast ptr %"R4" to ptr
  store float %"fadd.259", ptr %".6650"
  ; FFMA.RM R4, R4, R7, 12582913
  %".6653" = load float, ptr %"R4"
  %".6654" = load float, ptr %"R7"
  %"fmul.272" = fmul float %".6653", %".6654"
  %"fadd.260" = fadd float %"fmul.272", 0x4168000020000000
  %".6655" = bitcast ptr %"R4" to ptr
  store float %"fadd.260", ptr %".6655"
  ; FADD R6, R4.reuse, -12583039
  %".6658" = load float, ptr %"R4"
  %"fadd.261" = fadd float %".6658", 0xc168000fe0000000
  %".6659" = bitcast ptr %"R6" to ptr
  store float %"fadd.261", ptr %".6659"
  ; SHF.L.U32 R23, R4, 0x17, RZ
  %".6662" = icmp ult i32 23, 32
  %"SHF_min.29" = select  i1 %".6662", i32 23, i32 32
  %".6663" = load i32, ptr %"R4"
  %"zext.653" = zext i32 0 to i64
  %"zext.654" = zext i32 %".6663" to i64
  %"zext.655" = zext i32 23 to i64
  %"shl.346" = shl i64 %"zext.653", 32
  %"or.312" = or i64 %"shl.346", %"zext.654"
  %"shl.347" = shl i64 %"or.312", %"zext.655"
  %"and.18" = and i64 %"shl.347", 4294967295
  %"trunc32.177" = trunc i64 %"and.18" to i32
  store i32 %"trunc32.177", ptr %"R23"
  ; FFMA R6, -R5, 1.4426950216293334961, -R6
  %".6666" = load float, ptr %"R5"
  %".6667" = fneg float %".6666"
  %".6668" = load float, ptr %"R6"
  %".6669" = fneg float %".6668"
  %"fmul.273" = fmul float %".6667", 0x3ff7154760000000
  %"fadd.262" = fadd float %"fmul.273", %".6669"
  %".6670" = bitcast ptr %"R6" to ptr
  store float %"fadd.262", ptr %".6670"
  ; FFMA R6, -R5, 1.925963033500011079e-08, R6
  %".6673" = load float, ptr %"R5"
  %".6674" = fneg float %".6673"
  %".6675" = load float, ptr %"R6"
  %"fmul.274" = fmul float %".6674", 0x3e54ae0c00000000
  %"fadd.263" = fadd float %"fmul.274", %".6675"
  %".6676" = bitcast ptr %"R6" to ptr
  store float %"fadd.263", ptr %".6676"
  ; MUFU.EX2 R6, R6
  %".6679" = load float, ptr %"R6"
  %"llvm_exp2_f32_result.4" = call float @"llvm.exp2.f32"(float %".6679")
  %".6680" = bitcast ptr %"R6" to ptr
  store float %"llvm_exp2_f32_result.4", ptr %".6680"
  ; FFMA R23, R23, R6, 1
  %".6683" = load float, ptr %"R23"
  %".6684" = load float, ptr %"R6"
  %"fmul.275" = fmul float %".6683", %".6684"
  %"fadd.264" = fadd float %"fmul.275", 0x3ff0000000000000
  %".6685" = bitcast ptr %"R23" to ptr
  store float %"fadd.264", ptr %".6685"
  ; @!P4 BRA `(.L_x_35)
  %".6688" = load i1, ptr %"P4"
  %".6689" = icmp ne i1 %".6688", 1
  br i1 %".6689", label %".L_x_35", label %".L_x_32_split_0x3a60"
.L_x_32_split_0x3a60:
  ; ISETP.GE.U32.AND P0, PT, R18, 0x3, PT
  %".6692" = load i32, ptr %"R18"
  %".6693" = load i1, ptr %"PT"
  %"cmp.57" = icmp sge i32 %".6692", 3
  %".6694" = xor i1 %"cmp.57", -1
  %".6695" = and i1 %"cmp.57", %".6693"
  %".6696" = and i1 %".6694", %".6693"
  store i1 %".6695", ptr %"P0"
  ; MOV R34, RZ
  %".6699" = load i32, ptr %"RZ"
  store i32 %".6699", ptr %"R34"
  ; @!P0 BRA `(.L_x_36)
  %".6702" = load i1, ptr %"P0"
  %".6703" = icmp ne i1 %".6702", 1
  br i1 %".6703", label %".L_x_36", label %".L_x_32_split_0x3a90"
.L_x_32_split_0x3a90:
  ; ISETP.GT.AND P0, PT, R20, RZ, PT
  %".6706" = load i32, ptr %"R20"
  %".6707" = load i1, ptr %"PT"
  %"cmp.58" = icmp sgt i32 %".6706", 0
  %".6708" = xor i1 %"cmp.58", -1
  %".6709" = and i1 %"cmp.58", %".6707"
  %".6710" = and i1 %".6708", %".6707"
  store i1 %".6709", ptr %"P0"
  ; MOV R34, RZ
  %".6713" = load i32, ptr %"RZ"
  store i32 %".6713", ptr %"R34"
  ; MOV R35, R20
  %".6716" = load i32, ptr %"R20"
  store i32 %".6716", ptr %"R35"
  ; @!P0 BRA `(.L_x_37)
  %".6719" = load i1, ptr %"P0"
  %".6720" = icmp ne i1 %".6719", 1
  br i1 %".6720", label %".L_x_37", label %".L_x_32_split_0x3ad0"
.L_x_32_split_0x3ad0:
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".6723" = load i32, ptr %"R35"
  %".6724" = load i1, ptr %"PT"
  %"cmp.59" = icmp sgt i32 %".6723", 12
  %".6725" = xor i1 %"cmp.59", -1
  %".6726" = and i1 %"cmp.59", %".6724"
  %".6727" = and i1 %".6725", %".6724"
  store i1 %".6726", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".6730" = and i1 1, 1
  %".6731" = and i1 %".6730", 1
  ; @!P1 BRA `(.L_x_38)
  %".6733" = load i1, ptr %"P1"
  %".6734" = icmp ne i1 %".6733", 1
  br i1 %".6734", label %".L_x_38", label %".L_x_32_split_0x3b00"
.L_x_32_split_0x3b00:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".6737" = xor i1 1, 1
  %".6738" = and i1 %".6737", 1
  %".6739" = and i1 %".6738", 1
  br label %".L_x_39"
.L_x_39:
  ; MOV R41, 0x4
  store i32 4, ptr %"R41"
  ; IADD3 R10, R3, R34, RZ
  %".6744" = load i32, ptr %"R3"
  %".6745" = load i32, ptr %"R34"
  %".6746" = add i32 %".6744", %".6745"
  %".6747" = add i32 %".6746", 0
  store i32 %".6747", ptr %"R10"
  ; IMAD.WIDE R12, R34, R41, c[0x0][0x168]
  %".6750" = load i32, ptr %"R34"
  %".6751" = load i32, ptr %"R41"
  %"imad_ext1.74" = zext i32 %".6750" to i64
  %"imad_ext2.74" = zext i32 %".6751" to i64
  %"imad_mul.90" = mul i64 %"imad_ext1.74", %"imad_ext2.74"
  %".6752" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.90" = add i64 %"imad_mul.90", %".6752"
  %".6753" = and i64 %"imad_add.90", 18446744069414584320
  %".6754" = lshr i64 %".6753", 32
  %"trunc32.178" = trunc i64 %".6754" to i32
  %"trunc32.179" = trunc i64 %"imad_add.90" to i32
  store i32 %"trunc32.179", ptr %"R12"
  store i32 %"trunc32.178", ptr %"R13"
  ; IMAD.WIDE R10, R10, R41, c[0x0][0x170]
  %".6758" = load i32, ptr %"R10"
  %".6759" = load i32, ptr %"R41"
  %"imad_ext1.75" = zext i32 %".6758" to i64
  %"imad_ext2.75" = zext i32 %".6759" to i64
  %"imad_mul.91" = mul i64 %"imad_ext1.75", %"imad_ext2.75"
  %".6760" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.91" = add i64 %"imad_mul.91", %".6760"
  %".6761" = and i64 %"imad_add.91", 18446744069414584320
  %".6762" = lshr i64 %".6761", 32
  %"trunc32.180" = trunc i64 %".6762" to i32
  %"trunc32.181" = trunc i64 %"imad_add.91" to i32
  store i32 %"trunc32.181", ptr %"R10"
  store i32 %"trunc32.180", ptr %"R11"
  ; IADD3 R4, R34, 0x4, RZ
  %".6766" = load i32, ptr %"R34"
  %".6767" = add i32 %".6766", 4
  %".6768" = add i32 %".6767", 0
  store i32 %".6768", ptr %"R4"
  ; LDG.E.SYS R25, [R12]
  %".6771" = load i32, ptr %"R12"
  %"zext.656" = zext i32 %".6771" to i64
  %".6772" = load i32, ptr %"R13"
  %"zext.657" = zext i32 %".6772" to i64
  %"shl.348" = shl i64 %"zext.657", 32
  %"or.313" = or i64 %"shl.348", %"zext.656"
  %"inttoptr_bytes.283" = inttoptr i64 %"or.313" to ptr addrspace(1)
  %"ptr_cast_for_access.283" = bitcast ptr addrspace(1) %"inttoptr_bytes.283" to ptr addrspace(1)
  %".6773" = load float, ptr addrspace(1) %"ptr_cast_for_access.283"
  %".6774" = bitcast ptr %"R25" to ptr
  store float %".6773", ptr %".6774"
  ; IADD3 R6, R3, R4, RZ
  %".6777" = load i32, ptr %"R3"
  %".6778" = load i32, ptr %"R4"
  %".6779" = add i32 %".6777", %".6778"
  %".6780" = add i32 %".6779", 0
  store i32 %".6780", ptr %"R6"
  ; LDG.E.SYS R36, [R10]
  %".6783" = load i32, ptr %"R10"
  %"zext.658" = zext i32 %".6783" to i64
  %".6784" = load i32, ptr %"R11"
  %"zext.659" = zext i32 %".6784" to i64
  %"shl.349" = shl i64 %"zext.659", 32
  %"or.314" = or i64 %"shl.349", %"zext.658"
  %"inttoptr_bytes.284" = inttoptr i64 %"or.314" to ptr addrspace(1)
  %"ptr_cast_for_access.284" = bitcast ptr addrspace(1) %"inttoptr_bytes.284" to ptr addrspace(1)
  %".6785" = load float, ptr addrspace(1) %"ptr_cast_for_access.284"
  %".6786" = bitcast ptr %"R36" to ptr
  store float %".6785", ptr %".6786"
  ; LDG.E.SYS R37, [R12+0x4]
  %".6789" = load i32, ptr %"R12"
  %"zext.660" = zext i32 %".6789" to i64
  %".6790" = load i32, ptr %"R13"
  %"zext.661" = zext i32 %".6790" to i64
  %"shl.350" = shl i64 %"zext.661", 32
  %"or.315" = or i64 %"shl.350", %"zext.660"
  %"ptr_plus_imm.204" = add i64 %"or.315", 4
  %"inttoptr_bytes.285" = inttoptr i64 %"ptr_plus_imm.204" to ptr addrspace(1)
  %"ptr_cast_for_access.285" = bitcast ptr addrspace(1) %"inttoptr_bytes.285" to ptr addrspace(1)
  %".6791" = load float, ptr addrspace(1) %"ptr_cast_for_access.285"
  %".6792" = bitcast ptr %"R37" to ptr
  store float %".6791", ptr %".6792"
  ; IMAD.WIDE R4, R4, R41, c[0x0][0x168]
  %".6795" = load i32, ptr %"R4"
  %".6796" = load i32, ptr %"R41"
  %"imad_ext1.76" = zext i32 %".6795" to i64
  %"imad_ext2.76" = zext i32 %".6796" to i64
  %"imad_mul.92" = mul i64 %"imad_ext1.76", %"imad_ext2.76"
  %".6797" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.92" = add i64 %"imad_mul.92", %".6797"
  %".6798" = and i64 %"imad_add.92", 18446744069414584320
  %".6799" = lshr i64 %".6798", 32
  %"trunc32.182" = trunc i64 %".6799" to i32
  %"trunc32.183" = trunc i64 %"imad_add.92" to i32
  store i32 %"trunc32.183", ptr %"R4"
  store i32 %"trunc32.182", ptr %"R5"
  ; LDG.E.SYS R24, [R10+0x4]
  %".6803" = load i32, ptr %"R10"
  %"zext.662" = zext i32 %".6803" to i64
  %".6804" = load i32, ptr %"R11"
  %"zext.663" = zext i32 %".6804" to i64
  %"shl.351" = shl i64 %"zext.663", 32
  %"or.316" = or i64 %"shl.351", %"zext.662"
  %"ptr_plus_imm.205" = add i64 %"or.316", 4
  %"inttoptr_bytes.286" = inttoptr i64 %"ptr_plus_imm.205" to ptr addrspace(1)
  %"ptr_cast_for_access.286" = bitcast ptr addrspace(1) %"inttoptr_bytes.286" to ptr addrspace(1)
  %".6805" = load float, ptr addrspace(1) %"ptr_cast_for_access.286"
  %".6806" = bitcast ptr %"R24" to ptr
  store float %".6805", ptr %".6806"
  ; LDG.E.SYS R39, [R12+0x8]
  %".6809" = load i32, ptr %"R12"
  %"zext.664" = zext i32 %".6809" to i64
  %".6810" = load i32, ptr %"R13"
  %"zext.665" = zext i32 %".6810" to i64
  %"shl.352" = shl i64 %"zext.665", 32
  %"or.317" = or i64 %"shl.352", %"zext.664"
  %"ptr_plus_imm.206" = add i64 %"or.317", 8
  %"inttoptr_bytes.287" = inttoptr i64 %"ptr_plus_imm.206" to ptr addrspace(1)
  %"ptr_cast_for_access.287" = bitcast ptr addrspace(1) %"inttoptr_bytes.287" to ptr addrspace(1)
  %".6811" = load float, ptr addrspace(1) %"ptr_cast_for_access.287"
  %".6812" = bitcast ptr %"R39" to ptr
  store float %".6811", ptr %".6812"
  ; IMAD.WIDE R6, R6, R41, c[0x0][0x170]
  %".6815" = load i32, ptr %"R6"
  %".6816" = load i32, ptr %"R41"
  %"imad_ext1.77" = zext i32 %".6815" to i64
  %"imad_ext2.77" = zext i32 %".6816" to i64
  %"imad_mul.93" = mul i64 %"imad_ext1.77", %"imad_ext2.77"
  %".6817" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.93" = add i64 %"imad_mul.93", %".6817"
  %".6818" = and i64 %"imad_add.93", 18446744069414584320
  %".6819" = lshr i64 %".6818", 32
  %"trunc32.184" = trunc i64 %".6819" to i32
  %"trunc32.185" = trunc i64 %"imad_add.93" to i32
  store i32 %"trunc32.185", ptr %"R6"
  store i32 %"trunc32.184", ptr %"R7"
  ; LDG.E.SYS R38, [R10+0x8]
  %".6823" = load i32, ptr %"R10"
  %"zext.666" = zext i32 %".6823" to i64
  %".6824" = load i32, ptr %"R11"
  %"zext.667" = zext i32 %".6824" to i64
  %"shl.353" = shl i64 %"zext.667", 32
  %"or.318" = or i64 %"shl.353", %"zext.666"
  %"ptr_plus_imm.207" = add i64 %"or.318", 8
  %"inttoptr_bytes.288" = inttoptr i64 %"ptr_plus_imm.207" to ptr addrspace(1)
  %"ptr_cast_for_access.288" = bitcast ptr addrspace(1) %"inttoptr_bytes.288" to ptr addrspace(1)
  %".6825" = load float, ptr addrspace(1) %"ptr_cast_for_access.288"
  %".6826" = bitcast ptr %"R38" to ptr
  store float %".6825", ptr %".6826"
  ; LDG.E.SYS R43, [R12+0xc]
  %".6829" = load i32, ptr %"R12"
  %"zext.668" = zext i32 %".6829" to i64
  %".6830" = load i32, ptr %"R13"
  %"zext.669" = zext i32 %".6830" to i64
  %"shl.354" = shl i64 %"zext.669", 32
  %"or.319" = or i64 %"shl.354", %"zext.668"
  %"ptr_plus_imm.208" = add i64 %"or.319", 12
  %"inttoptr_bytes.289" = inttoptr i64 %"ptr_plus_imm.208" to ptr addrspace(1)
  %"ptr_cast_for_access.289" = bitcast ptr addrspace(1) %"inttoptr_bytes.289" to ptr addrspace(1)
  %".6831" = load float, ptr addrspace(1) %"ptr_cast_for_access.289"
  %".6832" = bitcast ptr %"R43" to ptr
  store float %".6831", ptr %".6832"
  ; IADD3 R8, R34, 0x8, RZ
  %".6835" = load i32, ptr %"R34"
  %".6836" = add i32 %".6835", 8
  %".6837" = add i32 %".6836", 0
  store i32 %".6837", ptr %"R8"
  ; LDG.E.SYS R46, [R10+0xc]
  %".6840" = load i32, ptr %"R10"
  %"zext.670" = zext i32 %".6840" to i64
  %".6841" = load i32, ptr %"R11"
  %"zext.671" = zext i32 %".6841" to i64
  %"shl.355" = shl i64 %"zext.671", 32
  %"or.320" = or i64 %"shl.355", %"zext.670"
  %"ptr_plus_imm.209" = add i64 %"or.320", 12
  %"inttoptr_bytes.290" = inttoptr i64 %"ptr_plus_imm.209" to ptr addrspace(1)
  %"ptr_cast_for_access.290" = bitcast ptr addrspace(1) %"inttoptr_bytes.290" to ptr addrspace(1)
  %".6842" = load float, ptr addrspace(1) %"ptr_cast_for_access.290"
  %".6843" = bitcast ptr %"R46" to ptr
  store float %".6842", ptr %".6843"
  ; LDG.E.SYS R51, [R4]
  %".6846" = load i32, ptr %"R4"
  %"zext.672" = zext i32 %".6846" to i64
  %".6847" = load i32, ptr %"R5"
  %"zext.673" = zext i32 %".6847" to i64
  %"shl.356" = shl i64 %"zext.673", 32
  %"or.321" = or i64 %"shl.356", %"zext.672"
  %"inttoptr_bytes.291" = inttoptr i64 %"or.321" to ptr addrspace(1)
  %"ptr_cast_for_access.291" = bitcast ptr addrspace(1) %"inttoptr_bytes.291" to ptr addrspace(1)
  %".6848" = load float, ptr addrspace(1) %"ptr_cast_for_access.291"
  %".6849" = bitcast ptr %"R51" to ptr
  store float %".6848", ptr %".6849"
  ; IADD3 R50, R3, R8, RZ
  %".6852" = load i32, ptr %"R3"
  %".6853" = load i32, ptr %"R8"
  %".6854" = add i32 %".6852", %".6853"
  %".6855" = add i32 %".6854", 0
  store i32 %".6855", ptr %"R50"
  ; LDG.E.SYS R44, [R6]
  %".6858" = load i32, ptr %"R6"
  %"zext.674" = zext i32 %".6858" to i64
  %".6859" = load i32, ptr %"R7"
  %"zext.675" = zext i32 %".6859" to i64
  %"shl.357" = shl i64 %"zext.675", 32
  %"or.322" = or i64 %"shl.357", %"zext.674"
  %"inttoptr_bytes.292" = inttoptr i64 %"or.322" to ptr addrspace(1)
  %"ptr_cast_for_access.292" = bitcast ptr addrspace(1) %"inttoptr_bytes.292" to ptr addrspace(1)
  %".6860" = load float, ptr addrspace(1) %"ptr_cast_for_access.292"
  %".6861" = bitcast ptr %"R44" to ptr
  store float %".6860", ptr %".6861"
  ; LDG.E.SYS R47, [R4+0x4]
  %".6864" = load i32, ptr %"R4"
  %"zext.676" = zext i32 %".6864" to i64
  %".6865" = load i32, ptr %"R5"
  %"zext.677" = zext i32 %".6865" to i64
  %"shl.358" = shl i64 %"zext.677", 32
  %"or.323" = or i64 %"shl.358", %"zext.676"
  %"ptr_plus_imm.210" = add i64 %"or.323", 4
  %"inttoptr_bytes.293" = inttoptr i64 %"ptr_plus_imm.210" to ptr addrspace(1)
  %"ptr_cast_for_access.293" = bitcast ptr addrspace(1) %"inttoptr_bytes.293" to ptr addrspace(1)
  %".6866" = load float, ptr addrspace(1) %"ptr_cast_for_access.293"
  %".6867" = bitcast ptr %"R47" to ptr
  store float %".6866", ptr %".6867"
  ; IMAD.WIDE R8, R8, R41, c[0x0][0x168]
  %".6870" = load i32, ptr %"R8"
  %".6871" = load i32, ptr %"R41"
  %"imad_ext1.78" = zext i32 %".6870" to i64
  %"imad_ext2.78" = zext i32 %".6871" to i64
  %"imad_mul.94" = mul i64 %"imad_ext1.78", %"imad_ext2.78"
  %".6872" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.94" = add i64 %"imad_mul.94", %".6872"
  %".6873" = and i64 %"imad_add.94", 18446744069414584320
  %".6874" = lshr i64 %".6873", 32
  %"trunc32.186" = trunc i64 %".6874" to i32
  %"trunc32.187" = trunc i64 %"imad_add.94" to i32
  store i32 %"trunc32.187", ptr %"R8"
  store i32 %"trunc32.186", ptr %"R9"
  ; LDG.E.SYS R42, [R6+0x4]
  %".6878" = load i32, ptr %"R6"
  %"zext.678" = zext i32 %".6878" to i64
  %".6879" = load i32, ptr %"R7"
  %"zext.679" = zext i32 %".6879" to i64
  %"shl.359" = shl i64 %"zext.679", 32
  %"or.324" = or i64 %"shl.359", %"zext.678"
  %"ptr_plus_imm.211" = add i64 %"or.324", 4
  %"inttoptr_bytes.294" = inttoptr i64 %"ptr_plus_imm.211" to ptr addrspace(1)
  %"ptr_cast_for_access.294" = bitcast ptr addrspace(1) %"inttoptr_bytes.294" to ptr addrspace(1)
  %".6880" = load float, ptr addrspace(1) %"ptr_cast_for_access.294"
  %".6881" = bitcast ptr %"R42" to ptr
  store float %".6880", ptr %".6881"
  ; LDG.E.SYS R45, [R4+0x8]
  %".6884" = load i32, ptr %"R4"
  %"zext.680" = zext i32 %".6884" to i64
  %".6885" = load i32, ptr %"R5"
  %"zext.681" = zext i32 %".6885" to i64
  %"shl.360" = shl i64 %"zext.681", 32
  %"or.325" = or i64 %"shl.360", %"zext.680"
  %"ptr_plus_imm.212" = add i64 %"or.325", 8
  %"inttoptr_bytes.295" = inttoptr i64 %"ptr_plus_imm.212" to ptr addrspace(1)
  %"ptr_cast_for_access.295" = bitcast ptr addrspace(1) %"inttoptr_bytes.295" to ptr addrspace(1)
  %".6886" = load float, ptr addrspace(1) %"ptr_cast_for_access.295"
  %".6887" = bitcast ptr %"R45" to ptr
  store float %".6886", ptr %".6887"
  ; IMAD.WIDE R10, R50, R41, c[0x0][0x170]
  %".6890" = load i32, ptr %"R50"
  %".6891" = load i32, ptr %"R41"
  %"imad_ext1.79" = zext i32 %".6890" to i64
  %"imad_ext2.79" = zext i32 %".6891" to i64
  %"imad_mul.95" = mul i64 %"imad_ext1.79", %"imad_ext2.79"
  %".6892" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.95" = add i64 %"imad_mul.95", %".6892"
  %".6893" = and i64 %"imad_add.95", 18446744069414584320
  %".6894" = lshr i64 %".6893", 32
  %"trunc32.188" = trunc i64 %".6894" to i32
  %"trunc32.189" = trunc i64 %"imad_add.95" to i32
  store i32 %"trunc32.189", ptr %"R10"
  store i32 %"trunc32.188", ptr %"R11"
  ; LDG.E.SYS R40, [R6+0x8]
  %".6898" = load i32, ptr %"R6"
  %"zext.682" = zext i32 %".6898" to i64
  %".6899" = load i32, ptr %"R7"
  %"zext.683" = zext i32 %".6899" to i64
  %"shl.361" = shl i64 %"zext.683", 32
  %"or.326" = or i64 %"shl.361", %"zext.682"
  %"ptr_plus_imm.213" = add i64 %"or.326", 8
  %"inttoptr_bytes.296" = inttoptr i64 %"ptr_plus_imm.213" to ptr addrspace(1)
  %"ptr_cast_for_access.296" = bitcast ptr addrspace(1) %"inttoptr_bytes.296" to ptr addrspace(1)
  %".6900" = load float, ptr addrspace(1) %"ptr_cast_for_access.296"
  %".6901" = bitcast ptr %"R40" to ptr
  store float %".6900", ptr %".6901"
  ; LDG.E.SYS R53, [R4+0xc]
  %".6904" = load i32, ptr %"R4"
  %"zext.684" = zext i32 %".6904" to i64
  %".6905" = load i32, ptr %"R5"
  %"zext.685" = zext i32 %".6905" to i64
  %"shl.362" = shl i64 %"zext.685", 32
  %"or.327" = or i64 %"shl.362", %"zext.684"
  %"ptr_plus_imm.214" = add i64 %"or.327", 12
  %"inttoptr_bytes.297" = inttoptr i64 %"ptr_plus_imm.214" to ptr addrspace(1)
  %"ptr_cast_for_access.297" = bitcast ptr addrspace(1) %"inttoptr_bytes.297" to ptr addrspace(1)
  %".6906" = load float, ptr addrspace(1) %"ptr_cast_for_access.297"
  %".6907" = bitcast ptr %"R53" to ptr
  store float %".6906", ptr %".6907"
  ; IADD3 R12, R34, 0xc, RZ
  %".6910" = load i32, ptr %"R34"
  %".6911" = add i32 %".6910", 12
  %".6912" = add i32 %".6911", 0
  store i32 %".6912", ptr %"R12"
  ; LDG.E.SYS R54, [R6+0xc]
  %".6915" = load i32, ptr %"R6"
  %"zext.686" = zext i32 %".6915" to i64
  %".6916" = load i32, ptr %"R7"
  %"zext.687" = zext i32 %".6916" to i64
  %"shl.363" = shl i64 %"zext.687", 32
  %"or.328" = or i64 %"shl.363", %"zext.686"
  %"ptr_plus_imm.215" = add i64 %"or.328", 12
  %"inttoptr_bytes.298" = inttoptr i64 %"ptr_plus_imm.215" to ptr addrspace(1)
  %"ptr_cast_for_access.298" = bitcast ptr addrspace(1) %"inttoptr_bytes.298" to ptr addrspace(1)
  %".6917" = load float, ptr addrspace(1) %"ptr_cast_for_access.298"
  %".6918" = bitcast ptr %"R54" to ptr
  store float %".6917", ptr %".6918"
  ; LDG.E.SYS R59, [R8]
  %".6921" = load i32, ptr %"R8"
  %"zext.688" = zext i32 %".6921" to i64
  %".6922" = load i32, ptr %"R9"
  %"zext.689" = zext i32 %".6922" to i64
  %"shl.364" = shl i64 %"zext.689", 32
  %"or.329" = or i64 %"shl.364", %"zext.688"
  %"inttoptr_bytes.299" = inttoptr i64 %"or.329" to ptr addrspace(1)
  %"ptr_cast_for_access.299" = bitcast ptr addrspace(1) %"inttoptr_bytes.299" to ptr addrspace(1)
  %".6923" = load float, ptr addrspace(1) %"ptr_cast_for_access.299"
  %".6924" = bitcast ptr %"R59" to ptr
  store float %".6923", ptr %".6924"
  ; IADD3 R58, R3, R12, RZ
  %".6927" = load i32, ptr %"R3"
  %".6928" = load i32, ptr %"R12"
  %".6929" = add i32 %".6927", %".6928"
  %".6930" = add i32 %".6929", 0
  store i32 %".6930", ptr %"R58"
  ; LDG.E.SYS R52, [R10]
  %".6933" = load i32, ptr %"R10"
  %"zext.690" = zext i32 %".6933" to i64
  %".6934" = load i32, ptr %"R11"
  %"zext.691" = zext i32 %".6934" to i64
  %"shl.365" = shl i64 %"zext.691", 32
  %"or.330" = or i64 %"shl.365", %"zext.690"
  %"inttoptr_bytes.300" = inttoptr i64 %"or.330" to ptr addrspace(1)
  %"ptr_cast_for_access.300" = bitcast ptr addrspace(1) %"inttoptr_bytes.300" to ptr addrspace(1)
  %".6935" = load float, ptr addrspace(1) %"ptr_cast_for_access.300"
  %".6936" = bitcast ptr %"R52" to ptr
  store float %".6935", ptr %".6936"
  ; LDG.E.SYS R57, [R8+0x4]
  %".6939" = load i32, ptr %"R8"
  %"zext.692" = zext i32 %".6939" to i64
  %".6940" = load i32, ptr %"R9"
  %"zext.693" = zext i32 %".6940" to i64
  %"shl.366" = shl i64 %"zext.693", 32
  %"or.331" = or i64 %"shl.366", %"zext.692"
  %"ptr_plus_imm.216" = add i64 %"or.331", 4
  %"inttoptr_bytes.301" = inttoptr i64 %"ptr_plus_imm.216" to ptr addrspace(1)
  %"ptr_cast_for_access.301" = bitcast ptr addrspace(1) %"inttoptr_bytes.301" to ptr addrspace(1)
  %".6941" = load float, ptr addrspace(1) %"ptr_cast_for_access.301"
  %".6942" = bitcast ptr %"R57" to ptr
  store float %".6941", ptr %".6942"
  ; IMAD.WIDE R12, R12, R41, c[0x0][0x168]
  %".6945" = load i32, ptr %"R12"
  %".6946" = load i32, ptr %"R41"
  %"imad_ext1.80" = zext i32 %".6945" to i64
  %"imad_ext2.80" = zext i32 %".6946" to i64
  %"imad_mul.96" = mul i64 %"imad_ext1.80", %"imad_ext2.80"
  %".6947" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.96" = add i64 %"imad_mul.96", %".6947"
  %".6948" = and i64 %"imad_add.96", 18446744069414584320
  %".6949" = lshr i64 %".6948", 32
  %"trunc32.190" = trunc i64 %".6949" to i32
  %"trunc32.191" = trunc i64 %"imad_add.96" to i32
  store i32 %"trunc32.191", ptr %"R12"
  store i32 %"trunc32.190", ptr %"R13"
  ; LDG.E.SYS R50, [R10+0x4]
  %".6953" = load i32, ptr %"R10"
  %"zext.694" = zext i32 %".6953" to i64
  %".6954" = load i32, ptr %"R11"
  %"zext.695" = zext i32 %".6954" to i64
  %"shl.367" = shl i64 %"zext.695", 32
  %"or.332" = or i64 %"shl.367", %"zext.694"
  %"ptr_plus_imm.217" = add i64 %"or.332", 4
  %"inttoptr_bytes.302" = inttoptr i64 %"ptr_plus_imm.217" to ptr addrspace(1)
  %"ptr_cast_for_access.302" = bitcast ptr addrspace(1) %"inttoptr_bytes.302" to ptr addrspace(1)
  %".6955" = load float, ptr addrspace(1) %"ptr_cast_for_access.302"
  %".6956" = bitcast ptr %"R50" to ptr
  store float %".6955", ptr %".6956"
  ; LDG.E.SYS R55, [R8+0x8]
  %".6959" = load i32, ptr %"R8"
  %"zext.696" = zext i32 %".6959" to i64
  %".6960" = load i32, ptr %"R9"
  %"zext.697" = zext i32 %".6960" to i64
  %"shl.368" = shl i64 %"zext.697", 32
  %"or.333" = or i64 %"shl.368", %"zext.696"
  %"ptr_plus_imm.218" = add i64 %"or.333", 8
  %"inttoptr_bytes.303" = inttoptr i64 %"ptr_plus_imm.218" to ptr addrspace(1)
  %"ptr_cast_for_access.303" = bitcast ptr addrspace(1) %"inttoptr_bytes.303" to ptr addrspace(1)
  %".6961" = load float, ptr addrspace(1) %"ptr_cast_for_access.303"
  %".6962" = bitcast ptr %"R55" to ptr
  store float %".6961", ptr %".6962"
  ; IMAD.WIDE R4, R58, R41, c[0x0][0x170]
  %".6965" = load i32, ptr %"R58"
  %".6966" = load i32, ptr %"R41"
  %"imad_ext1.81" = zext i32 %".6965" to i64
  %"imad_ext2.81" = zext i32 %".6966" to i64
  %"imad_mul.97" = mul i64 %"imad_ext1.81", %"imad_ext2.81"
  %".6967" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.97" = add i64 %"imad_mul.97", %".6967"
  %".6968" = and i64 %"imad_add.97", 18446744069414584320
  %".6969" = lshr i64 %".6968", 32
  %"trunc32.192" = trunc i64 %".6969" to i32
  %"trunc32.193" = trunc i64 %"imad_add.97" to i32
  store i32 %"trunc32.193", ptr %"R4"
  store i32 %"trunc32.192", ptr %"R5"
  ; LDG.E.SYS R61, [R8+0xc]
  %".6973" = load i32, ptr %"R8"
  %"zext.698" = zext i32 %".6973" to i64
  %".6974" = load i32, ptr %"R9"
  %"zext.699" = zext i32 %".6974" to i64
  %"shl.369" = shl i64 %"zext.699", 32
  %"or.334" = or i64 %"shl.369", %"zext.698"
  %"ptr_plus_imm.219" = add i64 %"or.334", 12
  %"inttoptr_bytes.304" = inttoptr i64 %"ptr_plus_imm.219" to ptr addrspace(1)
  %"ptr_cast_for_access.304" = bitcast ptr addrspace(1) %"inttoptr_bytes.304" to ptr addrspace(1)
  %".6975" = load float, ptr addrspace(1) %"ptr_cast_for_access.304"
  %".6976" = bitcast ptr %"R61" to ptr
  store float %".6975", ptr %".6976"
  ; LDG.E.SYS R56, [R10+0x8]
  %".6979" = load i32, ptr %"R10"
  %"zext.700" = zext i32 %".6979" to i64
  %".6980" = load i32, ptr %"R11"
  %"zext.701" = zext i32 %".6980" to i64
  %"shl.370" = shl i64 %"zext.701", 32
  %"or.335" = or i64 %"shl.370", %"zext.700"
  %"ptr_plus_imm.220" = add i64 %"or.335", 8
  %"inttoptr_bytes.305" = inttoptr i64 %"ptr_plus_imm.220" to ptr addrspace(1)
  %"ptr_cast_for_access.305" = bitcast ptr addrspace(1) %"inttoptr_bytes.305" to ptr addrspace(1)
  %".6981" = load float, ptr addrspace(1) %"ptr_cast_for_access.305"
  %".6982" = bitcast ptr %"R56" to ptr
  store float %".6981", ptr %".6982"
  ; LDG.E.SYS R58, [R10+0xc]
  %".6985" = load i32, ptr %"R10"
  %"zext.702" = zext i32 %".6985" to i64
  %".6986" = load i32, ptr %"R11"
  %"zext.703" = zext i32 %".6986" to i64
  %"shl.371" = shl i64 %"zext.703", 32
  %"or.336" = or i64 %"shl.371", %"zext.702"
  %"ptr_plus_imm.221" = add i64 %"or.336", 12
  %"inttoptr_bytes.306" = inttoptr i64 %"ptr_plus_imm.221" to ptr addrspace(1)
  %"ptr_cast_for_access.306" = bitcast ptr addrspace(1) %"inttoptr_bytes.306" to ptr addrspace(1)
  %".6987" = load float, ptr addrspace(1) %"ptr_cast_for_access.306"
  %".6988" = bitcast ptr %"R58" to ptr
  store float %".6987", ptr %".6988"
  ; LDG.E.SYS R6, [R12]
  %".6991" = load i32, ptr %"R12"
  %"zext.704" = zext i32 %".6991" to i64
  %".6992" = load i32, ptr %"R13"
  %"zext.705" = zext i32 %".6992" to i64
  %"shl.372" = shl i64 %"zext.705", 32
  %"or.337" = or i64 %"shl.372", %"zext.704"
  %"inttoptr_bytes.307" = inttoptr i64 %"or.337" to ptr addrspace(1)
  %"ptr_cast_for_access.307" = bitcast ptr addrspace(1) %"inttoptr_bytes.307" to ptr addrspace(1)
  %".6993" = load float, ptr addrspace(1) %"ptr_cast_for_access.307"
  %".6994" = bitcast ptr %"R6" to ptr
  store float %".6993", ptr %".6994"
  ; LDG.E.SYS R41, [R12+0x4]
  %".6997" = load i32, ptr %"R12"
  %"zext.706" = zext i32 %".6997" to i64
  %".6998" = load i32, ptr %"R13"
  %"zext.707" = zext i32 %".6998" to i64
  %"shl.373" = shl i64 %"zext.707", 32
  %"or.338" = or i64 %"shl.373", %"zext.706"
  %"ptr_plus_imm.222" = add i64 %"or.338", 4
  %"inttoptr_bytes.308" = inttoptr i64 %"ptr_plus_imm.222" to ptr addrspace(1)
  %"ptr_cast_for_access.308" = bitcast ptr addrspace(1) %"inttoptr_bytes.308" to ptr addrspace(1)
  %".6999" = load float, ptr addrspace(1) %"ptr_cast_for_access.308"
  %".7000" = bitcast ptr %"R41" to ptr
  store float %".6999", ptr %".7000"
  ; LDG.E.SYS R10, [R4]
  %".7003" = load i32, ptr %"R4"
  %"zext.708" = zext i32 %".7003" to i64
  %".7004" = load i32, ptr %"R5"
  %"zext.709" = zext i32 %".7004" to i64
  %"shl.374" = shl i64 %"zext.709", 32
  %"or.339" = or i64 %"shl.374", %"zext.708"
  %"inttoptr_bytes.309" = inttoptr i64 %"or.339" to ptr addrspace(1)
  %"ptr_cast_for_access.309" = bitcast ptr addrspace(1) %"inttoptr_bytes.309" to ptr addrspace(1)
  %".7005" = load float, ptr addrspace(1) %"ptr_cast_for_access.309"
  %".7006" = bitcast ptr %"R10" to ptr
  store float %".7005", ptr %".7006"
  ; LDG.E.SYS R7, [R12+0x8]
  %".7009" = load i32, ptr %"R12"
  %"zext.710" = zext i32 %".7009" to i64
  %".7010" = load i32, ptr %"R13"
  %"zext.711" = zext i32 %".7010" to i64
  %"shl.375" = shl i64 %"zext.711", 32
  %"or.340" = or i64 %"shl.375", %"zext.710"
  %"ptr_plus_imm.223" = add i64 %"or.340", 8
  %"inttoptr_bytes.310" = inttoptr i64 %"ptr_plus_imm.223" to ptr addrspace(1)
  %"ptr_cast_for_access.310" = bitcast ptr addrspace(1) %"inttoptr_bytes.310" to ptr addrspace(1)
  %".7011" = load float, ptr addrspace(1) %"ptr_cast_for_access.310"
  %".7012" = bitcast ptr %"R7" to ptr
  store float %".7011", ptr %".7012"
  ; LDG.E.SYS R9, [R4+0x4]
  %".7015" = load i32, ptr %"R4"
  %"zext.712" = zext i32 %".7015" to i64
  %".7016" = load i32, ptr %"R5"
  %"zext.713" = zext i32 %".7016" to i64
  %"shl.376" = shl i64 %"zext.713", 32
  %"or.341" = or i64 %"shl.376", %"zext.712"
  %"ptr_plus_imm.224" = add i64 %"or.341", 4
  %"inttoptr_bytes.311" = inttoptr i64 %"ptr_plus_imm.224" to ptr addrspace(1)
  %"ptr_cast_for_access.311" = bitcast ptr addrspace(1) %"inttoptr_bytes.311" to ptr addrspace(1)
  %".7017" = load float, ptr addrspace(1) %"ptr_cast_for_access.311"
  %".7018" = bitcast ptr %"R9" to ptr
  store float %".7017", ptr %".7018"
  ; LDG.E.SYS R60, [R12+0xc]
  %".7021" = load i32, ptr %"R12"
  %"zext.714" = zext i32 %".7021" to i64
  %".7022" = load i32, ptr %"R13"
  %"zext.715" = zext i32 %".7022" to i64
  %"shl.377" = shl i64 %"zext.715", 32
  %"or.342" = or i64 %"shl.377", %"zext.714"
  %"ptr_plus_imm.225" = add i64 %"or.342", 12
  %"inttoptr_bytes.312" = inttoptr i64 %"ptr_plus_imm.225" to ptr addrspace(1)
  %"ptr_cast_for_access.312" = bitcast ptr addrspace(1) %"inttoptr_bytes.312" to ptr addrspace(1)
  %".7023" = load float, ptr addrspace(1) %"ptr_cast_for_access.312"
  %".7024" = bitcast ptr %"R60" to ptr
  store float %".7023", ptr %".7024"
  ; LDG.E.SYS R8, [R4+0x8]
  %".7027" = load i32, ptr %"R4"
  %"zext.716" = zext i32 %".7027" to i64
  %".7028" = load i32, ptr %"R5"
  %"zext.717" = zext i32 %".7028" to i64
  %"shl.378" = shl i64 %"zext.717", 32
  %"or.343" = or i64 %"shl.378", %"zext.716"
  %"ptr_plus_imm.226" = add i64 %"or.343", 8
  %"inttoptr_bytes.313" = inttoptr i64 %"ptr_plus_imm.226" to ptr addrspace(1)
  %"ptr_cast_for_access.313" = bitcast ptr addrspace(1) %"inttoptr_bytes.313" to ptr addrspace(1)
  %".7029" = load float, ptr addrspace(1) %"ptr_cast_for_access.313"
  %".7030" = bitcast ptr %"R8" to ptr
  store float %".7029", ptr %".7030"
  ; LDG.E.SYS R11, [R4+0xc]
  %".7033" = load i32, ptr %"R4"
  %"zext.718" = zext i32 %".7033" to i64
  %".7034" = load i32, ptr %"R5"
  %"zext.719" = zext i32 %".7034" to i64
  %"shl.379" = shl i64 %"zext.719", 32
  %"or.344" = or i64 %"shl.379", %"zext.718"
  %"ptr_plus_imm.227" = add i64 %"or.344", 12
  %"inttoptr_bytes.314" = inttoptr i64 %"ptr_plus_imm.227" to ptr addrspace(1)
  %"ptr_cast_for_access.314" = bitcast ptr addrspace(1) %"inttoptr_bytes.314" to ptr addrspace(1)
  %".7035" = load float, ptr addrspace(1) %"ptr_cast_for_access.314"
  %".7036" = bitcast ptr %"R11" to ptr
  store float %".7035", ptr %".7036"
  ; IADD3 R35, R35, -0x10, RZ
  %".7039" = load i32, ptr %"R35"
  %".7040" = add i32 %".7039", -16
  %".7041" = add i32 %".7040", 0
  store i32 %".7041", ptr %"R35"
  ; ISETP.GT.AND P1, PT, R35, 0xc, PT
  %".7044" = load i32, ptr %"R35"
  %".7045" = load i1, ptr %"PT"
  %"cmp.60" = icmp sgt i32 %".7044", 12
  %".7046" = xor i1 %"cmp.60", -1
  %".7047" = and i1 %"cmp.60", %".7045"
  %".7048" = and i1 %".7046", %".7045"
  store i1 %".7047", ptr %"P1"
  ; IADD3 R34, R34, 0x10, RZ
  %".7051" = load i32, ptr %"R34"
  %".7052" = add i32 %".7051", 16
  %".7053" = add i32 %".7052", 0
  store i32 %".7053", ptr %"R34"
  ; FMUL R25, R25, R22
  %".7056" = load float, ptr %"R25"
  %".7057" = load float, ptr %"R22"
  %"fmul.276" = fmul float %".7056", %".7057"
  %".7058" = bitcast ptr %"R25" to ptr
  store float %"fmul.276", ptr %".7058"
  ; FFMA R25, R25, R36, R21
  %".7061" = load float, ptr %"R25"
  %".7062" = load float, ptr %"R36"
  %".7063" = load float, ptr %"R21"
  %"fmul.277" = fmul float %".7061", %".7062"
  %"fadd.265" = fadd float %"fmul.277", %".7063"
  %".7064" = bitcast ptr %"R25" to ptr
  store float %"fadd.265", ptr %".7064"
  ; FMUL R37, R37, R22
  %".7067" = load float, ptr %"R37"
  %".7068" = load float, ptr %"R22"
  %"fmul.278" = fmul float %".7067", %".7068"
  %".7069" = bitcast ptr %"R37" to ptr
  store float %"fmul.278", ptr %".7069"
  ; FFMA R25, R37, R24, R25
  %".7072" = load float, ptr %"R37"
  %".7073" = load float, ptr %"R24"
  %".7074" = load float, ptr %"R25"
  %"fmul.279" = fmul float %".7072", %".7073"
  %"fadd.266" = fadd float %"fmul.279", %".7074"
  %".7075" = bitcast ptr %"R25" to ptr
  store float %"fadd.266", ptr %".7075"
  ; FMUL R39, R39, R22
  %".7078" = load float, ptr %"R39"
  %".7079" = load float, ptr %"R22"
  %"fmul.280" = fmul float %".7078", %".7079"
  %".7080" = bitcast ptr %"R39" to ptr
  store float %"fmul.280", ptr %".7080"
  ; FFMA R25, R39, R38, R25
  %".7083" = load float, ptr %"R39"
  %".7084" = load float, ptr %"R38"
  %".7085" = load float, ptr %"R25"
  %"fmul.281" = fmul float %".7083", %".7084"
  %"fadd.267" = fadd float %"fmul.281", %".7085"
  %".7086" = bitcast ptr %"R25" to ptr
  store float %"fadd.267", ptr %".7086"
  ; FMUL R43, R43, R22
  %".7089" = load float, ptr %"R43"
  %".7090" = load float, ptr %"R22"
  %"fmul.282" = fmul float %".7089", %".7090"
  %".7091" = bitcast ptr %"R43" to ptr
  store float %"fmul.282", ptr %".7091"
  ; FFMA R25, R43, R46, R25
  %".7094" = load float, ptr %"R43"
  %".7095" = load float, ptr %"R46"
  %".7096" = load float, ptr %"R25"
  %"fmul.283" = fmul float %".7094", %".7095"
  %"fadd.268" = fadd float %"fmul.283", %".7096"
  %".7097" = bitcast ptr %"R25" to ptr
  store float %"fadd.268", ptr %".7097"
  ; FMUL R51, R51, R22
  %".7100" = load float, ptr %"R51"
  %".7101" = load float, ptr %"R22"
  %"fmul.284" = fmul float %".7100", %".7101"
  %".7102" = bitcast ptr %"R51" to ptr
  store float %"fmul.284", ptr %".7102"
  ; FFMA R25, R51, R44, R25
  %".7105" = load float, ptr %"R51"
  %".7106" = load float, ptr %"R44"
  %".7107" = load float, ptr %"R25"
  %"fmul.285" = fmul float %".7105", %".7106"
  %"fadd.269" = fadd float %"fmul.285", %".7107"
  %".7108" = bitcast ptr %"R25" to ptr
  store float %"fadd.269", ptr %".7108"
  ; FMUL R47, R47, R22
  %".7111" = load float, ptr %"R47"
  %".7112" = load float, ptr %"R22"
  %"fmul.286" = fmul float %".7111", %".7112"
  %".7113" = bitcast ptr %"R47" to ptr
  store float %"fmul.286", ptr %".7113"
  ; FFMA R25, R47, R42, R25
  %".7116" = load float, ptr %"R47"
  %".7117" = load float, ptr %"R42"
  %".7118" = load float, ptr %"R25"
  %"fmul.287" = fmul float %".7116", %".7117"
  %"fadd.270" = fadd float %"fmul.287", %".7118"
  %".7119" = bitcast ptr %"R25" to ptr
  store float %"fadd.270", ptr %".7119"
  ; FMUL R45, R45, R22
  %".7122" = load float, ptr %"R45"
  %".7123" = load float, ptr %"R22"
  %"fmul.288" = fmul float %".7122", %".7123"
  %".7124" = bitcast ptr %"R45" to ptr
  store float %"fmul.288", ptr %".7124"
  ; FFMA R25, R45, R40, R25
  %".7127" = load float, ptr %"R45"
  %".7128" = load float, ptr %"R40"
  %".7129" = load float, ptr %"R25"
  %"fmul.289" = fmul float %".7127", %".7128"
  %"fadd.271" = fadd float %"fmul.289", %".7129"
  %".7130" = bitcast ptr %"R25" to ptr
  store float %"fadd.271", ptr %".7130"
  ; FMUL R53, R53, R22
  %".7133" = load float, ptr %"R53"
  %".7134" = load float, ptr %"R22"
  %"fmul.290" = fmul float %".7133", %".7134"
  %".7135" = bitcast ptr %"R53" to ptr
  store float %"fmul.290", ptr %".7135"
  ; FFMA R25, R53, R54, R25
  %".7138" = load float, ptr %"R53"
  %".7139" = load float, ptr %"R54"
  %".7140" = load float, ptr %"R25"
  %"fmul.291" = fmul float %".7138", %".7139"
  %"fadd.272" = fadd float %"fmul.291", %".7140"
  %".7141" = bitcast ptr %"R25" to ptr
  store float %"fadd.272", ptr %".7141"
  ; FMUL R59, R59, R22
  %".7144" = load float, ptr %"R59"
  %".7145" = load float, ptr %"R22"
  %"fmul.292" = fmul float %".7144", %".7145"
  %".7146" = bitcast ptr %"R59" to ptr
  store float %"fmul.292", ptr %".7146"
  ; FFMA R25, R59, R52, R25
  %".7149" = load float, ptr %"R59"
  %".7150" = load float, ptr %"R52"
  %".7151" = load float, ptr %"R25"
  %"fmul.293" = fmul float %".7149", %".7150"
  %"fadd.273" = fadd float %"fmul.293", %".7151"
  %".7152" = bitcast ptr %"R25" to ptr
  store float %"fadd.273", ptr %".7152"
  ; FMUL R57, R57, R22
  %".7155" = load float, ptr %"R57"
  %".7156" = load float, ptr %"R22"
  %"fmul.294" = fmul float %".7155", %".7156"
  %".7157" = bitcast ptr %"R57" to ptr
  store float %"fmul.294", ptr %".7157"
  ; FFMA R25, R57, R50, R25
  %".7160" = load float, ptr %"R57"
  %".7161" = load float, ptr %"R50"
  %".7162" = load float, ptr %"R25"
  %"fmul.295" = fmul float %".7160", %".7161"
  %"fadd.274" = fadd float %"fmul.295", %".7162"
  %".7163" = bitcast ptr %"R25" to ptr
  store float %"fadd.274", ptr %".7163"
  ; FMUL R55, R55, R22.reuse
  %".7166" = load float, ptr %"R55"
  %".7167" = load float, ptr %"R22"
  %"fmul.296" = fmul float %".7166", %".7167"
  %".7168" = bitcast ptr %"R55" to ptr
  store float %"fmul.296", ptr %".7168"
  ; FMUL R61, R61, R22
  %".7171" = load float, ptr %"R61"
  %".7172" = load float, ptr %"R22"
  %"fmul.297" = fmul float %".7171", %".7172"
  %".7173" = bitcast ptr %"R61" to ptr
  store float %"fmul.297", ptr %".7173"
  ; FFMA R25, R55, R56, R25
  %".7176" = load float, ptr %"R55"
  %".7177" = load float, ptr %"R56"
  %".7178" = load float, ptr %"R25"
  %"fmul.298" = fmul float %".7176", %".7177"
  %"fadd.275" = fadd float %"fmul.298", %".7178"
  %".7179" = bitcast ptr %"R25" to ptr
  store float %"fadd.275", ptr %".7179"
  ; FFMA R25, R61, R58, R25
  %".7182" = load float, ptr %"R61"
  %".7183" = load float, ptr %"R58"
  %".7184" = load float, ptr %"R25"
  %"fmul.299" = fmul float %".7182", %".7183"
  %"fadd.276" = fadd float %"fmul.299", %".7184"
  %".7185" = bitcast ptr %"R25" to ptr
  store float %"fadd.276", ptr %".7185"
  ; FMUL R6, R6, R22.reuse
  %".7188" = load float, ptr %"R6"
  %".7189" = load float, ptr %"R22"
  %"fmul.300" = fmul float %".7188", %".7189"
  %".7190" = bitcast ptr %"R6" to ptr
  store float %"fmul.300", ptr %".7190"
  ; FMUL R41, R41, R22
  %".7193" = load float, ptr %"R41"
  %".7194" = load float, ptr %"R22"
  %"fmul.301" = fmul float %".7193", %".7194"
  %".7195" = bitcast ptr %"R41" to ptr
  store float %"fmul.301", ptr %".7195"
  ; FFMA R6, R6, R10, R25
  %".7198" = load float, ptr %"R6"
  %".7199" = load float, ptr %"R10"
  %".7200" = load float, ptr %"R25"
  %"fmul.302" = fmul float %".7198", %".7199"
  %"fadd.277" = fadd float %"fmul.302", %".7200"
  %".7201" = bitcast ptr %"R6" to ptr
  store float %"fadd.277", ptr %".7201"
  ; FMUL R7, R7, R22
  %".7204" = load float, ptr %"R7"
  %".7205" = load float, ptr %"R22"
  %"fmul.303" = fmul float %".7204", %".7205"
  %".7206" = bitcast ptr %"R7" to ptr
  store float %"fmul.303", ptr %".7206"
  ; FFMA R9, R41, R9, R6
  %".7209" = load float, ptr %"R41"
  %".7210" = load float, ptr %"R9"
  %".7211" = load float, ptr %"R6"
  %"fmul.304" = fmul float %".7209", %".7210"
  %"fadd.278" = fadd float %"fmul.304", %".7211"
  %".7212" = bitcast ptr %"R9" to ptr
  store float %"fadd.278", ptr %".7212"
  ; FMUL R60, R60, R22
  %".7215" = load float, ptr %"R60"
  %".7216" = load float, ptr %"R22"
  %"fmul.305" = fmul float %".7215", %".7216"
  %".7217" = bitcast ptr %"R60" to ptr
  store float %"fmul.305", ptr %".7217"
  ; FFMA R8, R7, R8, R9
  %".7220" = load float, ptr %"R7"
  %".7221" = load float, ptr %"R8"
  %".7222" = load float, ptr %"R9"
  %"fmul.306" = fmul float %".7220", %".7221"
  %"fadd.279" = fadd float %"fmul.306", %".7222"
  %".7223" = bitcast ptr %"R8" to ptr
  store float %"fadd.279", ptr %".7223"
  ; FFMA R21, R60, R11, R8
  %".7226" = load float, ptr %"R60"
  %".7227" = load float, ptr %"R11"
  %".7228" = load float, ptr %"R8"
  %"fmul.307" = fmul float %".7226", %".7227"
  %"fadd.280" = fadd float %"fmul.307", %".7228"
  %".7229" = bitcast ptr %"R21" to ptr
  store float %"fadd.280", ptr %".7229"
  ; @P1 BRA `(.L_x_39)
  %".7232" = load i1, ptr %"P1"
  %".7233" = icmp eq i1 %".7232", 1
  br i1 %".7233", label %".L_x_39", label %".L_x_38"
.L_x_38:
  ; ISETP.GT.AND P1, PT, R35, 0x4, PT
  %".7236" = load i32, ptr %"R35"
  %".7237" = load i1, ptr %"PT"
  %"cmp.61" = icmp sgt i32 %".7236", 4
  %".7238" = xor i1 %"cmp.61", -1
  %".7239" = and i1 %"cmp.61", %".7237"
  %".7240" = and i1 %".7238", %".7237"
  store i1 %".7239", ptr %"P1"
  ; @!P1 BRA `(.L_x_40)
  %".7243" = load i1, ptr %"P1"
  %".7244" = icmp ne i1 %".7243", 1
  br i1 %".7244", label %".L_x_40", label %".L_x_38_split_0x4070"
.L_x_38_split_0x4070:
  ; MOV R11, 0x4
  store i32 4, ptr %"R11"
  ; IADD3 R6, R3, R34, RZ
  %".7249" = load i32, ptr %"R3"
  %".7250" = load i32, ptr %"R34"
  %".7251" = add i32 %".7249", %".7250"
  %".7252" = add i32 %".7251", 0
  store i32 %".7252", ptr %"R6"
  ; IMAD.WIDE R8, R34, R11, c[0x0][0x168]
  %".7255" = load i32, ptr %"R34"
  %".7256" = load i32, ptr %"R11"
  %"imad_ext1.82" = zext i32 %".7255" to i64
  %"imad_ext2.82" = zext i32 %".7256" to i64
  %"imad_mul.98" = mul i64 %"imad_ext1.82", %"imad_ext2.82"
  %".7257" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.98" = add i64 %"imad_mul.98", %".7257"
  %".7258" = and i64 %"imad_add.98", 18446744069414584320
  %".7259" = lshr i64 %".7258", 32
  %"trunc32.194" = trunc i64 %".7259" to i32
  %"trunc32.195" = trunc i64 %"imad_add.98" to i32
  store i32 %"trunc32.195", ptr %"R8"
  store i32 %"trunc32.194", ptr %"R9"
  ; IMAD.WIDE R6, R6, R11, c[0x0][0x170]
  %".7263" = load i32, ptr %"R6"
  %".7264" = load i32, ptr %"R11"
  %"imad_ext1.83" = zext i32 %".7263" to i64
  %"imad_ext2.83" = zext i32 %".7264" to i64
  %"imad_mul.99" = mul i64 %"imad_ext1.83", %"imad_ext2.83"
  %".7265" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.99" = add i64 %"imad_mul.99", %".7265"
  %".7266" = and i64 %"imad_add.99", 18446744069414584320
  %".7267" = lshr i64 %".7266", 32
  %"trunc32.196" = trunc i64 %".7267" to i32
  %"trunc32.197" = trunc i64 %"imad_add.99" to i32
  store i32 %"trunc32.197", ptr %"R6"
  store i32 %"trunc32.196", ptr %"R7"
  ; IADD3 R4, R34, 0x4, RZ
  %".7271" = load i32, ptr %"R34"
  %".7272" = add i32 %".7271", 4
  %".7273" = add i32 %".7272", 0
  store i32 %".7273", ptr %"R4"
  ; LDG.E.SYS R13, [R8]
  %".7276" = load i32, ptr %"R8"
  %"zext.720" = zext i32 %".7276" to i64
  %".7277" = load i32, ptr %"R9"
  %"zext.721" = zext i32 %".7277" to i64
  %"shl.380" = shl i64 %"zext.721", 32
  %"or.345" = or i64 %"shl.380", %"zext.720"
  %"inttoptr_bytes.315" = inttoptr i64 %"or.345" to ptr addrspace(1)
  %"ptr_cast_for_access.315" = bitcast ptr addrspace(1) %"inttoptr_bytes.315" to ptr addrspace(1)
  %".7278" = load float, ptr addrspace(1) %"ptr_cast_for_access.315"
  %".7279" = bitcast ptr %"R13" to ptr
  store float %".7278", ptr %".7279"
  ; IADD3 R10, R3, R4, RZ
  %".7282" = load i32, ptr %"R3"
  %".7283" = load i32, ptr %"R4"
  %".7284" = add i32 %".7282", %".7283"
  %".7285" = add i32 %".7284", 0
  store i32 %".7285", ptr %"R10"
  ; LDG.E.SYS R12, [R6]
  %".7288" = load i32, ptr %"R6"
  %"zext.722" = zext i32 %".7288" to i64
  %".7289" = load i32, ptr %"R7"
  %"zext.723" = zext i32 %".7289" to i64
  %"shl.381" = shl i64 %"zext.723", 32
  %"or.346" = or i64 %"shl.381", %"zext.722"
  %"inttoptr_bytes.316" = inttoptr i64 %"or.346" to ptr addrspace(1)
  %"ptr_cast_for_access.316" = bitcast ptr addrspace(1) %"inttoptr_bytes.316" to ptr addrspace(1)
  %".7290" = load float, ptr addrspace(1) %"ptr_cast_for_access.316"
  %".7291" = bitcast ptr %"R12" to ptr
  store float %".7290", ptr %".7291"
  ; LDG.E.SYS R25, [R8+0x4]
  %".7294" = load i32, ptr %"R8"
  %"zext.724" = zext i32 %".7294" to i64
  %".7295" = load i32, ptr %"R9"
  %"zext.725" = zext i32 %".7295" to i64
  %"shl.382" = shl i64 %"zext.725", 32
  %"or.347" = or i64 %"shl.382", %"zext.724"
  %"ptr_plus_imm.228" = add i64 %"or.347", 4
  %"inttoptr_bytes.317" = inttoptr i64 %"ptr_plus_imm.228" to ptr addrspace(1)
  %"ptr_cast_for_access.317" = bitcast ptr addrspace(1) %"inttoptr_bytes.317" to ptr addrspace(1)
  %".7296" = load float, ptr addrspace(1) %"ptr_cast_for_access.317"
  %".7297" = bitcast ptr %"R25" to ptr
  store float %".7296", ptr %".7297"
  ; IMAD.WIDE R4, R4, R11, c[0x0][0x168]
  %".7300" = load i32, ptr %"R4"
  %".7301" = load i32, ptr %"R11"
  %"imad_ext1.84" = zext i32 %".7300" to i64
  %"imad_ext2.84" = zext i32 %".7301" to i64
  %"imad_mul.100" = mul i64 %"imad_ext1.84", %"imad_ext2.84"
  %".7302" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.100" = add i64 %"imad_mul.100", %".7302"
  %".7303" = and i64 %"imad_add.100", 18446744069414584320
  %".7304" = lshr i64 %".7303", 32
  %"trunc32.198" = trunc i64 %".7304" to i32
  %"trunc32.199" = trunc i64 %"imad_add.100" to i32
  store i32 %"trunc32.199", ptr %"R4"
  store i32 %"trunc32.198", ptr %"R5"
  ; LDG.E.SYS R24, [R6+0x4]
  %".7308" = load i32, ptr %"R6"
  %"zext.726" = zext i32 %".7308" to i64
  %".7309" = load i32, ptr %"R7"
  %"zext.727" = zext i32 %".7309" to i64
  %"shl.383" = shl i64 %"zext.727", 32
  %"or.348" = or i64 %"shl.383", %"zext.726"
  %"ptr_plus_imm.229" = add i64 %"or.348", 4
  %"inttoptr_bytes.318" = inttoptr i64 %"ptr_plus_imm.229" to ptr addrspace(1)
  %"ptr_cast_for_access.318" = bitcast ptr addrspace(1) %"inttoptr_bytes.318" to ptr addrspace(1)
  %".7310" = load float, ptr addrspace(1) %"ptr_cast_for_access.318"
  %".7311" = bitcast ptr %"R24" to ptr
  store float %".7310", ptr %".7311"
  ; LDG.E.SYS R37, [R8+0x8]
  %".7314" = load i32, ptr %"R8"
  %"zext.728" = zext i32 %".7314" to i64
  %".7315" = load i32, ptr %"R9"
  %"zext.729" = zext i32 %".7315" to i64
  %"shl.384" = shl i64 %"zext.729", 32
  %"or.349" = or i64 %"shl.384", %"zext.728"
  %"ptr_plus_imm.230" = add i64 %"or.349", 8
  %"inttoptr_bytes.319" = inttoptr i64 %"ptr_plus_imm.230" to ptr addrspace(1)
  %"ptr_cast_for_access.319" = bitcast ptr addrspace(1) %"inttoptr_bytes.319" to ptr addrspace(1)
  %".7316" = load float, ptr addrspace(1) %"ptr_cast_for_access.319"
  %".7317" = bitcast ptr %"R37" to ptr
  store float %".7316", ptr %".7317"
  ; IMAD.WIDE R10, R10, R11, c[0x0][0x170]
  %".7320" = load i32, ptr %"R10"
  %".7321" = load i32, ptr %"R11"
  %"imad_ext1.85" = zext i32 %".7320" to i64
  %"imad_ext2.85" = zext i32 %".7321" to i64
  %"imad_mul.101" = mul i64 %"imad_ext1.85", %"imad_ext2.85"
  %".7322" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.101" = add i64 %"imad_mul.101", %".7322"
  %".7323" = and i64 %"imad_add.101", 18446744069414584320
  %".7324" = lshr i64 %".7323", 32
  %"trunc32.200" = trunc i64 %".7324" to i32
  %"trunc32.201" = trunc i64 %"imad_add.101" to i32
  store i32 %"trunc32.201", ptr %"R10"
  store i32 %"trunc32.200", ptr %"R11"
  ; LDG.E.SYS R36, [R6+0x8]
  %".7328" = load i32, ptr %"R6"
  %"zext.730" = zext i32 %".7328" to i64
  %".7329" = load i32, ptr %"R7"
  %"zext.731" = zext i32 %".7329" to i64
  %"shl.385" = shl i64 %"zext.731", 32
  %"or.350" = or i64 %"shl.385", %"zext.730"
  %"ptr_plus_imm.231" = add i64 %"or.350", 8
  %"inttoptr_bytes.320" = inttoptr i64 %"ptr_plus_imm.231" to ptr addrspace(1)
  %"ptr_cast_for_access.320" = bitcast ptr addrspace(1) %"inttoptr_bytes.320" to ptr addrspace(1)
  %".7330" = load float, ptr addrspace(1) %"ptr_cast_for_access.320"
  %".7331" = bitcast ptr %"R36" to ptr
  store float %".7330", ptr %".7331"
  ; LDG.E.SYS R39, [R8+0xc]
  %".7334" = load i32, ptr %"R8"
  %"zext.732" = zext i32 %".7334" to i64
  %".7335" = load i32, ptr %"R9"
  %"zext.733" = zext i32 %".7335" to i64
  %"shl.386" = shl i64 %"zext.733", 32
  %"or.351" = or i64 %"shl.386", %"zext.732"
  %"ptr_plus_imm.232" = add i64 %"or.351", 12
  %"inttoptr_bytes.321" = inttoptr i64 %"ptr_plus_imm.232" to ptr addrspace(1)
  %"ptr_cast_for_access.321" = bitcast ptr addrspace(1) %"inttoptr_bytes.321" to ptr addrspace(1)
  %".7336" = load float, ptr addrspace(1) %"ptr_cast_for_access.321"
  %".7337" = bitcast ptr %"R39" to ptr
  store float %".7336", ptr %".7337"
  ; LDG.E.SYS R38, [R6+0xc]
  %".7340" = load i32, ptr %"R6"
  %"zext.734" = zext i32 %".7340" to i64
  %".7341" = load i32, ptr %"R7"
  %"zext.735" = zext i32 %".7341" to i64
  %"shl.387" = shl i64 %"zext.735", 32
  %"or.352" = or i64 %"shl.387", %"zext.734"
  %"ptr_plus_imm.233" = add i64 %"or.352", 12
  %"inttoptr_bytes.322" = inttoptr i64 %"ptr_plus_imm.233" to ptr addrspace(1)
  %"ptr_cast_for_access.322" = bitcast ptr addrspace(1) %"inttoptr_bytes.322" to ptr addrspace(1)
  %".7342" = load float, ptr addrspace(1) %"ptr_cast_for_access.322"
  %".7343" = bitcast ptr %"R38" to ptr
  store float %".7342", ptr %".7343"
  ; LDG.E.SYS R41, [R4]
  %".7346" = load i32, ptr %"R4"
  %"zext.736" = zext i32 %".7346" to i64
  %".7347" = load i32, ptr %"R5"
  %"zext.737" = zext i32 %".7347" to i64
  %"shl.388" = shl i64 %"zext.737", 32
  %"or.353" = or i64 %"shl.388", %"zext.736"
  %"inttoptr_bytes.323" = inttoptr i64 %"or.353" to ptr addrspace(1)
  %"ptr_cast_for_access.323" = bitcast ptr addrspace(1) %"inttoptr_bytes.323" to ptr addrspace(1)
  %".7348" = load float, ptr addrspace(1) %"ptr_cast_for_access.323"
  %".7349" = bitcast ptr %"R41" to ptr
  store float %".7348", ptr %".7349"
  ; LDG.E.SYS R40, [R10]
  %".7352" = load i32, ptr %"R10"
  %"zext.738" = zext i32 %".7352" to i64
  %".7353" = load i32, ptr %"R11"
  %"zext.739" = zext i32 %".7353" to i64
  %"shl.389" = shl i64 %"zext.739", 32
  %"or.354" = or i64 %"shl.389", %"zext.738"
  %"inttoptr_bytes.324" = inttoptr i64 %"or.354" to ptr addrspace(1)
  %"ptr_cast_for_access.324" = bitcast ptr addrspace(1) %"inttoptr_bytes.324" to ptr addrspace(1)
  %".7354" = load float, ptr addrspace(1) %"ptr_cast_for_access.324"
  %".7355" = bitcast ptr %"R40" to ptr
  store float %".7354", ptr %".7355"
  ; LDG.E.SYS R43, [R4+0x4]
  %".7358" = load i32, ptr %"R4"
  %"zext.740" = zext i32 %".7358" to i64
  %".7359" = load i32, ptr %"R5"
  %"zext.741" = zext i32 %".7359" to i64
  %"shl.390" = shl i64 %"zext.741", 32
  %"or.355" = or i64 %"shl.390", %"zext.740"
  %"ptr_plus_imm.234" = add i64 %"or.355", 4
  %"inttoptr_bytes.325" = inttoptr i64 %"ptr_plus_imm.234" to ptr addrspace(1)
  %"ptr_cast_for_access.325" = bitcast ptr addrspace(1) %"inttoptr_bytes.325" to ptr addrspace(1)
  %".7360" = load float, ptr addrspace(1) %"ptr_cast_for_access.325"
  %".7361" = bitcast ptr %"R43" to ptr
  store float %".7360", ptr %".7361"
  ; LDG.E.SYS R42, [R10+0x4]
  %".7364" = load i32, ptr %"R10"
  %"zext.742" = zext i32 %".7364" to i64
  %".7365" = load i32, ptr %"R11"
  %"zext.743" = zext i32 %".7365" to i64
  %"shl.391" = shl i64 %"zext.743", 32
  %"or.356" = or i64 %"shl.391", %"zext.742"
  %"ptr_plus_imm.235" = add i64 %"or.356", 4
  %"inttoptr_bytes.326" = inttoptr i64 %"ptr_plus_imm.235" to ptr addrspace(1)
  %"ptr_cast_for_access.326" = bitcast ptr addrspace(1) %"inttoptr_bytes.326" to ptr addrspace(1)
  %".7366" = load float, ptr addrspace(1) %"ptr_cast_for_access.326"
  %".7367" = bitcast ptr %"R42" to ptr
  store float %".7366", ptr %".7367"
  ; LDG.E.SYS R45, [R4+0x8]
  %".7370" = load i32, ptr %"R4"
  %"zext.744" = zext i32 %".7370" to i64
  %".7371" = load i32, ptr %"R5"
  %"zext.745" = zext i32 %".7371" to i64
  %"shl.392" = shl i64 %"zext.745", 32
  %"or.357" = or i64 %"shl.392", %"zext.744"
  %"ptr_plus_imm.236" = add i64 %"or.357", 8
  %"inttoptr_bytes.327" = inttoptr i64 %"ptr_plus_imm.236" to ptr addrspace(1)
  %"ptr_cast_for_access.327" = bitcast ptr addrspace(1) %"inttoptr_bytes.327" to ptr addrspace(1)
  %".7372" = load float, ptr addrspace(1) %"ptr_cast_for_access.327"
  %".7373" = bitcast ptr %"R45" to ptr
  store float %".7372", ptr %".7373"
  ; LDG.E.SYS R47, [R4+0xc]
  %".7376" = load i32, ptr %"R4"
  %"zext.746" = zext i32 %".7376" to i64
  %".7377" = load i32, ptr %"R5"
  %"zext.747" = zext i32 %".7377" to i64
  %"shl.393" = shl i64 %"zext.747", 32
  %"or.358" = or i64 %"shl.393", %"zext.746"
  %"ptr_plus_imm.237" = add i64 %"or.358", 12
  %"inttoptr_bytes.328" = inttoptr i64 %"ptr_plus_imm.237" to ptr addrspace(1)
  %"ptr_cast_for_access.328" = bitcast ptr addrspace(1) %"inttoptr_bytes.328" to ptr addrspace(1)
  %".7378" = load float, ptr addrspace(1) %"ptr_cast_for_access.328"
  %".7379" = bitcast ptr %"R47" to ptr
  store float %".7378", ptr %".7379"
  ; LDG.E.SYS R44, [R10+0x8]
  %".7382" = load i32, ptr %"R10"
  %"zext.748" = zext i32 %".7382" to i64
  %".7383" = load i32, ptr %"R11"
  %"zext.749" = zext i32 %".7383" to i64
  %"shl.394" = shl i64 %"zext.749", 32
  %"or.359" = or i64 %"shl.394", %"zext.748"
  %"ptr_plus_imm.238" = add i64 %"or.359", 8
  %"inttoptr_bytes.329" = inttoptr i64 %"ptr_plus_imm.238" to ptr addrspace(1)
  %"ptr_cast_for_access.329" = bitcast ptr addrspace(1) %"inttoptr_bytes.329" to ptr addrspace(1)
  %".7384" = load float, ptr addrspace(1) %"ptr_cast_for_access.329"
  %".7385" = bitcast ptr %"R44" to ptr
  store float %".7384", ptr %".7385"
  ; LDG.E.SYS R46, [R10+0xc]
  %".7388" = load i32, ptr %"R10"
  %"zext.750" = zext i32 %".7388" to i64
  %".7389" = load i32, ptr %"R11"
  %"zext.751" = zext i32 %".7389" to i64
  %"shl.395" = shl i64 %"zext.751", 32
  %"or.360" = or i64 %"shl.395", %"zext.750"
  %"ptr_plus_imm.239" = add i64 %"or.360", 12
  %"inttoptr_bytes.330" = inttoptr i64 %"ptr_plus_imm.239" to ptr addrspace(1)
  %"ptr_cast_for_access.330" = bitcast ptr addrspace(1) %"inttoptr_bytes.330" to ptr addrspace(1)
  %".7390" = load float, ptr addrspace(1) %"ptr_cast_for_access.330"
  %".7391" = bitcast ptr %"R46" to ptr
  store float %".7390", ptr %".7391"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".7394" = xor i1 1, 1
  %".7395" = and i1 %".7394", 1
  %".7396" = and i1 %".7395", 1
  ; IADD3 R35, R35, -0x8, RZ
  %".7398" = load i32, ptr %"R35"
  %".7399" = add i32 %".7398", -8
  %".7400" = add i32 %".7399", 0
  store i32 %".7400", ptr %"R35"
  ; IADD3 R34, R34, 0x8, RZ
  %".7403" = load i32, ptr %"R34"
  %".7404" = add i32 %".7403", 8
  %".7405" = add i32 %".7404", 0
  store i32 %".7405", ptr %"R34"
  ; FMUL R8, R13, R22
  %".7408" = load float, ptr %"R13"
  %".7409" = load float, ptr %"R22"
  %"fmul.308" = fmul float %".7408", %".7409"
  %".7410" = bitcast ptr %"R8" to ptr
  store float %"fmul.308", ptr %".7410"
  ; FFMA R8, R8, R12, R21
  %".7413" = load float, ptr %"R8"
  %".7414" = load float, ptr %"R12"
  %".7415" = load float, ptr %"R21"
  %"fmul.309" = fmul float %".7413", %".7414"
  %"fadd.281" = fadd float %"fmul.309", %".7415"
  %".7416" = bitcast ptr %"R8" to ptr
  store float %"fadd.281", ptr %".7416"
  ; FMUL R25, R25, R22
  %".7419" = load float, ptr %"R25"
  %".7420" = load float, ptr %"R22"
  %"fmul.310" = fmul float %".7419", %".7420"
  %".7421" = bitcast ptr %"R25" to ptr
  store float %"fmul.310", ptr %".7421"
  ; FFMA R8, R25, R24, R8
  %".7424" = load float, ptr %"R25"
  %".7425" = load float, ptr %"R24"
  %".7426" = load float, ptr %"R8"
  %"fmul.311" = fmul float %".7424", %".7425"
  %"fadd.282" = fadd float %"fmul.311", %".7426"
  %".7427" = bitcast ptr %"R8" to ptr
  store float %"fadd.282", ptr %".7427"
  ; FMUL R37, R37, R22
  %".7430" = load float, ptr %"R37"
  %".7431" = load float, ptr %"R22"
  %"fmul.312" = fmul float %".7430", %".7431"
  %".7432" = bitcast ptr %"R37" to ptr
  store float %"fmul.312", ptr %".7432"
  ; FFMA R8, R37, R36, R8
  %".7435" = load float, ptr %"R37"
  %".7436" = load float, ptr %"R36"
  %".7437" = load float, ptr %"R8"
  %"fmul.313" = fmul float %".7435", %".7436"
  %"fadd.283" = fadd float %"fmul.313", %".7437"
  %".7438" = bitcast ptr %"R8" to ptr
  store float %"fadd.283", ptr %".7438"
  ; FMUL R39, R39, R22
  %".7441" = load float, ptr %"R39"
  %".7442" = load float, ptr %"R22"
  %"fmul.314" = fmul float %".7441", %".7442"
  %".7443" = bitcast ptr %"R39" to ptr
  store float %"fmul.314", ptr %".7443"
  ; FFMA R8, R39, R38, R8
  %".7446" = load float, ptr %"R39"
  %".7447" = load float, ptr %"R38"
  %".7448" = load float, ptr %"R8"
  %"fmul.315" = fmul float %".7446", %".7447"
  %"fadd.284" = fadd float %"fmul.315", %".7448"
  %".7449" = bitcast ptr %"R8" to ptr
  store float %"fadd.284", ptr %".7449"
  ; FMUL R41, R41, R22
  %".7452" = load float, ptr %"R41"
  %".7453" = load float, ptr %"R22"
  %"fmul.316" = fmul float %".7452", %".7453"
  %".7454" = bitcast ptr %"R41" to ptr
  store float %"fmul.316", ptr %".7454"
  ; FFMA R8, R41, R40, R8
  %".7457" = load float, ptr %"R41"
  %".7458" = load float, ptr %"R40"
  %".7459" = load float, ptr %"R8"
  %"fmul.317" = fmul float %".7457", %".7458"
  %"fadd.285" = fadd float %"fmul.317", %".7459"
  %".7460" = bitcast ptr %"R8" to ptr
  store float %"fadd.285", ptr %".7460"
  ; FMUL R43, R43, R22
  %".7463" = load float, ptr %"R43"
  %".7464" = load float, ptr %"R22"
  %"fmul.318" = fmul float %".7463", %".7464"
  %".7465" = bitcast ptr %"R43" to ptr
  store float %"fmul.318", ptr %".7465"
  ; FFMA R8, R43, R42, R8
  %".7468" = load float, ptr %"R43"
  %".7469" = load float, ptr %"R42"
  %".7470" = load float, ptr %"R8"
  %"fmul.319" = fmul float %".7468", %".7469"
  %"fadd.286" = fadd float %"fmul.319", %".7470"
  %".7471" = bitcast ptr %"R8" to ptr
  store float %"fadd.286", ptr %".7471"
  ; FMUL R45, R45, R22.reuse
  %".7474" = load float, ptr %"R45"
  %".7475" = load float, ptr %"R22"
  %"fmul.320" = fmul float %".7474", %".7475"
  %".7476" = bitcast ptr %"R45" to ptr
  store float %"fmul.320", ptr %".7476"
  ; FMUL R47, R47, R22
  %".7479" = load float, ptr %"R47"
  %".7480" = load float, ptr %"R22"
  %"fmul.321" = fmul float %".7479", %".7480"
  %".7481" = bitcast ptr %"R47" to ptr
  store float %"fmul.321", ptr %".7481"
  ; FFMA R8, R45, R44, R8
  %".7484" = load float, ptr %"R45"
  %".7485" = load float, ptr %"R44"
  %".7486" = load float, ptr %"R8"
  %"fmul.322" = fmul float %".7484", %".7485"
  %"fadd.287" = fadd float %"fmul.322", %".7486"
  %".7487" = bitcast ptr %"R8" to ptr
  store float %"fadd.287", ptr %".7487"
  ; FFMA R21, R47, R46, R8
  %".7490" = load float, ptr %"R47"
  %".7491" = load float, ptr %"R46"
  %".7492" = load float, ptr %"R8"
  %"fmul.323" = fmul float %".7490", %".7491"
  %"fadd.288" = fadd float %"fmul.323", %".7492"
  %".7493" = bitcast ptr %"R21" to ptr
  store float %"fadd.288", ptr %".7493"
  br label %".L_x_40"
.L_x_40:
  ; ISETP.NE.OR P0, PT, R35, RZ, P0
  %".7497" = load i32, ptr %"R35"
  %".7498" = load i1, ptr %"P0"
  %"cmp.62" = icmp ne i32 %".7497", 0
  %".7499" = xor i1 %"cmp.62", -1
  %".7500" = or i1 %"cmp.62", %".7498"
  %".7501" = or i1 %".7499", %".7498"
  store i1 %".7500", ptr %"P0"
  ; @!P0 BRA `(.L_x_36)
  %".7504" = load i1, ptr %"P0"
  %".7505" = icmp ne i1 %".7504", 1
  br i1 %".7505", label %".L_x_36", label %".L_x_37"
.L_x_37:
  ; MOV R7, 0x4
  store i32 4, ptr %"R7"
  ; IADD3 R6, R3, R34, RZ
  %".7510" = load i32, ptr %"R3"
  %".7511" = load i32, ptr %"R34"
  %".7512" = add i32 %".7510", %".7511"
  %".7513" = add i32 %".7512", 0
  store i32 %".7513", ptr %"R6"
  ; IMAD.WIDE R4, R34, R7, c[0x0][0x168]
  %".7516" = load i32, ptr %"R34"
  %".7517" = load i32, ptr %"R7"
  %"imad_ext1.86" = zext i32 %".7516" to i64
  %"imad_ext2.86" = zext i32 %".7517" to i64
  %"imad_mul.102" = mul i64 %"imad_ext1.86", %"imad_ext2.86"
  %".7518" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.102" = add i64 %"imad_mul.102", %".7518"
  %".7519" = and i64 %"imad_add.102", 18446744069414584320
  %".7520" = lshr i64 %".7519", 32
  %"trunc32.202" = trunc i64 %".7520" to i32
  %"trunc32.203" = trunc i64 %"imad_add.102" to i32
  store i32 %"trunc32.203", ptr %"R4"
  store i32 %"trunc32.202", ptr %"R5"
  ; IMAD.WIDE R6, R6, R7, c[0x0][0x170]
  %".7524" = load i32, ptr %"R6"
  %".7525" = load i32, ptr %"R7"
  %"imad_ext1.87" = zext i32 %".7524" to i64
  %"imad_ext2.87" = zext i32 %".7525" to i64
  %"imad_mul.103" = mul i64 %"imad_ext1.87", %"imad_ext2.87"
  %".7526" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.103" = add i64 %"imad_mul.103", %".7526"
  %".7527" = and i64 %"imad_add.103", 18446744069414584320
  %".7528" = lshr i64 %".7527", 32
  %"trunc32.204" = trunc i64 %".7528" to i32
  %"trunc32.205" = trunc i64 %"imad_add.103" to i32
  store i32 %"trunc32.205", ptr %"R6"
  store i32 %"trunc32.204", ptr %"R7"
  ; LDG.E.SYS R9, [R4]
  %".7532" = load i32, ptr %"R4"
  %"zext.752" = zext i32 %".7532" to i64
  %".7533" = load i32, ptr %"R5"
  %"zext.753" = zext i32 %".7533" to i64
  %"shl.396" = shl i64 %"zext.753", 32
  %"or.361" = or i64 %"shl.396", %"zext.752"
  %"inttoptr_bytes.331" = inttoptr i64 %"or.361" to ptr addrspace(1)
  %"ptr_cast_for_access.331" = bitcast ptr addrspace(1) %"inttoptr_bytes.331" to ptr addrspace(1)
  %".7534" = load float, ptr addrspace(1) %"ptr_cast_for_access.331"
  %".7535" = bitcast ptr %"R9" to ptr
  store float %".7534", ptr %".7535"
  ; LDG.E.SYS R10, [R6]
  %".7538" = load i32, ptr %"R6"
  %"zext.754" = zext i32 %".7538" to i64
  %".7539" = load i32, ptr %"R7"
  %"zext.755" = zext i32 %".7539" to i64
  %"shl.397" = shl i64 %"zext.755", 32
  %"or.362" = or i64 %"shl.397", %"zext.754"
  %"inttoptr_bytes.332" = inttoptr i64 %"or.362" to ptr addrspace(1)
  %"ptr_cast_for_access.332" = bitcast ptr addrspace(1) %"inttoptr_bytes.332" to ptr addrspace(1)
  %".7540" = load float, ptr addrspace(1) %"ptr_cast_for_access.332"
  %".7541" = bitcast ptr %"R10" to ptr
  store float %".7540", ptr %".7541"
  ; LDG.E.SYS R11, [R4+0x4]
  %".7544" = load i32, ptr %"R4"
  %"zext.756" = zext i32 %".7544" to i64
  %".7545" = load i32, ptr %"R5"
  %"zext.757" = zext i32 %".7545" to i64
  %"shl.398" = shl i64 %"zext.757", 32
  %"or.363" = or i64 %"shl.398", %"zext.756"
  %"ptr_plus_imm.240" = add i64 %"or.363", 4
  %"inttoptr_bytes.333" = inttoptr i64 %"ptr_plus_imm.240" to ptr addrspace(1)
  %"ptr_cast_for_access.333" = bitcast ptr addrspace(1) %"inttoptr_bytes.333" to ptr addrspace(1)
  %".7546" = load float, ptr addrspace(1) %"ptr_cast_for_access.333"
  %".7547" = bitcast ptr %"R11" to ptr
  store float %".7546", ptr %".7547"
  ; LDG.E.SYS R12, [R6+0x4]
  %".7550" = load i32, ptr %"R6"
  %"zext.758" = zext i32 %".7550" to i64
  %".7551" = load i32, ptr %"R7"
  %"zext.759" = zext i32 %".7551" to i64
  %"shl.399" = shl i64 %"zext.759", 32
  %"or.364" = or i64 %"shl.399", %"zext.758"
  %"ptr_plus_imm.241" = add i64 %"or.364", 4
  %"inttoptr_bytes.334" = inttoptr i64 %"ptr_plus_imm.241" to ptr addrspace(1)
  %"ptr_cast_for_access.334" = bitcast ptr addrspace(1) %"inttoptr_bytes.334" to ptr addrspace(1)
  %".7552" = load float, ptr addrspace(1) %"ptr_cast_for_access.334"
  %".7553" = bitcast ptr %"R12" to ptr
  store float %".7552", ptr %".7553"
  ; LDG.E.SYS R13, [R4+0x8]
  %".7556" = load i32, ptr %"R4"
  %"zext.760" = zext i32 %".7556" to i64
  %".7557" = load i32, ptr %"R5"
  %"zext.761" = zext i32 %".7557" to i64
  %"shl.400" = shl i64 %"zext.761", 32
  %"or.365" = or i64 %"shl.400", %"zext.760"
  %"ptr_plus_imm.242" = add i64 %"or.365", 8
  %"inttoptr_bytes.335" = inttoptr i64 %"ptr_plus_imm.242" to ptr addrspace(1)
  %"ptr_cast_for_access.335" = bitcast ptr addrspace(1) %"inttoptr_bytes.335" to ptr addrspace(1)
  %".7558" = load float, ptr addrspace(1) %"ptr_cast_for_access.335"
  %".7559" = bitcast ptr %"R13" to ptr
  store float %".7558", ptr %".7559"
  ; LDG.E.SYS R24, [R6+0x8]
  %".7562" = load i32, ptr %"R6"
  %"zext.762" = zext i32 %".7562" to i64
  %".7563" = load i32, ptr %"R7"
  %"zext.763" = zext i32 %".7563" to i64
  %"shl.401" = shl i64 %"zext.763", 32
  %"or.366" = or i64 %"shl.401", %"zext.762"
  %"ptr_plus_imm.243" = add i64 %"or.366", 8
  %"inttoptr_bytes.336" = inttoptr i64 %"ptr_plus_imm.243" to ptr addrspace(1)
  %"ptr_cast_for_access.336" = bitcast ptr addrspace(1) %"inttoptr_bytes.336" to ptr addrspace(1)
  %".7564" = load float, ptr addrspace(1) %"ptr_cast_for_access.336"
  %".7565" = bitcast ptr %"R24" to ptr
  store float %".7564", ptr %".7565"
  ; LDG.E.SYS R25, [R4+0xc]
  %".7568" = load i32, ptr %"R4"
  %"zext.764" = zext i32 %".7568" to i64
  %".7569" = load i32, ptr %"R5"
  %"zext.765" = zext i32 %".7569" to i64
  %"shl.402" = shl i64 %"zext.765", 32
  %"or.367" = or i64 %"shl.402", %"zext.764"
  %"ptr_plus_imm.244" = add i64 %"or.367", 12
  %"inttoptr_bytes.337" = inttoptr i64 %"ptr_plus_imm.244" to ptr addrspace(1)
  %"ptr_cast_for_access.337" = bitcast ptr addrspace(1) %"inttoptr_bytes.337" to ptr addrspace(1)
  %".7570" = load float, ptr addrspace(1) %"ptr_cast_for_access.337"
  %".7571" = bitcast ptr %"R25" to ptr
  store float %".7570", ptr %".7571"
  ; LDG.E.SYS R36, [R6+0xc]
  %".7574" = load i32, ptr %"R6"
  %"zext.766" = zext i32 %".7574" to i64
  %".7575" = load i32, ptr %"R7"
  %"zext.767" = zext i32 %".7575" to i64
  %"shl.403" = shl i64 %"zext.767", 32
  %"or.368" = or i64 %"shl.403", %"zext.766"
  %"ptr_plus_imm.245" = add i64 %"or.368", 12
  %"inttoptr_bytes.338" = inttoptr i64 %"ptr_plus_imm.245" to ptr addrspace(1)
  %"ptr_cast_for_access.338" = bitcast ptr addrspace(1) %"inttoptr_bytes.338" to ptr addrspace(1)
  %".7576" = load float, ptr addrspace(1) %"ptr_cast_for_access.338"
  %".7577" = bitcast ptr %"R36" to ptr
  store float %".7576", ptr %".7577"
  ; IADD3 R35, R35, -0x4, RZ
  %".7580" = load i32, ptr %"R35"
  %".7581" = add i32 %".7580", -4
  %".7582" = add i32 %".7581", 0
  store i32 %".7582", ptr %"R35"
  ; IADD3 R34, R34, 0x4, RZ
  %".7585" = load i32, ptr %"R34"
  %".7586" = add i32 %".7585", 4
  %".7587" = add i32 %".7586", 0
  store i32 %".7587", ptr %"R34"
  ; ISETP.NE.AND P0, PT, R35, RZ, PT
  %".7590" = load i32, ptr %"R35"
  %".7591" = load i1, ptr %"PT"
  %"cmp.63" = icmp ne i32 %".7590", 0
  %".7592" = xor i1 %"cmp.63", -1
  %".7593" = and i1 %"cmp.63", %".7591"
  %".7594" = and i1 %".7592", %".7591"
  store i1 %".7593", ptr %"P0"
  ; FMUL R8, R9, R22
  %".7597" = load float, ptr %"R9"
  %".7598" = load float, ptr %"R22"
  %"fmul.324" = fmul float %".7597", %".7598"
  %".7599" = bitcast ptr %"R8" to ptr
  store float %"fmul.324", ptr %".7599"
  ; FFMA R8, R8, R10, R21
  %".7602" = load float, ptr %"R8"
  %".7603" = load float, ptr %"R10"
  %".7604" = load float, ptr %"R21"
  %"fmul.325" = fmul float %".7602", %".7603"
  %"fadd.289" = fadd float %"fmul.325", %".7604"
  %".7605" = bitcast ptr %"R8" to ptr
  store float %"fadd.289", ptr %".7605"
  ; FMUL R11, R11, R22
  %".7608" = load float, ptr %"R11"
  %".7609" = load float, ptr %"R22"
  %"fmul.326" = fmul float %".7608", %".7609"
  %".7610" = bitcast ptr %"R11" to ptr
  store float %"fmul.326", ptr %".7610"
  ; FFMA R8, R11, R12, R8
  %".7613" = load float, ptr %"R11"
  %".7614" = load float, ptr %"R12"
  %".7615" = load float, ptr %"R8"
  %"fmul.327" = fmul float %".7613", %".7614"
  %"fadd.290" = fadd float %"fmul.327", %".7615"
  %".7616" = bitcast ptr %"R8" to ptr
  store float %"fadd.290", ptr %".7616"
  ; FMUL R13, R13, R22
  %".7619" = load float, ptr %"R13"
  %".7620" = load float, ptr %"R22"
  %"fmul.328" = fmul float %".7619", %".7620"
  %".7621" = bitcast ptr %"R13" to ptr
  store float %"fmul.328", ptr %".7621"
  ; FFMA R8, R13, R24, R8
  %".7624" = load float, ptr %"R13"
  %".7625" = load float, ptr %"R24"
  %".7626" = load float, ptr %"R8"
  %"fmul.329" = fmul float %".7624", %".7625"
  %"fadd.291" = fadd float %"fmul.329", %".7626"
  %".7627" = bitcast ptr %"R8" to ptr
  store float %"fadd.291", ptr %".7627"
  ; FMUL R25, R25, R22
  %".7630" = load float, ptr %"R25"
  %".7631" = load float, ptr %"R22"
  %"fmul.330" = fmul float %".7630", %".7631"
  %".7632" = bitcast ptr %"R25" to ptr
  store float %"fmul.330", ptr %".7632"
  ; FFMA R21, R25, R36, R8
  %".7635" = load float, ptr %"R25"
  %".7636" = load float, ptr %"R36"
  %".7637" = load float, ptr %"R8"
  %"fmul.331" = fmul float %".7635", %".7636"
  %"fadd.292" = fadd float %"fmul.331", %".7637"
  %".7638" = bitcast ptr %"R21" to ptr
  store float %"fadd.292", ptr %".7638"
  ; @P0 BRA `(.L_x_37)
  %".7641" = load i1, ptr %"P0"
  %".7642" = icmp eq i1 %".7641", 1
  br i1 %".7642", label %".L_x_37", label %".L_x_36"
.L_x_36:
  ; ISETP.NE.AND P0, PT, R48, RZ, PT
  %".7645" = load i32, ptr %"R48"
  %".7646" = load i1, ptr %"PT"
  %"cmp.64" = icmp ne i32 %".7645", 0
  %".7647" = xor i1 %"cmp.64", -1
  %".7648" = and i1 %"cmp.64", %".7646"
  %".7649" = and i1 %".7647", %".7646"
  store i1 %".7648", ptr %"P0"
  ; @!P0 BRA `(.L_x_35)
  %".7652" = load i1, ptr %"P0"
  %".7653" = icmp ne i1 %".7652", 1
  br i1 %".7653", label %".L_x_35", label %".L_x_36_split_0x44e0"
.L_x_36_split_0x44e0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IADD3 R4, R3, R34, RZ
  %".7658" = load i32, ptr %"R3"
  %".7659" = load i32, ptr %"R34"
  %".7660" = add i32 %".7658", %".7659"
  %".7661" = add i32 %".7660", 0
  store i32 %".7661", ptr %"R4"
  ; IMAD.WIDE R34, R34, R5, c[0x0][0x168]
  %".7664" = load i32, ptr %"R34"
  %".7665" = load i32, ptr %"R5"
  %"imad_ext1.88" = zext i32 %".7664" to i64
  %"imad_ext2.88" = zext i32 %".7665" to i64
  %"imad_mul.104" = mul i64 %"imad_ext1.88", %"imad_ext2.88"
  %".7666" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.104" = add i64 %"imad_mul.104", %".7666"
  %".7667" = and i64 %"imad_add.104", 18446744069414584320
  %".7668" = lshr i64 %".7667", 32
  %"trunc32.206" = trunc i64 %".7668" to i32
  %"trunc32.207" = trunc i64 %"imad_add.104" to i32
  store i32 %"trunc32.207", ptr %"R34"
  store i32 %"trunc32.206", ptr %"R35"
  ; IMAD.WIDE R4, R4, R5, c[0x0][0x170]
  %".7672" = load i32, ptr %"R4"
  %".7673" = load i32, ptr %"R5"
  %"imad_ext1.89" = zext i32 %".7672" to i64
  %"imad_ext2.89" = zext i32 %".7673" to i64
  %"imad_mul.105" = mul i64 %"imad_ext1.89", %"imad_ext2.89"
  %".7674" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.105" = add i64 %"imad_mul.105", %".7674"
  %".7675" = and i64 %"imad_add.105", 18446744069414584320
  %".7676" = lshr i64 %".7675", 32
  %"trunc32.208" = trunc i64 %".7676" to i32
  %"trunc32.209" = trunc i64 %"imad_add.105" to i32
  store i32 %"trunc32.209", ptr %"R4"
  store i32 %"trunc32.208", ptr %"R5"
  ; LDG.E.SYS R7, [R34]
  %".7680" = load i32, ptr %"R34"
  %"zext.768" = zext i32 %".7680" to i64
  %".7681" = load i32, ptr %"R35"
  %"zext.769" = zext i32 %".7681" to i64
  %"shl.404" = shl i64 %"zext.769", 32
  %"or.369" = or i64 %"shl.404", %"zext.768"
  %"inttoptr_bytes.339" = inttoptr i64 %"or.369" to ptr addrspace(1)
  %"ptr_cast_for_access.339" = bitcast ptr addrspace(1) %"inttoptr_bytes.339" to ptr addrspace(1)
  %".7682" = load float, ptr addrspace(1) %"ptr_cast_for_access.339"
  %".7683" = bitcast ptr %"R7" to ptr
  store float %".7682", ptr %".7683"
  ; LDG.E.SYS R8, [R4]
  %".7686" = load i32, ptr %"R4"
  %"zext.770" = zext i32 %".7686" to i64
  %".7687" = load i32, ptr %"R5"
  %"zext.771" = zext i32 %".7687" to i64
  %"shl.405" = shl i64 %"zext.771", 32
  %"or.370" = or i64 %"shl.405", %"zext.770"
  %"inttoptr_bytes.340" = inttoptr i64 %"or.370" to ptr addrspace(1)
  %"ptr_cast_for_access.340" = bitcast ptr addrspace(1) %"inttoptr_bytes.340" to ptr addrspace(1)
  %".7688" = load float, ptr addrspace(1) %"ptr_cast_for_access.340"
  %".7689" = bitcast ptr %"R8" to ptr
  store float %".7688", ptr %".7689"
  ; ISETP.NE.AND P0, PT, R48, 0x1, PT
  %".7692" = load i32, ptr %"R48"
  %".7693" = load i1, ptr %"PT"
  %"cmp.65" = icmp ne i32 %".7692", 1
  %".7694" = xor i1 %"cmp.65", -1
  %".7695" = and i1 %"cmp.65", %".7693"
  %".7696" = and i1 %".7694", %".7693"
  store i1 %".7695", ptr %"P0"
  ; FMUL R6, R7, R22
  %".7699" = load float, ptr %"R7"
  %".7700" = load float, ptr %"R22"
  %"fmul.332" = fmul float %".7699", %".7700"
  %".7701" = bitcast ptr %"R6" to ptr
  store float %"fmul.332", ptr %".7701"
  ; FFMA R21, R6, R8, R21
  %".7704" = load float, ptr %"R6"
  %".7705" = load float, ptr %"R8"
  %".7706" = load float, ptr %"R21"
  %"fmul.333" = fmul float %".7704", %".7705"
  %"fadd.293" = fadd float %"fmul.333", %".7706"
  %".7707" = bitcast ptr %"R21" to ptr
  store float %"fadd.293", ptr %".7707"
  ; @!P0 BRA `(.L_x_35)
  %".7710" = load i1, ptr %"P0"
  %".7711" = icmp ne i1 %".7710", 1
  br i1 %".7711", label %".L_x_35", label %".L_x_36_split_0x4580"
.L_x_36_split_0x4580:
  ; ISETP.NE.AND P0, PT, R48, 0x2, PT
  %".7714" = load i32, ptr %"R48"
  %".7715" = load i1, ptr %"PT"
  %"cmp.66" = icmp ne i32 %".7714", 2
  %".7716" = xor i1 %"cmp.66", -1
  %".7717" = and i1 %"cmp.66", %".7715"
  %".7718" = and i1 %".7716", %".7715"
  store i1 %".7717", ptr %"P0"
  ; LDG.E.SYS R7, [R34+0x4]
  %".7721" = load i32, ptr %"R34"
  %"zext.772" = zext i32 %".7721" to i64
  %".7722" = load i32, ptr %"R35"
  %"zext.773" = zext i32 %".7722" to i64
  %"shl.406" = shl i64 %"zext.773", 32
  %"or.371" = or i64 %"shl.406", %"zext.772"
  %"ptr_plus_imm.246" = add i64 %"or.371", 4
  %"inttoptr_bytes.341" = inttoptr i64 %"ptr_plus_imm.246" to ptr addrspace(1)
  %"ptr_cast_for_access.341" = bitcast ptr addrspace(1) %"inttoptr_bytes.341" to ptr addrspace(1)
  %".7723" = load float, ptr addrspace(1) %"ptr_cast_for_access.341"
  %".7724" = bitcast ptr %"R7" to ptr
  store float %".7723", ptr %".7724"
  ; LDG.E.SYS R8, [R4+0x4]
  %".7727" = load i32, ptr %"R4"
  %"zext.774" = zext i32 %".7727" to i64
  %".7728" = load i32, ptr %"R5"
  %"zext.775" = zext i32 %".7728" to i64
  %"shl.407" = shl i64 %"zext.775", 32
  %"or.372" = or i64 %"shl.407", %"zext.774"
  %"ptr_plus_imm.247" = add i64 %"or.372", 4
  %"inttoptr_bytes.342" = inttoptr i64 %"ptr_plus_imm.247" to ptr addrspace(1)
  %"ptr_cast_for_access.342" = bitcast ptr addrspace(1) %"inttoptr_bytes.342" to ptr addrspace(1)
  %".7729" = load float, ptr addrspace(1) %"ptr_cast_for_access.342"
  %".7730" = bitcast ptr %"R8" to ptr
  store float %".7729", ptr %".7730"
  ; @P0 LDG.E.SYS R9, [R34+0x8]
  %".7733" = load i1, ptr %"P0"
  %".7734" = icmp eq i1 %".7733", 1
  br i1 %".7734", label %".L_x_36_split_0x4580_conditionalExpr_0x45b0", label %".L_x_36_split_0x45c0"
.L_x_36_split_0x4580_conditionalExpr_0x45b0:
  ; LDG.E.SYS R9, [R34+0x8]
  %".7737" = load i32, ptr %"R34"
  %"zext.776" = zext i32 %".7737" to i64
  %".7738" = load i32, ptr %"R35"
  %"zext.777" = zext i32 %".7738" to i64
  %"shl.408" = shl i64 %"zext.777", 32
  %"or.373" = or i64 %"shl.408", %"zext.776"
  %"ptr_plus_imm.248" = add i64 %"or.373", 8
  %"inttoptr_bytes.343" = inttoptr i64 %"ptr_plus_imm.248" to ptr addrspace(1)
  %"ptr_cast_for_access.343" = bitcast ptr addrspace(1) %"inttoptr_bytes.343" to ptr addrspace(1)
  %".7739" = load float, ptr addrspace(1) %"ptr_cast_for_access.343"
  %".7740" = bitcast ptr %"R9" to ptr
  store float %".7739", ptr %".7740"
  ; BRA `(.L_x_36_split_0x45c0)
  br label %".L_x_36_split_0x45c0"
.L_x_36_split_0x45c0:
  ; @P0 LDG.E.SYS R10, [R4+0x8]
  %".7745" = load i1, ptr %"P0"
  %".7746" = icmp eq i1 %".7745", 1
  br i1 %".7746", label %".L_x_36_split_0x45c0_conditionalExpr_0x45c0", label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45c0_conditionalExpr_0x45c0:
  ; LDG.E.SYS R10, [R4+0x8]
  %".7749" = load i32, ptr %"R4"
  %"zext.778" = zext i32 %".7749" to i64
  %".7750" = load i32, ptr %"R5"
  %"zext.779" = zext i32 %".7750" to i64
  %"shl.409" = shl i64 %"zext.779", 32
  %"or.374" = or i64 %"shl.409", %"zext.778"
  %"ptr_plus_imm.249" = add i64 %"or.374", 8
  %"inttoptr_bytes.344" = inttoptr i64 %"ptr_plus_imm.249" to ptr addrspace(1)
  %"ptr_cast_for_access.344" = bitcast ptr addrspace(1) %"inttoptr_bytes.344" to ptr addrspace(1)
  %".7751" = load float, ptr addrspace(1) %"ptr_cast_for_access.344"
  %".7752" = bitcast ptr %"R10" to ptr
  store float %".7751", ptr %".7752"
  ; BRA `(.L_x_36_split_0x45d0)
  br label %".L_x_36_split_0x45d0"
.L_x_36_split_0x45d0:
  ; FMUL R6, R7, R22
  %".7757" = load float, ptr %"R7"
  %".7758" = load float, ptr %"R22"
  %"fmul.334" = fmul float %".7757", %".7758"
  %".7759" = bitcast ptr %"R6" to ptr
  store float %"fmul.334", ptr %".7759"
  ; FFMA R21, R6, R8, R21
  %".7762" = load float, ptr %"R6"
  %".7763" = load float, ptr %"R8"
  %".7764" = load float, ptr %"R21"
  %"fmul.335" = fmul float %".7762", %".7763"
  %"fadd.294" = fadd float %"fmul.335", %".7764"
  %".7765" = bitcast ptr %"R21" to ptr
  store float %"fadd.294", ptr %".7765"
  ; @P0 FMUL R22, R9, R22
  %".7768" = load i1, ptr %"P0"
  %".7769" = icmp eq i1 %".7768", 1
  br i1 %".7769", label %".L_x_36_split_0x45d0_conditionalExpr_0x45f0", label %".L_x_36_split_0x4600"
.L_x_36_split_0x45d0_conditionalExpr_0x45f0:
  ; FMUL R22, R9, R22
  %".7772" = load float, ptr %"R9"
  %".7773" = load float, ptr %"R22"
  %"fmul.336" = fmul float %".7772", %".7773"
  %".7774" = bitcast ptr %"R22" to ptr
  store float %"fmul.336", ptr %".7774"
  ; BRA `(.L_x_36_split_0x4600)
  br label %".L_x_36_split_0x4600"
.L_x_36_split_0x4600:
  ; @P0 FFMA R21, R22, R10, R21
  %".7779" = load i1, ptr %"P0"
  %".7780" = icmp eq i1 %".7779", 1
  br i1 %".7780", label %".L_x_36_split_0x4600_conditionalExpr_0x4600", label %".L_x_35"
.L_x_36_split_0x4600_conditionalExpr_0x4600:
  ; FFMA R21, R22, R10, R21
  %".7783" = load float, ptr %"R22"
  %".7784" = load float, ptr %"R10"
  %".7785" = load float, ptr %"R21"
  %"fmul.337" = fmul float %".7783", %".7784"
  %"fadd.295" = fadd float %"fmul.337", %".7785"
  %".7786" = bitcast ptr %"R21" to ptr
  store float %"fadd.295", ptr %".7786"
  ; BRA `(.L_x_35)
  br label %".L_x_35"
.L_x_35:
  ; LDG.E.SYS R4, [R30]
  %".7791" = load i32, ptr %"R30"
  %"zext.780" = zext i32 %".7791" to i64
  %".7792" = load i32, ptr %"R31"
  %"zext.781" = zext i32 %".7792" to i64
  %"shl.410" = shl i64 %"zext.781", 32
  %"or.375" = or i64 %"shl.410", %"zext.780"
  %"inttoptr_bytes.345" = inttoptr i64 %"or.375" to ptr addrspace(1)
  %"ptr_cast_for_access.345" = bitcast ptr addrspace(1) %"inttoptr_bytes.345" to ptr addrspace(1)
  %".7793" = load float, ptr addrspace(1) %"ptr_cast_for_access.345"
  %".7794" = bitcast ptr %"R4" to ptr
  store float %".7793", ptr %".7794"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_41)
  ; FADD R21, R4, R21
  %".7799" = load float, ptr %"R4"
  %".7800" = load float, ptr %"R21"
  %"fadd.296" = fadd float %".7799", %".7800"
  %".7801" = bitcast ptr %"R21" to ptr
  store float %"fadd.296", ptr %".7801"
  ; FSETP.GE.AND P0, PT, |R21|, 0.60000002384185791016, PT
  %".7804" = load float, ptr %"R21"
  %"llvm_fabs_result.3" = call float @"llvm.fabs"(float %".7804")
  %".7805" = load i1, ptr %"PT"
  %"fcmp_unordered.2" = fcmp oge float %"llvm_fabs_result.3", 0x3fe3333340000000
  %".7806" = xor i1 %"fcmp_unordered.2", -1
  %".7807" = and i1 %"fcmp_unordered.2", %".7805"
  %".7808" = and i1 %".7806", %".7805"
  store i1 %".7807", ptr %"P0"
  ; @!P0 BRA `(.L_x_42)
  %".7811" = load i1, ptr %"P0"
  %".7812" = icmp ne i1 %".7811", 1
  br i1 %".7812", label %".L_x_42", label %".L_x_35_split_0x4670"
.L_x_35_split_0x4670:
  ; FMUL R5, |R21|.reuse, 2.8853900432586669922
  %".7815" = load float, ptr %"R21"
  %"llvm_fabs_result.4" = call float @"llvm.fabs"(float %".7815")
  %"fmul.338" = fmul float %"llvm_fabs_result.4", 0x4007154760000000
  %".7816" = bitcast ptr %"R5" to ptr
  store float %"fmul.338", ptr %".7816"
  ; MOV R7, 0x3f800000
  %".7819" = bitcast ptr %"R7" to ptr
  store float 0x41cfc00000000000, ptr %".7819"
  ; FSETP.GE.AND P0, PT, |R21|, 9.010913848876953125, PT
  %".7822" = load float, ptr %"R21"
  %"llvm_fabs_result.5" = call float @"llvm.fabs"(float %".7822")
  %".7823" = load i1, ptr %"PT"
  %"fcmp_unordered.3" = fcmp oge float %"llvm_fabs_result.5", 0x4022059680000000
  %".7824" = xor i1 %"fcmp_unordered.3", -1
  %".7825" = and i1 %"fcmp_unordered.3", %".7823"
  %".7826" = and i1 %".7824", %".7823"
  store i1 %".7825", ptr %"P0"
  ; MUFU.EX2 R5, R5
  %".7829" = load float, ptr %"R5"
  %"llvm_exp2_f32_result.5" = call float @"llvm.exp2.f32"(float %".7829")
  %".7830" = bitcast ptr %"R5" to ptr
  store float %"llvm_exp2_f32_result.5", ptr %".7830"
  ; FADD R6, R5, 1
  %".7833" = load float, ptr %"R5"
  %"fadd.297" = fadd float %".7833", 0x3ff0000000000000
  %".7834" = bitcast ptr %"R6" to ptr
  store float %"fadd.297", ptr %".7834"
  ; MUFU.RCP R6, R6
  %".7837" = load float, ptr %"R6"
  %".7838" = fdiv float 0x3ff0000000000000, %".7837"
  %".7839" = bitcast ptr %"R6" to ptr
  store float %".7838", ptr %".7839"
  ; FFMA R4, R6, -2, R7
  %".7842" = load float, ptr %"R6"
  %".7843" = load float, ptr %"R7"
  %"fmul.339" = fmul float %".7842", 0xc000000000000000
  %"fadd.298" = fadd float %"fmul.339", %".7843"
  %".7844" = bitcast ptr %"R4" to ptr
  store float %"fadd.298", ptr %".7844"
  ; FSEL R4, R4, 1, !P0
  %".7847" = load float, ptr %"R4"
  %".7848" = load i1, ptr %"P0"
  %".7849" = xor i1 %".7848", -1
  %".7850" = icmp eq i1 %".7849", 1
  %"fsel.1" = select  i1 %".7850", float %".7847", float 0x3ff0000000000000
  %".7851" = bitcast ptr %"R4" to ptr
  store float %"fsel.1", ptr %".7851"
  ; LOP3.LUT R4, R4, 0x80000000, R21, 0xf8, !PT
  %".7854" = load i32, ptr %"R4"
  %".7855" = load i32, ptr %"R21"
  %".7856" = xor i1 1, -1
  %".7857" = or i32 %".7854", 2147483648
  %".7858" = or i32 %".7854", %".7855"
  %".7859" = and i32 %".7857", %".7858"
  store i32 %".7859", ptr %"R4"
  ; BRA `(.L_x_43)
  br label %".L_x_43"
.L_x_42:
  ; MOV R5, 0x3c80f082
  %".7864" = bitcast ptr %"R5" to ptr
  store float 0x41ce407840000000, ptr %".7864"
  ; FMUL R4, R21, R21
  %".7867" = load float, ptr %"R21"
  %".7868" = load float, ptr %"R21"
  %"fmul.340" = fmul float %".7867", %".7868"
  %".7869" = bitcast ptr %"R4" to ptr
  store float %"fmul.340", ptr %".7869"
  ; FFMA R5, R4, R5, -0.052303962409496307373
  %".7872" = load float, ptr %"R4"
  %".7873" = load float, ptr %"R5"
  %"fmul.341" = fmul float %".7872", %".7873"
  %"fadd.299" = fadd float %"fmul.341", 0xbfaac795c0000000
  %".7874" = bitcast ptr %"R5" to ptr
  store float %"fadd.299", ptr %".7874"
  ; FFMA R5, R4, R5, 0.1331529766321182251
  %".7877" = load float, ptr %"R4"
  %".7878" = load float, ptr %"R5"
  %"fmul.342" = fmul float %".7877", %".7878"
  %"fadd.300" = fadd float %"fmul.342", 0x3fc10b2820000000
  %".7879" = bitcast ptr %"R5" to ptr
  store float %"fadd.300", ptr %".7879"
  ; FFMA R5, R4, R5, -0.33332768082618713379
  %".7882" = load float, ptr %"R4"
  %".7883" = load float, ptr %"R5"
  %"fmul.343" = fmul float %".7882", %".7883"
  %"fadd.301" = fadd float %"fmul.343", 0xbfd5553da0000000
  %".7884" = bitcast ptr %"R5" to ptr
  store float %"fadd.301", ptr %".7884"
  ; FFMA R4, R4, R5, RZ
  %".7887" = load float, ptr %"R4"
  %".7888" = load float, ptr %"R5"
  %"fmul.344" = fmul float %".7887", %".7888"
  %"fadd.302" = fadd float %"fmul.344",              0x0
  %".7889" = bitcast ptr %"R4" to ptr
  store float %"fadd.302", ptr %".7889"
  ; FFMA R4, R21, R4, R21
  %".7892" = load float, ptr %"R21"
  %".7893" = load float, ptr %"R4"
  %".7894" = load float, ptr %"R21"
  %"fmul.345" = fmul float %".7892", %".7893"
  %"fadd.303" = fadd float %"fmul.345", %".7894"
  %".7895" = bitcast ptr %"R4" to ptr
  store float %"fadd.303", ptr %".7895"
  br label %".L_x_43"
.L_x_43:
  ; BSYNC B0
  br label %".L_x_41"
.L_x_41:
  ; IADD3 R5, R23, 0x1800000, RZ
  %".7901" = load i32, ptr %"R23"
  %".7902" = add i32 %".7901", 25165824
  %".7903" = add i32 %".7902", 0
  store i32 %".7903", ptr %"R5"
  ; BMOV.32.CLEAR RZ, B0
  ; BSSY B0, `(.L_x_44)
  ; LOP3.LUT R5, R5, 0x7f800000, RZ, 0xc0, !PT
  %".7908" = load i32, ptr %"R5"
  %".7909" = xor i1 1, -1
  %".7910" = and i32 %".7908", 2139095040
  store i32 %".7910", ptr %"R5"
  ; ISETP.GT.U32.AND P0, PT, R5, 0x1ffffff, PT
  %".7913" = load i32, ptr %"R5"
  %".7914" = load i1, ptr %"PT"
  %"cmp.67" = icmp sgt i32 %".7913", 33554431
  %".7915" = xor i1 %"cmp.67", -1
  %".7916" = and i1 %"cmp.67", %".7914"
  %".7917" = and i1 %".7915", %".7914"
  store i1 %".7916", ptr %"P0"
  ; @P0 BRA `(.L_x_45)
  %".7920" = load i1, ptr %"P0"
  %".7921" = icmp eq i1 %".7920", 1
  br i1 %".7921", label %".L_x_45", label %".L_x_41_split_0x47f0_CALL_0x4830"
.L_x_41_split_0x47f0_CALL_0x4830:
  ; MOV R24, R23
  %".7924" = load float, ptr %"R23"
  %".7925" = bitcast ptr %"R24" to ptr
  store float %".7924", ptr %".7925"
  ; MOV R10, 0x4820
  store i32 18464, ptr %"R10"
  ; CALL.REL.NOINC `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".7932" = icmp ult i32 1, 32
  %"SHF_min.30" = select  i1 %".7932", i32 1, i32 32
  %".7933" = load i32, ptr %"R24"
  %"zext.782" = zext i32 0 to i64
  %"zext.783" = zext i32 %".7933" to i64
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
  %".7938" = icmp ult i32 24, 32
  %"SHF_min.31" = select  i1 %".7938", i32 24, i32 32
  %".7939" = load i32, ptr %"R11"
  %"zext.785" = zext i32 %".7939" to i64
  %"zext.786" = zext i32 0 to i64
  %"zext.787" = zext i32 24 to i64
  %"shl.413" = shl i64 %"zext.785", 32
  %"or.377" = or i64 %"shl.413", %"zext.786"
  %"lshr.19" = lshr i64 %"or.377", %"zext.787"
  %"lshr.20" = lshr i64 %"lshr.19", 32
  %"trunc32.211" = trunc i64 %"lshr.20" to i32
  store i32 %"trunc32.211", ptr %"R25"
  ; ISETP.NE.U32.AND P0, PT, R25, RZ, PT
  %".7942" = load i32, ptr %"R25"
  %".7943" = load i1, ptr %"PT"
  %"cmp.68" = icmp ne i32 %".7942", 0
  %".7944" = xor i1 %"cmp.68", -1
  %".7945" = and i1 %"cmp.68", %".7943"
  %".7946" = and i1 %".7944", %".7943"
  store i1 %".7945", ptr %"P0"
  ; @P0 BRA `(.L_x_49)
  %".7949" = load i1, ptr %"P0"
  %".7950" = icmp eq i1 %".7949", 1
  br i1 %".7950", label %".L_x_49...4", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4:
  ; SHF.L.U32 R11, R24, 0x1, RZ
  %".7953" = icmp ult i32 1, 32
  %"SHF_min.32" = select  i1 %".7953", i32 1, i32 32
  %".7954" = load i32, ptr %"R24"
  %"zext.788" = zext i32 0 to i64
  %"zext.789" = zext i32 %".7954" to i64
  %"zext.790" = zext i32 1 to i64
  %"shl.414" = shl i64 %"zext.788", 32
  %"or.378" = or i64 %"shl.414", %"zext.789"
  %"shl.415" = shl i64 %"or.378", %"zext.790"
  %"and.20" = and i64 %"shl.415", 4294967295
  %"trunc32.212" = trunc i64 %"and.20" to i32
  store i32 %"trunc32.212", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".7957" = load i32, ptr %"R11"
  %".7958" = load i1, ptr %"PT"
  %"cmp.69" = icmp ne i32 %".7957", 0
  %".7959" = xor i1 %"cmp.69", -1
  %".7960" = and i1 %"cmp.69", %".7958"
  %".7961" = and i1 %".7959", %".7958"
  store i1 %".7960", ptr %"P0"
  ; @P0 FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".7964" = load i1, ptr %"P0"
  %".7965" = icmp eq i1 %".7964", 1
  br i1 %".7965", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960...4_conditionalExpr_0x4980:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".7968" = load float, ptr %"R24"
  %"fmul.346" = fmul float %".7968", 0x43f0000000000000
  %"fadd.304" = fadd float %"fmul.346",              0x0
  %".7969" = bitcast ptr %"R12" to ptr
  store float %"fadd.304", ptr %".7969"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4960_conditionalExpr_0x4980...4:
  ; FFMA R12, R24, 1.84467440737095516160e+19, RZ
  %".7974" = load float, ptr %"R24"
  %"fmul.347" = fmul float %".7974", 0x43f0000000000000
  %"fadd.305" = fadd float %"fmul.347",              0x0
  %".7975" = bitcast ptr %"R12" to ptr
  store float %"fadd.305", ptr %".7975"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4:
  ; @!P0 MUFU.RCP R11, R24
  %".7980" = load i1, ptr %"P0"
  %".7981" = icmp ne i1 %".7980", 1
  br i1 %".7981", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990...4_conditionalExpr_0x4990:
  ; MUFU.RCP R11, R24
  %".7984" = load i32, ptr %"R24"
  %"sint_to_f32.6" = sitofp i32 %".7984" to float
  %".7985" = fdiv float 0x3ff0000000000000, %"sint_to_f32.6"
  %".7986" = fptosi float %".7985" to i32
  store i32 %".7986", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x4990_conditionalExpr_0x4990...4:
  ; MUFU.RCP R11, R24
  %".7991" = load i32, ptr %"R24"
  %"sint_to_f32.7" = sitofp i32 %".7991" to float
  %".7992" = fdiv float 0x3ff0000000000000, %"sint_to_f32.7"
  %".7993" = fptosi float %".7992" to i32
  store i32 %".7993", ptr %"R11"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4:
  ; @P0 MUFU.RCP R13, R12
  %".7998" = load i1, ptr %"P0"
  %".7999" = icmp eq i1 %".7998", 1
  br i1 %".7999", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0...4_conditionalExpr_0x49a0:
  ; MUFU.RCP R13, R12
  %".8002" = load float, ptr %"R12"
  %".8003" = fdiv float 0x3ff0000000000000, %".8002"
  %".8004" = bitcast ptr %"R13" to ptr
  store float %".8003", ptr %".8004"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49a0_conditionalExpr_0x49a0...4:
  ; MUFU.RCP R13, R12
  %".8009" = load float, ptr %"R12"
  %".8010" = fdiv float 0x3ff0000000000000, %".8009"
  %".8011" = bitcast ptr %"R13" to ptr
  store float %".8010", ptr %".8011"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4:
  ; @P0 FFMA R22, R12, R13, -1
  %".8016" = load i1, ptr %"P0"
  %".8017" = icmp eq i1 %".8016", 1
  br i1 %".8017", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0...4_conditionalExpr_0x49b0:
  ; FFMA R22, R12, R13, -1
  %".8020" = load float, ptr %"R12"
  %".8021" = load float, ptr %"R13"
  %"fmul.348" = fmul float %".8020", %".8021"
  %"fadd.306" = fadd float %"fmul.348", 0xbff0000000000000
  %".8022" = bitcast ptr %"R22" to ptr
  store float %"fadd.306", ptr %".8022"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49b0_conditionalExpr_0x49b0...4:
  ; FFMA R22, R12, R13, -1
  %".8027" = load float, ptr %"R12"
  %".8028" = load float, ptr %"R13"
  %"fmul.349" = fmul float %".8027", %".8028"
  %"fadd.307" = fadd float %"fmul.349", 0xbff0000000000000
  %".8029" = bitcast ptr %"R22" to ptr
  store float %"fadd.307", ptr %".8029"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4:
  ; @P0 FADD.FTZ R22, -R22, -RZ
  %".8034" = load i1, ptr %"P0"
  %".8035" = icmp eq i1 %".8034", 1
  br i1 %".8035", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0...4_conditionalExpr_0x49c0:
  ; FADD.FTZ R22, -R22, -RZ
  %".8038" = load float, ptr %"R22"
  %".8039" = fneg float %".8038"
  %".8040" = call float @"llvm.fabs"(float %".8039")
  %".8041" = fcmp ogt float %".8040",              0x0
  %".8042" = fcmp olt float %".8040", 0x3810000000000000
  %".8043" = and i1 %".8041", %".8042"
  %".8044" = select  i1 %".8043", float              0x0, float %".8039"
  %".8045" = call float @"llvm.fabs"(float              0x0)
  %".8046" = fcmp ogt float %".8045",              0x0
  %".8047" = fcmp olt float %".8045", 0x3810000000000000
  %".8048" = and i1 %".8046", %".8047"
  %".8049" = select  i1 %".8048", float              0x0, float              0x0
  %"fadd.308" = fadd float %".8044", %".8049"
  %".8050" = call float @"llvm.fabs"(float %"fadd.308")
  %".8051" = fcmp ogt float %".8050",              0x0
  %".8052" = fcmp olt float %".8050", 0x3810000000000000
  %".8053" = and i1 %".8051", %".8052"
  %".8054" = select  i1 %".8053", float              0x0, float %"fadd.308"
  %".8055" = bitcast ptr %"R22" to ptr
  store float %".8054", ptr %".8055"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49c0_conditionalExpr_0x49c0...4:
  ; FADD.FTZ R22, -R22, -RZ
  %".8060" = load float, ptr %"R22"
  %".8061" = fneg float %".8060"
  %".8062" = call float @"llvm.fabs"(float %".8061")
  %".8063" = fcmp ogt float %".8062",              0x0
  %".8064" = fcmp olt float %".8062", 0x3810000000000000
  %".8065" = and i1 %".8063", %".8064"
  %".8066" = select  i1 %".8065", float              0x0, float %".8061"
  %".8067" = call float @"llvm.fabs"(float              0x0)
  %".8068" = fcmp ogt float %".8067",              0x0
  %".8069" = fcmp olt float %".8067", 0x3810000000000000
  %".8070" = and i1 %".8068", %".8069"
  %".8071" = select  i1 %".8070", float              0x0, float              0x0
  %"fadd.309" = fadd float %".8066", %".8071"
  %".8072" = call float @"llvm.fabs"(float %"fadd.309")
  %".8073" = fcmp ogt float %".8072",              0x0
  %".8074" = fcmp olt float %".8072", 0x3810000000000000
  %".8075" = and i1 %".8073", %".8074"
  %".8076" = select  i1 %".8075", float              0x0, float %"fadd.309"
  %".8077" = bitcast ptr %"R22" to ptr
  store float %".8076", ptr %".8077"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4:
  ; @P0 FFMA R22, R13, R22, R13
  %".8082" = load i1, ptr %"P0"
  %".8083" = icmp eq i1 %".8082", 1
  br i1 %".8083", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0...4_conditionalExpr_0x49d0:
  ; FFMA R22, R13, R22, R13
  %".8086" = load float, ptr %"R13"
  %".8087" = load float, ptr %"R22"
  %".8088" = load float, ptr %"R13"
  %"fmul.350" = fmul float %".8086", %".8087"
  %"fadd.310" = fadd float %"fmul.350", %".8088"
  %".8089" = bitcast ptr %"R22" to ptr
  store float %"fadd.310", ptr %".8089"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49d0_conditionalExpr_0x49d0...4:
  ; FFMA R22, R13, R22, R13
  %".8094" = load float, ptr %"R13"
  %".8095" = load float, ptr %"R22"
  %".8096" = load float, ptr %"R13"
  %"fmul.351" = fmul float %".8094", %".8095"
  %"fadd.311" = fadd float %"fmul.351", %".8096"
  %".8097" = bitcast ptr %"R22" to ptr
  store float %"fadd.311", ptr %".8097"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4:
  ; @P0 FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8102" = load i1, ptr %"P0"
  %".8103" = icmp eq i1 %".8102", 1
  br i1 %".8103", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0", label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0...4_conditionalExpr_0x49e0:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8106" = load float, ptr %"R22"
  %"fmul.352" = fmul float %".8106", 0x43f0000000000000
  %"fadd.312" = fadd float %"fmul.352",              0x0
  %".8107" = bitcast ptr %"R11" to ptr
  store float %"fadd.312", ptr %".8107"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49e0_conditionalExpr_0x49e0...4:
  ; FFMA R11, R22, 1.84467440737095516160e+19, RZ
  %".8112" = load float, ptr %"R22"
  %"fmul.353" = fmul float %".8112", 0x43f0000000000000
  %"fadd.313" = fadd float %"fmul.353",              0x0
  %".8113" = bitcast ptr %"R11" to ptr
  store float %"fadd.313", ptr %".8113"
  ; BRA `($__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0)
  br label %"$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4"
$__internal_0_$__cuda_sm20_rcp_rn_f32_slowpath_split_0x49f0...4:
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_49...4:
  ; IADD3 R34, R25, -0xfd, RZ
  %".8120" = load i32, ptr %"R25"
  %".8121" = add i32 %".8120", -253
  %".8122" = add i32 %".8121", 0
  store i32 %".8122", ptr %"R34"
  ; ISETP.GT.U32.AND P0, PT, R34, 0x1, PT
  %".8125" = load i32, ptr %"R34"
  %".8126" = load i1, ptr %"PT"
  %"cmp.70" = icmp sgt i32 %".8125", 1
  %".8127" = xor i1 %"cmp.70", -1
  %".8128" = and i1 %"cmp.70", %".8126"
  %".8129" = and i1 %".8127", %".8126"
  store i1 %".8128", ptr %"P0"
  ; @P0 BRA `(.L_x_51)
  %".8132" = load i1, ptr %"P0"
  %".8133" = icmp eq i1 %".8132", 1
  br i1 %".8133", label %".L_x_51...4", label %".L_x_49_split_0x4a30...4"
.L_x_49_split_0x4a30...4:
  ; LOP3.LUT R11, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8136" = load i32, ptr %"R24"
  %".8137" = xor i1 1, -1
  %".8138" = and i32 %".8136", 8388607
  store i32 %".8138", ptr %"R11"
  ; MOV R23, 0x3
  store i32 3, ptr %"R23"
  ; LOP3.LUT R11, R11, 0x3f800000, RZ, 0xfc, !PT
  %".8143" = load i32, ptr %"R11"
  %".8144" = xor i1 1, -1
  %".8145" = or i32 %".8143", 1065353216
  store i32 %".8145", ptr %"R11"
  ; SHF.L.U32 R23, R23, R34, RZ
  %".8148" = load i32, ptr %"R34"
  %".8149" = icmp ult i32 %".8148", 32
  %"SHF_min.33" = select  i1 %".8149", i32 %".8148", i32 32
  %".8150" = load i32, ptr %"R23"
  %".8151" = load i32, ptr %"R34"
  %"zext.791" = zext i32 0 to i64
  %"zext.792" = zext i32 %".8150" to i64
  %"zext.793" = zext i32 %".8151" to i64
  %"shl.416" = shl i64 %"zext.791", 32
  %"or.379" = or i64 %"shl.416", %"zext.792"
  %"shl.417" = shl i64 %"or.379", %"zext.793"
  %"and.21" = and i64 %"shl.417", 4294967295
  %"trunc32.213" = trunc i64 %"and.21" to i32
  store i32 %"trunc32.213", ptr %"R23"
  ; MUFU.RCP R12, R11
  %".8154" = load i32, ptr %"R11"
  %"sint_to_f32.8" = sitofp i32 %".8154" to float
  %".8155" = fdiv float 0x3ff0000000000000, %"sint_to_f32.8"
  %".8156" = fptosi float %".8155" to i32
  store i32 %".8156", ptr %"R12"
  ; FFMA R13, R11, R12, -1
  %".8159" = load float, ptr %"R11"
  %".8160" = load float, ptr %"R12"
  %"fmul.354" = fmul float %".8159", %".8160"
  %"fadd.314" = fadd float %"fmul.354", 0xbff0000000000000
  %".8161" = bitcast ptr %"R13" to ptr
  store float %"fadd.314", ptr %".8161"
  ; FADD.FTZ R13, -R13, -RZ
  %".8164" = load float, ptr %"R13"
  %".8165" = fneg float %".8164"
  %".8166" = call float @"llvm.fabs"(float %".8165")
  %".8167" = fcmp ogt float %".8166",              0x0
  %".8168" = fcmp olt float %".8166", 0x3810000000000000
  %".8169" = and i1 %".8167", %".8168"
  %".8170" = select  i1 %".8169", float              0x0, float %".8165"
  %".8171" = call float @"llvm.fabs"(float              0x0)
  %".8172" = fcmp ogt float %".8171",              0x0
  %".8173" = fcmp olt float %".8171", 0x3810000000000000
  %".8174" = and i1 %".8172", %".8173"
  %".8175" = select  i1 %".8174", float              0x0, float              0x0
  %"fadd.315" = fadd float %".8170", %".8175"
  %".8176" = call float @"llvm.fabs"(float %"fadd.315")
  %".8177" = fcmp ogt float %".8176",              0x0
  %".8178" = fcmp olt float %".8176", 0x3810000000000000
  %".8179" = and i1 %".8177", %".8178"
  %".8180" = select  i1 %".8179", float              0x0, float %"fadd.315"
  %".8181" = bitcast ptr %"R13" to ptr
  store float %".8180", ptr %".8181"
  ; FFMA.RM R22, R12.reuse, R13.reuse, R12.reuse
  %".8184" = load float, ptr %"R12"
  %".8185" = load float, ptr %"R13"
  %".8186" = load float, ptr %"R12"
  %"fmul.355" = fmul float %".8184", %".8185"
  %"fadd.316" = fadd float %"fmul.355", %".8186"
  %".8187" = bitcast ptr %"R22" to ptr
  store float %"fadd.316", ptr %".8187"
  ; FFMA.RP R13, R12, R13, R12
  %".8190" = load float, ptr %"R12"
  %".8191" = load float, ptr %"R13"
  %".8192" = load float, ptr %"R12"
  %"fmul.356" = fmul float %".8190", %".8191"
  %"fadd.317" = fadd float %"fmul.356", %".8192"
  %".8193" = bitcast ptr %"R13" to ptr
  store float %"fadd.317", ptr %".8193"
  ; LOP3.LUT R12, R22.reuse, 0x7fffff, RZ, 0xc0, !PT
  %".8196" = load i32, ptr %"R22"
  %".8197" = xor i1 1, -1
  %".8198" = and i32 %".8196", 8388607
  store i32 %".8198", ptr %"R12"
  ; FSETP.NEU.FTZ.AND P0, PT, R22, R13, PT
  %".8201" = load float, ptr %"R22"
  %".8202" = load float, ptr %"R13"
  %".8203" = load i1, ptr %"PT"
  %".8204" = call float @"llvm.fabs"(float %".8201")
  %".8205" = fcmp ogt float %".8204",              0x0
  %".8206" = fcmp olt float %".8204", 0x3810000000000000
  %".8207" = and i1 %".8205", %".8206"
  %".8208" = select  i1 %".8207", float              0x0, float %".8201"
  %".8209" = call float @"llvm.fabs"(float %".8202")
  %".8210" = fcmp ogt float %".8209",              0x0
  %".8211" = fcmp olt float %".8209", 0x3810000000000000
  %".8212" = and i1 %".8210", %".8211"
  %".8213" = select  i1 %".8212", float              0x0, float %".8202"
  %"fcmp_ordered.3" = fcmp une float %".8208", %".8213"
  %".8214" = xor i1 %"fcmp_ordered.3", -1
  %".8215" = and i1 %"fcmp_ordered.3", %".8203"
  %".8216" = and i1 %".8214", %".8203"
  store i1 %".8215", ptr %"P0"
  ; LOP3.LUT R12, R12, 0x800000, RZ, 0xfc, !PT
  %".8219" = load i32, ptr %"R12"
  %".8220" = xor i1 1, -1
  %".8221" = or i32 %".8219", 8388608
  store i32 %".8221", ptr %"R12"
  ; SEL R13, RZ, 0xffffffff, !P0
  %".8224" = load i1, ptr %"P0"
  %".8225" = xor i1 %".8224", -1
  %".8226" = icmp eq i1 %".8225", 1
  %"sel.6" = select  i1 %".8226", i32 0, i32 4294967295
  store i32 %"sel.6", ptr %"R13"
  ; LOP3.LUT R23, R23, R12, RZ, 0xc0, !PT
  %".8229" = load i32, ptr %"R23"
  %".8230" = load i32, ptr %"R12"
  %".8231" = xor i1 1, -1
  %".8232" = and i32 %".8229", %".8230"
  store i32 %".8232", ptr %"R23"
  ; IADD3 R13, -R13, RZ, RZ
  %".8235" = load i32, ptr %"R13"
  %".8236" = sub i32 0, %".8235"
  %".8237" = add i32 %".8236", 0
  %".8238" = add i32 %".8237", 0
  store i32 %".8238", ptr %"R13"
  ; SHF.R.U32.HI R23, RZ, R34.reuse, R23
  %".8241" = load i32, ptr %"R34"
  %".8242" = icmp ult i32 %".8241", 32
  %"SHF_min.34" = select  i1 %".8242", i32 %".8241", i32 32
  %".8243" = load i32, ptr %"R23"
  %".8244" = load i32, ptr %"R34"
  %"zext.794" = zext i32 %".8243" to i64
  %"zext.795" = zext i32 0 to i64
  %"zext.796" = zext i32 %".8244" to i64
  %"shl.418" = shl i64 %"zext.794", 32
  %"or.380" = or i64 %"shl.418", %"zext.795"
  %"lshr.21" = lshr i64 %"or.380", %"zext.796"
  %"lshr.22" = lshr i64 %"lshr.21", 32
  %"trunc32.214" = trunc i64 %"lshr.22" to i32
  store i32 %"trunc32.214", ptr %"R23"
  ; LOP3.LUT P1, RZ, R13, R34, R12, 0xf8, !PT
  %".8247" = load i32, ptr %"R13"
  %".8248" = load i32, ptr %"R34"
  %".8249" = load i32, ptr %"R12"
  %".8250" = xor i1 1, -1
  %".8251" = or i32 %".8247", %".8248"
  %".8252" = or i32 %".8247", %".8249"
  %".8253" = and i32 %".8251", %".8252"
  store i32 %".8253", ptr %"RZ"
  %".8255" = icmp ne i32 %".8253", 0
  store i1 %".8255", ptr %"P1"
  ; LOP3.LUT P0, RZ, R23.reuse, 0x1, RZ, 0xc0, !PT
  %".8258" = load i32, ptr %"R23"
  %".8259" = xor i1 1, -1
  %".8260" = and i32 %".8258", 1
  store i32 %".8260", ptr %"RZ"
  %".8262" = icmp ne i32 %".8260", 0
  store i1 %".8262", ptr %"P0"
  ; LOP3.LUT P2, RZ, R23, 0x2, RZ, 0xc0, !PT
  %".8265" = load i32, ptr %"R23"
  %".8266" = xor i1 1, -1
  %".8267" = and i32 %".8265", 2
  store i32 %".8267", ptr %"RZ"
  %".8269" = icmp ne i32 %".8267", 0
  store i1 %".8269", ptr %"P2"
  ; PLOP3.LUT P0, PT, P0, P1, P2, 0xe0, 0x0
  %".8272" = load i1, ptr %"P0"
  %".8273" = load i1, ptr %"P1"
  %".8274" = or i1 %".8272", %".8273"
  %".8275" = and i1 %".8274", 1
  ; LOP3.LUT P1, RZ, R24, 0x7fffff, RZ, 0xc0, !PT
  %".8277" = load i32, ptr %"R24"
  %".8278" = xor i1 1, -1
  %".8279" = and i32 %".8277", 8388607
  store i32 %".8279", ptr %"RZ"
  %".8281" = icmp ne i32 %".8279", 0
  store i1 %".8281", ptr %"P1"
  ; SEL R11, RZ, 0x1, !P0
  %".8284" = load i1, ptr %"P0"
  %".8285" = xor i1 %".8284", -1
  %".8286" = icmp eq i1 %".8285", 1
  %"sel.7" = select  i1 %".8286", i32 0, i32 1
  store i32 %"sel.7", ptr %"R11"
  ; IADD3 R11, -R11, RZ, RZ
  %".8289" = load i32, ptr %"R11"
  %".8290" = sub i32 0, %".8289"
  %".8291" = add i32 %".8290", 0
  %".8292" = add i32 %".8291", 0
  store i32 %".8292", ptr %"R11"
  ; ISETP.GE.AND P0, PT, R11, RZ, PT
  %".8295" = load i32, ptr %"R11"
  %".8296" = load i1, ptr %"PT"
  %"cmp.71" = icmp sge i32 %".8295", 0
  %".8297" = xor i1 %"cmp.71", -1
  %".8298" = and i1 %"cmp.71", %".8296"
  %".8299" = and i1 %".8297", %".8296"
  store i1 %".8298", ptr %"P0"
  ; IADD3 R11, R25, -0xfc, RZ
  %".8302" = load i32, ptr %"R25"
  %".8303" = add i32 %".8302", -252
  %".8304" = add i32 %".8303", 0
  store i32 %".8304", ptr %"R11"
  ; SHF.R.U32.HI R11, RZ, R11, R12
  %".8307" = load i32, ptr %"R11"
  %".8308" = icmp ult i32 %".8307", 32
  %"SHF_min.35" = select  i1 %".8308", i32 %".8307", i32 32
  %".8309" = load i32, ptr %"R12"
  %".8310" = load i32, ptr %"R11"
  %"zext.797" = zext i32 %".8309" to i64
  %"zext.798" = zext i32 0 to i64
  %"zext.799" = zext i32 %".8310" to i64
  %"shl.419" = shl i64 %"zext.797", 32
  %"or.381" = or i64 %"shl.419", %"zext.798"
  %"lshr.23" = lshr i64 %"or.381", %"zext.799"
  %"lshr.24" = lshr i64 %"lshr.23", 32
  %"trunc32.215" = trunc i64 %"lshr.24" to i32
  store i32 %"trunc32.215", ptr %"R11"
  ; @!P0 IADD3 R11, R11, 0x1, RZ
  %".8313" = load i1, ptr %"P0"
  %".8314" = icmp ne i1 %".8313", 1
  br i1 %".8314", label %".L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0", label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30...4_conditionalExpr_0x4bd0:
  ; IADD3 R11, R11, 0x1, RZ
  %".8317" = load i32, ptr %"R11"
  %".8318" = add i32 %".8317", 1
  %".8319" = add i32 %".8318", 0
  store i32 %".8319", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4)
  br label %".L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4"
.L_x_49_split_0x4a30_conditionalExpr_0x4bd0...4:
  ; IADD3 R11, R11, 0x1, RZ
  %".8324" = load i32, ptr %"R11"
  %".8325" = add i32 %".8324", 1
  %".8326" = add i32 %".8325", 0
  store i32 %".8326", ptr %"R11"
  ; BRA `(.L_x_49_split_0x4be0)
  br label %".L_x_49_split_0x4be0...4"
.L_x_49_split_0x4be0...4:
  ; @!P1 SHF.L.U32 R11, R11, 0x1, RZ
  %".8331" = load i1, ptr %"P1"
  %".8332" = icmp ne i1 %".8331", 1
  br i1 %".8332", label %".L_x_49_split_0x4be0...4_conditionalExpr_0x4be0", label %".L_x_49_split_0x4be0_conditionalExpr_0x4be0...4"
.L_x_49_split_0x4be0...4_conditionalExpr_0x4be0:
  ; SHF.L.U32 R11, R11, 0x1, RZ
  %".8335" = icmp ult i32 1, 32
  %"SHF_min.36" = select  i1 %".8335", i32 1, i32 32
  %".8336" = load i32, ptr %"R11"
  %"zext.800" = zext i32 0 to i64
  %"zext.801" = zext i32 %".8336" to i64
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
  %".8341" = icmp ult i32 1, 32
  %"SHF_min.37" = select  i1 %".8341", i32 1, i32 32
  %".8342" = load i32, ptr %"R11"
  %"zext.803" = zext i32 0 to i64
  %"zext.804" = zext i32 %".8342" to i64
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
  %".8347" = load i32, ptr %"R11"
  %".8348" = load i32, ptr %"R24"
  %".8349" = xor i1 1, -1
  %".8350" = or i32 %".8347", 2147483648
  %".8351" = or i32 %".8347", %".8348"
  %".8352" = and i32 %".8350", %".8351"
  store i32 %".8352", ptr %"R11"
  ; BRA `(.L_x_50)
  br label %".L_x_50...4"
.L_x_51...4:
  ; MUFU.RCP R11, R24
  %".8357" = load i32, ptr %"R24"
  %"sint_to_f32.9" = sitofp i32 %".8357" to float
  %".8358" = fdiv float 0x3ff0000000000000, %"sint_to_f32.9"
  %".8359" = fptosi float %".8358" to i32
  store i32 %".8359", ptr %"R11"
  br label %".L_x_50...4"
.L_x_50...4:
  ; BSYNC B1
  br label %".L_x_48...4"
.L_x_48...4:
  ; MOV R22, R11
  %".8365" = load i32, ptr %"R11"
  store i32 %".8365", ptr %"R22"
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
  %".8375" = load i32, ptr %"R22"
  store i32 %".8375", ptr %"R5"
  ; BRA `(.L_x_46)
  br label %".L_x_46"
.L_x_45:
  ; MUFU.RCP R6, R23
  %".8380" = load float, ptr %"R23"
  %".8381" = fdiv float 0x3ff0000000000000, %".8380"
  %".8382" = bitcast ptr %"R6" to ptr
  store float %".8381", ptr %".8382"
  ; FFMA R5, R23, R6, -1
  %".8385" = load float, ptr %"R23"
  %".8386" = load float, ptr %"R6"
  %"fmul.357" = fmul float %".8385", %".8386"
  %"fadd.318" = fadd float %"fmul.357", 0xbff0000000000000
  %".8387" = bitcast ptr %"R5" to ptr
  store float %"fadd.318", ptr %".8387"
  ; FADD.FTZ R5, -R5, -RZ
  %".8390" = load float, ptr %"R5"
  %".8391" = fneg float %".8390"
  %".8392" = call float @"llvm.fabs"(float %".8391")
  %".8393" = fcmp ogt float %".8392",              0x0
  %".8394" = fcmp olt float %".8392", 0x3810000000000000
  %".8395" = and i1 %".8393", %".8394"
  %".8396" = select  i1 %".8395", float              0x0, float %".8391"
  %".8397" = call float @"llvm.fabs"(float              0x0)
  %".8398" = fcmp ogt float %".8397",              0x0
  %".8399" = fcmp olt float %".8397", 0x3810000000000000
  %".8400" = and i1 %".8398", %".8399"
  %".8401" = select  i1 %".8400", float              0x0, float              0x0
  %"fadd.319" = fadd float %".8396", %".8401"
  %".8402" = call float @"llvm.fabs"(float %"fadd.319")
  %".8403" = fcmp ogt float %".8402",              0x0
  %".8404" = fcmp olt float %".8402", 0x3810000000000000
  %".8405" = and i1 %".8403", %".8404"
  %".8406" = select  i1 %".8405", float              0x0, float %"fadd.319"
  %".8407" = bitcast ptr %"R5" to ptr
  store float %".8406", ptr %".8407"
  ; FFMA R5, R6, R5, R6
  %".8410" = load float, ptr %"R6"
  %".8411" = load float, ptr %"R5"
  %".8412" = load float, ptr %"R6"
  %"fmul.358" = fmul float %".8410", %".8411"
  %"fadd.320" = fadd float %"fmul.358", %".8412"
  %".8413" = bitcast ptr %"R5" to ptr
  store float %"fadd.320", ptr %".8413"
  br label %".L_x_46"
.L_x_46:
  ; BSYNC B0
  br label %".L_x_44"
.L_x_44:
  ; LDG.E.SYS R6, [R28]
  %".8419" = load i32, ptr %"R28"
  %"zext.806" = zext i32 %".8419" to i64
  %".8420" = load i32, ptr %"R29"
  %"zext.807" = zext i32 %".8420" to i64
  %"shl.424" = shl i64 %"zext.807", 32
  %"or.384" = or i64 %"shl.424", %"zext.806"
  %"inttoptr_bytes.346" = inttoptr i64 %"or.384" to ptr addrspace(1)
  %"ptr_cast_for_access.346" = bitcast ptr addrspace(1) %"inttoptr_bytes.346" to ptr addrspace(1)
  %".8421" = load float, ptr addrspace(1) %"ptr_cast_for_access.346"
  %".8422" = bitcast ptr %"R6" to ptr
  store float %".8421", ptr %".8422"
  ; FADD R7, -R5, 1
  %".8425" = load float, ptr %"R5"
  %".8426" = fneg float %".8425"
  %"fadd.321" = fadd float %".8426", 0x3ff0000000000000
  %".8427" = bitcast ptr %"R7" to ptr
  store float %"fadd.321", ptr %".8427"
  ; FMUL R6, R6, R5
  %".8430" = load float, ptr %"R6"
  %".8431" = load float, ptr %"R5"
  %"fmul.359" = fmul float %".8430", %".8431"
  %".8432" = bitcast ptr %"R6" to ptr
  store float %"fmul.359", ptr %".8432"
  ; FFMA R7, R7, R4, R6
  %".8435" = load float, ptr %"R7"
  %".8436" = load float, ptr %"R4"
  %".8437" = load float, ptr %"R6"
  %"fmul.360" = fmul float %".8435", %".8436"
  %"fadd.322" = fadd float %"fmul.360", %".8437"
  %".8438" = bitcast ptr %"R7" to ptr
  store float %"fadd.322", ptr %".8438"
  ; STG.E.SYS [R28], R7
  %".8441" = load float, ptr %"R7"
  %".8442" = load i32, ptr %"R28"
  %"zext.808" = zext i32 %".8442" to i64
  %".8443" = load i32, ptr %"R29"
  %"zext.809" = zext i32 %".8443" to i64
  %"shl.425" = shl i64 %"zext.809", 32
  %"or.385" = or i64 %"shl.425", %"zext.808"
  %"inttoptr_bytes.347" = inttoptr i64 %"or.385" to ptr addrspace(1)
  %"ptr_cast_for_access.347" = bitcast ptr addrspace(1) %"inttoptr_bytes.347" to ptr addrspace(1)
  store float %".8441", ptr addrspace(1) %"ptr_cast_for_access.347"
  ; @!P3 BRA `(.L_x_47)
  %".8446" = load i1, ptr %"P3"
  %".8447" = icmp ne i1 %".8446", 1
  br i1 %".8447", label %".L_x_47", label %".L_x_44_split_0x48f0"
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

