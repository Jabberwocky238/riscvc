//! 扩展器：标准表之外的指令与内存映射设备（照 LLVM 的 `X<厂商>` 扩展：MC 层认字、打印、汇编，解释器另给语义）。
//! ⛔ 静态注册（借用，不持有、不加载 `.so`），同 [`crate::plugin`]。M / Zmmul / F / Zicsr 也走这里（`src/feature/`）。
//!
//! ```text
//! Extension::decode     pc 处的字节 ⇒ 这条有几字节（4 / 8 …；不是本扩展的 ⇒ None）     objdump、sim、Disasm
//! Extension::print      一条 ⇒ 「助记符\t操作数」                                          objdump、Disasm
//! Extension::assemble   助记符 + 操作数 ⇒ 字节 / 带修补点的字节 / 文本展开（伪指令）      as
//! Extension::execute    一条的语义：经 [`Exec`] 读写寄存器、CSR、内存（设备），可改下一条的 pc   sim
//! Device::load / store  地址落在设备上就由它答（MMIO），否则落到稀疏内存                   sim
//! ```
//!
//! ⭐ 写一张标准格式的指令表：`#[derive(Isa)]`（`crate::macros`）+ [`Std<表>`]，见 `src/feature/zmmul`。
//! 先问扩展、再走标准表：扩展可以占用标准表里没有的编码（RISC-V 的 custom-0..3、低两位不是 `11` 的长指令）。
use crate::asm::Expr;
use crate::isa::{Csr, Form, Inst, Rm, Style, Table};
use crate::sim::{Cpu, Stop};
use core::marker::PhantomData;

/// 汇编器交给扩展的一个操作数。
#[derive(Clone, Debug, PartialEq)]
pub enum Operand {
    /// 整数寄存器号。
    X(u8),
    /// 浮点寄存器号。
    F(u8),
    /// 现在就能算出来的常数。
    Imm(i64),
    /// 不是寄存器的单个名字（舍入模式、CSR 名、符号）。
    Sym(String),
    /// 算不出常数的表达式（带 `%lo` 一类修饰符、外部符号）：要修补点。
    Expr(Expr),
    /// `偏移(基址)`：偏移、基址寄存器号。
    Mem(Expr, u8),
}

/// 一条扩展指令的操作数：解析好的与原文（伪指令模板按原文替换）。
pub struct Args<'a> {
    pub ops: &'a [Operand],
    pub raw: &'a [String],
}

/// 立即数位段（修补点落在哪）：同标准格式的散布。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Field {
    /// I 型 12 位（`%lo` / `%pcrel_lo` 也认）。
    I,
    /// S 型 12 位。
    S,
    /// U 型 20 位（`%hi` / `%pcrel_hi`）。
    U,
    /// 条件分支。
    B,
    /// `jal`。
    J,
}

/// 一个修补点：第几个字节起的那条指令、哪个位段、什么表达式（汇编器按标准规则解析或出重定位）。
#[derive(Clone, Debug, PartialEq)]
pub struct Fixup {
    pub offset: usize,
    pub field: Field,
    pub expr: Expr,
}

/// 汇编一条扩展指令的结果。
#[derive(Clone, Debug, PartialEq)]
pub enum Emit {
    /// 定好的字节。
    Bytes(Vec<u8>),
    /// 字节 + 修补点。
    Fixed(Vec<u8>, Vec<Fixup>),
    /// 文本展开（伪指令）：一行一条，交回汇编器再汇编；`$L` 换成一个新的局部标号（`%pcrel_lo` 配对用）。
    Text(String),
}

impl From<Vec<u8>> for Emit {
    fn from(b: Vec<u8>) -> Self {
        Self::Bytes(b)
    }
}

/// ⭐ 一个指令集扩展。
pub trait Extension {
    /// 名字（报错与 `--list` 用），同 `-mattr` 的写法（`m`、`f`、`x<厂商>`）。
    fn name(&self) -> &str;

    /// `bytes` 是 pc 处起的 8 个字节（越过节尾的补 0）⇒ 本扩展的指令有几字节；不是本扩展的 ⇒ `None`。
    fn decode(&self, bytes: &[u8; 8]) -> Option<usize>;

    /// 一条（`bytes` 恰好是 [`Self::decode`] 给的长度）⇒ 「助记符\t操作数」。
    fn print(&self, bytes: &[u8], pc: u64, style: Style) -> String;

    /// 助记符（小写）+ 操作数 ⇒ [`Emit`]；不是本扩展的助记符 ⇒ `None`。
    fn assemble(&self, mnemonic: &str, args: &Args<'_>) -> Option<Result<Emit, String>> {
        let _ = (mnemonic, args);
        None
    }

    /// 执行一条：`cx.cpu.pc` 指着它。要改流向就设 `cx.next`，否则顺序往下（pc + 长度）。
    fn execute(&mut self, cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), Stop> {
        let _ = (cx, bytes);
        Ok(())
    }
}

/// ⭐ 一个内存映射设备：地址归它就由它答，`false` ⇒ 不归它（落到稀疏内存）。
pub trait Device {
    fn load(&mut self, addr: u32, out: &mut [u8]) -> bool;
    fn store(&mut self, addr: u32, data: &[u8]) -> bool;
}

/// ⭐ 执行一条扩展指令的上下文：寄存器、CSR、经设备的访存、下一条的 pc。
pub struct Exec<'c, 'd> {
    pub cpu: &'c mut Cpu,
    devs: &'c mut [&'d mut dyn Device],
    /// 设了 ⇒ 下一条从这里取（跳转）。
    pub next: Option<u32>,
}

/// 规范 NaN（同硬件）。
const NAN: u32 = 0x7fc0_0000;

impl<'c, 'd> Exec<'c, 'd> {
    #[must_use]
    pub fn new(cpu: &'c mut Cpu, devs: &'c mut [&'d mut dyn Device]) -> Self {
        Self { cpu, devs, next: None }
    }

    /// 整数寄存器。
    #[must_use]
    pub fn x(&self, r: u8) -> u32 {
        self.cpu.x[usize::from(r)]
    }

    /// 写整数寄存器（`x0` 不变）。
    pub fn set(&mut self, rd: u8, v: u32) {
        if rd != 0 {
            self.cpu.x[usize::from(rd)] = v;
        }
    }

    /// 浮点寄存器的位型。
    #[must_use]
    pub fn f(&self, r: u8) -> u32 {
        self.cpu.f[usize::from(r)]
    }

    #[must_use]
    pub fn fv(&self, r: u8) -> f32 {
        f32::from_bits(self.f(r))
    }

    /// 写浮点寄存器的位型（原样）。
    pub fn fset_bits(&mut self, r: u8, v: u32) {
        self.cpu.f[usize::from(r)] = v;
    }

    /// 写浮点结果（NaN 规范成 `0x7fc00000`，同硬件）。
    pub fn fset(&mut self, r: u8, v: f32) {
        self.fset_bits(r, if v.is_nan() { NAN } else { v.to_bits() });
    }

    #[must_use]
    pub fn csr(&self, c: u16) -> u32 {
        self.cpu.csr.get(&c).copied().unwrap_or(0)
    }

    pub fn set_csr(&mut self, c: u16, v: u32) {
        self.cpu.csr.insert(c, v);
    }

    /// 读 `n`（≤ 4）字节，小端拼成 u32：设备先答。
    pub fn load(&mut self, addr: u32, n: usize) -> u32 {
        self.cpu.load_n(self.devs, addr, n)
    }

    /// 写：设备先收。
    pub fn store(&mut self, addr: u32, data: &[u8]) {
        self.cpu.store(self.devs, addr, data);
    }
}

/// `exec` 闭包的返回值：`()` = 正常，`Result<(), Stop>` = 可能陷入。
pub trait Step {
    fn step(self) -> Result<(), Stop>;
}

impl Step for () {
    fn step(self) -> Result<(), Stop> {
        Ok(())
    }
}

impl Step for Result<(), Stop> {
    fn step(self) -> Self {
        self
    }
}

/// 跑一条的语义（`#[derive(Isa)]` 的 `exec = 闭包` 经这里调：闭包的参数类型由这里的签名推出）。
pub fn run<T, R: Step>(f: impl FnOnce(&mut Exec<'_, '_>, &Inst<T>) -> R, cx: &mut Exec<'_, '_>, i: &Inst<T>) -> Result<(), Stop> {
    f(cx, i).step()
}

/// ⭐ 一张有语义的标准格式指令表（`#[derive(Isa)]` 带 `exec` 时生成）：执行与伪指令模板。
pub trait Semantics: Table {
    /// 伪指令模板（`#[pseudo("模式" => "展开")]`）。
    const PSEUDOS: &'static [(&'static str, &'static str)];

    fn execute(&self, cx: &mut Exec<'_, '_>, i: &Inst<Self>) -> Result<(), Stop>;
}

/// ⭐ 标准格式指令表 ⇒ 扩展：译码、打印（含别名）、汇编（伪指令模板 + 按格式编码）、执行，全按表来。
pub struct Std<T>(PhantomData<T>);

impl<T> Std<T> {
    #[must_use]
    pub const fn new() -> Self {
        Self(PhantomData)
    }
}

impl<T> Default for Std<T> {
    fn default() -> Self {
        Self::new()
    }
}

impl<T: Semantics> Std<T> {
    fn word(bytes: &[u8]) -> u32 {
        let mut w = [0; 4];
        let n = bytes.len().min(4);
        w[..n].copy_from_slice(&bytes[..n]);
        u32::from_le_bytes(w)
    }

    fn inst(bytes: &[u8]) -> Option<Inst<T>> {
        Inst::<T>::try_from(Self::word(bytes)).ok()
    }
}

impl<T: Semantics> Extension for Std<T> {
    fn name(&self) -> &str {
        T::ALL.first().map_or("?", |op| op.ext())
    }

    fn decode(&self, bytes: &[u8; 8]) -> Option<usize> {
        Self::inst(bytes).map(|_| 4)
    }

    fn print(&self, bytes: &[u8], pc: u64, style: Style) -> String {
        Self::inst(bytes).map_or_else(|| String::from("<unknown>"), |i| i.print(pc, style))
    }

    fn assemble(&self, mnemonic: &str, args: &Args<'_>) -> Option<Result<Emit, String>> {
        if !T::ALL.first().is_some_and(Table::enabled) {
            return None;
        }
        if let Some(text) = T::PSEUDOS.iter().find_map(|(pat, exp)| Template::expand(pat, exp, mnemonic, args)) {
            return Some(Ok(Emit::Text(text)));
        }
        let op: T = mnemonic.parse().ok()?;
        Some(Encoder::encode(op, args))
    }

    fn execute(&mut self, cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), Stop> {
        let i = Self::inst(bytes).ok_or(Stop::Trap(Self::word(bytes)))?;
        i.op.execute(cx, &i)
    }
}

/// 伪指令模板：`助记符 $名[:类], …`（类：`x` 整数寄存器、`f` 浮点寄存器、`i` 常数，不写 = 任意）。
struct Template;

impl Template {
    /// 模板对上了 ⇒ 展开（`$名` 换成原文）。
    fn expand(pattern: &str, expansion: &str, mnemonic: &str, args: &Args<'_>) -> Option<String> {
        let (pm, params) = pattern.split_once(char::is_whitespace).unwrap_or((pattern, ""));
        if pm != mnemonic {
            return None;
        }
        let params: Vec<&str> = params.split(',').map(str::trim).filter(|p| !p.is_empty()).collect();
        if params.len() != args.ops.len() {
            return None;
        }
        let mut binds: Vec<(&str, &str)> = Vec::new();
        for ((p, op), raw) in params.iter().zip(args.ops).zip(args.raw) {
            let (name, kind) = p.trim_start_matches('$').split_once(':').unwrap_or((p.trim_start_matches('$'), ""));
            let ok = match kind {
                "x" => matches!(op, Operand::X(_)),
                "f" => matches!(op, Operand::F(_)),
                "i" => matches!(op, Operand::Imm(_)),
                _ => true,
            };
            if !ok {
                return None;
            }
            binds.push((name, raw.as_str()));
        }
        // 长名先换，免得 `$rs` 吃掉 `$rs1` 的前缀
        binds.sort_by_key(|(n, _)| core::cmp::Reverse(n.len()));
        let mut out = String::from(expansion);
        for (n, v) in binds {
            out = out.replace(&format!("${n}"), v);
        }
        Some(out)
    }
}

/// 按格式编码（标准表的扩展指令都走这里）。
struct Encoder;

impl Encoder {
    fn encode<T: Table>(op: T, args: &Args<'_>) -> Result<Emit, String> {
        let ops = args.ops;
        use Operand::{F as Fr, Imm, Mem, Sym, X as Xr};
        let i = Inst::of(op);
        let bad = || format!("`{op}` 的操作数不对：{ops:?}");
        let rm = |rest: &[Operand]| -> Result<u8, String> {
            match rest {
                [] => Ok(Rm::Dyn as u8),
                [Sym(s)] => s.parse::<Rm>().map(|r| r as u8).map_err(|()| format!("不认识的舍入模式 `{s}`")),
                _ => Err(format!("舍入模式写错：{rest:?}")),
            }
        };
        // CSR：原文是 CSR 名就按名字（哪怕同名符号 `.set` 过，同 llvm-mc），否则按值
        let csr = |o: &Operand| -> Result<u16, String> {
            let k = ops.iter().position(|x| core::ptr::eq(x, o)).unwrap_or(usize::MAX);
            if let Some(c) = args.raw.get(k).and_then(|r| r.parse::<Csr>().ok()) {
                return Ok(c.0);
            }
            match o {
                Sym(n) => n.parse::<Csr>().map(|c| c.0).map_err(|()| format!("不认识的 CSR `{n}`")),
                Imm(k) => u16::try_from(*k).ok().filter(|&c| c < 4096).ok_or_else(|| format!("CSR 编号 {k} 越界")),
                _ => Err(format!("要 CSR，见 {o:?}")),
            }
        };
        let word = |i: Inst<T>| u32::from(i).to_le_bytes().to_vec();
        // 带 `imm(rs)` 的：常数就地填，否则一个修补点
        let mem = |i: Inst<T>, e: &Expr, field: Field| -> Result<Emit, String> {
            let form = if field == Field::S { Form::Store } else { Form::Imm };
            match e {
                Expr::Num(k) if Inst::fits(form, *k) => Ok(Emit::Bytes(word(i.with_imm(i32::try_from(*k).unwrap_or_default())))),
                Expr::Num(k) => Err(format!("立即数 {k} 超出范围")),
                e => Ok(Emit::Fixed(word(i), vec![Fixup { offset: 0, field, expr: e.clone() }])),
            }
        };
        let r = |o: &Operand| -> Option<u8> {
            match o {
                Xr(r) | Fr(r) => Some(*r),
                _ => None,
            }
        };
        let regs = |os: &[Operand]| -> Option<Vec<u8>> { os.iter().map(r).collect() };
        Ok(match (op.form(), ops) {
            (Form::FLoad | Form::Load, [Fr(rd) | Xr(rd), Mem(e, rs)]) => return mem(i.x(*rd, *rs, 0), e, Field::I),
            (Form::FStore | Form::Store, [Fr(rs2) | Xr(rs2), Mem(e, rs)]) => return mem(i.x(0, *rs, *rs2), e, Field::S),
            (Form::Csr, [Xr(rd), c, Xr(rs)]) => Emit::Bytes(word(Inst { csr: csr(c)?, ..i.x(*rd, *rs, 0) })),
            (Form::CsrI, [Xr(rd), c, Imm(k)]) => {
                let u = u8::try_from(*k).ok().filter(|&u| u < 32).ok_or_else(|| format!("{k} 不是 5 位无符号数"))?;
                Emit::Bytes(word(Inst { csr: csr(c)?, ..i.x(*rd, u, 0) }))
            }
            (Form::R | Form::FR | Form::FCmp, [a, b, c]) => {
                let v = regs(&[a.clone(), b.clone(), c.clone()]).ok_or_else(bad)?;
                Emit::Bytes(word(i.x(v[0], v[1], v[2])))
            }
            (Form::FRrm, [a, b, c, rest @ ..]) => {
                let v = regs(&[a.clone(), b.clone(), c.clone()]).ok_or_else(bad)?;
                Emit::Bytes(word(Inst { rm: rm(rest)?, ..i.x(v[0], v[1], v[2]) }))
            }
            (Form::R4, [a, b, c, d, rest @ ..]) => {
                let v = regs(&[a.clone(), b.clone(), c.clone(), d.clone()]).ok_or_else(bad)?;
                Emit::Bytes(word(Inst { rs3: v[3], rm: rm(rest)?, ..i.x(v[0], v[1], v[2]) }))
            }
            (Form::FR1rm | Form::FCvtXF | Form::FCvtFX, [a, b, rest @ ..]) => {
                let v = regs(&[a.clone(), b.clone()]).ok_or_else(bad)?;
                Emit::Bytes(word(Inst { rm: rm(rest)?, ..i.x(v[0], v[1], 0) }))
            }
            (Form::FToX | Form::XToF, [a, b]) => {
                let v = regs(&[a.clone(), b.clone()]).ok_or_else(bad)?;
                Emit::Bytes(word(i.x(v[0], v[1], 0)))
            }
            (Form::Fixed, []) => Emit::Bytes(word(i)),
            _ => return Err(bad()),
        })
    }
}

/// ⭐ 这次编译开了的内置扩展（`src/feature/`，按 cargo feature）。
#[must_use]
pub fn builtin<'a>() -> Vec<&'a dyn Extension> {
    crate::feature::builtin()
}

/// 一段代码里的一条：地址、字节、文本。
pub struct Line<'b> {
    pub pc: u64,
    pub bytes: &'b [u8],
    pub text: String,
}

/// ⭐ 反汇编一段代码（给的扩展先认，再内置扩展、RV32I；都不认 ⇒ 4 字节 `<unknown>`，同 llvm-objdump）。
pub struct Disasm<'b, 'e> {
    data: &'b [u8],
    base: u64,
    at: usize,
    exts: Vec<&'e dyn Extension>,
    style: Style,
}

impl<'b, 'e> Disasm<'b, 'e> {
    #[must_use]
    pub fn new(data: &'b [u8], base: u64, exts: &[&'e dyn Extension], style: Style) -> Self {
        let mut all = exts.to_vec();
        all.extend(builtin());
        Self { data, base, at: 0, exts: all, style }
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
        let (n, text) = match Self::claim(&self.exts, &window) {
            Some((e, n)) if self.at + n <= self.data.len() => (n, e.print(&self.data[self.at..self.at + n], pc, self.style)),
            _ => {
                let w = u32::from_le_bytes([window[0], window[1], window[2], window[3]]);
                (4, Inst::<crate::isa::Rv32i>::try_from(w).map_or_else(|()| String::from("<unknown>"), |i| i.print(pc, self.style)))
            }
        };
        let n = n.min(self.data.len() - self.at);
        let bytes = &self.data[self.at..self.at + n];
        self.at += n;
        Some(Line { pc, bytes, text })
    }
}
