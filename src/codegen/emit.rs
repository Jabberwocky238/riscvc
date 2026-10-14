//! 寄存器分配之后：栈帧布局、序言 / 尾声、机器 IR + 分配结果 ⇒ 汇编文本。
//!
//! 栈帧（地址从低到高，`sp` 在最低处，总大小 16 对齐）：
//! ```text
//! sp →  出参区 | 溢出槽（4 字节一个）| 栈帧对象 | 被调方保存的寄存器（ra、s*、fs*）| 可变参数存放区 | ← 进入时的 sp：入参区
//! ```
//! 动态改过 `sp`（动态 alloca、stackrestore）的函数用 `s0` 当帧指针：帧里的东西都相对 `s0` 寻址。
use super::abi::Abi;
use super::isel::Selected;
use super::mir::{Base, MFunc, MInst, MOp, R};
use crate::feature::{Float};
use crate::isa::{F, Opcode, Rv32i as IOp, Table, Rm, X};
use core::fmt::Write;
use regalloc2::{Allocation, Block, Edit, InstOrEdit, Output, PReg, RegClass};

/// 一个函数的帧布局与出汇编的状态。
pub struct Emitter<'a> {
    sel: &'a Selected,
    mf: &'a MFunc,
    out: &'a Output,
    /// 函数在模块里的序号（块标号用）。
    id: usize,
    text: String,
    /// 帧总大小。
    size: i32,
    spill_base: i32,
    objects: Vec<i32>,
    /// 保存的寄存器与它们的偏移（相对 sp）。
    saves: Vec<(PReg, i32)>,
    fp: bool,
    /// 条件跳转一律长形式（函数太大，±4 KiB 可能够不着）。
    long: bool,
    labels: usize,
}

impl<'a> Emitter<'a> {
    /// 向上取到 `a` 的倍数。
    const fn up(x: i32, a: i32) -> i32 {
        (x + a - 1) / a * a
    }

    #[must_use]
    pub fn new(sel: &'a Selected, mf: &'a MFunc, out: &'a Output, id: usize) -> Self {
        let fp = sel.dynamic_sp;
        // 用到的被调方保存寄存器
        let mut used: Vec<PReg> = Vec::new();
        let mut note = |a: Allocation| {
            if let Some(p) = a.as_reg() {
                let saved = match p.class() {
                    RegClass::Int => Abi::callee_saved_x(u8::try_from(p.hw_enc()).unwrap_or(0)),
                    _ => Abi::callee_saved_f(u8::try_from(p.hw_enc()).unwrap_or(0)),
                };
                if saved && !used.contains(&p) {
                    used.push(p);
                }
            }
        };
        out.allocs.iter().copied().for_each(&mut note);
        for (_, e) in &out.edits {
            let Edit::Move { from, to } = e;
            note(*from);
            note(*to);
        }
        let mut save_regs: Vec<PReg> = Vec::new();
        if sel.calls {
            save_regs.push(X::RA.preg());
        }
        if fp && !used.contains(&X::S0.preg()) {
            save_regs.push(X::S0.preg());
        }
        used.sort_by_key(|p| (p.class() as u8, p.hw_enc()));
        save_regs.extend(used);
        let out_args = Self::up(sel.out_args, 4);
        let spill_base = out_args;
        let mut at = spill_base + 4 * i32::try_from(out.num_spillslots).unwrap_or(0);
        let mut objects = Vec::new();
        for o in &sel.frame {
            let align = i32::try_from(o.align.min(4096)).unwrap_or(16);
            at = Self::up(at, align.max(1));
            objects.push(at);
            at += i32::try_from(o.size).unwrap_or(0);
        }
        let varargs = sel.varargs.map_or(0, |first| 4 * (18 - i32::from(first)).max(0));
        let size = Self::up(at + 4 * i32::try_from(save_regs.len()).unwrap_or(0) + varargs, 16);
        let saves = save_regs.into_iter().enumerate().map(|(i, p)| (p, size - varargs - 4 * (i32::try_from(i).unwrap_or(0) + 1))).collect();
        let long = mf.insts.len() > 700;
        Self { sel, mf, out, id, text: String::new(), size, spill_base, objects, saves, fp, long, labels: 0 }
    }

    fn line(&mut self, s: &str) {
        self.text.push('\t');
        self.text.push_str(s);
        self.text.push('\n');
    }

    fn label(&self, b: usize) -> String {
        format!(".LBB{}_{b}", self.id)
    }

    fn reg(p: PReg) -> String {
        let n = u8::try_from(p.hw_enc()).unwrap_or(0);
        match p.class() {
            RegClass::Int => X(n).to_string(),
            _ => F(n).to_string(),
        }
    }

    /// 帧里某偏移（相对 sp 的布局偏移）⇒（基址寄存器, 偏移）：有帧指针时相对 s0。
    fn frame_ref(&self, off: i32) -> (&'static str, i32) {
        if self.fp { ("s0", off - self.size) } else { ("sp", off) }
    }

    /// `op reg, off(base)`；偏移放不进 12 位就借 t6 算地址。
    fn mem(&mut self, op: impl Into<Opcode>, reg: &str, base: &str, off: i32) {
        let op: Opcode = op.into();
        if (-2048..2048).contains(&off) {
            self.line(&format!("{op}\t{reg}, {off}({base})"));
        } else {
            self.line(&format!("li\tt6, {off}"));
            self.line(&format!("add\tt6, t6, {base}"));
            self.line(&format!("{op}\t{reg}, 0(t6)"));
        }
    }

    /// `rd = base + off`。
    fn addr(&mut self, rd: &str, base: &str, off: i32) {
        if (-2048..2048).contains(&off) {
            self.line(&format!("addi\t{rd}, {base}, {off}"));
        } else {
            self.line(&format!("li\t{rd}, {off}"));
            self.line(&format!("add\t{rd}, {rd}, {base}"));
        }
    }

    /// 地址基 ⇒（寄存器名, 偏移修正）。
    fn base(&self, b: Base, names: &[String], reg_at: usize) -> (String, i32) {
        match b {
            Base::Reg(_) => (names[reg_at].clone(), 0),
            Base::Frame(o) => {
                let (r, off) = self.frame_ref(self.objects[o as usize]);
                (String::from(r), off)
            }
            Base::Incoming => {
                let (r, off) = self.frame_ref(self.size);
                (String::from(r), off)
            }
            Base::Outgoing => (String::from("sp"), 0),
        }
    }

    fn adjust_sp(&mut self, by: i32) {
        if by == 0 {
            return;
        }
        if (-2048..2048).contains(&by) {
            self.line(&format!("addi\tsp, sp, {by}"));
        } else {
            self.line(&format!("li\tt6, {by}"));
            self.line("add\tsp, sp, t6");
        }
    }

    fn prologue(&mut self) {
        self.adjust_sp(-self.size);
        for (p, off) in self.saves.clone() {
            let op = if p.class() == RegClass::Int { Opcode::from(IOp::Sw) } else { Opcode::from(Float::Fsw) };
            self.mem(op, &Self::reg(p), "sp", off);
        }
        if let Some(first) = self.sel.varargs {
            let base = self.size - 4 * (18 - i32::from(first));
            for (k, r) in (first..=17).enumerate() {
                self.mem(IOp::Sw, &X(r).to_string(), "sp", base + 4 * i32::try_from(k).unwrap_or(0));
            }
        }
        if self.fp {
            self.addr("s0", "sp", self.size);
        }
    }

    fn epilogue(&mut self) {
        if self.fp {
            self.addr("sp", "s0", -self.size);
        }
        for (p, off) in self.saves.clone() {
            let op = if p.class() == RegClass::Int { Opcode::from(IOp::Lw) } else { Opcode::from(Float::Flw) };
            self.mem(op, &Self::reg(p), "sp", off);
        }
        self.adjust_sp(self.size);
        self.line("ret");
    }

    /// regalloc2 的一步搬运。
    fn edit(&mut self, e: &Edit) {
        let Edit::Move { from, to } = e;
        match (from.as_reg(), to.as_reg(), from.as_stack(), to.as_stack()) {
            (Some(a), Some(b), ..) => {
                let op = if a.class() == RegClass::Int { "mv" } else { "fmv.s" };
                self.line(&format!("{op}\t{}, {}", Self::reg(b), Self::reg(a)));
            }
            (None, Some(b), Some(s), _) => {
                let (base, off) = self.frame_ref(self.spill_base + 4 * i32::try_from(s.index()).unwrap_or(0));
                self.mem(if b.class() == RegClass::Int { Opcode::from(IOp::Lw) } else { Opcode::from(Float::Flw) }, &Self::reg(b), base, off);
            }
            (Some(a), None, _, Some(s)) => {
                let (base, off) = self.frame_ref(self.spill_base + 4 * i32::try_from(s.index()).unwrap_or(0));
                self.mem(if a.class() == RegClass::Int { Opcode::from(IOp::Sw) } else { Opcode::from(Float::Fsw) }, &Self::reg(a), base, off);
            }
            _ => self.line(&format!("# 不认识的搬运 {e:?}")),
        }
    }

    /// 一条机器指令各寄存器的名字（defs 在前、uses 在后）。
    fn names(inst: &MInst, allocs: &[Allocation]) -> (Vec<String>, Vec<String>) {
        let mut k = 0;
        let mut name = |r: &R| match r {
            R::V(_) => {
                let a = allocs[k];
                k += 1;
                a.as_reg().map_or_else(|| String::from("?"), Self::reg)
            }
            R::P(n) => X(*n).to_string(),
        };
        let defs = inst.defs.iter().map(&mut name).collect();
        let uses = inst.uses.iter().map(&mut name).collect();
        (defs, uses)
    }

    fn inst(&mut self, i: usize, next: Option<usize>) {
        let inst = &self.mf.insts[i];
        let (d, u) = Self::names(inst, self.out.inst_allocs(regalloc2::Inst::new(i)));
        match &inst.op {
            MOp::Reg(op, rm) => {
                let mut regs = d.clone();
                regs.extend(u.iter().cloned());
                let suffix = match Rm::try_from(u32::from(*rm)) {
                    Ok(r) if op.has_rm() && r != Rm::Dyn => format!(", {r}"),
                    _ => String::new(),
                };
                self.line(&format!("{op}\t{}{suffix}", regs.join(", ")));
            }
            MOp::Imm(op, imm) => self.line(&format!("{op}\t{}, {}, {imm}", d[0], u[0])),
            MOp::Li(v) => self.line(&format!("li\t{}, {v}", d[0])),
            MOp::La(sym, off) => match off {
                0 => self.line(&format!("lla\t{}, {sym}", d[0])),
                o => self.line(&format!("lla\t{}, {sym}{o:+}", d[0])),
            },
            MOp::Addr(b, off) => {
                let (base, adj) = self.base(*b, &u, 0);
                self.addr(&d[0], &base, adj + off);
            }
            MOp::Load(op, b, off) => {
                let (base, adj) = self.base(*b, &u, 0);
                // 整数读：大偏移时用目的寄存器算地址，⛔ 不占 t6
                if matches!(op, Opcode::I(_)) && !(-2048..2048).contains(&(adj + off)) {
                    self.addr(&d[0], &base, adj + off);
                    self.line(&format!("{op}\t{}, 0({})", d[0], d[0]));
                } else {
                    self.mem(*op, &d[0], &base, adj + off);
                }
            }
            MOp::Store(op, b, off) => {
                let (base, adj) = self.base(*b, &u, 1);
                self.mem(*op, &u[0], &base, adj + off);
            }
            MOp::Args => {}
            MOp::Call(Some(sym)) => self.line(&format!("call\t{sym}")),
            MOp::Call(None) => self.line(&format!("jalr\t{}", u[u.len() - 1])),
            MOp::Ret => self.epilogue(),
            MOp::Jump(b) => {
                if next != Some(b.index()) {
                    self.line(&format!("j\t{}", self.label(b.index())));
                }
            }
            MOp::Branch(op, t, f) => self.branch(*op, &u[0], &u[1], *t, *f, next),
            MOp::Unreachable => {}
            MOp::Trap => self.line("unimp"),
            MOp::Fence => self.line("fence\trw, rw"),
            MOp::SpAlloc => {
                self.line(&format!("sub\tsp, sp, {}", u[0]));
                self.addr(&d[0], "sp", Self::up(self.sel.out_args, 16));
            }
            MOp::SpSave => self.line(&format!("mv\t{}, sp", d[0])),
            MOp::SpRestore => self.line(&format!("mv\tsp, {}", u[0])),
        }
    }

    const fn invert(op: IOp) -> IOp {
        match op {
            IOp::Beq => IOp::Bne,
            IOp::Bne => IOp::Beq,
            IOp::Blt => IOp::Bge,
            IOp::Bge => IOp::Blt,
            IOp::Bltu => IOp::Bgeu,
            _ => IOp::Bltu,
        }
    }

    fn branch(&mut self, op: IOp, a: &str, b: &str, t: Block, f: Block, next: Option<usize>) {
        let (t, f) = (t.index(), f.index());
        // 真分支落在下一块：反过来跳假分支
        let (op, t, f) = if next == Some(t) { (Self::invert(op), f, t) } else { (op, t, f) };
        if self.long {
            self.labels += 1;
            let skip = format!(".Lskip{}_{}", self.id, self.labels);
            self.line(&format!("{}\t{a}, {b}, {skip}", Self::invert(op)));
            self.line(&format!("j\t{}", self.label(t)));
            self.text.push_str(&format!("{skip}:\n"));
        } else {
            self.line(&format!("{op}\t{a}, {b}, {}", self.label(t)));
        }
        if next != Some(f) {
            self.line(&format!("j\t{}", self.label(f)));
        }
    }

    /// ⭐ 整个函数体（不含函数头尾的伪操作）。
    #[must_use]
    pub fn body(mut self) -> String {
        self.prologue();
        let layout = self.sel.layout.clone();
        for (k, &b) in layout.iter().enumerate() {
            let next = layout.get(k + 1).copied();
            let _ = writeln!(self.text, "{}:", self.label(b));
            let items: Vec<InstOrEdit<'_>> = self.out.block_insts_and_edits(self.mf, Block::new(b)).collect();
            for item in items {
                match item {
                    InstOrEdit::Inst(i) => self.inst(i.index(), next),
                    InstOrEdit::Edit(e) => self.edit(e),
                }
            }
        }
        self.text
    }
}
