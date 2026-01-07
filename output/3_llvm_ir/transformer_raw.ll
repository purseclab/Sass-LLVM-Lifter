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
  %".31" = add i1 %"cmp", 0
  %".32" = xor i1 %".31", -1
  %".33" = and i1 %"cmp", %".30"
  %".34" = and i1 %".32", %".30"
  store i1 %".33", ptr %"P0"
  ; IMAD R7, R7, c[0x0][0x4], R2
  %".37" = load i32, ptr %"R7"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".38" = load i32, ptr %"R2"
  %"imad_mul.1" = mul i32 %".37", %"nvvm_blockdim_y"
  %"imad_add.1" = add i32 %"imad_mul.1", %".38"
  store i32 %"imad_add.1", ptr %"R7"
  ; ISETP.GE.OR P0, PT, R7, c[0x0][0x180], P0
  %".41" = load i32, ptr %"R7"
  %".42" = load i1, ptr %"P0"
  %"cmp.1" = icmp sge i32 %".41", %"Arg_4"
  %".43" = add i1 %"cmp.1", 0
  %".44" = xor i1 %".43", -1
  %".45" = or i1 %"cmp.1", %".42"
  %".46" = or i1 %".44", %".42"
  store i1 %".45", ptr %"P0"
  ; @P0 EXIT
  %".49" = load i1, ptr %"P0"
  %".50" = icmp eq i1 %".49", 1
  br i1 %".50", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_conditionalExpr_0x0090", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_conditionalExpr_0x0090:
  ; EXIT
  br label %"ExitFunction"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x00a0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R10, R0, R5, c[0x0][0x170]
  %".57" = load i32, ptr %"R0"
  %".58" = load i32, ptr %"R5"
  %"imad_ext1" = zext i32 %".57" to i64
  %"imad_ext2" = zext i32 %".58" to i64
  %"imad_mul.2" = mul i64 %"imad_ext1", %"imad_ext2"
  %".59" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.2" = add i64 %"imad_mul.2", %".59"
  %".60" = and i64 %"imad_add.2", 18446744069414584320
  %".61" = lshr i64 %".60", 32
  %"trunc32" = trunc i64 %".61" to i32
  %"trunc32.1" = trunc i64 %"imad_add.2" to i32
  store i32 %"trunc32.1", ptr %"R10"
  store i32 %"trunc32", ptr %"R11"
  ; LDG.E.CONSTANT.SYS R10, [R10]
  %".65" = load i32, ptr %"R10"
  %"zext" = zext i32 %".65" to i64
  %".66" = load i32, ptr %"R11"
  %"zext.1" = zext i32 %".66" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".67" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".68" = bitcast ptr %"R10" to ptr
  store float %".67", ptr %".68"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, 0x1, PT
  %".73" = load i32, ptr %"R4"
  %".74" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".73", 1
  %".75" = add i1 %"cmp.2", 0
  %".76" = xor i1 %".75", -1
  %".77" = and i1 %"cmp.2", %".74"
  %".78" = and i1 %".76", %".74"
  store i1 %".77", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".81" = load i1, ptr %"P0"
  %".82" = icmp ne i1 %".81", 1
  br i1 %".82", label %".L_x_0", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0100:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".85" = load i32, ptr %"R4"
  %".86" = add i32 %".85", -1
  %".87" = add i32 %".86", 0
  store i32 %".87", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".90" = load i32, ptr %"R4"
  %".91" = xor i1 1, -1
  %".92" = and i32 %".90", 3
  store i32 %".92", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".95" = load i32, ptr %"R2"
  %".96" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".95", 3
  %".97" = add i1 %"cmp.3", 0
  %".98" = xor i1 %".97", -1
  %".99" = and i1 %"cmp.3", %".96"
  %".100" = and i1 %".98", %".96"
  store i1 %".99", ptr %"P0"
  ; MOV R6, RZ
  %".103" = load i32, ptr %"RZ"
  store i32 %".103", ptr %"R6"
  ; @!P0 BRA `(.L_x_1)
  %".106" = load i1, ptr %"P0"
  %".107" = icmp ne i1 %".106", 1
  br i1 %".107", label %".L_x_1", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0150:
  ; IADD3 R11, -R4, c[0x0][0x184], RZ
  %".110" = load i32, ptr %"R4"
  %".111" = sub i32 0, %".110"
  %".112" = add i32 %".111", %"Arg_5"
  %".113" = add i32 %".112", 0
  store i32 %".113", ptr %"R11"
  ; IMAD R2, R7, c[0x0][0x184], RZ
  %".116" = load i32, ptr %"R7"
  %"imad_mul.3" = mul i32 %".116", %"Arg_5"
  %"imad_add.3" = add i32 %"imad_mul.3", 0
  store i32 %"imad_add.3", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x168]
  %".119" = ptrtoint ptr %"Arg_1" to i64
  %".120" = and i64 %".119", 18446744069414584320
  %".121" = lshr i64 %".120", 32
  %"trunc32.2" = trunc i64 %".121" to i32
  %"trunc32.3" = trunc i64 %".119" to i32
  store i32 %"trunc32.3", ptr %"UR4"
  store i32 %"trunc32.2", ptr %"UR5"
  ; IMAD R12, R0, c[0x0][0x184], RZ
  %".125" = load i32, ptr %"R0"
  %"imad_mul.4" = mul i32 %".125", %"Arg_5"
  %"imad_add.4" = add i32 %"imad_mul.4", 0
  store i32 %"imad_add.4", ptr %"R12"
  ; ISETP.GT.AND P0, PT, R11, RZ, PT
  %".128" = load i32, ptr %"R11"
  %".129" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".128", 0
  %".130" = add i1 %"cmp.4", 0
  %".131" = xor i1 %".130", -1
  %".132" = and i1 %"cmp.4", %".129"
  %".133" = and i1 %".131", %".129"
  store i1 %".132", ptr %"P0"
  ; IMAD.MOV.U32 R6, RZ, RZ, RZ
  %"imad_mul.5" = mul i32 0, 0
  %"imad_add.5" = add i32 %"imad_mul.5", 0
  store i32 %"imad_add.5", ptr %"R6"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x160]
  %".138" = load i32, ptr %"R2"
  %".139" = load i32, ptr %"R5"
  %"imad_ext1.1" = zext i32 %".138" to i64
  %"imad_ext2.1" = zext i32 %".139" to i64
  %"imad_mul.6" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".140" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.6" = add i64 %"imad_mul.6", %".140"
  %".141" = and i64 %"imad_add.6", 18446744069414584320
  %".142" = lshr i64 %".141", 32
  %"trunc32.4" = trunc i64 %".142" to i32
  %"trunc32.5" = trunc i64 %"imad_add.6" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; @!P0 BRA `(.L_x_2)
  %".146" = load i1, ptr %"P0"
  %".147" = icmp ne i1 %".146", 1
  br i1 %".147", label %".L_x_2", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x01d0:
  ; ISETP.GT.AND P1, PT, R11, 0xc, PT
  %".150" = load i32, ptr %"R11"
  %".151" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".150", 12
  %".152" = add i1 %"cmp.5", 0
  %".153" = xor i1 %".152", -1
  %".154" = and i1 %"cmp.5", %".151"
  %".155" = and i1 %".153", %".151"
  store i1 %".154", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".158" = and i1 1, 1
  %".159" = and i1 %".158", 1
  ; @!P1 BRA `(.L_x_3)
  %".161" = load i1, ptr %"P1"
  %".162" = icmp ne i1 %".161", 1
  br i1 %".162", label %".L_x_3", label %".text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200"
.text._Z15ffn_relu_kernelPKfS0_S0_Pfiii_split_0x0200:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".165" = xor i1 1, 1
  %".166" = and i1 %".165", 1
  %".167" = and i1 %".166", 1
  br label %".L_x_4"
.L_x_4:
  ; MOV R8, UR4
  %".170" = load i32, ptr %"UR4"
  store i32 %".170", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".173" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".173" to i64
  %".174" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".174" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".175" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".176" = bitcast ptr %"R14" to ptr
  store float %".175", ptr %".176"
  ; MOV R9, UR5
  %".179" = load i32, ptr %"UR5"
  store i32 %".179", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".182" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".182" to i64
  %".183" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".183" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".184" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".185" = bitcast ptr %"R15" to ptr
  store float %".184", ptr %".185"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".188" = load i32, ptr %"R12"
  %".189" = load i32, ptr %"R8"
  %"imad_ext1.2" = zext i32 %".188" to i64
  %"imad_ext2.2" = zext i32 4 to i64
  %"imad_mul.7" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %"imad_ext3" = zext i32 %".189" to i64
  %"imad_add.7" = add i64 %"imad_mul.7", %"imad_ext3"
  %".190" = and i64 %"imad_add.7", 18446744069414584320
  %".191" = lshr i64 %".190", 32
  %"trunc32.6" = trunc i64 %".191" to i32
  %"trunc32.7" = trunc i64 %"imad_add.7" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".195" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".195" to i64
  %".196" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".196" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm.1" = add i64 %"or.3", 8
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".197" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".198" = bitcast ptr %"R17" to ptr
  store float %".197", ptr %".198"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".201" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".201" to i64
  %".202" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".202" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"ptr_plus_imm.2" = add i64 %"or.4", 12
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".203" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".204" = bitcast ptr %"R19" to ptr
  store float %".203", ptr %".204"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".207" = load i32, ptr %"R8"
  %"zext.10" = zext i32 %".207" to i64
  %".208" = load i32, ptr %"R9"
  %"zext.11" = zext i32 %".208" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"inttoptr_bytes.5" = inttoptr i64 %"or.5" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".209" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".210" = bitcast ptr %"R13" to ptr
  store float %".209", ptr %".210"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".213" = load i32, ptr %"R8"
  %"zext.12" = zext i32 %".213" to i64
  %".214" = load i32, ptr %"R9"
  %"zext.13" = zext i32 %".214" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"ptr_plus_imm.3" = add i64 %"or.6", 4
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".215" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".216" = bitcast ptr %"R16" to ptr
  store float %".215", ptr %".216"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".219" = load i32, ptr %"R8"
  %"zext.14" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R9"
  %"zext.15" = zext i32 %".220" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.4" = add i64 %"or.7", 8
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".221" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".222" = bitcast ptr %"R18" to ptr
  store float %".221", ptr %".222"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".225" = load i32, ptr %"R8"
  %"zext.16" = zext i32 %".225" to i64
  %".226" = load i32, ptr %"R9"
  %"zext.17" = zext i32 %".226" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %"ptr_plus_imm.5" = add i64 %"or.8", 12
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".227" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".228" = bitcast ptr %"R20" to ptr
  store float %".227", ptr %".228"
  ; LDG.E.CONSTANT.SYS R21, [R2+0x10]
  %".231" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".231" to i64
  %".232" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".232" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %"ptr_plus_imm.6" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".233" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".234" = bitcast ptr %"R21" to ptr
  store float %".233", ptr %".234"
  ; LDG.E.CONSTANT.SYS R22, [R8+0x10]
  %".237" = load i32, ptr %"R8"
  %"zext.20" = zext i32 %".237" to i64
  %".238" = load i32, ptr %"R9"
  %"zext.21" = zext i32 %".238" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %"ptr_plus_imm.7" = add i64 %"or.10", 16
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".239" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".240" = bitcast ptr %"R22" to ptr
  store float %".239", ptr %".240"
  ; LDG.E.CONSTANT.SYS R23, [R2+0x14]
  %".243" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".243" to i64
  %".244" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".244" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %"ptr_plus_imm.8" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".245" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".246" = bitcast ptr %"R23" to ptr
  store float %".245", ptr %".246"
  ; LDG.E.CONSTANT.SYS R24, [R8+0x14]
  %".249" = load i32, ptr %"R8"
  %"zext.24" = zext i32 %".249" to i64
  %".250" = load i32, ptr %"R9"
  %"zext.25" = zext i32 %".250" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %"ptr_plus_imm.9" = add i64 %"or.12", 20
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".251" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".252" = bitcast ptr %"R24" to ptr
  store float %".251", ptr %".252"
  ; LDG.E.CONSTANT.SYS R25, [R2+0x18]
  %".255" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".255" to i64
  %".256" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".256" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %"ptr_plus_imm.10" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".257" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".258" = bitcast ptr %"R25" to ptr
  store float %".257", ptr %".258"
  ; LDG.E.CONSTANT.SYS R26, [R8+0x18]
  %".261" = load i32, ptr %"R8"
  %"zext.28" = zext i32 %".261" to i64
  %".262" = load i32, ptr %"R9"
  %"zext.29" = zext i32 %".262" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %"ptr_plus_imm.11" = add i64 %"or.14", 24
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".263" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".264" = bitcast ptr %"R26" to ptr
  store float %".263", ptr %".264"
  ; LDG.E.CONSTANT.SYS R27, [R2+0x1c]
  %".267" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".267" to i64
  %".268" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".268" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %"ptr_plus_imm.12" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".269" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".270" = bitcast ptr %"R27" to ptr
  store float %".269", ptr %".270"
  ; LDG.E.CONSTANT.SYS R28, [R8+0x1c]
  %".273" = load i32, ptr %"R8"
  %"zext.32" = zext i32 %".273" to i64
  %".274" = load i32, ptr %"R9"
  %"zext.33" = zext i32 %".274" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %"ptr_plus_imm.13" = add i64 %"or.16", 28
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".275" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".276" = bitcast ptr %"R28" to ptr
  store float %".275", ptr %".276"
  ; LDG.E.CONSTANT.SYS R29, [R2+0x20]
  %".279" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".279" to i64
  %".280" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".280" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %"ptr_plus_imm.14" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".281" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".282" = bitcast ptr %"R29" to ptr
  store float %".281", ptr %".282"
  ; LDG.E.CONSTANT.SYS R30, [R8+0x20]
  %".285" = load i32, ptr %"R8"
  %"zext.36" = zext i32 %".285" to i64
  %".286" = load i32, ptr %"R9"
  %"zext.37" = zext i32 %".286" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %"ptr_plus_imm.15" = add i64 %"or.18", 32
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".287" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".288" = bitcast ptr %"R30" to ptr
  store float %".287", ptr %".288"
  ; LDG.E.CONSTANT.SYS R31, [R2+0x24]
  %".291" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".291" to i64
  %".292" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".292" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %"ptr_plus_imm.16" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".293" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".294" = bitcast ptr %"R31" to ptr
  store float %".293", ptr %".294"
  ; LDG.E.CONSTANT.SYS R32, [R8+0x24]
  %".297" = load i32, ptr %"R8"
  %"zext.40" = zext i32 %".297" to i64
  %".298" = load i32, ptr %"R9"
  %"zext.41" = zext i32 %".298" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %"ptr_plus_imm.17" = add i64 %"or.20", 36
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".299" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".300" = bitcast ptr %"R32" to ptr
  store float %".299", ptr %".300"
  ; LDG.E.CONSTANT.SYS R33, [R2+0x28]
  %".303" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".303" to i64
  %".304" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".304" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %"ptr_plus_imm.18" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".305" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".306" = bitcast ptr %"R33" to ptr
  store float %".305", ptr %".306"
  ; LDG.E.CONSTANT.SYS R34, [R8+0x28]
  %".309" = load i32, ptr %"R8"
  %"zext.44" = zext i32 %".309" to i64
  %".310" = load i32, ptr %"R9"
  %"zext.45" = zext i32 %".310" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %"ptr_plus_imm.19" = add i64 %"or.22", 40
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".311" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".312" = bitcast ptr %"R34" to ptr
  store float %".311", ptr %".312"
  ; LDG.E.CONSTANT.SYS R35, [R2+0x2c]
  %".315" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".315" to i64
  %".316" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".316" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %"ptr_plus_imm.20" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".317" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".318" = bitcast ptr %"R35" to ptr
  store float %".317", ptr %".318"
  ; LDG.E.CONSTANT.SYS R36, [R8+0x2c]
  %".321" = load i32, ptr %"R8"
  %"zext.48" = zext i32 %".321" to i64
  %".322" = load i32, ptr %"R9"
  %"zext.49" = zext i32 %".322" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %"ptr_plus_imm.21" = add i64 %"or.24", 44
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".323" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".324" = bitcast ptr %"R36" to ptr
  store float %".323", ptr %".324"
  ; LDG.E.CONSTANT.SYS R37, [R2+0x30]
  %".327" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".327" to i64
  %".328" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".328" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %"ptr_plus_imm.22" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".329" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".330" = bitcast ptr %"R37" to ptr
  store float %".329", ptr %".330"
  ; LDG.E.CONSTANT.SYS R38, [R8+0x30]
  %".333" = load i32, ptr %"R8"
  %"zext.52" = zext i32 %".333" to i64
  %".334" = load i32, ptr %"R9"
  %"zext.53" = zext i32 %".334" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %"ptr_plus_imm.23" = add i64 %"or.26", 48
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".335" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".336" = bitcast ptr %"R38" to ptr
  store float %".335", ptr %".336"
  ; LDG.E.CONSTANT.SYS R39, [R2+0x34]
  %".339" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".339" to i64
  %".340" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".340" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %"ptr_plus_imm.24" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".341" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".342" = bitcast ptr %"R39" to ptr
  store float %".341", ptr %".342"
  ; LDG.E.CONSTANT.SYS R40, [R8+0x34]
  %".345" = load i32, ptr %"R8"
  %"zext.56" = zext i32 %".345" to i64
  %".346" = load i32, ptr %"R9"
  %"zext.57" = zext i32 %".346" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %"ptr_plus_imm.25" = add i64 %"or.28", 52
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".347" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".348" = bitcast ptr %"R40" to ptr
  store float %".347", ptr %".348"
  ; LDG.E.CONSTANT.SYS R41, [R2+0x38]
  %".351" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".351" to i64
  %".352" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".352" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %"ptr_plus_imm.26" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".353" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".354" = bitcast ptr %"R41" to ptr
  store float %".353", ptr %".354"
  ; LDG.E.CONSTANT.SYS R42, [R8+0x38]
  %".357" = load i32, ptr %"R8"
  %"zext.60" = zext i32 %".357" to i64
  %".358" = load i32, ptr %"R9"
  %"zext.61" = zext i32 %".358" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %"ptr_plus_imm.27" = add i64 %"or.30", 56
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".359" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".360" = bitcast ptr %"R42" to ptr
  store float %".359", ptr %".360"
  ; LDG.E.CONSTANT.SYS R44, [R8+0x3c]
  %".363" = load i32, ptr %"R8"
  %"zext.62" = zext i32 %".363" to i64
  %".364" = load i32, ptr %"R9"
  %"zext.63" = zext i32 %".364" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %"ptr_plus_imm.28" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".365" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".366" = bitcast ptr %"R44" to ptr
  store float %".365", ptr %".366"
  ; LDG.E.CONSTANT.SYS R43, [R2+0x3c]
  %".369" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".369" to i64
  %".370" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".370" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %"ptr_plus_imm.29" = add i64 %"or.32", 60
  %"inttoptr_bytes.32" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".371" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".372" = bitcast ptr %"R43" to ptr
  store float %".371", ptr %".372"
  ; IADD3 R11, R11, -0x10, RZ
  %".375" = load i32, ptr %"R11"
  %".376" = add i32 %".375", -16
  %".377" = add i32 %".376", 0
  store i32 %".377", ptr %"R11"
  ; ISETP.GT.AND P1, PT, R11, 0xc, PT
  %".380" = load i32, ptr %"R11"
  %".381" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".380", 12
  %".382" = add i1 %"cmp.6", 0
  %".383" = xor i1 %".382", -1
  %".384" = and i1 %"cmp.6", %".381"
  %".385" = and i1 %".383", %".381"
  store i1 %".384", ptr %"P1"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".388" = load i32, ptr %"UR4"
  %".389" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".388", i32 64)
  %".390" = extractvalue {i32, i1} %".389", 0
  %".391" = extractvalue {i32, i1} %".389", 1
  %".392" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".390", i32 0)
  %".393" = extractvalue {i32, i1} %".392", 0
  %".394" = extractvalue {i32, i1} %".392", 1
  %".395" = or i1 %".391", %".394"
  store i32 %".393", ptr %"UR4"
  store i1 %".395", ptr %"UP0"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".399" = load i32, ptr %"R2"
  %".400" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".399", i32 64)
  %".401" = extractvalue {i32, i1} %".400", 0
  %".402" = extractvalue {i32, i1} %".400", 1
  %".403" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".401", i32 0)
  %".404" = extractvalue {i32, i1} %".403", 0
  %".405" = extractvalue {i32, i1} %".403", 1
  %".406" = or i1 %".402", %".405"
  store i32 %".404", ptr %"R2"
  store i1 %".406", ptr %"P2"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".410" = load i32, ptr %"UR5"
  %".411" = load i1, ptr %"UP0"
  %".412" = xor i1 1, -1
  %".413" = zext i1 %".411" to i32
  %".414" = zext i1 %".412" to i32
  %"add" = add i32 0, %".410"
  %"add.1" = add i32 %"add", 0
  %"add.2" = add i32 %"add.1", %".413"
  %"add.3" = add i32 %"add.2", %".414"
  store i32 %"add.3", ptr %"UR5"
  ; IADD3 R6, R6, 0x10, RZ
  %".417" = load i32, ptr %"R6"
  %".418" = add i32 %".417", 16
  %".419" = add i32 %".418", 0
  store i32 %".419", ptr %"R6"
  ; IADD3.X R3, RZ, R3, RZ, P2, !PT
  %".422" = load i32, ptr %"R3"
  %".423" = load i1, ptr %"P2"
  %".424" = xor i1 1, -1
  %".425" = zext i1 %".423" to i32
  %".426" = zext i1 %".424" to i32
  %"add.4" = add i32 0, %".422"
  %"add.5" = add i32 %"add.4", 0
  %"add.6" = add i32 %"add.5", %".425"
  %"add.7" = add i32 %"add.6", %".426"
  store i32 %"add.7", ptr %"R3"
  ; FFMA R13, R13, R14, R10
  %".429" = load float, ptr %"R13"
  %".430" = load float, ptr %"R14"
  %".431" = load float, ptr %"R10"
  %"fmul" = fmul float %".429", %".430"
  %"fadd" = fadd float %"fmul", %".431"
  %".432" = bitcast ptr %"R13" to ptr
  store float %"fadd", ptr %".432"
  ; FFMA R13, R16, R15, R13
  %".435" = load float, ptr %"R16"
  %".436" = load float, ptr %"R15"
  %".437" = load float, ptr %"R13"
  %"fmul.1" = fmul float %".435", %".436"
  %"fadd.1" = fadd float %"fmul.1", %".437"
  %".438" = bitcast ptr %"R13" to ptr
  store float %"fadd.1", ptr %".438"
  ; FFMA R13, R18, R17, R13
  %".441" = load float, ptr %"R18"
  %".442" = load float, ptr %"R17"
  %".443" = load float, ptr %"R13"
  %"fmul.2" = fmul float %".441", %".442"
  %"fadd.2" = fadd float %"fmul.2", %".443"
  %".444" = bitcast ptr %"R13" to ptr
  store float %"fadd.2", ptr %".444"
  ; FFMA R13, R20, R19, R13
  %".447" = load float, ptr %"R20"
  %".448" = load float, ptr %"R19"
  %".449" = load float, ptr %"R13"
  %"fmul.3" = fmul float %".447", %".448"
  %"fadd.3" = fadd float %"fmul.3", %".449"
  %".450" = bitcast ptr %"R13" to ptr
  store float %"fadd.3", ptr %".450"
  ; FFMA R13, R22, R21, R13
  %".453" = load float, ptr %"R22"
  %".454" = load float, ptr %"R21"
  %".455" = load float, ptr %"R13"
  %"fmul.4" = fmul float %".453", %".454"
  %"fadd.4" = fadd float %"fmul.4", %".455"
  %".456" = bitcast ptr %"R13" to ptr
  store float %"fadd.4", ptr %".456"
  ; FFMA R13, R24, R23, R13
  %".459" = load float, ptr %"R24"
  %".460" = load float, ptr %"R23"
  %".461" = load float, ptr %"R13"
  %"fmul.5" = fmul float %".459", %".460"
  %"fadd.5" = fadd float %"fmul.5", %".461"
  %".462" = bitcast ptr %"R13" to ptr
  store float %"fadd.5", ptr %".462"
  ; FFMA R13, R26, R25, R13
  %".465" = load float, ptr %"R26"
  %".466" = load float, ptr %"R25"
  %".467" = load float, ptr %"R13"
  %"fmul.6" = fmul float %".465", %".466"
  %"fadd.6" = fadd float %"fmul.6", %".467"
  %".468" = bitcast ptr %"R13" to ptr
  store float %"fadd.6", ptr %".468"
  ; FFMA R13, R28, R27, R13
  %".471" = load float, ptr %"R28"
  %".472" = load float, ptr %"R27"
  %".473" = load float, ptr %"R13"
  %"fmul.7" = fmul float %".471", %".472"
  %"fadd.7" = fadd float %"fmul.7", %".473"
  %".474" = bitcast ptr %"R13" to ptr
  store float %"fadd.7", ptr %".474"
  ; FFMA R13, R30, R29, R13
  %".477" = load float, ptr %"R30"
  %".478" = load float, ptr %"R29"
  %".479" = load float, ptr %"R13"
  %"fmul.8" = fmul float %".477", %".478"
  %"fadd.8" = fadd float %"fmul.8", %".479"
  %".480" = bitcast ptr %"R13" to ptr
  store float %"fadd.8", ptr %".480"
  ; FFMA R13, R32, R31, R13
  %".483" = load float, ptr %"R32"
  %".484" = load float, ptr %"R31"
  %".485" = load float, ptr %"R13"
  %"fmul.9" = fmul float %".483", %".484"
  %"fadd.9" = fadd float %"fmul.9", %".485"
  %".486" = bitcast ptr %"R13" to ptr
  store float %"fadd.9", ptr %".486"
  ; FFMA R13, R34, R33, R13
  %".489" = load float, ptr %"R34"
  %".490" = load float, ptr %"R33"
  %".491" = load float, ptr %"R13"
  %"fmul.10" = fmul float %".489", %".490"
  %"fadd.10" = fadd float %"fmul.10", %".491"
  %".492" = bitcast ptr %"R13" to ptr
  store float %"fadd.10", ptr %".492"
  ; FFMA R13, R36, R35, R13
  %".495" = load float, ptr %"R36"
  %".496" = load float, ptr %"R35"
  %".497" = load float, ptr %"R13"
  %"fmul.11" = fmul float %".495", %".496"
  %"fadd.11" = fadd float %"fmul.11", %".497"
  %".498" = bitcast ptr %"R13" to ptr
  store float %"fadd.11", ptr %".498"
  ; FFMA R13, R38, R37, R13
  %".501" = load float, ptr %"R38"
  %".502" = load float, ptr %"R37"
  %".503" = load float, ptr %"R13"
  %"fmul.12" = fmul float %".501", %".502"
  %"fadd.12" = fadd float %"fmul.12", %".503"
  %".504" = bitcast ptr %"R13" to ptr
  store float %"fadd.12", ptr %".504"
  ; FFMA R13, R40, R39, R13
  %".507" = load float, ptr %"R40"
  %".508" = load float, ptr %"R39"
  %".509" = load float, ptr %"R13"
  %"fmul.13" = fmul float %".507", %".508"
  %"fadd.13" = fadd float %"fmul.13", %".509"
  %".510" = bitcast ptr %"R13" to ptr
  store float %"fadd.13", ptr %".510"
  ; FFMA R13, R42, R41, R13
  %".513" = load float, ptr %"R42"
  %".514" = load float, ptr %"R41"
  %".515" = load float, ptr %"R13"
  %"fmul.14" = fmul float %".513", %".514"
  %"fadd.14" = fadd float %"fmul.14", %".515"
  %".516" = bitcast ptr %"R13" to ptr
  store float %"fadd.14", ptr %".516"
  ; FFMA R10, R44, R43, R13
  %".519" = load float, ptr %"R44"
  %".520" = load float, ptr %"R43"
  %".521" = load float, ptr %"R13"
  %"fmul.15" = fmul float %".519", %".520"
  %"fadd.15" = fadd float %"fmul.15", %".521"
  %".522" = bitcast ptr %"R10" to ptr
  store float %"fadd.15", ptr %".522"
  ; @P1 BRA `(.L_x_4)
  %".525" = load i1, ptr %"P1"
  %".526" = icmp eq i1 %".525", 1
  br i1 %".526", label %".L_x_4", label %".L_x_3"
.L_x_3:
  ; ISETP.GT.AND P1, PT, R11, 0x4, PT
  %".529" = load i32, ptr %"R11"
  %".530" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".529", 4
  %".531" = add i1 %"cmp.7", 0
  %".532" = xor i1 %".531", -1
  %".533" = and i1 %"cmp.7", %".530"
  %".534" = and i1 %".532", %".530"
  store i1 %".533", ptr %"P1"
  ; @!P1 BRA `(.L_x_5)
  %".537" = load i1, ptr %"P1"
  %".538" = icmp ne i1 %".537", 1
  br i1 %".538", label %".L_x_5", label %".L_x_3_split_0x05e0"
.L_x_3_split_0x05e0:
  ; MOV R9, UR5
  %".541" = load i32, ptr %"UR5"
  store i32 %".541", ptr %"R9"
  ; IMAD.U32 R8, RZ, RZ, UR4
  %".544" = load i32, ptr %"UR4"
  %"imad_mul.8" = mul i32 0, 0
  %"imad_add.8" = add i32 %"imad_mul.8", %".544"
  store i32 %"imad_add.8", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".547" = load i32, ptr %"R2"
  %"zext.66" = zext i32 %".547" to i64
  %".548" = load i32, ptr %"R3"
  %"zext.67" = zext i32 %".548" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".549" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".550" = bitcast ptr %"R14" to ptr
  store float %".549", ptr %".550"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".553" = load i32, ptr %"R12"
  %".554" = load i32, ptr %"R8"
  %"imad_ext1.3" = zext i32 %".553" to i64
  %"imad_ext2.3" = zext i32 4 to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %"imad_ext3.1" = zext i32 %".554" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %"imad_ext3.1"
  %".555" = and i64 %"imad_add.9", 18446744069414584320
  %".556" = lshr i64 %".555", 32
  %"trunc32.8" = trunc i64 %".556" to i32
  %"trunc32.9" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.9", ptr %"R8"
  store i32 %"trunc32.8", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".560" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".560" to i64
  %".561" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".561" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".562" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".563" = bitcast ptr %"R15" to ptr
  store float %".562", ptr %".563"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".566" = load i32, ptr %"R2"
  %"zext.70" = zext i32 %".566" to i64
  %".567" = load i32, ptr %"R3"
  %"zext.71" = zext i32 %".567" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %"ptr_plus_imm.31" = add i64 %"or.35", 8
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".568" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".569" = bitcast ptr %"R17" to ptr
  store float %".568", ptr %".569"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".572" = load i32, ptr %"R8"
  %"zext.72" = zext i32 %".572" to i64
  %".573" = load i32, ptr %"R9"
  %"zext.73" = zext i32 %".573" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %"inttoptr_bytes.36" = inttoptr i64 %"or.36" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".574" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".575" = bitcast ptr %"R13" to ptr
  store float %".574", ptr %".575"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".578" = load i32, ptr %"R8"
  %"zext.74" = zext i32 %".578" to i64
  %".579" = load i32, ptr %"R9"
  %"zext.75" = zext i32 %".579" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %"ptr_plus_imm.32" = add i64 %"or.37", 4
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".580" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".581" = bitcast ptr %"R16" to ptr
  store float %".580", ptr %".581"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".584" = load i32, ptr %"R8"
  %"zext.76" = zext i32 %".584" to i64
  %".585" = load i32, ptr %"R9"
  %"zext.77" = zext i32 %".585" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %"ptr_plus_imm.33" = add i64 %"or.38", 8
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".586" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".587" = bitcast ptr %"R18" to ptr
  store float %".586", ptr %".587"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".590" = load i32, ptr %"R2"
  %"zext.78" = zext i32 %".590" to i64
  %".591" = load i32, ptr %"R3"
  %"zext.79" = zext i32 %".591" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %"ptr_plus_imm.34" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".592" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".593" = bitcast ptr %"R19" to ptr
  store float %".592", ptr %".593"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".596" = load i32, ptr %"R8"
  %"zext.80" = zext i32 %".596" to i64
  %".597" = load i32, ptr %"R9"
  %"zext.81" = zext i32 %".597" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %"ptr_plus_imm.35" = add i64 %"or.40", 12
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".598" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".599" = bitcast ptr %"R20" to ptr
  store float %".598", ptr %".599"
  ; LDG.E.CONSTANT.SYS R21, [R2+0x10]
  %".602" = load i32, ptr %"R2"
  %"zext.82" = zext i32 %".602" to i64
  %".603" = load i32, ptr %"R3"
  %"zext.83" = zext i32 %".603" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %"ptr_plus_imm.36" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".604" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".605" = bitcast ptr %"R21" to ptr
  store float %".604", ptr %".605"
  ; LDG.E.CONSTANT.SYS R22, [R8+0x10]
  %".608" = load i32, ptr %"R8"
  %"zext.84" = zext i32 %".608" to i64
  %".609" = load i32, ptr %"R9"
  %"zext.85" = zext i32 %".609" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %"ptr_plus_imm.37" = add i64 %"or.42", 16
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".610" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".611" = bitcast ptr %"R22" to ptr
  store float %".610", ptr %".611"
  ; LDG.E.CONSTANT.SYS R23, [R2+0x14]
  %".614" = load i32, ptr %"R2"
  %"zext.86" = zext i32 %".614" to i64
  %".615" = load i32, ptr %"R3"
  %"zext.87" = zext i32 %".615" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %"ptr_plus_imm.38" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".616" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".617" = bitcast ptr %"R23" to ptr
  store float %".616", ptr %".617"
  ; LDG.E.CONSTANT.SYS R24, [R8+0x14]
  %".620" = load i32, ptr %"R8"
  %"zext.88" = zext i32 %".620" to i64
  %".621" = load i32, ptr %"R9"
  %"zext.89" = zext i32 %".621" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %"ptr_plus_imm.39" = add i64 %"or.44", 20
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".622" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".623" = bitcast ptr %"R24" to ptr
  store float %".622", ptr %".623"
  ; LDG.E.CONSTANT.SYS R25, [R2+0x18]
  %".626" = load i32, ptr %"R2"
  %"zext.90" = zext i32 %".626" to i64
  %".627" = load i32, ptr %"R3"
  %"zext.91" = zext i32 %".627" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %"ptr_plus_imm.40" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".628" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".629" = bitcast ptr %"R25" to ptr
  store float %".628", ptr %".629"
  ; LDG.E.CONSTANT.SYS R26, [R8+0x18]
  %".632" = load i32, ptr %"R8"
  %"zext.92" = zext i32 %".632" to i64
  %".633" = load i32, ptr %"R9"
  %"zext.93" = zext i32 %".633" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %"ptr_plus_imm.41" = add i64 %"or.46", 24
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".634" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".635" = bitcast ptr %"R26" to ptr
  store float %".634", ptr %".635"
  ; LDG.E.CONSTANT.SYS R28, [R8+0x1c]
  %".638" = load i32, ptr %"R8"
  %"zext.94" = zext i32 %".638" to i64
  %".639" = load i32, ptr %"R9"
  %"zext.95" = zext i32 %".639" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %"ptr_plus_imm.42" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".640" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".641" = bitcast ptr %"R28" to ptr
  store float %".640", ptr %".641"
  ; LDG.E.CONSTANT.SYS R27, [R2+0x1c]
  %".644" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".644" to i64
  %".645" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".645" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %"ptr_plus_imm.43" = add i64 %"or.48", 28
  %"inttoptr_bytes.48" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".646" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".647" = bitcast ptr %"R27" to ptr
  store float %".646", ptr %".647"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".650" = load i32, ptr %"UR4"
  %".651" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".650", i32 32)
  %".652" = extractvalue {i32, i1} %".651", 0
  %".653" = extractvalue {i32, i1} %".651", 1
  %".654" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".652", i32 0)
  %".655" = extractvalue {i32, i1} %".654", 0
  %".656" = extractvalue {i32, i1} %".654", 1
  %".657" = or i1 %".653", %".656"
  store i32 %".655", ptr %"UR4"
  store i1 %".657", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".661" = xor i1 1, 1
  %".662" = and i1 %".661", 1
  %".663" = and i1 %".662", 1
  ; IADD3 R6, R6, 0x8, RZ
  %".665" = load i32, ptr %"R6"
  %".666" = add i32 %".665", 8
  %".667" = add i32 %".666", 0
  store i32 %".667", ptr %"R6"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".670" = load i32, ptr %"R2"
  %".671" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".670", i32 32)
  %".672" = extractvalue {i32, i1} %".671", 0
  %".673" = extractvalue {i32, i1} %".671", 1
  %".674" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".672", i32 0)
  %".675" = extractvalue {i32, i1} %".674", 0
  %".676" = extractvalue {i32, i1} %".674", 1
  %".677" = or i1 %".673", %".676"
  store i32 %".675", ptr %"R2"
  store i1 %".677", ptr %"P1"
  ; IADD3 R11, R11, -0x8, RZ
  %".681" = load i32, ptr %"R11"
  %".682" = add i32 %".681", -8
  %".683" = add i32 %".682", 0
  store i32 %".683", ptr %"R11"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".686" = load i32, ptr %"R3"
  %".687" = load i1, ptr %"P1"
  %".688" = xor i1 1, -1
  %".689" = zext i1 %".687" to i32
  %".690" = zext i1 %".688" to i32
  %"add.8" = add i32 0, %".686"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".689"
  %"add.11" = add i32 %"add.10", %".690"
  store i32 %"add.11", ptr %"R3"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".693" = load i32, ptr %"UR5"
  %".694" = load i1, ptr %"UP0"
  %".695" = xor i1 1, -1
  %".696" = zext i1 %".694" to i32
  %".697" = zext i1 %".695" to i32
  %"add.12" = add i32 0, %".693"
  %"add.13" = add i32 %"add.12", 0
  %"add.14" = add i32 %"add.13", %".696"
  %"add.15" = add i32 %"add.14", %".697"
  store i32 %"add.15", ptr %"UR5"
  ; FFMA R13, R13, R14, R10
  %".700" = load float, ptr %"R13"
  %".701" = load float, ptr %"R14"
  %".702" = load float, ptr %"R10"
  %"fmul.16" = fmul float %".700", %".701"
  %"fadd.16" = fadd float %"fmul.16", %".702"
  %".703" = bitcast ptr %"R13" to ptr
  store float %"fadd.16", ptr %".703"
  ; FFMA R13, R16, R15, R13
  %".706" = load float, ptr %"R16"
  %".707" = load float, ptr %"R15"
  %".708" = load float, ptr %"R13"
  %"fmul.17" = fmul float %".706", %".707"
  %"fadd.17" = fadd float %"fmul.17", %".708"
  %".709" = bitcast ptr %"R13" to ptr
  store float %"fadd.17", ptr %".709"
  ; FFMA R13, R18, R17, R13
  %".712" = load float, ptr %"R18"
  %".713" = load float, ptr %"R17"
  %".714" = load float, ptr %"R13"
  %"fmul.18" = fmul float %".712", %".713"
  %"fadd.18" = fadd float %"fmul.18", %".714"
  %".715" = bitcast ptr %"R13" to ptr
  store float %"fadd.18", ptr %".715"
  ; FFMA R13, R20, R19, R13
  %".718" = load float, ptr %"R20"
  %".719" = load float, ptr %"R19"
  %".720" = load float, ptr %"R13"
  %"fmul.19" = fmul float %".718", %".719"
  %"fadd.19" = fadd float %"fmul.19", %".720"
  %".721" = bitcast ptr %"R13" to ptr
  store float %"fadd.19", ptr %".721"
  ; FFMA R13, R22, R21, R13
  %".724" = load float, ptr %"R22"
  %".725" = load float, ptr %"R21"
  %".726" = load float, ptr %"R13"
  %"fmul.20" = fmul float %".724", %".725"
  %"fadd.20" = fadd float %"fmul.20", %".726"
  %".727" = bitcast ptr %"R13" to ptr
  store float %"fadd.20", ptr %".727"
  ; FFMA R13, R24, R23, R13
  %".730" = load float, ptr %"R24"
  %".731" = load float, ptr %"R23"
  %".732" = load float, ptr %"R13"
  %"fmul.21" = fmul float %".730", %".731"
  %"fadd.21" = fadd float %"fmul.21", %".732"
  %".733" = bitcast ptr %"R13" to ptr
  store float %"fadd.21", ptr %".733"
  ; FFMA R13, R26, R25, R13
  %".736" = load float, ptr %"R26"
  %".737" = load float, ptr %"R25"
  %".738" = load float, ptr %"R13"
  %"fmul.22" = fmul float %".736", %".737"
  %"fadd.22" = fadd float %"fmul.22", %".738"
  %".739" = bitcast ptr %"R13" to ptr
  store float %"fadd.22", ptr %".739"
  ; FFMA R10, R28, R27, R13
  %".742" = load float, ptr %"R28"
  %".743" = load float, ptr %"R27"
  %".744" = load float, ptr %"R13"
  %"fmul.23" = fmul float %".742", %".743"
  %"fadd.23" = fadd float %"fmul.23", %".744"
  %".745" = bitcast ptr %"R10" to ptr
  store float %"fadd.23", ptr %".745"
  br label %".L_x_5"
.L_x_5:
  ; ISETP.NE.OR P0, PT, R11, RZ, P0
  %".749" = load i32, ptr %"R11"
  %".750" = load i1, ptr %"P0"
  %"cmp.8" = icmp ne i32 %".749", 0
  %".751" = add i1 %"cmp.8", 0
  %".752" = xor i1 %".751", -1
  %".753" = or i1 %"cmp.8", %".750"
  %".754" = or i1 %".752", %".750"
  store i1 %".753", ptr %"P0"
  ; @!P0 BRA `(.L_x_1)
  %".757" = load i1, ptr %"P0"
  %".758" = icmp ne i1 %".757", 1
  br i1 %".758", label %".L_x_1", label %".L_x_2"
.L_x_2:
  ; MOV R8, UR4
  %".761" = load i32, ptr %"UR4"
  store i32 %".761", ptr %"R8"
  ; IMAD.U32 R9, RZ, RZ, UR5
  %".764" = load i32, ptr %"UR5"
  %"imad_mul.10" = mul i32 0, 0
  %"imad_add.10" = add i32 %"imad_mul.10", %".764"
  store i32 %"imad_add.10", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".767" = load i32, ptr %"R2"
  %"zext.98" = zext i32 %".767" to i64
  %".768" = load i32, ptr %"R3"
  %"zext.99" = zext i32 %".768" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".769" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".770" = bitcast ptr %"R14" to ptr
  store float %".769", ptr %".770"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".773" = load i32, ptr %"R12"
  %".774" = load i32, ptr %"R8"
  %"imad_ext1.4" = zext i32 %".773" to i64
  %"imad_ext2.4" = zext i32 4 to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3.2" = zext i32 %".774" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %"imad_ext3.2"
  %".775" = and i64 %"imad_add.11", 18446744069414584320
  %".776" = lshr i64 %".775", 32
  %"trunc32.10" = trunc i64 %".776" to i32
  %"trunc32.11" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.11", ptr %"R8"
  store i32 %"trunc32.10", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".780" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".780" to i64
  %".781" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".781" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".782" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".783" = bitcast ptr %"R15" to ptr
  store float %".782", ptr %".783"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".786" = load i32, ptr %"R2"
  %"zext.102" = zext i32 %".786" to i64
  %".787" = load i32, ptr %"R3"
  %"zext.103" = zext i32 %".787" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %"ptr_plus_imm.45" = add i64 %"or.51", 8
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".788" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".789" = bitcast ptr %"R17" to ptr
  store float %".788", ptr %".789"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".792" = load i32, ptr %"R8"
  %"zext.104" = zext i32 %".792" to i64
  %".793" = load i32, ptr %"R9"
  %"zext.105" = zext i32 %".793" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %"inttoptr_bytes.52" = inttoptr i64 %"or.52" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".794" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".795" = bitcast ptr %"R13" to ptr
  store float %".794", ptr %".795"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".798" = load i32, ptr %"R8"
  %"zext.106" = zext i32 %".798" to i64
  %".799" = load i32, ptr %"R9"
  %"zext.107" = zext i32 %".799" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %"ptr_plus_imm.46" = add i64 %"or.53", 4
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".800" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".801" = bitcast ptr %"R16" to ptr
  store float %".800", ptr %".801"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".804" = load i32, ptr %"R8"
  %"zext.108" = zext i32 %".804" to i64
  %".805" = load i32, ptr %"R9"
  %"zext.109" = zext i32 %".805" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %"ptr_plus_imm.47" = add i64 %"or.54", 8
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".806" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".807" = bitcast ptr %"R18" to ptr
  store float %".806", ptr %".807"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".810" = load i32, ptr %"R8"
  %"zext.110" = zext i32 %".810" to i64
  %".811" = load i32, ptr %"R9"
  %"zext.111" = zext i32 %".811" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %"ptr_plus_imm.48" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".812" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".813" = bitcast ptr %"R20" to ptr
  store float %".812", ptr %".813"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".816" = load i32, ptr %"R2"
  %"zext.112" = zext i32 %".816" to i64
  %".817" = load i32, ptr %"R3"
  %"zext.113" = zext i32 %".817" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %"ptr_plus_imm.49" = add i64 %"or.56", 12
  %"inttoptr_bytes.56" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".818" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".819" = bitcast ptr %"R19" to ptr
  store float %".818", ptr %".819"
  ; IADD3 R11, R11, -0x4, RZ
  %".822" = load i32, ptr %"R11"
  %".823" = add i32 %".822", -4
  %".824" = add i32 %".823", 0
  store i32 %".824", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".827" = load i32, ptr %"R11"
  %".828" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".827", 0
  %".829" = add i1 %"cmp.9", 0
  %".830" = xor i1 %".829", -1
  %".831" = and i1 %"cmp.9", %".828"
  %".832" = and i1 %".830", %".828"
  store i1 %".831", ptr %"P0"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".835" = load i32, ptr %"UR4"
  %".836" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".835", i32 16)
  %".837" = extractvalue {i32, i1} %".836", 0
  %".838" = extractvalue {i32, i1} %".836", 1
  %".839" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".837", i32 0)
  %".840" = extractvalue {i32, i1} %".839", 0
  %".841" = extractvalue {i32, i1} %".839", 1
  %".842" = or i1 %".838", %".841"
  store i32 %".840", ptr %"UR4"
  store i1 %".842", ptr %"UP0"
  ; IADD3 R6, R6, 0x4, RZ
  %".846" = load i32, ptr %"R6"
  %".847" = add i32 %".846", 4
  %".848" = add i32 %".847", 0
  store i32 %".848", ptr %"R6"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".851" = load i32, ptr %"UR5"
  %".852" = load i1, ptr %"UP0"
  %".853" = xor i1 1, -1
  %".854" = zext i1 %".852" to i32
  %".855" = zext i1 %".853" to i32
  %"add.16" = add i32 0, %".851"
  %"add.17" = add i32 %"add.16", 0
  %"add.18" = add i32 %"add.17", %".854"
  %"add.19" = add i32 %"add.18", %".855"
  store i32 %"add.19", ptr %"UR5"
  ; FFMA R13, R13, R14, R10
  %".858" = load float, ptr %"R13"
  %".859" = load float, ptr %"R14"
  %".860" = load float, ptr %"R10"
  %"fmul.24" = fmul float %".858", %".859"
  %"fadd.24" = fadd float %"fmul.24", %".860"
  %".861" = bitcast ptr %"R13" to ptr
  store float %"fadd.24", ptr %".861"
  ; FFMA R13, R16, R15, R13
  %".864" = load float, ptr %"R16"
  %".865" = load float, ptr %"R15"
  %".866" = load float, ptr %"R13"
  %"fmul.25" = fmul float %".864", %".865"
  %"fadd.25" = fadd float %"fmul.25", %".866"
  %".867" = bitcast ptr %"R13" to ptr
  store float %"fadd.25", ptr %".867"
  ; FFMA R17, R18, R17, R13
  %".870" = load float, ptr %"R18"
  %".871" = load float, ptr %"R17"
  %".872" = load float, ptr %"R13"
  %"fmul.26" = fmul float %".870", %".871"
  %"fadd.26" = fadd float %"fmul.26", %".872"
  %".873" = bitcast ptr %"R17" to ptr
  store float %"fadd.26", ptr %".873"
  ; IADD3 R13, P1, R2, 0x10, RZ
  %".876" = load i32, ptr %"R2"
  %".877" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".876", i32 16)
  %".878" = extractvalue {i32, i1} %".877", 0
  %".879" = extractvalue {i32, i1} %".877", 1
  %".880" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".878", i32 0)
  %".881" = extractvalue {i32, i1} %".880", 0
  %".882" = extractvalue {i32, i1} %".880", 1
  %".883" = or i1 %".879", %".882"
  store i32 %".881", ptr %"R13"
  store i1 %".883", ptr %"P1"
  ; IADD3.X R14, RZ, R3, RZ, P1, !PT
  %".887" = load i32, ptr %"R3"
  %".888" = load i1, ptr %"P1"
  %".889" = xor i1 1, -1
  %".890" = zext i1 %".888" to i32
  %".891" = zext i1 %".889" to i32
  %"add.20" = add i32 0, %".887"
  %"add.21" = add i32 %"add.20", 0
  %"add.22" = add i32 %"add.21", %".890"
  %"add.23" = add i32 %"add.22", %".891"
  store i32 %"add.23", ptr %"R14"
  ; MOV R2, R13
  %".894" = load i32, ptr %"R13"
  store i32 %".894", ptr %"R2"
  ; FFMA R10, R20, R19, R17
  %".897" = load float, ptr %"R20"
  %".898" = load float, ptr %"R19"
  %".899" = load float, ptr %"R17"
  %"fmul.27" = fmul float %".897", %".898"
  %"fadd.27" = fadd float %"fmul.27", %".899"
  %".900" = bitcast ptr %"R10" to ptr
  store float %"fadd.27", ptr %".900"
  ; MOV R3, R14
  %".903" = load i32, ptr %"R14"
  store i32 %".903", ptr %"R3"
  ; @P0 BRA `(.L_x_2)
  %".906" = load i1, ptr %"P0"
  %".907" = icmp eq i1 %".906", 1
  br i1 %".907", label %".L_x_2", label %".L_x_1"
.L_x_1:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".910" = load i32, ptr %"R4"
  %".911" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".910", 0
  %".912" = add i1 %"cmp.10", 0
  %".913" = xor i1 %".912", -1
  %".914" = and i1 %"cmp.10", %".911"
  %".915" = and i1 %".913", %".911"
  store i1 %".914", ptr %"P0"
  ; @!P0 BRA `(.L_x_0)
  %".918" = load i1, ptr %"P0"
  %".919" = icmp ne i1 %".918", 1
  br i1 %".919", label %".L_x_0", label %".L_x_1_split_0x09d0"
.L_x_1_split_0x09d0:
  ; IMAD R2, R0, c[0x0][0x184], R6.reuse
  %".922" = load i32, ptr %"R0"
  %".923" = load i32, ptr %"R6"
  %"imad_mul.12" = mul i32 %".922", %"Arg_5"
  %"imad_add.12" = add i32 %"imad_mul.12", %".923"
  store i32 %"imad_add.12", ptr %"R2"
  ; IMAD R8, R7, c[0x0][0x184], R6
  %".926" = load i32, ptr %"R7"
  %".927" = load i32, ptr %"R6"
  %"imad_mul.13" = mul i32 %".926", %"Arg_5"
  %"imad_add.13" = add i32 %"imad_mul.13", %".927"
  store i32 %"imad_add.13", ptr %"R8"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x168]
  %".930" = load i32, ptr %"R2"
  %".931" = load i32, ptr %"R5"
  %"imad_ext1.5" = zext i32 %".930" to i64
  %"imad_ext2.5" = zext i32 %".931" to i64
  %"imad_mul.14" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %".932" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.14" = add i64 %"imad_mul.14", %".932"
  %".933" = and i64 %"imad_add.14", 18446744069414584320
  %".934" = lshr i64 %".933", 32
  %"trunc32.12" = trunc i64 %".934" to i32
  %"trunc32.13" = trunc i64 %"imad_add.14" to i32
  store i32 %"trunc32.13", ptr %"R2"
  store i32 %"trunc32.12", ptr %"R3"
  ; IMAD.WIDE R8, R8, R5, c[0x0][0x160]
  %".938" = load i32, ptr %"R8"
  %".939" = load i32, ptr %"R5"
  %"imad_ext1.6" = zext i32 %".938" to i64
  %"imad_ext2.6" = zext i32 %".939" to i64
  %"imad_mul.15" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".940" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.15" = add i64 %"imad_mul.15", %".940"
  %".941" = and i64 %"imad_add.15", 18446744069414584320
  %".942" = lshr i64 %".941", 32
  %"trunc32.14" = trunc i64 %".942" to i32
  %"trunc32.15" = trunc i64 %"imad_add.15" to i32
  store i32 %"trunc32.15", ptr %"R8"
  store i32 %"trunc32.14", ptr %"R9"
  ; IMAD.MOV.U32 R11, RZ, RZ, R3
  %".946" = load i32, ptr %"R3"
  %"imad_mul.16" = mul i32 0, 0
  %"imad_add.16" = add i32 %"imad_mul.16", %".946"
  store i32 %"imad_add.16", ptr %"R11"
  br label %".L_x_6"
.L_x_6:
  ; MOV R3, R11
  %".950" = load i32, ptr %"R11"
  store i32 %".950", ptr %"R3"
  ; LDG.E.CONSTANT.SYS R6, [R8]
  %".953" = load i32, ptr %"R8"
  %"zext.114" = zext i32 %".953" to i64
  %".954" = load i32, ptr %"R9"
  %"zext.115" = zext i32 %".954" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".955" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".956" = bitcast ptr %"R6" to ptr
  store float %".955", ptr %".956"
  ; LDG.E.CONSTANT.SYS R3, [R2]
  %".959" = load i32, ptr %"R2"
  %"zext.116" = zext i32 %".959" to i64
  %".960" = load i32, ptr %"R3"
  %"zext.117" = zext i32 %".960" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".961" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".962" = bitcast ptr %"R3" to ptr
  store float %".961", ptr %".962"
  ; IADD3 R4, R4, -0x1, RZ
  %".965" = load i32, ptr %"R4"
  %".966" = add i32 %".965", -1
  %".967" = add i32 %".966", 0
  store i32 %".967", ptr %"R4"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".970" = load i32, ptr %"R4"
  %".971" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".970", 0
  %".972" = add i1 %"cmp.11", 0
  %".973" = xor i1 %".972", -1
  %".974" = and i1 %"cmp.11", %".971"
  %".975" = and i1 %".973", %".971"
  store i1 %".974", ptr %"P0"
  ; IADD3 R8, P2, R8, 0x4, RZ
  %".978" = load i32, ptr %"R8"
  %".979" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".978", i32 4)
  %".980" = extractvalue {i32, i1} %".979", 0
  %".981" = extractvalue {i32, i1} %".979", 1
  %".982" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".980", i32 0)
  %".983" = extractvalue {i32, i1} %".982", 0
  %".984" = extractvalue {i32, i1} %".982", 1
  %".985" = or i1 %".981", %".984"
  store i32 %".983", ptr %"R8"
  store i1 %".985", ptr %"P2"
  ; IADD3 R2, P1, R2, 0x4, RZ
  %".989" = load i32, ptr %"R2"
  %".990" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".989", i32 4)
  %".991" = extractvalue {i32, i1} %".990", 0
  %".992" = extractvalue {i32, i1} %".990", 1
  %".993" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".991", i32 0)
  %".994" = extractvalue {i32, i1} %".993", 0
  %".995" = extractvalue {i32, i1} %".993", 1
  %".996" = or i1 %".992", %".995"
  store i32 %".994", ptr %"R2"
  store i1 %".996", ptr %"P1"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".1000" = load i32, ptr %"R9"
  %".1001" = load i1, ptr %"P2"
  %".1002" = xor i1 1, -1
  %".1003" = zext i1 %".1001" to i32
  %".1004" = zext i1 %".1002" to i32
  %"add.24" = add i32 0, %".1000"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".1003"
  %"add.27" = add i32 %"add.26", %".1004"
  store i32 %"add.27", ptr %"R9"
  ; IADD3.X R11, RZ, R11, RZ, P1, !PT
  %".1007" = load i32, ptr %"R11"
  %".1008" = load i1, ptr %"P1"
  %".1009" = xor i1 1, -1
  %".1010" = zext i1 %".1008" to i32
  %".1011" = zext i1 %".1009" to i32
  %"add.28" = add i32 0, %".1007"
  %"add.29" = add i32 %"add.28", 0
  %"add.30" = add i32 %"add.29", %".1010"
  %"add.31" = add i32 %"add.30", %".1011"
  store i32 %"add.31", ptr %"R11"
  ; FFMA R10, R3, R6, R10
  %".1014" = load float, ptr %"R3"
  %".1015" = load float, ptr %"R6"
  %".1016" = load float, ptr %"R10"
  %"fmul.28" = fmul float %".1014", %".1015"
  %"fadd.28" = fadd float %"fmul.28", %".1016"
  %".1017" = bitcast ptr %"R10" to ptr
  store float %"fadd.28", ptr %".1017"
  ; @P0 BRA `(.L_x_6)
  %".1020" = load i1, ptr %"P0"
  %".1021" = icmp eq i1 %".1020", 1
  br i1 %".1021", label %".L_x_6", label %".L_x_0"
.L_x_0:
  ; FSETP.GEU.AND P0, PT, R10, RZ, PT
  %".1024" = load float, ptr %"R10"
  %".1025" = load i1, ptr %"PT"
  %"fcmp_ordered" = fcmp uge float %".1024",              0x0
  %".1026" = add i1 %"fcmp_ordered", 0
  %".1027" = xor i1 %".1026", -1
  %".1028" = and i1 %"fcmp_ordered", %".1025"
  %".1029" = and i1 %".1027", %".1025"
  store i1 %".1028", ptr %"P0"
  ; IMAD R2, R7, c[0x0][0x188], R0
  %".1032" = load i32, ptr %"R7"
  %".1033" = load i32, ptr %"R0"
  %"imad_mul.17" = mul i32 %".1032", %"Arg_6"
  %"imad_add.17" = add i32 %"imad_mul.17", %".1033"
  store i32 %"imad_add.17", ptr %"R2"
  ; FSEL R7, R10, RZ, P0
  %".1036" = load float, ptr %"R10"
  %".1037" = load i1, ptr %"P0"
  %".1038" = icmp eq i1 %".1037", 1
  %"fsel" = select  i1 %".1038", float %".1036", float              0x0
  %".1039" = bitcast ptr %"R7" to ptr
  store float %"fsel", ptr %".1039"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x178]
  %".1042" = load i32, ptr %"R2"
  %".1043" = load i32, ptr %"R5"
  %"imad_ext1.7" = zext i32 %".1042" to i64
  %"imad_ext2.7" = zext i32 %".1043" to i64
  %"imad_mul.18" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".1044" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.18" = add i64 %"imad_mul.18", %".1044"
  %".1045" = and i64 %"imad_add.18", 18446744069414584320
  %".1046" = lshr i64 %".1045", 32
  %"trunc32.16" = trunc i64 %".1046" to i32
  %"trunc32.17" = trunc i64 %"imad_add.18" to i32
  store i32 %"trunc32.17", ptr %"R2"
  store i32 %"trunc32.16", ptr %"R3"
  ; STG.E.SYS [R2], R7
  %".1050" = load float, ptr %"R7"
  %".1051" = load i32, ptr %"R2"
  %"zext.118" = zext i32 %".1051" to i64
  %".1052" = load i32, ptr %"R3"
  %"zext.119" = zext i32 %".1052" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".1050", ptr addrspace(1) %"ptr_cast_for_access.59"
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
  %".31" = add i1 %"cmp", 0
  %".32" = xor i1 %".31", -1
  %".33" = and i1 %"cmp", %".30"
  %".34" = and i1 %".32", %".30"
  store i1 %".33", ptr %"P0"
  ; IMAD R7, R7, c[0x0][0x4], R2
  %".37" = load i32, ptr %"R7"
  %"nvvm_blockdim_y" = call i32 @"llvm.nvvm.read.ptx.sreg.ntid.y"()
  %".38" = load i32, ptr %"R2"
  %"imad_mul.1" = mul i32 %".37", %"nvvm_blockdim_y"
  %"imad_add.1" = add i32 %"imad_mul.1", %".38"
  store i32 %"imad_add.1", ptr %"R7"
  ; ISETP.GE.OR P0, PT, R7, c[0x0][0x180], P0
  %".41" = load i32, ptr %"R7"
  %".42" = load i1, ptr %"P0"
  %"cmp.1" = icmp sge i32 %".41", %"Arg_4"
  %".43" = add i1 %"cmp.1", 0
  %".44" = xor i1 %".43", -1
  %".45" = or i1 %"cmp.1", %".42"
  %".46" = or i1 %".44", %".42"
  store i1 %".45", ptr %"P0"
  ; @P0 EXIT
  %".49" = load i1, ptr %"P0"
  %".50" = icmp eq i1 %".49", 1
  br i1 %".50", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_conditionalExpr_0x0090", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_conditionalExpr_0x0090:
  ; EXIT
  br label %"ExitFunction"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x00a0:
  ; MOV R5, 0x4
  store i32 4, ptr %"R5"
  ; IMAD.WIDE R2, R0, R5, c[0x0][0x170]
  %".57" = load i32, ptr %"R0"
  %".58" = load i32, ptr %"R5"
  %"imad_ext1" = zext i32 %".57" to i64
  %"imad_ext2" = zext i32 %".58" to i64
  %"imad_mul.2" = mul i64 %"imad_ext1", %"imad_ext2"
  %".59" = ptrtoint ptr %"Arg_2" to i64
  %"imad_add.2" = add i64 %"imad_mul.2", %".59"
  %".60" = and i64 %"imad_add.2", 18446744069414584320
  %".61" = lshr i64 %".60", 32
  %"trunc32" = trunc i64 %".61" to i32
  %"trunc32.1" = trunc i64 %"imad_add.2" to i32
  store i32 %"trunc32.1", ptr %"R2"
  store i32 %"trunc32", ptr %"R3"
  ; LDG.E.CONSTANT.SYS R6, [R2]
  %".65" = load i32, ptr %"R2"
  %"zext" = zext i32 %".65" to i64
  %".66" = load i32, ptr %"R3"
  %"zext.1" = zext i32 %".66" to i64
  %"shl" = shl i64 %"zext.1", 32
  %"or" = or i64 %"shl", %"zext"
  %"inttoptr_bytes" = inttoptr i64 %"or" to ptr addrspace(1)
  %"ptr_cast_for_access" = bitcast ptr addrspace(1) %"inttoptr_bytes" to ptr addrspace(1)
  %".67" = load float, ptr addrspace(1) %"ptr_cast_for_access"
  %".68" = bitcast ptr %"R6" to ptr
  store float %".67", ptr %".68"
  ; MOV R4, c[0x0][0x184]
  store i32 %"Arg_5", ptr %"R4"
  ; ISETP.GE.AND P0, PT, R4, 0x1, PT
  %".73" = load i32, ptr %"R4"
  %".74" = load i1, ptr %"PT"
  %"cmp.2" = icmp sge i32 %".73", 1
  %".75" = add i1 %"cmp.2", 0
  %".76" = xor i1 %".75", -1
  %".77" = and i1 %"cmp.2", %".74"
  %".78" = and i1 %".76", %".74"
  store i1 %".77", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".81" = load i1, ptr %"P0"
  %".82" = icmp ne i1 %".81", 1
  br i1 %".82", label %".L_x_8", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0100:
  ; IADD3 R2, R4.reuse, -0x1, RZ
  %".85" = load i32, ptr %"R4"
  %".86" = add i32 %".85", -1
  %".87" = add i32 %".86", 0
  store i32 %".87", ptr %"R2"
  ; LOP3.LUT R4, R4, 0x3, RZ, 0xc0, !PT
  %".90" = load i32, ptr %"R4"
  %".91" = xor i1 1, -1
  %".92" = and i32 %".90", 3
  store i32 %".92", ptr %"R4"
  ; ISETP.GE.U32.AND P0, PT, R2, 0x3, PT
  %".95" = load i32, ptr %"R2"
  %".96" = load i1, ptr %"PT"
  %"cmp.3" = icmp sge i32 %".95", 3
  %".97" = add i1 %"cmp.3", 0
  %".98" = xor i1 %".97", -1
  %".99" = and i1 %"cmp.3", %".96"
  %".100" = and i1 %".98", %".96"
  store i1 %".99", ptr %"P0"
  ; MOV R10, RZ
  %".103" = load i32, ptr %"RZ"
  store i32 %".103", ptr %"R10"
  ; @!P0 BRA `(.L_x_9)
  %".106" = load i1, ptr %"P0"
  %".107" = icmp ne i1 %".106", 1
  br i1 %".107", label %".L_x_9", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0150:
  ; IADD3 R11, -R4, c[0x0][0x184], RZ
  %".110" = load i32, ptr %"R4"
  %".111" = sub i32 0, %".110"
  %".112" = add i32 %".111", %"Arg_5"
  %".113" = add i32 %".112", 0
  store i32 %".113", ptr %"R11"
  ; IMAD R2, R7, c[0x0][0x184], RZ
  %".116" = load i32, ptr %"R7"
  %"imad_mul.3" = mul i32 %".116", %"Arg_5"
  %"imad_add.3" = add i32 %"imad_mul.3", 0
  store i32 %"imad_add.3", ptr %"R2"
  ; ULDC.64 UR4, c[0x0][0x168]
  %".119" = ptrtoint ptr %"Arg_1" to i64
  %".120" = and i64 %".119", 18446744069414584320
  %".121" = lshr i64 %".120", 32
  %"trunc32.2" = trunc i64 %".121" to i32
  %"trunc32.3" = trunc i64 %".119" to i32
  store i32 %"trunc32.3", ptr %"UR4"
  store i32 %"trunc32.2", ptr %"UR5"
  ; IMAD R12, R0, c[0x0][0x184], RZ
  %".125" = load i32, ptr %"R0"
  %"imad_mul.4" = mul i32 %".125", %"Arg_5"
  %"imad_add.4" = add i32 %"imad_mul.4", 0
  store i32 %"imad_add.4", ptr %"R12"
  ; ISETP.GT.AND P0, PT, R11, RZ, PT
  %".128" = load i32, ptr %"R11"
  %".129" = load i1, ptr %"PT"
  %"cmp.4" = icmp sgt i32 %".128", 0
  %".130" = add i1 %"cmp.4", 0
  %".131" = xor i1 %".130", -1
  %".132" = and i1 %"cmp.4", %".129"
  %".133" = and i1 %".131", %".129"
  store i1 %".132", ptr %"P0"
  ; IMAD.MOV.U32 R10, RZ, RZ, RZ
  %"imad_mul.5" = mul i32 0, 0
  %"imad_add.5" = add i32 %"imad_mul.5", 0
  store i32 %"imad_add.5", ptr %"R10"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x160]
  %".138" = load i32, ptr %"R2"
  %".139" = load i32, ptr %"R5"
  %"imad_ext1.1" = zext i32 %".138" to i64
  %"imad_ext2.1" = zext i32 %".139" to i64
  %"imad_mul.6" = mul i64 %"imad_ext1.1", %"imad_ext2.1"
  %".140" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.6" = add i64 %"imad_mul.6", %".140"
  %".141" = and i64 %"imad_add.6", 18446744069414584320
  %".142" = lshr i64 %".141", 32
  %"trunc32.4" = trunc i64 %".142" to i32
  %"trunc32.5" = trunc i64 %"imad_add.6" to i32
  store i32 %"trunc32.5", ptr %"R2"
  store i32 %"trunc32.4", ptr %"R3"
  ; @!P0 BRA `(.L_x_10)
  %".146" = load i1, ptr %"P0"
  %".147" = icmp ne i1 %".146", 1
  br i1 %".147", label %".L_x_10", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x01d0:
  ; ISETP.GT.AND P1, PT, R11, 0xc, PT
  %".150" = load i32, ptr %"R11"
  %".151" = load i1, ptr %"PT"
  %"cmp.5" = icmp sgt i32 %".150", 12
  %".152" = add i1 %"cmp.5", 0
  %".153" = xor i1 %".152", -1
  %".154" = and i1 %"cmp.5", %".151"
  %".155" = and i1 %".153", %".151"
  store i1 %".154", ptr %"P1"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0
  %".158" = and i1 1, 1
  %".159" = and i1 %".158", 1
  ; @!P1 BRA `(.L_x_11)
  %".161" = load i1, ptr %"P1"
  %".162" = icmp ne i1 %".161", 1
  br i1 %".162", label %".L_x_11", label %".text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200"
.text._Z18linear_proj_kernelPKfS0_S0_Pfiii_split_0x0200:
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".165" = xor i1 1, 1
  %".166" = and i1 %".165", 1
  %".167" = and i1 %".166", 1
  br label %".L_x_12"
.L_x_12:
  ; MOV R8, UR4
  %".170" = load i32, ptr %"UR4"
  store i32 %".170", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".173" = load i32, ptr %"R2"
  %"zext.2" = zext i32 %".173" to i64
  %".174" = load i32, ptr %"R3"
  %"zext.3" = zext i32 %".174" to i64
  %"shl.1" = shl i64 %"zext.3", 32
  %"or.1" = or i64 %"shl.1", %"zext.2"
  %"inttoptr_bytes.1" = inttoptr i64 %"or.1" to ptr addrspace(1)
  %"ptr_cast_for_access.1" = bitcast ptr addrspace(1) %"inttoptr_bytes.1" to ptr addrspace(1)
  %".175" = load float, ptr addrspace(1) %"ptr_cast_for_access.1"
  %".176" = bitcast ptr %"R14" to ptr
  store float %".175", ptr %".176"
  ; MOV R9, UR5
  %".179" = load i32, ptr %"UR5"
  store i32 %".179", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".182" = load i32, ptr %"R2"
  %"zext.4" = zext i32 %".182" to i64
  %".183" = load i32, ptr %"R3"
  %"zext.5" = zext i32 %".183" to i64
  %"shl.2" = shl i64 %"zext.5", 32
  %"or.2" = or i64 %"shl.2", %"zext.4"
  %"ptr_plus_imm" = add i64 %"or.2", 4
  %"inttoptr_bytes.2" = inttoptr i64 %"ptr_plus_imm" to ptr addrspace(1)
  %"ptr_cast_for_access.2" = bitcast ptr addrspace(1) %"inttoptr_bytes.2" to ptr addrspace(1)
  %".184" = load float, ptr addrspace(1) %"ptr_cast_for_access.2"
  %".185" = bitcast ptr %"R15" to ptr
  store float %".184", ptr %".185"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".188" = load i32, ptr %"R12"
  %".189" = load i32, ptr %"R8"
  %"imad_ext1.2" = zext i32 %".188" to i64
  %"imad_ext2.2" = zext i32 4 to i64
  %"imad_mul.7" = mul i64 %"imad_ext1.2", %"imad_ext2.2"
  %"imad_ext3" = zext i32 %".189" to i64
  %"imad_add.7" = add i64 %"imad_mul.7", %"imad_ext3"
  %".190" = and i64 %"imad_add.7", 18446744069414584320
  %".191" = lshr i64 %".190", 32
  %"trunc32.6" = trunc i64 %".191" to i32
  %"trunc32.7" = trunc i64 %"imad_add.7" to i32
  store i32 %"trunc32.7", ptr %"R8"
  store i32 %"trunc32.6", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".195" = load i32, ptr %"R2"
  %"zext.6" = zext i32 %".195" to i64
  %".196" = load i32, ptr %"R3"
  %"zext.7" = zext i32 %".196" to i64
  %"shl.3" = shl i64 %"zext.7", 32
  %"or.3" = or i64 %"shl.3", %"zext.6"
  %"ptr_plus_imm.1" = add i64 %"or.3", 8
  %"inttoptr_bytes.3" = inttoptr i64 %"ptr_plus_imm.1" to ptr addrspace(1)
  %"ptr_cast_for_access.3" = bitcast ptr addrspace(1) %"inttoptr_bytes.3" to ptr addrspace(1)
  %".197" = load float, ptr addrspace(1) %"ptr_cast_for_access.3"
  %".198" = bitcast ptr %"R17" to ptr
  store float %".197", ptr %".198"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".201" = load i32, ptr %"R2"
  %"zext.8" = zext i32 %".201" to i64
  %".202" = load i32, ptr %"R3"
  %"zext.9" = zext i32 %".202" to i64
  %"shl.4" = shl i64 %"zext.9", 32
  %"or.4" = or i64 %"shl.4", %"zext.8"
  %"ptr_plus_imm.2" = add i64 %"or.4", 12
  %"inttoptr_bytes.4" = inttoptr i64 %"ptr_plus_imm.2" to ptr addrspace(1)
  %"ptr_cast_for_access.4" = bitcast ptr addrspace(1) %"inttoptr_bytes.4" to ptr addrspace(1)
  %".203" = load float, ptr addrspace(1) %"ptr_cast_for_access.4"
  %".204" = bitcast ptr %"R19" to ptr
  store float %".203", ptr %".204"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".207" = load i32, ptr %"R8"
  %"zext.10" = zext i32 %".207" to i64
  %".208" = load i32, ptr %"R9"
  %"zext.11" = zext i32 %".208" to i64
  %"shl.5" = shl i64 %"zext.11", 32
  %"or.5" = or i64 %"shl.5", %"zext.10"
  %"inttoptr_bytes.5" = inttoptr i64 %"or.5" to ptr addrspace(1)
  %"ptr_cast_for_access.5" = bitcast ptr addrspace(1) %"inttoptr_bytes.5" to ptr addrspace(1)
  %".209" = load float, ptr addrspace(1) %"ptr_cast_for_access.5"
  %".210" = bitcast ptr %"R13" to ptr
  store float %".209", ptr %".210"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".213" = load i32, ptr %"R8"
  %"zext.12" = zext i32 %".213" to i64
  %".214" = load i32, ptr %"R9"
  %"zext.13" = zext i32 %".214" to i64
  %"shl.6" = shl i64 %"zext.13", 32
  %"or.6" = or i64 %"shl.6", %"zext.12"
  %"ptr_plus_imm.3" = add i64 %"or.6", 4
  %"inttoptr_bytes.6" = inttoptr i64 %"ptr_plus_imm.3" to ptr addrspace(1)
  %"ptr_cast_for_access.6" = bitcast ptr addrspace(1) %"inttoptr_bytes.6" to ptr addrspace(1)
  %".215" = load float, ptr addrspace(1) %"ptr_cast_for_access.6"
  %".216" = bitcast ptr %"R16" to ptr
  store float %".215", ptr %".216"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".219" = load i32, ptr %"R8"
  %"zext.14" = zext i32 %".219" to i64
  %".220" = load i32, ptr %"R9"
  %"zext.15" = zext i32 %".220" to i64
  %"shl.7" = shl i64 %"zext.15", 32
  %"or.7" = or i64 %"shl.7", %"zext.14"
  %"ptr_plus_imm.4" = add i64 %"or.7", 8
  %"inttoptr_bytes.7" = inttoptr i64 %"ptr_plus_imm.4" to ptr addrspace(1)
  %"ptr_cast_for_access.7" = bitcast ptr addrspace(1) %"inttoptr_bytes.7" to ptr addrspace(1)
  %".221" = load float, ptr addrspace(1) %"ptr_cast_for_access.7"
  %".222" = bitcast ptr %"R18" to ptr
  store float %".221", ptr %".222"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".225" = load i32, ptr %"R8"
  %"zext.16" = zext i32 %".225" to i64
  %".226" = load i32, ptr %"R9"
  %"zext.17" = zext i32 %".226" to i64
  %"shl.8" = shl i64 %"zext.17", 32
  %"or.8" = or i64 %"shl.8", %"zext.16"
  %"ptr_plus_imm.5" = add i64 %"or.8", 12
  %"inttoptr_bytes.8" = inttoptr i64 %"ptr_plus_imm.5" to ptr addrspace(1)
  %"ptr_cast_for_access.8" = bitcast ptr addrspace(1) %"inttoptr_bytes.8" to ptr addrspace(1)
  %".227" = load float, ptr addrspace(1) %"ptr_cast_for_access.8"
  %".228" = bitcast ptr %"R20" to ptr
  store float %".227", ptr %".228"
  ; LDG.E.CONSTANT.SYS R21, [R2+0x10]
  %".231" = load i32, ptr %"R2"
  %"zext.18" = zext i32 %".231" to i64
  %".232" = load i32, ptr %"R3"
  %"zext.19" = zext i32 %".232" to i64
  %"shl.9" = shl i64 %"zext.19", 32
  %"or.9" = or i64 %"shl.9", %"zext.18"
  %"ptr_plus_imm.6" = add i64 %"or.9", 16
  %"inttoptr_bytes.9" = inttoptr i64 %"ptr_plus_imm.6" to ptr addrspace(1)
  %"ptr_cast_for_access.9" = bitcast ptr addrspace(1) %"inttoptr_bytes.9" to ptr addrspace(1)
  %".233" = load float, ptr addrspace(1) %"ptr_cast_for_access.9"
  %".234" = bitcast ptr %"R21" to ptr
  store float %".233", ptr %".234"
  ; LDG.E.CONSTANT.SYS R22, [R8+0x10]
  %".237" = load i32, ptr %"R8"
  %"zext.20" = zext i32 %".237" to i64
  %".238" = load i32, ptr %"R9"
  %"zext.21" = zext i32 %".238" to i64
  %"shl.10" = shl i64 %"zext.21", 32
  %"or.10" = or i64 %"shl.10", %"zext.20"
  %"ptr_plus_imm.7" = add i64 %"or.10", 16
  %"inttoptr_bytes.10" = inttoptr i64 %"ptr_plus_imm.7" to ptr addrspace(1)
  %"ptr_cast_for_access.10" = bitcast ptr addrspace(1) %"inttoptr_bytes.10" to ptr addrspace(1)
  %".239" = load float, ptr addrspace(1) %"ptr_cast_for_access.10"
  %".240" = bitcast ptr %"R22" to ptr
  store float %".239", ptr %".240"
  ; LDG.E.CONSTANT.SYS R23, [R2+0x14]
  %".243" = load i32, ptr %"R2"
  %"zext.22" = zext i32 %".243" to i64
  %".244" = load i32, ptr %"R3"
  %"zext.23" = zext i32 %".244" to i64
  %"shl.11" = shl i64 %"zext.23", 32
  %"or.11" = or i64 %"shl.11", %"zext.22"
  %"ptr_plus_imm.8" = add i64 %"or.11", 20
  %"inttoptr_bytes.11" = inttoptr i64 %"ptr_plus_imm.8" to ptr addrspace(1)
  %"ptr_cast_for_access.11" = bitcast ptr addrspace(1) %"inttoptr_bytes.11" to ptr addrspace(1)
  %".245" = load float, ptr addrspace(1) %"ptr_cast_for_access.11"
  %".246" = bitcast ptr %"R23" to ptr
  store float %".245", ptr %".246"
  ; LDG.E.CONSTANT.SYS R24, [R8+0x14]
  %".249" = load i32, ptr %"R8"
  %"zext.24" = zext i32 %".249" to i64
  %".250" = load i32, ptr %"R9"
  %"zext.25" = zext i32 %".250" to i64
  %"shl.12" = shl i64 %"zext.25", 32
  %"or.12" = or i64 %"shl.12", %"zext.24"
  %"ptr_plus_imm.9" = add i64 %"or.12", 20
  %"inttoptr_bytes.12" = inttoptr i64 %"ptr_plus_imm.9" to ptr addrspace(1)
  %"ptr_cast_for_access.12" = bitcast ptr addrspace(1) %"inttoptr_bytes.12" to ptr addrspace(1)
  %".251" = load float, ptr addrspace(1) %"ptr_cast_for_access.12"
  %".252" = bitcast ptr %"R24" to ptr
  store float %".251", ptr %".252"
  ; LDG.E.CONSTANT.SYS R25, [R2+0x18]
  %".255" = load i32, ptr %"R2"
  %"zext.26" = zext i32 %".255" to i64
  %".256" = load i32, ptr %"R3"
  %"zext.27" = zext i32 %".256" to i64
  %"shl.13" = shl i64 %"zext.27", 32
  %"or.13" = or i64 %"shl.13", %"zext.26"
  %"ptr_plus_imm.10" = add i64 %"or.13", 24
  %"inttoptr_bytes.13" = inttoptr i64 %"ptr_plus_imm.10" to ptr addrspace(1)
  %"ptr_cast_for_access.13" = bitcast ptr addrspace(1) %"inttoptr_bytes.13" to ptr addrspace(1)
  %".257" = load float, ptr addrspace(1) %"ptr_cast_for_access.13"
  %".258" = bitcast ptr %"R25" to ptr
  store float %".257", ptr %".258"
  ; LDG.E.CONSTANT.SYS R26, [R8+0x18]
  %".261" = load i32, ptr %"R8"
  %"zext.28" = zext i32 %".261" to i64
  %".262" = load i32, ptr %"R9"
  %"zext.29" = zext i32 %".262" to i64
  %"shl.14" = shl i64 %"zext.29", 32
  %"or.14" = or i64 %"shl.14", %"zext.28"
  %"ptr_plus_imm.11" = add i64 %"or.14", 24
  %"inttoptr_bytes.14" = inttoptr i64 %"ptr_plus_imm.11" to ptr addrspace(1)
  %"ptr_cast_for_access.14" = bitcast ptr addrspace(1) %"inttoptr_bytes.14" to ptr addrspace(1)
  %".263" = load float, ptr addrspace(1) %"ptr_cast_for_access.14"
  %".264" = bitcast ptr %"R26" to ptr
  store float %".263", ptr %".264"
  ; LDG.E.CONSTANT.SYS R27, [R2+0x1c]
  %".267" = load i32, ptr %"R2"
  %"zext.30" = zext i32 %".267" to i64
  %".268" = load i32, ptr %"R3"
  %"zext.31" = zext i32 %".268" to i64
  %"shl.15" = shl i64 %"zext.31", 32
  %"or.15" = or i64 %"shl.15", %"zext.30"
  %"ptr_plus_imm.12" = add i64 %"or.15", 28
  %"inttoptr_bytes.15" = inttoptr i64 %"ptr_plus_imm.12" to ptr addrspace(1)
  %"ptr_cast_for_access.15" = bitcast ptr addrspace(1) %"inttoptr_bytes.15" to ptr addrspace(1)
  %".269" = load float, ptr addrspace(1) %"ptr_cast_for_access.15"
  %".270" = bitcast ptr %"R27" to ptr
  store float %".269", ptr %".270"
  ; LDG.E.CONSTANT.SYS R28, [R8+0x1c]
  %".273" = load i32, ptr %"R8"
  %"zext.32" = zext i32 %".273" to i64
  %".274" = load i32, ptr %"R9"
  %"zext.33" = zext i32 %".274" to i64
  %"shl.16" = shl i64 %"zext.33", 32
  %"or.16" = or i64 %"shl.16", %"zext.32"
  %"ptr_plus_imm.13" = add i64 %"or.16", 28
  %"inttoptr_bytes.16" = inttoptr i64 %"ptr_plus_imm.13" to ptr addrspace(1)
  %"ptr_cast_for_access.16" = bitcast ptr addrspace(1) %"inttoptr_bytes.16" to ptr addrspace(1)
  %".275" = load float, ptr addrspace(1) %"ptr_cast_for_access.16"
  %".276" = bitcast ptr %"R28" to ptr
  store float %".275", ptr %".276"
  ; LDG.E.CONSTANT.SYS R29, [R2+0x20]
  %".279" = load i32, ptr %"R2"
  %"zext.34" = zext i32 %".279" to i64
  %".280" = load i32, ptr %"R3"
  %"zext.35" = zext i32 %".280" to i64
  %"shl.17" = shl i64 %"zext.35", 32
  %"or.17" = or i64 %"shl.17", %"zext.34"
  %"ptr_plus_imm.14" = add i64 %"or.17", 32
  %"inttoptr_bytes.17" = inttoptr i64 %"ptr_plus_imm.14" to ptr addrspace(1)
  %"ptr_cast_for_access.17" = bitcast ptr addrspace(1) %"inttoptr_bytes.17" to ptr addrspace(1)
  %".281" = load float, ptr addrspace(1) %"ptr_cast_for_access.17"
  %".282" = bitcast ptr %"R29" to ptr
  store float %".281", ptr %".282"
  ; LDG.E.CONSTANT.SYS R30, [R8+0x20]
  %".285" = load i32, ptr %"R8"
  %"zext.36" = zext i32 %".285" to i64
  %".286" = load i32, ptr %"R9"
  %"zext.37" = zext i32 %".286" to i64
  %"shl.18" = shl i64 %"zext.37", 32
  %"or.18" = or i64 %"shl.18", %"zext.36"
  %"ptr_plus_imm.15" = add i64 %"or.18", 32
  %"inttoptr_bytes.18" = inttoptr i64 %"ptr_plus_imm.15" to ptr addrspace(1)
  %"ptr_cast_for_access.18" = bitcast ptr addrspace(1) %"inttoptr_bytes.18" to ptr addrspace(1)
  %".287" = load float, ptr addrspace(1) %"ptr_cast_for_access.18"
  %".288" = bitcast ptr %"R30" to ptr
  store float %".287", ptr %".288"
  ; LDG.E.CONSTANT.SYS R31, [R2+0x24]
  %".291" = load i32, ptr %"R2"
  %"zext.38" = zext i32 %".291" to i64
  %".292" = load i32, ptr %"R3"
  %"zext.39" = zext i32 %".292" to i64
  %"shl.19" = shl i64 %"zext.39", 32
  %"or.19" = or i64 %"shl.19", %"zext.38"
  %"ptr_plus_imm.16" = add i64 %"or.19", 36
  %"inttoptr_bytes.19" = inttoptr i64 %"ptr_plus_imm.16" to ptr addrspace(1)
  %"ptr_cast_for_access.19" = bitcast ptr addrspace(1) %"inttoptr_bytes.19" to ptr addrspace(1)
  %".293" = load float, ptr addrspace(1) %"ptr_cast_for_access.19"
  %".294" = bitcast ptr %"R31" to ptr
  store float %".293", ptr %".294"
  ; LDG.E.CONSTANT.SYS R32, [R8+0x24]
  %".297" = load i32, ptr %"R8"
  %"zext.40" = zext i32 %".297" to i64
  %".298" = load i32, ptr %"R9"
  %"zext.41" = zext i32 %".298" to i64
  %"shl.20" = shl i64 %"zext.41", 32
  %"or.20" = or i64 %"shl.20", %"zext.40"
  %"ptr_plus_imm.17" = add i64 %"or.20", 36
  %"inttoptr_bytes.20" = inttoptr i64 %"ptr_plus_imm.17" to ptr addrspace(1)
  %"ptr_cast_for_access.20" = bitcast ptr addrspace(1) %"inttoptr_bytes.20" to ptr addrspace(1)
  %".299" = load float, ptr addrspace(1) %"ptr_cast_for_access.20"
  %".300" = bitcast ptr %"R32" to ptr
  store float %".299", ptr %".300"
  ; LDG.E.CONSTANT.SYS R33, [R2+0x28]
  %".303" = load i32, ptr %"R2"
  %"zext.42" = zext i32 %".303" to i64
  %".304" = load i32, ptr %"R3"
  %"zext.43" = zext i32 %".304" to i64
  %"shl.21" = shl i64 %"zext.43", 32
  %"or.21" = or i64 %"shl.21", %"zext.42"
  %"ptr_plus_imm.18" = add i64 %"or.21", 40
  %"inttoptr_bytes.21" = inttoptr i64 %"ptr_plus_imm.18" to ptr addrspace(1)
  %"ptr_cast_for_access.21" = bitcast ptr addrspace(1) %"inttoptr_bytes.21" to ptr addrspace(1)
  %".305" = load float, ptr addrspace(1) %"ptr_cast_for_access.21"
  %".306" = bitcast ptr %"R33" to ptr
  store float %".305", ptr %".306"
  ; LDG.E.CONSTANT.SYS R34, [R8+0x28]
  %".309" = load i32, ptr %"R8"
  %"zext.44" = zext i32 %".309" to i64
  %".310" = load i32, ptr %"R9"
  %"zext.45" = zext i32 %".310" to i64
  %"shl.22" = shl i64 %"zext.45", 32
  %"or.22" = or i64 %"shl.22", %"zext.44"
  %"ptr_plus_imm.19" = add i64 %"or.22", 40
  %"inttoptr_bytes.22" = inttoptr i64 %"ptr_plus_imm.19" to ptr addrspace(1)
  %"ptr_cast_for_access.22" = bitcast ptr addrspace(1) %"inttoptr_bytes.22" to ptr addrspace(1)
  %".311" = load float, ptr addrspace(1) %"ptr_cast_for_access.22"
  %".312" = bitcast ptr %"R34" to ptr
  store float %".311", ptr %".312"
  ; LDG.E.CONSTANT.SYS R35, [R2+0x2c]
  %".315" = load i32, ptr %"R2"
  %"zext.46" = zext i32 %".315" to i64
  %".316" = load i32, ptr %"R3"
  %"zext.47" = zext i32 %".316" to i64
  %"shl.23" = shl i64 %"zext.47", 32
  %"or.23" = or i64 %"shl.23", %"zext.46"
  %"ptr_plus_imm.20" = add i64 %"or.23", 44
  %"inttoptr_bytes.23" = inttoptr i64 %"ptr_plus_imm.20" to ptr addrspace(1)
  %"ptr_cast_for_access.23" = bitcast ptr addrspace(1) %"inttoptr_bytes.23" to ptr addrspace(1)
  %".317" = load float, ptr addrspace(1) %"ptr_cast_for_access.23"
  %".318" = bitcast ptr %"R35" to ptr
  store float %".317", ptr %".318"
  ; LDG.E.CONSTANT.SYS R36, [R8+0x2c]
  %".321" = load i32, ptr %"R8"
  %"zext.48" = zext i32 %".321" to i64
  %".322" = load i32, ptr %"R9"
  %"zext.49" = zext i32 %".322" to i64
  %"shl.24" = shl i64 %"zext.49", 32
  %"or.24" = or i64 %"shl.24", %"zext.48"
  %"ptr_plus_imm.21" = add i64 %"or.24", 44
  %"inttoptr_bytes.24" = inttoptr i64 %"ptr_plus_imm.21" to ptr addrspace(1)
  %"ptr_cast_for_access.24" = bitcast ptr addrspace(1) %"inttoptr_bytes.24" to ptr addrspace(1)
  %".323" = load float, ptr addrspace(1) %"ptr_cast_for_access.24"
  %".324" = bitcast ptr %"R36" to ptr
  store float %".323", ptr %".324"
  ; LDG.E.CONSTANT.SYS R37, [R2+0x30]
  %".327" = load i32, ptr %"R2"
  %"zext.50" = zext i32 %".327" to i64
  %".328" = load i32, ptr %"R3"
  %"zext.51" = zext i32 %".328" to i64
  %"shl.25" = shl i64 %"zext.51", 32
  %"or.25" = or i64 %"shl.25", %"zext.50"
  %"ptr_plus_imm.22" = add i64 %"or.25", 48
  %"inttoptr_bytes.25" = inttoptr i64 %"ptr_plus_imm.22" to ptr addrspace(1)
  %"ptr_cast_for_access.25" = bitcast ptr addrspace(1) %"inttoptr_bytes.25" to ptr addrspace(1)
  %".329" = load float, ptr addrspace(1) %"ptr_cast_for_access.25"
  %".330" = bitcast ptr %"R37" to ptr
  store float %".329", ptr %".330"
  ; LDG.E.CONSTANT.SYS R38, [R8+0x30]
  %".333" = load i32, ptr %"R8"
  %"zext.52" = zext i32 %".333" to i64
  %".334" = load i32, ptr %"R9"
  %"zext.53" = zext i32 %".334" to i64
  %"shl.26" = shl i64 %"zext.53", 32
  %"or.26" = or i64 %"shl.26", %"zext.52"
  %"ptr_plus_imm.23" = add i64 %"or.26", 48
  %"inttoptr_bytes.26" = inttoptr i64 %"ptr_plus_imm.23" to ptr addrspace(1)
  %"ptr_cast_for_access.26" = bitcast ptr addrspace(1) %"inttoptr_bytes.26" to ptr addrspace(1)
  %".335" = load float, ptr addrspace(1) %"ptr_cast_for_access.26"
  %".336" = bitcast ptr %"R38" to ptr
  store float %".335", ptr %".336"
  ; LDG.E.CONSTANT.SYS R39, [R2+0x34]
  %".339" = load i32, ptr %"R2"
  %"zext.54" = zext i32 %".339" to i64
  %".340" = load i32, ptr %"R3"
  %"zext.55" = zext i32 %".340" to i64
  %"shl.27" = shl i64 %"zext.55", 32
  %"or.27" = or i64 %"shl.27", %"zext.54"
  %"ptr_plus_imm.24" = add i64 %"or.27", 52
  %"inttoptr_bytes.27" = inttoptr i64 %"ptr_plus_imm.24" to ptr addrspace(1)
  %"ptr_cast_for_access.27" = bitcast ptr addrspace(1) %"inttoptr_bytes.27" to ptr addrspace(1)
  %".341" = load float, ptr addrspace(1) %"ptr_cast_for_access.27"
  %".342" = bitcast ptr %"R39" to ptr
  store float %".341", ptr %".342"
  ; LDG.E.CONSTANT.SYS R40, [R8+0x34]
  %".345" = load i32, ptr %"R8"
  %"zext.56" = zext i32 %".345" to i64
  %".346" = load i32, ptr %"R9"
  %"zext.57" = zext i32 %".346" to i64
  %"shl.28" = shl i64 %"zext.57", 32
  %"or.28" = or i64 %"shl.28", %"zext.56"
  %"ptr_plus_imm.25" = add i64 %"or.28", 52
  %"inttoptr_bytes.28" = inttoptr i64 %"ptr_plus_imm.25" to ptr addrspace(1)
  %"ptr_cast_for_access.28" = bitcast ptr addrspace(1) %"inttoptr_bytes.28" to ptr addrspace(1)
  %".347" = load float, ptr addrspace(1) %"ptr_cast_for_access.28"
  %".348" = bitcast ptr %"R40" to ptr
  store float %".347", ptr %".348"
  ; LDG.E.CONSTANT.SYS R41, [R2+0x38]
  %".351" = load i32, ptr %"R2"
  %"zext.58" = zext i32 %".351" to i64
  %".352" = load i32, ptr %"R3"
  %"zext.59" = zext i32 %".352" to i64
  %"shl.29" = shl i64 %"zext.59", 32
  %"or.29" = or i64 %"shl.29", %"zext.58"
  %"ptr_plus_imm.26" = add i64 %"or.29", 56
  %"inttoptr_bytes.29" = inttoptr i64 %"ptr_plus_imm.26" to ptr addrspace(1)
  %"ptr_cast_for_access.29" = bitcast ptr addrspace(1) %"inttoptr_bytes.29" to ptr addrspace(1)
  %".353" = load float, ptr addrspace(1) %"ptr_cast_for_access.29"
  %".354" = bitcast ptr %"R41" to ptr
  store float %".353", ptr %".354"
  ; LDG.E.CONSTANT.SYS R42, [R8+0x38]
  %".357" = load i32, ptr %"R8"
  %"zext.60" = zext i32 %".357" to i64
  %".358" = load i32, ptr %"R9"
  %"zext.61" = zext i32 %".358" to i64
  %"shl.30" = shl i64 %"zext.61", 32
  %"or.30" = or i64 %"shl.30", %"zext.60"
  %"ptr_plus_imm.27" = add i64 %"or.30", 56
  %"inttoptr_bytes.30" = inttoptr i64 %"ptr_plus_imm.27" to ptr addrspace(1)
  %"ptr_cast_for_access.30" = bitcast ptr addrspace(1) %"inttoptr_bytes.30" to ptr addrspace(1)
  %".359" = load float, ptr addrspace(1) %"ptr_cast_for_access.30"
  %".360" = bitcast ptr %"R42" to ptr
  store float %".359", ptr %".360"
  ; LDG.E.CONSTANT.SYS R44, [R8+0x3c]
  %".363" = load i32, ptr %"R8"
  %"zext.62" = zext i32 %".363" to i64
  %".364" = load i32, ptr %"R9"
  %"zext.63" = zext i32 %".364" to i64
  %"shl.31" = shl i64 %"zext.63", 32
  %"or.31" = or i64 %"shl.31", %"zext.62"
  %"ptr_plus_imm.28" = add i64 %"or.31", 60
  %"inttoptr_bytes.31" = inttoptr i64 %"ptr_plus_imm.28" to ptr addrspace(1)
  %"ptr_cast_for_access.31" = bitcast ptr addrspace(1) %"inttoptr_bytes.31" to ptr addrspace(1)
  %".365" = load float, ptr addrspace(1) %"ptr_cast_for_access.31"
  %".366" = bitcast ptr %"R44" to ptr
  store float %".365", ptr %".366"
  ; LDG.E.CONSTANT.SYS R43, [R2+0x3c]
  %".369" = load i32, ptr %"R2"
  %"zext.64" = zext i32 %".369" to i64
  %".370" = load i32, ptr %"R3"
  %"zext.65" = zext i32 %".370" to i64
  %"shl.32" = shl i64 %"zext.65", 32
  %"or.32" = or i64 %"shl.32", %"zext.64"
  %"ptr_plus_imm.29" = add i64 %"or.32", 60
  %"inttoptr_bytes.32" = inttoptr i64 %"ptr_plus_imm.29" to ptr addrspace(1)
  %"ptr_cast_for_access.32" = bitcast ptr addrspace(1) %"inttoptr_bytes.32" to ptr addrspace(1)
  %".371" = load float, ptr addrspace(1) %"ptr_cast_for_access.32"
  %".372" = bitcast ptr %"R43" to ptr
  store float %".371", ptr %".372"
  ; IADD3 R11, R11, -0x10, RZ
  %".375" = load i32, ptr %"R11"
  %".376" = add i32 %".375", -16
  %".377" = add i32 %".376", 0
  store i32 %".377", ptr %"R11"
  ; ISETP.GT.AND P1, PT, R11, 0xc, PT
  %".380" = load i32, ptr %"R11"
  %".381" = load i1, ptr %"PT"
  %"cmp.6" = icmp sgt i32 %".380", 12
  %".382" = add i1 %"cmp.6", 0
  %".383" = xor i1 %".382", -1
  %".384" = and i1 %"cmp.6", %".381"
  %".385" = and i1 %".383", %".381"
  store i1 %".384", ptr %"P1"
  ; UIADD3 UR4, UP0, UR4, 0x40, URZ
  %".388" = load i32, ptr %"UR4"
  %".389" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".388", i32 64)
  %".390" = extractvalue {i32, i1} %".389", 0
  %".391" = extractvalue {i32, i1} %".389", 1
  %".392" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".390", i32 0)
  %".393" = extractvalue {i32, i1} %".392", 0
  %".394" = extractvalue {i32, i1} %".392", 1
  %".395" = or i1 %".391", %".394"
  store i32 %".393", ptr %"UR4"
  store i1 %".395", ptr %"UP0"
  ; IADD3 R2, P2, R2, 0x40, RZ
  %".399" = load i32, ptr %"R2"
  %".400" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".399", i32 64)
  %".401" = extractvalue {i32, i1} %".400", 0
  %".402" = extractvalue {i32, i1} %".400", 1
  %".403" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".401", i32 0)
  %".404" = extractvalue {i32, i1} %".403", 0
  %".405" = extractvalue {i32, i1} %".403", 1
  %".406" = or i1 %".402", %".405"
  store i32 %".404", ptr %"R2"
  store i1 %".406", ptr %"P2"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".410" = load i32, ptr %"UR5"
  %".411" = load i1, ptr %"UP0"
  %".412" = xor i1 1, -1
  %".413" = zext i1 %".411" to i32
  %".414" = zext i1 %".412" to i32
  %"add" = add i32 0, %".410"
  %"add.1" = add i32 %"add", 0
  %"add.2" = add i32 %"add.1", %".413"
  %"add.3" = add i32 %"add.2", %".414"
  store i32 %"add.3", ptr %"UR5"
  ; IADD3 R10, R10, 0x10, RZ
  %".417" = load i32, ptr %"R10"
  %".418" = add i32 %".417", 16
  %".419" = add i32 %".418", 0
  store i32 %".419", ptr %"R10"
  ; IADD3.X R3, RZ, R3, RZ, P2, !PT
  %".422" = load i32, ptr %"R3"
  %".423" = load i1, ptr %"P2"
  %".424" = xor i1 1, -1
  %".425" = zext i1 %".423" to i32
  %".426" = zext i1 %".424" to i32
  %"add.4" = add i32 0, %".422"
  %"add.5" = add i32 %"add.4", 0
  %"add.6" = add i32 %"add.5", %".425"
  %"add.7" = add i32 %"add.6", %".426"
  store i32 %"add.7", ptr %"R3"
  ; FFMA R13, R13, R14, R6
  %".429" = load float, ptr %"R13"
  %".430" = load float, ptr %"R14"
  %".431" = load float, ptr %"R6"
  %"fmul" = fmul float %".429", %".430"
  %"fadd" = fadd float %"fmul", %".431"
  %".432" = bitcast ptr %"R13" to ptr
  store float %"fadd", ptr %".432"
  ; FFMA R13, R16, R15, R13
  %".435" = load float, ptr %"R16"
  %".436" = load float, ptr %"R15"
  %".437" = load float, ptr %"R13"
  %"fmul.1" = fmul float %".435", %".436"
  %"fadd.1" = fadd float %"fmul.1", %".437"
  %".438" = bitcast ptr %"R13" to ptr
  store float %"fadd.1", ptr %".438"
  ; FFMA R13, R18, R17, R13
  %".441" = load float, ptr %"R18"
  %".442" = load float, ptr %"R17"
  %".443" = load float, ptr %"R13"
  %"fmul.2" = fmul float %".441", %".442"
  %"fadd.2" = fadd float %"fmul.2", %".443"
  %".444" = bitcast ptr %"R13" to ptr
  store float %"fadd.2", ptr %".444"
  ; FFMA R13, R20, R19, R13
  %".447" = load float, ptr %"R20"
  %".448" = load float, ptr %"R19"
  %".449" = load float, ptr %"R13"
  %"fmul.3" = fmul float %".447", %".448"
  %"fadd.3" = fadd float %"fmul.3", %".449"
  %".450" = bitcast ptr %"R13" to ptr
  store float %"fadd.3", ptr %".450"
  ; FFMA R13, R22, R21, R13
  %".453" = load float, ptr %"R22"
  %".454" = load float, ptr %"R21"
  %".455" = load float, ptr %"R13"
  %"fmul.4" = fmul float %".453", %".454"
  %"fadd.4" = fadd float %"fmul.4", %".455"
  %".456" = bitcast ptr %"R13" to ptr
  store float %"fadd.4", ptr %".456"
  ; FFMA R13, R24, R23, R13
  %".459" = load float, ptr %"R24"
  %".460" = load float, ptr %"R23"
  %".461" = load float, ptr %"R13"
  %"fmul.5" = fmul float %".459", %".460"
  %"fadd.5" = fadd float %"fmul.5", %".461"
  %".462" = bitcast ptr %"R13" to ptr
  store float %"fadd.5", ptr %".462"
  ; FFMA R13, R26, R25, R13
  %".465" = load float, ptr %"R26"
  %".466" = load float, ptr %"R25"
  %".467" = load float, ptr %"R13"
  %"fmul.6" = fmul float %".465", %".466"
  %"fadd.6" = fadd float %"fmul.6", %".467"
  %".468" = bitcast ptr %"R13" to ptr
  store float %"fadd.6", ptr %".468"
  ; FFMA R13, R28, R27, R13
  %".471" = load float, ptr %"R28"
  %".472" = load float, ptr %"R27"
  %".473" = load float, ptr %"R13"
  %"fmul.7" = fmul float %".471", %".472"
  %"fadd.7" = fadd float %"fmul.7", %".473"
  %".474" = bitcast ptr %"R13" to ptr
  store float %"fadd.7", ptr %".474"
  ; FFMA R13, R30, R29, R13
  %".477" = load float, ptr %"R30"
  %".478" = load float, ptr %"R29"
  %".479" = load float, ptr %"R13"
  %"fmul.8" = fmul float %".477", %".478"
  %"fadd.8" = fadd float %"fmul.8", %".479"
  %".480" = bitcast ptr %"R13" to ptr
  store float %"fadd.8", ptr %".480"
  ; FFMA R13, R32, R31, R13
  %".483" = load float, ptr %"R32"
  %".484" = load float, ptr %"R31"
  %".485" = load float, ptr %"R13"
  %"fmul.9" = fmul float %".483", %".484"
  %"fadd.9" = fadd float %"fmul.9", %".485"
  %".486" = bitcast ptr %"R13" to ptr
  store float %"fadd.9", ptr %".486"
  ; FFMA R13, R34, R33, R13
  %".489" = load float, ptr %"R34"
  %".490" = load float, ptr %"R33"
  %".491" = load float, ptr %"R13"
  %"fmul.10" = fmul float %".489", %".490"
  %"fadd.10" = fadd float %"fmul.10", %".491"
  %".492" = bitcast ptr %"R13" to ptr
  store float %"fadd.10", ptr %".492"
  ; FFMA R13, R36, R35, R13
  %".495" = load float, ptr %"R36"
  %".496" = load float, ptr %"R35"
  %".497" = load float, ptr %"R13"
  %"fmul.11" = fmul float %".495", %".496"
  %"fadd.11" = fadd float %"fmul.11", %".497"
  %".498" = bitcast ptr %"R13" to ptr
  store float %"fadd.11", ptr %".498"
  ; FFMA R13, R38, R37, R13
  %".501" = load float, ptr %"R38"
  %".502" = load float, ptr %"R37"
  %".503" = load float, ptr %"R13"
  %"fmul.12" = fmul float %".501", %".502"
  %"fadd.12" = fadd float %"fmul.12", %".503"
  %".504" = bitcast ptr %"R13" to ptr
  store float %"fadd.12", ptr %".504"
  ; FFMA R13, R40, R39, R13
  %".507" = load float, ptr %"R40"
  %".508" = load float, ptr %"R39"
  %".509" = load float, ptr %"R13"
  %"fmul.13" = fmul float %".507", %".508"
  %"fadd.13" = fadd float %"fmul.13", %".509"
  %".510" = bitcast ptr %"R13" to ptr
  store float %"fadd.13", ptr %".510"
  ; FFMA R13, R42, R41, R13
  %".513" = load float, ptr %"R42"
  %".514" = load float, ptr %"R41"
  %".515" = load float, ptr %"R13"
  %"fmul.14" = fmul float %".513", %".514"
  %"fadd.14" = fadd float %"fmul.14", %".515"
  %".516" = bitcast ptr %"R13" to ptr
  store float %"fadd.14", ptr %".516"
  ; FFMA R6, R44, R43, R13
  %".519" = load float, ptr %"R44"
  %".520" = load float, ptr %"R43"
  %".521" = load float, ptr %"R13"
  %"fmul.15" = fmul float %".519", %".520"
  %"fadd.15" = fadd float %"fmul.15", %".521"
  %".522" = bitcast ptr %"R6" to ptr
  store float %"fadd.15", ptr %".522"
  ; @P1 BRA `(.L_x_12)
  %".525" = load i1, ptr %"P1"
  %".526" = icmp eq i1 %".525", 1
  br i1 %".526", label %".L_x_12", label %".L_x_11"
.L_x_11:
  ; ISETP.GT.AND P1, PT, R11, 0x4, PT
  %".529" = load i32, ptr %"R11"
  %".530" = load i1, ptr %"PT"
  %"cmp.7" = icmp sgt i32 %".529", 4
  %".531" = add i1 %"cmp.7", 0
  %".532" = xor i1 %".531", -1
  %".533" = and i1 %"cmp.7", %".530"
  %".534" = and i1 %".532", %".530"
  store i1 %".533", ptr %"P1"
  ; @!P1 BRA `(.L_x_13)
  %".537" = load i1, ptr %"P1"
  %".538" = icmp ne i1 %".537", 1
  br i1 %".538", label %".L_x_13", label %".L_x_11_split_0x05e0"
.L_x_11_split_0x05e0:
  ; MOV R9, UR5
  %".541" = load i32, ptr %"UR5"
  store i32 %".541", ptr %"R9"
  ; IMAD.U32 R8, RZ, RZ, UR4
  %".544" = load i32, ptr %"UR4"
  %"imad_mul.8" = mul i32 0, 0
  %"imad_add.8" = add i32 %"imad_mul.8", %".544"
  store i32 %"imad_add.8", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".547" = load i32, ptr %"R2"
  %"zext.66" = zext i32 %".547" to i64
  %".548" = load i32, ptr %"R3"
  %"zext.67" = zext i32 %".548" to i64
  %"shl.33" = shl i64 %"zext.67", 32
  %"or.33" = or i64 %"shl.33", %"zext.66"
  %"inttoptr_bytes.33" = inttoptr i64 %"or.33" to ptr addrspace(1)
  %"ptr_cast_for_access.33" = bitcast ptr addrspace(1) %"inttoptr_bytes.33" to ptr addrspace(1)
  %".549" = load float, ptr addrspace(1) %"ptr_cast_for_access.33"
  %".550" = bitcast ptr %"R14" to ptr
  store float %".549", ptr %".550"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".553" = load i32, ptr %"R12"
  %".554" = load i32, ptr %"R8"
  %"imad_ext1.3" = zext i32 %".553" to i64
  %"imad_ext2.3" = zext i32 4 to i64
  %"imad_mul.9" = mul i64 %"imad_ext1.3", %"imad_ext2.3"
  %"imad_ext3.1" = zext i32 %".554" to i64
  %"imad_add.9" = add i64 %"imad_mul.9", %"imad_ext3.1"
  %".555" = and i64 %"imad_add.9", 18446744069414584320
  %".556" = lshr i64 %".555", 32
  %"trunc32.8" = trunc i64 %".556" to i32
  %"trunc32.9" = trunc i64 %"imad_add.9" to i32
  store i32 %"trunc32.9", ptr %"R8"
  store i32 %"trunc32.8", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".560" = load i32, ptr %"R2"
  %"zext.68" = zext i32 %".560" to i64
  %".561" = load i32, ptr %"R3"
  %"zext.69" = zext i32 %".561" to i64
  %"shl.34" = shl i64 %"zext.69", 32
  %"or.34" = or i64 %"shl.34", %"zext.68"
  %"ptr_plus_imm.30" = add i64 %"or.34", 4
  %"inttoptr_bytes.34" = inttoptr i64 %"ptr_plus_imm.30" to ptr addrspace(1)
  %"ptr_cast_for_access.34" = bitcast ptr addrspace(1) %"inttoptr_bytes.34" to ptr addrspace(1)
  %".562" = load float, ptr addrspace(1) %"ptr_cast_for_access.34"
  %".563" = bitcast ptr %"R15" to ptr
  store float %".562", ptr %".563"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".566" = load i32, ptr %"R2"
  %"zext.70" = zext i32 %".566" to i64
  %".567" = load i32, ptr %"R3"
  %"zext.71" = zext i32 %".567" to i64
  %"shl.35" = shl i64 %"zext.71", 32
  %"or.35" = or i64 %"shl.35", %"zext.70"
  %"ptr_plus_imm.31" = add i64 %"or.35", 8
  %"inttoptr_bytes.35" = inttoptr i64 %"ptr_plus_imm.31" to ptr addrspace(1)
  %"ptr_cast_for_access.35" = bitcast ptr addrspace(1) %"inttoptr_bytes.35" to ptr addrspace(1)
  %".568" = load float, ptr addrspace(1) %"ptr_cast_for_access.35"
  %".569" = bitcast ptr %"R17" to ptr
  store float %".568", ptr %".569"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".572" = load i32, ptr %"R8"
  %"zext.72" = zext i32 %".572" to i64
  %".573" = load i32, ptr %"R9"
  %"zext.73" = zext i32 %".573" to i64
  %"shl.36" = shl i64 %"zext.73", 32
  %"or.36" = or i64 %"shl.36", %"zext.72"
  %"inttoptr_bytes.36" = inttoptr i64 %"or.36" to ptr addrspace(1)
  %"ptr_cast_for_access.36" = bitcast ptr addrspace(1) %"inttoptr_bytes.36" to ptr addrspace(1)
  %".574" = load float, ptr addrspace(1) %"ptr_cast_for_access.36"
  %".575" = bitcast ptr %"R13" to ptr
  store float %".574", ptr %".575"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".578" = load i32, ptr %"R8"
  %"zext.74" = zext i32 %".578" to i64
  %".579" = load i32, ptr %"R9"
  %"zext.75" = zext i32 %".579" to i64
  %"shl.37" = shl i64 %"zext.75", 32
  %"or.37" = or i64 %"shl.37", %"zext.74"
  %"ptr_plus_imm.32" = add i64 %"or.37", 4
  %"inttoptr_bytes.37" = inttoptr i64 %"ptr_plus_imm.32" to ptr addrspace(1)
  %"ptr_cast_for_access.37" = bitcast ptr addrspace(1) %"inttoptr_bytes.37" to ptr addrspace(1)
  %".580" = load float, ptr addrspace(1) %"ptr_cast_for_access.37"
  %".581" = bitcast ptr %"R16" to ptr
  store float %".580", ptr %".581"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".584" = load i32, ptr %"R8"
  %"zext.76" = zext i32 %".584" to i64
  %".585" = load i32, ptr %"R9"
  %"zext.77" = zext i32 %".585" to i64
  %"shl.38" = shl i64 %"zext.77", 32
  %"or.38" = or i64 %"shl.38", %"zext.76"
  %"ptr_plus_imm.33" = add i64 %"or.38", 8
  %"inttoptr_bytes.38" = inttoptr i64 %"ptr_plus_imm.33" to ptr addrspace(1)
  %"ptr_cast_for_access.38" = bitcast ptr addrspace(1) %"inttoptr_bytes.38" to ptr addrspace(1)
  %".586" = load float, ptr addrspace(1) %"ptr_cast_for_access.38"
  %".587" = bitcast ptr %"R18" to ptr
  store float %".586", ptr %".587"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".590" = load i32, ptr %"R2"
  %"zext.78" = zext i32 %".590" to i64
  %".591" = load i32, ptr %"R3"
  %"zext.79" = zext i32 %".591" to i64
  %"shl.39" = shl i64 %"zext.79", 32
  %"or.39" = or i64 %"shl.39", %"zext.78"
  %"ptr_plus_imm.34" = add i64 %"or.39", 12
  %"inttoptr_bytes.39" = inttoptr i64 %"ptr_plus_imm.34" to ptr addrspace(1)
  %"ptr_cast_for_access.39" = bitcast ptr addrspace(1) %"inttoptr_bytes.39" to ptr addrspace(1)
  %".592" = load float, ptr addrspace(1) %"ptr_cast_for_access.39"
  %".593" = bitcast ptr %"R19" to ptr
  store float %".592", ptr %".593"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".596" = load i32, ptr %"R8"
  %"zext.80" = zext i32 %".596" to i64
  %".597" = load i32, ptr %"R9"
  %"zext.81" = zext i32 %".597" to i64
  %"shl.40" = shl i64 %"zext.81", 32
  %"or.40" = or i64 %"shl.40", %"zext.80"
  %"ptr_plus_imm.35" = add i64 %"or.40", 12
  %"inttoptr_bytes.40" = inttoptr i64 %"ptr_plus_imm.35" to ptr addrspace(1)
  %"ptr_cast_for_access.40" = bitcast ptr addrspace(1) %"inttoptr_bytes.40" to ptr addrspace(1)
  %".598" = load float, ptr addrspace(1) %"ptr_cast_for_access.40"
  %".599" = bitcast ptr %"R20" to ptr
  store float %".598", ptr %".599"
  ; LDG.E.CONSTANT.SYS R21, [R2+0x10]
  %".602" = load i32, ptr %"R2"
  %"zext.82" = zext i32 %".602" to i64
  %".603" = load i32, ptr %"R3"
  %"zext.83" = zext i32 %".603" to i64
  %"shl.41" = shl i64 %"zext.83", 32
  %"or.41" = or i64 %"shl.41", %"zext.82"
  %"ptr_plus_imm.36" = add i64 %"or.41", 16
  %"inttoptr_bytes.41" = inttoptr i64 %"ptr_plus_imm.36" to ptr addrspace(1)
  %"ptr_cast_for_access.41" = bitcast ptr addrspace(1) %"inttoptr_bytes.41" to ptr addrspace(1)
  %".604" = load float, ptr addrspace(1) %"ptr_cast_for_access.41"
  %".605" = bitcast ptr %"R21" to ptr
  store float %".604", ptr %".605"
  ; LDG.E.CONSTANT.SYS R22, [R8+0x10]
  %".608" = load i32, ptr %"R8"
  %"zext.84" = zext i32 %".608" to i64
  %".609" = load i32, ptr %"R9"
  %"zext.85" = zext i32 %".609" to i64
  %"shl.42" = shl i64 %"zext.85", 32
  %"or.42" = or i64 %"shl.42", %"zext.84"
  %"ptr_plus_imm.37" = add i64 %"or.42", 16
  %"inttoptr_bytes.42" = inttoptr i64 %"ptr_plus_imm.37" to ptr addrspace(1)
  %"ptr_cast_for_access.42" = bitcast ptr addrspace(1) %"inttoptr_bytes.42" to ptr addrspace(1)
  %".610" = load float, ptr addrspace(1) %"ptr_cast_for_access.42"
  %".611" = bitcast ptr %"R22" to ptr
  store float %".610", ptr %".611"
  ; LDG.E.CONSTANT.SYS R23, [R2+0x14]
  %".614" = load i32, ptr %"R2"
  %"zext.86" = zext i32 %".614" to i64
  %".615" = load i32, ptr %"R3"
  %"zext.87" = zext i32 %".615" to i64
  %"shl.43" = shl i64 %"zext.87", 32
  %"or.43" = or i64 %"shl.43", %"zext.86"
  %"ptr_plus_imm.38" = add i64 %"or.43", 20
  %"inttoptr_bytes.43" = inttoptr i64 %"ptr_plus_imm.38" to ptr addrspace(1)
  %"ptr_cast_for_access.43" = bitcast ptr addrspace(1) %"inttoptr_bytes.43" to ptr addrspace(1)
  %".616" = load float, ptr addrspace(1) %"ptr_cast_for_access.43"
  %".617" = bitcast ptr %"R23" to ptr
  store float %".616", ptr %".617"
  ; LDG.E.CONSTANT.SYS R24, [R8+0x14]
  %".620" = load i32, ptr %"R8"
  %"zext.88" = zext i32 %".620" to i64
  %".621" = load i32, ptr %"R9"
  %"zext.89" = zext i32 %".621" to i64
  %"shl.44" = shl i64 %"zext.89", 32
  %"or.44" = or i64 %"shl.44", %"zext.88"
  %"ptr_plus_imm.39" = add i64 %"or.44", 20
  %"inttoptr_bytes.44" = inttoptr i64 %"ptr_plus_imm.39" to ptr addrspace(1)
  %"ptr_cast_for_access.44" = bitcast ptr addrspace(1) %"inttoptr_bytes.44" to ptr addrspace(1)
  %".622" = load float, ptr addrspace(1) %"ptr_cast_for_access.44"
  %".623" = bitcast ptr %"R24" to ptr
  store float %".622", ptr %".623"
  ; LDG.E.CONSTANT.SYS R25, [R2+0x18]
  %".626" = load i32, ptr %"R2"
  %"zext.90" = zext i32 %".626" to i64
  %".627" = load i32, ptr %"R3"
  %"zext.91" = zext i32 %".627" to i64
  %"shl.45" = shl i64 %"zext.91", 32
  %"or.45" = or i64 %"shl.45", %"zext.90"
  %"ptr_plus_imm.40" = add i64 %"or.45", 24
  %"inttoptr_bytes.45" = inttoptr i64 %"ptr_plus_imm.40" to ptr addrspace(1)
  %"ptr_cast_for_access.45" = bitcast ptr addrspace(1) %"inttoptr_bytes.45" to ptr addrspace(1)
  %".628" = load float, ptr addrspace(1) %"ptr_cast_for_access.45"
  %".629" = bitcast ptr %"R25" to ptr
  store float %".628", ptr %".629"
  ; LDG.E.CONSTANT.SYS R26, [R8+0x18]
  %".632" = load i32, ptr %"R8"
  %"zext.92" = zext i32 %".632" to i64
  %".633" = load i32, ptr %"R9"
  %"zext.93" = zext i32 %".633" to i64
  %"shl.46" = shl i64 %"zext.93", 32
  %"or.46" = or i64 %"shl.46", %"zext.92"
  %"ptr_plus_imm.41" = add i64 %"or.46", 24
  %"inttoptr_bytes.46" = inttoptr i64 %"ptr_plus_imm.41" to ptr addrspace(1)
  %"ptr_cast_for_access.46" = bitcast ptr addrspace(1) %"inttoptr_bytes.46" to ptr addrspace(1)
  %".634" = load float, ptr addrspace(1) %"ptr_cast_for_access.46"
  %".635" = bitcast ptr %"R26" to ptr
  store float %".634", ptr %".635"
  ; LDG.E.CONSTANT.SYS R28, [R8+0x1c]
  %".638" = load i32, ptr %"R8"
  %"zext.94" = zext i32 %".638" to i64
  %".639" = load i32, ptr %"R9"
  %"zext.95" = zext i32 %".639" to i64
  %"shl.47" = shl i64 %"zext.95", 32
  %"or.47" = or i64 %"shl.47", %"zext.94"
  %"ptr_plus_imm.42" = add i64 %"or.47", 28
  %"inttoptr_bytes.47" = inttoptr i64 %"ptr_plus_imm.42" to ptr addrspace(1)
  %"ptr_cast_for_access.47" = bitcast ptr addrspace(1) %"inttoptr_bytes.47" to ptr addrspace(1)
  %".640" = load float, ptr addrspace(1) %"ptr_cast_for_access.47"
  %".641" = bitcast ptr %"R28" to ptr
  store float %".640", ptr %".641"
  ; LDG.E.CONSTANT.SYS R27, [R2+0x1c]
  %".644" = load i32, ptr %"R2"
  %"zext.96" = zext i32 %".644" to i64
  %".645" = load i32, ptr %"R3"
  %"zext.97" = zext i32 %".645" to i64
  %"shl.48" = shl i64 %"zext.97", 32
  %"or.48" = or i64 %"shl.48", %"zext.96"
  %"ptr_plus_imm.43" = add i64 %"or.48", 28
  %"inttoptr_bytes.48" = inttoptr i64 %"ptr_plus_imm.43" to ptr addrspace(1)
  %"ptr_cast_for_access.48" = bitcast ptr addrspace(1) %"inttoptr_bytes.48" to ptr addrspace(1)
  %".646" = load float, ptr addrspace(1) %"ptr_cast_for_access.48"
  %".647" = bitcast ptr %"R27" to ptr
  store float %".646", ptr %".647"
  ; UIADD3 UR4, UP0, UR4, 0x20, URZ
  %".650" = load i32, ptr %"UR4"
  %".651" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".650", i32 32)
  %".652" = extractvalue {i32, i1} %".651", 0
  %".653" = extractvalue {i32, i1} %".651", 1
  %".654" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".652", i32 0)
  %".655" = extractvalue {i32, i1} %".654", 0
  %".656" = extractvalue {i32, i1} %".654", 1
  %".657" = or i1 %".653", %".656"
  store i32 %".655", ptr %"UR4"
  store i1 %".657", ptr %"UP0"
  ; PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0
  %".661" = xor i1 1, 1
  %".662" = and i1 %".661", 1
  %".663" = and i1 %".662", 1
  ; IADD3 R10, R10, 0x8, RZ
  %".665" = load i32, ptr %"R10"
  %".666" = add i32 %".665", 8
  %".667" = add i32 %".666", 0
  store i32 %".667", ptr %"R10"
  ; IADD3 R2, P1, R2, 0x20, RZ
  %".670" = load i32, ptr %"R2"
  %".671" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".670", i32 32)
  %".672" = extractvalue {i32, i1} %".671", 0
  %".673" = extractvalue {i32, i1} %".671", 1
  %".674" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".672", i32 0)
  %".675" = extractvalue {i32, i1} %".674", 0
  %".676" = extractvalue {i32, i1} %".674", 1
  %".677" = or i1 %".673", %".676"
  store i32 %".675", ptr %"R2"
  store i1 %".677", ptr %"P1"
  ; IADD3 R11, R11, -0x8, RZ
  %".681" = load i32, ptr %"R11"
  %".682" = add i32 %".681", -8
  %".683" = add i32 %".682", 0
  store i32 %".683", ptr %"R11"
  ; IADD3.X R3, RZ, R3, RZ, P1, !PT
  %".686" = load i32, ptr %"R3"
  %".687" = load i1, ptr %"P1"
  %".688" = xor i1 1, -1
  %".689" = zext i1 %".687" to i32
  %".690" = zext i1 %".688" to i32
  %"add.8" = add i32 0, %".686"
  %"add.9" = add i32 %"add.8", 0
  %"add.10" = add i32 %"add.9", %".689"
  %"add.11" = add i32 %"add.10", %".690"
  store i32 %"add.11", ptr %"R3"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".693" = load i32, ptr %"UR5"
  %".694" = load i1, ptr %"UP0"
  %".695" = xor i1 1, -1
  %".696" = zext i1 %".694" to i32
  %".697" = zext i1 %".695" to i32
  %"add.12" = add i32 0, %".693"
  %"add.13" = add i32 %"add.12", 0
  %"add.14" = add i32 %"add.13", %".696"
  %"add.15" = add i32 %"add.14", %".697"
  store i32 %"add.15", ptr %"UR5"
  ; FFMA R13, R13, R14, R6
  %".700" = load float, ptr %"R13"
  %".701" = load float, ptr %"R14"
  %".702" = load float, ptr %"R6"
  %"fmul.16" = fmul float %".700", %".701"
  %"fadd.16" = fadd float %"fmul.16", %".702"
  %".703" = bitcast ptr %"R13" to ptr
  store float %"fadd.16", ptr %".703"
  ; FFMA R13, R16, R15, R13
  %".706" = load float, ptr %"R16"
  %".707" = load float, ptr %"R15"
  %".708" = load float, ptr %"R13"
  %"fmul.17" = fmul float %".706", %".707"
  %"fadd.17" = fadd float %"fmul.17", %".708"
  %".709" = bitcast ptr %"R13" to ptr
  store float %"fadd.17", ptr %".709"
  ; FFMA R13, R18, R17, R13
  %".712" = load float, ptr %"R18"
  %".713" = load float, ptr %"R17"
  %".714" = load float, ptr %"R13"
  %"fmul.18" = fmul float %".712", %".713"
  %"fadd.18" = fadd float %"fmul.18", %".714"
  %".715" = bitcast ptr %"R13" to ptr
  store float %"fadd.18", ptr %".715"
  ; FFMA R13, R20, R19, R13
  %".718" = load float, ptr %"R20"
  %".719" = load float, ptr %"R19"
  %".720" = load float, ptr %"R13"
  %"fmul.19" = fmul float %".718", %".719"
  %"fadd.19" = fadd float %"fmul.19", %".720"
  %".721" = bitcast ptr %"R13" to ptr
  store float %"fadd.19", ptr %".721"
  ; FFMA R13, R22, R21, R13
  %".724" = load float, ptr %"R22"
  %".725" = load float, ptr %"R21"
  %".726" = load float, ptr %"R13"
  %"fmul.20" = fmul float %".724", %".725"
  %"fadd.20" = fadd float %"fmul.20", %".726"
  %".727" = bitcast ptr %"R13" to ptr
  store float %"fadd.20", ptr %".727"
  ; FFMA R13, R24, R23, R13
  %".730" = load float, ptr %"R24"
  %".731" = load float, ptr %"R23"
  %".732" = load float, ptr %"R13"
  %"fmul.21" = fmul float %".730", %".731"
  %"fadd.21" = fadd float %"fmul.21", %".732"
  %".733" = bitcast ptr %"R13" to ptr
  store float %"fadd.21", ptr %".733"
  ; FFMA R13, R26, R25, R13
  %".736" = load float, ptr %"R26"
  %".737" = load float, ptr %"R25"
  %".738" = load float, ptr %"R13"
  %"fmul.22" = fmul float %".736", %".737"
  %"fadd.22" = fadd float %"fmul.22", %".738"
  %".739" = bitcast ptr %"R13" to ptr
  store float %"fadd.22", ptr %".739"
  ; FFMA R6, R28, R27, R13
  %".742" = load float, ptr %"R28"
  %".743" = load float, ptr %"R27"
  %".744" = load float, ptr %"R13"
  %"fmul.23" = fmul float %".742", %".743"
  %"fadd.23" = fadd float %"fmul.23", %".744"
  %".745" = bitcast ptr %"R6" to ptr
  store float %"fadd.23", ptr %".745"
  br label %".L_x_13"
.L_x_13:
  ; ISETP.NE.OR P0, PT, R11, RZ, P0
  %".749" = load i32, ptr %"R11"
  %".750" = load i1, ptr %"P0"
  %"cmp.8" = icmp ne i32 %".749", 0
  %".751" = add i1 %"cmp.8", 0
  %".752" = xor i1 %".751", -1
  %".753" = or i1 %"cmp.8", %".750"
  %".754" = or i1 %".752", %".750"
  store i1 %".753", ptr %"P0"
  ; @!P0 BRA `(.L_x_9)
  %".757" = load i1, ptr %"P0"
  %".758" = icmp ne i1 %".757", 1
  br i1 %".758", label %".L_x_9", label %".L_x_10"
.L_x_10:
  ; MOV R8, UR4
  %".761" = load i32, ptr %"UR4"
  store i32 %".761", ptr %"R8"
  ; IMAD.U32 R9, RZ, RZ, UR5
  %".764" = load i32, ptr %"UR5"
  %"imad_mul.10" = mul i32 0, 0
  %"imad_add.10" = add i32 %"imad_mul.10", %".764"
  store i32 %"imad_add.10", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R14, [R2]
  %".767" = load i32, ptr %"R2"
  %"zext.98" = zext i32 %".767" to i64
  %".768" = load i32, ptr %"R3"
  %"zext.99" = zext i32 %".768" to i64
  %"shl.49" = shl i64 %"zext.99", 32
  %"or.49" = or i64 %"shl.49", %"zext.98"
  %"inttoptr_bytes.49" = inttoptr i64 %"or.49" to ptr addrspace(1)
  %"ptr_cast_for_access.49" = bitcast ptr addrspace(1) %"inttoptr_bytes.49" to ptr addrspace(1)
  %".769" = load float, ptr addrspace(1) %"ptr_cast_for_access.49"
  %".770" = bitcast ptr %"R14" to ptr
  store float %".769", ptr %".770"
  ; IMAD.WIDE R8, R12, 0x4, R8
  %".773" = load i32, ptr %"R12"
  %".774" = load i32, ptr %"R8"
  %"imad_ext1.4" = zext i32 %".773" to i64
  %"imad_ext2.4" = zext i32 4 to i64
  %"imad_mul.11" = mul i64 %"imad_ext1.4", %"imad_ext2.4"
  %"imad_ext3.2" = zext i32 %".774" to i64
  %"imad_add.11" = add i64 %"imad_mul.11", %"imad_ext3.2"
  %".775" = and i64 %"imad_add.11", 18446744069414584320
  %".776" = lshr i64 %".775", 32
  %"trunc32.10" = trunc i64 %".776" to i32
  %"trunc32.11" = trunc i64 %"imad_add.11" to i32
  store i32 %"trunc32.11", ptr %"R8"
  store i32 %"trunc32.10", ptr %"R9"
  ; LDG.E.CONSTANT.SYS R15, [R2+0x4]
  %".780" = load i32, ptr %"R2"
  %"zext.100" = zext i32 %".780" to i64
  %".781" = load i32, ptr %"R3"
  %"zext.101" = zext i32 %".781" to i64
  %"shl.50" = shl i64 %"zext.101", 32
  %"or.50" = or i64 %"shl.50", %"zext.100"
  %"ptr_plus_imm.44" = add i64 %"or.50", 4
  %"inttoptr_bytes.50" = inttoptr i64 %"ptr_plus_imm.44" to ptr addrspace(1)
  %"ptr_cast_for_access.50" = bitcast ptr addrspace(1) %"inttoptr_bytes.50" to ptr addrspace(1)
  %".782" = load float, ptr addrspace(1) %"ptr_cast_for_access.50"
  %".783" = bitcast ptr %"R15" to ptr
  store float %".782", ptr %".783"
  ; LDG.E.CONSTANT.SYS R17, [R2+0x8]
  %".786" = load i32, ptr %"R2"
  %"zext.102" = zext i32 %".786" to i64
  %".787" = load i32, ptr %"R3"
  %"zext.103" = zext i32 %".787" to i64
  %"shl.51" = shl i64 %"zext.103", 32
  %"or.51" = or i64 %"shl.51", %"zext.102"
  %"ptr_plus_imm.45" = add i64 %"or.51", 8
  %"inttoptr_bytes.51" = inttoptr i64 %"ptr_plus_imm.45" to ptr addrspace(1)
  %"ptr_cast_for_access.51" = bitcast ptr addrspace(1) %"inttoptr_bytes.51" to ptr addrspace(1)
  %".788" = load float, ptr addrspace(1) %"ptr_cast_for_access.51"
  %".789" = bitcast ptr %"R17" to ptr
  store float %".788", ptr %".789"
  ; LDG.E.CONSTANT.SYS R13, [R8]
  %".792" = load i32, ptr %"R8"
  %"zext.104" = zext i32 %".792" to i64
  %".793" = load i32, ptr %"R9"
  %"zext.105" = zext i32 %".793" to i64
  %"shl.52" = shl i64 %"zext.105", 32
  %"or.52" = or i64 %"shl.52", %"zext.104"
  %"inttoptr_bytes.52" = inttoptr i64 %"or.52" to ptr addrspace(1)
  %"ptr_cast_for_access.52" = bitcast ptr addrspace(1) %"inttoptr_bytes.52" to ptr addrspace(1)
  %".794" = load float, ptr addrspace(1) %"ptr_cast_for_access.52"
  %".795" = bitcast ptr %"R13" to ptr
  store float %".794", ptr %".795"
  ; LDG.E.CONSTANT.SYS R16, [R8+0x4]
  %".798" = load i32, ptr %"R8"
  %"zext.106" = zext i32 %".798" to i64
  %".799" = load i32, ptr %"R9"
  %"zext.107" = zext i32 %".799" to i64
  %"shl.53" = shl i64 %"zext.107", 32
  %"or.53" = or i64 %"shl.53", %"zext.106"
  %"ptr_plus_imm.46" = add i64 %"or.53", 4
  %"inttoptr_bytes.53" = inttoptr i64 %"ptr_plus_imm.46" to ptr addrspace(1)
  %"ptr_cast_for_access.53" = bitcast ptr addrspace(1) %"inttoptr_bytes.53" to ptr addrspace(1)
  %".800" = load float, ptr addrspace(1) %"ptr_cast_for_access.53"
  %".801" = bitcast ptr %"R16" to ptr
  store float %".800", ptr %".801"
  ; LDG.E.CONSTANT.SYS R18, [R8+0x8]
  %".804" = load i32, ptr %"R8"
  %"zext.108" = zext i32 %".804" to i64
  %".805" = load i32, ptr %"R9"
  %"zext.109" = zext i32 %".805" to i64
  %"shl.54" = shl i64 %"zext.109", 32
  %"or.54" = or i64 %"shl.54", %"zext.108"
  %"ptr_plus_imm.47" = add i64 %"or.54", 8
  %"inttoptr_bytes.54" = inttoptr i64 %"ptr_plus_imm.47" to ptr addrspace(1)
  %"ptr_cast_for_access.54" = bitcast ptr addrspace(1) %"inttoptr_bytes.54" to ptr addrspace(1)
  %".806" = load float, ptr addrspace(1) %"ptr_cast_for_access.54"
  %".807" = bitcast ptr %"R18" to ptr
  store float %".806", ptr %".807"
  ; LDG.E.CONSTANT.SYS R20, [R8+0xc]
  %".810" = load i32, ptr %"R8"
  %"zext.110" = zext i32 %".810" to i64
  %".811" = load i32, ptr %"R9"
  %"zext.111" = zext i32 %".811" to i64
  %"shl.55" = shl i64 %"zext.111", 32
  %"or.55" = or i64 %"shl.55", %"zext.110"
  %"ptr_plus_imm.48" = add i64 %"or.55", 12
  %"inttoptr_bytes.55" = inttoptr i64 %"ptr_plus_imm.48" to ptr addrspace(1)
  %"ptr_cast_for_access.55" = bitcast ptr addrspace(1) %"inttoptr_bytes.55" to ptr addrspace(1)
  %".812" = load float, ptr addrspace(1) %"ptr_cast_for_access.55"
  %".813" = bitcast ptr %"R20" to ptr
  store float %".812", ptr %".813"
  ; LDG.E.CONSTANT.SYS R19, [R2+0xc]
  %".816" = load i32, ptr %"R2"
  %"zext.112" = zext i32 %".816" to i64
  %".817" = load i32, ptr %"R3"
  %"zext.113" = zext i32 %".817" to i64
  %"shl.56" = shl i64 %"zext.113", 32
  %"or.56" = or i64 %"shl.56", %"zext.112"
  %"ptr_plus_imm.49" = add i64 %"or.56", 12
  %"inttoptr_bytes.56" = inttoptr i64 %"ptr_plus_imm.49" to ptr addrspace(1)
  %"ptr_cast_for_access.56" = bitcast ptr addrspace(1) %"inttoptr_bytes.56" to ptr addrspace(1)
  %".818" = load float, ptr addrspace(1) %"ptr_cast_for_access.56"
  %".819" = bitcast ptr %"R19" to ptr
  store float %".818", ptr %".819"
  ; IADD3 R11, R11, -0x4, RZ
  %".822" = load i32, ptr %"R11"
  %".823" = add i32 %".822", -4
  %".824" = add i32 %".823", 0
  store i32 %".824", ptr %"R11"
  ; ISETP.NE.AND P0, PT, R11, RZ, PT
  %".827" = load i32, ptr %"R11"
  %".828" = load i1, ptr %"PT"
  %"cmp.9" = icmp ne i32 %".827", 0
  %".829" = add i1 %"cmp.9", 0
  %".830" = xor i1 %".829", -1
  %".831" = and i1 %"cmp.9", %".828"
  %".832" = and i1 %".830", %".828"
  store i1 %".831", ptr %"P0"
  ; UIADD3 UR4, UP0, UR4, 0x10, URZ
  %".835" = load i32, ptr %"UR4"
  %".836" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".835", i32 16)
  %".837" = extractvalue {i32, i1} %".836", 0
  %".838" = extractvalue {i32, i1} %".836", 1
  %".839" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".837", i32 0)
  %".840" = extractvalue {i32, i1} %".839", 0
  %".841" = extractvalue {i32, i1} %".839", 1
  %".842" = or i1 %".838", %".841"
  store i32 %".840", ptr %"UR4"
  store i1 %".842", ptr %"UP0"
  ; IADD3 R10, R10, 0x4, RZ
  %".846" = load i32, ptr %"R10"
  %".847" = add i32 %".846", 4
  %".848" = add i32 %".847", 0
  store i32 %".848", ptr %"R10"
  ; UIADD3.X UR5, URZ, UR5, URZ, UP0, !UPT
  %".851" = load i32, ptr %"UR5"
  %".852" = load i1, ptr %"UP0"
  %".853" = xor i1 1, -1
  %".854" = zext i1 %".852" to i32
  %".855" = zext i1 %".853" to i32
  %"add.16" = add i32 0, %".851"
  %"add.17" = add i32 %"add.16", 0
  %"add.18" = add i32 %"add.17", %".854"
  %"add.19" = add i32 %"add.18", %".855"
  store i32 %"add.19", ptr %"UR5"
  ; FFMA R13, R13, R14, R6
  %".858" = load float, ptr %"R13"
  %".859" = load float, ptr %"R14"
  %".860" = load float, ptr %"R6"
  %"fmul.24" = fmul float %".858", %".859"
  %"fadd.24" = fadd float %"fmul.24", %".860"
  %".861" = bitcast ptr %"R13" to ptr
  store float %"fadd.24", ptr %".861"
  ; FFMA R13, R16, R15, R13
  %".864" = load float, ptr %"R16"
  %".865" = load float, ptr %"R15"
  %".866" = load float, ptr %"R13"
  %"fmul.25" = fmul float %".864", %".865"
  %"fadd.25" = fadd float %"fmul.25", %".866"
  %".867" = bitcast ptr %"R13" to ptr
  store float %"fadd.25", ptr %".867"
  ; FFMA R17, R18, R17, R13
  %".870" = load float, ptr %"R18"
  %".871" = load float, ptr %"R17"
  %".872" = load float, ptr %"R13"
  %"fmul.26" = fmul float %".870", %".871"
  %"fadd.26" = fadd float %"fmul.26", %".872"
  %".873" = bitcast ptr %"R17" to ptr
  store float %"fadd.26", ptr %".873"
  ; IADD3 R13, P1, R2, 0x10, RZ
  %".876" = load i32, ptr %"R2"
  %".877" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".876", i32 16)
  %".878" = extractvalue {i32, i1} %".877", 0
  %".879" = extractvalue {i32, i1} %".877", 1
  %".880" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".878", i32 0)
  %".881" = extractvalue {i32, i1} %".880", 0
  %".882" = extractvalue {i32, i1} %".880", 1
  %".883" = or i1 %".879", %".882"
  store i32 %".881", ptr %"R13"
  store i1 %".883", ptr %"P1"
  ; IADD3.X R14, RZ, R3, RZ, P1, !PT
  %".887" = load i32, ptr %"R3"
  %".888" = load i1, ptr %"P1"
  %".889" = xor i1 1, -1
  %".890" = zext i1 %".888" to i32
  %".891" = zext i1 %".889" to i32
  %"add.20" = add i32 0, %".887"
  %"add.21" = add i32 %"add.20", 0
  %"add.22" = add i32 %"add.21", %".890"
  %"add.23" = add i32 %"add.22", %".891"
  store i32 %"add.23", ptr %"R14"
  ; MOV R2, R13
  %".894" = load i32, ptr %"R13"
  store i32 %".894", ptr %"R2"
  ; FFMA R6, R20, R19, R17
  %".897" = load float, ptr %"R20"
  %".898" = load float, ptr %"R19"
  %".899" = load float, ptr %"R17"
  %"fmul.27" = fmul float %".897", %".898"
  %"fadd.27" = fadd float %"fmul.27", %".899"
  %".900" = bitcast ptr %"R6" to ptr
  store float %"fadd.27", ptr %".900"
  ; MOV R3, R14
  %".903" = load i32, ptr %"R14"
  store i32 %".903", ptr %"R3"
  ; @P0 BRA `(.L_x_10)
  %".906" = load i1, ptr %"P0"
  %".907" = icmp eq i1 %".906", 1
  br i1 %".907", label %".L_x_10", label %".L_x_9"
.L_x_9:
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".910" = load i32, ptr %"R4"
  %".911" = load i1, ptr %"PT"
  %"cmp.10" = icmp ne i32 %".910", 0
  %".912" = add i1 %"cmp.10", 0
  %".913" = xor i1 %".912", -1
  %".914" = and i1 %"cmp.10", %".911"
  %".915" = and i1 %".913", %".911"
  store i1 %".914", ptr %"P0"
  ; @!P0 BRA `(.L_x_8)
  %".918" = load i1, ptr %"P0"
  %".919" = icmp ne i1 %".918", 1
  br i1 %".919", label %".L_x_8", label %".L_x_9_split_0x09d0"
.L_x_9_split_0x09d0:
  ; IMAD R2, R0, c[0x0][0x184], R10.reuse
  %".922" = load i32, ptr %"R0"
  %".923" = load i32, ptr %"R10"
  %"imad_mul.12" = mul i32 %".922", %"Arg_5"
  %"imad_add.12" = add i32 %"imad_mul.12", %".923"
  store i32 %"imad_add.12", ptr %"R2"
  ; IMAD R8, R7, c[0x0][0x184], R10
  %".926" = load i32, ptr %"R7"
  %".927" = load i32, ptr %"R10"
  %"imad_mul.13" = mul i32 %".926", %"Arg_5"
  %"imad_add.13" = add i32 %"imad_mul.13", %".927"
  store i32 %"imad_add.13", ptr %"R8"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x168]
  %".930" = load i32, ptr %"R2"
  %".931" = load i32, ptr %"R5"
  %"imad_ext1.5" = zext i32 %".930" to i64
  %"imad_ext2.5" = zext i32 %".931" to i64
  %"imad_mul.14" = mul i64 %"imad_ext1.5", %"imad_ext2.5"
  %".932" = ptrtoint ptr %"Arg_1" to i64
  %"imad_add.14" = add i64 %"imad_mul.14", %".932"
  %".933" = and i64 %"imad_add.14", 18446744069414584320
  %".934" = lshr i64 %".933", 32
  %"trunc32.12" = trunc i64 %".934" to i32
  %"trunc32.13" = trunc i64 %"imad_add.14" to i32
  store i32 %"trunc32.13", ptr %"R2"
  store i32 %"trunc32.12", ptr %"R3"
  ; IMAD.WIDE R8, R8, R5, c[0x0][0x160]
  %".938" = load i32, ptr %"R8"
  %".939" = load i32, ptr %"R5"
  %"imad_ext1.6" = zext i32 %".938" to i64
  %"imad_ext2.6" = zext i32 %".939" to i64
  %"imad_mul.15" = mul i64 %"imad_ext1.6", %"imad_ext2.6"
  %".940" = ptrtoint ptr %"Arg_0" to i64
  %"imad_add.15" = add i64 %"imad_mul.15", %".940"
  %".941" = and i64 %"imad_add.15", 18446744069414584320
  %".942" = lshr i64 %".941", 32
  %"trunc32.14" = trunc i64 %".942" to i32
  %"trunc32.15" = trunc i64 %"imad_add.15" to i32
  store i32 %"trunc32.15", ptr %"R8"
  store i32 %"trunc32.14", ptr %"R9"
  ; MOV R11, R3
  %".946" = load i32, ptr %"R3"
  store i32 %".946", ptr %"R11"
  ; IMAD.MOV.U32 R10, RZ, RZ, R8
  %".949" = load i32, ptr %"R8"
  %"imad_mul.16" = mul i32 0, 0
  %"imad_add.16" = add i32 %"imad_mul.16", %".949"
  store i32 %"imad_add.16", ptr %"R10"
  br label %".L_x_14"
.L_x_14:
  ; MOV R3, R11
  %".953" = load i32, ptr %"R11"
  store i32 %".953", ptr %"R3"
  ; MOV R8, R10
  %".956" = load i32, ptr %"R10"
  store i32 %".956", ptr %"R8"
  ; LDG.E.CONSTANT.SYS R3, [R2]
  %".959" = load i32, ptr %"R2"
  %"zext.114" = zext i32 %".959" to i64
  %".960" = load i32, ptr %"R3"
  %"zext.115" = zext i32 %".960" to i64
  %"shl.57" = shl i64 %"zext.115", 32
  %"or.57" = or i64 %"shl.57", %"zext.114"
  %"inttoptr_bytes.57" = inttoptr i64 %"or.57" to ptr addrspace(1)
  %"ptr_cast_for_access.57" = bitcast ptr addrspace(1) %"inttoptr_bytes.57" to ptr addrspace(1)
  %".961" = load float, ptr addrspace(1) %"ptr_cast_for_access.57"
  %".962" = bitcast ptr %"R3" to ptr
  store float %".961", ptr %".962"
  ; LDG.E.CONSTANT.SYS R8, [R8]
  %".965" = load i32, ptr %"R8"
  %"zext.116" = zext i32 %".965" to i64
  %".966" = load i32, ptr %"R9"
  %"zext.117" = zext i32 %".966" to i64
  %"shl.58" = shl i64 %"zext.117", 32
  %"or.58" = or i64 %"shl.58", %"zext.116"
  %"inttoptr_bytes.58" = inttoptr i64 %"or.58" to ptr addrspace(1)
  %"ptr_cast_for_access.58" = bitcast ptr addrspace(1) %"inttoptr_bytes.58" to ptr addrspace(1)
  %".967" = load float, ptr addrspace(1) %"ptr_cast_for_access.58"
  %".968" = bitcast ptr %"R8" to ptr
  store float %".967", ptr %".968"
  ; IADD3 R4, R4, -0x1, RZ
  %".971" = load i32, ptr %"R4"
  %".972" = add i32 %".971", -1
  %".973" = add i32 %".972", 0
  store i32 %".973", ptr %"R4"
  ; IADD3 R10, P2, R10, 0x4, RZ
  %".976" = load i32, ptr %"R10"
  %".977" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".976", i32 4)
  %".978" = extractvalue {i32, i1} %".977", 0
  %".979" = extractvalue {i32, i1} %".977", 1
  %".980" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".978", i32 0)
  %".981" = extractvalue {i32, i1} %".980", 0
  %".982" = extractvalue {i32, i1} %".980", 1
  %".983" = or i1 %".979", %".982"
  store i32 %".981", ptr %"R10"
  store i1 %".983", ptr %"P2"
  ; ISETP.NE.AND P0, PT, R4, RZ, PT
  %".987" = load i32, ptr %"R4"
  %".988" = load i1, ptr %"PT"
  %"cmp.11" = icmp ne i32 %".987", 0
  %".989" = add i1 %"cmp.11", 0
  %".990" = xor i1 %".989", -1
  %".991" = and i1 %"cmp.11", %".988"
  %".992" = and i1 %".990", %".988"
  store i1 %".991", ptr %"P0"
  ; IADD3 R2, P1, R2, 0x4, RZ
  %".995" = load i32, ptr %"R2"
  %".996" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".995", i32 4)
  %".997" = extractvalue {i32, i1} %".996", 0
  %".998" = extractvalue {i32, i1} %".996", 1
  %".999" = call {i32, i1} @"llvm.uadd.with.overflow.i32"(i32 %".997", i32 0)
  %".1000" = extractvalue {i32, i1} %".999", 0
  %".1001" = extractvalue {i32, i1} %".999", 1
  %".1002" = or i1 %".998", %".1001"
  store i32 %".1000", ptr %"R2"
  store i1 %".1002", ptr %"P1"
  ; IADD3.X R9, RZ, R9, RZ, P2, !PT
  %".1006" = load i32, ptr %"R9"
  %".1007" = load i1, ptr %"P2"
  %".1008" = xor i1 1, -1
  %".1009" = zext i1 %".1007" to i32
  %".1010" = zext i1 %".1008" to i32
  %"add.24" = add i32 0, %".1006"
  %"add.25" = add i32 %"add.24", 0
  %"add.26" = add i32 %"add.25", %".1009"
  %"add.27" = add i32 %"add.26", %".1010"
  store i32 %"add.27", ptr %"R9"
  ; IADD3.X R11, RZ, R11, RZ, P1, !PT
  %".1013" = load i32, ptr %"R11"
  %".1014" = load i1, ptr %"P1"
  %".1015" = xor i1 1, -1
  %".1016" = zext i1 %".1014" to i32
  %".1017" = zext i1 %".1015" to i32
  %"add.28" = add i32 0, %".1013"
  %"add.29" = add i32 %"add.28", 0
  %"add.30" = add i32 %"add.29", %".1016"
  %"add.31" = add i32 %"add.30", %".1017"
  store i32 %"add.31", ptr %"R11"
  ; FFMA R6, R3, R8, R6
  %".1020" = load float, ptr %"R3"
  %".1021" = load float, ptr %"R8"
  %".1022" = load float, ptr %"R6"
  %"fmul.28" = fmul float %".1020", %".1021"
  %"fadd.28" = fadd float %"fmul.28", %".1022"
  %".1023" = bitcast ptr %"R6" to ptr
  store float %"fadd.28", ptr %".1023"
  ; @P0 BRA `(.L_x_14)
  %".1026" = load i1, ptr %"P0"
  %".1027" = icmp eq i1 %".1026", 1
  br i1 %".1027", label %".L_x_14", label %".L_x_8"
.L_x_8:
  ; IMAD R2, R7, c[0x0][0x188], R0
  %".1030" = load i32, ptr %"R7"
  %".1031" = load i32, ptr %"R0"
  %"imad_mul.17" = mul i32 %".1030", %"Arg_6"
  %"imad_add.17" = add i32 %"imad_mul.17", %".1031"
  store i32 %"imad_add.17", ptr %"R2"
  ; IMAD.WIDE R2, R2, R5, c[0x0][0x178]
  %".1034" = load i32, ptr %"R2"
  %".1035" = load i32, ptr %"R5"
  %"imad_ext1.7" = zext i32 %".1034" to i64
  %"imad_ext2.7" = zext i32 %".1035" to i64
  %"imad_mul.18" = mul i64 %"imad_ext1.7", %"imad_ext2.7"
  %".1036" = ptrtoint ptr %"Arg_3" to i64
  %"imad_add.18" = add i64 %"imad_mul.18", %".1036"
  %".1037" = and i64 %"imad_add.18", 18446744069414584320
  %".1038" = lshr i64 %".1037", 32
  %"trunc32.16" = trunc i64 %".1038" to i32
  %"trunc32.17" = trunc i64 %"imad_add.18" to i32
  store i32 %"trunc32.17", ptr %"R2"
  store i32 %"trunc32.16", ptr %"R3"
  ; STG.E.SYS [R2], R6
  %".1042" = load float, ptr %"R6"
  %".1043" = load i32, ptr %"R2"
  %"zext.118" = zext i32 %".1043" to i64
  %".1044" = load i32, ptr %"R3"
  %"zext.119" = zext i32 %".1044" to i64
  %"shl.59" = shl i64 %"zext.119", 32
  %"or.59" = or i64 %"shl.59", %"zext.118"
  %"inttoptr_bytes.59" = inttoptr i64 %"or.59" to ptr addrspace(1)
  %"ptr_cast_for_access.59" = bitcast ptr addrspace(1) %"inttoptr_bytes.59" to ptr addrspace(1)
  store float %".1042", ptr addrspace(1) %"ptr_cast_for_access.59"
  ; EXIT
  br label %"ExitFunction"
.L_x_15:
  ; BRA `(.L_x_15)
  br label %".L_x_15"
ExitFunction:
  ret void
}

