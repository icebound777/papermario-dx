
.section .text8014A430, "ax"

func_8014A430:
/* 0E0B30 8014A430 0000302D */  move  $a2, $zero
/* 0E0B34 8014A434 3C078009 */  lui   $a3, 0x8009
/* 0E0B38 8014A438 24E734F0 */  addiu $a3, $a3, 0x34f0
/* 0E0B3C 8014A43C 3C038007 */  lui   $v1, 0x8007
/* 0E0B40 8014A440 2463419C */  addiu $v1, $v1, 0x419c
/* 0E0B44 8014A444 3C058015 */  lui   $a1, 0x8015
/* 0E0B48 8014A448 24A5F720 */  addiu $a1, $a1, -0x8e0
.L8014A44C:
/* 0E0B4C 8014A44C 8CA20000 */  lw    $v0, ($a1)
/* 0E0B50 8014A450 1444000C */  bne   $v0, $a0, .L8014A484
/* 0E0B54 8014A454 24C60001 */   addiu $a2, $a2, 1
/* 0E0B58 8014A458 8C630000 */  lw    $v1, ($v1)
/* 0E0B5C 8014A45C 84620086 */  lh    $v0, 0x86($v1)
/* 0E0B60 8014A460 8463008C */  lh    $v1, 0x8c($v1)
/* 0E0B64 8014A464 00021100 */  sll   $v0, $v0, 4
/* 0E0B68 8014A468 00471021 */  addu  $v0, $v0, $a3
/* 0E0B6C 8014A46C 8C420004 */  lw    $v0, 4($v0)
/* 0E0B70 8014A470 00031940 */  sll   $v1, $v1, 5
/* 0E0B74 8014A474 00431021 */  addu  $v0, $v0, $v1
/* 0E0B78 8014A478 9042001E */  lbu   $v0, 0x1e($v0)
/* 0E0B7C 8014A47C 03E00008 */  jr    $ra
/* 0E0B80 8014A480 30420001 */   andi  $v0, $v0, 1

.L8014A484:
/* 0E0B84 8014A484 2CC20006 */  sltiu $v0, $a2, 6
/* 0E0B88 8014A488 1440FFF0 */  bnez  $v0, .L8014A44C
/* 0E0B8C 8014A48C 24A50004 */   addiu $a1, $a1, 4
/* 0E0B90 8014A490 03E00008 */  jr    $ra
/* 0E0B94 8014A494 2402FFFF */   addiu $v0, $zero, -1

func_8014A498:
/* 0E0B98 8014A498 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E0B9C 8014A49C AFBF0010 */  sw    $ra, 0x10($sp)
/* 0E0BA0 8014A4A0 0000282D */  move  $a1, $zero
/* 0E0BA4 8014A4A4 3C068015 */  lui   $a2, 0x8015
/* 0E0BA8 8014A4A8 24C6F6F0 */  addiu $a2, $a2, -0x910
/* 0E0BAC 8014A4AC 24C70030 */  addiu $a3, $a2, 0x30
/* 0E0BB0 8014A4B0 3C048016 */  lui   $a0, 0x8016
/* 0E0BB4 8014A4B4 24849AF0 */  addiu $a0, $a0, -0x6510
.L8014A4B8:
/* 0E0BB8 8014A4B8 0080182D */  move  $v1, $a0
/* 0E0BBC 8014A4BC 00C0102D */  move  $v0, $a2
.L8014A4C0:
/* 0E0BC0 8014A4C0 8C480000 */  lw    $t0, ($v0)
/* 0E0BC4 8014A4C4 8C490004 */  lw    $t1, 4($v0)
/* 0E0BC8 8014A4C8 8C4A0008 */  lw    $t2, 8($v0)
/* 0E0BCC 8014A4CC 8C4B000C */  lw    $t3, 0xc($v0)
/* 0E0BD0 8014A4D0 AC680000 */  sw    $t0, ($v1)
/* 0E0BD4 8014A4D4 AC690004 */  sw    $t1, 4($v1)
/* 0E0BD8 8014A4D8 AC6A0008 */  sw    $t2, 8($v1)
/* 0E0BDC 8014A4DC AC6B000C */  sw    $t3, 0xc($v1)
/* 0E0BE0 8014A4E0 24420010 */  addiu $v0, $v0, 0x10
/* 0E0BE4 8014A4E4 1447FFF6 */  bne   $v0, $a3, .L8014A4C0
/* 0E0BE8 8014A4E8 24630010 */   addiu $v1, $v1, 0x10
/* 0E0BEC 8014A4EC 24A50001 */  addiu $a1, $a1, 1
/* 0E0BF0 8014A4F0 28A20002 */  slti  $v0, $a1, 2
/* 0E0BF4 8014A4F4 1440FFF0 */  bnez  $v0, .L8014A4B8
/* 0E0BF8 8014A4F8 24840030 */   addiu $a0, $a0, 0x30
/* 0E0BFC 8014A4FC 24020008 */  addiu $v0, $zero, 8
/* 0E0C00 8014A500 3C018016 */  lui   $at, 0x8016
/* 0E0C04 8014A504 A4229AE2 */  sh    $v0, -0x651e($at)
/* 0E0C08 8014A508 3C018016 */  lui   $at, 0x8016
/* 0E0C0C 8014A50C A4229AE4 */  sh    $v0, -0x651c($at)
/* 0E0C10 8014A510 3C018016 */  lui   $at, 0x8016
/* 0E0C14 8014A514 A4229AE6 */  sh    $v0, -0x651a($at)
/* 0E0C18 8014A518 0C015869 */  jal   func_800561A4
/* 0E0C1C 8014A51C 24040008 */   addiu $a0, $zero, 8
/* 0E0C20 8014A520 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0E0C24 8014A524 03E00008 */  jr    $ra
/* 0E0C28 8014A528 27BD0018 */   addiu $sp, $sp, 0x18

func_8014A52C:
/* 0E0C2C 8014A52C 24020008 */  addiu $v0, $zero, 8
/* 0E0C30 8014A530 3C018016 */  lui   $at, 0x8016
/* 0E0C34 8014A534 A4229AE2 */  sh    $v0, -0x651e($at)
/* 0E0C38 8014A538 3C018016 */  lui   $at, 0x8016
/* 0E0C3C 8014A53C A4229AE4 */  sh    $v0, -0x651c($at)
/* 0E0C40 8014A540 03E00008 */  jr    $ra
/* 0E0C44 8014A544 00000000 */   nop   

func_8014A548:
/* 0E0C48 8014A548 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0E0C4C 8014A54C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0E0C50 8014A550 3C118016 */  lui   $s1, 0x8016
/* 0E0C54 8014A554 26319AF0 */  addiu $s1, $s1, -0x6510
/* 0E0C58 8014A558 AFB20020 */  sw    $s2, 0x20($sp)
/* 0E0C5C 8014A55C 0000902D */  move  $s2, $zero
/* 0E0C60 8014A560 AFB30024 */  sw    $s3, 0x24($sp)
/* 0E0C64 8014A564 24130002 */  addiu $s3, $zero, 2
/* 0E0C68 8014A568 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0E0C6C 8014A56C 2415FFFB */  addiu $s5, $zero, -5
/* 0E0C70 8014A570 AFB40028 */  sw    $s4, 0x28($sp)
/* 0E0C74 8014A574 24140005 */  addiu $s4, $zero, 5
/* 0E0C78 8014A578 AFB00018 */  sw    $s0, 0x18($sp)
/* 0E0C7C 8014A57C 26300002 */  addiu $s0, $s1, 2
/* 0E0C80 8014A580 AFBF0030 */  sw    $ra, 0x30($sp)
.L8014A584:
/* 0E0C84 8014A584 86030000 */  lh    $v1, ($s0)
/* 0E0C88 8014A588 2C620006 */  sltiu $v0, $v1, 6
/* 0E0C8C 8014A58C 50400085 */  beql  $v0, $zero, .L8014A7A4
/* 0E0C90 8014A590 26520001 */   addiu $s2, $s2, 1
/* 0E0C94 8014A594 00031080 */  sll   $v0, $v1, 2
/* 0E0C98 8014A598 3C018015 */  lui   $at, 0x8015
/* 0E0C9C 8014A59C 00220821 */  addu  $at, $at, $v0
/* 0E0CA0 8014A5A0 8C221290 */  lw    $v0, 0x1290($at)
/* 0E0CA4 8014A5A4 00400008 */  jr    $v0
/* 0E0CA8 8014A5A8 00000000 */   nop   
/* 0E0CAC 8014A5AC 96230000 */  lhu   $v1, ($s1)
/* 0E0CB0 8014A5B0 30620001 */  andi  $v0, $v1, 1
/* 0E0CB4 8014A5B4 1040001D */  beqz  $v0, .L8014A62C
/* 0E0CB8 8014A5B8 30620004 */   andi  $v0, $v1, 4
/* 0E0CBC 8014A5BC 8E050002 */  lw    $a1, 2($s0)
/* 0E0CC0 8014A5C0 28A200FA */  slti  $v0, $a1, 0xfa
/* 0E0CC4 8014A5C4 1040000B */  beqz  $v0, .L8014A5F4
/* 0E0CC8 8014A5C8 30620004 */   andi  $v0, $v1, 4
/* 0E0CCC 8014A5CC 14400005 */  bnez  $v0, .L8014A5E4
/* 0E0CD0 8014A5D0 00000000 */   nop   
/* 0E0CD4 8014A5D4 0C015671 */  jal   func_800559C4
/* 0E0CD8 8014A5D8 8E040016 */   lw    $a0, 0x16($s0)
/* 0E0CDC 8014A5DC 08052987 */  j     func_8014A61C
/* 0E0CE0 8014A5E0 00000000 */   nop   

.L8014A5E4:
/* 0E0CE4 8014A5E4 0C0156BC */  jal   func_80055AF0
/* 0E0CE8 8014A5E8 8E040016 */   lw    $a0, 0x16($s0)
/* 0E0CEC 8014A5EC 08052987 */  j     func_8014A61C
/* 0E0CF0 8014A5F0 00000000 */   nop   

.L8014A5F4:
/* 0E0CF4 8014A5F4 14400006 */  bnez  $v0, .L8014A610
/* 0E0CF8 8014A5F8 00000000 */   nop   
/* 0E0CFC 8014A5FC 8E040016 */  lw    $a0, 0x16($s0)
/* 0E0D00 8014A600 0C0156AF */  jal   func_80055ABC
/* 0E0D04 8014A604 0000302D */   move  $a2, $zero
/* 0E0D08 8014A608 08052987 */  j     func_8014A61C
/* 0E0D0C 8014A60C 00000000 */   nop   

.L8014A610:
/* 0E0D10 8014A610 8E040016 */  lw    $a0, 0x16($s0)
/* 0E0D14 8014A614 0C0156EE */  jal   func_80055BB8
/* 0E0D18 8014A618 240500FA */   addiu $a1, $zero, 0xfa
func_8014A61C:
/* 0E0D1C 8014A61C 50400060 */  beql  $v0, $zero, .L8014A7A0
/* 0E0D20 8014A620 A6130000 */   sh    $s3, ($s0)
/* 0E0D24 8014A624 080529E9 */  j     func_8014A7A4
/* 0E0D28 8014A628 26520001 */   addiu $s2, $s2, 1

.L8014A62C:
/* 0E0D2C 8014A62C 10400002 */  beqz  $v0, .L8014A638
/* 0E0D30 8014A630 34620010 */   ori   $v0, $v1, 0x10
/* 0E0D34 8014A634 A6220000 */  sh    $v0, ($s1)
.L8014A638:
/* 0E0D38 8014A638 96220000 */  lhu   $v0, ($s1)
/* 0E0D3C 8014A63C 00551024 */  and   $v0, $v0, $s5
/* 0E0D40 8014A640 A6220000 */  sh    $v0, ($s1)
.L8014A644:
/* 0E0D44 8014A644 080529E8 */  j     func_8014A7A0
/* 0E0D48 8014A648 A6140000 */   sh    $s4, ($s0)

/* 0E0D4C 8014A64C 96230000 */  lhu   $v1, ($s1)
/* 0E0D50 8014A650 00751024 */  and   $v0, $v1, $s5
/* 0E0D54 8014A654 30630001 */  andi  $v1, $v1, 1
/* 0E0D58 8014A658 1060FFFA */  beqz  $v1, .L8014A644
/* 0E0D5C 8014A65C A6220000 */   sh    $v0, ($s1)
/* 0E0D60 8014A660 8E040016 */  lw    $a0, 0x16($s0)
/* 0E0D64 8014A664 0C01567F */  jal   func_800559FC
/* 0E0D68 8014A668 00000000 */   nop   
/* 0E0D6C 8014A66C 5440004D */  bnezl $v0, .L8014A7A4
/* 0E0D70 8014A670 26520001 */   addiu $s2, $s2, 1
/* 0E0D74 8014A674 96220000 */  lhu   $v0, ($s1)
/* 0E0D78 8014A678 3042FFFE */  andi  $v0, $v0, 0xfffe
/* 0E0D7C 8014A67C A6220000 */  sh    $v0, ($s1)
/* 0E0D80 8014A680 24020003 */  addiu $v0, $zero, 3
/* 0E0D84 8014A684 080529E8 */  j     func_8014A7A0
/* 0E0D88 8014A688 A6020000 */   sh    $v0, ($s0)

/* 0E0D8C 8014A68C 24020004 */  addiu $v0, $zero, 4
/* 0E0D90 8014A690 080529E8 */  j     func_8014A7A0
/* 0E0D94 8014A694 A6020000 */   sh    $v0, ($s0)

/* 0E0D98 8014A698 96230000 */  lhu   $v1, ($s1)
/* 0E0D9C 8014A69C 30620008 */  andi  $v0, $v1, 8
/* 0E0DA0 8014A6A0 14400029 */  bnez  $v0, .L8014A748
/* 0E0DA4 8014A6A4 30620010 */   andi  $v0, $v1, 0x10
/* 0E0DA8 8014A6A8 8E04000E */  lw    $a0, 0xe($s0)
/* 0E0DAC 8014A6AC 04810003 */  bgez  $a0, .L8014A6BC
/* 0E0DB0 8014A6B0 00000000 */   nop   
/* 0E0DB4 8014A6B4 080529E8 */  j     func_8014A7A0
/* 0E0DB8 8014A6B8 A6000000 */   sh    $zero, ($s0)

.L8014A6BC:
/* 0E0DBC 8014A6BC 0C015635 */  jal   func_800558D4
/* 0E0DC0 8014A6C0 0240282D */   move  $a1, $s2
/* 0E0DC4 8014A6C4 3403FFFF */  ori   $v1, $zero, 0xffff
/* 0E0DC8 8014A6C8 0062182B */  sltu  $v1, $v1, $v0
/* 0E0DCC 8014A6CC 10600034 */  beqz  $v1, .L8014A7A0
/* 0E0DD0 8014A6D0 AE020016 */   sw    $v0, 0x16($s0)
/* 0E0DD4 8014A6D4 96220000 */  lhu   $v0, ($s1)
/* 0E0DD8 8014A6D8 30420020 */  andi  $v0, $v0, 0x20
/* 0E0DDC 8014A6DC 1040000C */  beqz  $v0, .L8014A710
/* 0E0DE0 8014A6E0 00000000 */   nop   
/* 0E0DE4 8014A6E4 8602000C */  lh    $v0, 0xc($s0)
/* 0E0DE8 8014A6E8 8607000A */  lh    $a3, 0xa($s0)
/* 0E0DEC 8014A6EC AFA20010 */  sw    $v0, 0x10($sp)
/* 0E0DF0 8014A6F0 8E040016 */  lw    $a0, 0x16($s0)
/* 0E0DF4 8014A6F4 8E050012 */  lw    $a1, 0x12($s0)
/* 0E0DF8 8014A6F8 0C015686 */  jal   func_80055A18
/* 0E0DFC 8014A6FC 8E060006 */   lw    $a2, 6($s0)
/* 0E0E00 8014A700 96220000 */  lhu   $v0, ($s1)
/* 0E0E04 8014A704 3042FFDF */  andi  $v0, $v0, 0xffdf
/* 0E0E08 8014A708 080529C8 */  j     func_8014A720
/* 0E0E0C 8014A70C A6220000 */   sh    $v0, ($s1)

.L8014A710:
/* 0E0E10 8014A710 3C048016 */  lui   $a0, 0x8016
/* 0E0E14 8014A714 84849AE0 */  lh    $a0, -0x6520($a0)
/* 0E0E18 8014A718 0C052B21 */  jal   func_8014AC84
/* 0E0E1C 8014A71C 00000000 */   nop   
func_8014A720:
/* 0E0E20 8014A720 8E040016 */  lw    $a0, 0x16($s0)
/* 0E0E24 8014A724 0C01565C */  jal   func_80055970
/* 0E0E28 8014A728 8E050012 */   lw    $a1, 0x12($s0)
/* 0E0E2C 8014A72C 5440001D */  bnezl $v0, .L8014A7A4
/* 0E0E30 8014A730 26520001 */   addiu $s2, $s2, 1
/* 0E0E34 8014A734 96220000 */  lhu   $v0, ($s1)
/* 0E0E38 8014A738 34420001 */  ori   $v0, $v0, 1
/* 0E0E3C 8014A73C A6220000 */  sh    $v0, ($s1)
/* 0E0E40 8014A740 080529E8 */  j     func_8014A7A0
/* 0E0E44 8014A744 A6000000 */   sh    $zero, ($s0)

.L8014A748:
/* 0E0E48 8014A748 10400005 */  beqz  $v0, .L8014A760
/* 0E0E4C 8014A74C 00000000 */   nop   
/* 0E0E50 8014A750 A6000000 */  sh    $zero, ($s0)
/* 0E0E54 8014A754 96220000 */  lhu   $v0, ($s1)
/* 0E0E58 8014A758 080529E7 */  j     func_8014A79C
/* 0E0E5C 8014A75C 3042FFE7 */   andi  $v0, $v0, 0xffe7

.L8014A760:
/* 0E0E60 8014A760 8E04002A */  lw    $a0, 0x2a($s0)
/* 0E0E64 8014A764 0C0156CA */  jal   func_80055B28
/* 0E0E68 8014A768 00000000 */   nop   
/* 0E0E6C 8014A76C 5440000D */  bnezl $v0, .L8014A7A4
/* 0E0E70 8014A770 26520001 */   addiu $s2, $s2, 1
/* 0E0E74 8014A774 8E020022 */  lw    $v0, 0x22($s0)
/* 0E0E78 8014A778 8E030026 */  lw    $v1, 0x26($s0)
/* 0E0E7C 8014A77C 8E04002A */  lw    $a0, 0x2a($s0)
/* 0E0E80 8014A780 A6000000 */  sh    $zero, ($s0)
/* 0E0E84 8014A784 AE02000E */  sw    $v0, 0xe($s0)
/* 0E0E88 8014A788 AE030012 */  sw    $v1, 0x12($s0)
/* 0E0E8C 8014A78C AE040016 */  sw    $a0, 0x16($s0)
/* 0E0E90 8014A790 96220000 */  lhu   $v0, ($s1)
/* 0E0E94 8014A794 34420001 */  ori   $v0, $v0, 1
/* 0E0E98 8014A798 3042FFF7 */  andi  $v0, $v0, 0xfff7
func_8014A79C:
/* 0E0E9C 8014A79C A6220000 */  sh    $v0, ($s1)
func_8014A7A0:
.L8014A7A0:
/* 0E0EA0 8014A7A0 26520001 */  addiu $s2, $s2, 1
func_8014A7A4:
.L8014A7A4:
/* 0E0EA4 8014A7A4 26100030 */  addiu $s0, $s0, 0x30
/* 0E0EA8 8014A7A8 2A420002 */  slti  $v0, $s2, 2
/* 0E0EAC 8014A7AC 1440FF75 */  bnez  $v0, .L8014A584
/* 0E0EB0 8014A7B0 26310030 */   addiu $s1, $s1, 0x30
/* 0E0EB4 8014A7B4 0C052B25 */  jal   func_8014AC94
/* 0E0EB8 8014A7B8 00000000 */   nop   
/* 0E0EBC 8014A7BC 8FBF0030 */  lw    $ra, 0x30($sp)
/* 0E0EC0 8014A7C0 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0E0EC4 8014A7C4 8FB40028 */  lw    $s4, 0x28($sp)
/* 0E0EC8 8014A7C8 8FB30024 */  lw    $s3, 0x24($sp)
/* 0E0ECC 8014A7CC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0E0ED0 8014A7D0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0E0ED4 8014A7D4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0E0ED8 8014A7D8 03E00008 */  jr    $ra
/* 0E0EDC 8014A7DC 27BD0038 */   addiu $sp, $sp, 0x38

func_8014A7E0:
/* 0E0EE0 8014A7E0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0E0EE4 8014A7E4 AFB20018 */  sw    $s2, 0x18($sp)
/* 0E0EE8 8014A7E8 00A0902D */  move  $s2, $a1
/* 0E0EEC 8014A7EC 3C058007 */  lui   $a1, 0x8007
/* 0E0EF0 8014A7F0 8CA5419C */  lw    $a1, 0x419c($a1)
/* 0E0EF4 8014A7F4 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0E0EF8 8014A7F8 8FB30040 */  lw    $s3, 0x40($sp)
/* 0E0EFC 8014A7FC AFB10014 */  sw    $s1, 0x14($sp)
/* 0E0F00 8014A800 00C0882D */  move  $s1, $a2
/* 0E0F04 8014A804 AFB50024 */  sw    $s5, 0x24($sp)
/* 0E0F08 8014A808 00E0A82D */  move  $s5, $a3
/* 0E0F0C 8014A80C AFBF0028 */  sw    $ra, 0x28($sp)
/* 0E0F10 8014A810 AFB40020 */  sw    $s4, 0x20($sp)
/* 0E0F14 8014A814 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E0F18 8014A818 80A20071 */  lb    $v0, 0x71($a1)
/* 0E0F1C 8014A81C 10400003 */  beqz  $v0, .L8014A82C
/* 0E0F20 8014A820 0260A02D */   move  $s4, $s3
/* 0E0F24 8014A824 08052A3D */  j     func_8014A8F4
/* 0E0F28 8014A828 24020001 */   addiu $v0, $zero, 1

.L8014A82C:
/* 0E0F2C 8014A82C 3C028016 */  lui   $v0, 0x8016
/* 0E0F30 8014A830 24429AF0 */  addiu $v0, $v0, -0x6510
/* 0E0F34 8014A834 00041840 */  sll   $v1, $a0, 1
/* 0E0F38 8014A838 00641821 */  addu  $v1, $v1, $a0
/* 0E0F3C 8014A83C 00031900 */  sll   $v1, $v1, 4
/* 0E0F40 8014A840 80A4007A */  lb    $a0, 0x7a($a1)
/* 0E0F44 8014A844 14800008 */  bnez  $a0, .L8014A868
/* 0E0F48 8014A848 00628021 */   addu  $s0, $v1, $v0
/* 0E0F4C 8014A84C 8E040018 */  lw    $a0, 0x18($s0)
/* 0E0F50 8014A850 0C015671 */  jal   func_800559C4
/* 0E0F54 8014A854 00000000 */   nop   
/* 0E0F58 8014A858 96030000 */  lhu   $v1, ($s0)
/* 0E0F5C 8014A85C 24020001 */  addiu $v0, $zero, 1
/* 0E0F60 8014A860 08052A3C */  j     func_8014A8F0
/* 0E0F64 8014A864 3063FFFE */   andi  $v1, $v1, 0xfffe

.L8014A868:
/* 0E0F68 8014A868 0C05290C */  jal   func_8014A430
/* 0E0F6C 8014A86C 0240202D */   move  $a0, $s2
/* 0E0F70 8014A870 04430001 */  bgezl $v0, .L8014A878
/* 0E0F74 8014A874 0040882D */   move  $s1, $v0
.L8014A878:
/* 0E0F78 8014A878 8E020010 */  lw    $v0, 0x10($s0)
/* 0E0F7C 8014A87C 14520013 */  bne   $v0, $s2, .L8014A8CC
/* 0E0F80 8014A880 24020001 */   addiu $v0, $zero, 1
/* 0E0F84 8014A884 8E020014 */  lw    $v0, 0x14($s0)
/* 0E0F88 8014A888 14510010 */  bne   $v0, $s1, .L8014A8CC
/* 0E0F8C 8014A88C 24020001 */   addiu $v0, $zero, 1
/* 0E0F90 8014A890 00132400 */  sll   $a0, $s3, 0x10
/* 0E0F94 8014A894 0C052B21 */  jal   func_8014AC84
/* 0E0F98 8014A898 00042403 */   sra   $a0, $a0, 0x10
/* 0E0F9C 8014A89C 96020000 */  lhu   $v0, ($s0)
/* 0E0FA0 8014A8A0 30420004 */  andi  $v0, $v0, 4
/* 0E0FA4 8014A8A4 50400013 */  beql  $v0, $zero, .L8014A8F4
/* 0E0FA8 8014A8A8 24020002 */   addiu $v0, $zero, 2
/* 0E0FAC 8014A8AC 8E040018 */  lw    $a0, 0x18($s0)
/* 0E0FB0 8014A8B0 0C0156E0 */  jal   func_80055B80
/* 0E0FB4 8014A8B4 00000000 */   nop   
/* 0E0FB8 8014A8B8 96020000 */  lhu   $v0, ($s0)
/* 0E0FBC 8014A8BC 3042FFFB */  andi  $v0, $v0, 0xfffb
/* 0E0FC0 8014A8C0 A6020000 */  sh    $v0, ($s0)
/* 0E0FC4 8014A8C4 08052A3D */  j     func_8014A8F4
/* 0E0FC8 8014A8C8 24020002 */   addiu $v0, $zero, 2

.L8014A8CC:
/* 0E0FCC 8014A8CC 96030000 */  lhu   $v1, ($s0)
/* 0E0FD0 8014A8D0 0040202D */  move  $a0, $v0
/* 0E0FD4 8014A8D4 3C018016 */  lui   $at, 0x8016
/* 0E0FD8 8014A8D8 A4349AE0 */  sh    $s4, -0x6520($at)
/* 0E0FDC 8014A8DC AE120010 */  sw    $s2, 0x10($s0)
/* 0E0FE0 8014A8E0 AE110014 */  sw    $s1, 0x14($s0)
/* 0E0FE4 8014A8E4 AE150004 */  sw    $s5, 4($s0)
/* 0E0FE8 8014A8E8 A6040002 */  sh    $a0, 2($s0)
/* 0E0FEC 8014A8EC 3063FFFD */  andi  $v1, $v1, 0xfffd
func_8014A8F0:
/* 0E0FF0 8014A8F0 A6030000 */  sh    $v1, ($s0)
func_8014A8F4:
.L8014A8F4:
/* 0E0FF4 8014A8F4 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0E0FF8 8014A8F8 8FB50024 */  lw    $s5, 0x24($sp)
/* 0E0FFC 8014A8FC 8FB40020 */  lw    $s4, 0x20($sp)
/* 0E1000 8014A900 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0E1004 8014A904 8FB20018 */  lw    $s2, 0x18($sp)
/* 0E1008 8014A908 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E100C 8014A90C 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E1010 8014A910 03E00008 */  jr    $ra
/* 0E1014 8014A914 27BD0030 */   addiu $sp, $sp, 0x30

func_8014A918:
/* 0E1018 8014A918 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E101C 8014A91C 3C038016 */  lui   $v1, 0x8016
/* 0E1020 8014A920 24639AF0 */  addiu $v1, $v1, -0x6510
/* 0E1024 8014A924 00041040 */  sll   $v0, $a0, 1
/* 0E1028 8014A928 00441021 */  addu  $v0, $v0, $a0
/* 0E102C 8014A92C 00021100 */  sll   $v0, $v0, 4
/* 0E1030 8014A930 00431021 */  addu  $v0, $v0, $v1
/* 0E1034 8014A934 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E1038 8014A938 94430000 */  lhu   $v1, ($v0)
/* 0E103C 8014A93C 8FA80030 */  lw    $t0, 0x30($sp)
/* 0E1040 8014A940 3063FFF7 */  andi  $v1, $v1, 0xfff7
/* 0E1044 8014A944 00084400 */  sll   $t0, $t0, 0x10
/* 0E1048 8014A948 00084403 */  sra   $t0, $t0, 0x10
/* 0E104C 8014A94C A4430000 */  sh    $v1, ($v0)
/* 0E1050 8014A950 0C0529F8 */  jal   func_8014A7E0
/* 0E1054 8014A954 AFA80010 */   sw    $t0, 0x10($sp)
/* 0E1058 8014A958 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E105C 8014A95C 03E00008 */  jr    $ra
/* 0E1060 8014A960 27BD0020 */   addiu $sp, $sp, 0x20

func_8014A964:
/* 0E1064 8014A964 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0E1068 8014A968 AFB40020 */  sw    $s4, 0x20($sp)
/* 0E106C 8014A96C 00A0A02D */  move  $s4, $a1
/* 0E1070 8014A970 3C058007 */  lui   $a1, 0x8007
/* 0E1074 8014A974 8CA5419C */  lw    $a1, 0x419c($a1)
/* 0E1078 8014A978 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0E107C 8014A97C 8FB30040 */  lw    $s3, 0x40($sp)
/* 0E1080 8014A980 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E1084 8014A984 00C0882D */  move  $s1, $a2
/* 0E1088 8014A988 AFB50024 */  sw    $s5, 0x24($sp)
/* 0E108C 8014A98C AFBF0028 */  sw    $ra, 0x28($sp)
/* 0E1090 8014A990 AFB20018 */  sw    $s2, 0x18($sp)
/* 0E1094 8014A994 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E1098 8014A998 80A20071 */  lb    $v0, 0x71($a1)
/* 0E109C 8014A99C 8FB20044 */  lw    $s2, 0x44($sp)
/* 0E10A0 8014A9A0 10400003 */  beqz  $v0, .L8014A9B0
/* 0E10A4 8014A9A4 00E0A82D */   move  $s5, $a3
/* 0E10A8 8014A9A8 08052A8C */  j     func_8014AA30
/* 0E10AC 8014A9AC 24020001 */   addiu $v0, $zero, 1

.L8014A9B0:
/* 0E10B0 8014A9B0 3C028016 */  lui   $v0, 0x8016
/* 0E10B4 8014A9B4 24429AF0 */  addiu $v0, $v0, -0x6510
/* 0E10B8 8014A9B8 00041840 */  sll   $v1, $a0, 1
/* 0E10BC 8014A9BC 00641821 */  addu  $v1, $v1, $a0
/* 0E10C0 8014A9C0 00031900 */  sll   $v1, $v1, 4
/* 0E10C4 8014A9C4 80A4007A */  lb    $a0, 0x7a($a1)
/* 0E10C8 8014A9C8 14800008 */  bnez  $a0, .L8014A9EC
/* 0E10CC 8014A9CC 00628021 */   addu  $s0, $v1, $v0
/* 0E10D0 8014A9D0 8E040018 */  lw    $a0, 0x18($s0)
/* 0E10D4 8014A9D4 0C015671 */  jal   func_800559C4
/* 0E10D8 8014A9D8 00000000 */   nop   
/* 0E10DC 8014A9DC 96030000 */  lhu   $v1, ($s0)
/* 0E10E0 8014A9E0 24020001 */  addiu $v0, $zero, 1
/* 0E10E4 8014A9E4 08052A8B */  j     func_8014AA2C
/* 0E10E8 8014A9E8 3063FFFE */   andi  $v1, $v1, 0xfffe

.L8014A9EC:
/* 0E10EC 8014A9EC 0C05290C */  jal   func_8014A430
/* 0E10F0 8014A9F0 0280202D */   move  $a0, $s4
/* 0E10F4 8014A9F4 04430001 */  bgezl $v0, .L8014A9FC
/* 0E10F8 8014A9F8 0040882D */   move  $s1, $v0
.L8014A9FC:
/* 0E10FC 8014A9FC 24020001 */  addiu $v0, $zero, 1
/* 0E1100 8014AA00 96030000 */  lhu   $v1, ($s0)
/* 0E1104 8014AA04 0040202D */  move  $a0, $v0
/* 0E1108 8014AA08 AE150008 */  sw    $s5, 8($s0)
/* 0E110C 8014AA0C A613000C */  sh    $s3, 0xc($s0)
/* 0E1110 8014AA10 A612000E */  sh    $s2, 0xe($s0)
/* 0E1114 8014AA14 AE140010 */  sw    $s4, 0x10($s0)
/* 0E1118 8014AA18 AE110014 */  sw    $s1, 0x14($s0)
/* 0E111C 8014AA1C A6040002 */  sh    $a0, 2($s0)
/* 0E1120 8014AA20 34630020 */  ori   $v1, $v1, 0x20
/* 0E1124 8014AA24 A6030000 */  sh    $v1, ($s0)
/* 0E1128 8014AA28 3063FFFD */  andi  $v1, $v1, 0xfffd
func_8014AA2C:
/* 0E112C 8014AA2C A6030000 */  sh    $v1, ($s0)
func_8014AA30:
/* 0E1130 8014AA30 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0E1134 8014AA34 8FB50024 */  lw    $s5, 0x24($sp)
/* 0E1138 8014AA38 8FB40020 */  lw    $s4, 0x20($sp)
/* 0E113C 8014AA3C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0E1140 8014AA40 8FB20018 */  lw    $s2, 0x18($sp)
/* 0E1144 8014AA44 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E1148 8014AA48 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E114C 8014AA4C 03E00008 */  jr    $ra
/* 0E1150 8014AA50 27BD0030 */   addiu $sp, $sp, 0x30

func_8014AA54:
/* 0E1154 8014AA54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E1158 8014AA58 3C028016 */  lui   $v0, 0x8016
/* 0E115C 8014AA5C 24429AF0 */  addiu $v0, $v0, -0x6510
/* 0E1160 8014AA60 00041840 */  sll   $v1, $a0, 1
/* 0E1164 8014AA64 00641821 */  addu  $v1, $v1, $a0
/* 0E1168 8014AA68 00031900 */  sll   $v1, $v1, 4
/* 0E116C 8014AA6C 00621821 */  addu  $v1, $v1, $v0
/* 0E1170 8014AA70 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0E1174 8014AA74 94640000 */  lhu   $a0, ($v1)
/* 0E1178 8014AA78 30820001 */  andi  $v0, $a0, 1
/* 0E117C 8014AA7C 10400003 */  beqz  $v0, .L8014AA8C
/* 0E1180 8014AA80 30820002 */   andi  $v0, $a0, 2
/* 0E1184 8014AA84 14400003 */  bnez  $v0, .L8014AA94
/* 0E1188 8014AA88 00061400 */   sll   $v0, $a2, 0x10
.L8014AA8C:
/* 0E118C 8014AA8C 08052AC0 */  j     func_8014AB00
/* 0E1190 8014AA90 0000102D */   move  $v0, $zero

.L8014AA94:
/* 0E1194 8014AA94 00022403 */  sra   $a0, $v0, 0x10
/* 0E1198 8014AA98 24020001 */  addiu $v0, $zero, 1
/* 0E119C 8014AA9C 1082000F */  beq   $a0, $v0, .L8014AADC
/* 0E11A0 8014AAA0 28820002 */   slti  $v0, $a0, 2
/* 0E11A4 8014AAA4 10400005 */  beqz  $v0, .L8014AABC
/* 0E11A8 8014AAA8 24020002 */   addiu $v0, $zero, 2
/* 0E11AC 8014AAAC 10800007 */  beqz  $a0, .L8014AACC
/* 0E11B0 8014AAB0 24020001 */   addiu $v0, $zero, 1
/* 0E11B4 8014AAB4 08052AC0 */  j     func_8014AB00
/* 0E11B8 8014AAB8 00000000 */   nop   

.L8014AABC:
/* 0E11BC 8014AABC 1082000C */  beq   $a0, $v0, .L8014AAF0
/* 0E11C0 8014AAC0 24020001 */   addiu $v0, $zero, 1
/* 0E11C4 8014AAC4 08052AC0 */  j     func_8014AB00
/* 0E11C8 8014AAC8 00000000 */   nop   

.L8014AACC:
/* 0E11CC 8014AACC 0C01580A */  jal   func_80056028
/* 0E11D0 8014AAD0 8C640018 */   lw    $a0, 0x18($v1)
/* 0E11D4 8014AAD4 08052AC0 */  j     func_8014AB00
/* 0E11D8 8014AAD8 24020001 */   addiu $v0, $zero, 1

.L8014AADC:
/* 0E11DC 8014AADC 8C640018 */  lw    $a0, 0x18($v1)
/* 0E11E0 8014AAE0 0C015811 */  jal   func_80056044
/* 0E11E4 8014AAE4 00000000 */   nop   
/* 0E11E8 8014AAE8 08052AC0 */  j     func_8014AB00
/* 0E11EC 8014AAEC 24020001 */   addiu $v0, $zero, 1

.L8014AAF0:
/* 0E11F0 8014AAF0 8C640018 */  lw    $a0, 0x18($v1)
/* 0E11F4 8014AAF4 0C01581A */  jal   func_80056068
/* 0E11F8 8014AAF8 00000000 */   nop   
/* 0E11FC 8014AAFC 24020001 */  addiu $v0, $zero, 1
func_8014AB00:
/* 0E1200 8014AB00 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0E1204 8014AB04 03E00008 */  jr    $ra
/* 0E1208 8014AB08 27BD0018 */   addiu $sp, $sp, 0x18

func_8014AB0C:
/* 0E120C 8014AB0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E1210 8014AB10 3C028016 */  lui   $v0, 0x8016
/* 0E1214 8014AB14 24429AF0 */  addiu $v0, $v0, -0x6510
/* 0E1218 8014AB18 00041840 */  sll   $v1, $a0, 1
/* 0E121C 8014AB1C 00641821 */  addu  $v1, $v1, $a0
/* 0E1220 8014AB20 00031900 */  sll   $v1, $v1, 4
/* 0E1224 8014AB24 00621821 */  addu  $v1, $v1, $v0
/* 0E1228 8014AB28 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0E122C 8014AB2C 94620000 */  lhu   $v0, ($v1)
/* 0E1230 8014AB30 30420001 */  andi  $v0, $v0, 1
/* 0E1234 8014AB34 10400006 */  beqz  $v0, .L8014AB50
/* 0E1238 8014AB38 00052C00 */   sll   $a1, $a1, 0x10
/* 0E123C 8014AB3C 8C640018 */  lw    $a0, 0x18($v1)
/* 0E1240 8014AB40 0C015777 */  jal   func_80055DDC
/* 0E1244 8014AB44 00052C03 */   sra   $a1, $a1, 0x10
/* 0E1248 8014AB48 08052AD5 */  j     func_8014AB54
/* 0E124C 8014AB4C 00000000 */   nop   

.L8014AB50:
/* 0E1250 8014AB50 0000102D */  move  $v0, $zero
func_8014AB54:
/* 0E1254 8014AB54 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0E1258 8014AB58 03E00008 */  jr    $ra
/* 0E125C 8014AB5C 27BD0018 */   addiu $sp, $sp, 0x18

/* 0E1260 8014AB60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E1264 8014AB64 3C028016 */  lui   $v0, 0x8016
/* 0E1268 8014AB68 24429AF0 */  addiu $v0, $v0, -0x6510
/* 0E126C 8014AB6C 00041840 */  sll   $v1, $a0, 1
/* 0E1270 8014AB70 00641821 */  addu  $v1, $v1, $a0
/* 0E1274 8014AB74 00031900 */  sll   $v1, $v1, 4
/* 0E1278 8014AB78 00621821 */  addu  $v1, $v1, $v0
/* 0E127C 8014AB7C AFBF0010 */  sw    $ra, 0x10($sp)
/* 0E1280 8014AB80 94620000 */  lhu   $v0, ($v1)
/* 0E1284 8014AB84 30420001 */  andi  $v0, $v0, 1
/* 0E1288 8014AB88 10400006 */  beqz  $v0, .L8014ABA4
/* 0E128C 8014AB8C 00052C00 */   sll   $a1, $a1, 0x10
/* 0E1290 8014AB90 8C640018 */  lw    $a0, 0x18($v1)
/* 0E1294 8014AB94 0C015792 */  jal   func_80055E48
/* 0E1298 8014AB98 00052C03 */   sra   $a1, $a1, 0x10
/* 0E129C 8014AB9C 08052AEA */  j     func_8014ABA8
/* 0E12A0 8014ABA0 00000000 */   nop   

.L8014ABA4:
/* 0E12A4 8014ABA4 0000102D */  move  $v0, $zero
func_8014ABA8:
/* 0E12A8 8014ABA8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0E12AC 8014ABAC 03E00008 */  jr    $ra
/* 0E12B0 8014ABB0 27BD0018 */   addiu $sp, $sp, 0x18

/* 0E12B4 8014ABB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E12B8 8014ABB8 3C028016 */  lui   $v0, 0x8016
/* 0E12BC 8014ABBC 24429AF0 */  addiu $v0, $v0, -0x6510
/* 0E12C0 8014ABC0 00041840 */  sll   $v1, $a0, 1
/* 0E12C4 8014ABC4 00641821 */  addu  $v1, $v1, $a0
/* 0E12C8 8014ABC8 00031900 */  sll   $v1, $v1, 4
/* 0E12CC 8014ABCC 00621821 */  addu  $v1, $v1, $v0
/* 0E12D0 8014ABD0 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0E12D4 8014ABD4 94620000 */  lhu   $v0, ($v1)
/* 0E12D8 8014ABD8 30420001 */  andi  $v0, $v0, 1
/* 0E12DC 8014ABDC 10400006 */  beqz  $v0, .L8014ABF8
/* 0E12E0 8014ABE0 00052C00 */   sll   $a1, $a1, 0x10
/* 0E12E4 8014ABE4 8C640018 */  lw    $a0, 0x18($v1)
/* 0E12E8 8014ABE8 0C015731 */  jal   func_80055CC4
/* 0E12EC 8014ABEC 00052C03 */   sra   $a1, $a1, 0x10
/* 0E12F0 8014ABF0 08052AFF */  j     func_8014ABFC
/* 0E12F4 8014ABF4 00000000 */   nop   

.L8014ABF8:
/* 0E12F8 8014ABF8 0000102D */  move  $v0, $zero
func_8014ABFC:
/* 0E12FC 8014ABFC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0E1300 8014AC00 03E00008 */  jr    $ra
/* 0E1304 8014AC04 27BD0018 */   addiu $sp, $sp, 0x18

func_8014AC08:
/* 0E1308 8014AC08 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E130C 8014AC0C 0000202D */  move  $a0, $zero
/* 0E1310 8014AC10 2405FFFF */  addiu $a1, $zero, -1
/* 0E1314 8014AC14 0080302D */  move  $a2, $a0
/* 0E1318 8014AC18 240700FA */  addiu $a3, $zero, 0xfa
/* 0E131C 8014AC1C AFB00018 */  sw    $s0, 0x18($sp)
/* 0E1320 8014AC20 24100008 */  addiu $s0, $zero, 8
/* 0E1324 8014AC24 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0E1328 8014AC28 0C052A46 */  jal   func_8014A918
/* 0E132C 8014AC2C AFB00010 */   sw    $s0, 0x10($sp)
/* 0E1330 8014AC30 24040001 */  addiu $a0, $zero, 1
/* 0E1334 8014AC34 2405FFFF */  addiu $a1, $zero, -1
/* 0E1338 8014AC38 0000302D */  move  $a2, $zero
/* 0E133C 8014AC3C 240700FA */  addiu $a3, $zero, 0xfa
/* 0E1340 8014AC40 0C052A46 */  jal   func_8014A918
/* 0E1344 8014AC44 AFB00010 */   sw    $s0, 0x10($sp)
/* 0E1348 8014AC48 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0E134C 8014AC4C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0E1350 8014AC50 24020001 */  addiu $v0, $zero, 1
/* 0E1354 8014AC54 03E00008 */  jr    $ra
/* 0E1358 8014AC58 27BD0020 */   addiu $sp, $sp, 0x20

func_8014AC5C:
/* 0E135C 8014AC5C 24020004 */  addiu $v0, $zero, 4
/* 0E1360 8014AC60 3C018016 */  lui   $at, 0x8016
/* 0E1364 8014AC64 A4229AE4 */  sh    $v0, -0x651c($at)
/* 0E1368 8014AC68 03E00008 */  jr    $ra
/* 0E136C 8014AC6C 00000000 */   nop   

func_8014AC70:
/* 0E1370 8014AC70 24020008 */  addiu $v0, $zero, 8
/* 0E1374 8014AC74 3C018016 */  lui   $at, 0x8016
/* 0E1378 8014AC78 A4229AE4 */  sh    $v0, -0x651c($at)
/* 0E137C 8014AC7C 03E00008 */  jr    $ra
/* 0E1380 8014AC80 00000000 */   nop   

func_8014AC84:
/* 0E1384 8014AC84 3C018016 */  lui   $at, 0x8016
/* 0E1388 8014AC88 A4249AE2 */  sh    $a0, -0x651e($at)
/* 0E138C 8014AC8C 03E00008 */  jr    $ra
/* 0E1390 8014AC90 00000000 */   nop   

func_8014AC94:
/* 0E1394 8014AC94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E1398 8014AC98 3C048015 */  lui   $a0, 0x8015
/* 0E139C 8014AC9C 2484F738 */  addiu $a0, $a0, -0x8c8
/* 0E13A0 8014ACA0 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0E13A4 8014ACA4 84820000 */  lh    $v0, ($a0)
/* 0E13A8 8014ACA8 94830000 */  lhu   $v1, ($a0)
/* 0E13AC 8014ACAC 10400003 */  beqz  $v0, .L8014ACBC
/* 0E13B0 8014ACB0 2462FFFF */   addiu $v0, $v1, -1
/* 0E13B4 8014ACB4 08052B4D */  j     func_8014AD34
/* 0E13B8 8014ACB8 A4820000 */   sh    $v0, ($a0)

.L8014ACBC:
/* 0E13BC 8014ACBC 3C038016 */  lui   $v1, 0x8016
/* 0E13C0 8014ACC0 84639AE2 */  lh    $v1, -0x651e($v1)
/* 0E13C4 8014ACC4 3C028016 */  lui   $v0, 0x8016
/* 0E13C8 8014ACC8 84429AE4 */  lh    $v0, -0x651c($v0)
/* 0E13CC 8014ACCC 3C048016 */  lui   $a0, 0x8016
/* 0E13D0 8014ACD0 94849AE2 */  lhu   $a0, -0x651e($a0)
/* 0E13D4 8014ACD4 0043102A */  slt   $v0, $v0, $v1
/* 0E13D8 8014ACD8 3C038016 */  lui   $v1, 0x8016
/* 0E13DC 8014ACDC 94639AE4 */  lhu   $v1, -0x651c($v1)
/* 0E13E0 8014ACE0 54400001 */  bnezl $v0, .L8014ACE8
/* 0E13E4 8014ACE4 0060202D */   move  $a0, $v1
.L8014ACE8:
/* 0E13E8 8014ACE8 3C058016 */  lui   $a1, 0x8016
/* 0E13EC 8014ACEC 24A59AE6 */  addiu $a1, $a1, -0x651a
/* 0E13F0 8014ACF0 00041400 */  sll   $v0, $a0, 0x10
/* 0E13F4 8014ACF4 00022403 */  sra   $a0, $v0, 0x10
/* 0E13F8 8014ACF8 84A20000 */  lh    $v0, ($a1)
/* 0E13FC 8014ACFC 94A30000 */  lhu   $v1, ($a1)
/* 0E1400 8014AD00 1044000C */  beq   $v0, $a0, .L8014AD34
/* 0E1404 8014AD04 0044102A */   slt   $v0, $v0, $a0
/* 0E1408 8014AD08 14400002 */  bnez  $v0, .L8014AD14
/* 0E140C 8014AD0C 24620001 */   addiu $v0, $v1, 1
/* 0E1410 8014AD10 2462FFFF */  addiu $v0, $v1, -1
.L8014AD14:
/* 0E1414 8014AD14 A4A20000 */  sh    $v0, ($a1)
/* 0E1418 8014AD18 3C048016 */  lui   $a0, 0x8016
/* 0E141C 8014AD1C 84849AE6 */  lh    $a0, -0x651a($a0)
/* 0E1420 8014AD20 0C015869 */  jal   func_800561A4
/* 0E1424 8014AD24 00000000 */   nop   
/* 0E1428 8014AD28 24020003 */  addiu $v0, $zero, 3
/* 0E142C 8014AD2C 3C018015 */  lui   $at, 0x8015
/* 0E1430 8014AD30 A422F738 */  sh    $v0, -0x8c8($at)
func_8014AD34:
.L8014AD34:
/* 0E1434 8014AD34 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0E1438 8014AD38 03E00008 */  jr    $ra
/* 0E143C 8014AD3C 27BD0018 */   addiu $sp, $sp, 0x18

/* 0E1440 8014AD40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E1444 8014AD44 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E1448 8014AD48 3C108016 */  lui   $s0, 0x8016
/* 0E144C 8014AD4C 26109AF0 */  addiu $s0, $s0, -0x6510
/* 0E1450 8014AD50 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E1454 8014AD54 0000882D */  move  $s1, $zero
/* 0E1458 8014AD58 AFBF0018 */  sw    $ra, 0x18($sp)
.L8014AD5C:
/* 0E145C 8014AD5C 96020000 */  lhu   $v0, ($s0)
/* 0E1460 8014AD60 30420001 */  andi  $v0, $v0, 1
/* 0E1464 8014AD64 10400006 */  beqz  $v0, .L8014AD80
/* 0E1468 8014AD68 26310001 */   addiu $s1, $s1, 1
/* 0E146C 8014AD6C 8E040018 */  lw    $a0, 0x18($s0)
/* 0E1470 8014AD70 0C01567F */  jal   func_800559FC
/* 0E1474 8014AD74 00000000 */   nop   
/* 0E1478 8014AD78 14400005 */  bnez  $v0, .L8014AD90
/* 0E147C 8014AD7C 24020001 */   addiu $v0, $zero, 1
.L8014AD80:
/* 0E1480 8014AD80 2A220002 */  slti  $v0, $s1, 2
/* 0E1484 8014AD84 1440FFF5 */  bnez  $v0, .L8014AD5C
/* 0E1488 8014AD88 26100030 */   addiu $s0, $s0, 0x30
/* 0E148C 8014AD8C 0000102D */  move  $v0, $zero
.L8014AD90:
/* 0E1490 8014AD90 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E1494 8014AD94 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E1498 8014AD98 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E149C 8014AD9C 03E00008 */  jr    $ra
/* 0E14A0 8014ADA0 27BD0020 */   addiu $sp, $sp, 0x20

func_8014ADA4:
/* 0E14A4 8014ADA4 3C028007 */  lui   $v0, 0x8007
/* 0E14A8 8014ADA8 8C42419C */  lw    $v0, 0x419c($v0)
/* 0E14AC 8014ADAC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E14B0 8014ADB0 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E14B4 8014ADB4 80420071 */  lb    $v0, 0x71($v0)
/* 0E14B8 8014ADB8 3C068016 */  lui   $a2, 0x8016
/* 0E14BC 8014ADBC 24C69AF0 */  addiu $a2, $a2, -0x6510
/* 0E14C0 8014ADC0 1440000A */  bnez  $v0, .L8014ADEC
/* 0E14C4 8014ADC4 24030008 */   addiu $v1, $zero, 8
/* 0E14C8 8014ADC8 94C20000 */  lhu   $v0, ($a2)
/* 0E14CC 8014ADCC 0000202D */  move  $a0, $zero
/* 0E14D0 8014ADD0 AFA30010 */  sw    $v1, 0x10($sp)
/* 0E14D4 8014ADD4 8CC50024 */  lw    $a1, 0x24($a2)
/* 0E14D8 8014ADD8 00431025 */  or    $v0, $v0, $v1
/* 0E14DC 8014ADDC A4C20000 */  sh    $v0, ($a2)
/* 0E14E0 8014ADE0 8CC60028 */  lw    $a2, 0x28($a2)
/* 0E14E4 8014ADE4 0C0529F8 */  jal   func_8014A7E0
/* 0E14E8 8014ADE8 0080382D */   move  $a3, $a0
.L8014ADEC:
/* 0E14EC 8014ADEC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E14F0 8014ADF0 03E00008 */  jr    $ra
/* 0E14F4 8014ADF4 27BD0020 */   addiu $sp, $sp, 0x20

func_8014ADF8:
/* 0E14F8 8014ADF8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E14FC 8014ADFC 0080402D */  move  $t0, $a0
/* 0E1500 8014AE00 3C028007 */  lui   $v0, 0x8007
/* 0E1504 8014AE04 8C42419C */  lw    $v0, 0x419c($v0)
/* 0E1508 8014AE08 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E150C 8014AE0C 80420071 */  lb    $v0, 0x71($v0)
/* 0E1510 8014AE10 3C078016 */  lui   $a3, 0x8016
/* 0E1514 8014AE14 24E79AF0 */  addiu $a3, $a3, -0x6510
/* 0E1518 8014AE18 14400011 */  bnez  $v0, .L8014AE60
/* 0E151C 8014AE1C 00A0482D */   move  $t1, $a1
/* 0E1520 8014AE20 8CE40010 */  lw    $a0, 0x10($a3)
/* 0E1524 8014AE24 8CE50014 */  lw    $a1, 0x14($a3)
/* 0E1528 8014AE28 8CE60018 */  lw    $a2, 0x18($a3)
/* 0E152C 8014AE2C 94E30000 */  lhu   $v1, ($a3)
/* 0E1530 8014AE30 24020008 */  addiu $v0, $zero, 8
/* 0E1534 8014AE34 AFA20010 */  sw    $v0, 0x10($sp)
/* 0E1538 8014AE38 34630004 */  ori   $v1, $v1, 4
/* 0E153C 8014AE3C ACE40024 */  sw    $a0, 0x24($a3)
/* 0E1540 8014AE40 0000202D */  move  $a0, $zero
/* 0E1544 8014AE44 ACE50028 */  sw    $a1, 0x28($a3)
/* 0E1548 8014AE48 0100282D */  move  $a1, $t0
/* 0E154C 8014AE4C ACE6002C */  sw    $a2, 0x2c($a3)
/* 0E1550 8014AE50 0120302D */  move  $a2, $t1
/* 0E1554 8014AE54 A4E30000 */  sh    $v1, ($a3)
/* 0E1558 8014AE58 0C052A46 */  jal   func_8014A918
/* 0E155C 8014AE5C 240701F4 */   addiu $a3, $zero, 0x1f4
.L8014AE60:
/* 0E1560 8014AE60 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E1564 8014AE64 03E00008 */  jr    $ra
/* 0E1568 8014AE68 27BD0020 */   addiu $sp, $sp, 0x20

func_8014AE6C:
/* 0E156C 8014AE6C 3C028007 */  lui   $v0, 0x8007
/* 0E1570 8014AE70 8C42419C */  lw    $v0, 0x419c($v0)
/* 0E1574 8014AE74 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E1578 8014AE78 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0E157C 8014AE7C 80420071 */  lb    $v0, 0x71($v0)
/* 0E1580 8014AE80 3C068016 */  lui   $a2, 0x8016
/* 0E1584 8014AE84 24C69AF0 */  addiu $a2, $a2, -0x6510
/* 0E1588 8014AE88 14400018 */  bnez  $v0, .L8014AEEC
/* 0E158C 8014AE8C 3C020002 */   lui   $v0, 2
/* 0E1590 8014AE90 3C04800A */  lui   $a0, 0x800a
/* 0E1594 8014AE94 2484A650 */  addiu $a0, $a0, -0x59b0
/* 0E1598 8014AE98 8C830000 */  lw    $v1, ($a0)
/* 0E159C 8014AE9C 00621024 */  and   $v0, $v1, $v0
/* 0E15A0 8014AEA0 10400005 */  beqz  $v0, .L8014AEB8
/* 0E15A4 8014AEA4 3C02FFFD */   lui   $v0, 0xfffd
/* 0E15A8 8014AEA8 3442FFFF */  ori   $v0, $v0, 0xffff
/* 0E15AC 8014AEAC 00621024 */  and   $v0, $v1, $v0
/* 0E15B0 8014AEB0 08052BBB */  j     func_8014AEEC
/* 0E15B4 8014AEB4 AC820000 */   sw    $v0, ($a0)

.L8014AEB8:
/* 0E15B8 8014AEB8 0000202D */  move  $a0, $zero
/* 0E15BC 8014AEBC 8CC50024 */  lw    $a1, 0x24($a2)
/* 0E15C0 8014AEC0 94C20000 */  lhu   $v0, ($a2)
/* 0E15C4 8014AEC4 24030008 */  addiu $v1, $zero, 8
/* 0E15C8 8014AEC8 AFA30010 */  sw    $v1, 0x10($sp)
/* 0E15CC 8014AECC 00431025 */  or    $v0, $v0, $v1
/* 0E15D0 8014AED0 A4C20000 */  sh    $v0, ($a2)
/* 0E15D4 8014AED4 8CC60028 */  lw    $a2, 0x28($a2)
/* 0E15D8 8014AED8 0C0529F8 */  jal   func_8014A7E0
/* 0E15DC 8014AEDC 0080382D */   move  $a3, $a0
/* 0E15E0 8014AEE0 0000202D */  move  $a0, $zero
/* 0E15E4 8014AEE4 0C015564 */  jal   func_80055590
/* 0E15E8 8014AEE8 240500FA */   addiu $a1, $zero, 0xfa
func_8014AEEC:
.L8014AEEC:
/* 0E15EC 8014AEEC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0E15F0 8014AEF0 03E00008 */  jr    $ra
/* 0E15F4 8014AEF4 27BD0020 */   addiu $sp, $sp, 0x20

func_8014AEF8:
/* 0E15F8 8014AEF8 3C028007 */  lui   $v0, 0x8007
/* 0E15FC 8014AEFC 8C42419C */  lw    $v0, 0x419c($v0)
/* 0E1600 8014AF00 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E1604 8014AF04 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0E1608 8014AF08 AFB00018 */  sw    $s0, 0x18($sp)
/* 0E160C 8014AF0C 80420071 */  lb    $v0, 0x71($v0)
/* 0E1610 8014AF10 3C108016 */  lui   $s0, 0x8016
/* 0E1614 8014AF14 26109AF0 */  addiu $s0, $s0, -0x6510
/* 0E1618 8014AF18 14400018 */  bnez  $v0, .L8014AF7C
/* 0E161C 8014AF1C 3C030002 */   lui   $v1, 2
/* 0E1620 8014AF20 3C02800A */  lui   $v0, 0x800a
/* 0E1624 8014AF24 8C42A650 */  lw    $v0, -0x59b0($v0)
/* 0E1628 8014AF28 00431024 */  and   $v0, $v0, $v1
/* 0E162C 8014AF2C 14400013 */  bnez  $v0, .L8014AF7C
/* 0E1630 8014AF30 0000202D */   move  $a0, $zero
/* 0E1634 8014AF34 0C01554F */  jal   func_8005553C
/* 0E1638 8014AF38 240500FA */   addiu $a1, $zero, 0xfa
/* 0E163C 8014AF3C 0000202D */  move  $a0, $zero
/* 0E1640 8014AF40 8E05001C */  lw    $a1, 0x1c($s0)
/* 0E1644 8014AF44 8E060010 */  lw    $a2, 0x10($s0)
/* 0E1648 8014AF48 8E070014 */  lw    $a3, 0x14($s0)
/* 0E164C 8014AF4C 8E080018 */  lw    $t0, 0x18($s0)
/* 0E1650 8014AF50 96030000 */  lhu   $v1, ($s0)
/* 0E1654 8014AF54 24020008 */  addiu $v0, $zero, 8
/* 0E1658 8014AF58 AFA20010 */  sw    $v0, 0x10($sp)
/* 0E165C 8014AF5C AE060024 */  sw    $a2, 0x24($s0)
/* 0E1660 8014AF60 8E060020 */  lw    $a2, 0x20($s0)
/* 0E1664 8014AF64 34630004 */  ori   $v1, $v1, 4
/* 0E1668 8014AF68 AE070028 */  sw    $a3, 0x28($s0)
/* 0E166C 8014AF6C 240701F4 */  addiu $a3, $zero, 0x1f4
/* 0E1670 8014AF70 AE08002C */  sw    $t0, 0x2c($s0)
/* 0E1674 8014AF74 0C052A46 */  jal   func_8014A918
/* 0E1678 8014AF78 A6030000 */   sh    $v1, ($s0)
.L8014AF7C:
/* 0E167C 8014AF7C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0E1680 8014AF80 8FB00018 */  lw    $s0, 0x18($sp)
/* 0E1684 8014AF84 03E00008 */  jr    $ra
/* 0E1688 8014AF88 27BD0020 */   addiu $sp, $sp, 0x20

func_8014AF8C:
/* 0E168C 8014AF8C 3C028016 */  lui   $v0, 0x8016
/* 0E1690 8014AF90 24429AF0 */  addiu $v0, $v0, -0x6510
/* 0E1694 8014AF94 AC44001C */  sw    $a0, 0x1c($v0)
/* 0E1698 8014AF98 03E00008 */  jr    $ra
/* 0E169C 8014AF9C AC450020 */   sw    $a1, 0x20($v0)

/* 0E16A0 8014AFA0 03E00008 */  jr    $ra
/* 0E16A4 8014AFA4 00000000 */   nop   

/* 0E16A8 8014AFA8 00000000 */  nop   
/* 0E16AC 8014AFAC 00000000 */  nop   
