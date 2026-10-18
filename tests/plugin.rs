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

// ───────────────────────────────────────────────────────────────────────────────
// ⭐⭐⭐ 代码生成也委派给扩展包：一条自定义指令走完**四项能力**
//
//   Dialect::lower  ⇒ ir::Op::Custom          方言认得 `demo.twice`
//   Module::select  ⇒ MOp::Ext               选成一条自定义机器指令
//   Assemble        ⇒ 字节                    汇编器编它
//   Disassemble     ⇒ 文本                    反汇编回来（对偶，法则 disasm(asm(x)) == x）
//   Module::execute ⇒ 语义                    模拟器跑它
//
// ⭐ 判据是**模拟器跑出来的值**，⛔ 不是「编过了」。这同时验了两组对偶：
//    assemble/disassemble 的语法对偶，与 select/execute 的**语义**对偶。
// ───────────────────────────────────────────────────────────────────────────────

use riscvc::codegen::Sel;
use riscvc::ext::{Args, Assemble, Disassemble, Emit, Exec, Module as ExtModule, Operand};
use riscvc::isa::Style;

/// `demo.twice rd, rs1, rs2` —— 语义 `rd = (rs1 + rs2) * 2`。
///
/// 编码借 RISC-V 的 custom-0 主操作码（0x0b）：`funct7=0 rs2 rs1 funct3=0 rd 0001011`。
struct Twice;

const OPCODE: u32 = 0x0b;

impl Twice {
    fn word(bytes: &[u8]) -> u32 {
        u32::from_le_bytes([bytes[0], bytes[1], bytes[2], bytes[3]])
    }
    fn encode(rd: u8, rs1: u8, rs2: u8) -> u32 {
        OPCODE | u32::from(rd) << 7 | u32::from(rs1) << 15 | u32::from(rs2) << 20
    }
}

impl Disassemble for Twice {
    fn decode(&self, bytes: &[u8; 8]) -> Option<usize> {
        (Self::word(bytes) & 0xfe00_707f == OPCODE).then_some(4)
    }

    fn print(&self, bytes: &[u8], _pc: u64, style: Style) -> String {
        let w = Self::word(bytes);
        let (rd, rs1, rs2) = ((w >> 7 & 31) as u8, (w >> 15 & 31) as u8, (w >> 20 & 31) as u8);
        format!("demo.twice\t{}, {}, {}", style.x(rd), style.x(rs1), style.x(rs2))
    }
}

impl Assemble for Twice {
    fn knows(&self, mnemonic: &str) -> bool {
        mnemonic == "demo.twice"
    }

    fn assemble(&self, mnemonic: &str, args: &Args<'_>) -> Option<Result<Emit, String>> {
        if mnemonic != "demo.twice" {
            return None;
        }
        let [Operand::X(rd), Operand::X(rs1), Operand::X(rs2)] = args.ops else {
            return Some(Err(String::from("demo.twice 要三个整数寄存器")));
        };
        Some(Ok(Emit::Bytes(Self::encode(*rd, *rs1, *rs2).to_le_bytes().to_vec())))
    }
}

impl ExtModule for Twice {
    fn name(&self) -> &str {
        "xdemo"
    }

    fn execute(&mut self, cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), riscvc::sim::Stop> {
        let w = Self::word(bytes);
        let (rd, rs1, rs2) = ((w >> 7 & 31) as u8, (w >> 15 & 31) as u8, (w >> 20 & 31) as u8);
        let v = cx.x(rs1).wrapping_add(cx.x(rs2)).wrapping_mul(2);
        cx.set(rd, v);
        Ok(())
    }

    /// ⭐ 两个操作数都走 `R::V` ⇒ 寄存器由 regalloc2 挑。
    fn select(&self, cx: &mut Sel<'_, '_>) -> Option<Result<(), String>> {
        if cx.name() != "demo.twice" {
            return None;
        }
        Some((|| {
            let (a, b) = (cx.reg(0)?, cx.reg(1)?);
            let d = cx.temp(false);
            cx.emit("demo.twice\tx{}, x{}, x{}", 4, &[d], &[a, b]);
            cx.bind(&[d]);
            Ok(())
        })())
    }
}

/// 方言：`demo.twice` ⇒ `Op::Custom`。
struct Twd;

impl Dialect for Twd {
    fn namespace(&self) -> &str {
        "demo"
    }

    fn lower(&self, cx: &mut Lowering<'_, '_>) -> Result<(), Error> {
        let [a, b] = cx.operands()?[..] else { return Err(Error::Parse(String::from("demo.twice 要两个操作数"))) };
        let [r] = cx.results()?[..] else { return Err(Error::Parse(String::from("demo.twice 要一个结果"))) };
        cx.emit(Some(r), Op::Custom { name: String::from("demo.twice"), args: vec![a, b], attrs: Vec::new() });
        Ok(())
    }
}

const TWICE_SRC: &str = r#"
"llvm.func"() <{function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "f"}> ({
^bb0(%a: i32, %b: i32):
  %t = "demo.twice"(%a, %b) : (i32, i32) -> i32
  %u = "demo.twice"(%t, %b) : (i32, i32) -> i32
  "llvm.return"(%u) : (i32) -> ()
}) : () -> ()
"#;

#[test]
fn codegen_delegated_to_a_module() {
    let mut reg = Registry::default();
    reg.dialect(&Twd);
    let m = reg.parse(TWICE_SRC).unwrap();

    // ① 代码生成：Op::Custom 交给 Twice::select
    let twice = Twice;
    let asm = m.compile_with(&riscvc::codegen::Options { modules: &[&twice], ..Default::default() }).expect("代码生成");
    assert!(asm.contains("demo.twice"), "选出来的汇编里应当有 demo.twice：\n{asm}");

    // ② 汇编：同一个 Module 的 Assemble 编成字节
    let obj = riscvc::asm::Assembler::new().modules(&[&twice]).assemble(&asm).expect("汇编");

    // ③ 链接 + 在模拟器里跑 —— ⭐ 判据是值，⛔ 不是「编过了」
    let script = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n}\n";
    let elf = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(script)), ..Default::default() }, &[("m.o", obj.as_slice())]).unwrap();
    for (a, b) in [(3u32, 4u32), (0, 0), (1_000_000, 7), (u32::MAX, 1)] {
        let mut cpu = Cpu::default();
        cpu.load(&elf).unwrap();
        cpu.x[2] = 0x7ff0_0000;
        cpu.x[10] = a;
        cpu.x[11] = b;
        let mut ext = Twice;
        let mut mods: [&mut dyn ExtModule; 1] = [&mut ext];
        assert_eq!(cpu.run_on(0x10000, 0x0fff_fff0, 1000, &mut mods, &mut []), Stop::Returned, "a={a} b={b}");
        // 语义：t = (a+b)*2，u = (t+b)*2
        let t = a.wrapping_add(b).wrapping_mul(2);
        assert_eq!(cpu.x[10], t.wrapping_add(b).wrapping_mul(2), "a={a} b={b}");
    }
}

/// `demo.pin rd, rs1` —— 语义 `rd = rs1 + 1`，但 **rs1 钉死在 x7**（`R::P`）。
///
/// ⭐ 这一条验的是「部分委派」的另一半：插件自己钉死的操作数，regalloc2 **看不见**
/// （`MInst::finish` 只给 `R::V` 生成 `Operand`）⇒ 复刻厂商字节时全钉死，分配器一个都碰不到。
struct Pinned;

const PIN_OPCODE: u32 = 0x200b; // custom-0，funct3 = 2

impl Disassemble for Pinned {
    fn decode(&self, bytes: &[u8; 8]) -> Option<usize> {
        (Twice::word(bytes) & 0xfe00_707f == PIN_OPCODE).then_some(4)
    }
    fn print(&self, bytes: &[u8], _pc: u64, style: Style) -> String {
        let w = Twice::word(bytes);
        format!("demo.pin\t{}, {}", style.x((w >> 7 & 31) as u8), style.x((w >> 15 & 31) as u8))
    }
}

impl Assemble for Pinned {
    fn knows(&self, mnemonic: &str) -> bool {
        mnemonic == "demo.pin"
    }
    fn assemble(&self, mnemonic: &str, args: &Args<'_>) -> Option<Result<Emit, String>> {
        if mnemonic != "demo.pin" {
            return None;
        }
        let [Operand::X(rd), Operand::X(rs1)] = args.ops else { return Some(Err(String::from("demo.pin 要两个寄存器"))) };
        Some(Ok(Emit::Bytes((PIN_OPCODE | u32::from(*rd) << 7 | u32::from(*rs1) << 15).to_le_bytes().to_vec())))
    }
}

impl ExtModule for Pinned {
    fn name(&self) -> &str {
        "xdemo"
    }
    fn execute(&mut self, cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), riscvc::sim::Stop> {
        let w = Twice::word(bytes);
        let v = cx.x((w >> 15 & 31) as u8).wrapping_add(1);
        cx.set((w >> 7 & 31) as u8, v);
        Ok(())
    }
    fn select(&self, cx: &mut Sel<'_, '_>) -> Option<Result<(), String>> {
        if cx.name() != "demo.pin" {
            return None;
        }
        Some((|| {
            // ⭐ 先把操作数搬进钉死的 x7（用内置的 `mv`），再发这条指令
            let a = cx.reg(0)?;
            let pinned = cx.pin(7, a);
            let d = cx.temp(false);
            cx.emit("demo.pin\tx{}, x{}", 4, &[d], &[pinned]);
            cx.bind(&[d]);
            Ok(())
        })())
    }
}

#[test]
fn a_module_can_pin_its_own_registers() {
    const SRC: &str = r#"
"llvm.func"() <{function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "f"}> ({
^bb0(%a: i32):
  %t = "demo.pin"(%a) : (i32) -> i32
  "llvm.return"(%t) : (i32) -> ()
}) : () -> ()
"#;
    struct Pd;
    impl Dialect for Pd {
        fn namespace(&self) -> &str {
            "demo"
        }
        fn lower(&self, cx: &mut Lowering<'_, '_>) -> Result<(), Error> {
            let [a] = cx.operands()?[..] else { return Err(Error::Parse(String::from("要一个操作数"))) };
            let [r] = cx.results()?[..] else { return Err(Error::Parse(String::from("要一个结果"))) };
            cx.emit(Some(r), Op::Custom { name: String::from("demo.pin"), args: vec![a], attrs: Vec::new() });
            Ok(())
        }
    }
    let mut reg = Registry::default();
    reg.dialect(&Pd);
    let m = reg.parse(SRC).unwrap();
    let p = Pinned;
    let asm = m.compile_with(&riscvc::codegen::Options { modules: &[&p], ..Default::default() }).expect("代码生成");
    // ⭐ 判据：源操作数必须是 x7 —— 分配器没有替它挑别的
    assert!(asm.contains("demo.pin\tx") && asm.contains(", x7"), "钉死的 x7 应当原样出现：\n{asm}");

    let obj = riscvc::asm::Assembler::new().modules(&[&p]).assemble(&asm).expect("汇编");
    let script = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n}\n";
    let elf = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(script)), ..Default::default() }, &[("m.o", obj.as_slice())]).unwrap();
    for a in [0u32, 41, u32::MAX] {
        let mut cpu = Cpu::default();
        cpu.load(&elf).unwrap();
        cpu.x[2] = 0x7ff0_0000;
        cpu.x[10] = a;
        let mut ext = Pinned;
        let mut mods: [&mut dyn ExtModule; 1] = [&mut ext];
        assert_eq!(cpu.run_on(0x10000, 0x0fff_fff0, 1000, &mut mods, &mut []), Stop::Returned, "a={a}");
        assert_eq!(cpu.x[10], a.wrapping_add(1), "a={a}");
    }
}

/// ⭐ 宿主独占一批寄存器：[`Allocatable::without_int`] 拿掉之后，分配器**一个都不许用**。
///
/// calvx 要的正是这个：宽指令的常量钉在 `x5…x10`，跨标量片段活着 ⇒ 分配器不能碰。
///
/// ⚠ 这条**自验证**：先编一遍不独占的，断言那几个寄存器**确实会被用到** ——
/// ⛔ 否则「独占后没出现」是白验的（函数太简单、或判据写错了都查不出来）。
#[test]
fn the_host_can_reserve_registers() {
    const SRC: &str = r#"
"llvm.func"() <{function_type = !llvm.func<i32 (i32, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "f"}> ({
^bb0(%a: i32, %b: i32, %c: i32, %d: i32, %e: i32):
  %1 = "llvm.mul"(%a, %b) : (i32, i32) -> i32
  %2 = "llvm.mul"(%c, %d) : (i32, i32) -> i32
  %3 = "llvm.add"(%1, %2) : (i32, i32) -> i32
  %4 = "llvm.add"(%3, %e) : (i32, i32) -> i32
  %5 = "llvm.mul"(%4, %1) : (i32, i32) -> i32
  %6 = "llvm.add"(%5, %2) : (i32, i32) -> i32
  "llvm.return"(%6) : (i32) -> ()
}) : () -> ()
"#;
    if !needs_m() {
        return;
    }
    /// 一行里有没有用到这个寄存器（⛔ 只看操作数，不看助记符）。
    fn uses(asm: &str, name: &str) -> bool {
        asm.lines()
            .map(str::trim)
            .filter(|l| !l.is_empty() && !l.starts_with('.'))
            .any(|l| l.split_whitespace().skip(1).any(|t| t.trim_end_matches(',').trim_matches(['(', ')']) == name))
    }

    const RESERVED: [u8; 3] = [5, 6, 7];
    const NAMES: [&str; 3] = ["t0", "t1", "t2"];
    let reg = Registry::default();
    let m = reg.parse(SRC).unwrap();

    // ① 不独占：⭐ 至少有一个会被用到，否则这条判据没有意义
    let before = m.compile().expect("代码生成");
    let hit: Vec<&str> = NAMES.into_iter().filter(|n| uses(&before, n)).collect();
    assert!(!hit.is_empty(), "不独占时一个都没用到 ⇒ 这条判据是空的，换个更复杂的函数：\n{before}");

    // ② 独占：一个都不许出现
    let opts = riscvc::codegen::Options {
        registers: riscvc::codegen::Allocatable::default().without_int(&RESERVED),
        ..Default::default()
    };
    let after = m.compile_with(&opts).expect("代码生成");
    for (r, name) in RESERVED.into_iter().zip(NAMES) {
        assert!(!uses(&after, name), "分配器用了被独占的 {name}（x{r}）：\n{after}");
    }
    eprintln!("不独占时用到 {hit:?}，独占后都不见了");
}
