#!/usr/bin/env bash
# Rust 作前端（rustc 1.98.1，自带 LLVM 22.1.8，与 riscvc 对齐的版本一致）⇒ tests/fixtures/rust/（入库）：
#   <crate>.<档>.mlir   llvm 方言通用形式（riscvc 的输入）
#   <crate>.<档>.o      llc 编出的目标文件（对照，⛔ 测试时不要 LLVM）
#   crate：rvprobe（tests/rust/src/lib.rs，对拍入口全是 extern "C" 标量签名）、core、compiler_builtins；档：O0 / O2。
# core / compiler_builtins 由 -Zbuild-std 编，源码是 rustup 的 rust-src（cargo 只认它）；正本是超级仓的子模块
# jw238/rust（tag 1.98.1），先逐文件核对两份 library/ 相同，⛔ 不同就停。
# 目标 riscv32imafc-unknown-none-elf 去掉 a、c（= riscvc 缺省的 rv32imf + zicsr，ilp32f），panic = abort。
# 中间的 LLVM IR 留在 target/rust/（不入库）。对拍见 tests/rust_vs_llc.rs。
# 用法：tools/rust.sh [LLVM bin 目录]（缺省 ../llvm-project/build/bin；⚠ rustc 要 stable 1.98.1）
set -euo pipefail
cd "$(dirname "$0")/.."
BIN=$(realpath "${1:-../llvm-project/build/bin}")
SRC=$(realpath ../rust)
OUT=tests/fixtures/rust
WORK=$(realpath -m target/rust)
TARGET=riscv32imafc-unknown-none-elf
want=1.98.1
have=$(rustc +stable --version | awk '{print $2}')
[ "$have" = "$want" ] || { echo "要 rustc $want（LLVM 22.1.8），现在是 $have" >&2; exit 1; }
[ -d "$SRC/library/core" ] || { echo "没有 $SRC/library（git submodule update --init jw238/rust）" >&2; exit 1; }
RSRC=$(rustc +stable --print sysroot)/lib/rustlib/src/rust/library
for c in core compiler-builtins; do
  diff -rq --exclude=.gitignore "$RSRC/$c" "$SRC/library/$c" >/dev/null || { echo "rust-src 的 $c 与子模块 jw238/rust 不同" >&2; exit 1; }
done
rm -rf "$OUT" "$WORK"
mkdir -p "$OUT" "$WORK"
LLC="-mtriple=riscv32 -mattr=+m,+f,+zicsr,-relax -target-abi=ilp32f -filetype=obj"
for lv in O0 O2; do
  # 档 ⇒（cargo 的 profile 目录）：O2 = release、O0 = debug（dev profile 的目录叫 debug）
  prof=$([ $lv = O2 ] && echo release || echo debug)
  RUSTC_BOOTSTRAP=1 \
    RUSTFLAGS="-C target-feature=-a,-c --emit=llvm-ir,link -C codegen-units=1" \
    cargo +stable build --manifest-path tests/rust/Cargo.toml --target-dir "$WORK/$lv" --target $TARGET \
      $([ $prof = release ] && echo --release) -Zbuild-std=core -q
  for ll in "$WORK/$lv/$TARGET/$prof/deps/"*.ll; do
    crate=$(basename "$ll" .ll); crate=${crate%-*}
    # 函数上写死的 target-features / target-cpu 去掉：让 -mattr 说了算
    sed -E 's/"target-(features|cpu)"="[^"]*"//g' "$ll" > "$WORK/$crate.$lv.ll"
    b="$OUT/$crate.$lv"
    "$BIN/llc" $LLC "$WORK/$crate.$lv.ll" -o "$b.o"
    "$BIN/mlir-translate" --import-llvm "$WORK/$crate.$lv.ll" | "$BIN/mlir-opt" --mlir-print-op-generic -o "$b.mlir"
  done
done
ls "$OUT"
du -sh "$OUT"
