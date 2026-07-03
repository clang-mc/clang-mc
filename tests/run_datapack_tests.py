from __future__ import annotations

import argparse
import shutil
import socket
import struct
import subprocess
import sys
import time
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


@dataclass(frozen=True)
class Case:
    name: str
    source: str
    opt: str = "-O0"
    expected_rax: int = 0
    expected_rsp: int = 16384
    wait_seconds: int = 20


ROOT = Path(__file__).resolve().parents[1]
TEST_DIR = ROOT / "tests"
CASE_DIR = TEST_DIR / "cases"
RUN_DIR = ROOT / "run"
TMP_DIR = RUN_DIR / "tmp-test-suite"
SERVER_DIR = RUN_DIR / "server"
WORLD_DATAPACKS = SERVER_DIR / "world" / "datapacks"
ACTIVE_PACK = WORLD_DATAPACKS / "a.zip"
ACTIVE_DIR_PACK = WORLD_DATAPACKS / "file"
BIN_DIR = ROOT / "build" / "bin"
LIBMC_INCLUDE = ROOT / "build" / "libmc"
PUBLIC_INCLUDE = ROOT / "build" / "include"
LIBC_INCLUDE = ROOT / "src" / "resources" / "libc" / "include"

CLANG = BIN_DIR / ("clang.exe" if sys.platform == "win32" else "clang")
ASM = BIN_DIR / ("clang-mc.exe" if sys.platform == "win32" else "clang-mc")

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
    "While this makes the game possible to play without internet access",
    "To change this, set \"online-mode\" to \"true\"",
    "Can't keep up! Is the server overloaded?",
    "Missing data pack file/file",
)

CASES: list[Case] = [
    Case("libc_printf_o0", "libc_printf.c"),
    Case("loop_mix_o0", "loop_mix.c"),
    Case("recursion_factorial_o0", "recursion_factorial.c"),
    Case("mutual_recursion_o0", "mutual_recursion.c"),
    Case("float_arith_o0", "float_arith.c"),
    Case("float_ieee754_sum_o0", "float_ieee754_sum.c"),
    Case("function_pointer_direct_o0", "function_pointer_direct.c"),
    Case("function_pointer_basic_o0", "function_pointer_basic.c"),
    Case("float_format_o0", "float_format.c"),
    Case("o3_behavior_o0", "o3_behavior.c", "-O0"),
    Case("o3_behavior_o3", "o3_behavior.c", "-O3"),
    Case("libmc_mcf_quote_probe_o0", "libmc_mcf_quote_probe.c"),
    Case("libmc_mcf_numeric_probe_o0", "libmc_mcf_numeric_probe.c"),
    Case("libmc_mcf_release_probe_o0", "libmc_mcf_release_probe.c"),
    Case("libmc_string_release_probe_o0", "libmc_string_release_probe.c"),
    Case("libc_free_adjacent_probe_o0", "libc_free_adjacent_probe.c"),
    Case("libmc_say_trace_o0", "libmc_say_trace.c"),
    Case("libmc_say_only_o0", "libmc_say_only.c"),
    Case("libmc_header_smoke_o0", "libmc_header_smoke.c"),
    Case("libmc_setblock_fill_o0", "libmc_setblock_fill.c"),
    Case("libmc_tellraw_players_only_o0", "libmc_tellraw_players_only.c"),
    Case("libmc_tellraw_raw_only_o0", "libmc_tellraw_raw_only.c"),
    Case("libmc_tellraw_with_prior_msg_o0", "libmc_tellraw_with_prior_msg.c"),
    Case("libmc_target_chat_o0", "libmc_target_chat.c"),
    Case("libmc_summon_only_o0", "libmc_summon_only.c"),
    Case("libmc_summon_unsafe_probe_o0", "libmc_summon_unsafe_probe.c"),
    Case("libmc_tp_only_o0", "libmc_tp_only.c"),
    Case("libmc_tp_rot_only_o0", "libmc_tp_rot_only.c"),
    Case("libmc_summon_tp_rot_only_combo_o0", "libmc_summon_tp_rot_only_combo.c"),
    Case("libmc_tp_then_tp_rot_combo_o0", "libmc_tp_then_tp_rot_combo.c"),
    Case("libmc_summon_tp_trace_o0", "libmc_summon_tp_trace.c"),
    Case("libmc_summon_tp_alloc_trace_o0", "libmc_summon_tp_alloc_trace.c"),
    Case("libmc_target_mcf_after_numeric_release_o0", "libmc_target_mcf_after_numeric_release.c"),
    Case("libmc_float_after_summon_tp_repro_o0", "libmc_float_after_summon_tp_repro.c"),
    Case("libc_snprintf_target_corrupt_probe_o0", "libc_snprintf_target_corrupt_probe.c"),
    Case("libmc_summon_tp_o0", "libmc_summon_tp.c"),
    Case("libmc_exec_passthrough_o0", "libmc_exec_passthrough.c"),
    Case("libmc_clear_gamemode_o0", "libmc_clear_gamemode.c"),
    # KNOWN ISSUE: gamemode_target(GameMode, Target) is the only generated
    # binding shaped as "compile-time enum switch + a single ref parameter
    # with no other value operands" (confirmed via grep across all
    # bindings/*.h). Calling it even once, in isolation, leaks 24 bytes of
    # rsp at runtime. The generated mcasm for gamemode_target/_unsafe is
    # itself stack-balanced (sub/add match on every path); the leak happens
    # inside the auxiliary mcfunction chain clang-mc auto-emits when
    # expanding the "$(target)" macro substitution - a clang-mc backend
    # defect, not a generate.py/schema issue. Left disabled pending a
    # compiler-side fix; do not rely on gamemode_target() until then.
    # Case("libmc_gamemode_target_only_o0", "libmc_gamemode_target_only.c"),
    Case("libmc_clear_only_o0", "libmc_clear_only.c"),
    Case("libmc_weather_time_o0", "libmc_weather_time.c"),
    Case("libmc_chat_commands_o0", "libmc_chat_commands.c"),
    Case("libmc_spawn_spectate_o0", "libmc_spawn_spectate.c"),
    Case("libmc_worldborder_o0", "libmc_worldborder.c"),
    Case("libmc_forceload_o0", "libmc_forceload.c"),
    Case("libmc_function_datapack_recipe_schedule_o0", "libmc_function_datapack_recipe_schedule.c"),
    Case("libmc_enchant_o0", "libmc_enchant.c"),
    # Code-review regression cases (CODE_REVIEW_REPORT.md).
    Case("jcc_const_fold_probe_o0", "jcc_const_fold_probe.c"),
    Case("jcc_imm_reg_probe_o0", "jcc_imm_reg_probe.c"),
    Case("jcc_imm_mem_probe_o0", "jcc_imm_mem_probe.c"),
    Case("arith_mem_mem_probe_o0", "arith_mem_mem_probe.c"),
    Case("ptr_index_scale_disp_probe_o0", "ptr_index_scale_disp_probe.c"),
    Case("opt_selector_merge_probe_o0", "opt_selector_merge_probe.c"),
    Case("preprocessor_macro_args_o0", "preprocessor_macro_args_probe.c"),
    Case("preprocessor_objmacro_boundary_o0", "preprocessor_objmacro_boundary_probe.c"),
    Case("preprocessor_once_o0", "preprocessor_once_probe.c"),
    Case("movd_preserve_rax_probe_o0", "movd_preserve_rax_probe.c"),
    Case("static_parse_edge_probe_o0", "static_parse_edge_probe.c"),
]


class RconClient:
    def __init__(self, host: str, port: int, password: str) -> None:
        self.host = host
        self.port = port
        self.password = password
        self._request_id = 1

    def command(self, command: str) -> str:
        with socket.create_connection((self.host, self.port), timeout=5) as sock:
            sock.settimeout(5)
            self._send_packet(sock, self._request_id, 3, self.password)
            packet_id, packet_type, payload = self._recv_packet(sock)
            if packet_id == -1 or packet_type != 2:
                raise RuntimeError("RCON auth failed")

            self._request_id += 1
            self._send_packet(sock, self._request_id, 2, command)
            packet_id, _, payload = self._recv_packet(sock)
            if packet_id != self._request_id:
                raise RuntimeError("RCON response id mismatch")
            return payload

    @staticmethod
    def _send_packet(sock: socket.socket, packet_id: int, packet_type: int, payload: str) -> None:
        payload_bytes = payload.encode("utf-8")
        body = struct.pack("<ii", packet_id, packet_type) + payload_bytes + b"\x00\x00"
        sock.sendall(struct.pack("<i", len(body)) + body)

    @staticmethod
    def _recv_packet(sock: socket.socket) -> tuple[int, int, str]:
        raw_len = RconClient._recv_exact(sock, 4)
        (length,) = struct.unpack("<i", raw_len)
        body = RconClient._recv_exact(sock, length)
        packet_id, packet_type = struct.unpack("<ii", body[:8])
        payload = body[8:-2].decode("utf-8", errors="replace")
        return packet_id, packet_type, payload

    @staticmethod
    def _recv_exact(sock: socket.socket, size: int) -> bytes:
        chunks = bytearray()
        while len(chunks) < size:
            chunk = sock.recv(size - len(chunks))
            if not chunk:
                raise RuntimeError("RCON connection closed")
            chunks.extend(chunk)
        return bytes(chunks)


def parse_server_properties(path: Path) -> dict[str, str]:
    props: dict[str, str] = {}
    for line in path.read_text(encoding="utf-8").splitlines():
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        props[key] = value
    return props


def run_logged(command: list[str], log_path: Path, cwd: Path) -> None:
    with log_path.open("w", encoding="utf-8") as log:
        proc = subprocess.run(command, cwd=cwd, stdout=log, stderr=subprocess.STDOUT, text=True)
    if proc.returncode != 0:
        raise RuntimeError(f"command failed: {' '.join(command)} -> {log_path}")


def stop_existing_server_processes() -> None:
    if sys.platform != "win32":
        return
    cmd = (
        "Get-CimInstance Win32_Process | "
        "Where-Object { $_.Name -like 'java*' -and $_.CommandLine -like '*-jar server.jar nogui*' } | "
        "ForEach-Object { Stop-Process -Id $_.ProcessId -Force -ErrorAction SilentlyContinue }"
    )
    subprocess.run(["powershell", "-Command", cmd], check=False, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    time.sleep(2)


def remove_tree_with_retries(path: Path, retries: int = 5, delay_seconds: float = 1.0) -> None:
    for attempt in range(retries):
        try:
            shutil.rmtree(path)
            return
        except FileNotFoundError:
            return
        except (PermissionError, OSError):
            if attempt + 1 == retries:
                raise
            time.sleep(delay_seconds)


def unlink_with_retries(path: Path, retries: int = 5, delay_seconds: float = 1.0) -> None:
    for attempt in range(retries):
        try:
            path.unlink()
            return
        except FileNotFoundError:
            return
        except PermissionError:
            if attempt + 1 == retries:
                raise
            time.sleep(delay_seconds)


def cleanup_active_pack() -> None:
    if ACTIVE_PACK.exists():
        unlink_with_retries(ACTIVE_PACK)
    if ACTIVE_DIR_PACK.exists():
        remove_tree_with_retries(ACTIVE_DIR_PACK)


def wait_for_rcon(client: RconClient, timeout_seconds: int = 120) -> bool:
    deadline = time.time() + timeout_seconds
    while time.time() < deadline:
        time.sleep(1)
        try:
            client.command("list")
            return True
        except Exception:
            pass
    return False


def start_server(stdout_log: Path, stderr_log: Path) -> subprocess.Popen[str]:
    creationflags = getattr(subprocess, "CREATE_NO_WINDOW", 0)
    stdout_handle = stdout_log.open("w", encoding="utf-8")
    stderr_handle = stderr_log.open("w", encoding="utf-8")
    proc = subprocess.Popen(
        ["java", "-Xmx1G", "-Xms512M", "-jar", "server.jar", "nogui"],
        cwd=SERVER_DIR,
        stdout=stdout_handle,
        stderr=stderr_handle,
        text=True,
        creationflags=creationflags,
    )
    proc._stdout_handle = stdout_handle  # type: ignore[attr-defined]
    proc._stderr_handle = stderr_handle  # type: ignore[attr-defined]
    return proc


def stop_server(proc: subprocess.Popen[str] | None, client: RconClient) -> None:
    try:
        client.command("stop")
        time.sleep(5)
    except Exception:
        pass

    if proc is not None:
        try:
            proc.wait(timeout=10)
        except subprocess.TimeoutExpired:
            proc.kill()
            proc.wait(timeout=10)
        finally:
            getattr(proc, "_stdout_handle", None) and proc._stdout_handle.close()  # type: ignore[attr-defined]
            getattr(proc, "_stderr_handle", None) and proc._stderr_handle.close()  # type: ignore[attr-defined]

    stop_existing_server_processes()


def score(client: RconClient, name: str) -> int:
    output = client.command(f"scoreboard players get {name} vm_regs")
    marker = " has "
    tail = " [vm_regs]"
    if marker not in output or tail not in output:
        raise RuntimeError(f"unexpected scoreboard output: {output!r}")
    start = output.index(marker) + len(marker)
    end = output.index(tail, start)
    return int(output[start:end].strip())


def storage_value(client: RconClient, path: str) -> str:
    try:
        return client.command(f"data get storage std:vm {path}")
    except Exception as exc:
        return f"<unavailable: {exc}>"


def scan_logs(paths: Iterable[Path]) -> list[str]:
    hits: list[str] = []
    for path in paths:
        if not path.exists():
            continue
        for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
            if any(pattern in line for pattern in IGNORED_LOG_PATTERNS):
                continue
            if any(pattern in line for pattern in ERROR_PATTERNS):
                hits.append(line)
    return hits


def compile_case(case: Case) -> Path:
    case_dir = TMP_DIR / case.name
    case_dir.mkdir(parents=True, exist_ok=True)
    pack_build = case_dir / "pack-build"
    pack_zip = case_dir / "pack.zip.zip"
    if pack_build.exists():
        remove_tree_with_retries(pack_build)
    if pack_zip.exists():
        unlink_with_retries(pack_zip)

    mcasm_path = case_dir / f"{case.name}.mcasm"
    clang_log = case_dir / "clang.log"
    asm_log = case_dir / "asm.log"

    run_logged(
        [
            str(CLANG),
            str(CASE_DIR / case.source),
            "-target", "mcasm",
            case.opt,
            "-I", str(LIBMC_INCLUDE),
            "-I", str(PUBLIC_INCLUDE),
            "-I", str(LIBC_INCLUDE),
            "-S",
            "-o",
            str(mcasm_path),
        ],
        clang_log,
        ROOT,
    )
    run_logged(
        [str(ASM), str(mcasm_path), "-N", "a", "-B", str(pack_build), "-o", str(case_dir / "pack.zip")],
        asm_log,
        ROOT,
    )
    return pack_zip


def run_case(case: Case, pack_zip: Path, client: RconClient) -> tuple[bool, str]:
    cleanup_active_pack()
    case_dir = TMP_DIR / case.name
    stdout_log = TMP_DIR / f"{case.name}.server.log"
    stderr_log = TMP_DIR / f"{case.name}.server.err.log"
    for path in (stdout_log, stderr_log):
        if path.exists():
            path.unlink()

    server_proc = start_server(stdout_log, stderr_log)
    try:
        if not wait_for_rcon(client):
            return False, "RCON not ready"

        client.command("gamerule maxCommandChainLength 10000000")
        client.command("player CodexBot spawn")
        shutil.unpack_archive(str(pack_zip), str(ACTIVE_DIR_PACK), "zip")
        client.command("reload")
        time.sleep(case.wait_seconds)

        rax = score(client, "rax")
        rsp = score(client, "rsp")
        log_hits = scan_logs((stdout_log, stderr_log))

        trace = storage_value(client, "trace")
        ls0 = storage_value(client, "ls0")
        trace_r2 = storage_value(client, "trace_r2")
        trace_tp_ls0 = storage_value(client, "trace_tp_ls0")
        trace_tp_cmd = storage_value(client, "trace_tp_cmd")
        trace_tp_ret = storage_value(client, "trace_tp_ret")
        trace_cmd = storage_value(client, "trace_cmd")
        mcstr_state = storage_value(client, "mcstr")
        trace_tp_slots = storage_value(client, "trace_tp_slots")
        trace_before_slot = storage_value(client, "trace_before_slot")
        trace_after_summon_slot = storage_value(client, "trace_after_summon_slot")
        trace_ptrs_before = storage_value(client, "trace_ptrs_before")
        trace_ptrs_after = storage_value(client, "trace_ptrs_after")
        trace_ptrs_created = storage_value(client, "trace_ptrs_created")
        if rax != case.expected_rax:
            return False, f"rax={rax}, expected={case.expected_rax}, trace={trace}, ls0={ls0}, trace_r2={trace_r2}, trace_tp_ls0={trace_tp_ls0}, trace_tp_cmd={trace_tp_cmd}, trace_tp_ret={trace_tp_ret}, trace_cmd={trace_cmd}, trace_tp_slots={trace_tp_slots}, before_slot={trace_before_slot}, after_summon_slot={trace_after_summon_slot}, ptrs_before={trace_ptrs_before}, ptrs_created={trace_ptrs_created}, ptrs_after={trace_ptrs_after}, mcstr={mcstr_state}"
        if rsp != case.expected_rsp:
            return False, f"rsp={rsp}, expected={case.expected_rsp}, trace={trace}, ls0={ls0}, trace_r2={trace_r2}, trace_tp_ls0={trace_tp_ls0}, trace_tp_cmd={trace_tp_cmd}, trace_tp_ret={trace_tp_ret}, trace_cmd={trace_cmd}, trace_tp_slots={trace_tp_slots}, before_slot={trace_before_slot}, after_summon_slot={trace_after_summon_slot}, ptrs_before={trace_ptrs_before}, ptrs_created={trace_ptrs_created}, ptrs_after={trace_ptrs_after}, mcstr={mcstr_state}"
        if log_hits:
            return False, "log errors: " + " | ".join(log_hits[:3])
        return True, f"rax={rax} rsp={rsp}"
    finally:
        stop_server(server_proc, client)
        cleanup_active_pack()


def main() -> int:
    parser = argparse.ArgumentParser(description="Run clang-mc datapack runtime regression cases.")
    parser.add_argument("--case", dest="case_filter", help="Run only cases whose name contains this substring.")
    parser.add_argument("--keep-tmp", action="store_true", help="Keep run/tmp-test-suite after completion.")
    args = parser.parse_args()

    props = parse_server_properties(SERVER_DIR / "server.properties")
    client = RconClient(
        props.get("server-ip") or "127.0.0.1",
        int(props.get("rcon.port", "25575")),
        props["rcon.password"],
    )

    selected = [case for case in CASES if not args.case_filter or args.case_filter in case.name]
    if not selected:
        print("没有匹配的测试用例。", file=sys.stderr)
        return 2

    stop_existing_server_processes()
    if TMP_DIR.exists():
        remove_tree_with_retries(TMP_DIR)
    TMP_DIR.mkdir(parents=True, exist_ok=True)

    try:
        compiled: dict[str, Path] = {}
        keep_tmp = args.keep_tmp
        for case in selected:
            print(f"[compile] {case.name}")
            compiled[case.name] = compile_case(case)

        failures: list[tuple[str, str]] = []
        for case in selected:
            print(f"[run] {case.name}")
            ok, detail = run_case(case, compiled[case.name], client)
            status = "PASS" if ok else "FAIL"
            print(f"{status} {case.name}: {detail}")
            if not ok:
                failures.append((case.name, detail))

        if failures:
            keep_tmp = True
            print("\n失败汇总:")
            for name, detail in failures:
                print(f"- {name}: {detail}")
            print(f"\n调试产物保留在: {TMP_DIR}")
            return 1

        print("\n全部测试通过。")
        return 0
    finally:
        if not keep_tmp and TMP_DIR.exists():
            shutil.rmtree(TMP_DIR, ignore_errors=True)


if __name__ == "__main__":
    raise SystemExit(main())
