#pragma once

void __mc_string_begin(const char *str);
void __mc_string_append(const char *str);

/*
 * Runtime fallbacks: build the scratch string char-by-char via char2str_map +
 * merge_string. The __builtin_mcf_str_* intrinsics lower to calls to these for
 * non-constant strings; the __mc_string_* wrappers also fall back to them when
 * the compiler lacks the builtin. See tools/foo-benchmark/TASK-const-string-fold.md.
 */
void __mc_str_begin_rt(const char *str);
void __mc_str_append_rt(const char *str);
