//! 调用与返回（ilp32f，见 `abi.rs`）：实参拆成部件逐个分配，寄存器上的作为调用指令的固定 use，
//! 栈上的先存进出参区；返回值是固定 def；调用方保存的寄存器记成 clobber。库函数调用走同一条路。
use super::{Error, Isel, R};
use crate::regalloc::VReg;
use crate::codegen::abi::{Abi, Assign, Loc, Part};
use crate::codegen::mir::{Base, MInst, MOp, Rule};
use crate::ir::{ArgAttrs, Callee, Kind, RmwOp, Ty, ValId};
use crate::feature::{Float};
use crate::isa::{Opcode, Rv32i as IOp};

/// 一个实参：部件、部件种类、是否可变参数部分。
struct Actual {
    regs: Vec<R>,
    parts: Vec<Part>,
    variadic: bool,
}

impl Isel<'_> {
    /// 按引用传的值（同 LLVM 的 CC_RISCV：比 2×XLEN 宽的标量，宽整数与 fp128）：调用方拷一份到本帧、传地址。
    pub(super) fn indirect(&self, t: Ty) -> bool {
        matches!(self.kind(t), Kind::Int(w) if *w > 64) || matches!(self.kind(t), Kind::Fp128)
    }

    /// 本帧的一份拷贝（按引用传参）⇒ 地址。
    fn spill(&mut self, t: Option<Ty>, regs: &[R]) -> Result<R, Error> {
        let (size, align) = t.map_or((4 * regs.len() as u64, 16), |t| (self.types().size(t), self.types().align(t)));
        let obj = self.stack_slot(size, align);
        match t {
            Some(t) => self.store_at(t, regs, Base::Frame(obj), 0, align)?,
            None => {
                for (k, &r) in regs.iter().enumerate() {
                    self.emit(MOp::Store(IOp::Sw.into(), Base::Frame(obj), 4 * i32::try_from(k).unwrap_or(0)), &[], &[r]);
                }
            }
        }
        let d = self.xr();
        self.emit(MOp::Addr(Base::Frame(obj), 0), &[d], &[]);
        Ok(d)
    }

    /// 返回值放不进寄存器（sret）：本帧给一块返回区，地址当第一个实参 ⇒ 对象号。
    fn sret_slot(&mut self, size: u64, align: u64, actuals: &mut Vec<Actual>) -> u32 {
        let obj = self.stack_slot(size, align);
        let a = self.xr();
        self.emit(MOp::Addr(Base::Frame(obj), 0), &[a], &[]);
        actuals.insert(0, Actual { regs: vec![a], parts: vec![Part::X], variadic: false });
        obj
    }

    /// 返回值放不进寄存器（要调用方给地址）。
    pub(super) fn sret_demoted(&self) -> Result<bool, Error> {
        let parts = self.parts(self.f.ret)?;
        Ok(!parts.is_empty() && Abi::returns(&parts).is_none())
    }

    /// 发一次调用：`target` 为 `None` 时最后一个 use 是目标地址。回返回值的部件。
    fn emit_call(&mut self, target: Option<String>, indirect: Option<R>, actuals: Vec<Actual>, ret: &[Part]) -> Result<Vec<R>, Error> {
        let mut assign = Assign::default();
        let mut inst = MInst::new(MOp::Call(target), &[], &[]);
        let ret_regs = Abi::returns(ret).ok_or_else(|| Error::Select(String::from("返回值放不进寄存器：调用方先给返回区（sret_slot）")))?;
        for a in actuals {
            let locs = assign.parts(&a.parts, a.variadic);
            for ((r, part), loc) in a.regs.into_iter().zip(a.parts).zip(locs) {
                match loc {
                    Loc::Reg(p) => {
                        let v = self.virt(r);
                        // fa 用完了的 float 放进 a 寄存器（ilp32f）：先搬成整数（⛔ 浮点虚拟寄存器固定到整数寄存器：分配器无解）
                        let v = if v.class() != p.class() {
                            let x = self.xr();
                            self.emit(MOp::Reg(Float::FmvXW.into(), 7), &[x], &[R::V(v)]);
                            self.virt(x)
                        } else {
                            v
                        };
                        inst.use_on(R::V(v), Rule::Fixed(p));
                    }
                    Loc::Stack(off) => {
                        let op = if part == Part::F { Opcode::from(Float::Fsw) } else { Opcode::from(IOp::Sw) };
                        self.emit(MOp::Store(op, Base::Outgoing, off), &[], &[r]);
                    }
                }
            }
        }
        self.out_args = self.out_args.max(assign.stack);
        if let Some(t) = indirect {
            inst.use_on(t, Rule::Any);
        }
        let mut clobbers = Abi::caller_saved();
        let mut out = Vec::new();
        for (part, p) in ret.iter().zip(&ret_regs) {
            let d = R::V(self.vreg(part.class()));
            inst.def_on(d, Rule::Fixed(*p));
            clobbers.remove(*p);
            out.push(d);
        }
        inst.clobbers = clobbers;
        self.push(inst);
        self.calls = true;
        Ok(out)
    }

    /// 库函数调用：（部件, 种类）列表 ⇒ 返回值部件。超过两个部件的实参（宽整数）按引用传；放不进寄存器的返回值走 sret。
    pub(super) fn libcall(&mut self, name: &str, args: &[(Vec<R>, Vec<Part>)], ret: &[Part]) -> Result<Vec<R>, Error> {
        let mut actuals = Vec::new();
        for (regs, parts) in args {
            actuals.push(if parts.len() > 2 {
                Actual { regs: vec![self.spill(None, regs)?], parts: vec![Part::X], variadic: false }
            } else {
                Actual { regs: regs.clone(), parts: parts.clone(), variadic: false }
            });
        }
        if Abi::returns(ret).is_some() {
            return self.emit_call(Some(String::from(name)), None, actuals, ret);
        }
        let obj = self.sret_slot(4 * ret.len() as u64, 16, &mut actuals);
        self.emit_call(Some(String::from(name)), None, actuals, &[])?;
        Ok((0..ret.len())
            .map(|k| {
                let d = self.xr();
                self.emit(MOp::Load(IOp::Lw.into(), Base::Frame(obj), 4 * i32::try_from(k).unwrap_or(0)), &[d], &[]);
                d
            })
            .collect())
    }

    /// IR 的 `call`。
    pub(super) fn call(&mut self, fty: Ty, callee: &Callee, args: &[(ValId, ArgAttrs)], ret_attrs: &ArgAttrs) -> Result<Vec<R>, Error> {
        let Kind::Func(ret, params, _) = self.kind(fty).clone() else { return Self::bad("call 的类型不是函数类型") };
        let mut actuals = Vec::new();
        for (i, (v, attrs)) in args.iter().enumerate() {
            let t = self.ty(*v);
            let regs = if let Some(bt) = attrs.byval {
                // 按值传的结构体：拷一份到本帧，传地址
                let copy = self.byval_copy(*v, bt, attrs.align)?;
                vec![copy]
            } else {
                let mut regs = self.get(*v)?;
                if let Some(w) = self.types().bits(t).filter(|w| *w < 32)
                    && attrs.signext
                {
                    regs[0] = self.sext(regs[0], w);
                }
                regs
            };
            let (regs, parts) = match attrs.byval {
                Some(_) => (regs, vec![Part::X]),
                None if self.indirect(t) => (vec![self.spill(Some(t), &regs)?], vec![Part::X]),
                None if self.boxed(t) => (vec![self.nan_box(regs[0])], vec![Part::F]),
                None => (regs, self.parts(t)?),
            };
            actuals.push(Actual { regs, parts, variadic: i >= params.len() });
        }
        let ret_parts = if self.boxed(ret) { vec![Part::F] } else { self.parts(ret)? };
        let (target, indirect) = match callee {
            Callee::Direct(name) => (Some(name.clone()), None),
            Callee::Indirect(v) => (None, Some(self.get1(*v)?)),
        };
        if !ret_parts.is_empty() && Abi::returns(&ret_parts).is_none() {
            let align = self.types().align(ret);
            let obj = self.sret_slot(self.types().size(ret), align, &mut actuals);
            self.emit_call(target, indirect, actuals, &[])?;
            return self.load_at(ret, Base::Frame(obj), 0, align);
        }
        let out = self.emit_call(target, indirect, actuals, &ret_parts)?;
        if self.boxed(ret) {
            return Ok(vec![self.unbox(out[0])]);
        }
        // 窄整数返回值：被调方可能按 signext 扩展过，统一回零扩展
        Ok(match self.types().bits(ret) {
            Some(w) if w < 32 && !ret_attrs.zeroext => vec![self.mask(out[0], w)],
            _ => out,
        })
    }

    /// 按值传参的拷贝：本帧一个对象，逐字（或逐字节）拷过去，回它的地址。
    fn byval_copy(&mut self, src: ValId, t: Ty, align: Option<u64>) -> Result<R, Error> {
        let size = self.types().size(t);
        let align = align.unwrap_or_else(|| self.types().align(t)).max(1);
        let obj = self.stack_slot(size, align);
        let (sb, so) = self.address(src)?;
        let step: u64 = if align >= 4 && size.is_multiple_of(4) { 4 } else { 1 };
        let (lop, sop): (Opcode, Opcode) = if step == 4 { (IOp::Lw.into(), IOp::Sw.into()) } else { (IOp::Lbu.into(), IOp::Sb.into()) };
        let base_reg = self.materialize(sb, so);
        for at in (0..size).step_by(usize::try_from(step).unwrap_or(1)) {
            let d = self.xr();
            let at = i32::try_from(at).unwrap_or(0);
            self.emit(MOp::Load(lop, Base::Reg(base_reg), at), &[d], &[base_reg]);
            self.emit(MOp::Store(sop, Base::Frame(obj), at), &[], &[d]);
        }
        let d = self.xr();
        self.emit(MOp::Addr(Base::Frame(obj), 0), &[d], &[]);
        Ok(d)
    }

    /// `return`。
    /// 16 位浮点（half / bfloat）开了 F 时按 LLVM 的约定过调用边界（参数、返回值）：NaN-box（高 16 位全 1）进 fa 寄存器。
    /// 平时它是整数寄存器里零扩展的 16 位。
    pub(super) fn boxed(&self, t: Ty) -> bool {
        self.float() && matches!(self.kind(t), Kind::Half | Kind::BFloat)
    }

    /// 整数寄存器里的 16 位 ⇒ NaN-box 的浮点寄存器。
    pub(super) fn nan_box(&mut self, x: R) -> R {
        let k = self.li(0xffff_0000u32.cast_signed());
        let o = self.rr(IOp::Or, x, k);
        let f = self.fr();
        self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[f], &[o]);
        f
    }

    /// 浮点寄存器里 NaN-box 的 16 位 ⇒ 整数寄存器里零扩展的 16 位。
    pub(super) fn unbox(&mut self, f: R) -> R {
        let x = self.xr();
        self.emit(MOp::Reg(Float::FmvXW.into(), 7), &[x], &[f]);
        self.mask(x, 16)
    }

    pub(super) fn ret(&mut self, v: Option<ValId>) -> Result<(), Error> {
        let mut inst = MInst::new(MOp::Ret, &[], &[]);
        if let Some(v) = v {
            let t = self.ty(v);
            let mut regs = self.get(v)?;
            if let Some(w) = self.types().bits(t).filter(|w| *w < 32)
                && self.f.ret_attrs.signext
            {
                regs[0] = self.sext(regs[0], w);
            }
            let parts = if self.boxed(t) {
                regs = vec![self.nan_box(regs[0])];
                vec![Part::F]
            } else {
                self.parts(t)?
            };
            match Abi::returns(&parts) {
                Some(pregs) => {
                    for (r, p) in regs.into_iter().zip(pregs) {
                        let v = self.virt(r);
                        inst.use_on(R::V(v), Rule::Fixed(p));
                    }
                }
                // sret：写进调用方给的返回区
                None => {
                    let p = self.sret.ok_or_else(|| Error::Select(String::from("返回值放不进寄存器，入口却没收返回区")))?;
                    self.store_at(t, &regs, Base::Reg(p), 0, self.types().align(t))?;
                }
            }
        }
        self.push(inst);
        Ok(())
    }

    /// 没有 A 扩展：原子读同 LLVM 走 `__atomic_load_N(指针, 内存序)`。
    pub(super) fn atomic_load(&mut self, t: Ty, p: ValId, order: u8) -> Result<Vec<R>, Error> {
        let n = self.types().size(t);
        let ptr = self.get1(p)?;
        let o = self.li(i32::from(order));
        let parts = self.parts(t)?;
        self.libcall(&format!("__atomic_load_{n}"), &[(vec![ptr], vec![Part::X]), (vec![o], vec![Part::X])], &parts)
    }

    /// 原子写：`__atomic_store_N(指针, 值, 内存序)`。
    pub(super) fn atomic_store(&mut self, v: ValId, p: ValId, order: u8) -> Result<(), Error> {
        let t = self.ty(v);
        let n = self.types().size(t);
        let ptr = self.get1(p)?;
        let val = self.get(v)?;
        let parts = self.parts(t)?;
        let o = self.li(i32::from(order));
        self.libcall(&format!("__atomic_store_{n}"), &[(vec![ptr], vec![Part::X]), (val, parts), (vec![o], vec![Part::X])], &[])?;
        Ok(())
    }

    /// 原子库函数收 / 回的是同宽的整数：float 的部件先换成位型（⛔ 放进 fa 寄存器，库函数从 a 寄存器读）。
    fn atomic_bits(&mut self, parts: &[R]) -> Vec<R> {
        parts
            .iter()
            .map(|&r| match r {
                R::V(v) if v.class() == crate::regalloc::RegClass::Float => {
                    let x = self.xr();
                    self.emit(MOp::Reg(Float::FmvXW.into(), 7), &[x], &[r]);
                    x
                }
                r => r,
            })
            .collect()
    }

    /// [`Self::atomic_bits`] 的反向：位型 ⇒ 类型 `t` 的部件。
    fn atomic_unbits(&mut self, t: Ty, bits: Vec<R>) -> Result<Vec<R>, Error> {
        let parts = self.parts(t)?;
        Ok(bits
            .into_iter()
            .zip(parts)
            .map(|(r, p)| {
                if p != Part::F {
                    return r;
                }
                let f = self.fr();
                self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[f], &[r]);
                f
            })
            .collect())
    }

    /// 没有 A 扩展：`atomicrmw` 走 `__atomic_*` 库函数；库里没有的（大小、浮点）同 LLVM 的 AtomicExpand 展开成 CAS 循环。
    pub(super) fn atomic_rmw(&mut self, op: RmwOp, p: ValId, v: ValId, order: u8) -> Result<Vec<R>, Error> {
        let t = self.ty(v);
        let n = self.types().size(t);
        let name = match op {
            RmwOp::Xchg => "exchange",
            RmwOp::Add => "fetch_add",
            RmwOp::Sub => "fetch_sub",
            RmwOp::And => "fetch_and",
            RmwOp::Nand => "fetch_nand",
            RmwOp::Or => "fetch_or",
            RmwOp::Xor => "fetch_xor",
            _ => return self.atomic_loop(op, p, v, order),
        };
        let ptr = self.get1(p)?;
        let val = self.get(v)?;
        let val = self.atomic_bits(&val);
        let ints = vec![Part::X; val.len()];
        let order = self.li(i32::from(order));
        let r = self.libcall(&format!("__atomic_{name}_{n}"), &[(vec![ptr], vec![Part::X]), (val, ints.clone()), (vec![order], vec![Part::X])], &ints)?;
        self.atomic_unbits(t, r)
    }

    /// 期望值的栈槽（`n` 字节、按 `n` 对齐）：帧对象号。
    fn atomic_slot(&mut self, n: u64) -> u32 {
        self.stack_slot(n, n.clamp(1, 8))
    }

    /// `__atomic_compare_exchange_N(ptr, &槽, 新值, 成功序, 失败序)`：槽里放着期望值，失败时库函数把读到的写回槽。
    /// 回成功 0 / 1。
    fn cas(&mut self, ptr: R, obj: u32, new: &[R], n: u64, order: (u8, u8)) -> Result<R, Error> {
        let slot = self.xr();
        self.emit(MOp::Addr(Base::Frame(obj), 0), &[slot], &[]);
        let new = self.atomic_bits(new);
        let (s, f) = (self.li(i32::from(order.0)), self.li(i32::from(order.1)));
        let args = [(vec![ptr], vec![Part::X]), (vec![slot], vec![Part::X]), (new.clone(), vec![Part::X; new.len()]), (vec![s], vec![Part::X]), (vec![f], vec![Part::X])];
        let ok = self.libcall(&format!("__atomic_compare_exchange_{n}"), &args, &[Part::X])?;
        // 回的是 bool（a0 的低 8 位）
        Ok(self.ri(IOp::Andi, ok[0], 0xff))
    }

    /// `cmpxchg p, c, v` ⇒（读到的值的部件…, 成功 0 / 1）。`order`：（成功序, 失败序），C 内存序编码。
    pub(super) fn cmpxchg(&mut self, p: ValId, c: ValId, v: ValId, order: (u8, u8)) -> Result<Vec<R>, Error> {
        let t = self.ty(c);
        let n = self.types().size(t);
        let (ptr, cmp, new) = (self.get1(p)?, self.get(c)?, self.get(v)?);
        let obj = self.atomic_slot(n);
        self.store_leaf(t, &cmp, Base::Frame(obj), 0, n)?;
        let ok = self.cas(ptr, obj, &new, n, order)?;
        let ok = self.rr(IOp::Sltu, R::ZERO, ok);
        let mut out = self.load_leaf(t, Base::Frame(obj), 0, n)?;
        out.push(ok);
        Ok(out)
    }

    /// CAS 循环（同 LLVM 的 AtomicExpand::expandAtomicRMWToCmpXchg）：
    /// ```text
    /// 本块：  old0 = load p                      ⇒ 循环(old0)
    /// 循环(old)：new = op(old, v)；槽 = old；ok = CAS(p, 槽, new)；cur = 槽  ⇒ ok ? 出口(cur) : 循环(cur)
    /// 出口(r)：结果 = r（成功时槽里还是 old）
    /// ```
    fn atomic_loop(&mut self, op: RmwOp, p: ValId, v: ValId, order: u8) -> Result<Vec<R>, Error> {
        let t = self.ty(v);
        let n = self.types().size(t);
        let (ptr, val) = (self.get1(p)?, self.get(v)?);
        let w = self.types().bits(t).unwrap_or(32);
        let init = self.load_leaf(t, Base::Reg(ptr), 0, n)?;
        let obj = self.atomic_slot(n);
        let fresh = |s: &mut Self, like: &[R]| -> Vec<R> { like.iter().map(|r| R::V(s.vreg(if matches!(r, R::V(v) if v.class() == crate::regalloc::RegClass::Float) { crate::regalloc::RegClass::Float } else { crate::regalloc::RegClass::Int }))).collect() };
        let (head, done) = (self.new_block(), self.new_block());
        let old = fresh(self, &init);
        let res = fresh(self, &init);
        let vregs = |rs: &[R]| rs.iter().map(|r| if let R::V(v) = r { *v } else { unreachable!("块参数是虚拟寄存器") }).collect::<Vec<_>>();
        self.blocks[head].params = vregs(&old);
        self.blocks[done].params = vregs(&res);
        let args = init.iter().map(|&r| self.virt(r)).collect();
        self.jump(head, args);
        // 循环体
        self.cur = head;
        let new = match op {
            RmwOp::Max | RmwOp::Min | RmwOp::UMax | RmwOp::UMin => {
                let signed = matches!(op, RmwOp::Max | RmwOp::Min);
                let keep_old = if w > 32 {
                    let (o, x) = if signed { (self.sext_top(old.clone(), w), self.sext_top(val.clone(), w)) } else { (old.clone(), val.clone()) };
                    // max：v < old ⇒ 留 old；min：old < v ⇒ 留 old
                    if matches!(op, RmwOp::Max | RmwOp::UMax) { self.wide_lt(signed, &x, &o) } else { self.wide_lt(signed, &o, &x) }
                } else {
                    let (o, x) = if signed { (self.sext(old[0], w), self.sext(val[0], w)) } else { (old[0], val[0]) };
                    let cmp = if signed { IOp::Slt } else { IOp::Sltu };
                    if matches!(op, RmwOp::Max | RmwOp::UMax) { self.rr(cmp, x, o) } else { self.rr(cmp, o, x) }
                };
                self.select_parts(IOp::Bne, keep_old, R::ZERO, &old, &val)
            }
            RmwOp::FAdd | RmwOp::FSub => self.farith(if op == RmwOp::FAdd { crate::ir::BinOp::FAdd } else { crate::ir::BinOp::FSub }, t, old.clone(), val.clone())?,
            RmwOp::FMax | RmwOp::FMin if matches!(self.kind(t), Kind::Float) && self.float() => {
                let d = self.fr();
                let fop = if op == RmwOp::FMax { Float::FmaxS } else { Float::FminS };
                self.emit(MOp::Reg(fop.into(), 7), &[d], &[old[0], val[0]]);
                vec![d]
            }
            RmwOp::FMax | RmwOp::FMin => {
                let ps = self.parts(t)?;
                let name = format!("{}{}", if op == RmwOp::FMax { "fmax" } else { "fmin" }, if matches!(self.kind(t), Kind::Double) { "" } else { "f" });
                self.libcall(&name, &[(old.clone(), ps.clone()), (val.clone(), ps.clone())], &ps)?
            }
            _ => return Self::bad(format!("atomicrmw {op:?} 还没做")),
        };
        self.store_leaf(t, &old, Base::Frame(obj), 0, n)?;
        let ok = self.cas(ptr, obj, &new, n, (order, order))?;
        let cur = self.load_leaf(t, Base::Frame(obj), 0, n)?;
        // 出边带实参 ⇒ 各切一个中转块（⛔ 关键边）
        let (to_done, to_loop) = (self.new_block(), self.new_block());
        self.branch(IOp::Bne, ok, R::ZERO, to_done, to_loop);
        let cur_args: Vec<VReg> = cur.iter().map(|&r| self.virt(r)).collect();
        self.cur = to_done;
        self.jump(done, cur_args.clone());
        self.cur = to_loop;
        self.jump(head, cur_args);
        self.cur = done;
        Ok(res)
    }
}
