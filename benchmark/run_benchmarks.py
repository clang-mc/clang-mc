from __future__ import annotations

import argparse
import json
import shutil
import socket
import struct
import subprocess
import sys
import time
from dataclasses import dataclass, field, replace
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
BENCH_DIR = ROOT / "benchmark"
CASE_DIR = BENCH_DIR / "cases"
RUN_DIR = ROOT / "run"
SERVER_DIR = RUN_DIR / "server"
WORLD_DATAPACKS = SERVER_DIR / "world" / "datapacks"
ACTIVE_PACK = WORLD_DATAPACKS / "benchmark_case"
LEGACY_BENCH_PACK = WORLD_DATAPACKS / "mercury_bench"
BENCH_RUN_DIR = RUN_DIR / "mercury-benchmark"
REPORT_PATH = BENCH_RUN_DIR / "report.md"
MERCURY_JAR = Path("D:/McFunctionPlus/build/libs/Mercury-1.0-SNAPSHOT.jar")
SERVER_JAR = SERVER_DIR / "server.jar"
BIN_DIR = ROOT / "build" / "bin"
CLANG = BIN_DIR / ("clang.exe" if sys.platform == "win32" else "clang")
ASM = BIN_DIR / ("clang-mc.exe" if sys.platform == "win32" else "clang-mc")
LIBMC_INCLUDE = ROOT / "build" / "libmc"
PUBLIC_INCLUDE = ROOT / "build" / "include"
LIBC_INCLUDE = ROOT / "src" / "resources" / "libc" / "include"
DEFAULT_COREMARK_ITERATIONS = 1

ERROR_PATTERNS = (
    "Command execution stopped",
    "Aborted",
    "crashed",
    "Failed to load function",
    "Failed to parse",
    "Failed to execute",
    "Couldn't load tag",
    "Non [a-z0-9/._-] character in path",
)

IGNORED_LOG_PATTERNS = (
    "COM exception querying Win32_Processor",
    "COM exception querying Win32_PhysicalMemory",
    "Invalid registry value type detected for PerfOS counters",
    "Failed to request yggdrasil public key",
    "Couldn't look up profile properties",
    "SERVER IS RUNNING IN OFFLINE/INSECURE MODE",
    "The server will make no attempt to authenticate usernames",
    "Can't keep up! Is the server overloaded?",
    "Failed to execute function std:init_vm",
    "Failed to execute compiled function std:init_vm",
    "Nothing changed. The specified properties already have these values",
)


@dataclass(frozen=True)
class Case:
    name: str
    kind: str
    description: str
    export: str = ""
    source: str = ""
    opt: str = "-O3"
    expected_rax: int = 0
    timeout_seconds: int = 300
    score_iterations: int = 0
    extra_cflags: tuple[str, ...] = field(default_factory=tuple)
    excluded_modes: tuple[str, ...] = field(default_factory=tuple)


@dataclass(frozen=True)
class Sample:
    case: str
    mode: str
    duration_ns: int
    rax: int
    correct: bool
    score_per_sec: float | None = None


@dataclass(frozen=True)
class RconConfig:
    host: str
    port: int
    password: str


CASES = [
    Case(
        name="scoreboard_add_20000",
        kind="raw",
        description="Straight-line mcfunction with 20000 `scoreboard players add` commands.",
        expected_rax=60000,
    ),
    Case(
        name="c_arithmetic_loop",
        kind="c",
        description="C nested integer arithmetic loops.",
        source="arithmetic_loop.c",
        export="bench_arithmetic_loop",
    ),
    Case(
        name="c_function_calls",
        kind="c",
        description="C function calls, function pointers, and recursion.",
        source="function_calls.c",
        export="bench_function_calls",
    ),
    Case(
        name="c_memory_loop",
        kind="c",
        description="C static memory initialization and repeated updates.",
        source="memory_loop.c",
        export="bench_memory_loop",
    ),
    Case(
        name="coremark",
        kind="c",
        description="EEMBC CoreMark list, matrix, and state workloads with a runner-observed iterations/sec score.",
        source="coremark_entry.c",
        export="bench_coremark",
        opt="-O0",
        timeout_seconds=900,
        score_iterations=DEFAULT_COREMARK_ITERATIONS,
        extra_cflags=(
            "-I", str(BENCH_DIR / "coremark_port"),
            "-I", str(BENCH_DIR / "third_party" / "coremark"),
            "-DTOTAL_DATA_SIZE=2000",
            "-DPERFORMANCE_RUN=1",
            f"-DITERATIONS={DEFAULT_COREMARK_ITERATIONS}",
        ),
        excluded_modes=("interp", "jit"),  # -O0 generates ~100M+ instructions; interp overhead ~20us/insn → >60min/sample
    ),
    Case(
        name="coremark_o1",
        kind="c",
        description="EEMBC CoreMark compiled with -O1 (fewer stack spills, smaller code than -O0).",
        source="coremark_entry.c",
        export="bench_coremark",
        opt="-O1",
        timeout_seconds=7200,
        score_iterations=DEFAULT_COREMARK_ITERATIONS,
        extra_cflags=(
            "-I", str(BENCH_DIR / "coremark_port"),
            "-I", str(BENCH_DIR / "third_party" / "coremark"),
            "-DTOTAL_DATA_SIZE=2000",
            "-DPERFORMANCE_RUN=1",
            f"-DITERATIONS={DEFAULT_COREMARK_ITERATIONS}",
        ),
        excluded_modes=(),
    ),
    Case(
        name="coremark_o2",
        kind="c",
        description="EEMBC CoreMark compiled with -O2 (-O3 fails due to static symbol collision in clang-mc).",
        source="coremark_entry.c",
        export="bench_coremark",
        opt="-O2",
        timeout_seconds=7200,
        score_iterations=DEFAULT_COREMARK_ITERATIONS,
        extra_cflags=(
            "-I", str(BENCH_DIR / "coremark_port"),
            "-I", str(BENCH_DIR / "third_party" / "coremark"),
            "-DTOTAL_DATA_SIZE=2000",
            "-DPERFORMANCE_RUN=1",
            f"-DITERATIONS={DEFAULT_COREMARK_ITERATIONS}",
        ),
        excluded_modes=(),
    ),
]


class RconClient:
    def __init__(self, config: RconConfig) -> None:
        self.config = config
        self._request_id = 1

    def command(self, command: str, timeout_seconds: int = 300) -> str:
        with socket.create_connection((self.config.host, self.config.port), timeout=10) as sock:
            sock.settimeout(timeout_seconds)
            self._send_packet(sock, self._request_id, 3, self.config.password)
            packet_id, packet_type, _payload = self._recv_packet(sock)
            if packet_id == -1 or packet_type != 2:
                raise RuntimeError("RCON auth failed")
            self._request_id += 1
            request_id = self._request_id
            self._send_packet(sock, request_id, 2, command)
            packet_id, _packet_type, payload = self._recv_packet(sock)
            if packet_id != request_id:
                raise RuntimeError(f"unexpected RCON response id {packet_id}, expected {request_id}")
            self._request_id += 1
            return payload.decode("utf-8", errors="replace")

    @staticmethod
    def _send_packet(sock: socket.socket, request_id: int, packet_type: int, payload: str) -> None:
        payload_bytes = payload.encode("utf-8")
        packet = struct.pack("<ii", request_id, packet_type) + payload_bytes + b"\x00\x00"
        sock.sendall(struct.pack("<i", len(packet)) + packet)

    @staticmethod
    def _recv_packet(sock: socket.socket) -> tuple[int, int, bytes]:
        size_raw = RconClient._recv_exact(sock, 4)
        (size,) = struct.unpack("<i", size_raw)
        data = RconClient._recv_exact(sock, size)
        packet_id, packet_type = struct.unpack("<ii", data[:8])
        return packet_id, packet_type, data[8:-2]

    @staticmethod
    def _recv_exact(sock: socket.socket, size: int) -> bytes:
        chunks: list[bytes] = []
        remaining = size
        while remaining:
            chunk = sock.recv(remaining)
            if not chunk:
                raise ConnectionError("RCON socket closed")
            chunks.append(chunk)
            remaining -= len(chunk)
        return b"".join(chunks)


def parse_properties(path: Path) -> dict[str, str]:
    props: dict[str, str] = {}
    for raw_line in path.read_text(encoding="utf-8").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        props[key.strip()] = value.strip()
    return props


def set_server_property(key: str, value: str) -> str | None:
    path = SERVER_DIR / "server.properties"
    lines = path.read_text(encoding="utf-8").splitlines()
    old_value: str | None = None
    updated = False
    for i, raw_line in enumerate(lines):
        if not raw_line or raw_line.startswith("#") or "=" not in raw_line:
            continue
        current_key, current_value = raw_line.split("=", 1)
        if current_key == key:
            old_value = current_value
            lines[i] = f"{key}={value}"
            updated = True
            break
    if not updated:
        lines.append(f"{key}={value}")
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    return old_value


def rcon_config() -> RconConfig:
    props = parse_properties(SERVER_DIR / "server.properties")
    return RconConfig(
        host=props.get("server-ip") or "127.0.0.1",
        port=int(props.get("rcon.port", "25575")),
        password=props["rcon.password"],
    )


def stop_existing_server_processes() -> None:
    if sys.platform != "win32":
        subprocess.run(["pkill", "-f", "server.jar"], check=False)
        return
    subprocess.run(
        [
            "powershell",
            "-NoProfile",
            "-Command",
            "Get-CimInstance Win32_Process | "
            "Where-Object { $_.CommandLine -like '*server.jar*nogui*' } | "
            "ForEach-Object { Stop-Process -Id $_.ProcessId -Force -ErrorAction SilentlyContinue }",
        ],
        check=False,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )
    time.sleep(2)


def wait_for_rcon(client: RconClient, timeout_seconds: int = 120) -> None:
    deadline = time.time() + timeout_seconds
    last_error: Exception | None = None
    while time.time() < deadline:
        try:
            client.command("list", timeout_seconds=10)
            return
        except Exception as exc:
            last_error = exc
            time.sleep(1)
    raise RuntimeError(f"RCON did not become ready: {last_error}")


def start_server(client: RconClient) -> subprocess.Popen[str]:
    BENCH_RUN_DIR.mkdir(parents=True, exist_ok=True)
    stdout_log = BENCH_RUN_DIR / "server.log"
    stderr_log = BENCH_RUN_DIR / "server.err.log"
    stdout_handle = stdout_log.open("w", encoding="utf-8")
    stderr_handle = stderr_log.open("w", encoding="utf-8")
    creationflags = getattr(subprocess, "CREATE_NO_WINDOW", 0)
    proc = subprocess.Popen(
        ["java", "-Xmx4G", "-Xms512M", "-jar", str(SERVER_JAR), "nogui"],
        cwd=SERVER_DIR,
        stdout=stdout_handle,
        stderr=stderr_handle,
        text=True,
        creationflags=creationflags,
    )
    proc._stdout_handle = stdout_handle  # type: ignore[attr-defined]
    proc._stderr_handle = stderr_handle  # type: ignore[attr-defined]
    wait_for_rcon(client)
    return proc


def stop_server(proc: subprocess.Popen[str] | None, client: RconClient) -> None:
    try:
        client.command("stop", timeout_seconds=20)
        time.sleep(5)
    except Exception:
        pass
    if proc is not None:
        try:
            proc.wait(timeout=15)
        except subprocess.TimeoutExpired:
            proc.kill()
            proc.wait(timeout=10)
        finally:
            getattr(proc, "_stdout_handle", None) and proc._stdout_handle.close()  # type: ignore[attr-defined]
            getattr(proc, "_stderr_handle", None) and proc._stderr_handle.close()  # type: ignore[attr-defined]
    stop_existing_server_processes()


def remove_tree(path: Path) -> None:
    for attempt in range(5):
        try:
            if path.exists():
                shutil.rmtree(path)
            return
        except (PermissionError, OSError):
            if attempt == 4:
                raise
            time.sleep(1)


def install_mercury() -> None:
    if not MERCURY_JAR.is_file():
        raise FileNotFoundError(MERCURY_JAR)
    mods_dir = SERVER_DIR / "mods"
    mods_dir.mkdir(parents=True, exist_ok=True)
    shutil.copy2(MERCURY_JAR, mods_dir / MERCURY_JAR.name)


def _fix_mcasm_dup_symbols(mcasm_path: Path) -> None:
    """Rename duplicate `static <name> [...]` definitions to avoid assembler errors.

    The clang-mc backend can emit two globals with the same name when multiple
    C translation units are merged via #include (e.g. coremark with -O1/-O2).
    Duplicate definitions are typically dead symbols; renaming them is safe.
    """
    import re as _re
    _STATIC_DEF = _re.compile(r'^(static )(\w+)( \[)')
    lines = mcasm_path.read_text(encoding="utf-8").splitlines(keepends=True)
    seen_count: dict[str, int] = {}
    out: list[str] = []
    fixes = 0
    for line in lines:
        m = _STATIC_DEF.match(line)
        if m:
            name = m.group(2)
            seen_count[name] = seen_count.get(name, 0) + 1
            if seen_count[name] > 1:
                new_name = f"{name}_dup{seen_count[name]}"
                line = m.group(1) + new_name + m.group(3) + line[m.end():]
                fixes += 1
        out.append(line)
    if fixes:
        mcasm_path.write_text("".join(out), encoding="utf-8")
        print(f"[fix_mcasm] renamed {fixes} duplicate static symbol(s) in {mcasm_path.name}")


def run_logged(command: list[str], log_path: Path, cwd: Path = ROOT) -> None:
    log_path.parent.mkdir(parents=True, exist_ok=True)
    with log_path.open("w", encoding="utf-8") as log:
        proc = subprocess.run(command, cwd=cwd, stdout=log, stderr=subprocess.STDOUT, text=True)
    if proc.returncode != 0:
        raise RuntimeError(f"command failed: {' '.join(command)} -> {log_path}")


def write_c_harness(pack_dir: Path, case: Case) -> None:
    function_dir = pack_dir / "data" / "bench" / "function"
    function_dir.mkdir(parents=True, exist_ok=True)
    lines = [
        '$data modify storage bench:result root.label set value "$(label)"',
        "scoreboard players set bench_ret bench 0",
        "scoreboard players set correct bench 0",
        "data modify storage std:vm heap set value [-1,-1]",
        "scoreboard players set r0 vm_regs 0",
        "scoreboard players set rax vm_regs 1",
        "syscall",
        "execute store result storage bench:result root.start_low int 1 run data get storage std:vm heap[0]",
        "execute store result storage bench:result root.start_high int 1 run data get storage std:vm heap[1]",
        "scoreboard players set rax vm_regs 0",
        f"function _ll_shared:{case.export}",
        "execute store result score bench_ret bench run scoreboard players get rax vm_regs",
        "scoreboard players set r0 vm_regs 0",
        "scoreboard players set rax vm_regs 1",
        "syscall",
        "execute store result storage bench:result root.end_low int 1 run data get storage std:vm heap[0]",
        "execute store result storage bench:result root.end_high int 1 run data get storage std:vm heap[1]",
        f"execute if score bench_ret bench matches {case.expected_rax} run scoreboard players set correct bench 1",
        "",
    ]
    (function_dir / "run.mcfunction").write_text("\n".join(lines), encoding="utf-8", newline="\n")


def build_c_case(case: Case, out_dir: Path) -> Path:
    case_dir = out_dir / case.name
    remove_tree(case_dir)
    case_dir.mkdir(parents=True, exist_ok=True)
    mcasm_path = case_dir / f"{case.name}.mcasm"
    pack_dir = case_dir / "pack"
    clang_cmd = [
        str(CLANG),
        str(CASE_DIR / case.source),
        "-target",
        "mcasm",
        "-fdeclspec",
        case.opt,
        "-I",
        str(LIBMC_INCLUDE),
        "-I",
        str(PUBLIC_INCLUDE),
        "-I",
        str(LIBC_INCLUDE),
        *case.extra_cflags,
        "-S",
        "-o",
        str(mcasm_path),
    ]
    run_logged(clang_cmd, case_dir / "clang.log")
    _fix_mcasm_dup_symbols(mcasm_path)
    run_logged([str(ASM), str(mcasm_path), "-N", case.name, "-B", str(pack_dir), "-o", str(case_dir / "pack.zip")], case_dir / "asm.log")
    write_c_harness(pack_dir, case)
    return pack_dir


def write_raw_case(case: Case, out_dir: Path, iterations: int) -> Path:
    pack_dir = out_dir / case.name / "pack"
    remove_tree(pack_dir)
    function_dir = pack_dir / "data" / "bench" / "function"
    function_dir.mkdir(parents=True, exist_ok=True)
    (pack_dir / "pack.mcmeta").write_text(
        json.dumps({"pack": {"pack_format": 61, "description": "clang-mc Mercury benchmark"}}, indent=2),
        encoding="utf-8",
    )
    run_lines = [
        '$data modify storage bench:result root.label set value "$(label)"',
        "scoreboard players set acc bench 0",
        "scoreboard players set correct bench 0",
        "data modify storage std:vm heap set value [-1,-1]",
        "scoreboard players set r0 vm_regs 0",
        "scoreboard players set rax vm_regs 1",
        "syscall",
        "execute store result storage bench:result root.start_low int 1 run data get storage std:vm heap[0]",
        "execute store result storage bench:result root.start_high int 1 run data get storage std:vm heap[1]",
        "function bench:work",
        "execute store result score bench_ret bench run scoreboard players get acc bench",
        "scoreboard players set r0 vm_regs 0",
        "scoreboard players set rax vm_regs 1",
        "syscall",
        "execute store result storage bench:result root.end_low int 1 run data get storage std:vm heap[0]",
        "execute store result storage bench:result root.end_high int 1 run data get storage std:vm heap[1]",
        f"execute if score bench_ret bench matches {case.expected_rax} run scoreboard players set correct bench 1",
        "",
    ]
    (function_dir / "run.mcfunction").write_text("\n".join(run_lines), encoding="utf-8", newline="\n")
    (function_dir / "work.mcfunction").write_text(
        "scoreboard players add acc bench 3\n" * iterations,
        encoding="utf-8",
        newline="\n",
    )
    return pack_dir


def build_case(case: Case, out_dir: Path, raw_iterations: int) -> Path:
    if case.kind == "raw":
        return write_raw_case(case, out_dir, raw_iterations)
    if case.kind == "c":
        return build_c_case(case, out_dir)
    raise ValueError(f"unknown case kind {case.kind}")


def activate_pack(pack_dir: Path) -> None:
    remove_tree(ACTIVE_PACK)
    remove_tree(LEGACY_BENCH_PACK)
    shutil.copytree(pack_dir, ACTIVE_PACK)


def setup_scoreboards(client: RconClient) -> None:
    client.command("gamerule maxCommandChainLength 1000000000")
    for objective in ("bench", "vm_regs"):
        client.command(f"scoreboard objectives remove {objective}")
        client.command(f"scoreboard objectives add {objective} dummy")
    client.command("data modify storage std:vm heap set value [0,0]")
    client.command("data modify storage bench:result root set value {}")
    client.command('data modify storage bench:args label set value "sample"')
    client.command("scoreboard players set bench_ret bench 0")
    client.command("scoreboard players set correct bench 0")


def data_int(client: RconClient, path: str) -> int:
    output = client.command(f"data get storage bench:result root.{path}")
    marker = " has the following contents: "
    if marker not in output:
        raise RuntimeError(f"unexpected data output: {output!r}")
    return int(output.split(marker, 1)[1].strip())


def score_int(client: RconClient, name: str, objective: str = "bench") -> int:
    output = client.command(f"scoreboard players get {name} {objective}")
    marker = " has "
    tail = f" [{objective}]"
    if marker not in output or tail not in output:
        raise RuntimeError(f"unexpected scoreboard output: {output!r}")
    return int(output.split(marker, 1)[1].split(tail, 1)[0].strip())


def combine_nanos(low: int, high: int) -> int:
    return ((high & 0xFFFFFFFF) << 32) | (low & 0xFFFFFFFF)


def set_mode(client: RconClient, mode: str) -> None:
    client.command(f"mercury mode {mode}")
    time.sleep(5)


def ensure_fake_player(client: RconClient) -> None:
    try:
        client.command("player CodexBot spawn", timeout_seconds=30)
    except Exception as exc:
        print(f"[warn] failed to spawn Carpet fake player CodexBot: {exc}")


def run_one(client: RconClient, case: Case, mode: str) -> Sample:
    setup_scoreboards(client)
    client.command("function bench:run with storage bench:args", timeout_seconds=case.timeout_seconds)
    start_ns = combine_nanos(data_int(client, "start_low"), data_int(client, "start_high"))
    end_ns = combine_nanos(data_int(client, "end_low"), data_int(client, "end_high"))
    rax = score_int(client, "bench_ret")
    correct = score_int(client, "correct") == 1
    duration_ns = end_ns - start_ns
    score_per_sec = None
    if case.score_iterations > 0 and duration_ns > 0:
        score_per_sec = case.score_iterations * 1_000_000_000.0 / duration_ns
    return Sample(case=case.name, mode=mode, duration_ns=duration_ns, rax=rax, correct=correct, score_per_sec=score_per_sec)


def scan_logs() -> list[str]:
    hits: list[str] = []
    for path in (BENCH_RUN_DIR / "server.log", BENCH_RUN_DIR / "server.err.log"):
        if not path.exists():
            continue
        for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
            if any(pattern in line for pattern in IGNORED_LOG_PATTERNS):
                continue
            if any(pattern in line for pattern in ERROR_PATTERNS):
                hits.append(line)
    return hits


def summarize(samples: list[Sample], case_name: str, mode: str) -> dict[str, float | int | bool]:
    selected = [sample for sample in samples if sample.case == case_name and sample.mode == mode]
    durations = sorted(sample.duration_ns for sample in selected)
    if not durations:
        raise ValueError(f"no samples for {case_name}/{mode}")
    return {
        "count": len(durations),
        "min_ms": durations[0] / 1_000_000,
        "median_ms": durations[len(durations) // 2] / 1_000_000,
        "max_ms": durations[-1] / 1_000_000,
        "all_correct": all(sample.correct for sample in selected),
    }


def try_summarize(samples: list[Sample], case_name: str, mode: str) -> dict[str, float | int | bool] | None:
    selected = [sample for sample in samples if sample.case == case_name and sample.mode == mode]
    if not selected:
        return None
    return summarize(samples, case_name, mode)


def write_report(cases: list[Case], samples: list[Sample], raw_iterations: int) -> None:
    lines = [
        "# Mercury Benchmark Report (vanilla / interp / jit)",
        "",
        "- Timing source: Mercury `/syscall` id 1 (`System.nanoTime`) writing low/high int32 values into `std:vm heap`.",
        "- C cases are compiled with `-target mcasm -fdeclspec`; the harness calls exported `_ll_shared:*` functions after normal datapack load.",
        "- CoreMark prints validation lines through libc `printf`; Carpet fake player `CodexBot` is spawned so `tellraw @a` has a receiver. The iterations/sec score is computed by this runner from the measured function duration.",
        "- Modes switched via `/mercury mode vanilla|interp|jit`, each followed by datapack reload.",
        f"- Raw scoreboard workload uses {raw_iterations} straight-line `scoreboard players add` commands.",
        "",
        "| case | vanilla ms | interp ms | jit ms | interp/vanilla | jit/vanilla | score/s | correct |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: | --- |",
    ]
    for case in cases:
        vanilla = try_summarize(samples, case.name, "vanilla")
        interp = try_summarize(samples, case.name, "interp")
        jit = try_summarize(samples, case.name, "jit")
        vanilla_ms = f"{vanilla['median_ms']:.3f}" if vanilla else "-"
        interp_ms = f"{interp['median_ms']:.3f}" if interp else "-"
        jit_ms = f"{jit['median_ms']:.3f}" if jit else "-"

        def speedup(baseline: dict | None, other: dict | None) -> str:
            if baseline and other and float(other["median_ms"]):
                return f"{float(baseline['median_ms']) / float(other['median_ms']):.2f}x"
            return "-"

        interp_vs_vanilla = speedup(vanilla, interp)
        jit_vs_vanilla = speedup(vanilla, jit)

        jit_scores = [
            sample.score_per_sec for sample in samples
            if sample.case == case.name and sample.mode == "jit" and sample.score_per_sec is not None
        ]
        score_text = "-"
        if jit_scores:
            jit_scores.sort()
            score_text = f"{jit_scores[len(jit_scores) // 2]:.6f}"
        case_samples = [sample for sample in samples if sample.case == case.name]
        correct = all(sample.correct for sample in case_samples) if case_samples else False
        lines.append(
            f"| {case.name} | {vanilla_ms} | {interp_ms} | {jit_ms} | "
            f"{interp_vs_vanilla} | {jit_vs_vanilla} | {score_text} | {correct} |"
        )
    excluded_notes = [(c.name, m) for c in cases for m in c.excluded_modes]
    if excluded_notes:
        lines.extend(["", "**Note:** The following mode/case combinations were skipped:"])
        for case_name, mode in excluded_notes:
            lines.append(f"- `{case_name}` / `{mode}`: excluded (too slow to measure within timeout)")
    lines.extend(["", "## Raw Samples", ""])
    for sample in samples:
        lines.append(
            f"- {sample.case} / {sample.mode}: {sample.duration_ns / 1_000_000:.3f} ms, "
            f"rax={sample.rax}, correct={sample.correct}"
            + (f", score={sample.score_per_sec:.6f}/s" if sample.score_per_sec is not None else "")
        )
    REPORT_PATH.write_text("\n".join(lines) + "\n", encoding="utf-8")


def selected_cases(case_filter: str | None, coremark_iterations: int) -> list[Case]:
    cases = [case for case in CASES if not case_filter or case_filter in case.name]
    if not cases:
        raise ValueError(f"no benchmark cases matched {case_filter!r}")
    configured: list[Case] = []
    for case in cases:
        if case.name != "coremark":
            configured.append(case)
            continue
        extra_cflags = tuple(
            f"-DITERATIONS={coremark_iterations}" if flag.startswith("-DITERATIONS=") else flag
            for flag in case.extra_cflags
        )
        configured.append(replace(case, score_iterations=coremark_iterations, extra_cflags=extra_cflags))
    return configured


def main() -> int:
    parser = argparse.ArgumentParser(description="Run Mercury JIT benchmarks for clang-mc datapacks.")
    parser.add_argument("--case", dest="case_filter", help="Run only benchmark cases whose name contains this substring.")
    parser.add_argument("--samples", type=int, default=3)
    parser.add_argument("--raw-iterations", type=int, default=20_000)
    parser.add_argument("--coremark-iterations", type=int, default=DEFAULT_COREMARK_ITERATIONS)
    parser.add_argument("--mode", choices=("all", "vanilla", "interp", "jit"), default="all")
    parser.add_argument("--keep-server", action="store_true")
    args = parser.parse_args()
    if args.coremark_iterations <= 0:
        raise ValueError("--coremark-iterations must be positive")

    install_mercury()
    cases = selected_cases(args.case_filter, args.coremark_iterations)
    original_max_tick_time = set_server_property("max-tick-time", "-1")
    build_dir = BENCH_RUN_DIR / "build"
    remove_tree(build_dir)
    build_dir.mkdir(parents=True, exist_ok=True)
    built = {case.name: build_case(case, build_dir, args.raw_iterations) for case in cases}

    config = rcon_config()
    client = RconClient(config)
    stop_existing_server_processes()
    remove_tree(ACTIVE_PACK)
    remove_tree(LEGACY_BENCH_PACK)
    proc: subprocess.Popen[str] | None = None
    samples: list[Sample] = []
    try:
        for case in cases:
            print(f"[case] {case.name}")
            if proc is not None:
                stop_server(proc, client)
                proc = None
            activate_pack(built[case.name])
            proc = start_server(client)
            time.sleep(5)
            ensure_fake_player(client)
            all_modes = {
                "all": ("vanilla", "interp", "jit"),
                "vanilla": ("vanilla",),
                "interp": ("interp",),
                "jit": ("jit",),
            }[args.mode]
            excluded = set(case.excluded_modes)
            modes = [m for m in all_modes if m not in excluded]
            for mode in modes:
                set_mode(client, mode)
                for _ in range(args.samples):
                    sample = run_one(client, case, mode)
                    score_suffix = f" score={sample.score_per_sec:.6f}/s" if sample.score_per_sec is not None else ""
                    print(
                        f"{case.name} {sample.mode}: "
                        f"{sample.duration_ns / 1_000_000:.3f} ms rax={sample.rax} "
                        f"correct={sample.correct}{score_suffix}"
                    )
                    samples.append(sample)
        log_hits = scan_logs()
        if log_hits:
            raise RuntimeError("server log errors: " + " | ".join(log_hits[:5]))
        incorrect = [s for s in samples if not s.correct]
        if incorrect:
            raise RuntimeError("Correctness check failed: " + ", ".join(f"{s.case}/{s.mode}" for s in incorrect))
        write_report(cases, samples, args.raw_iterations)
        print(f"report: {REPORT_PATH}")
        return 0
    finally:
        if not args.keep_server:
            stop_server(proc, client)
        if original_max_tick_time is not None:
            set_server_property("max-tick-time", original_max_tick_time)


if __name__ == "__main__":
    raise SystemExit(main())
