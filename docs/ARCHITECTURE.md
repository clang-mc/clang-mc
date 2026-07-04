# clang-mc 架构总览

本文面向新加入的开发者，帮助你在几分钟内建立对 **编译流水线** 的整体认识，并知道每一步逻辑落在哪个文件里。

> 更细的历史注记见 `AGENTS.md`；最完整的用户文档在中文 wiki（`D:/clang-mc.wiki/`）。当文档与代码冲突时，**以当前代码和最近提交为准**。

---

## 一句话概括

`clang-mc` 是一个把 `mcasm`（以及自定义 C 管线）编译成 Minecraft `.mcfunction` 数据包的编译器。核心 C++20，Python 负责构建期资源处理。

数据在两种表示间流动：

```
.mcasm 文本  ──解析──▶  IR (vector<OpPtr>，每条指令一个 Op)  ──编译──▶  McFunctions (Path → mcfunction 文本)  ──构建/链接──▶  .zip 数据包
```

---

## 流水线总览

编译入口是 `ClangMc::start()`（`src/cpp/ClangMc.cpp:43`），整条流水线是线性的：

```
源文件(.mcasm)
   │
   ├─① 初始化       ensureEnvironment / ensureValidConfig / ensureBuildDir
   │                 校验输入扩展名、清空并重建 build 目录、分配 static base 寄存器
   │
   ├─② 解析         ParseManager.loadSource() → loadIR()
   │                 预处理(PreProcessor：include/define) → 逐文件生成 IR (vector<OpPtr>)
   │
   ├─③ 校验         Verifier(...).verify()   标签/操作数合法性
   │                 非 -g 时 freeSource() 释放源文本
   │
   │  ┌─ 若 -E (preprocessOnly)：preCompile 后把 IR 打印成 .mci 输出并返回 ─┐
   │
   ├─④ 编译         IR::compile()  逐个 IR → McFunctions
   │                 preCompile() 收集 static 数据 → 以"代码块"模式生成 .mcfunction
   │                 每个代码块末尾插显式 jmp；构建跳转表 JmpTable。之后 freeIR()
   │
   ├─⑤ 后端优化      PostOptimizer.optimize()          —— 仅 -O2
   │                 postopt::Pipeline：SpecialFunction 替换 → 行清理
   │                 → SafeLineTransforms → ExecuteGroupPass(跨函数) → context.flush()
   │
   ├─⑥ 混淆         Obfuscator.obfuscate()            —— 仅 -O1/-O2 且非 -g
   │                 obfuscate::Pipeline：renameInternalFunctions(内部函数改短名)
   │
   ├─⑦ 构建         Builder.build()
   │                 写出每个函数文件；生成 onLoad 函数、static data 函数、load.json tag
   │
   │  ┌─ 若 -c (compileOnly)：到此返回 ─┐
   │
   └─⑧ 链接         Builder.link()
                     写 pack.mcmeta → 静态链接 stdlib（链接期也跑 doSingleOptimize）
                     → 合入用户 --data 目录 → 压缩成 output.zip
```

---

## 各阶段与代码落点

| 阶段 | 入口类 / 函数 | 目录 |
|---|---|---|
| ① 初始化 | `ClangMc::ensure*` | `src/cpp/ClangMc.cpp` |
| ② 解析 | `ParseManager`、`PreProcessor` | `src/cpp/parse/` |
| — IR / 指令 | `IR`、`ops/`、`iops/`、`controlFlow/`、`values/` | `src/cpp/ir/` |
| ③ 校验 | `Verifier` | `src/cpp/ir/verify/` |
| ④ 编译 | `IR::compile` / `IR::preCompile` | `src/cpp/ir/IR.cpp` |
| ⑤ 后端优化 | `PostOptimizer` → `postopt::Pipeline` | `src/cpp/builder/postopt/` |
| ⑥ 混淆 | `Obfuscator` → `obfuscate::Pipeline` | `src/cpp/builder/obfuscate/` |
| ⑦⑧ 构建 / 链接 | `Builder::build` / `Builder::link` | `src/cpp/builder/Builder.cpp` |

---

## 关键设计点

1. **优化与混淆按 `-O` 分级门控**（`ClangMc.cpp:104-113`）
   - `-O2` 才跑 `PostOptimizer`；`-O1/-O2` 才跑 `Obfuscator`。
   - `-g` 会**抑制混淆**，保留可读函数名便于调试。

2. **两个 Pipeline 都是可扩展的 pass 列表**
   - postopt 有 function / line / generated 三类 pass（`postopt/core/Pipeline.cpp`）。
   - obfuscate 目前只有 `RenameInternalFunctionsPass`，并留了"未来的 pass 依次加在此处"的挂载点（`obfuscate/core/Pipeline.cpp`）。

3. **"代码块"编译模型**（`IR::compile`）
   - 不是按 label 直译，而是把每个 label 到下一个 label 之间编译成一个 `.mcfunction` 代码块；块末尾若非 unreachable，插入显式 `jmp` 跳到下一块。跳转由 `JmpTable` 统一解析。

4. **重命名混淆是独立阶段**（提交 `0952583`）
   - 短名必须来自全局 `NameGenerator::getInstance()` 单例，否则会与 Builder 生成的 `onLoad`/`data` 函数名撞车，导致**静默丢函数**。改动后请用"函数数守恒"验证。

5. **链接期也会优化**（`Builder::link`）
   - 对 stdlib 与用户 `--data` 目录里的 `.mcfunction` 同样调用 `PostOptimizer::doSingleOptimize`，让手写标准库也享受行级清理。

6. **两个短路出口**
   - `-E`（仅预处理，导出 `.mci`）在编译前返回；`-c`（仅编译，不打包）在构建后返回。

---

## 资源与运行时

- `src/resources/assets/stdlib/`：链接进产物的运行时数据包资源。
- `src/resources/include/`、`src/resources/libc/`：C 管线用到的 libc 子集与头文件。
- `src/resources/lang/{ZH_CN,EN_US}.yaml`：i18n，构建时生成 `GeneratedI18n.h`。
- `src/python/`：构建期资源处理（`build_assets.py` 等）。

## 构建产物

- 可执行文件：`build/bin/clang-mc.exe`
- 构建系统：xmake（详细工具链与命令见项目根 `xmake.lua` 与团队笔记）。

---

*本文只描述流水线骨架。深入某一阶段（IR 代码块模型、postopt 各 pass、混淆策略）时，请直接读对应目录源码。*
