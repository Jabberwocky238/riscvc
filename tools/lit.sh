#!/usr/bin/env bash
# LLVM 自己的测试 ⇒ tests/fixtures/lit/（入库）。每份两个文件：
#   <名>.mlir  llvm 方言通用形式（riscvc 的输入）
#   <名>.o     llc 编出的目标文件（对照，⛔ 测试时不要 LLVM）
# 中间的 LLVM IR（llc 的输入）留在 target/lit/<来源>/<名>.ll（不入库，查问题用）。
# 来源：
#   codegen/  llvm/test/CodeGen/RISCV/*.ll（iXLen 换成 i32，同它们 RUN 行里的 sed）
#   import/   mlir/test/Target/LLVMIR/Import/*.ll（mlir-translate --import-llvm 的测试）
#   target/   mlir/test/Target/LLVMIR/*.mlir（自定义形式；`// -----` 切开的各段 ⇒ <名>.<段号>）
# 只留：转得成 llvm 方言、llc 在 riscv32（+m,+f,+zicsr，ilp32f）上编得过的。对拍见 tests/lit_vs_llc.rs。
# 用法：tools/lit.sh [LLVM bin 目录]（缺省 ../llvm-project/build/bin）
set -euo pipefail
cd "$(dirname "$0")/.."
BIN=$(realpath "${1:-../llvm-project/build/bin}")
SRC=$(realpath ../llvm-project)
OUT=tests/fixtures/lit
LL=target/lit
rm -rf "$OUT/codegen" "$OUT/import" "$OUT/target" "$LL"
mkdir -p "$OUT/codegen" "$OUT/import" "$OUT/target" "$LL/codegen" "$LL/import" "$LL/target"
LLC="-mtriple=riscv32 -mattr=+m,+f,+zicsr,-relax -target-abi=ilp32f -filetype=obj"
# $LL/<来源>/<名>.ll ⇒ $OUT/<来源>/<名>.{mlir,o}；哪步不行就整份删掉
finish() {
  rel=$1; ll="$LL/$rel.ll"; b="$OUT/$rel"
  # 函数上写死的 target-features / target-cpu 去掉：让 -mattr 说了算
  sed -i -E 's/"target-(features|cpu)"="[^"]*"//g' "$ll"
  timeout 60 "$BIN/llc" $LLC "$ll" -o "$b.o" 2>/dev/null \
    && timeout 60 "$BIN/mlir-translate" --import-llvm "$ll" 2>/dev/null | timeout 60 "$BIN/mlir-opt" --mlir-print-op-generic -o "$b.mlir" 2>/dev/null \
    || rm -f "$ll" "$b.o" "$b.mlir"
}
from_ll() {
  dir=$1 f=$2; rel="$dir/$(basename "$f" .ll)"
  sed 's/iXLen/i32/g' "$f" > "$LL/$rel.ll"
  finish "$rel"
}
from_mlir() {
  f=$1; stem=$(basename "$f" .mlir)
  # 按 `// -----` 切段（只有一段就不加段号）
  n=$(grep -c '^// -----' "$f" || true)
  awk -v pre="$LL/target/$stem" -v n="$n" '
    BEGIN { k = 0; out = (n > 0) ? pre "." k ".in" : pre ".in" }
    /^\/\/ -----/ { k++; out = pre "." k ".in"; next }
    { print > out }' "$f"
  for p in "$LL/target/$stem".*in; do
    b=${p%.in}
    timeout 60 "$BIN/mlir-translate" --mlir-to-llvmir "$p" -o "$b.ll" 2>/dev/null || rm -f "$b.ll"
    rm -f "$p"
    [ -f "$b.ll" ] && finish "target/$(basename "$b")"
  done
  return 0
}
export -f finish from_ll from_mlir; export BIN OUT LL LLC
ls "$SRC"/llvm/test/CodeGen/RISCV/*.ll | xargs -P "$(nproc)" -I{} bash -c 'from_ll codegen {}'
ls "$SRC"/mlir/test/Target/LLVMIR/Import/*.ll | xargs -P "$(nproc)" -I{} bash -c 'from_ll import {}'
ls "$SRC"/mlir/test/Target/LLVMIR/*.mlir | xargs -P "$(nproc)" -I{} bash -c 'from_mlir {}'
for d in codegen import target; do echo "$d: $(ls $OUT/$d/*.mlir 2>/dev/null | wc -l) 份"; done
du -sh "$OUT"
