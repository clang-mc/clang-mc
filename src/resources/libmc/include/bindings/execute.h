#pragma once

/* Hand-written binding (schema marks 'execute' as hand_written). /execute is a
 * recursive, open-ended clause chain terminated by `run <command>` — no flat
 * variant list can enumerate it. It is exposed as a fluent builder: each clause
 * appends to an accumulating command string in vanilla left-to-right order, and
 * a terminal (execute_run*) appends the inner command and runs the whole thing,
 * capturing its result. The inner command is passed as an *unexecuted* value:
 * a literal string (execute_run_str) or a pre-built McfStrRef (execute_run).
 *
 * Usage:
 *   Execute e = execute_begin();
 *   execute_as(e, TARGET_PLAYERS);
 *   execute_at(e, TARGET_THIS);
 *   int rc = execute_run_str(e, "say hi");   // runs + frees the builder
 *
 * Every clause is NULL-safe and returns the same Execute (or NULL once the
 * builder has failed), so calls may also be chained. A builder must be consumed
 * exactly once by a terminal (execute_run_str or execute_end), which frees it. */

#include "bindings/CommandSupport.h"
#include "util/DataTarget.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _Execute {
    McfStrRef prefix; /* the "execute ... " chain built so far; NULL once failed */
} _Execute;
typedef _Execute *Execute;

static inline Execute
execute_begin(void)
{
    Execute e;

    e = (Execute)malloc(sizeof(_Execute));
    if (e == NULL) {
        return NULL;
    }
    e->prefix = McfStrRef_FromLiteral("execute ");
    if (e->prefix == NULL) {
        free(e);
        return NULL;
    }
    return e;
}

/* Mark a builder failed (release its partial string); subsequent clauses no-op. */
static inline Execute
_Execute_Fail(Execute e)
{
    if (e != NULL && e->prefix != NULL) {
        McfStrRef_Release(e->prefix);
        e->prefix = NULL;
    }
    return NULL;
}

static inline Execute
_Execute_Append(Execute e, const char *text)
{
    if (e == NULL || e->prefix == NULL) {
        return NULL;
    }
    if (McfStrRef_AppendLiteral(e->prefix, text) != 0) {
        return _Execute_Fail(e);
    }
    return e;
}

static inline Execute
_Execute_AppendTargetSel(Execute e, Target target)
{
    if (e == NULL || e->prefix == NULL) {
        return NULL;
    }
    if (target == NULL || McfStrRef_AppendCString(e->prefix, Target_CStr(target)) != 0) {
        return _Execute_Fail(e);
    }
    return e;
}

static inline Execute
_Execute_AppendVec3d(Execute e, Vec3d pos)
{
    if (e == NULL || e->prefix == NULL) {
        return NULL;
    }
    if (_Command_AppendVec3d(e->prefix, pos) != 0) {
        return _Execute_Fail(e);
    }
    return e;
}

/* --- context clauses ------------------------------------------------------ */

static inline Execute execute_as(Execute e, Target target)
{ e = _Execute_Append(e, "as "); e = _Execute_AppendTargetSel(e, target); return _Execute_Append(e, " "); }

static inline Execute execute_at(Execute e, Target target)
{ e = _Execute_Append(e, "at "); e = _Execute_AppendTargetSel(e, target); return _Execute_Append(e, " "); }

static inline Execute execute_positioned(Execute e, Vec3d pos)
{ e = _Execute_Append(e, "positioned "); e = _Execute_AppendVec3d(e, pos); return _Execute_Append(e, " "); }

static inline Execute execute_positioned_as(Execute e, Target target)
{ e = _Execute_Append(e, "positioned as "); e = _Execute_AppendTargetSel(e, target); return _Execute_Append(e, " "); }

static inline Execute execute_rotated_as(Execute e, Target target)
{ e = _Execute_Append(e, "rotated as "); e = _Execute_AppendTargetSel(e, target); return _Execute_Append(e, " "); }

static inline Execute execute_facing(Execute e, Vec3d pos)
{ e = _Execute_Append(e, "facing "); e = _Execute_AppendVec3d(e, pos); return _Execute_Append(e, " "); }

static inline Execute execute_facing_entity(Execute e, Target target, const char *anchor)
{
    e = _Execute_Append(e, "facing entity ");
    e = _Execute_AppendTargetSel(e, target);
    e = _Execute_Append(e, " ");
    e = _Execute_Append(e, anchor);   /* "eyes" | "feet" */
    return _Execute_Append(e, " ");
}

static inline Execute execute_in(Execute e, const Identifier *dimension)
{
    if (e == NULL || e->prefix == NULL) return NULL;
    e = _Execute_Append(e, "in ");
    if (e != NULL && McfStrRef_AppendIdentifier(e->prefix, dimension) != 0) {
        return _Execute_Fail(e);
    }
    return _Execute_Append(e, " ");
}

static inline Execute execute_anchored(Execute e, const char *anchor)
{ e = _Execute_Append(e, "anchored "); e = _Execute_Append(e, anchor); return _Execute_Append(e, " "); }

static inline Execute execute_align(Execute e, const char *axes)
{ e = _Execute_Append(e, "align "); e = _Execute_Append(e, axes); return _Execute_Append(e, " "); }

/* --- conditions ----------------------------------------------------------- */

static inline Execute execute_if_entity(Execute e, Target target)
{ e = _Execute_Append(e, "if entity "); e = _Execute_AppendTargetSel(e, target); return _Execute_Append(e, " "); }

static inline Execute execute_unless_entity(Execute e, Target target)
{ e = _Execute_Append(e, "unless entity "); e = _Execute_AppendTargetSel(e, target); return _Execute_Append(e, " "); }

static inline Execute
_Execute_ScoreMatches(Execute e, const char *kw, Target target, const char *objective, const char *range)
{
    if (e == NULL || e->prefix == NULL) return NULL;
    e = _Execute_Append(e, kw);
    e = _Execute_AppendTargetSel(e, target);
    e = _Execute_Append(e, " ");
    if (e != NULL && McfStrRef_AppendCString(e->prefix, objective) != 0) {
        return _Execute_Fail(e);
    }
    e = _Execute_Append(e, " matches ");
    if (e != NULL && McfStrRef_AppendCString(e->prefix, range) != 0) {
        return _Execute_Fail(e);
    }
    return _Execute_Append(e, " ");
}

static inline Execute execute_if_score_matches(Execute e, Target target, const char *objective, const char *range)
{ return _Execute_ScoreMatches(e, "if score ", target, objective, range); }

static inline Execute execute_unless_score_matches(Execute e, Target target, const char *objective, const char *range)
{ return _Execute_ScoreMatches(e, "unless score ", target, objective, range); }

static inline Execute execute_if_block(Execute e, Vec3i pos, Block block)
{
    if (e == NULL || e->prefix == NULL) return NULL;
    e = _Execute_Append(e, "if block ");
    if (e != NULL && _Command_AppendVec3i(e->prefix, pos) != 0) return _Execute_Fail(e);
    e = _Execute_Append(e, " ");
    if (e != NULL && _Command_AppendBlock(e->prefix, block) != 0) return _Execute_Fail(e);
    return _Execute_Append(e, " ");
}

/* --- store ---------------------------------------------------------------- */

static inline Execute
_Execute_StoreScore(Execute e, const char *kw, Target target, const char *objective)
{
    if (e == NULL || e->prefix == NULL) return NULL;
    e = _Execute_Append(e, kw);
    e = _Execute_AppendTargetSel(e, target);
    e = _Execute_Append(e, " ");
    if (e != NULL && McfStrRef_AppendCString(e->prefix, objective) != 0) {
        return _Execute_Fail(e);
    }
    return _Execute_Append(e, " ");
}

static inline Execute execute_store_result_score(Execute e, Target target, const char *objective)
{ return _Execute_StoreScore(e, "store result score ", target, objective); }

static inline Execute execute_store_success_score(Execute e, Target target, const char *objective)
{ return _Execute_StoreScore(e, "store success score ", target, objective); }

/* store (result|success) storage <DataTarget> <path> <type> <scale> */
static inline Execute
execute_store_result_storage(Execute e, DataTarget target, const char *path, const char *type, double scale)
{
    if (e == NULL || e->prefix == NULL) return NULL;
    e = _Execute_Append(e, "store result storage ");
    if (e != NULL && DataTarget_AppendTo(e->prefix, target) != 0) return _Execute_Fail(e);
    e = _Execute_Append(e, " ");
    if (e != NULL && McfStrRef_AppendCString(e->prefix, path) != 0) return _Execute_Fail(e);
    e = _Execute_Append(e, " ");
    if (e != NULL && McfStrRef_AppendCString(e->prefix, type) != 0) return _Execute_Fail(e);
    e = _Execute_Append(e, " ");
    if (e != NULL && McfStrRef_AppendDouble(e->prefix, scale) != 0) return _Execute_Fail(e);
    return _Execute_Append(e, " ");
}

/* --- terminals (consume + free the builder) ------------------------------- */

static inline void
execute_end(Execute e)
{
    if (e == NULL) {
        return;
    }
    if (e->prefix != NULL) {
        McfStrRef_Release(e->prefix);
    }
    free(e);
}

/* run <command-text>; returns the command's result, or -1 on any build failure. */
static inline int
execute_run_str(Execute e, const char *command)
{
    int ret;

    if (e == NULL) {
        return -1;
    }
    if (e->prefix == NULL) {
        free(e);
        return -1;
    }
    if (McfStrRef_AppendLiteral(e->prefix, "run ") != 0 ||
        McfStrRef_AppendCString(e->prefix, command) != 0) {
        McfStrRef_Release(e->prefix);
        free(e);
        return -1;
    }
    ret = _Command_ExecResult(e->prefix);
    McfStrRef_Release(e->prefix);
    free(e);
    return ret;
}

/* NOTE: an execute_run(Execute, McfStrRef) terminal that composes with a
 * pre-built (unexecuted) command *value* is intended future work — it needs a
 * slot-to-slot string concatenation primitive on McfStrRef that does not exist
 * yet. Until then build the inner command as text and use execute_run_str. */

#ifdef __cplusplus
}
#endif
