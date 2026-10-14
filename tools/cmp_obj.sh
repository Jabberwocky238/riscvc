#!/usr/bin/env bash
# 一份 .s / .S：riscvc as vs clang -c（-mno-relax），比 .text / .data / .rodata 字节与重定位。用法：tools/cmp_obj.sh 文件 [-D…]
set -uo pipefail
cd "$(dirname "$0")/.."
B=${RISCVC_LLVM_BIN:-../llvm-project/build/bin}
T=$(mktemp -d); trap 'rm -rf $T' EXIT
f=$1; shift
./target/debug/riscvc as "$f" "$@" -o $T/r.o || exit 1
$B/clang --target=riscv32-unknown-elf -march=rv32imf_zicsr -mabi=ilp32f -mno-relax "$@" -c "$f" -o $T/l.o || exit 1
ok=0
for s in .rodata .data .text; do
  $B/llvm-objcopy -O binary --only-section=$s $T/r.o $T/r.bin 2>/dev/null; $B/llvm-objcopy -O binary --only-section=$s $T/l.o $T/l.bin 2>/dev/null
  cmp -s $T/r.bin $T/l.bin || { echo "$f $*：$s 不同"; ok=1; }
done
diff <($B/llvm-readelf -r $T/r.o | grep R_RISCV | awk '{print $1,$3,$5}') <($B/llvm-readelf -r $T/l.o | grep R_RISCV | awk '{print $1,$3,$5}') >/dev/null || { echo "$f $*：重定位不同"; ok=1; }
[ $ok = 0 ] && echo "$f $*：相同（.text $(stat -c %s $T/r.bin) 字节）"
exit $ok
