//! 类型：驻留表（`Ty` 是下标，比较、拷贝都便宜）与 RV32 的布局（datalayout `e-m:e-p:32:32-i64:64-n32-S128`）。
use std::collections::HashMap;

/// 一个类型（驻留表下标）。
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
pub struct Ty(pub u32);

#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum Kind {
    Void,
    Int(u32),
    Half,
    BFloat,
    Float,
    Double,
    Fp128,
    Ptr,
    Label,
    Metadata,
    Token,
    Array(u64, Ty),
    Vector(u32, Ty),
    /// 字段、是否紧排（`<{ … }>`）。
    Struct(Vec<Ty>, bool),
    /// 返回、参数、可变参数。
    Func(Ty, Vec<Ty>, bool),
    /// 只声明没定义的命名结构体。
    Opaque(String),
}

/// 类型驻留表。
pub struct Types {
    kinds: Vec<Kind>,
    map: HashMap<Kind, Ty>,
}

impl Default for Types {
    fn default() -> Self {
        let mut t = Self { kinds: Vec::new(), map: HashMap::new() };
        for k in [Kind::Void, Kind::Int(1), Kind::Int(8), Kind::Int(16), Kind::Int(32), Kind::Int(64), Kind::Float, Kind::Double, Kind::Ptr, Kind::Label] {
            t.get(k);
        }
        t
    }
}

impl Types {
    pub const VOID: Ty = Ty(0);
    pub const I1: Ty = Ty(1);
    pub const I8: Ty = Ty(2);
    pub const I16: Ty = Ty(3);
    pub const I32: Ty = Ty(4);
    pub const I64: Ty = Ty(5);
    pub const FLOAT: Ty = Ty(6);
    pub const DOUBLE: Ty = Ty(7);
    pub const PTR: Ty = Ty(8);
    pub const LABEL: Ty = Ty(9);

    /// 驻留：同结构同一个 `Ty`。
    pub fn get(&mut self, k: Kind) -> Ty {
        if let Some(t) = self.map.get(&k) {
            return *t;
        }
        let t = Ty(u32::try_from(self.kinds.len()).expect("类型太多"));
        self.kinds.push(k.clone());
        self.map.insert(k, t);
        t
    }

    /// 命名结构体先占一个位置、后填字段（允许前向引用）。
    pub fn fresh(&mut self, name: &str) -> Ty {
        let t = Ty(u32::try_from(self.kinds.len()).expect("类型太多"));
        self.kinds.push(Kind::Opaque(String::from(name)));
        t
    }

    pub fn define(&mut self, t: Ty, k: Kind) {
        self.kinds[t.0 as usize] = k;
    }

    #[must_use]
    pub fn kind(&self, t: Ty) -> &Kind {
        &self.kinds[t.0 as usize]
    }

    #[must_use]
    pub fn int(&mut self, bits: u32) -> Ty {
        self.get(Kind::Int(bits))
    }

    /// 整数位宽（不是整数 ⇒ None）。
    #[must_use]
    pub fn bits(&self, t: Ty) -> Option<u32> {
        match self.kind(t) {
            Kind::Int(n) => Some(*n),
            _ => None,
        }
    }

    #[must_use]
    pub fn is_float(&self, t: Ty) -> bool {
        matches!(self.kind(t), Kind::Half | Kind::BFloat | Kind::Float | Kind::Double | Kind::Fp128)
    }

    /// 存储大小（字节，含尾部补齐）。
    #[must_use]
    pub fn size(&self, t: Ty) -> u64 {
        match self.kind(t) {
            Kind::Void | Kind::Label | Kind::Metadata | Kind::Token | Kind::Func(..) | Kind::Opaque(_) => 0,
            Kind::Int(n) => u64::from(n.div_ceil(8)).next_power_of_two().max(1),
            Kind::Half | Kind::BFloat => 2,
            Kind::Float | Kind::Ptr => 4,
            Kind::Double => 8,
            Kind::Fp128 => 16,
            Kind::Array(n, e) => n * self.size(*e),
            Kind::Vector(n, e) => (u64::from(*n) * self.size(*e)).next_power_of_two(),
            Kind::Struct(..) => {
                let (fields, size) = self.struct_layout(t);
                let _ = fields;
                size
            }
        }
    }

    /// ABI 对齐（字节）。
    #[must_use]
    pub fn align(&self, t: Ty) -> u64 {
        match self.kind(t) {
            Kind::Int(n) => u64::from(n.div_ceil(8)).next_power_of_two().clamp(1, 16).min(if *n > 64 { 16 } else { 8 }),
            Kind::Half | Kind::BFloat => 2,
            Kind::Float | Kind::Ptr => 4,
            Kind::Double => 8,
            Kind::Fp128 => 16,
            Kind::Array(_, e) => self.align(*e),
            Kind::Vector(..) => self.size(t).max(1),
            Kind::Struct(fields, packed) => {
                if *packed {
                    1
                } else {
                    fields.iter().map(|f| self.align(*f)).max().unwrap_or(1)
                }
            }
            _ => 1,
        }
    }

    /// 结构体各字段的偏移与总大小。
    #[must_use]
    pub fn struct_layout(&self, t: Ty) -> (Vec<u64>, u64) {
        let Kind::Struct(fields, packed) = self.kind(t) else { return (Vec::new(), 0) };
        let mut off = 0u64;
        let mut offs = Vec::new();
        for f in fields {
            if !packed {
                off = off.next_multiple_of(self.align(*f));
            }
            offs.push(off);
            off += self.size(*f);
        }
        let size = if *packed { off } else { off.next_multiple_of(self.align(t)) };
        (offs, size)
    }

    /// 聚合类型的第 `i` 个元素：（类型, 偏移）。
    #[must_use]
    pub fn element(&self, t: Ty, i: u64) -> Option<(Ty, u64)> {
        match self.kind(t) {
            Kind::Struct(fields, _) => {
                let (offs, _) = self.struct_layout(t);
                Some((*fields.get(usize::try_from(i).ok()?)?, offs[usize::try_from(i).ok()?]))
            }
            Kind::Array(_, e) => Some((*e, i * self.size(*e))),
            Kind::Vector(_, e) => Some((*e, i * self.size(*e))),
            _ => None,
        }
    }
}
