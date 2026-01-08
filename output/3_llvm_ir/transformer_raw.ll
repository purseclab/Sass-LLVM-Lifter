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

define ptx_kernel void @"_Z15ffn_relu_kernelPKfS0_S0_Pfiii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6")
{
Entry_.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii:
  %"R1" = alloca i32, i32 1
  %"R0" = alloca i32, i32 1
  %"R3" = alloca i32, i32 1
  %"R7" = alloca i32, i32 1
  %"R2" = alloca i32, i32 1
  %"P0" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"R5" = alloca i32, i32 1
  %"R10" = alloca i32, i32 1
  %"R4" = alloca i32, i32 1
  %"RZ" = alloca i32, i32 1
  %"R6" = alloca i32, i32 1
  %"R11" = alloca i32, i32 1
  %"UR4" = alloca i32, i32 1
  %"R12" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
  %"R8" = alloca i32, i32 1
  %"R14" = alloca i32, i32 1
  %"R9" = alloca i32, i32 1
  %"UR5" = alloca i32, i32 1
  %"R15" = alloca i32, i32 1
  %"R17" = alloca i32, i32 1
  %"R19" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R16" = alloca i32, i32 1
  %"R18" = alloca i32, i32 1
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
  %"R44" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
  %"UP0" = alloca i1, i32 1
  %"URZ" = alloca i32, i32 1
  %"P2" = alloca i1, i32 1
  %"UPT" = alloca i1, i32 1
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
  ; S2R R7, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R7"
  ; S2R R2, SR_TID.Y
  %"nvvm_threadidx_y" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()
  store i32 %"nvvm_threadidx_y", ptr %"R2"
  ; IMAD R0, R0, c[0x0][0x0], R3
  %".25" = load i32, ptr %"R0"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".26" = load i32, ptr %"R3"
  %"imad_mul" = mul i32 %".25", %"nvvm_blockdim_x"
  %"imad_add" = add i32 %"imad_mul", %".26"
  store i32 %"imad_add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x188], PT
  %".29" = load i32, ptr %"R0"
  %".30" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".29", %"Arg_6"
  %".31" = xor i1 %"cmp", -1
  %".32" = and i1 %"cmp", %".30"
  %".33" = and i1 %".31", %".30"
  store i1 %".32", ptr %"P0"
  ; IMAD R7, R7, c[0x0][0x4], R2
  %".36" = load i32, ptr %"R7"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".37" = load i32, ptr %"R2"
  %"imad_mul.1" = mul i32 %".36", %"nvvm_blockdim_y"
  %"imad_add.1" = add i32 %"imad_mul.1", %".37"
  store i32 %"imad_add.1", ptr %"R7"
  ; ISETP.GE.OR P0, PT, R7, c[0x0][0x180], P0
  %".40" = load i32, ptr %"R7"
  %".41" = load i1, ptr %"P0"
  %"cmp.1" = icmp sge i32 %".40", %"Arg_4"
  %".42" = xor i1 %"cmp.1", -1
  %".43" = or i1 %"cmp.1", %".41"
  %".44" = or i1 %".42", %".41"
  store i1 %".43", ptr %"P0"
  ; @P0 EXIT
  %".47" = load i1, ptr %"P0"
  %".48" = icmp eq i1 %".47", 1
  br i1 %".48", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_conditionalExpr_0x0090", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_conditionalExpr_0x0090:
  ; EXIT
  br label %"ExitFunction"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R10, R0, R5, c[0x0][0x170]
  %".55" = load i32, ptr %"R0"
  %".56" = load i32, ptr %"R5"
  %"imad_ext1" = zext i32 %".55" to i64
  %"imad_ext2" = zext i32 %".56" to i64
  %"imad_mul.2" = mul i64 %"imad_ext1", %"imad_ext2"
  %".57" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.2" = add i64 %"imad_mul.2", %".57"
  %".58" = and i64 %"imad_add.2", 18446744069414584320
  %".59" = lshr i64 %".58", 32
  %"trunc32" = trunc i64 %".59" to i32
  %"trunc32.1" = trunc i64 %"imad_add.2" to i32
  store i32 %"trunc32.1", ptr %"R10"
  store i32 %"trunc32", ptr %"R11"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".63" = load i32, ptr %"R10"
  %"zext" = zext i32 %".63" to i64
  %".64" = load i32, ptr %"R11"
  %"zext.1" = zext i32 %".64" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".65" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".66" = bitcast ptr %"R10" to ptr
  store float %".65", ptr %".66"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, 0x1, PT
  %".71" = load i32, ptr %"R4"
  %".72" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".71", 1
  %".73" = xor i1 %"cmp.2", -1
  %".74" = and i1 %"cmp.2", %".72"
  %".75" = and i1 %".73", %".72"
  store i1 %".74", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".78" = load i1, ptr %"P0"
  %".79" = icmp ne i1 %".78", 1
  br i1 %".79", label %".L_x_0", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".82" = load i32, ptr %"R4"
  %".83" = add i32 %".82", -1
  %".84" = add i32 %".83", 0
  store i32 %".84", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".87" = load i32, ptr %"R4"
  %".88" = xor i1 1, -1
  %".89" = and i32 %".87", 3
  store i32 %".89", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".92" = load i32, ptr %"R2"
  %".93" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".92", 3
  %".94" = xor i1 %"cmp.3", -1
  %".95" = and i1 %"cmp.3", %".93"
  %".96" = and i1 %".94", %".93"
  store i1 %".95", ptr %"P0"
  ; MOV R6, RZ
  %".99" = load i32, ptr %"RZ"
  store i32 %".99", ptr %"R6"
  ; @!P0 BRA `(.L_x_1)
  %".102" = load i1, ptr %"P0"
  %".103" = icmp ne i1 %".102", 1
  br i1 %".103", label %".L_x_1", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150:
  ; IADD3 R11, -R4, c[0x0][0x184], RZ
  %".106" = load i32, ptr %"R4"
  %".107" = sub i32 0, %".106"
  %".108" = add i32 %".107", %"Arg_5"
  %".109" = add i32 %".108", 0
  store i32 %".109", ptr %"R11"
  ; IMAD R2, R7, c[0x0][0x184], RZ
  %".112" = load i32, ptr %"R7"
  %"imad_mul.3" = mul i32 %".112", %"Arg_5"
  %"imad_add.3" = add i32 %"imad_mul.3", 0
  store i32 %"imad_add.3", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x168]
  %".115" = ptrtoint ptr %"Arg_1" to i64
  %".116" = and i64 %".115", 18446744069414584320
  %".117" = lshr i64 %".116", 32
  %"trunc32.2" = trunc i64 %".117" to i32
  %"trunc32.3" = trunc i64 %".115" to i32
  store i32 %"trunc32.3", ptr %"UR4"
  store i32 %"trunc32.2", ptr %"UR5"
  ; IMAD R12, R0, c[0x0][0x184], RZ
  %".121" = load i32, ptr %"R0"
  %"imad_mul.4" = mul i32 %".121", %"Arg_5"
  %"imad_add.4" = add i32 %"imad_mul.4", 0
  store i32 %"imad_add.4", ptr %"R12"
  ; ISETP.GT.AND P0, PT, R11, RZ, PT
  %".124" = load i32, ptr %"R11"
  %".125" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".124", 0
  %".126" = xor i1 %"cmp.4", -1
  %".127" = and i1 %"cmp.4", %".125"
  %".128" = and i1 %".126", %".125"
  store i1 %".127", ptr %"P0"
  ; IMAD.MOV.U32 R6, RZ, RZ, RZ
  %"imad_mul.5" = mul i32 0, 0
  %"imad_add.5" = add i32 %"imad_mul.5", 0
  store i32 %"imad_add.5", ptr %"R6"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x160]
  %".133" = load i32, ptr %"R2"
  %".134" = load i32, ptr %"R5"
  %"imad_ext1.1" = zext i32 %".133" to i64
  %"imad_ext2.1" = zext i32 %".134" to i64
  %"imad_mul.6" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".135" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.6" = add i64 %"imad_mul.6", %".135"
  %".136" = and i64 %"imad_add.6", 18446744069414584320
  %".137" = lshr i64 %".136", 32
  %"trunc32.4" = trunc i64 %".137" to i32
  %"trunc32.5" = trunc i64 %"imad_add.6" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; @!P0 BRA `(.L_x_2)
  %".141" = load i1, ptr %"P0"
  %".142" = icmp ne i1 %".141", 1
  br i1 %".142", label %".L_x_2", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0:
  ; ISETP.GT.AND P1, PT, R11, 0xc, PT
  %".145" = load i32, ptr %"R11"
  %".146" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".145", 12
  %".147" = xor i1 %"cmp.5", -1
  %".148" = and i1 %"cmp.5", %".146"
  %".149" = and i1 %".147", %".146"
  store i1 %".148", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".152" = and i1 1, 1
  %".153" = and i1 %".152", 1
  ; @!P1 BRA `(.L_x_3)
  %".155" = load i1, ptr %"P1"
  %".156" = icmp ne i1 %".155", 1
  br i1 %".156", label %".L_x_3", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".159" = xor i1 1, 1
  %".160" = and i1 %".159", 1
  %".161" = and i1 %".160", 1
  br label %".L_x_4"
.L_x_4:
  ; MOV R8, UR4
  %".164" = load i32, ptr %"UR4"
  store i32 %".164", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".167" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".167" to i64
  %".168" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".168" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".169" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".170" = bitcast ptr %"R14" to ptr
  store float %".169", ptr %".170"
  ; MOV R9, UR5
  %".173" = load i32, ptr %"UR5"
  store i32 %".173", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".176" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".176" to i64
  %".177" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".177" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".178" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".179" = bitcast ptr %"R15" to ptr
  store float %".178", ptr %".179"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".182" = load i32, ptr %"R12"
  %".183" = load i32, ptr %"R8"
  %"imad_ext1.2" = zext i32 %".182" to i64
  %"imad_ext2.2" = zext i32 4 to i64
  %"imad_mul.7" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %"imad_ext3" = zext i32 %".183" to i64
  %"imad_add.7" = add i64 %"imad_mul.7", %"imad_ext3"
  %".184" = and i64 %"imad_add.7", 18446744069414584320
  %".185" = lshr i64 %".184", 32
  %"trunc32.6" = trunc i64 %".185" to i32
  %"trunc32.7" = trunc i64 %"imad_add.7" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".189" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".189" to i64
  %".190" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".190" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm.1" = add i64 %"or.3", 8
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".191" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".192" = bitcast ptr %"R17" to ptr
  store float %".191", ptr %".192"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".195" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".195" to i64
  %".196" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".196" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"ptr_plus_imm.2" = add i64 %"or.4", 12
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".197" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".198" = bitcast ptr %"R19" to ptr
  store float %".197", ptr %".198"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".201" = load i32, ptr %"R8"
  %"zext.10" = zext i32 %".201" to i64
  %".202" = load i32, ptr %"R9"
  %"zext.11" = zext i32 %".202" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"inttoptr_bytes.5" = inttoptr i64 %"or.5" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".203" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".204" = bitcast ptr %"R13" to ptr
  store float %".203", ptr %".204"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".207" = load i32, ptr %"R8"
  %"zext.12" = zext i32 %".207" to i64
  %".208" = load i32, ptr %"R9"
  %"zext.13" = zext i32 %".208" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"ptr_plus_imm.3" = add i64 %"or.6", 4
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".209" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".210" = bitcast ptr %"R16" to ptr
  store float %".209", ptr %".210"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".213" = load i32, ptr %"R8"
  %"zext.14" = zext i32 %".213" to i64
  %".214" = load i32, ptr %"R9"
  %"zext.15" = zext i32 %".214" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.4" = add i64 %"or.7", 8
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".215" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".216" = bitcast ptr %"R18" to ptr
  store float %".215", ptr %".216"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".219" = load i32, ptr %"R8"
  %"zext.16" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R9"
  %"zext.17" = zext i32 %".220" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %"ptr_plus_imm.5" = add i64 %"or.8", 12
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".221" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".222" = bitcast ptr %"R20" to ptr
  store float %".221", ptr %".222"
  ; LDG.E.CONSTANT.SYS R21, [R2+0x10]
  %".225" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".225" to i64
  %".226" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".226" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %"ptr_plus_imm.6" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".227" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".228" = bitcast ptr %"R21" to ptr
  store float %".227", ptr %".228"
  ; LDG.E.CONSTANT.SYS R22, [R8+0x10]
  %".231" = load i32, ptr %"R8"
  %"zext.20" = zext i32 %".231" to i64
  %".232" = load i32, ptr %"R9"
  %"zext.21" = zext i32 %".232" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %"ptr_plus_imm.7" = add i64 %"or.10", 16
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".233" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".234" = bitcast ptr %"R22" to ptr
  store float %".233", ptr %".234"
  ; LDG.E.CONSTANT.SYS R23, [R2+0x14]
  %".237" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".237" to i64
  %".238" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".238" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %"ptr_plus_imm.8" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".239" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".240" = bitcast ptr %"R23" to ptr
  store float %".239", ptr %".240"
  ; LDG.E.CONSTANT.SYS R24, [R8+0x14]
  %".243" = load i32, ptr %"R8"
  %"zext.24" = zext i32 %".243" to i64
  %".244" = load i32, ptr %"R9"
  %"zext.25" = zext i32 %".244" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %"ptr_plus_imm.9" = add i64 %"or.12", 20
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".245" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".246" = bitcast ptr %"R24" to ptr
  store float %".245", ptr %".246"
  ; LDG.E.CONSTANT.SYS R25, [R2+0x18]
  %".249" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".249" to i64
  %".250" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".250" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %"ptr_plus_imm.10" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".251" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".252" = bitcast ptr %"R25" to ptr
  store float %".251", ptr %".252"
  ; LDG.E.CONSTANT.SYS R26, [R8+0x18]
  %".255" = load i32, ptr %"R8"
  %"zext.28" = zext i32 %".255" to i64
  %".256" = load i32, ptr %"R9"
  %"zext.29" = zext i32 %".256" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %"ptr_plus_imm.11" = add i64 %"or.14", 24
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".257" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".258" = bitcast ptr %"R26" to ptr
  store float %".257", ptr %".258"
  ; LDG.E.CONSTANT.SYS R27, [R2+0x1c]
  %".261" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".261" to i64
  %".262" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".262" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %"ptr_plus_imm.12" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".263" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".264" = bitcast ptr %"R27" to ptr
  store float %".263", ptr %".264"
  ; LDG.E.CONSTANT.SYS R28, [R8+0x1c]
  %".267" = load i32, ptr %"R8"
  %"zext.32" = zext i32 %".267" to i64
  %".268" = load i32, ptr %"R9"
  %"zext.33" = zext i32 %".268" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %"ptr_plus_imm.13" = add i64 %"or.16", 28
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".269" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".270" = bitcast ptr %"R28" to ptr
  store float %".269", ptr %".270"
  ; LDG.E.CONSTANT.SYS R29, [R2+0x20]
  %".273" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".273" to i64
  %".274" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".274" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %"ptr_plus_imm.14" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".275" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".276" = bitcast ptr %"R29" to ptr
  store float %".275", ptr %".276"
  ; LDG.E.CONSTANT.SYS R30, [R8+0x20]
  %".279" = load i32, ptr %"R8"
  %"zext.36" = zext i32 %".279" to i64
  %".280" = load i32, ptr %"R9"
  %"zext.37" = zext i32 %".280" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %"ptr_plus_imm.15" = add i64 %"or.18", 32
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".281" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".282" = bitcast ptr %"R30" to ptr
  store float %".281", ptr %".282"
  ; LDG.E.CONSTANT.SYS R31, [R2+0x24]
  %".285" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".285" to i64
  %".286" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".286" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %"ptr_plus_imm.16" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".287" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".288" = bitcast ptr %"R31" to ptr
  store float %".287", ptr %".288"
  ; LDG.E.CONSTANT.SYS R32, [R8+0x24]
  %".291" = load i32, ptr %"R8"
  %"zext.40" = zext i32 %".291" to i64
  %".292" = load i32, ptr %"R9"
  %"zext.41" = zext i32 %".292" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %"ptr_plus_imm.17" = add i64 %"or.20", 36
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".293" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".294" = bitcast ptr %"R32" to ptr
  store float %".293", ptr %".294"
  ; LDG.E.CONSTANT.SYS R33, [R2+0x28]
  %".297" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".297" to i64
  %".298" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".298" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %"ptr_plus_imm.18" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".299" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".300" = bitcast ptr %"R33" to ptr
  store float %".299", ptr %".300"
  ; LDG.E.CONSTANT.SYS R34, [R8+0x28]
  %".303" = load i32, ptr %"R8"
  %"zext.44" = zext i32 %".303" to i64
  %".304" = load i32, ptr %"R9"
  %"zext.45" = zext i32 %".304" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %"ptr_plus_imm.19" = add i64 %"or.22", 40
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".305" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".306" = bitcast ptr %"R34" to ptr
  store float %".305", ptr %".306"
  ; LDG.E.CONSTANT.SYS R35, [R2+0x2c]
  %".309" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".309" to i64
  %".310" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".310" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %"ptr_plus_imm.20" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".311" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".312" = bitcast ptr %"R35" to ptr
  store float %".311", ptr %".312"
  ; LDG.E.CONSTANT.SYS R36, [R8+0x2c]
  %".315" = load i32, ptr %"R8"
  %"zext.48" = zext i32 %".315" to i64
  %".316" = load i32, ptr %"R9"
  %"zext.49" = zext i32 %".316" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %"ptr_plus_imm.21" = add i64 %"or.24", 44
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".317" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".318" = bitcast ptr %"R36" to ptr
  store float %".317", ptr %".318"
  ; LDG.E.CONSTANT.SYS R37, [R2+0x30]
  %".321" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".321" to i64
  %".322" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".322" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %"ptr_plus_imm.22" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".323" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".324" = bitcast ptr %"R37" to ptr
  store float %".323", ptr %".324"
  ; LDG.E.CONSTANT.SYS R38, [R8+0x30]
  %".327" = load i32, ptr %"R8"
  %"zext.52" = zext i32 %".327" to i64
  %".328" = load i32, ptr %"R9"
  %"zext.53" = zext i32 %".328" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %"ptr_plus_imm.23" = add i64 %"or.26", 48
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".329" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".330" = bitcast ptr %"R38" to ptr
  store float %".329", ptr %".330"
  ; LDG.E.CONSTANT.SYS R39, [R2+0x34]
  %".333" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".333" to i64
  %".334" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".334" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %"ptr_plus_imm.24" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".335" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".336" = bitcast ptr %"R39" to ptr
  store float %".335", ptr %".336"
  ; LDG.E.CONSTANT.SYS R40, [R8+0x34]
  %".339" = load i32, ptr %"R8"
  %"zext.56" = zext i32 %".339" to i64
  %".340" = load i32, ptr %"R9"
  %"zext.57" = zext i32 %".340" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %"ptr_plus_imm.25" = add i64 %"or.28", 52
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".341" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".342" = bitcast ptr %"R40" to ptr
  store float %".341", ptr %".342"
  ; LDG.E.CONSTANT.SYS R41, [R2+0x38]
  %".345" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".345" to i64
  %".346" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".346" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %"ptr_plus_imm.26" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".347" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".348" = bitcast ptr %"R41" to ptr
  store float %".347", ptr %".348"
  ; LDG.E.CONSTANT.SYS R42, [R8+0x38]
  %".351" = load i32, ptr %"R8"
  %"zext.60" = zext i32 %".351" to i64
  %".352" = load i32, ptr %"R9"
  %"zext.61" = zext i32 %".352" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %"ptr_plus_imm.27" = add i64 %"or.30", 56
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".353" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".354" = bitcast ptr %"R42" to ptr
  store float %".353", ptr %".354"
  ; LDG.E.CONSTANT.SYS R44, [R8+0x3c]
  %".357" = load i32, ptr %"R8"
  %"zext.62" = zext i32 %".357" to i64
  %".358" = load i32, ptr %"R9"
  %"zext.63" = zext i32 %".358" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %"ptr_plus_imm.28" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".359" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".360" = bitcast ptr %"R44" to ptr
  store float %".359", ptr %".360"
  ; LDG.E.CONSTANT.SYS R43, [R2+0x3c]
  %".363" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".363" to i64
  %".364" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".364" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %"ptr_plus_imm.29" = add i64 %"or.32", 60
  %"inttoptr_bytes.32" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".365" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".366" = bitcast ptr %"R43" to ptr
  store float %".365", ptr %".366"
  ; IADD3 R11, R11, -0x10, RZ
  %".369" = load i32, ptr %"R11"
  %".370" = add i32 %".369", -16
  %".371" = add i32 %".370", 0
  store i32 %".371", ptr %"R11"
  ; ISETP.GT.AND P1, PT, R11, 0xc, PT
  %".374" = load i32, ptr %"R11"
  %".375" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".374", 12
  %".376" = xor i1 %"cmp.6", -1
  %".377" = and i1 %"cmp.6", %".375"
  %".378" = and i1 %".376", %".375"
  store i1 %".377", ptr %"P1"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".381" = load i32, ptr %"UR4"
  %".382" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".381", i32 64)
  %".383" = extractvalue {i32, i1} %".382", 0
  %".384" = extractvalue {i32, i1} %".382", 1
  %".385" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".383", i32 0)
  %".386" = extractvalue {i32, i1} %".385", 0
  %".387" = extractvalue {i32, i1} %".385", 1
  %".388" = or i1 %".384", %".387"
  store i32 %".386", ptr %"UR4"
  store i1 %".388", ptr %"UP0"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".392" = load i32, ptr %"R2"
  %".393" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".392", i32 64)
  %".394" = extractvalue {i32, i1} %".393", 0
  %".395" = extractvalue {i32, i1} %".393", 1
  %".396" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".394", i32 0)
  %".397" = extractvalue {i32, i1} %".396", 0
  %".398" = extractvalue {i32, i1} %".396", 1
  %".399" = or i1 %".395", %".398"
  store i32 %".397", ptr %"R2"
  store i1 %".399", ptr %"P2"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".403" = load i32, ptr %"UR5"
  %".404" = load i1, ptr %"UP0"
  %".405" = xor i1 1, -1
  %".406" = zext i1 %".404" to i32
  %".407" = zext i1 %".405" to i32
  %"add" = add i32 0, %".403"
  %"add.1" = add i32 %"add", 0
  %"add.2" = add i32 %"add.1", %".406"
  %"add.3" = add i32 %"add.2", %".407"
  store i32 %"add.3", ptr %"UR5"
  ; IADD3 R6, R6, 0x10, RZ
  %".410" = load i32, ptr %"R6"
  %".411" = add i32 %".410", 16
  %".412" = add i32 %".411", 0
  store i32 %".412", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P2, !PT
  %".415" = load i32, ptr %"R3"
  %".416" = load i1, ptr %"P2"
  %".417" = xor i1 1, -1
  %".418" = zext i1 %".416" to i32
  %".419" = zext i1 %".417" to i32
  %"add.4" = add i32 0, %".415"
  %"add.5" = add i32 %"add.4", 0
  %"add.6" = add i32 %"add.5", %".418"
  %"add.7" = add i32 %"add.6", %".419"
  store i32 %"add.7", ptr %"R3"
  ; FFMA R13, R13, R14, R10
  %".422" = load float, ptr %"R13"
  %".423" = load float, ptr %"R14"
  %".424" = load float, ptr %"R10"
  %"fmul" = fmul float %".422", %".423"
  %"fadd" = fadd float %"fmul", %".424"
  %".425" = bitcast ptr %"R13" to ptr
  store float %"fadd", ptr %".425"
  ; FFMA R13, R16, R15, R13
  %".428" = load float, ptr %"R16"
  %".429" = load float, ptr %"R15"
  %".430" = load float, ptr %"R13"
  %"fmul.1" = fmul float %".428", %".429"
  %"fadd.1" = fadd float %"fmul.1", %".430"
  %".431" = bitcast ptr %"R13" to ptr
  store float %"fadd.1", ptr %".431"
  ; FFMA R13, R18, R17, R13
  %".434" = load float, ptr %"R18"
  %".435" = load float, ptr %"R17"
  %".436" = load float, ptr %"R13"
  %"fmul.2" = fmul float %".434", %".435"
  %"fadd.2" = fadd float %"fmul.2", %".436"
  %".437" = bitcast ptr %"R13" to ptr
  store float %"fadd.2", ptr %".437"
  ; FFMA R13, R20, R19, R13
  %".440" = load float, ptr %"R20"
  %".441" = load float, ptr %"R19"
  %".442" = load float, ptr %"R13"
  %"fmul.3" = fmul float %".440", %".441"
  %"fadd.3" = fadd float %"fmul.3", %".442"
  %".443" = bitcast ptr %"R13" to ptr
  store float %"fadd.3", ptr %".443"
  ; FFMA R13, R22, R21, R13
  %".446" = load float, ptr %"R22"
  %".447" = load float, ptr %"R21"
  %".448" = load float, ptr %"R13"
  %"fmul.4" = fmul float %".446", %".447"
  %"fadd.4" = fadd float %"fmul.4", %".448"
  %".449" = bitcast ptr %"R13" to ptr
  store float %"fadd.4", ptr %".449"
  ; FFMA R13, R24, R23, R13
  %".452" = load float, ptr %"R24"
  %".453" = load float, ptr %"R23"
  %".454" = load float, ptr %"R13"
  %"fmul.5" = fmul float %".452", %".453"
  %"fadd.5" = fadd float %"fmul.5", %".454"
  %".455" = bitcast ptr %"R13" to ptr
  store float %"fadd.5", ptr %".455"
  ; FFMA R13, R26, R25, R13
  %".458" = load float, ptr %"R26"
  %".459" = load float, ptr %"R25"
  %".460" = load float, ptr %"R13"
  %"fmul.6" = fmul float %".458", %".459"
  %"fadd.6" = fadd float %"fmul.6", %".460"
  %".461" = bitcast ptr %"R13" to ptr
  store float %"fadd.6", ptr %".461"
  ; FFMA R13, R28, R27, R13
  %".464" = load float, ptr %"R28"
  %".465" = load float, ptr %"R27"
  %".466" = load float, ptr %"R13"
  %"fmul.7" = fmul float %".464", %".465"
  %"fadd.7" = fadd float %"fmul.7", %".466"
  %".467" = bitcast ptr %"R13" to ptr
  store float %"fadd.7", ptr %".467"
  ; FFMA R13, R30, R29, R13
  %".470" = load float, ptr %"R30"
  %".471" = load float, ptr %"R29"
  %".472" = load float, ptr %"R13"
  %"fmul.8" = fmul float %".470", %".471"
  %"fadd.8" = fadd float %"fmul.8", %".472"
  %".473" = bitcast ptr %"R13" to ptr
  store float %"fadd.8", ptr %".473"
  ; FFMA R13, R32, R31, R13
  %".476" = load float, ptr %"R32"
  %".477" = load float, ptr %"R31"
  %".478" = load float, ptr %"R13"
  %"fmul.9" = fmul float %".476", %".477"
  %"fadd.9" = fadd float %"fmul.9", %".478"
  %".479" = bitcast ptr %"R13" to ptr
  store float %"fadd.9", ptr %".479"
  ; FFMA R13, R34, R33, R13
  %".482" = load float, ptr %"R34"
  %".483" = load float, ptr %"R33"
  %".484" = load float, ptr %"R13"
  %"fmul.10" = fmul float %".482", %".483"
  %"fadd.10" = fadd float %"fmul.10", %".484"
  %".485" = bitcast ptr %"R13" to ptr
  store float %"fadd.10", ptr %".485"
  ; FFMA R13, R36, R35, R13
  %".488" = load float, ptr %"R36"
  %".489" = load float, ptr %"R35"
  %".490" = load float, ptr %"R13"
  %"fmul.11" = fmul float %".488", %".489"
  %"fadd.11" = fadd float %"fmul.11", %".490"
  %".491" = bitcast ptr %"R13" to ptr
  store float %"fadd.11", ptr %".491"
  ; FFMA R13, R38, R37, R13
  %".494" = load float, ptr %"R38"
  %".495" = load float, ptr %"R37"
  %".496" = load float, ptr %"R13"
  %"fmul.12" = fmul float %".494", %".495"
  %"fadd.12" = fadd float %"fmul.12", %".496"
  %".497" = bitcast ptr %"R13" to ptr
  store float %"fadd.12", ptr %".497"
  ; FFMA R13, R40, R39, R13
  %".500" = load float, ptr %"R40"
  %".501" = load float, ptr %"R39"
  %".502" = load float, ptr %"R13"
  %"fmul.13" = fmul float %".500", %".501"
  %"fadd.13" = fadd float %"fmul.13", %".502"
  %".503" = bitcast ptr %"R13" to ptr
  store float %"fadd.13", ptr %".503"
  ; FFMA R13, R42, R41, R13
  %".506" = load float, ptr %"R42"
  %".507" = load float, ptr %"R41"
  %".508" = load float, ptr %"R13"
  %"fmul.14" = fmul float %".506", %".507"
  %"fadd.14" = fadd float %"fmul.14", %".508"
  %".509" = bitcast ptr %"R13" to ptr
  store float %"fadd.14", ptr %".509"
  ; FFMA R10, R44, R43, R13
  %".512" = load float, ptr %"R44"
  %".513" = load float, ptr %"R43"
  %".514" = load float, ptr %"R13"
  %"fmul.15" = fmul float %".512", %".513"
  %"fadd.15" = fadd float %"fmul.15", %".514"
  %".515" = bitcast ptr %"R10" to ptr
  store float %"fadd.15", ptr %".515"
  ; @P1 BRA `(.L_x_4)
  %".518" = load i1, ptr %"P1"
  %".519" = icmp eq i1 %".518", 1
  br i1 %".519", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R11, 0x4, PT
  %".522" = load i32, ptr %"R11"
  %".523" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".522", 4
  %".524" = xor i1 %"cmp.7", -1
  %".525" = and i1 %"cmp.7", %".523"
  %".526" = and i1 %".524", %".523"
  store i1 %".525", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".529" = load i1, ptr %"P1"
  %".530" = icmp ne i1 %".529", 1
  br i1 %".530", label %".L_x_5", label %".L_x_3_split_0x05e0"
.L_x_3_split_0x05e0:
  ; MOV R9, UR5
  %".533" = load i32, ptr %"UR5"
  store i32 %".533", ptr %"R9"
  ; IMAD.U32 R8, RZ, RZ, UR4
  %".536" = load i32, ptr %"UR4"
  %"imad_mul.8" = mul i32 0, 0
  %"imad_add.8" = add i32 %"imad_mul.8", %".536"
  store i32 %"imad_add.8", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".539" = load i32, ptr %"R2"
  %"zext.66" = zext i32 %".539" to i64
  %".540" = load i32, ptr %"R3"
  %"zext.67" = zext i32 %".540" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".541" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".542" = bitcast ptr %"R14" to ptr
  store float %".541", ptr %".542"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".545" = load i32, ptr %"R12"
  %".546" = load i32, ptr %"R8"
  %"imad_ext1.3" = zext i32 %".545" to i64
  %"imad_ext2.3" = zext i32 4 to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %"imad_ext3.1" = zext i32 %".546" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %"imad_ext3.1"
  %".547" = and i64 %"imad_add.9", 18446744069414584320
  %".548" = lshr i64 %".547", 32
  %"trunc32.8" = trunc i64 %".548" to i32
  %"trunc32.9" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.9", ptr %"R8"
  store i32 %"trunc32.8", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".552" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".552" to i64
  %".553" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".553" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".554" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".555" = bitcast ptr %"R15" to ptr
  store float %".554", ptr %".555"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".558" = load i32, ptr %"R2"
  %"zext.70" = zext i32 %".558" to i64
  %".559" = load i32, ptr %"R3"
  %"zext.71" = zext i32 %".559" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %"ptr_plus_imm.31" = add i64 %"or.35", 8
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".560" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".561" = bitcast ptr %"R17" to ptr
  store float %".560", ptr %".561"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".564" = load i32, ptr %"R8"
  %"zext.72" = zext i32 %".564" to i64
  %".565" = load i32, ptr %"R9"
  %"zext.73" = zext i32 %".565" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %"inttoptr_bytes.36" = inttoptr i64 %"or.36" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".566" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".567" = bitcast ptr %"R13" to ptr
  store float %".566", ptr %".567"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".570" = load i32, ptr %"R8"
  %"zext.74" = zext i32 %".570" to i64
  %".571" = load i32, ptr %"R9"
  %"zext.75" = zext i32 %".571" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %"ptr_plus_imm.32" = add i64 %"or.37", 4
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".572" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".573" = bitcast ptr %"R16" to ptr
  store float %".572", ptr %".573"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".576" = load i32, ptr %"R8"
  %"zext.76" = zext i32 %".576" to i64
  %".577" = load i32, ptr %"R9"
  %"zext.77" = zext i32 %".577" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %"ptr_plus_imm.33" = add i64 %"or.38", 8
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".578" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".579" = bitcast ptr %"R18" to ptr
  store float %".578", ptr %".579"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".582" = load i32, ptr %"R2"
  %"zext.78" = zext i32 %".582" to i64
  %".583" = load i32, ptr %"R3"
  %"zext.79" = zext i32 %".583" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %"ptr_plus_imm.34" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".584" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".585" = bitcast ptr %"R19" to ptr
  store float %".584", ptr %".585"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".588" = load i32, ptr %"R8"
  %"zext.80" = zext i32 %".588" to i64
  %".589" = load i32, ptr %"R9"
  %"zext.81" = zext i32 %".589" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %"ptr_plus_imm.35" = add i64 %"or.40", 12
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".590" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".591" = bitcast ptr %"R20" to ptr
  store float %".590", ptr %".591"
  ; LDG.E.CONSTANT.SYS R21, [R2+0x10]
  %".594" = load i32, ptr %"R2"
  %"zext.82" = zext i32 %".594" to i64
  %".595" = load i32, ptr %"R3"
  %"zext.83" = zext i32 %".595" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %"ptr_plus_imm.36" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".596" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".597" = bitcast ptr %"R21" to ptr
  store float %".596", ptr %".597"
  ; LDG.E.CONSTANT.SYS R22, [R8+0x10]
  %".600" = load i32, ptr %"R8"
  %"zext.84" = zext i32 %".600" to i64
  %".601" = load i32, ptr %"R9"
  %"zext.85" = zext i32 %".601" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %"ptr_plus_imm.37" = add i64 %"or.42", 16
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".602" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".603" = bitcast ptr %"R22" to ptr
  store float %".602", ptr %".603"
  ; LDG.E.CONSTANT.SYS R23, [R2+0x14]
  %".606" = load i32, ptr %"R2"
  %"zext.86" = zext i32 %".606" to i64
  %".607" = load i32, ptr %"R3"
  %"zext.87" = zext i32 %".607" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %"ptr_plus_imm.38" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".608" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".609" = bitcast ptr %"R23" to ptr
  store float %".608", ptr %".609"
  ; LDG.E.CONSTANT.SYS R24, [R8+0x14]
  %".612" = load i32, ptr %"R8"
  %"zext.88" = zext i32 %".612" to i64
  %".613" = load i32, ptr %"R9"
  %"zext.89" = zext i32 %".613" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %"ptr_plus_imm.39" = add i64 %"or.44", 20
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".614" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".615" = bitcast ptr %"R24" to ptr
  store float %".614", ptr %".615"
  ; LDG.E.CONSTANT.SYS R25, [R2+0x18]
  %".618" = load i32, ptr %"R2"
  %"zext.90" = zext i32 %".618" to i64
  %".619" = load i32, ptr %"R3"
  %"zext.91" = zext i32 %".619" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %"ptr_plus_imm.40" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".620" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".621" = bitcast ptr %"R25" to ptr
  store float %".620", ptr %".621"
  ; LDG.E.CONSTANT.SYS R26, [R8+0x18]
  %".624" = load i32, ptr %"R8"
  %"zext.92" = zext i32 %".624" to i64
  %".625" = load i32, ptr %"R9"
  %"zext.93" = zext i32 %".625" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %"ptr_plus_imm.41" = add i64 %"or.46", 24
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".626" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".627" = bitcast ptr %"R26" to ptr
  store float %".626", ptr %".627"
  ; LDG.E.CONSTANT.SYS R28, [R8+0x1c]
  %".630" = load i32, ptr %"R8"
  %"zext.94" = zext i32 %".630" to i64
  %".631" = load i32, ptr %"R9"
  %"zext.95" = zext i32 %".631" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %"ptr_plus_imm.42" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".632" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".633" = bitcast ptr %"R28" to ptr
  store float %".632", ptr %".633"
  ; LDG.E.CONSTANT.SYS R27, [R2+0x1c]
  %".636" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".636" to i64
  %".637" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".637" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %"ptr_plus_imm.43" = add i64 %"or.48", 28
  %"inttoptr_bytes.48" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".638" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".639" = bitcast ptr %"R27" to ptr
  store float %".638", ptr %".639"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".642" = load i32, ptr %"UR4"
  %".643" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".642", i32 32)
  %".644" = extractvalue {i32, i1} %".643", 0
  %".645" = extractvalue {i32, i1} %".643", 1
  %".646" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".644", i32 0)
  %".647" = extractvalue {i32, i1} %".646", 0
  %".648" = extractvalue {i32, i1} %".646", 1
  %".649" = or i1 %".645", %".648"
  store i32 %".647", ptr %"UR4"
  store i1 %".649", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".653" = xor i1 1, 1
  %".654" = and i1 %".653", 1
  %".655" = and i1 %".654", 1
  ; IADD3 R6, R6, 0x8, RZ
  %".657" = load i32, ptr %"R6"
  %".658" = add i32 %".657", 8
  %".659" = add i32 %".658", 0
  store i32 %".659", ptr %"R6"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".662" = load i32, ptr %"R2"
  %".663" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".662", i32 32)
  %".664" = extractvalue {i32, i1} %".663", 0
  %".665" = extractvalue {i32, i1} %".663", 1
  %".666" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".664", i32 0)
  %".667" = extractvalue {i32, i1} %".666", 0
  %".668" = extractvalue {i32, i1} %".666", 1
  %".669" = or i1 %".665", %".668"
  store i32 %".667", ptr %"R2"
  store i1 %".669", ptr %"P1"
  ; IADD3 R11, R11, -0x8, RZ
  %".673" = load i32, ptr %"R11"
  %".674" = add i32 %".673", -8
  %".675" = add i32 %".674", 0
  store i32 %".675", ptr %"R11"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".678" = load i32, ptr %"R3"
  %".679" = load i1, ptr %"P1"
  %".680" = xor i1 1, -1
  %".681" = zext i1 %".679" to i32
  %".682" = zext i1 %".680" to i32
  %"add.8" = add i32 0, %".678"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".681"
  %"add.11" = add i32 %"add.10", %".682"
  store i32 %"add.11", ptr %"R3"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".685" = load i32, ptr %"UR5"
  %".686" = load i1, ptr %"UP0"
  %".687" = xor i1 1, -1
  %".688" = zext i1 %".686" to i32
  %".689" = zext i1 %".687" to i32
  %"add.12" = add i32 0, %".685"
  %"add.13" = add i32 %"add.12", 0
  %"add.14" = add i32 %"add.13", %".688"
  %"add.15" = add i32 %"add.14", %".689"
  store i32 %"add.15", ptr %"UR5"
  ; FFMA R13, R13, R14, R10
  %".692" = load float, ptr %"R13"
  %".693" = load float, ptr %"R14"
  %".694" = load float, ptr %"R10"
  %"fmul.16" = fmul float %".692", %".693"
  %"fadd.16" = fadd float %"fmul.16", %".694"
  %".695" = bitcast ptr %"R13" to ptr
  store float %"fadd.16", ptr %".695"
  ; FFMA R13, R16, R15, R13
  %".698" = load float, ptr %"R16"
  %".699" = load float, ptr %"R15"
  %".700" = load float, ptr %"R13"
  %"fmul.17" = fmul float %".698", %".699"
  %"fadd.17" = fadd float %"fmul.17", %".700"
  %".701" = bitcast ptr %"R13" to ptr
  store float %"fadd.17", ptr %".701"
  ; FFMA R13, R18, R17, R13
  %".704" = load float, ptr %"R18"
  %".705" = load float, ptr %"R17"
  %".706" = load float, ptr %"R13"
  %"fmul.18" = fmul float %".704", %".705"
  %"fadd.18" = fadd float %"fmul.18", %".706"
  %".707" = bitcast ptr %"R13" to ptr
  store float %"fadd.18", ptr %".707"
  ; FFMA R13, R20, R19, R13
  %".710" = load float, ptr %"R20"
  %".711" = load float, ptr %"R19"
  %".712" = load float, ptr %"R13"
  %"fmul.19" = fmul float %".710", %".711"
  %"fadd.19" = fadd float %"fmul.19", %".712"
  %".713" = bitcast ptr %"R13" to ptr
  store float %"fadd.19", ptr %".713"
  ; FFMA R13, R22, R21, R13
  %".716" = load float, ptr %"R22"
  %".717" = load float, ptr %"R21"
  %".718" = load float, ptr %"R13"
  %"fmul.20" = fmul float %".716", %".717"
  %"fadd.20" = fadd float %"fmul.20", %".718"
  %".719" = bitcast ptr %"R13" to ptr
  store float %"fadd.20", ptr %".719"
  ; FFMA R13, R24, R23, R13
  %".722" = load float, ptr %"R24"
  %".723" = load float, ptr %"R23"
  %".724" = load float, ptr %"R13"
  %"fmul.21" = fmul float %".722", %".723"
  %"fadd.21" = fadd float %"fmul.21", %".724"
  %".725" = bitcast ptr %"R13" to ptr
  store float %"fadd.21", ptr %".725"
  ; FFMA R13, R26, R25, R13
  %".728" = load float, ptr %"R26"
  %".729" = load float, ptr %"R25"
  %".730" = load float, ptr %"R13"
  %"fmul.22" = fmul float %".728", %".729"
  %"fadd.22" = fadd float %"fmul.22", %".730"
  %".731" = bitcast ptr %"R13" to ptr
  store float %"fadd.22", ptr %".731"
  ; FFMA R10, R28, R27, R13
  %".734" = load float, ptr %"R28"
  %".735" = load float, ptr %"R27"
  %".736" = load float, ptr %"R13"
  %"fmul.23" = fmul float %".734", %".735"
  %"fadd.23" = fadd float %"fmul.23", %".736"
  %".737" = bitcast ptr %"R10" to ptr
  store float %"fadd.23", ptr %".737"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R11, RZ, P0
  %".741" = load i32, ptr %"R11"
  %".742" = load i1, ptr %"P0"
  %"cmp.8" = icmp ne i32 %".741", 0
  %".743" = xor i1 %"cmp.8", -1
  %".744" = or i1 %"cmp.8", %".742"
  %".745" = or i1 %".743", %".742"
  store i1 %".744", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".748" = load i1, ptr %"P0"
  %".749" = icmp ne i1 %".748", 1
  br i1 %".749", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; MOV R8, UR4
  %".752" = load i32, ptr %"UR4"
  store i32 %".752", ptr %"R8"
  ; IMAD.U32 R9, RZ, RZ, UR5
  %".755" = load i32, ptr %"UR5"
  %"imad_mul.10" = mul i32 0, 0
  %"imad_add.10" = add i32 %"imad_mul.10", %".755"
  store i32 %"imad_add.10", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".758" = load i32, ptr %"R2"
  %"zext.98" = zext i32 %".758" to i64
  %".759" = load i32, ptr %"R3"
  %"zext.99" = zext i32 %".759" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".760" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".761" = bitcast ptr %"R14" to ptr
  store float %".760", ptr %".761"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".764" = load i32, ptr %"R12"
  %".765" = load i32, ptr %"R8"
  %"imad_ext1.4" = zext i32 %".764" to i64
  %"imad_ext2.4" = zext i32 4 to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3.2" = zext i32 %".765" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %"imad_ext3.2"
  %".766" = and i64 %"imad_add.11", 18446744069414584320
  %".767" = lshr i64 %".766", 32
  %"trunc32.10" = trunc i64 %".767" to i32
  %"trunc32.11" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.11", ptr %"R8"
  store i32 %"trunc32.10", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".771" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".771" to i64
  %".772" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".772" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".773" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".774" = bitcast ptr %"R15" to ptr
  store float %".773", ptr %".774"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".777" = load i32, ptr %"R2"
  %"zext.102" = zext i32 %".777" to i64
  %".778" = load i32, ptr %"R3"
  %"zext.103" = zext i32 %".778" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %"ptr_plus_imm.45" = add i64 %"or.51", 8
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".779" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".780" = bitcast ptr %"R17" to ptr
  store float %".779", ptr %".780"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".783" = load i32, ptr %"R8"
  %"zext.104" = zext i32 %".783" to i64
  %".784" = load i32, ptr %"R9"
  %"zext.105" = zext i32 %".784" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %"inttoptr_bytes.52" = inttoptr i64 %"or.52" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".785" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".786" = bitcast ptr %"R13" to ptr
  store float %".785", ptr %".786"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".789" = load i32, ptr %"R8"
  %"zext.106" = zext i32 %".789" to i64
  %".790" = load i32, ptr %"R9"
  %"zext.107" = zext i32 %".790" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %"ptr_plus_imm.46" = add i64 %"or.53", 4
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".791" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".792" = bitcast ptr %"R16" to ptr
  store float %".791", ptr %".792"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".795" = load i32, ptr %"R8"
  %"zext.108" = zext i32 %".795" to i64
  %".796" = load i32, ptr %"R9"
  %"zext.109" = zext i32 %".796" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %"ptr_plus_imm.47" = add i64 %"or.54", 8
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".797" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".798" = bitcast ptr %"R18" to ptr
  store float %".797", ptr %".798"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".801" = load i32, ptr %"R8"
  %"zext.110" = zext i32 %".801" to i64
  %".802" = load i32, ptr %"R9"
  %"zext.111" = zext i32 %".802" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %"ptr_plus_imm.48" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".803" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".804" = bitcast ptr %"R20" to ptr
  store float %".803", ptr %".804"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".807" = load i32, ptr %"R2"
  %"zext.112" = zext i32 %".807" to i64
  %".808" = load i32, ptr %"R3"
  %"zext.113" = zext i32 %".808" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %"ptr_plus_imm.49" = add i64 %"or.56", 12
  %"inttoptr_bytes.56" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".809" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".810" = bitcast ptr %"R19" to ptr
  store float %".809", ptr %".810"
  ; IADD3 R11, R11, -0x4, RZ
  %".813" = load i32, ptr %"R11"
  %".814" = add i32 %".813", -4
  %".815" = add i32 %".814", 0
  store i32 %".815", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".818" = load i32, ptr %"R11"
  %".819" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".818", 0
  %".820" = xor i1 %"cmp.9", -1
  %".821" = and i1 %"cmp.9", %".819"
  %".822" = and i1 %".820", %".819"
  store i1 %".821", ptr %"P0"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".825" = load i32, ptr %"UR4"
  %".826" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".825", i32 16)
  %".827" = extractvalue {i32, i1} %".826", 0
  %".828" = extractvalue {i32, i1} %".826", 1
  %".829" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".827", i32 0)
  %".830" = extractvalue {i32, i1} %".829", 0
  %".831" = extractvalue {i32, i1} %".829", 1
  %".832" = or i1 %".828", %".831"
  store i32 %".830", ptr %"UR4"
  store i1 %".832", ptr %"UP0"
  ; IADD3 R6, R6, 0x4, RZ
  %".836" = load i32, ptr %"R6"
  %".837" = add i32 %".836", 4
  %".838" = add i32 %".837", 0
  store i32 %".838", ptr %"R6"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".841" = load i32, ptr %"UR5"
  %".842" = load i1, ptr %"UP0"
  %".843" = xor i1 1, -1
  %".844" = zext i1 %".842" to i32
  %".845" = zext i1 %".843" to i32
  %"add.16" = add i32 0, %".841"
  %"add.17" = add i32 %"add.16", 0
  %"add.18" = add i32 %"add.17", %".844"
  %"add.19" = add i32 %"add.18", %".845"
  store i32 %"add.19", ptr %"UR5"
  ; FFMA R13, R13, R14, R10
  %".848" = load float, ptr %"R13"
  %".849" = load float, ptr %"R14"
  %".850" = load float, ptr %"R10"
  %"fmul.24" = fmul float %".848", %".849"
  %"fadd.24" = fadd float %"fmul.24", %".850"
  %".851" = bitcast ptr %"R13" to ptr
  store float %"fadd.24", ptr %".851"
  ; FFMA R13, R16, R15, R13
  %".854" = load float, ptr %"R16"
  %".855" = load float, ptr %"R15"
  %".856" = load float, ptr %"R13"
  %"fmul.25" = fmul float %".854", %".855"
  %"fadd.25" = fadd float %"fmul.25", %".856"
  %".857" = bitcast ptr %"R13" to ptr
  store float %"fadd.25", ptr %".857"
  ; FFMA R17, R18, R17, R13
  %".860" = load float, ptr %"R18"
  %".861" = load float, ptr %"R17"
  %".862" = load float, ptr %"R13"
  %"fmul.26" = fmul float %".860", %".861"
  %"fadd.26" = fadd float %"fmul.26", %".862"
  %".863" = bitcast ptr %"R17" to ptr
  store float %"fadd.26", ptr %".863"
  ; IADD3 R13, P1, R2, 0x10, RZ
  %".866" = load i32, ptr %"R2"
  %".867" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".866", i32 16)
  %".868" = extractvalue {i32, i1} %".867", 0
  %".869" = extractvalue {i32, i1} %".867", 1
  %".870" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".868", i32 0)
  %".871" = extractvalue {i32, i1} %".870", 0
  %".872" = extractvalue {i32, i1} %".870", 1
  %".873" = or i1 %".869", %".872"
  store i32 %".871", ptr %"R13"
  store i1 %".873", ptr %"P1"
  ; IADD3.X R14, RZ, R3, RZ, P1, !PT
  %".877" = load i32, ptr %"R3"
  %".878" = load i1, ptr %"P1"
  %".879" = xor i1 1, -1
  %".880" = zext i1 %".878" to i32
  %".881" = zext i1 %".879" to i32
  %"add.20" = add i32 0, %".877"
  %"add.21" = add i32 %"add.20", 0
  %"add.22" = add i32 %"add.21", %".880"
  %"add.23" = add i32 %"add.22", %".881"
  store i32 %"add.23", ptr %"R14"
  ; MOV R2, R13
  %".884" = load i32, ptr %"R13"
  store i32 %".884", ptr %"R2"
  ; FFMA R10, R20, R19, R17
  %".887" = load float, ptr %"R20"
  %".888" = load float, ptr %"R19"
  %".889" = load float, ptr %"R17"
  %"fmul.27" = fmul float %".887", %".888"
  %"fadd.27" = fadd float %"fmul.27", %".889"
  %".890" = bitcast ptr %"R10" to ptr
  store float %"fadd.27", ptr %".890"
  ; MOV R3, R14
  %".893" = load i32, ptr %"R14"
  store i32 %".893", ptr %"R3"
  ; @P0 BRA `(.L_x_2)
  %".896" = load i1, ptr %"P0"
  %".897" = icmp eq i1 %".896", 1
  br i1 %".897", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".900" = load i32, ptr %"R4"
  %".901" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".900", 0
  %".902" = xor i1 %"cmp.10", -1
  %".903" = and i1 %"cmp.10", %".901"
  %".904" = and i1 %".902", %".901"
  store i1 %".903", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".907" = load i1, ptr %"P0"
  %".908" = icmp ne i1 %".907", 1
  br i1 %".908", label %".L_x_0", label %".L_x_1_split_0x09d0"
.L_x_1_split_0x09d0:
  ; IMAD R2, R0, c[0x0][0x184], R6.reuse
  %".911" = load i32, ptr %"R0"
  %".912" = load i32, ptr %"R6"
  %"imad_mul.12" = mul i32 %".911", %"Arg_5"
  %"imad_add.12" = add i32 %"imad_mul.12", %".912"
  store i32 %"imad_add.12", ptr %"R2"
  ; IMAD R8, R7, c[0x0][0x184], R6
  %".915" = load i32, ptr %"R7"
  %".916" = load i32, ptr %"R6"
  %"imad_mul.13" = mul i32 %".915", %"Arg_5"
  %"imad_add.13" = add i32 %"imad_mul.13", %".916"
  store i32 %"imad_add.13", ptr %"R8"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x168]
  %".919" = load i32, ptr %"R2"
  %".920" = load i32, ptr %"R5"
  %"imad_ext1.5" = zext i32 %".919" to i64
  %"imad_ext2.5" = zext i32 %".920" to i64
  %"imad_mul.14" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %".921" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.14" = add i64 %"imad_mul.14", %".921"
  %".922" = and i64 %"imad_add.14", 18446744069414584320
  %".923" = lshr i64 %".922", 32
  %"trunc32.12" = trunc i64 %".923" to i32
  %"trunc32.13" = trunc i64 %"imad_add.14" to i32
  store i32 %"trunc32.13", ptr %"R2"
  store i32 %"trunc32.12", ptr %"R3"
  ; IMAD.WIDE R8, R8, R5, c[0x0][0x160]
  %".927" = load i32, ptr %"R8"
  %".928" = load i32, ptr %"R5"
  %"imad_ext1.6" = zext i32 %".927" to i64
  %"imad_ext2.6" = zext i32 %".928" to i64
  %"imad_mul.15" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".929" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.15" = add i64 %"imad_mul.15", %".929"
  %".930" = and i64 %"imad_add.15", 18446744069414584320
  %".931" = lshr i64 %".930", 32
  %"trunc32.14" = trunc i64 %".931" to i32
  %"trunc32.15" = trunc i64 %"imad_add.15" to i32
  store i32 %"trunc32.15", ptr %"R8"
  store i32 %"trunc32.14", ptr %"R9"
  ; IMAD.MOV.U32 R11, RZ, RZ, R3
  %".935" = load i32, ptr %"R3"
  %"imad_mul.16" = mul i32 0, 0
  %"imad_add.16" = add i32 %"imad_mul.16", %".935"
  store i32 %"imad_add.16", ptr %"R11"
  br label %".L_x_6"
.L_x_6:
  ; MOV R3, R11
  %".939" = load i32, ptr %"R11"
  store i32 %".939", ptr %"R3"
  ; LDG.E.CONSTANT.SYS R6, [R8]
  %".942" = load i32, ptr %"R8"
  %"zext.114" = zext i32 %".942" to i64
  %".943" = load i32, ptr %"R9"
  %"zext.115" = zext i32 %".943" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".944" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".945" = bitcast ptr %"R6" to ptr
  store float %".944", ptr %".945"
  ; LDG.E.CONSTANT.SYS R3, [R2]
  %".948" = load i32, ptr %"R2"
  %"zext.116" = zext i32 %".948" to i64
  %".949" = load i32, ptr %"R3"
  %"zext.117" = zext i32 %".949" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".950" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".951" = bitcast ptr %"R3" to ptr
  store float %".950", ptr %".951"
  ; IADD3 R4, R4, -0x1, RZ
  %".954" = load i32, ptr %"R4"
  %".955" = add i32 %".954", -1
  %".956" = add i32 %".955", 0
  store i32 %".956", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".959" = load i32, ptr %"R4"
  %".960" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".959", 0
  %".961" = xor i1 %"cmp.11", -1
  %".962" = and i1 %"cmp.11", %".960"
  %".963" = and i1 %".961", %".960"
  store i1 %".962", ptr %"P0"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".966" = load i32, ptr %"R8"
  %".967" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".966", i32 4)
  %".968" = extractvalue {i32, i1} %".967", 0
  %".969" = extractvalue {i32, i1} %".967", 1
  %".970" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".968", i32 0)
  %".971" = extractvalue {i32, i1} %".970", 0
  %".972" = extractvalue {i32, i1} %".970", 1
  %".973" = or i1 %".969", %".972"
  store i32 %".971", ptr %"R8"
  store i1 %".973", ptr %"P2"
  ; IADD3 R2, P1, R2, 0x4, RZ
  %".977" = load i32, ptr %"R2"
  %".978" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".977", i32 4)
  %".979" = extractvalue {i32, i1} %".978", 0
  %".980" = extractvalue {i32, i1} %".978", 1
  %".981" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".979", i32 0)
  %".982" = extractvalue {i32, i1} %".981", 0
  %".983" = extractvalue {i32, i1} %".981", 1
  %".984" = or i1 %".980", %".983"
  store i32 %".982", ptr %"R2"
  store i1 %".984", ptr %"P1"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".988" = load i32, ptr %"R9"
  %".989" = load i1, ptr %"P2"
  %".990" = xor i1 1, -1
  %".991" = zext i1 %".989" to i32
  %".992" = zext i1 %".990" to i32
  %"add.24" = add i32 0, %".988"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".991"
  %"add.27" = add i32 %"add.26", %".992"
  store i32 %"add.27", ptr %"R9"
  ; IADD3.X R11, RZ, R11, RZ, P1, !PT
  %".995" = load i32, ptr %"R11"
  %".996" = load i1, ptr %"P1"
  %".997" = xor i1 1, -1
  %".998" = zext i1 %".996" to i32
  %".999" = zext i1 %".997" to i32
  %"add.28" = add i32 0, %".995"
  %"add.29" = add i32 %"add.28", 0
  %"add.30" = add i32 %"add.29", %".998"
  %"add.31" = add i32 %"add.30", %".999"
  store i32 %"add.31", ptr %"R11"
  ; FFMA R10, R3, R6, R10
  %".1002" = load float, ptr %"R3"
  %".1003" = load float, ptr %"R6"
  %".1004" = load float, ptr %"R10"
  %"fmul.28" = fmul float %".1002", %".1003"
  %"fadd.28" = fadd float %"fmul.28", %".1004"
  %".1005" = bitcast ptr %"R10" to ptr
  store float %"fadd.28", ptr %".1005"
  ; @P0 BRA `(.L_x_6)
  %".1008" = load i1, ptr %"P0"
  %".1009" = icmp eq i1 %".1008", 1
  br i1 %".1009", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; FSETP.GEU.AND P0, PT, R10, RZ, PT
  %".1012" = load float, ptr %"R10"
  %".1013" = load i1, ptr %"PT"
  %"fcmp_ordered" = fcmp uge float %".1012",              0x0
  %".1014" = xor i1 %"fcmp_ordered", -1
  %".1015" = and i1 %"fcmp_ordered", %".1013"
  %".1016" = and i1 %".1014", %".1013"
  store i1 %".1015", ptr %"P0"
  ; IMAD R2, R7, c[0x0][0x188], R0
  %".1019" = load i32, ptr %"R7"
  %".1020" = load i32, ptr %"R0"
  %"imad_mul.17" = mul i32 %".1019", %"Arg_6"
  %"imad_add.17" = add i32 %"imad_mul.17", %".1020"
  store i32 %"imad_add.17", ptr %"R2"
  ; FSEL R7, R10, RZ, P0
  %".1023" = load float, ptr %"R10"
  %".1024" = load i1, ptr %"P0"
  %".1025" = icmp eq i1 %".1024", 1
  %"fsel" = select  i1 %".1025", float %".1023", float              0x0
  %".1026" = bitcast ptr %"R7" to ptr
  store float %"fsel", ptr %".1026"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x178]
  %".1029" = load i32, ptr %"R2"
  %".1030" = load i32, ptr %"R5"
  %"imad_ext1.7" = zext i32 %".1029" to i64
  %"imad_ext2.7" = zext i32 %".1030" to i64
  %"imad_mul.18" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".1031" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.18" = add i64 %"imad_mul.18", %".1031"
  %".1032" = and i64 %"imad_add.18", 18446744069414584320
  %".1033" = lshr i64 %".1032", 32
  %"trunc32.16" = trunc i64 %".1033" to i32
  %"trunc32.17" = trunc i64 %"imad_add.18" to i32
  store i32 %"trunc32.17", ptr %"R2"
  store i32 %"trunc32.16", ptr %"R3"
  ; STG.E.SYS [R2], R7
  %".1037" = load float, ptr %"R7"
  %".1038" = load i32, ptr %"R2"
  %"zext.118" = zext i32 %".1038" to i64
  %".1039" = load i32, ptr %"R3"
  %"zext.119" = zext i32 %".1039" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".1037", ptr addrspace(1) %"ptr_cast_for_access.59"
  ; EXIT
  br label %"ExitFunction"
.L_x_7:
  ; BRA `(.L_x_7)
  br label %".L_x_7"
ExitFunction:
  ret void
}

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()

declare i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()

declare i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()

declare {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".1", i32 %".2")

define ptx_kernel void @"_Z18linear_proj_kernelPKfS0_S0_Pfiii"(ptr %"Arg_0", ptr %"Arg_1", ptr %"Arg_2", ptr %"Arg_3", i32 %"Arg_4", i32 %"Arg_5", i32 %"Arg_6")
{
Entry_.text._Z18linear_proj_kernelPKfS0_S0_Pfiii:
  %"R1" = alloca i32, i32 1
  %"R0" = alloca i32, i32 1
  %"R3" = alloca i32, i32 1
  %"R7" = alloca i32, i32 1
  %"R2" = alloca i32, i32 1
  %"P0" = alloca i1, i32 1
  %"PT" = alloca i1, i32 1
  %"R5" = alloca i32, i32 1
  %"R6" = alloca i32, i32 1
  %"R4" = alloca i32, i32 1
  %"RZ" = alloca i32, i32 1
  %"R10" = alloca i32, i32 1
  %"R11" = alloca i32, i32 1
  %"UR4" = alloca i32, i32 1
  %"R12" = alloca i32, i32 1
  %"P1" = alloca i1, i32 1
  %"R8" = alloca i32, i32 1
  %"R14" = alloca i32, i32 1
  %"R9" = alloca i32, i32 1
  %"UR5" = alloca i32, i32 1
  %"R15" = alloca i32, i32 1
  %"R17" = alloca i32, i32 1
  %"R19" = alloca i32, i32 1
  %"R13" = alloca i32, i32 1
  %"R16" = alloca i32, i32 1
  %"R18" = alloca i32, i32 1
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
  %"R44" = alloca i32, i32 1
  %"R43" = alloca i32, i32 1
  %"UP0" = alloca i1, i32 1
  %"URZ" = alloca i32, i32 1
  %"P2" = alloca i1, i32 1
  %"UPT" = alloca i1, i32 1
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
  ; S2R R7, SR_CTAID.Y
  %"nvvm_ctaid_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ctaid.y"()
  store i32 %"nvvm_ctaid_y", ptr %"R7"
  ; S2R R2, SR_TID.Y
  %"nvvm_threadidx_y" = call i32 @"llvm.nvvm.read.ptx.sreg.tid.y"()
  store i32 %"nvvm_threadidx_y", ptr %"R2"
  ; IMAD R0, R0, c[0x0][0x0], R3
  %".25" = load i32, ptr %"R0"
  %"nvvm_blockdim_x" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.x"()
  %".26" = load i32, ptr %"R3"
  %"imad_mul" = mul i32 %".25", %"nvvm_blockdim_x"
  %"imad_add" = add i32 %"imad_mul", %".26"
  store i32 %"imad_add", ptr %"R0"
  ; ISETP.GE.AND P0, PT, R0, c[0x0][0x188], PT
  %".29" = load i32, ptr %"R0"
  %".30" = load i1, ptr %"PT"
  %"cmp" = icmp sge i32 %".29", %"Arg_6"
  %".31" = xor i1 %"cmp", -1
  %".32" = and i1 %"cmp", %".30"
  %".33" = and i1 %".31", %".30"
  store i1 %".32", ptr %"P0"
  ; IMAD R7, R7, c[0x0][0x4], R2
  %".36" = load i32, ptr %"R7"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".37" = load i32, ptr %"R2"
  %"imad_mul.1" = mul i32 %".36", %"nvvm_blockdim_y"
  %"imad_add.1" = add i32 %"imad_mul.1", %".37"
  store i32 %"imad_add.1", ptr %"R7"
  ; ISETP.GE.OR P0, PT, R7, c[0x0][0x180], P0
  %".40" = load i32, ptr %"R7"
  %".41" = load i1, ptr %"P0"
  %"cmp.1" = icmp sge i32 %".40", %"Arg_4"
  %".42" = xor i1 %"cmp.1", -1
  %".43" = or i1 %"cmp.1", %".41"
  %".44" = or i1 %".42", %".41"
  store i1 %".43", ptr %"P0"
  ; @P0 EXIT
  %".47" = load i1, ptr %"P0"
  %".48" = icmp eq i1 %".47", 1
  br i1 %".48", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_conditionalExpr_0x0090", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_conditionalExpr_0x0090:
  ; EXIT
  br label %"ExitFunction"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".55" = load i32, ptr %"R0"
  %".56" = load i32, ptr %"R5"
  %"imad_ext1" = zext i32 %".55" to i64
  %"imad_ext2" = zext i32 %".56" to i64
  %"imad_mul.2" = mul i64 %"imad_ext1", %"imad_ext2"
  %".57" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.2" = add i64 %"imad_mul.2", %".57"
  %".58" = and i64 %"imad_add.2", 18446744069414584320
  %".59" = lshr i64 %".58", 32
  %"trunc32" = trunc i64 %".59" to i32
  %"trunc32.1" = trunc i64 %"imad_add.2" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; LDG.E.CONSTANT.SYS R6, [R2]
  %".63" = load i32, ptr %"R2"
  %"zext" = zext i32 %".63" to i64
  %".64" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".64" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".65" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".66" = bitcast ptr %"R6" to ptr
  store float %".65", ptr %".66"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, 0x1, PT
  %".71" = load i32, ptr %"R4"
  %".72" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".71", 1
  %".73" = xor i1 %"cmp.2", -1
  %".74" = and i1 %"cmp.2", %".72"
  %".75" = and i1 %".73", %".72"
  store i1 %".74", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".78" = load i1, ptr %"P0"
  %".79" = icmp ne i1 %".78", 1
  br i1 %".79", label %".L_x_8", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".82" = load i32, ptr %"R4"
  %".83" = add i32 %".82", -1
  %".84" = add i32 %".83", 0
  store i32 %".84", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".87" = load i32, ptr %"R4"
  %".88" = xor i1 1, -1
  %".89" = and i32 %".87", 3
  store i32 %".89", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".92" = load i32, ptr %"R2"
  %".93" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".92", 3
  %".94" = xor i1 %"cmp.3", -1
  %".95" = and i1 %"cmp.3", %".93"
  %".96" = and i1 %".94", %".93"
  store i1 %".95", ptr %"P0"
  ; MOV R10, RZ
  %".99" = load i32, ptr %"RZ"
  store i32 %".99", ptr %"R10"
  ; @!P0 BRA `(.L_x_9)
  %".102" = load i1, ptr %"P0"
  %".103" = icmp ne i1 %".102", 1
  br i1 %".103", label %".L_x_9", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150:
  ; IADD3 R11, -R4, c[0x0][0x184], RZ
  %".106" = load i32, ptr %"R4"
  %".107" = sub i32 0, %".106"
  %".108" = add i32 %".107", %"Arg_5"
  %".109" = add i32 %".108", 0
  store i32 %".109", ptr %"R11"
  ; IMAD R2, R7, c[0x0][0x184], RZ
  %".112" = load i32, ptr %"R7"
  %"imad_mul.3" = mul i32 %".112", %"Arg_5"
  %"imad_add.3" = add i32 %"imad_mul.3", 0
  store i32 %"imad_add.3", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x168]
  %".115" = ptrtoint ptr %"Arg_1" to i64
  %".116" = and i64 %".115", 18446744069414584320
  %".117" = lshr i64 %".116", 32
  %"trunc32.2" = trunc i64 %".117" to i32
  %"trunc32.3" = trunc i64 %".115" to i32
  store i32 %"trunc32.3", ptr %"UR4"
  store i32 %"trunc32.2", ptr %"UR5"
  ; IMAD R12, R0, c[0x0][0x184], RZ
  %".121" = load i32, ptr %"R0"
  %"imad_mul.4" = mul i32 %".121", %"Arg_5"
  %"imad_add.4" = add i32 %"imad_mul.4", 0
  store i32 %"imad_add.4", ptr %"R12"
  ; ISETP.GT.AND P0, PT, R11, RZ, PT
  %".124" = load i32, ptr %"R11"
  %".125" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".124", 0
  %".126" = xor i1 %"cmp.4", -1
  %".127" = and i1 %"cmp.4", %".125"
  %".128" = and i1 %".126", %".125"
  store i1 %".127", ptr %"P0"
  ; IMAD.MOV.U32 R10, RZ, RZ, RZ
  %"imad_mul.5" = mul i32 0, 0
  %"imad_add.5" = add i32 %"imad_mul.5", 0
  store i32 %"imad_add.5", ptr %"R10"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x160]
  %".133" = load i32, ptr %"R2"
  %".134" = load i32, ptr %"R5"
  %"imad_ext1.1" = zext i32 %".133" to i64
  %"imad_ext2.1" = zext i32 %".134" to i64
  %"imad_mul.6" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".135" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.6" = add i64 %"imad_mul.6", %".135"
  %".136" = and i64 %"imad_add.6", 18446744069414584320
  %".137" = lshr i64 %".136", 32
  %"trunc32.4" = trunc i64 %".137" to i32
  %"trunc32.5" = trunc i64 %"imad_add.6" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; @!P0 BRA `(.L_x_10)
  %".141" = load i1, ptr %"P0"
  %".142" = icmp ne i1 %".141", 1
  br i1 %".142", label %".L_x_10", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0:
  ; ISETP.GT.AND P1, PT, R11, 0xc, PT
  %".145" = load i32, ptr %"R11"
  %".146" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".145", 12
  %".147" = xor i1 %"cmp.5", -1
  %".148" = and i1 %"cmp.5", %".146"
  %".149" = and i1 %".147", %".146"
  store i1 %".148", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".152" = and i1 1, 1
  %".153" = and i1 %".152", 1
  ; @!P1 BRA `(.L_x_11)
  %".155" = load i1, ptr %"P1"
  %".156" = icmp ne i1 %".155", 1
  br i1 %".156", label %".L_x_11", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".159" = xor i1 1, 1
  %".160" = and i1 %".159", 1
  %".161" = and i1 %".160", 1
  br label %".L_x_12"
.L_x_12:
  ; MOV R8, UR4
  %".164" = load i32, ptr %"UR4"
  store i32 %".164", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".167" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".167" to i64
  %".168" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".168" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".169" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".170" = bitcast ptr %"R14" to ptr
  store float %".169", ptr %".170"
  ; MOV R9, UR5
  %".173" = load i32, ptr %"UR5"
  store i32 %".173", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".176" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".176" to i64
  %".177" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".177" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".178" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".179" = bitcast ptr %"R15" to ptr
  store float %".178", ptr %".179"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".182" = load i32, ptr %"R12"
  %".183" = load i32, ptr %"R8"
  %"imad_ext1.2" = zext i32 %".182" to i64
  %"imad_ext2.2" = zext i32 4 to i64
  %"imad_mul.7" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %"imad_ext3" = zext i32 %".183" to i64
  %"imad_add.7" = add i64 %"imad_mul.7", %"imad_ext3"
  %".184" = and i64 %"imad_add.7", 18446744069414584320
  %".185" = lshr i64 %".184", 32
  %"trunc32.6" = trunc i64 %".185" to i32
  %"trunc32.7" = trunc i64 %"imad_add.7" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".189" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".189" to i64
  %".190" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".190" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm.1" = add i64 %"or.3", 8
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".191" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".192" = bitcast ptr %"R17" to ptr
  store float %".191", ptr %".192"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".195" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".195" to i64
  %".196" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".196" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"ptr_plus_imm.2" = add i64 %"or.4", 12
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".197" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".198" = bitcast ptr %"R19" to ptr
  store float %".197", ptr %".198"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".201" = load i32, ptr %"R8"
  %"zext.10" = zext i32 %".201" to i64
  %".202" = load i32, ptr %"R9"
  %"zext.11" = zext i32 %".202" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"inttoptr_bytes.5" = inttoptr i64 %"or.5" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".203" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".204" = bitcast ptr %"R13" to ptr
  store float %".203", ptr %".204"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".207" = load i32, ptr %"R8"
  %"zext.12" = zext i32 %".207" to i64
  %".208" = load i32, ptr %"R9"
  %"zext.13" = zext i32 %".208" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"ptr_plus_imm.3" = add i64 %"or.6", 4
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".209" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".210" = bitcast ptr %"R16" to ptr
  store float %".209", ptr %".210"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".213" = load i32, ptr %"R8"
  %"zext.14" = zext i32 %".213" to i64
  %".214" = load i32, ptr %"R9"
  %"zext.15" = zext i32 %".214" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.4" = add i64 %"or.7", 8
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".215" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".216" = bitcast ptr %"R18" to ptr
  store float %".215", ptr %".216"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".219" = load i32, ptr %"R8"
  %"zext.16" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R9"
  %"zext.17" = zext i32 %".220" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %"ptr_plus_imm.5" = add i64 %"or.8", 12
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".221" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".222" = bitcast ptr %"R20" to ptr
  store float %".221", ptr %".222"
  ; LDG.E.CONSTANT.SYS R21, [R2+0x10]
  %".225" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".225" to i64
  %".226" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".226" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %"ptr_plus_imm.6" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".227" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".228" = bitcast ptr %"R21" to ptr
  store float %".227", ptr %".228"
  ; LDG.E.CONSTANT.SYS R22, [R8+0x10]
  %".231" = load i32, ptr %"R8"
  %"zext.20" = zext i32 %".231" to i64
  %".232" = load i32, ptr %"R9"
  %"zext.21" = zext i32 %".232" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %"ptr_plus_imm.7" = add i64 %"or.10", 16
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".233" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".234" = bitcast ptr %"R22" to ptr
  store float %".233", ptr %".234"
  ; LDG.E.CONSTANT.SYS R23, [R2+0x14]
  %".237" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".237" to i64
  %".238" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".238" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %"ptr_plus_imm.8" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".239" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".240" = bitcast ptr %"R23" to ptr
  store float %".239", ptr %".240"
  ; LDG.E.CONSTANT.SYS R24, [R8+0x14]
  %".243" = load i32, ptr %"R8"
  %"zext.24" = zext i32 %".243" to i64
  %".244" = load i32, ptr %"R9"
  %"zext.25" = zext i32 %".244" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %"ptr_plus_imm.9" = add i64 %"or.12", 20
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".245" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".246" = bitcast ptr %"R24" to ptr
  store float %".245", ptr %".246"
  ; LDG.E.CONSTANT.SYS R25, [R2+0x18]
  %".249" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".249" to i64
  %".250" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".250" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %"ptr_plus_imm.10" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".251" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".252" = bitcast ptr %"R25" to ptr
  store float %".251", ptr %".252"
  ; LDG.E.CONSTANT.SYS R26, [R8+0x18]
  %".255" = load i32, ptr %"R8"
  %"zext.28" = zext i32 %".255" to i64
  %".256" = load i32, ptr %"R9"
  %"zext.29" = zext i32 %".256" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %"ptr_plus_imm.11" = add i64 %"or.14", 24
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".257" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".258" = bitcast ptr %"R26" to ptr
  store float %".257", ptr %".258"
  ; LDG.E.CONSTANT.SYS R27, [R2+0x1c]
  %".261" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".261" to i64
  %".262" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".262" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %"ptr_plus_imm.12" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".263" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".264" = bitcast ptr %"R27" to ptr
  store float %".263", ptr %".264"
  ; LDG.E.CONSTANT.SYS R28, [R8+0x1c]
  %".267" = load i32, ptr %"R8"
  %"zext.32" = zext i32 %".267" to i64
  %".268" = load i32, ptr %"R9"
  %"zext.33" = zext i32 %".268" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %"ptr_plus_imm.13" = add i64 %"or.16", 28
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".269" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".270" = bitcast ptr %"R28" to ptr
  store float %".269", ptr %".270"
  ; LDG.E.CONSTANT.SYS R29, [R2+0x20]
  %".273" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".273" to i64
  %".274" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".274" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %"ptr_plus_imm.14" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".275" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".276" = bitcast ptr %"R29" to ptr
  store float %".275", ptr %".276"
  ; LDG.E.CONSTANT.SYS R30, [R8+0x20]
  %".279" = load i32, ptr %"R8"
  %"zext.36" = zext i32 %".279" to i64
  %".280" = load i32, ptr %"R9"
  %"zext.37" = zext i32 %".280" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %"ptr_plus_imm.15" = add i64 %"or.18", 32
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".281" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".282" = bitcast ptr %"R30" to ptr
  store float %".281", ptr %".282"
  ; LDG.E.CONSTANT.SYS R31, [R2+0x24]
  %".285" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".285" to i64
  %".286" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".286" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %"ptr_plus_imm.16" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".287" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".288" = bitcast ptr %"R31" to ptr
  store float %".287", ptr %".288"
  ; LDG.E.CONSTANT.SYS R32, [R8+0x24]
  %".291" = load i32, ptr %"R8"
  %"zext.40" = zext i32 %".291" to i64
  %".292" = load i32, ptr %"R9"
  %"zext.41" = zext i32 %".292" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %"ptr_plus_imm.17" = add i64 %"or.20", 36
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".293" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".294" = bitcast ptr %"R32" to ptr
  store float %".293", ptr %".294"
  ; LDG.E.CONSTANT.SYS R33, [R2+0x28]
  %".297" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".297" to i64
  %".298" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".298" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %"ptr_plus_imm.18" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".299" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".300" = bitcast ptr %"R33" to ptr
  store float %".299", ptr %".300"
  ; LDG.E.CONSTANT.SYS R34, [R8+0x28]
  %".303" = load i32, ptr %"R8"
  %"zext.44" = zext i32 %".303" to i64
  %".304" = load i32, ptr %"R9"
  %"zext.45" = zext i32 %".304" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %"ptr_plus_imm.19" = add i64 %"or.22", 40
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".305" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".306" = bitcast ptr %"R34" to ptr
  store float %".305", ptr %".306"
  ; LDG.E.CONSTANT.SYS R35, [R2+0x2c]
  %".309" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".309" to i64
  %".310" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".310" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %"ptr_plus_imm.20" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".311" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".312" = bitcast ptr %"R35" to ptr
  store float %".311", ptr %".312"
  ; LDG.E.CONSTANT.SYS R36, [R8+0x2c]
  %".315" = load i32, ptr %"R8"
  %"zext.48" = zext i32 %".315" to i64
  %".316" = load i32, ptr %"R9"
  %"zext.49" = zext i32 %".316" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %"ptr_plus_imm.21" = add i64 %"or.24", 44
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".317" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".318" = bitcast ptr %"R36" to ptr
  store float %".317", ptr %".318"
  ; LDG.E.CONSTANT.SYS R37, [R2+0x30]
  %".321" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".321" to i64
  %".322" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".322" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %"ptr_plus_imm.22" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".323" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".324" = bitcast ptr %"R37" to ptr
  store float %".323", ptr %".324"
  ; LDG.E.CONSTANT.SYS R38, [R8+0x30]
  %".327" = load i32, ptr %"R8"
  %"zext.52" = zext i32 %".327" to i64
  %".328" = load i32, ptr %"R9"
  %"zext.53" = zext i32 %".328" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %"ptr_plus_imm.23" = add i64 %"or.26", 48
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".329" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".330" = bitcast ptr %"R38" to ptr
  store float %".329", ptr %".330"
  ; LDG.E.CONSTANT.SYS R39, [R2+0x34]
  %".333" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".333" to i64
  %".334" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".334" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %"ptr_plus_imm.24" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".335" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".336" = bitcast ptr %"R39" to ptr
  store float %".335", ptr %".336"
  ; LDG.E.CONSTANT.SYS R40, [R8+0x34]
  %".339" = load i32, ptr %"R8"
  %"zext.56" = zext i32 %".339" to i64
  %".340" = load i32, ptr %"R9"
  %"zext.57" = zext i32 %".340" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %"ptr_plus_imm.25" = add i64 %"or.28", 52
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".341" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".342" = bitcast ptr %"R40" to ptr
  store float %".341", ptr %".342"
  ; LDG.E.CONSTANT.SYS R41, [R2+0x38]
  %".345" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".345" to i64
  %".346" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".346" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %"ptr_plus_imm.26" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".347" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".348" = bitcast ptr %"R41" to ptr
  store float %".347", ptr %".348"
  ; LDG.E.CONSTANT.SYS R42, [R8+0x38]
  %".351" = load i32, ptr %"R8"
  %"zext.60" = zext i32 %".351" to i64
  %".352" = load i32, ptr %"R9"
  %"zext.61" = zext i32 %".352" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %"ptr_plus_imm.27" = add i64 %"or.30", 56
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".353" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".354" = bitcast ptr %"R42" to ptr
  store float %".353", ptr %".354"
  ; LDG.E.CONSTANT.SYS R44, [R8+0x3c]
  %".357" = load i32, ptr %"R8"
  %"zext.62" = zext i32 %".357" to i64
  %".358" = load i32, ptr %"R9"
  %"zext.63" = zext i32 %".358" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %"ptr_plus_imm.28" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".359" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".360" = bitcast ptr %"R44" to ptr
  store float %".359", ptr %".360"
  ; LDG.E.CONSTANT.SYS R43, [R2+0x3c]
  %".363" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".363" to i64
  %".364" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".364" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %"ptr_plus_imm.29" = add i64 %"or.32", 60
  %"inttoptr_bytes.32" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".365" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".366" = bitcast ptr %"R43" to ptr
  store float %".365", ptr %".366"
  ; IADD3 R11, R11, -0x10, RZ
  %".369" = load i32, ptr %"R11"
  %".370" = add i32 %".369", -16
  %".371" = add i32 %".370", 0
  store i32 %".371", ptr %"R11"
  ; ISETP.GT.AND P1, PT, R11, 0xc, PT
  %".374" = load i32, ptr %"R11"
  %".375" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".374", 12
  %".376" = xor i1 %"cmp.6", -1
  %".377" = and i1 %"cmp.6", %".375"
  %".378" = and i1 %".376", %".375"
  store i1 %".377", ptr %"P1"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".381" = load i32, ptr %"UR4"
  %".382" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".381", i32 64)
  %".383" = extractvalue {i32, i1} %".382", 0
  %".384" = extractvalue {i32, i1} %".382", 1
  %".385" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".383", i32 0)
  %".386" = extractvalue {i32, i1} %".385", 0
  %".387" = extractvalue {i32, i1} %".385", 1
  %".388" = or i1 %".384", %".387"
  store i32 %".386", ptr %"UR4"
  store i1 %".388", ptr %"UP0"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".392" = load i32, ptr %"R2"
  %".393" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".392", i32 64)
  %".394" = extractvalue {i32, i1} %".393", 0
  %".395" = extractvalue {i32, i1} %".393", 1
  %".396" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".394", i32 0)
  %".397" = extractvalue {i32, i1} %".396", 0
  %".398" = extractvalue {i32, i1} %".396", 1
  %".399" = or i1 %".395", %".398"
  store i32 %".397", ptr %"R2"
  store i1 %".399", ptr %"P2"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".403" = load i32, ptr %"UR5"
  %".404" = load i1, ptr %"UP0"
  %".405" = xor i1 1, -1
  %".406" = zext i1 %".404" to i32
  %".407" = zext i1 %".405" to i32
  %"add" = add i32 0, %".403"
  %"add.1" = add i32 %"add", 0
  %"add.2" = add i32 %"add.1", %".406"
  %"add.3" = add i32 %"add.2", %".407"
  store i32 %"add.3", ptr %"UR5"
  ; IADD3 R10, R10, 0x10, RZ
  %".410" = load i32, ptr %"R10"
  %".411" = add i32 %".410", 16
  %".412" = add i32 %".411", 0
  store i32 %".412", ptr %"R10"
  ; IADD3.X R3, RZ, R3, RZ, P2, !PT
  %".415" = load i32, ptr %"R3"
  %".416" = load i1, ptr %"P2"
  %".417" = xor i1 1, -1
  %".418" = zext i1 %".416" to i32
  %".419" = zext i1 %".417" to i32
  %"add.4" = add i32 0, %".415"
  %"add.5" = add i32 %"add.4", 0
  %"add.6" = add i32 %"add.5", %".418"
  %"add.7" = add i32 %"add.6", %".419"
  store i32 %"add.7", ptr %"R3"
  ; FFMA R13, R13, R14, R6
  %".422" = load float, ptr %"R13"
  %".423" = load float, ptr %"R14"
  %".424" = load float, ptr %"R6"
  %"fmul" = fmul float %".422", %".423"
  %"fadd" = fadd float %"fmul", %".424"
  %".425" = bitcast ptr %"R13" to ptr
  store float %"fadd", ptr %".425"
  ; FFMA R13, R16, R15, R13
  %".428" = load float, ptr %"R16"
  %".429" = load float, ptr %"R15"
  %".430" = load float, ptr %"R13"
  %"fmul.1" = fmul float %".428", %".429"
  %"fadd.1" = fadd float %"fmul.1", %".430"
  %".431" = bitcast ptr %"R13" to ptr
  store float %"fadd.1", ptr %".431"
  ; FFMA R13, R18, R17, R13
  %".434" = load float, ptr %"R18"
  %".435" = load float, ptr %"R17"
  %".436" = load float, ptr %"R13"
  %"fmul.2" = fmul float %".434", %".435"
  %"fadd.2" = fadd float %"fmul.2", %".436"
  %".437" = bitcast ptr %"R13" to ptr
  store float %"fadd.2", ptr %".437"
  ; FFMA R13, R20, R19, R13
  %".440" = load float, ptr %"R20"
  %".441" = load float, ptr %"R19"
  %".442" = load float, ptr %"R13"
  %"fmul.3" = fmul float %".440", %".441"
  %"fadd.3" = fadd float %"fmul.3", %".442"
  %".443" = bitcast ptr %"R13" to ptr
  store float %"fadd.3", ptr %".443"
  ; FFMA R13, R22, R21, R13
  %".446" = load float, ptr %"R22"
  %".447" = load float, ptr %"R21"
  %".448" = load float, ptr %"R13"
  %"fmul.4" = fmul float %".446", %".447"
  %"fadd.4" = fadd float %"fmul.4", %".448"
  %".449" = bitcast ptr %"R13" to ptr
  store float %"fadd.4", ptr %".449"
  ; FFMA R13, R24, R23, R13
  %".452" = load float, ptr %"R24"
  %".453" = load float, ptr %"R23"
  %".454" = load float, ptr %"R13"
  %"fmul.5" = fmul float %".452", %".453"
  %"fadd.5" = fadd float %"fmul.5", %".454"
  %".455" = bitcast ptr %"R13" to ptr
  store float %"fadd.5", ptr %".455"
  ; FFMA R13, R26, R25, R13
  %".458" = load float, ptr %"R26"
  %".459" = load float, ptr %"R25"
  %".460" = load float, ptr %"R13"
  %"fmul.6" = fmul float %".458", %".459"
  %"fadd.6" = fadd float %"fmul.6", %".460"
  %".461" = bitcast ptr %"R13" to ptr
  store float %"fadd.6", ptr %".461"
  ; FFMA R13, R28, R27, R13
  %".464" = load float, ptr %"R28"
  %".465" = load float, ptr %"R27"
  %".466" = load float, ptr %"R13"
  %"fmul.7" = fmul float %".464", %".465"
  %"fadd.7" = fadd float %"fmul.7", %".466"
  %".467" = bitcast ptr %"R13" to ptr
  store float %"fadd.7", ptr %".467"
  ; FFMA R13, R30, R29, R13
  %".470" = load float, ptr %"R30"
  %".471" = load float, ptr %"R29"
  %".472" = load float, ptr %"R13"
  %"fmul.8" = fmul float %".470", %".471"
  %"fadd.8" = fadd float %"fmul.8", %".472"
  %".473" = bitcast ptr %"R13" to ptr
  store float %"fadd.8", ptr %".473"
  ; FFMA R13, R32, R31, R13
  %".476" = load float, ptr %"R32"
  %".477" = load float, ptr %"R31"
  %".478" = load float, ptr %"R13"
  %"fmul.9" = fmul float %".476", %".477"
  %"fadd.9" = fadd float %"fmul.9", %".478"
  %".479" = bitcast ptr %"R13" to ptr
  store float %"fadd.9", ptr %".479"
  ; FFMA R13, R34, R33, R13
  %".482" = load float, ptr %"R34"
  %".483" = load float, ptr %"R33"
  %".484" = load float, ptr %"R13"
  %"fmul.10" = fmul float %".482", %".483"
  %"fadd.10" = fadd float %"fmul.10", %".484"
  %".485" = bitcast ptr %"R13" to ptr
  store float %"fadd.10", ptr %".485"
  ; FFMA R13, R36, R35, R13
  %".488" = load float, ptr %"R36"
  %".489" = load float, ptr %"R35"
  %".490" = load float, ptr %"R13"
  %"fmul.11" = fmul float %".488", %".489"
  %"fadd.11" = fadd float %"fmul.11", %".490"
  %".491" = bitcast ptr %"R13" to ptr
  store float %"fadd.11", ptr %".491"
  ; FFMA R13, R38, R37, R13
  %".494" = load float, ptr %"R38"
  %".495" = load float, ptr %"R37"
  %".496" = load float, ptr %"R13"
  %"fmul.12" = fmul float %".494", %".495"
  %"fadd.12" = fadd float %"fmul.12", %".496"
  %".497" = bitcast ptr %"R13" to ptr
  store float %"fadd.12", ptr %".497"
  ; FFMA R13, R40, R39, R13
  %".500" = load float, ptr %"R40"
  %".501" = load float, ptr %"R39"
  %".502" = load float, ptr %"R13"
  %"fmul.13" = fmul float %".500", %".501"
  %"fadd.13" = fadd float %"fmul.13", %".502"
  %".503" = bitcast ptr %"R13" to ptr
  store float %"fadd.13", ptr %".503"
  ; FFMA R13, R42, R41, R13
  %".506" = load float, ptr %"R42"
  %".507" = load float, ptr %"R41"
  %".508" = load float, ptr %"R13"
  %"fmul.14" = fmul float %".506", %".507"
  %"fadd.14" = fadd float %"fmul.14", %".508"
  %".509" = bitcast ptr %"R13" to ptr
  store float %"fadd.14", ptr %".509"
  ; FFMA R6, R44, R43, R13
  %".512" = load float, ptr %"R44"
  %".513" = load float, ptr %"R43"
  %".514" = load float, ptr %"R13"
  %"fmul.15" = fmul float %".512", %".513"
  %"fadd.15" = fadd float %"fmul.15", %".514"
  %".515" = bitcast ptr %"R6" to ptr
  store float %"fadd.15", ptr %".515"
  ; @P1 BRA `(.L_x_12)
  %".518" = load i1, ptr %"P1"
  %".519" = icmp eq i1 %".518", 1
  br i1 %".519", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.GT.AND P1, PT, R11, 0x4, PT
  %".522" = load i32, ptr %"R11"
  %".523" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".522", 4
  %".524" = xor i1 %"cmp.7", -1
  %".525" = and i1 %"cmp.7", %".523"
  %".526" = and i1 %".524", %".523"
  store i1 %".525", ptr %"P1"
  ; @!P1 BRA `(.L_x_13)
  %".529" = load i1, ptr %"P1"
  %".530" = icmp ne i1 %".529", 1
  br i1 %".530", label %".L_x_13", label %".L_x_11_split_0x05e0"
.L_x_11_split_0x05e0:
  ; MOV R9, UR5
  %".533" = load i32, ptr %"UR5"
  store i32 %".533", ptr %"R9"
  ; IMAD.U32 R8, RZ, RZ, UR4
  %".536" = load i32, ptr %"UR4"
  %"imad_mul.8" = mul i32 0, 0
  %"imad_add.8" = add i32 %"imad_mul.8", %".536"
  store i32 %"imad_add.8", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".539" = load i32, ptr %"R2"
  %"zext.66" = zext i32 %".539" to i64
  %".540" = load i32, ptr %"R3"
  %"zext.67" = zext i32 %".540" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".541" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".542" = bitcast ptr %"R14" to ptr
  store float %".541", ptr %".542"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".545" = load i32, ptr %"R12"
  %".546" = load i32, ptr %"R8"
  %"imad_ext1.3" = zext i32 %".545" to i64
  %"imad_ext2.3" = zext i32 4 to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %"imad_ext3.1" = zext i32 %".546" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %"imad_ext3.1"
  %".547" = and i64 %"imad_add.9", 18446744069414584320
  %".548" = lshr i64 %".547", 32
  %"trunc32.8" = trunc i64 %".548" to i32
  %"trunc32.9" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.9", ptr %"R8"
  store i32 %"trunc32.8", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".552" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".552" to i64
  %".553" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".553" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".554" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".555" = bitcast ptr %"R15" to ptr
  store float %".554", ptr %".555"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".558" = load i32, ptr %"R2"
  %"zext.70" = zext i32 %".558" to i64
  %".559" = load i32, ptr %"R3"
  %"zext.71" = zext i32 %".559" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %"ptr_plus_imm.31" = add i64 %"or.35", 8
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".560" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".561" = bitcast ptr %"R17" to ptr
  store float %".560", ptr %".561"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".564" = load i32, ptr %"R8"
  %"zext.72" = zext i32 %".564" to i64
  %".565" = load i32, ptr %"R9"
  %"zext.73" = zext i32 %".565" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %"inttoptr_bytes.36" = inttoptr i64 %"or.36" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".566" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".567" = bitcast ptr %"R13" to ptr
  store float %".566", ptr %".567"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".570" = load i32, ptr %"R8"
  %"zext.74" = zext i32 %".570" to i64
  %".571" = load i32, ptr %"R9"
  %"zext.75" = zext i32 %".571" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %"ptr_plus_imm.32" = add i64 %"or.37", 4
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".572" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".573" = bitcast ptr %"R16" to ptr
  store float %".572", ptr %".573"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".576" = load i32, ptr %"R8"
  %"zext.76" = zext i32 %".576" to i64
  %".577" = load i32, ptr %"R9"
  %"zext.77" = zext i32 %".577" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %"ptr_plus_imm.33" = add i64 %"or.38", 8
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".578" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".579" = bitcast ptr %"R18" to ptr
  store float %".578", ptr %".579"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".582" = load i32, ptr %"R2"
  %"zext.78" = zext i32 %".582" to i64
  %".583" = load i32, ptr %"R3"
  %"zext.79" = zext i32 %".583" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %"ptr_plus_imm.34" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".584" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".585" = bitcast ptr %"R19" to ptr
  store float %".584", ptr %".585"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".588" = load i32, ptr %"R8"
  %"zext.80" = zext i32 %".588" to i64
  %".589" = load i32, ptr %"R9"
  %"zext.81" = zext i32 %".589" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %"ptr_plus_imm.35" = add i64 %"or.40", 12
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".590" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".591" = bitcast ptr %"R20" to ptr
  store float %".590", ptr %".591"
  ; LDG.E.CONSTANT.SYS R21, [R2+0x10]
  %".594" = load i32, ptr %"R2"
  %"zext.82" = zext i32 %".594" to i64
  %".595" = load i32, ptr %"R3"
  %"zext.83" = zext i32 %".595" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %"ptr_plus_imm.36" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".596" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".597" = bitcast ptr %"R21" to ptr
  store float %".596", ptr %".597"
  ; LDG.E.CONSTANT.SYS R22, [R8+0x10]
  %".600" = load i32, ptr %"R8"
  %"zext.84" = zext i32 %".600" to i64
  %".601" = load i32, ptr %"R9"
  %"zext.85" = zext i32 %".601" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %"ptr_plus_imm.37" = add i64 %"or.42", 16
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".602" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".603" = bitcast ptr %"R22" to ptr
  store float %".602", ptr %".603"
  ; LDG.E.CONSTANT.SYS R23, [R2+0x14]
  %".606" = load i32, ptr %"R2"
  %"zext.86" = zext i32 %".606" to i64
  %".607" = load i32, ptr %"R3"
  %"zext.87" = zext i32 %".607" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %"ptr_plus_imm.38" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".608" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".609" = bitcast ptr %"R23" to ptr
  store float %".608", ptr %".609"
  ; LDG.E.CONSTANT.SYS R24, [R8+0x14]
  %".612" = load i32, ptr %"R8"
  %"zext.88" = zext i32 %".612" to i64
  %".613" = load i32, ptr %"R9"
  %"zext.89" = zext i32 %".613" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %"ptr_plus_imm.39" = add i64 %"or.44", 20
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".614" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".615" = bitcast ptr %"R24" to ptr
  store float %".614", ptr %".615"
  ; LDG.E.CONSTANT.SYS R25, [R2+0x18]
  %".618" = load i32, ptr %"R2"
  %"zext.90" = zext i32 %".618" to i64
  %".619" = load i32, ptr %"R3"
  %"zext.91" = zext i32 %".619" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %"ptr_plus_imm.40" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".620" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".621" = bitcast ptr %"R25" to ptr
  store float %".620", ptr %".621"
  ; LDG.E.CONSTANT.SYS R26, [R8+0x18]
  %".624" = load i32, ptr %"R8"
  %"zext.92" = zext i32 %".624" to i64
  %".625" = load i32, ptr %"R9"
  %"zext.93" = zext i32 %".625" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %"ptr_plus_imm.41" = add i64 %"or.46", 24
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".626" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".627" = bitcast ptr %"R26" to ptr
  store float %".626", ptr %".627"
  ; LDG.E.CONSTANT.SYS R28, [R8+0x1c]
  %".630" = load i32, ptr %"R8"
  %"zext.94" = zext i32 %".630" to i64
  %".631" = load i32, ptr %"R9"
  %"zext.95" = zext i32 %".631" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %"ptr_plus_imm.42" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".632" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".633" = bitcast ptr %"R28" to ptr
  store float %".632", ptr %".633"
  ; LDG.E.CONSTANT.SYS R27, [R2+0x1c]
  %".636" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".636" to i64
  %".637" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".637" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %"ptr_plus_imm.43" = add i64 %"or.48", 28
  %"inttoptr_bytes.48" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".638" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".639" = bitcast ptr %"R27" to ptr
  store float %".638", ptr %".639"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".642" = load i32, ptr %"UR4"
  %".643" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".642", i32 32)
  %".644" = extractvalue {i32, i1} %".643", 0
  %".645" = extractvalue {i32, i1} %".643", 1
  %".646" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".644", i32 0)
  %".647" = extractvalue {i32, i1} %".646", 0
  %".648" = extractvalue {i32, i1} %".646", 1
  %".649" = or i1 %".645", %".648"
  store i32 %".647", ptr %"UR4"
  store i1 %".649", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".653" = xor i1 1, 1
  %".654" = and i1 %".653", 1
  %".655" = and i1 %".654", 1
  ; IADD3 R10, R10, 0x8, RZ
  %".657" = load i32, ptr %"R10"
  %".658" = add i32 %".657", 8
  %".659" = add i32 %".658", 0
  store i32 %".659", ptr %"R10"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".662" = load i32, ptr %"R2"
  %".663" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".662", i32 32)
  %".664" = extractvalue {i32, i1} %".663", 0
  %".665" = extractvalue {i32, i1} %".663", 1
  %".666" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".664", i32 0)
  %".667" = extractvalue {i32, i1} %".666", 0
  %".668" = extractvalue {i32, i1} %".666", 1
  %".669" = or i1 %".665", %".668"
  store i32 %".667", ptr %"R2"
  store i1 %".669", ptr %"P1"
  ; IADD3 R11, R11, -0x8, RZ
  %".673" = load i32, ptr %"R11"
  %".674" = add i32 %".673", -8
  %".675" = add i32 %".674", 0
  store i32 %".675", ptr %"R11"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".678" = load i32, ptr %"R3"
  %".679" = load i1, ptr %"P1"
  %".680" = xor i1 1, -1
  %".681" = zext i1 %".679" to i32
  %".682" = zext i1 %".680" to i32
  %"add.8" = add i32 0, %".678"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".681"
  %"add.11" = add i32 %"add.10", %".682"
  store i32 %"add.11", ptr %"R3"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".685" = load i32, ptr %"UR5"
  %".686" = load i1, ptr %"UP0"
  %".687" = xor i1 1, -1
  %".688" = zext i1 %".686" to i32
  %".689" = zext i1 %".687" to i32
  %"add.12" = add i32 0, %".685"
  %"add.13" = add i32 %"add.12", 0
  %"add.14" = add i32 %"add.13", %".688"
  %"add.15" = add i32 %"add.14", %".689"
  store i32 %"add.15", ptr %"UR5"
  ; FFMA R13, R13, R14, R6
  %".692" = load float, ptr %"R13"
  %".693" = load float, ptr %"R14"
  %".694" = load float, ptr %"R6"
  %"fmul.16" = fmul float %".692", %".693"
  %"fadd.16" = fadd float %"fmul.16", %".694"
  %".695" = bitcast ptr %"R13" to ptr
  store float %"fadd.16", ptr %".695"
  ; FFMA R13, R16, R15, R13
  %".698" = load float, ptr %"R16"
  %".699" = load float, ptr %"R15"
  %".700" = load float, ptr %"R13"
  %"fmul.17" = fmul float %".698", %".699"
  %"fadd.17" = fadd float %"fmul.17", %".700"
  %".701" = bitcast ptr %"R13" to ptr
  store float %"fadd.17", ptr %".701"
  ; FFMA R13, R18, R17, R13
  %".704" = load float, ptr %"R18"
  %".705" = load float, ptr %"R17"
  %".706" = load float, ptr %"R13"
  %"fmul.18" = fmul float %".704", %".705"
  %"fadd.18" = fadd float %"fmul.18", %".706"
  %".707" = bitcast ptr %"R13" to ptr
  store float %"fadd.18", ptr %".707"
  ; FFMA R13, R20, R19, R13
  %".710" = load float, ptr %"R20"
  %".711" = load float, ptr %"R19"
  %".712" = load float, ptr %"R13"
  %"fmul.19" = fmul float %".710", %".711"
  %"fadd.19" = fadd float %"fmul.19", %".712"
  %".713" = bitcast ptr %"R13" to ptr
  store float %"fadd.19", ptr %".713"
  ; FFMA R13, R22, R21, R13
  %".716" = load float, ptr %"R22"
  %".717" = load float, ptr %"R21"
  %".718" = load float, ptr %"R13"
  %"fmul.20" = fmul float %".716", %".717"
  %"fadd.20" = fadd float %"fmul.20", %".718"
  %".719" = bitcast ptr %"R13" to ptr
  store float %"fadd.20", ptr %".719"
  ; FFMA R13, R24, R23, R13
  %".722" = load float, ptr %"R24"
  %".723" = load float, ptr %"R23"
  %".724" = load float, ptr %"R13"
  %"fmul.21" = fmul float %".722", %".723"
  %"fadd.21" = fadd float %"fmul.21", %".724"
  %".725" = bitcast ptr %"R13" to ptr
  store float %"fadd.21", ptr %".725"
  ; FFMA R13, R26, R25, R13
  %".728" = load float, ptr %"R26"
  %".729" = load float, ptr %"R25"
  %".730" = load float, ptr %"R13"
  %"fmul.22" = fmul float %".728", %".729"
  %"fadd.22" = fadd float %"fmul.22", %".730"
  %".731" = bitcast ptr %"R13" to ptr
  store float %"fadd.22", ptr %".731"
  ; FFMA R6, R28, R27, R13
  %".734" = load float, ptr %"R28"
  %".735" = load float, ptr %"R27"
  %".736" = load float, ptr %"R13"
  %"fmul.23" = fmul float %".734", %".735"
  %"fadd.23" = fadd float %"fmul.23", %".736"
  %".737" = bitcast ptr %"R6" to ptr
  store float %"fadd.23", ptr %".737"
  br label %".L_x_13"
.L_x_13:
  ; ISETP.NE.OR P0, PT, R11, RZ, P0
  %".741" = load i32, ptr %"R11"
  %".742" = load i1, ptr %"P0"
  %"cmp.8" = icmp ne i32 %".741", 0
  %".743" = xor i1 %"cmp.8", -1
  %".744" = or i1 %"cmp.8", %".742"
  %".745" = or i1 %".743", %".742"
  store i1 %".744", ptr %"P0"
  ; @!P0 BRA `(.L_x_9)
  %".748" = load i1, ptr %"P0"
  %".749" = icmp ne i1 %".748", 1
  br i1 %".749", label %".L_x_9", label %".L_x_10"
.L_x_10:
  ; MOV R8, UR4
  %".752" = load i32, ptr %"UR4"
  store i32 %".752", ptr %"R8"
  ; IMAD.U32 R9, RZ, RZ, UR5
  %".755" = load i32, ptr %"UR5"
  %"imad_mul.10" = mul i32 0, 0
  %"imad_add.10" = add i32 %"imad_mul.10", %".755"
  store i32 %"imad_add.10", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".758" = load i32, ptr %"R2"
  %"zext.98" = zext i32 %".758" to i64
  %".759" = load i32, ptr %"R3"
  %"zext.99" = zext i32 %".759" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".760" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".761" = bitcast ptr %"R14" to ptr
  store float %".760", ptr %".761"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".764" = load i32, ptr %"R12"
  %".765" = load i32, ptr %"R8"
  %"imad_ext1.4" = zext i32 %".764" to i64
  %"imad_ext2.4" = zext i32 4 to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3.2" = zext i32 %".765" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %"imad_ext3.2"
  %".766" = and i64 %"imad_add.11", 18446744069414584320
  %".767" = lshr i64 %".766", 32
  %"trunc32.10" = trunc i64 %".767" to i32
  %"trunc32.11" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.11", ptr %"R8"
  store i32 %"trunc32.10", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".771" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".771" to i64
  %".772" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".772" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".773" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".774" = bitcast ptr %"R15" to ptr
  store float %".773", ptr %".774"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".777" = load i32, ptr %"R2"
  %"zext.102" = zext i32 %".777" to i64
  %".778" = load i32, ptr %"R3"
  %"zext.103" = zext i32 %".778" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %"ptr_plus_imm.45" = add i64 %"or.51", 8
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".779" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".780" = bitcast ptr %"R17" to ptr
  store float %".779", ptr %".780"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".783" = load i32, ptr %"R8"
  %"zext.104" = zext i32 %".783" to i64
  %".784" = load i32, ptr %"R9"
  %"zext.105" = zext i32 %".784" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %"inttoptr_bytes.52" = inttoptr i64 %"or.52" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".785" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".786" = bitcast ptr %"R13" to ptr
  store float %".785", ptr %".786"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".789" = load i32, ptr %"R8"
  %"zext.106" = zext i32 %".789" to i64
  %".790" = load i32, ptr %"R9"
  %"zext.107" = zext i32 %".790" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %"ptr_plus_imm.46" = add i64 %"or.53", 4
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".791" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".792" = bitcast ptr %"R16" to ptr
  store float %".791", ptr %".792"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".795" = load i32, ptr %"R8"
  %"zext.108" = zext i32 %".795" to i64
  %".796" = load i32, ptr %"R9"
  %"zext.109" = zext i32 %".796" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %"ptr_plus_imm.47" = add i64 %"or.54", 8
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".797" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".798" = bitcast ptr %"R18" to ptr
  store float %".797", ptr %".798"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".801" = load i32, ptr %"R8"
  %"zext.110" = zext i32 %".801" to i64
  %".802" = load i32, ptr %"R9"
  %"zext.111" = zext i32 %".802" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %"ptr_plus_imm.48" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".803" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".804" = bitcast ptr %"R20" to ptr
  store float %".803", ptr %".804"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".807" = load i32, ptr %"R2"
  %"zext.112" = zext i32 %".807" to i64
  %".808" = load i32, ptr %"R3"
  %"zext.113" = zext i32 %".808" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %"ptr_plus_imm.49" = add i64 %"or.56", 12
  %"inttoptr_bytes.56" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".809" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".810" = bitcast ptr %"R19" to ptr
  store float %".809", ptr %".810"
  ; IADD3 R11, R11, -0x4, RZ
  %".813" = load i32, ptr %"R11"
  %".814" = add i32 %".813", -4
  %".815" = add i32 %".814", 0
  store i32 %".815", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".818" = load i32, ptr %"R11"
  %".819" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".818", 0
  %".820" = xor i1 %"cmp.9", -1
  %".821" = and i1 %"cmp.9", %".819"
  %".822" = and i1 %".820", %".819"
  store i1 %".821", ptr %"P0"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".825" = load i32, ptr %"UR4"
  %".826" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".825", i32 16)
  %".827" = extractvalue {i32, i1} %".826", 0
  %".828" = extractvalue {i32, i1} %".826", 1
  %".829" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".827", i32 0)
  %".830" = extractvalue {i32, i1} %".829", 0
  %".831" = extractvalue {i32, i1} %".829", 1
  %".832" = or i1 %".828", %".831"
  store i32 %".830", ptr %"UR4"
  store i1 %".832", ptr %"UP0"
  ; IADD3 R10, R10, 0x4, RZ
  %".836" = load i32, ptr %"R10"
  %".837" = add i32 %".836", 4
  %".838" = add i32 %".837", 0
  store i32 %".838", ptr %"R10"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".841" = load i32, ptr %"UR5"
  %".842" = load i1, ptr %"UP0"
  %".843" = xor i1 1, -1
  %".844" = zext i1 %".842" to i32
  %".845" = zext i1 %".843" to i32
  %"add.16" = add i32 0, %".841"
  %"add.17" = add i32 %"add.16", 0
  %"add.18" = add i32 %"add.17", %".844"
  %"add.19" = add i32 %"add.18", %".845"
  store i32 %"add.19", ptr %"UR5"
  ; FFMA R13, R13, R14, R6
  %".848" = load float, ptr %"R13"
  %".849" = load float, ptr %"R14"
  %".850" = load float, ptr %"R6"
  %"fmul.24" = fmul float %".848", %".849"
  %"fadd.24" = fadd float %"fmul.24", %".850"
  %".851" = bitcast ptr %"R13" to ptr
  store float %"fadd.24", ptr %".851"
  ; FFMA R13, R16, R15, R13
  %".854" = load float, ptr %"R16"
  %".855" = load float, ptr %"R15"
  %".856" = load float, ptr %"R13"
  %"fmul.25" = fmul float %".854", %".855"
  %"fadd.25" = fadd float %"fmul.25", %".856"
  %".857" = bitcast ptr %"R13" to ptr
  store float %"fadd.25", ptr %".857"
  ; FFMA R17, R18, R17, R13
  %".860" = load float, ptr %"R18"
  %".861" = load float, ptr %"R17"
  %".862" = load float, ptr %"R13"
  %"fmul.26" = fmul float %".860", %".861"
  %"fadd.26" = fadd float %"fmul.26", %".862"
  %".863" = bitcast ptr %"R17" to ptr
  store float %"fadd.26", ptr %".863"
  ; IADD3 R13, P1, R2, 0x10, RZ
  %".866" = load i32, ptr %"R2"
  %".867" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".866", i32 16)
  %".868" = extractvalue {i32, i1} %".867", 0
  %".869" = extractvalue {i32, i1} %".867", 1
  %".870" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".868", i32 0)
  %".871" = extractvalue {i32, i1} %".870", 0
  %".872" = extractvalue {i32, i1} %".870", 1
  %".873" = or i1 %".869", %".872"
  store i32 %".871", ptr %"R13"
  store i1 %".873", ptr %"P1"
  ; IADD3.X R14, RZ, R3, RZ, P1, !PT
  %".877" = load i32, ptr %"R3"
  %".878" = load i1, ptr %"P1"
  %".879" = xor i1 1, -1
  %".880" = zext i1 %".878" to i32
  %".881" = zext i1 %".879" to i32
  %"add.20" = add i32 0, %".877"
  %"add.21" = add i32 %"add.20", 0
  %"add.22" = add i32 %"add.21", %".880"
  %"add.23" = add i32 %"add.22", %".881"
  store i32 %"add.23", ptr %"R14"
  ; MOV R2, R13
  %".884" = load i32, ptr %"R13"
  store i32 %".884", ptr %"R2"
  ; FFMA R6, R20, R19, R17
  %".887" = load float, ptr %"R20"
  %".888" = load float, ptr %"R19"
  %".889" = load float, ptr %"R17"
  %"fmul.27" = fmul float %".887", %".888"
  %"fadd.27" = fadd float %"fmul.27", %".889"
  %".890" = bitcast ptr %"R6" to ptr
  store float %"fadd.27", ptr %".890"
  ; MOV R3, R14
  %".893" = load i32, ptr %"R14"
  store i32 %".893", ptr %"R3"
  ; @P0 BRA `(.L_x_10)
  %".896" = load i1, ptr %"P0"
  %".897" = icmp eq i1 %".896", 1
  br i1 %".897", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".900" = load i32, ptr %"R4"
  %".901" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".900", 0
  %".902" = xor i1 %"cmp.10", -1
  %".903" = and i1 %"cmp.10", %".901"
  %".904" = and i1 %".902", %".901"
  store i1 %".903", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".907" = load i1, ptr %"P0"
  %".908" = icmp ne i1 %".907", 1
  br i1 %".908", label %".L_x_8", label %".L_x_9_split_0x09d0"
.L_x_9_split_0x09d0:
  ; IMAD R2, R0, c[0x0][0x184], R10.reuse
  %".911" = load i32, ptr %"R0"
  %".912" = load i32, ptr %"R10"
  %"imad_mul.12" = mul i32 %".911", %"Arg_5"
  %"imad_add.12" = add i32 %"imad_mul.12", %".912"
  store i32 %"imad_add.12", ptr %"R2"
  ; IMAD R8, R7, c[0x0][0x184], R10
  %".915" = load i32, ptr %"R7"
  %".916" = load i32, ptr %"R10"
  %"imad_mul.13" = mul i32 %".915", %"Arg_5"
  %"imad_add.13" = add i32 %"imad_mul.13", %".916"
  store i32 %"imad_add.13", ptr %"R8"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x168]
  %".919" = load i32, ptr %"R2"
  %".920" = load i32, ptr %"R5"
  %"imad_ext1.5" = zext i32 %".919" to i64
  %"imad_ext2.5" = zext i32 %".920" to i64
  %"imad_mul.14" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %".921" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.14" = add i64 %"imad_mul.14", %".921"
  %".922" = and i64 %"imad_add.14", 18446744069414584320
  %".923" = lshr i64 %".922", 32
  %"trunc32.12" = trunc i64 %".923" to i32
  %"trunc32.13" = trunc i64 %"imad_add.14" to i32
  store i32 %"trunc32.13", ptr %"R2"
  store i32 %"trunc32.12", ptr %"R3"
  ; IMAD.WIDE R8, R8, R5, c[0x0][0x160]
  %".927" = load i32, ptr %"R8"
  %".928" = load i32, ptr %"R5"
  %"imad_ext1.6" = zext i32 %".927" to i64
  %"imad_ext2.6" = zext i32 %".928" to i64
  %"imad_mul.15" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".929" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.15" = add i64 %"imad_mul.15", %".929"
  %".930" = and i64 %"imad_add.15", 18446744069414584320
  %".931" = lshr i64 %".930", 32
  %"trunc32.14" = trunc i64 %".931" to i32
  %"trunc32.15" = trunc i64 %"imad_add.15" to i32
  store i32 %"trunc32.15", ptr %"R8"
  store i32 %"trunc32.14", ptr %"R9"
  ; MOV R11, R3
  %".935" = load i32, ptr %"R3"
  store i32 %".935", ptr %"R11"
  ; IMAD.MOV.U32 R10, RZ, RZ, R8
  %".938" = load i32, ptr %"R8"
  %"imad_mul.16" = mul i32 0, 0
  %"imad_add.16" = add i32 %"imad_mul.16", %".938"
  store i32 %"imad_add.16", ptr %"R10"
  br label %".L_x_14"
.L_x_14:
  ; MOV R3, R11
  %".942" = load i32, ptr %"R11"
  store i32 %".942", ptr %"R3"
  ; MOV R8, R10
  %".945" = load i32, ptr %"R10"
  store i32 %".945", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R3, [R2]
  %".948" = load i32, ptr %"R2"
  %"zext.114" = zext i32 %".948" to i64
  %".949" = load i32, ptr %"R3"
  %"zext.115" = zext i32 %".949" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".950" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".951" = bitcast ptr %"R3" to ptr
  store float %".950", ptr %".951"
  ; LDG.E.CONSTANT.SYS R8, [R8]
  %".954" = load i32, ptr %"R8"
  %"zext.116" = zext i32 %".954" to i64
  %".955" = load i32, ptr %"R9"
  %"zext.117" = zext i32 %".955" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".956" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".957" = bitcast ptr %"R8" to ptr
  store float %".956", ptr %".957"
  ; IADD3 R4, R4, -0x1, RZ
  %".960" = load i32, ptr %"R4"
  %".961" = add i32 %".960", -1
  %".962" = add i32 %".961", 0
  store i32 %".962", ptr %"R4"
  ; IADD3 R10, P2, R10, 0x4, RZ
  %".965" = load i32, ptr %"R10"
  %".966" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".965", i32 4)
  %".967" = extractvalue {i32, i1} %".966", 0
  %".968" = extractvalue {i32, i1} %".966", 1
  %".969" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".967", i32 0)
  %".970" = extractvalue {i32, i1} %".969", 0
  %".971" = extractvalue {i32, i1} %".969", 1
  %".972" = or i1 %".968", %".971"
  store i32 %".970", ptr %"R10"
  store i1 %".972", ptr %"P2"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".976" = load i32, ptr %"R4"
  %".977" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".976", 0
  %".978" = xor i1 %"cmp.11", -1
  %".979" = and i1 %"cmp.11", %".977"
  %".980" = and i1 %".978", %".977"
  store i1 %".979", ptr %"P0"
  ; IADD3 R2, P1, R2, 0x4, RZ
  %".983" = load i32, ptr %"R2"
  %".984" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".983", i32 4)
  %".985" = extractvalue {i32, i1} %".984", 0
  %".986" = extractvalue {i32, i1} %".984", 1
  %".987" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".985", i32 0)
  %".988" = extractvalue {i32, i1} %".987", 0
  %".989" = extractvalue {i32, i1} %".987", 1
  %".990" = or i1 %".986", %".989"
  store i32 %".988", ptr %"R2"
  store i1 %".990", ptr %"P1"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".994" = load i32, ptr %"R9"
  %".995" = load i1, ptr %"P2"
  %".996" = xor i1 1, -1
  %".997" = zext i1 %".995" to i32
  %".998" = zext i1 %".996" to i32
  %"add.24" = add i32 0, %".994"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".997"
  %"add.27" = add i32 %"add.26", %".998"
  store i32 %"add.27", ptr %"R9"
  ; IADD3.X R11, RZ, R11, RZ, P1, !PT
  %".1001" = load i32, ptr %"R11"
  %".1002" = load i1, ptr %"P1"
  %".1003" = xor i1 1, -1
  %".1004" = zext i1 %".1002" to i32
  %".1005" = zext i1 %".1003" to i32
  %"add.28" = add i32 0, %".1001"
  %"add.29" = add i32 %"add.28", 0
  %"add.30" = add i32 %"add.29", %".1004"
  %"add.31" = add i32 %"add.30", %".1005"
  store i32 %"add.31", ptr %"R11"
  ; FFMA R6, R3, R8, R6
  %".1008" = load float, ptr %"R3"
  %".1009" = load float, ptr %"R8"
  %".1010" = load float, ptr %"R6"
  %"fmul.28" = fmul float %".1008", %".1009"
  %"fadd.28" = fadd float %"fmul.28", %".1010"
  %".1011" = bitcast ptr %"R6" to ptr
  store float %"fadd.28", ptr %".1011"
  ; @P0 BRA `(.L_x_14)
  %".1014" = load i1, ptr %"P0"
  %".1015" = icmp eq i1 %".1014", 1
  br i1 %".1015", label %".L_x_14", label %".L_x_8"
.L_x_8:
  ; IMAD R2, R7, c[0x0][0x188], R0
  %".1018" = load i32, ptr %"R7"
  %".1019" = load i32, ptr %"R0"
  %"imad_mul.17" = mul i32 %".1018", %"Arg_6"
  %"imad_add.17" = add i32 %"imad_mul.17", %".1019"
  store i32 %"imad_add.17", ptr %"R2"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x178]
  %".1022" = load i32, ptr %"R2"
  %".1023" = load i32, ptr %"R5"
  %"imad_ext1.7" = zext i32 %".1022" to i64
  %"imad_ext2.7" = zext i32 %".1023" to i64
  %"imad_mul.18" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".1024" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.18" = add i64 %"imad_mul.18", %".1024"
  %".1025" = and i64 %"imad_add.18", 18446744069414584320
  %".1026" = lshr i64 %".1025", 32
  %"trunc32.16" = trunc i64 %".1026" to i32
  %"trunc32.17" = trunc i64 %"imad_add.18" to i32
  store i32 %"trunc32.17", ptr %"R2"
  store i32 %"trunc32.16", ptr %"R3"
  ; STG.E.SYS [R2], R6
  %".1030" = load float, ptr %"R6"
  %".1031" = load i32, ptr %"R2"
  %"zext.118" = zext i32 %".1031" to i64
  %".1032" = load i32, ptr %"R3"
  %"zext.119" = zext i32 %".1032" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".1030", ptr addrspace(1) %"ptr_cast_for_access.59"
  ; EXIT
  br label %"ExitFunction"
.L_x_15:
  ; BRA `(.L_x_15)
  br label %".L_x_15"
ExitFunction:
  ret void
}

