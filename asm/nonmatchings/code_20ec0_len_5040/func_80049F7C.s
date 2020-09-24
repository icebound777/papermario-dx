.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80049F7C
/* 2537C 80049F7C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 25380 80049F80 AFB40020 */  sw        $s4, 0x20($sp)
/* 25384 80049F84 0080A02D */  daddu     $s4, $a0, $zero
/* 25388 80049F88 AFBF0024 */  sw        $ra, 0x24($sp)
/* 2538C 80049F8C AFB3001C */  sw        $s3, 0x1c($sp)
/* 25390 80049F90 AFB20018 */  sw        $s2, 0x18($sp)
/* 25394 80049F94 AFB10014 */  sw        $s1, 0x14($sp)
/* 25398 80049F98 AFB00010 */  sw        $s0, 0x10($sp)
/* 2539C 80049F9C F7B40028 */  sdc1      $f20, 0x28($sp)
/* 253A0 80049FA0 8E930148 */  lw        $s3, 0x148($s4)
/* 253A4 80049FA4 86640008 */  lh        $a0, 8($s3)
/* 253A8 80049FA8 0C00EABB */  jal       get_npc_unsafe
/* 253AC 80049FAC 00A0902D */   daddu    $s2, $a1, $zero
/* 253B0 80049FB0 3C04800F */  lui       $a0, 0x800f
/* 253B4 80049FB4 8C847B30 */  lw        $a0, 0x7b30($a0)
/* 253B8 80049FB8 908300B4 */  lbu       $v1, 0xb4($a0)
/* 253BC 80049FBC 0040802D */  daddu     $s0, $v0, $zero
/* 253C0 80049FC0 2462FFFD */  addiu     $v0, $v1, -3
/* 253C4 80049FC4 2C420003 */  sltiu     $v0, $v0, 3
/* 253C8 80049FC8 14400006 */  bnez      $v0, .L80049FE4
/* 253CC 80049FCC 0000882D */   daddu    $s1, $zero, $zero
/* 253D0 80049FD0 00031600 */  sll       $v0, $v1, 0x18
/* 253D4 80049FD4 00021603 */  sra       $v0, $v0, 0x18
/* 253D8 80049FD8 24030008 */  addiu     $v1, $zero, 8
/* 253DC 80049FDC 1443000F */  bne       $v0, $v1, .L8004A01C
/* 253E0 80049FE0 00000000 */   nop      
.L80049FE4:
/* 253E4 80049FE4 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 253E8 80049FE8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 253EC 80049FEC 8C860028 */  lw        $a2, 0x28($a0)
/* 253F0 80049FF0 0C00A7B5 */  jal       dist2D
/* 253F4 80049FF4 8C870030 */   lw       $a3, 0x30($a0)
/* 253F8 80049FF8 860200A6 */  lh        $v0, 0xa6($s0)
/* 253FC 80049FFC 46000021 */  cvt.d.s   $f0, $f0
/* 25400 8004A000 44821000 */  mtc1      $v0, $f2
/* 25404 8004A004 00000000 */  nop       
/* 25408 8004A008 468010A1 */  cvt.d.w   $f2, $f2
/* 2540C 8004A00C 4622003C */  c.lt.d    $f0, $f2
/* 25410 8004A010 00000000 */  nop       
/* 25414 8004A014 45030001 */  bc1tl     .L8004A01C
/* 25418 8004A018 24110001 */   addiu    $s1, $zero, 1
.L8004A01C:
/* 2541C 8004A01C 56200031 */  bnel      $s1, $zero, .L8004A0E4
/* 25420 8004A020 A600008E */   sh       $zero, 0x8e($s0)
/* 25424 8004A024 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 25428 8004A028 3C02800F */  lui       $v0, 0x800f
/* 2542C 8004A02C 8C427B30 */  lw        $v0, 0x7b30($v0)
/* 25430 8004A030 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 25434 8004A034 8C460028 */  lw        $a2, 0x28($v0)
/* 25438 8004A038 0C00A720 */  jal       atan2
/* 2543C 8004A03C 8C470030 */   lw       $a3, 0x30($v0)
/* 25440 8004A040 46000506 */  mov.s     $f20, $f0
/* 25444 8004A044 C60C000C */  lwc1      $f12, 0xc($s0)
/* 25448 8004A048 0C00A70A */  jal       get_clamped_angle_diff
/* 2544C 8004A04C 4600A386 */   mov.s    $f14, $f20
/* 25450 8004A050 46000086 */  mov.s     $f2, $f0
/* 25454 8004A054 8E42001C */  lw        $v0, 0x1c($s2)
/* 25458 8004A058 46001005 */  abs.s     $f0, $f2
/* 2545C 8004A05C 44822000 */  mtc1      $v0, $f4
/* 25460 8004A060 00000000 */  nop       
/* 25464 8004A064 46802120 */  cvt.s.w   $f4, $f4
/* 25468 8004A068 4600203C */  c.lt.s    $f4, $f0
/* 2546C 8004A06C 00000000 */  nop       
/* 25470 8004A070 4500000D */  bc1f      .L8004A0A8
/* 25474 8004A074 00000000 */   nop      
/* 25478 8004A078 44800000 */  mtc1      $zero, $f0
/* 2547C 8004A07C C614000C */  lwc1      $f20, 0xc($s0)
/* 25480 8004A080 4600103C */  c.lt.s    $f2, $f0
/* 25484 8004A084 00000000 */  nop       
/* 25488 8004A088 45000006 */  bc1f      .L8004A0A4
/* 2548C 8004A08C 00021023 */   negu     $v0, $v0
/* 25490 8004A090 44820000 */  mtc1      $v0, $f0
/* 25494 8004A094 00000000 */  nop       
/* 25498 8004A098 46800020 */  cvt.s.w   $f0, $f0
/* 2549C 8004A09C 0801282A */  j         .L8004A0A8
/* 254A0 8004A0A0 4600A500 */   add.s    $f20, $f20, $f0
.L8004A0A4:
/* 254A4 8004A0A4 4604A500 */  add.s     $f20, $f20, $f4
.L8004A0A8:
/* 254A8 8004A0A8 0C00A6C9 */  jal       clamp_angle
/* 254AC 8004A0AC 4600A306 */   mov.s    $f12, $f20
/* 254B0 8004A0B0 E600000C */  swc1      $f0, 0xc($s0)
/* 254B4 8004A0B4 8E440020 */  lw        $a0, 0x20($s2)
/* 254B8 8004A0B8 000417C2 */  srl       $v0, $a0, 0x1f
/* 254BC 8004A0BC 00822021 */  addu      $a0, $a0, $v0
/* 254C0 8004A0C0 00042043 */  sra       $a0, $a0, 1
/* 254C4 8004A0C4 0C00A67F */  jal       rand_int
/* 254C8 8004A0C8 24840001 */   addiu    $a0, $a0, 1
/* 254CC 8004A0CC 8E430020 */  lw        $v1, 0x20($s2)
/* 254D0 8004A0D0 000327C2 */  srl       $a0, $v1, 0x1f
/* 254D4 8004A0D4 00641821 */  addu      $v1, $v1, $a0
/* 254D8 8004A0D8 00031843 */  sra       $v1, $v1, 1
/* 254DC 8004A0DC 00621821 */  addu      $v1, $v1, $v0
/* 254E0 8004A0E0 A603008E */  sh        $v1, 0x8e($s0)
.L8004A0E4:
/* 254E4 8004A0E4 8E6200CC */  lw        $v0, 0xcc($s3)
/* 254E8 8004A0E8 8C42000C */  lw        $v0, 0xc($v0)
/* 254EC 8004A0EC AE020028 */  sw        $v0, 0x28($s0)
/* 254F0 8004A0F0 C6400018 */  lwc1      $f0, 0x18($s2)
/* 254F4 8004A0F4 2402000D */  addiu     $v0, $zero, 0xd
/* 254F8 8004A0F8 E6000018 */  swc1      $f0, 0x18($s0)
/* 254FC 8004A0FC AE820070 */  sw        $v0, 0x70($s4)
/* 25500 8004A100 8FBF0024 */  lw        $ra, 0x24($sp)
/* 25504 8004A104 8FB40020 */  lw        $s4, 0x20($sp)
/* 25508 8004A108 8FB3001C */  lw        $s3, 0x1c($sp)
/* 2550C 8004A10C 8FB20018 */  lw        $s2, 0x18($sp)
/* 25510 8004A110 8FB10014 */  lw        $s1, 0x14($sp)
/* 25514 8004A114 8FB00010 */  lw        $s0, 0x10($sp)
/* 25518 8004A118 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 2551C 8004A11C 03E00008 */  jr        $ra
/* 25520 8004A120 27BD0030 */   addiu    $sp, $sp, 0x30
