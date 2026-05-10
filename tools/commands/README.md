# commands generator

阶段一命令绑定生成器放在这里，不进入 `src/` 构建源码目录。

## 目标

- 用手写 schema 验证 `libmc` 指令自动绑定链路
- 生成 header-only 绑定，便于 LLVM/LTO 裁剪
- 保持 `libmc` 的上下文无关原则

## 当前生成内容

- `src/resources/libmc/entity/EntityTypes.h`
- `src/resources/libmc/bindings/setblock.h`
- `src/resources/libmc/bindings/fill.h`
- `src/resources/libmc/bindings/summon.h`
- `src/resources/libmc/bindings/kill.h`
- `src/resources/libmc/bindings/tp.h`
- `src/resources/libmc/bindings/say.h`
- `src/resources/libmc/bindings/tellraw.h`

## 使用

```powershell
python tools/commands/generator/generate.py
```

生成器读取：

- `tools/commands/schema/vanilla_commands.json`
- `src/resources/libmc/entity/Entities.h`

阶段一只覆盖少量核心命令与 `EntityType` 别名层，后续扩展时继续归一化到内部 schema，不直接把外部命令树当最终绑定输入。
