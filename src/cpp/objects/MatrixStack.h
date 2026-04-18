//
// Created by xia__mc on 2025/5/26.
//

#ifndef CLANG_MC_MATRIXSTACK_H
#define CLANG_MC_MATRIXSTACK_H


#include <stack>

template<typename T>
class MatrixStack {
private:
    std::stack<T> stack = std::stack<T>();
public:
    explicit MatrixStack() = default;

    FORCEINLINE void pushMatrix(T &&object) {
        stack.push(std::move(object));
    }

    FORCEINLINE void pushMatrix(const T object) {
        stack.push(std::move(object));
    }

    FORCEINLINE T popMatrix() {
        auto result = std::move(stack.top());
        stack.pop();
        return result;
    }

    FORCEINLINE bool isEmpty() {
        return stack.empty();
    }

    FORCEINLINE u32 size() {
        return stack.size();
    }
};


#endif //CLANG_MC_MATRIXSTACK_H
