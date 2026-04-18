//
// Created by xia__mc on 2025/2/13.
//

#ifndef CLANG_MC_COMMON_H
#define CLANG_MC_COMMON_H

#include "CommonC.h"
#include "filesystem"
#include "spdlog/spdlog.h"
#include "cstdint"
#include "UnorderedDenseWrapper.h"
#include <nlohmann/json.hpp>
#include "utils/Native.h"

using Path = std::filesystem::path;
using Logger = std::shared_ptr<spdlog::logger>;
template <typename K, typename V, typename Hash = ankerl::unordered_dense::hash<K>>
using HashMap = ankerl::unordered_dense::map<K, V, Hash>;
template <typename T>
using HashSet = ankerl::unordered_dense::set<T>;
using i8 = int8_t;
using i16 = int16_t;
using i32 = int32_t;
using i64 = int64_t;
using u8 = uint8_t;
using u16 = uint16_t;
using u32 = uint32_t;
using u64 = uint64_t;
using Hash = u64;
template <typename T>
using Supplier = std::function<T()>;
using Json = nlohmann::json;

class ParseException : public std::runtime_error {
public:
    explicit ParseException(const std::string &string) : std::runtime_error(string) {
    }
};

class UnsupportedOperationException : public std::runtime_error {
public:
    explicit UnsupportedOperationException(const std::string &string) : std::runtime_error(string) {
    }
};

class NotImplementedException : public UnsupportedOperationException {
public:
    explicit NotImplementedException() : UnsupportedOperationException("Not implemented.") {
    }
};

class IOException : public std::runtime_error {
public:
    explicit IOException(const std::string &string) : std::runtime_error(string) {
    }
};

class NullPointerException : public std::runtime_error {
public:
    explicit NullPointerException(const std::string &string) : std::runtime_error(string) {
    }
};

#define GETTER(name, field) FORCEINLINE auto &get##name() noexcept { return field; } FORCEINLINE const auto &get##name() const noexcept { return field; } // NOLINT(*-macro-parentheses)
#define GETTER_POD(name, field) FORCEINLINE auto get##name() const noexcept { return field; }
#define SETTER(name, field) FORCEINLINE void set##name(const auto &value) noexcept { field = value; }
#define SETTER_POD(name, field) FORCEINLINE void set##name(auto value) noexcept { field = value; }

#define DATA(name, field) GETTER(name, field) SETTER(name, field)
#define DATA_POD(name, field) GETTER_POD(name, field) SETTER_POD(name, field)

#define CAST_FAST(ptr, type) ((type *) ptr.get())
#define CAST_SHARED(sharedPtr, type) (dynamic_pointer_cast<type>(sharedPtr))
#define INSTANCEOF(ptr, type) (dynamic_cast<type *>((ptr).get()))
#define INSTANCEOF_SHARED(sharedPtr, type) CAST_SHARED(sharedPtr, type)
#define FUNC_WITH(method) ([](auto&&... args) { return method(std::forward<decltype(args)>(args)...); })
#define FUNC_THIS(method) ([this](auto&&... args) { return this->method(std::forward<decltype(args)>(args)...); })
#define FUNC_ARG0(method) ([](auto &object, auto&&... args) { return object.method(std::forward<decltype(args)>(args)...); })
#define UNUSED(expr) ((void) (expr))

#define NOT_IMPLEMENTED() throw NotImplementedException()
#define PURE [[nodiscard]]

PURE static inline constexpr Hash hash(const std::string_view &str) noexcept {
    Hash hash = 14695981039346656037U;
    for (const char c: str) {
        hash ^= static_cast<Hash>(c);
        hash *= 1099511628211U;
    }
    return hash;
}

#define SWITCH_STR(string) switch (hash(string))
#define CASE_STR(string) case hash(string)


#ifndef NDEBUG
#undef assert
#define assert(expression) do { \
    if (!(expression)) { \
        printStacktrace(); \
        _wassert(_CRT_WIDE(#expression), _CRT_WIDE(__FILE__), (unsigned)(__LINE__)); \
    } \
} while (0)
#define WARN(condition, message) \
    do { \
        if (!(condition)) { \
            std::cerr << "Warning: " << message << " (" << __FILE__ << ":" << __LINE__ << ")\n"; \
        } \
    } while (0)
#define DEBUG_PRINT(message) \
    do { \
        asm volatile("" ::: "memory"); \
        __sync_synchronize(); \
        std::cout << message << std::endl; \
        asm volatile("" ::: "memory"); \
        __sync_synchronize(); \
    } while (0)
#else
#undef assert
#define assert(expression) \
    do { \
        if (false) { \
            UNREACHABLE(); \
            ((void) (expression)); \
        } \
    } while (0)
#define WARN(condition, message) UNUSED(condition); UNUSED(message)
#define DEBUG_PRINT(message) UNUSED(message)
#endif

template<typename T>
static FORCEINLINE constexpr T *requireNonNull(T *object) {
    if (UNLIKELY(object == nullptr)) {
        throw NullPointerException("null");
    }
    return object;
}

template<typename T>
static FORCEINLINE constexpr T *requireNonNullElse(T *object, T *orElse) {
    if (UNLIKELY(object == nullptr)) {
        return orElse;
    }
    return object;
}

#endif //CLANG_MC_COMMON_H
