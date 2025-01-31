#include "sam_11.h"
#include "effects.h"
#include "mapfs/sam_11_hit.h"

#define CHUCK_QUIZMO_NPC_ID 17

extern s32 N(Quizmo_Worker);
extern s32 N(Quizmo_AnswerResult);
extern EffectInstance* N(Quizmo_StageEffect);
extern EffectInstance* N(Quizmo_AudienceEffect);
extern EffectInstance* N(Quizmo_VannaTEffect);

#include "world/common/atomic/Quizmo.inc.c"

ApiStatus func_80241864_D3BE34(Evt* script, s32 isInitialCall) {
    Npc* npc = get_npc_safe(1);

    npc->pos.y = 0.0f;
    npc->pos.x = 470.0f;
    npc->pos.z = 5.0f;
    script->varTableF[10] = npc->pos.z;
    return ApiStatus_DONE2;
}

ApiStatus func_802418B4_D3BE84(Evt* script, s32 isInitialCall) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    Npc* npc = get_npc_safe(1);
    f32* vt10 = &script->varTableF[10];
    f32 playerX;
    f32 var_f2;

    if (*vt10 == npc->pos.z && npc->currentAnim != 0x9A0001) {
        npc->currentAnim = 0x9A0001;
    }

    if (*vt10 != npc->pos.z) {
        if (npc->currentAnim != 0x9A0002) {
            npc->currentAnim = 0x9A0002;
        }
    }

    *vt10 = npc->pos.z;

    if (!(dist2D(npc->pos.x, npc->pos.z, playerStatus->position.x, playerStatus->position.z) < 30.0f) &&
        !(dist2D(npc->pos.x, npc->pos.z, playerStatus->position.x, playerStatus->position.z) > 130.0f))
    {
        playerX = var_f2 = playerStatus->position.z;
        if (playerX > 50.0f) {
            var_f2 = 50.0f;
        }
        if (playerX < -40.0f) {
            var_f2 = -40.0f;
        }
        if (npc->pos.z <= var_f2) {
            npc->pos.z += 4.0f;
            if (npc->pos.z > var_f2) {
                npc->pos.z = var_f2;
            }
        }
        if (npc->pos.z > var_f2) {
            npc->pos.z -= 4.0f;
            if (npc->pos.z <= var_f2) {
                npc->pos.z = var_f2;
            }
        }
        return ApiStatus_DONE2;
    }
    return ApiStatus_DONE2;
}

ApiStatus func_80241A6C_D3C03C(Evt* script, s32 isInitialCall) {
    get_item_entity(script->varTable[0])->scale = 0.6f;
    return ApiStatus_DONE2;
}

#include "world/common/atomic/TexturePan.inc.c"

INCLUDE_ASM(s32, "world/area_sam/sam_11/D3ADA0", func_80241DAC_D3C37C);

ApiStatus func_80241FB0_D3C580(Evt* script, s32 isInitialCall) {
    script->varTable[10] = 0;
    if (gCollisionStatus.currentFloor == COLLIDER_suimen) {
        script->varTable[10] = 1;
    }
    if (gCollisionStatus.lastTouchedFloor == COLLIDER_suimen) {
        script->varTable[10] = 1;
    }
    return ApiStatus_DONE2;
}

ApiStatus func_80241FE8_D3C5B8(Evt* script, s32 isInitialCall) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    f32 x = playerStatus->position.x;
    f32 y = playerStatus->position.y + 10.0f;
    f32 z = playerStatus->position.z;
    f32 hitDepth = 40.0f;

    npc_raycast_down_sides(0, &x, &y, &z, &hitDepth);
    playerStatus->position.x = x;
    playerStatus->position.y = y;
    playerStatus->position.z = z;
    return ApiStatus_DONE2;
}

ApiStatus func_80242074_D3C644(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    Npc* partner = get_npc_safe(NPC_PARTNER);
    s32 var_s0 = -1;

    if (gCollisionStatus.bombetteExploded >= 0) {
        f32 temp = 11.0f;
        f32 x = partner->pos.x;
        f32 y = partner->pos.y + temp;
        f32 z = partner->pos.z;

        temp = 12.0f;
        if (npc_raycast_down_around(partner->collisionChannel, &x, &y, &z, &temp, partner->yaw,
                                    partner->collisionRadius) && temp <= 12.0f)
        {
            var_s0 = D_8010C978;
        }
    }
    evt_set_variable(script, *args++, var_s0);
    return ApiStatus_DONE2;
}
