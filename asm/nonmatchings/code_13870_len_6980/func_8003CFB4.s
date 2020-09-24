.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8003CFB4
/* 183B4 8003CFB4 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 183B8 8003CFB8 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 183BC 8003CFBC 4486D000 */  mtc1      $a2, $f26
/* 183C0 8003CFC0 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 183C4 8003CFC4 46006606 */  mov.s     $f24, $f12
/* 183C8 8003CFC8 AFB20018 */  sw        $s2, 0x18($sp)
/* 183CC 8003CFCC 0000902D */  daddu     $s2, $zero, $zero
/* 183D0 8003CFD0 AFB10014 */  sw        $s1, 0x14($sp)
/* 183D4 8003CFD4 0240882D */  daddu     $s1, $s2, $zero
/* 183D8 8003CFD8 AFB40020 */  sw        $s4, 0x20($sp)
/* 183DC 8003CFDC 3C140400 */  lui       $s4, 0x400
/* 183E0 8003CFE0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 183E4 8003CFE4 3C138000 */  lui       $s3, 0x8000
/* 183E8 8003CFE8 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 183EC 8003CFEC 4487A000 */  mtc1      $a3, $f20
/* 183F0 8003CFF0 36730004 */  ori       $s3, $s3, 4
/* 183F4 8003CFF4 AFBF0024 */  sw        $ra, 0x24($sp)
/* 183F8 8003CFF8 AFB00010 */  sw        $s0, 0x10($sp)
/* 183FC 8003CFFC F7B60030 */  sdc1      $f22, 0x30($sp)
/* 18400 8003D000 4600A586 */  mov.s     $f22, $f20
.L8003D004:
/* 18404 8003D004 3C03800A */  lui       $v1, 0x800a
/* 18408 8003D008 8C630B90 */  lw        $v1, 0xb90($v1)
/* 1840C 8003D00C 00111080 */  sll       $v0, $s1, 2
/* 18410 8003D010 00431021 */  addu      $v0, $v0, $v1
/* 18414 8003D014 8C500000 */  lw        $s0, ($v0)
/* 18418 8003D018 5200001B */  beql      $s0, $zero, .L8003D088
/* 1841C 8003D01C 26310001 */   addiu    $s1, $s1, 1
/* 18420 8003D020 8E030000 */  lw        $v1, ($s0)
/* 18424 8003D024 50600018 */  beql      $v1, $zero, .L8003D088
/* 18428 8003D028 26310001 */   addiu    $s1, $s1, 1
/* 1842C 8003D02C 00741024 */  and       $v0, $v1, $s4
/* 18430 8003D030 54400015 */  bnel      $v0, $zero, .L8003D088
/* 18434 8003D034 26310001 */   addiu    $s1, $s1, 1
/* 18438 8003D038 00731024 */  and       $v0, $v1, $s3
/* 1843C 8003D03C 54400012 */  bnel      $v0, $zero, .L8003D088
/* 18440 8003D040 26310001 */   addiu    $s1, $s1, 1
/* 18444 8003D044 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 18448 8003D048 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 1844C 8003D04C 4406C000 */  mfc1      $a2, $f24
/* 18450 8003D050 4407D000 */  mfc1      $a3, $f26
/* 18454 8003D054 0C00A7B5 */  jal       dist2D
/* 18458 8003D058 00000000 */   nop      
/* 1845C 8003D05C 46000005 */  abs.s     $f0, $f0
/* 18460 8003D060 4616003E */  c.le.s    $f0, $f22
/* 18464 8003D064 00000000 */  nop       
/* 18468 8003D068 45000007 */  bc1f      .L8003D088
/* 1846C 8003D06C 26310001 */   addiu    $s1, $s1, 1
/* 18470 8003D070 4614003C */  c.lt.s    $f0, $f20
/* 18474 8003D074 00000000 */  nop       
/* 18478 8003D078 45000003 */  bc1f      .L8003D088
/* 1847C 8003D07C 00000000 */   nop      
/* 18480 8003D080 46000506 */  mov.s     $f20, $f0
/* 18484 8003D084 0200902D */  daddu     $s2, $s0, $zero
.L8003D088:
/* 18488 8003D088 2A220040 */  slti      $v0, $s1, 0x40
/* 1848C 8003D08C 1440FFDD */  bnez      $v0, .L8003D004
/* 18490 8003D090 0240102D */   daddu    $v0, $s2, $zero
/* 18494 8003D094 8FBF0024 */  lw        $ra, 0x24($sp)
/* 18498 8003D098 8FB40020 */  lw        $s4, 0x20($sp)
/* 1849C 8003D09C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 184A0 8003D0A0 8FB20018 */  lw        $s2, 0x18($sp)
/* 184A4 8003D0A4 8FB10014 */  lw        $s1, 0x14($sp)
/* 184A8 8003D0A8 8FB00010 */  lw        $s0, 0x10($sp)
/* 184AC 8003D0AC D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 184B0 8003D0B0 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 184B4 8003D0B4 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 184B8 8003D0B8 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 184BC 8003D0BC 03E00008 */  jr        $ra
/* 184C0 8003D0C0 27BD0048 */   addiu    $sp, $sp, 0x48
