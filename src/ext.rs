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
//! ⭐ 写一张标准格式的指令表：`#[derive(Isa)]`（`crate::macros`）+ [`Std<表>`]，见 `src/feature/zmmul.rs`。
//! 先问扩展、再走标准表：扩展可以占用标准表里没有的编码（RISC-V 的 custom-0..3、低两位不是 `11` 的长指令）。
use crate::asm::Expr;
use crate::codegen::Sel;
use crate::isa::{Inst, Style, Table};
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
    /// 操作数原文（借汇编行的切片，⛔ 不复制）。
    pub raw: &'a [&'a str],
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

/// ⭐ **汇编**：助记符 + 操作数 ⇒ 字节。
///
/// 与 [`Disassemble`] 是**一组对偶**（像 `From` / `Into`），法则是
/// `disassemble(assemble(助记符, 操作数)) == (助记符, 操作数)`。
///
/// ⚠ 两个方向都得自己实现 —— 编码表推不出解码表。⭐ 但标准格式的指令表只要写一次：
/// `#[derive(Isa)]` 出一张表，[`Std<T>`] 从这**同一张表**同时给出两边。
pub trait Assemble {
    /// 助记符（小写）+ 操作数 ⇒ [`Emit`]；不是本模块的助记符 ⇒ `None`。
    fn assemble(&self, mnemonic: &str, args: &Args<'_>) -> Option<Result<Emit, String>> {
        let _ = (mnemonic, args);
        None
    }

    /// 这个助记符**可能**归本模块吗（⛔ 只看名字、不看操作数）。汇编器按助记符缓存结果，
    /// 每条指令只问命中的那个模块 ⇒ 挂了模块的宿主不必每条都把各家的伪指令表扫一遍。
    ///
    /// 缺省保守地认（`true`），行为与没有这个方法时相同；自己实现能少挨一次 [`Self::assemble`]。
    fn knows(&self, mnemonic: &str) -> bool {
        let _ = mnemonic;
        true
    }
}

/// ⭐ **反汇编**：字节 ⇒ 助记符 + 操作数。[`Assemble`] 的对偶，见那边的法则。
pub trait Disassemble {
    /// `bytes` 是 pc 处起的 8 个字节（越过节尾的补 0）⇒ 本模块的指令有几字节；不是本模块的 ⇒ `None`。
    fn decode(&self, bytes: &[u8; 8]) -> Option<usize>;

    /// 一条（`bytes` 恰好是 [`Self::decode`] 给的长度）⇒ 「助记符\t操作数」。
    fn print(&self, bytes: &[u8], pc: u64, style: Style) -> String;
}

/// ⭐⭐ 一个**扩展包**：汇编与反汇编两半，加上执行。
///
/// 运行时挂给 [`crate::asm::Assembler`]、[`Disassembler`] 与 [`Cpu`]
/// （⛔ 静态注册、编进二进制，不加载 `.so`）。
///
/// ⚠ 名字叫 `Module` 而不是 `Extension`：它是**一包东西**（一张表、一组语义），
/// 不是一条指令，也不是 `-mattr` 里的那个「扩展」——那个是 [`Self::name`] 的取值。
pub trait Module: Assemble + Disassemble {
    /// 名字（报错与 `--list` 用），同 `-mattr` 的写法（`m`、`f`、`x<厂商>`）。
    fn name(&self) -> &str;

    /// 执行一条：`cx.cpu.pc` 指着它。要改流向就设 `cx.next`，否则顺序往下（pc + 长度）。
    fn execute(&mut self, cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), Stop> {
        let _ = (cx, bytes);
        Ok(())
    }

    /// ⭐ **指令选择**：一条 [`crate::ir::Op::Custom`] ⇒ 若干条机器指令；不是本模块的 ⇒ `None`。
    ///
    /// ⭐⭐ 委派的粒度是**逐操作数**：每个操作数自己选 [`Sel::reg`] / [`Sel::temp`]
    /// （交给寄存器分配器）还是 [`Sel::phys`]（自己钉死，分配器看不见）。
    /// ⇒ 要复刻某一份飞过的字节就全钉死，要分配器帮忙就放开。
    ///
    /// 与 [`Self::execute`] 是一组对偶，法则是**语义相等**：选出来的指令在模拟器里
    /// 跑一遍，效果必须等于这条 op 的语义。⭐ riscvc 自带模拟器 ⇒ 这是**可执行的判据**，
    /// 不是口头约定。
    ///
    /// 缺省不参与代码生成（绝大多数扩展只要汇编 / 反汇编）。
    fn select(&self, cx: &mut Sel<'_, '_>) -> Option<Result<(), String>> {
        let _ = cx;
        None
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

impl Exec<'_, '_> {
    /// ⭐ 执行一条 32 位指令（RV32I 或内置扩展的），长度按 `len` 字节算（压缩指令还原出来的是 2）：
    /// 下一条的 pc 写进 [`Self::next`]。
    pub fn word(&mut self, w: u32, len: u32) -> Result<(), Stop> {
        let next = self.cpu.exec(self.devs, w, len)?;
        self.next = Some(next);
        Ok(())
    }
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

impl<T: Semantics> Disassemble for Std<T> {
    fn decode(&self, bytes: &[u8; 8]) -> Option<usize> {
        Self::inst(bytes).map(|_| 4)
    }

    fn print(&self, bytes: &[u8], pc: u64, style: Style) -> String {
        Self::inst(bytes).map_or_else(|| String::from("<unknown>"), |i| i.print(pc, style))
    }
}

impl<T: Semantics> Assemble for Std<T> {
    fn knows(&self, mnemonic: &str) -> bool {
        mnemonic.parse::<T>().is_ok() || T::PSEUDOS.iter().any(|(pat, _)| pat.split([' ', '\t']).next() == Some(mnemonic))
    }

    fn assemble(&self, mnemonic: &str, args: &Args<'_>) -> Option<Result<Emit, String>> {
        if let Some(text) = T::PSEUDOS.iter().find_map(|(pat, exp)| Template::expand(pat, exp, mnemonic, args)) {
            return Some(Ok(Emit::Text(text)));
        }
        let op: T = mnemonic.parse().ok()?;
        // 按这条的格式（Layout）：字段 + 修补点
        Some(op.assemble(args).map(|(f, fixups)| {
            let bytes = u32::from(f.with_op(op)).to_le_bytes().to_vec();
            if fixups.is_empty() { Emit::Bytes(bytes) } else { Emit::Fixed(bytes, fixups) }
        }))
    }
}

impl<T: Semantics> Module for Std<T> {
    fn name(&self) -> &str {
        T::ALL.first().map_or("?", |op| op.ext())
    }

    fn execute(&mut self, cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), Stop> {
        let i = Self::inst(bytes).ok_or(Stop::Trap(Self::word(bytes)))?;
        i.op.execute(cx, &i)
    }

    /// ⭐ `<扩展名>.<助记符>`（`xtheadsync.th.sync.i`、`xtheadcmo.th.dcache.cipa %a`）⇒ 这一条：
    /// 结果（有的话）是 rd，操作数依次是 rs1、rs2 …，全是整数寄存器、交给分配器。
    /// ⚠ 只管纯寄存器的格式：带立即数 / 浮点寄存器的发出来汇编器会报错（⛔ 静默编错）。
    fn select(&self, cx: &mut Sel<'_, '_>) -> Option<Result<(), String>> {
        let m = cx.name().strip_prefix(self.name())?.strip_prefix('.')?;
        let op: T = m.parse().ok()?;
        let template = op.name().to_owned();
        Some((|| {
            let uses = (0..cx.arity()).map(|n| cx.reg(n)).collect::<Result<Vec<_>, _>>()?;
            let def = cx.has_result().then(|| cx.temp(false));
            let slots = vec!["x{}"; def.iter().count() + uses.len()].join(", ");
            cx.emit(&if slots.is_empty() { template } else { format!("{template}\t{slots}") }, 4, def.as_slice(), &uses);
            if def.is_some() {
                cx.bind(def.as_slice());
            }
            Ok(())
        })())
    }
}

/// 伪指令模板：`助记符 $名[:类], …`（类：`x` 整数寄存器、`f` 浮点寄存器、`i` 常数，不写 = 任意）。
struct Template;

impl Template {
    /// 模板对上了 ⇒ 展开（`$名` 换成原文）。
    fn expand(pattern: &str, expansion: &str, mnemonic: &str, args: &Args<'_>) -> Option<String> {
        // 先比助记符（几乎都对不上，⛔ 每条都切一遍模板）
        let rest = pattern.strip_prefix(mnemonic)?;
        if !rest.is_empty() && !rest.starts_with(char::is_whitespace) {
            return None;
        }
        let params = rest.trim_start();
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
            binds.push((name, *raw));
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

/// 一段代码里的一条：地址、字节、文本。
pub struct Line<'b> {
    pub pc: u64,
    pub bytes: &'b [u8],
    pub text: String,
}

/// ⭐ 反汇编器：挂上模块与打印风格，[`Self::lines`] 反汇编一段。
///
/// 认的次序：给的模块先认，再目标里的（缺省 [`crate::feature::Target::default`]：M / Zmmul / F / Zicsr），最后 RV32I；
/// 都不认 ⇒ 4 字节 `<unknown>`（同 llvm-objdump）。
#[derive(Default)]
pub struct Disassembler<'m> {
    mods: Vec<&'m dyn Module>,
    target: crate::feature::Target<'m>,
    style: Style,
}

impl<'m> Disassembler<'m> {
    #[must_use]
    pub fn new() -> Self {
        Self::default()
    }

    /// 挂上扩展包（借用），排在内置的前面。
    #[must_use]
    pub fn modules(mut self, mods: &[&'m dyn Module]) -> Self {
        self.mods.extend_from_slice(mods);
        self
    }

    /// ⭐ 目标（挂哪些内置扩展；缺省 `rv32imf_zicsr_zmmul`）。
    #[must_use]
    pub fn target(mut self, target: crate::feature::Target<'m>) -> Self {
        self.target = target;
        self
    }

    /// 打印风格（同 llvm-objdump 的 `-M`）。
    #[must_use]
    pub const fn style(mut self, style: Style) -> Self {
        self.style = style;
        self
    }

    /// ⭐ 反汇编 `base` 处起的一段，逐条给出。
    #[must_use]
    pub fn lines<'b>(&self, data: &'b [u8], base: u64) -> Lines<'b, 'm> {
        let mut all = self.mods.clone();
        all.extend_from_slice(self.target.modules());
        let rvc = all.iter().any(|m| m.name() == "c");
        let style = Style { no_float_csr: self.style.no_float_csr || !all.iter().any(|m| m.name() == "f"), ..self.style };
        Lines { data, base, at: 0, mods: all, style, rvc }
    }

    /// pc 处起的 8 个字节（越过末尾补 0）。
    #[must_use]
    pub fn window(data: &[u8], at: usize) -> [u8; 8] {
        let mut w = [0; 8];
        let n = data.len().saturating_sub(at).min(8);
        w[..n].copy_from_slice(&data[at..at + n]);
        w
    }

    /// 哪个模块认这几个字节、长度几何。
    #[must_use]
    pub fn claim<'x>(mods: &'x [&'x dyn Module], window: &[u8; 8]) -> Option<(&'x dyn Module, usize)> {
        mods.iter().find_map(|&e| e.decode(window).map(|n| (e, n)))
    }
}

/// 一段代码的逐条反汇编（由 [`Disassembler::lines`] 给）。
pub struct Lines<'b, 'm> {
    data: &'b [u8],
    base: u64,
    at: usize,
    mods: Vec<&'m dyn Module>,
    style: Style,
    /// 挂了 C：认不出的 16 位也只占 2 字节。
    rvc: bool,
}

impl<'b> Iterator for Lines<'b, '_> {
    type Item = Line<'b>;

    fn next(&mut self) -> Option<Line<'b>> {
        if self.at >= self.data.len() {
            return None;
        }
        let pc = self.base + self.at as u64;
        let window = Disassembler::window(self.data, self.at);
        let (n, text) = match Disassembler::claim(&self.mods, &window) {
            Some((e, n)) if self.at + n <= self.data.len() => (n, e.print(&self.data[self.at..self.at + n], pc, self.style)),
            // 开了 C：低两位不是 11 的是 16 位（认不出也只占 2 字节，同 llvm-objdump）
            _ if self.rvc && window[0] & 3 != 3 => (2, String::from("<unknown>")),
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
