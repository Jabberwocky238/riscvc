//! `riscvc::elf` 的判据：**解开再原样打回去 == 原文件，逐字节**（`Layout::Verbatim`）；重排（`Layout::Canonical`）出来的镜像再解开，
//! 可加载节逐个相同；属性节解开再编回去 == 原字节。
//!
//! 语料：入库的目标文件（`tests/fixtures/**` 里的 ELF32 RISC-V），加上 `tests/fixtures/mc/*.s` 每一份经 riscvc 汇编出的目标文件、
//! 以及其中能单独链接的那些链出的可执行文件（汇编器与链接器的产物本身已与 llvm-mc / ld.lld 逐字节对过，见 `as_vs_llvm` / `ld_vs_lld`）。
use riscvc::asm::{Assembler, Options as AsmOptions};
use riscvc::elf::{Attributes, Elf, Ehdr, Layout};
use riscvc::link::{Linker, Options as LinkOptions};
use std::path::{Path, PathBuf};

/// 目录下的全部文件（⛔ 不跟软链）。
fn files(dir: &Path) -> Vec<PathBuf> {
    let mut out = Vec::new();
    for entry in std::fs::read_dir(dir).into_iter().flatten().flatten() {
        let path = entry.path();
        match entry.file_type() {
            Ok(t) if t.is_dir() => out.extend(files(&path)),
            Ok(t) if t.is_file() => out.push(path),
            _ => {}
        }
    }
    out.sort();
    out
}

/// 一份镜像的两条等式；不成立 ⇒ 说出哪条。
fn check(name: &str, bytes: &[u8]) -> Result<(), String> {
    let elf = Elf::try_from(bytes).map_err(|e| format!("{name}：解不开：{e}"))?;
    let again = elf.pack(Layout::Verbatim).map_err(|e| format!("{name}：Verbatim 打不回去：{e}"))?;
    if again != bytes {
        let at = again.iter().zip(bytes).position(|(a, b)| a != b).unwrap_or(again.len().min(bytes.len()));
        return Err(format!("{name}：Verbatim 和原文件在 {at:#x} 处分家（{} vs {} 字节）", again.len(), bytes.len()));
    }
    for section in elf.sections.iter().filter(|s| s.is_attributes()) {
        let attributes = Attributes::try_from(section.data.as_slice()).map_err(|e| format!("{name}：{} 解不开：{e}", section.name))?;
        if Vec::<u8>::from(&attributes) != section.data {
            return Err(format!("{name}：{} 编回去和原字节不同", section.name));
        }
    }
    if elf.kind == Ehdr::EXEC {
        let canonical = elf.pack(Layout::Canonical).map_err(|e| format!("{name}：Canonical 打不出来：{e}"))?;
        let back = Elf::try_from(canonical.as_slice()).map_err(|e| format!("{name}：Canonical 解不开：{e}"))?;
        let loads = |e: &Elf| e.loadable().map(|s| (s.name.clone(), s.addr, s.memsz, s.data.clone())).collect::<Vec<_>>();
        if loads(&back) != loads(&elf) || back.flat_image() != elf.flat_image() {
            return Err(format!("{name}：Canonical 之后可加载节变了"));
        }
    }
    Ok(())
}

#[test]
fn verbatim_roundtrip() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures");
    let (mut objects, mut executables, mut bad) = (0usize, 0usize, Vec::new());

    for path in files(&root) {
        let bytes = std::fs::read(&path).unwrap();
        if bytes.starts_with(b"\x7fELF") && Elf::try_from(bytes.as_slice()).is_ok() {
            objects += 1;
            bad.extend(check(&path.display().to_string(), &bytes).err());
        }
    }

    let script = "SECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n  .rodata : { *(.rodata*) }\n  .data : { *(.data*) *(.sdata*) }\n  .bss : { *(.bss*) *(.sbss*) }\n}\n";
    for path in files(&root.join("mc")).into_iter().filter(|p| p.extension().is_some_and(|e| e == "s")) {
        let name = path.file_name().unwrap().to_string_lossy().into_owned();
        let Ok(object) = Assembler::new(AsmOptions::default()).assemble(&std::fs::read_to_string(&path).unwrap()) else { continue };
        objects += 1;
        bad.extend(check(&format!("{name}.o"), &object).err());
        let options = LinkOptions { script: Some(script.into()), allow_undefined: true, ..Default::default() };
        if let Ok(exe) = Linker::link(options, &[(name.as_str(), object.as_slice())]) {
            executables += 1;
            bad.extend(check(&format!("{name}.elf"), &exe).err());
        }
    }

    eprintln!("目标文件 {objects} 份、可执行文件 {executables} 份；不成立 {} 份", bad.len());
    for b in bad.iter().take(20) {
        eprintln!("  {b}");
    }
    assert!(objects > 100 && executables > 10, "语料太少，判据不算数");
    assert!(bad.is_empty());
}
