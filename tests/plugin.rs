//! 插件接口：测试里定义的 `demo` 方言（`demo.mac a, b, c` = a × b + c，下降成两条内部指令；
//! `demo.divrem a, b` 两个结果 `%r:2` = 商、余数）+ 内置 `dce`，编译、链接、在解释器里跑。
use riscvc::ir::{BinOp, Error, Op};
use riscvc::plugin::{Dialect, Lowering, Registry};
use riscvc::sim::{Cpu, Stop};

struct Demo;

impl Dialect for Demo {
    fn namespace(&self) -> &str {
        "demo"
    }

    fn lower(&self, cx: &mut Lowering<'_, '_>) -> Result<(), Error> {
        match &*cx.op().name {
            "demo.mac" => {
                let [a, b, c] = cx.operands()?[..] else { return Err(Error::Parse(String::from("demo.mac 要三个操作数"))) };
                let [r] = cx.results()?[..] else { return Err(Error::Parse(String::from("demo.mac 要一个结果"))) };
                let t = cx.temp(cx.type_of(a));
                cx.emit(Some(t), Op::Bin(BinOp::Mul, a, b));
                cx.emit(Some(r), Op::Bin(BinOp::Add, t, c));
                Ok(())
            }
            "demo.divrem" => {
                let [a, b] = cx.operands()?[..] else { return Err(Error::Parse(String::from("demo.divrem 要两个操作数"))) };
                let [q, r] = cx.results()?[..] else { return Err(Error::Parse(String::from("demo.divrem 要两个结果"))) };
                cx.emit(Some(q), Op::Bin(BinOp::UDiv, a, b));
                cx.emit(Some(r), Op::Bin(BinOp::URem, a, b));
                Ok(())
            }
            n => Err(Error::Parse(format!("demo 方言没有 `{n}`"))),
        }
    }
}

const SRC: &str = r#"
"llvm.func"() <{function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "mac"}> ({
^bb0(%a: i32, %b: i32, %c: i32):
  %dead = "llvm.add"(%a, %b) : (i32, i32) -> i32
  %r = "demo.mac"(%a, %b, %c) : (i32, i32, i32) -> i32
  "llvm.return"(%r) : (i32) -> ()
}) : () -> ()
"#;

/// 乘除要 M（没开就调 `__mulsi3` / `__udivsi3`，这里只链了被测的目标文件）。
fn needs_m() -> bool {
    if !cfg!(feature = "m") {
        eprintln!("SKIP：没开 m，乘除要链 compiler-rt");
    }
    cfg!(feature = "m")
}

/// 编译、链接，在解释器里调 0x10000 处的函数。
fn run(m: &riscvc::ir::Module, args: &[u32]) -> u32 {
    let asm = m.compile().unwrap();
    let obj = riscvc::asm::Assembler::new().assemble(&asm).unwrap();
    let script = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n}\n";
    let elf = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(script)), ..Default::default() }, &[("m.o", obj.as_slice())]).unwrap();
    let mut cpu = Cpu::default();
    cpu.load(&elf).unwrap();
    cpu.x[2] = 0x7ff0_0000;
    cpu.x[10..10 + args.len()].copy_from_slice(args);
    assert_eq!(cpu.run(0x10000, 0x0fff_fff0, 1000), Stop::Returned);
    cpu.x[10]
}

/// 多结果 op：`%qr:2` 定义两个值，`%qr#0` / `%qr#1` 各取一个。
#[test]
fn multiple_results() {
    if !needs_m() {
        return;
    }
    const SRC: &str = r#"
"llvm.func"() <{function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "f"}> ({
^bb0(%a: i32, %b: i32):
  %qr:2 = "demo.divrem"(%a, %b) : (i32, i32) -> (i32, i32)
  %k = "llvm.mlir.constant"() <{value = 1000 : i32}> : () -> i32
  %t = "llvm.mul"(%qr#0, %k) : (i32, i32) -> i32
  %r = "llvm.add"(%t, %qr#1) : (i32, i32) -> i32
  "llvm.return"(%r) : (i32) -> ()
}) : () -> ()
"#;
    let mut reg = Registry::default();
    reg.dialect(&Demo);
    let m = reg.parse(SRC).unwrap();
    for (a, b) in [(17u32, 5u32), (1_000_000, 7), (3, 9)] {
        assert_eq!(run(&m, &[a, b]), (a / b).wrapping_mul(1000).wrapping_add(a % b));
    }
}

#[test]
fn dialect_and_pass() {
    if !needs_m() {
        return;
    }
    let mut reg = Registry::default();
    reg.dialect(&Demo);
    assert!(Registry::default().parse(SRC).is_err(), "没注册 demo 方言就不认");
    let mut m = reg.parse(SRC).unwrap();
    assert_eq!(m.functions[0].blocks[0].insts.len(), 4);
    reg.run(&mut m, &["dce"]).unwrap();
    assert_eq!(m.functions[0].blocks[0].insts.len(), 3, "dce 删掉 %dead");
    let asm = m.compile().unwrap();
    let obj = riscvc::asm::Assembler::new().assemble(&asm).unwrap();
    let script = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n}\n";
    let elf = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(script)), ..Default::default() }, &[("mac.o", obj.as_slice())]).unwrap();
    let mut cpu = Cpu::default();
    cpu.load(&elf).unwrap();
    for (a, b, c) in [(3u32, 4u32, 5u32), (0xffff_ffff, 7, 1), (123_456, 789, 0x8000_0000)] {
        let mut cpu = cpu.clone();
        cpu.x[2] = 0x7ff0_0000;
        cpu.x[10..13].copy_from_slice(&[a, b, c]);
        assert_eq!(cpu.run(0x10000, 0x0fff_fff0, 1000), Stop::Returned);
        assert_eq!(cpu.x[10], a.wrapping_mul(b).wrapping_add(c));
    }
}
