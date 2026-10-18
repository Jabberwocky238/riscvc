//! 函数级对拍：同一个函数两份目标代码（riscvc 的、llc 的），各自链成镜像，在解释器里用同样的实参调用，
//! 比停机方式、返回值、指针实参指向的内存、全局数据对象。只测标量签名（整数 ≤ 64 位 / 指针 / float / double，
//! 实参全在寄存器里，ilp32f）。
//!
//! 两边链同一份库（[`Lib`]：桩 + riscvc 编的 compiler-rt builtins，按需挑），两边都没有的符号解析成 0（调到就陷入）。
//! ⚠ 两个镜像的布局不同：返回的指针按「符号 + 偏移」比；任何一边跑到步数上限 ⇒ 这个函数后面的调用都不比了
//! （快慢不算结果；实参决定循环次数的函数，一次到顶往往次次到顶）。
use object::{Object, ObjectSection, ObjectSymbol, SymbolKind};
use riscvc::ir::{Function, Kind, Module, Ty, Types};
use riscvc::sim::{Cpu, Stop};
use super::Rng;
use std::collections::{BTreeMap, BTreeSet};

pub const SCRIPT: &str = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n  .rodata : { *(.rodata*) *(.srodata*) }\n  .data : { *(.data*) *(.sdata*) }\n  .bss : { *(.bss*) *(.sbss*) *(COMMON) }\n}\n";
const RET: u32 = 0x0fff_fff0;
const STACK: u32 = 0x7ff0_0000;
const BUF: u32 = 0x6000_0000;
const BUF_SIZE: u32 = 512;
const STEPS: u64 = 200_000;
/// 只有一边跑到步数上限时，那边放大多少倍重跑。
const SLOW: u64 = 100;

/// 参数 / 返回值的一类：整数（位宽、符号扩展、零扩展）、指针、float、double。
#[derive(Clone, Copy, Debug)]
pub enum Arg {
    Int(u32, bool, bool),
    Ptr,
    Float,
    Double,
}

impl Arg {
    fn of(types: &Types, t: Ty, signext: bool, zeroext: bool) -> Option<Self> {
        Some(match types.kind(t) {
            Kind::Int(w) if *w <= 64 => Self::Int(*w, signext, zeroext),
            Kind::Ptr => Self::Ptr,
            Kind::Float => Self::Float,
            Kind::Double => Self::Double,
            _ => return None,
        })
    }

    /// 占几个整数寄存器。
    const fn xregs(self) -> usize {
        match self {
            Self::Int(w, ..) if w > 32 => 2,
            Self::Double => 2,
            Self::Float => 0,
            _ => 1,
        }
    }
}

/// 实参的取值范围。
#[derive(Clone, Copy, PartialEq, Eq)]
pub enum Domain {
    /// 全范围、偏向边界值。
    Any,
    /// 整数不取 0（C 源里的除以零、ctz / clz 的 0 是未定义行为）。
    NonZero,
    /// 整数取 0..位宽（i64 的移位量 0..63 全覆盖）、浮点取 -100..100 的整数：查一个差异是不是只出在定义域外
    /// （移位量 ≥ 位宽一类 poison）。⚠ 只是分诊：在这里一致不等于对，登记前逐项看 IR。
    Small,
}

/// 一个可测的签名。
#[derive(Clone, Debug)]
pub struct Sig {
    pub name: String,
    pub args: Vec<Arg>,
    pub ret: Option<Arg>,
}

impl Sig {
    /// 标量、实参全在寄存器里、有定义、全局可见 ⇒ 可测。
    pub fn of(m: &Module, f: &Function) -> Option<Self> {
        if f.blocks.is_empty() || f.linkage.local() || f.varargs {
            return None;
        }
        let args: Vec<Arg> = f.params.iter().map(|p| Arg::of(&m.types, p.ty, p.attrs.signext, p.attrs.zeroext)).collect::<Option<_>>()?;
        let ret = if f.ret == Types::VOID { None } else { Some(Arg::of(&m.types, f.ret, f.ret_attrs.signext, f.ret_attrs.zeroext)?) };
        let fits = args.iter().map(|a| a.xregs()).sum::<usize>() <= 8 && args.iter().filter(|a| matches!(a, Arg::Float)).count() <= 8;
        fits.then(|| Self { name: f.name.clone(), args, ret })
    }
}

/// 两边共用的库：按需挑（同静态库），⛔ 和已有定义重名的不要。
pub struct Lib {
    objs: Vec<(String, Vec<u8>, BTreeSet<String>)>,
    /// 全部链上（⛔ 按需挑）：一个 crate 一个目标文件的（Rust 的 core、compiler_builtins），整份都要。
    whole: bool,
}

impl Lib {
    /// 桩（`tests/fixtures/support/ilp32f`）+ riscvc 编的 builtins（`tests/fixtures/builtins/*.O2.mlir`）。
    pub fn load() -> Self {
        let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures");
        let mut objs: Vec<(String, Vec<u8>)> = ["support.o", "mulsi3.o"].iter().map(|n| (String::from(*n), std::fs::read(root.join("support/ilp32f").join(n)).unwrap())).collect();
        let mut builtins: Vec<_> = std::fs::read_dir(root.join("builtins")).unwrap().map(|e| e.unwrap().path()).filter(|p| p.to_str().unwrap().ends_with(".O2.mlir")).collect();
        builtins.sort();
        for p in builtins {
            let text = std::fs::read_to_string(&p).unwrap();
            let Ok(asm) = Module::try_from(text.as_str()).map_err(|e| e.to_string()).and_then(|m| m.compile().map_err(|e| e.to_string())) else { continue };
            if let Ok(obj) = riscvc::asm::Assembler::new().assemble(&asm) {
                objs.push((p.file_name().unwrap().to_string_lossy().into_owned(), obj));
            }
        }
        Self::of(objs, false)
    }

    /// 给定的库对象；`whole` ⇒ 全部链上。
    pub fn of(objs: Vec<(String, Vec<u8>)>, whole: bool) -> Self {
        Self { objs: objs.into_iter().map(|(n, b)| { let defs = Self::symbols(&b).0; (n, b, defs) }).collect(), whole }
    }

    /// （定义的全局符号, 引用而没定义的）。
    fn symbols(obj: &[u8]) -> (BTreeSet<String>, BTreeSet<String>) {
        let (mut defs, mut undef) = (BTreeSet::new(), BTreeSet::new());
        for s in object::File::parse(obj).unwrap().symbols().filter(|s| s.is_global()) {
            let name = String::from(s.name().unwrap());
            if s.is_undefined() { undef.insert(name) } else { defs.insert(name) };
        }
        (defs, undef)
    }

    /// `obj` 加上它（传递地）要的库对象。
    fn with<'s>(&'s self, name: &'s str, obj: &'s [u8]) -> Vec<(&'s str, &'s [u8])> {
        let (mut defs, mut need) = Self::symbols(obj);
        let mut out = vec![(name, obj)];
        if self.whole {
            out.extend(self.objs.iter().map(|(n, b, _)| (n.as_str(), b.as_slice())));
            return out;
        }
        let mut taken = vec![false; self.objs.len()];
        loop {
            let pick = self.objs.iter().enumerate().find(|(k, (_, _, d))| !taken[*k] && d.iter().any(|s| need.contains(s) && !defs.contains(s)) && d.is_disjoint(&defs));
            let Some((k, (n, b, d))) = pick else { break };
            taken[k] = true;
            defs.extend(d.iter().cloned());
            need.extend(Self::symbols(b).1);
            out.push((n.as_str(), b.as_slice()));
        }
        out
    }
}

/// 一个链好的镜像。
pub struct Image {
    cpu: Cpu,
    /// 全局符号 ⇒ 地址。
    funcs: BTreeMap<String, u32>,
    /// 全部函数符号（含局部的）：地址 ⇒ 名字（数据里的函数指针按名字比）。
    code: BTreeMap<u32, String>,
    /// 有名字的数据对象（含局部的、只读的）：（地址, 大小, 名字, 可写）。只读的不比（写不了），但地址翻译要它们。
    data: Vec<(u32, u32, String, bool)>,
    /// 只读节的范围：没有符号的只读常量（llc 的 `.Lalloc_…` 链接后不留符号）按内容认。
    rodata: Vec<(u32, u32)>,
}

impl Outcome {
    /// 停机方式：陷入按种类比（⛔ 按编码：`unimp` 与 `c.unimp`、`ebreak` 与 `c.ebreak` 一回事，开 C 时两边一个压缩一个不压缩）。
    fn trap(stop: &Stop) -> String {
        match *stop {
            Stop::Trap(w) if w == 0xc000_1073 || w & 0xffff == 0 => String::from("陷入 unimp"),
            Stop::Trap(w) if w == 0x0010_0073 || w & 0xffff == 0x9002 => String::from("陷入 ebreak"),
            Stop::Trap(0x73) => String::from("陷入 ecall"),
            Stop::Trap(w) => format!("陷入 {w:#010x}"),
            ref s => format!("{s:?}"),
        }
    }
}

/// 一次调用的结果（可比的）。
#[derive(Debug, PartialEq, Eq)]
struct Outcome {
    /// 停机方式；陷入按指令种类（[`Outcome::trap`]）。
    stop: String,
    ret: String,
    bufs: Vec<Vec<u8>>,
    /// 按名字排（⛔ 按地址：两边布局不同，合并字符串节还会重排）。
    globals: BTreeMap<String, Vec<u8>>,
}

impl Image {
    pub fn link(lib: &Lib, name: &str, obj: &[u8]) -> Result<Self, String> {
        let mut inputs = lib.with(name, obj);
        // 谁都没定义的函数（libm 一类：llc 可能把 floorf 之类内联掉，riscvc 照样调）⇒ 桩：调到就陷入 unimp。
        // ⛔ 解析成 0：跳到 0 地址跑进镜像开头的代码，死循环到步数上限，和「慢」混在一起。
        let stub = Self::stubs(&inputs);
        inputs.push(("stubs.o", &stub));
        let elf = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(SCRIPT)), allow_undefined: true, ..Default::default() }, &inputs).map_err(|e| format!("链接：{e}"))?;
        let mut cpu = Cpu::default();
        cpu.load(&elf).map_err(|e| format!("装载：{e}"))?;
        let file = object::File::parse(elf.as_slice()).unwrap();
        let funcs = file.symbols().filter(|s| s.is_global() && s.is_definition()).map(|s| (String::from(s.name().unwrap()), u32::try_from(s.address()).unwrap())).collect();
        let code = file.symbols().filter(|s| s.kind() == SymbolKind::Text && s.is_definition()).map(|s| (u32::try_from(s.address()).unwrap(), String::from(s.name().unwrap()))).collect();
        // 只比本文件的数据对象（库里的 `seed` 之类两边一样，比也无妨）
        let writable = |s: &object::Symbol<'_, '_>| s.section_index().and_then(|i| file.section_by_index(i).ok()).is_some_and(|sec| sec.name().is_ok_and(|n| n != ".rodata"));
        let mut data: Vec<(u32, u32, String, bool)> = file
            .symbols()
            .filter(|s| s.kind() == SymbolKind::Data && s.size() > 0)
            // private 的全局：llc 叫 `.Lalloc_…`、riscvc 叫 `alloc_…` ⇒ 去掉 `.L` 再比
            .map(|s| (u32::try_from(s.address()).unwrap(), u32::try_from(s.size()).unwrap(), String::from(s.name().unwrap().trim_start_matches(".L")), writable(&s)))
            .collect();
        data.sort();
        let rodata = file.sections().filter(|s| s.name().is_ok_and(|n| n.starts_with(".rodata") || n.starts_with(".srodata"))).map(|s| (u32::try_from(s.address()).unwrap(), u32::try_from(s.size()).unwrap())).collect();
        Ok(Self { cpu, funcs, code, data, rodata })
    }

    /// 直接按寄存器调（诊断用）：回 (停机方式, a0, a1)。
    pub fn call_raw(&self, f: &str, xs: &[u32]) -> (String, u32, u32) {
        let mut cpu = self.cpu.clone();
        cpu.x[10..10 + xs.len()].copy_from_slice(xs);
        cpu.x[2] = STACK;
        let stop = cpu.run(self.funcs[f], RET, STEPS);
        (format!("{stop:?}"), cpu.x[10], cpu.x[11])
    }

    /// 输入里引用了、谁都没定义的全局符号 ⇒ 每个一条 `unimp` 的目标文件。
    fn stubs(inputs: &[(&str, &[u8])]) -> Vec<u8> {
        let (mut defs, mut used) = (BTreeSet::new(), BTreeSet::new());
        for (_, obj) in inputs {
            let (d, u) = Lib::symbols(obj);
            defs.extend(d);
            used.extend(u);
        }
        let asm: String = used.difference(&defs).map(|n| format!("    .globl {n}\n{n}:\n    unimp\n")).collect();
        riscvc::asm::Assembler::new().assemble(&format!("    .text\n{asm}")).unwrap()
    }

    /// 地址 ⇒ 「符号+偏移」（落在实参缓冲区里 ⇒ `buf+偏移`）。
    fn place(&self, a: u32) -> String {
        if (BUF..BUF + 8 * BUF_SIZE).contains(&a) {
            return format!("buf+{:#x}", a - BUF);
        }
        // 只读的一律按内容认（⛔ 按名字：llc 的 private 常量链接后没有符号，riscvc 的有，两边认法会不一样）
        if let Some(c) = self.constant(a) {
            return c;
        }
        match self.data.iter().rev().find(|(at, size, ..)| (*at..at + size.max(&1)).contains(&a)) {
            Some((at, _, n, _)) => format!("{n}+{:#x}", a - at),
            None => self.code.get(&a).cloned().unwrap_or_else(|| format!("{a:#x}")),
        }
    }

    /// 只读节里的地址 ⇒ 「rodata」：只要求两边都指向只读常量。⚠ ⛔ 按名字（llc 的 private 常量 `.Lalloc_…` 链接后
    /// 没有符号，riscvc 的有）、⛔ 按内容（没有符号就不知道对象多大，读多读少两边不一样）。常量本身的字节由
    /// 数据段的对拍（lit / llc_vs_llc 的全局比较、ld_vs_lld）另外覆盖。
    fn constant(&self, a: u32) -> Option<String> {
        self.rodata.iter().any(|(at, size)| (*at..at + size).contains(&a)).then(|| String::from("rodata"))
    }

    /// 全局数据里的指针（对齐的字、落在某个符号上）换成「符号+偏移」的哈希：两边布局不同，地址不能直接比。
    /// ⚠ 只在原样不等时才用（普通整数碰巧落在地址范围里，两边会换成不同的符号）。
    fn symbolic(&self, mut bytes: Vec<u8>) -> Vec<u8> {
        for w in bytes.chunks_exact_mut(4) {
            let a = u32::from_le_bytes([w[0], w[1], w[2], w[3]]);
            let at = self.place(a);
            if a >= 0x1_0000 && !at.starts_with("0x") && !at.starts_with("buf") {
                let h = at.bytes().fold(0x811c_9dc5u32, |h, b| (h ^ u32::from(b)).wrapping_mul(0x0100_0193));
                w.copy_from_slice(&h.to_le_bytes());
            }
        }
        bytes
    }

    #[allow(clippy::too_many_arguments, reason = "一次调用的全部输入")]
    fn call(&self, entry: u32, sig: &Sig, xs: &[u32], fs: &[u32], bufs: &[(u32, Vec<u8>)], common: &BTreeSet<&str>, steps: u64) -> Option<Outcome> {
        let mut cpu = self.cpu.clone();
        for (addr, data) in bufs {
            cpu.mem.write(*addr, data);
        }
        cpu.x[10..10 + xs.len()].copy_from_slice(xs);
        cpu.f[10..10 + fs.len()].copy_from_slice(fs);
        cpu.x[2] = STACK;
        let stop = cpu.run(entry, RET, steps);
        let ret = match (sig.ret, &stop) {
            (_, Stop::Limit) => return None,
            (_, Stop::Trap(_)) | (None, _) => String::new(),
            (Some(Arg::Int(w, ..)), _) if w > 32 => format!("{:#x}", u64::from(cpu.x[10]) | u64::from(cpu.x[11]) << 32),
            // 带 signext / zeroext 的返回值：高位也是约定的一部分
            (Some(Arg::Int(_, true, _) | Arg::Int(_, _, true)), _) => format!("{:#x}", cpu.x[10]),
            (Some(Arg::Int(w, ..)), _) => format!("{:#x}", u64::from(cpu.x[10]) & ((1u64 << w) - 1)),
            (Some(Arg::Ptr), _) => self.place(cpu.x[10]),
            (Some(Arg::Float), _) => format!("{:#x}", cpu.f[10]),
            (Some(Arg::Double), _) => format!("{:#x}", u64::from(cpu.x[10]) | u64::from(cpu.x[11]) << 32),
        };
        let read = |at: u32, n: u32| {
            let mut out = vec![0; n as usize];
            cpu.mem.read(at, &mut out);
            out
        };
        let bufs = bufs.iter().map(|(at, d)| read(*at, u32::try_from(d.len()).unwrap())).collect();
        let globals = self.data.iter().filter(|(_, _, name, w)| *w && common.contains(name.as_str())).map(|(at, n, name, _)| (name.clone(), read(*at, *n))).collect();
        Some(Outcome { stop: Outcome::trap(&stop), ret, bufs, globals })
    }
}

/// 两个镜像里同一个函数的对拍。
pub struct Pair<'i> {
    ours: &'i Image,
    theirs: &'i Image,
    /// 两边都有的数据对象（只比这些；私有常量之类的名字两边不一定一样）。
    common: BTreeSet<&'i str>,
}

impl<'i> Pair<'i> {
    pub fn new(ours: &'i Image, theirs: &'i Image) -> Self {
        let names = |i: &'i Image| i.data.iter().map(|(_, _, n, _)| n.as_str()).collect::<BTreeSet<_>>();
        Self { ours, theirs, common: names(ours).intersection(&names(theirs)).copied().collect() }
    }

    /// 用 `calls` 组随机实参比一个函数：Ok(比了几次) / Err(第一个不同)。两边有一边没这个符号 ⇒ Ok(0)。
    pub fn compare(&self, sig: &Sig, rng: &mut Rng, calls: usize, domain: Domain) -> Result<usize, String> {
        let (Some(&ea), Some(&eb)) = (self.ours.funcs.get(&sig.name), self.theirs.funcs.get(&sig.name)) else { return Ok(0) };
        let mut runs = 0;
        for _ in 0..calls {
            let (mut xs, mut fs, mut shown, mut bufs) = (Vec::new(), Vec::new(), Vec::new(), Vec::new());
            for (k, arg) in sig.args.iter().enumerate() {
                match *arg {
                    Arg::Int(w, signext, _) => {
                        let mut v = if domain == Domain::Small { rng.next() % u64::from(w.clamp(2, 64)) } else { rng.int(w) };
                        while domain == Domain::NonZero && v == 0 {
                            v = rng.int(w);
                        }
                        shown.push(format!("{v:#x}"));
                        if w > 32 {
                            xs.extend([v as u32, (v >> 32) as u32]);
                        } else {
                            xs.push(if signext && w < 32 { ((v << (64 - w)) as i64 >> (64 - w)) as u32 } else { v as u32 });
                        }
                    }
                    Arg::Ptr => {
                        let addr = BUF + BUF_SIZE * u32::try_from(k).unwrap();
                        bufs.push((addr, (0..BUF_SIZE).map(|_| rng.next() as u8).collect::<Vec<u8>>()));
                        xs.push(addr + BUF_SIZE / 4);
                        shown.push(format!("ptr{k}"));
                    }
                    Arg::Float => {
                        let v = if domain == Domain::Small { ((rng.next() % 200) as f32 - 100.0).to_bits() } else { rng.float() };
                        shown.push(format!("{}", f32::from_bits(v)));
                        fs.push(v);
                    }
                    Arg::Double => {
                        let v = if domain == Domain::Small { ((rng.next() % 200) as f64 - 100.0).to_bits() } else { rng.double() };
                        shown.push(format!("{}", f64::from_bits(v)));
                        xs.extend([v as u32, (v >> 32) as u32]);
                    }
                }
            }
            // 跑到步数上限：两边都到 ⇒ 这个函数后面不比了（慢不算错）；只有一边到 ⇒ 那边放大 SLOW 倍重跑（两边快慢
            // 不同：riscvc 的 O0 排序比 llc 慢几倍），⚠ 还到 ⇒ 结果不同（死循环 —— 改坏的 gcd 就是这样，⛔ 当成「慢」放过）
            let run = |img: &Image, e: u32, steps: u64| img.call(e, sig, &xs, &fs, &bufs, &self.common, steps);
            let (a, b) = (run(self.ours, ea, STEPS), run(self.theirs, eb, STEPS));
            let (a, b) = match (a, b) {
                (None, Some(b)) => (run(self.ours, ea, STEPS * SLOW), Some(b)),
                (Some(a), None) => (Some(a), run(self.theirs, eb, STEPS * SLOW)),
                ab => ab,
            };
            let (a, b) = match (a, b) {
                (Some(a), Some(b)) => (a, b),
                (None, None) => break,
                (a, b) => {
                    let show = |o: &Option<Outcome>| o.as_ref().map_or_else(|| String::from("跑到步数上限"), |o| format!("{} {}", o.stop, o.ret));
                    return Err(format!("{}({})：riscvc {}  ≠  llc {}", sig.name, shown.join(", "), show(&a), show(&b)));
                }
            };
            runs += 1;
            // 全局：原样相等，或把指针换成符号后相等
            let same = a.stop == b.stop
                && a.ret == b.ret
                && a.bufs == b.bufs
                && a.globals.iter().zip(&b.globals).all(|((_, x), (_, y))| x == y || self.ours.symbolic(x.clone()) == self.theirs.symbolic(y.clone()));
            if !same {
                let what = if a.stop != b.stop || a.ret != b.ret {
                    format!("riscvc {} {}  ≠  llc {} {}", a.stop, a.ret, b.stop, b.ret)
                } else if a.bufs != b.bufs {
                    String::from("指针实参指向的内存不同")
                } else {
                    let diff = a.globals.iter().zip(&b.globals).find(|(x, y)| x != y).map_or_else(String::new, |((name, x), (_, y))| {
                        let at = x.iter().zip(y).position(|(p, q)| p != q).unwrap_or(0);
                        format!("{name}+{at:#x}：{:02x?} ≠ {:02x?}", &x[at..x.len().min(at + 16)], &y[at..y.len().min(at + 16)])
                    });
                    format!("全局 {diff} 不同")
                };
                return Err(format!("{}({})：{what}", sig.name, shown.join(", ")));
            }
        }
        Ok(runs)
    }
}
