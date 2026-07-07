# `Entity` vs `EntityType` 命名评估报告

评估范围：`src/resources/libmc/entity/`、`src/resources/libmc/bindings/`、`tools/commands/`、`tests/cases/`。
本报告为只读评估，未修改任何源码。项目处于早期快速开发阶段，评估**不考虑**对现有用户的 breaking change 成本。

---

## 1. 全仓库引用清单

搜索关键词：`EntityType`、`ENTITY_TYPE_`、`EntityType_`、`entity_type`（含大小写变体）。

### 1.1 核心定义（`src/resources/libmc/entity/`）

| 文件:行 | 内容 | 用途 |
|---|---|---|
| `entity/Entity.h:27-28` | `typedef const struct _Entity *Entity;`<br>`typedef Entity EntityType;` | `EntityType` 是 `Entity` 的纯类型别名（同一指针类型，无任何区分） |
| `entity/Entity.h:52-56` | `EntityType_EnsureMcfName(EntityType type)` 一行转发 `Entity_EnsureMcfName` | 转发函数 |
| `entity/Entity.h:64-68` | `EntityType_GetIdentifier(EntityType type)` 一行转发 `Entity_GetIdentifier` | 转发函数 |
| `entity/Entity.h:76-80` | `EntityType_GetRegistryName(EntityType type)` 一行转发 `Entity_GetRegistryName` | 转发函数 |
| `entity/Entities.h:9-172` | `ENTITY_LIST(X)` 宏 + `static const Entity id = &id##_IMPL;` | 149 个实体单例，类型均为 `Entity`（**不是** `EntityType`） |
| `entity/Entities.h:182-186` | `EntityType_IsSummonable(EntityType type)` 一行转发 `Entity_IsSummonable` | 转发函数 |
| `entity/EntityTypes.h`（生成文件，全文件） | 149 行 `static const EntityType ENTITY_TYPE_XXX = ENTITY_XXX;` | 把 `Entities.h` 里每个 `ENTITY_XXX` 单例，逐一起别名为 `ENTITY_TYPE_XXX`，值完全相同 |

结论：`Entity.h` 中共 **4 个** `EntityType_*` 转发函数（对应 `Entity_*` 的 4 个），`EntityTypes.h` 是纯生成的 149 行别名表，两者加起来是这次评估的全部"孪生层"。

### 1.2 生成器（`tools/commands/generator/generate.py`）

| 行 | 内容 |
|---|---|
| `12` | `ENTITY_TYPES_PATH = ROOT / ... / "EntityTypes.h"` |
| `48-51` | `TYPES["entity_type"] = {"category": "ref", "c_type": "EntityType", "to_ref": "EntityType_EnsureMcfName", "needs_release": False}` — schema 类型 `entity_type` 映射到 C 类型 `EntityType` |
| `100-101` | `entity_type_alias_name(entity_id)`：把 `ENTITY_XXX` 转成 `ENTITY_TYPE_XXX` |
| `104-118`（约） | `render_entity_types(entity_ids)`：渲染 `EntityTypes.h` 全文件内容 |
| `778` | `write_if_changed(ENTITY_TYPES_PATH, render_entity_types(entity_ids))` |

`entity_type` 是 schema 里唯一使用该别名机制的参数类型；在 `TYPES` 字典的 8 个标量类型中，只有它和 `block` 一样需要 `to_ref` 转换成 `McfStrRef`。

### 1.3 命令 schema 与生成绑定

| 文件:行 | 内容 |
|---|---|
| `tools/commands/schema/vanilla_commands.json:531` | `summon` 命令唯一变体：`{"name": "type", "type": "entity_type"}` |
| `bindings/summon.h:50`（生成文件） | `summon(EntityType type, Vec3d pos)` |
| `bindings/summon.h:62`（生成文件） | `type_ref = EntityType_EnsureMcfName(type);` |
| `bindings/CommandSupport.h:4` | `#include "entity/EntityTypes.h"` |
| `bindings/CommandSupport.h:99-112` | `_Command_AppendEntityType(McfStrRef dst, EntityType type)`，内部调用 `EntityType_GetIdentifier(type)` |

**全仓库只有 `summon` 这一条命令使用 `entity_type` schema 类型**——`kill`/`tp` 等命令的目标参数用的是 `target`（选择器），不是 `entity_type`。

### 1.4 顶层 include 与文档

| 文件:行 | 内容 |
|---|---|
| `src/resources/libmc/types.h:3` | `#include "entity/EntityTypes.h"` |
| `src/resources/libmc/minecraft.h:4` | `#include "entity/EntityTypes.h"` |
| `tools/commands/README.md:13` | 生成产物清单中列出 `EntityTypes.h` |
| `tools/commands/README.md:33` | "阶段一只覆盖少量核心命令与 `EntityType` 别名层" |

两个顶层聚合头都是通过 `EntityTypes.h` 间接 `#include "Entities.h"`，也就是说目前**没有任何代码路径单独 `#include "Entities.h"` 而不带上 `EntityTypes.h`**——用户拿到的公开 API 表面上以 `EntityType`/`ENTITY_TYPE_*` 为主，底层却以 `Entity`/`ENTITY_*` 为真身。

### 1.5 测试用例

| 文件:行 | 内容 |
|---|---|
| `tests/cases/libmc_header_smoke.c:65` | `entity_name = EntityType_EnsureMcfName(&TEST_ARMOR_STAND);`（`TEST_ARMOR_STAND` 声明类型是 `_Entity`，取地址传给期望 `EntityType` 形参的函数，靠隐式指针类型一致而非语义） |
| `tests/cases/libmc_summon_unsafe_probe.c:4,8,14,15,22` | 局部变量名 `entity_type` / `entity_type_slot`——**这只是变量命名巧合**，实际类型是 `McfStrRef`，与 `EntityType` 这个 C 类型无关，不构成一个真正的引用点 |

### 1.6 `src/cpp/`（编译器自身 C++ 源码）

对 `EntityType`、`entity_type`、`entitytype`（不区分大小写）做全目录搜索，**零匹配**。`EntityType` 完全是 libmc 头文件库内部的概念，编译器前端/IR/codegen 不感知它。

---

## 2. 语义辨析

### 2.1 Minecraft 概念里 Entity 与 EntityType 是否同一概念

不是。在原版 Minecraft 及主流模组 API（Bukkit/Paper、Fabric、Forge 等）中：

- **`Entity`**：世界中一个**已生成的实例**——拥有 UUID、坐标、朝向、NBT 数据、生命值等运行时状态。你通过选择器（`@e`、`@s`、`@p` 等）定位到的是 `Entity` 实例。
- **`EntityType`**：**注册表条目 / 类型描述符**——描述"这一类实体"的静态元数据：命名空间 ID、显示用翻译键、生成分类（怪物/生物/环境生物等）、包围盒尺寸等。`/summon <entity_type> <pos>` 命令里的参数就是 `EntityType`，因为它指定"生成哪一种实体"，而不是指向某个已存在的实例。

两者在原版语义里是清晰分离的：`EntityType` 是"模具"，`Entity` 是"用模具造出来的具体的那一个"。

### 2.2 libmc 当前 `_Entity` 结构体实际存的是什么

```c
typedef struct _Entity {
    Identifier identifier;      // 命名空间 ID，如 minecraft:armor_stand
    McfStrRef mcfName;          // 惰性缓存的 mcfunction 字符串引用
    const char *translationKey; // 翻译键
    EntitySpawnGroup spawnGroup;// 生成分类
    float width;
    float height;
    float eyeHeight;            // 包围盒尺寸
} _Entity;
```

七个字段**全部是类型级/注册表级的静态元数据**：命名空间 ID、翻译键、生成分类、包围盒尺寸。**没有任何实例级字段**——没有 UUID、没有坐标、没有 NBT、没有生命值、没有"这一个具体实体"的任何状态。

结论：libmc 目前命名为 `Entity` 的 149 个单例（`ENTITY_ARMOR_STAND` 等），从数据内容看，**本质上就是原版语义里的 `EntityType`（注册表项/类型描述符）**，而不是"实体实例"。也就是说，libmc 现在把"类型"数据存进了叫 `Entity` 的结构体里，`EntityType` 反而是对这批数据语义更准确的名字。

### 2.3 这是否构成"保留两个名字表达不同语义意图"的理由

**不构成**。理由：

1. **两个名字目前指向完全相同的对象**：`EntityType` 只是 `typedef Entity EntityType`，`ENTITY_TYPE_ARMOR_STAND` 只是 `= ENTITY_ARMOR_STAND` 的值别名。没有任何字段、任何函数、任何编译期检查区分"这是一个类型对象"还是"这是一个实例对象"——C 语言的 `typedef` 不提供 nominal typing，两个名字在类型系统层面 100% 等价，可以互相赋值传参而不报错。如果目的是让编译器帮你区分"实例"和"类型"两种意图，这套别名机制完全没有实现这个目标。
2. **真正该区分的是数据内容，而不是现在的两个名字**：如上所述，`_Entity` 结构体存的其实是类型级数据。如果未来 libmc 要引入"已生成实体实例"的概念（比如 `/summon` 返回的句柄、`@e` 选择器抓到的某个具体实体、`data get entity` 的结果），那应该是一个**新的、内容不同**的结构（含 UUID/坐标/运行时状态），而不是复用现在这套只存类型元数据的 `_Entity`。届时无论选哪个名字给"类型描述符"，都还需要为"实例"发明一个新名字——现在预留 `EntityType` 这个名字对将来的实例类型没有任何帮助，因为 `EntityType` 该配的语义（类型描述符）现在已经被 `Entity` 占用的数据实现了。
3. **`Target` 已经承担了"可寻址的实体实例"这个角色**：观察 `bindings/CommandSupport.h` 与 `summon.h`，选择器/实例语义在 libmc 里是通过 `Target`（`Target_FromLiteral("@s")` 等）表达的，不是通过 `Entity`。如果将来真需要"实体实例"类型，`Target` 已经是候选落点，不需要靠现在空占 `EntityType` 这个名字来预留。

综上，当前 `Entity`/`EntityType` 并存**不是**"一个存实例、一个存类型"的有意设计，而是同一份类型级数据被起了两个完全等价的名字，纯粹的命名重复。

---

## 3. 三种方案利弊评估

### 方案 A：完全移除 `EntityType`，统一改名为 `Entity`

**做法**：删除 `typedef Entity EntityType`、4 个 `EntityType_*` 转发函数、整个生成文件 `EntityTypes.h`；生成器 `entity_type` schema 类型的 `c_type`/`to_ref` 改指向 `Entity`/`Entity_EnsureMcfName`；`summon` 等生成绑定的形参类型改为 `Entity`。

**利**：
- 消除 149 行纯重复的生成文件 + 4 个一行转发函数，是四个方案里改动量最小、净删除代码最多的一个。
- 现状里 `Entity` 已经是"主名"：149 个单例、`Entities.h`/`Entity.h` 文件名、7 个核心函数（`Entity_GetIdentifier`/`GetRegistryName`/`GetSpawnGroup`/`GetWidth`/`GetHeight`/`GetEyeHeight`/`IsSummonable`/`EnsureMcfName`）都已用 `Entity_` 前缀；只有生成器 schema 词汇（`entity_type`/`EntityType_EnsureMcfName`）和 4 个转发函数在用 `EntityType`。改成单一名字后，源码里"类型级单例"只有一套词汇，不需要贡献者记两套等价名字该用哪个。
- 消除潜在的"表面 API 用 EntityType，底层单例其实是 Entity"的错位（1.4 节指出的问题）。

**弊**：
- 与原版/主流模组生态的命名习惯相反（原版里注册表项叫 `EntityType`），未来阅读 vanilla 文档做参照时需要在心里做一次映射；但因为 libmc 本来就大量使用自造的精简类型体系（`Target`、`Identifier` 等不完全照搬 Java API），这个不一致不算新增负担。
- 如果未来真的要引入"运行时实体实例"概念，`Entity` 这个最直观的名字已经被"类型描述符"占用，需要为实例发明别的名字（如 `EntityInstance`/`SpawnedEntity`，或者复用已有的 `Target`）。

### 方案 B：保留现状（`Entity` + `EntityType` 别名并存）

**利**：零改动、零风险。

**弊**：
- 永久维护一份 149 行、内容 100% 可由 `Entities.h` 派生的生成文件，以及 4 个只做转发、没有任何行为差异的函数——纯维护负担，没有对应收益（两者类型系统层面等价，不提供任何区分实例/类型的编译期保障，见 2.3 节）。
- 生成器词汇分裂：schema 里 `entity_type` 类型 → `EntityType`/`EntityType_EnsureMcfName`，但实际单例定义、宏、核心函数全部在用 `Entity`/`ENTITY_XXX`/`Entity_*`——贡献者要理解生成器和底层库用的是两套名字指着同一份数据，认知成本长期存在且没有下降的理由。
- 后续每新增一个 `Entity_*` 函数（如未来的 `Entity_GetSpawnEgg` 之类），如果要保持"孪生"惯例，都要再补一个 `EntityType_*` 转发，负担会随 API 增长而增长。

### 方案 C：反向——以 `EntityType` 为主名，`Entity` 作为别名或移除

**做法**：把 `Entities.h`/`Entity.h` 改名为 `EntityTypes.h`/`EntityType.h`，`ENTITY_XXX` 单例改名 `ENTITY_TYPE_XXX`，`Entity_Get*`/`Entity_IsSummonable`/`Entity_EnsureMcfName` 改名 `EntityType_Get*` 等，删除现在生成的 `EntityTypes.h`（因为它并入了主定义）。

**利**：
- 语义上更贴合 2.2 节的结论——数据内容确实是类型级元数据，叫 `EntityType` 更"诚实"。
- 恰好和生成器 schema 已用的词汇（`entity_type`）一致，`generate.py` 的 `TYPES["entity_type"]` 映射不需要改名。
- 为将来可能出现的"运行时实体实例"概念保留了 `Entity` 这个最直观的名字。

**弊**：
- 改动面远大于方案 A：需要重命名的是**当前的主定义**（`Entities.h`/`Entity.h` 两个文件本身、149 个 `ENTITY_XXX` 单例常量、`ENTITY_LIST` 宏、7 个 `Entity_*` 核心函数、`_Entity` 结构体标签），而不只是改动 10 处左右的 `EntityType_*` 引用点。这意味着几乎整个 `entity/` 目录都要动。
- 改名后的目标名字 `ENTITY_TYPE_XXX`/`EntityType_*` **恰好是当前 `EntityTypes.h` 生成文件里已经存在的名字**——本质上是把"生成的别名表"提升为"主定义"，然后删掉旧主定义，最终代码量与方案 A 相近，但改动成本（要动的文件数、review 面）明显更高，因为是重命名"源头"而不是删除"派生物"。
- 目前没有看到任何计划要引入区分于类型描述符的"运行时实体实例"概念的迹象（`Target` 已经覆盖了"可寻址的实例"场景），预留 `Entity` 名字的收益是纯假设性的、当前不兑现。

---

## 4. 结论与建议

**建议采用方案 A：完全移除 `EntityType`，统一改名为 `Entity`。**

理由：
1. `EntityType` 在 libmc 里不是一个独立概念，而是 `Entity` 的 `typedef` 别名——两者在类型系统层面 100% 等价，不提供任何"实例 vs 类型"的编译期区分，2.3 节已论证这不是"故意保留两个名字表达不同语义意图"的设计，纯属命名重复。
2. `Entity` 已经是代码库里的既定主名（149 个单例、两个文件名、7 个核心函数都用它），只有生成器 schema 和 4 个转发函数在用 `EntityType`，方案 A 的改动面最小、是四个选项里唯一"改小头、留大头"的方案。
3 方案 C 虽然在纯语义准确性上略优（`EntityType` 更贴近原版含义），但代价是重命名当前的主定义（几乎整个 `entity/` 目录），改动面数倍于方案 A，而且它试图保留的"`Entity` 留给未来实例概念"这一好处目前没有实际需求支撑（`Target` 已经覆盖了"可寻址实例"的场景）。
4. 项目明确不需要考虑对用户的 breaking change 成本，早期阶段是执行这次清理的最低成本窗口。

### 若采纳方案 A，需改动的文件/生成逻辑清单（仅列清单，不实施）

- `src/resources/libmc/entity/Entity.h`
  - 删除 `typedef Entity EntityType;`（第 28 行）
  - 删除 `EntityType_EnsureMcfName`、`EntityType_GetIdentifier`、`EntityType_GetRegistryName` 三个转发函数
- `src/resources/libmc/entity/Entities.h`
  - 删除 `EntityType_IsSummonable` 转发函数
- `src/resources/libmc/entity/EntityTypes.h`
  - 整个文件删除（不再生成）
- `src/resources/libmc/types.h`、`src/resources/libmc/minecraft.h`
  - `#include "entity/EntityTypes.h"` 改为 `#include "entity/Entities.h"`
- `src/resources/libmc/bindings/CommandSupport.h`
  - `#include "entity/EntityTypes.h"` 改为 `#include "entity/Entities.h"`
  - `_Command_AppendEntityType(McfStrRef dst, EntityType type)` 形参类型改 `Entity`，内部调用 `EntityType_GetIdentifier` 改 `Entity_GetIdentifier`（函数名是否同步改为 `_Command_AppendEntity` 由实现者决定，非语义必需）
- `src/resources/libmc/bindings/summon.h`（生成产物，需重新跑生成器，不手改）
  - `summon(EntityType type, Vec3d pos)` → `summon(Entity type, Vec3d pos)`
  - `EntityType_EnsureMcfName(type)` → `Entity_EnsureMcfName(type)`
- `tools/commands/generator/generate.py`
  - 移除 `ENTITY_TYPES_PATH` 常量
  - 移除 `entity_type_alias_name()`、`render_entity_types()` 两个函数及其调用（约第 778 行的 `write_if_changed(ENTITY_TYPES_PATH, ...)`）
  - `TYPES["entity_type"]` 的 `c_type` 由 `"EntityType"` 改为 `"Entity"`，`to_ref` 由 `"EntityType_EnsureMcfName"` 改为 `"Entity_EnsureMcfName"`（schema 键名 `entity_type` 是否同步改名为 `entity` 可选，不影响功能）
- `tools/commands/schema/vanilla_commands.json`
  - 第 531 行 `summon` 变体的 `{"name": "type", "type": "entity_type"}`，如果上一步改了 schema 键名则同步更新，否则不用动
- `tools/commands/README.md`
  - 移除生成产物清单里的 `EntityTypes.h` 条目
  - 第 33 行"阶段一只覆盖少量核心命令与 `EntityType` 别名层"一句改写，去掉"`EntityType` 别名层"表述
- `tests/cases/libmc_header_smoke.c`
  - 第 65 行 `EntityType_EnsureMcfName(&TEST_ARMOR_STAND)` 改为 `Entity_EnsureMcfName(&TEST_ARMOR_STAND)`
- `tests/cases/libmc_summon_unsafe_probe.c`
  - 无需改动（其中 `entity_type` 只是局部变量名，与 C 类型 `EntityType` 无关）
- 改完 `generate.py`/schema 后需重新执行一次生成器，刷新所有受影响的生成产物（至少 `summon.h`；若删除了 `EntityTypes.h` 的写出逻辑，确认生成器不再尝试写入该已删除文件）
