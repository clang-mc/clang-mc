#pragma once

#include "assert.h"
#include "util/String.h"

static inline int exec(String cmd)
{
    McfStrRef ref;

    assert(cmd != NULL);
    if (String_EnsureMcfStrRef(cmd) != 0) {
        return -1;
    }
    ref = String_GetMcfStrRef(cmd);
    return McfStrRef_Exec(ref);
}

static inline int
String_Exec(String s)
{
    return exec(s);
}
