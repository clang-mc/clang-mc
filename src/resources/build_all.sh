#!/bin/sh

echo "Build Compiler-RT"
./build_compiler-rt.sh
echo "Build Libc"
./build_libc.sh
echo "Build Libmc"
./build_libmc.sh
echo "Build CRT"
./build_crt.sh
echo "Done."
