//! 译码 + 打印 vs `llvm-objdump`（riscv32，-mattr 同开了的扩展）：随机字逐条比，别名与 no-aliases 两种风格。
//! 我们这边走 [`Disasm`]（内置扩展 + RV32I），同 `riscvc objdump`。
mod llvm;
use riscvc::ext::Disasm;
use riscvc::isa::Style;

fn words(n: usize) -> Vec<u32> {
    // 开了的全部指令（RV32I + 按 feature 注册的扩展，含 --features xthead 的玄铁）
    let pats = riscvc::feature::patterns();
    let mut rng = llvm::Rng(0x1234_5678_9abc_def1);
    (0..n)
        .map(|i| {
            let r = rng.next() as u32;
            if i % 8 == 0 {
                (r | 3) & !(u32::from(r & 0x1c == 0x1c) << 2) // 纯随机，落在 32 位指令空间（低两位 11、bit 4:2 ≠ 111）：看拒收是否一致
            } else {
                let (bits, mask) = pats[(rng.next() % pats.len() as u64) as usize];
                bits | (r & !mask)
            }
        })
        .collect()
}

fn compare(style: Style, args: &[&str]) {
    use object::write::{Object, StandardSection};
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let words = words(200_000);
    let mut obj = Object::new(object::BinaryFormat::Elf, object::Architecture::Riscv32, object::Endianness::Little);
    let text = obj.section_id(StandardSection::Text);
    obj.append_section_data(text, &words.iter().flat_map(|w| w.to_le_bytes()).collect::<Vec<u8>>(), 4);
    let dir = std::env::temp_dir().join(format!("riscvc-disasm-{}-{}", std::process::id(), args.join("")));
    std::fs::write(&dir, obj.write().unwrap()).unwrap();
    let mattr = format!("--mattr={}", riscvc::feature::Target::mattr());
    let mut cmd = vec!["-d", "--no-show-raw-insn", mattr.as_str()];
    cmd.extend(args);
    cmd.push(dir.to_str().unwrap());
    let (out, _) = llvm.run("llvm-objdump", &cmd, "");
    std::fs::remove_file(&dir).ok();
    // ⚠ llvm-objdump 缺省就印十六进制立即数。每行「      地址: \t助记符\t操作数」；认不出的是 `<unknown>`
    let theirs: std::collections::HashMap<u64, String> = out
        .lines()
        .filter_map(|l| {
            let (addr, rest) = l.split_once(':')?;
            let addr = u64::from_str_radix(addr.trim(), 16).ok()?;
            let text = rest.trim().replace('\t', " ");
            let text = text.split(" <").next().unwrap().to_string(); // 去掉 `<符号+偏移>`
            Some((addr, text))
        })
        .collect();
    let (mut bad, mut shown) = (0, 0);
    for (i, &w) in words.iter().enumerate() {
        let pc = 4 * i as u64;
        // 一个字的反汇编：内置扩展先认，再 RV32I（同 objdump）
        let bytes = w.to_le_bytes();
        let ours = Disasm::new(&bytes, pc, &[], style).next().map_or_else(String::new, |l| l.text.replace('\t', " "));
        let expect = theirs.get(&pc).cloned().unwrap_or_default();
        if ours != expect {
            bad += 1;
            if shown < 40 {
                shown += 1;
                eprintln!("{w:#010x}: riscvc {ours:?} ≠ llvm {expect:?}");
            }
        }
    }
    assert_eq!(bad, 0, "{bad} / {} 个字不一致", words.len());
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
fn numeric_hex() {
    compare(Style { numeric: true, hex: true, address: true, ..Style::default() }, &["-M", "numeric"]);
}
