//! 调用与返回（ilp32f，见 `abi.rs`）：实参拆成部件逐个分配，寄存器上的作为调用指令的固定 use，
//! 栈上的先存进出参区；返回值是固定 def；调用方保存的寄存器记成 clobber。库函数调用走同一条路。
use super::{Error, FrameObj, Isel, R};
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
    /// 返回值放不进寄存器（要调用方给地址）。
    pub(super) fn sret_demoted(&self) -> Result<bool, Error> {
        let parts = self.parts(self.f.ret)?;
        Ok(!parts.is_empty() && Abi::returns(&parts).is_none())
    }

    /// 发一次调用：`target` 为 `None` 时最后一个 use 是目标地址。回返回值的部件。
    fn emit_call(&mut self, target: Option<String>, indirect: Option<R>, actuals: Vec<Actual>, ret: &[Part]) -> Result<Vec<R>, Error> {
        let mut assign = Assign::default();
        let mut inst = MInst::new(MOp::Call(target), Vec::new(), Vec::new());
        let ret_regs = Abi::returns(ret).ok_or_else(|| Error::Select(String::from("返回值放不进寄存器的调用还没做（sret 降级）")))?;
        for a in actuals {
            let locs = assign.parts(&a.parts, a.variadic);
            for ((r, part), loc) in a.regs.into_iter().zip(a.parts).zip(locs) {
                match loc {
                    Loc::Reg(p) => {
                        let v = self.virt(r);
                        inst.use_on(R::V(v), Rule::Fixed(p));
                    }
                    Loc::Stack(off) => {
                        let op = if part == Part::F { Opcode::from(Float::Fsw) } else { Opcode::from(IOp::Sw) };
                        self.emit(MOp::Store(op, Base::Outgoing, off), Vec::new(), vec![r]);
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

    /// 库函数调用：（部件, 种类）列表 ⇒ 返回值部件。
    pub(super) fn libcall(&mut self, name: &str, args: &[(Vec<R>, Vec<Part>)], ret: &[Part]) -> Result<Vec<R>, Error> {
        let actuals = args.iter().map(|(regs, parts)| Actual { regs: regs.clone(), parts: parts.clone(), variadic: false }).collect();
        self.emit_call(Some(String::from(name)), None, actuals, ret)
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
            let parts = if attrs.byval.is_some() { vec![Part::X] } else { self.parts(t)? };
            actuals.push(Actual { regs, parts, variadic: i >= params.len() });
        }
        let ret_parts = self.parts(ret)?;
        let (target, indirect) = match callee {
            Callee::Direct(name) => (Some(name.clone()), None),
            Callee::Indirect(v) => (None, Some(self.get1(*v)?)),
        };
        let out = self.emit_call(target, indirect, actuals, &ret_parts)?;
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
        let obj = u32::try_from(self.frame.len()).expect("帧对象太多");
        self.frame.push(FrameObj { size: size.max(1), align });
        let (sb, so) = self.address(src)?;
        let step: u64 = if align >= 4 && size.is_multiple_of(4) { 4 } else { 1 };
        let (lop, sop): (Opcode, Opcode) = if step == 4 { (IOp::Lw.into(), IOp::Sw.into()) } else { (IOp::Lbu.into(), IOp::Sb.into()) };
        let base_reg = self.materialize(sb, so);
        for at in (0..size).step_by(usize::try_from(step).unwrap_or(1)) {
            let d = self.xr();
            let at = i32::try_from(at).unwrap_or(0);
            self.emit(MOp::Load(lop, Base::Reg(base_reg), at), vec![d], vec![base_reg]);
            self.emit(MOp::Store(sop, Base::Frame(obj), at), Vec::new(), vec![d]);
        }
        let d = self.xr();
        self.emit(MOp::Addr(Base::Frame(obj), 0), vec![d], Vec::new());
        Ok(d)
    }

    /// `return`。
    pub(super) fn ret(&mut self, v: Option<ValId>) -> Result<(), Error> {
        let mut inst = MInst::new(MOp::Ret, Vec::new(), Vec::new());
        if let Some(v) = v {
            let t = self.ty(v);
            let mut regs = self.get(v)?;
            if let Some(w) = self.types().bits(t).filter(|w| *w < 32)
                && self.f.ret_attrs.signext
            {
                regs[0] = self.sext(regs[0], w);
            }
            let parts = self.parts(t)?;
            match Abi::returns(&parts) {
                Some(pregs) => {
                    for (r, p) in regs.into_iter().zip(pregs) {
                        let v = self.virt(r);
                        inst.use_on(R::V(v), Rule::Fixed(p));
                    }
                }
                None => return Self::bad("返回值放不进寄存器（sret 降级）还没做"),
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

    /// 没有 A 扩展：`atomicrmw` 走 `__atomic_*` 库函数。
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
            _ => return Self::bad(format!("atomicrmw {op:?} 还没做")),
        };
        let ptr = self.get1(p)?;
        let val = self.get(v)?;
        let parts = self.parts(t)?;
        let order = self.li(i32::from(order));
        self.libcall(&format!("__atomic_{name}_{n}"), &[(vec![ptr], vec![Part::X]), (val, parts.clone()), (vec![order], vec![Part::X])], &parts)
    }
}
