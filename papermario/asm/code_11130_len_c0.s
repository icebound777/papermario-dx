
.section .text80035D30, "ax"

/* 011130 80035D30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 011134 80035D34 3C058003 */  lui   $a1, 0x8003
/* 011138 80035D38 24A55DCC */  addiu $a1, $a1, 0x5dcc
/* 01113C 80035D3C AFBF0010 */  sw    $ra, 0x10($sp)
/* 011140 80035D40 0C044B61 */  jal   func_80112D84
/* 011144 80035D44 0000202D */   move  $a0, $zero
/* 011148 80035D48 8FBF0010 */  lw    $ra, 0x10($sp)
/* 01114C 80035D4C 03E00008 */  jr    $ra
/* 011150 80035D50 27BD0018 */   addiu $sp, $sp, 0x18

/* 011154 80035D54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 011158 80035D58 AFBF0010 */  sw    $ra, 0x10($sp)
/* 01115C 80035D5C 0C00F949 */  jal   func_8003E524
/* 011160 80035D60 00000000 */   nop   
/* 011164 80035D64 0C00E64C */  jal   func_80039930
/* 011168 80035D68 00000000 */   nop   
/* 01116C 80035D6C 0C037DD0 */  jal   func_800DF740
/* 011170 80035D70 00000000 */   nop   
/* 011174 80035D74 0C04C7BB */  jal   func_80131EEC
/* 011178 80035D78 00000000 */   nop   
/* 01117C 80035D7C 0C016754 */  jal   func_80059D50
/* 011180 80035D80 00000000 */   nop   
/* 011184 80035D84 0C04599D */  jal   func_80116674
/* 011188 80035D88 00000000 */   nop   
/* 01118C 80035D8C 0C00B500 */  jal   func_8002D400
/* 011190 80035D90 00000000 */   nop   
/* 011194 80035D94 8FBF0010 */  lw    $ra, 0x10($sp)
/* 011198 80035D98 03E00008 */  jr    $ra
/* 01119C 80035D9C 27BD0018 */   addiu $sp, $sp, 0x18

/* 0111A0 80035DA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0111A4 80035DA4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0111A8 80035DA8 0C03A5CF */  jal   func_800E973C
/* 0111AC 80035DAC 00000000 */   nop   
/* 0111B0 80035DB0 0C00F96C */  jal   func_8003E5B0
/* 0111B4 80035DB4 00000000 */   nop   
/* 0111B8 80035DB8 0C04E9BA */  jal   func_8013A6E8
/* 0111BC 80035DBC 00000000 */   nop   
/* 0111C0 80035DC0 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0111C4 80035DC4 03E00008 */  jr    $ra
/* 0111C8 80035DC8 27BD0018 */   addiu $sp, $sp, 0x18

/* 0111CC 80035DCC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0111D0 80035DD0 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0111D4 80035DD4 0C00F98F */  jal   func_8003E63C
/* 0111D8 80035DD8 00000000 */   nop   
/* 0111DC 80035DDC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0111E0 80035DE0 03E00008 */  jr    $ra
/* 0111E4 80035DE4 27BD0018 */   addiu $sp, $sp, 0x18

/* 0111E8 80035DE8 00000000 */  nop   
/* 0111EC 80035DEC 00000000 */  nop   
