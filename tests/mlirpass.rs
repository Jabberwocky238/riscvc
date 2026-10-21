//! 高层方言的输入：func / arith / scf / memref 写的函数经 mlirpass 下降成 llvm 方言（`plugin::LOWERING`），
//! 编译、链接，在解释器里跑。
use riscvc::plugin::Registry;
use riscvc::sim::{Cpu, Stop};

/// 平方数先写进栈上的 memref，再累加：`sum(n) = 0² + 1² + … + (n-1)²`。
const SRC: &str = r#"
func.func @sum(%n: index) -> i32 {
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %z = arith.constant 0 : i32
  %buf = memref.alloca(%n) : memref<?xi32>
  scf.for %i = %c0 to %n step %c1 {
    %v = arith.index_cast %i : index to i32
    %sq = arith.muli %v, %v : i32
    memref.store %sq, %buf[%i] : memref<?xi32>
  }
  %r = scf.for %i = %c0 to %n step %c1 iter_args(%acc = %z) -> (i32) {
    %x = memref.load %buf[%i] : memref<?xi32>
    %a = arith.addi %acc, %x : i32
    scf.yield %a : i32
  }
  return %r : i32
}
"#;

#[test]
fn lowered_by_mlirpass() {
    let reg = Registry::default();
    let mut m = reg.parse(SRC).unwrap();
    reg.run(&mut m, &riscvc::opt::DEFAULT_PIPELINE).unwrap();
    let obj = riscvc::asm::Assembler::new().assemble(&m.compile().unwrap()).unwrap();
    let script = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n}\n";
    let elf = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(script)), ..Default::default() }, &[("m.o", obj.as_slice())]).unwrap();
    for (n, want) in [(0, 0), (1, 0), (10, 285), (100, 328_350)] {
        let mut cpu = Cpu::default();
        cpu.load(&elf).unwrap();
        cpu.x[2] = 0x7ff0_0000;
        cpu.x[10] = n;
        assert_eq!(cpu.run(0x10000, 0x0fff_fff0, 100_000), Stop::Returned);
        assert_eq!(cpu.x[10], want, "sum({n})");
    }
}
