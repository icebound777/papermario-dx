
.section .text80067500, "ax"

func_80067500:
/* 042900 80067500 3C014780 */  lui   $at, 0x4780
/* 042904 80067504 44810000 */  mtc1  $at, $f0
/* 042908 80067508 3C19FFFF */  lui   $t9, 0xffff
/* 04290C 8006750C 24B80020 */  addiu $t8, $a1, 0x20
.L80067510:
/* 042910 80067510 C4840000 */  lwc1  $f4, ($a0)
/* 042914 80067514 46002182 */  mul.s $f6, $f4, $f0
/* 042918 80067518 4600320D */  trunc.w.s $f8, $f6
/* 04291C 8006751C C48A0004 */  lwc1  $f10, 4($a0)
/* 042920 80067520 46005402 */  mul.s $f16, $f10, $f0
/* 042924 80067524 4600848D */  trunc.w.s $f18, $f16
/* 042928 80067528 44084000 */  mfc1  $t0, $f8
/* 04292C 8006752C 44099000 */  mfc1  $t1, $f18
/* 042930 80067530 01195024 */  and   $t2, $t0, $t9
/* 042934 80067534 00095C02 */  srl   $t3, $t1, 0x10
/* 042938 80067538 014B6025 */  or    $t4, $t2, $t3
/* 04293C 8006753C ACAC0000 */  sw    $t4, ($a1)
/* 042940 80067540 00086C00 */  sll   $t5, $t0, 0x10
/* 042944 80067544 312EFFFF */  andi  $t6, $t1, 0xffff
/* 042948 80067548 01AE7825 */  or    $t7, $t5, $t6
/* 04294C 8006754C ACAF0020 */  sw    $t7, 0x20($a1)
/* 042950 80067550 24A50004 */  addiu $a1, $a1, 4
/* 042954 80067554 14B8FFEE */  bne   $a1, $t8, .L80067510
/* 042958 80067558 24840008 */   addiu $a0, $a0, 8
/* 04295C 8006755C 03E00008 */  jr    $ra
/* 042960 80067560 00000000 */   nop   

/* 042964 80067564 00000000 */  nop   
/* 042968 80067568 00000000 */  nop   
/* 04296C 8006756C 00000000 */  nop   
/* 042970 80067570 00000000 */  nop   
/* 042974 80067574 00000000 */  nop   
/* 042978 80067578 00000000 */  nop   
/* 04297C 8006757C 00000000 */  nop   
