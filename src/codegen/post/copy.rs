//! 分配后的拷贝消除（同 LLVM 的 `MachineCopyPropagation`）。
//!
//! ⭐ 为什么非得自己做：regalloc2 宁可拆活跃区间也不溢出，每道接缝赔一条 `mv`；而它
//! **没有**分配后的拷贝消除（上游 issue #265 开着没修），Cranelift 也没有。
//! 这一步不碰分配器，纯窥孔。
//!
//! **目的前移**：`op … → rs` 之后跟着 `mv rd, rs`，且 `rs` 此后不再被读
//! ⇒ 把 `op` 的目的直接写成 `rd`，删掉 `mv`。块内变换，靠一份全函数的物理寄存器活跃性兜底。
//!
//! ⚠ **本来还有第二条「删死拷贝」（`mv rd, rs` 而 `rd` 此后不再被读 ⇒ 直接删），没有收进来。**
//! 它在四份语料上多省 300~700 条指令、`lit_vs_llc` 1080 份也全过，但 `rust_e2e`（真链接、
//! 真跑）会 panic。逐条核对过被删的实例都是对的，根因没找到。
//! ⛔ 想加回来的，先让 `rust_e2e` 绿，别只看 lit。
//!
//! ⛔ 正确性全压在 [`shape`] 上：认不出的指令一律当屏障（读写全部），宁可不优化。
use super::{PFunc, PInst, Term};
use super::super::abi::Abi;
use crate::feature::{FForm, Float};
use crate::isa::{Base, F, Inst, Opcode, Rv32i as IOp, X};
use smallvec::SmallVec;

/// 物理寄存器编号：整数 `0..32`，浮点 `32..64`。
type Reg = u8;
type Set = u64;

const fn xr(n: u8) -> Reg {
    n
}
const fn fr(n: u8) -> Reg {
    n + 32
}
const fn bit(r: Reg) -> Set {
    1u64 << r
}
fn mask(rs: impl IntoIterator<Item = Reg>) -> Set {
    rs.into_iter().fold(0, |s, r| s | bit(r))
}

/// 一个使用在指令里的位置。
#[derive(Clone, Copy, PartialEq, Eq)]
enum Slot {
    Rs1,
    Rs2,
    Rs3,
}

/// 一条真指令的寄存器形态：目的（能不能改名）与各使用的位置。
struct Shape {
    def: Option<Reg>,
    /// 目的能不能改名（调用 / `jal` 这类由 ABI 定死的不行）。
    renamable: bool,
    uses: SmallVec<[(Slot, Reg); 3]>,
    /// 额外破坏（调用）。
    clobbers: Set,
}

/// 一条真指令读写哪些寄存器。`None` ⇒ 认不出，⛔ 当屏障。
fn shape(x: &Inst, clob: Set) -> Option<Shape> {
    let (rd, rs1, rs2, rs3) = (x.rd, x.rs1, x.rs2, x.rs3);
    let d = |r: u8| (r != 0).then_some(xr(r));
    let args = || mask((10..=17u8).map(xr).chain((10..=17u8).map(fr)));
    let plain = |def, renamable, uses: &[(Slot, Reg)]| Some(Shape { def, renamable, uses: SmallVec::from_slice(uses), clobbers: 0 });
    match x.op {
        Opcode::I(o) => match o.form() {
            // ⚠ 两种形态，⛔ 别混：`jalr ra, …` 是间接调用（破坏调用方保存集）；
            //   `jr rs`（`rd == x0`）是跳转表的块内跳转，**什么都不破坏**——
            //   当成调用会把还活着的值误判为死的，那是不安全的一边。
            Base::Jalr if rd == 0 => Some(Shape { def: None, renamable: false, uses: SmallVec::from_slice(&[(Slot::Rs1, xr(rs1))]), clobbers: 0 }),
            Base::Jalr => Some(Shape { def: d(rd), renamable: false, uses: SmallVec::from_slice(&[(Slot::Rs1, xr(rs1))]), clobbers: clob | args() | bit(xr(1)) }),
            // `jal`：目的由 ABI 定（ra）
            Base::J => Some(Shape { def: d(rd), renamable: false, uses: SmallVec::new(), clobbers: clob }),
            Base::U => plain(d(rd), true, &[]),
            Base::Load | Base::Imm | Base::Shift => plain(d(rd), true, &[(Slot::Rs1, xr(rs1))]),
            Base::R => plain(d(rd), true, &[(Slot::Rs1, xr(rs1)), (Slot::Rs2, xr(rs2))]),
            Base::Store | Base::Branch | Base::Sfence => plain(None, false, &[(Slot::Rs1, xr(rs1)), (Slot::Rs2, xr(rs2))]),
            Base::Fence => plain(None, false, &[]),
            // ecall / ebreak / mret …
            Base::Fixed => None,
        },
        Opcode::M(_) | Opcode::Zmmul(_) => plain(d(rd), true, &[(Slot::Rs1, xr(rs1)), (Slot::Rs2, xr(rs2))]),
        Opcode::F(o) => match o.form() {
            FForm::FLoad => plain(Some(fr(rd)), true, &[(Slot::Rs1, xr(rs1))]),
            FForm::FStore => plain(None, false, &[(Slot::Rs1, xr(rs1)), (Slot::Rs2, fr(rs2))]),
            FForm::FR | FForm::FRrm => plain(Some(fr(rd)), true, &[(Slot::Rs1, fr(rs1)), (Slot::Rs2, fr(rs2))]),
            FForm::FR1rm => plain(Some(fr(rd)), true, &[(Slot::Rs1, fr(rs1))]),
            FForm::FCmp => plain(d(rd), true, &[(Slot::Rs1, fr(rs1)), (Slot::Rs2, fr(rs2))]),
            FForm::FToX | FForm::FCvtXF => plain(d(rd), true, &[(Slot::Rs1, fr(rs1))]),
            FForm::XToF | FForm::FCvtFX => plain(Some(fr(rd)), true, &[(Slot::Rs1, xr(rs1))]),
            FForm::R4 => plain(Some(fr(rd)), true, &[(Slot::Rs1, fr(rs1)), (Slot::Rs2, fr(rs2)), (Slot::Rs3, fr(rs3))]),
        },
        // CSR：读写状态
        Opcode::Zicsr(_) => None,
    }
}

/// 一条 [`PInst`] 的读集与写集；`None` ⇒ 屏障。
fn eff(i: &PInst, clob: Set) -> Option<(Set, Set)> {
    let args = mask((10..=17u8).map(xr).chain((10..=17u8).map(fr)));
    match i {
        PInst::Li(rd, _) | PInst::La(rd, ..) => Some((0, if *rd == 0 { 0 } else { bit(xr(*rd)) })),
        PInst::Call(_) => Some((args, clob | bit(xr(1)))),
        PInst::Trap => Some((0, 0)),
        PInst::I(x) => shape(x, clob).map(|s| (mask(s.uses.iter().map(|&(_, r)| r)), s.clobbers | s.def.map_or(0, bit))),
    }
}

/// 纯拷贝 `rd ← rs`（同一类）。
fn copy_of(i: &PInst) -> Option<(Reg, Reg)> {
    let PInst::I(x) = i else { return None };
    match x.op {
        Opcode::I(IOp::Addi) if x.imm == 0 && x.rd != 0 && x.rs1 != 0 => Some((xr(x.rd), xr(x.rs1))),
        Opcode::F(Float::FsgnjS) if x.rs1 == x.rs2 => Some((fr(x.rd), fr(x.rs1))),
        _ => None,
    }
}

/// 块末之后还活着的（终结符按 ABI 给）。⛔ 宁可多算活。
fn exit_live(t: &Term) -> Set {
    let fixed = mask([1u8, 2, 3, 4].map(xr)); // ra sp gp tp
    let callee = mask((0..32u8).filter(|&n| Abi::callee_saved_x(n)).map(xr).chain((0..32u8).filter(|&n| Abi::callee_saved_f(n)).map(fr)));
    let args = mask((10..=17u8).map(xr).chain((10..=17u8).map(fr)));
    match t {
        Term::Ret => fixed | callee | mask([xr(10), xr(11), fr(10), fr(11)]),
        Term::Tail(_) => fixed | callee | args,
        _ => 0,
    }
}

/// 终结符自己读的。
fn term_reads(t: &Term) -> Set {
    match *t {
        Term::Branch { a, b, .. } => bit(xr(a)) | bit(xr(b)),
        _ => 0,
    }
}

impl PFunc {
    /// 每个块出口处活着的物理寄存器（反向数据流到不动点）。
    fn live_out(&self, clob: Set) -> Vec<Set> {
        let n = self.blocks.len();
        let (mut out, mut inn) = (vec![0u64; n], vec![0u64; n]);
        loop {
            let mut changed = false;
            for b in (0..n).rev() {
                let blk = &self.blocks[b];
                let o = blk.term.targets().iter().fold(exit_live(&blk.term), |a, &s| a | inn[s]);
                let mut live = o | term_reads(&blk.term);
                for i in blk.insts.iter().rev() {
                    match eff(i, clob) {
                        // ⛔ 屏障：读写全部 ⇒ 入口处一切都活
                        None => live = !0,
                        Some((r, w)) => live = (live & !w) | r,
                    }
                }
                if o != out[b] || live != inn[b] {
                    (out[b], inn[b]) = (o, live);
                    changed = true;
                }
            }
            if !changed {
                return out;
            }
        }
    }

    /// ⭐ 分配后的拷贝消除；返回删掉的条数。
    pub(super) fn propagate_copies(&mut self) -> usize {
        let clob = mask((0..32u8).filter(|&n| Abi::caller_saved().contains(X(n).preg())).map(xr).chain((0..32u8).filter(|&n| Abi::caller_saved().contains(F(n).preg())).map(fr)));
        let live_out = self.live_out(clob);
        (0..self.blocks.len()).map(|b| self.block_copies(b, live_out[b], clob)).sum()
    }

    fn block_copies(&mut self, b: usize, live_out: Set, clob: Set) -> usize {
        let mut drop: Vec<usize> = Vec::new();
        for i in 0..self.blocks[b].insts.len() {
            let Some((rd, rs)) = copy_of(&self.blocks[b].insts[i]) else { continue };
            let rs_later = self.read_after(b, i, rs, live_out, clob);
            if !rs_later && self.fold_def(b, i, rd, rs, clob, &drop) {
                drop.push(i);
            }
        }
        for &i in drop.iter().rev() {
            self.blocks[b].insts.remove(i);
        }
        drop.len()
    }

    /// 第 `i` 条之后 `rs` 还会不会被读（含块末与活出块）。⛔ 认不出的指令一律算「会」。
    fn read_after(&self, b: usize, i: usize, rs: Reg, live_out: Set, clob: Set) -> bool {
        let blk = &self.blocks[b];
        let mut read = (live_out | term_reads(&blk.term)) & bit(rs) != 0;
        let mut dead = false;
        for k in i + 1..blk.insts.len() {
            let Some((r, w)) = eff(&blk.insts[k], clob) else { return true };
            read |= !dead && r & bit(rs) != 0;
            dead |= w & bit(rs) != 0;
        }
        read
    }

    /// 甲：往回找唯一定义 `rs` 的那条，把它的目的改成 `rd`。
    fn fold_def(&mut self, b: usize, i: usize, rd: Reg, rs: Reg, clob: Set, drop: &[usize]) -> bool {
        let mut at = None;
        for k in (0..i).rev() {
            if drop.contains(&k) {
                continue;
            }
            let Some((r, w)) = eff(&self.blocks[b].insts[k], clob) else { return false };
            // `rd` 在 `[k, i)` 里被读或被写 ⇒ 不能提前占用它
            if r & bit(rd) != 0 || w & bit(rd) != 0 {
                return false;
            }
            // ⭐ `rs` 在 `(k, i)` 里被读 ⇒ 改了第 k 条的目的之后它就读不到值了
            if r & bit(rs) != 0 {
                return false;
            }
            if w & bit(rs) != 0 {
                // 必须是「只写 rs 一个、且目的可改名」的那种
                let ok = w == bit(rs)
                    && match &self.blocks[b].insts[k] {
                        PInst::Li(..) | PInst::La(..) => true,
                        PInst::I(x) => shape(x, clob).is_some_and(|s| s.renamable && s.def == Some(rs)),
                        PInst::Call(_) | PInst::Trap => false,
                    };
                if !ok {
                    return false;
                }
                at = Some(k);
                break;
            }
        }
        let Some(k) = at else { return false };
        match &mut self.blocks[b].insts[k] {
            PInst::Li(d, _) | PInst::La(d, ..) => *d = rd % 32,
            PInst::I(x) => x.rd = rd % 32,
            PInst::Call(_) | PInst::Trap => return false,
        }
        true
    }
}
