
.section .text80067A70, "ax"

func_80067A70:
/* 042E70 80067A70 C4820000 */  lwc1  $f2, ($a0)
/* 042E74 80067A74 44853000 */  mtc1  $a1, $f6
/* 042E78 80067A78 00000000 */  nop   
/* 042E7C 80067A7C 46061082 */  mul.s $f2, $f2, $f6
/* 042E80 80067A80 C4840010 */  lwc1  $f4, 0x10($a0)
/* 042E84 80067A84 44864000 */  mtc1  $a2, $f8
/* 042E88 80067A88 00000000 */  nop   
/* 042E8C 80067A8C 46082102 */  mul.s $f4, $f4, $f8
/* 042E90 80067A90 C4800020 */  lwc1  $f0, 0x20($a0)
/* 042E94 80067A94 44875000 */  mtc1  $a3, $f10
/* 042E98 80067A98 00000000 */  nop   
/* 042E9C 80067A9C 460A0002 */  mul.s $f0, $f0, $f10
/* 042EA0 80067AA0 46041080 */  add.s $f2, $f2, $f4
/* 042EA4 80067AA4 46001080 */  add.s $f2, $f2, $f0
/* 042EA8 80067AA8 C4800030 */  lwc1  $f0, 0x30($a0)
/* 042EAC 80067AAC 8FA20010 */  lw    $v0, 0x10($sp)
/* 042EB0 80067AB0 8FA30014 */  lw    $v1, 0x14($sp)
/* 042EB4 80067AB4 46001080 */  add.s $f2, $f2, $f0
/* 042EB8 80067AB8 8FA50018 */  lw    $a1, 0x18($sp)
/* 042EBC 80067ABC E4420000 */  swc1  $f2, ($v0)
/* 042EC0 80067AC0 C4800004 */  lwc1  $f0, 4($a0)
/* 042EC4 80067AC4 46060002 */  mul.s $f0, $f0, $f6
/* 042EC8 80067AC8 C4840014 */  lwc1  $f4, 0x14($a0)
/* 042ECC 80067ACC 46082102 */  mul.s $f4, $f4, $f8
/* 042ED0 80067AD0 C4820024 */  lwc1  $f2, 0x24($a0)
/* 042ED4 80067AD4 460A1082 */  mul.s $f2, $f2, $f10
/* 042ED8 80067AD8 46040000 */  add.s $f0, $f0, $f4
/* 042EDC 80067ADC 46020000 */  add.s $f0, $f0, $f2
/* 042EE0 80067AE0 C4820034 */  lwc1  $f2, 0x34($a0)
/* 042EE4 80067AE4 46020000 */  add.s $f0, $f0, $f2
/* 042EE8 80067AE8 E4600000 */  swc1  $f0, ($v1)
/* 042EEC 80067AEC C4800008 */  lwc1  $f0, 8($a0)
/* 042EF0 80067AF0 46060002 */  mul.s $f0, $f0, $f6
/* 042EF4 80067AF4 C4840018 */  lwc1  $f4, 0x18($a0)
/* 042EF8 80067AF8 46082102 */  mul.s $f4, $f4, $f8
/* 042EFC 80067AFC C4820028 */  lwc1  $f2, 0x28($a0)
/* 042F00 80067B00 460A1082 */  mul.s $f2, $f2, $f10
/* 042F04 80067B04 46040000 */  add.s $f0, $f0, $f4
/* 042F08 80067B08 46020000 */  add.s $f0, $f0, $f2
/* 042F0C 80067B0C C4820038 */  lwc1  $f2, 0x38($a0)
/* 042F10 80067B10 46020000 */  add.s $f0, $f0, $f2
/* 042F14 80067B14 03E00008 */  jr    $ra
/* 042F18 80067B18 E4A00000 */   swc1  $f0, ($a1)

/* 042F1C 80067B1C 00000000 */  nop   
func_80067B20:
/* 042F20 80067B20 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 042F24 80067B24 AFB00010 */  sw    $s0, 0x10($sp)
/* 042F28 80067B28 00808021 */  move  $s0, $a0
/* 042F2C 80067B2C 27A40050 */  addiu $a0, $sp, 0x50
/* 042F30 80067B30 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 042F34 80067B34 4485A000 */  mtc1  $a1, $f20
/* 042F38 80067B38 27A50054 */  addiu $a1, $sp, 0x54
/* 042F3C 80067B3C AFA60050 */  sw    $a2, 0x50($sp)
/* 042F40 80067B40 27A60058 */  addiu $a2, $sp, 0x58
/* 042F44 80067B44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 042F48 80067B48 F7BE0040 */  sdc1  $f30, 0x40($sp)
/* 042F4C 80067B4C F7BC0038 */  sdc1  $f28, 0x38($sp)
/* 042F50 80067B50 F7BA0030 */  sdc1  $f26, 0x30($sp)
/* 042F54 80067B54 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 042F58 80067B58 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 042F5C 80067B5C 0C01B2F0 */  jal   func_8006CBC0
/* 042F60 80067B60 AFA70054 */   sw    $a3, 0x54($sp)
/* 042F64 80067B64 3C018009 */  lui   $at, 0x8009
/* 042F68 80067B68 C42058C0 */  lwc1  $f0, 0x58c0($at)
/* 042F6C 80067B6C 4600A502 */  mul.s $f20, $f20, $f0
/* 042F70 80067B70 0C00A85B */  jal   func_8002A16C
/* 042F74 80067B74 4600A306 */   mov.s $f12, $f20
/* 042F78 80067B78 4600A306 */  mov.s $f12, $f20
/* 042F7C 80067B7C 0C00A874 */  jal   func_8002A1D0
/* 042F80 80067B80 46000786 */   mov.s $f30, $f0
/* 042F84 80067B84 C7A20050 */  lwc1  $f2, 0x50($sp)
/* 042F88 80067B88 C7B60054 */  lwc1  $f22, 0x54($sp)
/* 042F8C 80067B8C 46161702 */  mul.s $f28, $f2, $f22
/* 042F90 80067B90 C7B40058 */  lwc1  $f20, 0x58($sp)
/* 042F94 80067B94 4614B582 */  mul.s $f22, $f22, $f20
/* 042F98 80067B98 3C013F80 */  lui   $at, 0x3f80
/* 042F9C 80067B9C 4481D000 */  mtc1  $at, $f26
/* 042FA0 80067BA0 4602A502 */  mul.s $f20, $f20, $f2
/* 042FA4 80067BA4 46000606 */  mov.s $f24, $f0
/* 042FA8 80067BA8 4618D301 */  sub.s $f12, $f26, $f24
/* 042FAC 80067BAC 460CE702 */  mul.s $f28, $f28, $f12
/* 042FB0 80067BB0 00000000 */  nop   
/* 042FB4 80067BB4 460CB582 */  mul.s $f22, $f22, $f12
/* 042FB8 80067BB8 00000000 */  nop   
/* 042FBC 80067BBC 460CA502 */  mul.s $f20, $f20, $f12
/* 042FC0 80067BC0 0C019D28 */  jal   func_800674A0
/* 042FC4 80067BC4 02002021 */   move  $a0, $s0
/* 042FC8 80067BC8 C7A20050 */  lwc1  $f2, 0x50($sp)
/* 042FCC 80067BCC 46021302 */  mul.s $f12, $f2, $f2
/* 042FD0 80067BD0 460CD001 */  sub.s $f0, $f26, $f12
/* 042FD4 80067BD4 4600C002 */  mul.s $f0, $f24, $f0
/* 042FD8 80067BD8 C7A40054 */  lwc1  $f4, 0x54($sp)
/* 042FDC 80067BDC C7A80058 */  lwc1  $f8, 0x58($sp)
/* 042FE0 80067BE0 46006000 */  add.s $f0, $f12, $f0
/* 042FE4 80067BE4 461E2102 */  mul.s $f4, $f4, $f30
/* 042FE8 80067BE8 E6000000 */  swc1  $f0, ($s0)
/* 042FEC 80067BEC C7A00054 */  lwc1  $f0, 0x54($sp)
/* 042FF0 80067BF0 46000302 */  mul.s $f12, $f0, $f0
/* 042FF4 80067BF4 00000000 */  nop   
/* 042FF8 80067BF8 461E1082 */  mul.s $f2, $f2, $f30
/* 042FFC 80067BFC 460CD181 */  sub.s $f6, $f26, $f12
/* 043000 80067C00 4604A000 */  add.s $f0, $f20, $f4
/* 043004 80067C04 4606C182 */  mul.s $f6, $f24, $f6
/* 043008 80067C08 4602B281 */  sub.s $f10, $f22, $f2
/* 04300C 80067C0C E6000020 */  swc1  $f0, 0x20($s0)
/* 043010 80067C10 C7A00058 */  lwc1  $f0, 0x58($sp)
/* 043014 80067C14 46066180 */  add.s $f6, $f12, $f6
/* 043018 80067C18 46000302 */  mul.s $f12, $f0, $f0
/* 04301C 80067C1C 4602B580 */  add.s $f22, $f22, $f2
/* 043020 80067C20 4604A501 */  sub.s $f20, $f20, $f4
/* 043024 80067C24 461E4202 */  mul.s $f8, $f8, $f30
/* 043028 80067C28 460CD681 */  sub.s $f26, $f26, $f12
/* 04302C 80067C2C 4608E001 */  sub.s $f0, $f28, $f8
/* 043030 80067C30 461AC602 */  mul.s $f24, $f24, $f26
/* 043034 80067C34 4608E700 */  add.s $f28, $f28, $f8
/* 043038 80067C38 E60A0024 */  swc1  $f10, 0x24($s0)
/* 04303C 80067C3C E6160018 */  swc1  $f22, 0x18($s0)
/* 043040 80067C40 E6140008 */  swc1  $f20, 8($s0)
/* 043044 80067C44 46186600 */  add.s $f24, $f12, $f24
/* 043048 80067C48 E61C0004 */  swc1  $f28, 4($s0)
/* 04304C 80067C4C E6000010 */  swc1  $f0, 0x10($s0)
/* 043050 80067C50 E6060014 */  swc1  $f6, 0x14($s0)
/* 043054 80067C54 E6180028 */  swc1  $f24, 0x28($s0)
/* 043058 80067C58 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04305C 80067C5C 8FB00010 */  lw    $s0, 0x10($sp)
/* 043060 80067C60 D7BE0040 */  ldc1  $f30, 0x40($sp)
/* 043064 80067C64 D7BC0038 */  ldc1  $f28, 0x38($sp)
/* 043068 80067C68 D7BA0030 */  ldc1  $f26, 0x30($sp)
/* 04306C 80067C6C D7B80028 */  ldc1  $f24, 0x28($sp)
/* 043070 80067C70 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 043074 80067C74 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 043078 80067C78 03E00008 */  jr    $ra
/* 04307C 80067C7C 27BD0048 */   addiu $sp, $sp, 0x48

func_80067C80:
/* 043080 80067C80 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 043084 80067C84 C7A000B8 */  lwc1  $f0, 0xb8($sp)
/* 043088 80067C88 AFB1006C */  sw    $s1, 0x6c($sp)
/* 04308C 80067C8C 00808821 */  move  $s1, $a0
/* 043090 80067C90 27A40058 */  addiu $a0, $sp, 0x58
/* 043094 80067C94 F7B40078 */  sdc1  $f20, 0x78($sp)
/* 043098 80067C98 4485A000 */  mtc1  $a1, $f20
/* 04309C 80067C9C 27A5005C */  addiu $a1, $sp, 0x5c
/* 0430A0 80067CA0 AFA60058 */  sw    $a2, 0x58($sp)
/* 0430A4 80067CA4 27A60060 */  addiu $a2, $sp, 0x60
/* 0430A8 80067CA8 AFBF0070 */  sw    $ra, 0x70($sp)
/* 0430AC 80067CAC AFB00068 */  sw    $s0, 0x68($sp)
/* 0430B0 80067CB0 F7BE00A0 */  sdc1  $f30, 0xa0($sp)
/* 0430B4 80067CB4 F7BC0098 */  sdc1  $f28, 0x98($sp)
/* 0430B8 80067CB8 F7BA0090 */  sdc1  $f26, 0x90($sp)
/* 0430BC 80067CBC F7B80088 */  sdc1  $f24, 0x88($sp)
/* 0430C0 80067CC0 F7B60080 */  sdc1  $f22, 0x80($sp)
/* 0430C4 80067CC4 AFA7005C */  sw    $a3, 0x5c($sp)
/* 0430C8 80067CC8 0C01B2F0 */  jal   func_8006CBC0
/* 0430CC 80067CCC E7A00060 */   swc1  $f0, 0x60($sp)
/* 0430D0 80067CD0 3C018009 */  lui   $at, 0x8009
/* 0430D4 80067CD4 C42058C0 */  lwc1  $f0, 0x58c0($at)
/* 0430D8 80067CD8 4600A502 */  mul.s $f20, $f20, $f0
/* 0430DC 80067CDC 0C00A85B */  jal   func_8002A16C
/* 0430E0 80067CE0 4600A306 */   mov.s $f12, $f20
/* 0430E4 80067CE4 4600A306 */  mov.s $f12, $f20
/* 0430E8 80067CE8 0C00A874 */  jal   func_8002A1D0
/* 0430EC 80067CEC 46000786 */   mov.s $f30, $f0
/* 0430F0 80067CF0 C7A20058 */  lwc1  $f2, 0x58($sp)
/* 0430F4 80067CF4 C7B6005C */  lwc1  $f22, 0x5c($sp)
/* 0430F8 80067CF8 46161702 */  mul.s $f28, $f2, $f22
/* 0430FC 80067CFC C7B40060 */  lwc1  $f20, 0x60($sp)
/* 043100 80067D00 4614B582 */  mul.s $f22, $f22, $f20
/* 043104 80067D04 3C013F80 */  lui   $at, 0x3f80
/* 043108 80067D08 4481D000 */  mtc1  $at, $f26
/* 04310C 80067D0C 4602A502 */  mul.s $f20, $f20, $f2
/* 043110 80067D10 46000606 */  mov.s $f24, $f0
/* 043114 80067D14 4618D301 */  sub.s $f12, $f26, $f24
/* 043118 80067D18 460CE702 */  mul.s $f28, $f28, $f12
/* 04311C 80067D1C 00000000 */  nop   
/* 043120 80067D20 460CB582 */  mul.s $f22, $f22, $f12
/* 043124 80067D24 00000000 */  nop   
/* 043128 80067D28 460CA502 */  mul.s $f20, $f20, $f12
/* 04312C 80067D2C 27B00010 */  addiu $s0, $sp, 0x10
/* 043130 80067D30 0C019D28 */  jal   func_800674A0
/* 043134 80067D34 02002021 */   move  $a0, $s0
/* 043138 80067D38 C7A00058 */  lwc1  $f0, 0x58($sp)
/* 04313C 80067D3C 46000302 */  mul.s $f12, $f0, $f0
/* 043140 80067D40 460CD181 */  sub.s $f6, $f26, $f12
/* 043144 80067D44 4606C182 */  mul.s $f6, $f24, $f6
/* 043148 80067D48 C7A2005C */  lwc1  $f2, 0x5c($sp)
/* 04314C 80067D4C 46066180 */  add.s $f6, $f12, $f6
/* 043150 80067D50 46021302 */  mul.s $f12, $f2, $f2
/* 043154 80067D54 00000000 */  nop   
/* 043158 80067D58 461E0002 */  mul.s $f0, $f0, $f30
/* 04315C 80067D5C 460CD101 */  sub.s $f4, $f26, $f12
/* 043160 80067D60 4604C102 */  mul.s $f4, $f24, $f4
/* 043164 80067D64 4600B281 */  sub.s $f10, $f22, $f0
/* 043168 80067D68 461E1082 */  mul.s $f2, $f2, $f30
/* 04316C 80067D6C 4600B580 */  add.s $f22, $f22, $f0
/* 043170 80067D70 C7A00060 */  lwc1  $f0, 0x60($sp)
/* 043174 80067D74 46046100 */  add.s $f4, $f12, $f4
/* 043178 80067D78 46000302 */  mul.s $f12, $f0, $f0
/* 04317C 80067D7C 4602A200 */  add.s $f8, $f20, $f2
/* 043180 80067D80 4602A501 */  sub.s $f20, $f20, $f2
/* 043184 80067D84 461E0002 */  mul.s $f0, $f0, $f30
/* 043188 80067D88 460CD681 */  sub.s $f26, $f26, $f12
/* 04318C 80067D8C 02002021 */  move  $a0, $s0
/* 043190 80067D90 02202821 */  move  $a1, $s1
/* 043194 80067D94 4600E081 */  sub.s $f2, $f28, $f0
/* 043198 80067D98 461AC602 */  mul.s $f24, $f24, $f26
/* 04319C 80067D9C E7AA0034 */  swc1  $f10, 0x34($sp)
/* 0431A0 80067DA0 E7B60028 */  swc1  $f22, 0x28($sp)
/* 0431A4 80067DA4 4600E700 */  add.s $f28, $f28, $f0
/* 0431A8 80067DA8 E7A60010 */  swc1  $f6, 0x10($sp)
/* 0431AC 80067DAC E7A80030 */  swc1  $f8, 0x30($sp)
/* 0431B0 80067DB0 E7B40018 */  swc1  $f20, 0x18($sp)
/* 0431B4 80067DB4 46186600 */  add.s $f24, $f12, $f24
/* 0431B8 80067DB8 E7A40024 */  swc1  $f4, 0x24($sp)
/* 0431BC 80067DBC E7A20020 */  swc1  $f2, 0x20($sp)
/* 0431C0 80067DC0 E7BC0014 */  swc1  $f28, 0x14($sp)
/* 0431C4 80067DC4 0C019D40 */  jal   func_80067500
/* 0431C8 80067DC8 E7B80038 */   swc1  $f24, 0x38($sp)
/* 0431CC 80067DCC 8FBF0070 */  lw    $ra, 0x70($sp)
/* 0431D0 80067DD0 8FB1006C */  lw    $s1, 0x6c($sp)
/* 0431D4 80067DD4 8FB00068 */  lw    $s0, 0x68($sp)
/* 0431D8 80067DD8 D7BE00A0 */  ldc1  $f30, 0xa0($sp)
/* 0431DC 80067DDC D7BC0098 */  ldc1  $f28, 0x98($sp)
/* 0431E0 80067DE0 D7BA0090 */  ldc1  $f26, 0x90($sp)
/* 0431E4 80067DE4 D7B80088 */  ldc1  $f24, 0x88($sp)
/* 0431E8 80067DE8 D7B60080 */  ldc1  $f22, 0x80($sp)
/* 0431EC 80067DEC D7B40078 */  ldc1  $f20, 0x78($sp)
/* 0431F0 80067DF0 03E00008 */  jr    $ra
/* 0431F4 80067DF4 27BD00A8 */   addiu $sp, $sp, 0xa8

/* 0431F8 80067DF8 00000000 */  nop   
/* 0431FC 80067DFC 00000000 */  nop   
