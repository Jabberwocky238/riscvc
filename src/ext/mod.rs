//! 扩展器：标准表之外的自定义指令与内存映射设备（照 LLVM 的 `X<厂商>` 扩展：MC 层认字、打印、汇编，解释器另给语义）。
//! ⛔ 静态注册（借用，不持有、不加载 `.so`），同 [`crate::plugin`]。
//!
//! ```text
//! Extension::decode     pc 处的字节 ⇒ 这条有几字节（4 / 8 …；不是本扩展的 ⇒ None）     objdump、sim、Disasm
//! Extension::print      一条 ⇒ 「助记符\t操作数」                                          objdump、Disasm
//! Extension::assemble   助记符 + 操作数 ⇒ 字节（不认的助记符 ⇒ None，交回标准表）            as
//! Extension::execute    一条的语义：读写寄存器 / 内存，可改下一条的 pc（缺省什么也不做）    sim
//! Device::load / store  地址落在设备上就由它答（MMIO），否则落到稀疏内存                   sim
//! ```
//!
//! ⭐ 先问扩展、再走标准表：扩展可以占用标准表里没有的编码（RISC-V 的 custom-0..3、低两位不是 `11` 的长指令）。
use crate::isa::{Inst, Style};
use crate::sim::{Cpu, Stop};

/// 汇编器交给扩展的一个操作数（已求值：扩展指令不带重定位）。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Operand {
    /// 整数寄存器号。
    X(u8),
    /// 浮点寄存器号。
    F(u8),
    /// 常数。
    Imm(i64),
}

/// ⭐ 一个指令集扩展。
pub trait Extension {
    /// 名字（报错与 `--list` 用），同 `-mattr` 的写法（`x<厂商>`）。
    fn name(&self) -> &str;

    /// `bytes` 是 pc 处起的 8 个字节（越过节尾的补 0）⇒ 本扩展的指令有几字节；不是本扩展的 ⇒ `None`。
    fn decode(&self, bytes: &[u8; 8]) -> Option<usize>;

    /// 一条（`bytes` 恰好是 [`Self::decode`] 给的长度）⇒ 「助记符\t操作数」。
    fn print(&self, bytes: &[u8], pc: u64, style: Style) -> String;

    /// 助记符（小写）+ 操作数 ⇒ 字节；不是本扩展的助记符 ⇒ `None`。
    fn assemble(&self, mnemonic: &str, operands: &[Operand]) -> Option<Result<Vec<u8>, String>> {
        let _ = (mnemonic, operands);
        None
    }

    /// 执行一条：`cpu.pc` 指着它。回 `Some(下一条)` 改写流向，`None` ⇒ 顺序往下（pc + 长度）。
    fn execute(&mut self, cpu: &mut Cpu, bytes: &[u8]) -> Result<Option<u32>, Stop> {
        let _ = (cpu, bytes);
        Ok(None)
    }
}

/// ⭐ 一个内存映射设备：地址归它就由它答，`false` ⇒ 不归它（落到稀疏内存）。
pub trait Device {
    fn load(&mut self, addr: u32, out: &mut [u8]) -> bool;
    fn store(&mut self, addr: u32, data: &[u8]) -> bool;
}

/// 一段代码里的一条：地址、字节、文本。
pub struct Line<'b> {
    pub pc: u64,
    pub bytes: &'b [u8],
    pub text: String,
}

/// ⭐ 反汇编一段代码（扩展先认，标准表次之；都不认 ⇒ 4 字节 `<unknown>`，同 llvm-objdump）。
pub struct Disasm<'b, 'e> {
    data: &'b [u8],
    base: u64,
    at: usize,
    exts: &'e [&'e dyn Extension],
    style: Style,
}

impl<'b, 'e> Disasm<'b, 'e> {
    #[must_use]
    pub const fn new(data: &'b [u8], base: u64, exts: &'e [&'e dyn Extension], style: Style) -> Self {
        Self { data, base, at: 0, exts, style }
    }

    /// pc 处起的 8 个字节（越过末尾补 0）。
    #[must_use]
    pub fn window(data: &[u8], at: usize) -> [u8; 8] {
        let mut w = [0; 8];
        let n = data.len().saturating_sub(at).min(8);
        w[..n].copy_from_slice(&data[at..at + n]);
        w
    }

    /// 哪个扩展认这几个字节、长度几何。
    #[must_use]
    pub fn claim<'x>(exts: &'x [&'x dyn Extension], window: &[u8; 8]) -> Option<(&'x dyn Extension, usize)> {
        exts.iter().find_map(|&e| e.decode(window).map(|n| (e, n)))
    }
}

impl<'b> Iterator for Disasm<'b, '_> {
    type Item = Line<'b>;

    fn next(&mut self) -> Option<Line<'b>> {
        if self.at >= self.data.len() {
            return None;
        }
        let pc = self.base + self.at as u64;
        let window = Self::window(self.data, self.at);
        let (n, text) = match Self::claim(self.exts, &window) {
            Some((e, n)) if self.at + n <= self.data.len() => (n, e.print(&self.data[self.at..self.at + n], pc, self.style)),
            _ => {
                let w = u32::from_le_bytes([window[0], window[1], window[2], window[3]]);
                (4, Inst::try_from(w).map_or_else(|()| String::from("<unknown>"), |i| i.print(pc, self.style)))
            }
        };
        let n = n.min(self.data.len() - self.at);
        let bytes = &self.data[self.at..self.at + n];
        self.at += n;
        Some(Line { pc, bytes, text })
    }
}
