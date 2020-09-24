.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802571F0
/* 185AD0 802571F0 27BDFC38 */  addiu     $sp, $sp, -0x3c8
/* 185AD4 802571F4 AFB20378 */  sw        $s2, 0x378($sp)
/* 185AD8 802571F8 00A0902D */  daddu     $s2, $a1, $zero
/* 185ADC 802571FC AFBF0394 */  sw        $ra, 0x394($sp)
/* 185AE0 80257200 AFBE0390 */  sw        $fp, 0x390($sp)
/* 185AE4 80257204 AFB7038C */  sw        $s7, 0x38c($sp)
/* 185AE8 80257208 AFB60388 */  sw        $s6, 0x388($sp)
/* 185AEC 8025720C AFB50384 */  sw        $s5, 0x384($sp)
/* 185AF0 80257210 AFB40380 */  sw        $s4, 0x380($sp)
/* 185AF4 80257214 AFB3037C */  sw        $s3, 0x37c($sp)
/* 185AF8 80257218 AFB10374 */  sw        $s1, 0x374($sp)
/* 185AFC 8025721C AFB00370 */  sw        $s0, 0x370($sp)
/* 185B00 80257220 F7BE03C0 */  sdc1      $f30, 0x3c0($sp)
/* 185B04 80257224 F7BC03B8 */  sdc1      $f28, 0x3b8($sp)
/* 185B08 80257228 F7BA03B0 */  sdc1      $f26, 0x3b0($sp)
/* 185B0C 8025722C F7B803A8 */  sdc1      $f24, 0x3a8($sp)
/* 185B10 80257230 F7B603A0 */  sdc1      $f22, 0x3a0($sp)
/* 185B14 80257234 F7B40398 */  sdc1      $f20, 0x398($sp)
/* 185B18 80257238 AFA403C8 */  sw        $a0, 0x3c8($sp)
/* 185B1C 8025723C 86420150 */  lh        $v0, 0x150($s2)
/* 185B20 80257240 C6400144 */  lwc1      $f0, 0x144($s2)
/* 185B24 80257244 44821000 */  mtc1      $v0, $f2
/* 185B28 80257248 00000000 */  nop       
/* 185B2C 8025724C 468010A0 */  cvt.s.w   $f2, $f2
/* 185B30 80257250 46020000 */  add.s     $f0, $f0, $f2
/* 185B34 80257254 8E420000 */  lw        $v0, ($s2)
/* 185B38 80257258 30420800 */  andi      $v0, $v0, 0x800
/* 185B3C 8025725C 14400008 */  bnez      $v0, .L80257280
/* 185B40 80257260 E7A00358 */   swc1     $f0, 0x358($sp)
/* 185B44 80257264 86420152 */  lh        $v0, 0x152($s2)
/* 185B48 80257268 C6420148 */  lwc1      $f2, 0x148($s2)
/* 185B4C 8025726C 44820000 */  mtc1      $v0, $f0
/* 185B50 80257270 00000000 */  nop       
/* 185B54 80257274 46800020 */  cvt.s.w   $f0, $f0
/* 185B58 80257278 08095CA6 */  j         .L80257298
/* 185B5C 8025727C 46001080 */   add.s    $f2, $f2, $f0
.L80257280:
/* 185B60 80257280 86420152 */  lh        $v0, 0x152($s2)
/* 185B64 80257284 C6420148 */  lwc1      $f2, 0x148($s2)
/* 185B68 80257288 44820000 */  mtc1      $v0, $f0
/* 185B6C 8025728C 00000000 */  nop       
/* 185B70 80257290 46800020 */  cvt.s.w   $f0, $f0
/* 185B74 80257294 46001081 */  sub.s     $f2, $f2, $f0
.L80257298:
/* 185B78 80257298 E7A2035C */  swc1      $f2, 0x35c($sp)
/* 185B7C 8025729C 86420154 */  lh        $v0, 0x154($s2)
/* 185B80 802572A0 C642014C */  lwc1      $f2, 0x14c($s2)
/* 185B84 802572A4 44820000 */  mtc1      $v0, $f0
/* 185B88 802572A8 00000000 */  nop       
/* 185B8C 802572AC 46800020 */  cvt.s.w   $f0, $f0
/* 185B90 802572B0 46001080 */  add.s     $f2, $f2, $f0
/* 185B94 802572B4 3C0140A0 */  lui       $at, 0x40a0
/* 185B98 802572B8 44810000 */  mtc1      $at, $f0
/* 185B9C 802572BC 8E420000 */  lw        $v0, ($s2)
/* 185BA0 802572C0 46001081 */  sub.s     $f2, $f2, $f0
/* 185BA4 802572C4 30420800 */  andi      $v0, $v0, 0x800
/* 185BA8 802572C8 14400025 */  bnez      $v0, .L80257360
/* 185BAC 802572CC E7A20360 */   swc1     $f2, 0x360($sp)
/* 185BB0 802572D0 86420168 */  lh        $v0, 0x168($s2)
/* 185BB4 802572D4 C6420188 */  lwc1      $f2, 0x188($s2)
/* 185BB8 802572D8 00021023 */  negu      $v0, $v0
/* 185BBC 802572DC 44820000 */  mtc1      $v0, $f0
/* 185BC0 802572E0 00000000 */  nop       
/* 185BC4 802572E4 46800020 */  cvt.s.w   $f0, $f0
/* 185BC8 802572E8 46020002 */  mul.s     $f0, $f0, $f2
/* 185BCC 802572EC 00000000 */  nop       
/* 185BD0 802572F0 8642016A */  lh        $v0, 0x16a($s2)
/* 185BD4 802572F4 00021023 */  negu      $v0, $v0
/* 185BD8 802572F8 44050000 */  mfc1      $a1, $f0
/* 185BDC 802572FC 44820000 */  mtc1      $v0, $f0
/* 185BE0 80257300 00000000 */  nop       
/* 185BE4 80257304 46800020 */  cvt.s.w   $f0, $f0
/* 185BE8 80257308 46020002 */  mul.s     $f0, $f0, $f2
/* 185BEC 8025730C 00000000 */  nop       
/* 185BF0 80257310 8642016C */  lh        $v0, 0x16c($s2)
/* 185BF4 80257314 00021023 */  negu      $v0, $v0
/* 185BF8 80257318 44060000 */  mfc1      $a2, $f0
/* 185BFC 8025731C 44820000 */  mtc1      $v0, $f0
/* 185C00 80257320 00000000 */  nop       
/* 185C04 80257324 46800020 */  cvt.s.w   $f0, $f0
/* 185C08 80257328 46020002 */  mul.s     $f0, $f0, $f2
/* 185C0C 8025732C 00000000 */  nop       
/* 185C10 80257330 44070000 */  mfc1      $a3, $f0
/* 185C14 80257334 0C019E40 */  jal       guTranslateF
/* 185C18 80257338 27A40158 */   addiu    $a0, $sp, 0x158
/* 185C1C 8025733C 86420168 */  lh        $v0, 0x168($s2)
/* 185C20 80257340 C6420188 */  lwc1      $f2, 0x188($s2)
/* 185C24 80257344 44820000 */  mtc1      $v0, $f0
/* 185C28 80257348 00000000 */  nop       
/* 185C2C 8025734C 46800020 */  cvt.s.w   $f0, $f0
/* 185C30 80257350 46020002 */  mul.s     $f0, $f0, $f2
/* 185C34 80257354 00000000 */  nop       
/* 185C38 80257358 08095CFB */  j         .L802573EC
/* 185C3C 8025735C 8642016A */   lh       $v0, 0x16a($s2)
.L80257360:
/* 185C40 80257360 86420168 */  lh        $v0, 0x168($s2)
/* 185C44 80257364 C6420188 */  lwc1      $f2, 0x188($s2)
/* 185C48 80257368 00021023 */  negu      $v0, $v0
/* 185C4C 8025736C 44820000 */  mtc1      $v0, $f0
/* 185C50 80257370 00000000 */  nop       
/* 185C54 80257374 46800020 */  cvt.s.w   $f0, $f0
/* 185C58 80257378 46020002 */  mul.s     $f0, $f0, $f2
/* 185C5C 8025737C 00000000 */  nop       
/* 185C60 80257380 8642016A */  lh        $v0, 0x16a($s2)
/* 185C64 80257384 44050000 */  mfc1      $a1, $f0
/* 185C68 80257388 44820000 */  mtc1      $v0, $f0
/* 185C6C 8025738C 00000000 */  nop       
/* 185C70 80257390 46800020 */  cvt.s.w   $f0, $f0
/* 185C74 80257394 46020002 */  mul.s     $f0, $f0, $f2
/* 185C78 80257398 00000000 */  nop       
/* 185C7C 8025739C 8642016C */  lh        $v0, 0x16c($s2)
/* 185C80 802573A0 00021023 */  negu      $v0, $v0
/* 185C84 802573A4 44060000 */  mfc1      $a2, $f0
/* 185C88 802573A8 44820000 */  mtc1      $v0, $f0
/* 185C8C 802573AC 00000000 */  nop       
/* 185C90 802573B0 46800020 */  cvt.s.w   $f0, $f0
/* 185C94 802573B4 46020002 */  mul.s     $f0, $f0, $f2
/* 185C98 802573B8 00000000 */  nop       
/* 185C9C 802573BC 44070000 */  mfc1      $a3, $f0
/* 185CA0 802573C0 0C019E40 */  jal       guTranslateF
/* 185CA4 802573C4 27A40158 */   addiu    $a0, $sp, 0x158
/* 185CA8 802573C8 86420168 */  lh        $v0, 0x168($s2)
/* 185CAC 802573CC C6420188 */  lwc1      $f2, 0x188($s2)
/* 185CB0 802573D0 44820000 */  mtc1      $v0, $f0
/* 185CB4 802573D4 00000000 */  nop       
/* 185CB8 802573D8 46800020 */  cvt.s.w   $f0, $f0
/* 185CBC 802573DC 46020002 */  mul.s     $f0, $f0, $f2
/* 185CC0 802573E0 00000000 */  nop       
/* 185CC4 802573E4 8642016A */  lh        $v0, 0x16a($s2)
/* 185CC8 802573E8 00021023 */  negu      $v0, $v0
.L802573EC:
/* 185CCC 802573EC 44050000 */  mfc1      $a1, $f0
/* 185CD0 802573F0 44820000 */  mtc1      $v0, $f0
/* 185CD4 802573F4 00000000 */  nop       
/* 185CD8 802573F8 46800020 */  cvt.s.w   $f0, $f0
/* 185CDC 802573FC 46020002 */  mul.s     $f0, $f0, $f2
/* 185CE0 80257400 00000000 */  nop       
/* 185CE4 80257404 8642016C */  lh        $v0, 0x16c($s2)
/* 185CE8 80257408 44060000 */  mfc1      $a2, $f0
/* 185CEC 8025740C 44820000 */  mtc1      $v0, $f0
/* 185CF0 80257410 00000000 */  nop       
/* 185CF4 80257414 46800020 */  cvt.s.w   $f0, $f0
/* 185CF8 80257418 46020002 */  mul.s     $f0, $f0, $f2
/* 185CFC 8025741C 00000000 */  nop       
/* 185D00 80257420 44070000 */  mfc1      $a3, $f0
/* 185D04 80257424 0C019E40 */  jal       guTranslateF
/* 185D08 80257428 27A40198 */   addiu    $a0, $sp, 0x198
/* 185D0C 8025742C 4480B000 */  mtc1      $zero, $f22
/* 185D10 80257430 3C013F80 */  lui       $at, 0x3f80
/* 185D14 80257434 4481C000 */  mtc1      $at, $f24
/* 185D18 80257438 E7B60010 */  swc1      $f22, 0x10($sp)
/* 185D1C 8025743C 8E45015C */  lw        $a1, 0x15c($s2)
/* 185D20 80257440 4406C000 */  mfc1      $a2, $f24
/* 185D24 80257444 4407B000 */  mfc1      $a3, $f22
/* 185D28 80257448 0C019EC8 */  jal       guRotateF
/* 185D2C 8025744C 27A40018 */   addiu    $a0, $sp, 0x18
/* 185D30 80257450 27B70058 */  addiu     $s7, $sp, 0x58
/* 185D34 80257454 E7B60010 */  swc1      $f22, 0x10($sp)
/* 185D38 80257458 8E450160 */  lw        $a1, 0x160($s2)
/* 185D3C 8025745C 4406B000 */  mfc1      $a2, $f22
/* 185D40 80257460 4407C000 */  mfc1      $a3, $f24
/* 185D44 80257464 0C019EC8 */  jal       guRotateF
/* 185D48 80257468 02E0202D */   daddu    $a0, $s7, $zero
/* 185D4C 8025746C 27B60098 */  addiu     $s6, $sp, 0x98
/* 185D50 80257470 E7B80010 */  swc1      $f24, 0x10($sp)
/* 185D54 80257474 8E450164 */  lw        $a1, 0x164($s2)
/* 185D58 80257478 4406B000 */  mfc1      $a2, $f22
/* 185D5C 8025747C 4407B000 */  mfc1      $a3, $f22
/* 185D60 80257480 0C019EC8 */  jal       guRotateF
/* 185D64 80257484 02C0202D */   daddu    $a0, $s6, $zero
/* 185D68 80257488 02E0202D */  daddu     $a0, $s7, $zero
/* 185D6C 8025748C 27A50018 */  addiu     $a1, $sp, 0x18
/* 185D70 80257490 27B30218 */  addiu     $s3, $sp, 0x218
/* 185D74 80257494 0C019D80 */  jal       guMtxCatF
/* 185D78 80257498 0260302D */   daddu    $a2, $s3, $zero
/* 185D7C 8025749C 0260202D */  daddu     $a0, $s3, $zero
/* 185D80 802574A0 02C0282D */  daddu     $a1, $s6, $zero
/* 185D84 802574A4 27B500D8 */  addiu     $s5, $sp, 0xd8
/* 185D88 802574A8 0C019D80 */  jal       guMtxCatF
/* 185D8C 802574AC 02A0302D */   daddu    $a2, $s5, $zero
/* 185D90 802574B0 C6440170 */  lwc1      $f4, 0x170($s2)
/* 185D94 802574B4 3C01802A */  lui       $at, 0x802a
/* 185D98 802574B8 D434D380 */  ldc1      $f20, -0x2c80($at)
/* 185D9C 802574BC 46002121 */  cvt.d.s   $f4, $f4
/* 185DA0 802574C0 46342102 */  mul.d     $f4, $f4, $f20
/* 185DA4 802574C4 00000000 */  nop       
/* 185DA8 802574C8 C6400174 */  lwc1      $f0, 0x174($s2)
/* 185DAC 802574CC 46000021 */  cvt.d.s   $f0, $f0
/* 185DB0 802574D0 46340002 */  mul.d     $f0, $f0, $f20
/* 185DB4 802574D4 00000000 */  nop       
/* 185DB8 802574D8 C6420178 */  lwc1      $f2, 0x178($s2)
/* 185DBC 802574DC 460010A1 */  cvt.d.s   $f2, $f2
/* 185DC0 802574E0 46341082 */  mul.d     $f2, $f2, $f20
/* 185DC4 802574E4 00000000 */  nop       
/* 185DC8 802574E8 C6460188 */  lwc1      $f6, 0x188($s2)
/* 185DCC 802574EC 460031A1 */  cvt.d.s   $f6, $f6
/* 185DD0 802574F0 46262102 */  mul.d     $f4, $f4, $f6
/* 185DD4 802574F4 00000000 */  nop       
/* 185DD8 802574F8 46260002 */  mul.d     $f0, $f0, $f6
/* 185DDC 802574FC 00000000 */  nop       
/* 185DE0 80257500 27B40118 */  addiu     $s4, $sp, 0x118
/* 185DE4 80257504 462010A0 */  cvt.s.d   $f2, $f2
/* 185DE8 80257508 44071000 */  mfc1      $a3, $f2
/* 185DEC 8025750C 46202120 */  cvt.s.d   $f4, $f4
/* 185DF0 80257510 46200020 */  cvt.s.d   $f0, $f0
/* 185DF4 80257514 44052000 */  mfc1      $a1, $f4
/* 185DF8 80257518 44060000 */  mfc1      $a2, $f0
/* 185DFC 8025751C 0C019DF0 */  jal       guScaleF
/* 185E00 80257520 0280202D */   daddu    $a0, $s4, $zero
/* 185E04 80257524 27A40158 */  addiu     $a0, $sp, 0x158
/* 185E08 80257528 0280282D */  daddu     $a1, $s4, $zero
/* 185E0C 8025752C 0C019D80 */  jal       guMtxCatF
/* 185E10 80257530 0260302D */   daddu    $a2, $s3, $zero
/* 185E14 80257534 0260202D */  daddu     $a0, $s3, $zero
/* 185E18 80257538 02A0282D */  daddu     $a1, $s5, $zero
/* 185E1C 8025753C 27B00258 */  addiu     $s0, $sp, 0x258
/* 185E20 80257540 0C019D80 */  jal       guMtxCatF
/* 185E24 80257544 0200302D */   daddu    $a2, $s0, $zero
/* 185E28 80257548 0200202D */  daddu     $a0, $s0, $zero
/* 185E2C 8025754C 27A50198 */  addiu     $a1, $sp, 0x198
/* 185E30 80257550 0C019D80 */  jal       guMtxCatF
/* 185E34 80257554 27A602D8 */   addiu    $a2, $sp, 0x2d8
/* 185E38 80257558 824801F3 */  lb        $t0, 0x1f3($s2)
/* 185E3C 8025755C AFA80364 */  sw        $t0, 0x364($sp)
/* 185E40 80257560 8E5101F4 */  lw        $s1, 0x1f4($s2)
/* 185E44 80257564 1900015E */  blez      $t0, .L80257AE0
/* 185E48 80257568 0000F02D */   daddu    $fp, $zero, $zero
/* 185E4C 8025756C 4620A786 */  mov.d     $f30, $f20
/* 185E50 80257570 4600B706 */  mov.s     $f28, $f22
/* 185E54 80257574 AFB70368 */  sw        $s7, 0x368($sp)
/* 185E58 80257578 02C0B82D */  daddu     $s7, $s6, $zero
/* 185E5C 8025757C 02A0B02D */  daddu     $s6, $s5, $zero
/* 185E60 80257580 0280A82D */  daddu     $s5, $s4, $zero
/* 185E64 80257584 0200A02D */  daddu     $s4, $s0, $zero
.L80257588:
/* 185E68 80257588 8E220000 */  lw        $v0, ($s1)
/* 185E6C 8025758C 3C030010 */  lui       $v1, 0x10
/* 185E70 80257590 00431024 */  and       $v0, $v0, $v1
/* 185E74 80257594 14400035 */  bnez      $v0, .L8025766C
/* 185E78 80257598 27A40318 */   addiu    $a0, $sp, 0x318
/* 185E7C 8025759C 86220014 */  lh        $v0, 0x14($s1)
/* 185E80 802575A0 C7AA0358 */  lwc1      $f10, 0x358($sp)
/* 185E84 802575A4 44820000 */  mtc1      $v0, $f0
/* 185E88 802575A8 00000000 */  nop       
/* 185E8C 802575AC 46800020 */  cvt.s.w   $f0, $f0
/* 185E90 802575B0 8622001A */  lh        $v0, 0x1a($s1)
/* 185E94 802575B4 46005000 */  add.s     $f0, $f10, $f0
/* 185E98 802575B8 44821000 */  mtc1      $v0, $f2
/* 185E9C 802575BC 00000000 */  nop       
/* 185EA0 802575C0 468010A0 */  cvt.s.w   $f2, $f2
/* 185EA4 802575C4 8E420000 */  lw        $v0, ($s2)
/* 185EA8 802575C8 30420800 */  andi      $v0, $v0, 0x800
/* 185EAC 802575CC 1440000D */  bnez      $v0, .L80257604
/* 185EB0 802575D0 46020680 */   add.s    $f26, $f0, $f2
/* 185EB4 802575D4 86220016 */  lh        $v0, 0x16($s1)
/* 185EB8 802575D8 C7AA035C */  lwc1      $f10, 0x35c($sp)
/* 185EBC 802575DC 44821000 */  mtc1      $v0, $f2
/* 185EC0 802575E0 00000000 */  nop       
/* 185EC4 802575E4 468010A0 */  cvt.s.w   $f2, $f2
/* 185EC8 802575E8 8622001C */  lh        $v0, 0x1c($s1)
/* 185ECC 802575EC 46025080 */  add.s     $f2, $f10, $f2
/* 185ED0 802575F0 44820000 */  mtc1      $v0, $f0
/* 185ED4 802575F4 00000000 */  nop       
/* 185ED8 802575F8 46800020 */  cvt.s.w   $f0, $f0
/* 185EDC 802575FC 08095D8C */  j         .L80257630
/* 185EE0 80257600 46001500 */   add.s    $f20, $f2, $f0
.L80257604:
/* 185EE4 80257604 86220016 */  lh        $v0, 0x16($s1)
/* 185EE8 80257608 C7AA035C */  lwc1      $f10, 0x35c($sp)
/* 185EEC 8025760C 44821000 */  mtc1      $v0, $f2
/* 185EF0 80257610 00000000 */  nop       
/* 185EF4 80257614 468010A0 */  cvt.s.w   $f2, $f2
/* 185EF8 80257618 8622001C */  lh        $v0, 0x1c($s1)
/* 185EFC 8025761C 46025081 */  sub.s     $f2, $f10, $f2
/* 185F00 80257620 44820000 */  mtc1      $v0, $f0
/* 185F04 80257624 00000000 */  nop       
/* 185F08 80257628 46800020 */  cvt.s.w   $f0, $f0
/* 185F0C 8025762C 46001501 */  sub.s     $f20, $f2, $f0
.L80257630:
/* 185F10 80257630 C640018C */  lwc1      $f0, 0x18c($s2)
/* 185F14 80257634 86220018 */  lh        $v0, 0x18($s1)
/* 185F18 80257638 C7AA0360 */  lwc1      $f10, 0x360($sp)
/* 185F1C 8025763C 46000586 */  mov.s     $f22, $f0
/* 185F20 80257640 44821000 */  mtc1      $v0, $f2
/* 185F24 80257644 00000000 */  nop       
/* 185F28 80257648 468010A0 */  cvt.s.w   $f2, $f2
/* 185F2C 8025764C 8622001E */  lh        $v0, 0x1e($s1)
/* 185F30 80257650 46025080 */  add.s     $f2, $f10, $f2
/* 185F34 80257654 E6360064 */  swc1      $f22, 0x64($s1)
/* 185F38 80257658 44820000 */  mtc1      $v0, $f0
/* 185F3C 8025765C 00000000 */  nop       
/* 185F40 80257660 46800020 */  cvt.s.w   $f0, $f0
/* 185F44 80257664 08095DC1 */  j         .L80257704
/* 185F48 80257668 46001600 */   add.s    $f24, $f2, $f0
.L8025766C:
/* 185F4C 8025766C C6480170 */  lwc1      $f8, 0x170($s2)
/* 185F50 80257670 46004221 */  cvt.d.s   $f8, $f8
/* 185F54 80257674 463E4202 */  mul.d     $f8, $f8, $f30
/* 185F58 80257678 00000000 */  nop       
/* 185F5C 8025767C C6460174 */  lwc1      $f6, 0x174($s2)
/* 185F60 80257680 460031A1 */  cvt.d.s   $f6, $f6
/* 185F64 80257684 463E3182 */  mul.d     $f6, $f6, $f30
/* 185F68 80257688 00000000 */  nop       
/* 185F6C 8025768C C6420178 */  lwc1      $f2, 0x178($s2)
/* 185F70 80257690 460010A1 */  cvt.d.s   $f2, $f2
/* 185F74 80257694 463E1082 */  mul.d     $f2, $f2, $f30
/* 185F78 80257698 00000000 */  nop       
/* 185F7C 8025769C 8622001A */  lh        $v0, 0x1a($s1)
/* 185F80 802576A0 C624002C */  lwc1      $f4, 0x2c($s1)
/* 185F84 802576A4 44820000 */  mtc1      $v0, $f0
/* 185F88 802576A8 00000000 */  nop       
/* 185F8C 802576AC 46800020 */  cvt.s.w   $f0, $f0
/* 185F90 802576B0 46002680 */  add.s     $f26, $f4, $f0
/* 185F94 802576B4 8622001C */  lh        $v0, 0x1c($s1)
/* 185F98 802576B8 C6240030 */  lwc1      $f4, 0x30($s1)
/* 185F9C 802576BC 44820000 */  mtc1      $v0, $f0
/* 185FA0 802576C0 00000000 */  nop       
/* 185FA4 802576C4 46800020 */  cvt.s.w   $f0, $f0
/* 185FA8 802576C8 46002500 */  add.s     $f20, $f4, $f0
/* 185FAC 802576CC 8622001E */  lh        $v0, 0x1e($s1)
/* 185FB0 802576D0 C6240034 */  lwc1      $f4, 0x34($s1)
/* 185FB4 802576D4 44820000 */  mtc1      $v0, $f0
/* 185FB8 802576D8 00000000 */  nop       
/* 185FBC 802576DC 46800020 */  cvt.s.w   $f0, $f0
/* 185FC0 802576E0 46204220 */  cvt.s.d   $f8, $f8
/* 185FC4 802576E4 462031A0 */  cvt.s.d   $f6, $f6
/* 185FC8 802576E8 462010A0 */  cvt.s.d   $f2, $f2
/* 185FCC 802576EC 44054000 */  mfc1      $a1, $f8
/* 185FD0 802576F0 44063000 */  mfc1      $a2, $f6
/* 185FD4 802576F4 44071000 */  mfc1      $a3, $f2
/* 185FD8 802576F8 0C019DF0 */  jal       guScaleF
/* 185FDC 802576FC 46002600 */   add.s    $f24, $f4, $f0
/* 185FE0 80257700 C6360064 */  lwc1      $f22, 0x64($s1)
.L80257704:
/* 185FE4 80257704 8E220000 */  lw        $v0, ($s1)
/* 185FE8 80257708 30420001 */  andi      $v0, $v0, 1
/* 185FEC 8025770C 144000EE */  bnez      $v0, .L80257AC8
/* 185FF0 80257710 00000000 */   nop      
/* 185FF4 80257714 8E220094 */  lw        $v0, 0x94($s1)
/* 185FF8 80257718 104000EB */  beqz      $v0, .L80257AC8
/* 185FFC 8025771C 00000000 */   nop      
/* 186000 80257720 8E420000 */  lw        $v0, ($s2)
/* 186004 80257724 30420800 */  andi      $v0, $v0, 0x800
/* 186008 80257728 14400025 */  bnez      $v0, .L802577C0
/* 18600C 8025772C 00000000 */   nop      
/* 186010 80257730 86220044 */  lh        $v0, 0x44($s1)
/* 186014 80257734 C6420188 */  lwc1      $f2, 0x188($s2)
/* 186018 80257738 00021023 */  negu      $v0, $v0
/* 18601C 8025773C 44820000 */  mtc1      $v0, $f0
/* 186020 80257740 00000000 */  nop       
/* 186024 80257744 46800020 */  cvt.s.w   $f0, $f0
/* 186028 80257748 46020002 */  mul.s     $f0, $f0, $f2
/* 18602C 8025774C 00000000 */  nop       
/* 186030 80257750 86220046 */  lh        $v0, 0x46($s1)
/* 186034 80257754 00021023 */  negu      $v0, $v0
/* 186038 80257758 44050000 */  mfc1      $a1, $f0
/* 18603C 8025775C 44820000 */  mtc1      $v0, $f0
/* 186040 80257760 00000000 */  nop       
/* 186044 80257764 46800020 */  cvt.s.w   $f0, $f0
/* 186048 80257768 46020002 */  mul.s     $f0, $f0, $f2
/* 18604C 8025776C 00000000 */  nop       
/* 186050 80257770 86220048 */  lh        $v0, 0x48($s1)
/* 186054 80257774 00021023 */  negu      $v0, $v0
/* 186058 80257778 44060000 */  mfc1      $a2, $f0
/* 18605C 8025777C 44820000 */  mtc1      $v0, $f0
/* 186060 80257780 00000000 */  nop       
/* 186064 80257784 46800020 */  cvt.s.w   $f0, $f0
/* 186068 80257788 46020002 */  mul.s     $f0, $f0, $f2
/* 18606C 8025778C 00000000 */  nop       
/* 186070 80257790 44070000 */  mfc1      $a3, $f0
/* 186074 80257794 0C019E40 */  jal       guTranslateF
/* 186078 80257798 27A40158 */   addiu    $a0, $sp, 0x158
/* 18607C 8025779C 86220044 */  lh        $v0, 0x44($s1)
/* 186080 802577A0 C6420188 */  lwc1      $f2, 0x188($s2)
/* 186084 802577A4 44820000 */  mtc1      $v0, $f0
/* 186088 802577A8 00000000 */  nop       
/* 18608C 802577AC 46800020 */  cvt.s.w   $f0, $f0
/* 186090 802577B0 46020002 */  mul.s     $f0, $f0, $f2
/* 186094 802577B4 00000000 */  nop       
/* 186098 802577B8 08095E13 */  j         .L8025784C
/* 18609C 802577BC 86220046 */   lh       $v0, 0x46($s1)
.L802577C0:
/* 1860A0 802577C0 86220044 */  lh        $v0, 0x44($s1)
/* 1860A4 802577C4 C6420188 */  lwc1      $f2, 0x188($s2)
/* 1860A8 802577C8 00021023 */  negu      $v0, $v0
/* 1860AC 802577CC 44820000 */  mtc1      $v0, $f0
/* 1860B0 802577D0 00000000 */  nop       
/* 1860B4 802577D4 46800020 */  cvt.s.w   $f0, $f0
/* 1860B8 802577D8 46020002 */  mul.s     $f0, $f0, $f2
/* 1860BC 802577DC 00000000 */  nop       
/* 1860C0 802577E0 86220046 */  lh        $v0, 0x46($s1)
/* 1860C4 802577E4 44050000 */  mfc1      $a1, $f0
/* 1860C8 802577E8 44820000 */  mtc1      $v0, $f0
/* 1860CC 802577EC 00000000 */  nop       
/* 1860D0 802577F0 46800020 */  cvt.s.w   $f0, $f0
/* 1860D4 802577F4 46020002 */  mul.s     $f0, $f0, $f2
/* 1860D8 802577F8 00000000 */  nop       
/* 1860DC 802577FC 86220048 */  lh        $v0, 0x48($s1)
/* 1860E0 80257800 00021023 */  negu      $v0, $v0
/* 1860E4 80257804 44060000 */  mfc1      $a2, $f0
/* 1860E8 80257808 44820000 */  mtc1      $v0, $f0
/* 1860EC 8025780C 00000000 */  nop       
/* 1860F0 80257810 46800020 */  cvt.s.w   $f0, $f0
/* 1860F4 80257814 46020002 */  mul.s     $f0, $f0, $f2
/* 1860F8 80257818 00000000 */  nop       
/* 1860FC 8025781C 44070000 */  mfc1      $a3, $f0
/* 186100 80257820 0C019E40 */  jal       guTranslateF
/* 186104 80257824 27A40158 */   addiu    $a0, $sp, 0x158
/* 186108 80257828 86220044 */  lh        $v0, 0x44($s1)
/* 18610C 8025782C C6420188 */  lwc1      $f2, 0x188($s2)
/* 186110 80257830 44820000 */  mtc1      $v0, $f0
/* 186114 80257834 00000000 */  nop       
/* 186118 80257838 46800020 */  cvt.s.w   $f0, $f0
/* 18611C 8025783C 46020002 */  mul.s     $f0, $f0, $f2
/* 186120 80257840 00000000 */  nop       
/* 186124 80257844 86220046 */  lh        $v0, 0x46($s1)
/* 186128 80257848 00021023 */  negu      $v0, $v0
.L8025784C:
/* 18612C 8025784C 44050000 */  mfc1      $a1, $f0
/* 186130 80257850 44820000 */  mtc1      $v0, $f0
/* 186134 80257854 00000000 */  nop       
/* 186138 80257858 46800020 */  cvt.s.w   $f0, $f0
/* 18613C 8025785C 46020002 */  mul.s     $f0, $f0, $f2
/* 186140 80257860 00000000 */  nop       
/* 186144 80257864 86220048 */  lh        $v0, 0x48($s1)
/* 186148 80257868 44060000 */  mfc1      $a2, $f0
/* 18614C 8025786C 44820000 */  mtc1      $v0, $f0
/* 186150 80257870 00000000 */  nop       
/* 186154 80257874 46800020 */  cvt.s.w   $f0, $f0
/* 186158 80257878 46020002 */  mul.s     $f0, $f0, $f2
/* 18615C 8025787C 00000000 */  nop       
/* 186160 80257880 44070000 */  mfc1      $a3, $f0
/* 186164 80257884 0C019E40 */  jal       guTranslateF
/* 186168 80257888 27A40198 */   addiu    $a0, $sp, 0x198
/* 18616C 8025788C 3C013F80 */  lui       $at, 0x3f80
/* 186170 80257890 44815000 */  mtc1      $at, $f10
/* 186174 80257894 86220068 */  lh        $v0, 0x68($s1)
/* 186178 80257898 460AC281 */  sub.s     $f10, $f24, $f10
/* 18617C 8025789C 44820000 */  mtc1      $v0, $f0
/* 186180 802578A0 00000000 */  nop       
/* 186184 802578A4 46800020 */  cvt.s.w   $f0, $f0
/* 186188 802578A8 4600D680 */  add.s     $f26, $f26, $f0
/* 18618C 802578AC 8622006A */  lh        $v0, 0x6a($s1)
/* 186190 802578B0 44820000 */  mtc1      $v0, $f0
/* 186194 802578B4 00000000 */  nop       
/* 186198 802578B8 46800020 */  cvt.s.w   $f0, $f0
/* 18619C 802578BC 4600A500 */  add.s     $f20, $f20, $f0
/* 1861A0 802578C0 44075000 */  mfc1      $a3, $f10
/* 1861A4 802578C4 4405D000 */  mfc1      $a1, $f26
/* 1861A8 802578C8 4406A000 */  mfc1      $a2, $f20
/* 1861AC 802578CC 0C019E40 */  jal       guTranslateF
/* 1861B0 802578D0 27A401D8 */   addiu    $a0, $sp, 0x1d8
/* 1861B4 802578D4 E7BC0010 */  swc1      $f28, 0x10($sp)
/* 1861B8 802578D8 8E250038 */  lw        $a1, 0x38($s1)
/* 1861BC 802578DC 3C063F80 */  lui       $a2, 0x3f80
/* 1861C0 802578E0 4407E000 */  mfc1      $a3, $f28
/* 1861C4 802578E4 0C019EC8 */  jal       guRotateF
/* 1861C8 802578E8 27A40018 */   addiu    $a0, $sp, 0x18
/* 1861CC 802578EC E7BC0010 */  swc1      $f28, 0x10($sp)
/* 1861D0 802578F0 8E25003C */  lw        $a1, 0x3c($s1)
/* 1861D4 802578F4 4406E000 */  mfc1      $a2, $f28
/* 1861D8 802578F8 3C073F80 */  lui       $a3, 0x3f80
/* 1861DC 802578FC 0C019EC8 */  jal       guRotateF
/* 1861E0 80257900 8FA40368 */   lw       $a0, 0x368($sp)
/* 1861E4 80257904 3C013F80 */  lui       $at, 0x3f80
/* 1861E8 80257908 44815000 */  mtc1      $at, $f10
/* 1861EC 8025790C 4406E000 */  mfc1      $a2, $f28
/* 1861F0 80257910 4407E000 */  mfc1      $a3, $f28
/* 1861F4 80257914 E7AA0010 */  swc1      $f10, 0x10($sp)
/* 1861F8 80257918 8E250040 */  lw        $a1, 0x40($s1)
/* 1861FC 8025791C 0C019EC8 */  jal       guRotateF
/* 186200 80257920 02E0202D */   daddu    $a0, $s7, $zero
/* 186204 80257924 27A50018 */  addiu     $a1, $sp, 0x18
/* 186208 80257928 8FA40368 */  lw        $a0, 0x368($sp)
/* 18620C 8025792C 0C019D80 */  jal       guMtxCatF
/* 186210 80257930 0260302D */   daddu    $a2, $s3, $zero
/* 186214 80257934 0260202D */  daddu     $a0, $s3, $zero
/* 186218 80257938 02E0282D */  daddu     $a1, $s7, $zero
/* 18621C 8025793C 0C019D80 */  jal       guMtxCatF
/* 186220 80257940 02C0302D */   daddu    $a2, $s6, $zero
/* 186224 80257944 82220074 */  lb        $v0, 0x74($s1)
/* 186228 80257948 C6220050 */  lwc1      $f2, 0x50($s1)
/* 18622C 8025794C 44820000 */  mtc1      $v0, $f0
/* 186230 80257950 00000000 */  nop       
/* 186234 80257954 46800020 */  cvt.s.w   $f0, $f0
/* 186238 80257958 46001082 */  mul.s     $f2, $f2, $f0
/* 18623C 8025795C 00000000 */  nop       
/* 186240 80257960 8E25004C */  lw        $a1, 0x4c($s1)
/* 186244 80257964 8E270054 */  lw        $a3, 0x54($s1)
/* 186248 80257968 44061000 */  mfc1      $a2, $f2
/* 18624C 8025796C 0C019DF0 */  jal       guScaleF
/* 186250 80257970 02A0202D */   daddu    $a0, $s5, $zero
/* 186254 80257974 0C0950A2 */  jal       mtx_mirror_y
/* 186258 80257978 27A40298 */   addiu    $a0, $sp, 0x298
/* 18625C 8025797C 02A0202D */  daddu     $a0, $s5, $zero
/* 186260 80257980 27A50158 */  addiu     $a1, $sp, 0x158
/* 186264 80257984 0C019D80 */  jal       guMtxCatF
/* 186268 80257988 0260302D */   daddu    $a2, $s3, $zero
/* 18626C 8025798C 0260202D */  daddu     $a0, $s3, $zero
/* 186270 80257990 02C0282D */  daddu     $a1, $s6, $zero
/* 186274 80257994 0C019D80 */  jal       guMtxCatF
/* 186278 80257998 0280302D */   daddu    $a2, $s4, $zero
/* 18627C 8025799C 0280202D */  daddu     $a0, $s4, $zero
/* 186280 802579A0 27A50198 */  addiu     $a1, $sp, 0x198
/* 186284 802579A4 0C019D80 */  jal       guMtxCatF
/* 186288 802579A8 0260302D */   daddu    $a2, $s3, $zero
/* 18628C 802579AC 8E220000 */  lw        $v0, ($s1)
/* 186290 802579B0 3C030010 */  lui       $v1, 0x10
/* 186294 802579B4 00431024 */  and       $v0, $v0, $v1
/* 186298 802579B8 14400003 */  bnez      $v0, .L802579C8
/* 18629C 802579BC 0260202D */   daddu    $a0, $s3, $zero
/* 1862A0 802579C0 08095E73 */  j         .L802579CC
/* 1862A4 802579C4 27A502D8 */   addiu    $a1, $sp, 0x2d8
.L802579C8:
/* 1862A8 802579C8 27A50318 */  addiu     $a1, $sp, 0x318
.L802579CC:
/* 1862AC 802579CC 0C019D80 */  jal       guMtxCatF
/* 1862B0 802579D0 0280302D */   daddu    $a2, $s4, $zero
/* 1862B4 802579D4 0280202D */  daddu     $a0, $s4, $zero
/* 1862B8 802579D8 27A501D8 */  addiu     $a1, $sp, 0x1d8
/* 1862BC 802579DC 0C019D80 */  jal       guMtxCatF
/* 1862C0 802579E0 0260302D */   daddu    $a2, $s3, $zero
/* 1862C4 802579E4 0260202D */  daddu     $a0, $s3, $zero
/* 1862C8 802579E8 27A50298 */  addiu     $a1, $sp, 0x298
/* 1862CC 802579EC 0C019D80 */  jal       guMtxCatF
/* 1862D0 802579F0 0280302D */   daddu    $a2, $s4, $zero
/* 1862D4 802579F4 8FA803C8 */  lw        $t0, 0x3c8($sp)
/* 1862D8 802579F8 15000014 */  bnez      $t0, .L80257A4C
/* 1862DC 802579FC 24040001 */   addiu    $a0, $zero, 1
/* 1862E0 80257A00 0220282D */  daddu     $a1, $s1, $zero
/* 1862E4 80257A04 4600B28D */  trunc.w.s $f10, $f22
/* 1862E8 80257A08 44105000 */  mfc1      $s0, $f10
/* 1862EC 80257A0C 00000000 */  nop       
/* 1862F0 80257A10 0200302D */  daddu     $a2, $s0, $zero
/* 1862F4 80257A14 0C097210 */  jal       func_8025C840
/* 1862F8 80257A18 0080382D */   daddu    $a3, $a0, $zero
/* 1862FC 80257A1C 24040001 */  addiu     $a0, $zero, 1
/* 186300 80257A20 0220282D */  daddu     $a1, $s1, $zero
/* 186304 80257A24 0200302D */  daddu     $a2, $s0, $zero
/* 186308 80257A28 0C097332 */  jal       func_8025CCC8
/* 18630C 80257A2C 0080382D */   daddu    $a3, $a0, $zero
/* 186310 80257A30 24020001 */  addiu     $v0, $zero, 1
/* 186314 80257A34 AFA20010 */  sw        $v0, 0x10($sp)
/* 186318 80257A38 0040202D */  daddu     $a0, $v0, $zero
/* 18631C 80257A3C 0220282D */  daddu     $a1, $s1, $zero
/* 186320 80257A40 0200302D */  daddu     $a2, $s0, $zero
/* 186324 80257A44 08095EB0 */  j         .L80257AC0
/* 186328 80257A48 0280382D */   daddu    $a3, $s4, $zero
.L80257A4C:
/* 18632C 80257A4C 3C014334 */  lui       $at, 0x4334
/* 186330 80257A50 4481A000 */  mtc1      $at, $f20
/* 186334 80257A54 00000000 */  nop       
/* 186338 80257A58 4614B500 */  add.s     $f20, $f22, $f20
/* 18633C 80257A5C 0C00A6C9 */  jal       clamp_angle
/* 186340 80257A60 4600A306 */   mov.s    $f12, $f20
/* 186344 80257A64 24040001 */  addiu     $a0, $zero, 1
/* 186348 80257A68 0220282D */  daddu     $a1, $s1, $zero
/* 18634C 80257A6C 4600028D */  trunc.w.s $f10, $f0
/* 186350 80257A70 44065000 */  mfc1      $a2, $f10
/* 186354 80257A74 0C097210 */  jal       func_8025C840
/* 186358 80257A78 0080382D */   daddu    $a3, $a0, $zero
/* 18635C 80257A7C 0C00A6C9 */  jal       clamp_angle
/* 186360 80257A80 4600A306 */   mov.s    $f12, $f20
/* 186364 80257A84 24040001 */  addiu     $a0, $zero, 1
/* 186368 80257A88 0220282D */  daddu     $a1, $s1, $zero
/* 18636C 80257A8C 4600028D */  trunc.w.s $f10, $f0
/* 186370 80257A90 44065000 */  mfc1      $a2, $f10
/* 186374 80257A94 0C097332 */  jal       func_8025CCC8
/* 186378 80257A98 0080382D */   daddu    $a3, $a0, $zero
/* 18637C 80257A9C 0C00A6C9 */  jal       clamp_angle
/* 186380 80257AA0 4600A306 */   mov.s    $f12, $f20
/* 186384 80257AA4 24040001 */  addiu     $a0, $zero, 1
/* 186388 80257AA8 0220282D */  daddu     $a1, $s1, $zero
/* 18638C 80257AAC 4600028D */  trunc.w.s $f10, $f0
/* 186390 80257AB0 44065000 */  mfc1      $a2, $f10
/* 186394 80257AB4 0280382D */  daddu     $a3, $s4, $zero
/* 186398 80257AB8 0080102D */  daddu     $v0, $a0, $zero
/* 18639C 80257ABC AFA20010 */  sw        $v0, 0x10($sp)
.L80257AC0:
/* 1863A0 80257AC0 0C09647B */  jal       func_802591EC
/* 1863A4 80257AC4 00000000 */   nop      
.L80257AC8:
/* 1863A8 80257AC8 8E31000C */  lw        $s1, 0xc($s1)
/* 1863AC 80257ACC 8FA80364 */  lw        $t0, 0x364($sp)
/* 1863B0 80257AD0 27DE0001 */  addiu     $fp, $fp, 1
/* 1863B4 80257AD4 03C8102A */  slt       $v0, $fp, $t0
/* 1863B8 80257AD8 1440FEAB */  bnez      $v0, .L80257588
/* 1863BC 80257ADC 00000000 */   nop      
.L80257AE0:
/* 1863C0 80257AE0 8FBF0394 */  lw        $ra, 0x394($sp)
/* 1863C4 80257AE4 8FBE0390 */  lw        $fp, 0x390($sp)
/* 1863C8 80257AE8 8FB7038C */  lw        $s7, 0x38c($sp)
/* 1863CC 80257AEC 8FB60388 */  lw        $s6, 0x388($sp)
/* 1863D0 80257AF0 8FB50384 */  lw        $s5, 0x384($sp)
/* 1863D4 80257AF4 8FB40380 */  lw        $s4, 0x380($sp)
/* 1863D8 80257AF8 8FB3037C */  lw        $s3, 0x37c($sp)
/* 1863DC 80257AFC 8FB20378 */  lw        $s2, 0x378($sp)
/* 1863E0 80257B00 8FB10374 */  lw        $s1, 0x374($sp)
/* 1863E4 80257B04 8FB00370 */  lw        $s0, 0x370($sp)
/* 1863E8 80257B08 D7BE03C0 */  ldc1      $f30, 0x3c0($sp)
/* 1863EC 80257B0C D7BC03B8 */  ldc1      $f28, 0x3b8($sp)
/* 1863F0 80257B10 D7BA03B0 */  ldc1      $f26, 0x3b0($sp)
/* 1863F4 80257B14 D7B803A8 */  ldc1      $f24, 0x3a8($sp)
/* 1863F8 80257B18 D7B603A0 */  ldc1      $f22, 0x3a0($sp)
/* 1863FC 80257B1C D7B40398 */  ldc1      $f20, 0x398($sp)
/* 186400 80257B20 03E00008 */  jr        $ra
/* 186404 80257B24 27BD03C8 */   addiu    $sp, $sp, 0x3c8
