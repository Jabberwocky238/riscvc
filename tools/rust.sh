#!/usr/bin/env bash
# Rust 作前端（rustc 1.98.1，自带 LLVM 22.1.8，与 riscvc 对齐的版本一致）⇒ tests/fixtures/rust[-a|-d]/（入库）：
#   <crate>.<档>.mlir   llvm 方言通用形式（riscvc 的输入）
#   <crate>.<档>.o      llc 编出的目标文件（对照，⛔ 测试时不要 LLVM）
#   crate：rvprobe（tests/rust/src/lib.rs，对拍入口全是 extern "C" 标量签名）、core、compiler_builtins；档：O0 / O2。
# core / compiler_builtins 由 -Zbuild-std 编，源码是 rustup 的 rust-src（cargo 只认它）；正本是相邻的 rust-lang/rust
# 检出（缺省 ../rust，`RUST_SRC` 可改；要在 tag 1.98.1 上），先逐文件核对两份 library/ 相同，⛔ 不同就停。
# 三个目标（panic = abort，⛔ C），一个一套 fixture：
#   rust     riscv32imafc-unknown-none-elf 去掉 a、c（= riscvc 缺省的 rv32imf + zicsr，ilp32f）
#   rust-a   同上但留着 a（core / rvprobe 的原子操作出 amo / LR-SC）
#   rust-d   带 a、d 的 target JSON（照 riscv32imafc 的规格加 +d、ilp32d；名字带 -none：cargo 才给 compiler_builtins 开 mem）
# 中间的 LLVM IR 留在 target/rust/（不入库）。对拍见 tests/rust_vs_llc.rs。
# 用法：tools/rust.sh [LLVM bin 目录]（缺省 ../llvm-project/build/bin；⚠ rustc 要 stable 1.98.1）
set -euo pipefail
cd "$(dirname "$0")/.."
BIN=$(realpath "${1:-../llvm-project/build/bin}")
SRC=$(realpath "${RUST_SRC:-../rust}")
OUTS=tests/fixtures
WORK=$(realpath -m target/rust)
TARGET=riscv32imafc-unknown-none-elf
want=1.98.1
have=$(rustc +stable --version | awk '{print $2}')
[ "$have" = "$want" ] || { echo "要 rustc $want（LLVM 22.1.8），现在是 $have" >&2; exit 1; }
[ -d "$SRC/library/core" ] || { echo "没有 $SRC/library（检出 rust-lang/rust 的 tag 1.98.1，或设 RUST_SRC）" >&2; exit 1; }
RSRC=$(rustc +stable --print sysroot)/lib/rustlib/src/rust/library
for c in core compiler-builtins; do
  diff -rq --exclude=.gitignore "$RSRC/$c" "$SRC/library/$c" >/dev/null || { echo "rust-src 的 $c 与 $SRC（要 tag 1.98.1）不同" >&2; exit 1; }
done
rm -rf "$WORK"
mkdir -p "$WORK"
RUSTC_BOOTSTRAP=1 rustc +stable -Z unstable-options --print target-spec-json --target $TARGET \
  | sed -e 's/"features": "+m,+a,+c,+f"/"features": "+m,+a,+c,+f,+d"/' -e 's/"llvm-abiname": "ilp32f"/"llvm-abiname": "ilp32d"/' > "$WORK/riscv32imafdc-unknown-none-elf.json"
grep -q '+d"' "$WORK/riscv32imafdc-unknown-none-elf.json" || { echo "改不出带 D 的 target JSON" >&2; exit 1; }
# 套名  rustc 的目标  关掉的 target-feature  llc 的 -mattr  ABI
for set in "rust $TARGET -a,-c +m,+f,+zicsr ilp32f" "rust-a $TARGET -c +m,+a,+f,+zicsr ilp32f" "rust-d $WORK/riscv32imafdc-unknown-none-elf.json -c +m,+a,+f,+d,+zicsr ilp32d"; do
read -r name spec off mattr abi <<<"$set"
OUT=$OUTS/$name
tdir=$(basename "$spec" .json)
json=$([ "$spec" = "$TARGET" ] || echo -Zjson-target-spec)
rm -rf "$OUT" && mkdir -p "$OUT"
LLC="-mtriple=riscv32 -mattr=$mattr,-relax -target-abi=$abi -filetype=obj"
for lv in O0 O2; do
  # 档 ⇒（cargo 的 profile 目录）：O2 = release、O0 = debug（dev profile 的目录叫 debug）
  prof=$([ $lv = O2 ] && echo release || echo debug)
  RUSTC_BOOTSTRAP=1 \
    RUSTFLAGS="-C target-feature=$off --emit=llvm-ir,link -C codegen-units=1" \
    cargo +stable build --manifest-path tests/rust/Cargo.toml --target-dir "$WORK/$name-$lv" --target "$spec" \
      $([ $prof = release ] && echo --release) -Zbuild-std=core $json -q
  for ll in "$WORK/$name-$lv/$tdir/$prof/deps/"*.ll; do
    crate=$(basename "$ll" .ll); crate=${crate%-*}
    # 函数上写死的 target-features / target-cpu 去掉：让 -mattr 说了算
    sed -E 's/"target-(features|cpu)"="[^"]*"//g' "$ll" > "$WORK/$name-$crate.$lv.ll"
    b="$OUT/$crate.$lv"
    "$BIN/llc" $LLC "$WORK/$name-$crate.$lv.ll" -o "$b.o"
    "$BIN/mlir-translate" --import-llvm "$WORK/$name-$crate.$lv.ll" 2>/dev/null | "$BIN/mlir-opt" --mlir-print-op-generic -o "$b.mlir"
  done
done
echo "$name: $(ls "$OUT" | wc -l) 个文件，$(du -sh "$OUT" | cut -f1)"
done
