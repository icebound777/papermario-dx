.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel HPBarToCurrent
/* 19C088 8026D7A8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 19C08C 8026D7AC AFB00010 */  sw        $s0, 0x10($sp)
/* 19C090 8026D7B0 0080802D */  daddu     $s0, $a0, $zero
/* 19C094 8026D7B4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 19C098 8026D7B8 8E02000C */  lw        $v0, 0xc($s0)
/* 19C09C 8026D7BC 0C0B1EAF */  jal       get_variable
/* 19C0A0 8026D7C0 8C450000 */   lw       $a1, ($v0)
/* 19C0A4 8026D7C4 0040202D */  daddu     $a0, $v0, $zero
/* 19C0A8 8026D7C8 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 19C0AC 8026D7CC 14820002 */  bne       $a0, $v0, .L8026D7D8
/* 19C0B0 8026D7D0 00000000 */   nop      
/* 19C0B4 8026D7D4 8E040148 */  lw        $a0, 0x148($s0)
.L8026D7D8:
/* 19C0B8 8026D7D8 0C09A75B */  jal       get_actor
/* 19C0BC 8026D7DC 00000000 */   nop      
/* 19C0C0 8026D7E0 0040282D */  daddu     $a1, $v0, $zero
/* 19C0C4 8026D7E4 8CA20008 */  lw        $v0, 8($a1)
/* 19C0C8 8026D7E8 80420022 */  lb        $v0, 0x22($v0)
/* 19C0CC 8026D7EC C4A00144 */  lwc1      $f0, 0x144($a1)
/* 19C0D0 8026D7F0 44821000 */  mtc1      $v0, $f2
/* 19C0D4 8026D7F4 00000000 */  nop       
/* 19C0D8 8026D7F8 468010A0 */  cvt.s.w   $f2, $f2
/* 19C0DC 8026D7FC 46020000 */  add.s     $f0, $f0, $f2
/* 19C0E0 8026D800 8CA30008 */  lw        $v1, 8($a1)
/* 19C0E4 8026D804 C4A2014C */  lwc1      $f2, 0x14c($a1)
/* 19C0E8 8026D808 4600018D */  trunc.w.s $f6, $f0
/* 19C0EC 8026D80C 44023000 */  mfc1      $v0, $f6
/* 19C0F0 8026D810 00000000 */  nop       
/* 19C0F4 8026D814 A4A20156 */  sh        $v0, 0x156($a1)
/* 19C0F8 8026D818 80620023 */  lb        $v0, 0x23($v1)
/* 19C0FC 8026D81C C4A00148 */  lwc1      $f0, 0x148($a1)
/* 19C100 8026D820 44822000 */  mtc1      $v0, $f4
/* 19C104 8026D824 00000000 */  nop       
/* 19C108 8026D828 46802120 */  cvt.s.w   $f4, $f4
/* 19C10C 8026D82C 4600118D */  trunc.w.s $f6, $f2
/* 19C110 8026D830 44023000 */  mfc1      $v0, $f6
/* 19C114 8026D834 46040000 */  add.s     $f0, $f0, $f4
/* 19C118 8026D838 A4A2015A */  sh        $v0, 0x15a($a1)
/* 19C11C 8026D83C 8CA20000 */  lw        $v0, ($a1)
/* 19C120 8026D840 30420800 */  andi      $v0, $v0, 0x800
/* 19C124 8026D844 4600018D */  trunc.w.s $f6, $f0
/* 19C128 8026D848 44033000 */  mfc1      $v1, $f6
/* 19C12C 8026D84C 10400011 */  beqz      $v0, .L8026D894
/* 19C130 8026D850 A4A30158 */   sh       $v1, 0x158($a1)
/* 19C134 8026D854 90A20191 */  lbu       $v0, 0x191($a1)
/* 19C138 8026D858 C4A00148 */  lwc1      $f0, 0x148($a1)
/* 19C13C 8026D85C 44821000 */  mtc1      $v0, $f2
/* 19C140 8026D860 00000000 */  nop       
/* 19C144 8026D864 468010A0 */  cvt.s.w   $f2, $f2
/* 19C148 8026D868 8CA20008 */  lw        $v0, 8($a1)
/* 19C14C 8026D86C 46020001 */  sub.s     $f0, $f0, $f2
/* 19C150 8026D870 80420023 */  lb        $v0, 0x23($v0)
/* 19C154 8026D874 44821000 */  mtc1      $v0, $f2
/* 19C158 8026D878 00000000 */  nop       
/* 19C15C 8026D87C 468010A0 */  cvt.s.w   $f2, $f2
/* 19C160 8026D880 46020001 */  sub.s     $f0, $f0, $f2
/* 19C164 8026D884 4600018D */  trunc.w.s $f6, $f0
/* 19C168 8026D888 44023000 */  mfc1      $v0, $f6
/* 19C16C 8026D88C 00000000 */  nop       
/* 19C170 8026D890 A4A20158 */  sh        $v0, 0x158($a1)
.L8026D894:
/* 19C174 8026D894 80A201B8 */  lb        $v0, 0x1b8($a1)
/* 19C178 8026D898 80A401B9 */  lb        $a0, 0x1b9($a1)
/* 19C17C 8026D89C 00021840 */  sll       $v1, $v0, 1
/* 19C180 8026D8A0 00621821 */  addu      $v1, $v1, $v0
/* 19C184 8026D8A4 000318C0 */  sll       $v1, $v1, 3
/* 19C188 8026D8A8 00621821 */  addu      $v1, $v1, $v0
/* 19C18C 8026D8AC 14800002 */  bnez      $a0, .L8026D8B8
/* 19C190 8026D8B0 0064001A */   div      $zero, $v1, $a0
/* 19C194 8026D8B4 0007000D */  break     7
.L8026D8B8:
/* 19C198 8026D8B8 2401FFFF */   addiu    $at, $zero, -1
/* 19C19C 8026D8BC 14810004 */  bne       $a0, $at, .L8026D8D0
/* 19C1A0 8026D8C0 3C018000 */   lui      $at, 0x8000
/* 19C1A4 8026D8C4 14610002 */  bne       $v1, $at, .L8026D8D0
/* 19C1A8 8026D8C8 00000000 */   nop      
/* 19C1AC 8026D8CC 0006000D */  break     6
.L8026D8D0:
/* 19C1B0 8026D8D0 00001812 */   mflo     $v1
/* 19C1B4 8026D8D4 A0A301BC */  sb        $v1, 0x1bc($a1)
/* 19C1B8 8026D8D8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 19C1BC 8026D8DC 8FB00010 */  lw        $s0, 0x10($sp)
/* 19C1C0 8026D8E0 24020002 */  addiu     $v0, $zero, 2
/* 19C1C4 8026D8E4 03E00008 */  jr        $ra
/* 19C1C8 8026D8E8 27BD0018 */   addiu    $sp, $sp, 0x18
