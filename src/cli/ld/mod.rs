//! `riscvc ld`：链接（目标文件 ⇒ 可执行 ELF）。
use std::path::PathBuf;
use std::process::ExitCode;

/// 链接：目标文件 ⇒ 可执行 ELF（同 `ld.lld`）。
#[derive(clap::Args)]
pub struct Ld {
    inputs: Vec<PathBuf>,
    #[arg(short)]
    output: PathBuf,
    /// 链接脚本。
    #[arg(short = 'T')]
    script: Option<PathBuf>,
    /// 入口：符号名或地址。
    #[arg(short)]
    entry: Option<String>,
    /// 不写符号表。
    #[arg(short)]
    strip: bool,
    /// 未定义符号当 0（同 `--unresolved-symbols=ignore-all`）。
    #[arg(long)]
    allow_undefined: bool,
}

impl Ld {
    pub fn run(&self) -> ExitCode {
        super::finish(self.exec())
    }

    fn exec(&self) -> Result<(), String> {
        let script = self.script.as_ref().map(|p| std::fs::read_to_string(p).map_err(|e| format!("{}：{e}", p.display()))).transpose()?;
        let bytes: Vec<(String, Vec<u8>)> = self
            .inputs
            .iter()
            .map(|p| std::fs::read(p).map(|b| (p.display().to_string(), b)).map_err(|e| format!("{}：{e}", p.display())))
            .collect::<Result<_, _>>()?;
        let inputs: Vec<(&str, &[u8])> = bytes.iter().map(|(n, b)| (n.as_str(), b.as_slice())).collect();
        let opts = crate::link::Options { script, entry: self.entry.clone(), strip: self.strip, allow_undefined: self.allow_undefined };
        let elf = crate::link::Linker::link(opts, &inputs).map_err(|e| e.to_string())?;
        super::write(&self.output, &elf)
    }
}

