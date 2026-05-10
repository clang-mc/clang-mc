#pragma once

#include "block/Block.h"
#include "entity/EntityTypes.h"
#include "util/Target.h"
#include "util/math/vec.h"

static inline McfStrRef
_Command_NewLiteral(const char *literal)
{
    return McfStrRef_FromLiteral(literal);
}

static inline McfStrRef
_Command_RequireStringRef(String src)
{
    if (String_EnsureMcfStrRef(src) != 0) {
        return NULL;
    }
    return String_GetMcfStrRef(src);
}

static inline McfStrRef
_Command_RequireTargetRef(Target target)
{
    return Target_GetMcfStrRef(target);
}

static inline McfStrRef
_Command_FormatDoubleRef(double value)
{
    return McfStrRef_FromDouble(value);
}

static inline McfStrRef
_Command_FormatFloatRef(float value)
{
    return McfStrRef_FromFloat(value);
}

static inline int
_Command_AppendStringLiteral(McfStrRef dst, const char *literal)
{
    return McfStrRef_AppendLiteral(dst, literal);
}

static inline int
_Command_AppendStringObject(McfStrRef dst, String src)
{
    const char *text;

    if (dst == NULL || src == NULL) {
        return -1;
    }
    text = String_CStr(src);
    if (text == NULL) {
        return -1;
    }
    return McfStrRef_AppendCString(dst, text);
}

static inline int
_Command_AppendTarget(McfStrRef dst, Target target)
{
    const char *text;

    if (dst == NULL || target == NULL) {
        return -1;
    }
    text = Target_CStr(target);
    if (text == NULL) {
        return -1;
    }
    return McfStrRef_AppendCString(dst, text);
}

static inline int
_Command_AppendBlock(McfStrRef dst, Block block)
{
    const Identifier *id;

    if (dst == NULL) {
        return -1;
    }
    id = Block_GetIdentifier(block);
    if (id == NULL) {
        return -1;
    }
    return McfStrRef_AppendIdentifier(dst, id);
}

static inline int
_Command_AppendEntityType(McfStrRef dst, EntityType type)
{
    const Identifier *id;

    if (dst == NULL) {
        return -1;
    }
    id = EntityType_GetIdentifier(type);
    if (id == NULL) {
        return -1;
    }
    return McfStrRef_AppendIdentifier(dst, id);
}

static inline int
_Command_AppendVec3i(McfStrRef dst, Vec3i value)
{
    if (dst == NULL) {
        return -1;
    }
    if (McfStrRef_AppendInt(dst, value.x) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(dst, " ") != 0) {
        return -1;
    }
    if (McfStrRef_AppendInt(dst, value.y) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(dst, " ") != 0) {
        return -1;
    }
    return McfStrRef_AppendInt(dst, value.z);
}

static inline int
_Command_AppendVec3d(McfStrRef dst, Vec3d value)
{
    if (dst == NULL) {
        return -1;
    }
    if (McfStrRef_AppendDouble(dst, value.x) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(dst, " ") != 0) {
        return -1;
    }
    if (McfStrRef_AppendDouble(dst, value.y) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(dst, " ") != 0) {
        return -1;
    }
    return McfStrRef_AppendDouble(dst, value.z);
}

static inline int
_Command_AppendVec2f(McfStrRef dst, Vec2f value)
{
    if (dst == NULL) {
        return -1;
    }
    if (McfStrRef_AppendFloat(dst, value.x) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(dst, " ") != 0) {
        return -1;
    }
    return McfStrRef_AppendFloat(dst, value.y);
}

static inline int
_Command_ExecAndRelease(McfStrRef cmd)
{
    int ret;

    if (cmd == NULL) {
        return -1;
    }
    ret = McfStrRef_Exec(cmd);
    McfStrRef_Release(cmd);
    return ret;
}
