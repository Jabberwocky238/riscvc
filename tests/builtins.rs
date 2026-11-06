//! `riscvc::builtins` 的 i64 除 / 余对真值：代码生成把 i64 的 udiv / sdiv / urem / srem 落成 `__udivdi3` 一类的调用，
//! 链上 `Builtin::I64_DIVMOD`（⛔ compiler-rt）在解释器里跑一批操作数，和 Rust 的整数除法比。⛔ 不要 LLVM：判据是算术本身。
use object::{Object, ObjectSymbol};
use riscvc::builtins::Builtin;
use riscvc::sim::{Cpu, Stop};
use std::fmt::Write as _;

const SCRIPT: &str = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n}\n";
const RET: u32 = 0x0fff_fff0;
const STACK: u32 = 0x7ff0_0000;
const OPS: [&str; 4] = ["udiv", "sdiv", "urem", "srem"];

#[allow(clippy::cast_sign_loss, clippy::cast_possible_wrap, reason = "同一个 64 位字按有 / 无符号看")]
fn eval(op: &str, x: i64, y: i64) -> Option<i64> {
    let (ux, uy) = (x as u64, y as u64);
    match op {
        "udiv" => ux.checked_div(uy).map(|q| q as i64),
        "urem" => ux.checked_rem(uy).map(|r| r as i64),
        "sdiv" => x.checked_div(y),
        _ => x.checked_rem(y),
    }
}

#[test]
#[allow(clippy::cast_possible_truncation, clippy::cast_sign_loss, reason = "i64 拆成两个 32 位字")]
fn i64_division_through_codegen_matches_arithmetic() {
    let mut src = String::new();
    for op in OPS {
        let _ = write!(
            src,
            "\"llvm.func\"() <{{function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = \"{op}\"}}> ({{\n\
             ^bb0(%x: i64, %y: i64):\n  %q = \"llvm.{op}\"(%x, %y) : (i64, i64) -> i64\n  \"llvm.return\"(%q) : (i64) -> ()\n}}) : () -> ()\n"
        );
    }
    let module = riscvc::ir::Module::try_from(src.as_str()).expect("解析");
    let asm = module.compile().expect("代码生成");
    for name in ["__udivdi3", "__divdi3", "__umoddi3", "__moddi3"] {
        assert!(asm.contains(name), "代码生成没有落成 {name}：内置运行时和它对不上了");
    }
    let obj = riscvc::asm::Assembler::new().assemble(&asm).expect("汇编");
    let rt = Builtin::I64_DIVMOD.object(riscvc::feature::Target::default()).expect("汇编内置运行时");
    let elf = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(SCRIPT)), ..Default::default() }, &[("div.o", obj.as_slice()), (Builtin::I64_DIVMOD.name, rt.as_slice())]).expect("链接");
    let file = object::File::parse(elf.as_slice()).unwrap();
    let addr = |n: &str| file.symbols().find(|s| s.name() == Ok(n)).map(|s| u32::try_from(s.address()).unwrap()).unwrap();

    let mut values = vec![0i64, 1, -1, 2, -2, 3, 7, -7, i64::MAX, i64::MIN, 1 << 32, (1 << 32) - 1, -(1 << 32), 0x1234_5678_9abc_def0];
    let mut seed = 0x2545_f491_4f6c_dd1d_u64;
    for _ in 0..200 {
        seed ^= seed << 13;
        seed ^= seed >> 7;
        seed ^= seed << 17;
        values.push(seed.cast_signed() >> (seed % 60));
    }
    let mut cpu = Cpu::default();
    cpu.load(&elf).unwrap();
    let (mut bad, mut n) = (Vec::new(), 0);
    for op in OPS {
        let at = addr(op);
        for (i, &x) in values.iter().enumerate() {
            for &y in values.iter().skip(i % 7).step_by(7) {
                let Some(expect) = eval(op, x, y) else { continue };
                cpu.x[2] = STACK;
                (cpu.x[10], cpu.x[11], cpu.x[12], cpu.x[13]) = (x as u32, (x >> 32) as u32, y as u32, (y >> 32) as u32);
                assert_eq!(cpu.run(at, RET, 10_000), Stop::Returned, "{op}({x}, {y}) 没返回");
                n += 1;
                let got = (i64::from(cpu.x[11]) << 32) | i64::from(cpu.x[10]);
                if got != expect {
                    bad.push(format!("{op}({x}, {y}) = {got}，应当是 {expect}"));
                }
            }
        }
    }
    for b in bad.iter().take(20) {
        eprintln!("✗ {b}");
    }
    assert!(n > 4000, "只比了 {n} 次");
    assert!(bad.is_empty(), "{n} 次里 {} 次不对", bad.len());
}
