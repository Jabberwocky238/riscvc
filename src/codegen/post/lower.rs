//! 机器 IR + 分配结果 ⇒ [`PFunc`]：序言 / 尾声、regalloc2 的搬运、虚拟寄存器换成分到的物理寄存器、
//! 帧里的地址落成 `sp` / `s0` 加偏移，`select` 切成「条件跳转 + 搬运块」。
use super::frame::Frame;
use super::{PBlock, PFunc, PInst, Selected, Term};
use crate::codegen::mir::{Base, MFunc, MInst, MOp, R};
use crate::feature::Float;
use crate::isa::{Inst, Opcode, Rv32i as IOp, X};
use crate::regalloc::{Allocation, Block, Edit, InstOrEdit, Output, PReg, RegClass};
use smallvec::SmallVec;

/// `t6`：不参与分配，大偏移、成环的搬运、栈到栈的搬运借它。
const SCRATCH: u8 = 31;


/// 一次寄存器搬运（`src = None` ⇒ 从 [`SCRATCH`] 搬）。
struct Move {
    dst: u8,
    src: Option<u8>,
    float: bool,
}

pub struct Lower<'a> {
    sel: &'a Selected,
    mf: &'a MFunc,
    out: &'a Output,
    id: usize,
    frame: Frame,
    blocks: Vec<PBlock>,
    layout: Vec<usize>,
    cur: usize,
}

/// 寄存器号 ⇒ 文本（⛔ 不上 `format!`：这条路每条扩展指令都走）。
fn itoa(n: u8) -> String {
    n.to_string()
}

impl<'a> Lower<'a> {
    #[must_use]
    pub fn new(sel: &'a Selected, mf: &'a MFunc, out: &'a Output, id: usize) -> Self {
        let empty = PBlock { insts: Vec::new(), term: Term::Unreachable };
        Self { sel, mf, out, id, frame: Frame::new(sel, out), blocks: vec![empty; mf.blocks.len()], layout: Vec::new(), cur: 0 }
    }

    /// ⭐ 按布局逐块落：入口块先放序言。
    #[must_use]
    pub fn run(mut self) -> PFunc {
        for (k, &b) in self.sel.layout.iter().enumerate() {
            self.cur = b;
            self.layout.push(b);
            if k == 0 {
                self.prologue();
            }
            let (mf, out) = (self.mf, self.out);
            for item in out.block_insts_and_edits(mf, Block::new(b)) {
                match item {
                    InstOrEdit::Inst(i) => self.inst(i.index()),
                    InstOrEdit::Edit(e) => self.edit(e),
                }
            }
        }
        PFunc { id: self.id, blocks: self.blocks, layout: self.layout, tables: self.sel.tables.clone() }
    }

    // ---- 出指令 -------------------------------------------------------------------------

    /// 12 位有符号立即数放得下。
    const fn fits(k: i32) -> bool {
        -2048 <= k && k < 2048
    }

    fn push(&mut self, i: PInst) {
        self.blocks[self.cur].insts.push(i);
    }

    fn real(&mut self, i: Inst) {
        self.push(PInst::I(i));
    }

    /// `op rd, rs1, imm`
    fn rri(&mut self, op: IOp, rd: u8, rs1: u8, imm: i32) {
        self.real(Inst::new(op).x(rd, rs1, 0).with_imm(imm));
    }

    /// `op rd, rs1, rs2`
    fn rrr(&mut self, op: impl Into<Opcode>, rd: u8, rs1: u8, rs2: u8) {
        self.real(Inst::new(op).x(rd, rs1, rs2));
    }

    /// `rd = rs`（同一个就不出）。
    fn mov(&mut self, dst: u8, src: u8, float: bool) {
        match (dst == src, float) {
            (true, _) => {}
            (false, false) => self.rri(IOp::Addi, dst, src, 0),
            (false, true) => self.rrr(Float::FsgnjS, dst, src, src),
        }
    }

    /// `rd = base + off`。
    fn addr(&mut self, rd: u8, base: u8, off: i32) {
        if Self::fits(off) {
            self.rri(IOp::Addi, rd, base, off);
        } else {
            self.push(PInst::Li(rd, off));
            self.rrr(IOp::Add, rd, rd, base);
        }
    }

    /// 访存的（基址, 偏移）：偏移放不进 12 位 ⇒ 先算进 t6。
    fn reach(&mut self, base: u8, off: i32) -> (u8, i32) {
        if Self::fits(off) {
            return (base, off);
        }
        self.push(PInst::Li(SCRATCH, off));
        self.rrr(IOp::Add, SCRATCH, SCRATCH, base);
        (SCRATCH, 0)
    }

    fn load(&mut self, op: impl Into<Opcode>, rd: u8, base: u8, off: i32) {
        let (b, o) = self.reach(base, off);
        self.real(Inst::new(op).x(rd, b, 0).with_imm(o));
    }

    fn store(&mut self, op: impl Into<Opcode>, rs: u8, base: u8, off: i32) {
        let (b, o) = self.reach(base, off);
        self.real(Inst::new(op).x(0, b, rs).with_imm(o));
    }

    fn adjust_sp(&mut self, by: i32) {
        match by {
            0 => {}
            k if Self::fits(k) => self.rri(IOp::Addi, X::SP.0, X::SP.0, k),
            k => {
                self.push(PInst::Li(SCRATCH, k));
                self.rrr(IOp::Add, X::SP.0, X::SP.0, SCRATCH);
            }
        }
    }

    /// 一个寄存器按类的（读, 写）。
    fn word_ops(class: RegClass) -> (Opcode, Opcode) {
        if class == RegClass::Int { (IOp::Lw.into(), IOp::Sw.into()) } else { (Float::Flw.into(), Float::Fsw.into()) }
    }

    fn hw(p: PReg) -> u8 {
        u8::try_from(p.hw_enc()).unwrap_or(0)
    }

    // ---- 序言 / 尾声 -------------------------------------------------------------------

    fn prologue(&mut self) {
        self.adjust_sp(-self.frame.size);
        for (p, off) in self.frame.saves.clone() {
            self.store(Self::word_ops(p.class()).1, Self::hw(p), X::SP.0, off);
        }
        if let Some((first, base)) = self.frame.varargs {
            for (k, r) in (first..=17).enumerate() {
                self.store(IOp::Sw, r, X::SP.0, base + 4 * i32::try_from(k).unwrap_or(0));
            }
        }
        if self.frame.fp {
            self.addr(X::S0.0, X::SP.0, self.frame.size);
        }
    }

    fn epilogue(&mut self) {
        if self.frame.fp {
            self.addr(X::SP.0, X::S0.0, -self.frame.size);
        }
        for (p, off) in self.frame.saves.clone() {
            self.load(Self::word_ops(p.class()).0, Self::hw(p), X::SP.0, off);
        }
        self.adjust_sp(self.frame.size);
    }

    // ---- regalloc2 的搬运与一组同时的搬运 ------------------------------------------------

    fn edit(&mut self, e: &Edit) {
        let Edit::Move { from, to } = e;
        let float = from.as_reg().or(to.as_reg()).is_some_and(|p| p.class() == RegClass::Float);
        match (from.as_reg(), to.as_reg(), from.as_stack(), to.as_stack()) {
            (Some(a), Some(b), ..) => self.mov(Self::hw(b), Self::hw(a), float),
            (None, Some(b), Some(s), _) => {
                let (base, off) = self.frame.spill(s.index());
                self.load(Self::word_ops(b.class()).0, Self::hw(b), base, off);
            }
            (Some(a), None, _, Some(s)) => {
                let (base, off) = self.frame.spill(s.index());
                self.store(Self::word_ops(a.class()).1, Self::hw(a), base, off);
            }
            // 栈到栈：4 字节原样经 t6
            (None, None, Some(s), Some(t)) => {
                let (base, off) = self.frame.spill(s.index());
                self.load(IOp::Lw, SCRATCH, base, off);
                let (base, off) = self.frame.spill(t.index());
                self.store(IOp::Sw, SCRATCH, base, off);
            }
            _ => unreachable!("regalloc2 只在寄存器与溢出槽之间搬：{e:?}"),
        }
    }

    /// 一组同时发生的搬运：先搬目的寄存器不再被谁读的；剩下的成环 ⇒ 环上一个源先存进 t6。
    fn parallel(&mut self, mut moves: SmallVec<[Move; 2]>) {
        while !moves.is_empty() {
            // ⚠ 寄存器按（号, 类）认：x12 与 f12 不是同一个
            match (0..moves.len()).find(|&k| !moves.iter().any(|o| o.float == moves[k].float && o.src == Some(moves[k].dst))) {
                Some(k) => {
                    let m = moves.remove(k);
                    match (m.src, m.float) {
                        (Some(s), float) => self.mov(m.dst, s, float),
                        (None, false) => self.mov(m.dst, SCRATCH, false),
                        (None, true) => self.rrr(Float::FmvWX, m.dst, SCRATCH, 0),
                    }
                }
                None => {
                    let (src, float) = (moves[0].src.expect("成环的搬运都还读着寄存器"), moves[0].float);
                    if float { self.rrr(Float::FmvXW, SCRATCH, src, 0) } else { self.mov(SCRATCH, src, false) }
                    for o in moves.iter_mut().filter(|o| o.float == float && o.src == Some(src)) {
                        o.src = None;
                    }
                }
            }
        }
    }

    // ---- 指令 ---------------------------------------------------------------------------

    /// 一条机器指令各寄存器分到的物理寄存器号（defs 在前、uses 在后）。
    fn regs(inst: &MInst, allocs: &[Allocation]) -> (SmallVec<[u8; 3]>, SmallVec<[u8; 3]>) {
        let mut k = 0;
        let mut reg = |r: &R| match r {
            R::V(_) => {
                let a = allocs[k];
                k += 1;
                a.as_reg().map_or(0, Self::hw)
            }
            R::P(n) => *n,
        };
        let defs = inst.defs.iter().map(&mut reg).collect();
        let uses = inst.uses.iter().map(&mut reg).collect();
        (defs, uses)
    }

    /// 地址基 ⇒（基址寄存器, 偏移修正）：寄存器基址是第 `at` 个使用。
    fn base(&self, b: Base, u: &[u8], at: usize) -> (u8, i32) {
        self.frame.base(b).unwrap_or_else(|| (u[at], 0))
    }

    /// 新切的块（布局由调用方安排）。
    fn fresh(&mut self) -> usize {
        self.blocks.push(PBlock { insts: Vec::new(), term: Term::Unreachable });
        self.blocks.len() - 1
    }

    fn inst(&mut self, i: usize) {
        let (mf, out) = (self.mf, self.out);
        let inst = &mf.insts[i];
        let (d, u) = Self::regs(inst, out.inst_allocs(crate::regalloc::Inst::new(i)));
        match &inst.op {
            MOp::Reg(op, rm) => {
                let mut x = Inst::new(*op).x(d[0], u[0], u.get(1).copied().unwrap_or(0));
                x.rs3 = u.get(2).copied().unwrap_or(0);
                x.rm = *rm;
                self.real(x);
            }
            MOp::Imm(op, imm) => self.rri(*op, d[0], u[0], *imm),
            MOp::Li(v) => self.push(PInst::Li(d[0], *v)),
            // isel 占位的跳转表符号（`\u{1}n`）到这里才知道函数序号
            MOp::La(sym, off) => {
                let sym = sym.strip_prefix('\u{1}').map_or_else(|| sym.clone(), |n| format!(".LJTI{}_{n}", self.id));
                self.push(PInst::La(d[0], sym, *off));
            }
            MOp::Addr(b, off) => {
                let (base, adj) = self.base(*b, &u, 0);
                self.addr(d[0], base, adj + off);
            }
            MOp::Load(op, b, off) => {
                let (base, adj) = self.base(*b, &u, 0);
                // 整数读：大偏移时用目的寄存器算地址，⛔ 不占 t6
                if matches!(op, Opcode::I(_)) && !Self::fits(adj + off) {
                    self.addr(d[0], base, adj + off);
                    self.load(*op, d[0], d[0], 0);
                } else {
                    self.load(*op, d[0], base, adj + off);
                }
            }
            MOp::Store(op, b, off) => {
                let (base, adj) = self.base(*b, &u, 1);
                self.store(*op, u[0], base, adj + off);
            }
            MOp::Args => {}
            MOp::Call(Some(sym)) => self.push(PInst::Call(sym.clone())),
            MOp::Call(None) => self.rri(IOp::Jalr, X::RA.0, u[u.len() - 1], 0),
            MOp::Ret => {
                self.epilogue();
                self.blocks[self.cur].term = Term::Ret;
            }
            MOp::Tail(sym) => {
                self.epilogue();
                self.blocks[self.cur].term = Term::Tail(sym.clone());
            }
            MOp::Jump(b) => self.blocks[self.cur].term = Term::Jump(b.index()),
            MOp::Branch(op, t, f) => self.blocks[self.cur].term = Term::Branch { op: *op, a: u[0], b: u[1], t: t.index(), f: f.index(), long: false },
            MOp::Select(op) => self.select(*op, inst, &d, &u),
            MOp::JumpTable(ts) => {
                // `jr rs` 当普通指令落在块尾，Term 只声明后继
                self.rri(IOp::Jalr, 0, u[0], 0);
                self.blocks[self.cur].term = Term::Indirect(ts.iter().map(|b| b.index()).collect());
            }
            MOp::Unreachable => self.blocks[self.cur].term = Term::Unreachable,
            MOp::Trap => self.push(PInst::Trap),
            MOp::Break => self.real(Inst::new(IOp::Ebreak)),
            // `fence rw, rw`
            MOp::Fence => self.real(Inst::new(IOp::Fence).with_imm(0x33)),
            // ⭐ 扩展包的指令：把分配到的寄存器按 defs → uses 的次序填进 `{}`，出一行文本。
            // ⛔ 这里不编任何一个机器字 —— 编码是同一个 Module 的 `Assemble` 的事。
            MOp::Ext { template, bytes } => {
                // ⚠ `{}` 填的是**寄存器号**（纯数字）：模板自己写 `x{}` / `f{}`，
                // ⇒ ⛔ 这里不猜类别，形状由插件与它自己的 `Disassemble::print` 对齐。
                let mut text = String::new();
                let mut parts = template.split("{}");
                text.push_str(parts.next().unwrap_or(""));
                for (r, rest) in d.iter().chain(u.iter()).zip(parts) {
                    text.push_str(itoa(*r).as_str());
                    text.push_str(rest);
                }
                self.push(PInst::Ext(text, *bytes));
            }
            MOp::SpAlloc => {
                self.rrr(IOp::Sub, X::SP.0, X::SP.0, u[0]);
                self.addr(d[0], X::SP.0, Frame::up(self.sel.out_args, 16));
            }
            MOp::SpSave => self.mov(d[0], X::SP.0, false),
            MOp::SpRestore => self.mov(X::SP.0, u[0], false),
        }
    }

    /// `select`：目的寄存器已绑在真值上 ⇒ `op a, b` 成立直接去后半块，不成立先经一个块把假值搬进去。
    fn select(&mut self, op: IOp, inst: &MInst, d: &[u8], u: &[u8]) {
        let n = d.len();
        let moves: SmallVec<[Move; 2]> = (0..n)
            .map(|k| Move { dst: d[k], src: Some(u[2 + n + k]), float: matches!(inst.defs[k], R::V(v) if v.class() == RegClass::Float) })
            .filter(|m| m.src != Some(m.dst))
            .collect();
        if moves.is_empty() {
            return;
        }
        let (mid, rest) = (self.fresh(), self.fresh());
        self.blocks[self.cur].term = Term::Branch { op, a: u[0], b: u[1], t: rest, f: mid, long: false };
        self.cur = mid;
        self.parallel(moves);
        self.blocks[mid].term = Term::Jump(rest);
        self.layout.extend([mid, rest]);
        self.cur = rest;
    }
}
