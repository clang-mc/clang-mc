<div align="center">

English | [简体中文](./README_CN.md)

<img width="300" src="https://github.com/xia-mc/clang-mc/blob/main/logo.png?raw=true" alt="logo">

# clang-mc

## A Development Toolchain for Minecraft Datapacks

[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)
[![Issues](https://img.shields.io/github/issues/xia-mc/clang-mc)](https://github.com/xia-mc/clang-mc/issues)
![Total lines](https://img.shields.io/endpoint?url=https://tokei.kojix2.net/badge/github/xia-mc/clang-mc/lines)
![Version](https://img.shields.io/badge/Minecraft-1.21_and_later-blue)

</div>

> [!NOTE]
> `clang-mc` is in the early stages of development, and many features are not yet complete. Contributions and feedback are welcome!

## Introduction

`clang-mc` is a **compiler toolchain** designed specifically for **Minecraft datapack development**. It aims to provide a more efficient and maintainable development environment while offering a standard library to reduce redundant implementations of common functionalities.

Minecraft datapack development has long suffered from **poor readability, maintenance challenges, and functional limitations**. For example:
- **Lack of modern programming language features**: String manipulation, floating-point arithmetic, and large integer operations are extremely difficult to implement.
- **Disorganized code structure**: Datapacks often rely on a large number of manually written commands, and many requirements must be indirectly implemented using multiple `.mcfunction` files, making reuse and expansion difficult.

This project seeks to address these issues to some extent.

Check out [Wiki](https://github.com/xia-mc/clang-mc/wiki) to learn more.

---

## Roadmap

- [x] **Basic implementation of the `stdlib` standard library**, establishing a low-overhead virtual machine model on `mcfunction`.
- [x] **Write a wiki** to define calling conventions, register conventions, stack conventions, etc.
- [x] **Implement an assembler (IR)** to translate IR into `mcfunction` code based on `stdlib`.
- [x] **Develop a parser** to convert assembly code into IR objects.
- [x] **Create a showcase** to demonstrate the advantages of this project.
- [x] **(Long-term goal) Implement an LLVM backend** to generate assembly code (IR).
- [ ] **(Long-term goal) Achieve compatibility with C/C++/Rust ecosystems**, leveraging LLVM to extend the capabilities of `mcfunction`.

---

## Contributions

Contributions are welcome! Feel free to submit issues or pull requests.  
Please note that this project is still in its early stages, and we greatly appreciate any feedback or suggestions.

---

## Acknowledgments

Without these projects, `clang-mc` would not exist:

- [Minecraft](https://www.minecraft.net) - Minecraft, developed by Mojang Studios, `clang-mc` complies with the [Minecraft EULA](https://www.minecraft.net/en-us/eula) and related terms of use.
- [LLVM](https://llvm.org) - A powerful compiler infrastructure, open-sourced under the Apache License 2.0.
- [picolibc](https://github.com/picolibc/picolibc) - A C library for resource-constrained embedded systems, formed by blending code from Newlib and AVR Libc, with mostly BSD-like licensing.
- [StringLib](https://github.com/CMDred/StringLib) - A Minecraft datapack string utility library offering optimized operations such as `concat`, `find`, and `replace`, licensed under the MIT License.
- [ankerl::unordered_dense](https://github.com/martinus/unordered_dense): A modern, high-performance, low-memory hash table implementation in C++, licensed under the [MIT License](https://github.com/martinus/unordered_dense/blob/main/LICENSE).
- [fmt](https://fmt.dev/) - A fast and safe formatting library for C++, licensed under the [MIT License](https://github.com/fmtlib/fmt/blob/master/LICENSE.rst).
- [spdlog](https://github.com/gabime/spdlog) - A fast C++ logging library, licensed under the [MIT License](https://github.com/gabime/spdlog/blob/v1.x/LICENSE).
- [yaml-cpp](https://github.com/jbeder/yaml-cpp) - A YAML parser and emitter for C++, licensed under the [MIT License](https://github.com/jbeder/yaml-cpp/blob/master/LICENSE).
- [Claude Code](https://claude.com/product/claude-code) — Special thanks to Claude Code for the crucial assistance in developing the LLVM backend prototype within just three days; without it I would not have been able to complete that urgent prototype work.

Special thanks to all contributors in the open-source community!
