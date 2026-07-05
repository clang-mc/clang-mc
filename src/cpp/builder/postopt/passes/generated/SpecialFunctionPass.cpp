//
// Created by Codex on 2026/5/1.
//

#include "SpecialFunctionPass.h"
#include <string>
#include <string_view>

namespace postopt {

static inline constexpr std::string_view LABEL_BIT_SHR = "# label: \"__bit_shr\"";
static inline constexpr std::string_view LABEL_BIT_SHR_B31 = "# label: \"__bit_shr.isB31\"";

// __bit_shr 的原始函数体在通用路径上总会调用运行时的 __pow2u，其引用形如
// `<namespace>:bits/__pow2u`。以此为锚点抽取当前编译单元的命名空间，使固定实现
// 直接引用“稳定的真实函数名”，而不再依赖名称混淆恰好产出的短名。
//
// 历史 bug：旧固定实现把函数体写死为引用 a:o / a:p / a:a / a:n —— 这些是作者当年在
// “混淆改名之后”抓取到的观测短名。SpecialFunctionPass 只在 -g（保留 `# label` 注释）
// 时才命中，而 -g 恰好关闭名称混淆，于是 a:o/a:p/a:n 三个目标文件根本不存在（悬空），
// a:a 还会错误指向 Builder 生成的 load 调度函数（语义错误）。no-g 下 `# label` 被剥离、
// 本 pass 根本不触发，故发货配置一直用的是编译器产出的正确 __bit_shr。
static inline constexpr std::string_view POW2U_ANCHOR = ":bits/__pow2u";

static inline bool isNamespaceChar(const char c) {
    // Minecraft 资源命名空间允许的字符（小写字母/数字/下划线/短横/点）。
    return (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || c == '_' || c == '-' || c == '.';
}

// 从原始函数体中抽取命名空间（`<ns>:bits/__pow2u` 里 `:` 前的 token）。
static std::string extractNamespace(const std::string &code) {
    const auto pos = code.find(POW2U_ANCHOR);
    if (pos == std::string::npos) {
        return {};
    }
    size_t start = pos;
    while (start > 0 && isNamespaceChar(code[start - 1])) {
        --start;
    }
    return code.substr(start, pos - start);
}

// 自包含的优化版 __bit_shr。语义严格复刻 bits.mch 中 __bit_shr：
//   if (b == 0)  return a;
//   if (b == 31) return (a < 0) ? 1u : 0u;         // 取符号位
//   d = (i32)pow2u(b);
//   return (a >= 0) ? (a / d)
//                   : (pow2u(31 - b) + (a - INT_MIN) / d);
// 采用与原始编译产物完全一致的 scoreboard 运算，仅去掉了昂贵的调用者保存寄存器落栈：
// __pow2u 只读 r0、只写 rax（见 math.mch/pow2u_helper），故 t0/t1/t2 跨调用安全；
// 全程不触碰 callee-saved 的 x 寄存器，因此无需栈帧。除 __pow2u 外不引用任何其它函数，
// 从根本上消除对混淆短名的依赖（-g/no-g 两种模式下都不悬空、语义正确）。
static std::string buildFixedBitShr(const std::string &ns) {
    const std::string pow2u = ns + ":bits/__pow2u";
    std::string out;
    out.reserve(1200);
    // b == 0 -> a
    out += "execute if score r1 vm_regs matches 0 run scoreboard players operation rax vm_regs = r0 vm_regs\n";
    out += "execute if score r1 vm_regs matches 0 run return 1\n";
    // b == 31 -> (a < 0) ? 1 : 0
    out += "execute if score r1 vm_regs matches 31 if score r0 vm_regs matches ..-1 run scoreboard players set rax vm_regs 1\n";
    out += "execute if score r1 vm_regs matches 31 if score r0 vm_regs matches 0.. run scoreboard players set rax vm_regs 0\n";
    out += "execute if score r1 vm_regs matches 31 run return 1\n";
    // 通用路径：t0 = a, t1 = b, d = pow2u(b) -> t2
    out += "scoreboard players operation t0 vm_regs = r0 vm_regs\n";
    out += "scoreboard players operation t1 vm_regs = r1 vm_regs\n";
    out += "scoreboard players operation r0 vm_regs = r1 vm_regs\n";
    out += "function " + pow2u + "\n";
    out += "scoreboard players operation t2 vm_regs = rax vm_regs\n";
    // a >= 0 -> a / d
    out += "execute if score t0 vm_regs matches 0.. run scoreboard players operation rax vm_regs = t0 vm_regs\n";
    out += "execute if score t0 vm_regs matches 0.. run scoreboard players operation rax vm_regs /= t2 vm_regs\n";
    out += "execute if score t0 vm_regs matches 0.. run return 1\n";
    // a < 0 -> pow2u(31 - b) + (a - INT_MIN) / d
    out += "scoreboard players operation rax vm_regs = t0 vm_regs\n";
    out += "scoreboard players add rax vm_regs 2147483647\n";  // + INT_MAX
    out += "scoreboard players add rax vm_regs 1\n";           // + 1  => a - INT_MIN（分两步避免 +2^31 溢出）
    out += "scoreboard players operation rax vm_regs /= t2 vm_regs\n";
    out += "scoreboard players operation t2 vm_regs = rax vm_regs\n";  // t2 = (a - INT_MIN) / d
    out += "scoreboard players set r0 vm_regs 31\n";
    out += "scoreboard players operation r0 vm_regs -= t1 vm_regs\n";  // r0 = 31 - b
    out += "function " + pow2u + "\n";                                // rax = pow2u(31 - b)
    out += "scoreboard players operation rax vm_regs += t2 vm_regs\n";
    out += "return 1";
    return out;
}

static inline constexpr std::string_view FIXED_BIT_SHR_B31 = R"(execute if score r0 vm_regs matches 0..2147483647 run return 0
scoreboard players set rax vm_regs 1
return 1)";

bool replaceGeneratedSpecialFunction(std::string &code) {
    if (code.find(LABEL_BIT_SHR) != std::string::npos) {
        const auto ns = extractNamespace(code);
        if (ns.empty()) {
            // 无法确定命名空间（理论上不会发生：__bit_shr 通用路径必调用 __pow2u）。
            // 安全回退：不替换，保留编译器产出的正确 __bit_shr。
            return false;
        }
        code = buildFixedBitShr(ns);
        return true;
    }
    if (code.find(LABEL_BIT_SHR_B31) != std::string::npos) {
        code = std::string(FIXED_BIT_SHR_B31);
        return true;
    }
    return false;
}

}  // namespace postopt
