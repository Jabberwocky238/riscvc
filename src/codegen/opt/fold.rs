//! 化简：已知常数下一条指令等于什么。
//!
//! | 形状 | 结果 |
//! | --- | --- |
//! | 操作数全是常数 | `li`（0 ⇒ `zero`） |
//! | `x + 0`、`x | 0`、`x ^ 0`、`x << 0`、`x & -1`、`x * 1` … | x |
//! | `x & 0`、`x * 0`、`x - x`、`x ^ x`、`x <u 0` | `zero` |
//! | `op x, 常数`（放得进 12 位） | 立即数形式（`sub` ⇒ `addi -k`，移位量取低 5 位） |
//! | `x * 2ⁿ` | `slli x, n` |
//! | `addi (addi x, a), b` | `addi x, a + b`（放得进 12 位） |
//!
//! 常数在左边的可交换运算先换到右边。SSA ⇒ 一个虚拟寄存器的值处处相同，[`Known`] 不用分作用域。
//!
//! 条件跳转与 `select` 的条件（同 SelectionDAG 把 setcc 并进 brcond）：`bne c, zero` 里 `c` 是比较算出来的 0/1 ⇒
//! 直接拿比较的操作数跳（`seqz x` ⇒ `beq x, zero`、`slt a, b` ⇒ `blt a, b`、`xori c, 1` ⇒ 反条件 …）。
use super::{MInst, MOp, R};
use crate::feature::Zmmul;
use crate::isa::{Opcode, Rv32i as IOp};
use regalloc2::VReg;
use std::collections::HashMap;

/// 化简的结果。
pub enum Fold {
    /// 就是这个寄存器（定义可删）。
    Same(R),
    /// 换成这条指令（操作数）。
    Into(MOp, Vec<R>),
}

impl Fold {
    /// 一个常数（0 ⇒ `zero`）。
    fn constant(k: i32) -> Self {
        if k == 0 { Self::Same(R::ZERO) } else { Self::Into(MOp::Li(k), Vec::new()) }
    }
}

/// 化简时知道的事：哪些虚拟寄存器是常数、哪些是「寄存器 + 常数」（`addi` 的结果）。
#[derive(Default)]
pub struct Known {
    consts: HashMap<VReg, i32>,
    offsets: HashMap<VReg, (R, i32)>,
    /// 整数运算的定义（找条件的来历用）。
    defs: HashMap<VReg, (MOp, Vec<R>)>,
}

/// 12 位有符号立即数放得下。
fn fits(k: i64) -> bool {
    (-2048..2048).contains(&k)
}

impl Known {
    fn value(&self, r: R) -> Option<i32> {
        match r {
            R::P(0) => Some(0),
            R::P(_) => None,
            R::V(v) => self.consts.get(&v).copied(),
        }
    }

    /// 记下一条（已化简的）指令定义了什么。
    pub fn learn(&mut self, i: &MInst) {
        let Some(d) = i.def() else { return };
        match (&i.op, i.uses.as_slice()) {
            (MOp::Li(k), []) => {
                self.consts.insert(d, *k);
            }
            (MOp::Imm(IOp::Addi, k), [r]) => {
                self.offsets.insert(d, (*r, *k));
            }
            _ => {}
        }
        if matches!(i.op, MOp::Imm(..) | MOp::Reg(Opcode::I(_), _)) {
            self.defs.insert(d, (i.op.clone(), i.uses.clone()));
        }
    }

    /// 0/1 的 `c` 是怎么比出来的：（分支操作, a, b），`b<op> a, b` 成立 ⇔ `c ≠ 0`。
    fn condition(&self, c: R, depth: u32) -> Option<(IOp, R, R)> {
        let R::V(v) = c else { return None };
        let (op, uses) = self.defs.get(&v)?;
        Some(match (op, uses.as_slice()) {
            (MOp::Imm(IOp::Sltiu, 1), &[x]) => (IOp::Beq, x, R::ZERO),
            (MOp::Imm(IOp::Slti, 0), &[x]) => (IOp::Blt, x, R::ZERO),
            (MOp::Reg(Opcode::I(IOp::Sltu), _), &[R::ZERO, x]) => (IOp::Bne, x, R::ZERO),
            (MOp::Reg(Opcode::I(IOp::Slt), _), &[a, b]) => (IOp::Blt, a, b),
            (MOp::Reg(Opcode::I(IOp::Sltu), _), &[a, b]) => (IOp::Bltu, a, b),
            (MOp::Imm(IOp::Xori, 1), &[y]) if depth < 8 => {
                let (op, a, b) = self.condition(y, depth + 1)?;
                (op.inverted()?, a, b)
            }
            _ => return None,
        })
    }

    /// ⭐ 条件跳转 / `select` 的条件 `op a, b` 能不能直接换成比较本身。
    pub fn branch(&self, op: IOp, a: R, b: R) -> Option<(IOp, R, R)> {
        let (c, op) = match (a, b) {
            (c, R::ZERO) | (R::ZERO, c) => (c, op),
            _ => return None,
        };
        let (cop, x, y) = self.condition(c, 0)?;
        match op {
            IOp::Bne => Some((cop, x, y)),
            IOp::Beq => Some((cop.inverted()?, x, y)),
            _ => None,
        }
    }

    /// ⭐ 这条指令能化简成什么；不能 ⇒ `None`。
    pub fn fold(&self, i: &MInst) -> Option<Fold> {
        i.def()?;
        match (&i.op, i.uses.as_slice()) {
            (MOp::Li(0), []) => Some(Fold::Same(R::ZERO)),
            (MOp::Imm(op, k), &[a]) => self.imm(*op, *k, a),
            (MOp::Reg(Opcode::I(op), _), &[a, b]) => self.reg(*op, a, b),
            (MOp::Reg(Opcode::Zmmul(Zmmul::Mul), _), &[a, b]) => self.mul(a, b),
            _ => None,
        }
    }

    /// 两个常数上的整数运算（R 型与立即数型同一套语义；移位量取低 5 位）。
    fn eval(op: IOp, a: i32, b: i32) -> Option<i32> {
        let shift = b.cast_unsigned() & 31;
        Some(match op {
            IOp::Add | IOp::Addi => a.wrapping_add(b),
            IOp::Sub => a.wrapping_sub(b),
            IOp::Sll | IOp::Slli => a.wrapping_shl(shift),
            IOp::Slt | IOp::Slti => i32::from(a < b),
            IOp::Sltu | IOp::Sltiu => i32::from(a.cast_unsigned() < b.cast_unsigned()),
            IOp::Xor | IOp::Xori => a ^ b,
            IOp::Srl | IOp::Srli => (a.cast_unsigned() >> shift).cast_signed(),
            IOp::Sra | IOp::Srai => a >> shift,
            IOp::Or | IOp::Ori => a | b,
            IOp::And | IOp::Andi => a & b,
            _ => return None,
        })
    }

    /// `op rd, a, k`。
    fn imm(&self, op: IOp, k: i32, a: R) -> Option<Fold> {
        if let Some(x) = self.value(a) {
            return Self::eval(op, x, k).map(Fold::constant);
        }
        match op {
            IOp::Addi | IOp::Ori | IOp::Xori | IOp::Slli | IOp::Srli | IOp::Srai if k == 0 => Some(Fold::Same(a)),
            IOp::Andi if k == 0 => Some(Fold::Same(R::ZERO)),
            IOp::Andi if k == -1 => Some(Fold::Same(a)),
            IOp::Addi => {
                let R::V(v) = a else { return None };
                let &(base, k0) = self.offsets.get(&v)?;
                let sum = i32::try_from(i64::from(k0) + i64::from(k)).ok().filter(|s| fits(i64::from(*s)))?;
                Some(Fold::Into(MOp::Imm(IOp::Addi, sum), vec![base]))
            }
            _ => None,
        }
    }

    /// `op rd, a, b`（RV32I 的 R 型）。
    fn reg(&self, op: IOp, a: R, b: R) -> Option<Fold> {
        let (ca, cb) = (self.value(a), self.value(b));
        if let (Some(x), Some(y)) = (ca, cb) {
            return Self::eval(op, x, y).map(Fold::constant);
        }
        // 可交换的：常数挪到右边
        let (a, b, cb) = if matches!(op, IOp::Add | IOp::And | IOp::Or | IOp::Xor) && ca.is_some() { (b, a, ca) } else { (a, b, cb) };
        if a == b {
            match op {
                IOp::Sub | IOp::Xor | IOp::Slt | IOp::Sltu => return Some(Fold::Same(R::ZERO)),
                IOp::And | IOp::Or => return Some(Fold::Same(a)),
                _ => {}
            }
        }
        let k = cb?;
        match op {
            IOp::Add | IOp::Sub | IOp::Or | IOp::Xor | IOp::Sll | IOp::Srl | IOp::Sra if k == 0 => return Some(Fold::Same(a)),
            IOp::And | IOp::Sltu if k == 0 => return Some(Fold::Same(R::ZERO)),
            _ => {}
        }
        let (op, k) = match op {
            IOp::Add => (IOp::Addi, k),
            IOp::Sub => (IOp::Addi, k.checked_neg()?),
            IOp::And => (IOp::Andi, k),
            IOp::Or => (IOp::Ori, k),
            IOp::Xor => (IOp::Xori, k),
            IOp::Slt => (IOp::Slti, k),
            IOp::Sltu => (IOp::Sltiu, k),
            IOp::Sll => (IOp::Slli, k & 31),
            IOp::Srl => (IOp::Srli, k & 31),
            IOp::Sra => (IOp::Srai, k & 31),
            _ => return None,
        };
        fits(i64::from(k)).then(|| Fold::Into(MOp::Imm(op, k), vec![a]))
    }

    /// `mul rd, a, b`。
    fn mul(&self, a: R, b: R) -> Option<Fold> {
        let (ca, cb) = (self.value(a), self.value(b));
        if let (Some(x), Some(y)) = (ca, cb) {
            return Some(Fold::constant(x.wrapping_mul(y)));
        }
        let (a, k) = match (ca, cb) {
            (Some(k), None) => (b, k),
            (None, Some(k)) => (a, k),
            _ => return None,
        };
        match k {
            0 => Some(Fold::Same(R::ZERO)),
            1 => Some(Fold::Same(a)),
            k if k > 0 && k.cast_unsigned().is_power_of_two() => Some(Fold::Into(MOp::Imm(IOp::Slli, k.trailing_zeros().cast_signed()), vec![a])),
            _ => None,
        }
    }
}
