//! mlirformat 解析出的模块 ⇒ 内部 IR。函数体里的 op 按命名空间交给注册的方言插件（[`crate::plugin`]）下降，
//! `llvm` 方言是内置的那个（[`Module::op`]）。
//!
//! 带操作数分段的 op（`cond_br` / `switch` / `call` / `func` / `mlir.global` …）走 `ops.gen.rs` 的类型化结构体；
//! 二元运算、转换、intrinsic 这类只有操作数与一两个属性的，按名字查表读通用 `Operation`。
use super::{
    Alias, ArgAttrs, BinOp, Block, BlockId, Callee, CastOp, Const, Error, FPred, Function, Global, IPred, Index, Inst, Intr, Kind, Linkage, Module, Op, Param, RmwOp, Target, Ty, Types, ValId,
};
use crate::llvm::{self, Llvm, LlvmType};
use crate::plugin::Registry;
use mlirformat::{Attribute, FloatKind, Item, NamedAttr, Operation, Region, ShapedKind, Type, Value};
use std::collections::HashMap;

impl TryFrom<&str> for Module {
    type Error = Error;

    /// ⭐ MLIR 文本（`llvm` 方言，通用形式；注册了的自定义形式也认）⇒ 内部 IR。只有内置方言。
    fn try_from(text: &str) -> Result<Self, Error> {
        Registry::default().parse(text)
    }
}

impl Module {
    /// MLIR 文本 ⇒ 内部 IR，op 交给 `reg` 里注册的方言。
    pub(crate) fn parse_with(text: &str, reg: &Registry<'_>) -> Result<Self, Error> {
        let opt = reg.opt();
        let parsed = opt.parse(text).map_err(|e| Error::Parse(e.to_string()))?;
        let mut m = Self::default();
        for item in &parsed.items {
            let Item::Op(op) = item else { continue };
            // 顶层可以直接是 op，也可以包在 builtin.module 里
            if op.name == "builtin.module" {
                for r in &op.regions {
                    for b in &r.blocks {
                        for o in &b.ops {
                            m.top(o, reg)?;
                        }
                    }
                }
            } else {
                m.top(op, reg)?;
            }
        }
        Ok(m)
    }
}

/// ⭐ 方言插件下降一条 op 时的上下文：读操作数 / 结果、转类型、开临时值、往当前块里出指令。
pub struct Lowering<'x, 'a> {
    module: &'x mut Module,
    body: &'x mut Body,
    op: &'x Operation<'a>,
    insts: &'x mut Vec<Inst>,
}

impl<'a> Lowering<'_, 'a> {
    /// 正在下降的 op。
    #[must_use]
    pub const fn op(&self) -> &Operation<'a> {
        self.op
    }

    /// 操作数的值。
    pub fn operands(&self) -> Result<Vec<ValId>, Error> {
        self.body.all(&self.op.operands)
    }

    /// 结果的值（已编好号，类型来自 op 的结果类型）。
    pub fn results(&self) -> Result<Vec<ValId>, Error> {
        self.op.results.iter().map(|r| self.body.names.get(&*r.name).copied().ok_or_else(|| Error::Parse(format!("没定义的结果 %{}", r.name)))).collect()
    }

    /// 属性（properties 或属性字典）。
    #[must_use]
    pub fn attr(&self, name: &str) -> Option<&Attribute<'a>> {
        prop(self.op, name)
    }

    /// MLIR 类型 ⇒ 内部类型。
    pub fn ty(&mut self, t: &Type<'_>) -> Result<Ty, Error> {
        self.module.ty(t)
    }

    #[must_use]
    pub fn types(&self) -> &Types {
        &self.module.types
    }

    /// 值的类型。
    #[must_use]
    pub fn type_of(&self, v: ValId) -> Ty {
        self.body.vals[v.0 as usize]
    }

    /// 新的临时值（展开成多条指令时用）。
    pub fn temp(&mut self, ty: Ty) -> ValId {
        let id = ValId(u32::try_from(self.body.vals.len()).expect("值太多"));
        self.body.vals.push(ty);
        id
    }

    /// 出一条指令。
    pub fn emit(&mut self, result: Option<ValId>, op: Op) {
        self.insts.push(Inst { result, op });
    }

    /// 内置 `llvm` 方言：一条 op ⇒ 一条指令。
    pub(crate) fn llvm(&mut self) -> Result<(), Error> {
        let result = self.op.results.first().map(|r| self.body.names[&*r.name]);
        let o = self.module.op(self.op, self.body, result)?;
        self.emit(result, o);
        Ok(())
    }
}

/// 属性的读法。
trait Attr {
    fn i64(&self) -> Option<i64>;
    fn lit(&self) -> Option<&str>;
    fn ty(&self) -> Option<&Type<'_>>;
    fn symbol(&self) -> Option<String>;
    fn dense(&self) -> Vec<i64>;
}

impl Attr for Attribute<'_> {
    fn i64(&self) -> Option<i64> {
        match self {
            Self::Bool(b) => Some(i64::from(*b)),
            _ => self.int().ok().and_then(|v| i64::try_from(v).ok()),
        }
    }

    fn lit(&self) -> Option<&str> {
        match self {
            Self::Str { lit, .. } => Some(lit),
            _ => None,
        }
    }

    fn ty(&self) -> Option<&Type<'_>> {
        match self {
            Self::Type(t) => Some(t),
            _ => None,
        }
    }

    fn symbol(&self) -> Option<String> {
        match self {
            Self::SymbolRef(parts) => parts.first().map(|s| String::from(s.trim_matches('"'))),
            _ => None,
        }
    }

    fn dense(&self) -> Vec<i64> {
        match self {
            Self::DenseArray { values, .. } => values.iter().filter_map(|v| v.parse().ok()).collect(),
            _ => Vec::new(),
        }
    }
}

/// op 的属性（先找 `<{…}>` 里的 properties，再找 `{…}`）。
fn prop<'x, 'a>(op: &'x Operation<'a>, name: &str) -> Option<&'x Attribute<'a>> {
    let dict = |a: &'x Attribute<'a>| -> Option<&'x Attribute<'a>> {
        match a {
            Attribute::Dict(v) => v.iter().find(|n| n.name == name).and_then(|n| n.value.as_ref()),
            _ => None,
        }
    };
    op.properties.as_ref().and_then(dict).or_else(|| op.attributes.iter().find(|n| n.name == name).and_then(|n| n.value.as_ref()))
}

/// 按名字查表：二元运算、转换、intrinsic。
fn binop(name: &str) -> Option<BinOp> {
    Some(match name {
        "llvm.add" => BinOp::Add,
        "llvm.sub" => BinOp::Sub,
        "llvm.mul" => BinOp::Mul,
        "llvm.udiv" => BinOp::UDiv,
        "llvm.sdiv" => BinOp::SDiv,
        "llvm.urem" => BinOp::URem,
        "llvm.srem" => BinOp::SRem,
        "llvm.shl" => BinOp::Shl,
        "llvm.lshr" => BinOp::LShr,
        "llvm.ashr" => BinOp::AShr,
        "llvm.and" => BinOp::And,
        "llvm.or" => BinOp::Or,
        "llvm.xor" => BinOp::Xor,
        "llvm.fadd" => BinOp::FAdd,
        "llvm.fsub" => BinOp::FSub,
        "llvm.fmul" => BinOp::FMul,
        "llvm.fdiv" => BinOp::FDiv,
        "llvm.frem" => BinOp::FRem,
        _ => return None,
    })
}

fn castop(name: &str) -> Option<CastOp> {
    Some(match name {
        "llvm.trunc" => CastOp::Trunc,
        "llvm.zext" => CastOp::ZExt,
        "llvm.sext" => CastOp::SExt,
        "llvm.fptrunc" => CastOp::FpTrunc,
        "llvm.fpext" => CastOp::FpExt,
        "llvm.fptoui" => CastOp::FpToUi,
        "llvm.fptosi" => CastOp::FpToSi,
        "llvm.uitofp" => CastOp::UiToFp,
        "llvm.sitofp" => CastOp::SiToFp,
        "llvm.ptrtoint" => CastOp::PtrToInt,
        "llvm.inttoptr" => CastOp::IntToPtr,
        "llvm.bitcast" => CastOp::Bitcast,
        "llvm.addrspacecast" => CastOp::AddrSpaceCast,
        _ => return None,
    })
}

fn intrinsic(name: &str, op: &Operation<'_>, float: bool) -> Option<Intr> {
    let libm = |base: &str| Intr::Libm(if float { format!("{base}f") } else { String::from(base) });
    Some(match name.strip_prefix("llvm.intr.")? {
        "ctlz" => Intr::Ctlz,
        "cttz" => Intr::Cttz,
        "ctpop" => Intr::Ctpop,
        "bswap" => Intr::Bswap,
        "bitreverse" => Intr::Bitreverse,
        "ptrmask" => Intr::PtrMask,
        "abs" => Intr::Abs,
        "smax" => Intr::SMax,
        "smin" => Intr::SMin,
        "umax" => Intr::UMax,
        "umin" => Intr::UMin,
        "sadd.sat" => Intr::SAddSat,
        "uadd.sat" => Intr::UAddSat,
        "ssub.sat" => Intr::SSubSat,
        "usub.sat" => Intr::USubSat,
        "sadd.with.overflow" => Intr::SAddOv,
        "uadd.with.overflow" => Intr::UAddOv,
        "ssub.with.overflow" => Intr::SSubOv,
        "usub.with.overflow" => Intr::USubOv,
        "smul.with.overflow" => Intr::SMulOv,
        "umul.with.overflow" => Intr::UMulOv,
        "fshl" => Intr::Fshl,
        "fshr" => Intr::Fshr,
        "fabs" => Intr::Fabs,
        "copysign" => Intr::Copysign,
        "fma" => Intr::Fma,
        "fmuladd" => Intr::FMulAdd,
        "sqrt" => Intr::Sqrt,
        "minnum" => Intr::MinNum,
        "maxnum" => Intr::MaxNum,
        "is.fpclass" => Intr::IsFpClass(u32::try_from(prop(op, "bit")?.i64()?).ok()?),
        "memcpy" | "memcpy.inline" => Intr::Memcpy,
        "memmove" => Intr::Memmove,
        "memset" | "memset.inline" => Intr::Memset,
        "trap" | "ubsantrap" => Intr::Trap,
        "debugtrap" => Intr::DebugTrap,
        "stacksave" => Intr::StackSave,
        "stackrestore" => Intr::StackRestore,
        "vastart" => Intr::VaStart,
        "vaend" => Intr::VaEnd,
        "vacopy" => Intr::VaCopy,
        "expect" | "expect.with.probability" => Intr::Expect,
        "floor" | "ceil" | "trunc" | "round" | "rint" | "nearbyint" | "pow" | "exp" | "exp2" | "log" | "log2" | "log10" | "sin" | "cos" | "tan" | "roundeven" => {
            libm(name.trim_start_matches("llvm.intr."))
        }
        n if n.starts_with("lifetime.") || n.starts_with("invariant.") || n.starts_with("dbg.") || n == "assume" || n == "prefetch" || n == "donothing" || n == "sideeffect" => Intr::Nop,
        _ => return None,
    })
}

/// 一个函数体的名字表（MLIR 的 SSA 名 ⇒ `ValId`，块名 ⇒ `BlockId`）。
#[derive(Default)]
struct Body {
    vals: Vec<Ty>,
    names: HashMap<String, ValId>,
    blocks: HashMap<String, BlockId>,
}

impl Body {
    fn key(v: &Value<'_>) -> String {
        match v.index {
            Some(i) => format!("{}#{i}", v.name),
            None => String::from(&*v.name),
        }
    }

    fn define(&mut self, name: &str, ty: Ty) -> ValId {
        let id = ValId(u32::try_from(self.vals.len()).expect("值太多"));
        self.vals.push(ty);
        self.names.insert(String::from(name), id);
        id
    }

    fn get(&self, v: &Value<'_>) -> Result<ValId, Error> {
        self.names.get(&Self::key(v)).copied().ok_or_else(|| Error::Parse(format!("没定义的值 %{}", Self::key(v))))
    }

    fn all(&self, vs: &[Value<'_>]) -> Result<Vec<ValId>, Error> {
        vs.iter().map(|v| self.get(v)).collect()
    }

    fn block(&self, label: &str) -> Result<BlockId, Error> {
        self.blocks.get(label).copied().ok_or_else(|| Error::Parse(format!("没有块 ^{label}")))
    }

    fn target(&self, label: &str, args: &[Value<'_>]) -> Result<Target, Error> {
        Ok(Target { block: self.block(label)?, args: self.all(args)? })
    }
}

impl Module {
    fn top(&mut self, op: &Operation<'_>, reg: &Registry<'_>) -> Result<(), Error> {
        match &*op.name {
            "llvm.func" => self.function(op, reg),
            "llvm.mlir.global" => self.global(op, reg),
            "llvm.mlir.alias" => self.alias(op, reg),
            // 只影响元数据 / 链接器提示的
            "llvm.module_flags" | "llvm.comdat" | "llvm.metadata" | "llvm.compiler.used" | "llvm.used" | "llvm.mlir.global_ctors" | "llvm.mlir.global_dtors" | "llvm.linker_options" | "llvm.dependent_libraries" => Ok(()),
            n => Err(Error::Op { op: String::from(n), why: String::from("顶层不认识") }),
        }
    }

    /// MLIR 类型 ⇒ 内部类型。
    fn ty(&mut self, t: &Type<'_>) -> Result<Ty, Error> {
        let bad = || Error::Parse(format!("不支持的类型 {t:?}"));
        Ok(match t {
            Type::Integer { width, .. } => self.types.int(*width),
            Type::Float(k) => match k {
                FloatKind::F32 => Types::FLOAT,
                FloatKind::F64 => Types::DOUBLE,
                FloatKind::F16 => self.types.get(Kind::Half),
                FloatKind::BF16 => self.types.get(Kind::BFloat),
                FloatKind::F128 => self.types.get(Kind::Fp128),
                _ => return Err(bad()),
            },
            Type::Index => Types::I32,
            Type::Shaped(s) if s.kind == ShapedKind::Vector => {
                let n = match s.shape.as_deref() {
                    Some([mlirformat::Dim::Static(n)]) => u32::try_from(*n).map_err(|_| bad())?,
                    _ => return Err(bad()),
                };
                let e = self.ty(&s.elem)?;
                self.types.get(Kind::Vector(n, e))
            }
            Type::Extended(_) => match Llvm::llvm_type(t).ok_or_else(bad)? {
                LlvmType::Void => Types::VOID,
                LlvmType::Ptr => Types::PTR,
                LlvmType::Array(n, e) => {
                    let e = self.ty(e)?;
                    self.types.get(Kind::Array(n, e))
                }
                LlvmType::Struct { fields, packed, name, opaque } => {
                    if opaque {
                        self.types.get(Kind::Opaque(String::from(name.unwrap_or(""))))
                    } else {
                        let fields = fields.into_iter().map(|f| self.ty(f)).collect::<Result<Vec<_>, _>>()?;
                        self.types.get(Kind::Struct(fields, packed))
                    }
                }
                LlvmType::Func(r, args, varargs) => {
                    let r = self.ty(r)?;
                    let args = args.into_iter().map(|a| self.ty(a)).collect::<Result<Vec<_>, _>>()?;
                    self.types.get(Kind::Func(r, args, varargs))
                }
            },
            _ => return Err(bad()),
        })
    }

    fn linkage(attr: Option<&Attribute<'_>>) -> Linkage {
        match attr.and_then(Llvm::keyword_of) {
            Some("internal") => Linkage::Internal,
            Some("private") => Linkage::Private,
            Some("weak" | "weak_odr") => Linkage::Weak,
            Some("linkonce" | "linkonce_odr") => Linkage::LinkOnce,
            Some("common") => Linkage::Common,
            Some("extern_weak") => Linkage::ExternWeak,
            Some("available_externally") => Linkage::Available,
            _ => Linkage::External,
        }
    }

    /// `[{llvm.signext}, {llvm.byval = T}, …]` 里第 `i` 个。
    fn arg_attrs(&mut self, list: Option<&Attribute<'_>>, i: usize) -> Result<ArgAttrs, Error> {
        let mut out = ArgAttrs::default();
        let dict: &[NamedAttr<'_>] = match list {
            Some(Attribute::Array(v)) => match v.get(i) {
                Some(Attribute::Dict(d)) => d,
                _ => return Ok(out),
            },
            Some(Attribute::Dict(d)) if i == 0 => d,
            _ => return Ok(out),
        };
        for a in dict {
            match &*a.name {
                "llvm.signext" => out.signext = true,
                "llvm.zeroext" => out.zeroext = true,
                "llvm.sret" => out.sret = true,
                "llvm.byval" => out.byval = a.value.as_ref().and_then(Attr::ty).map(|t| self.ty(t)).transpose()?,
                "llvm.align" => out.align = a.value.as_ref().and_then(Attr::i64).and_then(|v| u64::try_from(v).ok()),
                _ => {}
            }
        }
        Ok(out)
    }

    fn function(&mut self, op: &Operation<'_>, reg: &Registry<'_>) -> Result<(), Error> {
        let f: llvm::LLVMFuncOp<'_> = op.to_op().map_err(|e| Error::Op { op: String::from("llvm.func"), why: e.0 })?;
        let name = String::from(f.sym_name.lit().ok_or_else(|| Error::Parse(String::from("llvm.func 没有名字")))?);
        let fty = self.ty(f.function_type.ty().ok_or_else(|| Error::Parse(format!("{name}：没有 function_type")))?)?;
        let Kind::Func(ret, params, varargs) = self.types.kind(fty).clone() else { return Err(Error::Parse(format!("{name}：function_type 不是函数类型"))) };
        let params = params.iter().enumerate().map(|(i, &ty)| Ok(Param { ty, attrs: self.arg_attrs(f.arg_attrs.as_ref(), i)? })).collect::<Result<Vec<_>, Error>>()?;
        let mut func = Function {
            hidden: matches!(f.visibility_, Some(llvm::Visibility::Hidden)),
            linkage: Self::linkage(f.linkage.as_ref()),
            ret,
            ret_attrs: self.arg_attrs(f.res_attrs.as_ref(), 0)?,
            params,
            varargs,
            section: f.section.as_ref().and_then(Attr::lit).map(String::from),
            align: f.alignment.as_ref().and_then(Attr::i64).and_then(|v| u64::try_from(v).ok()),
            blocks: Vec::new(),
            vals: Vec::new(),
            name,
        };
        if !f.body.blocks.is_empty() {
            let (blocks, vals) = self.body(&f.body, reg).map_err(|e| match e {
                Error::Op { op, why } => Error::Op { op, why: format!("{}：{why}", func.name) },
                e => e,
            })?;
            func.blocks = blocks;
            func.vals = vals;
        }
        self.functions.push(func);
        Ok(())
    }

    /// 函数体：先给所有块参数、op 结果编号（MLIR 的块次序不一定是支配次序），再逐条转。
    fn body(&mut self, region: &Region<'_>, reg: &Registry<'_>) -> Result<(Vec<Block>, Vec<Ty>), Error> {
        let mut b = Body::default();
        for (i, blk) in region.blocks.iter().enumerate() {
            b.blocks.insert(String::from(blk.label.as_deref().unwrap_or("")), BlockId(u32::try_from(i).expect("块太多")));
        }
        let mut params = Vec::new();
        for blk in &region.blocks {
            let mut ps = Vec::new();
            for a in &blk.args {
                let t = self.ty(&a.ty)?;
                ps.push(b.define(&a.name, t));
            }
            params.push(ps);
            for op in &blk.ops {
                for (r, t) in op.results.iter().zip(&op.ty.results) {
                    let t = self.ty(t)?;
                    b.define(&r.name, t);
                }
            }
        }
        let mut blocks = Vec::new();
        for (blk, params) in region.blocks.iter().zip(params) {
            let mut insts = Vec::new();
            for op in &blk.ops {
                let ns = op.name.split_once('.').map_or(&*op.name, |(ns, _)| ns);
                let dialect = reg.find_dialect(ns).ok_or_else(|| Error::Op { op: String::from(&*op.name), why: format!("没有注册 `{ns}` 方言") })?;
                let mut cx = Lowering { module: self, body: &mut b, op, insts: &mut insts };
                dialect.lower(&mut cx).map_err(|e| match e {
                    Error::Parse(why) => Error::Op { op: String::from(&*op.name), why },
                    e => e,
                })?;
            }
            blocks.push(Block { params, insts });
        }
        Ok((blocks, b.vals))
    }

    fn uint(op: &Operation<'_>, name: &str) -> u64 {
        prop(op, name).and_then(Attr::i64).and_then(|v| u64::try_from(v).ok()).unwrap_or(0)
    }

    /// 一条 op ⇒ 内部的 `Op`。
    #[allow(clippy::too_many_lines, reason = "一种 op 一支")]
    fn op(&mut self, op: &Operation<'_>, b: &Body, result: Option<ValId>) -> Result<Op, Error> {
        let name = &*op.name;
        let args = b.all(&op.operands)?;
        let typed = |e: mlirformat::Error| Error::Parse(e.0);
        let res_ty = result.map(|r| b.vals[r.0 as usize]);
        if let Some(k) = binop(name) {
            return Ok(Op::Bin(k, args[0], args[1]));
        }
        if let Some(k) = castop(name) {
            return Ok(Op::Cast(k, args[0]));
        }
        let float = op.ty.inputs.first().is_some_and(|t| matches!(t, Type::Float(FloatKind::F32)));
        if let Some(i) = intrinsic(name, op, float) {
            return Ok(Op::Intr(i, args));
        }
        Ok(match name {
            "llvm.mlir.constant" => Op::Const(self.constant(prop(op, "value").ok_or_else(|| Error::Parse(String::from("没有 value")))?, res_ty.unwrap_or(Types::I32))?),
            "llvm.mlir.zero" => Op::Const(Const::Zero),
            "llvm.mlir.undef" | "llvm.mlir.poison" => Op::Const(Const::Undef),
            "llvm.mlir.addressof" => Op::Const(Const::Global(prop(op, "global_name").and_then(Attr::symbol).ok_or_else(|| Error::Parse(String::from("没有 global_name")))?, 0)),
            "llvm.return" => Op::Ret(args.first().copied()),
            "llvm.unreachable" => Op::Unreachable,
            "llvm.br" => {
                let o: llvm::BrOp<'_> = op.to_op().map_err(typed)?;
                Op::Br(b.target(&o.dest, &o.dest_operands)?)
            }
            "llvm.cond_br" => {
                let o: llvm::CondBrOp<'_> = op.to_op().map_err(typed)?;
                Op::CondBr(b.get(&o.condition)?, b.target(&o.true_dest, &o.true_dest_operands)?, b.target(&o.false_dest, &o.false_dest_operands)?)
            }
            "llvm.switch" => {
                let o: llvm::SwitchOp<'_> = op.to_op().map_err(typed)?;
                let bits = self.types.bits(b.vals[b.get(&o.value)?.0 as usize]).unwrap_or(32);
                let values = o.case_values.as_ref().map(|v| Self::dense_ints(v)).transpose()?.unwrap_or_default();
                let segments = o.case_operand_segments.dense();
                let mut at = 0usize;
                let mut cases = Vec::new();
                for (i, dest) in o.case_destinations.iter().enumerate() {
                    let n = usize::try_from(segments.get(i).copied().unwrap_or(0)).unwrap_or(0);
                    let v = values.get(i).copied().unwrap_or(0);
                    cases.push((Self::mask(v, bits), b.target(dest, &o.case_operands[at..at + n])?));
                    at += n;
                }
                Op::Switch(b.get(&o.value)?, b.target(&o.default_destination, &o.default_operands)?, cases)
            }
            "llvm.fneg" => Op::FNeg(args[0]),
            "llvm.icmp" => Op::ICmp(Self::pred(op, [IPred::Eq, IPred::Ne, IPred::Slt, IPred::Sle, IPred::Sgt, IPred::Sge, IPred::Ult, IPred::Ule, IPred::Ugt, IPred::Uge])?, args[0], args[1]),
            "llvm.fcmp" => Op::FCmp(
                Self::pred(op, [FPred::False, FPred::Oeq, FPred::Ogt, FPred::Oge, FPred::Olt, FPred::Ole, FPred::One, FPred::Ord, FPred::Ueq, FPred::Ugt, FPred::Uge, FPred::Ult, FPred::Ule, FPred::Une, FPred::Uno, FPred::True])?,
                args[0],
                args[1],
            ),
            "llvm.alloca" => {
                let o: llvm::AllocaOp<'_> = op.to_op().map_err(typed)?;
                let ty = self.ty(o.elem_type.ty().ok_or_else(|| Error::Parse(String::from("没有 elem_type")))?)?;
                Op::Alloca { ty, count: args[0], align: Self::uint(op, "alignment").max(1) }
            }
            "llvm.load" => Op::Load { ptr: args[0], align: Self::uint(op, "alignment"), volatile: prop(op, "volatile_").is_some(), atomic: Self::order(op) },
            "llvm.store" => Op::Store { val: args[0], ptr: args[1], align: Self::uint(op, "alignment"), volatile: prop(op, "volatile_").is_some(), atomic: Self::order(op) },
            "llvm.getelementptr" => {
                let o: llvm::GEPOp<'_> = op.to_op().map_err(typed)?;
                let src = self.ty(o.elem_type.ty().ok_or_else(|| Error::Parse(String::from("没有 elem_type")))?)?;
                let mut dynamic = b.all(&o.dynamic_indices)?.into_iter();
                let indices = o
                    .raw_constant_indices
                    .dense()
                    .into_iter()
                    .map(|i| if i == i64::from(i32::MIN) { dynamic.next().map(Index::Dyn).ok_or_else(|| Error::Parse(String::from("动态下标不够"))) } else { Ok(Index::Const(i)) })
                    .collect::<Result<Vec<_>, _>>()?;
                Op::Gep { src, base: b.get(&o.base)?, indices }
            }
            "llvm.select" => Op::Select(args[0], args[1], args[2]),
            "llvm.freeze" => Op::Freeze(args[0]),
            "llvm.extractvalue" => Op::ExtractValue(args[0], Self::position(op)?),
            "llvm.insertvalue" => Op::InsertValue(args[0], args[1], Self::position(op)?),
            "llvm.call" => self.call(op, b)?,
            "llvm.atomicrmw" => {
                const OPS: [RmwOp; 15] = [RmwOp::Xchg, RmwOp::Add, RmwOp::Sub, RmwOp::And, RmwOp::Nand, RmwOp::Or, RmwOp::Xor, RmwOp::Max, RmwOp::Min, RmwOp::UMax, RmwOp::UMin, RmwOp::FAdd, RmwOp::FSub, RmwOp::FMax, RmwOp::FMin];
                let k = usize::try_from(Self::uint(op, "bin_op")).unwrap_or(usize::MAX);
                Op::AtomicRmw(*OPS.get(k).ok_or_else(|| Error::Parse(format!("bin_op {k}")))?, args[0], args[1], Self::order(op).unwrap_or(5))
            }
            "llvm.cmpxchg" => Op::CmpXchg(args[0], args[1], args[2]),
            "llvm.fence" => Op::Fence,
            "llvm.va_arg" => return Err(Error::Parse(String::from("va_arg 指令还没做（clang 自己展开 va_arg，不会出这条）"))),
            n => return Err(Error::Parse(format!("不支持的 op `{n}`"))),
        })
    }

    /// MLIR 的 `ordering`（not_atomic 0、unordered 1、monotonic 2、acquire 4、release 5、acq_rel 6、seq_cst 7）⇒ C 内存序。
    fn order(op: &Operation<'_>) -> Option<u8> {
        Some(match Self::uint(op, "ordering") {
            0 => return None,
            1 | 2 => 0,
            4 => 2,
            5 => 3,
            6 => 4,
            _ => 5,
        })
    }

    /// `predicate = N : i64` ⇒ 表里第 N 个。
    fn pred<T: Copy, const N: usize>(op: &Operation<'_>, table: [T; N]) -> Result<T, Error> {
        let k = usize::try_from(Self::uint(op, "predicate")).unwrap_or(usize::MAX);
        table.get(k).copied().ok_or_else(|| Error::Parse(format!("predicate {k}")))
    }

    fn position(op: &Operation<'_>) -> Result<Vec<u32>, Error> {
        prop(op, "position").map(Attr::dense).unwrap_or_default().into_iter().map(|v| u32::try_from(v).map_err(|_| Error::Parse(format!("position {v}")))).collect()
    }

    fn call(&mut self, op: &Operation<'_>, b: &Body) -> Result<Op, Error> {
        let o: llvm::CallOp<'_> = op.to_op().map_err(|e| Error::Parse(e.0))?;
        let mut operands = b.all(&o.callee_operands)?;
        let callee = match o.callee.as_ref().and_then(Attr::symbol) {
            Some(name) => Callee::Direct(name),
            None => Callee::Indirect(operands.remove(0)),
        };
        let fty = match o.var_callee_type.as_ref().and_then(Attr::ty) {
            Some(t) => self.ty(t)?,
            None => {
                let ret = match o.result.first() {
                    Some(t) => self.ty(t)?,
                    None => Types::VOID,
                };
                let skip = usize::from(matches!(callee, Callee::Indirect(_)));
                let params = o.callee_operands_ty.iter().skip(skip).map(|t| self.ty(t)).collect::<Result<Vec<_>, _>>()?;
                self.types.get(Kind::Func(ret, params, false))
            }
        };
        let args = operands.into_iter().enumerate().map(|(i, v)| Ok((v, self.arg_attrs(o.arg_attrs.as_ref(), i)?))).collect::<Result<Vec<_>, Error>>()?;
        Ok(Op::Call { fty, callee, args, ret: self.arg_attrs(o.res_attrs.as_ref(), 0)? })
    }

    fn mask(v: i128, bits: u32) -> u128 {
        let v = v.cast_unsigned();
        if bits >= 128 { v } else { v & ((1u128 << bits) - 1) }
    }

    /// 常量属性 ⇒ 常量（`ty` = 结果类型）。
    fn constant(&mut self, a: &Attribute<'_>, ty: Ty) -> Result<Const, Error> {
        let bits = self.types.bits(ty);
        Ok(match a {
            Attribute::Bool(v) => Const::Int(u128::from(*v)),
            Attribute::Int { .. } => {
                let v = a.int().map_err(|e| Error::Parse(e.0))?;
                match self.types.kind(ty) {
                    Kind::Float => Const::Float(Self::mask(v, 32).try_into().unwrap_or(0)),
                    Kind::Double => Const::Float(Self::mask(v, 64).try_into().unwrap_or(0)),
                    _ => Const::Int(Self::mask(v, bits.unwrap_or(64))),
                }
            }
            Attribute::Float { lit, .. } => Const::Float(Self::float(lit, self.types.kind(ty) == &Kind::Float)?),
            Attribute::Str { lit, .. } => Const::Bytes(Self::bytes(lit)),
            Attribute::Builtin { name, body, .. } if name == "dense" => self.dense(body, ty)?,
            Attribute::SymbolRef(_) => Const::Global(a.symbol().unwrap_or_default(), 0),
            _ => return Err(Error::Parse(format!("不支持的常量 {a:?}"))),
        })
    }

    /// 浮点字面量：十进制或十六进制位型。
    fn float(lit: &str, single: bool) -> Result<u64, Error> {
        let lit = lit.trim();
        if let Some(h) = lit.strip_prefix("0x") {
            return u64::from_str_radix(h, 16).map_err(|_| Error::Parse(format!("浮点 {lit}")));
        }
        let v: f64 = lit.parse().map_err(|_| Error::Parse(format!("浮点 {lit}")))?;
        #[allow(clippy::cast_possible_truncation, reason = "float 常量本来就是 f32 精度")]
        Ok(if single { u64::from((v as f32).to_bits()) } else { v.to_bits() })
    }

    /// MLIR 字符串的转义（`\00` 两位十六进制、`\\`、`\"`）⇒ 字节。
    fn bytes(lit: &str) -> Vec<u8> {
        let b = lit.as_bytes();
        let mut out = Vec::new();
        let mut i = 0;
        while i < b.len() {
            if b[i] == b'\\' && i + 2 < b.len() + 1 && b.get(i + 1).is_some_and(u8::is_ascii_hexdigit) && b.get(i + 2).is_some_and(u8::is_ascii_hexdigit) {
                out.push(u8::from_str_radix(&lit[i + 1..i + 3], 16).unwrap_or(0));
                i += 3;
            } else if b[i] == b'\\' && i + 1 < b.len() {
                out.push(match b[i + 1] {
                    b'n' => b'\n',
                    b't' => b'\t',
                    c => c,
                });
                i += 2;
            } else {
                out.push(b[i]);
                i += 1;
            }
        }
        out
    }

    /// `dense<…>` 的整数列表（switch 的 case 值）。
    fn dense_ints(a: &Attribute<'_>) -> Result<Vec<i128>, Error> {
        let Attribute::Builtin { body, .. } = a else { return Ok(Vec::new()) };
        let inner = body.trim().trim_start_matches('<').trim_end_matches('>').trim().trim_start_matches('[').trim_end_matches(']');
        inner.split(',').map(str::trim).filter(|s| !s.is_empty()).map(|s| s.parse().map_err(|_| Error::Parse(format!("dense 元素 {s}")))).collect()
    }

    /// `dense<…> : tensor<…>` ⇒ 聚合常量（单值 = 每个元素都是它）。
    fn dense(&mut self, body: &str, ty: Ty) -> Result<Const, Error> {
        let inner = body.trim().trim_start_matches('<').trim_end_matches('>').trim();
        let flat: Vec<&str> = inner.split(['[', ']', ',']).map(str::trim).filter(|s| !s.is_empty()).collect();
        let mut leaves = Vec::new();
        self.leaves(ty, &mut leaves);
        let elem = |s: &str, t: Ty, me: &Self| -> Result<Const, Error> {
            match me.types.kind(t) {
                Kind::Float => Ok(Const::Float(Self::float(s, true)?)),
                Kind::Double => Ok(Const::Float(Self::float(s, false)?)),
                _ => {
                    let v: i128 = match s {
                        "true" => 1,
                        "false" => 0,
                        s if s.starts_with("0x") => i128::from_str_radix(&s[2..], 16).map_err(|_| Error::Parse(format!("dense 元素 {s}")))?,
                        s => s.parse().map_err(|_| Error::Parse(format!("dense 元素 {s}")))?,
                    };
                    Ok(Const::Int(Self::mask(v, me.types.bits(t).unwrap_or(64))))
                }
            }
        };
        // `dense<"0x…">`：元素按各自宽度（字节取整）小端排成的十六进制块；只有一个元素宽就是 splat
        if let [blob] = flat.as_slice()
            && let Some(hex) = blob.strip_prefix("\"0x").and_then(|h| h.strip_suffix('"'))
        {
            let bytes: Vec<u8> = (0..hex.len() / 2).map(|i| u8::from_str_radix(&hex[2 * i..2 * i + 2], 16)).collect::<Result<_, _>>().map_err(|_| Error::Parse(String::from("dense 十六进制块")))?;
            let width = |t: Ty| self.types.bits(t).unwrap_or(64).div_ceil(8) as usize;
            let splat = leaves.first().is_some_and(|&t| bytes.len() == width(t)) && leaves.len() > 1;
            let mut at = 0;
            let mut consts = Vec::new();
            for &t in &leaves {
                let n = width(t);
                let chunk = bytes.get(at..at + n).ok_or_else(|| Error::Parse(String::from("dense 十六进制块不够长")))?;
                if !splat {
                    at += n;
                }
                let v = chunk.iter().rev().fold(0u128, |acc, &b| acc << 8 | u128::from(b));
                consts.push(match self.types.kind(t) {
                    Kind::Float | Kind::Double => Const::Float(u64::try_from(v).unwrap_or(0)),
                    _ => Const::Int(Self::mask(i128::try_from(v).unwrap_or(0), self.types.bits(t).unwrap_or(64))),
                });
            }
            return Ok(self.rebuild(ty, &mut consts.into_iter()));
        }
        let consts = if flat.len() == 1 {
            leaves.iter().map(|&t| elem(flat[0], t, self)).collect::<Result<Vec<_>, _>>()?
        } else {
            flat.iter().zip(&leaves).map(|(s, &t)| elem(s, t, self)).collect::<Result<Vec<_>, _>>()?
        };
        Ok(self.rebuild(ty, &mut consts.into_iter()))
    }

    /// 聚合类型的叶子类型（深度优先）。
    fn leaves(&self, ty: Ty, out: &mut Vec<Ty>) {
        match self.types.kind(ty).clone() {
            Kind::Array(n, e) => (0..n).for_each(|_| self.leaves(e, out)),
            Kind::Vector(n, e) => (0..n).for_each(|_| self.leaves(e, out)),
            Kind::Struct(fields, _) => fields.into_iter().for_each(|f| self.leaves(f, out)),
            _ => out.push(ty),
        }
    }

    fn rebuild(&self, ty: Ty, it: &mut impl Iterator<Item = Const>) -> Const {
        match self.types.kind(ty).clone() {
            Kind::Array(n, e) => Const::Agg((0..n).map(|_| self.rebuild(e, it)).collect()),
            Kind::Vector(n, e) => Const::Agg((0..n).map(|_| self.rebuild(e, it)).collect()),
            Kind::Struct(fields, _) => Const::Agg(fields.into_iter().map(|f| self.rebuild(f, it)).collect()),
            _ => it.next().unwrap_or(Const::Zero),
        }
    }

    fn global(&mut self, op: &Operation<'_>, reg: &Registry<'_>) -> Result<(), Error> {
        let g: llvm::GlobalOp<'_> = op.to_op().map_err(|e| Error::Op { op: String::from("llvm.mlir.global"), why: e.0 })?;
        let name = String::from(g.sym_name.lit().unwrap_or_default());
        // llvm.used / llvm.compiler.used / llvm.global_ctors 一类（appending）：只给优化器 / 链接器看，⛔ 不出数据
        if name.starts_with("llvm.") {
            return Ok(());
        }
        let ty = self.ty(g.global_type.ty().ok_or_else(|| Error::Parse(format!("{name}：没有 global_type")))?)?;
        let linkage = Self::linkage(Some(&g.linkage));
        let init = match (&g.value, g.initializer.blocks.is_empty()) {
            (Some(v), _) => Some(self.constant(v, ty)?),
            (None, false) => Some(self.initializer(&g.initializer, reg)?),
            (None, true) if linkage == Linkage::Common => Some(Const::Zero),
            (None, true) => None,
        };
        self.globals.push(Global {
            name,
            linkage,
            hidden: matches!(g.visibility_, Some(llvm::Visibility::Hidden)),
            ty,
            init,
            constant: g.constant,
            align: g.alignment.as_ref().and_then(Attr::i64).and_then(|v| u64::try_from(v).ok()),
            section: g.section.as_ref().and_then(Attr::lit).map(String::from),
            thread_local: g.thread_local_,
        });
        Ok(())
    }

    fn alias(&mut self, op: &Operation<'_>, reg: &Registry<'_>) -> Result<(), Error> {
        let a: llvm::AliasOp<'_> = op.to_op().map_err(|e| Error::Op { op: String::from("llvm.mlir.alias"), why: e.0 })?;
        let target = self.initializer(&a.initializer, reg)?;
        self.aliases.push(Alias {
            name: String::from(a.sym_name.lit().unwrap_or_default()),
            linkage: Self::linkage(Some(&a.linkage)),
            hidden: matches!(a.visibility_, Some(llvm::Visibility::Hidden)),
            target,
        });
        Ok(())
    }

    /// 初值区域：常量、`addressof`、`insertvalue`、常量下标的 `getelementptr`、指针 / 整数互转 … 折成一个常量。
    fn initializer(&mut self, region: &Region<'_>, reg: &Registry<'_>) -> Result<Const, Error> {
        let (blocks, vals) = self.body(region, reg)?;
        let mut env: HashMap<ValId, Const> = HashMap::new();
        for inst in blocks.iter().flat_map(|b| &b.insts) {
            let get = |v: &ValId| env.get(v).cloned().ok_or_else(|| Error::Parse(String::from("初值里用了不是常量的值")));
            let c = match &inst.op {
                Op::Const(c) => c.clone(),
                Op::Ret(Some(v)) => return get(v),
                Op::Cast(_, v) | Op::Freeze(v) => get(v)?,
                Op::InsertValue(agg, v, pos) => {
                    let ty = vals[agg.0 as usize];
                    let mut base = get(agg)?;
                    let v = get(v)?;
                    self.insert(&mut base, ty, pos, v);
                    base
                }
                Op::Gep { src, base, indices } => {
                    let Const::Global(name, off) = get(base)? else { return Err(Error::Parse(String::from("初值里的 getelementptr 只认全局地址"))) };
                    let mut off = off;
                    let mut ty = *src;
                    for (k, i) in indices.iter().enumerate() {
                        let Index::Const(i) = i else { return Err(Error::Parse(String::from("初值里的 getelementptr 下标要是常数"))) };
                        if k == 0 {
                            off += i * i64::try_from(self.types.size(ty)).unwrap_or(0);
                        } else {
                            let (e, o) = self.types.element(ty, u64::try_from(*i).unwrap_or(0)).ok_or_else(|| Error::Parse(String::from("getelementptr 下标越界")))?;
                            off += i64::try_from(o).unwrap_or(0);
                            ty = e;
                        }
                    }
                    Const::Global(name, off)
                }
                Op::Bin(k, a, c) => match (get(a)?, get(c)?) {
                    (Const::Global(n, o), Const::Int(d)) if *k == BinOp::Add => Const::Global(n, o + i64::try_from(d).unwrap_or(0)),
                    (Const::Int(x), Const::Int(y)) => Const::Int(match k {
                        BinOp::Add => x.wrapping_add(y),
                        BinOp::Sub => x.wrapping_sub(y),
                        BinOp::Mul => x.wrapping_mul(y),
                        BinOp::And => x & y,
                        BinOp::Or => x | y,
                        BinOp::Xor => x ^ y,
                        _ => return Err(Error::Parse(format!("初值里的 {k:?} 不支持"))),
                    }),
                    _ => return Err(Error::Parse(format!("初值里的 {k:?} 不支持"))),
                },
                op => return Err(Error::Parse(format!("初值里不支持 {op:?}"))),
            };
            if let Some(r) = inst.result {
                env.insert(r, c);
            }
        }
        Err(Error::Parse(String::from("初值区域没有 llvm.return")))
    }

    /// 在聚合常量 `base`（类型 `ty`）的 `pos` 处放 `v`（`Zero` / `Undef` 先展开成各元素）。
    fn insert(&self, base: &mut Const, ty: Ty, pos: &[u32], v: Const) {
        let Some((&first, rest)) = pos.split_first() else {
            *base = v;
            return;
        };
        if !matches!(base, Const::Agg(_)) {
            let n = match self.types.kind(ty) {
                Kind::Array(n, _) => usize::try_from(*n).unwrap_or(0),
                Kind::Vector(n, _) => *n as usize,
                Kind::Struct(f, _) => f.len(),
                _ => 0,
            };
            let fill = if matches!(base, Const::Undef) { Const::Undef } else { Const::Zero };
            *base = Const::Agg(vec![fill; n]);
        }
        if let (Const::Agg(items), Some((ety, _))) = (base, self.types.element(ty, u64::from(first)))
            && let Some(slot) = items.get_mut(first as usize) {
                self.insert(slot, ety, rest, v);
            }
    }
}
