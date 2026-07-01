//
// Created by xia__mc on 2025/2/13.
//

#include "PreProcessor.h"
#include "i18n/I18n.h"
#include "objects/MatrixStack.h"
#include <fstream>
#include <sstream>

/* ─────────────────────── 局部辅助 ─────────────────────── */

static std::string trimStr(const std::string &s) {
    const auto start = s.find_first_not_of(" \t\n\r");
    if (start == std::string::npos) return {};
    const auto end = s.find_last_not_of(" \t\n\r");
    return s.substr(start, end - start + 1);
}

static bool containsWhitespace(const std::string &s) {
    return std::any_of(s.begin(), s.end(), [](unsigned char c) { return std::isspace(c); });
}

// 标识符字符：宏名/参数名由 [A-Za-z0-9_] 组成。用于词边界判定。
static bool isIdentChar(unsigned char c) {
    return std::isalnum(c) || c == '_';
}

// 带括号深度与字符串感知的逗号切分。用于函数宏实参/参数列表，
// 避免 f(g(1,2), "a,b") 中嵌套括号与字符串内逗号被错误拆分。
static std::vector<std::string> splitArgs(const std::string &s) {
    std::vector<std::string> out;
    if (s.find_first_not_of(" \t\n\r") == std::string::npos) {
        return out; // 空参数列表
    }
    size_t depth = 0;
    char quote = '\0';     // 当前所处字符串引号（' 或 "），'\0' 表示不在字符串内
    bool escaped = false;  // 上一个字符是否为反斜杠转义
    std::string cur;
    for (const char ch : s) {
        if (quote != '\0') {
            cur += ch;
            if (escaped) {
                escaped = false;
            } else if (ch == '\\') {
                escaped = true;
            } else if (ch == quote) {
                quote = '\0';
            }
            continue;
        }
        if (ch == '"' || ch == '\'') {
            quote = ch;
            cur += ch;
        } else if (ch == '(' || ch == '[' || ch == '{') {
            depth++;
            cur += ch;
        } else if (ch == ')' || ch == ']' || ch == '}') {
            if (depth > 0) depth--;
            cur += ch;
        } else if (ch == ',' && depth == 0) {
            out.push_back(trimStr(cur));
            cur.clear();
        } else {
            cur += ch;
        }
    }
    out.push_back(trimStr(cur));
    return out;
}

/* ───────────────── SourceLineBuilder（内部用）────────────── */

struct SourceLineBuilder {
    std::string code;
    bool skip = false;
    bool lastWhiteSpace = false;

    void push(char ch) {
        if (ch == '"' || ch == '\'') skip = !skip;
        if (ch != '\n' && !skip && (ch == ' ' || ch == '\t')) {
            if (!lastWhiteSpace) {
                code += ' ';
                lastWhiteSpace = true;
            }
        } else {
            code += ch;
            lastWhiteSpace = false;
        }
    }

    void pushStr(const std::string &s) {
        for (char c : s) push(c);
    }

    std::string build() { return std::move(code); }
};

/* ─────────────────────── 公开 API ─────────────────────── */

void PreProcessor::addIncludeDir(Path path) {
    includeDirs.push_back(std::move(path));
}

void PreProcessor::addTarget(Path path) {
    targets.push_back({path, {}});
    defines[path] = {};
    funcMacros[path] = {};
    bypassInclude[path] = {};
}

void PreProcessor::addTargetString(std::string code) {
    const Path empty;
    targets.push_back({empty, std::move(code)});
    defines[empty] = {};
    funcMacros[empty] = {};
    bypassInclude[empty] = {};
}

void PreProcessor::load() {
    for (auto &target : targets) {
        if (!target.code.empty()) continue;
        std::ifstream f(target.path, std::ios::binary);
        if (!f.is_open()) {
            throw IOException(i18nFormat("preprocess.load_error", target.path.string()));
        }
        target.code.assign(std::istreambuf_iterator<char>(f), std::istreambuf_iterator<char>());
    }
}

void PreProcessor::process() {
    for (auto &target : targets) {
        target.code = handleTarget(target.path, target.path, target.code);
    }
}

const std::vector<PreProcessor::Target> &PreProcessor::getTargets() const noexcept {
    return targets;
}

const HashMap<Path, HashMap<std::string, std::string>> &PreProcessor::getDefines() const noexcept {
    return defines;
}

/* ─────────────────── 行预处理：拼接反斜杠续行 ─────────────── */

std::vector<std::string> PreProcessor::logicalLines(const std::string &code) const {
    std::vector<std::string> out;
    std::istringstream ss(code);
    std::string line;

    while (std::getline(ss, line)) {
        // strip \r (Windows CRLF)
        if (!line.empty() && line.back() == '\r') line.pop_back();
        // trim trailing whitespace
        while (!line.empty() && (line.back() == ' ' || line.back() == '\t')) line.pop_back();

        // handle continuation lines ending with '\'
        while (!line.empty() && line.back() == '\\') {
            line.pop_back();   // remove '\'
            line += '\n';
            std::string next;
            if (std::getline(ss, next)) {
                if (!next.empty() && next.back() == '\r') next.pop_back();
                while (!next.empty() && (next.back() == ' ' || next.back() == '\t')) next.pop_back();
                line += next;
            } else {
                break;
            }
        }

        out.push_back(trimStr(line));
    }
    return out;
}

/* ──────────────── 工具：拆分 #define 参数 ─────────────── */

std::pair<std::string, std::string> PreProcessor::splitDefine(const std::string &s) const {
    size_t depth = 0;
    for (size_t i = 0; i < s.size(); ++i) {
        const char ch = s[i];
        if (ch == '(') {
            depth++;
        } else if (ch == ')') {
            if (depth > 0) depth--;
        } else if ((ch == ' ' || ch == '\t') && depth == 0) {
            const std::string key = s.substr(0, i);
            const std::string val = trimStr(s.substr(i + 1));
            return {key, val};
        }
    }
    return {s, {}};
}

/* ─────────────────── 行内函数宏展开 ─────────────────── */

std::optional<std::string> PreProcessor::tryExpandFuncMacro(const Path &tgt, const std::string &line) const {
    const auto openPos = line.find('(');
    if (openPos == std::string::npos) return std::nullopt;
    if (line.empty() || line.back() != ')') return std::nullopt;

    std::string name = line.substr(0, openPos);
    while (!name.empty() && (name.back() == ' ' || name.back() == '\t')) name.pop_back();

    const std::string argsRaw = line.substr(openPos + 1, line.size() - openPos - 2);

    // 带括号深度 + 字符串感知的实参切分（见 splitArgs）
    const std::vector<std::string> args = splitArgs(argsRaw);

    const auto itTgt = funcMacros.find(tgt);
    if (itTgt == funcMacros.end()) return std::nullopt;
    const auto itName = itTgt->second.find(name);
    if (itName == itTgt->second.end()) return std::nullopt;

    const auto &[params, body] = itName->second;
    if (params.size() != args.size()) return std::nullopt;

    // 按词边界替换参数名，避免短参数名（如 a）被替换进更长标识符（如 ab/max）内部
    std::string expanded = body;
    for (size_t i = 0; i < params.size(); ++i) {
        const std::string &param = params[i];
        if (param.empty()) continue;
        const std::string &arg = args[i];
        std::string result;
        result.reserve(expanded.size());
        const size_t paramLen = param.size();
        const size_t len = expanded.size();
        size_t pos = 0;
        while (pos < len) {
            if (pos + paramLen <= len && expanded.compare(pos, paramLen, param) == 0) {
                const bool prevOk = (pos == 0) ||
                    !isIdentChar((unsigned char) expanded[pos - 1]);
                const bool nextOk = (pos + paramLen == len) ||
                    !isIdentChar((unsigned char) expanded[pos + paramLen]);
                if (prevOk && nextOk) {
                    result += arg;
                    pos += paramLen;
                    continue;
                }
            }
            result += expanded[pos];
            ++pos;
        }
        expanded = std::move(result);
    }
    return expanded;
}

/* ─────────── 对象宏展开（手动 word-boundary 扫描）─────────── */

std::string PreProcessor::tryExpandObjMacros(const Path &tgt, const std::string &line) const {
    const auto it = defines.find(tgt);
    if (it == defines.end() || it->second.empty()) return line;

    std::string out = line;
    for (const auto &[key, value] : it->second) {
        if (key.empty()) continue;
        const size_t keyLen = key.size();
        std::string result;
        result.reserve(out.size());
        const size_t outLen = out.size();
        size_t i = 0;
        while (i < outLen) {
            if (i + keyLen <= outLen && out.compare(i, keyLen, key) == 0) {
                // 完整标识符边界：前后为非标识符字符即视为词边界
                // （涵盖空白、逗号、括号、冒号、方括号等：(MACRO)、MACRO:、[MACRO]）
                const bool prevOk = (i == 0) ||
                    !isIdentChar((unsigned char)out[i - 1]);
                const bool nextOk = (i + keyLen == outLen) ||
                    !isIdentChar((unsigned char)out[i + keyLen]);
                if (prevOk && nextOk) {
                    result += value;
                    i += keyLen;
                    continue;
                }
            }
            result += out[i];
            ++i;
        }
        out = std::move(result);
    }
    return out;
}

/* ──────────────── include 辅助 ────────────────── */

std::optional<std::pair<Path, std::string>> PreProcessor::getInclude(
    const Path &tgt, const Path &curFile, const std::string &fileStr)
{
    // 尝试相对于当前文件的父目录
    if (const auto parent = curFile.parent_path(); !parent.empty()) {
        const auto p = parent / fileStr;
        std::ifstream f(p, std::ios::binary);
        if (f.is_open()) {
            std::string content{std::istreambuf_iterator<char>(f), std::istreambuf_iterator<char>{}};
            f.close();
            // handleTarget 抛出的异常向上传播（循环包含、解析错误等）
            auto processed = handleTarget(tgt, p, content);
            return std::make_pair(p, std::move(processed));
        }
    }
    // 尝试各 include 目录
    for (const auto &dir : includeDirs) {
        const auto p = dir / fileStr;
        std::ifstream f(p, std::ios::binary);
        if (f.is_open()) {
            std::string content{std::istreambuf_iterator<char>(f), std::istreambuf_iterator<char>{}};
            f.close();
            auto processed = handleTarget(tgt, p, content);
            return std::make_pair(p, std::move(processed));
        }
    }
    // 自动追加 .mch 扩展名
    if (fileStr.size() < 4 || fileStr.compare(fileStr.size() - 4, 4, ".mch") != 0) {
        return getInclude(tgt, curFile, fileStr + ".mch");
    }
    return std::nullopt;
}

/* ─────────────────── 主处理流程 ─────────────────── */

std::string PreProcessor::handleTarget(const Path &tgt, const Path &cur, const std::string &code) {
    if (processing.count(cur) > 0) {
        throw ParseException(i18nFormat("preprocess.circular_include", cur.string()));
    }
    processing.insert(cur);

    // RAII 确保退出时从 processing 中移除
    struct Guard {
        HashSet<Path> &set;
        const Path &key;
        ~Guard() { set.erase(key); }
    } guard{processing, cur};

    bool ignore = false;
    MatrixStack<bool> ignoreStack;
    SourceLineBuilder out;

    for (const auto &line : logicalLines(code)) {
        /* ── 普通行：宏展开/输出 ── */
        if (line.empty() || line[0] != '#') {
            if (!ignore) {
                std::string processed;
                if (auto exp = tryExpandFuncMacro(tgt, line)) {
                    processed = std::move(*exp);
                } else {
                    processed = line;
                }
                processed = tryExpandObjMacros(tgt, processed);
                out.pushStr(processed);
                out.push('\n');
            }
            continue;
        }

        /* ── 指令行解析 ── */
        const auto spacePos = line.find(' ');
        std::string op, params;
        if (spacePos == std::string::npos || spacePos == line.size() - 1) {
            op = line.substr(1);
            params = {};
        } else {
            op = line.substr(1, spacePos - 1);
            params = line.substr(spacePos + 1);
        }

        // 使用 lambda 处理各指令，返回 true 则在末尾追加 '\n'
        const bool addNewline = [&]() -> bool {

            /* ── #include ── */
            if (op == "include") {
                if (ignore) return false;
                if (params.size() < 3) {
                    throw ParseException(i18n("preprocess.include_syntax"));
                }
                const char first = params.front(), last = params.back();
                if (!((first == '"' && last == '"') || (first == '<' && last == '>'))) {
                    throw ParseException(i18n("preprocess.include_quote_mismatch"));
                }
                const std::string inner = params.substr(1, params.size() - 2);

                auto result = getInclude(tgt, cur, inner);
                if (!result) {
                    throw ParseException(i18nFormat("preprocess.include_not_found", inner));
                }
                auto &[file, fileCode] = *result;

                // include_once / bypass 检查
                // getInclude 已经把 file 展开成 fileCode；展开过程中若 file 含 #once，
                // 则 includeOnce 此刻已包含 file。语义：标记为 #once 的头在同一目标内
                // 仅输出一次，第二次起即真正跳过（不再追加内容）。
                if (includeOnce.count(file) > 0) {
                    auto &bypass = bypassInclude[tgt];
                    if (bypass.count(file) > 0) {
                        return false; // 本目标已输出过该 #once 头，跳过（不追加 \n）
                    }
                    bypass.insert(file); // 首次输出：记录之，后续包含将被跳过
                }

                out.pushStr("#push line\n");
                out.pushStr("#line -1 \"");
                out.pushStr(file.string());
                out.pushStr("\"\n");
                out.pushStr("#nowarn\n");
                out.pushStr(fileCode);
                out.pushStr("\n#pop line\n");
                return true;
            }

            /* ── #ifdef / #ifndef ── */
            if (op == "ifdef" || op == "ifndef") {
                if (containsWhitespace(params)) {
                    throw ParseException(i18n(op == "ifdef"
                        ? "preprocess.ifdef_extra_token"
                        : "preprocess.ifndef_extra_token"));
                }
                ignoreStack.pushMatrix(ignore);
                const auto trimmedParams = trimStr(params);
                const auto itDef = defines.find(tgt);
                const bool defined = (itDef != defines.end()) &&
                    itDef->second.count(trimmedParams) > 0;
                ignore = (op == "ifdef") ? !defined : defined;
                return true;
            }

            /* ── #endif ── */
            if (op == "endif") {
                if (!params.empty()) {
                    throw ParseException(i18n("preprocess.endif_extra_token"));
                }
                if (ignoreStack.isEmpty()) {
                    throw ParseException(i18n("preprocess.endif_without_if"));
                }
                ignore = ignoreStack.popMatrix();
                return true;
            }

            /* ── #define ── */
            if (op == "define") {
                if (ignore) return false;
                auto [key, val] = splitDefine(trimStr(params));
                if (key.find('(') != std::string::npos && !key.empty() && key.back() == ')') {
                    // 函数宏
                    const auto openPos = key.find('(');
                    std::string name = key.substr(0, openPos);
                    while (!name.empty() && (name.back() == ' ' || name.back() == '\t')) name.pop_back();
                    const std::string paramsStr = key.substr(openPos + 1, key.size() - openPos - 2);
                    std::vector<std::string> plist = splitArgs(paramsStr);
                    funcMacros[tgt][name] = {std::move(plist), std::move(val)};
                } else {
                    // 对象宏：值必须是单个 token（不含空白）
                    if (containsWhitespace(val)) {
                        throw ParseException(i18n("preprocess.define_multiword_value"));
                    }
                    defines[tgt][std::move(key)] = std::move(val);
                }
                return true;
            }

            /* ── #undef ── */
            if (op == "undef") {
                if (ignore) return false;
                const std::string k = trimStr(params);
                if (k.empty()) {
                    throw ParseException(i18n("preprocess.undef_missing_name"));
                }
                auto itDef = defines.find(tgt);
                if (itDef != defines.end()) itDef->second.erase(k);
                auto itFunc = funcMacros.find(tgt);
                if (itFunc != funcMacros.end()) itFunc->second.erase(k);
                return true;
            }

            /* ── #once ── */
            if (op == "once") {
                if (ignore) return false;
                includeOnce.insert(cur);
                return true;
            }

            /* ── 其他指令：忽略 ── */
            return true;
        }();

        if (addNewline) out.push('\n');
    }

    if (!ignoreStack.isEmpty()) {
        throw ParseException(i18n("preprocess.unterminated_if"));
    }

    return out.build();
}
