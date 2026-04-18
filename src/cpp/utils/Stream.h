//
// Created by xia__mc on 2025/7/4.
//

#ifndef CLANG_MC_STREAM_H
#define CLANG_MC_STREAM_H


#include "utils/Common.h"

namespace stream {
    template<typename T, typename F>
    auto map(const std::vector<T>& vector, F&& mapper) -> std::vector<decltype(mapper(std::declval<T>()))> {
        using R = decltype(mapper(std::declval<T>()));
        std::vector<R> result(vector.size());
        for (size_t i = 0; i < vector.size(); ++i) {
            result[i] = mapper(vector[i]);
        }
        return result;
    }
}

#endif //CLANG_MC_STREAM_H
