#!/bin/sh

CLANG='D:\llvm-project\build\bin\clang.exe'
LLVMLINK='D:\llvm-project\build\bin\llvm-link.exe'
OPT='D:\llvm-project\build\bin\opt.exe'
LLC='D:\llvm-project\build\bin\llc.exe'

rm -rf out_lto_bc
mkdir -p out_lto_bc

while IFS= read -r f; do
  out="out_lto_bc/${f}.bc"
  mkdir -p "$(dirname "$out")"
  "$CLANG" -c -emit-llvm "$f" \
    -nostdinc -fno-builtin -ffreestanding \
    -I./libc/include \
    -target mcasm \
    -o "$out" \
    -O3 -flto -fdeclspec -nostdlib -fmcasm-anonymize-static-data
done < <(find libc -name "*.c")

"$LLVMLINK" $(find out_lto_bc -name "*.bc") -o libc.merged.bc

"$OPT" -O3 libc.merged.bc -o libc.opt.bc

"$LLC" -O3 -mtriple=mcasm -filetype=asm libc.opt.bc -o include/_ll_libc.mch
sed -i '1i #once\n' include/_ll_libc.mch

rm -rf out_lto_bc
rm -rf libc.merged.bc
rm -rf libc.opt.bc

