#include <assert.h>
#include <stddef.h>
#include <mcstate.h>
#include <mcstr.h>

/*
 * Runtime fallbacks: build the scratch string `s1` char-by-char via char2str_map
 * lookups + merge_string. These are the non-constant path. The __builtin_mcf_str_*
 * intrinsics lower to calls here when the string is not a compile-time constant;
 * see tools/foo-benchmark/TASK-const-string-fold.md.
 */
void
__mc_str_begin_rt(const char *str)
{
    char c;

    assert(str != NULL);
    if (*str == '\0') {
        __asm volatile (
            "inline data modify storage std:vm s1 set value {str: \"\", next: \"\"}"
        );
        return;
    }

    __asm volatile (
        "inline data modify storage std:vm s1 set value {str: \"\", next: \"\"}\n"
        "inline data modify storage std:vm s1.str set from storage std:vm char2str_map.\"%0\""
        :
        : "r"(*str)
    );

    while ((c = *++str) != '\0') {
        __asm volatile (
            "inline data modify storage std:vm s1.next set from storage std:vm char2str_map.\"%0\"\n"
            "inline function std:_internal/merge_string with storage std:vm s1"
            :
            : "r"(c)
        );
    }
}

void
__mc_str_append_rt(const char *str)
{
    char c;

    assert(str != NULL);
    if (*str == '\0') {
        return;
    }

    c = *str;
    __asm volatile (
        "inline data modify storage std:vm s1.next set from storage std:vm char2str_map.\"%0\"\n"
        "inline function std:_internal/merge_string with storage std:vm s1"
        :
        : "r"(c)
    );

    while ((c = *++str) != '\0') {
        __asm volatile (
            "inline data modify storage std:vm s1.next set from storage std:vm char2str_map.\"%0\"\n"
            "inline function std:_internal/merge_string with storage std:vm s1"
            :
            : "r"(c)
        );
    }
}

/*
 * Public API. Emits the __builtin_mcf_str_* intrinsic when the toolchain has it
 * (the backend then folds a compile-time-constant string -- surfaced by LTO --
 * to O(1) `data modify ... set value` commands, else lowers to the *_rt fallback).
 * Before the builtin ships, __has_builtin is false and we call the fallback
 * directly: identical behavior, tree still builds.
 *
 * The &__mc_state operand ties the intrinsic into the coarse MC-state ordering
 * shadow (see mcstate.h) so the folded commands stay ordered w.r.t. the scratch
 * commit/load asm in McfStrRef.c.
 */
void
__mc_string_begin(const char *str)
{
#if defined(__has_builtin) && __has_builtin(__builtin_mcf_str_begin)
    __builtin_mcf_str_begin(str, &__mc_state);
#else
    __mc_str_begin_rt(str);
#endif
}

void
__mc_string_append(const char *str)
{
#if defined(__has_builtin) && __has_builtin(__builtin_mcf_str_append)
    __builtin_mcf_str_append(str, &__mc_state);
#else
    __mc_str_append_rt(str);
#endif
}
