#!/usr/bin/env python3
"""代码大小对比：语料每份 .mlir 经 riscvc llc、对应 .ll 经 llc，比 .text 字节数。用法：tools/size_vs_llc.py [O0|O2]…

环境变量 SIZE_SAVE=文件：逐份大小存下来；SIZE_BASE=文件：和存下的那次比，列变大 / 变小最多的。"""
import os, subprocess, sys, tempfile
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
B = os.environ.get('RISCVC_LLVM_BIN', os.path.join(ROOT, '../llvm-project/build/bin'))
RISCVC = os.path.join(ROOT, 'target/release/riscvc')

def text(o):
    # ⚠ 节号是 `[ 2]` 这种带空格的写法：先切掉 `]` 之前的部分，再按列取（名字 类型 地址 偏移 大小）
    out = subprocess.run([f'{B}/llvm-readelf', '-S', '-W', o], capture_output=True, text=True).stdout
    cols = [l.split(']', 1)[1].split() for l in out.splitlines() if l.lstrip().startswith('[') and ']' in l]
    return sum(int(c[4], 16) for c in cols if len(c) > 4 and c[0].startswith('.text') and c[1] == 'PROGBITS')

# 语料：（名字, .mlir 目录, .ll 目录）。compiler-rt（tools/corpus.sh 生成）与 tests/programs 的 C 程序分开报
SETS = [('compiler-rt', f'{ROOT}/target/corpus/mlir', f'{ROOT}/target/corpus/ll'), ('programs', f'{ROOT}/tests/fixtures/programs', f'{ROOT}/tests/fixtures/programs')]

for (corpus, mdir, ldir), lv in [(c, lv) for c in SETS for lv in (sys.argv[1:] or ['O0', 'O2'])]:
    rows, failed = [], []
    with tempfile.TemporaryDirectory() as t:
        for f in sorted(os.listdir(mdir)):
            if not f.endswith(f'.{lv}.mlir'):
                continue
            b = f[:-5]
            r, l = f'{t}/r.o', f'{t}/l.o'
            p = subprocess.run([RISCVC, 'llc', '--no-relax', f'{mdir}/{f}', '-o', r], capture_output=True, text=True)
            if p.returncode:
                failed.append(f'{b}: {p.stderr.strip()[:160]}')
                continue
            subprocess.run([f'{B}/llc', '-mtriple=riscv32', '-mattr=+m,+f,+zicsr,-relax', '-target-abi=ilp32f', '-filetype=obj', f'{ldir}/{b}.ll', '-o', l], check=True)
            rows.append((b, text(r), text(l)))
    lv = f'{corpus} {lv}'
    base = {}
    if os.environ.get('SIZE_BASE') and os.path.exists(os.environ['SIZE_BASE']):
        base = dict((l.split()[0], int(l.split()[1])) for l in open(os.environ['SIZE_BASE']))
    if os.environ.get('SIZE_SAVE'):
        with open(os.environ['SIZE_SAVE'], 'a') as out:
            out.writelines(f'{b} {x}\n' for b, x, _ in rows)
    if base:
        delta = sorted(((x - base[b], b) for b, x, _ in rows if b in base), key=lambda d: d[0])
        print(f'{lv}: 比基线 {sum(d for d, _ in delta):+} 字节；变小最多 ' + ', '.join(f'{b} {d:+}' for d, b in delta[:4]) + '；变大最多 ' + ', '.join(f'{b} {d:+}' for d, b in delta[::-1][:4] if d > 0))
    rs, ls = sum(x[1] for x in rows), sum(x[2] for x in rows)
    print(f'{lv}: riscvc {rs} 字节 / llc {ls} 字节 = {rs / ls:.2f}×' + (f'（riscvc 编不了 {len(failed)} 份，不计）' if failed else ''))
    for f in failed:
        print(f'   ✗ {f}')
    for b, x, y in sorted(rows, key=lambda r: -r[1] / max(r[2], 1))[:6]:
        print(f'   {b:28} {x:6} / {y:6} = {x / max(y, 1):.2f}×')
