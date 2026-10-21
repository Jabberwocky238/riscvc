#!/usr/bin/env bash
# 端到端 fixture（入库）⇒ tests/fixtures/：
#   unit/<名>.c、<名>.<档>.{ll,mlir}：compiler-rt 的 builtins 单元测试（有 main、自检，过了返回 0），O0 / O2
#   builtins/<名>.O2.{ll,mlir}：被测的 compiler-rt builtins（同 tools/corpus.sh 的编法）
#   programs/<名>.<档>.{ll,mlir}：tests/programs/<名>.c（手写的小程序：main 回一个校验和，不自检，判据是两边相同），O0 / O2
#   support/<abi>/{support,mulsi3}.o：两边共用的桩（tests/support/support.c + compiler-rt 的 riscv/mulsi3.S），
#     按调用约定各一份：ilp32f（rv32if）、ilp32（rv32i）；都不用 M（关了 m 的配置也能链）
# 只留 riscv32 上真有 main 的；⛔ udivmodti4（128 位，范围外，且 16 MB）不要。
# 对拍见 tests/elf_vs_llvm.rs。用法：tools/programs.sh [LLVM bin 目录]（缺省 ../llvm-project/build/bin）
#   ONLY=programs tools/programs.sh：只重新生成 programs/（compiler-rt 那两份不动）
set -euo pipefail
cd "$(dirname "$0")/.."
BIN=${1:-../llvm-project/build/bin}
CRT=../llvm-project/compiler-rt
OUT=tests/fixtures
# -DCOMPILER_RT_HAS_FLOAT16：同 compiler-rt 的 CMake（编译器支持 _Float16 就定义）⇒ half 的 builtins 收 / 回 _Float16，
# 与 LLVM 的 libcall 约定一致（ilp32f 下在 fa0）；⛔ 不定义会编成 uint16_t（在 a0），llc 调它就读错寄存器
BASE="--target=riscv32-unknown-elf -march=rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0 -mabi=ilp32f -ffreestanding -fno-asynchronous-unwind-tables -fno-unwind-tables -mno-relax -I $CRT/lib/builtins -DCOMPILER_RT_HAS_FLOAT16"
mlir() { "$BIN/mlir-translate" --import-llvm "$1" 2>/dev/null | "$BIN/mlir-opt" --mlir-print-op-generic -o "$2"; }
unit() {
  f=$1; b=$(basename "$f" .c)
  [ "$b" = udivmodti4_test ] && return
  "$BIN/clang" $BASE -fno-builtin -isystem tests/support/include -O2 -S -emit-llvm "$f" -o "$OUT/unit/$b.O2.ll" 2>/dev/null || { rm -f "$OUT/unit/$b.O2.ll"; return; }
  grep -q 'define[^@]*@main(' "$OUT/unit/$b.O2.ll" || { rm -f "$OUT/unit/$b.O2.ll"; return; }
  cp "$f" "$OUT/unit/"
  "$BIN/clang" $BASE -fno-builtin -isystem tests/support/include -O0 -S -emit-llvm "$f" -o "$OUT/unit/$b.O0.ll"
  for o in O0 O2; do mlir "$OUT/unit/$b.$o.ll" "$OUT/unit/$b.$o.mlir"; done
}
builtin() {
  f=$1; b=$(basename "$f" .c)
  "$BIN/clang" $BASE -O2 -S -emit-llvm "$f" -o "$OUT/builtins/$b.O2.ll" 2>/dev/null || { rm -f "$OUT/builtins/$b.O2.ll"; return; }
  mlir "$OUT/builtins/$b.O2.ll" "$OUT/builtins/$b.O2.mlir" 2>/dev/null || rm -f "$OUT/builtins/$b.O2.ll" "$OUT/builtins/$b.O2.mlir"
}
prog() {
  f=$1; b=$(basename "$f" .c)
  for o in O0 O2; do
    "$BIN/clang" $BASE -fno-builtin -isystem tests/support/include -$o -S -emit-llvm "$f" -o "$OUT/programs/$b.$o.ll"
    mlir "$OUT/programs/$b.$o.ll" "$OUT/programs/$b.$o.mlir"
  done
}
# 扩展的程序：tests/programs-<扩展>/*.c ⇒ tests/fixtures/programs-<扩展>/，按那个扩展的目标编（对拍见 tests/ext_vs_llvm.rs）
#   a：rv32imaf（ilp32f）；d：rv32imfd（ilp32d）
ext() {
  f=$1; d=$2; march=$3; abi=$4; b=$(basename "$f" .c)
  EXT="--target=riscv32-unknown-elf -march=$march -mabi=$abi -ffreestanding -fno-math-errno -fno-asynchronous-unwind-tables -fno-unwind-tables -mno-relax"
  for o in O0 O2; do
    "$BIN/clang" $EXT -fno-builtin -isystem tests/support/include -$o -S -emit-llvm "$f" -o "$OUT/$d/$b.$o.ll"
    mlir "$OUT/$d/$b.$o.ll" "$OUT/$d/$b.$o.mlir"
  done
}
export -f unit builtin prog ext mlir; export BIN OUT BASE
rm -rf "$OUT/programs" && mkdir -p "$OUT/programs"
ls tests/programs/*.c | xargs -P 4 -I{} bash -c 'prog {}'
for v in "a rv32i2p1_m2p0_a2p1_f2p2_zicsr2p0_zmmul1p0 ilp32f" "d rv32i2p1_m2p0_f2p2_d2p2_zicsr2p0_zmmul1p0 ilp32d"; do
  set -- $v
  rm -rf "$OUT/programs-$1" && mkdir -p "$OUT/programs-$1"
  ls tests/programs-$1/*.c | xargs -P 4 -I{} bash -c "ext {} programs-$1 $2 $3"
done
if [ "${ONLY:-}" = programs ]; then echo "programs: $(ls $OUT/programs/*.mlir | wc -l)"; exit 0; fi
rm -rf "$OUT/unit" "$OUT/builtins"
mkdir -p "$OUT/unit" "$OUT/builtins"
ls $CRT/test/builtins/Unit/*_test.c | xargs -P "$(nproc)" -I{} bash -c 'unit {}'
ls $CRT/lib/builtins/*.c | xargs -P "$(nproc)" -I{} bash -c 'builtin {}'
rm -rf "$OUT/support" "$OUT/support.o"
for v in "ilp32f rv32if_zicsr" "ilp32 rv32i_zicsr" "ilp32d rv32ifd_zicsr"; do
  set -- $v
  mkdir -p "$OUT/support/$1"
  SUP="--target=riscv32-unknown-elf -march=$2 -mabi=$1 -ffreestanding -fno-builtin -fno-asynchronous-unwind-tables -fno-unwind-tables -mno-relax -O2"
  "$BIN/clang" $SUP -isystem tests/support/include -c tests/support/support.c -o "$OUT/support/$1/support.o"
  "$BIN/clang" $SUP -c $CRT/lib/builtins/riscv/mulsi3.S -o "$OUT/support/$1/mulsi3.o"
done
echo "unit: $(ls $OUT/unit/*.c | wc -l) 个程序  builtins: $(ls $OUT/builtins/*.mlir | wc -l)  $(du -sh $OUT | cut -f1)"
