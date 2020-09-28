.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80141100
/* D7800 80141100 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* D7804 80141104 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* D7808 80141108 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D780C 8014110C AFBF0010 */  sw        $ra, 0x10($sp)
/* D7810 80141110 80420070 */  lb        $v0, 0x70($v0)
/* D7814 80141114 14400011 */  bnez      $v0, .L8014115C
/* D7818 80141118 00000000 */   nop      
/* D781C 8014111C 3C028015 */  lui       $v0, 0x8015
/* D7820 80141120 24426F60 */  addiu     $v0, $v0, 0x6f60
/* D7824 80141124 3C018015 */  lui       $at, 0x8015
/* D7828 80141128 AC227960 */  sw        $v0, 0x7960($at)
/* D782C 8014112C 3C028015 */  lui       $v0, 0x8015
/* D7830 80141130 24427968 */  addiu     $v0, $v0, 0x7968
/* D7834 80141134 3C018015 */  lui       $at, 0x8015
/* D7838 80141138 AC22133C */  sw        $v0, 0x133c($at)
/* D783C 8014113C 3C028015 */  lui       $v0, 0x8015
/* D7840 80141140 24427970 */  addiu     $v0, $v0, 0x7970
/* D7844 80141144 3C018015 */  lui       $at, 0x8015
/* D7848 80141148 AC2212C8 */  sw        $v0, 0x12c8($at)
/* D784C 8014114C 3C028015 */  lui       $v0, 0x8015
/* D7850 80141150 24427F70 */  addiu     $v0, $v0, 0x7f70
/* D7854 80141154 08050465 */  j         .L80141194
/* D7858 80141158 00000000 */   nop      
.L8014115C:
/* D785C 8014115C 3C028015 */  lui       $v0, 0x8015
/* D7860 80141160 24427460 */  addiu     $v0, $v0, 0x7460
/* D7864 80141164 3C018015 */  lui       $at, 0x8015
/* D7868 80141168 AC227960 */  sw        $v0, 0x7960($at)
/* D786C 8014116C 3C028016 */  lui       $v0, 0x8016
/* D7870 80141170 24428574 */  addiu     $v0, $v0, -0x7a8c
/* D7874 80141174 3C018015 */  lui       $at, 0x8015
/* D7878 80141178 AC22133C */  sw        $v0, 0x133c($at)
/* D787C 8014117C 3C028016 */  lui       $v0, 0x8016
/* D7880 80141180 24428580 */  addiu     $v0, $v0, -0x7a80
/* D7884 80141184 3C018015 */  lui       $at, 0x8015
/* D7888 80141188 AC2212C8 */  sw        $v0, 0x12c8($at)
/* D788C 8014118C 3C028016 */  lui       $v0, 0x8016
/* D7890 80141190 24428B80 */  addiu     $v0, $v0, -0x7480
.L80141194:
/* D7894 80141194 3C018015 */  lui       $at, 0x8015
/* D7898 80141198 AC2212D0 */  sw        $v0, 0x12d0($at)
/* D789C 8014119C 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* D78A0 801411A0 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* D78A4 801411A4 80420070 */  lb        $v0, 0x70($v0)
/* D78A8 801411A8 1440001F */  bnez      $v0, .L80141228
/* D78AC 801411AC 00000000 */   nop      
/* D78B0 801411B0 3C048015 */  lui       $a0, 0x8015
/* D78B4 801411B4 0C00AB0A */  jal       general_heap_malloc
/* D78B8 801411B8 8C84EFC4 */   lw       $a0, -0x103c($a0)
/* D78BC 801411BC 3C018015 */  lui       $at, 0x8015
/* D78C0 801411C0 AC221314 */  sw        $v0, 0x1314($at)
/* D78C4 801411C4 14400003 */  bnez      $v0, .L801411D4
/* D78C8 801411C8 0000202D */   daddu    $a0, $zero, $zero
.L801411CC:
/* D78CC 801411CC 08050473 */  j         .L801411CC
/* D78D0 801411D0 00000000 */   nop      
.L801411D4:
/* D78D4 801411D4 3C028015 */  lui       $v0, 0x8015
/* D78D8 801411D8 8C421314 */  lw        $v0, 0x1314($v0)
/* D78DC 801411DC 3C038015 */  lui       $v1, 0x8015
/* D78E0 801411E0 8C63133C */  lw        $v1, 0x133c($v1)
/* D78E4 801411E4 2406FFFF */  addiu     $a2, $zero, -1
/* D78E8 801411E8 3C018015 */  lui       $at, 0x8015
/* D78EC 801411EC AC227964 */  sw        $v0, 0x7964($at)
/* D78F0 801411F0 AC600000 */  sw        $zero, ($v1)
/* D78F4 801411F4 3C058015 */  lui       $a1, 0x8015
/* D78F8 801411F8 8CA512D0 */  lw        $a1, 0x12d0($a1)
/* D78FC 801411FC 3C038015 */  lui       $v1, 0x8015
/* D7900 80141200 8C6312C8 */  lw        $v1, 0x12c8($v1)
.L80141204:
/* D7904 80141204 AC660000 */  sw        $a2, ($v1)
/* D7908 80141208 ACA60000 */  sw        $a2, ($a1)
/* D790C 8014120C 24A50008 */  addiu     $a1, $a1, 8
/* D7910 80141210 24840001 */  addiu     $a0, $a0, 1
/* D7914 80141214 288200C0 */  slti      $v0, $a0, 0xc0
/* D7918 80141218 1440FFFA */  bnez      $v0, .L80141204
/* D791C 8014121C 24630008 */   addiu    $v1, $v1, 8
/* D7920 80141220 080504AF */  j         .L801412BC
/* D7924 80141224 00000000 */   nop      
.L80141228:
/* D7928 80141228 3C028015 */  lui       $v0, 0x8015
/* D792C 8014122C 8C42EFC0 */  lw        $v0, -0x1040($v0)
/* D7930 80141230 5440000D */  bnel      $v0, $zero, .L80141268
/* D7934 80141234 0000202D */   daddu    $a0, $zero, $zero
/* D7938 80141238 3C048015 */  lui       $a0, 0x8015
/* D793C 8014123C 8C84EFC4 */  lw        $a0, -0x103c($a0)
/* D7940 80141240 000417C2 */  srl       $v0, $a0, 0x1f
/* D7944 80141244 00822021 */  addu      $a0, $a0, $v0
/* D7948 80141248 0C00AB0A */  jal       general_heap_malloc
/* D794C 8014124C 00042043 */   sra      $a0, $a0, 1
/* D7950 80141250 3C018015 */  lui       $at, 0x8015
/* D7954 80141254 AC221314 */  sw        $v0, 0x1314($at)
/* D7958 80141258 54400005 */  bnel      $v0, $zero, .L80141270
/* D795C 8014125C 0000202D */   daddu    $a0, $zero, $zero
.L80141260:
/* D7960 80141260 08050498 */  j         .L80141260
/* D7964 80141264 00000000 */   nop      
.L80141268:
/* D7968 80141268 3C018015 */  lui       $at, 0x8015
/* D796C 8014126C AC221314 */  sw        $v0, 0x1314($at)
.L80141270:
/* D7970 80141270 3C028015 */  lui       $v0, 0x8015
/* D7974 80141274 8C421314 */  lw        $v0, 0x1314($v0)
/* D7978 80141278 3C038015 */  lui       $v1, 0x8015
/* D797C 8014127C 8C63133C */  lw        $v1, 0x133c($v1)
/* D7980 80141280 2406FFFF */  addiu     $a2, $zero, -1
/* D7984 80141284 3C018016 */  lui       $at, 0x8016
/* D7988 80141288 AC228570 */  sw        $v0, -0x7a90($at)
/* D798C 8014128C AC600000 */  sw        $zero, ($v1)
/* D7990 80141290 3C058015 */  lui       $a1, 0x8015
/* D7994 80141294 8CA512D0 */  lw        $a1, 0x12d0($a1)
/* D7998 80141298 3C038015 */  lui       $v1, 0x8015
/* D799C 8014129C 8C6312C8 */  lw        $v1, 0x12c8($v1)
.L801412A0:
/* D79A0 801412A0 AC660000 */  sw        $a2, ($v1)
/* D79A4 801412A4 ACA60000 */  sw        $a2, ($a1)
/* D79A8 801412A8 24A50008 */  addiu     $a1, $a1, 8
/* D79AC 801412AC 24840001 */  addiu     $a0, $a0, 1
/* D79B0 801412B0 288200C0 */  slti      $v0, $a0, 0xc0
/* D79B4 801412B4 1440FFFA */  bnez      $v0, .L801412A0
/* D79B8 801412B8 24630008 */   addiu    $v1, $v1, 8
.L801412BC:
/* D79BC 801412BC 3C028015 */  lui       $v0, 0x8015
/* D79C0 801412C0 8C427960 */  lw        $v0, 0x7960($v0)
/* D79C4 801412C4 2404013F */  addiu     $a0, $zero, 0x13f
/* D79C8 801412C8 244204FC */  addiu     $v0, $v0, 0x4fc
.L801412CC:
/* D79CC 801412CC AC400000 */  sw        $zero, ($v0)
/* D79D0 801412D0 2484FFFF */  addiu     $a0, $a0, -1
/* D79D4 801412D4 0481FFFD */  bgez      $a0, .L801412CC
/* D79D8 801412D8 2442FFFC */   addiu    $v0, $v0, -4
/* D79DC 801412DC 3C018015 */  lui       $at, 0x8015
/* D79E0 801412E0 AC2012B4 */  sw        $zero, 0x12b4($at)
/* D79E4 801412E4 3C018016 */  lui       $at, 0x8016
/* D79E8 801412E8 AC209180 */  sw        $zero, -0x6e80($at)
/* D79EC 801412EC 0C0504FE */  jal       func_801413F8
/* D79F0 801412F0 00000000 */   nop      
/* D79F4 801412F4 8FBF0010 */  lw        $ra, 0x10($sp)
/* D79F8 801412F8 03E00008 */  jr        $ra
/* D79FC 801412FC 27BD0018 */   addiu    $sp, $sp, 0x18
