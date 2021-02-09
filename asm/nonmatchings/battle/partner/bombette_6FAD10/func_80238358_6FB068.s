.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238358_6FB068
/* 6FB068 80238358 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 6FB06C 8023835C AFB10014 */  sw        $s1, 0x14($sp)
/* 6FB070 80238360 0080882D */  daddu     $s1, $a0, $zero
/* 6FB074 80238364 AFBF0018 */  sw        $ra, 0x18($sp)
/* 6FB078 80238368 AFB00010 */  sw        $s0, 0x10($sp)
/* 6FB07C 8023836C 8E22000C */  lw        $v0, 0xc($s1)
/* 6FB080 80238370 8C450000 */  lw        $a1, ($v0)
/* 6FB084 80238374 3C10800E */  lui       $s0, %hi(gBattleStatus+0xDC)
/* 6FB088 80238378 8E10C14C */  lw        $s0, %lo(gBattleStatus+0xDC)($s0)
/* 6FB08C 8023837C 0C0B1EAF */  jal       get_variable
/* 6FB090 80238380 00000000 */   nop
/* 6FB094 80238384 8E030008 */  lw        $v1, 8($s0)
/* 6FB098 80238388 0040282D */  daddu     $a1, $v0, $zero
/* 6FB09C 8023838C 90630006 */  lbu       $v1, 6($v1)
/* 6FB0A0 80238390 24020001 */  addiu     $v0, $zero, 1
/* 6FB0A4 80238394 1062001A */  beq       $v1, $v0, .L80238400
/* 6FB0A8 80238398 0000202D */   daddu    $a0, $zero, $zero
/* 6FB0AC 8023839C 28620002 */  slti      $v0, $v1, 2
/* 6FB0B0 802383A0 10400005 */  beqz      $v0, .L802383B8
/* 6FB0B4 802383A4 24020002 */   addiu    $v0, $zero, 2
/* 6FB0B8 802383A8 10600007 */  beqz      $v1, .L802383C8
/* 6FB0BC 802383AC 28A20064 */   slti     $v0, $a1, 0x64
/* 6FB0C0 802383B0 0808E11C */  j         .L80238470
/* 6FB0C4 802383B4 00000000 */   nop
.L802383B8:
/* 6FB0C8 802383B8 1062001F */  beq       $v1, $v0, .L80238438
/* 6FB0CC 802383BC 28A20064 */   slti     $v0, $a1, 0x64
/* 6FB0D0 802383C0 0808E11C */  j         .L80238470
/* 6FB0D4 802383C4 00000000 */   nop
.L802383C8:
/* 6FB0D8 802383C8 28A20024 */  slti      $v0, $a1, 0x24
/* 6FB0DC 802383CC 14400027 */  bnez      $v0, .L8023846C
/* 6FB0E0 802383D0 24040001 */   addiu    $a0, $zero, 1
/* 6FB0E4 802383D4 28A2003D */  slti      $v0, $a1, 0x3d
/* 6FB0E8 802383D8 14400024 */  bnez      $v0, .L8023846C
/* 6FB0EC 802383DC 24040002 */   addiu    $a0, $zero, 2
/* 6FB0F0 802383E0 28A20051 */  slti      $v0, $a1, 0x51
/* 6FB0F4 802383E4 14400021 */  bnez      $v0, .L8023846C
/* 6FB0F8 802383E8 24040003 */   addiu    $a0, $zero, 3
/* 6FB0FC 802383EC 28A20064 */  slti      $v0, $a1, 0x64
/* 6FB100 802383F0 1040001F */  beqz      $v0, .L80238470
/* 6FB104 802383F4 24040005 */   addiu    $a0, $zero, 5
/* 6FB108 802383F8 0808E11C */  j         .L80238470
/* 6FB10C 802383FC 24040004 */   addiu    $a0, $zero, 4
.L80238400:
/* 6FB110 80238400 28A20024 */  slti      $v0, $a1, 0x24
/* 6FB114 80238404 14400019 */  bnez      $v0, .L8023846C
/* 6FB118 80238408 24040001 */   addiu    $a0, $zero, 1
/* 6FB11C 8023840C 28A2003D */  slti      $v0, $a1, 0x3d
/* 6FB120 80238410 14400016 */  bnez      $v0, .L8023846C
/* 6FB124 80238414 24040003 */   addiu    $a0, $zero, 3
/* 6FB128 80238418 28A20051 */  slti      $v0, $a1, 0x51
/* 6FB12C 8023841C 14400013 */  bnez      $v0, .L8023846C
/* 6FB130 80238420 24040004 */   addiu    $a0, $zero, 4
/* 6FB134 80238424 28A20064 */  slti      $v0, $a1, 0x64
/* 6FB138 80238428 10400011 */  beqz      $v0, .L80238470
/* 6FB13C 8023842C 24040006 */   addiu    $a0, $zero, 6
/* 6FB140 80238430 0808E11C */  j         .L80238470
/* 6FB144 80238434 24040005 */   addiu    $a0, $zero, 5
.L80238438:
/* 6FB148 80238438 28A20024 */  slti      $v0, $a1, 0x24
/* 6FB14C 8023843C 1440000B */  bnez      $v0, .L8023846C
/* 6FB150 80238440 24040001 */   addiu    $a0, $zero, 1
/* 6FB154 80238444 28A2003D */  slti      $v0, $a1, 0x3d
/* 6FB158 80238448 14400008 */  bnez      $v0, .L8023846C
/* 6FB15C 8023844C 24040003 */   addiu    $a0, $zero, 3
/* 6FB160 80238450 28A20051 */  slti      $v0, $a1, 0x51
/* 6FB164 80238454 14400005 */  bnez      $v0, .L8023846C
/* 6FB168 80238458 24040005 */   addiu    $a0, $zero, 5
/* 6FB16C 8023845C 28A20064 */  slti      $v0, $a1, 0x64
/* 6FB170 80238460 10400003 */  beqz      $v0, .L80238470
/* 6FB174 80238464 24040007 */   addiu    $a0, $zero, 7
/* 6FB178 80238468 24040006 */  addiu     $a0, $zero, 6
.L8023846C:
/* 6FB17C 8023846C 28A20064 */  slti      $v0, $a1, 0x64
.L80238470:
/* 6FB180 80238470 54400003 */  bnel      $v0, $zero, .L80238480
/* 6FB184 80238474 AE200084 */   sw       $zero, 0x84($s1)
/* 6FB188 80238478 24020001 */  addiu     $v0, $zero, 1
/* 6FB18C 8023847C AE220084 */  sw        $v0, 0x84($s1)
.L80238480:
/* 6FB190 80238480 AE2400C0 */  sw        $a0, 0xc0($s1)
/* 6FB194 80238484 8FBF0018 */  lw        $ra, 0x18($sp)
/* 6FB198 80238488 8FB10014 */  lw        $s1, 0x14($sp)
/* 6FB19C 8023848C 8FB00010 */  lw        $s0, 0x10($sp)
/* 6FB1A0 80238490 24020002 */  addiu     $v0, $zero, 2
/* 6FB1A4 80238494 03E00008 */  jr        $ra
/* 6FB1A8 80238498 27BD0020 */   addiu    $sp, $sp, 0x20