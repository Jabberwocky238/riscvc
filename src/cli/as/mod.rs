//! `riscvc as`：汇编（`.s` / `.S` ⇒ 目标文件）。
use std::path::PathBuf;
use std::process::ExitCode;

/// 汇编：`.s` / `.S` ⇒ ELF 目标文件（同 `llvm-mc -filetype=obj` / `clang -c x.s`）。
#[derive(clap::Args)]
pub struct As {
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
    /// `-mabi=ilp32`（缺省：开了 `f` feature 是 ilp32f）。
    #[arg(long)]
    soft_float: bool,
    /// 写 `.riscv.attributes`（同 clang -c；值是架构串）。
    #[arg(long)]
    arch_attribute: Option<String>,
}

impl As {
    pub fn run(&self) -> ExitCode {
        super::finish(self.exec())
    }

    fn exec(&self) -> Result<(), String> {
        let text = String::from_utf8(super::read(&self.input)?).map_err(|e| format!("{}：{e}", self.input.display()))?;
        let defines = self.define.iter().map(|d| d.split_once('=').map_or((d.clone(), String::from("1")), |(a, b)| (String::from(a), String::from(b)))).collect();
        let mut include = self.include.clone();
        include.extend(self.input.parent().map(PathBuf::from));
        let opts = crate::asm::Options {
            float_abi: crate::isa::Ext::F.enabled() && !self.soft_float,
            preprocess: self.preprocess || self.input.extension().is_some_and(|e| e == "S"),
            defines,
            include,
            attributes: self.arch_attribute.clone(),
        };
        let bytes = crate::asm::Assembler::new(opts).assemble(&text).map_err(|e| format!("{}：{e}", self.input.display()))?;
        super::write(&self.output, &bytes)
    }
}

