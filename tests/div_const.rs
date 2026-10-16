//! 除以常数（`codegen/isel/divc.rs`：移位、乘魔数）对真值：udiv / urem / sdiv / srem × i32 / i16 / i8，
//! 一批除数各编一个函数（窄的：i32 实参截断、算、再扩展回 i32），riscvc 编、链、在解释器里跑一批被除数，
//! 和 Rust 的整数除法比。⛔ 不要 LLVM：判据是算术本身。
use object::{Object, ObjectSymbol};
use riscvc::sim::{Cpu, Stop};
use std::fmt::Write as _;

const SCRIPT: &str = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n}\n";
const RET: u32 = 0x0fff_fff0;
const STACK: u32 = 0x7ff0_0000;

#[derive(Clone, Copy, Debug, PartialEq)]
enum Op {
    UDiv,
    URem,
    SDiv,
    SRem,
}

impl Op {
    fn name(self) -> &'static str {
        match self {
            Self::UDiv => "udiv",
            Self::URem => "urem",
            Self::SDiv => "sdiv",
            Self::SRem => "srem",
        }
    }

    fn signed(self) -> bool {
        matches!(self, Self::SDiv | Self::SRem)
    }

    /// `w` 位上的真值（结果按 `w` 位扩展回 i32：有符号的符号扩展、无符号的零扩展）；未定义（÷0、MIN ÷ −1）⇒ `None`。
    fn eval(self, x: u32, d: u32, w: u32) -> Option<u32> {
        let m = if w == 32 { u32::MAX } else { (1 << w) - 1 };
        let s = |v: u32| ((v & m) << (32 - w)).cast_signed() >> (32 - w);
        let r = match self {
            Self::UDiv => (x & m).checked_div(d & m)?,
            Self::URem => (x & m).checked_rem(d & m)?,
            Self::SDiv => s(x).checked_div(s(d)).map(|q| q.cast_unsigned())? & m,
            Self::SRem => s(x).checked_rem(s(d)).map(|q| q.cast_unsigned())? & m,
        };
        if self.signed() { Some(s(r).cast_unsigned()) } else { Some(r) }
    }
}

/// 一个函数：`f(x) = ext(trunc(x) op d)`。
fn function(name: &str, op: Op, d: u32, w: u32) -> String {
    let m = if w == 32 { u32::MAX } else { (1 << w) - 1 };
    let lit = (((d & m) << (32 - w)).cast_signed() >> (32 - w)).to_string();
    let (t, ext) = (format!("i{w}"), if op.signed() { "llvm.sext" } else { "llvm.zext" });
    let mut s = format!("\"llvm.func\"() <{{function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = \"{name}\"}}> ({{\n^bb0(%x: i32):\n");
    let input = if w == 32 { "%x" } else {
        let _ = writeln!(s, "  %t = \"llvm.trunc\"(%x) : (i32) -> {t}");
        "%t"
    };
    let _ = writeln!(s, "  %c = \"llvm.mlir.constant\"() <{{value = {lit} : {t}}}> : () -> {t}");
    let _ = writeln!(s, "  %q = \"llvm.{}\"({input}, %c) : ({t}, {t}) -> {t}", op.name());
    if w == 32 {
        let _ = writeln!(s, "  \"llvm.return\"(%q) : (i32) -> ()");
    } else {
        let _ = writeln!(s, "  %r = \"{ext}\"(%q) : ({t}) -> i32\n  \"llvm.return\"(%r) : (i32) -> ()");
    }
    s.push_str("}) : () -> ()\n");
    s
}

/// 除数：2 的幂、小奇数 / 偶数、10 的幂、魔数要加法修正的（7、641 …）、2³¹ 附近、全 1，再加负数（有符号）。
fn divisors(w: u32) -> Vec<u32> {
    let mut d: Vec<u32> = vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 25, 60, 64, 100, 125, 127, 128, 255, 641, 1000, 1023, 1024, 4095, 4096, 65535, 65536, 1_000_000_000, 0x7fff_ffff, 0x8000_0000, 0x8000_0001, 0xffff_fffe, 0xffff_ffff];
    d.extend([-1i32, -2, -3, -5, -7, -10, -16, -1000, -1024, i32::MIN + 1].map(i32::cast_unsigned));
    let m = if w == 32 { u32::MAX } else { (1 << w) - 1 };
    let mut d: Vec<u32> = d.into_iter().map(|x| x & m).filter(|&x| x != 0).collect();
    d.sort_unstable();
    d.dedup();
    d
}

fn dividends() -> Vec<u32> {
    let mut x: Vec<u32> = vec![0, 1, 2, 3, 7, 9, 10, 99, 100, 101, 127, 128, 255, 256, 32767, 32768, 65535, 65536, 0x7fff_ffff, 0x8000_0000, 0x8000_0001, 0xffff_fffe, 0xffff_ffff];
    let mut s = 0x9e37_79b9_7f4a_7c15u64;
    for _ in 0..200 {
        s ^= s << 13;
        s ^= s >> 7;
        s ^= s << 17;
        x.push((s >> 32) as u32 >> (s as u32 % 32));
        x.push((s >> 16) as u32);
    }
    x
}

#[test]
fn division_by_constants_matches_arithmetic() {
    let mut src = String::new();
    let mut cases = Vec::new();
    for w in [32, 16, 8] {
        for op in [Op::UDiv, Op::URem, Op::SDiv, Op::SRem] {
            for d in divisors(w) {
                let name = format!("{}_i{w}_{d:x}", op.name());
                src.push_str(&function(&name, op, d, w));
                cases.push((name, op, d, w));
            }
        }
    }
    let module = riscvc::ir::Module::try_from(src.as_str()).expect("解析");
    let asm = module.compile().expect("代码生成");
    let obj = riscvc::asm::Assembler::new(riscvc::asm::Options::default()).assemble(&asm).expect("汇编");
    let elf = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(SCRIPT)), ..Default::default() }, &[("div.o", obj.as_slice())]).expect("链接");
    let file = object::File::parse(elf.as_slice()).unwrap();
    let addr = |n: &str| file.symbols().find(|s| s.name() == Ok(n)).map(|s| u32::try_from(s.address()).unwrap()).unwrap();
    let mut cpu = Cpu::default();
    cpu.load(&elf).unwrap();
    let (xs, mut bad, mut n) = (dividends(), Vec::new(), 0);
    for (name, op, d, w) in &cases {
        let at = addr(name);
        for &x in &xs {
            let Some(expect) = op.eval(x, *d, *w) else { continue };
            cpu.x[2] = STACK;
            cpu.x[10] = x;
            assert_eq!(cpu.run(at, RET, 10_000), Stop::Returned, "{name}({x:#x}) 没返回");
            n += 1;
            if cpu.x[10] != expect {
                bad.push(format!("{name}({x:#x}) = {:#x}，应当是 {expect:#x}", cpu.x[10]));
            }
        }
    }
    for b in bad.iter().take(20) {
        eprintln!("✗ {b}");
    }
    eprintln!("{} 个函数、{n} 次调用，{} 次不对", cases.len(), bad.len());
    assert!(bad.is_empty());
}
