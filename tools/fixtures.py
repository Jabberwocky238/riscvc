#!/usr/bin/env python3
"""LLVM 自带的测试 fixture ⇒ 对拍语料（入库）tests/fixtures/mc/<目录>-<名>.s。用法：tools/fixtures.py [LLVM bin 目录]

  来源：llvm/test/MC/RISCV（含子目录）、lld/test/ELF/riscv-*.s 的全部 `.s`。
  按 rv32 +m,+f,+zicsr,-relax、ilp32f 的开关过 llvm-mc：它报错的行注释掉、再过，直到不报错；
  剩下的就是「llvm-mc 在这个目标上接受的部分」，riscvc as 必须出一样的目标文件。整份删光或 10 轮还报错的丢掉。
  lld 的 fixture 里 `split-file` 的多份（`#--- 名`）拆成多份。
  ⛔ 范围外的先注释掉（见 SCOPE），再过 llvm-mc：被它们打开的扩展指令随之被 llvm-mc 拒掉。
"""
import os, re, subprocess, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
B = sys.argv[1] if len(sys.argv) > 1 else os.environ.get('RISCVC_LLVM_BIN', os.path.join(ROOT, '../llvm-project/build/bin'))
LLVM = os.path.join(ROOT, '../llvm-project')
OUT = os.path.join(ROOT, 'tests/fixtures/mc')
OUT_XTHEAD = os.path.join(ROOT, 'tests/fixtures/mc-xthead')
# C：全部 fixture 另开 +c 过一遍（llvm-mc 开了 C 就把能压的都压掉）⇒ tests/fixtures/mc-c（cargo test --features c）
OUT_C = os.path.join(ROOT, 'tests/fixtures/mc-c')
STD = '+m,+f,+zicsr,-relax'
# 玄铁：文件名带 thead 的那批，另开全部 XThead 扩展过一遍 ⇒ tests/fixtures/mc-xthead（cargo test --features xthead）
XTHEAD = STD + ',' + ','.join('+xthead' + x for x in ['ba', 'bb', 'bs', 'cmo', 'condmov', 'fmemidx', 'mac', 'memidx', 'mempair', 'sync'])
C = STD + ',+c'
# 扩展：文件名属于这个扩展的那批，另开它过一遍 ⇒ tests/fixtures/mc-<扩展>（tests/as_vs_llvm.rs 按缺省 + 那个扩展比）
EXTS = {
    'a': (STD + ',+a', re.compile(r'zaamo|zalrsc|rva-|rv32a|rv64a|atomic|amo')),
    'd': (STD + ',+d', re.compile(r'rvd-|rv32d|rv64d|rvdc|rv32dc|compress-rv32d|double')),
    # C + D（Zcd）：llvm-mc 开了 C 把能压的 fld / fsd 都压掉
    'dc': (STD + ',+c,+d', re.compile(r'rvdc|rv32dc|compress-rv32d')),
}


def mc(mattr):
    return [f'{B}/llvm-mc', '-triple=riscv32', f'-mattr={mattr}', '-target-abi=ilp32f', '-filetype=obj', '-', '-o', os.devnull]
ERR = re.compile(r'^<stdin>:(\d+):\d+: error:', re.M)
# 范围外：压缩指令 / 别的扩展（.option rvc / arch）、linker relaxation（.option relax）、
# CFI（不出 .eh_frame）、.attribute arch 的规范化（要 LLVM 的整张扩展表）、H 扩展（llvm-mc 不查扩展也收的 hfence）、厂商的 `.insn qc.*`
SCOPE = re.compile(r'^\s*(\.insn\s+qc\.|hfence\.|hinval\.|\.option\s+(rvc|arch|relax|noexact)\b|\.cfi_|\.attribute\s+(arch|5|Tag_RISCV_arch)\b)')
# C 那批：`.option rvc / norvc` 在范围内
SCOPE_C = re.compile(r'^\s*(\.insn\s+qc\.|hfence\.|hinval\.|\.option\s+(arch|relax|noexact)\b|\.cfi_|\.attribute\s+(arch|5|Tag_RISCV_arch)\b)')


def clean(text, mattr=STD, scope=SCOPE):
    """llvm-mc 报错的行注释掉，直到不报错；回 None 表示放弃。"""
    lines = ['# riscvc-scope: ' + l if scope.match(l) else l for l in text.split('\n')]
    for _ in range(10):
        r = subprocess.run(mc(mattr), input='\n'.join(lines), capture_output=True, text=True)
        bad = {int(n) - 1 for n in ERR.findall(r.stderr)}
        if r.returncode == 0:
            return '\n'.join(lines)
        if not bad:
            return None
        for i in bad:
            lines[i] = '# riscvc-fixtures: ' + lines[i]
    return None


def sources():
    for d, sub in [('llvm/test/MC/RISCV', 'mc'), ('lld/test/ELF', 'lld')]:
        for dirpath, _, files in os.walk(os.path.join(LLVM, d)):
            for f in sorted(files):
                if not f.endswith('.s') or (sub == 'lld' and not f.startswith('riscv')):
                    continue
                path = os.path.join(dirpath, f)
                rel = os.path.relpath(path, os.path.join(LLVM, d))
                stem = sub + '-' + rel[:-2].replace('/', '-')
                text = open(path, encoding='utf-8', errors='replace').read()
                parts = re.split(r'^#--- (\S+)\n', text, flags=re.M)
                if len(parts) == 1:
                    yield stem, text
                else:
                    for name, body in zip(parts[1::2], parts[2::2]):
                        if name.endswith('.s'):
                            yield f'{stem}-{name[:-2]}', body


def keep(out):
    """剩下的得真有东西：去掉注释、空行、只剩伪操作的也算有（数据伪操作）。"""
    return out is not None and any(l.strip() and not l.lstrip().startswith(('#', '//', ';')) for l in out.split('\n'))


for d in (OUT, OUT_XTHEAD, OUT_C):
    os.makedirs(d, exist_ok=True)
kept = dropped = xt = nc = 0
# ONLY=c：只重新生成 mc-c；ONLY=<扩展>（a …）：只重新生成 mc-<扩展>
only = os.environ.get('ONLY')
only_c = only == 'c'
ext_n = {}
for e in EXTS:
    if only in (None, e):
        d = os.path.join(ROOT, f'tests/fixtures/mc-{e}')
        os.makedirs(d, exist_ok=True)
        for f in os.listdir(d):
            os.remove(os.path.join(d, f))
for stem, text in sources():
    for e, (mattr, pick) in EXTS.items():
        if only in (None, e) and pick.search(stem.lower()):
            out = clean(text, mattr)
            if keep(out):
                open(os.path.join(ROOT, f'tests/fixtures/mc-{e}', stem + '.s'), 'w').write(out)
                ext_n[e] = ext_n.get(e, 0) + 1
    if only in EXTS:
        continue
    out = clean(text, C, SCOPE_C)
    if keep(out):
        open(os.path.join(OUT_C, stem + '.s'), 'w').write(out)
        nc += 1
    if only_c:
        continue
    out = clean(text)
    if keep(out):
        open(os.path.join(OUT, stem + '.s'), 'w').write(out)
        kept += 1
    else:
        dropped += 1
    if 'thead' in stem.lower():
        out = clean(text, XTHEAD)
        if keep(out):
            open(os.path.join(OUT_XTHEAD, stem + '.s'), 'w').write(out)
            xt += 1
print(f'mc fixtures: 留 {kept} 份、丢 {dropped} 份 ⇒ {OUT}；玄铁 {xt} 份 ⇒ {OUT_XTHEAD}；C {nc} 份 ⇒ {OUT_C}；扩展 {ext_n}')
