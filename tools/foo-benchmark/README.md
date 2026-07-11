# foo 指令数基准 —— 离线分析工具

把编译产物数据包当 Minecraft 命令解释器执行，**离线、静态**数出某个 mcfunction
被调用一次所执行的指令数，并打印热点函数榜。不依赖游戏，也不依赖运行时外部状态
（已验证目标函数的指令计数是静态可确定的）。

分析对象示例（`build/main.c`）：

```c
__declspec(dllexport)
void foo() {
    Entity_SetHealth(TARGET_THIS, 1);
}
```

## 工具

| 脚本 | 作用 |
|---|---|
| `mcfunc_interp.py` | 忠实解释器：加载 `data/**/*.mcfunction`，建 scoreboard / `std:vm` 存储 / 稀疏 heap，先跑 `#minecraft:load`（不计数）完成 VM 初始化，再对目标函数（默认 `_ll_shared:foo`）计数并打印热点函数榜（按“行数 × 命中次数”估算各函数的指令贡献）。 |
| `mcfunc_hotspot.py` | 在解释器上挂钩子，统计指定函数（默认乘法 / malloc）的调用次数、不同入参 `(r0,r1)` 的种类数、以及“若对 `(r0,r1)->rax` 做结果 memo 的理论命中率”。用于判断某叶子函数是否值得加缓存/短路。 |

## 用法

```bash
# 直接对 .zip（自动解压到临时目录）或已解压目录
python mcfunc_interp.py D:/clang-mc/build/a.zip
python mcfunc_hotspot.py D:/clang-mc/build/a.zip

# 指定要盯的函数（可多个）：
python mcfunc_hotspot.py D:/clang-mc/build/a.zip a:main/__muldi3 a:main/__muldf3
```

### 注意事项

- **路径用 Windows 形式**（`D:/...`）。这是原生 Windows 版 Python，`/tmp` 会被解析到
  `C:/Users/.../AppData/Local/Temp`，与 Git Bash 的 `/tmp` 不是同一处；产物写到
  `D:/clang-mc/build/` 最省心。
- **确认符号映射要亲手计数，别信名字。** 优化 + 混淆后的短名（`a:c` / `a:d` …）
  与源符号名的对应关系必须逐个核对：可用 `-g`（未优化）重汇编让源名回归，再用
  `mcfunc_hotspot.py` 数 `FN_ENTRIES` 命中次数对齐。历史上曾把 `__bit_and*`
  误认成 `__muldi3/__muldf3`（一个是软件按位与、一个是软件乘法，性质完全不同）。
- `-g`（未优化）产物的 softfloat 极重，纯 Python 解释可能很慢/超时——这是产物本身
  重，不是脚本问题。定量对比建议取**优化版**产物，或对单个函数做孤立基准。

## 已知的性能事实（供后续分析参考）

- `Entity_SetHealth(_, 1)` 之所以贵，**不是**浮点乘法——foo 全程 `__muldf3 = __muldi3 = 0`。
- 真因是 VM 无原生位运算：`gcvt_fast` 在返回前对 double 做的若干比较
  （`is_nan`/`is_inf`/`x<0`/`x==0` 等）和 int↔double 转换，每一次都会经由
  compiler-rt 的 `aInt & absMask`（一次完整 64 位 AND）灌进 `__bit_and` 的
  2-bit-limb 分解树，再叠加寄存器溢出 `load/store_heap_custom`。
- `gcvt_fast(1.0)` 的整数快路径 `try_simple_decimal` 每次正确触发，取数字慢循环从不运行。
  **不存在 codegen/correctness bug**，比较→跳转的 lower 是正确的。
