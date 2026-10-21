//! Zicsr：CSR 指令。伪指令（`csrr` / `csrw` / `rdcycle` …）全是模板；浮点 CSR 的那些在 `f/`。
mod layout;

pub use layout::CsrForm;
use crate::ext::Exec;
use crate::isa::{Csr, Inst, Style};
use crate::macros::Isa;
use crate::sim::Stop;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "zicsr", form = CsrForm, alias = alias)]
#[pseudo("csrr $rd:x, $c" => "csrrs $rd, $c, zero")]
#[pseudo("csrw $c, $rs:x" => "csrrw zero, $c, $rs")]
#[pseudo("csrs $c, $rs:x" => "csrrs zero, $c, $rs")]
#[pseudo("csrc $c, $rs:x" => "csrrc zero, $c, $rs")]
#[pseudo("csrw $c, $k:i" => "csrrwi zero, $c, $k")]
#[pseudo("csrs $c, $k:i" => "csrrsi zero, $c, $k")]
#[pseudo("csrc $c, $k:i" => "csrrci zero, $c, $k")]
#[pseudo("csrwi $c, $k:i" => "csrrwi zero, $c, $k")]
#[pseudo("csrsi $c, $k:i" => "csrrsi zero, $c, $k")]
#[pseudo("csrci $c, $k:i" => "csrrci zero, $c, $k")]
#[pseudo("csrrw $rd:x, $c, $k:i" => "csrrwi $rd, $c, $k")]
#[pseudo("csrrs $rd:x, $c, $k:i" => "csrrsi $rd, $c, $k")]
#[pseudo("csrrc $rd:x, $c, $k:i" => "csrrci $rd, $c, $k")]
#[pseudo("rdcycle $rd:x" => "csrrs $rd, cycle, zero")]
#[pseudo("rdtime $rd:x" => "csrrs $rd, time, zero")]
#[pseudo("rdinstret $rd:x" => "csrrs $rd, instret, zero")]
#[pseudo("rdcycleh $rd:x" => "csrrs $rd, cycleh, zero")]
#[pseudo("rdtimeh $rd:x" => "csrrs $rd, timeh, zero")]
#[pseudo("rdinstreth $rd:x" => "csrrs $rd, instreth, zero")]
pub enum Zicsr {
    #[isa("csrrw", Csr, 0x1073, exec = |c, i| Zicsr::Csrrw.rw(c, i))]
    Csrrw,
    #[isa("csrrs", Csr, 0x2073, exec = |c, i| Zicsr::Csrrs.rw(c, i))]
    Csrrs,
    #[isa("csrrc", Csr, 0x3073, exec = |c, i| Zicsr::Csrrc.rw(c, i))]
    Csrrc,
    #[isa("csrrwi", CsrI, 0x5073, exec = |c, i| Zicsr::Csrrwi.rw(c, i))]
    Csrrwi,
    #[isa("csrrsi", CsrI, 0x6073, exec = |c, i| Zicsr::Csrrsi.rw(c, i))]
    Csrrsi,
    #[isa("csrrci", CsrI, 0x7073, exec = |c, i| Zicsr::Csrrci.rw(c, i))]
    Csrrci,
}

impl Zicsr {
    /// 读旧值进 rd、按写 / 置位 / 清位改 CSR。`unimp`（`csrrw zero, cycle, zero`）陷入。
    fn rw(self, c: &mut Exec<'_, '_>, i: &Inst<Self>) -> Result<(), Stop> {
        if self == Self::Csrrw && i.csr == 0xc00 && i.rd == 0 && i.rs1 == 0 {
            return Err(Stop::Trap(u32::from(*i)));
        }
        let old = c.csr(i.csr);
        let v = if matches!(self, Self::Csrrwi | Self::Csrrsi | Self::Csrrci) { u32::from(i.rs1) } else { c.x(i.rs1) };
        let new = match self {
            Self::Csrrw | Self::Csrrwi => v,
            Self::Csrrs | Self::Csrrsi => old | v,
            Self::Csrrc | Self::Csrrci => old & !v,
        };
        c.set_csr(i.csr, new);
        c.set(i.rd, old);
        Ok(())
    }
}

/// 浮点 CSR 的名字尾巴：`fcsr` ⇒ `csr`、`frm` ⇒ `rm`、`fflags` ⇒ `flags`（目标没有 F ⇒ 没有，见 [`Style::no_float_csr`]）。
fn fcsr(csr: u16, s: Style) -> Option<String> {
    if s.no_float_csr {
        return None;
    }
    match csr {
        0x3 => Some(String::from("csr")),
        0x2 => Some(String::from("rm")),
        0x1 => Some(String::from("flags")),
        _ => None,
    }
}

/// LLVM 的 CSR 别名（`csrr` / `csrw` / `rdcycle` …；浮点 CSR 的 `frcsr` / `fscsr` / `fsrmi` …）。
fn alias(i: &Inst<Zicsr>, _pc: u64, s: Style) -> Option<(String, String)> {
    let (rd, rs) = (s.x(i.rd), s.x(i.rs1));
    let (name, ops) = match (i.op, i.rd, i.rs1) {
        (Zicsr::Csrrs, _, 0) => match (fcsr(i.csr, s), i.csr) {
            (Some(t), _) => (format!("fr{t}"), rd),
            (None, 0xc00) => (String::from("rdcycle"), rd),
            (None, 0xc01) => (String::from("rdtime"), rd),
            (None, 0xc02) => (String::from("rdinstret"), rd),
            (None, 0xc80) => (String::from("rdcycleh"), rd),
            (None, 0xc81) => (String::from("rdtimeh"), rd),
            (None, 0xc82) => (String::from("rdinstreth"), rd),
            _ => (String::from("csrr"), format!("{rd}, {}", Csr(i.csr))),
        },
        (Zicsr::Csrrw, 0, _) if let Some(t) = fcsr(i.csr, s) => (format!("fs{t}"), rs),
        (Zicsr::Csrrw | Zicsr::Csrrs | Zicsr::Csrrc, 0, _) => {
            let n = match i.op {
                Zicsr::Csrrw => "csrw",
                Zicsr::Csrrs => "csrs",
                _ => "csrc",
            };
            (String::from(n), format!("{}, {rs}", Csr(i.csr)))
        }
        (Zicsr::Csrrwi | Zicsr::Csrrsi | Zicsr::Csrrci, 0, _) => {
            let n = match i.op {
                Zicsr::Csrrwi => "csrwi",
                Zicsr::Csrrsi => "csrsi",
                _ => "csrci",
            };
            (String::from(n), format!("{}, {}", Csr(i.csr), s.imm(i32::from(i.rs1))))
        }
        (Zicsr::Csrrw, _, _) if let Some(t) = fcsr(i.csr, s) => (format!("fs{t}"), format!("{rd}, {rs}")),
        (Zicsr::Csrrwi, _, _) if let Some(t) = fcsr(i.csr, s).filter(|_| i.csr != 0x3) => (format!("fs{t}i"), format!("{rd}, {}", s.imm(i32::from(i.rs1)))),
        _ => return None,
    };
    Some((name, ops))
}
