# riscvc

```bash
cargo add riscvc                 # library
cargo install riscvc             # the `riscvc` command-line tool
```

[![crates.io](https://img.shields.io/crates/v/riscvc.svg)](https://crates.io/crates/riscvc)
[![docs.rs](https://img.shields.io/docsrs/riscvc)](https://docs.rs/riscvc)
[![license](https://img.shields.io/crates/l/riscvc.svg)](LICENSE)

A pure-Rust RV32IMF toolchain — **no LLVM, no MLIR, no C++ at build time or run time**. It replaces the
downstream half of an MLIR flow (`mlir-translate` + `llc` + `ld.lld`): it takes the MLIR `llvm` dialect, emits
RV32 assembly or object files, and links them into a loadable ELF. Alongside the compiler it ships a GNU-style
assembler, a linker, a disassembler and an instruction-level simulator, all cross-checked byte-for-byte against
their LLVM counterparts.

```text
forward.mlir ─ riscvc llc ─▶ forward.s / forward.o ─ riscvc ld -T link.ld ─▶ app.elf
crt.S        ─ riscvc as  ─▶ crt.o ──────────────────┘
                                riscvc objdump ◀── any RV32IMF ELF
                                riscvc::sim     ◀── run it in-process
```

> The crates.io release lags behind `main`. To get the latest code:
> `cargo add riscvc --git https://github.com/Jabberwocky238/riscvc` or
> `cargo install --git https://github.com/Jabberwocky238/riscvc riscvc`.

## Table of contents

- [Why](#why)
- [Reference toolchain: LLVM 22.1.8](#reference-toolchain-llvm-2218)
- [Scope](#scope)
- [Quick start (command line)](#quick-start-command-line)
- [Command-line reference](#command-line-reference)
- [Library usage](#library-usage)
- [Plugins: dialects and passes](#plugins-dialects-and-passes)
- [Writing an ISA extension](#writing-an-isa-extension)
- [Cargo features](#cargo-features)
- [Correctness: how it is checked](#correctness-how-it-is-checked)
- [Status](#status)
- [Building and testing](#building-and-testing)
- [Limitations and non-goals](#limitations-and-non-goals)
- [License](#license)

## Why

Shipping an MLIR → RISC-V pipeline normally means shipping an LLVM build (hundreds of MB, a C++ toolchain, version
skew between `mlir-opt`, `llc` and `ld.lld`). `riscvc` covers the part after your own MLIR passes with a single
statically linked Rust binary or a library call, so that:

- the backend can be embedded directly into a Rust host (compile, link and load in-process, no temp files);
- custom instructions (accelerator ops, vendor extensions) are added in Rust, in one place, and are understood by
  the assembler, the disassembler and the simulator at the same time (⚠ not the code generator yet — its IR and
  instruction-selection enums are closed; see [Limitations](#limitations-and-non-goals));
- results stay reproducible: every component is diffed against the LLVM tool it replaces (see
  [Correctness](#correctness-how-it-is-checked)).

## Reference toolchain: LLVM 22.1.8

`riscvc` targets **LLVM 22.1.8** (tag `llvmorg-22.1.8`). "Identical" everywhere in this README means identical to
the tools of that release, run with `--target=riscv32-unknown-elf -march=rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0 -mabi=ilp32f` (or the `-mattr`
derived from the enabled features):

| riscvc | Replaces (LLVM 22.1.8) |
| --- | --- |
| `riscvc llc` | `mlir-translate --mlir-to-llvmir` + `llc` |
| `riscvc as` | `llvm-mc -filetype=obj` / `clang -c x.s` |
| `riscvc ld` | `ld.lld` (default options, incl. `-z relro`, `-O1` merge, relaxation) |
| `riscvc objdump` | `llvm-objdump -d` |
| MLIR input | `mlir-opt --mlir-print-op-generic` output of the LLVM 22 `llvm` dialect (op definitions from [mlirformat](https://crates.io/crates/mlirformat), generated from that release's `LLVMOps.td` / `LLVMIntrinsicOps.td`) |

Behaviour of other LLVM versions (older relaxation rules, different section defaults, changed dialect ops) is not
tracked. The comparison corpus is the compiler-rt builtins and the MC / lld RISC-V tests of the same release.

## Scope

| | Supported | Not supported |
| --- | --- | --- |
| ISA | RV32I base; M, Zmmul, F, Zicsr; C (compressed, incl. `c.flw` / `c.fsw` / `c.flwsp` / `c.fswsp`; off by default); ten T-Head (XuanTie) `XThead*` scalar extensions — each one a Cargo feature | D (double precision; `double` is lowered to soft-float calls), V / XTheadVdot, Zcb / Zcmp |
| ABI | `ilp32f` (with `f`), `ilp32` + soft-float (without `f`) | `ilp32d`, `lp64*` |
| Default target | `rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0`, ABI `ilp32f` | |
| Compiler input | MLIR `llvm` dialect in **generic form** (`mlir-opt --mlir-print-op-generic`); higher-level dialects (`func`, `arith`, `scf`, `cf`, `memref`, `math`, `index`, `affine`, `ub`) in any form, lowered in-process by [mlirpass](#higher-level-dialects-mlirpass) | C / C++ (this is not a front end); `vector`, `tensor`, `linalg` (bufferize / lower them first) |
| Assembler input | GNU assembly (`.s`); `.S` with a simple preprocessor (`#if`, `#ifdef`, `#define`) | full C preprocessor, macros beyond that |
| Linker | linker-script subset (`ENTRY`, `SECTIONS`, `.`, `ALIGN`, `/DISCARD/`, assignments), static executables, RISC-V relocations, linker relaxation, `SHF_MERGE` deduplication | shared objects, dynamic linking, TLS relaxation |
| Output | ELF32 little-endian object files and executables | other formats |

About the generic form: 19 LLVM-dialect ops (`llvm.func`, `llvm.call`, `llvm.icmp`, `llvm.getelementptr`,
`llvm.mlir.global`, …) have hand-written custom assembly formats that [mlirformat](https://crates.io/crates/mlirformat)
does not parse, so they must be in generic form. The other 61 ops are accepted in either form. Printing the whole
module with `--mlir-print-op-generic` is the simplest rule to follow.

### Higher-level dialects: mlirpass

A module with ops outside `llvm` / `builtin` / a registered plugin dialect is first lowered to the `llvm` dialect by
[mlirpass](https://github.com/Jabberwocky238/mlirpass) (pure Rust, checked against `mlir-opt` 22.1.8), in the same
process, with the pipeline `riscvc::plugin::LOWERING`:

```text
lower-affine, convert-scf-to-cf, convert-math-to-llvm, convert-math-to-libm, expand-strided-metadata,
finalize-memref-to-llvm, convert-{arith,index,cf,func,ub}-to-llvm (all index-bitwidth=32), reconcile-unrealized-casts
```

`index` is 32 bits (RV32). `riscvc llc --lowering '<pipeline>'` / `Registry::lowering` replace the pipeline
(`mlir-opt --pass-pipeline` syntax, any mlirpass pass). A module that is already all `llvm` dialect does not go
through mlirpass. `memref.alloc` lowers to `malloc` / `free` calls and `math` ops without an LLVM intrinsic to libm
calls: link those yourself. Example: [`tests/mlirpass.rs`](tests/mlirpass.rs).

Coming from LLVM IR instead of MLIR:

```bash
mlir-translate --import-llvm x.ll | mlir-opt --mlir-print-op-generic > x.mlir
```

### Rust as the front end

`rustc` (stable **1.98.1**, whose LLVM is 22.1.8) emits LLVM IR; `riscvc` does the rest. `tools/rust-build.sh` builds
a `no_std`, `panic = "abort"` Cargo project for `riscv32imafc-unknown-none-elf` minus `a` / `c` (= riscvc's default
rv32imf + zicsr, `ilp32f`) with `-Zbuild-std=core`, converts every crate's IR to generic-form MLIR, compiles them with
`riscvc llc -j`, and links them with a start-up stub (set `sp`, call the entry, `ebreak`) into an ELF:

```bash
tools/rust-build.sh path/to/Cargo.toml <entry function> app.elf [O0|O2]
```

- `core` and the runtime `tests/rust/rt` are compiled by riscvc too. The runtime provides the single-core
  `__atomic_*` functions that `core` calls when there is no A extension (plain loads and stores; not for multi-core
  or interrupt handlers).
- `compiler_builtins` (soft-float, `f128`, `memcpy` …) is compiled by riscvc as well; `RISCVC_BUILTINS=llc`
  compiles that one crate with `llc` instead (for bisecting).
- Not supported from Rust: inline assembly other than the empty `asm!("")` that `core::hint::black_box` uses,
  `global_asm!`, unwinding (`panic = "unwind"`), `std`.
- The upstream sources are pinned as the super-repository submodule `jw238/rust` (tag `1.98.1`); the scripts check
  that rustup's `rust-src` is identical to it.

## Quick start (command line)

A function in MLIR (`add.mlir`):

```mlir
"llvm.func"() <{function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add"}> ({
^bb0(%a: i32, %b: i32):
  %r = "llvm.add"(%a, %b) : (i32, i32) -> i32
  "llvm.return"(%r) : (i32) -> ()
}) : () -> ()
```

A start-up stub (`crt.S`):

```asm
    .section .text.start
    .globl _start
_start:
    lui   sp, %hi(__stack_top)
    addi  sp, sp, %lo(__stack_top)
    li    a0, 2
    li    a1, 40
    call  add
1:  j     1b
```

A linker script (`link.ld`):

```ld
ENTRY(_start)
SECTIONS {
  . = 0x10000;
  .text : { *(.text.start) *(.text*) }
  .data : { *(.data*) *(.sdata*) }
  .bss  : { *(.bss*) *(.sbss*) }
  . = ALIGN(16);
  . = . + 0x1000;
  __stack_top = .;
}
```

Build and inspect:

```bash
riscvc llc add.mlir -o add.s            # assembly (look at what the compiler did)
riscvc llc add.mlir -o add.o            # or straight to an object file
riscvc as  crt.S -o crt.o
riscvc ld  -T link.ld crt.o add.o -o app.elf
riscvc objdump app.elf
```

```text
app.elf:	file format elf32-littleriscv

Disassembly of section .text:

00010000 <_start>:
   10000: 00011137     	lui	sp, 0x11
   10004: 03010113     	addi	sp, sp, 0x30
   10008: 00200513     	li	a0, 0x2
   1000c: 02800593     	li	a1, 0x28
   10010: 00000097     	auipc	ra, 0x0
   10014: 00c080e7     	jalr	0xc(ra)
   10018: 0000006f     	j	0x10018

0001001c <add>:
   1001c: 00b50533     	add	a0, a0, a1
   10020: 00008067     	ret
```

The output format matches `llvm-objdump -d`, so existing diff-based workflows keep working.

## Command-line reference

`riscvc <COMMAND>`; every subcommand accepts `-h` / `--help`.

### `riscvc as` — assembler (like `llvm-mc -filetype=obj` / `clang -c x.s`)

```text
riscvc as [OPTIONS] -o <OUTPUT> <INPUT>
```

| Option | Meaning |
| --- | --- |
| `-o <OUTPUT>` | object file to write |
| `-D NAME[=VALUE]` | preprocessor define for `.S` input (repeatable; value defaults to `1`) |
| `-I <DIR>` | search directory for `.incbin` (repeatable; the input's own directory is always searched) |
| `--preprocess` | treat the input as `.S` regardless of its extension (by default only an upper-case `.S` is preprocessed) |
| `--soft-float` | `-mabi=ilp32`: do not set `EF_RISCV_FLOAT_ABI_SINGLE` (default follows the `f` feature) |
| `--arch-attribute <ARCH>` | write a `.riscv.attributes` section with this arch string, like `clang -c` does |
| `--no-relax` | `-mno-relax`: emit no `R_RISCV_RELAX` / `R_RISCV_ALIGN` (default is relaxation on, like `llvm-mc` for riscv32) |

Supported: all base / enabled-extension instructions and their standard pseudo-instructions (`li`, `la`, `call`,
`tail`, `mv`, `not`, `neg`, `seqz`, `beqz`, `j`, `ret`, `fmv.s`, `csrr`, …), `%hi` / `%lo` / `%pcrel_hi` /
`%pcrel_lo` and friends, numeric local labels (`1b` / `1f`), the usual data and section directives
(`.section`, `.text` / `.data` / `.bss` / `.rodata`, `.byte` … `.quad`, `.ascii` / `.asciz` / `.string`, `.zero`,
`.fill`, `.space`, `.p2align` / `.balign` / `.align`, `.globl` / `.local` / `.weak`, `.type`, `.size`, `.set` /
`.equ`, `.comm` / `.lcomm`, `.incbin`, `.option`, `.attribute`, `.reloc`, `.uleb128` / `.sleb128`).

### `riscvc ld` — linker (like `ld.lld`)

```text
riscvc ld [OPTIONS] -o <OUTPUT> [INPUTS]...
```

| Option | Meaning |
| --- | --- |
| `-o <OUTPUT>` | executable to write |
| `-T <SCRIPT>` | linker script |
| `-e <ENTRY>` | entry point: symbol name or address |
| `-s` | strip the symbol table |
| `--allow-undefined` | resolve undefined symbols to 0 (like `--unresolved-symbols=ignore-all`) |
| `--no-relax` | disable `call` → `jal` and `lui` relaxation; `R_RISCV_ALIGN` nop removal still happens (same as `ld.lld --no-relax`) |

Behaviour follows `ld.lld` defaults: orphan-section placement and naming, output-section flag merging
(`SHF_MERGE` / `SHF_STRINGS` kept, `SHF_GROUP` dropped), entry-size propagation, RELRO segments (`-z relro`),
`PT_RISCV_ATTRIBUTES`, removal of empty `PT_LOAD`s, `SHF_MERGE` string / constant deduplication (lld `-O1`,
`MergeNoTailSection`, same xxh3-based sharding), and RISC-V linker relaxation (`R_RISCV_ALIGN`,
`CALL` / `CALL_PLT` → `jal` within ±1 MiB, `HI20` / `LO12` → `x0`-relative when the value fits in 12 bits).

### `riscvc objdump` — disassembler (like `llvm-objdump -d`)

```text
riscvc objdump [OPTIONS] <INPUT>
```

| Option | Meaning |
| --- | --- |
| `-M no-aliases` | print canonical instructions instead of pseudo-instructions (`jalr x0, 0(x1)` instead of `ret`) |
| `-M numeric` | print `x10` instead of `a0` (combine with a comma: `-M no-aliases,numeric`) |
| `--no-print-imm-hex` | print immediates in decimal (default is hexadecimal, like llvm-objdump) |

Undecodable words print as `<unknown>`, again matching llvm-objdump.

### `riscvc llc` — compiler (like `mlir-translate --mlir-to-llvmir | llc`)

```text
riscvc llc [OPTIONS] -o <OUTPUT> <INPUTS>...
```

| Option | Meaning |
| --- | --- |
| `-o <OUTPUT>` | one input: the output file (a `.o` extension produces an object file, anything else assembly); several inputs: a directory, one `<input name>.o` (or `.s`) each |
| `--emit <asm\|obj>` | what to produce (default: from the `-o` extension for one input, `obj` for several) |
| `-j, --jobs <N>` | worker threads (default: number of CPUs) |
| `--pass <NAME>` | run a pass on the internal IR before code generation (repeatable, runs in order) |
| `--lowering <PIPELINE>` | mlirpass pipeline lowering higher-level dialects to `llvm` (default `riscvc::plugin::LOWERING`) |
| `--list-plugins` | list registered dialects and passes |
| `--no-relax` | object output without `R_RISCV_RELAX` / `R_RISCV_ALIGN` (like `llc -mattr=-relax`; default on, like llc) |

Built-in plugins: dialect `llvm`; pass `dce` (removes side-effect-free instructions whose results are unused).

Parallelism: inputs are parsed in parallel, and each module is split into contiguous runs of functions (balanced by
instruction count) that are compiled in parallel and concatenated in order, so the output is **byte-identical** to a
serial (`-j 1`) build (checked by `tests/cli.rs`). Functions outside a run are kept as declarations, globals go
with the last run. Measured on a 16-thread machine under load: 656 input files 0.37 s → 0.15 s (`-j 1` → `-j 16`);
for a single 1,244-function module code generation goes 78 ms → 16 ms, but the whole run is dominated by the serial
parts (MLIR parsing ≈ 65 ms, conversion ≈ 65 ms, assembling ≈ 100 ms), so `-j` matters mostly for many inputs.

## Library usage

Every component is a plain function over byte slices, so the whole pipeline can run in memory.

```rust
use riscvc::asm::{Assembler, Options as AsmOptions};
use riscvc::link::{Linker, Options as LinkOptions};
use riscvc::plugin::Registry;
use riscvc::sim::{Cpu, Stop};

let mlir = std::fs::read_to_string("add.mlir")?;

// 1. MLIR -> assembly text
let reg = Registry::default();                          // llvm dialect + dce pass
let mut module = reg.parse(&mlir)?;
reg.run(&mut module, &["dce"])?;
let asm: String = module.compile()?;

// 2. assembly -> ELF object file
let obj: Vec<u8> = Assembler::new(AsmOptions::default()).assemble(&asm)?;

// 3. object files -> executable
let script = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n}\n";
let elf: Vec<u8> = Linker::link(
    LinkOptions { script: Some(script.into()), ..Default::default() },
    &[("add.o", obj.as_slice())],
)?;

// 4. run a function in the simulator
let mut cpu = Cpu::default();
cpu.load(&elf)?;
cpu.x[2] = 0x7ff0_0000;                                 // sp
cpu.x[10] = 2;                                          // a0
cpu.x[11] = 40;                                         // a1
assert_eq!(cpu.run(0x10000, 0x0fff_fff0, 1_000), Stop::Returned);
assert_eq!(cpu.x[10], 42);
```

Main entry points:

| Item | Purpose |
| --- | --- |
| `riscvc::plugin::Registry` | parse MLIR (`parse`), run passes by name (`run`), register dialects / passes |
| `riscvc::ir::Module::compile` | internal IR → RV32 assembly text |
| `riscvc::asm::Assembler` | assembly text → ELF object (`Options`: float ABI, preprocessing, defines, include dirs, attributes, relax); `.extensions(&[…])` adds custom instructions |
| `riscvc::link::Linker::link` | `(name, bytes)` objects → executable ELF (`Options`: script, entry, strip, allow-undefined, no-relax) |
| `riscvc::ext::Disasm` | iterator of disassembled lines over a code buffer, with optional extensions and a print `Style` |
| `riscvc::sim::Cpu` | RV32 interpreter: `load` an ELF, `run` / `step`, or `run_on` / `step_on` with custom extensions and MMIO `Device`s; registers `x`, `f`, `pc`, `csr`, sparse `mem` |
| `riscvc::ext::{Extension, Device}` | traits for custom instructions and memory-mapped devices |
| `riscvc::feature::Target` | the enabled extensions: `march()` (attribute arch string) and `mattr()` (LLVM `-mattr`) |
| `riscvc::elf::Elf` | ELF32 read (`TryFrom<&[u8]>`) / write (`pack(Layout::Verbatim \| Canonical)`); `Attributes` for `.riscv.attributes`-style sections; the only module without `toolchain` |
| `riscvc::macros::{Isa, Opcode}` | derive macros for instruction tables (re-exported from `riscvc-macros`) |

`riscvc::sim::Stop` tells why execution stopped: `Returned` (reached the return address), `Trap(word)`
(`unimp` / `ebreak` / `ecall` / undecodable word) or `Limit` (step budget exhausted).

## Plugins: dialects and passes

Modelled on MLIR's `Dialect` / `DialectRegistry` / `Pass` / `PassManager`. Plugins are registered **statically** (compiled
into your binary; nothing is `dlopen`ed).

```rust
use riscvc::ir::{BinOp, Error, Op};
use riscvc::plugin::{Dialect, Lowering, Registry};

/// `demo.mac a, b, c` = a * b + c
struct Demo;

impl Dialect for Demo {
    fn namespace(&self) -> &str { "demo" }

    fn lower(&self, cx: &mut Lowering<'_, '_>) -> Result<(), Error> {
        let [a, b, c] = cx.operands()?[..] else { return Err(Error::Parse("demo.mac takes 3 operands".into())) };
        let [r] = cx.results()?[..] else { return Err(Error::Parse("demo.mac has 1 result".into())) };
        let t = cx.temp(cx.type_of(a));
        cx.emit(Some(t), Op::Bin(BinOp::Mul, a, b));
        cx.emit(Some(r), Op::Bin(BinOp::Add, t, c));
        Ok(())
    }
}

let mut reg = Registry::default();      // built-in: llvm dialect, dce pass
reg.dialect(&Demo);                     // .pass(&MyPass) for passes
let mut m = reg.parse(text)?;           // ops inside function bodies go to the dialect owning their namespace
reg.run(&mut m, &["dce"])?;             // passes are selected by name
let asm = m.compile()?;
```

- `Dialect::register` may register custom assembly formats with mlirformat (by default only the generic form is
  parsed); `Dialect::lower` emits internal-IR instructions (any number, temporaries allowed).
- A dialect only handles ops inside function bodies; top-level ops (functions, globals) stay in the `llvm` dialect.
- `Pass::run(&self, &mut Module)` transforms the internal IR; `Pass::summary` is shown by `--list-plugins`.
- Full working example (compile, link and execute): [`tests/plugin.rs`](tests/plugin.rs).

## Writing an ISA extension

Instructions are described by a table: one enum variant per instruction, one attribute line each.
`#[derive(Isa)]` generates encoding, decoding, printing, assembling and the simulator dispatch. The smallest
real example is the Zmmul extension:

```rust
use riscvc::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "zmmul", feature = "zmmul")]
pub enum Zmmul {
    #[isa("mul", R, 0x0200_0033, exec = |c, i| c.set(i.rd, c.x(i.rs1).wrapping_mul(c.x(i.rs2))))]
    Mul,
    #[isa("mulhu", R, 0x0200_3033, exec = |c, i| c.set(i.rd, ((u64::from(c.x(i.rs1)) * u64::from(c.x(i.rs2))) >> 32) as u32))]
    Mulhu,
    // ...
}
```

- Each row is `#[isa("mnemonic", Format, fixed_bits, exec = semantics)]`; `exec` gets an `Exec` context
  (`x`, `set`, `f`, `fset`, `csr`, `load`, `store`, …) and the decoded instruction.
- On the enum: `#[pseudo(...)]` pseudo-instruction templates, `alias = …` print aliases, `form = …` a custom
  format type.
- If the standard formats (R / I / S / B / U / J / R4 …) are not enough, implement `riscvc::isa::Layout` for your
  own format — see [`src/feature/xthead/`](src/feature/xthead/).
- Wrap the table as `riscvc::ext::Std<YourTable>` to obtain a `Module`, then hand it to
  `Assembler::modules`, `Disassembler::modules` and `Cpu::run_on`.
- A `Module` is an extension pack: it is `Assemble + Disassemble` plus a name and `execute`. The two halves are
  **duals** (`assemble` turns mnemonic + operands into bytes, `disassemble` turns bytes back), with the law
  `disassemble(assemble(x)) == x`; a `#[derive(Isa)]` table gives both at once, which is why the common case
  only writes the table.
- For instructions that do not fit a table at all, implement `Assemble` / `Disassemble` / `Module` by hand.
  Memory-mapped peripherals implement `Device` (`load` / `store`).

## Cargo features

`toolchain` *(default)* is the toolchain itself (compiler, assembler, linker, disassembler, simulator, CLI). Every
other feature is one target extension, exactly like a `-march` component. With `default-features = false` and no
`toolchain`, only `riscvc::elf` is left: the ELF32 little-endian RISC-V read/write model, `no_std` + `alloc`,
depending on `thiserror` only.

| Feature | What it is | When disabled |
| --- | --- | --- |
| `m` *(default)* | M extension (implies `zmmul`) | assembler rejects `div` / `rem*`, disassembler prints `<unknown>`, simulator traps; codegen calls `__divsi3` & co. |
| `zmmul` | multiply only | same, for `mul` / `mulh*`; codegen calls `__mulsi3` / `__muldi3` |
| `f` *(default)* | F extension + `ilp32f` ABI (implies `zicsr`) | no float instructions, `e_flags` without single-float ABI; codegen uses `ilp32` + soft-float (`__addsf3` & co.) |
| `zicsr` | CSR instructions | `csr*` and `frcsr`-style pseudo-instructions rejected |
| `c` | C: 16-bit compressed instructions (`-march` gains `c2p0_zca1p0[_zcf1p0]`, objects get `EF_RISCV_RVC`); off by default | assembler / disassembler / simulator reject 16-bit encodings, nothing is compressed |
| `xthead` | all ten T-Head extensions below | — |
| `xtheadba`, `xtheadbb`, `xtheadbs`, `xtheadcmo`, `xtheadcondmov`, `xtheadfmemidx` (implies `f`), `xtheadmac`, `xtheadmemidx`, `xtheadmempair`, `xtheadsync` | T-Head vendor extensions (the RV32 scalar parts LLVM supports); off by default | assembler / disassembler do not know them; codegen never uses them |

```toml
# plain rv32i with soft-float
riscvc = { version = "0.2", default-features = false, features = ["toolchain", "zicsr"] }

# only the ELF model (no_std)
riscvc = { version = "0.2", default-features = false }

# defaults plus all T-Head extensions
riscvc = { version = "0.2", features = ["xthead"] }
```

The `.riscv.attributes` arch string (`feature::Target::march()`) and the LLVM `-mattr` string used for comparisons
(`feature::Target::mattr()`) are derived from the enabled features.

## Correctness: how it is checked

LLVM is used **only as a reference** in tests, never as a dependency. Each component is diffed against the tool
it replaces:

| Component | Criterion |
| --- | --- |
| Assembler | same `.s` → `riscvc as` and `llvm-mc` produce identical section bytes, relocations and global symbols |
| Disassembler | same ELF → `riscvc objdump` and `llvm-objdump` print identical lines |
| Linker | same objects + script → `riscvc ld` and `ld.lld` produce identical loadable sections (type, flags, entry size, bytes), program headers, entry point and global symbols |
| Code generator | `llc` compiles the `.ll`, `riscvc llc` compiles the `.mlir` converted from it; both are linked and run in `riscvc::sim` with the same arguments; return values and memory behind pointer arguments must match |
| End to end | compiler-rt builtins unit tests (which have `main` and self-check) are built both ways and run to completion; exit codes must match |
| LLVM's own tests | `llvm/test/CodeGen/RISCV/*.ll`, `mlir/test/Target/LLVMIR/Import/*.ll` and `mlir/test/Target/LLVMIR/*.mlir` (1,080 files) converted to generic-form `.mlir`, with llc's object file checked in: every function is compiled in isolation and, if it has a scalar signature, called with the same random arguments on both sides (return value, memory behind pointer arguments, global data objects). Expected failures are listed with a reason in `tests/fixtures/lit/xfail.txt`; an unlisted failure *and* a listed function that now passes both fail the test. Needs no LLVM at test time |
| Rust front end | `tests/rust_vs_llc.rs`: rustc's IR for `tests/rust/src/lib.rs` (36 `extern "C"` entry points: iterators, sorting, `u128`, checked / saturating arithmetic, `dyn` traits, `core::fmt`, structs passed and returned by value, panics) , `core` and `compiler_builtins` is compiled both by riscvc and by llc (objects checked in by `tools/rust.sh`), each side linked with its own three crates; every entry point is called with the same random arguments, O0 and O2, and must match with **no** expected failures. `tests/rust_e2e.rs`: `tools/rust-build.sh` builds a self-checking program (`tests/rust/examples/selfcheck`) and runs it to completion in the simulator |
| Command line | `tests/cli.rs` runs the `riscvc` binary: the Quick start above end to end (result checked in the simulator), parallel = serial byte for byte, bad input exits with status 1 and a message (never a panic) |

## Status

As of 2026-10-15:

| Area | Result |
| --- | --- |
| Decode / print | 200,000 random words × 3 print styles: identical to llvm-objdump; with `c`, all 49,152 16-bit halfwords × 3 styles identical too |
| Compressed (`--features c`) | assembler compresses like llvm-mc (`compressInst` order, literal immediates and bare symbols only, `.option rvc` / `norvc` / `exact`, `.attribute arch`), relaxes `c.j` / `c.beqz` → `jal` / `b<cc>` → long form at layout time, `.insn c*` formats: 285 of 287 MC fixtures (`tests/fixtures/mc-c`) and 334 compiler-rt files identical to llvm-mc `+c`; linker applies `RVC_BRANCH` / `RVC_JUMP` and relaxes calls to `c.j` / `c.jal`: identical to ld.lld; all end-to-end programs built with `+c` match LLVM in the simulator |
| Assembler | 334 compiler-rt files (O0 / O2), both `-mno-relax` and `+relax` (`R_RISCV_RELAX` / `R_RISCV_ALIGN`, `.option relax` / `norelax`): section bytes, relocations, global symbols identical to llvm-mc |
| Linker | 167 compiler-rt objects × 2 linker scripts: identical to ld.lld (loadable sections incl. empty ones, program headers incl. `PT_GNU_RELRO` / `PT_RISCV_ATTRIBUTES`, entry, globals); llvm-mc `+relax` objects (535 `R_RISCV_RELAX`, 8 `R_RISCV_ALIGN`, merge string sections) identical to ld.lld both with and without `--no-relax` |
| MLIR parsing | 334 generic-form `.mlir` files parse and convert to the internal IR |
| Code generation | all 334 compile; O0 and O2: 97 scalar-signature functions each, 4,656 calls each, results identical to llc (undefined behaviour in the C sources excluded) |
| End-to-end ELF | 161 builtins unit tests (compiler-rt built like its CMake does, with `-DCOMPILER_RT_HAS_FLOAT16`): all match LLVM at O0 and O2, except 2 fp128 tests (out of scope, skipped); 17 hand-written C programs (`tests/programs`: sorting, hashing, strings, struct passing, switch, function pointers, 64-bit, `_BitInt(48 / 96 / 112 / 128)`, bit tricks, float / double, varargs, recursion, lists, bignum, global tables): `main`'s checksum identical to LLVM at O0 and O2 |
| Division by constants | shifts / magic-number multiply (same as LLVM's BuildUDIV / BuildSDIV): 496 functions (udiv / urem / sdiv / srem × i32 / i16 / i8 × 40-odd divisors), 209,806 calls checked against exact arithmetic |
| Code size (`.text`, both `-mattr=-relax`, `tools/size_vs_llc.py`) | compiler-rt O2 1.18× llc, O0 0.98×; `tests/programs` O2 1.09×, O0 0.95× |
| MC fixtures | 277 of 279 identical to llvm-mc (with and without relaxation; branch lengths are settled at layout time, like MC relaxation); remaining: alignment after a relaxable instruction (`Relocations-align-after-relax`), cross-section `.uleb128` |
| LLVM's own tests | 1,080 files from `CodeGen/RISCV` and MLIR `Target/LLVMIR` (9,897 `llvm.func`), 200,347 calls compared with llc; 362 expected failures listed in `tests/fixtures/lit/xfail.txt`: 45 functions not compiled (all vector operations), 121 files not converted (inline asm with a body, `invoke`, vectors, …), 191 result differences, each checked by hand against the IR: poison / undefined inputs, information lost by the MLIR importer, and llc folding a libm call (`floorf` & co.) into a single `fcvt` with a rounding mode where riscvc calls libm (which the comparison image does not have); 1 wrong-code bug in codegen marked `【codegen bug】`; 5 link failures. The count rose from 295 because the comparison got stricter: a function that never returns on one side only (or calls a missing symbol) is a difference now instead of being skipped, and every function gets its own random seed |

Wide integers (`i128`, `i256`, any width): word-by-word like LLVM's integer expansion (variable shifts through the
stack, division as an inline shift-subtract loop); scalars wider than 2×XLEN (wide integers, `fp128`) are passed by
reference and return values that do not fit in a0 / a1 / fa0 / fa1 go through `sret`, as `CC_RISCV` does; `fp128` is
soft-float (`__addtf3` …). Not done yet: vector operations, test coverage of stack-passed arguments; `fp128` constants
are held at double precision by the front end. Code size: the machine-IR passes (constant folding,
dominator-scoped CSE, branch-condition folding, tail calls), post-allocation branch folding / block placement / relaxation and llc's
selection-time rewrites (small constant-length `memcpy` / `memmove` / `memset` inline, `ctpop(x) == 1` as
`(x - 1) <u (x ^ (x - 1))`, `floor` / `ceil` / `round` … inline and fused into `fcvt` with a rounding mode) are in;
still missing against llc are loop-invariant code motion, loop strength reduction, shrink-wrapping and
copy coalescing, plus llc's lowering of `cttz` (de Bruijn table). The register allocator is a vendored copy of
[regalloc2](https://github.com/bytecodealliance/regalloc2) v0.15.2 in `src/alloc` (see `src/alloc/VENDOR.md`): it has
no move hints, no rematerialization and coalesces only two-address operands and block parameters, which is where the
remaining code-size gap against llc mostly comes from.

## Building and testing

mlirformat and mlirpass are path dependencies (one mlirformat for both, since modules pass between them in memory):
checkouts at `../../../mlirformat.rs` and `../../../mlirpass` relative to this directory (sibling checkouts).

```bash
cargo build --release
cargo test --release
cargo build --release --no-default-features --features toolchain,zicsr   # rv32i, no M, no F (soft-float)
cargo test  --release --features xthead                        # include the T-Head tests
```

Tests that need the LLVM reference tools or the generated corpus print `SKIP` and pass when those are missing.
To run the full comparison you need an LLVM 22.1.8 build with the RISC-V target and MLIR (`clang`, `llc`, `llvm-mc`,
`llvm-objdump`, `ld.lld`, `mlir-translate`, `mlir-opt`):

```bash
tools/corpus.sh          # compiler-rt builtins -> target/corpus/{s,ll,mlir}
tools/programs.sh        # regenerate tests/fixtures/{unit,builtins,programs,support} (checked in; ONLY=programs: just programs/)
tools/fixtures.py        # regenerate tests/fixtures/mc (checked in)
tools/lit.sh             # regenerate tests/fixtures/lit (checked in; LLVM IR kept in target/lit for debugging)
tools/rust.sh            # regenerate tests/fixtures/rust (checked in; needs rustc 1.98.1)
cargo test --release
```

`tests/lit_vs_llc.rs` does not need LLVM (the reference objects are checked in). After a change that makes listed
functions pass (or fail differently), regenerate the expected-failure list and review the diff:

```bash
RISCVC_LIT_UPDATE=1 cargo test --release --test lit_vs_llc
git diff tests/fixtures/lit/xfail.txt
```

## Limitations and non-goals

- Not a C / C++ front end; bring MLIR (or LLVM IR via `mlir-translate --import-llvm`).
- No double-precision hardware, no vector extension; compressed instructions only behind the `c` feature (no Zcb / Zcmp).
- Static executables only; no shared libraries, PLT/GOT generation or dynamic relocations.
- The `.S` preprocessor handles only `#if`, `#ifdef` and `#define`.
- No optimisation pipeline of its own beyond what your MLIR passes and the `dce` pass do; code quality is
  correct-first.

## License

[MIT](LICENSE), except `src/alloc` — a vendored copy of
[regalloc2](https://github.com/bytecodealliance/regalloc2), which is Apache-2.0 WITH LLVM-exception
(see `src/alloc/LICENSE` and `src/alloc/VENDOR.md`).
