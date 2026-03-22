<div align="center">

[English](./README.md) | 简体中文

<img width="300" src="https://github.com/xia-mc/clang-mc/blob/main/logo.png?raw=true" alt="logo">

# clang-mc

## 一个面向 Minecraft 数据包的开发工具链

[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)
[![Issues](https://img.shields.io/github/issues/xia-mc/clang-mc)](https://github.com/xia-mc/clang-mc/issues)
![Total lines](https://img.shields.io/endpoint?url=https://tokei.kojix2.net/badge/github/xia-mc/clang-mc/lines)
![Version](https://img.shields.io/badge/Minecraft-1.21_and_later-blue)

</div>

> [!NOTE]
> clang-mc 正处于早期开发阶段，大部分功能还尚未完成，欢迎贡献和反馈！

## 简介

`clang-mc` 是一个专为 **Minecraft 数据包开发** 设计的编译工具链，旨在提供更高效、更易维护的开发环境，并提供标准库来减少重复实现常见功能。

Minecraft 数据包的开发一直面临 **可读性差、维护困难、功能受限** 等问题。例如：
- **缺乏现代编程语言的功能**：字符串处理、浮点数计算、大整数运算等非常困难。
- **代码组织混乱**：数据包通常依赖大量手写命令，相当多需求必须使用多个.mcfunction间接实现，难以复用和扩展。

本项目希望能在一定程度上解决这些问题。

查看 [Wiki](https://github.com/xia-mc/clang-mc/wiki) 以了解更多。

## 开发路线图

- [x] 基本实现stdlib标准库，在mcfunction上搭出一个低开销虚拟机模型。
- [x] 写一个wiki文档，规定调用约定、寄存器约定、栈约定等。
- [x] 实现一个汇编器（IR），把IR翻译成基于stdlib的mcfunction代码。
- [x] 实现一个parser，把汇编代码翻译成IR对象。
- [x] 做一个showcase，展示项目的优势。
- [x] (长期目标) 实现一个LLVM后端，生成汇编代码（IR）。
- [ ] (长期目标) 兼容C/C++/Rust生态，利用LLVM扩展mcfunction的能力。

## 贡献

欢迎贡献！请随时提交问题或拉取请求。请注意，项目处于早期阶段，我们非常感谢任何反馈或建议。

## 感谢

没有这些项目，就没有 `clang-mc`:

- [Minecraft](https://www.minecraft.net): Mojang Studios 开发的 Minecraft 游戏，`clang-mc` 遵循 [Minecraft EULA](https://www.minecraft.net/en-us/eula) 及相关使用条款。
- [LLVM](https://llvm.org): 先进的编译器基础设施，遵循 Apache License 2.0 开源协议。
- [picolibc](https://github.com/picolibc/picolibc): 面向资源受限嵌入式系统的 C 标准库（融合 Newlib 与 AVR Libc 代码），整体采用 BSD 风格许可。
- [StringLib](https://github.com/CMDred/StringLib): 面向 Minecraft 数据包的字符串工具库，提供 `concat`、`find`、`replace` 等优化的字符串操作，采用 MIT License。
- [ankerl::unordered_dense](https://github.com/martinus/unordered_dense): 一个现代 C++ 的高性能、低内存占用的哈希表实现，遵循 [MIT License](https://github.com/martinus/unordered_dense/blob/main/LICENSE)。
- [fmt](https://fmt.dev/): 一个快速、安全的 C++ 格式化库，遵循 [MIT License](https://github.com/fmtlib/fmt/blob/master/LICENSE.rst)。
- [spdlog](https://github.com/gabime/spdlog): 一个高性能的 C++ 日志库，遵循 [MIT License](https://github.com/gabime/spdlog/blob/v1.x/LICENSE)。
- [yaml-cpp](https://github.com/jbeder/yaml-cpp): 一个 C++ 的 YAML 解析和生成库，遵循 [MIT License](https://github.com/jbeder/yaml-cpp/blob/master/LICENSE)。
- [Claude Code](https://claude.com/product/claude-code)：特别感谢 Claude Code 在短短三天内对 LLVM 后端原型开发提供的重要帮助，没有它我无法完成这段紧迫的开发工作。

感谢所有开源社区的贡献者们！
