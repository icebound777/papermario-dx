.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel update_enemy_action
/* 175E50 80247570 3C03800E */  lui       $v1, 0x800e
/* 175E54 80247574 8C63C4DC */  lw        $v1, -0x3b24($v1)
/* 175E58 80247578 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 175E5C 8024757C AFB60028 */  sw        $s6, 0x28($sp)
/* 175E60 80247580 3C16800E */  lui       $s6, 0x800e
/* 175E64 80247584 26D6C070 */  addiu     $s6, $s6, -0x3f90
/* 175E68 80247588 AFBF002C */  sw        $ra, 0x2c($sp)
/* 175E6C 8024758C AFB50024 */  sw        $s5, 0x24($sp)
/* 175E70 80247590 AFB40020 */  sw        $s4, 0x20($sp)
/* 175E74 80247594 AFB3001C */  sw        $s3, 0x1c($sp)
/* 175E78 80247598 AFB20018 */  sw        $s2, 0x18($sp)
/* 175E7C 8024759C AFB10014 */  sw        $s1, 0x14($sp)
/* 175E80 802475A0 AFB00010 */  sw        $s0, 0x10($sp)
/* 175E84 802475A4 8ED500D8 */  lw        $s5, 0xd8($s6)
/* 175E88 802475A8 8ED400DC */  lw        $s4, 0xdc($s6)
/* 175E8C 802475AC 2C62000D */  sltiu     $v0, $v1, 0xd
/* 175E90 802475B0 10400106 */  beqz      $v0, .L802479CC
/* 175E94 802475B4 00031080 */   sll      $v0, $v1, 2
/* 175E98 802475B8 3C01802A */  lui       $at, 0x802a
/* 175E9C 802475BC 00220821 */  addu      $at, $at, $v0
/* 175EA0 802475C0 8C22CB88 */  lw        $v0, -0x3478($at)
/* 175EA4 802475C4 00400008 */  jr        $v0
/* 175EA8 802475C8 00000000 */   nop      
/* 175EAC 802475CC 3C04FFDF */  lui       $a0, 0xffdf
/* 175EB0 802475D0 3484FFFF */  ori       $a0, $a0, 0xffff
/* 175EB4 802475D4 3C05F7FF */  lui       $a1, 0xf7ff
/* 175EB8 802475D8 3C10800E */  lui       $s0, 0x800e
/* 175EBC 802475DC 2610C070 */  addiu     $s0, $s0, -0x3f90
/* 175EC0 802475E0 8E020000 */  lw        $v0, ($s0)
/* 175EC4 802475E4 2403FFFD */  addiu     $v1, $zero, -3
/* 175EC8 802475E8 00431024 */  and       $v0, $v0, $v1
/* 175ECC 802475EC 00441024 */  and       $v0, $v0, $a0
/* 175ED0 802475F0 AE020000 */  sw        $v0, ($s0)
/* 175ED4 802475F4 8EA20000 */  lw        $v0, ($s5)
/* 175ED8 802475F8 34A5FFFF */  ori       $a1, $a1, 0xffff
/* 175EDC 802475FC 00451024 */  and       $v0, $v0, $a1
/* 175EE0 80247600 12800004 */  beqz      $s4, .L80247614
/* 175EE4 80247604 AEA20000 */   sw       $v0, ($s5)
/* 175EE8 80247608 8E820000 */  lw        $v0, ($s4)
/* 175EEC 8024760C 00451024 */  and       $v0, $v0, $a1
/* 175EF0 80247610 AE820000 */  sw        $v0, ($s4)
.L80247614:
/* 175EF4 80247614 2402007F */  addiu     $v0, $zero, 0x7f
/* 175EF8 80247618 A2C0008C */  sb        $zero, 0x8c($s6)
/* 175EFC 8024761C A6C00180 */  sh        $zero, 0x180($s6)
/* 175F00 80247620 A2C00081 */  sb        $zero, 0x81($s6)
/* 175F04 80247624 A2C20086 */  sb        $v0, 0x86($s6)
/* 175F08 80247628 A2C20087 */  sb        $v0, 0x87($s6)
/* 175F0C 8024762C 0C098F18 */  jal       func_80263C60
/* 175F10 80247630 A2C0019A */   sb       $zero, 0x19a($s6)
/* 175F14 80247634 8E020000 */  lw        $v0, ($s0)
/* 175F18 80247638 34420100 */  ori       $v0, $v0, 0x100
/* 175F1C 8024763C AE020000 */  sw        $v0, ($s0)
/* 175F20 80247640 12800002 */  beqz      $s4, .L8024764C
/* 175F24 80247644 A2A0021C */   sb       $zero, 0x21c($s5)
/* 175F28 80247648 A280021C */  sb        $zero, 0x21c($s4)
.L8024764C:
/* 175F2C 8024764C 0000882D */  daddu     $s1, $zero, $zero
/* 175F30 80247650 3C04FFF7 */  lui       $a0, 0xfff7
/* 175F34 80247654 3484FFFF */  ori       $a0, $a0, 0xffff
/* 175F38 80247658 8E020004 */  lw        $v0, 4($s0)
/* 175F3C 8024765C 02C0182D */  daddu     $v1, $s6, $zero
/* 175F40 80247660 34424000 */  ori       $v0, $v0, 0x4000
/* 175F44 80247664 AE020004 */  sw        $v0, 4($s0)
.L80247668:
/* 175F48 80247668 8C7000E0 */  lw        $s0, 0xe0($v1)
/* 175F4C 8024766C 12000004 */  beqz      $s0, .L80247680
/* 175F50 80247670 26310001 */   addiu    $s1, $s1, 1
/* 175F54 80247674 8E020000 */  lw        $v0, ($s0)
/* 175F58 80247678 00441024 */  and       $v0, $v0, $a0
/* 175F5C 8024767C AE020000 */  sw        $v0, ($s0)
.L80247680:
/* 175F60 80247680 2A220018 */  slti      $v0, $s1, 0x18
/* 175F64 80247684 1440FFF8 */  bnez      $v0, .L80247668
/* 175F68 80247688 24630004 */   addiu    $v1, $v1, 4
/* 175F6C 8024768C 0000882D */  daddu     $s1, $zero, $zero
/* 175F70 80247690 3C060040 */  lui       $a2, 0x40
/* 175F74 80247694 3C05F7FF */  lui       $a1, 0xf7ff
/* 175F78 80247698 34A5FFFF */  ori       $a1, $a1, 0xffff
/* 175F7C 8024769C 02C0202D */  daddu     $a0, $s6, $zero
.L802476A0:
/* 175F80 802476A0 8C9000E0 */  lw        $s0, 0xe0($a0)
/* 175F84 802476A4 12000007 */  beqz      $s0, .L802476C4
/* 175F88 802476A8 26310001 */   addiu    $s1, $s1, 1
/* 175F8C 802476AC 8E030000 */  lw        $v1, ($s0)
/* 175F90 802476B0 00661024 */  and       $v0, $v1, $a2
/* 175F94 802476B4 14400003 */  bnez      $v0, .L802476C4
/* 175F98 802476B8 00000000 */   nop      
/* 175F9C 802476BC 00651024 */  and       $v0, $v1, $a1
/* 175FA0 802476C0 AE020000 */  sw        $v0, ($s0)
.L802476C4:
/* 175FA4 802476C4 2A220018 */  slti      $v0, $s1, 0x18
/* 175FA8 802476C8 1440FFF5 */  bnez      $v0, .L802476A0
/* 175FAC 802476CC 24840004 */   addiu    $a0, $a0, 4
/* 175FB0 802476D0 8ED00174 */  lw        $s0, 0x174($s6)
/* 175FB4 802476D4 8E020000 */  lw        $v0, ($s0)
/* 175FB8 802476D8 3C030020 */  lui       $v1, 0x20
/* 175FBC 802476DC 00431024 */  and       $v0, $v0, $v1
/* 175FC0 802476E0 544000B8 */  bnel      $v0, $zero, .L802479C4
/* 175FC4 802476E4 24020002 */   addiu    $v0, $zero, 2
/* 175FC8 802476E8 0C099EA7 */  jal       reset_all_actor_sounds
/* 175FCC 802476EC 0200202D */   daddu    $a0, $s0, $zero
/* 175FD0 802476F0 2405000A */  addiu     $a1, $zero, 0xa
/* 175FD4 802476F4 A2C001A7 */  sb        $zero, 0x1a7($s6)
/* 175FD8 802476F8 8E0401C4 */  lw        $a0, 0x1c4($s0)
/* 175FDC 802476FC 0C0B0CF8 */  jal       start_script
/* 175FE0 80247700 0000302D */   daddu    $a2, $zero, $zero
/* 175FE4 80247704 AE0201D4 */  sw        $v0, 0x1d4($s0)
/* 175FE8 80247708 8C430144 */  lw        $v1, 0x144($v0)
/* 175FEC 8024770C AE0301E4 */  sw        $v1, 0x1e4($s0)
/* 175FF0 80247710 86C30172 */  lh        $v1, 0x172($s6)
/* 175FF4 80247714 AC430148 */  sw        $v1, 0x148($v0)
/* 175FF8 80247718 08091E71 */  j         .L802479C4
/* 175FFC 8024771C 24020002 */   addiu    $v0, $zero, 2
/* 176000 80247720 8EA201D4 */  lw        $v0, 0x1d4($s5)
/* 176004 80247724 10400005 */  beqz      $v0, .L8024773C
/* 176008 80247728 00000000 */   nop      
/* 17600C 8024772C 0C0B1059 */  jal       does_script_exist
/* 176010 80247730 8EA401E4 */   lw       $a0, 0x1e4($s5)
/* 176014 80247734 144000A5 */  bnez      $v0, .L802479CC
/* 176018 80247738 00000000 */   nop      
.L8024773C:
/* 17601C 8024773C 8EA201D8 */  lw        $v0, 0x1d8($s5)
/* 176020 80247740 10400006 */  beqz      $v0, .L8024775C
/* 176024 80247744 AEA001D4 */   sw       $zero, 0x1d4($s5)
/* 176028 80247748 8EA401E8 */  lw        $a0, 0x1e8($s5)
/* 17602C 8024774C 0C0B1059 */  jal       does_script_exist
/* 176030 80247750 00000000 */   nop      
/* 176034 80247754 1440009D */  bnez      $v0, .L802479CC
/* 176038 80247758 00000000 */   nop      
.L8024775C:
/* 17603C 8024775C 1280000A */  beqz      $s4, .L80247788
/* 176040 80247760 AEA001D8 */   sw       $zero, 0x1d8($s5)
/* 176044 80247764 8E8201D8 */  lw        $v0, 0x1d8($s4)
/* 176048 80247768 50400007 */  beql      $v0, $zero, .L80247788
/* 17604C 8024776C AE8001D8 */   sw       $zero, 0x1d8($s4)
/* 176050 80247770 8E8401E8 */  lw        $a0, 0x1e8($s4)
/* 176054 80247774 0C0B1059 */  jal       does_script_exist
/* 176058 80247778 00000000 */   nop      
/* 17605C 8024777C 14400093 */  bnez      $v0, .L802479CC
/* 176060 80247780 00000000 */   nop      
/* 176064 80247784 AE8001D8 */  sw        $zero, 0x1d8($s4)
.L80247788:
/* 176068 80247788 0000982D */  daddu     $s3, $zero, $zero
/* 17606C 8024778C 0260882D */  daddu     $s1, $s3, $zero
/* 176070 80247790 02C0902D */  daddu     $s2, $s6, $zero
.L80247794:
/* 176074 80247794 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 176078 80247798 5200000B */  beql      $s0, $zero, .L802477C8
/* 17607C 8024779C 26310001 */   addiu    $s1, $s1, 1
/* 176080 802477A0 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 176084 802477A4 50400008 */  beql      $v0, $zero, .L802477C8
/* 176088 802477A8 26310001 */   addiu    $s1, $s1, 1
/* 17608C 802477AC 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 176090 802477B0 0C0B1059 */  jal       does_script_exist
/* 176094 802477B4 00000000 */   nop      
/* 176098 802477B8 50400002 */  beql      $v0, $zero, .L802477C4
/* 17609C 802477BC AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 1760A0 802477C0 24130001 */  addiu     $s3, $zero, 1
.L802477C4:
/* 1760A4 802477C4 26310001 */  addiu     $s1, $s1, 1
.L802477C8:
/* 1760A8 802477C8 2A220018 */  slti      $v0, $s1, 0x18
/* 1760AC 802477CC 1440FFF1 */  bnez      $v0, .L80247794
/* 1760B0 802477D0 26520004 */   addiu    $s2, $s2, 4
/* 1760B4 802477D4 1660007D */  bnez      $s3, .L802479CC
/* 1760B8 802477D8 00000000 */   nop      
/* 1760BC 802477DC 0C098D19 */  jal       func_80263464
/* 1760C0 802477E0 00000000 */   nop      
/* 1760C4 802477E4 144000BB */  bnez      $v0, .L80247AD4
/* 1760C8 802477E8 0000882D */   daddu    $s1, $zero, $zero
/* 1760CC 802477EC 02C0902D */  daddu     $s2, $s6, $zero
.L802477F0:
/* 1760D0 802477F0 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 1760D4 802477F4 5200000B */  beql      $s0, $zero, .L80247824
/* 1760D8 802477F8 26310001 */   addiu    $s1, $s1, 1
/* 1760DC 802477FC 8E0201D4 */  lw        $v0, 0x1d4($s0)
/* 1760E0 80247800 50400008 */  beql      $v0, $zero, .L80247824
/* 1760E4 80247804 26310001 */   addiu    $s1, $s1, 1
/* 1760E8 80247808 8E0401E4 */  lw        $a0, 0x1e4($s0)
/* 1760EC 8024780C 0C0B1059 */  jal       does_script_exist
/* 1760F0 80247810 00000000 */   nop      
/* 1760F4 80247814 50400002 */  beql      $v0, $zero, .L80247820
/* 1760F8 80247818 AE0001D4 */   sw       $zero, 0x1d4($s0)
/* 1760FC 8024781C 24130001 */  addiu     $s3, $zero, 1
.L80247820:
/* 176100 80247820 26310001 */  addiu     $s1, $s1, 1
.L80247824:
/* 176104 80247824 2A220018 */  slti      $v0, $s1, 0x18
/* 176108 80247828 1440FFF1 */  bnez      $v0, .L802477F0
/* 17610C 8024782C 26520004 */   addiu    $s2, $s2, 4
/* 176110 80247830 12600006 */  beqz      $s3, .L8024784C
/* 176114 80247834 3C030020 */   lui      $v1, 0x20
/* 176118 80247838 3C02800E */  lui       $v0, 0x800e
/* 17611C 8024783C 8C42C070 */  lw        $v0, -0x3f90($v0)
/* 176120 80247840 00431024 */  and       $v0, $v0, $v1
/* 176124 80247844 10400061 */  beqz      $v0, .L802479CC
/* 176128 80247848 00000000 */   nop      
.L8024784C:
/* 17612C 8024784C 3C04800E */  lui       $a0, 0x800e
/* 176130 80247850 2484C070 */  addiu     $a0, $a0, -0x3f90
/* 176134 80247854 8C820000 */  lw        $v0, ($a0)
/* 176138 80247858 2403FEFF */  addiu     $v1, $zero, -0x101
/* 17613C 8024785C 00431024 */  and       $v0, $v0, $v1
/* 176140 80247860 AC820000 */  sw        $v0, ($a0)
/* 176144 80247864 8C820004 */  lw        $v0, 4($a0)
/* 176148 80247868 2403BFFF */  addiu     $v1, $zero, -0x4001
/* 17614C 8024786C 00431024 */  and       $v0, $v0, $v1
/* 176150 80247870 0C098D0D */  jal       func_80263434
/* 176154 80247874 AC820004 */   sw       $v0, 4($a0)
/* 176158 80247878 14400096 */  bnez      $v0, .L80247AD4
/* 17615C 8024787C 00000000 */   nop      
/* 176160 80247880 82C2008C */  lb        $v0, 0x8c($s6)
/* 176164 80247884 14400051 */  bnez      $v0, .L802479CC
/* 176168 80247888 00000000 */   nop      
/* 17616C 8024788C 3C028007 */  lui       $v0, 0x8007
/* 176170 80247890 8C42419C */  lw        $v0, 0x419c($v0)
/* 176174 80247894 904200AA */  lbu       $v0, 0xaa($v0)
/* 176178 80247898 30420001 */  andi      $v0, $v0, 1
/* 17617C 8024789C 10400005 */  beqz      $v0, .L802478B4
/* 176180 802478A0 00000000 */   nop      
/* 176184 802478A4 0C090464 */  jal       func_80241190
/* 176188 802478A8 24040023 */   addiu    $a0, $zero, 0x23
/* 17618C 802478AC 08091E73 */  j         .L802479CC
/* 176190 802478B0 00000000 */   nop      
.L802478B4:
/* 176194 802478B4 0C099DDF */  jal       func_8026777C
/* 176198 802478B8 00000000 */   nop      
/* 17619C 802478BC 82A2021C */  lb        $v0, 0x21c($s5)
/* 1761A0 802478C0 1040003F */  beqz      $v0, .L802479C0
/* 1761A4 802478C4 3C030C00 */   lui      $v1, 0xc00
/* 1761A8 802478C8 8EA20000 */  lw        $v0, ($s5)
/* 1761AC 802478CC 00431025 */  or        $v0, $v0, $v1
/* 1761B0 802478D0 12800004 */  beqz      $s4, .L802478E4
/* 1761B4 802478D4 AEA20000 */   sw       $v0, ($s5)
/* 1761B8 802478D8 8E820000 */  lw        $v0, ($s4)
/* 1761BC 802478DC 00431025 */  or        $v0, $v0, $v1
/* 1761C0 802478E0 AE820000 */  sw        $v0, ($s4)
.L802478E4:
/* 1761C4 802478E4 0C093903 */  jal       func_8024E40C
/* 1761C8 802478E8 24040021 */   addiu    $a0, $zero, 0x21
/* 1761CC 802478EC 92A2021C */  lbu       $v0, 0x21c($s5)
/* 1761D0 802478F0 2442FFFC */  addiu     $v0, $v0, -4
/* 1761D4 802478F4 00021600 */  sll       $v0, $v0, 0x18
/* 1761D8 802478F8 00021E03 */  sra       $v1, $v0, 0x18
/* 1761DC 802478FC 2C620007 */  sltiu     $v0, $v1, 7
/* 1761E0 80247900 10400012 */  beqz      $v0, .L8024794C
/* 1761E4 80247904 00031080 */   sll      $v0, $v1, 2
/* 1761E8 80247908 3C01802A */  lui       $at, 0x802a
/* 1761EC 8024790C 00220821 */  addu      $at, $at, $v0
/* 1761F0 80247910 8C22CBC0 */  lw        $v0, -0x3440($at)
/* 1761F4 80247914 00400008 */  jr        $v0
/* 1761F8 80247918 00000000 */   nop      
/* 1761FC 8024791C 08091E57 */  j         .L8024795C
/* 176200 80247920 2404000A */   addiu    $a0, $zero, 0xa
/* 176204 80247924 08091E57 */  j         .L8024795C
/* 176208 80247928 2404000B */   addiu    $a0, $zero, 0xb
/* 17620C 8024792C 08091E57 */  j         .L8024795C
/* 176210 80247930 2404000C */   addiu    $a0, $zero, 0xc
/* 176214 80247934 08091E57 */  j         .L8024795C
/* 176218 80247938 2404000D */   addiu    $a0, $zero, 0xd
/* 17621C 8024793C 08091E57 */  j         .L8024795C
/* 176220 80247940 2404000E */   addiu    $a0, $zero, 0xe
/* 176224 80247944 08091E57 */  j         .L8024795C
/* 176228 80247948 2404000F */   addiu    $a0, $zero, 0xf
.L8024794C:
/* 17622C 8024794C 0000202D */  daddu     $a0, $zero, $zero
/* 176230 80247950 24020014 */  addiu     $v0, $zero, 0x14
/* 176234 80247954 3C01800E */  lui       $at, 0x800e
/* 176238 80247958 AC22C4DC */  sw        $v0, -0x3b24($at)
.L8024795C:
/* 17623C 8024795C 0C093E58 */  jal       show_battle_message
/* 176240 80247960 2405003C */   addiu    $a1, $zero, 0x3c
/* 176244 80247964 2402000B */  addiu     $v0, $zero, 0xb
/* 176248 80247968 08091E71 */  j         .L802479C4
/* 17624C 8024796C A2A0021C */   sb       $zero, 0x21c($s5)
/* 176250 80247970 0C093EAD */  jal       is_popup_displayed
/* 176254 80247974 00000000 */   nop      
/* 176258 80247978 14400014 */  bnez      $v0, .L802479CC
/* 17625C 8024797C 00000000 */   nop      
/* 176260 80247980 0C093903 */  jal       func_8024E40C
/* 176264 80247984 24040002 */   addiu    $a0, $zero, 2
/* 176268 80247988 0C093936 */  jal       move_cam_over
/* 17626C 8024798C 2404000F */   addiu    $a0, $zero, 0xf
/* 176270 80247990 2402000A */  addiu     $v0, $zero, 0xa
/* 176274 80247994 3C01802A */  lui       $at, 0x802a
/* 176278 80247998 AC22F248 */  sw        $v0, -0xdb8($at)
/* 17627C 8024799C 08091E71 */  j         .L802479C4
/* 176280 802479A0 2402000C */   addiu    $v0, $zero, 0xc
/* 176284 802479A4 3C03802A */  lui       $v1, 0x802a
/* 176288 802479A8 2463F248 */  addiu     $v1, $v1, -0xdb8
/* 17628C 802479AC 8C620000 */  lw        $v0, ($v1)
/* 176290 802479B0 10400003 */  beqz      $v0, .L802479C0
/* 176294 802479B4 2442FFFF */   addiu    $v0, $v0, -1
/* 176298 802479B8 08091E73 */  j         .L802479CC
/* 17629C 802479BC AC620000 */   sw       $v0, ($v1)
.L802479C0:
/* 1762A0 802479C0 24020014 */  addiu     $v0, $zero, 0x14
.L802479C4:
/* 1762A4 802479C4 3C01800E */  lui       $at, 0x800e
/* 1762A8 802479C8 AC22C4DC */  sw        $v0, -0x3b24($at)
.L802479CC:
/* 1762AC 802479CC 3C10800E */  lui       $s0, 0x800e
/* 1762B0 802479D0 2610C4DC */  addiu     $s0, $s0, -0x3b24
/* 1762B4 802479D4 8E030000 */  lw        $v1, ($s0)
/* 1762B8 802479D8 24110015 */  addiu     $s1, $zero, 0x15
/* 1762BC 802479DC 10710020 */  beq       $v1, $s1, .L80247A60
/* 1762C0 802479E0 28620016 */   slti     $v0, $v1, 0x16
/* 1762C4 802479E4 10400005 */  beqz      $v0, .L802479FC
/* 1762C8 802479E8 24020014 */   addiu    $v0, $zero, 0x14
/* 1762CC 802479EC 10620008 */  beq       $v1, $v0, .L80247A10
/* 1762D0 802479F0 00000000 */   nop      
/* 1762D4 802479F4 08091EAE */  j         .L80247AB8
/* 1762D8 802479F8 00000000 */   nop      
.L802479FC:
/* 1762DC 802479FC 24020016 */  addiu     $v0, $zero, 0x16
/* 1762E0 80247A00 10620024 */  beq       $v1, $v0, .L80247A94
/* 1762E4 80247A04 00000000 */   nop      
/* 1762E8 80247A08 08091EAE */  j         .L80247AB8
/* 1762EC 80247A0C 00000000 */   nop      
.L80247A10:
/* 1762F0 80247A10 12800027 */  beqz      $s4, .L80247AB0
/* 1762F4 80247A14 2402000D */   addiu    $v0, $zero, 0xd
/* 1762F8 80247A18 8283021C */  lb        $v1, 0x21c($s4)
/* 1762FC 80247A1C 14620025 */  bne       $v1, $v0, .L80247AB4
/* 176300 80247A20 2402001E */   addiu    $v0, $zero, 0x1e
/* 176304 80247A24 8EA20000 */  lw        $v0, ($s5)
/* 176308 80247A28 3C030C00 */  lui       $v1, 0xc00
/* 17630C 80247A2C 00431025 */  or        $v0, $v0, $v1
/* 176310 80247A30 AEA20000 */  sw        $v0, ($s5)
/* 176314 80247A34 8E820000 */  lw        $v0, ($s4)
/* 176318 80247A38 24040036 */  addiu     $a0, $zero, 0x36
/* 17631C 80247A3C 00431025 */  or        $v0, $v0, $v1
/* 176320 80247A40 0C093903 */  jal       func_8024E40C
/* 176324 80247A44 AE820000 */   sw       $v0, ($s4)
/* 176328 80247A48 24040023 */  addiu     $a0, $zero, 0x23
/* 17632C 80247A4C 0C093E58 */  jal       show_battle_message
/* 176330 80247A50 2405003C */   addiu    $a1, $zero, 0x3c
/* 176334 80247A54 A280021C */  sb        $zero, 0x21c($s4)
/* 176338 80247A58 08091EAE */  j         .L80247AB8
/* 17633C 80247A5C AE110000 */   sw       $s1, ($s0)
.L80247A60:
/* 176340 80247A60 0C093EAD */  jal       is_popup_displayed
/* 176344 80247A64 00000000 */   nop      
/* 176348 80247A68 14400013 */  bnez      $v0, .L80247AB8
/* 17634C 80247A6C 00000000 */   nop      
/* 176350 80247A70 0C093903 */  jal       func_8024E40C
/* 176354 80247A74 24040002 */   addiu    $a0, $zero, 2
/* 176358 80247A78 0C093936 */  jal       move_cam_over
/* 17635C 80247A7C 2404000F */   addiu    $a0, $zero, 0xf
/* 176360 80247A80 2402000A */  addiu     $v0, $zero, 0xa
/* 176364 80247A84 3C01802A */  lui       $at, 0x802a
/* 176368 80247A88 AC22F248 */  sw        $v0, -0xdb8($at)
/* 17636C 80247A8C 08091EAD */  j         .L80247AB4
/* 176370 80247A90 24020016 */   addiu    $v0, $zero, 0x16
.L80247A94:
/* 176374 80247A94 3C03802A */  lui       $v1, 0x802a
/* 176378 80247A98 2463F248 */  addiu     $v1, $v1, -0xdb8
/* 17637C 80247A9C 8C620000 */  lw        $v0, ($v1)
/* 176380 80247AA0 10400003 */  beqz      $v0, .L80247AB0
/* 176384 80247AA4 2442FFFF */   addiu    $v0, $v0, -1
/* 176388 80247AA8 08091EAE */  j         .L80247AB8
/* 17638C 80247AAC AC620000 */   sw       $v0, ($v1)
.L80247AB0:
/* 176390 80247AB0 2402001E */  addiu     $v0, $zero, 0x1e
.L80247AB4:
/* 176394 80247AB4 AE020000 */  sw        $v0, ($s0)
.L80247AB8:
/* 176398 80247AB8 3C03800E */  lui       $v1, 0x800e
/* 17639C 80247ABC 8C63C4DC */  lw        $v1, -0x3b24($v1)
/* 1763A0 80247AC0 2402001E */  addiu     $v0, $zero, 0x1e
/* 1763A4 80247AC4 14620003 */  bne       $v1, $v0, .L80247AD4
/* 1763A8 80247AC8 00000000 */   nop      
/* 1763AC 80247ACC 0C090464 */  jal       func_80241190
/* 1763B0 80247AD0 24040014 */   addiu    $a0, $zero, 0x14
.L80247AD4:
/* 1763B4 80247AD4 8FBF002C */  lw        $ra, 0x2c($sp)
/* 1763B8 80247AD8 8FB60028 */  lw        $s6, 0x28($sp)
/* 1763BC 80247ADC 8FB50024 */  lw        $s5, 0x24($sp)
/* 1763C0 80247AE0 8FB40020 */  lw        $s4, 0x20($sp)
/* 1763C4 80247AE4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1763C8 80247AE8 8FB20018 */  lw        $s2, 0x18($sp)
/* 1763CC 80247AEC 8FB10014 */  lw        $s1, 0x14($sp)
/* 1763D0 80247AF0 8FB00010 */  lw        $s0, 0x10($sp)
/* 1763D4 80247AF4 03E00008 */  jr        $ra
/* 1763D8 80247AF8 27BD0030 */   addiu    $sp, $sp, 0x30
