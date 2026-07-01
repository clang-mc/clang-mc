#!/bin/sh

set -eu

CLANG='..\..\build\bin\clang.exe'

SRC_DIR=compiler-rt
OUT_DIR=include/compiler_rt
CLANG_RESOURCE_INCLUDE='D:\llvm-project\build\lib\clang\23\include'

# Keep this list in sync with the compiler-rt .mch includes in include/_ll_std.mch.
# bits.mch and math.mch are handwritten mcasm runtime helpers, not compiler-rt C
# sources, so this script intentionally leaves them untouched.
HELPERS="
adddf3
adddi3
addsf3
ashldi3
ashrdi3
comparedf2
comparesf2
divdf3
divdi3
divsf3
extendsfdf2
fixdfsi
fixsfsi
floatunsidf
floatsidf
floatsisf
fp_mode
lshrdi3
muldf3
muldi3
mulsf3
subdf3
subdi3
subsf3
truncdfsf2
udivdi3
udivmoddi4
udivsi3
umoddi3
umodsi3
"

mkdir -p "$OUT_DIR"

for helper in $HELPERS; do
  src="$SRC_DIR/$helper.c"
  out="$OUT_DIR/$helper.mch"

  if [ ! -f "$src" ]; then
    echo "missing compiler-rt source: $src" >&2
    exit 1
  fi

  echo "building $helper"
  "$CLANG" "$src" \
    -target mcasm \
    -S \
    -O3 \
    -nostdinc \
    -fno-builtin \
    -ffreestanding \
    -fdeclspec \
    -nostdlib \
    -I"$SRC_DIR" \
    -I./libc/include \
    -o "$out"

  # Per-helper compiler output includes _ll_libc by default. Compiler-rt is
  # included by _ll_std before _ll_libc, so keep only the _ll_std include here.
  sed -i '/^#include "_ll_libc"$/d' "$out"
done
