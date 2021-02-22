.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241224_A87C74
/* A87C74 80241224 27BDFF90 */  addiu     $sp, $sp, -0x70
/* A87C78 80241228 AFB3005C */  sw        $s3, 0x5c($sp)
/* A87C7C 8024122C 0080982D */  daddu     $s3, $a0, $zero
/* A87C80 80241230 AFBF0068 */  sw        $ra, 0x68($sp)
/* A87C84 80241234 AFB50064 */  sw        $s5, 0x64($sp)
/* A87C88 80241238 AFB40060 */  sw        $s4, 0x60($sp)
/* A87C8C 8024123C AFB20058 */  sw        $s2, 0x58($sp)
/* A87C90 80241240 AFB10054 */  sw        $s1, 0x54($sp)
/* A87C94 80241244 AFB00050 */  sw        $s0, 0x50($sp)
/* A87C98 80241248 8E710148 */  lw        $s1, 0x148($s3)
/* A87C9C 8024124C 86240008 */  lh        $a0, 8($s1)
/* A87CA0 80241250 0C00EABB */  jal       get_npc_unsafe
/* A87CA4 80241254 00A0802D */   daddu    $s0, $a1, $zero
/* A87CA8 80241258 8E63000C */  lw        $v1, 0xc($s3)
/* A87CAC 8024125C 0260202D */  daddu     $a0, $s3, $zero
/* A87CB0 80241260 8C650000 */  lw        $a1, ($v1)
/* A87CB4 80241264 0C0B1EAF */  jal       get_variable
/* A87CB8 80241268 0040902D */   daddu    $s2, $v0, $zero
/* A87CBC 8024126C AFA00028 */  sw        $zero, 0x28($sp)
/* A87CC0 80241270 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A87CC4 80241274 8C630094 */  lw        $v1, 0x94($v1)
/* A87CC8 80241278 AFA3002C */  sw        $v1, 0x2c($sp)
/* A87CCC 8024127C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A87CD0 80241280 8C630080 */  lw        $v1, 0x80($v1)
/* A87CD4 80241284 AFA30030 */  sw        $v1, 0x30($sp)
/* A87CD8 80241288 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A87CDC 8024128C 8C630088 */  lw        $v1, 0x88($v1)
/* A87CE0 80241290 AFA30034 */  sw        $v1, 0x34($sp)
/* A87CE4 80241294 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A87CE8 80241298 8C63008C */  lw        $v1, 0x8c($v1)
/* A87CEC 8024129C 27B50028 */  addiu     $s5, $sp, 0x28
/* A87CF0 802412A0 AFA30038 */  sw        $v1, 0x38($sp)
/* A87CF4 802412A4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* A87CF8 802412A8 3C0142C8 */  lui       $at, 0x42c8
/* A87CFC 802412AC 44810000 */  mtc1      $at, $f0
/* A87D00 802412B0 8C630090 */  lw        $v1, 0x90($v1)
/* A87D04 802412B4 0040A02D */  daddu     $s4, $v0, $zero
/* A87D08 802412B8 E7A00040 */  swc1      $f0, 0x40($sp)
/* A87D0C 802412BC A7A00044 */  sh        $zero, 0x44($sp)
/* A87D10 802412C0 12000007 */  beqz      $s0, .L802412E0
/* A87D14 802412C4 AFA3003C */   sw       $v1, 0x3c($sp)
/* A87D18 802412C8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A87D1C 802412CC 864300A8 */  lh        $v1, 0xa8($s2)
/* A87D20 802412D0 34420008 */  ori       $v0, $v0, 8
/* A87D24 802412D4 AE230084 */  sw        $v1, 0x84($s1)
/* A87D28 802412D8 080904BC */  j         .L802412F0
/* A87D2C 802412DC AE2200B0 */   sw       $v0, 0xb0($s1)
.L802412E0:
/* A87D30 802412E0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A87D34 802412E4 30420004 */  andi      $v0, $v0, 4
/* A87D38 802412E8 10400048 */  beqz      $v0, .L8024140C
/* A87D3C 802412EC 00000000 */   nop
.L802412F0:
/* A87D40 802412F0 A640008E */  sh        $zero, 0x8e($s2)
/* A87D44 802412F4 AE600070 */  sw        $zero, 0x70($s3)
/* A87D48 802412F8 8E2300CC */  lw        $v1, 0xcc($s1)
/* A87D4C 802412FC 2404F7FF */  addiu     $a0, $zero, -0x801
/* A87D50 80241300 A2200007 */  sb        $zero, 7($s1)
/* A87D54 80241304 8E420000 */  lw        $v0, ($s2)
/* A87D58 80241308 8C630000 */  lw        $v1, ($v1)
/* A87D5C 8024130C 00441024 */  and       $v0, $v0, $a0
/* A87D60 80241310 AE420000 */  sw        $v0, ($s2)
/* A87D64 80241314 AE430028 */  sw        $v1, 0x28($s2)
/* A87D68 80241318 96220086 */  lhu       $v0, 0x86($s1)
/* A87D6C 8024131C A64200A8 */  sh        $v0, 0xa8($s2)
/* A87D70 80241320 8E2200D0 */  lw        $v0, 0xd0($s1)
/* A87D74 80241324 A22000B5 */  sb        $zero, 0xb5($s1)
/* A87D78 80241328 AE20008C */  sw        $zero, 0x8c($s1)
/* A87D7C 8024132C 8C420098 */  lw        $v0, 0x98($v0)
/* A87D80 80241330 14400006 */  bnez      $v0, .L8024134C
/* A87D84 80241334 2403FDFF */   addiu    $v1, $zero, -0x201
/* A87D88 80241338 8E420000 */  lw        $v0, ($s2)
/* A87D8C 8024133C 2403FFF7 */  addiu     $v1, $zero, -9
/* A87D90 80241340 34420200 */  ori       $v0, $v0, 0x200
/* A87D94 80241344 080904D6 */  j         .L80241358
/* A87D98 80241348 00431024 */   and      $v0, $v0, $v1
.L8024134C:
/* A87D9C 8024134C 8E420000 */  lw        $v0, ($s2)
/* A87DA0 80241350 00431024 */  and       $v0, $v0, $v1
/* A87DA4 80241354 34420008 */  ori       $v0, $v0, 8
.L80241358:
/* A87DA8 80241358 AE420000 */  sw        $v0, ($s2)
/* A87DAC 8024135C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A87DB0 80241360 30420004 */  andi      $v0, $v0, 4
/* A87DB4 80241364 1040001E */  beqz      $v0, .L802413E0
/* A87DB8 80241368 24040002 */   addiu    $a0, $zero, 2
/* A87DBC 8024136C 0240282D */  daddu     $a1, $s2, $zero
/* A87DC0 80241370 0000302D */  daddu     $a2, $zero, $zero
/* A87DC4 80241374 24020063 */  addiu     $v0, $zero, 0x63
/* A87DC8 80241378 AE620070 */  sw        $v0, 0x70($s3)
/* A87DCC 8024137C AE600074 */  sw        $zero, 0x74($s3)
/* A87DD0 80241380 864300A8 */  lh        $v1, 0xa8($s2)
/* A87DD4 80241384 3C013F80 */  lui       $at, 0x3f80
/* A87DD8 80241388 44810000 */  mtc1      $at, $f0
/* A87DDC 8024138C 3C014000 */  lui       $at, 0x4000
/* A87DE0 80241390 44811000 */  mtc1      $at, $f2
/* A87DE4 80241394 3C01C1A0 */  lui       $at, 0xc1a0
/* A87DE8 80241398 44812000 */  mtc1      $at, $f4
/* A87DEC 8024139C 24020028 */  addiu     $v0, $zero, 0x28
/* A87DF0 802413A0 AFA2001C */  sw        $v0, 0x1c($sp)
/* A87DF4 802413A4 44833000 */  mtc1      $v1, $f6
/* A87DF8 802413A8 00000000 */  nop
/* A87DFC 802413AC 468031A0 */  cvt.s.w   $f6, $f6
/* A87E00 802413B0 44073000 */  mfc1      $a3, $f6
/* A87E04 802413B4 27A20048 */  addiu     $v0, $sp, 0x48
/* A87E08 802413B8 AFA20020 */  sw        $v0, 0x20($sp)
/* A87E0C 802413BC E7A00010 */  swc1      $f0, 0x10($sp)
/* A87E10 802413C0 E7A20014 */  swc1      $f2, 0x14($sp)
/* A87E14 802413C4 0C01BFA4 */  jal       fx_emote
/* A87E18 802413C8 E7A40018 */   swc1     $f4, 0x18($sp)
/* A87E1C 802413CC 8E2200B0 */  lw        $v0, 0xb0($s1)
/* A87E20 802413D0 2403FFFB */  addiu     $v1, $zero, -5
/* A87E24 802413D4 00431024 */  and       $v0, $v0, $v1
/* A87E28 802413D8 08090503 */  j         .L8024140C
/* A87E2C 802413DC AE2200B0 */   sw       $v0, 0xb0($s1)
.L802413E0:
/* A87E30 802413E0 8E220000 */  lw        $v0, ($s1)
/* A87E34 802413E4 3C034000 */  lui       $v1, 0x4000
/* A87E38 802413E8 00431024 */  and       $v0, $v0, $v1
/* A87E3C 802413EC 10400007 */  beqz      $v0, .L8024140C
/* A87E40 802413F0 3C03BFFF */   lui      $v1, 0xbfff
/* A87E44 802413F4 2402000C */  addiu     $v0, $zero, 0xc
/* A87E48 802413F8 AE620070 */  sw        $v0, 0x70($s3)
/* A87E4C 802413FC 8E220000 */  lw        $v0, ($s1)
/* A87E50 80241400 3463FFFF */  ori       $v1, $v1, 0xffff
/* A87E54 80241404 00431024 */  and       $v0, $v0, $v1
/* A87E58 80241408 AE220000 */  sw        $v0, ($s1)
.L8024140C:
/* A87E5C 8024140C 8E630070 */  lw        $v1, 0x70($s3)
/* A87E60 80241410 2C620064 */  sltiu     $v0, $v1, 0x64
/* A87E64 80241414 1040003A */  beqz      $v0, .L80241500
/* A87E68 80241418 00031080 */   sll      $v0, $v1, 2
/* A87E6C 8024141C 3C018024 */  lui       $at, %hi(jtbl_80245BD8_A8C628)
/* A87E70 80241420 00220821 */  addu      $at, $at, $v0
/* A87E74 80241424 8C225BD8 */  lw        $v0, %lo(jtbl_80245BD8_A8C628)($at)
/* A87E78 80241428 00400008 */  jr        $v0
/* A87E7C 8024142C 00000000 */   nop
glabel L80241430_A87E80
/* A87E80 80241430 0260202D */  daddu     $a0, $s3, $zero
/* A87E84 80241434 0280282D */  daddu     $a1, $s4, $zero
/* A87E88 80241438 0C090000 */  jal       func_80240000_A86A50
/* A87E8C 8024143C 02A0302D */   daddu    $a2, $s5, $zero
/* A87E90 80241440 96220086 */  lhu       $v0, 0x86($s1)
/* A87E94 80241444 A64200A8 */  sh        $v0, 0xa8($s2)
glabel L80241448_A87E98
/* A87E98 80241448 0260202D */  daddu     $a0, $s3, $zero
/* A87E9C 8024144C 0280282D */  daddu     $a1, $s4, $zero
/* A87EA0 80241450 0C090056 */  jal       func_80240158_A86BA8
/* A87EA4 80241454 02A0302D */   daddu    $a2, $s5, $zero
/* A87EA8 80241458 08090540 */  j         .L80241500
/* A87EAC 8024145C 00000000 */   nop
glabel L80241460_A87EB0
/* A87EB0 80241460 0260202D */  daddu     $a0, $s3, $zero
/* A87EB4 80241464 0280282D */  daddu     $a1, $s4, $zero
/* A87EB8 80241468 0C090100 */  jal       kpa_91_UnkNpcAIFunc1
/* A87EBC 8024146C 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241470_A87EC0
/* A87EC0 80241470 0260202D */  daddu     $a0, $s3, $zero
/* A87EC4 80241474 0280282D */  daddu     $a1, $s4, $zero
/* A87EC8 80241478 0C090130 */  jal       func_802404C0_A86F10
/* A87ECC 8024147C 02A0302D */   daddu    $a2, $s5, $zero
/* A87ED0 80241480 08090540 */  j         .L80241500
/* A87ED4 80241484 00000000 */   nop
glabel L80241488_A87ED8
/* A87ED8 80241488 0260202D */  daddu     $a0, $s3, $zero
/* A87EDC 8024148C 0280282D */  daddu     $a1, $s4, $zero
/* A87EE0 80241490 0C09019F */  jal       func_8024067C_A870CC
/* A87EE4 80241494 02A0302D */   daddu    $a2, $s5, $zero
/* A87EE8 80241498 08090540 */  j         .L80241500
/* A87EEC 8024149C 00000000 */   nop
glabel L802414A0_A87EF0
/* A87EF0 802414A0 0260202D */  daddu     $a0, $s3, $zero
/* A87EF4 802414A4 0280282D */  daddu     $a1, $s4, $zero
/* A87EF8 802414A8 0C0903A4 */  jal       kpa_91_set_script_owner_npc_anim
/* A87EFC 802414AC 02A0302D */   daddu    $a2, $s5, $zero
glabel L802414B0_A87F00
/* A87F00 802414B0 0260202D */  daddu     $a0, $s3, $zero
/* A87F04 802414B4 0280282D */  daddu     $a1, $s4, $zero
/* A87F08 802414B8 0C0903C3 */  jal       func_80240F0C_A8795C
/* A87F0C 802414BC 02A0302D */   daddu    $a2, $s5, $zero
/* A87F10 802414C0 08090540 */  j         .L80241500
/* A87F14 802414C4 00000000 */   nop
glabel L802414C8_A87F18
/* A87F18 802414C8 0260202D */  daddu     $a0, $s3, $zero
/* A87F1C 802414CC 0280282D */  daddu     $a1, $s4, $zero
/* A87F20 802414D0 0C090410 */  jal       kpa_91_UnkNpcAIFunc12
/* A87F24 802414D4 02A0302D */   daddu    $a2, $s5, $zero
/* A87F28 802414D8 08090540 */  j         .L80241500
/* A87F2C 802414DC 00000000 */   nop
glabel L802414E0_A87F30
/* A87F30 802414E0 0260202D */  daddu     $a0, $s3, $zero
/* A87F34 802414E4 0280282D */  daddu     $a1, $s4, $zero
/* A87F38 802414E8 0C090469 */  jal       kpa_91_set_script_owner_npc_col_height
/* A87F3C 802414EC 02A0302D */   daddu    $a2, $s5, $zero
/* A87F40 802414F0 08090540 */  j         .L80241500
/* A87F44 802414F4 00000000 */   nop
glabel L802414F8_A87F48
/* A87F48 802414F8 0C0129CF */  jal       func_8004A73C
/* A87F4C 802414FC 0260202D */   daddu    $a0, $s3, $zero
.L80241500:
glabel L80241500_A87F50
/* A87F50 80241500 8FBF0068 */  lw        $ra, 0x68($sp)
/* A87F54 80241504 8FB50064 */  lw        $s5, 0x64($sp)
/* A87F58 80241508 8FB40060 */  lw        $s4, 0x60($sp)
/* A87F5C 8024150C 8FB3005C */  lw        $s3, 0x5c($sp)
/* A87F60 80241510 8FB20058 */  lw        $s2, 0x58($sp)
/* A87F64 80241514 8FB10054 */  lw        $s1, 0x54($sp)
/* A87F68 80241518 8FB00050 */  lw        $s0, 0x50($sp)
/* A87F6C 8024151C 0000102D */  daddu     $v0, $zero, $zero
/* A87F70 80241520 03E00008 */  jr        $ra
/* A87F74 80241524 27BD0070 */   addiu    $sp, $sp, 0x70