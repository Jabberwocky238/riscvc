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

- 指令集：核心只有 **RV32I**；M / Zmmul / F / Zicsr 与玄铁 XThead* 是扩展（`src/feature/`，按 cargo feature 开），
  缺省 = CCU 标量核声明的 `rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0`（ABI ilp32f）。
  ⛔ 不做压缩指令（C）、双精度（D）、向量（V / XTheadVdot）；专用指令（xcalculet 等）在下游经扩展接口挂进来。
- 输入：MLIR `llvm` 方言（通用形式）与 GNU 汇编（`.s`；`.S` 只认简单的 `#if` / `#ifdef` / `#define`）。
  从 LLVM IR 来：`mlir-translate --import-llvm x.ll | mlir-opt --mlir-print-op-generic`。
- ⛔ 不是 C / C++ 前端。

## 组成

| 模块 | 做什么 |
| --- | --- |
| `src/isa/` | 指令表的通用部分（`Table` / `Layout`：按格式编码、译码、打印、汇编）与 RV32I 的格式和表 |
| `src/ext/` | 扩展器：`Extension`（自定义指令：译码 / 打印 / 汇编 / 执行）、`Device`（MMIO）、`Std<表>` |
| `src/feature/` | 扩展（一个文件夹一个 cargo feature）：`zmmul` `m` `f` `zicsr`、`xthead/<名>`；各自的表、格式、语义、伪指令模板 |
| `macros/` | 过程宏包 `riscvc-macros`：`#[derive(Isa)]` 写指令表、`#[derive(Opcode)]` 操作码并集 |
| `src/asm/` | GNU 汇编器：指令、伪指令、伪操作、`%hi` / `%lo` / `%pcrel_*` 重定位 ⇒ ELF 目标文件（`object` crate 写） |
| `src/link/` | 链接器：链接脚本子集（`ENTRY`、`SECTIONS`、`.`、`ALIGN`、`/DISCARD/`）、RISC-V 重定位 |
| `src/llvm/` | `llvm` 方言插件：`mlirformat tblgen` 从 LLVMOps.td / LLVMIntrinsicOps.td 生成的 op 结构体 + 手写的类型参数钩子 |
| `src/ir/` | 内部 IR（块参数、常量即 op）：从 mlirformat 的模块转来；类型与 RV32 布局 |
| `src/codegen/` | 指令选择（值拆 32 位部件；i64 / double 软实现）、`regalloc2`、栈帧、出汇编、全局数据 |
| `src/plugin/` | 插件接口（照 MLIR 的 Dialect / Pass）：方言注册语法并把本方言的 op 下降成内部 IR，pass 在内部 IR 上变换 |
| `src/sim/` | RV32I 解释器（扩展指令的语义经 `Extension` 执行；对拍用） |
| `src/cli/` | 命令行：一条子命令一个目录（`as` / `ld` / `objdump` / `llc`） |

第三方：`mlirformat`（MLIR 文本）、`object`（ELF 读写）、`regalloc2`（Cranelift 的寄存器分配器）、`clap`、`thiserror`，都是纯 Rust。

## 插件

照 MLIR 的 Dialect / DialectRegistry / Pass / PassManager，⛔ 静态注册（编进二进制，不加载 `.so`）：

```rust
struct Demo;                                   // `demo.mac a, b, c` = a × b + c
impl Dialect for Demo {
    fn namespace(&self) -> &str { "demo" }
    fn lower(&self, cx: &mut Lowering<'_, '_>) -> Result<(), Error> {
        let [a, b, c] = cx.operands()?[..] else { … };
        let [r] = cx.results()?[..] else { … };
        let t = cx.temp(cx.type_of(a));
        cx.emit(Some(t), Op::Bin(BinOp::Mul, a, b));
        cx.emit(Some(r), Op::Bin(BinOp::Add, t, c));
        Ok(())
    }
}
let mut reg = Registry::default();             // 内置：llvm 方言、dce
reg.dialect(&Demo).pass(&MyPass);
let mut m = reg.parse(text)?;                  // 函数体里的 op 按命名空间交给方言
reg.run(&mut m, &["dce"])?;                    // 按名字跑 pass
let asm = m.compile()?;
```

- 方言：`register` 向 mlirformat 注册自定义形式（缺省只认通用形式），`lower` 出内部指令（可多条、可开临时值）。
  只管函数体里的 op；顶层（函数、全局）仍是 `llvm` 方言的。
- 命令行：`riscvc llc x.mlir --pass dce -o x.o`；`riscvc llc --list-plugins` 列出注册的方言与 pass。
- 例子见 `tests/plugin.rs`。

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
cargo build --release --no-default-features --features zicsr               # rv32i：无 M、无 F（软浮点）
```

一个 feature = 一个编译选项 = 一个目标扩展（`Cargo.toml`），`default` = `m`、`f`；组件（汇编器、链接器、代码生成、命令行 …）总在：

| feature | 是什么 | 关掉之后 |
| --- | --- | --- |
| `m` | M 扩展（蕴含 `zmmul`） | 汇编器不认 `div` / `rem*`、译码印 `<unknown>`；代码生成调 `__divsi3` 一类 |
| `zmmul` | 只有乘法 | 同上，`mul` / `mulh*` 调 `__mulsi3` / `__muldi3` |
| `f` | F 扩展 + ilp32f（蕴含 `zicsr`） | 汇编器 / 译码不认浮点指令，`e_flags` 不带单精度 ABI；代码生成走 ilp32 + 软浮点（`__addsf3` 一类） |
| `zicsr` | CSR 指令 | 不认 `csr*` 与 `frcsr` 一类伪指令 |
| `xthead` | 玄铁全部（下面十个） | — |
| `xtheadba` `xtheadbb` `xtheadbs` `xtheadcmo` `xtheadcondmov` `xtheadfmemidx`（蕴含 `f`） `xtheadmac` `xtheadmemidx` `xtheadmempair` `xtheadsync` | 玄铁厂商扩展（LLVM 认的 RV32 标量部分），缺省不开 | 汇编器 / 译码不认；代码生成不用它们 |

`.riscv.attributes` 的架构串（`feature::Target::march()`）与对照用的 `-mattr`（`feature::Target::mattr()`）都从开了的扩展推出来。

写一个扩展：`#[derive(Isa)]` 一张表（每行 `#[isa("助记符", 格式, 固定位, exec = 语义)]`，表头可挂 `#[pseudo(…)]`
伪指令模板、`alias = 打印别名`、`form = 格式类型`），格式不够就在扩展里实现一个 `isa::Layout`，再用 `ext::Std<表>` 包成扩展。
最小样板见 `src/feature/zmmul/`，自带格式的见 `src/feature/xthead/`。

## 测试与语料

```bash
tools/corpus.sh          # compiler-rt builtins ⇒ target/corpus/{s,ll,mlir}（要对照用的 LLVM：../llvm-project/build/bin）
tools/programs.sh        # 重新生成 tests/fixtures/{unit,builtins,support.o}（入库）
tools/fixtures.py        # 重新生成 tests/fixtures/mc（入库）
cargo test --release     # 没有语料或 LLVM 的测试说 SKIP 并照过
```

入库的 fixture（`tests/fixtures/`，取自 llvm-project）：

| 目录 | 内容 | 对拍 |
| --- | --- | --- |
| `unit/` | compiler-rt builtins 单元测试 163 个（C 源 + O0 / O2 的 `.ll` / `.mlir`，有 main、自检） | `tests/elf_vs_llvm.rs`：llc + ld.lld 与 riscvc llc + riscvc ld 各链一个 ELF，解释器里从 main 跑，比返回值 |
| `builtins/` | 被测的 compiler-rt builtins（O2 的 `.ll` / `.mlir`），两边各编各的 | 同上 |
| `support.o` | 两边共用的最小 libc 桩（`tests/support/`） | — |
| `mc/` | `llvm/test/MC/RISCV`、`lld/test/ELF/riscv-*` 里 llvm-mc 在 rv32imf 上接受的部分（范围外的先注释掉） | `tests/as_vs_llvm.rs`：与 llvm-mc 的目标文件逐节、逐重定位比 |

## 状态（2026-10-14）

| 部分 | 对拍结果 |
| --- | --- |
| 译码 / 打印 | 20 万随机字 × 三种风格，与 llvm-objdump 逐条相同 |
| 汇编器 | compiler-rt 334 份（O0 / O2，`-mno-relax`）与 llvm-mc 节字节、重定位、全局符号全同；docc 的 crt 与 clang -c 相同 |
| 链接器 | compiler-rt 167 个目标文件 × docc 的两种脚本，与 ld.lld 的可装载节（含 0 字节的；类型、标志、项长、字节）、程序头（含 `PT_GNU_RELRO`、`PT_RISCV_ATTRIBUTES`）、入口、全局符号全同；libdope `LoadedElf` 接受。llvm-mc `+relax` 出的目标文件能链（`R_RISCV_RELAX` / `R_RISCV_ALIGN` 当空操作），但与 lld 字节不同：见「未做」 |
| MLIR 解析 | 334 份通用形式 `.mlir` 全部解析、转成内部 IR |
| 代码生成 | 334 份全部编过；O0 / O2 各 97 个标量签名的函数、各 4656 次调用，与 llc 的结果全同（C 源里的未定义行为不比） |
| 端到端 ELF | builtins 单元测试 163 个：除 fp128 的 2 个（范围外，跳过），O0 / O2 全部与 llvm 一致 |
| MC fixture | 279 份里 272 份与 llvm-mc 一致；差的是长分支松弛（`.fill` 撑开的条件分支）、子节（`.text 1`）、不带符号的 `.reloc`、跨节 `.uleb128` 的 SET/SUB_ULEB128 |

未做：linker relaxation（`call` ⇒ `jal`、按 `R_RISCV_ALIGN` 删多余的 nop；lld 即使 `--no-relax` 也删 nop）、
`SHF_MERGE` 节的去重（lld 会合并重复的串 / 常量）；返回值放不进寄存器（sret 降级）、栈上传参的被测覆盖、`cmpxchg`、i128 / fp128、向量运算；
代码质量（窥孔、跳转表、常量复用）还没和 llc 比过；没上过板。
