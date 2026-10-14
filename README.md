# riscvc.rs

纯 Rust 的 RV32IMF 编译工具链，⛔ 不依赖 LLVM / MLIR。目标是替代 MLIR 下游那一段：
`mlir-translate` 出的 LLVM IR（`.ll`）⇒ 目标文件 ⇒ 可部署的 ELF。

```text
forward.ll ─ riscvc llc ─▶ forward.s / forward.o ─ riscvc ld -T link.ld ─▶ ccu.elf
crt.S      ─ riscvc as  ─▶ crt.o ──────────────────┘
                              riscvc objdump ◀── 任何 RV32IMF ELF
```

## 范围

- 指令集：**只做 RV32IMF + Zicsr**（ABI ilp32f），即 CCU 标量核声明的 `rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0`。
  ⛔ 不做宽指令、xcalculet、xthead*、压缩指令（C）、双精度（D）。
- 输入：LLVM IR 文本（`.ll`，LLVM 22 的写法）与 GNU 汇编（`.s`；`.S` 只认简单的 `#if` / `#ifdef` / `#define`）。
- ⛔ 不是 C / C++ 前端：源码 ⇒ IR 仍由上游（MLIR、clang）给。

## 组成

| 模块 | 做什么 |
| --- | --- |
| `src/isa/` | 一张指令表（宏展开）：编码、译码、按 LLVM 的写法打印（含别名） |
| `src/asm/` | GNU 汇编器：指令、伪指令、伪操作、`%hi` / `%lo` / `%pcrel_*` 重定位 ⇒ ELF 目标文件（`object` crate 写） |
| `src/link/` | 链接器：链接脚本子集（`ENTRY`、`SECTIONS`、`.`、`ALIGN`、`/DISCARD/`）、RISC-V 重定位 |
| `src/ir/` | LLVM IR 文本解析 |
| `src/codegen/` | IR ⇒ RV32IMF：类型合法化（i64 拆对）、指令选择、`regalloc2` 寄存器分配、栈帧、出汇编 |

第三方：`object`（ELF 读写）、`regalloc2`（Cranelift 的寄存器分配器）、`clap`、`thiserror`，都是纯 Rust。

## 判据

LLVM（`jw238/docc/llvm-project/build/bin`）只当**对照**，⛔ 不是依赖：

- 汇编器：同一份 `.s`，`riscvc as` 与 `llvm-mc` 出的节字节、重定位逐项相同。
- 反汇编：同一份 ELF，`riscvc objdump` 与 `llvm-objdump` 逐行相同。
- 链接器：同一组目标文件与链接脚本，`riscvc ld` 与 `ld.lld` 出的段字节相同。
- 代码生成：同一份 `.ll`，`riscvc llc` 与 `llc` 编出的程序在同一个 RV32IMF 解释器里跑，输出相同。

## 构建

```bash
cargo build --release
cargo test
```

## 状态

开发中，各模块的完成情况与对拍结果在下面逐项更新。
