
.section .text8002BA40, "ax"

func_8002BA40:
/* 006E40 8002BA40 3C014000 */  lui   $at, 0x4000
/* 006E44 8002BA44 44810000 */  mtc1  $at, $f0
/* 006E48 8002BA48 3C01800A */  lui   $at, 0x800a
/* 006E4C 8002BA4C AC20BAA0 */  sw    $zero, -0x4560($at)
/* 006E50 8002BA50 3C01800A */  lui   $at, 0x800a
/* 006E54 8002BA54 AC20BA98 */  sw    $zero, -0x4568($at)
/* 006E58 8002BA58 3C01800A */  lui   $at, 0x800a
/* 006E5C 8002BA5C AC20BA9C */  sw    $zero, -0x4564($at)
/* 006E60 8002BA60 3C01800A */  lui   $at, 0x800a
/* 006E64 8002BA64 E420BA90 */  swc1  $f0, -0x4570($at)
/* 006E68 8002BA68 3C01800A */  lui   $at, 0x800a
/* 006E6C 8002BA6C E420BA94 */  swc1  $f0, -0x456c($at)
/* 006E70 8002BA70 03E00008 */  jr    $ra
/* 006E74 8002BA74 00000000 */   nop   

func_8002BA78:
/* 006E78 8002BA78 03E00008 */  jr    $ra
/* 006E7C 8002BA7C 00000000 */   nop   

func_8002BA80:
/* 006E80 8002BA80 3C01800A */  lui   $at, 0x800a
/* 006E84 8002BA84 C420BA94 */  lwc1  $f0, -0x456c($at)
/* 006E88 8002BA88 27BDFF78 */  addiu $sp, $sp, -0x88
/* 006E8C 8002BA8C AFB20068 */  sw    $s2, 0x68($sp)
/* 006E90 8002BA90 3C12800A */  lui   $s2, 0x800a
/* 006E94 8002BA94 2652BA90 */  addiu $s2, $s2, -0x4570
/* 006E98 8002BA98 AFBF0078 */  sw    $ra, 0x78($sp)
/* 006E9C 8002BA9C AFB50074 */  sw    $s5, 0x74($sp)
/* 006EA0 8002BAA0 AFB40070 */  sw    $s4, 0x70($sp)
/* 006EA4 8002BAA4 AFB3006C */  sw    $s3, 0x6c($sp)
/* 006EA8 8002BAA8 AFB10064 */  sw    $s1, 0x64($sp)
/* 006EAC 8002BAAC AFB00060 */  sw    $s0, 0x60($sp)
/* 006EB0 8002BAB0 F7B40080 */  sdc1  $f20, 0x80($sp)
/* 006EB4 8002BAB4 C6440000 */  lwc1  $f4, ($s2)
/* 006EB8 8002BAB8 46040032 */  c.eq.s $f0, $f4
/* 006EBC 8002BABC 00000000 */  nop   
/* 006EC0 8002BAC0 4501000B */  bc1t  .L8002BAF0
/* 006EC4 8002BAC4 00000000 */   nop   
/* 006EC8 8002BAC8 46040001 */  sub.s $f0, $f0, $f4
/* 006ECC 8002BACC 3C018009 */  lui   $at, 0x8009
/* 006ED0 8002BAD0 D4227E00 */  ldc1  $f2, 0x7e00($at)
/* 006ED4 8002BAD4 46000021 */  cvt.d.s $f0, $f0
/* 006ED8 8002BAD8 46220002 */  mul.d $f0, $f0, $f2
/* 006EDC 8002BADC 00000000 */  nop   
/* 006EE0 8002BAE0 460020A1 */  cvt.d.s $f2, $f4
/* 006EE4 8002BAE4 46201080 */  add.d $f2, $f2, $f0
/* 006EE8 8002BAE8 462010A0 */  cvt.s.d $f2, $f2
/* 006EEC 8002BAEC E6420000 */  swc1  $f2, ($s2)
.L8002BAF0:
/* 006EF0 8002BAF0 3C13800A */  lui   $s3, 0x800a
/* 006EF4 8002BAF4 2673BA98 */  addiu $s3, $s3, -0x4568
/* 006EF8 8002BAF8 3C01800A */  lui   $at, 0x800a
/* 006EFC 8002BAFC C420BA9C */  lwc1  $f0, -0x4564($at)
/* 006F00 8002BB00 C6640000 */  lwc1  $f4, ($s3)
/* 006F04 8002BB04 46040032 */  c.eq.s $f0, $f4
/* 006F08 8002BB08 00000000 */  nop   
/* 006F0C 8002BB0C 4501000B */  bc1t  .L8002BB3C
/* 006F10 8002BB10 00000000 */   nop   
/* 006F14 8002BB14 46040001 */  sub.s $f0, $f0, $f4
/* 006F18 8002BB18 3C018009 */  lui   $at, 0x8009
/* 006F1C 8002BB1C D4227E08 */  ldc1  $f2, 0x7e08($at)
/* 006F20 8002BB20 46000021 */  cvt.d.s $f0, $f0
/* 006F24 8002BB24 46220002 */  mul.d $f0, $f0, $f2
/* 006F28 8002BB28 00000000 */  nop   
/* 006F2C 8002BB2C 460020A1 */  cvt.d.s $f2, $f4
/* 006F30 8002BB30 46201080 */  add.d $f2, $f2, $f0
/* 006F34 8002BB34 462010A0 */  cvt.s.d $f2, $f2
/* 006F38 8002BB38 E6620000 */  swc1  $f2, ($s3)
.L8002BB3C:
/* 006F3C 8002BB3C C6400000 */  lwc1  $f0, ($s2)
/* 006F40 8002BB40 3C018009 */  lui   $at, 0x8009
/* 006F44 8002BB44 D4227E10 */  ldc1  $f2, 0x7e10($at)
/* 006F48 8002BB48 46000021 */  cvt.d.s $f0, $f0
/* 006F4C 8002BB4C 4622003C */  c.lt.d $f0, $f2
/* 006F50 8002BB50 00000000 */  nop   
/* 006F54 8002BB54 45000087 */  bc1f  .L8002BD74
/* 006F58 8002BB58 3C03FF10 */   lui   $v1, 0xff10
/* 006F5C 8002BB5C 3463013F */  ori   $v1, $v1, 0x13f
/* 006F60 8002BB60 3C11800A */  lui   $s1, 0x800a
/* 006F64 8002BB64 2631A66C */  addiu $s1, $s1, -0x5994
/* 006F68 8002BB68 3C15E700 */  lui   $s5, 0xe700
/* 006F6C 8002BB6C 8E300000 */  lw    $s0, ($s1)
/* 006F70 8002BB70 3C04800A */  lui   $a0, 0x800a
/* 006F74 8002BB74 8C84A64C */  lw    $a0, -0x59b4($a0)
/* 006F78 8002BB78 0200102D */  move  $v0, $s0
/* 006F7C 8002BB7C 26100008 */  addiu $s0, $s0, 8
/* 006F80 8002BB80 AE300000 */  sw    $s0, ($s1)
/* 006F84 8002BB84 AC550000 */  sw    $s5, ($v0)
/* 006F88 8002BB88 AC400004 */  sw    $zero, 4($v0)
/* 006F8C 8002BB8C 26020008 */  addiu $v0, $s0, 8
/* 006F90 8002BB90 AE220000 */  sw    $v0, ($s1)
/* 006F94 8002BB94 0C0187A4 */  jal   func_80061E90
/* 006F98 8002BB98 AE030000 */   sw    $v1, ($s0)
/* 006F9C 8002BB9C 27A40020 */  addiu $a0, $sp, 0x20
/* 006FA0 8002BBA0 8E230000 */  lw    $v1, ($s1)
/* 006FA4 8002BBA4 3C14DE00 */  lui   $s4, 0xde00
/* 006FA8 8002BBA8 AE020004 */  sw    $v0, 4($s0)
/* 006FAC 8002BBAC 3C028007 */  lui   $v0, 0x8007
/* 006FB0 8002BBB0 244260C0 */  addiu $v0, $v0, 0x60c0
/* 006FB4 8002BBB4 3C05C2A0 */  lui   $a1, 0xc2a0
/* 006FB8 8002BBB8 3C0642A0 */  lui   $a2, 0x42a0
/* 006FBC 8002BBBC 3C07C270 */  lui   $a3, 0xc270
/* 006FC0 8002BBC0 3C014270 */  lui   $at, 0x4270
/* 006FC4 8002BBC4 44810000 */  mtc1  $at, $f0
/* 006FC8 8002BBC8 3C014320 */  lui   $at, 0x4320
/* 006FCC 8002BBCC 44811000 */  mtc1  $at, $f2
/* 006FD0 8002BBD0 3C014420 */  lui   $at, 0x4420
/* 006FD4 8002BBD4 44812000 */  mtc1  $at, $f4
/* 006FD8 8002BBD8 3C013F80 */  lui   $at, 0x3f80
/* 006FDC 8002BBDC 4481A000 */  mtc1  $at, $f20
/* 006FE0 8002BBE0 0060402D */  move  $t0, $v1
/* 006FE4 8002BBE4 24630008 */  addiu $v1, $v1, 8
/* 006FE8 8002BBE8 AE230000 */  sw    $v1, ($s1)
/* 006FEC 8002BBEC AD140000 */  sw    $s4, ($t0)
/* 006FF0 8002BBF0 AD020004 */  sw    $v0, 4($t0)
/* 006FF4 8002BBF4 E7A00010 */  swc1  $f0, 0x10($sp)
/* 006FF8 8002BBF8 E7A20014 */  swc1  $f2, 0x14($sp)
/* 006FFC 8002BBFC E7A40018 */  swc1  $f4, 0x18($sp)
/* 007000 8002BC00 0C0187CC */  jal   func_80061F30
/* 007004 8002BC04 E7B4001C */   swc1  $f20, 0x1c($sp)
/* 007008 8002BC08 27A40020 */  addiu $a0, $sp, 0x20
/* 00700C 8002BC0C 3C10800A */  lui   $s0, 0x800a
/* 007010 8002BC10 2610BAA8 */  addiu $s0, $s0, -0x4558
/* 007014 8002BC14 0C019D40 */  jal   func_80067500
/* 007018 8002BC18 0200282D */   move  $a1, $s0
/* 00701C 8002BC1C 3C04DA38 */  lui   $a0, 0xda38
/* 007020 8002BC20 8E220000 */  lw    $v0, ($s1)
/* 007024 8002BC24 34840007 */  ori   $a0, $a0, 7
/* 007028 8002BC28 0040182D */  move  $v1, $v0
/* 00702C 8002BC2C 24420008 */  addiu $v0, $v0, 8
/* 007030 8002BC30 AE220000 */  sw    $v0, ($s1)
/* 007034 8002BC34 C6400000 */  lwc1  $f0, ($s2)
/* 007038 8002BC38 3C018009 */  lui   $at, 0x8009
/* 00703C 8002BC3C D4227E18 */  ldc1  $f2, 0x7e18($at)
/* 007040 8002BC40 46000021 */  cvt.d.s $f0, $f0
/* 007044 8002BC44 46220001 */  sub.d $f0, $f0, $f2
/* 007048 8002BC48 AC640000 */  sw    $a0, ($v1)
/* 00704C 8002BC4C 46200120 */  cvt.s.d $f4, $f0
/* 007050 8002BC50 4614203C */  c.lt.s $f4, $f20
/* 007054 8002BC54 00000000 */  nop   
/* 007058 8002BC58 45000002 */  bc1f  .L8002BC64
/* 00705C 8002BC5C AC700004 */   sw    $s0, 4($v1)
/* 007060 8002BC60 4600A106 */  mov.s $f4, $f20
.L8002BC64:
/* 007064 8002BC64 44800000 */  mtc1  $zero, $f0
/* 007068 8002BC68 3C018009 */  lui   $at, 0x8009
/* 00706C 8002BC6C D4227E20 */  ldc1  $f2, 0x7e20($at)
/* 007070 8002BC70 44050000 */  mfc1  $a1, $f0
/* 007074 8002BC74 46002021 */  cvt.d.s $f0, $f4
/* 007078 8002BC78 46220002 */  mul.d $f0, $f0, $f2
/* 00707C 8002BC7C 00000000 */  nop   
/* 007080 8002BC80 27A40020 */  addiu $a0, $sp, 0x20
/* 007084 8002BC84 3C01C3A0 */  lui   $at, 0xc3a0
/* 007088 8002BC88 44811000 */  mtc1  $at, $f2
/* 00708C 8002BC8C 00A0302D */  move  $a2, $a1
/* 007090 8002BC90 00A0382D */  move  $a3, $a1
/* 007094 8002BC94 AFA50014 */  sw    $a1, 0x14($sp)
/* 007098 8002BC98 AFA50018 */  sw    $a1, 0x18($sp)
/* 00709C 8002BC9C E7A2001C */  swc1  $f2, 0x1c($sp)
/* 0070A0 8002BCA0 46200020 */  cvt.s.d $f0, $f0
/* 0070A4 8002BCA4 0C018FC4 */  jal   func_80063F10
/* 0070A8 8002BCA8 E7A00010 */   swc1  $f0, 0x10($sp)
/* 0070AC 8002BCAC 27A40020 */  addiu $a0, $sp, 0x20
/* 0070B0 8002BCB0 26100040 */  addiu $s0, $s0, 0x40
/* 0070B4 8002BCB4 0C019D40 */  jal   func_80067500
/* 0070B8 8002BCB8 0200282D */   move  $a1, $s0
/* 0070BC 8002BCBC 3C03DA38 */  lui   $v1, 0xda38
/* 0070C0 8002BCC0 34630002 */  ori   $v1, $v1, 2
/* 0070C4 8002BCC4 3C04D838 */  lui   $a0, 0xd838
/* 0070C8 8002BCC8 34840002 */  ori   $a0, $a0, 2
/* 0070CC 8002BCCC 8E250000 */  lw    $a1, ($s1)
/* 0070D0 8002BCD0 3C01437F */  lui   $at, 0x437f
/* 0070D4 8002BCD4 44810000 */  mtc1  $at, $f0
/* 0070D8 8002BCD8 00A0102D */  move  $v0, $a1
/* 0070DC 8002BCDC 24A50008 */  addiu $a1, $a1, 8
/* 0070E0 8002BCE0 AE250000 */  sw    $a1, ($s1)
/* 0070E4 8002BCE4 AC430000 */  sw    $v1, ($v0)
/* 0070E8 8002BCE8 AC500004 */  sw    $s0, 4($v0)
/* 0070EC 8002BCEC 24A20008 */  addiu $v0, $a1, 8
/* 0070F0 8002BCF0 AE220000 */  sw    $v0, ($s1)
/* 0070F4 8002BCF4 3C02FA00 */  lui   $v0, 0xfa00
/* 0070F8 8002BCF8 ACA20000 */  sw    $v0, ($a1)
/* 0070FC 8002BCFC 24A20010 */  addiu $v0, $a1, 0x10
/* 007100 8002BD00 AE220000 */  sw    $v0, ($s1)
/* 007104 8002BD04 3C028007 */  lui   $v0, 0x8007
/* 007108 8002BD08 24426078 */  addiu $v0, $v0, 0x6078
/* 00710C 8002BD0C ACB40008 */  sw    $s4, 8($a1)
/* 007110 8002BD10 ACA2000C */  sw    $v0, 0xc($a1)
/* 007114 8002BD14 C6620000 */  lwc1  $f2, ($s3)
/* 007118 8002BD18 24A20018 */  addiu $v0, $a1, 0x18
/* 00711C 8002BD1C AE220000 */  sw    $v0, ($s1)
/* 007120 8002BD20 24020040 */  addiu $v0, $zero, 0x40
/* 007124 8002BD24 46001082 */  mul.s $f2, $f2, $f0
/* 007128 8002BD28 00000000 */  nop   
/* 00712C 8002BD2C ACA20014 */  sw    $v0, 0x14($a1)
/* 007130 8002BD30 24A20020 */  addiu $v0, $a1, 0x20
/* 007134 8002BD34 ACA40010 */  sw    $a0, 0x10($a1)
/* 007138 8002BD38 AE220000 */  sw    $v0, ($s1)
/* 00713C 8002BD3C 46020001 */  sub.s $f0, $f0, $f2
/* 007140 8002BD40 ACB50018 */  sw    $s5, 0x18($a1)
/* 007144 8002BD44 ACA0001C */  sw    $zero, 0x1c($a1)
/* 007148 8002BD48 4600018D */  trunc.w.s $f6, $f0
/* 00714C 8002BD4C 44023000 */  mfc1  $v0, $f6
/* 007150 8002BD50 00000000 */  nop   
/* 007154 8002BD54 304200FF */  andi  $v0, $v0, 0xff
/* 007158 8002BD58 00021E00 */  sll   $v1, $v0, 0x18
/* 00715C 8002BD5C 00022400 */  sll   $a0, $v0, 0x10
/* 007160 8002BD60 00641825 */  or    $v1, $v1, $a0
/* 007164 8002BD64 00021200 */  sll   $v0, $v0, 8
/* 007168 8002BD68 00621825 */  or    $v1, $v1, $v0
/* 00716C 8002BD6C 346300FF */  ori   $v1, $v1, 0xff
/* 007170 8002BD70 ACA30004 */  sw    $v1, 4($a1)
.L8002BD74:
/* 007174 8002BD74 3C02800A */  lui   $v0, 0x800a
/* 007178 8002BD78 8C42BAA0 */  lw    $v0, -0x4560($v0)
/* 00717C 8002BD7C 10400003 */  beqz  $v0, .L8002BD8C
/* 007180 8002BD80 00000000 */   nop   
/* 007184 8002BD84 0040F809 */  jalr  $v0
/* 007188 8002BD88 00000000 */  nop   
.L8002BD8C:
/* 00718C 8002BD8C 3C108007 */  lui   $s0, 0x8007
/* 007190 8002BD90 2610419C */  addiu $s0, $s0, 0x419c
/* 007194 8002BD94 8E020000 */  lw    $v0, ($s0)
/* 007198 8002BD98 90420073 */  lbu   $v0, 0x73($v0)
/* 00719C 8002BD9C 30420001 */  andi  $v0, $v0, 1
/* 0071A0 8002BDA0 14400044 */  bnez  $v0, .L8002BEB4
/* 0071A4 8002BDA4 00000000 */   nop   
/* 0071A8 8002BDA8 0C00CD4A */  jal   func_80033528
/* 0071AC 8002BDAC 00000000 */   nop   
/* 0071B0 8002BDB0 00021400 */  sll   $v0, $v0, 0x10
/* 0071B4 8002BDB4 00021403 */  sra   $v0, $v0, 0x10
/* 0071B8 8002BDB8 24030010 */  addiu $v1, $zero, 0x10
/* 0071BC 8002BDBC 1043000C */  beq   $v0, $v1, .L8002BDF0
/* 0071C0 8002BDC0 00000000 */   nop   
/* 0071C4 8002BDC4 0C00CD4A */  jal   func_80033528
/* 0071C8 8002BDC8 00000000 */   nop   
/* 0071CC 8002BDCC 00021400 */  sll   $v0, $v0, 0x10
/* 0071D0 8002BDD0 00021403 */  sra   $v0, $v0, 0x10
/* 0071D4 8002BDD4 24030002 */  addiu $v1, $zero, 2
/* 0071D8 8002BDD8 10430005 */  beq   $v0, $v1, .L8002BDF0
/* 0071DC 8002BDDC 00000000 */   nop   
/* 0071E0 8002BDE0 8E020000 */  lw    $v0, ($s0)
/* 0071E4 8002BDE4 80420071 */  lb    $v0, 0x71($v0)
/* 0071E8 8002BDE8 10400032 */  beqz  $v0, .L8002BEB4
/* 0071EC 8002BDEC 00000000 */   nop   
.L8002BDF0:
/* 0071F0 8002BDF0 3C028007 */  lui   $v0, 0x8007
/* 0071F4 8002BDF4 8C42419C */  lw    $v0, 0x419c($v0)
/* 0071F8 8002BDF8 94430134 */  lhu   $v1, 0x134($v0)
/* 0071FC 8002BDFC 3C02AAAA */  lui   $v0, 0xaaaa
/* 007200 8002BE00 3442AAAB */  ori   $v0, $v0, 0xaaab
/* 007204 8002BE04 00620019 */  multu $v1, $v0
/* 007208 8002BE08 00004810 */  mfhi  $t1
/* 00720C 8002BE0C 00092102 */  srl   $a0, $t1, 4
/* 007210 8002BE10 00041040 */  sll   $v0, $a0, 1
/* 007214 8002BE14 00441021 */  addu  $v0, $v0, $a0
/* 007218 8002BE18 000210C0 */  sll   $v0, $v0, 3
/* 00721C 8002BE1C 00621823 */  subu  $v1, $v1, $v0
/* 007220 8002BE20 3063FFFF */  andi  $v1, $v1, 0xffff
/* 007224 8002BE24 00034140 */  sll   $t0, $v1, 5
/* 007228 8002BE28 29020100 */  slti  $v0, $t0, 0x100
/* 00722C 8002BE2C 50400001 */  beql  $v0, $zero, .L8002BE34
/* 007230 8002BE30 240800FF */   addiu $t0, $zero, 0xff
.L8002BE34:
/* 007234 8002BE34 3C07FF20 */  lui   $a3, 0xff20
/* 007238 8002BE38 3C04800A */  lui   $a0, 0x800a
/* 00723C 8002BE3C 2484A66C */  addiu $a0, $a0, -0x5994
/* 007240 8002BE40 34E71000 */  ori   $a3, $a3, 0x1000
/* 007244 8002BE44 3C06DE00 */  lui   $a2, 0xde00
/* 007248 8002BE48 8C830000 */  lw    $v1, ($a0)
/* 00724C 8002BE4C 3C028007 */  lui   $v0, 0x8007
/* 007250 8002BE50 244260C0 */  addiu $v0, $v0, 0x60c0
/* 007254 8002BE54 0060282D */  move  $a1, $v1
/* 007258 8002BE58 24630008 */  addiu $v1, $v1, 8
/* 00725C 8002BE5C AC830000 */  sw    $v1, ($a0)
/* 007260 8002BE60 ACA20004 */  sw    $v0, 4($a1)
/* 007264 8002BE64 24620008 */  addiu $v0, $v1, 8
/* 007268 8002BE68 ACA60000 */  sw    $a2, ($a1)
/* 00726C 8002BE6C AC820000 */  sw    $v0, ($a0)
/* 007270 8002BE70 3C028007 */  lui   $v0, 0x8007
/* 007274 8002BE74 24427140 */  addiu $v0, $v0, 0x7140
/* 007278 8002BE78 AC620004 */  sw    $v0, 4($v1)
/* 00727C 8002BE7C 24620010 */  addiu $v0, $v1, 0x10
/* 007280 8002BE80 AC660000 */  sw    $a2, ($v1)
/* 007284 8002BE84 AC820000 */  sw    $v0, ($a0)
/* 007288 8002BE88 3C02FA00 */  lui   $v0, 0xfa00
/* 00728C 8002BE8C AC620008 */  sw    $v0, 8($v1)
/* 007290 8002BE90 310200FF */  andi  $v0, $t0, 0xff
/* 007294 8002BE94 00471025 */  or    $v0, $v0, $a3
/* 007298 8002BE98 AC62000C */  sw    $v0, 0xc($v1)
/* 00729C 8002BE9C 24620018 */  addiu $v0, $v1, 0x18
/* 0072A0 8002BEA0 AC820000 */  sw    $v0, ($a0)
/* 0072A4 8002BEA4 3C028007 */  lui   $v0, 0x8007
/* 0072A8 8002BEA8 244271E8 */  addiu $v0, $v0, 0x71e8
/* 0072AC 8002BEAC AC660010 */  sw    $a2, 0x10($v1)
/* 0072B0 8002BEB0 AC620014 */  sw    $v0, 0x14($v1)
.L8002BEB4:
/* 0072B4 8002BEB4 8FBF0078 */  lw    $ra, 0x78($sp)
/* 0072B8 8002BEB8 8FB50074 */  lw    $s5, 0x74($sp)
/* 0072BC 8002BEBC 8FB40070 */  lw    $s4, 0x70($sp)
/* 0072C0 8002BEC0 8FB3006C */  lw    $s3, 0x6c($sp)
/* 0072C4 8002BEC4 8FB20068 */  lw    $s2, 0x68($sp)
/* 0072C8 8002BEC8 8FB10064 */  lw    $s1, 0x64($sp)
/* 0072CC 8002BECC 8FB00060 */  lw    $s0, 0x60($sp)
/* 0072D0 8002BED0 D7B40080 */  ldc1  $f20, 0x80($sp)
/* 0072D4 8002BED4 03E00008 */  jr    $ra
/* 0072D8 8002BED8 27BD0088 */   addiu $sp, $sp, 0x88

func_8002BEDC:
/* 0072DC 8002BEDC 3C01800A */  lui   $at, 0x800a
/* 0072E0 8002BEE0 E42CBA94 */  swc1  $f12, -0x456c($at)
/* 0072E4 8002BEE4 03E00008 */  jr    $ra
/* 0072E8 8002BEE8 00000000 */   nop   

func_8002BEEC:
/* 0072EC 8002BEEC 3C01800A */  lui   $at, 0x800a
/* 0072F0 8002BEF0 E42CBA94 */  swc1  $f12, -0x456c($at)
/* 0072F4 8002BEF4 3C01800A */  lui   $at, 0x800a
/* 0072F8 8002BEF8 E42CBA90 */  swc1  $f12, -0x4570($at)
/* 0072FC 8002BEFC 03E00008 */  jr    $ra
/* 007300 8002BF00 00000000 */   nop   

func_8002BF04:
/* 007304 8002BF04 3C01800A */  lui   $at, 0x800a
/* 007308 8002BF08 AC24BAA0 */  sw    $a0, -0x4560($at)
/* 00730C 8002BF0C 03E00008 */  jr    $ra
/* 007310 8002BF10 00000000 */   nop   

func_8002BF14:
/* 007314 8002BF14 3C01800A */  lui   $at, 0x800a
/* 007318 8002BF18 E42CBA9C */  swc1  $f12, -0x4564($at)
/* 00731C 8002BF1C 03E00008 */  jr    $ra
/* 007320 8002BF20 00000000 */   nop   

func_8002BF24:
/* 007324 8002BF24 3C01800A */  lui   $at, 0x800a
/* 007328 8002BF28 E42CBA9C */  swc1  $f12, -0x4564($at)
/* 00732C 8002BF2C 3C01800A */  lui   $at, 0x800a
/* 007330 8002BF30 E42CBA98 */  swc1  $f12, -0x4568($at)
/* 007334 8002BF34 03E00008 */  jr    $ra
/* 007338 8002BF38 00000000 */   nop   

/* 00733C 8002BF3C 00000000 */  nop   
