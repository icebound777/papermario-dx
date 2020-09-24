.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel make_item_entity
/* C7AF4 801313F4 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* C7AF8 801313F8 AFB20028 */  sw        $s2, 0x28($sp)
/* C7AFC 801313FC 0080902D */  daddu     $s2, $a0, $zero
/* C7B00 80131400 AFB10024 */  sw        $s1, 0x24($sp)
/* C7B04 80131404 8FB10054 */  lw        $s1, 0x54($sp)
/* C7B08 80131408 3C02F8D8 */  lui       $v0, 0xf8d8
/* C7B0C 8013140C AFB3002C */  sw        $s3, 0x2c($sp)
/* C7B10 80131410 8FB30048 */  lw        $s3, 0x48($sp)
/* C7B14 80131414 3442F200 */  ori       $v0, $v0, 0xf200
/* C7B18 80131418 AFBF0034 */  sw        $ra, 0x34($sp)
/* C7B1C 8013141C AFB40030 */  sw        $s4, 0x30($sp)
/* C7B20 80131420 AFB00020 */  sw        $s0, 0x20($sp)
/* C7B24 80131424 AFA5003C */  sw        $a1, 0x3c($sp)
/* C7B28 80131428 AFA60040 */  sw        $a2, 0x40($sp)
/* C7B2C 8013142C 0051102A */  slt       $v0, $v0, $s1
/* C7B30 80131430 14400004 */  bnez      $v0, .L80131444
/* C7B34 80131434 AFA70044 */   sw       $a3, 0x44($sp)
/* C7B38 80131438 3C0207BF */  lui       $v0, 0x7bf
/* C7B3C 8013143C 3442A480 */  ori       $v0, $v0, 0xa480
/* C7B40 80131440 02228821 */  addu      $s1, $s1, $v0
.L80131444:
/* C7B44 80131444 1A20000C */  blez      $s1, .L80131478
/* C7B48 80131448 2E620017 */   sltiu    $v0, $s3, 0x17
/* C7B4C 8013144C 1040000A */  beqz      $v0, .L80131478
/* C7B50 80131450 00131080 */   sll      $v0, $s3, 2
/* C7B54 80131454 3C018015 */  lui       $at, 0x8015
/* C7B58 80131458 00220821 */  addu      $at, $at, $v0
/* C7B5C 8013145C 8C220A98 */  lw        $v0, 0xa98($at)
/* C7B60 80131460 00400008 */  jr        $v0
/* C7B64 80131464 00000000 */   nop      
/* C7B68 80131468 0C05152F */  jal       get_global_flag
/* C7B6C 8013146C 0220202D */   daddu    $a0, $s1, $zero
/* C7B70 80131470 14400180 */  bnez      $v0, .L80131A74
/* C7B74 80131474 2402FFFF */   addiu    $v0, $zero, -1
.L80131478:
/* C7B78 80131478 0000182D */  daddu     $v1, $zero, $zero
/* C7B7C 8013147C 3C048015 */  lui       $a0, 0x8015
/* C7B80 80131480 8C8465A0 */  lw        $a0, 0x65a0($a0)
.L80131484:
/* C7B84 80131484 8C820000 */  lw        $v0, ($a0)
/* C7B88 80131488 10400006 */  beqz      $v0, .L801314A4
/* C7B8C 8013148C 28620100 */   slti     $v0, $v1, 0x100
/* C7B90 80131490 24630001 */  addiu     $v1, $v1, 1
/* C7B94 80131494 28620100 */  slti      $v0, $v1, 0x100
/* C7B98 80131498 1440FFFA */  bnez      $v0, .L80131484
/* C7B9C 8013149C 24840004 */   addiu    $a0, $a0, 4
/* C7BA0 801314A0 28620100 */  slti      $v0, $v1, 0x100
.L801314A4:
/* C7BA4 801314A4 54400003 */  bnel      $v0, $zero, .L801314B4
/* C7BA8 801314A8 2404005C */   addiu    $a0, $zero, 0x5c
.L801314AC:
/* C7BAC 801314AC 0804C52B */  j         .L801314AC
/* C7BB0 801314B0 00000000 */   nop      
.L801314B4:
/* C7BB4 801314B4 0C00AB39 */  jal       heap_malloc
/* C7BB8 801314B8 0060A02D */   daddu    $s4, $v1, $zero
/* C7BBC 801314BC 00142080 */  sll       $a0, $s4, 2
/* C7BC0 801314C0 3C038015 */  lui       $v1, 0x8015
/* C7BC4 801314C4 8C6365A0 */  lw        $v1, 0x65a0($v1)
/* C7BC8 801314C8 3C058015 */  lui       $a1, 0x8015
/* C7BCC 801314CC 24A512F8 */  addiu     $a1, $a1, 0x12f8
/* C7BD0 801314D0 00832021 */  addu      $a0, $a0, $v1
/* C7BD4 801314D4 8CA30000 */  lw        $v1, ($a1)
/* C7BD8 801314D8 0040802D */  daddu     $s0, $v0, $zero
/* C7BDC 801314DC AC900000 */  sw        $s0, ($a0)
/* C7BE0 801314E0 24630001 */  addiu     $v1, $v1, 1
/* C7BE4 801314E4 16000003 */  bnez      $s0, .L801314F4
/* C7BE8 801314E8 ACA30000 */   sw       $v1, ($a1)
.L801314EC:
/* C7BEC 801314EC 0804C53B */  j         .L801314EC
/* C7BF0 801314F0 00000000 */   nop      
.L801314F4:
/* C7BF4 801314F4 00121402 */  srl       $v0, $s2, 0x10
/* C7BF8 801314F8 3042000F */  andi      $v0, $v0, 0xf
/* C7BFC 801314FC 24030005 */  addiu     $v1, $zero, 5
/* C7C00 80131500 14430003 */  bne       $v0, $v1, .L80131510
/* C7C04 80131504 A202001D */   sb       $v0, 0x1d($s0)
/* C7C08 80131508 2402FFFF */  addiu     $v0, $zero, -1
/* C7C0C 8013150C A202001D */  sb        $v0, 0x1d($s0)
.L80131510:
/* C7C10 80131510 3252FFFF */  andi      $s2, $s2, 0xffff
/* C7C14 80131514 A213001B */  sb        $s3, 0x1b($s0)
/* C7C18 80131518 A200001A */  sb        $zero, 0x1a($s0)
/* C7C1C 8013151C C7A2003C */  lwc1      $f2, 0x3c($sp)
/* C7C20 80131520 C7A40040 */  lwc1      $f4, 0x40($sp)
/* C7C24 80131524 C7A60044 */  lwc1      $f6, 0x44($sp)
/* C7C28 80131528 24020097 */  addiu     $v0, $zero, 0x97
/* C7C2C 8013152C AE020000 */  sw        $v0, ($s0)
/* C7C30 80131530 A6000006 */  sh        $zero, 6($s0)
/* C7C34 80131534 A6110004 */  sh        $s1, 4($s0)
/* C7C38 80131538 A6120018 */  sh        $s2, 0x18($s0)
/* C7C3C 8013153C AE000014 */  sw        $zero, 0x14($s0)
/* C7C40 80131540 8FA2004C */  lw        $v0, 0x4c($sp)
/* C7C44 80131544 3C013F80 */  lui       $at, 0x3f80
/* C7C48 80131548 44810000 */  mtc1      $at, $f0
/* C7C4C 8013154C 8E030000 */  lw        $v1, ($s0)
/* C7C50 80131550 A202001C */  sb        $v0, 0x1c($s0)
/* C7C54 80131554 8FA20050 */  lw        $v0, 0x50($sp)
/* C7C58 80131558 34644000 */  ori       $a0, $v1, 0x4000
/* C7C5C 8013155C E6020008 */  swc1      $f2, 8($s0)
/* C7C60 80131560 E604000C */  swc1      $f4, 0xc($s0)
/* C7C64 80131564 E6060010 */  swc1      $f6, 0x10($s0)
/* C7C68 80131568 E6000030 */  swc1      $f0, 0x30($s0)
/* C7C6C 8013156C AE040000 */  sw        $a0, ($s0)
/* C7C70 80131570 A602001E */  sh        $v0, 0x1e($s0)
/* C7C74 80131574 2402FFFF */  addiu     $v0, $zero, -1
/* C7C78 80131578 A6020020 */  sh        $v0, 0x20($s0)
/* C7C7C 8013157C 24020001 */  addiu     $v0, $zero, 1
/* C7C80 80131580 A202002E */  sb        $v0, 0x2e($s0)
/* C7C84 80131584 2402D8F1 */  addiu     $v0, $zero, -0x270f
/* C7C88 80131588 A6020034 */  sh        $v0, 0x34($s0)
/* C7C8C 8013158C A6020036 */  sh        $v0, 0x36($s0)
/* C7C90 80131590 A6020038 */  sh        $v0, 0x38($s0)
/* C7C94 80131594 00121140 */  sll       $v0, $s2, 5
/* C7C98 80131598 3C018008 */  lui       $at, 0x8008
/* C7C9C 8013159C 00220821 */  addu      $at, $at, $v0
/* C7CA0 801315A0 942278F8 */  lhu       $v0, 0x78f8($at)
/* C7CA4 801315A4 2403001E */  addiu     $v1, $zero, 0x1e
/* C7CA8 801315A8 3C018015 */  lui       $at, 0x8015
/* C7CAC 801315AC A42365A6 */  sh        $v1, 0x65a6($at)
/* C7CB0 801315B0 30421000 */  andi      $v0, $v0, 0x1000
/* C7CB4 801315B4 10400005 */  beqz      $v0, .L801315CC
/* C7CB8 801315B8 3C020004 */   lui      $v0, 4
/* C7CBC 801315BC 00821025 */  or        $v0, $a0, $v0
/* C7CC0 801315C0 2403BFFF */  addiu     $v1, $zero, -0x4001
/* C7CC4 801315C4 00431024 */  and       $v0, $v0, $v1
/* C7CC8 801315C8 AE020000 */  sw        $v0, ($s0)
.L801315CC:
/* C7CCC 801315CC 3C048015 */  lui       $a0, 0x8015
/* C7CD0 801315D0 24845D84 */  addiu     $a0, $a0, 0x5d84
/* C7CD4 801315D4 8C820000 */  lw        $v0, ($a0)
/* C7CD8 801315D8 10400005 */  beqz      $v0, .L801315F0
/* C7CDC 801315DC 3C030002 */   lui      $v1, 2
/* C7CE0 801315E0 8E020000 */  lw        $v0, ($s0)
/* C7CE4 801315E4 00431025 */  or        $v0, $v0, $v1
/* C7CE8 801315E8 AE020000 */  sw        $v0, ($s0)
/* C7CEC 801315EC 8C820000 */  lw        $v0, ($a0)
.L801315F0:
/* C7CF0 801315F0 24030001 */  addiu     $v1, $zero, 1
/* C7CF4 801315F4 00621823 */  subu      $v1, $v1, $v0
/* C7CF8 801315F8 AC830000 */  sw        $v1, ($a0)
/* C7CFC 801315FC 8203001B */  lb        $v1, 0x1b($s0)
/* C7D00 80131600 2C62001C */  sltiu     $v0, $v1, 0x1c
/* C7D04 80131604 104000C1 */  beqz      $v0, .L8013190C
/* C7D08 80131608 00031080 */   sll      $v0, $v1, 2
/* C7D0C 8013160C 3C018015 */  lui       $at, 0x8015
/* C7D10 80131610 00220821 */  addu      $at, $at, $v0
/* C7D14 80131614 8C220AF8 */  lw        $v0, 0xaf8($at)
/* C7D18 80131618 00400008 */  jr        $v0
/* C7D1C 8013161C 00000000 */   nop      
/* C7D20 80131620 8E020000 */  lw        $v0, ($s0)
/* C7D24 80131624 0804C640 */  j         .L80131900
/* C7D28 80131628 3C038000 */   lui      $v1, 0x8000
/* C7D2C 8013162C 8E020000 */  lw        $v0, ($s0)
/* C7D30 80131630 0804C640 */  j         .L80131900
/* C7D34 80131634 3C030080 */   lui      $v1, 0x80
/* C7D38 80131638 8E020000 */  lw        $v0, ($s0)
/* C7D3C 8013163C 0804C640 */  j         .L80131900
/* C7D40 80131640 3C030010 */   lui      $v1, 0x10
/* C7D44 80131644 24020003 */  addiu     $v0, $zero, 3
/* C7D48 80131648 A202001B */  sb        $v0, 0x1b($s0)
/* C7D4C 8013164C 8E020000 */  lw        $v0, ($s0)
/* C7D50 80131650 3C030080 */  lui       $v1, 0x80
/* C7D54 80131654 00431025 */  or        $v0, $v0, $v1
/* C7D58 80131658 0804C640 */  j         .L80131900
/* C7D5C 8013165C 3C030001 */   lui      $v1, 1
/* C7D60 80131660 3C020080 */  lui       $v0, 0x80
/* C7D64 80131664 34420600 */  ori       $v0, $v0, 0x600
/* C7D68 80131668 8E030000 */  lw        $v1, ($s0)
/* C7D6C 8013166C 0804C635 */  j         .L801318D4
/* C7D70 80131670 24040003 */   addiu    $a0, $zero, 3
/* C7D74 80131674 3C020080 */  lui       $v0, 0x80
/* C7D78 80131678 34420400 */  ori       $v0, $v0, 0x400
/* C7D7C 8013167C 8E030000 */  lw        $v1, ($s0)
/* C7D80 80131680 0804C635 */  j         .L801318D4
/* C7D84 80131684 24040003 */   addiu    $a0, $zero, 3
/* C7D88 80131688 3C020080 */  lui       $v0, 0x80
/* C7D8C 8013168C 34420800 */  ori       $v0, $v0, 0x800
/* C7D90 80131690 8E030000 */  lw        $v1, ($s0)
/* C7D94 80131694 0804C635 */  j         .L801318D4
/* C7D98 80131698 24040003 */   addiu    $a0, $zero, 3
/* C7D9C 8013169C 3C020080 */  lui       $v0, 0x80
/* C7DA0 801316A0 34420A00 */  ori       $v0, $v0, 0xa00
/* C7DA4 801316A4 8E030000 */  lw        $v1, ($s0)
/* C7DA8 801316A8 0804C635 */  j         .L801318D4
/* C7DAC 801316AC 24040003 */   addiu    $a0, $zero, 3
/* C7DB0 801316B0 3C020080 */  lui       $v0, 0x80
/* C7DB4 801316B4 34420200 */  ori       $v0, $v0, 0x200
/* C7DB8 801316B8 8E030000 */  lw        $v1, ($s0)
/* C7DBC 801316BC 0804C635 */  j         .L801318D4
/* C7DC0 801316C0 24040003 */   addiu    $a0, $zero, 3
/* C7DC4 801316C4 3C040080 */  lui       $a0, 0x80
/* C7DC8 801316C8 34840400 */  ori       $a0, $a0, 0x400
/* C7DCC 801316CC 8E020000 */  lw        $v0, ($s0)
/* C7DD0 801316D0 24030003 */  addiu     $v1, $zero, 3
/* C7DD4 801316D4 A203001B */  sb        $v1, 0x1b($s0)
/* C7DD8 801316D8 0804C63F */  j         .L801318FC
/* C7DDC 801316DC 3C034000 */   lui      $v1, 0x4000
/* C7DE0 801316E0 3C050080 */  lui       $a1, 0x80
/* C7DE4 801316E4 34A50400 */  ori       $a1, $a1, 0x400
/* C7DE8 801316E8 3C044000 */  lui       $a0, 0x4000
/* C7DEC 801316EC 34840200 */  ori       $a0, $a0, 0x200
/* C7DF0 801316F0 8E020000 */  lw        $v0, ($s0)
/* C7DF4 801316F4 24030003 */  addiu     $v1, $zero, 3
/* C7DF8 801316F8 A203001B */  sb        $v1, 0x1b($s0)
/* C7DFC 801316FC 00451025 */  or        $v0, $v0, $a1
/* C7E00 80131700 0804C641 */  j         .L80131904
/* C7E04 80131704 00441025 */   or       $v0, $v0, $a0
/* C7E08 80131708 8E020000 */  lw        $v0, ($s0)
/* C7E0C 8013170C 0804C640 */  j         .L80131900
/* C7E10 80131710 3C030080 */   lui      $v1, 0x80
/* C7E14 80131714 3C020080 */  lui       $v0, 0x80
/* C7E18 80131718 34420600 */  ori       $v0, $v0, 0x600
/* C7E1C 8013171C 8E030000 */  lw        $v1, ($s0)
/* C7E20 80131720 0804C635 */  j         .L801318D4
/* C7E24 80131724 2404000C */   addiu    $a0, $zero, 0xc
/* C7E28 80131728 3C020080 */  lui       $v0, 0x80
/* C7E2C 8013172C 34420400 */  ori       $v0, $v0, 0x400
/* C7E30 80131730 8E030000 */  lw        $v1, ($s0)
/* C7E34 80131734 0804C635 */  j         .L801318D4
/* C7E38 80131738 2404000C */   addiu    $a0, $zero, 0xc
/* C7E3C 8013173C 3C020080 */  lui       $v0, 0x80
/* C7E40 80131740 34420800 */  ori       $v0, $v0, 0x800
/* C7E44 80131744 8E030000 */  lw        $v1, ($s0)
/* C7E48 80131748 0804C635 */  j         .L801318D4
/* C7E4C 8013174C 2404000C */   addiu    $a0, $zero, 0xc
/* C7E50 80131750 3C020080 */  lui       $v0, 0x80
/* C7E54 80131754 8E030000 */  lw        $v1, ($s0)
/* C7E58 80131758 34422000 */  ori       $v0, $v0, 0x2000
/* C7E5C 8013175C 00621825 */  or        $v1, $v1, $v0
/* C7E60 80131760 0804C636 */  j         .L801318D8
/* C7E64 80131764 3C021000 */   lui      $v0, 0x1000
/* C7E68 80131768 3C040080 */  lui       $a0, 0x80
/* C7E6C 8013176C 34842600 */  ori       $a0, $a0, 0x2600
/* C7E70 80131770 8E020000 */  lw        $v0, ($s0)
/* C7E74 80131774 24030010 */  addiu     $v1, $zero, 0x10
/* C7E78 80131778 A203001B */  sb        $v1, 0x1b($s0)
/* C7E7C 8013177C 0804C63F */  j         .L801318FC
/* C7E80 80131780 3C031000 */   lui      $v1, 0x1000
/* C7E84 80131784 3C040080 */  lui       $a0, 0x80
/* C7E88 80131788 34842400 */  ori       $a0, $a0, 0x2400
/* C7E8C 8013178C 8E020000 */  lw        $v0, ($s0)
/* C7E90 80131790 24030010 */  addiu     $v1, $zero, 0x10
/* C7E94 80131794 A203001B */  sb        $v1, 0x1b($s0)
/* C7E98 80131798 0804C63F */  j         .L801318FC
/* C7E9C 8013179C 3C031000 */   lui      $v1, 0x1000
/* C7EA0 801317A0 3C040080 */  lui       $a0, 0x80
/* C7EA4 801317A4 34842200 */  ori       $a0, $a0, 0x2200
/* C7EA8 801317A8 8E020000 */  lw        $v0, ($s0)
/* C7EAC 801317AC 24030010 */  addiu     $v1, $zero, 0x10
/* C7EB0 801317B0 A203001B */  sb        $v1, 0x1b($s0)
/* C7EB4 801317B4 0804C63F */  j         .L801318FC
/* C7EB8 801317B8 3C031000 */   lui      $v1, 0x1000
/* C7EBC 801317BC 3C030080 */  lui       $v1, 0x80
/* C7EC0 801317C0 34631000 */  ori       $v1, $v1, 0x1000
/* C7EC4 801317C4 8E020000 */  lw        $v0, ($s0)
/* C7EC8 801317C8 3C013F4C */  lui       $at, 0x3f4c
/* C7ECC 801317CC 3421CCCD */  ori       $at, $at, 0xcccd
/* C7ED0 801317D0 44810000 */  mtc1      $at, $f0
/* C7ED4 801317D4 00431025 */  or        $v0, $v0, $v1
/* C7ED8 801317D8 AE020000 */  sw        $v0, ($s0)
/* C7EDC 801317DC 34424000 */  ori       $v0, $v0, 0x4000
/* C7EE0 801317E0 0804C641 */  j         .L80131904
/* C7EE4 801317E4 E6000030 */   swc1     $f0, 0x30($s0)
/* C7EE8 801317E8 3C030080 */  lui       $v1, 0x80
/* C7EEC 801317EC 34631000 */  ori       $v1, $v1, 0x1000
/* C7EF0 801317F0 8E020000 */  lw        $v0, ($s0)
/* C7EF4 801317F4 3C013F4C */  lui       $at, 0x3f4c
/* C7EF8 801317F8 3421CCCD */  ori       $at, $at, 0xcccd
/* C7EFC 801317FC 44810000 */  mtc1      $at, $f0
/* C7F00 80131800 00431025 */  or        $v0, $v0, $v1
/* C7F04 80131804 3C030001 */  lui       $v1, 1
/* C7F08 80131808 00431025 */  or        $v0, $v0, $v1
/* C7F0C 8013180C AE020000 */  sw        $v0, ($s0)
/* C7F10 80131810 0040182D */  daddu     $v1, $v0, $zero
/* C7F14 80131814 0804C628 */  j         .L801318A0
/* C7F18 80131818 24020017 */   addiu    $v0, $zero, 0x17
/* C7F1C 8013181C 3C030080 */  lui       $v1, 0x80
/* C7F20 80131820 34631000 */  ori       $v1, $v1, 0x1000
/* C7F24 80131824 8E020000 */  lw        $v0, ($s0)
/* C7F28 80131828 3C013F4C */  lui       $at, 0x3f4c
/* C7F2C 8013182C 3421CCCD */  ori       $at, $at, 0xcccd
/* C7F30 80131830 44810000 */  mtc1      $at, $f0
/* C7F34 80131834 00431025 */  or        $v0, $v0, $v1
/* C7F38 80131838 3C030040 */  lui       $v1, 0x40
/* C7F3C 8013183C 00431025 */  or        $v0, $v0, $v1
/* C7F40 80131840 AE020000 */  sw        $v0, ($s0)
/* C7F44 80131844 0040182D */  daddu     $v1, $v0, $zero
/* C7F48 80131848 0804C628 */  j         .L801318A0
/* C7F4C 8013184C 24020017 */   addiu    $v0, $zero, 0x17
/* C7F50 80131850 3C030080 */  lui       $v1, 0x80
/* C7F54 80131854 8E020000 */  lw        $v0, ($s0)
/* C7F58 80131858 3C013F4C */  lui       $at, 0x3f4c
/* C7F5C 8013185C 3421CCCD */  ori       $at, $at, 0xcccd
/* C7F60 80131860 44810000 */  mtc1      $at, $f0
/* C7F64 80131864 00431025 */  or        $v0, $v0, $v1
/* C7F68 80131868 AE020000 */  sw        $v0, ($s0)
/* C7F6C 8013186C 0040182D */  daddu     $v1, $v0, $zero
/* C7F70 80131870 0804C628 */  j         .L801318A0
/* C7F74 80131874 24020003 */   addiu    $v0, $zero, 3
/* C7F78 80131878 3C030080 */  lui       $v1, 0x80
/* C7F7C 8013187C 34638000 */  ori       $v1, $v1, 0x8000
/* C7F80 80131880 8E020000 */  lw        $v0, ($s0)
/* C7F84 80131884 3C013F4C */  lui       $at, 0x3f4c
/* C7F88 80131888 3421CCCD */  ori       $at, $at, 0xcccd
/* C7F8C 8013188C 44810000 */  mtc1      $at, $f0
/* C7F90 80131890 00431025 */  or        $v0, $v0, $v1
/* C7F94 80131894 AE020000 */  sw        $v0, ($s0)
/* C7F98 80131898 0040182D */  daddu     $v1, $v0, $zero
/* C7F9C 8013189C 24020014 */  addiu     $v0, $zero, 0x14
.L801318A0:
/* C7FA0 801318A0 34634000 */  ori       $v1, $v1, 0x4000
/* C7FA4 801318A4 A202001B */  sb        $v0, 0x1b($s0)
/* C7FA8 801318A8 E6000030 */  swc1      $f0, 0x30($s0)
/* C7FAC 801318AC 0804C642 */  j         .L80131908
/* C7FB0 801318B0 AE030000 */   sw       $v1, ($s0)
/* C7FB4 801318B4 3C030080 */  lui       $v1, 0x80
/* C7FB8 801318B8 8E020000 */  lw        $v0, ($s0)
/* C7FBC 801318BC 0804C640 */  j         .L80131900
/* C7FC0 801318C0 34638200 */   ori      $v1, $v1, 0x8200
/* C7FC4 801318C4 3C020080 */  lui       $v0, 0x80
/* C7FC8 801318C8 34428600 */  ori       $v0, $v0, 0x8600
/* C7FCC 801318CC 8E030000 */  lw        $v1, ($s0)
/* C7FD0 801318D0 24040014 */  addiu     $a0, $zero, 0x14
.L801318D4:
/* C7FD4 801318D4 A204001B */  sb        $a0, 0x1b($s0)
.L801318D8:
/* C7FD8 801318D8 00621825 */  or        $v1, $v1, $v0
/* C7FDC 801318DC 0804C642 */  j         .L80131908
/* C7FE0 801318E0 AE030000 */   sw       $v1, ($s0)
/* C7FE4 801318E4 3C040080 */  lui       $a0, 0x80
/* C7FE8 801318E8 34840600 */  ori       $a0, $a0, 0x600
/* C7FEC 801318EC 8E020000 */  lw        $v0, ($s0)
/* C7FF0 801318F0 24030003 */  addiu     $v1, $zero, 3
/* C7FF4 801318F4 A203001B */  sb        $v1, 0x1b($s0)
/* C7FF8 801318F8 3C030100 */  lui       $v1, 0x100
.L801318FC:
/* C7FFC 801318FC 00441025 */  or        $v0, $v0, $a0
.L80131900:
/* C8000 80131900 00431025 */  or        $v0, $v0, $v1
.L80131904:
/* C8004 80131904 AE020000 */  sw        $v0, ($s0)
.L80131908:
/* C8008 80131908 8203001B */  lb        $v1, 0x1b($s0)
.L8013190C:
/* C800C 8013190C 2C620015 */  sltiu     $v0, $v1, 0x15
/* C8010 80131910 1040003E */  beqz      $v0, .L80131A0C
/* C8014 80131914 00031080 */   sll      $v0, $v1, 2
/* C8018 80131918 3C018015 */  lui       $at, 0x8015
/* C801C 8013191C 00220821 */  addu      $at, $at, $v0
/* C8020 80131920 8C220B68 */  lw        $v0, 0xb68($at)
/* C8024 80131924 00400008 */  jr        $v0
/* C8028 80131928 00000000 */   nop      
/* C802C 8013192C 8E050008 */  lw        $a1, 8($s0)
/* C8030 80131930 8E06000C */  lw        $a2, 0xc($s0)
/* C8034 80131934 8E070010 */  lw        $a3, 0x10($s0)
/* C8038 80131938 0C044898 */  jal       create_shadow_type
/* C803C 8013193C 0000202D */   daddu    $a0, $zero, $zero
/* C8040 80131940 00022400 */  sll       $a0, $v0, 0x10
/* C8044 80131944 00042403 */  sra       $a0, $a0, 0x10
/* C8048 80131948 0C044181 */  jal       get_shadow_by_index
/* C804C 8013194C A6020020 */   sh       $v0, 0x20($s0)
/* C8050 80131950 0040882D */  daddu     $s1, $v0, $zero
/* C8054 80131954 8203001B */  lb        $v1, 0x1b($s0)
/* C8058 80131958 24020014 */  addiu     $v0, $zero, 0x14
/* C805C 8013195C 14620004 */  bne       $v1, $v0, .L80131970
/* C8060 80131960 3C040002 */   lui      $a0, 2
/* C8064 80131964 8E220000 */  lw        $v0, ($s1)
/* C8068 80131968 34420001 */  ori       $v0, $v0, 1
/* C806C 8013196C AE220000 */  sw        $v0, ($s1)
.L80131970:
/* C8070 80131970 27A5003C */  addiu     $a1, $sp, 0x3c
/* C8074 80131974 27A60040 */  addiu     $a2, $sp, 0x40
/* C8078 80131978 27A70044 */  addiu     $a3, $sp, 0x44
/* C807C 8013197C 27A20018 */  addiu     $v0, $sp, 0x18
/* C8080 80131980 C6080008 */  lwc1      $f8, 8($s0)
/* C8084 80131984 C600000C */  lwc1      $f0, 0xc($s0)
/* C8088 80131988 3C014140 */  lui       $at, 0x4140
/* C808C 8013198C 44811000 */  mtc1      $at, $f2
/* C8090 80131990 C6040010 */  lwc1      $f4, 0x10($s0)
/* C8094 80131994 3C01447A */  lui       $at, 0x447a
/* C8098 80131998 44813000 */  mtc1      $at, $f6
/* C809C 8013199C 46020000 */  add.s     $f0, $f0, $f2
/* C80A0 801319A0 E7A8003C */  swc1      $f8, 0x3c($sp)
/* C80A4 801319A4 E7A40044 */  swc1      $f4, 0x44($sp)
/* C80A8 801319A8 E7A00040 */  swc1      $f0, 0x40($sp)
/* C80AC 801319AC E7A60018 */  swc1      $f6, 0x18($sp)
/* C80B0 801319B0 0C0372DF */  jal       func_800DCB7C
/* C80B4 801319B4 AFA20010 */   sw       $v0, 0x10($sp)
/* C80B8 801319B8 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* C80BC 801319BC C7A20040 */  lwc1      $f2, 0x40($sp)
/* C80C0 801319C0 C7A40044 */  lwc1      $f4, 0x44($sp)
/* C80C4 801319C4 3C028007 */  lui       $v0, 0x8007
/* C80C8 801319C8 8C42419C */  lw        $v0, 0x419c($v0)
/* C80CC 801319CC E6200010 */  swc1      $f0, 0x10($s1)
/* C80D0 801319D0 E6220014 */  swc1      $f2, 0x14($s1)
/* C80D4 801319D4 E6240018 */  swc1      $f4, 0x18($s1)
/* C80D8 801319D8 C7A20018 */  lwc1      $f2, 0x18($sp)
/* C80DC 801319DC 3C013F00 */  lui       $at, 0x3f00
/* C80E0 801319E0 44810000 */  mtc1      $at, $f0
/* C80E4 801319E4 C444011C */  lwc1      $f4, 0x11c($v0)
/* C80E8 801319E8 46001082 */  mul.s     $f2, $f2, $f0
/* C80EC 801319EC 00000000 */  nop       
/* C80F0 801319F0 AE20002C */  sw        $zero, 0x2c($s1)
/* C80F4 801319F4 E6240028 */  swc1      $f4, 0x28($s1)
/* C80F8 801319F8 C4400124 */  lwc1      $f0, 0x124($v0)
/* C80FC 801319FC 44051000 */  mfc1      $a1, $f2
/* C8100 80131A00 0220202D */  daddu     $a0, $s1, $zero
/* C8104 80131A04 0C044A17 */  jal       set_standard_shadow_scale
/* C8108 80131A08 E4800030 */   swc1     $f0, 0x30($a0)
.L80131A0C:
/* C810C 80131A0C 9202001C */  lbu       $v0, 0x1c($s0)
/* C8110 80131A10 10400003 */  beqz      $v0, .L80131A20
/* C8114 80131A14 00000000 */   nop      
/* C8118 80131A18 0C04C3DC */  jal       func_80130F70
/* C811C 80131A1C 0200202D */   daddu    $a0, $s0, $zero
.L80131A20:
/* C8120 80131A20 0C04C44A */  jal       func_80131128
/* C8124 80131A24 0200202D */   daddu    $a0, $s0, $zero
/* C8128 80131A28 86030018 */  lh        $v1, 0x18($s0)
/* C812C 80131A2C 24020157 */  addiu     $v0, $zero, 0x157
/* C8130 80131A30 14620009 */  bne       $v1, $v0, .L80131A58
/* C8134 80131A34 2402015C */   addiu    $v0, $zero, 0x15c
/* C8138 80131A38 3C058010 */  lui       $a1, 0x8010
/* C813C 80131A3C 24A54AC0 */  addiu     $a1, $a1, 0x4ac0
/* C8140 80131A40 0C04C27C */  jal       func_801309F0
/* C8144 80131A44 0200202D */   daddu    $a0, $s0, $zero
/* C8148 80131A48 0C04C2B3 */  jal       func_80130ACC
/* C814C 80131A4C 0200202D */   daddu    $a0, $s0, $zero
/* C8150 80131A50 86030018 */  lh        $v1, 0x18($s0)
/* C8154 80131A54 2402015C */  addiu     $v0, $zero, 0x15c
.L80131A58:
/* C8158 80131A58 14620006 */  bne       $v1, $v0, .L80131A74
/* C815C 80131A5C 0280102D */   daddu    $v0, $s4, $zero
/* C8160 80131A60 8E020000 */  lw        $v0, ($s0)
/* C8164 80131A64 2403FF7F */  addiu     $v1, $zero, -0x81
/* C8168 80131A68 00431024 */  and       $v0, $v0, $v1
/* C816C 80131A6C AE020000 */  sw        $v0, ($s0)
/* C8170 80131A70 0280102D */  daddu     $v0, $s4, $zero
.L80131A74:
/* C8174 80131A74 8FBF0034 */  lw        $ra, 0x34($sp)
/* C8178 80131A78 8FB40030 */  lw        $s4, 0x30($sp)
/* C817C 80131A7C 8FB3002C */  lw        $s3, 0x2c($sp)
/* C8180 80131A80 8FB20028 */  lw        $s2, 0x28($sp)
/* C8184 80131A84 8FB10024 */  lw        $s1, 0x24($sp)
/* C8188 80131A88 8FB00020 */  lw        $s0, 0x20($sp)
/* C818C 80131A8C 03E00008 */  jr        $ra
/* C8190 80131A90 27BD0038 */   addiu    $sp, $sp, 0x38
