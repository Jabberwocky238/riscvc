#!/usr/bin/env bash
# 对拍语料：compiler-rt builtins 的 C 源 ⇒ clang（对照用的 LLVM）⇒ target/corpus/{s,ll,mlir}/<名>.<档>.{s,ll,mlir}
#   mlir：.ll ⇒ mlir-translate --import-llvm ⇒ mlir-opt --mlir-print-op-generic（LLVM 方言、通用形式）
#   档：O0 / O2；目标同 CCU 标量核（rv32imf + zicsr，ilp32f，-mno-relax）。
#   用法：tools/corpus.sh [LLVM bin 目录]（缺省 ../llvm-project/build/bin）
set -euo pipefail
cd "$(dirname "$0")/.."
BIN=${1:-../llvm-project/build/bin}
SRC=../llvm-project/compiler-rt/lib/builtins
OUT=target/corpus
mkdir -p "$OUT/s" "$OUT/ll" "$OUT/mlir"
FLAGS="--target=riscv32-unknown-elf -march=rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0 -mabi=ilp32f -ffreestanding -fno-asynchronous-unwind-tables -fno-unwind-tables -mno-relax -I $SRC"
one() {
  f=$1; b=$(basename "$f" .c)
  for o in O0 O2; do
    "$BIN/clang" $FLAGS -$o -S "$f" -o "$OUT/s/$b.$o.s" 2>/dev/null || rm -f "$OUT/s/$b.$o.s"
    "$BIN/clang" $FLAGS -$o -S -emit-llvm "$f" -o "$OUT/ll/$b.$o.ll" 2>/dev/null || rm -f "$OUT/ll/$b.$o.ll"
    # LLVM 方言（通用形式）：riscvc llc 的输入
    [ -f "$OUT/ll/$b.$o.ll" ] && { "$BIN/mlir-translate" --import-llvm "$OUT/ll/$b.$o.ll" 2>/dev/null | "$BIN/mlir-opt" --mlir-print-op-generic -o "$OUT/mlir/$b.$o.mlir" 2>/dev/null || rm -f "$OUT/mlir/$b.$o.mlir"; }
  done
}
export -f one; export BIN OUT FLAGS SRC
ls $SRC/*.c | xargs -P "$(nproc)" -I{} bash -c 'one {}'
echo "s: $(ls $OUT/s | wc -l)  ll: $(ls $OUT/ll | wc -l)  mlir: $(ls $OUT/mlir | wc -l)"
