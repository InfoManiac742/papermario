#include "common.h"
#include "battle/battle.h"

#define NAMESPACE b_area_kmr_part_2_kmr_06

#include "world/common/clouds.inc.c"

#include "common/UnkFogFunc.inc.c"

EvtScript N(beforeBattle_80225788) = {
    EVT_CALL(SetSpriteShading, -1)
    EVT_CALL(N(UnkFogFunc))
    EVT_SET(LW(0), 1)
    EVT_SET(LW(2), 0)
    EVT_EXEC(N(clouds1))
    EVT_SET(LW(0), 4)
    EVT_SET(LW(2), 70)
    EVT_EXEC(N(clouds1))
    EVT_RETURN
    EVT_END
};

EvtScript N(afterBattle_8022580C) = {
    EVT_RETURN
    EVT_END
};

s32 N(foregroundModelList_8022581C)[] = {
    0x0000001D, 0x00000022, 0x00000021, 0x00000000,
};

Stage NAMESPACE = {
    .texture = "kmr_tex",
    .shape = "kmr_bt06_shape",
    .hit = "kmr_bt06_hit",
    .bg = "kmr_bg",
    .preBattle = N(beforeBattle_80225788),
    .postBattle = N(afterBattle_8022580C),
    .foregroundModelList = N(foregroundModelList_8022581C),
};