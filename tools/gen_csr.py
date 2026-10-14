#!/usr/bin/env python3
"""CSR 名字表：从 LLVM 构建树的 RISCVGenSearchableTables.inc 抽 SysRegsList ⇒ src/isa/csr.rs。

    tools/gen_csr.py <llvm 构建目录>/lib/Target/RISCV/RISCVGenSearchableTables.inc > src/isa/csr.rs

只留不需要目标特性的（FeaturesRequired 为空）；RV64 专有的不要。
每行：名字、编号、是否只作别名（打印时跳过：alt / deprecated）。打印取同编号里第一个非别名的，同 LLVM 的 RISCVInstPrinter。
"""
import re
import sys

text = open(sys.argv[1]).read()
body = text[text.index('constexpr SysReg SysRegsList[] = {'):]
body = body[:body.index('};')]
rows = []
for m in re.finditer(r'\{ "([^"]+)", (0x[0-9A-Fa-f]+),\s*\{([^}]*)\}\s*, (\w+), (\w+), (\w+) \}', body):
    name, enc, feats, rv32, alt, dep = m.groups()
    if feats.strip():
        continue
    rows.append((name, int(enc, 16), alt == 'true' or dep == 'true'))
print('// 生成的：tools/gen_csr.py（⛔ 手改）。')
print('/// （名字, 编号, 只作别名）。')
print('pub(super) const CSRS: &[(&str, u16, bool)] = &[')
for name, enc, alias in rows:
    print(f'    ("{name}", {enc:#x}, {"true" if alias else "false"}),')
print('];')
