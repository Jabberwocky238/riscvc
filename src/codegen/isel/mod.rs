//! 指令选择：内部 IR ⇒ 机器 IR（虚拟寄存器）。
//!
//! 每个 IR 值拆成 32 位部件（[`Part`]）各占一个虚拟寄存器：i64 / double 两个整数寄存器，`float` 一个浮点寄存器，
//! 结构体 / 数组按字段拆平。窄整数（i1..i31）在寄存器里**恒为零扩展**（高位是 0），要有符号语义的地方现场符号扩展。
//! 常量不占寄存器：每次用到时在用处重建（`li` / `lla`），活跃区间短。
//!
//! ```text
//! mod.rs   骨架：值表、块、跳转（关键边切开、块参数）、入口取参
//! int.rs   整数运算与比较（≤ 32 位）、整数转换、select
//! wide.rs  宽整数（33 位以上，逐字）：进位链、竖式乘、经栈的变量移位、除法循环
//! divc.rs  除以常数：移位 / 乘魔数（不出除法指令）
//! float.rs float 用 F 扩展；double 全走 compiler-rt 软浮点（__adddf3 …）
//! mem.rs   load / store / alloca / getelementptr、聚合值
//! call.rs  调用、返回、库函数调用
//! intr.rs  llvm.intr.*
//! ```
mod call;
mod divc;
mod float;
mod int;
mod intr;
mod mem;
mod wide;

use super::abi::{Assign, Loc, Part};
use super::mir::{Base, MBlock, MInst, MOp, R, Rule};
use super::Error;
use crate::ir::{Block as IBlock, CastOp, Const, Function, IPred, Inst, Intr, Kind, Module, Op, Target, Ty, Types, ValId};
use crate::feature::{Float, M, Zmmul};
use crate::isa::{Opcode, Rm, Rv32i as IOp, Table};
use crate::regalloc::{Block, RegClass, VReg};
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
    /// 跳转表：第 n 张是 `.LJTI{函数序号}_{n}`，逐项一个块号。
    pub tables: Vec<Vec<usize>>,
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
    /// 跳转表（`switch_table` 填）。
    tables: Vec<Vec<usize>>,
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
    /// 本块条件跳转 / select 的条件里的整数比较：用处直接出 `bxx`（另有用处的照样算出来）。
    fused: HashMap<ValId, (IPred, ValId, ValId)>,
    /// ≤ 32 位的 ctpop 结果 ⇒（实参, 只拿去和常数比 ⇒ 不用算）：比较改成位运算（[`Self::pop_test`]）。
    pops: HashMap<ValId, (ValId, bool)>,
    /// F 扩展上 float 的取整（floor 一类）⇒（实参, 舍入模式, 只拿去转成 ≤ 32 位整数 ⇒ 不用算）：转换并成一条带舍入模式的 fcvt。
    rounds: HashMap<ValId, (ValId, Rm, bool)>,
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
            tables: Vec::new(),
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
            pops: HashMap::new(),
            rounds: HashMap::new(),
            out_args: 0,
            calls: false,
            varargs: None,
            varargs_stack: 0,
            dynamic_sp: false,
            sret: None,
        };
        let order = f.rpo();
        s.count(&order);
        // 非入口块的块参数 ⇒ 机器块参数。
        // ⛔ 只给走得到的块建：走不到的下面只发一条 Unreachable，给它建了参数就成了
        // 「声明了却没有任何指令用过」的虚拟寄存器，regalloc2 说不出它的类别会 panic。
        for (b, blk) in f.blocks.iter().enumerate().skip(1).filter(|(b, _)| order.contains(b)) {
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
                s.emit(MOp::Unreachable, &[], &[]);
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
            tables: s.tables,
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
        // 条件跳转、select 的条件是同一块里的 ≤ 32 位比较 ⇒ 分支直接拿比较的操作数（同 LLVM：比较另有用处也照样算出来）
        for blk in &self.f.blocks {
            for c in blk.insts.iter().filter_map(|i| match i.op {
                Op::CondBr(c, ..) | Op::Select(c, ..) => Some(c),
                _ => None,
            }) {
                for inst in &blk.insts {
                    if inst.result == Some(c)
                        && let Op::ICmp(p, a, b) = inst.op
                        && self.types().bits(self.ty(a)).is_none_or(|w| w <= 32)
                    {
                        self.fused.insert(c, (p, a, b));
                    }
                }
            }
        }
        // ctpop 和 0 / 1 / 2 比：改成位运算；float 取整再转成整数：一条 fcvt。所有用处都是这种 ⇒ 被并掉的那个本身不算
        let ints: HashMap<ValId, i32> = order
            .iter()
            .flat_map(|&b| &self.f.blocks[b].insts)
            .filter_map(|i| match (&i.op, i.result) {
                (Op::Const(Const::Int(k)), Some(r)) => Some((r, *k as u32 as i32)),
                (Op::Const(Const::Zero), Some(r)) => Some((r, 0)),
                _ => None,
            })
            .collect();
        let mut tests: HashMap<ValId, u32> = HashMap::new();
        for inst in order.iter().flat_map(|&b| &self.f.blocks[b].insts) {
            match (&inst.op, inst.result) {
                (Op::Intr(Intr::Ctpop, args), Some(r)) if self.types().bits(self.ty(args[0])).is_some_and(|w| w <= 32) => {
                    self.pops.insert(r, (args[0], false));
                }
                (Op::ICmp(p, a, b), _) if self.pops.contains_key(a) && ints.get(b).is_some_and(|k| Self::pop_kind(*p, *k).is_some()) => {
                    *tests.entry(*a).or_default() += 1;
                }
                (Op::Intr(Intr::Libm(name), args), Some(r)) if Float::ENABLED && matches!(self.kind(self.ty(args[0])), Kind::Float) => {
                    if let Some(rm) = Self::round_mode(name) {
                        self.rounds.insert(r, (args[0], rm, false));
                    }
                }
                (Op::Cast(CastOp::FpToSi | CastOp::FpToUi, a), Some(r)) if self.rounds.contains_key(a) && self.types().bits(self.ty(r)).is_some_and(|w| w <= 32) => {
                    *tests.entry(*a).or_default() += 1;
                }
                _ => {}
            }
        }
        for (r, (_, lazy)) in &mut self.pops {
            *lazy = tests.get(r).copied() == Some(self.uses[r.0 as usize]);
        }
        for (r, (_, _, lazy)) in &mut self.rounds {
            *lazy = tests.get(r).copied() == Some(self.uses[r.0 as usize]);
        }
    }

    // ---- 小工具 -------------------------------------------------------------------------

    /// 软浮点类型：compiler-rt 函数名的后缀（`df` = double，`tf` = fp128，F 没开时 `sf` = float）；硬件做的 ⇒ `None`。
    fn soft(&self, t: Ty) -> Option<&'static str> {
        match self.kind(t) {
            Kind::Double => Some("df"),
            Kind::Fp128 => Some("tf"),
            Kind::Float if !crate::feature::Float::ENABLED => Some("sf"),
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
            // 更宽的整数：⌈w/32⌉ 个字（过调用边界按引用，见 call.rs）
            Kind::Int(w) => vec![Part::X; w.div_ceil(32) as usize],
            Kind::Ptr | Kind::Half | Kind::BFloat => vec![Part::X],
            Kind::Float if crate::feature::Float::ENABLED => vec![Part::F],
            // 没有 F（ilp32）：float 是一个整数部件
            Kind::Float => vec![Part::X],
            Kind::Double => vec![Part::Lo, Part::Hi],
            Kind::Fp128 => vec![Part::X; 4],
            Kind::Array(n, e) => self.parts(*e)?.repeat(usize::try_from(*n).unwrap_or(0)),
            Kind::Vector(n, e) => self.parts(*e)?.repeat(*n as usize),
            Kind::Struct(fields, _) => fields.iter().map(|f| self.parts(*f)).collect::<Result<Vec<_>, _>>()?.concat(),
            k => return Self::bad(format!("不支持的类型 {k:?}")),
        })
    }

    /// 一个栈帧对象 ⇒ 对象号。
    fn stack_slot(&mut self, size: u64, align: u64) -> u32 {
        let obj = u32::try_from(self.frame.len()).expect("帧对象太多");
        self.frame.push(FrameObj { size: size.max(1), align: align.max(1) });
        obj
    }

    /// 一组新的虚拟寄存器，形状同类型 `t`。
    fn fresh(&mut self, t: Ty) -> Vec<R> {
        self.parts(t).unwrap_or_default().into_iter().map(|p| R::V(self.vreg(p.class()))).collect()
    }

    fn push(&mut self, inst: MInst) {
        self.blocks[self.cur].insts.push(inst);
    }

    fn emit(&mut self, op: MOp, defs: &[R], uses: &[R]) {
        self.push(MInst::new(op, defs, uses));
    }

    /// `op rd, a, b`，rd 是新整数寄存器。
    /// `op rd, a, b`。M / Zmmul 没开（feature）的乘除改调 compiler-rt（同 llc 的 libcall 降级）。
    fn rr(&mut self, op: impl Into<Opcode>, a: R, b: R) -> R {
        let op: Opcode = op.into();
        if !op.enabled() {
            return self.soft_muldiv(op, a, b);
        }
        let d = self.xr();
        self.emit(MOp::Reg(op, 7), &[d], &[a, b]);
        d
    }

    /// 没有 M / Zmmul 时的乘除：`mul` / `div*` / `rem*` 各一个 libcall；`mulh*` 把两边扩成 64 位调 `__muldi3` 取高半。
    fn soft_muldiv(&mut self, op: Opcode, a: R, b: R) -> R {
        let x = |r: R| (vec![r], vec![Part::X]);
        let call = |s: &mut Self, name: &str, args: &[(Vec<R>, Vec<Part>)], ret: &[Part]| s.libcall(name, args, ret).expect("纯整数部件的 libcall 不会失败");
        let name = match op {
            Opcode::Zmmul(Zmmul::Mul) => "__mulsi3",
            Opcode::M(M::Div) => "__divsi3",
            Opcode::M(M::Divu) => "__udivsi3",
            Opcode::M(M::Rem) => "__modsi3",
            Opcode::M(M::Remu) => "__umodsi3",
            Opcode::Zmmul(z) => {
                let hi = |s: &mut Self, r: R, signed: bool| if signed { s.ri(IOp::Srai, r, 31) } else { R::ZERO };
                let (ah, bh) = (hi(self, a, z != Zmmul::Mulhu), hi(self, b, z == Zmmul::Mulh));
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
        self.emit(MOp::Imm(op, imm), &[d], &[a]);
        d
    }

    /// 32 位常数（0 ⇒ `zero`）。
    fn li(&mut self, v: i32) -> R {
        if v == 0 {
            return R::ZERO;
        }
        let d = self.xr();
        self.emit(MOp::Li(v), &[d], &[]);
        d
    }

    /// 物理寄存器（`zero`）⇒ 虚拟寄存器（跳转实参、调用实参要虚拟的）。
    fn virt(&mut self, r: R) -> VReg {
        match r {
            R::V(v) => v,
            R::P(_) => {
                let d = self.xr();
                self.emit(MOp::Imm(IOp::Addi, 0), &[d], &[r]);
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

    /// 单部件的值（≤ 32 位的整数、指针、float）。⛔ 两个部件的（i64 / double）报错：要低半的明说 [`Self::low`]，
    /// ⛔ 默默只拿低半（i64 饱和运算曾经因此全错）。
    fn get1(&mut self, v: ValId) -> Result<R, Error> {
        match self.get(v)?[..] {
            [r] => Ok(r),
            ref parts => Self::bad(format!("值 %{} 有 {} 个部件，这里只收一个", v.0, parts.len())),
        }
    }

    /// 低 32 位（截断、移位量、整数转指针：只要低半的地方）。
    fn low(&mut self, v: ValId) -> Result<R, Error> {
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
                        self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[d], &[R::ZERO]);
                        d
                    }
                    _ => R::ZERO,
                })
                .collect(),
            (Const::Int(v), Kind::Int(w)) => self.int_words(*v, *w),
            (Const::Int(v), Kind::Ptr) => vec![self.li(*v as u32 as i32)],
            (Const::Float(bits), Kind::Float) if !crate::feature::Float::ENABLED => vec![self.li(*bits as u32 as i32)],
            (Const::Float(bits), Kind::Float) => {
                let x = self.li(*bits as u32 as i32);
                let d = self.fr();
                self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[d], &[x]);
                vec![d]
            }
            (Const::Float(bits), Kind::Double) => vec![self.li(*bits as u32 as i32), self.li((*bits >> 32) as u32 as i32)],
            (Const::Float(bits), Kind::Half | Kind::BFloat) => vec![self.li(*bits as u32 as i32)],
            (Const::Float(bits), Kind::Fp128) => self.int_words(Self::quad(*bits), 128),
            (Const::Int(v), Kind::Fp128) => self.int_words(*v, 128),
            (Const::Global(name, off), _) => {
                let d = self.xr();
                self.emit(MOp::La(name.clone(), *off), &[d], &[]);
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
            Op::Unreachable => self.emit(MOp::Unreachable, &[], &[]),
            Op::Bin(op, a, b) => {
                let parts = self.binary(*op, *a, *b)?;
                self.set(r, parts);
            }
            Op::FNeg(a) => {
                let parts = self.fneg(*a)?;
                self.set(r, parts);
            }
            Op::ICmp(p, a, b) => {
                // 只给分支用 ⇒ 不用算出来
                if r.is_some_and(|r| self.fused.contains_key(&r) && self.uses[r.0 as usize] == 1) {
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
            Op::Intr(Intr::Ctpop, _) if r.is_some_and(|r| self.pops.get(&r).is_some_and(|p| p.1)) => {}
            Op::Intr(Intr::Libm(_), _) if r.is_some_and(|r| self.rounds.get(&r).is_some_and(|p| p.2)) => {}
            Op::Intr(i, args) => {
                let t = r.map(|r| self.ty(r));
                let parts = self.intrinsic(i, args, t)?;
                self.set(r, parts);
            }
            Op::AtomicRmw(op, p, v, order) => {
                let parts = self.atomic_rmw(*op, *p, *v, *order)?;
                self.set(r, parts);
            }
            Op::CmpXchg(p, c, v, success, failure) => {
                let parts = self.cmpxchg(*p, *c, *v, (*success, *failure))?;
                self.set(r, parts);
            }
            Op::Fence => self.emit(MOp::Fence, &[], &[]),
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
        self.emit(MOp::Jump(Block::new(to)), &[], &[]);
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
        if t.args.is_empty() && self.preds[t.block.0 as usize] <= 1 {
            return Ok(self.bmap[t.block.0 as usize]);
        }
        self.split(t)
    }

    /// 一定切中转块（跳转表用：每个去处要独占一个单前驱的块）。
    fn split(&mut self, t: &Target) -> Result<usize, Error> {
        let to = self.bmap[t.block.0 as usize];
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
        self.emit(MOp::Branch(op, Block::new(t), Block::new(f)), &[], &[a, b]);
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

    /// `switch`：够密 ⇒ 跳转表，否则逐个比较的链（`beq v, case`；宽整数比各字的异或之或），最后到缺省。
    fn switch(&mut self, v: ValId, d: &Target, cases: &[(u128, Target)]) -> Result<(), Error> {
        if self.switch_table(v, d, cases)? {
            return Ok(());
        }
        let x = self.get(v)?;
        let w = self.types().bits(self.ty(v)).unwrap_or(32);
        for (k, t) in cases {
            let to = self.edge(t)?;
            let ks = self.int_words(*k, w);
            let (a, b) = match (&x[..], &ks[..]) {
                ([a], [b]) => (*a, *b),
                _ => (self.wide_diff(&x, &ks), R::ZERO),
            };
            let next = self.new_block();
            self.branch(IOp::Beq, a, b, to, next);
            self.cur = next;
        }
        let to = self.edge(d)?;
        self.jump(to, Vec::new());
        Ok(())
    }

    /// 密集 `switch` ⇒ 跳转表，形状同 llc：越界跳默认，再 `slli` + `add` + `lw` + `jr`，表在 `.rodata`。
    /// 不划算或形态不合（宽整数、太少、太稀、起点落不进 `addi` 的立即数）⇒ `false`，退回比较链。
    fn switch_table(&mut self, v: ValId, d: &Target, cases: &[(u128, Target)]) -> Result<bool, Error> {
        /// 少于这么多个 case 不值得（同 LLVM 的 MinimumJumpTableEntries）。
        const MIN: usize = 4;
        /// 表项上限：再多宁可比较链，⛔ 不为一个 switch 放半兆 `.rodata`。
        const MAX: u128 = 4096;
        let w = self.types().bits(self.ty(v)).unwrap_or(32);
        let (Some(lo), Some(hi)) = (cases.iter().map(|(k, _)| *k).min(), cases.iter().map(|(k, _)| *k).max()) else { return Ok(false) };
        let range = hi - lo + 1;
        // 密度 < 40% ⇒ 表里全是默认项，不如比较链
        if w > 32 || cases.len() < MIN || range > MAX || (cases.len() as u128) * 5 < range * 2 || lo > 2047 {
            return Ok(false);
        }
        let x = self.get(v)?;
        let [v0] = x[..] else { return Ok(false) };
        // 索引归一到 0：`addi idx, v, -lo`
        let idx = if lo == 0 { v0 } else { self.ri(IOp::Addi, v0, -i32::try_from(lo).unwrap_or(0)) };
        let limit = self.xr();
        self.emit(MOp::Li(i32::try_from(range - 1).unwrap_or(i32::MAX)), &[limit], &[]);
        // 越界那条边也要独占一个中转块：⛔ 和表里的默认项共用（共用 ⇒ 默认块多前驱 ⇒ 这条 `bltu` 不许带操作数）
        let dflt = self.split(d)?;
        let body = self.new_block();
        // `bltu 上界, idx` ⇒ idx 越界，跳默认（同 llc）
        self.branch(IOp::Bltu, limit, idx, dflt, body);
        self.cur = body;
        // 第 j 项是 `lo + j` 的去处，空档落默认。每个去处独占一个中转块（同一个去处的表项共用一个）：
        // regalloc2 不许关键边，后继有多个前驱时还会禁掉分支带寄存器操作数。
        let mut keyed: Vec<(Option<usize>, usize)> = Vec::new();
        let mut targets = Vec::new();
        for j in 0..range {
            let key = cases.iter().position(|(k, _)| *k == lo + j);
            let b = match keyed.iter().find(|(k, _)| *k == key) {
                Some(&(_, b)) => b,
                None => {
                    let b = self.split(match key { Some(i) => &cases[i].1, None => d })?;
                    keyed.push((key, b));
                    b
                }
            };
            targets.push(b);
        }
        let n = self.tables.len();
        self.tables.push(targets.clone());
        let base = self.xr();
        // 符号名要函数序号，isel 这里还不知道 ⇒ 占位，lower 时换成 `.LJTI{函数}_{n}`
        self.emit(MOp::La(format!("\u{1}{n}"), 0), &[base], &[]);
        let off = self.ri(IOp::Slli, idx, 2);
        let addr = self.rr(IOp::Add, base, off);
        let tgt = self.xr();
        self.emit(MOp::Load(IOp::Lw.into(), Base::Reg(addr), 0), &[tgt], &[addr]);
        let blocks: Vec<Block> = keyed.iter().map(|&(_, b)| Block::new(b)).collect();
        self.emit(MOp::JumpTable(blocks.clone()), &[], &[tgt]);
        let blk = &mut self.blocks[self.cur];
        blk.args = vec![Vec::new(); blocks.len()];
        blk.succs = blocks;
        Ok(true)
    }

    /// 入口：取参数（寄存器上的一条 `Args` 定义、栈上的从入参区读），可变参数记下第一个没用的 a 寄存器。
    fn entry(&mut self, blk: &IBlock) -> Result<(), Error> {
        let mut assign = Assign::default();
        let mut args = MInst::new(MOp::Args, &[], &[]);
        let mut loads = Vec::new();
        if self.sret_demoted()? {
            // 返回值放不进寄存器：调用方把地址放在 a0
            let d = self.xr();
            let [loc] = assign.parts(&[Part::X], false)[..] else { unreachable!() };
            if let Loc::Reg(p) = loc {
                args.def_on(d, Rule::Fixed(p));
            }
            self.sret = Some(d);
        }
        // ⚠ 先推 `Args`（定义寄存器上的参数）、再读栈上的、再做零扩展：⛔ 先用后定义
        let (mut params, mut moves) = (Vec::new(), Vec::new());
        for &p in &blk.params {
            let t = self.ty(p);
            // 按引用传的（宽整数）：一个指针
            let parts = if self.boxed(t) { vec![Part::F] } else if self.indirect(t) { vec![Part::X] } else { self.parts(t)? };
            let locs = assign.parts(&parts, false);
            let mut regs = Vec::new();
            for (part, loc) in parts.iter().zip(locs) {
                let d = R::V(self.vreg(part.class()));
                match loc {
                    // fa 用完了、落在 a 寄存器上的 float：先在整数寄存器上接住，再搬进浮点
                    Loc::Reg(preg) if preg.class() != part.class() => {
                        let x = self.xr();
                        args.def_on(x, Rule::Fixed(preg));
                        moves.push((d, x));
                    }
                    Loc::Reg(preg) => args.def_on(d, Rule::Fixed(preg)),
                    Loc::Stack(off) => loads.push((d, *part, off)),
                }
                regs.push(d);
            }
            params.push(regs);
        }
        self.push(args);
        for (d, x) in moves {
            self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[d], &[x]);
        }
        for (d, part, off) in loads {
            let op = if part == Part::F { Opcode::from(Float::Flw) } else { Opcode::from(IOp::Lw) };
            self.emit(MOp::Load(op, Base::Incoming, off), &[d], &[]);
        }
        for (i, (&p, regs)) in blk.params.iter().zip(params).enumerate() {
            let t = self.ty(p);
            // half / bfloat：从 NaN-box 的浮点寄存器拿回 16 位；按引用传的：从指针读
            let regs = if self.boxed(t) {
                vec![self.unbox(regs[0])]
            } else if self.indirect(t) {
                self.load_at(t, Base::Reg(regs[0]), 0, self.types().align(t))?
            } else {
                regs
            };
            // 窄整数：调用方按 signext / zeroext 扩展过，这里统一成零扩展
            let regs = match self.types().bits(self.ty(p)) {
                Some(w) if w < 32 && self.f.params.get(i).is_some_and(|p| p.attrs.signext) => vec![self.mask(regs[0], w)],
                _ => regs,
            };
            self.vals[p.0 as usize] = Some(regs);
        }
        if self.f.varargs {
            self.varargs = Some(assign.next_x());
            self.varargs_stack = assign.stack;
        }
        Ok(())
    }
}
