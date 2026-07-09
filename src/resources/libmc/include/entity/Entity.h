#pragma once

#include "util/Identifier.h"
#include "util/Target.h"
#include "util/math/vec.h"

typedef enum {
    ENTITY_SPAWN_GROUP_MONSTER,
    ENTITY_SPAWN_GROUP_CREATURE,
    ENTITY_SPAWN_GROUP_AMBIENT,
    ENTITY_SPAWN_GROUP_AXOLOTLS,
    ENTITY_SPAWN_GROUP_UNDERGROUND_WATER_CREATURE,
    ENTITY_SPAWN_GROUP_WATER_CREATURE,
    ENTITY_SPAWN_GROUP_WATER_AMBIENT,
    ENTITY_SPAWN_GROUP_MISC

} EntitySpawnGroup;

typedef struct _Entity {
    Identifier identifier;
    McfStrRef mcfName;
    const char *translationKey;
    EntitySpawnGroup spawnGroup;
    float width;
    float height;
    float eyeHeight;
} _Entity;

typedef const struct _Entity *Entity;

static inline McfStrRef
Entity_EnsureMcfName(Entity entity)
{
    _Entity *mutable_entity;

    if (entity == NULL) {
        return NULL;
    }

    mutable_entity = (_Entity *)entity;
    if (mutable_entity->mcfName == NULL) {
        mutable_entity->mcfName = McfStrRef_FromIdentifier(&entity->identifier);
        if (mutable_entity->mcfName == NULL) {
            return NULL;
        }
    }
    if (McfStrRef_SlotId(mutable_entity->mcfName) < 0) {
        return NULL;
    }
    return mutable_entity->mcfName;
}

static inline const Identifier *
Entity_GetIdentifier(Entity entity)
{
    return entity ? &entity->identifier : NULL;
}

static inline String
Entity_GetRegistryName(Entity entity)
{
    return entity ? Identifier_Str(&entity->identifier) : NULL;
}

static inline const char *
Entity_GetTranslationKey(Entity entity)
{
    return entity ? entity->translationKey : NULL;
}

static inline EntitySpawnGroup
Entity_GetSpawnGroup(Entity entity)
{
    return entity ? entity->spawnGroup : ENTITY_SPAWN_GROUP_MISC;
}

static inline float
Entity_GetWidth(Entity entity)
{
    return entity ? entity->width : 0.0f;
}

static inline float
Entity_GetHeight(Entity entity)
{
    return entity ? entity->height : 0.0f;
}

static inline float
Entity_GetEyeHeight(Entity entity)
{
    return entity ? entity->eyeHeight : 0.0f;
}

void Entity_SetHealth(Target entity, float health);

void Entity_Kill(Target target);

void Entity_Teleport(Target target, Vec3d pos);

void Entity_TeleportWithRot(Target target, Vec3d pos, Vec2f rot);
