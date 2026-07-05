// Task4 混淆阶段（--enable-obf）的语义等价 fixture。
//
// 形态特意覆盖两种混淆的触发条件：
//   - main（热根）内对 helper 的直接调用 —— 热路径，间接调用混淆应保持为直接 call。
//   - helper（内部、非循环、被调一次的叶子 leaf）对 leaf 的直接调用 —— 冷代码，
//     应被改写为 movd scratch,leaf + calld scratch。
//   - 各处 `mov reg, imm` 常量加载 —— 应被常量隐藏拆成等值算术序列。
//
// 语义：leaf(x)=x+7；helper(x)=leaf(x)*3+1234；main=helper(100)==1555 ? 0 : 101。
// helper(100)=107*3+1234=1555，故 main 返回 0（rax=0，rsp 复原到 16384）。
// 重量级服务器用例断言 --enable-obf 下 rax/rsp 与 -O0 基线一致（见 run_datapack_tests.py）。

static int leaf(int x) {
    return x + 7;
}

static int helper(int x) {
    int y = leaf(x);
    return y * 3 + 1234;
}

int main(void) {
    return helper(100) == 1555 ? 0 : 101;
}
