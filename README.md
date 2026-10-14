# riscvc.rs

纯 Rust 的 RV32IMF 编译工具链，⛔ 不依赖 LLVM / MLIR。替代 MLIR 下游那一段（`mlir-translate` + `llc` + `lld`）：
MLIR 的 `llvm` 方言 ⇒ 目标文件 ⇒ 可部署的 ELF。MLIR 文本由 [mlirformat](https://crates.io/crates/mlirformat) 解析。

```text
forward.mlir ─ riscvc llc ─▶ forward.s / forward.o ─ riscvc ld -T link.ld ─▶ ccu.elf
crt.S        ─ riscvc as  ─▶ crt.o ──────────────────┘
                                riscvc objdump ◀── 任何 RV32IMF ELF
```

输入要求：`llvm` 方言的**通用形式**（`mlir-opt … --mlir-print-op-generic`）。LLVM 方言里 19 个 op（`llvm.func`、`llvm.call`、
`llvm.icmp`、`llvm.getelementptr`、`llvm.mlir.global` …）的自定义形式要手写解析器，mlirformat 只认它们的通用形式；
其余 61 个 op 的自定义形式也认。

## 范围

- 指令集：**只做 RV32IMF + Zicsr**（ABI ilp32f），即 CCU 标量核声明的 `rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0`。
  ⛔ 不做宽指令、xcalculet、xthead*、压缩指令（C）、双精度（D）。
- 输入：MLIR `llvm` 方言（通用形式）与 GNU 汇编（`.s`；`.S` 只认简单的 `#if` / `#ifdef` / `#define`）。
  从 LLVM IR 来：`mlir-translate --import-llvm x.ll | mlir-opt --mlir-print-op-generic`。
- ⛔ 不是 C / C++ 前端。

## 组成

| 模块 | 做什么 |
| --- | --- |
| `src/isa/` | 一张指令表（宏展开）：编码、译码、按 LLVM 的写法打印（含别名） |
| `src/asm/` | GNU 汇编器：指令、伪指令、伪操作、`%hi` / `%lo` / `%pcrel_*` 重定位 ⇒ ELF 目标文件（`object` crate 写） |
| `src/link/` | 链接器：链接脚本子集（`ENTRY`、`SECTIONS`、`.`、`ALIGN`、`/DISCARD/`）、RISC-V 重定位 |
| `src/llvm/` | `llvm` 方言插件：`mlirformat tblgen` 从 LLVMOps.td / LLVMIntrinsicOps.td 生成的 op 结构体 + 手写的类型参数钩子 |
| `src/ir/` | 内部 IR（块参数、常量即 op）：从 mlirformat 的模块转来；类型与 RV32 布局 |
| `src/codegen/` | 指令选择（值拆 32 位部件；i64 / double 软实现）、`regalloc2`、栈帧、出汇编、全局数据 |
| `src/sim/` | RV32IMF 解释器（对拍用） |
| `src/cli/` | 命令行：一条子命令一个目录（`as` / `ld` / `objdump` / `llc`） |

第三方：`mlirformat`（MLIR 文本）、`object`（ELF 读写）、`regalloc2`（Cranelift 的寄存器分配器）、`clap`、`thiserror`，都是纯 Rust。

## 判据

LLVM（`jw238/docc/llvm-project/build/bin`）只当**对照**，⛔ 不是依赖：

- 汇编器：同一份 `.s`，`riscvc as` 与 `llvm-mc` 出的节字节、重定位逐项相同。
- 反汇编：同一份 ELF，`riscvc objdump` 与 `llvm-objdump` 逐行相同。
- 链接器：同一组目标文件与链接脚本，`riscvc ld` 与 `ld.lld` 出的段字节相同。
- 代码生成：同一个函数，`llc` 编 `.ll`、`riscvc llc` 编由它转来的 `.mlir`，各自链成镜像，在 `src/sim` 解释器里用同样的实参调用，
  返回值与指针实参指向的内存相同。

## 构建

```bash
cargo build --release
cargo test
```

## 测试与语料

```bash
tools/corpus.sh          # compiler-rt builtins ⇒ target/corpus/{s,ll,mlir}（要对照用的 LLVM：../llvm-project/build/bin）
cargo test --release     # 没有语料或 LLVM 的测试说 SKIP 并照过
```

## 状态（2026-10-14）

| 部分 | 对拍结果 |
| --- | --- |
| 译码 / 打印 | 20 万随机字 × 三种风格，与 llvm-objdump 逐条相同 |
| 汇编器 | compiler-rt 334 份（O0 / O2，`-mno-relax`）与 llvm-mc 节字节、重定位、全局符号全同；docc 的 crt 与 clang -c 相同 |
| 链接器 | compiler-rt 167 个目标文件 × docc 的两种脚本，与 ld.lld 的可装载节、入口、全局符号全同；libdope `LoadedElf` 接受 |
| MLIR 解析 | 334 份通用形式 `.mlir` 全部解析、转成内部 IR |
| 代码生成 | 334 份全部编过；O0 / O2 各 97 个标量签名的函数、各 4656 次调用，与 llc 的结果全同（C 源里的未定义行为不比） |

未做：linker relaxation；返回值放不进寄存器（sret 降级）、栈上传参的被测覆盖、`cmpxchg`、i128、向量运算；
代码质量（窥孔、跳转表、常量复用）还没和 llc 比过；没上过板。
