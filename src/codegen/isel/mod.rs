//! 指令选择：内部 IR ⇒ 机器 IR（虚拟寄存器）。
//!
//! 每个 IR 值拆成 32 位部件（[`Part`]）各占一个虚拟寄存器：i64 / double 两个整数寄存器，`float` 一个浮点寄存器，
//! 结构体 / 数组按字段拆平。窄整数（i1..i31）在寄存器里**恒为零扩展**（高位是 0），要有符号语义的地方现场符号扩展。
//! 常量不占寄存器：每次用到时在用处重建（`li` / `lla`），活跃区间短。
//!
//! ```text
//! mod.rs   骨架：值表、块、跳转（关键边切开、块参数）、入口取参
//! int.rs   整数运算与比较（≤ 32 位直接做，i64 拆两半，除法走 __divdi3 一类）
//! float.rs float 用 F 扩展；double 全走 compiler-rt 软浮点（__adddf3 …）
//! mem.rs   load / store / alloca / getelementptr、聚合值
//! call.rs  调用、返回、库函数调用
//! intr.rs  llvm.intr.*
//! ```
mod call;
mod float;
mod int;
mod intr;
mod mem;

use super::abi::{Assign, Loc, Part};
use super::mir::{Base, MBlock, MInst, MOp, R};
use super::Error;
use crate::isa::Ext;
use crate::ir::{Block as IBlock, Const, Function, IPred, Inst, Kind, Module, Op, Target, Ty, Types, ValId};
use crate::isa::Op as IOp;
use regalloc2::{Block, RegClass, VReg};
use std::collections::HashMap;

/// 一个栈帧对象（alloca、按值传参的拷贝、sret 的返回区）。
#[derive(Clone, Copy, Debug)]
pub struct FrameObj {
    pub size: u64,
    pub align: u64,
}

/// 指令选择的结果：机器块、布局次序、帧信息。
pub struct Selected {
    pub blocks: Vec<MBlock>,
    /// 出代码的块次序。
    pub layout: Vec<usize>,
    pub vregs: usize,
    pub frame: Vec<FrameObj>,
    /// 出参区大小（各调用里最大的）。
    pub out_args: i32,
    /// 有调用 ⇒ 要存 ra。
    pub calls: bool,
    /// 可变参数函数：第一个没被具名参数占的 a 寄存器号（到 a7 都要在序言里存到入参区下面）。
    pub varargs: Option<u8>,
    /// 动态改过 `sp`（动态 alloca / stacksave）⇒ 要帧指针。
    pub dynamic_sp: bool,
}

pub struct Isel<'m> {
    m: &'m Module,
    f: &'m Function,
    blocks: Vec<MBlock>,
    layout: Vec<usize>,
    cur: usize,
    classes: Vec<RegClass>,
    /// 各 IR 值的部件（常量与静态 alloca 不在这里）。
    vals: Vec<Option<Vec<R>>>,
    consts: HashMap<ValId, Const>,
    allocas: HashMap<ValId, u32>,
    /// 常数偏移的地址（静态 alloca / 全局 / 寄存器 + 偏移）：用成值时才算出来。
    derived: HashMap<ValId, (Base, i64)>,
    frame: Vec<FrameObj>,
    /// IR 块 ⇒ 机器块。
    bmap: Vec<usize>,
    /// 各 IR 块出的机器块（本块 + 处理它时新切的），布局按 IR 块的原次序拼。
    groups: Vec<Vec<usize>>,
    /// 正在处理的 IR 块。
    group: usize,
    /// IR 块的前驱个数。
    preds: Vec<u32>,
    /// 各 IR 值被用了几次。
    uses: Vec<u32>,
    /// 只给本块条件跳转用的整数比较：留到跳转时直接出 `bxx`。
    fused: HashMap<ValId, (IPred, ValId, ValId)>,
    out_args: i32,
    calls: bool,
    varargs: Option<u8>,
    /// 可变参数函数：具名参数占了多少入参区（第一个可变参数在栈上的偏移）。
    varargs_stack: i32,
    dynamic_sp: bool,
    /// 返回值放不进寄存器时，调用方给的返回区地址。
    sret: Option<R>,
}

impl<'m> Isel<'m> {
    /// ⭐ 一个函数。
    pub fn select(m: &'m Module, f: &'m Function) -> Result<Selected, Error> {
        let n = f.blocks.len();
        let mut s = Self {
            m,
            f,
            blocks: (0..n).map(|_| MBlock::default()).collect(),
            layout: Vec::new(),
            cur: 0,
            classes: Vec::new(),
            vals: vec![None; f.vals.len()],
            consts: HashMap::new(),
            allocas: HashMap::new(),
            derived: HashMap::new(),
            frame: Vec::new(),
            bmap: (0..n).collect(),
            groups: vec![Vec::new(); n],
            group: 0,
            preds: vec![0; n],
            uses: vec![0; f.vals.len()],
            fused: HashMap::new(),
            out_args: 0,
            calls: false,
            varargs: None,
            varargs_stack: 0,
            dynamic_sp: false,
            sret: None,
        };
        let order = f.rpo();
        s.count(&order);
        // 非入口块的块参数 ⇒ 机器块参数
        for (b, blk) in f.blocks.iter().enumerate().skip(1) {
            for &p in &blk.params {
                let parts = s.fresh(f.vals[p.0 as usize]);
                s.blocks[b].params.extend(parts.iter().filter_map(|r| if let R::V(v) = r { Some(*v) } else { None }));
                s.vals[p.0 as usize] = Some(parts);
            }
        }
        // 按逆后序选（定义先于使用）；从入口走不到的块只留一条 Unreachable（⛔ 不进布局，同 llc 删掉）
        for b in 0..n {
            if !order.contains(&b) {
                s.cur = s.bmap[b];
                s.emit(MOp::Unreachable, Vec::new(), Vec::new());
            }
        }
        for &b in &order {
            let blk = &f.blocks[b];
            s.cur = s.bmap[b];
            s.group = b;
            s.groups[b].push(s.cur);
            if b == 0 {
                s.entry(blk)?;
            }
            for inst in &blk.insts {
                s.inst(inst).map_err(|e| match e {
                    Error::Select(why) => Error::Select(format!("{}：{why}（{:?}）", f.name, inst.op)),
                    e => e,
                })?;
            }
        }
        s.layout = core::mem::take(&mut s.groups).concat();
        Ok(Selected {
            blocks: s.blocks,
            layout: s.layout,
            vregs: s.classes.len(),
            frame: s.frame,
            out_args: s.out_args,
            calls: s.calls,
            varargs: s.varargs,
            dynamic_sp: s.dynamic_sp,
        })
    }

    /// 前驱数、用到次数；能并进跳转的比较（只算走得到的块）。
    fn count(&mut self, order: &[usize]) {
        for blk in order.iter().map(|&b| &self.f.blocks[b]) {
            for inst in &blk.insts {
                for t in inst.op.targets() {
                    self.preds[t.block.0 as usize] += 1;
                }
                inst.op.operands().into_iter().for_each(|v| self.uses[v.0 as usize] += 1);
            }
        }
        for blk in &self.f.blocks {
            let Some(Inst { op: Op::CondBr(c, ..), .. }) = blk.insts.last() else { continue };
            if self.uses[c.0 as usize] != 1 {
                continue;
            }
            for inst in &blk.insts {
                if inst.result == Some(*c)
                    && let Op::ICmp(p, a, b) = inst.op
                    && self.types().bits(self.ty(a)).is_none_or(|w| w <= 32)
                {
                    self.fused.insert(*c, (p, a, b));
                }
            }
        }
    }

    // ---- 小工具 -------------------------------------------------------------------------

    /// 软浮点类型：compiler-rt 函数名的后缀（`df` = double，F 没开时 `sf` = float）；硬件做的 ⇒ `None`。
    fn soft(&self, t: Ty) -> Option<&'static str> {
        match self.kind(t) {
            Kind::Double => Some("df"),
            Kind::Float if !Ext::F.enabled() => Some("sf"),
            _ => None,
        }
    }

    fn types(&self) -> &'m Types {
        &self.m.types
    }

    fn ty(&self, v: ValId) -> Ty {
        self.f.vals[v.0 as usize]
    }

    fn kind(&self, t: Ty) -> &'m Kind {
        self.m.types.kind(t)
    }

    fn bad<T>(why: impl Into<String>) -> Result<T, Error> {
        Err(Error::Select(why.into()))
    }

    fn vreg(&mut self, class: RegClass) -> VReg {
        let v = VReg::new(self.classes.len(), class);
        self.classes.push(class);
        v
    }

    fn xr(&mut self) -> R {
        R::V(self.vreg(RegClass::Int))
    }

    fn fr(&mut self) -> R {
        R::V(self.vreg(RegClass::Float))
    }

    /// 值的部件（类型 ⇒ 32 位一份）。
    fn parts(&self, t: Ty) -> Result<Vec<Part>, Error> {
        Ok(match self.kind(t) {
            Kind::Void => Vec::new(),
            Kind::Int(w) if *w <= 32 => vec![Part::X],
            Kind::Int(w) if *w <= 64 => vec![Part::Lo, Part::Hi],
            Kind::Ptr | Kind::Half | Kind::BFloat => vec![Part::X],
            Kind::Float if Ext::F.enabled() => vec![Part::F],
            // 没有 F（ilp32）：float 是一个整数部件
            Kind::Float => vec![Part::X],
            Kind::Double => vec![Part::Lo, Part::Hi],
            Kind::Array(n, e) => self.parts(*e)?.repeat(usize::try_from(*n).unwrap_or(0)),
            Kind::Vector(n, e) => self.parts(*e)?.repeat(*n as usize),
            Kind::Struct(fields, _) => fields.iter().map(|f| self.parts(*f)).collect::<Result<Vec<_>, _>>()?.concat(),
            k => return Self::bad(format!("不支持的类型 {k:?}")),
        })
    }

    /// 一组新的虚拟寄存器，形状同类型 `t`。
    fn fresh(&mut self, t: Ty) -> Vec<R> {
        self.parts(t).unwrap_or_default().into_iter().map(|p| R::V(self.vreg(p.class()))).collect()
    }

    fn push(&mut self, inst: MInst) {
        self.blocks[self.cur].insts.push(inst);
    }

    fn emit(&mut self, op: MOp, defs: Vec<R>, uses: Vec<R>) {
        self.push(MInst::new(op, defs, uses));
    }

    /// `op rd, a, b`，rd 是新整数寄存器。
    /// `op rd, a, b`。M / Zmmul 没开（feature）的乘除改调 compiler-rt（同 llc 的 libcall 降级）。
    fn rr(&mut self, op: IOp, a: R, b: R) -> R {
        if !op.enabled() {
            return self.soft_muldiv(op, a, b);
        }
        let d = self.xr();
        self.emit(MOp::Reg(op, 7), vec![d], vec![a, b]);
        d
    }

    /// 没有 M / Zmmul 时的乘除：`mul` / `div*` / `rem*` 各一个 libcall；`mulh*` 把两边扩成 64 位调 `__muldi3` 取高半。
    fn soft_muldiv(&mut self, op: IOp, a: R, b: R) -> R {
        let x = |r: R| (vec![r], vec![Part::X]);
        let call = |s: &mut Self, name: &str, args: &[(Vec<R>, Vec<Part>)], ret: &[Part]| s.libcall(name, args, ret).expect("纯整数部件的 libcall 不会失败");
        let name = match op {
            IOp::Mul => "__mulsi3",
            IOp::Div => "__divsi3",
            IOp::Divu => "__udivsi3",
            IOp::Rem => "__modsi3",
            IOp::Remu => "__umodsi3",
            IOp::Mulh | IOp::Mulhu | IOp::Mulhsu => {
                let hi = |s: &mut Self, r: R, signed: bool| if signed { s.ri(IOp::Srai, r, 31) } else { R::ZERO };
                let (ah, bh) = (hi(self, a, op != IOp::Mulhu), hi(self, b, op == IOp::Mulh));
                let pair = vec![Part::Lo, Part::Hi];
                return call(self, "__muldi3", &[(vec![a, ah], pair.clone()), (vec![b, bh], pair.clone())], &pair)[1];
            }
            _ => unreachable!("只有 M / Zmmul 的指令会没开"),
        };
        call(self, name, &[x(a), x(b)], &[Part::X])[0]
    }

    /// `op rd, a, imm`
    fn ri(&mut self, op: IOp, a: R, imm: i32) -> R {
        let d = self.xr();
        self.emit(MOp::Imm(op, imm), vec![d], vec![a]);
        d
    }

    /// 32 位常数（0 ⇒ `zero`）。
    fn li(&mut self, v: i32) -> R {
        if v == 0 {
            return R::ZERO;
        }
        let d = self.xr();
        self.emit(MOp::Li(v), vec![d], Vec::new());
        d
    }

    /// 物理寄存器（`zero`）⇒ 虚拟寄存器（跳转实参、调用实参要虚拟的）。
    fn virt(&mut self, r: R) -> VReg {
        match r {
            R::V(v) => v,
            R::P(_) => {
                let d = self.xr();
                self.emit(MOp::Imm(IOp::Addi, 0), vec![d], vec![r]);
                let R::V(v) = d else { unreachable!() };
                v
            }
        }
    }

    // ---- 值 -----------------------------------------------------------------------------

    /// 值的部件（常量现场重建、静态 alloca 现场取地址）。
    fn get(&mut self, v: ValId) -> Result<Vec<R>, Error> {
        if let Some(parts) = &self.vals[v.0 as usize] {
            return Ok(parts.clone());
        }
        if let Some(c) = self.consts.get(&v).cloned() {
            return self.constant(&c, self.ty(v));
        }
        if let Some(&obj) = self.allocas.get(&v) {
            return Ok(vec![self.materialize(Base::Frame(obj), 0)]);
        }
        if let Some(&(b, off)) = self.derived.get(&v) {
            return Ok(vec![self.materialize(b, off)]);
        }
        Self::bad(format!("值 %{} 还没算出来（块次序不是支配次序？）", v.0))
    }

    fn get1(&mut self, v: ValId) -> Result<R, Error> {
        Ok(self.get(v)?[0])
    }

    fn set(&mut self, v: Option<ValId>, parts: Vec<R>) {
        if let Some(v) = v {
            self.vals[v.0 as usize] = Some(parts);
        }
    }

    /// 常量 ⇒ 部件。
    fn constant(&mut self, c: &Const, t: Ty) -> Result<Vec<R>, Error> {
        let parts = self.parts(t)?;
        Ok(match (c, self.kind(t)) {
            (Const::Zero | Const::Undef, _) => parts
                .iter()
                .map(|p| match p {
                    Part::F => {
                        let d = self.fr();
                        self.emit(MOp::Reg(IOp::FmvWX, 7), vec![d], vec![R::ZERO]);
                        d
                    }
                    _ => R::ZERO,
                })
                .collect(),
            (Const::Int(v), Kind::Int(w)) if *w <= 32 => vec![self.li(*v as u32 as i32)],
            (Const::Int(v), Kind::Int(_)) => vec![self.li(*v as u32 as i32), self.li((*v >> 32) as u32 as i32)],
            (Const::Int(v), Kind::Ptr) => vec![self.li(*v as u32 as i32)],
            (Const::Float(bits), Kind::Float) if !Ext::F.enabled() => vec![self.li(*bits as u32 as i32)],
            (Const::Float(bits), Kind::Float) => {
                let x = self.li(*bits as u32 as i32);
                let d = self.fr();
                self.emit(MOp::Reg(IOp::FmvWX, 7), vec![d], vec![x]);
                vec![d]
            }
            (Const::Float(bits), Kind::Double) => vec![self.li(*bits as u32 as i32), self.li((*bits >> 32) as u32 as i32)],
            (Const::Float(bits), Kind::Half | Kind::BFloat) => vec![self.li(*bits as u32 as i32)],
            (Const::Global(name, off), _) => {
                let d = self.xr();
                self.emit(MOp::La(name.clone(), *off), vec![d], Vec::new());
                vec![d]
            }
            (Const::Agg(items), Kind::Struct(fields, _)) => {
                let mut out = Vec::new();
                for (c, f) in items.iter().zip(fields.clone()) {
                    out.extend(self.constant(c, f)?);
                }
                out
            }
            (Const::Agg(items), Kind::Array(_, e) | Kind::Vector(_, e)) => {
                let mut out = Vec::new();
                for c in items {
                    out.extend(self.constant(c, *e)?);
                }
                out
            }
            (Const::Bytes(bytes), Kind::Array(_, _)) => {
                let mut out = Vec::new();
                for b in bytes {
                    out.push(self.li(i32::from(*b)));
                }
                out
            }
            (c, k) => return Self::bad(format!("常量 {c:?} 放不进 {k:?}")),
        })
    }

    // ---- 指令 ---------------------------------------------------------------------------

    fn inst(&mut self, inst: &Inst) -> Result<(), Error> {
        let r = inst.result;
        match &inst.op {
            Op::Const(c) => {
                if let Some(r) = r {
                    self.consts.insert(r, c.clone());
                }
            }
            Op::Ret(v) => self.ret(*v)?,
            Op::Br(t) => {
                let to = self.target_args(t)?;
                self.jump(self.bmap[t.block.0 as usize], to);
            }
            Op::CondBr(c, t, f) => self.cond_br(*c, t, f)?,
            Op::Switch(v, d, cases) => self.switch(*v, d, cases)?,
            Op::Unreachable => self.emit(MOp::Unreachable, Vec::new(), Vec::new()),
            Op::Bin(op, a, b) => {
                let parts = self.binary(*op, *a, *b)?;
                self.set(r, parts);
            }
            Op::FNeg(a) => {
                let parts = self.fneg(*a)?;
                self.set(r, parts);
            }
            Op::ICmp(p, a, b) => {
                if r.is_some_and(|r| self.fused.contains_key(&r)) {
                    return Ok(());
                }
                let x = self.icmp(*p, *a, *b)?;
                self.set(r, vec![x]);
            }
            Op::FCmp(p, a, b) => {
                let x = self.fcmp(*p, *a, *b)?;
                self.set(r, vec![x]);
            }
            Op::Cast(op, a) => {
                let to = self.ty(r.ok_or_else(|| Error::Select(String::from("转换没有结果")))?);
                let parts = self.cast(*op, *a, to)?;
                self.set(r, parts);
            }
            Op::Select(c, a, b) => {
                let parts = self.select_value(*c, *a, *b)?;
                self.set(r, parts);
            }
            Op::Freeze(a) => {
                let parts = self.get(*a)?;
                self.set(r, parts);
            }
            Op::Alloca { ty, count, align } => self.alloca(r, *ty, *count, *align)?,
            Op::Load { ptr, align, volatile, atomic } => {
                let t = self.ty(r.ok_or_else(|| Error::Select(String::from("load 没有结果")))?);
                let parts = match atomic {
                    Some(order) => self.atomic_load(t, *ptr, *order)?,
                    None => self.load(t, *ptr, *align, *volatile)?,
                };
                self.set(r, parts);
            }
            Op::Store { val, ptr, align, atomic, .. } => match atomic {
                Some(order) => self.atomic_store(*val, *ptr, *order)?,
                None => self.store(*val, *ptr, *align)?,
            },
            Op::Gep { src, base, indices } => self.gep(r, *src, *base, indices)?,
            Op::ExtractValue(a, pos) => {
                let parts = self.extract(*a, pos)?;
                self.set(r, parts);
            }
            Op::InsertValue(a, v, pos) => {
                let parts = self.insert(*a, *v, pos)?;
                self.set(r, parts);
            }
            Op::Call { fty, callee, args, ret } => {
                let parts = self.call(*fty, callee, args, ret)?;
                self.set(r, parts);
            }
            Op::Intr(i, args) => {
                let t = r.map(|r| self.ty(r));
                let parts = self.intrinsic(i, args, t)?;
                self.set(r, parts);
            }
            Op::AtomicRmw(op, p, v, order) => {
                let parts = self.atomic_rmw(*op, *p, *v, *order)?;
                self.set(r, parts);
            }
            Op::CmpXchg(..) => return Self::bad("cmpxchg 还没做（没有 A 扩展，要走 __atomic_compare_exchange）"),
            Op::Fence => self.emit(MOp::Fence, Vec::new(), Vec::new()),
        }
        Ok(())
    }

    // ---- 控制流 -------------------------------------------------------------------------

    /// 跳转实参 ⇒ 虚拟寄存器（常量在跳转前重建）。
    fn target_args(&mut self, t: &Target) -> Result<Vec<VReg>, Error> {
        let mut out = Vec::new();
        for &a in &t.args {
            for r in self.get(a)? {
                out.push(self.virt(r));
            }
        }
        Ok(out)
    }

    /// 本块以无条件跳转收尾。
    fn jump(&mut self, to: usize, args: Vec<VReg>) {
        self.emit(MOp::Jump(Block::new(to)), Vec::new(), Vec::new());
        let b = &mut self.blocks[self.cur];
        b.succs = vec![Block::new(to)];
        b.args = vec![args];
    }

    /// 新机器块（布局排在当前处理的块后面）。
    fn new_block(&mut self) -> usize {
        self.blocks.push(MBlock::default());
        let b = self.blocks.len() - 1;
        self.groups[self.group].push(b);
        b
    }

    /// 条件跳转的一条出边：目标有块参数或多个前驱 ⇒ 切一个中转块（regalloc2 不许关键边）。
    fn edge(&mut self, t: &Target) -> Result<usize, Error> {
        let to = self.bmap[t.block.0 as usize];
        if t.args.is_empty() && self.preds[t.block.0 as usize] <= 1 {
            return Ok(to);
        }
        let from = self.cur;
        let e = self.new_block();
        self.cur = e;
        let args = self.target_args(t)?;
        self.jump(to, args);
        self.cur = from;
        Ok(e)
    }

    /// 本块以条件跳转收尾：`op a, b` 成立去 `t`。
    fn branch(&mut self, op: IOp, a: R, b: R, t: usize, f: usize) {
        self.emit(MOp::Branch(op, Block::new(t), Block::new(f)), Vec::new(), vec![a, b]);
        let blk = &mut self.blocks[self.cur];
        blk.succs = vec![Block::new(t), Block::new(f)];
        blk.args = vec![Vec::new(), Vec::new()];
    }

    fn cond_br(&mut self, c: ValId, t: &Target, f: &Target) -> Result<(), Error> {
        // 实参要在本块里重建（中转块在后面才出），先把出边建好
        let (op, a, b) = match self.fused.get(&c).copied() {
            Some((p, x, y)) => self.compare_branch(p, x, y)?,
            None => (IOp::Bne, self.get1(c)?, R::ZERO),
        };
        let tb = self.edge(t)?;
        let mut fb = self.edge(f)?;
        if tb == fb {
            // 两条边同一个目标且不用中转：再加一个中转块，⛔ 让后继表里出现重复
            let from = self.cur;
            fb = self.new_block();
            self.cur = fb;
            self.jump(tb, Vec::new());
            self.cur = from;
        }
        self.branch(op, a, b, tb, fb);
        Ok(())
    }

    /// `switch`：逐个比较的链（`beq v, case`），最后到缺省。
    fn switch(&mut self, v: ValId, d: &Target, cases: &[(u128, Target)]) -> Result<(), Error> {
        let x = self.get1(v)?;
        if self.types().bits(self.ty(v)).is_some_and(|w| w > 32) {
            return Self::bad("switch 的值超过 32 位");
        }
        for (k, t) in cases {
            let to = self.edge(t)?;
            let kr = self.li(*k as u32 as i32);
            let next = self.new_block();
            self.branch(IOp::Beq, x, kr, to, next);
            self.cur = next;
        }
        let to = self.edge(d)?;
        self.jump(to, Vec::new());
        Ok(())
    }

    /// 入口：取参数（寄存器上的一条 `Args` 定义、栈上的从入参区读），可变参数记下第一个没用的 a 寄存器。
    fn entry(&mut self, blk: &IBlock) -> Result<(), Error> {
        let mut assign = Assign::default();
        let mut args = MInst::new(MOp::Args, Vec::new(), Vec::new());
        let mut loads = Vec::new();
        if self.sret_demoted()? {
            // 返回值放不进寄存器：调用方把地址放在 a0
            let d = self.xr();
            let [loc] = assign.parts(&[Part::X], false)[..] else { unreachable!() };
            if let Loc::Reg(p) = loc {
                args.defs.push(d);
                args.fixed_defs.push(Some(p));
            }
            self.sret = Some(d);
        }
        for (i, &p) in blk.params.iter().enumerate() {
            let t = self.ty(p);
            let parts = self.parts(t)?;
            let locs = assign.parts(&parts, false);
            let mut regs = Vec::new();
            for (part, loc) in parts.iter().zip(locs) {
                let d = R::V(self.vreg(part.class()));
                match loc {
                    Loc::Reg(preg) => {
                        args.defs.push(d);
                        args.fixed_defs.push(Some(preg));
                    }
                    Loc::Stack(off) => loads.push((d, *part, off)),
                }
                regs.push(d);
            }
            // 窄整数：调用方按 signext / zeroext 扩展过，这里统一成零扩展
            let regs = match self.types().bits(t) {
                Some(w) if w < 32 && self.f.params.get(i).is_some_and(|p| p.attrs.signext) => {
                    let m = self.mask(regs[0], w);
                    vec![m]
                }
                _ => regs,
            };
            self.vals[p.0 as usize] = Some(regs);
        }
        let n = args.defs.len();
        args.fixed_defs.truncate(n);
        self.push(args);
        for (d, part, off) in loads {
            let op = if part == Part::F { IOp::Flw } else { IOp::Lw };
            self.emit(MOp::Load(op, Base::Incoming, off), vec![d], Vec::new());
        }
        if self.f.varargs {
            self.varargs = Some(assign.next_x());
            self.varargs_stack = assign.stack;
        }
        Ok(())
    }
}
