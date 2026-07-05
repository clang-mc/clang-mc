# clang-mc 架构总览

本文面向新加入的开发者，帮助你在几分钟内建立对 **编译流水线** 的整体认识，并知道每一步逻辑落在哪个文件里。

> 最完整的用户文档在中文 wiki（`D:/clang-mc.wiki/`）。当文档与代码冲突时，**以当前代码和最近提交为准**。

---

## 一句话概括

`clang-mc` 是一个把 `mcasm`（以及自定义 C 管线）编译成 Minecraft `.mcfunction` 数据包的编译器。核心 C++20，Python 负责构建期资源处理。

数据在两种表示间流动：

```
.mcasm 文本  ──解析──▶  IR (vector<OpPtr>，每条指令一个 Op)  ──编译──▶  McFunctions (Path → mcfunction 文本)  ──构建/链接──▶  .zip 数据包
```

优化与混淆分布在**两个层面**：编译前作用于 IR（指令级），编译后作用于 mcfunction 文本（函数/行级）。

---

## 流水线总览

编译入口是 `ClangMc::start()`（`src/cpp/ClangMc.cpp:44`），整条流水线是线性的：

```
源文件(.mcasm)
   │
   ├─① 初始化       ensureEnvironment / ensureValidConfig / ensureBuildDir
   │                 校验输入扩展名、清空并重建 build 目录、分配随机 static base 寄存器
   │
   ├─② 解析         ParseManager.loadSource() → loadIR()
   │                 预处理(PreProcessor：include/define) → 逐文件生成 IR (vector<OpPtr>)
   │
   ├─③ 校验         Verifier(...).verify()   标签/操作数合法性
   │                 非 -g 时 freeSource() 释放源文本
   │
   ├─④ IR 级优化     Optimizer.optimize()              —— 仅 optLevel>=1（-O1/-O2）
   │                 opt::Pipeline：常量折叠 / 化简 / 去虚拟化 / 内联 / 死代码，迭代到不动点(≤8轮)
   │
   ├─⑤ IR 级混淆     Obfuscator.obfuscate()            —— 仅 --enable-obf（与 -O 等级独立，opt-in）
   │                 obf::Pipeline：冷代码调用间接化 + 常量隐藏（置于 IR 优化之后）
   │
   │  ┌─ 若 -E (preprocessOnly)：逐 IR preCompile 后打印成 .mci 输出并返回 ─┐
   │
   ├─⑥ 编译         IR::compile()  逐个 IR → McFunctions
   │                 preCompile() 收集 static 数据 → 以"代码块"模式生成 .mcfunction
   │                 每个代码块末尾插显式 jmp；构建跳转表 JmpTable。之后 freeIR()
   │
   ├─⑦ 后端优化      PostOptimizer.optimize()          —— 仅 optLevel>=1，内部再分级门控
   │                 -O2：函数/行级 pass → 函数内联 → 死函数消除
   │                 optLevel>=1 且非 -g：名称混淆（renameInternalFunctions）
   │
   ├─⑧ 构建         Builder.build()
   │                 写出每个函数文件；生成 onLoad 函数、static data 函数、load.json tag
   │
   │  ┌─ 若 -c (compileOnly)：到此返回 ─┐
   │
   └─⑨ 链接         Builder.link()
                     写 pack.mcmeta → 读入 stdlib（行级优化 doSingleOptimize）
                     → 整程序死函数消除(WPO，仅 optLevel>=1，剪掉本程序用不到的 stdlib 函数)
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
| ④ IR 级优化 | `Optimizer` → `opt::runOptimization` | `src/cpp/ir/opt/` |
| ⑤ IR 级混淆 | `Obfuscator` → `obf::runObfuscation` | `src/cpp/ir/obf/` |
| ⑥ 编译 | `IR::compile` / `IR::preCompile` | `src/cpp/ir/IR.cpp` |
| ⑦ 后端优化 | `PostOptimizer` → `postopt::Pipeline` + passes | `src/cpp/builder/PostOptimizer.cpp`、`src/cpp/builder/postopt/` |
| ⑧⑨ 构建 / 链接 | `Builder::build` / `Builder::link` | `src/cpp/builder/Builder.cpp` |

---

## 优化与混淆 pass 详解

### ④ IR 级优化（`opt::`，`src/cpp/ir/opt/`）

`opt::runOptimization`（`opt/core/Pipeline.cpp`）在 IR 的 `vector<OpPtr>` 上**迭代到不动点**（上限 8 轮，防 pass 相互激励死循环），每轮按序运行五个 pass（`opt/passes/`），共享 `opt/analysis/OpEffects.h` 的直线区域寄存器跟踪（只对可跟踪的 pushable 寄存器 rax/r0-7/t0-7/x0-15 推理，call/calld/syscall 为 barrier）：

1. **ConstantFoldingPass** — 常量折叠：输入全为常量的算术折叠成 `mov` 立即数；代数恒等化简（`x+0`/`x-0`/`x*1` 删除，`x*0`→`mov 0`）。
2. **SimplifyPass** — 化简：删自赋值 `mov`；常量传播（源操作数替换为已知立即数，利于 MC 直接做 scoreboard 立即数运算）。
3. **DevirtualizePass** — 去虚拟化：若 `calld reg` 的 reg 在区域内确定来自 `movd reg, label`，改写为直接 `call label`。
4. **InlinePass** — mcasm 级内联：把对"叶子、单直线块、以 ret 结尾"的内部函数的 `call` 展开为函数体（去尾 ret，重命名内部 local label 防冲突）。
5. **DeadCodePass** — 寄存器级 DCE：删除"写某可跟踪寄存器、在覆盖前从未被读、其间无 call/副作用"的纯寄存器写。

### ⑤ IR 级混淆（`obf::`，`src/cpp/ir/obf/`）

`obf::runObfuscation`（`obf/core/Pipeline.cpp`）**单向执行一次**（不迭代），语义严格守恒。由 `--enable-obf` 门控，**与 -O 等级独立**。刻意置于 IR 优化之后——间接调用混淆是去虚拟化的逆操作，须晚于去虚拟化才不会被撤销：

1. **IndirectCallPass**（`obfuscateColdCalls`）— 冷代码调用间接化：静态热点分析分出 hot/cold，仅在 cold 处把直接 `call label` 改写为 `movd scratch, label; calld scratch`。scratch 只选 caller-saved 通用寄存器（r0-7/t0-7），排除 callee-saved 的 x0-15 与返回值 rax，避免破坏祖先调用帧。
2. **ConstantHidingPass**（`hideConstants`）— 常量隐藏：把 `mov reg, K` 拆成 `mov reg, A; add reg, B`（A+B≡K mod 2³²，B≠0），裸立即数不再直接出现。

### ⑦ 后端优化（`postopt::`，`src/cpp/builder/postopt/`）

`PostOptimizer::optimize()`（`PostOptimizer.cpp`）作用于编译产物 `McFunctions`（mcfunction 文本），内部**再分级门控**：

**仅 -O2（`optLevel>=2`），按序：**
1. `runFunctionPasses()` — 逐函数经 `postopt::optimizeFunction`（`postopt/core/Pipeline.cpp`）：
   - **SpecialFunctionPass**（`replaceGeneratedSpecialFunction`）：把生成的特殊函数（如 `__bit_shr`）替换为固定实现。**仅在 -g 保留 `# label` 注释时命中**（见"已知坑"）。
   - **LineCleanupPass**（`cleanupFunctionText`）：函数文本清理（空行/注释等）。
   - **SafeLineTransforms**（`optimizeLines`）：安全的逐行等价替换（如 `return run return`→`return`）。
   - **ExecuteGroupPass**（`applyExecuteGroupPass`，跨函数）：把共享公共前缀的多条 `execute` 命令归组。
2. `inlineFunctions()` — 文本层整图内联：把整个 map 中**恰好被提及一次**的内部函数并入其唯一调用点并删除（支持尾调用 `return run function` 与独立调用 `function`；宏函数、导出/extern、被 calld 引用者自动排除）。
3. `eliminateDeadFunctions()` — 文本层整图 DCE：从根集合（startFunc ∪ 导出/extern 函数）做可达性分析，删不可达内部函数。安全过近似（沿文本 token 传播，覆盖直接调用/schedule/calld 的 movd 池化 NBT 字符串三种引用，只少删不误删）。

**`optLevel>=1` 且非 -g：**
4. `renameInternalFunctions()` — **名称混淆**：把内部函数可读名重写为不透明短名，迁移 McFunctions key，整 token 重写所有引用（`function <name>` 与 movd 的 NBT 字符串），修补 startFunc。

`PostOptimizer::doSingleOptimize()` 是对外静态入口，只跑单函数的 SpecialFunction/行清理，被链接期复用（见下）。

---

## 关键设计点

1. **三个独立开关，各自门控不同阶段**
   - **`-O` 等级**（`-O0` 默认 / `-O1`≡`-O`  / `-O2`）：`optLevel>=1` 启用 IR 级优化、名称混淆、链接期 WPO；`optLevel>=2` 额外启用 postopt 的函数/行级 pass、函数内联、死函数消除。
   - **`--enable-obf`**：opt-in，**独立于 -O**，只门控 IR 级 Obfuscator（冷调用间接化 + 常量隐藏）。注意名称混淆**不**受它控制。
   - **`-g`**（debug info）：**抑制名称混淆**（保留可读名便于调试）；并使 SpecialFunctionPass 生效（依赖 -g 保留的 `# label` 注释）；还改变 `freeSource()` 时机。不影响 IR 优化 / WPO。

2. **两层优化、两处混淆**
   - 优化：IR 级（指令，`opt::`）+ 后端 mcfunction 文本级（`postopt::`）。
   - 混淆：IR 级 Obfuscator（`--enable-obf`，指令改写）+ 后端名称混淆 pass（optLevel/-g 门控，函数改名）。二者门控与目标完全不同，勿混为一谈。

3. **"代码块"编译模型**（`IR::compile`）
   - 不是按 label 直译，而是把每个 label 到下一个 label 之间编译成一个 `.mcfunction` 代码块；块末尾若非 unreachable，插入显式 `jmp` 跳到下一块。跳转由 `JmpTable` 统一解析。

4. **名称混淆的短名必须来自全局单例**
   - `renameInternalFunctions` 的短名必须来自全局 `NameGenerator::getInstance()` 单例，否则会与 Builder 生成的 `onLoad`/`data` 函数名撞车，导致**静默丢函数**。改动后请用"函数数守恒"验证。

5. **链接期整程序优化（WPO）**（`Builder::link`）
   - 读入 stdlib 与用户 `--data` 目录的 `.mcfunction` 时统一调用 `PostOptimizer::doSingleOptimize` 做行级清理。
   - `optLevel>=1` 时对 stdlib 做**整程序死函数消除**：以全部非 stdlib 程序函数（build() 已写盘的用户产物 + onLoad + dataFunc + dataDir）为根，沿文本提及做可达性传播，只写盘可达的 stdlib 函数，剪掉本程序用不到的手写库函数。`-O0` 保持全量链接。
   - 该 pass 与编译单元内 DCE 复用同一 `refFromMcPath` / `collectFunctionMentions`（`postopt/passes/generated/DeadFunctionEliminationPass.h`），避免逻辑漂移。

6. **两个短路出口**
   - `-E`（仅预处理，导出 `.mci`，反映混淆后的 IR）在编译前返回；`-c`（仅编译，不打包）在构建后返回。

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

*本文只描述流水线骨架。深入某一阶段（IR 代码块模型、opt/obf/postopt 各 pass、混淆策略、链接期 WPO）时，请直接读对应目录源码。*
