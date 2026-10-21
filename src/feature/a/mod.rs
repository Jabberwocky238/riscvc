//! A：原子指令（Zalrsc 的 `lr.w` / `sc.w` + Zaamo 的 `amo*.w`），每条带四种序：无、`.aq`、`.rl`、`.aqrl`（bit 26 / 25）。
//! 单核语义：`amo` 读改写一气呵成；`lr.w` 记下保留地址，`sc.w` 地址还在保留里才写（成功 rd = 0，否则 1），无论成败都清保留。
mod layout;

pub use layout::AForm;
use crate::ext::Exec;
use crate::isa::Inst;
use crate::macros::Isa;

/// `funct5 << 27 | funct3 = 010 | opcode = 0x2f`。
const fn w(funct5: u32) -> u32 {
    funct5 << 27 | 0x202f
}

/// 序位：aq = bit 26，rl = bit 25。
const AQ: u32 = 1 << 26;
const RL: u32 = 1 << 25;

/// ⭐ 一行一种操作，展开成四种序的四条：`名字 [无, aq, rl, aqrl], 格式, funct5, 语义`。
macro_rules! atomics {
    ($($v:ident $va:ident $vr:ident $var:ident [$n:literal, $na:literal, $nr:literal, $nar:literal], $form:ident, $f5:literal, $exec:expr;)*) => {
        #[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
        #[isa(name = "a", form = AForm)]
        pub enum Atomic {
            $(
                #[isa($n, $form, w($f5), exec = $exec)]
                $v,
                #[isa($na, $form, w($f5) | AQ, exec = $exec)]
                $va,
                #[isa($nr, $form, w($f5) | RL, exec = $exec)]
                $vr,
                #[isa($nar, $form, w($f5) | AQ | RL, exec = $exec)]
                $var,
            )*
        }
    };
}

atomics! {
    LrW LrWAq LrWRl LrWAqrl ["lr.w", "lr.w.aq", "lr.w.rl", "lr.w.aqrl"], Lr, 0b00010, Atomic::lr;
    ScW ScWAq ScWRl ScWAqrl ["sc.w", "sc.w.aq", "sc.w.rl", "sc.w.aqrl"], Amo, 0b00011, Atomic::sc;
    AmoswapW AmoswapWAq AmoswapWRl AmoswapWAqrl ["amoswap.w", "amoswap.w.aq", "amoswap.w.rl", "amoswap.w.aqrl"], Amo, 0b00001, |c, i| Atomic::amo(c, i, |_, b| b);
    AmoaddW AmoaddWAq AmoaddWRl AmoaddWAqrl ["amoadd.w", "amoadd.w.aq", "amoadd.w.rl", "amoadd.w.aqrl"], Amo, 0b00000, |c, i| Atomic::amo(c, i, u32::wrapping_add);
    AmoxorW AmoxorWAq AmoxorWRl AmoxorWAqrl ["amoxor.w", "amoxor.w.aq", "amoxor.w.rl", "amoxor.w.aqrl"], Amo, 0b00100, |c, i| Atomic::amo(c, i, |a, b| a ^ b);
    AmoandW AmoandWAq AmoandWRl AmoandWAqrl ["amoand.w", "amoand.w.aq", "amoand.w.rl", "amoand.w.aqrl"], Amo, 0b01100, |c, i| Atomic::amo(c, i, |a, b| a & b);
    AmoorW AmoorWAq AmoorWRl AmoorWAqrl ["amoor.w", "amoor.w.aq", "amoor.w.rl", "amoor.w.aqrl"], Amo, 0b01000, |c, i| Atomic::amo(c, i, |a, b| a | b);
    AmominW AmominWAq AmominWRl AmominWAqrl ["amomin.w", "amomin.w.aq", "amomin.w.rl", "amomin.w.aqrl"], Amo, 0b10000, |c, i| Atomic::amo(c, i, |a, b| a.cast_signed().min(b.cast_signed()).cast_unsigned());
    AmomaxW AmomaxWAq AmomaxWRl AmomaxWAqrl ["amomax.w", "amomax.w.aq", "amomax.w.rl", "amomax.w.aqrl"], Amo, 0b10100, |c, i| Atomic::amo(c, i, |a, b| a.cast_signed().max(b.cast_signed()).cast_unsigned());
    AmominuW AmominuWAq AmominuWRl AmominuWAqrl ["amominu.w", "amominu.w.aq", "amominu.w.rl", "amominu.w.aqrl"], Amo, 0b11000, |c, i| Atomic::amo(c, i, u32::min);
    AmomaxuW AmomaxuWAq AmomaxuWRl AmomaxuWAqrl ["amomaxu.w", "amomaxu.w.aq", "amomaxu.w.rl", "amomaxu.w.aqrl"], Amo, 0b11100, |c, i| Atomic::amo(c, i, u32::max);
}

/// 内存序（C 的编码：0 relaxed、2 acquire、3 release、4 acq_rel、5 seq_cst）⇒（aq, rl）。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Order {
    pub aq: bool,
    pub rl: bool,
}

impl Atomic {
    /// `amo* rd, rs2, (rs1)`：旧值进 rd，`f(旧值, rs2)` 写回（先读 rs2：rd 可以就是 rs2）。
    fn amo(c: &mut Exec<'_, '_>, i: &Inst<Self>, f: impl Fn(u32, u32) -> u32) {
        let (addr, v) = (c.x(i.rs1), c.x(i.rs2));
        let old = c.load(addr, 4);
        c.store(addr, &f(old, v).to_le_bytes());
        c.set(i.rd, old);
    }

    fn lr(c: &mut Exec<'_, '_>, i: &Inst<Self>) {
        let addr = c.x(i.rs1);
        c.cpu.reservation = Some(addr);
        let v = c.load(addr, 4);
        c.set(i.rd, v);
    }

    fn sc(c: &mut Exec<'_, '_>, i: &Inst<Self>) {
        let (addr, v) = (c.x(i.rs1), c.x(i.rs2));
        let ok = c.cpu.reservation.take() == Some(addr);
        if ok {
            c.store(addr, &v.to_le_bytes());
        }
        c.set(i.rd, u32::from(!ok));
    }

    /// 同一操作带上序位（`amoadd.w` + aq ⇒ `amoadd.w.aq`）。
    #[must_use]
    pub fn ordered(self, o: Order) -> Self {
        use crate::isa::Table;
        let bits = self.bits() & !(AQ | RL) | if o.aq { AQ } else { 0 } | if o.rl { RL } else { 0 };
        *Self::ALL.iter().find(|op| op.bits() == bits).expect("四种序都在表里")
    }
}

impl From<u8> for Order {
    /// C 内存序 ⇒ `amo` 的序位（同 LLVM 的 RISCV ISel：relaxed 无、acquire `.aq`、release `.rl`、acq_rel / seq_cst `.aqrl`）。
    fn from(order: u8) -> Self {
        match order {
            0 | 1 => Self { aq: false, rl: false },
            2 => Self { aq: true, rl: false },
            3 => Self { aq: false, rl: true },
            _ => Self { aq: true, rl: true },
        }
    }
}
