#pragma once

/*
 * NbtPath: a thin value wrapper around an NBT-path token
 * (e.g. "Items[0].tag.display.Name"). A path is a plain command token, not an
 * NBT value, so it is carried as text and appended into the command string the
 * same way any other ref token is — this does not touch the NBT heap.
 *
 * The wrapped pointer is borrowed; the caller must keep it alive across any
 * command call that consumes the NbtPath.
 */

#include "McfStrRef.h"

typedef struct {
    const char *text;
} NbtPath;

static inline NbtPath
NbtPath_Lit(const char *text)
{
    NbtPath path;

    path.text = text;
    return path;
}

/* An empty/root path — for commands that address a target's root. */
static inline NbtPath
NbtPath_Root(void)
{
    return NbtPath_Lit("");
}

static inline int
NbtPath_IsEmpty(NbtPath path)
{
    return path.text == NULL || path.text[0] == '\0';
}

static inline int
NbtPath_AppendTo(McfStrRef cmd, NbtPath path)
{
    if (NbtPath_IsEmpty(path)) {
        return 0;
    }
    return McfStrRef_AppendCString(cmd, path.text);
}
