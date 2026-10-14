#!/usr/bin/env python3
"""LLVM 自带的测试 fixture ⇒ 对拍语料（入库）tests/fixtures/mc/<目录>-<名>.s。用法：tools/fixtures.py [LLVM bin 目录]

  来源：llvm/test/MC/RISCV（含子目录）、lld/test/ELF/riscv-*.s 的全部 `.s`。
  按 CCU 标量核的开关（rv32 +m,+f,+zicsr,-relax，ilp32f）过 llvm-mc：它报错的行注释掉、再过，直到不报错；
  剩下的就是「llvm-mc 在这个目标上接受的部分」，riscvc as 必须出一样的目标文件。整份删光或 10 轮还报错的丢掉。
  lld 的 fixture 里 `split-file` 的多份（`#--- 名`）拆成多份。
  ⛔ 范围外的先注释掉（见 SCOPE），再过 llvm-mc：被它们打开的扩展指令随之被 llvm-mc 拒掉。
"""
import os, re, subprocess, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
B = sys.argv[1] if len(sys.argv) > 1 else os.environ.get('RISCVC_LLVM_BIN', os.path.join(ROOT, '../llvm-project/build/bin'))
LLVM = os.path.join(ROOT, '../llvm-project')
OUT = os.path.join(ROOT, 'tests/fixtures/mc')
MC = [f'{B}/llvm-mc', '-triple=riscv32', '-mattr=+m,+f,+zicsr,-relax', '-target-abi=ilp32f', '-filetype=obj', '-', '-o', os.devnull]
ERR = re.compile(r'^<stdin>:(\d+):\d+: error:', re.M)
# 范围外：压缩指令 / 别的扩展（.option rvc / arch）、linker relaxation（.option relax）、
# CFI（不出 .eh_frame）、.attribute arch 的规范化（要 LLVM 的整张扩展表）、H 扩展（llvm-mc 不查扩展也收的 hfence）、厂商的 `.insn qc.*`
SCOPE = re.compile(r'^\s*(\.insn\s+qc\.|hfence\.|hinval\.|\.option\s+(rvc|arch|relax|noexact)\b|\.cfi_|\.attribute\s+(arch|5|Tag_RISCV_arch)\b)')


def clean(text):
    """llvm-mc 报错的行注释掉，直到不报错；回 None 表示放弃。"""
    lines = ['# riscvc-scope: ' + l if SCOPE.match(l) else l for l in text.split('\n')]
    for _ in range(10):
        r = subprocess.run(MC, input='\n'.join(lines), capture_output=True, text=True)
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


os.makedirs(OUT, exist_ok=True)
kept = dropped = 0
for stem, text in sources():
    out = clean(text)
    # 剩下的得真有东西：去掉注释、空行、只剩伪操作的也算有（数据伪操作）
    if out is None or not any(l.strip() and not l.lstrip().startswith(('#', '//', ';')) for l in out.split('\n')):
        dropped += 1
        continue
    open(os.path.join(OUT, stem + '.s'), 'w').write(out)
    kept += 1
print(f'mc fixtures: 留 {kept} 份、丢 {dropped} 份 ⇒ {OUT}')
