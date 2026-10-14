//! Zicsr 的格式：`rd, csr, rs1` 与 `rd, csr, uimm5`（CSR 编号在 31:20；uimm5 在 rs1 的位置）。
use crate::ext::{Args, Fixup, Operand};
use crate::isa::{Csr, Fields, Layout, Style, field};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CsrForm {
    /// `rd, csr, rs1`
    Csr,
    /// `rd, csr, uimm5`
    CsrI,
}

impl Layout for CsrForm {
    fn mask(self) -> u32 {
        0x707f
    }

    fn encode(self, f: &Fields) -> u32 {
        u32::from(f.rd) << 7 | u32::from(f.rs1) << 15 | u32::from(f.csr) << 20
    }

    fn decode(self, w: u32) -> Option<Fields> {
        Some(Fields { csr: field(w, 20, 12) as u16, ..Fields::regs_of(w) })
    }

    fn print(self, f: &Fields, _pc: u64, s: Style) -> String {
        match self {
            Self::Csr => format!("{}, {}, {}", s.x(f.rd), Csr(f.csr), s.x(f.rs1)),
            Self::CsrI => format!("{}, {}, {}", s.x(f.rd), Csr(f.csr), s.imm(i32::from(f.rs1))),
        }
    }

    fn assemble(self, args: &Args<'_>) -> Result<(Fields, Vec<Fixup>), String> {
        use Operand::{Imm, Sym, X as Xr};
        // CSR：原文是 CSR 名就按名字（哪怕同名符号 `.set` 过，同 llvm-mc），否则按值
        let csr = |k: usize| -> Result<u16, String> {
            if let Some(c) = args.raw.get(k).and_then(|r| r.parse::<Csr>().ok()) {
                return Ok(c.0);
            }
            match &args.ops[k] {
                Sym(n) => n.parse::<Csr>().map(|c| c.0).map_err(|()| format!("不认识的 CSR `{n}`")),
                Imm(v) => u16::try_from(*v).ok().filter(|&c| c < 4096).ok_or_else(|| format!("CSR 编号 {v} 越界")),
                o => Err(format!("要 CSR，见 {o:?}")),
            }
        };
        let f = match (self, args.ops) {
            (Self::Csr, [Xr(rd), _, Xr(rs)]) => Fields { csr: csr(1)?, ..Fields::ZERO.x(*rd, *rs, 0) },
            (Self::CsrI, [Xr(rd), _, Imm(k)]) => {
                let u = u8::try_from(*k).ok().filter(|&u| u < 32).ok_or_else(|| format!("{k} 不是 5 位无符号数"))?;
                Fields { csr: csr(1)?, ..Fields::ZERO.x(*rd, u, 0) }
            }
            _ => return Err(format!("{self:?} 格式的操作数不对：{:?}", args.ops)),
        };
        Ok((f, Vec::new()))
    }
}
