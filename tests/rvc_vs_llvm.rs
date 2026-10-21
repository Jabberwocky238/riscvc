//! C（16 位压缩指令）的译码 + 打印 vs `llvm-objdump --mattr=…,+c`：低两位不是 11 的半字一个不落（49,152 个），
//! 别名、no-aliases、numeric 三种风格。别名风格印的是还原出的 32 位指令 ⇒ 「压缩 ⇔ 32 位」的对照表也在这里对过。
//! 目标 = 缺省 + C；没有 LLVM ⇒ SKIP。
mod llvm;
use riscvc::ext::Disassembler;
use riscvc::feature::{builtin, Target};

fn target() -> Target<'static> {
    Target::default().with(&builtin::C)
}
use riscvc::isa::Style;

fn compare(style: Style, args: &[&str]) {
    use object::write::{Object, StandardSection};
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let halves: Vec<u16> = (0..=u16::MAX).filter(|h| h & 3 != 3).collect();
    let mut obj = Object::new(object::BinaryFormat::Elf, object::Architecture::Riscv32, object::Endianness::Little);
    let text = obj.section_id(StandardSection::Text);
    obj.append_section_data(text, &halves.iter().flat_map(|h| h.to_le_bytes()).collect::<Vec<u8>>(), 2);
    let path = std::env::temp_dir().join(format!("riscvc-rvc-{}-{}", std::process::id(), args.join("")));
    std::fs::write(&path, obj.write().unwrap()).unwrap();
    let mattr = format!("--mattr={}", target().mattr());
    let mut cmd = vec!["-d", "--no-show-raw-insn", mattr.as_str()];
    cmd.extend(args);
    cmd.push(path.to_str().unwrap());
    let (out, _) = llvm.run("llvm-objdump", &cmd, "");
    std::fs::remove_file(&path).ok();
    let theirs: std::collections::HashMap<u64, String> = out
        .lines()
        .filter_map(|l| {
            let (addr, rest) = l.split_once(':')?;
            let addr = u64::from_str_radix(addr.trim(), 16).ok()?;
            Some((addr, rest.trim().replace('\t', " ").split(" <").next().unwrap().to_string()))
        })
        .collect();
    // ⚠ 对照得真有内容：llvm-objdump 每个半字都要有一行（解析落空会让下面的比较悄悄通过）
    assert_eq!(theirs.len(), halves.len(), "llvm-objdump 的输出只认出 {} 行", theirs.len());
    let (mut bad, mut shown) = (0, 0);
    for (i, &h) in halves.iter().enumerate() {
        let pc = 2 * i as u64;
        let bytes = h.to_le_bytes();
        let ours = Disassembler::new().target(target()).style(style).lines(&bytes, pc).next().map_or_else(String::new, |l| l.text.replace('\t', " "));
        let expect = theirs.get(&pc).cloned().unwrap_or_default();
        if ours != expect {
            bad += 1;
            if shown < 40 {
                shown += 1;
                eprintln!("{h:#06x}: riscvc {ours:?} ≠ llvm {expect:?}");
            }
        }
    }
    assert_eq!(bad, 0, "{bad} / {} 个半字不一致", halves.len());
}

#[test]
fn aliases() {
    compare(Style { hex: true, address: true, ..Style::default() }, &[]);
}

#[test]
fn no_aliases() {
    compare(Style { no_aliases: true, hex: true, address: true, ..Style::default() }, &["-M", "no-aliases"]);
}

#[test]
fn numeric() {
    compare(Style { numeric: true, hex: true, address: true, ..Style::default() }, &["-M", "numeric"]);
}
