//! CSR 编号 ⇄ 名字（表由 `tools/gen_csr.py` 从 LLVM 的 SysRegsList 生成）。
use super::csr_table::CSRS;
use core::fmt;
use core::str::FromStr;

/// 一个 CSR 编号（12 位）。打印同 LLVM：同编号第一个非别名的名字，没有名字就印十六进制。
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub struct Csr(pub u16);

impl Csr {
    pub const FFLAGS: Self = Self(0x1);
    pub const FRM: Self = Self(0x2);
    pub const FCSR: Self = Self(0x3);
}

impl fmt::Display for Csr {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match CSRS.iter().find(|(_, n, alias)| *n == self.0 && !alias) {
            Some((name, ..)) => f.write_str(name),
            None => write!(f, "{:#x}", self.0),
        }
    }
}

impl FromStr for Csr {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, ()> {
        CSRS.iter().find(|(name, ..)| *name == s).map(|(_, n, _)| Self(*n)).ok_or(())
    }
}
