.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802432E8
/* 136628 802432E8 3C028016 */  lui       $v0, 0x8016
/* 13662C 802432EC 24429D50 */  addiu     $v0, $v0, -0x62b0
/* 136630 802432F0 00042140 */  sll       $a0, $a0, 5
/* 136634 802432F4 00822021 */  addu      $a0, $a0, $v0
/* 136638 802432F8 9083001C */  lbu       $v1, 0x1c($a0)
/* 13663C 802432FC 8FA6001C */  lw        $a2, 0x1c($sp)
/* 136640 80243300 28620005 */  slti      $v0, $v1, 5
/* 136644 80243304 10400010 */  beqz      $v0, .L80243348
/* 136648 80243308 00000000 */   nop      
/* 13664C 8024330C 3C028025 */  lui       $v0, 0x8025
/* 136650 80243310 00431021 */  addu      $v0, $v0, $v1
/* 136654 80243314 9042EFE4 */  lbu       $v0, -0x101c($v0)
/* 136658 80243318 ACA20000 */  sw        $v0, ($a1)
/* 13665C 8024331C 00031040 */  sll       $v0, $v1, 1
/* 136660 80243320 3C018025 */  lui       $at, 0x8025
/* 136664 80243324 00220821 */  addu      $at, $at, $v0
/* 136668 80243328 8422F000 */  lh        $v0, -0x1000($at)
/* 13666C 8024332C C4C00000 */  lwc1      $f0, ($a2)
/* 136670 80243330 44821000 */  mtc1      $v0, $f2
/* 136674 80243334 00000000 */  nop       
/* 136678 80243338 468010A0 */  cvt.s.w   $f2, $f2
/* 13667C 8024333C 46020000 */  add.s     $f0, $f0, $f2
/* 136680 80243340 03E00008 */  jr        $ra
/* 136684 80243344 E4C00000 */   swc1     $f0, ($a2)
.L80243348:
/* 136688 80243348 3C028025 */  lui       $v0, 0x8025
/* 13668C 8024334C 9042EFE8 */  lbu       $v0, -0x1018($v0)
/* 136690 80243350 ACA20000 */  sw        $v0, ($a1)
/* 136694 80243354 3C028025 */  lui       $v0, 0x8025
/* 136698 80243358 8442F008 */  lh        $v0, -0xff8($v0)
/* 13669C 8024335C C4C00000 */  lwc1      $f0, ($a2)
/* 1366A0 80243360 44821000 */  mtc1      $v0, $f2
/* 1366A4 80243364 00000000 */  nop       
/* 1366A8 80243368 468010A0 */  cvt.s.w   $f2, $f2
/* 1366AC 8024336C 46020000 */  add.s     $f0, $f0, $f2
/* 1366B0 80243370 E4C00000 */  swc1      $f0, ($a2)
/* 1366B4 80243374 90820000 */  lbu       $v0, ($a0)
/* 1366B8 80243378 304200F7 */  andi      $v0, $v0, 0xf7
/* 1366BC 8024337C 34420004 */  ori       $v0, $v0, 4
/* 1366C0 80243380 03E00008 */  jr        $ra
/* 1366C4 80243384 A0820000 */   sb       $v0, ($a0)
