#include "entity/Entity.h"
#include "bindings/vanilla.h"

/*
 * Out-of-line worker taking the health as an already-formatted decimal string.
 * The Entity_SetHealth macro (see Entity.h) does the float->string conversion
 * via __builtin_mcf_ftoa at the caller's site, so a compile-time constant health
 * folds to a string literal there and never drags the soft-float gcvt path into
 * the runtime. The heavy inline-asm stays out-of-line here to avoid the
 * label-redefinition hazard of inlining it into every TU.
 */
void Entity_SetHealthStr(Target target, const char *health) {
    Nbt nbt = Nbt_New();
    Nbt_SetFloatStr(nbt, health);
    data_modify(
        DataTarget_Entity(target), NbtPath_Lit("Health"),
        DataMod_Set(), DataSrc_Value(nbt)
    );
    Nbt_Release(nbt);
}

void Entity_Kill(Target target) {
    kill(target);
}

void Entity_Teleport(Target target, Vec3d pos) {
    teleport(target, pos);
}

void Entity_TeleportWithRot(Target target, Vec3d pos, Vec2f rot) {
    teleport_rot(target, pos, rot);
}

