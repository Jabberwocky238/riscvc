//! `riscvc objdump`：反汇编（ELF 的代码节）。
use std::path::PathBuf;
use std::process::ExitCode;

/// 反汇编 ELF 里的代码节（同 `llvm-objdump -d`）。
#[derive(clap::Args)]
pub struct Objdump {
    input: PathBuf,
    /// 同 llvm-objdump 的 `-M`：`no-aliases`、`numeric`，逗号分隔。
    #[arg(short = 'M', value_delimiter = ',')]
    options: Vec<String>,
    /// 立即数印十进制（缺省十六进制，同 llvm-objdump）。
    #[arg(long)]
    no_print_imm_hex: bool,
}

impl Objdump {
    pub fn run(&self) -> ExitCode {
        super::finish(self.exec())
    }

    fn exec(&self) -> Result<(), String> {
        use object::{Object, ObjectSection, ObjectSymbol};
        let bytes = super::read(&self.input)?;
        let file = object::File::parse(bytes.as_slice()).map_err(|e| e.to_string())?;
        let style = crate::isa::Style {
            no_aliases: self.options.iter().any(|o| o == "no-aliases"),
            numeric: self.options.iter().any(|o| o == "numeric"),
            hex: !self.no_print_imm_hex,
            address: true,
        };
        println!("\n{}:\tfile format elf32-littleriscv\n", self.input.display());
        for section in file.sections().filter(|s| s.kind() == object::SectionKind::Text) {
            let data = section.data().map_err(|e| e.to_string())?;
            let base = section.address();
            println!("Disassembly of section {}:\n", section.name().unwrap_or("?"));
            let mut labels: Vec<(u64, &str)> = file
                .symbols()
                .filter(|s| s.section_index() == Some(section.index()) && !s.name().unwrap_or("").starts_with('$') && !s.name().unwrap_or("").is_empty())
                .map(|s| (s.address(), s.name().unwrap_or("")))
                .collect();
            labels.sort_unstable();
            for line in crate::ext::Disassembler::new().style(style).lines(data, base) {
                for (_, name) in labels.iter().filter(|(a, _)| *a == line.pc) {
                    println!("\n{:08x} <{name}>:", line.pc);
                }
                // 同 llvm-objdump：按 4 字节一组、各组小端读成字，低地址的组在前
                let raw: Vec<String> = line.bytes.chunks(4).map(|c| c.iter().rev().map(|b| format!("{b:02x}")).collect()).collect();
                let raw = raw.join(" ");
                println!("{:8x}: {raw}     \t{}", line.pc, line.text);
            }
        }
        Ok(())
    }
}

