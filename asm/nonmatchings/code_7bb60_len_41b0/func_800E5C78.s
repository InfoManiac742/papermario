.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800E5C78
/* 07F128 800E5C78 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07F12C 800E5C7C AFB00010 */  sw    $s0, 0x10($sp)
/* 07F130 800E5C80 3C108011 */  lui   $s0, 0x8011
/* 07F134 800E5C84 2610EFC8 */  addiu $s0, $s0, -0x1038
/* 07F138 800E5C88 AFBF0020 */  sw    $ra, 0x20($sp)
/* 07F13C 800E5C8C AFB3001C */  sw    $s3, 0x1c($sp)
/* 07F140 800E5C90 AFB20018 */  sw    $s2, 0x18($sp)
/* 07F144 800E5C94 0C03893E */  jal   func_800E24F8
/* 07F148 800E5C98 AFB10014 */   sw    $s1, 0x14($sp)
/* 07F14C 800E5C9C 3C138000 */  lui   $s3, 0x8000
/* 07F150 800E5CA0 3C11800F */  lui   $s1, 0x800f
/* 07F154 800E5CA4 26317C8C */  addiu $s1, $s1, 0x7c8c
/* 07F158 800E5CA8 3C128011 */  lui   $s2, 0x8011
/* 07F15C 800E5CAC 2652C924 */  addiu $s2, $s2, -0x36dc
.L800E5CB0:
/* 07F160 800E5CB0 8E020000 */  lw    $v0, ($s0)
/* 07F164 800E5CB4 30420020 */  andi  $v0, $v0, 0x20
/* 07F168 800E5CB8 14400007 */  bnez  $v0, .L800E5CD8
/* 07F16C 800E5CBC 00000000 */   nop   
/* 07F170 800E5CC0 0C010C77 */  jal   func_800431DC
/* 07F174 800E5CC4 00000000 */   nop   
/* 07F178 800E5CC8 10400003 */  beqz  $v0, .L800E5CD8
/* 07F17C 800E5CCC 00000000 */   nop   
/* 07F180 800E5CD0 0C039769 */  jal   set_action_state
/* 07F184 800E5CD4 2404000C */   addiu $a0, $zero, 0xc
.L800E5CD8:
/* 07F188 800E5CD8 8E020000 */  lw    $v0, ($s0)
/* 07F18C 800E5CDC 00531024 */  and   $v0, $v0, $s3
/* 07F190 800E5CE0 10400014 */  beqz  $v0, .L800E5D34
/* 07F194 800E5CE4 00000000 */   nop   
/* 07F198 800E5CE8 820200B4 */  lb    $v0, 0xb4($s0)
/* 07F19C 800E5CEC 00021100 */  sll   $v0, $v0, 4
/* 07F1A0 800E5CF0 00512021 */  addu  $a0, $v0, $s1
/* 07F1A4 800E5CF4 8082000C */  lb    $v0, 0xc($a0)
/* 07F1A8 800E5CF8 10400017 */  beqz  $v0, .L800E5D58
/* 07F1AC 800E5CFC 00000000 */   nop   
/* 07F1B0 800E5D00 8C840004 */  lw    $a0, 4($a0)
/* 07F1B4 800E5D04 1080000B */  beqz  $a0, .L800E5D34
/* 07F1B8 800E5D08 00000000 */   nop   
/* 07F1BC 800E5D0C 8E420000 */  lw    $v0, ($s2)
/* 07F1C0 800E5D10 10820008 */  beq   $a0, $v0, .L800E5D34
/* 07F1C4 800E5D14 3C06802B */   lui   $a2, 0x802b
/* 07F1C8 800E5D18 820200B4 */  lb    $v0, 0xb4($s0)
/* 07F1CC 800E5D1C 00021100 */  sll   $v0, $v0, 4
/* 07F1D0 800E5D20 00511021 */  addu  $v0, $v0, $s1
/* 07F1D4 800E5D24 8C450008 */  lw    $a1, 8($v0)
/* 07F1D8 800E5D28 34C66000 */  ori   $a2, $a2, 0x6000
/* 07F1DC 800E5D2C 0C00A5CF */  jal   dma_copy
/* 07F1E0 800E5D30 AE440000 */   sw    $a0, ($s2)
.L800E5D34:
/* 07F1E4 800E5D34 820200B4 */  lb    $v0, 0xb4($s0)
/* 07F1E8 800E5D38 00021100 */  sll   $v0, $v0, 4
/* 07F1EC 800E5D3C 00511821 */  addu  $v1, $v0, $s1
/* 07F1F0 800E5D40 8062000C */  lb    $v0, 0xc($v1)
/* 07F1F4 800E5D44 10400004 */  beqz  $v0, .L800E5D58
/* 07F1F8 800E5D48 00000000 */   nop   
/* 07F1FC 800E5D4C 8C620000 */  lw    $v0, ($v1)
/* 07F200 800E5D50 0040F809 */  jalr  $v0
/* 07F204 800E5D54 00000000 */  nop   
.L800E5D58:
/* 07F208 800E5D58 8E020000 */  lw    $v0, ($s0)
/* 07F20C 800E5D5C 00531024 */  and   $v0, $v0, $s3
/* 07F210 800E5D60 1440FFD3 */  bnez  $v0, .L800E5CB0
/* 07F214 800E5D64 00000000 */   nop   
/* 07F218 800E5D68 0C03990A */  jal   func_800E6428
/* 07F21C 800E5D6C 00000000 */   nop   
/* 07F220 800E5D70 8E020004 */  lw    $v0, 4($s0)
/* 07F224 800E5D74 30422000 */  andi  $v0, $v0, 0x2000
/* 07F228 800E5D78 10400003 */  beqz  $v0, .L800E5D88
/* 07F22C 800E5D7C 00000000 */   nop   
/* 07F230 800E5D80 0C039940 */  jal   func_800E6500
/* 07F234 800E5D84 00000000 */   nop   
.L800E5D88:
/* 07F238 800E5D88 8FBF0020 */  lw    $ra, 0x20($sp)
/* 07F23C 800E5D8C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 07F240 800E5D90 8FB20018 */  lw    $s2, 0x18($sp)
/* 07F244 800E5D94 8FB10014 */  lw    $s1, 0x14($sp)
/* 07F248 800E5D98 8FB00010 */  lw    $s0, 0x10($sp)
/* 07F24C 800E5D9C 03E00008 */  jr    $ra
/* 07F250 800E5DA0 27BD0028 */   addiu $sp, $sp, 0x28
