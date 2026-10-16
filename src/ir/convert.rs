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
        let mut out = Vec::with_capacity(self.op.ty.results.len());
        for r in &self.op.results {
            let &(first, n) = self.body.names.get(&*r.name).ok_or_else(|| Error::Parse(format!("没定义的结果 %{}", r.name)))?;
            out.extend((first.0..first.0 + n).map(ValId));
        }
        Ok(out)
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

    /// 内置 `llvm` 方言：一条 op ⇒ 一条指令（几个 intrinsic 用已有指令展开成几条，见 [`Self::expand`]）。
    pub(crate) fn llvm(&mut self) -> Result<(), Error> {
        let result = match self.results()?[..] {
            [] => None,
            [r] => Some(r),
            _ => return Err(Error::Parse(String::from("llvm 方言的 op 至多一个结果"))),
        };
        if let Some(r) = result
            && self.expand(r)?
        {
            return Ok(());
        }
        // `memcpy.inline` / `memset.inline`：长度在属性 `len` 上 ⇒ 补成第三个实参（同 memcpy / memset）
        if matches!(&*self.op.name, "llvm.intr.memcpy.inline" | "llvm.intr.memset.inline") {
            let len = self.attr("len").and_then(Attr::i64).ok_or_else(|| Error::Parse(String::from("没有 len")))?;
            let mut args = self.operands()?;
            args.push(self.constant(Types::I64, Const::Int(u128::from(len.cast_unsigned()))));
            let i = if self.op.name.starts_with("llvm.intr.memcpy") { Intr::Memcpy } else { Intr::Memset };
            self.emit(None, Op::Intr(i, args));
            return Ok(());
        }
        let o = self.module.op(self.op, self.body, result)?;
        self.emit(result, o);
        Ok(())
    }

    /// 常量（`ty` 的位型）。
    fn constant(&mut self, ty: Ty, c: Const) -> ValId {
        let v = self.temp(ty);
        self.emit(Some(v), Op::Const(c));
        v
    }

    /// 出一条带结果的指令，回结果。
    fn value(&mut self, ty: Ty, op: Op) -> ValId {
        let v = self.temp(ty);
        self.emit(Some(v), op);
        v
    }

    /// 用已有指令展开的 intrinsic ⇒ 出指令、回 true；别的回 false（⛔ 代码生成不用认它们）：
    ///
    /// | intrinsic | 展开 |
    /// | --- | --- |
    /// | `scmp` / `ucmp` | `zext(a > b) - zext(a < b)` |
    /// | `fptosi.sat` / `fptoui.sat`（源 float / double） | NaN ⇒ 0，越界 ⇒ 饱和值，其余 `fptosi` / `fptoui` |
    /// | `canonicalize`（float） | `minnum(x, x)`（同 llc：`fmin.s x, x, x`） |
    fn expand(&mut self, r: ValId) -> Result<bool, Error> {
        let Some(base) = intrinsic_base(self.op) else { return Ok(false) };
        let rt = self.type_of(r);
        match base {
            "scmp" | "ucmp" => {
                let [a, b] = self.operands()?[..] else { return Err(Error::Parse(format!("{base} 要两个操作数"))) };
                let (gt, lt) = if base == "scmp" { (IPred::Sgt, IPred::Slt) } else { (IPred::Ugt, IPred::Ult) };
                let (g, l) = (self.value(Types::I1, Op::ICmp(gt, a, b)), self.value(Types::I1, Op::ICmp(lt, a, b)));
                let (g, l) = (self.value(rt, Op::Cast(CastOp::ZExt, g)), self.value(rt, Op::Cast(CastOp::ZExt, l)));
                self.emit(Some(r), Op::Bin(BinOp::Sub, g, l));
            }
            "fptosi.sat" | "fptoui.sat" => {
                let [x] = self.operands()?[..] else { return Err(Error::Parse(format!("{base} 要一个操作数"))) };
                let (Some(w), xt) = (self.types().bits(rt), self.type_of(x)) else { return Err(Error::Parse(format!("{base} 的结果不是整数"))) };
                let single = match self.types().kind(xt) {
                    Kind::Float => true,
                    Kind::Double => false,
                    _ => return Ok(false),
                };
                let signed = base == "fptosi.sat";
                // 界都是 2 的幂（float / double 都精确）：signed [-2^(w-1), 2^(w-1))，unsigned [0, 2^w)
                let (lo, hi) = if signed { (-(2f64.powi(w.cast_signed() - 1)), 2f64.powi(w.cast_signed() - 1)) } else { (0.0, 2f64.powi(w.cast_signed())) };
                let bits = |v: f64| {
                    #[allow(clippy::cast_possible_truncation, reason = "2 的幂，float 精确")]
                    Const::Float(if single { u64::from((v as f32).to_bits()) } else { v.to_bits() })
                };
                let mask = if w >= 128 { u128::MAX } else { (1u128 << w) - 1 };
                let (min, max) = if signed { (Const::Int((mask >> 1) + 1), Const::Int(mask >> 1)) } else { (Const::Int(0), Const::Int(mask)) };
                let (flo, fhi) = (self.constant(xt, bits(lo)), self.constant(xt, bits(hi)));
                let (cmin, cmax, zero) = (self.constant(rt, min), self.constant(rt, max), self.constant(rt, Const::Int(0)));
                let t = self.value(rt, Op::Cast(if signed { CastOp::FpToSi } else { CastOp::FpToUi }, x));
                let under = self.value(Types::I1, Op::FCmp(FPred::Olt, x, flo));
                let t = self.value(rt, Op::Select(under, cmin, t));
                let over = self.value(Types::I1, Op::FCmp(FPred::Oge, x, fhi));
                let t = self.value(rt, Op::Select(over, cmax, t));
                let nan = self.value(Types::I1, Op::FCmp(FPred::Uno, x, x));
                self.emit(Some(r), Op::Select(nan, zero, t));
            }
            "canonicalize" if self.types().kind(rt) == &Kind::Float => {
                let [x] = self.operands()?[..] else { return Err(Error::Parse(format!("{base} 要一个操作数"))) };
                self.emit(Some(r), Op::Intr(Intr::MinNum, vec![x, x]));
            }
            _ => return Ok(false),
        }
        Ok(true)
    }
}

/// intrinsic 的基名：`llvm.intr.scmp` ⇒ `scmp`；`llvm.call_intrinsic` 的 `intrin = "llvm.fptosi.sat.i32.f32"`
/// ⇒ `fptosi.sat`（去掉类型后缀）。别的 op ⇒ `None`。
fn intrinsic_base<'o>(op: &'o Operation<'_>) -> Option<&'o str> {
    if let Some(n) = op.name.strip_prefix("llvm.intr.") {
        return Some(n);
    }
    if op.name != "llvm.call_intrinsic" {
        return None;
    }
    let mut n = prop(op, "intrin")?.lit()?.strip_prefix("llvm.")?;
    // 类型后缀：i32、f64、bf16、p0、v4i32、nxv2f32 …
    let suffix = |s: &str| {
        let t = s.trim_start_matches("nx").trim_start_matches('v').trim_start_matches(|c: char| c.is_ascii_digit());
        ["i", "f", "bf", "p"].iter().any(|k| t.strip_prefix(k).is_some_and(|d| !d.is_empty() && d.bytes().all(|b| b.is_ascii_digit())))
    };
    while let Some((head, last)) = n.rsplit_once('.')
        && suffix(last)
    {
        n = head;
    }
    Some(n)
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

/// 单位属性（`constant`、`thread_local_`：只有名字没有值；`prop` 分不出没有和有）在不在。
fn flag(op: &Operation<'_>, name: &str) -> bool {
    let set = |a: &NamedAttr<'_>| a.name == name && !matches!(a.value, Some(Attribute::Bool(false)));
    matches!(&op.properties, Some(Attribute::Dict(v)) if v.iter().any(set)) || op.attributes.iter().any(set)
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

/// 基名（[`intrinsic_base`]）⇒ 代码生成认得的 intrinsic。
fn intrinsic(name: &str, op: &Operation<'_>, float: bool) -> Option<Intr> {
    let libm = |base: &str| Intr::Libm(if float { format!("{base}f") } else { String::from(base) });
    Some(match name {
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
            libm(name)
        }
        // compiler-rt
        "powi" => Intr::Libm(String::from(if float { "__powisf2" } else { "__powidf2" })),
        n if n.starts_with("lifetime.") || n.starts_with("invariant.") || n.starts_with("dbg.") || n.starts_with("experimental.noalias.scope.decl") || n == "assume" || n == "prefetch" || n == "donothing" || n == "sideeffect" => Intr::Nop,
        _ => return None,
    })
}

/// 一个函数体的名字表（MLIR 的 SSA 名 ⇒ `ValId`，块名 ⇒ `BlockId`）。
/// 一个名字对应连续的几个值（`%0:2` 的两个结果；`%0#1` 是第二个），⛔ 查的时候不拼字符串。
#[derive(Default)]
struct Body {
    vals: Vec<Ty>,
    names: HashMap<String, (ValId, u32)>,
    blocks: HashMap<String, BlockId>,
}

impl Body {
    /// 定义名字 `name` 的一组值（各自的类型），回第一个。
    fn define(&mut self, name: &str, tys: impl IntoIterator<Item = Ty>) -> ValId {
        let first = ValId(u32::try_from(self.vals.len()).expect("值太多"));
        self.vals.extend(tys);
        let n = u32::try_from(self.vals.len()).expect("值太多") - first.0;
        self.names.insert(String::from(name), (first, n));
        first
    }

    fn get(&self, v: &Value<'_>) -> Result<ValId, Error> {
        let i = v.index.unwrap_or(0);
        self.names
            .get(&*v.name)
            .filter(|&&(_, n)| i < n)
            .map(|&(first, _)| ValId(first.0 + i))
            .ok_or_else(|| Error::Parse(format!("没定义的值 %{}{}", v.name, v.index.map_or_else(String::new, |i| format!("#{i}")))))
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
                // 改调用约定的：⛔ 悄悄当普通参数（`nest` 在 RISC-V 上走 t2）
                "llvm.nest" | "llvm.inalloca" | "llvm.preallocated" | "llvm.swiftself" | "llvm.swifterror" | "llvm.swiftasync" => {
                    return Err(Error::Parse(format!("参数属性 `{}` 不支持", a.name)));
                }
                _ => {}
            }
        }
        Ok(out)
    }

    /// `visibility_ = 1`（hidden）。
    fn hidden(op: &Operation<'_>) -> bool {
        prop(op, "visibility_").and_then(Attr::i64) == Some(1)
    }

    /// ⚠ 直接读属性、借用函数体，⛔ `to_op::<LLVMFuncOp>()`：它经 serde 把整个函数体深拷贝一遍（大模块里占了转换时间的大头）。
    fn function(&mut self, op: &Operation<'_>, reg: &Registry<'_>) -> Result<(), Error> {
        let name = String::from(prop(op, "sym_name").and_then(Attr::lit).ok_or_else(|| Error::Parse(String::from("llvm.func 没有名字")))?);
        // 改函数怎么出代码的属性：⛔ 悄悄当普通函数（`interrupt` 要存全部寄存器、`mret` 返回；`naked` 没有序言 / 尾声）
        if let Some(Attribute::Array(attrs)) = prop(op, "passthrough") {
            for a in attrs {
                let key = match a {
                    Attribute::Array(kv) => kv.first().and_then(Attr::lit),
                    a => a.lit(),
                };
                if let Some(k @ ("interrupt" | "naked")) = key {
                    return Err(Error::Op { op: String::from("llvm.func"), why: format!("{name}：函数属性 `{k}` 不支持") });
                }
            }
        }
        let fty = self.ty(prop(op, "function_type").and_then(Attr::ty).ok_or_else(|| Error::Parse(format!("{name}：没有 function_type")))?)?;
        let Kind::Func(ret, params, varargs) = self.types.kind(fty).clone() else { return Err(Error::Parse(format!("{name}：function_type 不是函数类型"))) };
        let params = params.iter().enumerate().map(|(i, &ty)| Ok(Param { ty, attrs: self.arg_attrs(prop(op, "arg_attrs"), i)? })).collect::<Result<Vec<_>, Error>>()?;
        let mut func = Function {
            hidden: Self::hidden(op),
            linkage: Self::linkage(prop(op, "linkage")),
            ret,
            ret_attrs: self.arg_attrs(prop(op, "res_attrs"), 0)?,
            params,
            varargs,
            section: prop(op, "section").and_then(Attr::lit).map(String::from),
            align: prop(op, "alignment").and_then(Attr::i64).and_then(|v| u64::try_from(v).ok()),
            blocks: Vec::new(),
            vals: Vec::new(),
            name,
        };
        if let Some(body) = op.regions.first().filter(|r| !r.blocks.is_empty()) {
            let (blocks, vals) = self.body(body, reg).map_err(|e| match e {
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
            let mut ps = Vec::with_capacity(blk.args.len());
            for a in &blk.args {
                let t = self.ty(&a.ty)?;
                ps.push(b.define(&a.name, [t]));
            }
            params.push(ps);
            for op in &blk.ops {
                // `%r:n` 占 n 个结果类型
                let mut tys = op.ty.results.iter();
                for r in &op.results {
                    let n = r.count.unwrap_or(1) as usize;
                    let ts = tys.by_ref().take(n).map(|t| self.ty(t)).collect::<Result<Vec<_>, _>>()?;
                    if ts.len() != n {
                        return Err(Error::Op { op: String::from(&*op.name), why: String::from("结果个数与结果类型对不上") });
                    }
                    b.define(&r.name, ts);
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
        // 第 i 个操作数（⛔ 不预先收成 Vec；缺了报错而不是越界）
        let arg = |i: usize| op.operands.get(i).ok_or_else(|| Error::Parse(format!("少了第 {} 个操作数", i + 1))).and_then(|v| b.get(v));
        let typed = |e: mlirformat::Error| Error::Parse(e.0);
        let res_ty = result.map(|r| b.vals[r.0 as usize]);
        if let Some(k) = binop(name) {
            return Ok(Op::Bin(k, arg(0)?, arg(1)?));
        }
        if let Some(k) = castop(name) {
            return Ok(Op::Cast(k, arg(0)?));
        }
        let float = op.ty.inputs.first().is_some_and(|t| matches!(t, Type::Float(FloatKind::F32)));
        // `llvm.call_intrinsic`（没有专门 op 的 intrinsic）按基名查同一张表
        if let Some(i) = intrinsic_base(op).and_then(|base| intrinsic(base, op, float)) {
            return Ok(Op::Intr(i, b.all(&op.operands)?));
        }
        Ok(match name {
            "llvm.mlir.constant" => Op::Const(self.constant(prop(op, "value").ok_or_else(|| Error::Parse(String::from("没有 value")))?, res_ty.unwrap_or(Types::I32))?),
            "llvm.mlir.zero" => Op::Const(Const::Zero),
            "llvm.mlir.undef" | "llvm.mlir.poison" => Op::Const(Const::Undef),
            "llvm.mlir.addressof" => Op::Const(Const::Global(prop(op, "global_name").and_then(Attr::symbol).ok_or_else(|| Error::Parse(String::from("没有 global_name")))?, 0)),
            "llvm.return" => Op::Ret(op.operands.first().map(|v| b.get(v)).transpose()?),
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
            "llvm.fneg" => Op::FNeg(arg(0)?),
            "llvm.icmp" => Op::ICmp(Self::pred(op, [IPred::Eq, IPred::Ne, IPred::Slt, IPred::Sle, IPred::Sgt, IPred::Sge, IPred::Ult, IPred::Ule, IPred::Ugt, IPred::Uge])?, arg(0)?, arg(1)?),
            "llvm.fcmp" => Op::FCmp(
                Self::pred(op, [FPred::False, FPred::Oeq, FPred::Ogt, FPred::Oge, FPred::Olt, FPred::Ole, FPred::One, FPred::Ord, FPred::Ueq, FPred::Ugt, FPred::Uge, FPred::Ult, FPred::Ule, FPred::Une, FPred::Uno, FPred::True])?,
                arg(0)?,
                arg(1)?,
            ),
            "llvm.alloca" => {
                let o: llvm::AllocaOp<'_> = op.to_op().map_err(typed)?;
                let ty = self.ty(o.elem_type.ty().ok_or_else(|| Error::Parse(String::from("没有 elem_type")))?)?;
                Op::Alloca { ty, count: arg(0)?, align: Self::uint(op, "alignment").max(1) }
            }
            "llvm.load" => Op::Load { ptr: arg(0)?, align: Self::uint(op, "alignment"), volatile: prop(op, "volatile_").is_some(), atomic: Self::order(op, "ordering") },
            "llvm.store" => Op::Store { val: arg(0)?, ptr: arg(1)?, align: Self::uint(op, "alignment"), volatile: prop(op, "volatile_").is_some(), atomic: Self::order(op, "ordering") },
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
            "llvm.select" => Op::Select(arg(0)?, arg(1)?, arg(2)?),
            "llvm.freeze" => Op::Freeze(arg(0)?),
            "llvm.extractvalue" => Op::ExtractValue(arg(0)?, Self::position(op)?),
            "llvm.insertvalue" => Op::InsertValue(arg(0)?, arg(1)?, Self::position(op)?),
            "llvm.call" => self.call(op, b)?,
            "llvm.atomicrmw" => {
                const OPS: [RmwOp; 15] = [RmwOp::Xchg, RmwOp::Add, RmwOp::Sub, RmwOp::And, RmwOp::Nand, RmwOp::Or, RmwOp::Xor, RmwOp::Max, RmwOp::Min, RmwOp::UMax, RmwOp::UMin, RmwOp::FAdd, RmwOp::FSub, RmwOp::FMax, RmwOp::FMin];
                let k = usize::try_from(Self::uint(op, "bin_op")).unwrap_or(usize::MAX);
                Op::AtomicRmw(*OPS.get(k).ok_or_else(|| Error::Parse(format!("bin_op {k}")))?, arg(0)?, arg(1)?, Self::order(op, "ordering").unwrap_or(5))
            }
            "llvm.cmpxchg" => Op::CmpXchg(arg(0)?, arg(1)?, arg(2)?, Self::order(op, "success_ordering").unwrap_or(5), Self::order(op, "failure_ordering").unwrap_or(5)),
            "llvm.fence" => Op::Fence,
            "llvm.va_arg" => return Err(Error::Parse(String::from("va_arg 指令还没做（clang 自己展开 va_arg，不会出这条）"))),
            n => return Err(Error::Parse(format!("不支持的 op `{n}`"))),
        })
    }

    /// MLIR 的内存序属性 `attr`（`ordering`、cmpxchg 的 `success_ordering` / `failure_ordering`；not_atomic 0、unordered 1、monotonic 2、acquire 4、release 5、acq_rel 6、seq_cst 7）⇒ C 内存序。
    fn order(op: &Operation<'_>, attr: &str) -> Option<u8> {
        Some(match Self::uint(op, attr) {
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
            None if !operands.is_empty() => Callee::Indirect(operands.remove(0)),
            None => return Err(Error::Parse(String::from("间接调用没有被调用者"))),
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

    /// 按 `bits` 位符号扩展。
    fn signed(v: u128, bits: u32) -> i64 {
        let s = 128 - bits.clamp(1, 128);
        i64::try_from((v << s).cast_signed() >> s).unwrap_or(0)
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
                // 浮点类型上的整数字面量是位型
                match self.types.kind(ty) {
                    Kind::Half | Kind::BFloat => Const::Float(Self::mask(v, 16).try_into().unwrap_or(0)),
                    Kind::Float => Const::Float(Self::mask(v, 32).try_into().unwrap_or(0)),
                    Kind::Double => Const::Float(Self::mask(v, 64).try_into().unwrap_or(0)),
                    _ => Const::Int(Self::mask(v, bits.unwrap_or(64))),
                }
            }
            Attribute::Float { lit, .. } => Const::Float(Self::float(lit, self.types.kind(ty))?),
            Attribute::Str { lit, .. } => Const::Bytes(Self::bytes(lit)),
            Attribute::Builtin { name, body, .. } if name == "dense" => self.dense(body, ty)?,
            Attribute::SymbolRef(_) => Const::Global(a.symbol().unwrap_or_default(), 0),
            _ => return Err(Error::Parse(format!("不支持的常量 {a:?}"))),
        })
    }

    /// 浮点字面量（十进制，或十六进制位型）⇒ `kind` 自己的位型：half / bfloat 16 位、float 32 位、double 64 位。
    fn float(lit: &str, kind: &Kind) -> Result<u64, Error> {
        let lit = lit.trim();
        if let Some(h) = lit.strip_prefix("0x") {
            return u64::from_str_radix(h, 16).map_err(|_| Error::Parse(format!("浮点 {lit}")));
        }
        let v: f64 = lit.parse().map_err(|_| Error::Parse(format!("浮点 {lit}")))?;
        Ok(match kind {
            Kind::Half => Self::narrow(v, 5, 10),
            Kind::BFloat => Self::narrow(v, 8, 7),
            #[allow(clippy::cast_possible_truncation, reason = "float 常量本来就是 f32 精度")]
            Kind::Float => u64::from((v as f32).to_bits()),
            _ => v.to_bits(),
        })
    }

    /// f64 ⇒ `exp` 位指数、`man` 位尾数的 IEEE 格式（half 5 / 10、bfloat 8 / 7）的位型：最近偶数舍入，
    /// 太大 ⇒ ±inf，太小 ⇒ 次正规 / ±0，NaN ⇒ 静默 NaN。⚠ 直接从 f64 舍入（bfloat 经 f32 会舍两次）。
    fn narrow(v: f64, exp: u32, man: u32) -> u64 {
        let b = v.to_bits();
        let sign = (b >> 63) << (exp + man);
        let inf = ((1u64 << exp) - 1) << man;
        if v.is_nan() {
            return sign | inf | 1 << (man - 1);
        }
        if v.is_infinite() {
            return sign | inf;
        }
        let e = i64::try_from((b >> 52) & 0x7ff).unwrap_or(0);
        // f64 的次正规数对这两种格式都小于最小次正规的一半 ⇒ ±0
        if e == 0 {
            return sign;
        }
        let full = (b & ((1 << 52) - 1)) | 1 << 52;
        let bias = (1i64 << (exp - 1)) - 1;
        let te = e - 1023 + bias;
        // 正规：去掉 52 - man 位；次正规（te ≤ 0）：再多去 1 - te 位
        let shift = u32::try_from(i64::from(52 - man) + (1 - te).max(0)).unwrap_or(u32::MAX);
        if shift > 53 {
            return sign;
        }
        let (mut m, rem, half) = (full >> shift, full & ((1 << shift) - 1), 1u64 << (shift - 1));
        if rem > half || (rem == half && m & 1 == 1) {
            m += 1;
        }
        // 正规：指数域 te、隐含位并进去（进位到 2 << man 时指数自然加一）；次正规：m 就是位型（进位到 1 << man 即最小正规数）
        let r = if te > 0 { (u64::try_from(te).unwrap_or(0) << man) + m - (1 << man) } else { m };
        sign | r.min(inf)
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
        // 全零 ⇒ `Zero`，⛔ 按元素展开（`dense<0> : tensor<4294967296xi8>` 展开就是 4G 个叶子）
        let zero = |s: &str| {
            let s = s.trim_matches('"');
            // ⚠ 带负号的不算（`-0.0` 的位型不是零）
            s == "false" || s.strip_prefix("0x").map_or_else(|| s.parse::<f64>().is_ok_and(|v| v == 0.0 && !s.starts_with('-')), |h| h.bytes().all(|b| b == b'0'))
        };
        if flat.iter().all(|s| zero(s)) {
            return Ok(Const::Zero);
        }
        let mut leaves = Vec::new();
        self.leaves(ty, &mut leaves);
        let elem = |s: &str, t: Ty, me: &Self| -> Result<Const, Error> {
            match me.types.kind(t) {
                k @ (Kind::Half | Kind::BFloat | Kind::Float | Kind::Double) => Ok(Const::Float(Self::float(s, k)?)),
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
            // 元素按 store size 排（half 2 字节、i24 3 字节）；⛔ 按位宽：浮点没有位宽
            let width = |t: Ty| usize::try_from(self.types.store_size(t)).unwrap_or(0);
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
                    Kind::Half | Kind::BFloat | Kind::Float | Kind::Double => Const::Float(u64::try_from(v).unwrap_or(0)),
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

    /// ⚠ 同 [`Self::function`]：直接读属性，⛔ `to_op`（`value` 可能是几 MB 的 dense 常量，serde 会整个拷一遍）。
    fn global(&mut self, op: &Operation<'_>, reg: &Registry<'_>) -> Result<(), Error> {
        let name = String::from(prop(op, "sym_name").and_then(Attr::lit).unwrap_or_default());
        // llvm.used / llvm.compiler.used / llvm.global_ctors 一类（appending）：只给优化器 / 链接器看，⛔ 不出数据
        if name.starts_with("llvm.") {
            return Ok(());
        }
        let ty = self.ty(prop(op, "global_type").and_then(Attr::ty).ok_or_else(|| Error::Parse(format!("{name}：没有 global_type")))?)?;
        let linkage = Self::linkage(prop(op, "linkage"));
        let region = op.regions.first().filter(|r| !r.blocks.is_empty());
        let init = match (prop(op, "value"), region) {
            (Some(v), _) => Some(self.constant(v, ty)?),
            (None, Some(r)) => Some(self.initializer(r, reg)?),
            (None, None) if linkage == Linkage::Common => Some(Const::Zero),
            (None, None) => None,
        };
        self.globals.push(Global {
            name,
            linkage,
            hidden: Self::hidden(op),
            ty,
            init,
            constant: flag(op, "constant"),
            align: prop(op, "alignment").and_then(Attr::i64).and_then(|v| u64::try_from(v).ok()),
            section: prop(op, "section").and_then(Attr::lit).map(String::from),
            thread_local: flag(op, "thread_local_"),
        });
        Ok(())
    }

    fn alias(&mut self, op: &Operation<'_>, reg: &Registry<'_>) -> Result<(), Error> {
        let region = op.regions.first().ok_or_else(|| Error::Op { op: String::from("llvm.mlir.alias"), why: String::from("没有初值区域") })?;
        let target = self.initializer(region, reg)?;
        self.aliases.push(Alias {
            name: String::from(prop(op, "sym_name").and_then(Attr::lit).unwrap_or_default()),
            linkage: Self::linkage(prop(op, "linkage")),
            hidden: Self::hidden(op),
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
                        // 动态下标也行，只要它是初值里算出来的常数
                        let i = match i {
                            Index::Const(i) => *i,
                            Index::Dyn(v) => match get(v)? {
                                Const::Int(k) => Self::signed(k, self.types.bits(vals[v.0 as usize]).unwrap_or(64)),
                                _ => return Err(Error::Parse(String::from("初值里的 getelementptr 下标要是常数"))),
                            },
                        };
                        let i = &i;
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
