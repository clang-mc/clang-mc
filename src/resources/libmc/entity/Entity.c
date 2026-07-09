#include "entity/Entity.h"
#include "bindings/vanilla.h"

void Entity_SetHealth(Target target, float health) {
    Nbt nbt = Nbt_New();
    Nbt_SetFloat(nbt, health);
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

