# libmc

`libmc` 是 `clang-mc` 的头文件式 Minecraft 数据包辅助库。这里的资源模型分成两类：

- 值类型：例如 `Identifier`，按值传递，使用 `Identifier_Clear()` 释放内部资源
- 引用计数对象：例如 `McfStrRef`、`String`、`Target`、`UUID`，统一使用 intrusive HEADER 模式和 `Retain/Release`

## 引用计数模型

所有引用计数对象都必须把 `McRefHeader rc;` 放在结构体第一个字段：

```c
typedef struct McRefOps {
    void (*destroy)(void *obj);
    const char *type_name;
} McRefOps;

typedef struct McRefHeader {
    McRefCount refcnt;
    const McRefOps *ops;
} McRefHeader;
```

约定如下：

- `Type_New()` / `Type_From*()` 返回 owned 对象，调用者最终必须 `Type_Release()`
- `Type_Retain()` 为对象增加一个拥有者
- `Type_Release()` 释放一个拥有者，归零后调用该类型自己的析构函数
- `Get*()` / `CStr()` / `Length()` / `Ensure*()` 默认返回 borrowed 结果，不转移所有权

## 静态单例

静态单例使用 `refcnt = -1`，也就是 `MC_REF_STATIC`：

- `Retain()` 对静态单例无操作
- `Release()` 对静态单例无操作
- 静态单例视为 borrowed singleton，不参与所有权转移

例如 `TARGET_THIS`、`TARGET_PLAYERS` 这类全局常量就是静态单例。它们可以直接使用，但不需要也不应该配对 `Target_Release()`。

## owned 与 borrowed

- owned：当前作用域拥有该对象的一份生命周期责任，最终必须 `Release`
- borrowed：只是临时观察或使用，不负责释放

示例：

```c
String name = String_FromLiteral("minecraft:stone");
if (name == NULL) {
    return;
}

puts(String_CStr(name)); /* borrowed */
String_Release(name);
```

## 新增一个引用计数类型

最小模板如下：

```c
typedef struct _Foo {
    McRefHeader rc;
    char *buffer;
    String name;
} _Foo;
typedef _Foo *Foo;

static void
_Foo_Destroy(void *obj)
{
    Foo foo = (Foo)obj;
    String_Release(foo->name);
    free(foo->buffer);
    free(foo);
}

static const McRefOps _FOO_REF_OPS = {
    _Foo_Destroy,
    "Foo",
};

static inline Foo
Foo_New(void)
{
    Foo foo = (Foo)malloc(sizeof(_Foo));
    if (foo == NULL) {
        return NULL;
    }

    MC_REF_INIT_DYNAMIC(foo, &_FOO_REF_OPS);
    foo->buffer = NULL;
    foo->name = NULL;
    return foo;
}

static inline Foo
Foo_Retain(Foo foo)
{
    return (Foo)McRef_Retain(foo);
}

static inline void
Foo_Release(Foo foo)
{
    McRef_Release(foo);
}
```

要求：

- `McRefHeader rc` 必须是第一个字段
- 必须提供类型专属析构函数
- 构造函数负责设置 `rc.ops`
- 如果对象内部持有其他引用计数对象，析构函数里统一调用对应 `Type_Release()`

## 常见误用

### 忘记释放 owned 对象

```c
String s = String_FromCString("hello");
if (s == NULL) {
    return;
}

/* ...使用 s... */
/* 错误：没有 String_Release(s); */
```

### 释放 borrowed 值

```c
const char *raw = String_CStr(s);
free((void *)raw); /* 错误：raw 只是 borrowed 视图 */
```

### 对静态单例做对称释放

```c
Target target = TARGET_THIS;
Target_Release(target); /* 虽然现在是 no-op，但语义上不需要 */
```

## 当前适用类型

目前采用这套规则的公开类型有：

- `McfStrRef`
- `String`
- `Target`
- `UUID`

`Identifier` 不在这套体系里，继续按值类型管理。
