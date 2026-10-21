#!/usr/bin/env bash
# Rust 作前端、riscvc 作后端：Cargo 项目（no_std、staticlib、panic = abort）⇒ RV32IMF ELF。
#   rustc（stable 1.98.1，自带 LLVM 22.1.8）--emit=llvm-ir，-Zbuild-std=core（core / compiler_builtins 也走这条路）
#   ⇒ mlir-translate --import-llvm | mlir-opt --mlir-print-op-generic   （llvm 方言通用形式）
#   ⇒ riscvc llc -j（各 crate 并行）⇒ riscvc as（启动代码）⇒ riscvc ld
# ⛔ LLVM 的代码生成（llc）：只用 rustc 出 IR，用 MLIR 的两个工具转格式。
# RISCVC_BUILTINS=llc（查问题用）：compiler_builtins 改由 llc 编它的 .ll（去掉函数上的 target-features、显式 -mattr）；
#   ⛔ 用 rustc 自己的 .o：compiler_builtins 总按多个 codegen unit 编，-C target-feature=-c 管不到，出来带 C（压缩指令）。
# 启动代码：设栈、`call <入口>`、`ebreak`（入口的返回值留在 a0）。
# 运行时：tests/rust/rt（单核裸机的 __atomic_*：没有 A 扩展时 core 的原子操作调它们），同样经 riscvc 编。
# 用法：tools/rust-build.sh <Cargo.toml> <入口函数> <输出.elf> [O0|O2]（缺省 O2）
#   MARCH=rv32imaf_zicsr（缺省 rv32imf_zicsr）：rustc 的 target-feature 与 riscvc 的 --march 同一个串；目标 riscv32imafc 里没在串里的 a / c 关掉；
#   带 d（rv32imfd_zicsr）⇒ 自定义 target JSON（+d、ilp32d）
#   例：tools/rust-build.sh tests/rust/examples/selfcheck/Cargo.toml check /tmp/selfcheck.elf
# 环境：RISCVC（缺省 target/release/riscvc）、LLVM_BIN（mlir-translate / mlir-opt，缺省 ../llvm-project/build/bin）
set -euo pipefail
ROOT=$(cd "$(dirname "$0")/.." && pwd)
MANIFEST=$(realpath "$1"); ENTRY=$2; OUT=$(realpath -m "$3"); LV=${4:-O2}
RISCVC=${RISCVC:-$ROOT/target/release/riscvc}
BIN=${LLVM_BIN:-$ROOT/../llvm-project/build/bin}
TARGET=riscv32imafc-unknown-none-elf
want=1.98.1
have=$(rustc +stable --version | awk '{print $2}')
[ "$have" = "$want" ] || { echo "要 rustc $want（LLVM 22.1.8），现在是 $have" >&2; exit 1; }
WORK=$(mktemp -d)
trap "[ -n \"${KEEP:-}\" ] || rm -rf $WORK" EXIT
prof=$([ "$LV" = O2 ] && echo release || echo debug)
MARCH=${MARCH:-rv32imf_zicsr}
# riscv32imafc 里 MARCH 没有的（a、c）关掉：缺省 = riscvc 缺省的 rv32imf + zicsr，ilp32f
letters=$(echo "${MARCH#rv32}" | cut -d_ -f1)
OFF=$(for e in a c; do case $letters in *$e*) ;; *) printf -- "-%s," $e ;; esac; done)
# D（ilp32d）：rustc 没有 riscv32 带 D 的内置目标 ⇒ 照 riscv32imafc-unknown-none-elf 的规格写一份 target JSON，
# 加 +d、换 llvm-abiname；产物目录跟着 JSON 的文件名。⚠ 名字要带 `-none`：cargo 据此给 compiler_builtins 开 mem（memset …）
SPEC=$TARGET
case $letters in
  *d*)
    TARGET=riscv32imafdc-unknown-none-elf
    SPEC=$WORK/$TARGET.json
    RUSTC_BOOTSTRAP=1 rustc +stable -Z unstable-options --print target-spec-json --target riscv32imafc-unknown-none-elf \
      | sed -e 's/"features": "+m,+a,+c,+f"/"features": "+m,+a,+c,+f,+d"/' -e 's/"llvm-abiname": "ilp32f"/"llvm-abiname": "ilp32d"/' > "$SPEC"
    grep -q '+d"' "$SPEC" && grep -q ilp32d "$SPEC" || { echo "改不出带 D 的 target JSON" >&2; exit 1; }
    ;;
esac
build() {
  RUSTC_BOOTSTRAP=1 RUSTFLAGS="-C target-feature=${OFF%,} --emit=llvm-ir,link -C codegen-units=1" \
    cargo +stable build --manifest-path "$1" --target-dir "$2" --target "$SPEC" \
      $([ "$prof" = release ] && echo --release) -Zbuild-std=core $([ "$SPEC" = "$TARGET" ] || echo -Zjson-target-spec) -q
}
build "$MANIFEST" "$WORK/t"
# 运行时单独编（它自己也带一份 core，只取 rvrt 本身）
build "$ROOT/tests/rust/rt/Cargo.toml" "$WORK/rt"
cp "$WORK/rt/$TARGET/$prof/deps/"rvrt-*.ll "$WORK/t/$TARGET/$prof/deps/"
mkdir -p "$WORK/mlir" "$WORK/o"
BUILTINS=${RISCVC_BUILTINS:-riscvc}
for ll in "$WORK/t/$TARGET/$prof/deps/"*.ll; do
  stem=$(basename "$ll" .ll)
  if [ "$BUILTINS" = llc ] && [ "${stem%-*}" = compiler_builtins ]; then
    sed -E 's/"target-(features|cpu)"="[^"]*"//g' "$ll" > "$WORK/builtins.ll"
    "$BIN/llc" -mtriple=riscv32 -mattr=+m,+f,+zicsr,-c,-relax -target-abi=ilp32f -filetype=obj "$WORK/builtins.ll" -o "$WORK/o/$stem.o"
    continue
  fi
  "$BIN/mlir-translate" --import-llvm "$ll" | "$BIN/mlir-opt" --mlir-print-op-generic -o "$WORK/mlir/$stem.mlir"
done
"$RISCVC" llc --march "$MARCH" "$WORK/mlir/"*.mlir -o "$WORK/o"
cat > "$WORK/crt.s" <<CRT
    .section .text.start, "ax"
    .globl _start
_start:
    lui sp, %hi(__stack_top)
    addi sp, sp, %lo(__stack_top)
    call $ENTRY
    ebreak
CRT
"$RISCVC" as --march "$MARCH" "$WORK/crt.s" -o "$WORK/crt.o"
cat > "$WORK/link.ld" <<'LD'
ENTRY(_start)
SECTIONS {
  . = 0x10000;
  .text : { *(.text.start) *(.text*) }
  .rodata : { *(.rodata*) *(.srodata*) }
  .data : { *(.data*) *(.sdata*) }
  .bss : { *(.bss*) *(.sbss*) *(COMMON) }
  . = ALIGN(16);
  . = . + 0x10000;
  __stack_top = .;
}
LD
"$RISCVC" ld -T "$WORK/link.ld" "$WORK/crt.o" "$WORK/o/"*.o -o "$OUT"
echo "$OUT"
