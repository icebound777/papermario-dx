
.section .text8006C690, "ax"

func_8006C690:
/* 047A90 8006C690 4442F800 */  cfc1  $v0, $31
/* 047A94 8006C694 44C4F800 */  ctc1  $a0, $31
/* 047A98 8006C698 03E00008 */  jr    $ra
/* 047A9C 8006C69C 00000000 */   nop   

func_8006C6A0:
/* 047AA0 8006C6A0 40846000 */  mtc0  $a0, $12
/* 047AA4 8006C6A4 00000000 */  nop   
/* 047AA8 8006C6A8 03E00008 */  jr    $ra
/* 047AAC 8006C6AC 00000000 */   nop   

func_8006C6B0:
/* 047AB0 8006C6B0 40849000 */  mtc0  $a0, $18
/* 047AB4 8006C6B4 00000000 */  nop   
/* 047AB8 8006C6B8 03E00008 */  jr    $ra
/* 047ABC 8006C6BC 00000000 */   nop   

func_8006C6C0:
/* 047AC0 8006C6C0 3C02A404 */  lui   $v0, 0xa404
/* 047AC4 8006C6C4 34420010 */  ori   $v0, $v0, 0x10
/* 047AC8 8006C6C8 8C420000 */  lw    $v0, ($v0)
/* 047ACC 8006C6CC 3042001C */  andi  $v0, $v0, 0x1c
/* 047AD0 8006C6D0 03E00008 */  jr    $ra
/* 047AD4 8006C6D4 0002102B */   sltu  $v0, $zero, $v0

/* 047AD8 8006C6D8 00000000 */  nop   
/* 047ADC 8006C6DC 00000000 */  nop   
