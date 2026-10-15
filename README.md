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
> `cargo add riscvc --git https://github.com/Jabberwocky238/riscvc.rs` or
> `cargo install --git https://github.com/Jabberwocky238/riscvc.rs riscvc`.

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
  the assembler, the disassembler, the simulator and the code generator at the same time;
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
| MLIR input | `mlir-opt --mlir-print-op-generic` output of the LLVM 22 `llvm` dialect (op definitions generated from that release's `LLVMOps.td` / `LLVMIntrinsicOps.td`) |

Behaviour of other LLVM versions (older relaxation rules, different section defaults, changed dialect ops) is not
tracked. The comparison corpus is the compiler-rt builtins and the MC / lld RISC-V tests of the same release.

## Scope

| | Supported | Not supported |
| --- | --- | --- |
| ISA | RV32I base; M, Zmmul, F, Zicsr; ten T-Head (XuanTie) `XThead*` scalar extensions — each one a Cargo feature | C (compressed), D (double precision; `double` is lowered to soft-float calls), V / XTheadVdot |
| ABI | `ilp32f` (with `f`), `ilp32` + soft-float (without `f`) | `ilp32d`, `lp64*` |
| Default target | `rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0`, ABI `ilp32f` | |
| Compiler input | MLIR `llvm` dialect in **generic form** (`mlir-opt --mlir-print-op-generic`) | C / C++ (this is not a front end) |
| Assembler input | GNU assembly (`.s`); `.S` with a simple preprocessor (`#if`, `#ifdef`, `#define`) | full C preprocessor, macros beyond that |
| Linker | linker-script subset (`ENTRY`, `SECTIONS`, `.`, `ALIGN`, `/DISCARD/`, assignments), static executables, RISC-V relocations, linker relaxation, `SHF_MERGE` deduplication | shared objects, dynamic linking, TLS relaxation |
| Output | ELF32 little-endian object files and executables | other formats |

About the generic form: 19 LLVM-dialect ops (`llvm.func`, `llvm.call`, `llvm.icmp`, `llvm.getelementptr`,
`llvm.mlir.global`, …) have hand-written custom assembly formats that [mlirformat](https://crates.io/crates/mlirformat)
does not parse, so they must be in generic form. The other 61 ops are accepted in either form. Printing the whole
module with `--mlir-print-op-generic` is the simplest rule to follow.

Coming from LLVM IR instead of MLIR:

```bash
mlir-translate --import-llvm x.ll | mlir-opt --mlir-print-op-generic > x.mlir
```

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
riscvc llc [OPTIONS] [INPUT]
```

| Option | Meaning |
| --- | --- |
| `-o <OUTPUT>` | output; a `.o` extension produces an object file, anything else produces assembly |
| `--pass <NAME>` | run a pass on the internal IR before code generation (repeatable, runs in order) |
| `--list-plugins` | list registered dialects and passes |

Built-in plugins: dialect `llvm`; pass `dce` (removes side-effect-free instructions whose results are unused).

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
- Wrap the table as `riscvc::ext::Std<YourTable>` to obtain an `Extension`, then hand it to
  `Assembler::extensions`, `Disasm::new` and `Cpu::run_on`.
- For instructions that do not fit a table at all, implement the `Extension` trait by hand (`decode`, `print`,
  `assemble`, `execute`). Memory-mapped peripherals implement `Device` (`load` / `store`).

## Cargo features

One feature = one target extension, exactly like a `-march` component. The components (assembler, linker, code
generator, simulator, CLI) are always built.

| Feature | What it is | When disabled |
| --- | --- | --- |
| `m` *(default)* | M extension (implies `zmmul`) | assembler rejects `div` / `rem*`, disassembler prints `<unknown>`, simulator traps; codegen calls `__divsi3` & co. |
| `zmmul` | multiply only | same, for `mul` / `mulh*`; codegen calls `__mulsi3` / `__muldi3` |
| `f` *(default)* | F extension + `ilp32f` ABI (implies `zicsr`) | no float instructions, `e_flags` without single-float ABI; codegen uses `ilp32` + soft-float (`__addsf3` & co.) |
| `zicsr` | CSR instructions | `csr*` and `frcsr`-style pseudo-instructions rejected |
| `xthead` | all ten T-Head extensions below | — |
| `xtheadba`, `xtheadbb`, `xtheadbs`, `xtheadcmo`, `xtheadcondmov`, `xtheadfmemidx` (implies `f`), `xtheadmac`, `xtheadmemidx`, `xtheadmempair`, `xtheadsync` | T-Head vendor extensions (the RV32 scalar parts LLVM supports); off by default | assembler / disassembler do not know them; codegen never uses them |

```toml
# plain rv32i with soft-float
riscvc = { version = "0.1", default-features = false, features = ["zicsr"] }

# defaults plus all T-Head extensions
riscvc = { version = "0.1", features = ["xthead"] }
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

## Status

As of 2026-10-15:

| Area | Result |
| --- | --- |
| Decode / print | 200,000 random words × 3 print styles: identical to llvm-objdump |
| Assembler | 334 compiler-rt files (O0 / O2), both `-mno-relax` and `+relax` (`R_RISCV_RELAX` / `R_RISCV_ALIGN`, `.option relax` / `norelax`): section bytes, relocations, global symbols identical to llvm-mc |
| Linker | 167 compiler-rt objects × 2 linker scripts: identical to ld.lld (loadable sections incl. empty ones, program headers incl. `PT_GNU_RELRO` / `PT_RISCV_ATTRIBUTES`, entry, globals); llvm-mc `+relax` objects (535 `R_RISCV_RELAX`, 8 `R_RISCV_ALIGN`, merge string sections) identical to ld.lld both with and without `--no-relax` |
| MLIR parsing | 334 generic-form `.mlir` files parse and convert to the internal IR |
| Code generation | all 334 compile; O0 and O2: 97 scalar-signature functions each, 4,656 calls each, results identical to llc (undefined behaviour in the C sources excluded) |
| End-to-end ELF | 163 builtins unit tests: all match LLVM at O0 and O2, except 2 fp128 tests (out of scope, skipped) |
| MC fixtures | 276 of 279 identical to llvm-mc (with and without relaxation); remaining: long-branch relaxation of conditional branches pushed out by `.fill`, alignment after a relaxable instruction (`Relocations-align-after-relax`), cross-section `.uleb128` |

Not done yet: `sret` lowering (return values that do not fit in registers), test coverage of stack-passed
arguments, `cmpxchg`, `i128` / `fp128`, vector operations; code quality (peepholes, jump tables, constant
reuse) has not been compared with llc.

## Building and testing

```bash
cargo build --release
cargo test --release
cargo build --release --no-default-features --features zicsr   # rv32i, no M, no F (soft-float)
cargo test  --release --features xthead                        # include the T-Head tests
```

Tests that need the LLVM reference tools or the generated corpus print `SKIP` and pass when those are missing.
To run the full comparison you need an LLVM 22.1.8 build with the RISC-V target and MLIR (`clang`, `llc`, `llvm-mc`,
`llvm-objdump`, `ld.lld`, `mlir-translate`, `mlir-opt`):

```bash
tools/corpus.sh          # compiler-rt builtins -> target/corpus/{s,ll,mlir}
tools/programs.sh        # regenerate tests/fixtures/{unit,builtins,support.o} (checked in)
tools/fixtures.py        # regenerate tests/fixtures/mc (checked in)
cargo test --release
```

## Limitations and non-goals

- Not a C / C++ front end; bring MLIR (or LLVM IR via `mlir-translate --import-llvm`).
- No compressed instructions, no double-precision hardware, no vector extension.
- Static executables only; no shared libraries, PLT/GOT generation or dynamic relocations.
- The `.S` preprocessor handles only `#if`, `#ifdef` and `#define`.
- No optimisation pipeline of its own beyond what your MLIR passes and the `dce` pass do; code quality is
  correct-first.

## License

[MIT](LICENSE)
