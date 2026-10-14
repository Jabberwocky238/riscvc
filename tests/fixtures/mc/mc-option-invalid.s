# RUN: not llvm-mc -triple riscv32 < %s 2>&1 \
# RUN:   | FileCheck --implicit-check-not=error: %s

# CHECK: :[[#@LINE+1]]:8: error: expected identifier
# riscvc-fixtures: .option

# CHECK: :[[#@LINE+1]]:9: error: expected identifier
# riscvc-fixtures: .option 123

# CHECK: :[[#@LINE+1]]:9: error: expected identifier
# riscvc-fixtures: .option "str"

# CHECK: :[[#@LINE+1]]:13: error: expected newline
# riscvc-scope: .option rvc foo

# CHECK: :[[#@LINE+1]]:23: error: unexpected token, expected + or -
# riscvc-scope: .option arch, +f, +d, rv32ifd, -d

# CHECK: :[[#@LINE+1]]:22: error: expected newline
# riscvc-scope: .option arch, rv32ifd, +f, +d

# CHECK: :[[#@LINE+1]]:16: error: unexpected token, expected identifier
# riscvc-scope: .option arch, +"c"

# CHECK: :[[#@LINE+1]]:16: error: unknown extension feature
# riscvc-scope: .option arch, +x

# CHECK: :[[#@LINE+1]]:16: error: unknown extension feature
# riscvc-scope: .option arch, +relax

# CHECK: :[[#@LINE+1]]:16: error: unexpected token, expected identifier
# riscvc-scope: .option arch, +

# CHECK: :[[#@LINE+1]]:18: error: expected comma
# riscvc-scope: .option arch, +c foo

# CHECK: :[[#@LINE+1]]:16: error: extension version number parsing not currently implemented
# riscvc-scope: .option arch, +c2p0

# riscvc-scope: .option arch, +d
# CHECK: :[[#@LINE+1]]:16: error: can't disable f extension; d extension requires f extension
# riscvc-scope: .option arch, -f

# CHECK: :[[#@LINE+1]]:16: error: can't disable zicsr extension; f extension requires zicsr extension
# riscvc-scope: .option arch, -zicsr

# CHECK: :[[#@LINE+1]]:20: error: 'f' and 'zfinx' extensions are incompatible
# riscvc-scope: .option arch, +f, +zfinx

## Make sure the above error isn't sticky
# riscvc-scope: .option arch, +f

# CHECK: :[[#@LINE+1]]:13: error: expected newline
# riscvc-scope: .option rvc foo

# CHECK: :[[#@LINE+1]]:12: warning: unknown option, expected 'push', 'pop', 'rvc', 'norvc', 'arch', 'relax', 'norelax', 'exact', or 'noexact'
.option bar

# CHECK: :[[#@LINE+1]]:12: error: .option pop with no .option push
# riscvc-fixtures: .option pop

# CHECK: :[[#@LINE+1]]:14: error: expected newline
# riscvc-fixtures: .option push 123

# CHECK: :[[#@LINE+1]]:13: error: expected newline
# riscvc-fixtures: .option pop 123

# CHECK: :[[#@LINE+1]]:15: error: bad arch string switching from rv32 to rv64
# riscvc-scope: .option arch, rv64gc
