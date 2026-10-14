//! 链接器 vs `ld.lld`：`target/corpus/s/*.O2.s`（compiler-rt）经 riscvc 汇编成一组目标文件，一起链，
//! 用 docc 在用的两种链接脚本；比可装载节（名字、地址、大小、类型、字节）、入口、全局符号的值。
mod llvm;
use object::{Object, ObjectSection, ObjectSymbol};
use std::collections::BTreeMap;

/// docc calvx `toolchain.rs` 的脚本。
const FLAT: &str = "ENTRY(_start)\nSECTIONS {\n  . = 0x0a210000;\n  .text : { *(.text.start) *(.text*) }\n  .rodata : ALIGN(8) { *(.rodata*) *(.srodata*) }\n  .bss : ALIGN(4) { *(.bss*) *(.sbss*) *(COMMON) }\n  /DISCARD/ : { *(.comment) }\n}\n";

/// docc calvx `libccu.rs` 的 `Program::script`（ccu0）。
const PROGRAM: &str = "ENTRY(__fixsfsi)\n__stack_top = 0xa208000;\nSECTIONS {\n  .text 0xa210000 : AT(0x10000) { KEEP(*fixsfsi.O2.o(.text)) *(.text .text.*) }\n  .nops : { KEEP(*(.nops)) }\n  .rodata : { *(.rodata .rodata.* .srodata .srodata.*) }\n  .data : { *(.data .data.* .sdata .sdata.*) }\n  .bss (NOLOAD) : { __bss_start = .; *(.bss .bss.* .sbss .sbss.* COMMON) . = ALIGN(4); __bss_end = .; }\n  /DISCARD/ : { *(.comment) *(.note*) *(.eh_frame*) *(.riscv.attributes) }\n}\n";

#[derive(Debug, PartialEq)]
struct Image {
    entry: u64,
    sections: Vec<(String, u64, u64, bool, Vec<u8>)>,
    globals: BTreeMap<String, u64>,
}

impl Image {
    fn of(bytes: &[u8]) -> Self {
        let file = object::File::parse(bytes).unwrap();
        let sections = file
            .sections()
            .filter(|s| matches!(s.flags(), object::SectionFlags::Elf { sh_flags } if sh_flags & u64::from(object::elf::SHF_ALLOC) != 0) && s.size() > 0)
            .map(|s| (String::from(s.name().unwrap()), s.address(), s.size(), s.kind() == object::SectionKind::UninitializedData, s.data().unwrap_or_default().to_vec()))
            .collect();
        let globals = file.symbols().filter(|s| s.is_global() && s.is_definition()).map(|s| (String::from(s.name().unwrap()), s.address())).collect();
        Self { entry: file.entry(), sections, globals }
    }
}

fn link(script: &str, name: &str) {
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let dir = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("target/corpus/s");
    let Ok(entries) = std::fs::read_dir(&dir) else {
        eprintln!("SKIP：没有语料（先跑 tools/corpus.sh）");
        return;
    };
    let mut files: Vec<_> = entries.map(|e| e.unwrap().path()).filter(|p| p.to_str().unwrap().ends_with(".O2.s")).collect();
    files.sort();
    let tmp = std::env::temp_dir().join(format!("riscvc-ld-{name}-{}", std::process::id()));
    std::fs::create_dir_all(&tmp).unwrap();
    let mut objs = Vec::new();
    for f in &files {
        let text = std::fs::read_to_string(f).unwrap();
        let bytes = riscvc::asm::Assembler::new(riscvc::asm::Options::default()).assemble(&text).unwrap();
        let o = tmp.join(f.file_name().unwrap()).with_extension("o");
        std::fs::write(&o, &bytes).unwrap();
        objs.push(o);
    }
    let ld = tmp.join("link.ld");
    std::fs::write(&ld, script).unwrap();
    let lld_out = tmp.join("lld.elf");
    let mut args: Vec<String> = vec!["-T".into(), ld.display().to_string(), "--unresolved-symbols=ignore-all".into(), "-o".into(), lld_out.display().to_string()];
    args.extend(objs.iter().map(|o| o.display().to_string()));
    let args: Vec<&str> = args.iter().map(String::as_str).collect();
    let (_, err) = llvm.run("ld.lld", &args, "");
    assert!(!err.contains("error"), "ld.lld: {err}");
    let theirs = Image::of(&std::fs::read(&lld_out).unwrap());
    let bytes: Vec<(String, Vec<u8>)> = objs.iter().map(|o| (o.display().to_string(), std::fs::read(o).unwrap())).collect();
    let inputs: Vec<(&str, &[u8])> = bytes.iter().map(|(n, b)| (n.as_str(), b.as_slice())).collect();
    let ours = riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(script)), allow_undefined: true, ..Default::default() }, &inputs).unwrap();
    std::fs::write(tmp.join("riscvc.elf"), &ours).unwrap();
    let ours = Image::of(&ours);
    assert_eq!(ours.entry, theirs.entry, "入口");
    let brief = |s: &[(String, u64, u64, bool, Vec<u8>)]| s.iter().map(|(n, a, z, b, _)| format!("{n}@{a:#x}+{z:#x}{}", if *b { " nobits" } else { "" })).collect::<Vec<_>>();
    assert_eq!(brief(&ours.sections), brief(&theirs.sections), "节");
    for (a, b) in ours.sections.iter().zip(&theirs.sections) {
        if let Some(i) = a.4.iter().zip(&b.4).position(|(x, y)| x != y) {
            panic!("{}：第一个不同字节在 {:#x}（地址 {:#x}），产物留在 {}", a.0, i, a.1 + i as u64, tmp.display());
        }
    }
    let diff: Vec<_> = theirs.globals.iter().filter(|(k, v)| ours.globals.get(*k) != Some(v)).take(10).map(|(k, v)| (k, v, ours.globals.get(k))).collect();
    assert!(diff.is_empty(), "全局符号不同：{diff:?}");
    eprintln!("{name}：{} 个节、{} 个全局符号一致", ours.sections.len(), ours.globals.len());
    std::fs::remove_dir_all(&tmp).ok();
}

#[test]
fn flat_script() {
    link(FLAT, "flat");
}

#[test]
fn program_script() {
    link(PROGRAM, "program");
}
