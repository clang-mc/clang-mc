#pragma once

/*
 * TextComponent: a raw text component carried as its JSON source
 * (e.g. "\"hi\"", "{\"text\":\"hi\",\"color\":\"red\"}"). Text components are
 * plain command tokens, so the JSON is appended verbatim into the command
 * string; this does not touch the NBT heap.
 *
 * STOPGAP: this JSON-string passthrough is deliberately minimal. It is meant to
 * be superseded once the full/structured NBT system lands — modern Minecraft
 * text components are NBT, so TextComponent should eventually be built on a
 * typed NBT builder (compound/list/typed scalars over the nbt heap) rather than
 * hand-written JSON. Until then callers pass valid JSON directly.
 *
 * The wrapped pointer is borrowed and must outlive any command call consuming it.
 */

#include "McfStrRef.h"

typedef struct {
    const char *json;
} TextComponent;

static inline TextComponent
TextComponent_FromJson(const char *json)
{
    TextComponent tc;

    tc.json = json;
    return tc;
}

static inline int
TextComponent_AppendTo(McfStrRef cmd, TextComponent tc)
{
    if (tc.json == NULL || tc.json[0] == '\0') {
        return -1;
    }
    return McfStrRef_AppendCString(cmd, tc.json);
}

/* Build an owned McfStrRef for a text component (used by generated bindings via
 * the `text_component` ref type). */
static inline McfStrRef
McfStrRef_FromTextComponent(TextComponent tc)
{
    if (tc.json == NULL) {
        return NULL;
    }
    return McfStrRef_FromCString(tc.json);
}
