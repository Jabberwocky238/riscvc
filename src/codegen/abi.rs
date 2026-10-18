//! ilp32f 调用约定（同 LLVM 的 `CC_RISCV`，FLEN = 32、XLEN = 32）。
//!
//! 值先拆成部件（[`Part`]）：32 位整数 / 指针一个 `X`；`float` 一个 `F`；i64 / double 是 `Lo` + `Hi` 一对；
//! 结构体 / 数组按字段拆平。每个部件独立分配：
//! - `X`：下一个 a 寄存器，没有就上栈（4 字节）。
//! - `F`：下一个 fa 寄存器（可变参数不用），没有就当 `X`。
//! - `Lo`+`Hi`：两个 a 寄存器都有就用两个（可变参数要从偶数号开始）；只剩 a7 就低半 a7、高半上栈；都没了整对上栈（8 字节对齐）。
use crate::isa::{F, X};
use crate::regalloc::{PReg, PRegSet, RegClass};

/// 值的一个 32 位部件。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Part {
    X,
    F,
    /// 64 位值的低半（紧跟着 `Hi`）。
    Lo,
    Hi,
}

impl Part {
    #[must_use]
    pub const fn class(self) -> RegClass {
        match self {
            Self::F => RegClass::Float,
            _ => RegClass::Int,
        }
    }
}

/// 一个部件在调用时放在哪。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Loc {
    Reg(PReg),
    /// 栈上：相对出参区（调用方）/ 入参区（被调方）起点的偏移。
    Stack(i32),
}

impl X {
    #[must_use]
    pub fn preg(self) -> PReg {
        PReg::new(usize::from(self.0), RegClass::Int)
    }
}

impl F {
    #[must_use]
    pub fn preg(self) -> PReg {
        PReg::new(usize::from(self.0), RegClass::Float)
    }
}

/// 参数分配的进度。
#[derive(Clone, Debug)]
pub struct Assign {
    x: u8,
    f: u8,
    pub stack: i32,
}

impl Default for Assign {
    fn default() -> Self {
        Self { x: 10, f: 10, stack: 0 }
    }
}

impl Assign {
    fn stack(&mut self, size: i32) -> Loc {
        self.stack = (self.stack + size - 1) / size * size;
        let at = self.stack;
        self.stack += size;
        Loc::Stack(at)
    }

    fn int(&mut self) -> Loc {
        if self.x <= 17 {
            self.x += 1;
            Loc::Reg(X(self.x - 1).preg())
        } else {
            self.stack(4)
        }
    }

    /// 一串部件（一个实参拆出来的）⇒ 各自的位置。`variadic`：可变参数部分。
    pub fn parts(&mut self, parts: &[Part], variadic: bool) -> Vec<Loc> {
        let mut out = Vec::new();
        let mut i = 0;
        while i < parts.len() {
            match parts[i] {
                Part::Lo => {
                    if variadic && self.x <= 17 && self.x % 2 == 1 {
                        self.x += 1;
                    }
                    if self.x <= 16 {
                        out.push(self.int());
                        out.push(self.int());
                    } else if self.x == 17 {
                        out.push(self.int());
                        out.push(self.stack(4));
                    } else {
                        let Loc::Stack(at) = self.stack(8) else { unreachable!() };
                        out.push(Loc::Stack(at));
                        out.push(Loc::Stack(at + 4));
                    }
                    i += 2;
                    continue;
                }
                Part::F if !variadic && self.f <= 17 => {
                    self.f += 1;
                    out.push(Loc::Reg(F(self.f - 1).preg()));
                }
                _ => out.push(self.int()),
            }
            i += 1;
        }
        out
    }

    /// 用到的第一个没被具名参数占的 a 寄存器号（可变参数函数在序言里把它到 a7 存到栈上）。
    #[must_use]
    pub const fn next_x(&self) -> u8 {
        self.x
    }
}

/// 调用约定里与具体实参无关的部分：返回寄存器、破坏集、被调方保存、regalloc2 的机器环境。
pub struct Abi;

/// ⭐ 可分配的寄存器集 —— **结构体注入**：宿主要独占某几个（比如扩展包把常量钉在
/// `x5…x10`），就在这里把它们拿掉。⛔ 不走 feature、不走环境变量。
///
/// 缺省是 RV32 的通用寄存器：整数先用 t / a（调用方保存），再用 s（被调方保存）；
/// ⛔ 不分配 `zero` / `ra` / `sp` / `gp` / `tp`，`t6` 留给帧地址的大偏移。
///
/// ⚠ 实测过：把 s 挪到前面、或全放 preferred，指令总数都会涨 6%~13%
/// （`mv` 确实降了，但每个函数的序言 / 尾声要存取 s ⇒ 栈访问暴涨）。⛔ 别动这个次序。
#[derive(Clone, Debug)]
pub struct Allocatable {
    /// 整数，优先用的。
    pub int_first: Vec<u8>,
    /// 整数，其次用的。
    pub int_then: Vec<u8>,
    pub float_first: Vec<u8>,
    pub float_then: Vec<u8>,
}

impl Default for Allocatable {
    fn default() -> Self {
        Self {
            int_first: [5u8, 6, 7].into_iter().chain(10..=17).chain(28..=30).collect(),
            int_then: [8u8, 9].into_iter().chain(18..=27).collect(),
            float_first: (0u8..=7).chain(10..=17).chain(28..=31).collect(),
            float_then: [8u8, 9].into_iter().chain(18..=27).collect(),
        }
    }
}

impl Allocatable {
    /// 去掉这几个整数寄存器（宿主自己占着）。
    #[must_use]
    pub fn without_int(mut self, regs: &[u8]) -> Self {
        self.int_first.retain(|r| !regs.contains(r));
        self.int_then.retain(|r| !regs.contains(r));
        self
    }
}

impl Abi {
/// 返回值的位置：整数部件 a0、a1，浮点部件 fa0、fa1；放不下 ⇒ `None`（改由调用方给地址，sret）。
#[must_use]
pub fn returns(parts: &[Part]) -> Option<Vec<PReg>> {
    let (mut x, mut f) = (10u8, 10u8);
    let mut out = Vec::new();
    for p in parts {
        match p {
            Part::F if f <= 11 => {
                out.push(F(f).preg());
                f += 1;
            }
            Part::F => return None,
            _ if x <= 11 => {
                out.push(X(x).preg());
                x += 1;
            }
            _ => return None,
        }
    }
    Some(out)
}

/// 调用破坏的寄存器：ra、t0–t6、a0–a7；ft0–ft11、fa0–fa7。
#[must_use]
pub fn caller_saved() -> PRegSet {
    let mut s = PRegSet::empty();
    for r in [1u8, 5, 6, 7, 10, 11, 12, 13, 14, 15, 16, 17, 28, 29, 30, 31] {
        s.add(X(r).preg());
    }
    for r in (0u8..=7).chain(10..=17).chain(28..=31) {
        s.add(F(r).preg());
    }
    s
}

/// 被调方保存的：s0–s11；fs0–fs11。
#[must_use]
pub const fn callee_saved_x(r: u8) -> bool {
    matches!(r, 8 | 9 | 18..=27)
}

#[must_use]
pub const fn callee_saved_f(r: u8) -> bool {
    matches!(r, 8 | 9 | 18..=27)
}

/// regalloc2 的机器环境。`frame`：`s0` 当帧指针（动态改 `sp` 的函数）⇒ ⛔ 分配 `s0`。
#[must_use]
pub fn machine_env(frame: bool, regs: &Allocatable) -> crate::regalloc::MachineEnv {
    let set = |rs: &[u8], class: RegClass| {
        let mut s = PRegSet::empty();
        for &r in rs {
            s.add(PReg::new(usize::from(r), class));
        }
        s
    };
    let xn: Vec<u8> = regs.int_then.iter().copied().filter(|&r| !(frame && r == 8)).collect();
    crate::regalloc::MachineEnv {
        preferred_regs_by_class: [set(&regs.int_first, RegClass::Int), set(&regs.float_first, RegClass::Float), PRegSet::empty()],
        non_preferred_regs_by_class: [set(&xn, RegClass::Int), set(&regs.float_then, RegClass::Float), PRegSet::empty()],
        scratch_by_class: [None, None, None],
        fixed_stack_slots: Vec::new(),
    }
}
}
