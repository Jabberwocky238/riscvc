#!/usr/bin/env python3
"""代码大小对比：语料每份 .mlir 经 riscvc llc、对应 .ll 经 llc，比 .text 字节数。用法：tools/size_vs_llc.py [O0|O2]…"""
import os, subprocess, sys, tempfile
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
B = os.environ.get('RISCVC_LLVM_BIN', os.path.join(ROOT, '../llvm-project/build/bin'))
RISCVC = os.path.join(ROOT, 'target/release/riscvc')

def text(o):
    out = subprocess.run([f'{B}/llvm-readelf', '-S', o], capture_output=True, text=True).stdout
    return sum(int(l.split()[5], 16) for l in out.splitlines() if ' .text' in l and 'PROGBITS' in l and '.rela' not in l)

for lv in sys.argv[1:] or ['O0', 'O2']:
    rows = []
    with tempfile.TemporaryDirectory() as t:
        for f in sorted(os.listdir(f'{ROOT}/target/corpus/mlir')):
            if not f.endswith(f'.{lv}.mlir'):
                continue
            b = f[:-5]
            r, l = f'{t}/r.o', f'{t}/l.o'
            if subprocess.run([RISCVC, 'llc', f'{ROOT}/target/corpus/mlir/{f}', '-o', r], capture_output=True).returncode:
                continue
            subprocess.run([f'{B}/llc', '-mtriple=riscv32', '-mattr=+m,+f,+zicsr,-relax', '-target-abi=ilp32f', '-filetype=obj', f'{ROOT}/target/corpus/ll/{b}.ll', '-o', l], check=True)
            rows.append((b, text(r), text(l)))
    rs, ls = sum(x[1] for x in rows), sum(x[2] for x in rows)
    print(f'{lv}: riscvc {rs} 字节 / llc {ls} 字节 = {rs / ls:.2f}×')
    for b, x, y in sorted(rows, key=lambda r: -r[1] / max(r[2], 1))[:6]:
        print(f'   {b:28} {x:6} / {y:6} = {x / max(y, 1):.2f}×')
