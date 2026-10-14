//! `riscvc`：一条子命令一件事（`as` 汇编、`objdump` 反汇编；`ld`、`llc` 随模块补上）。
use clap::{Parser, Subcommand};
use std::path::PathBuf;
use std::process::ExitCode;

#[derive(Parser)]
#[command(version, about = "纯 Rust 的 RV32IMF 工具链（⛔ 不依赖 LLVM）")]
struct Cli {
    #[command(subcommand)]
    command: Command,
}

#[derive(Subcommand)]
enum Command {
    As(As),
    Objdump(Objdump),
}

/// 汇编：`.s` / `.S` ⇒ ELF 目标文件（同 `llvm-mc -filetype=obj` / `clang -c x.s`）。
#[derive(clap::Args)]
struct As {
    input: PathBuf,
    #[arg(short)]
    output: PathBuf,
    /// `-D名字[=值]`（`.S` 的预处理）。
    #[arg(short = 'D')]
    define: Vec<String>,
    /// `.incbin` 的搜索目录。
    #[arg(short = 'I')]
    include: Vec<PathBuf>,
    /// 当 `.S` 处理（缺省按扩展名：大写 S 才预处理）。
    #[arg(long)]
    preprocess: bool,
    /// `-mabi=ilp32`（缺省 ilp32f）。
    #[arg(long)]
    soft_float: bool,
    /// 写 `.riscv.attributes`（同 clang -c；值是架构串）。
    #[arg(long)]
    arch_attribute: Option<String>,
}

/// 反汇编 ELF 里的代码节（同 `llvm-objdump -d`）。
#[derive(clap::Args)]
struct Objdump {
    input: PathBuf,
    /// 同 llvm-objdump 的 `-M`：`no-aliases`、`numeric`，逗号分隔。
    #[arg(short = 'M', value_delimiter = ',')]
    options: Vec<String>,
    /// 立即数印十进制（缺省十六进制，同 llvm-objdump）。
    #[arg(long)]
    no_print_imm_hex: bool,
}

impl As {
    fn run(&self) -> Result<(), String> {
        let text = std::fs::read_to_string(&self.input).map_err(|e| format!("{}：{e}", self.input.display()))?;
        let defines = self.define.iter().map(|d| d.split_once('=').map_or((d.clone(), String::from("1")), |(a, b)| (String::from(a), String::from(b)))).collect();
        let mut include = self.include.clone();
        include.extend(self.input.parent().map(PathBuf::from));
        let opts = riscvc::asm::Options {
            float_abi: !self.soft_float,
            preprocess: self.preprocess || self.input.extension().is_some_and(|e| e == "S"),
            defines,
            include,
            attributes: self.arch_attribute.clone(),
        };
        let bytes = riscvc::asm::Assembler::new(opts).assemble(&text).map_err(|e| format!("{}：{e}", self.input.display()))?;
        std::fs::write(&self.output, bytes).map_err(|e| format!("{}：{e}", self.output.display()))
    }
}

impl Objdump {
    fn run(&self) -> Result<(), String> {
        use object::{Object, ObjectSection, ObjectSymbol};
        let bytes = std::fs::read(&self.input).map_err(|e| format!("{}：{e}", self.input.display()))?;
        let file = object::File::parse(bytes.as_slice()).map_err(|e| e.to_string())?;
        let style = riscvc::isa::Style {
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
                let text = riscvc::isa::Inst::try_from(w).map_or_else(|()| String::from("<unknown>"), |inst| inst.print(pc, style));
                println!("{pc:8x}: {w:08x}     \t{text}");
            }
        }
        Ok(())
    }
}

fn main() -> ExitCode {
    let cli = Cli::parse();
    let result = match &cli.command {
        Command::As(a) => a.run(),
        Command::Objdump(o) => o.run(),
    };
    match result {
        Ok(()) => ExitCode::SUCCESS,
        Err(e) => {
            eprintln!("riscvc: {e}");
            ExitCode::FAILURE
        }
    }
}
