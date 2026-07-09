#pragma once

#include "block/Block.h"
#include "entity/Entities.h"
#include "util/Identifier.h"
#include "util/Target.h"
#include "util/TextComponent.h"
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

/* A plain C-string command token (objective/criteria/slot names, etc.). Unlike
 * `string` (a libmc String object) this takes a const char * directly, which is
 * far more ergonomic for the many short literal tokens in scoreboard/etc. */
static inline McfStrRef
_Command_RequireCStringRef(const char *src)
{
    return McfStrRef_FromCString(src);
}

static inline McfStrRef
_Command_RequireTargetRef(Target target)
{
    return Target_GetMcfStrRef(target);
}

static inline McfStrRef
_Command_RequireIdentifierRef(const Identifier *id)
{
    return McfStrRef_FromIdentifier(id);
}

static inline McfStrRef
_Command_RequireTextComponentRef(TextComponent tc)
{
    return McfStrRef_FromTextComponent(tc);
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

/*
 * bool command arguments do not go through McfStrRef at all: the generator
 * expands them into a compile-time if/else that bakes the literal
 * `true`/`false` straight into the command text (see generate.py's bool arm).
 * So no boolean conversion helper is needed here.
 */

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
_Command_AppendEntity(McfStrRef dst, Entity type)
{
    const Identifier *id;

    if (dst == NULL) {
        return -1;
    }
    id = Entity_GetIdentifier(type);
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

/*
 * Like _Command_ExecAndRelease, but captures the command's *result value*
 * (e.g. the integer queried by `data get`, or the node count of
 * `data modify`/`data remove`) instead of Minecraft's command-success flag.
 *
 * McfStrRef_Exec runs the string through std:_internal/exec (`$$(str)`), whose
 * function-return is the success flag, not the value. _Command_ExecResult runs
 * it through std:_internal/exec_result (`$return run $(str)`), whose `return run`
 * propagates the inner command's result as the function return value, captured
 * directly into the output register. Hand-written bindings that assemble a full
 * command string and need its numeric result use this.
 */
static inline int
_Command_ExecResult(McfStrRef cmd)
{
    int ret;
    int slot_id;

    slot_id = McfStrRef_SlotId(cmd);
    if (slot_id < 0) {
        return -1;
    }
    __asm volatile (
        "inline $data modify storage std:vm s1.str set from storage std:vm mcstr.slots[%1].value\n"
        "inline data modify storage std:vm s1.next set value \"\"\n"
        "inline execute store result score %0 vm_regs run function std:_internal/exec_result with storage std:vm s1"
        : "=r"(ret)
        : "r"(slot_id)
    );
    return ret;
}

static inline int
_Command_ExecResultAndRelease(McfStrRef cmd)
{
    int ret;

    if (cmd == NULL) {
        return -1;
    }
    ret = _Command_ExecResult(cmd);
    McfStrRef_Release(cmd);
    return ret;
}
