.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241720_8442F0
/* 8442F0 80241720 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 8442F4 80241724 AFBF0010 */  sw        $ra, 0x10($sp)
/* 8442F8 80241728 10A00003 */  beqz      $a1, .L80241738
/* 8442FC 8024172C 8C86000C */   lw       $a2, 0xc($a0)
/* 844300 80241730 3C018024 */  lui       $at, %hi(mac_04_ItemChoice_HasSelectedItem)
/* 844304 80241734 AC206610 */  sw        $zero, %lo(mac_04_ItemChoice_HasSelectedItem)($at)
.L80241738:
/* 844308 80241738 3C038024 */  lui       $v1, %hi(mac_04_ItemChoice_HasSelectedItem)
/* 84430C 8024173C 24636610 */  addiu     $v1, $v1, %lo(mac_04_ItemChoice_HasSelectedItem)
/* 844310 80241740 8C620000 */  lw        $v0, ($v1)
/* 844314 80241744 54400003 */  bnel      $v0, $zero, .L80241754
/* 844318 80241748 AC600000 */   sw       $zero, ($v1)
/* 84431C 8024174C 080905DA */  j         .L80241768
/* 844320 80241750 0000102D */   daddu    $v0, $zero, $zero
.L80241754:
/* 844324 80241754 8CC50000 */  lw        $a1, ($a2)
/* 844328 80241758 3C068024 */  lui       $a2, %hi(mac_04_ItemChoice_SelectedItemID)
/* 84432C 8024175C 0C0B2026 */  jal       evt_set_variable
/* 844330 80241760 8CC66614 */   lw       $a2, %lo(mac_04_ItemChoice_SelectedItemID)($a2)
/* 844334 80241764 24020002 */  addiu     $v0, $zero, 2
.L80241768:
/* 844338 80241768 8FBF0010 */  lw        $ra, 0x10($sp)
/* 84433C 8024176C 03E00008 */  jr        $ra
/* 844340 80241770 27BD0018 */   addiu    $sp, $sp, 0x18
