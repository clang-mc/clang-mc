# commands generator

命令绑定生成器放在这里，不进入 `src/` 构建源码目录。

## 目标

- 用 schema 驱动 `libmc` 指令自动绑定链路
- 生成 header-only 绑定，便于 LLVM/LTO 裁剪
- 保持 `libmc` 的上下文无关原则

## 使用

```powershell
python tools/commands/generator/generate.py
```

生成器读取：

- `tools/commands/schema/vanilla_commands.json`

并生成 `src/resources/libmc/bindings/*.h` 与聚合头 `bindings/vanilla.h`。生成产物为
`Do not edit` 文件，改动 schema 后必须重新运行本脚本并提交生成结果
（`tests/test_generated_bindings.py` 会校验二者一致）。

## schema 结构

`vanilla_commands.json` 顶层为 `{"commands": [ ... ]}`。每个命令：

| 字段 | 说明 |
|---|---|
| `name` | 命令字面量（也是 C 函数名前缀） |
| `header` | 生成到 `bindings/` 下的文件名 |
| `alias_of` | 可选；本命令是另一命令的别名，转发到目标的全部变体 |
| `enums` | 可选；命令内联的 C 枚举定义列表 |
| `variants` | 结构化变体列表；缺省则生成 `exec()` 占位壳 |

每个 variant：

| 字段 | 说明 |
|---|---|
| `c_suffix` | 追加到函数名后缀（区分同名命令的多种形态） |
| `literal_path` | 命令名之后、参数之前的固定字面量前缀（如 `["give"]`） |
| `params` | 有序参数列表 |

### 参数类型

标量（`params[i].type`）：

| type | C 形参类型 | 说明 |
|---|---|---|
| `int` | `int` | 直接内联为数字（value 类）|
| `double` / `float` | `double` / `float` | 格式化为字符串（ref 类）|
| `bool` | `int` | 编译期 `if/else` 分支，把字面量 `true`/`false` 直接焊进命令文本；不经 McfStrRef/slot（本质是二值 enum）|
| `target` | `Target` | 实体选择器 |
| `string` | `String` | 任意字符串实参 |
| `block` | `Block` | 方块注册项 |
| `entity_type` | `Entity` | 实体类型注册项 |
| `identifier` | `const Identifier *` | 任意命名空间 ID（advancement/effect/biome/sound/item/... 均走此类）|

分组（展开为多个标量槽，需提供 `asm_fields` 命名各分量）：

| type | C 形参类型 | 分量 |
|---|---|---|
| `vec3i` | `Vec3i` | x y z（value）|
| `vec3d` | `Vec3d` | x y z（ref）|
| `vec2f` | `Vec2f` | yaw pitch（ref）|
| `vec2d` | `Vec2d` | x z（ref）|

特殊参数：

- `{"type": "enum", "name": ..., "enum_ref": "<EnumName>"}`：编译期枚举，展开为 C `switch`，
  每个枚举值发射一条固定字面量后缀。枚举常量名必须带命令前缀（避免污染全局命名空间）。
- `{"type": "literal", "text": "everything"}`：位置内联字面量伪参数。在命令文本的该位置发射
  一个固定 token，但**不产生任何 C 形参**。用于参数之后出现的固定关键字
  （如 `experience add <target> <amount> points` 里的 `points`）。

## 架构边界：exec-only 例外命令

当前生成器面向**扁平的单行命令**：一个 variant 对应一条 `execute ... run <command>`。
以下命令的原版文法是嵌套子命令链 / NBT 路径 DSL，无法用扁平 variant 表达，因此
**刻意保留为 `exec()` 占位壳**（仍可通过 `exec()` 运行）：

`attribute`、`bossbar`、`data`、`execute`、`item`、`loot`、`scoreboard`、`team`

这一集合由 `tests/test_generated_bindings.py::test_only_expected_commands_are_exec_only`
锁定——新增未预期的占位壳会导致测试失败。若未来支持子命令链，应先扩展生成器架构，
再从该集合中移除对应命令。
