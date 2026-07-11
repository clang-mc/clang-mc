import os, re, sys, glob, copy, tempfile, zipfile, atexit, shutil
sys.setrecursionlimit(4_000_000)

# ROOT = 已解压数据包的根目录（含 data/ 子目录）。
# 用法：
#   python mcfunc_interp.py <解压后的数据包目录>
#   python mcfunc_interp.py <path/to/a.zip>        # 传 .zip 会自动解压到临时目录
# 不传参数时回退到下面的默认路径（历史调试用）。
def _resolve_root(argv):
    default = r"C:\Users\ADMINI~1\AppData\Local\Temp\claude\D--clang-mc-build\2874d2f8-212c-4453-b4d4-153ca4ef54c7\scratchpad\azip"
    p = argv[1] if len(argv) > 1 else os.environ.get("AZIP_ROOT", default)
    if p.lower().endswith(".zip"):
        tmp = tempfile.mkdtemp(prefix="azip_")
        with zipfile.ZipFile(p) as z:
            z.extractall(tmp)
        atexit.register(shutil.rmtree, tmp, ignore_errors=True)
        return tmp
    return p

ROOT = _resolve_root(sys.argv)

# ---------------- load functions ----------------
FUNCS = {}
for f in glob.glob(os.path.join(ROOT, 'data', '**', '*.mcfunction'), recursive=True):
    rel = os.path.relpath(f, os.path.join(ROOT, 'data'))
    parts = rel.replace('\\', '/').split('/')
    ns = parts[0]
    assert parts[1] == 'function'
    name = '/'.join(parts[2:])[:-len('.mcfunction')]
    key = ns + ':' + name
    lines = []
    for ln in open(f, encoding='utf-8'):
        ln = ln.rstrip('\n')
        s = ln.strip()
        if s:
            lines.append(s)
    FUNCS[key] = lines

# ---------------- 32-bit ----------------
def w32(v):
    v &= 0xFFFFFFFF
    if v >= 0x80000000: v -= 0x100000000
    return v

# ---------------- scoreboards ----------------
SCORE = {}  # player -> int (objective vm_regs only)
def sget(p):
    return SCORE.get(p, 0)
def sset(p, v):
    SCORE[p] = w32(v)

# ---------------- storage std:vm ----------------
class Heap:
    __slots__ = ('data', 'length')
    def __init__(self):
        self.data = {}
        self.length = 0
STORAGE = {}   # key -> python value; 'heap' -> Heap

# ---------------- SNBT parser ----------------
class P:
    def __init__(self, s):
        self.s = s; self.i = 0; self.n = len(s)
    def ws(self):
        while self.i < self.n and self.s[self.i] in ' \t\n': self.i += 1
    def parse(self):
        self.ws()
        c = self.s[self.i]
        if c == '{': return self.compound()
        if c == '[': return self.lst()
        if c == '"' or c == "'": return self.string()
        return self.scalar()
    def string(self):
        q = self.s[self.i]; self.i += 1; out = []
        while self.i < self.n:
            c = self.s[self.i]
            if c == '\\':
                out.append(self.s[self.i+1]); self.i += 2; continue
            if c == q:
                self.i += 1; break
            out.append(c); self.i += 1
        return ''.join(out)
    def compound(self):
        self.i += 1; d = {}
        self.ws()
        if self.s[self.i] == '}':
            self.i += 1; return d
        while True:
            self.ws()
            if self.s[self.i] in '"\'':
                key = self.string()
            else:
                j = self.i
                while self.s[self.i] not in ':' : self.i += 1
                key = self.s[j:self.i].strip()
            self.ws(); assert self.s[self.i] == ':'; self.i += 1
            val = self.parse(); d[key] = val
            self.ws()
            c = self.s[self.i]
            if c == ',': self.i += 1; continue
            if c == '}': self.i += 1; break
        return d
    def lst(self):
        self.i += 1; a = []
        self.ws()
        if self.s[self.i] == ']':
            self.i += 1; return a
        # possible typed array prefix like [I; ...] - handle generic
        while True:
            self.ws()
            val = self.parse(); a.append(val)
            self.ws(); c = self.s[self.i]
            if c == ',': self.i += 1; continue
            if c == ']': self.i += 1; break
        return a
    def scalar(self):
        j = self.i
        while self.i < self.n and self.s[self.i] not in ',{}[]:':
            self.i += 1
        tok = self.s[j:self.i].strip()
        return parse_scalar(tok)

def parse_scalar(tok):
    # numeric with optional type suffix
    m = re.fullmatch(r'(-?\d+)([bslBSL])?', tok)
    if m: return int(m.group(1))
    m = re.fullmatch(r'(-?(?:\d+\.\d*|\.\d+|\d+))([fdFD])', tok)
    if m: return float(m.group(1))
    m = re.fullmatch(r'-?\d+\.\d+', tok)
    if m: return float(tok)
    if tok == 'true': return 1
    if tok == 'false': return 0
    return tok  # bareword string

def snbt(s):
    return P(s).parse()

# ---------------- path handling ----------------
# returns list of segments: ('key', name) or ('idx', int) or ('all',)
def parse_path(path):
    segs = []
    i = 0; n = len(path)
    # first segment is a bareword key
    while i < n:
        c = path[i]
        if c == '.':
            i += 1
            if path[i] == '"' or path[i] == "'":
                q = path[i]; i += 1; j = i
                buf = []
                while path[i] != q:
                    if path[i] == '\\':
                        buf.append(path[i+1]); i += 2; continue
                    buf.append(path[i]); i += 1
                i += 1
                segs.append(('key', ''.join(buf)))
            else:
                j = i
                while i < n and path[i] not in '.[': i += 1
                segs.append(('key', path[j:i]))
        elif c == '[':
            i += 1
            if path[i] == ']':
                i += 1; segs.append(('all',))
            else:
                j = i
                while path[i] != ']': i += 1
                segs.append(('idx', int(path[j:i]))); i += 1
        else:
            j = i
            while i < n and path[i] not in '.[': i += 1
            segs.append(('key', path[j:i]))
    return segs

def get_path(path):
    segs = parse_path(path)
    # heap special
    if segs[0] == ('key', 'heap'):
        h = STORAGE['heap']
        if len(segs) == 1:
            return h
        assert segs[1][0] == 'idx'
        idx = segs[1][1]
        return h.data.get(idx, 0)
    cur = STORAGE
    for s in segs:
        if s[0] == 'key':
            cur = cur[s[1]]
        elif s[0] == 'idx':
            idx = s[1]
            if idx < 0: idx += len(cur)
            cur = cur[idx]
        else:
            raise Exception('all in get')
    return cur

def set_path(path, value):
    segs = parse_path(path)
    if segs[0] == ('key', 'heap'):
        if len(segs) == 1:
            # set whole heap
            if isinstance(value, list):
                nh = Heap(); nh.length = len(value)
                for i, v in enumerate(value):
                    if v != 0: nh.data[i] = v
                STORAGE['heap'] = nh
            return
        h = STORAGE['heap']
        assert segs[1][0] == 'idx'
        idx = segs[1][1]
        h.data[idx] = value
        if idx + 1 > h.length: h.length = idx + 1
        return
    if len(segs) == 1:
        STORAGE[segs[0][1]] = value
        return
    cur = STORAGE
    try:
        for s in segs[:-1]:
            if s[0] == 'key':
                cur = cur[s[1]]
            elif s[0] == 'idx':
                idx = s[1]
                if idx < 0: idx += len(cur)
                cur = cur[idx]
        last = segs[-1]
        if last[0] == 'key':
            cur[last[1]] = value
        elif last[0] == 'idx':
            idx = last[1]
            if idx < 0: idx += len(cur)
            cur[idx] = value
    except (KeyError, IndexError, TypeError):
        return   # intermediate path missing -> MC command fails, no-op

def append_path(path, value):
    if path == 'heap':
        # only used with set value; not here
        STORAGE['heap'].data  # noop
        return
    cur = get_path(path)
    cur.append(value)

# ---------------- return signal ----------------
class Ret(Exception):
    pass

MAXI = 200_000_000
counter = 0
counting = False

# ---------------- command executor returning value ----------------
EXTERNAL = []  # log of external leaf commands executed on counted path

def exec_value(cmd, macro):
    # returns integer result of running cmd (side effects performed)
    toks = cmd.split()
    if toks[0] == 'scoreboard':
        return sb(toks)
    if toks[0] == 'data' and len(toks) > 3 and toks[2] == 'storage' and toks[3] == 'std:vm':
        return data_cmd(cmd, toks)
    if toks[0] == 'function' and ':' in toks[1] and (toks[1] in FUNCS):
        return call_function(cmd, toks, macro)
    if toks[0] == 'tellraw':
        raise RuntimeError('CRASH: tellraw reached (program aborted)')
    if toks[0] == 'schedule':
        return 0
    # External / vanilla leaf command (e.g. assembled `data modify entity ... Health ...`).
    # Touches game state only; invokes no datapack function -> a single leaf, result treated as 1.
    if counting:
        EXTERNAL.append(cmd)
    return 1

def sb(toks):
    # scoreboard players ...
    if toks[1] == 'objectives':
        return 0
    assert toks[1] == 'players'
    op = toks[2]
    if op == 'get':
        return sget(toks[3])
    if op == 'set':
        v = int(toks[5]); sset(toks[3], v); return sget(toks[3])
    if op == 'add':
        sset(toks[3], sget(toks[3]) + int(toks[5])); return sget(toks[3])
    if op == 'remove':
        sset(toks[3], sget(toks[3]) - int(toks[5])); return sget(toks[3])
    if op == 'operation':
        dst = toks[3]; operator = toks[5]; src = toks[6]
        a = sget(dst); b = sget(src)
        if operator == '=': r = b
        elif operator == '+=': r = a + b
        elif operator == '-=': r = a - b
        elif operator == '*=': r = a * b
        elif operator == '/=':
            if b == 0: r = a
            else: r = a // b   # floor division (MC)
        elif operator == '%=':
            if b == 0: r = a
            else: r = a - (a // b) * b  # floored modulo
        else: raise RuntimeError('op ' + operator)
        sset(dst, r); return sget(dst)
    raise RuntimeError('sb ' + op)

def data_cmd(cmd, toks):
    # data get storage std:vm PATH [scale]
    # data modify storage std:vm PATH <op> ...
    if toks[1] == 'get':
        # toks: data get storage std:vm PATH [scale]
        path = toks[4]
        scale = 1
        if len(toks) >= 6:
            scale = float(toks[5])
        val = get_path(path)
        if isinstance(val, bool): val = int(val)
        # MC: data get on a list/compound/string returns element/char count
        if isinstance(val, (list, dict, str)):
            val = len(val)
        res = val * scale
        return int(res)
    assert toks[1] == 'modify'
    # data modify storage std:vm PATH OP ...
    path = toks[4]
    op = toks[5]
    if op == 'set':
        if toks[6] == 'value':
            # value is remainder after 'set value '
            m = re.search(r'\bset value ', cmd)
            valstr = cmd[m.end():]
            set_path(path, snbt(valstr))
            return 1
        elif toks[6] == 'from':
            # set from storage NS SRCPATH
            ns = toks[8]
            src = toks[9]
            try:
                v = copy.deepcopy(get_src(ns, src))
            except (KeyError, IndexError, TypeError):
                return 0   # source path matches nothing -> no-op (dst unchanged)
            set_path(path, v)
            return 1
    elif op == 'append':
        if toks[6] == 'value':
            m = re.search(r'\bappend value ', cmd)
            valstr = cmd[m.end():]
            append_path(path, snbt(valstr))
            return 1
        elif toks[6] == 'from':
            ns = toks[8]; src = toks[9]
            # heap self-doubling special
            if path == 'heap' and src == 'heap[]':
                STORAGE['heap'].length *= 2
                return 1
            if src.endswith('[]'):
                base = src[:-2]
                try:
                    els = list(get_src(ns, base))
                except (KeyError, IndexError, TypeError):
                    return 0
                for el in els:
                    append_path(path, copy.deepcopy(el))
                return 1
            try:
                v = copy.deepcopy(get_src(ns, src))
            except (KeyError, IndexError, TypeError):
                return 0
            append_path(path, v)
            return 1
    raise RuntimeError('data op: ' + cmd)

def path_exists(ns, path):
    try:
        get_src(ns, path)
        return True
    except (KeyError, IndexError, TypeError):
        return False

def get_src(ns, path):
    if ns == 'std:vm':
        return get_path(path)
    # other storages: build lazily as empty dict
    st = STORAGE.setdefault('__ns__' + ns, {})
    # navigate
    cur = st
    for s in parse_path(path):
        if s[0] == 'key': cur = cur.get(s[1], {})
        elif s[0] == 'idx':
            idx = s[1]
            cur = cur[idx] if isinstance(cur, list) and idx < len(cur) else {}
    return cur

# ---------------- function call (value) ----------------
def call_function(cmd, toks, macro_unused):
    # function NS:PATH [with storage std:vm PATH]
    target = toks[1]
    macro = None
    if 'with' in toks:
        wi = toks.index('with')
        # with storage std:vm PATH
        assert toks[wi+1] == 'storage'
        srcpath = toks[wi+3]
        macro = copy.deepcopy(get_path(srcpath))
    return run_top(target, macro)

# ---------------- macro substitution ----------------
def subst(line, macro):
    def rep(m):
        key = m.group(1)
        v = macro[key]
        if isinstance(v, float):
            return repr(v)
        return str(v)
    return re.sub(r'\$\(([^)]*)\)', rep, line)

# ---------------- execute handler ----------------
def cmp_scores(a, operator, b):
    if operator == '<': return a < b
    if operator == '<=': return a <= b
    if operator == '=': return a == b
    if operator == '>': return a > b
    if operator == '>=': return a >= b
    raise RuntimeError('cmp ' + operator)

def match_range(v, rng):
    if '..' in rng:
        lo, hi = rng.split('..')
        if lo != '' and v < int(lo): return False
        if hi != '' and v > int(hi): return False
        return True
    return v == int(rng)

def handle_execute(cmd, macro):
    # returns ('return',v) or ('tailcall',f) or None
    toks = cmd.split()
    i = 1
    stores = []   # list of ('score',player) or ('storage',path,mult)
    while i < len(toks):
        t = toks[i]
        if t == 'store':
            assert toks[i+1] == 'result'
            if toks[i+2] == 'storage':
                # storage std:vm PATH int MULT
                path = toks[i+4]
                assert toks[i+5] == 'int'
                mult = float(toks[i+6])
                stores.append(('storage', path, mult))
                i += 7
            elif toks[i+2] == 'score':
                player = toks[i+3]
                # toks[i+4] == 'vm_regs'
                stores.append(('score', player))
                i += 5
            else:
                raise RuntimeError('store ' + cmd)
        elif t == 'if' or t == 'unless':
            neg = (t == 'unless')
            if toks[i+1] == 'score':
                a = sget(toks[i+2])
                # toks[i+3]=vm_regs
                op = toks[i+4]
                if op == 'matches':
                    rng = toks[i+5]
                    res = match_range(a, rng)
                    i += 6
                else:
                    b = sget(toks[i+5])
                    # toks[i+6]=vm_regs
                    res = cmp_scores(a, op, b)
                    i += 7
            elif toks[i+1] == 'function':
                fn = toks[i+2]
                val = run_top(fn, None)
                res = (val != 0)
                i += 3
            elif toks[i+1] == 'data':
                # if/unless data storage NS PATH  -> passes if path exists
                assert toks[i+2] == 'storage'
                ns = toks[i+3]; pth = toks[i+4]
                res = path_exists(ns, pth)
                i += 5
            else:
                raise RuntimeError('cond ' + cmd)
            if neg: res = not res
            if not res:
                return None   # short-circuit; command not run
        elif t == 'run':
            action = ' '.join(toks[i+1:])
            return run_action(action, stores, macro)
        else:
            raise RuntimeError('exec clause ' + t + ' :: ' + cmd)
    raise RuntimeError('no run in execute: ' + cmd)

def run_action(action, stores, macro):
    atoks = action.split()
    if atoks[0] == 'return':
        # conditional return (all conds passed)
        return do_return(action, atoks, macro)
    # value-producing / side-effect command
    val = exec_value(action, macro)
    for st in stores:
        if st[0] == 'score':
            sset(st[1], val)
        else:
            _, path, mult = st
            set_path(path, w32(int(val * mult)))
    return None

def do_return(action, atoks, macro):
    # return N  |  return run function F  |  return run <cmd>
    if len(atoks) == 2:
        return ('return', int(atoks[1]))
    assert atoks[1] == 'run'
    rest = ' '.join(atoks[2:])
    rtoks = rest.split()
    if rtoks[0] == 'return':
        # nested: `return run return run ... function F` (indirect-call pass artifact)
        return do_return(rest, rtoks, macro)
    if rtoks[0] == 'execute':
        # `return run execute ... run return X` (assembled indirect dispatch):
        # the execute's own `run return`/`run function` yields the signal; if the
        # execute's condition fails (no run), the outer `return run <fail>` -> return 0.
        sig = handle_execute(rest, macro)
        return sig if sig is not None else ('return', 0)
    if rtoks[0] == 'function' and 'with' not in rtoks:
        return ('tailcall', rtoks[1])
    # otherwise run and return its value
    val = exec_value(rest, macro)
    return ('return', val)

# ---------------- line executor ----------------
def exec_line(line, macro):
    global counter
    if line[0] == '$':
        line = subst(line[1:], macro)
    t0 = line.split(' ', 1)[0]
    if t0 == 'scoreboard' or t0 == 'data':
        exec_value(line, macro)
        return None
    if t0 == 'function':
        toks = line.split()
        call_function(line, toks, macro)
        return None
    if t0 == 'execute':
        return handle_execute(line, macro)
    if t0 == 'return':
        return do_return(line, line.split(), macro)
    if t0 == 'tellraw':
        raise RuntimeError('CRASH: tellraw reached')
    if t0 == 'schedule':
        return None
    raise RuntimeError('line: ' + line)

# ---------------- run function (trampoline) ----------------
from collections import Counter as _Counter
FN_ENTRIES = _Counter()

def run_top(name, macro):
    global counter
    cur = name
    curmacro = macro
    while True:
        if counting:
            FN_ENTRIES[cur] += 1
        lines = FUNCS[cur]
        sig = None
        for line in lines:
            if counting:
                counter += 1
                if counter > MAXI:
                    raise RuntimeError('exceeded MAXI at ' + cur)
            sig = exec_line(line, curmacro)
            if sig is not None:
                break
        if sig is None:
            return 0   # fell off end -> return 0
        if sig[0] == 'return':
            return sig[1]
        # tailcall
        cur = sig[1]; curmacro = None

# ---------------- run init (uncounted) ----------------
import json
def run_init():
    global counting
    counting = False
    # read #minecraft:load tag -> load entry functions; run their scheduled functions in order
    tag = os.path.join(ROOT, 'data', 'minecraft', 'tags', 'function', 'load.json')
    entries = json.load(open(tag))['values']
    sched = []
    for e in entries:
        for line in FUNCS[e]:
            toks = line.split()
            if toks[0] == 'schedule' and toks[1] == 'function':
                sched.append(toks[2])
            elif toks[0] == 'function':
                sched.append(toks[1])
    print('init order:', sched)
    for fn in sched:
        run_top(fn, None)

if __name__ == '__main__':
    run_init()
    print('heap length after init:', STORAGE['heap'].length)
    sbkeys = [k for k in SCORE if k.startswith('sb_')]
    print('sb base regs:', {k: sget(k) for k in sbkeys})
    print('rsp:', sget('rsp'), 'shp:', sget('shp'))
    # now count foo
    counting = True
    counter = 0
    ret = run_top('_ll_shared:foo', None)
    print('foo return:', ret)
    print('INSTRUCTION COUNT:', counter)
    print('external leaf commands on path:', len(EXTERNAL))
    for c in EXTERNAL:
        print('   EXT>', c)
    print('distinct functions entered:', len(FN_ENTRIES))
    print('total function-body executions:', sum(FN_ENTRIES.values()))
    print('top 15 hottest functions (entries):')
    for fn, c in FN_ENTRIES.most_common(15):
        print(f'   {c:>8}  {fn}')
