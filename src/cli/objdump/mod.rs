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
            for (i, word) in data.chunks(4).enumerate() {
                let pc = base + 4 * i as u64;
                for (_, name) in labels.iter().filter(|(a, _)| *a == pc) {
                    println!("\n{pc:08x} <{name}>:");
                }
                let w = u32::from_le_bytes(word.try_into().unwrap_or([0; 4]));
                let text = crate::isa::Inst::try_from(w).map_or_else(|()| String::from("<unknown>"), |inst| inst.print(pc, style));
                println!("{pc:8x}: {w:08x}     \t{text}");
            }
        }
        Ok(())
    }
}

