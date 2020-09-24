.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel spawn_drops
/* 23680 80048280 27BDFF68 */  addiu     $sp, $sp, -0x98
/* 23684 80048284 AFA40098 */  sw        $a0, 0x98($sp)
/* 23688 80048288 8FA80098 */  lw        $t0, 0x98($sp)
/* 2368C 8004828C AFBF0064 */  sw        $ra, 0x64($sp)
/* 23690 80048290 AFBE0060 */  sw        $fp, 0x60($sp)
/* 23694 80048294 AFB7005C */  sw        $s7, 0x5c($sp)
/* 23698 80048298 AFB60058 */  sw        $s6, 0x58($sp)
/* 2369C 8004829C AFB50054 */  sw        $s5, 0x54($sp)
/* 236A0 800482A0 AFB40050 */  sw        $s4, 0x50($sp)
/* 236A4 800482A4 AFB3004C */  sw        $s3, 0x4c($sp)
/* 236A8 800482A8 AFB20048 */  sw        $s2, 0x48($sp)
/* 236AC 800482AC AFB10044 */  sw        $s1, 0x44($sp)
/* 236B0 800482B0 AFB00040 */  sw        $s0, 0x40($sp)
/* 236B4 800482B4 F7BE0090 */  sdc1      $f30, 0x90($sp)
/* 236B8 800482B8 F7BC0088 */  sdc1      $f28, 0x88($sp)
/* 236BC 800482BC F7BA0080 */  sdc1      $f26, 0x80($sp)
/* 236C0 800482C0 F7B80078 */  sdc1      $f24, 0x78($sp)
/* 236C4 800482C4 F7B60070 */  sdc1      $f22, 0x70($sp)
/* 236C8 800482C8 F7B40068 */  sdc1      $f20, 0x68($sp)
/* 236CC 800482CC AFA0002C */  sw        $zero, 0x2c($sp)
/* 236D0 800482D0 84840008 */  lh        $a0, 8($a0)
/* 236D4 800482D4 8D0800D4 */  lw        $t0, 0xd4($t0)
/* 236D8 800482D8 0000902D */  daddu     $s2, $zero, $zero
/* 236DC 800482DC 0C00EABB */  jal       get_npc_unsafe
/* 236E0 800482E0 AFA80020 */   sw       $t0, 0x20($sp)
/* 236E4 800482E4 0040802D */  daddu     $s0, $v0, $zero
/* 236E8 800482E8 3C038007 */  lui       $v1, 0x8007
/* 236EC 800482EC 8C637410 */  lw        $v1, 0x7410($v1)
/* 236F0 800482F0 3C04800B */  lui       $a0, 0x800b
/* 236F4 800482F4 24841D80 */  addiu     $a0, $a0, 0x1d80
/* 236F8 800482F8 00031080 */  sll       $v0, $v1, 2
/* 236FC 800482FC 00431021 */  addu      $v0, $v0, $v1
/* 23700 80048300 00021080 */  sll       $v0, $v0, 2
/* 23704 80048304 00431023 */  subu      $v0, $v0, $v1
/* 23708 80048308 000218C0 */  sll       $v1, $v0, 3
/* 2370C 8004830C 00431021 */  addu      $v0, $v0, $v1
/* 23710 80048310 000210C0 */  sll       $v0, $v0, 3
/* 23714 80048314 00448821 */  addu      $s1, $v0, $a0
.L80048318:
/* 23718 80048318 0C044181 */  jal       get_shadow_by_index
/* 2371C 8004831C 0240202D */   daddu    $a0, $s2, $zero
/* 23720 80048320 14400004 */  bnez      $v0, .L80048334
/* 23724 80048324 26520001 */   addiu    $s2, $s2, 1
/* 23728 80048328 8FA8002C */  lw        $t0, 0x2c($sp)
/* 2372C 8004832C 25080001 */  addiu     $t0, $t0, 1
/* 23730 80048330 AFA8002C */  sw        $t0, 0x2c($sp)
.L80048334:
/* 23734 80048334 2A42003C */  slti      $v0, $s2, 0x3c
/* 23738 80048338 1440FFF7 */  bnez      $v0, .L80048318
/* 2373C 8004833C 0000F02D */   daddu    $fp, $zero, $zero
/* 23740 80048340 C620006C */  lwc1      $f0, 0x6c($s1)
/* 23744 80048344 3C0142B4 */  lui       $at, 0x42b4
/* 23748 80048348 44816000 */  mtc1      $at, $f12
/* 2374C 8004834C 3C038015 */  lui       $v1, 0x8015
/* 23750 80048350 8C63B7F0 */  lw        $v1, -0x4810($v1)
/* 23754 80048354 240200F6 */  addiu     $v0, $zero, 0xf6
/* 23758 80048358 AFA00024 */  sw        $zero, 0x24($sp)
/* 2375C 8004835C 460C0300 */  add.s     $f12, $f0, $f12
/* 23760 80048360 00431023 */  subu      $v0, $v0, $v1
/* 23764 80048364 0C00A6C9 */  jal       clamp_angle
/* 23768 80048368 AFA20028 */   sw       $v0, 0x28($sp)
/* 2376C 8004836C 4600010D */  trunc.w.s $f4, $f0
/* 23770 80048370 44162000 */  mfc1      $s6, $f4
/* 23774 80048374 960200A8 */  lhu       $v0, 0xa8($s0)
/* 23778 80048378 8FA80020 */  lw        $t0, 0x20($sp)
/* 2377C 8004837C C602003C */  lwc1      $f2, 0x3c($s0)
/* 23780 80048380 00021400 */  sll       $v0, $v0, 0x10
/* 23784 80048384 00021C03 */  sra       $v1, $v0, 0x10
/* 23788 80048388 000217C2 */  srl       $v0, $v0, 0x1f
/* 2378C 8004838C 00621821 */  addu      $v1, $v1, $v0
/* 23790 80048390 00031843 */  sra       $v1, $v1, 1
/* 23794 80048394 44830000 */  mtc1      $v1, $f0
/* 23798 80048398 00000000 */  nop       
/* 2379C 8004839C 46800020 */  cvt.s.w   $f0, $f0
/* 237A0 800483A0 46001080 */  add.s     $f2, $f2, $f0
/* 237A4 800483A4 91110001 */  lbu       $s1, 1($t0)
/* 237A8 800483A8 03C0B82D */  daddu     $s7, $fp, $zero
/* 237AC 800483AC E7A20038 */  swc1      $f2, 0x38($sp)
/* 237B0 800483B0 C6040038 */  lwc1      $f4, 0x38($s0)
/* 237B4 800483B4 E7A40034 */  swc1      $f4, 0x34($sp)
/* 237B8 800483B8 C61E0040 */  lwc1      $f30, 0x40($s0)
/* 237BC 800483BC 0C00A67F */  jal       rand_int
/* 237C0 800483C0 24040064 */   addiu    $a0, $zero, 0x64
/* 237C4 800483C4 0051102A */  slt       $v0, $v0, $s1
/* 237C8 800483C8 10400061 */  beqz      $v0, .L80048550
/* 237CC 800483CC 03C0902D */   daddu    $s2, $fp, $zero
/* 237D0 800483D0 03C0202D */  daddu     $a0, $fp, $zero
/* 237D4 800483D4 24050002 */  addiu     $a1, $zero, 2
/* 237D8 800483D8 8FA30020 */  lw        $v1, 0x20($sp)
.L800483DC:
/* 237DC 800483DC 84620002 */  lh        $v0, 2($v1)
/* 237E0 800483E0 10400009 */  beqz      $v0, .L80048408
/* 237E4 800483E4 24630006 */   addiu    $v1, $v1, 6
/* 237E8 800483E8 8FA80020 */  lw        $t0, 0x20($sp)
/* 237EC 800483EC 26520001 */  addiu     $s2, $s2, 1
/* 237F0 800483F0 01051021 */  addu      $v0, $t0, $a1
/* 237F4 800483F4 84420002 */  lh        $v0, 2($v0)
/* 237F8 800483F8 00822021 */  addu      $a0, $a0, $v0
/* 237FC 800483FC 2A420008 */  slti      $v0, $s2, 8
/* 23800 80048400 1440FFF6 */  bnez      $v0, .L800483DC
/* 23804 80048404 24A50006 */   addiu    $a1, $a1, 6
.L80048408:
/* 23808 80048408 0C00A67F */  jal       rand_int
/* 2380C 8004840C 0000A82D */   daddu    $s5, $zero, $zero
/* 23810 80048410 0040882D */  daddu     $s1, $v0, $zero
/* 23814 80048414 02A0902D */  daddu     $s2, $s5, $zero
/* 23818 80048418 24140004 */  addiu     $s4, $zero, 4
/* 2381C 8004841C 8FB00020 */  lw        $s0, 0x20($sp)
/* 23820 80048420 24130002 */  addiu     $s3, $zero, 2
/* 23824 80048424 AFA00030 */  sw        $zero, 0x30($sp)
.L80048428:
/* 23828 80048428 86020002 */  lh        $v0, 2($s0)
/* 2382C 8004842C 10400017 */  beqz      $v0, .L8004848C
/* 23830 80048430 00000000 */   nop      
/* 23834 80048434 8FA80020 */  lw        $t0, 0x20($sp)
/* 23838 80048438 01131021 */  addu      $v0, $t0, $s3
/* 2383C 8004843C 01141821 */  addu      $v1, $t0, $s4
/* 23840 80048440 84420002 */  lh        $v0, 2($v0)
/* 23844 80048444 84640002 */  lh        $a0, 2($v1)
/* 23848 80048448 18800005 */  blez      $a0, .L80048460
/* 2384C 8004844C 02A2A821 */   addu     $s5, $s5, $v0
/* 23850 80048450 0C05152F */  jal       get_global_flag
/* 23854 80048454 24840714 */   addiu    $a0, $a0, 0x714
/* 23858 80048458 54400007 */  bnel      $v0, $zero, .L80048478
/* 2385C 8004845C 26940006 */   addiu    $s4, $s4, 6
.L80048460:
/* 23860 80048460 02B1102A */  slt       $v0, $s5, $s1
/* 23864 80048464 54400004 */  bnel      $v0, $zero, .L80048478
/* 23868 80048468 26940006 */   addiu    $s4, $s4, 6
/* 2386C 8004846C 86100002 */  lh        $s0, 2($s0)
/* 23870 80048470 08012123 */  j         .L8004848C
/* 23874 80048474 AFB00030 */   sw       $s0, 0x30($sp)
.L80048478:
/* 23878 80048478 26730006 */  addiu     $s3, $s3, 6
/* 2387C 8004847C 26520001 */  addiu     $s2, $s2, 1
/* 23880 80048480 2A420008 */  slti      $v0, $s2, 8
/* 23884 80048484 1440FFE8 */  bnez      $v0, .L80048428
/* 23888 80048488 26100006 */   addiu    $s0, $s0, 6
.L8004848C:
/* 2388C 8004848C 8FA80098 */  lw        $t0, 0x98($sp)
/* 23890 80048490 8FA80030 */  lw        $t0, 0x30($sp)
/* 23894 80048494 1100002E */  beqz      $t0, .L80048550
/* 23898 80048498 24020004 */   addiu    $v0, $zero, 4
/* 2389C 8004849C 0100202D */  daddu     $a0, $t0, $zero
/* 238A0 800484A0 00171840 */  sll       $v1, $s7, 1
/* 238A4 800484A4 00771821 */  addu      $v1, $v1, $s7
/* 238A8 800484A8 AFA20010 */  sw        $v0, 0x10($sp)
/* 238AC 800484AC 00431004 */  sllv      $v0, $v1, $v0
/* 238B0 800484B0 00431023 */  subu      $v0, $v0, $v1
/* 238B4 800484B4 000210C0 */  sll       $v0, $v0, 3
/* 238B8 800484B8 8FA50034 */  lw        $a1, 0x34($sp)
/* 238BC 800484BC 8FA60038 */  lw        $a2, 0x38($sp)
/* 238C0 800484C0 4407F000 */  mfc1      $a3, $f30
/* 238C4 800484C4 8FA80024 */  lw        $t0, 0x24($sp)
/* 238C8 800484C8 02C21021 */  addu      $v0, $s6, $v0
/* 238CC 800484CC AFA20018 */  sw        $v0, 0x18($sp)
/* 238D0 800484D0 AFA0001C */  sw        $zero, 0x1c($sp)
/* 238D4 800484D4 0C04C4FD */  jal       make_item_entity
/* 238D8 800484D8 AFA80014 */   sw       $t0, 0x14($sp)
/* 238DC 800484DC 44960000 */  mtc1      $s6, $f0
/* 238E0 800484E0 00000000 */  nop       
/* 238E4 800484E4 46800021 */  cvt.d.w   $f0, $f0
/* 238E8 800484E8 27DE0001 */  addiu     $fp, $fp, 1
/* 238EC 800484EC 2BC2000C */  slti      $v0, $fp, 0xc
/* 238F0 800484F0 3C01403E */  lui       $at, 0x403e
/* 238F4 800484F4 44811800 */  mtc1      $at, $f3
/* 238F8 800484F8 44801000 */  mtc1      $zero, $f2
/* 238FC 800484FC 8FA80024 */  lw        $t0, 0x24($sp)
/* 23900 80048500 46220000 */  add.d     $f0, $f0, $f2
/* 23904 80048504 25080002 */  addiu     $t0, $t0, 2
/* 23908 80048508 AFA80024 */  sw        $t0, 0x24($sp)
/* 2390C 8004850C 4620010D */  trunc.w.d $f4, $f0
/* 23910 80048510 44162000 */  mfc1      $s6, $f4
/* 23914 80048514 14400004 */  bnez      $v0, .L80048528
/* 23918 80048518 00121040 */   sll      $v0, $s2, 1
/* 2391C 8004851C 26F70001 */  addiu     $s7, $s7, 1
/* 23920 80048520 0017B0C0 */  sll       $s6, $s7, 3
/* 23924 80048524 0000F02D */  daddu     $fp, $zero, $zero
.L80048528:
/* 23928 80048528 00521021 */  addu      $v0, $v0, $s2
/* 2392C 8004852C 24420002 */  addiu     $v0, $v0, 2
/* 23930 80048530 8FA80020 */  lw        $t0, 0x20($sp)
/* 23934 80048534 00021040 */  sll       $v0, $v0, 1
/* 23938 80048538 01021021 */  addu      $v0, $t0, $v0
/* 2393C 8004853C 84440002 */  lh        $a0, 2($v0)
/* 23940 80048540 04800003 */  bltz      $a0, .L80048550
/* 23944 80048544 00000000 */   nop      
/* 23948 80048548 0C051514 */  jal       set_global_flag
/* 2394C 8004854C 24840715 */   addiu    $a0, $a0, 0x715
.L80048550:
/* 23950 80048550 3C02800B */  lui       $v0, 0x800b
/* 23954 80048554 80420F23 */  lb        $v0, 0xf23($v0)
/* 23958 80048558 10400026 */  beqz      $v0, .L800485F4
/* 2395C 8004855C 24040093 */   addiu    $a0, $zero, 0x93
/* 23960 80048560 24020004 */  addiu     $v0, $zero, 4
/* 23964 80048564 00171840 */  sll       $v1, $s7, 1
/* 23968 80048568 00771821 */  addu      $v1, $v1, $s7
/* 2396C 8004856C AFA20010 */  sw        $v0, 0x10($sp)
/* 23970 80048570 00431004 */  sllv      $v0, $v1, $v0
/* 23974 80048574 00431023 */  subu      $v0, $v0, $v1
/* 23978 80048578 000210C0 */  sll       $v0, $v0, 3
/* 2397C 8004857C 8FA50034 */  lw        $a1, 0x34($sp)
/* 23980 80048580 8FA60038 */  lw        $a2, 0x38($sp)
/* 23984 80048584 4407F000 */  mfc1      $a3, $f30
/* 23988 80048588 8FA80024 */  lw        $t0, 0x24($sp)
/* 2398C 8004858C 02C21021 */  addu      $v0, $s6, $v0
/* 23990 80048590 3C01800B */  lui       $at, 0x800b
/* 23994 80048594 A0200F23 */  sb        $zero, 0xf23($at)
/* 23998 80048598 AFA20018 */  sw        $v0, 0x18($sp)
/* 2399C 8004859C AFA0001C */  sw        $zero, 0x1c($sp)
/* 239A0 800485A0 0C04C4FD */  jal       make_item_entity
/* 239A4 800485A4 AFA80014 */   sw       $t0, 0x14($sp)
/* 239A8 800485A8 44960000 */  mtc1      $s6, $f0
/* 239AC 800485AC 00000000 */  nop       
/* 239B0 800485B0 46800021 */  cvt.d.w   $f0, $f0
/* 239B4 800485B4 27DE0001 */  addiu     $fp, $fp, 1
/* 239B8 800485B8 2BC2000C */  slti      $v0, $fp, 0xc
/* 239BC 800485BC 3C01403E */  lui       $at, 0x403e
/* 239C0 800485C0 44811800 */  mtc1      $at, $f3
/* 239C4 800485C4 44801000 */  mtc1      $zero, $f2
/* 239C8 800485C8 8FA80024 */  lw        $t0, 0x24($sp)
/* 239CC 800485CC 46220000 */  add.d     $f0, $f0, $f2
/* 239D0 800485D0 25080002 */  addiu     $t0, $t0, 2
/* 239D4 800485D4 AFA80024 */  sw        $t0, 0x24($sp)
/* 239D8 800485D8 4620010D */  trunc.w.d $f4, $f0
/* 239DC 800485DC 44162000 */  mfc1      $s6, $f4
/* 239E0 800485E0 14400005 */  bnez      $v0, .L800485F8
/* 239E4 800485E4 0000882D */   daddu    $s1, $zero, $zero
/* 239E8 800485E8 26F70001 */  addiu     $s7, $s7, 1
/* 239EC 800485EC 0017B0C0 */  sll       $s6, $s7, 3
/* 239F0 800485F0 0000F02D */  daddu     $fp, $zero, $zero
.L800485F4:
/* 239F4 800485F4 0000882D */  daddu     $s1, $zero, $zero
.L800485F8:
/* 239F8 800485F8 0220902D */  daddu     $s2, $s1, $zero
/* 239FC 800485FC 24150006 */  addiu     $s5, $zero, 6
/* 23A00 80048600 24140004 */  addiu     $s4, $zero, 4
/* 23A04 80048604 8FB00020 */  lw        $s0, 0x20($sp)
/* 23A08 80048608 3C0146FF */  lui       $at, 0x46ff
/* 23A0C 8004860C 3421FE00 */  ori       $at, $at, 0xfe00
/* 23A10 80048610 4481D000 */  mtc1      $at, $f26
/* 23A14 80048614 3C0142C8 */  lui       $at, 0x42c8
/* 23A18 80048618 4481E000 */  mtc1      $at, $f28
/* 23A1C 8004861C 3C028011 */  lui       $v0, 0x8011
/* 23A20 80048620 8042F292 */  lb        $v0, -0xd6e($v0)
/* 23A24 80048624 3C038011 */  lui       $v1, 0x8011
/* 23A28 80048628 8063F293 */  lb        $v1, -0xd6d($v1)
/* 23A2C 8004862C 24130002 */  addiu     $s3, $zero, 2
/* 23A30 80048630 AFA00030 */  sw        $zero, 0x30($sp)
/* 23A34 80048634 44821000 */  mtc1      $v0, $f2
/* 23A38 80048638 00000000 */  nop       
/* 23A3C 8004863C 468010A0 */  cvt.s.w   $f2, $f2
/* 23A40 80048640 44830000 */  mtc1      $v1, $f0
/* 23A44 80048644 00000000 */  nop       
/* 23A48 80048648 46800020 */  cvt.s.w   $f0, $f0
/* 23A4C 8004864C 46001603 */  div.s     $f24, $f2, $f0
.L80048650:
/* 23A50 80048650 8FA80020 */  lw        $t0, 0x20($sp)
/* 23A54 80048654 86030032 */  lh        $v1, 0x32($s0)
/* 23A58 80048658 01131021 */  addu      $v0, $t0, $s3
/* 23A5C 8004865C 4483B000 */  mtc1      $v1, $f22
/* 23A60 80048660 00000000 */  nop       
/* 23A64 80048664 4680B5A0 */  cvt.s.w   $f22, $f22
/* 23A68 80048668 461AB583 */  div.s     $f22, $f22, $f26
/* 23A6C 8004866C 84420032 */  lh        $v0, 0x32($v0)
/* 23A70 80048670 4616C03E */  c.le.s    $f24, $f22
/* 23A74 80048674 4482A000 */  mtc1      $v0, $f20
/* 23A78 80048678 00000000 */  nop       
/* 23A7C 8004867C 4680A520 */  cvt.s.w   $f20, $f20
/* 23A80 80048680 45000034 */  bc1f      .L80048754
/* 23A84 80048684 461AA503 */   div.s    $f20, $f20, $f26
/* 23A88 80048688 0C00A67F */  jal       rand_int
/* 23A8C 8004868C 24040064 */   addiu    $a0, $zero, 0x64
/* 23A90 80048690 461CA082 */  mul.s     $f2, $f20, $f28
/* 23A94 80048694 00000000 */  nop       
/* 23A98 80048698 44820000 */  mtc1      $v0, $f0
/* 23A9C 8004869C 00000000 */  nop       
/* 23AA0 800486A0 46800020 */  cvt.s.w   $f0, $f0
/* 23AA4 800486A4 4602003E */  c.le.s    $f0, $f2
/* 23AA8 800486A8 00000000 */  nop       
/* 23AAC 800486AC 4502002A */  bc1fl     .L80048758
/* 23AB0 800486B0 26B50008 */   addiu    $s5, $s5, 8
/* 23AB4 800486B4 0000802D */  daddu     $s0, $zero, $zero
/* 23AB8 800486B8 8FA80020 */  lw        $t0, 0x20($sp)
/* 23ABC 800486BC 44900000 */  mtc1      $s0, $f0
/* 23AC0 800486C0 00000000 */  nop       
/* 23AC4 800486C4 46800020 */  cvt.s.w   $f0, $f0
/* 23AC8 800486C8 01141021 */  addu      $v0, $t0, $s4
/* 23ACC 800486CC 01151821 */  addu      $v1, $t0, $s5
/* 23AD0 800486D0 84420032 */  lh        $v0, 0x32($v0)
/* 23AD4 800486D4 84630032 */  lh        $v1, 0x32($v1)
/* 23AD8 800486D8 4482B000 */  mtc1      $v0, $f22
/* 23ADC 800486DC 00000000 */  nop       
/* 23AE0 800486E0 4680B5A0 */  cvt.s.w   $f22, $f22
/* 23AE4 800486E4 4483A000 */  mtc1      $v1, $f20
/* 23AE8 800486E8 00000000 */  nop       
/* 23AEC 800486EC 4680A520 */  cvt.s.w   $f20, $f20
/* 23AF0 800486F0 4616003C */  c.lt.s    $f0, $f22
/* 23AF4 800486F4 00000000 */  nop       
/* 23AF8 800486F8 4500001D */  bc1f      .L80048770
/* 23AFC 800486FC 461AA503 */   div.s    $f20, $f20, $f26
.L80048700:
/* 23B00 80048700 0C00A67F */  jal       rand_int
/* 23B04 80048704 24040064 */   addiu    $a0, $zero, 0x64
/* 23B08 80048708 461CA082 */  mul.s     $f2, $f20, $f28
/* 23B0C 8004870C 00000000 */  nop       
/* 23B10 80048710 44820000 */  mtc1      $v0, $f0
/* 23B14 80048714 00000000 */  nop       
/* 23B18 80048718 46800020 */  cvt.s.w   $f0, $f0
/* 23B1C 8004871C 4602003E */  c.le.s    $f0, $f2
/* 23B20 80048720 00000000 */  nop       
/* 23B24 80048724 45030001 */  bc1tl     .L8004872C
/* 23B28 80048728 26310001 */   addiu    $s1, $s1, 1
.L8004872C:
/* 23B2C 8004872C 26100001 */  addiu     $s0, $s0, 1
/* 23B30 80048730 44900000 */  mtc1      $s0, $f0
/* 23B34 80048734 00000000 */  nop       
/* 23B38 80048738 46800020 */  cvt.s.w   $f0, $f0
/* 23B3C 8004873C 4616003C */  c.lt.s    $f0, $f22
/* 23B40 80048740 00000000 */  nop       
/* 23B44 80048744 4500000A */  bc1f      .L80048770
/* 23B48 80048748 00000000 */   nop      
/* 23B4C 8004874C 080121C0 */  j         .L80048700
/* 23B50 80048750 00000000 */   nop      
.L80048754:
/* 23B54 80048754 26B50008 */  addiu     $s5, $s5, 8
.L80048758:
/* 23B58 80048758 26940008 */  addiu     $s4, $s4, 8
/* 23B5C 8004875C 26730008 */  addiu     $s3, $s3, 8
/* 23B60 80048760 26520001 */  addiu     $s2, $s2, 1
/* 23B64 80048764 2A420008 */  slti      $v0, $s2, 8
/* 23B68 80048768 1440FFB9 */  bnez      $v0, .L80048650
/* 23B6C 8004876C 26100008 */   addiu    $s0, $s0, 8
.L80048770:
/* 23B70 80048770 0C03A752 */  jal       is_ability_active
/* 23B74 80048774 2404002B */   addiu    $a0, $zero, 0x2b
/* 23B78 80048778 10400005 */  beqz      $v0, .L80048790
/* 23B7C 8004877C 00000000 */   nop      
/* 23B80 80048780 0C00A67F */  jal       rand_int
/* 23B84 80048784 24040002 */   addiu    $a0, $zero, 2
/* 23B88 80048788 26230001 */  addiu     $v1, $s1, 1
/* 23B8C 8004878C 00628821 */  addu      $s1, $v1, $v0
.L80048790:
/* 23B90 80048790 8FA80098 */  lw        $t0, 0x98($sp)
/* 23B94 80048794 8D020000 */  lw        $v0, ($t0)
/* 23B98 80048798 3C030080 */  lui       $v1, 0x80
/* 23B9C 8004879C 00431024 */  and       $v0, $v0, $v1
/* 23BA0 800487A0 54400001 */  bnel      $v0, $zero, .L800487A8
/* 23BA4 800487A4 0000882D */   daddu    $s1, $zero, $zero
.L800487A8:
/* 23BA8 800487A8 12200002 */  beqz      $s1, .L800487B4
/* 23BAC 800487AC 24080156 */   addiu    $t0, $zero, 0x156
/* 23BB0 800487B0 AFA80030 */  sw        $t0, 0x30($sp)
.L800487B4:
/* 23BB4 800487B4 8FA80028 */  lw        $t0, 0x28($sp)
/* 23BB8 800487B8 00111040 */  sll       $v0, $s1, 1
/* 23BBC 800487BC 0102102A */  slt       $v0, $t0, $v0
/* 23BC0 800487C0 10400004 */  beqz      $v0, .L800487D4
/* 23BC4 800487C4 000817C2 */   srl      $v0, $t0, 0x1f
/* 23BC8 800487C8 01021021 */  addu      $v0, $t0, $v0
/* 23BCC 800487CC 00028843 */  sra       $s1, $v0, 1
/* 23BD0 800487D0 8FA80028 */  lw        $t0, 0x28($sp)
.L800487D4:
/* 23BD4 800487D4 00111040 */  sll       $v0, $s1, 1
/* 23BD8 800487D8 01024023 */  subu      $t0, $t0, $v0
/* 23BDC 800487DC AFA80028 */  sw        $t0, 0x28($sp)
/* 23BE0 800487E0 8FA8002C */  lw        $t0, 0x2c($sp)
/* 23BE4 800487E4 0111102A */  slt       $v0, $t0, $s1
/* 23BE8 800487E8 54400002 */  bnel      $v0, $zero, .L800487F4
/* 23BEC 800487EC 0100882D */   daddu    $s1, $t0, $zero
/* 23BF0 800487F0 8FA8002C */  lw        $t0, 0x2c($sp)
.L800487F4:
/* 23BF4 800487F4 0000902D */  daddu     $s2, $zero, $zero
/* 23BF8 800487F8 01114023 */  subu      $t0, $t0, $s1
/* 23BFC 800487FC 1A200029 */  blez      $s1, .L800488A4
/* 23C00 80048800 AFA8002C */   sw       $t0, 0x2c($sp)
/* 23C04 80048804 24130004 */  addiu     $s3, $zero, 4
/* 23C08 80048808 3C01403E */  lui       $at, 0x403e
/* 23C0C 8004880C 4481A800 */  mtc1      $at, $f21
/* 23C10 80048810 4480A000 */  mtc1      $zero, $f20
/* 23C14 80048814 00171840 */  sll       $v1, $s7, 1
/* 23C18 80048818 00771821 */  addu      $v1, $v1, $s7
/* 23C1C 8004881C 02631004 */  sllv      $v0, $v1, $s3
/* 23C20 80048820 00431023 */  subu      $v0, $v0, $v1
/* 23C24 80048824 000280C0 */  sll       $s0, $v0, 3
.L80048828:
/* 23C28 80048828 8FA50034 */  lw        $a1, 0x34($sp)
/* 23C2C 8004882C 8FA60038 */  lw        $a2, 0x38($sp)
/* 23C30 80048830 4407F000 */  mfc1      $a3, $f30
/* 23C34 80048834 8FA40030 */  lw        $a0, 0x30($sp)
/* 23C38 80048838 8FA80024 */  lw        $t0, 0x24($sp)
/* 23C3C 8004883C 02D01021 */  addu      $v0, $s6, $s0
/* 23C40 80048840 AFB30010 */  sw        $s3, 0x10($sp)
/* 23C44 80048844 AFA20018 */  sw        $v0, 0x18($sp)
/* 23C48 80048848 AFA0001C */  sw        $zero, 0x1c($sp)
/* 23C4C 8004884C 0C04C4FD */  jal       make_item_entity
/* 23C50 80048850 AFA80014 */   sw       $t0, 0x14($sp)
/* 23C54 80048854 44960000 */  mtc1      $s6, $f0
/* 23C58 80048858 00000000 */  nop       
/* 23C5C 8004885C 46800021 */  cvt.d.w   $f0, $f0
/* 23C60 80048860 27DE0001 */  addiu     $fp, $fp, 1
/* 23C64 80048864 2BC2000C */  slti      $v0, $fp, 0xc
/* 23C68 80048868 8FA80024 */  lw        $t0, 0x24($sp)
/* 23C6C 8004886C 46340000 */  add.d     $f0, $f0, $f20
/* 23C70 80048870 25080002 */  addiu     $t0, $t0, 2
/* 23C74 80048874 AFA80024 */  sw        $t0, 0x24($sp)
/* 23C78 80048878 4620010D */  trunc.w.d $f4, $f0
/* 23C7C 8004887C 44162000 */  mfc1      $s6, $f4
/* 23C80 80048880 14400005 */  bnez      $v0, .L80048898
/* 23C84 80048884 26520001 */   addiu    $s2, $s2, 1
/* 23C88 80048888 0000F02D */  daddu     $fp, $zero, $zero
/* 23C8C 8004888C 26100168 */  addiu     $s0, $s0, 0x168
/* 23C90 80048890 26F70001 */  addiu     $s7, $s7, 1
/* 23C94 80048894 0017B0C0 */  sll       $s6, $s7, 3
.L80048898:
/* 23C98 80048898 0251102A */  slt       $v0, $s2, $s1
/* 23C9C 8004889C 1440FFE2 */  bnez      $v0, .L80048828
/* 23CA0 800488A0 00000000 */   nop      
.L800488A4:
/* 23CA4 800488A4 0000882D */  daddu     $s1, $zero, $zero
/* 23CA8 800488A8 0220902D */  daddu     $s2, $s1, $zero
/* 23CAC 800488AC 24150006 */  addiu     $s5, $zero, 6
/* 23CB0 800488B0 24140004 */  addiu     $s4, $zero, 4
/* 23CB4 800488B4 8FB00020 */  lw        $s0, 0x20($sp)
/* 23CB8 800488B8 3C0146FF */  lui       $at, 0x46ff
/* 23CBC 800488BC 3421FE00 */  ori       $at, $at, 0xfe00
/* 23CC0 800488C0 4481D000 */  mtc1      $at, $f26
/* 23CC4 800488C4 3C0142C8 */  lui       $at, 0x42c8
/* 23CC8 800488C8 4481E000 */  mtc1      $at, $f28
/* 23CCC 800488CC 3C028011 */  lui       $v0, 0x8011
/* 23CD0 800488D0 8042F295 */  lb        $v0, -0xd6b($v0)
/* 23CD4 800488D4 3C038011 */  lui       $v1, 0x8011
/* 23CD8 800488D8 8063F296 */  lb        $v1, -0xd6a($v1)
/* 23CDC 800488DC 24130002 */  addiu     $s3, $zero, 2
/* 23CE0 800488E0 AFA00030 */  sw        $zero, 0x30($sp)
/* 23CE4 800488E4 44821000 */  mtc1      $v0, $f2
/* 23CE8 800488E8 00000000 */  nop       
/* 23CEC 800488EC 468010A0 */  cvt.s.w   $f2, $f2
/* 23CF0 800488F0 44830000 */  mtc1      $v1, $f0
/* 23CF4 800488F4 00000000 */  nop       
/* 23CF8 800488F8 46800020 */  cvt.s.w   $f0, $f0
/* 23CFC 800488FC 46001603 */  div.s     $f24, $f2, $f0
.L80048900:
/* 23D00 80048900 8FA80020 */  lw        $t0, 0x20($sp)
/* 23D04 80048904 86030072 */  lh        $v1, 0x72($s0)
/* 23D08 80048908 01131021 */  addu      $v0, $t0, $s3
/* 23D0C 8004890C 4483B000 */  mtc1      $v1, $f22
/* 23D10 80048910 00000000 */  nop       
/* 23D14 80048914 4680B5A0 */  cvt.s.w   $f22, $f22
/* 23D18 80048918 461AB583 */  div.s     $f22, $f22, $f26
/* 23D1C 8004891C 84420072 */  lh        $v0, 0x72($v0)
/* 23D20 80048920 4616C03E */  c.le.s    $f24, $f22
/* 23D24 80048924 4482A000 */  mtc1      $v0, $f20
/* 23D28 80048928 00000000 */  nop       
/* 23D2C 8004892C 4680A520 */  cvt.s.w   $f20, $f20
/* 23D30 80048930 45000034 */  bc1f      .L80048A04
/* 23D34 80048934 461AA503 */   div.s    $f20, $f20, $f26
/* 23D38 80048938 0C00A67F */  jal       rand_int
/* 23D3C 8004893C 24040064 */   addiu    $a0, $zero, 0x64
/* 23D40 80048940 461CA082 */  mul.s     $f2, $f20, $f28
/* 23D44 80048944 00000000 */  nop       
/* 23D48 80048948 44820000 */  mtc1      $v0, $f0
/* 23D4C 8004894C 00000000 */  nop       
/* 23D50 80048950 46800020 */  cvt.s.w   $f0, $f0
/* 23D54 80048954 4602003E */  c.le.s    $f0, $f2
/* 23D58 80048958 00000000 */  nop       
/* 23D5C 8004895C 4502002A */  bc1fl     .L80048A08
/* 23D60 80048960 26B50008 */   addiu    $s5, $s5, 8
/* 23D64 80048964 0000802D */  daddu     $s0, $zero, $zero
/* 23D68 80048968 8FA80020 */  lw        $t0, 0x20($sp)
/* 23D6C 8004896C 44900000 */  mtc1      $s0, $f0
/* 23D70 80048970 00000000 */  nop       
/* 23D74 80048974 46800020 */  cvt.s.w   $f0, $f0
/* 23D78 80048978 01141021 */  addu      $v0, $t0, $s4
/* 23D7C 8004897C 01151821 */  addu      $v1, $t0, $s5
/* 23D80 80048980 84420072 */  lh        $v0, 0x72($v0)
/* 23D84 80048984 84630072 */  lh        $v1, 0x72($v1)
/* 23D88 80048988 4482B000 */  mtc1      $v0, $f22
/* 23D8C 8004898C 00000000 */  nop       
/* 23D90 80048990 4680B5A0 */  cvt.s.w   $f22, $f22
/* 23D94 80048994 4483A000 */  mtc1      $v1, $f20
/* 23D98 80048998 00000000 */  nop       
/* 23D9C 8004899C 4680A520 */  cvt.s.w   $f20, $f20
/* 23DA0 800489A0 4616003C */  c.lt.s    $f0, $f22
/* 23DA4 800489A4 00000000 */  nop       
/* 23DA8 800489A8 4500001D */  bc1f      .L80048A20
/* 23DAC 800489AC 461AA503 */   div.s    $f20, $f20, $f26
.L800489B0:
/* 23DB0 800489B0 0C00A67F */  jal       rand_int
/* 23DB4 800489B4 24040064 */   addiu    $a0, $zero, 0x64
/* 23DB8 800489B8 461CA082 */  mul.s     $f2, $f20, $f28
/* 23DBC 800489BC 00000000 */  nop       
/* 23DC0 800489C0 44820000 */  mtc1      $v0, $f0
/* 23DC4 800489C4 00000000 */  nop       
/* 23DC8 800489C8 46800020 */  cvt.s.w   $f0, $f0
/* 23DCC 800489CC 4602003E */  c.le.s    $f0, $f2
/* 23DD0 800489D0 00000000 */  nop       
/* 23DD4 800489D4 45030001 */  bc1tl     .L800489DC
/* 23DD8 800489D8 26310001 */   addiu    $s1, $s1, 1
.L800489DC:
/* 23DDC 800489DC 26100001 */  addiu     $s0, $s0, 1
/* 23DE0 800489E0 44900000 */  mtc1      $s0, $f0
/* 23DE4 800489E4 00000000 */  nop       
/* 23DE8 800489E8 46800020 */  cvt.s.w   $f0, $f0
/* 23DEC 800489EC 4616003C */  c.lt.s    $f0, $f22
/* 23DF0 800489F0 00000000 */  nop       
/* 23DF4 800489F4 4500000A */  bc1f      .L80048A20
/* 23DF8 800489F8 00000000 */   nop      
/* 23DFC 800489FC 0801226C */  j         .L800489B0
/* 23E00 80048A00 00000000 */   nop      
.L80048A04:
/* 23E04 80048A04 26B50008 */  addiu     $s5, $s5, 8
.L80048A08:
/* 23E08 80048A08 26940008 */  addiu     $s4, $s4, 8
/* 23E0C 80048A0C 26730008 */  addiu     $s3, $s3, 8
/* 23E10 80048A10 26520001 */  addiu     $s2, $s2, 1
/* 23E14 80048A14 2A420008 */  slti      $v0, $s2, 8
/* 23E18 80048A18 1440FFB9 */  bnez      $v0, .L80048900
/* 23E1C 80048A1C 26100008 */   addiu    $s0, $s0, 8
.L80048A20:
/* 23E20 80048A20 0C03A752 */  jal       is_ability_active
/* 23E24 80048A24 2404002C */   addiu    $a0, $zero, 0x2c
/* 23E28 80048A28 10400005 */  beqz      $v0, .L80048A40
/* 23E2C 80048A2C 00000000 */   nop      
/* 23E30 80048A30 0C00A67F */  jal       rand_int
/* 23E34 80048A34 24040002 */   addiu    $a0, $zero, 2
/* 23E38 80048A38 26230001 */  addiu     $v1, $s1, 1
/* 23E3C 80048A3C 00628821 */  addu      $s1, $v1, $v0
.L80048A40:
/* 23E40 80048A40 8FA80098 */  lw        $t0, 0x98($sp)
/* 23E44 80048A44 8D020000 */  lw        $v0, ($t0)
/* 23E48 80048A48 3C030080 */  lui       $v1, 0x80
/* 23E4C 80048A4C 00431024 */  and       $v0, $v0, $v1
/* 23E50 80048A50 54400001 */  bnel      $v0, $zero, .L80048A58
/* 23E54 80048A54 0000882D */   daddu    $s1, $zero, $zero
.L80048A58:
/* 23E58 80048A58 12200002 */  beqz      $s1, .L80048A64
/* 23E5C 80048A5C 2408015B */   addiu    $t0, $zero, 0x15b
/* 23E60 80048A60 AFA80030 */  sw        $t0, 0x30($sp)
.L80048A64:
/* 23E64 80048A64 8FA80028 */  lw        $t0, 0x28($sp)
/* 23E68 80048A68 00111040 */  sll       $v0, $s1, 1
/* 23E6C 80048A6C 0102102A */  slt       $v0, $t0, $v0
/* 23E70 80048A70 10400004 */  beqz      $v0, .L80048A84
/* 23E74 80048A74 000817C2 */   srl      $v0, $t0, 0x1f
/* 23E78 80048A78 01021021 */  addu      $v0, $t0, $v0
/* 23E7C 80048A7C 00028843 */  sra       $s1, $v0, 1
/* 23E80 80048A80 8FA80028 */  lw        $t0, 0x28($sp)
.L80048A84:
/* 23E84 80048A84 00111040 */  sll       $v0, $s1, 1
/* 23E88 80048A88 01024023 */  subu      $t0, $t0, $v0
/* 23E8C 80048A8C AFA80028 */  sw        $t0, 0x28($sp)
/* 23E90 80048A90 8FA8002C */  lw        $t0, 0x2c($sp)
/* 23E94 80048A94 0111102A */  slt       $v0, $t0, $s1
/* 23E98 80048A98 54400002 */  bnel      $v0, $zero, .L80048AA4
/* 23E9C 80048A9C 0100882D */   daddu    $s1, $t0, $zero
/* 23EA0 80048AA0 8FA8002C */  lw        $t0, 0x2c($sp)
.L80048AA4:
/* 23EA4 80048AA4 0000902D */  daddu     $s2, $zero, $zero
/* 23EA8 80048AA8 01114023 */  subu      $t0, $t0, $s1
/* 23EAC 80048AAC 1A200029 */  blez      $s1, .L80048B54
/* 23EB0 80048AB0 AFA8002C */   sw       $t0, 0x2c($sp)
/* 23EB4 80048AB4 24130004 */  addiu     $s3, $zero, 4
/* 23EB8 80048AB8 3C01403E */  lui       $at, 0x403e
/* 23EBC 80048ABC 4481A800 */  mtc1      $at, $f21
/* 23EC0 80048AC0 4480A000 */  mtc1      $zero, $f20
/* 23EC4 80048AC4 00171840 */  sll       $v1, $s7, 1
/* 23EC8 80048AC8 00771821 */  addu      $v1, $v1, $s7
/* 23ECC 80048ACC 02631004 */  sllv      $v0, $v1, $s3
/* 23ED0 80048AD0 00431023 */  subu      $v0, $v0, $v1
/* 23ED4 80048AD4 000280C0 */  sll       $s0, $v0, 3
.L80048AD8:
/* 23ED8 80048AD8 8FA50034 */  lw        $a1, 0x34($sp)
/* 23EDC 80048ADC 8FA60038 */  lw        $a2, 0x38($sp)
/* 23EE0 80048AE0 4407F000 */  mfc1      $a3, $f30
/* 23EE4 80048AE4 8FA40030 */  lw        $a0, 0x30($sp)
/* 23EE8 80048AE8 8FA80024 */  lw        $t0, 0x24($sp)
/* 23EEC 80048AEC 02D01021 */  addu      $v0, $s6, $s0
/* 23EF0 80048AF0 AFB30010 */  sw        $s3, 0x10($sp)
/* 23EF4 80048AF4 AFA20018 */  sw        $v0, 0x18($sp)
/* 23EF8 80048AF8 AFA0001C */  sw        $zero, 0x1c($sp)
/* 23EFC 80048AFC 0C04C4FD */  jal       make_item_entity
/* 23F00 80048B00 AFA80014 */   sw       $t0, 0x14($sp)
/* 23F04 80048B04 44960000 */  mtc1      $s6, $f0
/* 23F08 80048B08 00000000 */  nop       
/* 23F0C 80048B0C 46800021 */  cvt.d.w   $f0, $f0
/* 23F10 80048B10 27DE0001 */  addiu     $fp, $fp, 1
/* 23F14 80048B14 2BC2000C */  slti      $v0, $fp, 0xc
/* 23F18 80048B18 8FA80024 */  lw        $t0, 0x24($sp)
/* 23F1C 80048B1C 46340000 */  add.d     $f0, $f0, $f20
/* 23F20 80048B20 25080002 */  addiu     $t0, $t0, 2
/* 23F24 80048B24 AFA80024 */  sw        $t0, 0x24($sp)
/* 23F28 80048B28 4620010D */  trunc.w.d $f4, $f0
/* 23F2C 80048B2C 44162000 */  mfc1      $s6, $f4
/* 23F30 80048B30 14400005 */  bnez      $v0, .L80048B48
/* 23F34 80048B34 26520001 */   addiu    $s2, $s2, 1
/* 23F38 80048B38 0000F02D */  daddu     $fp, $zero, $zero
/* 23F3C 80048B3C 26100168 */  addiu     $s0, $s0, 0x168
/* 23F40 80048B40 26F70001 */  addiu     $s7, $s7, 1
/* 23F44 80048B44 0017B0C0 */  sll       $s6, $s7, 3
.L80048B48:
/* 23F48 80048B48 0251102A */  slt       $v0, $s2, $s1
/* 23F4C 80048B4C 1440FFE2 */  bnez      $v0, .L80048AD8
/* 23F50 80048B50 00000000 */   nop      
.L80048B54:
/* 23F54 80048B54 24080157 */  addiu     $t0, $zero, 0x157
/* 23F58 80048B58 AFA80030 */  sw        $t0, 0x30($sp)
/* 23F5C 80048B5C 8FA80020 */  lw        $t0, 0x20($sp)
/* 23F60 80048B60 851000B2 */  lh        $s0, 0xb2($t0)
/* 23F64 80048B64 850400B4 */  lh        $a0, 0xb4($t0)
/* 23F68 80048B68 0090102A */  slt       $v0, $a0, $s0
/* 23F6C 80048B6C 10400003 */  beqz      $v0, .L80048B7C
/* 23F70 80048B70 0200882D */   daddu    $s1, $s0, $zero
/* 23F74 80048B74 0080802D */  daddu     $s0, $a0, $zero
/* 23F78 80048B78 0220202D */  daddu     $a0, $s1, $zero
.L80048B7C:
/* 23F7C 80048B7C 06010003 */  bgez      $s0, .L80048B8C
/* 23F80 80048B80 00908823 */   subu     $s1, $a0, $s0
/* 23F84 80048B84 080122E5 */  j         .L80048B94
/* 23F88 80048B88 00902023 */   subu     $a0, $a0, $s0
.L80048B8C:
/* 23F8C 80048B8C 12200005 */  beqz      $s1, .L80048BA4
/* 23F90 80048B90 0220202D */   daddu    $a0, $s1, $zero
.L80048B94:
/* 23F94 80048B94 0C00A67F */  jal       rand_int
/* 23F98 80048B98 00000000 */   nop      
/* 23F9C 80048B9C 080122EA */  j         .L80048BA8
/* 23FA0 80048BA0 00508821 */   addu     $s1, $v0, $s0
.L80048BA4:
/* 23FA4 80048BA4 0200882D */  daddu     $s1, $s0, $zero
.L80048BA8:
/* 23FA8 80048BA8 06220001 */  bltzl     $s1, .L80048BB0
/* 23FAC 80048BAC 0000882D */   daddu    $s1, $zero, $zero
.L80048BB0:
/* 23FB0 80048BB0 3C02800B */  lui       $v0, 0x800b
/* 23FB4 80048BB4 84420F1E */  lh        $v0, 0xf1e($v0)
/* 23FB8 80048BB8 24040019 */  addiu     $a0, $zero, 0x19
/* 23FBC 80048BBC 0C03A752 */  jal       is_ability_active
/* 23FC0 80048BC0 02228821 */   addu     $s1, $s1, $v0
/* 23FC4 80048BC4 10400007 */  beqz      $v0, .L80048BE4
/* 23FC8 80048BC8 00000000 */   nop      
/* 23FCC 80048BCC 3C02800B */  lui       $v0, 0x800b
/* 23FD0 80048BD0 90420F1C */  lbu       $v0, 0xf1c($v0)
/* 23FD4 80048BD4 3C01800B */  lui       $at, 0x800b
/* 23FD8 80048BD8 A0200F1C */  sb        $zero, 0xf1c($at)
/* 23FDC 80048BDC 00021042 */  srl       $v0, $v0, 1
/* 23FE0 80048BE0 02228821 */  addu      $s1, $s1, $v0
.L80048BE4:
/* 23FE4 80048BE4 3C02800B */  lui       $v0, 0x800b
/* 23FE8 80048BE8 80420F1B */  lb        $v0, 0xf1b($v0)
/* 23FEC 80048BEC 10400004 */  beqz      $v0, .L80048C00
/* 23FF0 80048BF0 00111040 */   sll      $v0, $s1, 1
/* 23FF4 80048BF4 3C01800B */  lui       $at, 0x800b
/* 23FF8 80048BF8 A0200F1B */  sb        $zero, 0xf1b($at)
/* 23FFC 80048BFC 02228821 */  addu      $s1, $s1, $v0
.L80048C00:
/* 24000 80048C00 0C03A752 */  jal       is_ability_active
/* 24004 80048C04 24040010 */   addiu    $a0, $zero, 0x10
/* 24008 80048C08 54400001 */  bnel      $v0, $zero, .L80048C10
/* 2400C 80048C0C 00118840 */   sll      $s1, $s1, 1
.L80048C10:
/* 24010 80048C10 2A220015 */  slti      $v0, $s1, 0x15
/* 24014 80048C14 50400001 */  beql      $v0, $zero, .L80048C1C
/* 24018 80048C18 24110014 */   addiu    $s1, $zero, 0x14
.L80048C1C:
/* 2401C 80048C1C 8FA80098 */  lw        $t0, 0x98($sp)
/* 24020 80048C20 8D020000 */  lw        $v0, ($t0)
/* 24024 80048C24 3C030080 */  lui       $v1, 0x80
/* 24028 80048C28 00431024 */  and       $v0, $v0, $v1
/* 2402C 80048C2C 54400001 */  bnel      $v0, $zero, .L80048C34
/* 24030 80048C30 0000882D */   daddu    $s1, $zero, $zero
.L80048C34:
/* 24034 80048C34 8FA80028 */  lw        $t0, 0x28($sp)
/* 24038 80048C38 00111040 */  sll       $v0, $s1, 1
/* 2403C 80048C3C 0102102A */  slt       $v0, $t0, $v0
/* 24040 80048C40 10400003 */  beqz      $v0, .L80048C50
/* 24044 80048C44 000817C2 */   srl      $v0, $t0, 0x1f
/* 24048 80048C48 01021021 */  addu      $v0, $t0, $v0
/* 2404C 80048C4C 00028843 */  sra       $s1, $v0, 1
.L80048C50:
/* 24050 80048C50 8FA8002C */  lw        $t0, 0x2c($sp)
/* 24054 80048C54 0111102A */  slt       $v0, $t0, $s1
/* 24058 80048C58 54400001 */  bnel      $v0, $zero, .L80048C60
/* 2405C 80048C5C 0100882D */   daddu    $s1, $t0, $zero
.L80048C60:
/* 24060 80048C60 1A200029 */  blez      $s1, .L80048D08
/* 24064 80048C64 0000902D */   daddu    $s2, $zero, $zero
/* 24068 80048C68 24130004 */  addiu     $s3, $zero, 4
/* 2406C 80048C6C 3C01403E */  lui       $at, 0x403e
/* 24070 80048C70 4481A800 */  mtc1      $at, $f21
/* 24074 80048C74 4480A000 */  mtc1      $zero, $f20
/* 24078 80048C78 00171840 */  sll       $v1, $s7, 1
/* 2407C 80048C7C 00771821 */  addu      $v1, $v1, $s7
/* 24080 80048C80 02631004 */  sllv      $v0, $v1, $s3
/* 24084 80048C84 00431023 */  subu      $v0, $v0, $v1
/* 24088 80048C88 000280C0 */  sll       $s0, $v0, 3
.L80048C8C:
/* 2408C 80048C8C 8FA50034 */  lw        $a1, 0x34($sp)
/* 24090 80048C90 8FA60038 */  lw        $a2, 0x38($sp)
/* 24094 80048C94 4407F000 */  mfc1      $a3, $f30
/* 24098 80048C98 8FA40030 */  lw        $a0, 0x30($sp)
/* 2409C 80048C9C 8FA80024 */  lw        $t0, 0x24($sp)
/* 240A0 80048CA0 02D01021 */  addu      $v0, $s6, $s0
/* 240A4 80048CA4 AFB30010 */  sw        $s3, 0x10($sp)
/* 240A8 80048CA8 AFA20018 */  sw        $v0, 0x18($sp)
/* 240AC 80048CAC AFA0001C */  sw        $zero, 0x1c($sp)
/* 240B0 80048CB0 0C04C4FD */  jal       make_item_entity
/* 240B4 80048CB4 AFA80014 */   sw       $t0, 0x14($sp)
/* 240B8 80048CB8 44960000 */  mtc1      $s6, $f0
/* 240BC 80048CBC 00000000 */  nop       
/* 240C0 80048CC0 46800021 */  cvt.d.w   $f0, $f0
/* 240C4 80048CC4 27DE0001 */  addiu     $fp, $fp, 1
/* 240C8 80048CC8 2BC2000C */  slti      $v0, $fp, 0xc
/* 240CC 80048CCC 8FA80024 */  lw        $t0, 0x24($sp)
/* 240D0 80048CD0 46340000 */  add.d     $f0, $f0, $f20
/* 240D4 80048CD4 25080002 */  addiu     $t0, $t0, 2
/* 240D8 80048CD8 AFA80024 */  sw        $t0, 0x24($sp)
/* 240DC 80048CDC 4620010D */  trunc.w.d $f4, $f0
/* 240E0 80048CE0 44162000 */  mfc1      $s6, $f4
/* 240E4 80048CE4 14400005 */  bnez      $v0, .L80048CFC
/* 240E8 80048CE8 26520001 */   addiu    $s2, $s2, 1
/* 240EC 80048CEC 0000F02D */  daddu     $fp, $zero, $zero
/* 240F0 80048CF0 26100168 */  addiu     $s0, $s0, 0x168
/* 240F4 80048CF4 26F70001 */  addiu     $s7, $s7, 1
/* 240F8 80048CF8 0017B0C0 */  sll       $s6, $s7, 3
.L80048CFC:
/* 240FC 80048CFC 0251102A */  slt       $v0, $s2, $s1
/* 24100 80048D00 1440FFE2 */  bnez      $v0, .L80048C8C
/* 24104 80048D04 00000000 */   nop      
.L80048D08:
/* 24108 80048D08 8FBF0064 */  lw        $ra, 0x64($sp)
/* 2410C 80048D0C 8FBE0060 */  lw        $fp, 0x60($sp)
/* 24110 80048D10 8FB7005C */  lw        $s7, 0x5c($sp)
/* 24114 80048D14 8FB60058 */  lw        $s6, 0x58($sp)
/* 24118 80048D18 8FB50054 */  lw        $s5, 0x54($sp)
/* 2411C 80048D1C 8FB40050 */  lw        $s4, 0x50($sp)
/* 24120 80048D20 8FB3004C */  lw        $s3, 0x4c($sp)
/* 24124 80048D24 8FB20048 */  lw        $s2, 0x48($sp)
/* 24128 80048D28 8FB10044 */  lw        $s1, 0x44($sp)
/* 2412C 80048D2C 8FB00040 */  lw        $s0, 0x40($sp)
/* 24130 80048D30 D7BE0090 */  ldc1      $f30, 0x90($sp)
/* 24134 80048D34 D7BC0088 */  ldc1      $f28, 0x88($sp)
/* 24138 80048D38 D7BA0080 */  ldc1      $f26, 0x80($sp)
/* 2413C 80048D3C D7B80078 */  ldc1      $f24, 0x78($sp)
/* 24140 80048D40 D7B60070 */  ldc1      $f22, 0x70($sp)
/* 24144 80048D44 D7B40068 */  ldc1      $f20, 0x68($sp)
/* 24148 80048D48 03E00008 */  jr        $ra
/* 2414C 80048D4C 27BD0098 */   addiu    $sp, $sp, 0x98
