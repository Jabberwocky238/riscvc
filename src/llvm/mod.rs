//! MLIR 的 `llvm` 方言（mlirformat 插件）：op 结构体由 `mlirformat tblgen` 生成，这里是手写部分 ——
//! 类型 `!llvm.ptr` / `!llvm.struct<…>` / `!llvm.array<…>` / `!llvm.func<…>` / `!llvm.void` 与关键字属性
//! （`#llvm.linkage<internal>` …）的参数钩子，以及从参数里取结构的读法（⛔ 下游不解析字符串）。
//!
//! ```text
//! ops.gen.rs   LLVMOps.td           80 个 op（61 个认自定义形式）   ← 注册：`Llvm::opt()`
//! intr.gen.rs  LLVMIntrinsicOps.td  204 个 `llvm.intr.*`          ← 只用来类型化转换（输入是通用形式，不必注册）
//! ```
//!
//! 重生成（LLVM 22.1.8 的 .td；mlirformat ≥ 0.2.2 内置 TableGen，不要 llvm-tblgen）：
//! ```text
//! mlirformat tblgen $LLVM/mlir/include/mlir/Dialect/LLVMIR/LLVMOps.td -I $LLVM/mlir/include \
//!     --params llvm=crate::llvm::Llvm::params -o src/llvm   # 改名 ops.gen.rs
//! （LLVMIntrinsicOps.td 同一条命令，改名 intr.gen.rs）
//! ```
#[path = "intr.gen.rs"]
pub mod intr;
#[path = "ops.gen.rs"]
mod ops;

pub use ops::*;

use mlirformat::{Attribute, Extended, MlirOpt, Parser, R, Str, SymKind, Type};

/// 一个 `!llvm.*` 类型，参数已结构化。
#[derive(Clone, Debug, PartialEq)]
pub enum LlvmType<'t, 'a> {
    Void,
    Ptr,
    /// 字段、是否紧排、名字（具名结构体；`opaque` 时字段为空、`opaque` 为真）。
    Struct { fields: Vec<&'t Type<'a>>, packed: bool, name: Option<&'t str>, opaque: bool },
    Array(u64, &'t Type<'a>),
    /// 返回、参数、可变参数。
    Func(&'t Type<'a>, Vec<&'t Type<'a>>, bool),
}

impl Llvm<'_> {
    /// 参数钩子（`#[mlir::dialect(params = …)]`）：读 `!llvm.*` 类型体与关键字属性体。⛔ 认不出的留原文（`None`）。
    pub fn params<'a>(kind: SymKind, name: &str, p: &mut Parser<'a, '_>) -> Option<R<Vec<Attribute<'a>>>> {
        match kind {
            SymKind::Type if matches!(name, "llvm.ptr" | "llvm.struct" | "llvm.array" | "llvm.func" | "llvm.void") => Some(Self::type_params(name, p)),
            SymKind::Attr if matches!(name, "llvm.linkage" | "llvm.cconv" | "llvm.tailcallkind") => Some(Self::keyword(p)),
            _ => None,
        }
    }

    /// 读通用形式（全部 op 都结构化）与 `llvm` 方言的自定义形式。
    #[must_use]
    pub fn opt() -> MlirOpt {
        let mut opt = MlirOpt::upstream();
        opt.register::<Llvm>();
        opt
    }

    fn keyword<'a>(p: &mut Parser<'a, '_>) -> R<Vec<Attribute<'a>>> {
        p.expect("<")?;
        let k = p.ident()?;
        p.expect(">")?;
        Ok(vec![Self::word(k)])
    }

    fn word(s: &str) -> Attribute<'_> {
        Attribute::Str { lit: Str::Borrowed(s), ty: None }
    }

    fn int<'a>(n: u64) -> Attribute<'a> {
        Attribute::Int { lit: Str::Owned(n.to_string()), ty: None }
    }

    fn ext<'a>(name: &'static str, params: Vec<Attribute<'a>>) -> Type<'a> {
        Type::Extended(Extended { name: Str::Borrowed(name), body: None, params })
    }

    /// 类型体（位置在 `<` 上；没有 `<` 的 `!llvm.ptr` / `!llvm.void` 不带参数）。参数的约定：
    /// - `ptr`：`[地址空间]`（缺省没有）
    /// - `struct`：`[字段数组, 紧排, 名字?]`；具名不透明：`["名字", "opaque"]`
    /// - `array`：`[个数, 元素]`
    /// - `func`：`[返回, 参数数组, 可变参数]`
    fn type_params<'a>(name: &str, p: &mut Parser<'a, '_>) -> R<Vec<Attribute<'a>>> {
        if !p.eat("<") {
            return Ok(Vec::new());
        }
        let params = match name {
            "llvm.ptr" => vec![Self::int(p.number()?)],
            "llvm.array" => {
                let n = p.number()?;
                p.expect("x")?;
                vec![Self::int(n), Attribute::Type(Self::inner(p)?)]
            }
            "llvm.func" => {
                let ret = Self::inner(p)?;
                p.expect("(")?;
                let (mut args, mut varargs) = (Vec::new(), false);
                if !p.eat(")") {
                    loop {
                        if p.eat("...") {
                            varargs = true;
                        } else {
                            args.push(Attribute::Type(Self::inner(p)?));
                        }
                        if p.eat(")") {
                            break;
                        }
                        p.expect(",")?;
                    }
                }
                vec![Attribute::Type(ret), Attribute::Array(args), Attribute::Bool(varargs)]
            }
            "llvm.struct" => {
                let name = if p.at(b'"') {
                    let n = p.string()?;
                    if !p.eat(",") {
                        p.expect(">")?;
                        return Ok(vec![Self::word(n)]);
                    }
                    Some(n)
                } else {
                    None
                };
                if p.eat_kw("opaque") {
                    p.expect(">")?;
                    return Ok(vec![Self::word(name.unwrap_or("")), Self::word("opaque")]);
                }
                let packed = p.eat_kw("packed");
                p.expect("(")?;
                let mut fields = Vec::new();
                if !p.eat(")") {
                    loop {
                        fields.push(Attribute::Type(Self::inner(p)?));
                        if p.eat(")") {
                            break;
                        }
                        p.expect(",")?;
                    }
                }
                let mut v = vec![Attribute::Array(fields), Attribute::Bool(packed)];
                v.extend(name.map(Self::word));
                v
            }
            _ => Vec::new(),
        };
        p.expect(">")?;
        Ok(params)
    }

    /// `!llvm.*` 类型体里的类型：`ptr` / `struct<…>` / `array<…>` / `func<…>` / `void` 不带 `!llvm.` 前缀，其余是内建类型。
    fn inner<'a>(p: &mut Parser<'a, '_>) -> R<Type<'a>> {
        for (kw, name) in [("ptr", "llvm.ptr"), ("struct", "llvm.struct"), ("array", "llvm.array"), ("func", "llvm.func"), ("void", "llvm.void")] {
            if p.eat_kw(kw) {
                let params = Self::type_params(name, p)?;
                return Ok(Self::ext(name, params));
            }
        }
        p.ty()
    }

    /// 结构化的 `!llvm.*` 类型（不是 ⇒ `None`）。
    #[must_use]
    pub fn llvm_type<'t, 'a>(ty: &'t Type<'a>) -> Option<LlvmType<'t, 'a>> {
        let Type::Extended(e) = ty else { return None };
        let types = |a: &'t Attribute<'a>| -> Vec<&'t Type<'a>> {
            match a {
                Attribute::Array(v) => v.iter().filter_map(|x| if let Attribute::Type(t) = x { Some(t) } else { None }).collect(),
                _ => Vec::new(),
            }
        };
        Some(match (&*e.name, e.params.as_slice()) {
            ("llvm.void", _) => LlvmType::Void,
            ("llvm.ptr", _) => LlvmType::Ptr,
            ("llvm.array", [n, Attribute::Type(t)]) => LlvmType::Array(n.int().ok().and_then(|n| u64::try_from(n).ok())?, t),
            ("llvm.func", [Attribute::Type(r), args, Attribute::Bool(v)]) => LlvmType::Func(r, types(args), *v),
            ("llvm.struct", [Attribute::Str { lit, .. }, Attribute::Str { lit: o, .. }]) if o == "opaque" => LlvmType::Struct { fields: Vec::new(), packed: false, name: Some(lit), opaque: true },
            ("llvm.struct", [Attribute::Str { lit, .. }]) => LlvmType::Struct { fields: Vec::new(), packed: false, name: Some(lit), opaque: false },
            ("llvm.struct", [fields, Attribute::Bool(packed), rest @ ..]) => LlvmType::Struct {
                fields: types(fields),
                packed: *packed,
                name: rest.first().and_then(|a| if let Attribute::Str { lit, .. } = a { Some(&**lit) } else { None }),
                opaque: false,
            },
            _ => return None,
        })
    }

    /// 关键字属性（`#llvm.linkage<internal>` ⇒ `internal`）。
    #[must_use]
    pub fn keyword_of<'t>(attr: &'t Attribute<'_>) -> Option<&'t str> {
        match attr {
            Attribute::Extended { ext, .. } => match ext.params.as_slice() {
                [Attribute::Str { lit, .. }] => Some(lit),
                _ => None,
            },
            _ => None,
        }
    }
}
