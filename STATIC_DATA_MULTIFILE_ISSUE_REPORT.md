# 多输入 `.mcasm` 编译会覆盖静态数据区

## 结论

已复现。当前 `HEAD`（`324e6298c`）将两个含静态数据的 `.mcasm` 文件一次编译时，两个编译单元的首个静态符号都被解析为同一个地址；最终数据包只加载其中一个编译单元的静态数组。

本报告使用离线解释器完成验证，没有启动 Minecraft 服务端，也没有改动编译器源码。

## 最小复现

`a.mcasm`：

```mcasm
extern repro:read_b:

_start:
    mov r0, [my_data_a]
    inline scoreboard players operation static_probe_a vm_regs = r0 vm_regs
    call repro:read_b
    ret

static my_data_a [111]
```

`b.mcasm`：

```mcasm
export repro:read_b:
    mov r0, [my_data_b]
    inline scoreboard players operation static_probe_b vm_regs = r0 vm_regs
    ret

api _ll_shared:foo:
    ret

static my_data_b [222]
```

编译命令（`-O0` 且不使用 `-g`）：

```powershell
build\bin\clang-mc.exe -O0 -N repro -B <temp>\build -o <temp>\static-multifile <temp>\a.mcasm <temp>\b.mcasm
```

`-g` 不是本问题的必要条件；当前 `mcfunc_interp.py` 不会跳过单独的 `#` 调试注释，因而会报 `RuntimeError: line: #`。使用无调试信息的包即可避免该解释器限制。

## 实测结果

离线执行 `tools/foo-benchmark/mcfunc_interp.py` 的初始化链（`std:init_vm`、静态加载函数、`_start`）后读取解释器状态：

| 用例 | `heap[0]` | `static_probe_a` | `static_probe_b` | 结果 |
| --- | ---: | ---: | ---: | --- |
| 两个输入文件 | 222 | 222 | 222 | 错误：`a` 读到了 `b` 的数据 |
| 将同一逻辑合并为一个输入文件 | 111 | 111 | 222 | 正确对照组 |

双文件包的解释器输出为：

```text
init order: ['std:init_vm', 'repro:b', 'repro:a/_start']
heap[0]=222
static_probe_a=222
static_probe_b=222
```

单文件对照组为：

```text
init order: ['std:init_vm', 'repro:b', 'repro:single/_start']
heap[0]=111
heap[1]=222
static_probe_a=111
static_probe_b=222
```

`D:\McfInterp` 也进行了交叉验证：手动执行生成的 `std:init_vm`、静态加载函数和两个导出函数后，两个符号指针均为 `0`，并都读取到了 `b` 的字节。其直接 CLI 入口硬编码了不适用于 clang-mc 的函数名，不能把“直接运行成功”当作有效验证。

更接近截图的字符串变体也复现：`a` 声明 `static my_data_a "mewo"`，`b` 声明 64 个 `a` 的 `my_data_b`。通过 `D:\McfInterp\dpvm.py` 的 `runpy` 入口手动运行 `std:init_vm` 和静态加载函数后，得到：

```text
shp=65
n:a return=1 pointer=0 bytes=[97, 97, 97, 97, 97]
n:b return=1 pointer=0 bytes=[97, 97, 97, 97, 97]
```

正确布局下 `n:a` 应读到 `[109, 101, 119, 111, 0]`（`mewo\0`），`n:b` 应从指针 `5` 开始读取。因此该交叉验证也直接证明了两个静态段重叠，并非 `puts`/聊天输出路径造成的假象。

## 生成产物证据

双文件包仅生成一个静态加载函数，其核心为：

```mcfunction
scoreboard players operation sb_<random> vm_regs = shp vm_regs
data modify storage std:vm heap[0] set value 222
scoreboard players add shp vm_regs 1
```

而 `repro:a/_start` 和 `repro:read_b` 都先把同一个 `sb_<random>` 写入指针，再调用 `std:_internal/load_heap_custom`。两者均没有额外位移，等价于读取 `static_base + 0`。

正确的单文件对照组则写入：

```mcfunction
data modify storage std:vm heap[0] set value 111
data modify storage std:vm heap[1] set value 222
```

## 根因

1. `ClangMc::start()` 对每个输入 IR 依次调用 `irs[i].compile()`（`src/cpp/ClangMc.cpp:108-112`）。
2. 每次 `IR::compile()` 都调用 `IR::preCompile()`；该函数清空了共享的 `BuildContext::staticData`（`src/cpp/ir/IR.cpp:267-271`）。
3. 当前 IR 随后以 `staticData.size()` 为静态符号分配偏移（`src/cpp/ir/IR.cpp:304-315`）。由于数组刚被清空，每个文件的首个静态符号偏移都变成 `0`。
4. `CmpLike::withIR()` 将符号/符号指针转换为“静态基址 + 当前 IR 的偏移”（`src/cpp/ir/iops/CmpLike.h:40-71`）。因此 `my_data_a` 和 `my_data_b` 都指向 `base + 0`。
5. 最后的 `Builder::build()` 只读取共享 context 中残留的一份静态数组并生成一个加载函数（`src/cpp/builder/Builder.cpp:107-120`）。所以数据包只保留最后一次 `preCompile()` 的数据。

这与截图中 `file_a.mcasm` 的静态字符串被 `file_b.mcasm` 的静态数据替代的症状一致。

问题可追溯到 `6985e181d`（`Refactor static data initialization and load generation`）：该提交把 `staticData` 从 `IR` 移入共享 `BuildContext`，但保留了原来只对 IR 私有数组安全的 `clear()` 调用。

另一个风险是：若最后编译的 IR 没有静态数据，数组会被清空，Builder 将不生成静态加载函数；此前文件中已生成的静态引用便没有初始化来源。

此外，`ParseManager` 暂存 source 的容器是 `HashMap`（`src/cpp/parse/ParseManager.cpp:22-38`），所以“最后一个 IR”不应被视作稳定的 argv 输入顺序。

## 建议修复

在一次完整编译的静态布局开始处仅清空/预留 `BuildContext::staticData` 一次；不要在每个 `IR::preCompile()` 中清空它。每个 IR 自己的 `staticDataMap.clear()` 应保留。

这样后续 IR 会从已经累积的 `staticData.size()` 继续分配偏移，Builder 也会得到全局连续的静态数组。若未来恢复并行 IR 编译，需要将静态布局改为独立的串行预扫描阶段，不能并发写共享数组。

## 建议回归覆盖

添加一个无服务端测试，至少覆盖：

1. 两个输入文件各有一个 `[111]` / `[222]` 静态数组，断言两函数读取值分别为 `111` / `222`。
2. 静态加载函数同时含 `heap[offset_a] = 111` 与 `heap[offset_b] = 222`，且 `offset_a != offset_b`。
3. 第二个文件没有任何 static 的场景，确保第一个文件的静态加载函数仍存在。
4. `-O0` 与 `-O1` 各运行一次。

可直接检查生成的 `.mcfunction`，或复用 `tools/foo-benchmark/mcfunc_interp.py` 读取初始化后的 heap/scoreboard；两种方式都不需要 Minecraft 服务端。
