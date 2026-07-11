#!/bin/sh

CLANG='..\..\build\bin\clang.exe'
LLVMLINK='..\..\build\bin\llvm-link.exe'
OPT='..\..\build\bin\opt.exe'
LLC='..\..\build\bin\llc.exe'

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

# Ship the whole-program-LTO stdlib bitcode alongside the compiler so the
# driver's -flto path can llvm-link it into the user program (see
# tools/foo-benchmark/TASK-driver-wholeprogram-lto.md). Canonical location is
# lib/mcasm/ (mirrored into build/lib/mcasm/ = <clang.exe>/../lib/mcasm/).
mkdir -p lib/mcasm ../../build/lib/mcasm
cp libc.opt.bc lib/mcasm/libc.opt.bc
if [ -d ../../build/lib ]; then
  cp libc.opt.bc ../../build/lib/mcasm/libc.opt.bc
fi

rm -rf out_lto_bc
rm -rf libc.merged.bc
rm -rf libc.opt.bc
