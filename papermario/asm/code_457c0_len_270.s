
.section .text8006A3C0, "ax"

func_8006A3C0:
/* 0457C0 8006A3C0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0457C4 8006A3C4 8FA20058 */  lw    $v0, 0x58($sp)
/* 0457C8 8006A3C8 AFB40030 */  sw    $s4, 0x30($sp)
/* 0457CC 8006A3CC 0080A021 */  move  $s4, $a0
/* 0457D0 8006A3D0 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0457D4 8006A3D4 00A09821 */  move  $s3, $a1
/* 0457D8 8006A3D8 AFB50034 */  sw    $s5, 0x34($sp)
/* 0457DC 8006A3DC 24150002 */  addiu $s5, $zero, 2
/* 0457E0 8006A3E0 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0457E4 8006A3E4 00E0B821 */  move  $s7, $a3
/* 0457E8 8006A3E8 AFB00020 */  sw    $s0, 0x20($sp)
/* 0457EC 8006A3EC 00C08021 */  move  $s0, $a2
/* 0457F0 8006A3F0 3204FFFF */  andi  $a0, $s0, 0xffff
/* 0457F4 8006A3F4 2C830007 */  sltiu $v1, $a0, 7
/* 0457F8 8006A3F8 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0457FC 8006A3FC AFBE0040 */  sw    $fp, 0x40($sp)
/* 045800 8006A400 AFB60038 */  sw    $s6, 0x38($sp)
/* 045804 8006A404 AFB20028 */  sw    $s2, 0x28($sp)
/* 045808 8006A408 38420001 */  xori  $v0, $v0, 1
/* 04580C 8006A40C 0002102B */  sltu  $v0, $zero, $v0
/* 045810 8006A410 00431024 */  and   $v0, $v0, $v1
/* 045814 8006A414 10400003 */  beqz  $v0, .L8006A424
/* 045818 8006A418 AFB10024 */   sw    $s1, 0x24($sp)
/* 04581C 8006A41C 1480005D */  bnez  $a0, .L8006A594
/* 045820 8006A420 00001021 */   move  $v0, $zero
.L8006A424:
/* 045824 8006A424 0C019771 */  jal   func_80065DC4
/* 045828 8006A428 241E0003 */   addiu $fp, $zero, 3
/* 04582C 8006A42C 3216FFFF */  andi  $s6, $s0, 0xffff
/* 045830 8006A430 00108140 */  sll   $s0, $s0, 5
/* 045834 8006A434 AFB00014 */  sw    $s0, 0x14($sp)
.L8006A438:
/* 045838 8006A438 3C02800A */  lui   $v0, 0x800a
/* 04583C 8006A43C 9042A61C */  lbu   $v0, -0x59e4($v0)
/* 045840 8006A440 3C10800E */  lui   $s0, 0x800e
/* 045844 8006A444 145E0005 */  bne   $v0, $fp, .L8006A45C
/* 045848 8006A448 2610A000 */   addiu $s0, $s0, -0x6000
/* 04584C 8006A44C 3C028009 */  lui   $v0, 0x8009
/* 045850 8006A450 8C4258E0 */  lw    $v0, 0x58e0($v0)
/* 045854 8006A454 5053001A */  beql  $v0, $s3, .L8006A4C0
/* 045858 8006A458 02708021 */   addu  $s0, $s3, $s0
.L8006A45C:
/* 04585C 8006A45C 3C01800A */  lui   $at, 0x800a
/* 045860 8006A460 A03EA61C */  sb    $fp, -0x59e4($at)
/* 045864 8006A464 3C018009 */  lui   $at, 0x8009
/* 045868 8006A468 AC3358E0 */  sw    $s3, 0x58e0($at)
/* 04586C 8006A46C 1A600006 */  blez  $s3, .L8006A488
/* 045870 8006A470 00001821 */   move  $v1, $zero
.L8006A474:
/* 045874 8006A474 A2000000 */  sb    $zero, ($s0)
/* 045878 8006A478 24630001 */  addiu $v1, $v1, 1
/* 04587C 8006A47C 0073102A */  slt   $v0, $v1, $s3
/* 045880 8006A480 1440FFFC */  bnez  $v0, .L8006A474
/* 045884 8006A484 26100001 */   addiu $s0, $s0, 1
.L8006A488:
/* 045888 8006A488 24080001 */  addiu $t0, $zero, 1
/* 04588C 8006A48C 3C01800E */  lui   $at, 0x800e
/* 045890 8006A490 AC28A03C */  sw    $t0, -0x5fc4($at)
/* 045894 8006A494 240800FF */  addiu $t0, $zero, 0xff
/* 045898 8006A498 24020023 */  addiu $v0, $zero, 0x23
/* 04589C 8006A49C A2080000 */  sb    $t0, ($s0)
/* 0458A0 8006A4A0 24080001 */  addiu $t0, $zero, 1
/* 0458A4 8006A4A4 A2080002 */  sb    $t0, 2($s0)
/* 0458A8 8006A4A8 240800FF */  addiu $t0, $zero, 0xff
/* 0458AC 8006A4AC A2020001 */  sb    $v0, 1($s0)
/* 0458B0 8006A4B0 240200FE */  addiu $v0, $zero, 0xfe
/* 0458B4 8006A4B4 A21E0003 */  sb    $fp, 3($s0)
/* 0458B8 8006A4B8 A2080026 */  sb    $t0, 0x26($s0)
/* 0458BC 8006A4BC A2020027 */  sb    $v0, 0x27($s0)
.L8006A4C0:
/* 0458C0 8006A4C0 02C02021 */  move  $a0, $s6
/* 0458C4 8006A4C4 001610C2 */  srl   $v0, $s6, 3
/* 0458C8 8006A4C8 0C01B218 */  jal   func_8006C860
/* 0458CC 8006A4CC A2020004 */   sb    $v0, 4($s0)
/* 0458D0 8006A4D0 02E02021 */  move  $a0, $s7
/* 0458D4 8006A4D4 8FA80014 */  lw    $t0, 0x14($sp)
/* 0458D8 8006A4D8 26050006 */  addiu $a1, $s0, 6
/* 0458DC 8006A4DC 24060020 */  addiu $a2, $zero, 0x20
/* 0458E0 8006A4E0 00481025 */  or    $v0, $v0, $t0
/* 0458E4 8006A4E4 0C019194 */  jal   func_80064650
/* 0458E8 8006A4E8 A2020005 */   sb    $v0, 5($s0)
/* 0458EC 8006A4EC 3C05800E */  lui   $a1, 0x800e
/* 0458F0 8006A4F0 24A5A000 */  addiu $a1, $a1, -0x6000
/* 0458F4 8006A4F4 0C019730 */  jal   func_80065CC0
/* 0458F8 8006A4F8 24040001 */   addiu $a0, $zero, 1
/* 0458FC 8006A4FC 0C01B233 */  jal   func_8006C8CC
/* 045900 8006A500 02E02021 */   move  $a0, $s7
/* 045904 8006A504 02802021 */  move  $a0, $s4
/* 045908 8006A508 00002821 */  move  $a1, $zero
/* 04590C 8006A50C 24060001 */  addiu $a2, $zero, 1
/* 045910 8006A510 0C0195BC */  jal   func_800656F0
/* 045914 8006A514 00409021 */   move  $s2, $v0
/* 045918 8006A518 3C05800E */  lui   $a1, 0x800e
/* 04591C 8006A51C 24A5A000 */  addiu $a1, $a1, -0x6000
/* 045920 8006A520 0C019730 */  jal   func_80065CC0
/* 045924 8006A524 00002021 */   move  $a0, $zero
/* 045928 8006A528 02802021 */  move  $a0, $s4
/* 04592C 8006A52C 00002821 */  move  $a1, $zero
/* 045930 8006A530 0C0195BC */  jal   func_800656F0
/* 045934 8006A534 24060001 */   addiu $a2, $zero, 1
/* 045938 8006A538 92020002 */  lbu   $v0, 2($s0)
/* 04593C 8006A53C 304200C0 */  andi  $v0, $v0, 0xc0
/* 045940 8006A540 00028902 */  srl   $s1, $v0, 4
/* 045944 8006A544 5620000B */  bnezl $s1, .L8006A574
/* 045948 8006A548 24110001 */   addiu $s1, $zero, 1
/* 04594C 8006A54C 92030026 */  lbu   $v1, 0x26($s0)
/* 045950 8006A550 324200FF */  andi  $v0, $s2, 0xff
/* 045954 8006A554 10430007 */  beq   $v0, $v1, .L8006A574
/* 045958 8006A558 02802021 */   move  $a0, $s4
/* 04595C 8006A55C 0C01A530 */  jal   func_800694C0
/* 045960 8006A560 02602821 */   move  $a1, $s3
/* 045964 8006A564 00408821 */  move  $s1, $v0
/* 045968 8006A568 16200007 */  bnez  $s1, .L8006A588
/* 04596C 8006A56C 00000000 */   nop   
/* 045970 8006A570 24110004 */  addiu $s1, $zero, 4
.L8006A574:
/* 045974 8006A574 24020004 */  addiu $v0, $zero, 4
/* 045978 8006A578 16220003 */  bne   $s1, $v0, .L8006A588
/* 04597C 8006A57C 02A01021 */   move  $v0, $s5
/* 045980 8006A580 0441FFAD */  bgez  $v0, .L8006A438
/* 045984 8006A584 26B5FFFF */   addiu $s5, $s5, -1
.L8006A588:
/* 045988 8006A588 0C01978C */  jal   func_80065E30
/* 04598C 8006A58C 00000000 */   nop   
/* 045990 8006A590 02201021 */  move  $v0, $s1
.L8006A594:
/* 045994 8006A594 8FBF0044 */  lw    $ra, 0x44($sp)
/* 045998 8006A598 8FBE0040 */  lw    $fp, 0x40($sp)
/* 04599C 8006A59C 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0459A0 8006A5A0 8FB60038 */  lw    $s6, 0x38($sp)
/* 0459A4 8006A5A4 8FB50034 */  lw    $s5, 0x34($sp)
/* 0459A8 8006A5A8 8FB40030 */  lw    $s4, 0x30($sp)
/* 0459AC 8006A5AC 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0459B0 8006A5B0 8FB20028 */  lw    $s2, 0x28($sp)
/* 0459B4 8006A5B4 8FB10024 */  lw    $s1, 0x24($sp)
/* 0459B8 8006A5B8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0459BC 8006A5BC 03E00008 */  jr    $ra
/* 0459C0 8006A5C0 27BD0048 */   addiu $sp, $sp, 0x48

/* 0459C4 8006A5C4 00000000 */  nop   
/* 0459C8 8006A5C8 00000000 */  nop   
/* 0459CC 8006A5CC 00000000 */  nop   
/* 0459D0 8006A5D0 00000000 */  nop   
/* 0459D4 8006A5D4 00000000 */  nop   
/* 0459D8 8006A5D8 00000000 */  nop   
/* 0459DC 8006A5DC 00000000 */  nop   
/* 0459E0 8006A5E0 00000000 */  nop   
/* 0459E4 8006A5E4 00000000 */  nop   
/* 0459E8 8006A5E8 00000000 */  nop   
/* 0459EC 8006A5EC 00000000 */  nop   
/* 0459F0 8006A5F0 00000000 */  nop   
/* 0459F4 8006A5F4 00000000 */  nop   
/* 0459F8 8006A5F8 00000000 */  nop   
/* 0459FC 8006A5FC 00000000 */  nop   
/* 045A00 8006A600 00000000 */  nop   
/* 045A04 8006A604 00000000 */  nop   
/* 045A08 8006A608 00000000 */  nop   
/* 045A0C 8006A60C 00000000 */  nop   
/* 045A10 8006A610 00000000 */  nop   
/* 045A14 8006A614 00000000 */  nop   
/* 045A18 8006A618 00000000 */  nop   
/* 045A1C 8006A61C 00000000 */  nop   
/* 045A20 8006A620 00000000 */  nop   
/* 045A24 8006A624 00000000 */  nop   
/* 045A28 8006A628 00000000 */  nop   
/* 045A2C 8006A62C 00000000 */  nop   
