//! 代码生成的输入：从 MLIR `llvm` 方言（mlirformat 解析的通用形式）转来的内部 IR。
//!
//! 形状贴着 MLIR：块带参数（⛔ 没有 phi，前驱在跳转处传实参）、常量是一条 op、
//! 所有操作数都是 SSA 值（`ValId`，函数内下标，类型在 `Function::vals`）。
mod convert;
mod types;

pub use convert::Lowering;
pub use types::{Kind, Ty, Types};

#[derive(Debug, thiserror::Error)]
pub enum Error {
    #[error("MLIR：{0}")]
    Parse(String),
    #[error("`{op}`：{why}")]
    Op { op: String, why: String },
}

/// 函数内的块下标。
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
pub struct BlockId(pub u32);

/// 函数内的 SSA 值下标。
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
pub struct ValId(pub u32);

/// 常量（全局初值、`llvm.mlir.constant` / `zero` / `undef` / `poison` / `addressof`）。
#[derive(Clone, Debug, PartialEq)]
pub enum Const {
    /// 整数位型（按位宽截断）。
    Int(u128),
    /// 浮点位型（float 32 位、double 64 位）。
    Float(u64),
    /// 全零（`zero` / `null`）。
    Zero,
    Undef,
    /// 聚合的各元素（类型由所在位置给）。
    Agg(Vec<Const>),
    /// 字节串（`"…\00"`、`dense<…> : tensor<…xi8>`）。
    Bytes(Vec<u8>),
    /// 全局符号的地址 + 偏移。
    Global(String, i64),
}

macro_rules! enums {
    ($($(#[$m:meta])* $name:ident { $($v:ident),* $(,)? })*) => {
        $($(#[$m])* #[derive(Clone, Copy, Debug, PartialEq, Eq)] pub enum $name { $($v),* })*
    };
}

enums! {
    BinOp { Add, Sub, Mul, UDiv, SDiv, URem, SRem, Shl, LShr, AShr, And, Or, Xor, FAdd, FSub, FMul, FDiv, FRem }
    /// 同 MLIR `ICmpPredicate` 的编号次序：eq ne slt sle sgt sge ult ule ugt uge。
    IPred { Eq, Ne, Slt, Sle, Sgt, Sge, Ult, Ule, Ugt, Uge }
    /// 同 MLIR `FCmpPredicate` 的编号次序。
    FPred { False, Oeq, Ogt, Oge, Olt, Ole, One, Ord, Ueq, Ugt, Uge, Ult, Ule, Une, Uno, True }
    CastOp { Trunc, ZExt, SExt, FpTrunc, FpExt, FpToUi, FpToSi, UiToFp, SiToFp, PtrToInt, IntToPtr, Bitcast, AddrSpaceCast }
    /// 同 MLIR `AtomicBinOp` 的编号次序。
    RmwOp { Xchg, Add, Sub, And, Nand, Or, Xor, Max, Min, UMax, UMin, FAdd, FSub, FMax, FMin }
}

/// `llvm.intr.*`（代码生成认得的）。
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Intr {
    Ctlz,
    Cttz,
    Ctpop,
    Bswap,
    Bitreverse,
    /// `ptrmask(p, m)`：`p & m`（clang 给 `va_arg` 的 8 字节对齐用）。
    PtrMask,
    Abs,
    SMax,
    SMin,
    UMax,
    UMin,
    SAddSat,
    UAddSat,
    SSubSat,
    USubSat,
    SAddOv,
    UAddOv,
    SSubOv,
    USubOv,
    SMulOv,
    UMulOv,
    Fshl,
    Fshr,
    Fabs,
    Copysign,
    Fma,
    FMulAdd,
    Sqrt,
    MinNum,
    MaxNum,
    /// `bit` 属性：要测的类别位。
    IsFpClass(u32),
    Memcpy,
    Memmove,
    Memset,
    Trap,
    DebugTrap,
    StackSave,
    StackRestore,
    VaStart,
    VaEnd,
    VaCopy,
    /// 不出代码：lifetime / assume / expect（expect 回第一个实参）…
    Nop,
    Expect,
    /// 交给库函数（`floorf` / `fmodf` …）：名字。
    Libm(String),
}

/// 参数 / 返回值上影响代码生成的属性。
#[derive(Clone, Debug, Default, PartialEq)]
pub struct ArgAttrs {
    pub signext: bool,
    pub zeroext: bool,
    /// `byval(类型)`：调用方拷一份放栈上、传地址。
    pub byval: Option<Ty>,
    pub sret: bool,
    pub align: Option<u64>,
}

/// 跳转目标与传给块参数的实参。
#[derive(Clone, Debug, PartialEq)]
pub struct Target {
    pub block: BlockId,
    pub args: Vec<ValId>,
}

/// GEP 的一个下标：常数或 SSA 值。
#[derive(Clone, Debug, PartialEq)]
pub enum Index {
    Const(i64),
    Dyn(ValId),
}

/// 被调用者。
#[derive(Clone, Debug, PartialEq)]
pub enum Callee {
    Direct(String),
    Indirect(ValId),
}

#[derive(Clone, Debug, PartialEq)]
pub enum Op {
    Const(Const),
    Ret(Option<ValId>),
    Br(Target),
    CondBr(ValId, Target, Target),
    Switch(ValId, Target, Vec<(u128, Target)>),
    Unreachable,
    Bin(BinOp, ValId, ValId),
    FNeg(ValId),
    ICmp(IPred, ValId, ValId),
    FCmp(FPred, ValId, ValId),
    Alloca { ty: Ty, count: ValId, align: u64 },
    /// `atomic`：C 的内存序（0 relaxed、2 acquire、3 release、4 acq_rel、5 seq_cst）；`None` = 普通访存。
    Load { ptr: ValId, align: u64, volatile: bool, atomic: Option<u8> },
    Store { val: ValId, ptr: ValId, align: u64, volatile: bool, atomic: Option<u8> },
    Gep { src: Ty, base: ValId, indices: Vec<Index> },
    Cast(CastOp, ValId),
    Select(ValId, ValId, ValId),
    /// 函数类型、被调用者、实参（带属性）、返回值属性。
    Call { fty: Ty, callee: Callee, args: Vec<(ValId, ArgAttrs)>, ret: ArgAttrs },
    ExtractValue(ValId, Vec<u32>),
    InsertValue(ValId, ValId, Vec<u32>),
    Freeze(ValId),
    Intr(Intr, Vec<ValId>),
    /// 运算、指针、值、C 内存序。
    AtomicRmw(RmwOp, ValId, ValId, u8),
    CmpXchg(ValId, ValId, ValId),
    Fence,
}

impl Op {
    /// 用到的值（含跳转实参）。
    #[must_use]
    pub fn operands(&self) -> Vec<ValId> {
        let mut vals: Vec<ValId> = self.targets().into_iter().flat_map(|t| t.args.iter().copied()).collect();
        match self {
            Self::CondBr(c, ..) | Self::Switch(c, ..) => vals.push(*c),
            Self::Ret(v) => vals.extend(v),
            Self::Bin(_, a, b) | Self::ICmp(_, a, b) | Self::FCmp(_, a, b) | Self::InsertValue(a, b, _) | Self::AtomicRmw(_, a, b, _) => vals.extend([*a, *b]),
            Self::FNeg(a) | Self::Cast(_, a) | Self::Freeze(a) | Self::ExtractValue(a, _) => vals.push(*a),
            Self::Alloca { count, .. } => vals.push(*count),
            Self::Load { ptr, .. } => vals.push(*ptr),
            Self::Store { val, ptr, .. } => vals.extend([*val, *ptr]),
            Self::Gep { base, indices, .. } => {
                vals.push(*base);
                vals.extend(indices.iter().filter_map(|i| if let Index::Dyn(v) = i { Some(*v) } else { None }));
            }
            Self::Select(a, b, c) | Self::CmpXchg(a, b, c) => vals.extend([*a, *b, *c]),
            Self::Call { callee, args, .. } => {
                if let Callee::Indirect(v) = callee {
                    vals.push(*v);
                }
                vals.extend(args.iter().map(|(v, _)| *v));
            }
            Self::Intr(_, args) => vals.extend(args),
            Self::Const(_) | Self::Unreachable | Self::Fence | Self::Br(_) => {}
        }
        vals
    }

    /// 没有副作用：结果没人用就能删。
    #[must_use]
    pub const fn pure(&self) -> bool {
        matches!(
            self,
            Self::Const(_) | Self::Bin(..) | Self::FNeg(_) | Self::ICmp(..) | Self::FCmp(..) | Self::Gep { .. } | Self::Cast(..) | Self::Select(..) | Self::ExtractValue(..) | Self::InsertValue(..) | Self::Freeze(_)
        )
    }

    /// 终结指令的各出口。
    #[must_use]
    pub fn targets(&self) -> Vec<&Target> {
        match self {
            Self::Br(t) => vec![t],
            Self::CondBr(_, a, b) => vec![a, b],
            Self::Switch(_, d, cases) => core::iter::once(d).chain(cases.iter().map(|(_, t)| t)).collect(),
            _ => Vec::new(),
        }
    }
}

/// 一条指令：结果（有的话）与操作。
#[derive(Clone, Debug, PartialEq)]
pub struct Inst {
    pub result: Option<ValId>,
    pub op: Op,
}

#[derive(Clone, Debug, Default)]
pub struct Block {
    pub params: Vec<ValId>,
    pub insts: Vec<Inst>,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Linkage {
    External,
    Internal,
    Private,
    Weak,
    LinkOnce,
    Common,
    ExternWeak,
    Available,
}

impl Linkage {
    /// 目标文件里是局部符号。
    #[must_use]
    pub const fn local(self) -> bool {
        matches!(self, Self::Internal | Self::Private)
    }

    #[must_use]
    pub const fn weak(self) -> bool {
        matches!(self, Self::Weak | Self::LinkOnce | Self::ExternWeak | Self::Common)
    }
}

#[derive(Clone, Debug)]
pub struct Param {
    pub ty: Ty,
    pub attrs: ArgAttrs,
}

#[derive(Clone, Debug)]
pub struct Function {
    pub name: String,
    pub linkage: Linkage,
    pub hidden: bool,
    pub ret: Ty,
    pub ret_attrs: ArgAttrs,
    pub params: Vec<Param>,
    pub varargs: bool,
    pub section: Option<String>,
    pub align: Option<u64>,
    /// 空 ⇒ 只是声明。入口块的参数就是函数参数。
    pub blocks: Vec<Block>,
    /// 每个 SSA 值的类型（`ValId` 下标）。
    pub vals: Vec<Ty>,
}

impl Function {
    /// 从入口走得到的块，逆后序（每个块排在它的支配者之后）。
    #[must_use]
    pub fn rpo(&self) -> Vec<usize> {
        let n = self.blocks.len();
        let mut seen = vec![false; n];
        let mut post = Vec::with_capacity(n);
        // 显式栈：（块, 下一个要看的后继）
        let mut stack = Vec::new();
        if n > 0 {
            seen[0] = true;
            stack.push((0usize, 0usize));
        }
        while let Some((b, k)) = stack.last_mut() {
            let succs = self.blocks[*b].insts.last().map(|i| i.op.targets()).unwrap_or_default();
            if let Some(t) = succs.get(*k) {
                *k += 1;
                let t = t.block.0 as usize;
                if !seen[t] {
                    seen[t] = true;
                    stack.push((t, 0));
                }
            } else {
                post.push(*b);
                stack.pop();
            }
        }
        post.reverse();
        post
    }
}

#[derive(Clone, Debug)]
pub struct Global {
    pub name: String,
    pub linkage: Linkage,
    pub hidden: bool,
    pub ty: Ty,
    /// `None` ⇒ 外部声明。
    pub init: Option<Const>,
    pub constant: bool,
    pub align: Option<u64>,
    pub section: Option<String>,
    pub thread_local: bool,
}

#[derive(Clone, Debug)]
pub struct Alias {
    pub name: String,
    pub linkage: Linkage,
    pub hidden: bool,
    pub target: Const,
}

#[derive(Default)]
pub struct Module {
    pub types: Types,
    pub globals: Vec<Global>,
    pub functions: Vec<Function>,
    pub aliases: Vec<Alias>,
}
