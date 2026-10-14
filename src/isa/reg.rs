//! 寄存器：整数 `X`、浮点 `F`、舍入模式 `Rm`。名字按 ABI 打印，读的时候 ABI 名与 `x5` / `f3` 都认。
use core::fmt;
use core::str::FromStr;

/// 名字表一次声明：`寄存器类型 { 编号 => "ABI 名", … }` ⇒ `Display` + `FromStr`（另认数字名与别名）。
macro_rules! regs {
    ($ty:ident, $prefix:literal, [$($alias:literal => $alias_num:literal),*], [$($name:literal),*]) => {
        impl fmt::Display for $ty {
            fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
                f.write_str([$($name),*][usize::from(self.0)])
            }
        }
        impl FromStr for $ty {
            type Err = ();
            fn from_str(s: &str) -> Result<Self, ()> {
                if let Some(n) = s.strip_prefix($prefix).and_then(|n| n.parse::<u8>().ok()).filter(|&n| n < 32) {
                    return Ok(Self(n));
                }
                match s {
                    $($alias => Ok(Self($alias_num)),)*
                    _ => [$($name),*].iter().position(|n| *n == s).and_then(|n| u8::try_from(n).ok()).map(Self).ok_or(()),
                }
            }
        }
    };
}

/// 整数寄存器 x0..x31。
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
pub struct X(pub u8);

/// 浮点寄存器 f0..f31。
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
pub struct F(pub u8);

regs!(X, "x", ["fp" => 8], [
    "zero", "ra", "sp", "gp", "tp", "t0", "t1", "t2", "s0", "s1", "a0", "a1", "a2", "a3", "a4", "a5",
    "a6", "a7", "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"
]);
regs!(F, "f", [], [
    "ft0", "ft1", "ft2", "ft3", "ft4", "ft5", "ft6", "ft7", "fs0", "fs1", "fa0", "fa1", "fa2", "fa3", "fa4", "fa5",
    "fa6", "fa7", "fs2", "fs3", "fs4", "fs5", "fs6", "fs7", "fs8", "fs9", "fs10", "fs11", "ft8", "ft9", "ft10", "ft11"
]);

impl X {
    pub const ZERO: Self = Self(0);
    pub const RA: Self = Self(1);
    pub const SP: Self = Self(2);
    pub const T0: Self = Self(5);
    pub const T1: Self = Self(6);
    pub const S0: Self = Self(8);
    pub const A0: Self = Self(10);
}

/// 舍入模式（funct3）。`Dyn` = 跟 `frm`，汇编里省略时就是它。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Rm {
    Rne = 0,
    Rtz = 1,
    Rdn = 2,
    Rup = 3,
    Rmm = 4,
    Dyn = 7,
}

impl TryFrom<u32> for Rm {
    type Error = ();
    fn try_from(v: u32) -> Result<Self, ()> {
        Ok(match v {
            0 => Self::Rne,
            1 => Self::Rtz,
            2 => Self::Rdn,
            3 => Self::Rup,
            4 => Self::Rmm,
            7 => Self::Dyn,
            _ => return Err(()),
        })
    }
}

macro_rules! names {
    ($ty:ident { $($v:ident = $s:literal),* }) => {
        impl fmt::Display for $ty {
            fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
                f.write_str(match self { $(Self::$v => $s),* })
            }
        }
        impl FromStr for $ty {
            type Err = ();
            fn from_str(s: &str) -> Result<Self, ()> {
                match s { $($s => Ok(Self::$v),)* _ => Err(()) }
            }
        }
    };
}
names!(Rm { Rne = "rne", Rtz = "rtz", Rdn = "rdn", Rup = "rup", Rmm = "rmm", Dyn = "dyn" });
