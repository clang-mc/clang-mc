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
python - <<'PY'
from pathlib import Path
import re

path = Path("include/_ll_libc.mch")
text = path.read_text(encoding="utf-8")
text = re.sub(
    r'(?m)^([ \t]*)mov[ \t]+(r[0-9]+),[ \t]+\$\(([^)]+)\)$',
    r'\1inline $scoreboard players set \2 vm_regs $(\3)',
    text,
)
path.write_text(text, encoding="utf-8")

build_include = Path("../../build/include/_ll_libc.mch")
if build_include.parent.exists():
    build_include.write_text(text, encoding="utf-8")
PY

rm -rf out_lto_bc
rm -rf libc.merged.bc
rm -rf libc.opt.bc
