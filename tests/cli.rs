//! 命令行（`riscvc` 二进制本身）：README 快速开始的整条流程、`llc` 的并行（`-j`、多个输入）与串行逐字节相同、
//! 坏输入报错而 ⛔ 不 panic。不要 LLVM。
use riscvc::sim::{Cpu, Stop};
use std::path::{Path, PathBuf};
use std::process::{Command, Output};

/// 一个临时目录，测试完删掉。
struct Dir(PathBuf);

impl Dir {
    fn new(name: &str) -> Self {
        let d = std::env::temp_dir().join(format!("riscvc-cli-{name}-{}", std::process::id()));
        std::fs::create_dir_all(&d).unwrap();
        Self(d)
    }

    fn file(&self, name: &str, text: &str) -> PathBuf {
        let p = self.0.join(name);
        std::fs::write(&p, text).unwrap();
        p
    }

    fn path(&self, name: &str) -> PathBuf {
        self.0.join(name)
    }
}

impl Drop for Dir {
    fn drop(&mut self) {
        std::fs::remove_dir_all(&self.0).ok();
    }
}

fn riscvc(args: &[&dyn AsRef<std::ffi::OsStr>]) -> Output {
    Command::new(env!("CARGO_BIN_EXE_riscvc")).args(args.iter().map(|a| a.as_ref())).output().unwrap()
}

/// 跑成功，回 stdout。
fn ok(args: &[&dyn AsRef<std::ffi::OsStr>]) -> String {
    let out = riscvc(args);
    assert!(out.status.success(), "riscvc 失败：{}", String::from_utf8_lossy(&out.stderr));
    String::from_utf8(out.stdout).unwrap()
}

/// README「Quick start」：add.mlir + crt.S + link.ld ⇒ app.elf；`_start` 调 `add(2, 40)`。
#[test]
fn quick_start() {
    let d = Dir::new("quick");
    let add = d.file(
        "add.mlir",
        r#""llvm.func"() <{function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add"}> ({
^bb0(%a: i32, %b: i32):
  %r = "llvm.add"(%a, %b) : (i32, i32) -> i32
  "llvm.return"(%r) : (i32) -> ()
}) : () -> ()
"#,
    );
    let crt = d.file("crt.S", "    .section .text.start\n    .globl _start\n_start:\n    lui   sp, %hi(__stack_top)\n    addi  sp, sp, %lo(__stack_top)\n    li    a0, 2\n    li    a1, 40\n    call  add\n1:  j     1b\n");
    let script = d.file("link.ld", "ENTRY(_start)\nSECTIONS {\n  . = 0x10000;\n  .text : { *(.text.start) *(.text*) }\n  .data : { *(.data*) *(.sdata*) }\n  .bss  : { *(.bss*) *(.sbss*) }\n  . = ALIGN(16);\n  . = . + 0x1000;\n  __stack_top = .;\n}\n");
    let (s, o, c, elf) = (d.path("add.s"), d.path("add.o"), d.path("crt.o"), d.path("app.elf"));
    ok(&[&"llc", &add, &"-o", &s]);
    assert!(std::fs::read_to_string(&s).unwrap().contains("add:"), "汇编里有 add");
    ok(&[&"llc", &add, &"-o", &o]);
    ok(&[&"as", &crt, &"-o", &c]);
    ok(&[&"ld", &"-T", &script, &c, &o, &"-o", &elf]);
    let dis = ok(&[&"objdump", &elf]);
    assert!(dis.contains("<_start>:") && dis.contains("<add>:"), "{dis}");
    // 跑到 `1: j 1b`（死循环）为止：a0 = add 的返回值
    let mut cpu = Cpu::default();
    cpu.load(&std::fs::read(&elf).unwrap()).unwrap();
    assert_eq!(cpu.run(0x10000, 0, 200), Stop::Limit);
    assert_eq!(cpu.x[10], 42);
}

/// 语料里的几份（多函数、带全局的）。
fn inputs() -> Vec<PathBuf> {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures/builtins");
    ["adddf3", "divdi3", "fixsfdi", "floatsidf", "muldc3", "udivmoddi4", "popcountdi2", "clzdi2"].iter().map(|n| root.join(format!("{n}.O2.mlir"))).filter(|p| p.is_file()).collect()
}

/// 函数切段并行编：和串行逐字节相同（汇编、目标文件都是）。
#[test]
fn parallel_same_as_serial() {
    let d = Dir::new("par");
    let files = inputs();
    assert!(!files.is_empty());
    for f in &files {
        for ext in ["s", "o"] {
            let (one, many) = (d.path(&format!("one.{ext}")), d.path(&format!("many.{ext}")));
            ok(&[&"llc", &"-j", &"1", f, &"-o", &one]);
            ok(&[&"llc", &"-j", &"7", f, &"-o", &many]);
            assert_eq!(std::fs::read(&one).unwrap(), std::fs::read(&many).unwrap(), "{} .{ext}", f.display());
        }
    }
}

/// 多个输入一次编（出到目录）：每份和单独编的相同。
#[test]
fn many_inputs() {
    let d = Dir::new("many");
    let files = inputs();
    let out = d.path("out");
    let mut args: Vec<&dyn AsRef<std::ffi::OsStr>> = vec![&"llc", &"--emit", &"asm"];
    args.extend(files.iter().map(|f| f as &dyn AsRef<std::ffi::OsStr>));
    args.extend([&"-o" as &dyn AsRef<std::ffi::OsStr>, &out]);
    ok(&args);
    for f in &files {
        let alone = d.path("alone.s");
        ok(&[&"llc", f, &"-o", &alone]);
        let stem = f.file_stem().unwrap().to_str().unwrap();
        assert_eq!(std::fs::read(out.join(format!("{stem}.s"))).unwrap(), std::fs::read(&alone).unwrap(), "{stem}");
    }
}

/// 坏输入：退出码 1、一行 `riscvc: …`，⛔ 不 panic（panic 是 101）。
#[test]
fn bad_input_is_an_error() {
    let d = Dir::new("bad");
    let func = |body: &str| format!("\"llvm.func\"() <{{function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = \"f\"}}> ({{\n^bb0(%a: i32):\n{body}\n}}) : () -> ()\n");
    let cases = [
        ("syntax", String::from("\"llvm.func\"( <{")),
        ("toplevel", String::from("\"llvm.nope\"() : () -> ()\n")),
        ("undefined", func("  \"llvm.return\"(%zz) : (i32) -> ()")),
        ("operands", func("  %r = \"llvm.add\"(%a) : (i32) -> i32\n  \"llvm.return\"(%r) : (i32) -> ()")),
        ("block", func("  \"llvm.br\"()[^nowhere] : () -> ()")),
        ("op", func("  %r = \"llvm.mystery\"(%a) : (i32) -> i32\n  \"llvm.return\"(%r) : (i32) -> ()")),
        ("dialect", func("  %r = \"demo.mac\"(%a, %a, %a) : (i32, i32, i32) -> i32\n  \"llvm.return\"(%r) : (i32) -> ()")),
    ];
    for (name, text) in cases {
        let f = d.file(&format!("{name}.mlir"), &text);
        let out = riscvc(&[&"llc", &f, &"-o", &d.path("x.s")]);
        let err = String::from_utf8_lossy(&out.stderr);
        assert_eq!(out.status.code(), Some(1), "{name}：{err}");
        assert!(err.starts_with("riscvc: ") && !err.contains("panicked"), "{name}：{err}");
    }
    // 多个输入重名（会互相盖掉）
    let a = d.file("a.mlir", "");
    std::fs::create_dir_all(d.path("sub")).unwrap();
    let b = d.path("sub/a.mlir");
    std::fs::write(&b, "").unwrap();
    let out = riscvc(&[&"llc", &a, &b, &"-o", &d.path("o")]);
    assert_eq!(out.status.code(), Some(1), "{}", String::from_utf8_lossy(&out.stderr));
}
