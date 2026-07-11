"""
foo 指令热点 / 乘法入参重复率分析器。

依赖同目录的 mcfunc_interp.py（把编译产物数据包当 Minecraft 命令解释执行，
统计静态调用 _ll_shared:foo 时执行的 mcfunction 指令数）。

用法：
    python mcfunc_hotspot.py <数据包目录或 a.zip> [目标函数1 目标函数2 ...]

不传目标函数时，默认盯下面这几个（覆盖优化名与 -g 源名两种命名）。
对每个目标函数，统计其被调用次数、不同入参对 (r0,r1) 的数量，以及
“若对 (r0,r1)->rax 做结果 memo 缓存”的理论命中率 —— 用来判断“缓存该不该/为何没生效”。
"""
import sys, importlib.util, os
from collections import Counter, defaultdict

_here = os.path.dirname(os.path.abspath(__file__))
_spec = importlib.util.spec_from_file_location("mcfunc_interp", os.path.join(_here, "mcfunc_interp.py"))
I = importlib.util.module_from_spec(_spec)
# 让被导入的解释器拿到数据包路径：把 argv[1] 透传过去
if len(sys.argv) > 1:
    I_argv = [sys.argv[0], sys.argv[1]]
else:
    I_argv = [sys.argv[0]]
_saved = sys.argv
sys.argv = I_argv
_spec.loader.exec_module(I)
sys.argv = _saved

# 目标函数：默认同时覆盖优化名(a:c...)与 -g 源名
TARGETS = sys.argv[2:] or [
    "a:c", "a:d", "a:e", "a:oj",                                  # 优化+混淆命名
    "a:main/__muldi3", "a:main/__muldf3", "a:main/malloc",        # -g 源符号命名
]

I.counting = False
I.run_init()
I.counting = True
I.counter = 0

orig_run_top = I.run_top
CALLS = defaultdict(list)          # fn -> [(r0, r1), ...]  进入时的入参
TARGET_SET = set(TARGETS)

def hooked(name, macro):
    if I.counting and name in TARGET_SET:
        CALLS[name].append((I.sget("r0"), I.sget("r1")))
    return orig_run_top(name, macro)

I.run_top = hooked

ret = I.run_top("_ll_shared:foo", None)
print("foo return:", ret, " instruction count:", I.counter)
print()
for fn in TARGETS:
    lst = CALLS[fn]
    if not lst:
        print(f"{fn}: 0 calls")
        continue
    uniq = len(set(lst))
    hit = 100 * (len(lst) - uniq) / len(lst)
    print(f"{fn}: {len(lst)} calls, {uniq} distinct arg-pairs, potential-memo-hit-rate={hit:.1f}%")
    print("    top repeats:", Counter(lst).most_common(3))
