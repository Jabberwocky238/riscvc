//! `riscvc llc`：MLIR（`llvm` 方言，通用形式）⇒ 汇编 `.s` 或目标文件 `.o`（按输出的扩展名）。
use crate::plugin::Registry;
use std::path::PathBuf;
use std::process::ExitCode;

/// 编译：`.mlir`（mlir-opt --mlir-print-op-generic 的 llvm 方言）⇒ `.s` / `.o`（同 `mlir-translate | llc`）。
#[derive(clap::Args)]
pub struct Llc {
    #[arg(required_unless_present = "list_plugins")]
    input: Option<PathBuf>,
    /// 输出；扩展名 `.o` 出目标文件，其余出汇编。
    #[arg(short, required_unless_present = "list_plugins")]
    output: Option<PathBuf>,
    /// 代码生成前在内部 IR 上跑的 pass（按给的次序，可重复）。
    #[arg(long = "pass")]
    passes: Vec<String>,
    /// 列出注册的方言与 pass。
    #[arg(long)]
    list_plugins: bool,
    /// `-mattr=-relax`：出目标文件时 ⛔ 出 `R_RISCV_RELAX` / `R_RISCV_ALIGN`（缺省同 llc 开着松弛）。
    #[arg(long)]
    no_relax: bool,
}

impl Llc {
    pub fn run(&self) -> ExitCode {
        super::finish(self.exec())
    }

    fn exec(&self) -> Result<(), String> {
        let reg = Registry::default();
        if self.list_plugins {
            println!("方言：{}", reg.dialects().map(|d| d.namespace()).collect::<Vec<_>>().join(", "));
            for p in reg.passes() {
                println!("pass {:16} {}", p.name(), p.summary());
            }
            return Ok(());
        }
        let (Some(input), Some(output)) = (&self.input, &self.output) else { return Err(String::from("要输入与 -o")) };
        let text = String::from_utf8(super::read(input)?).map_err(|e| format!("{}：{e}", input.display()))?;
        let mut module = reg.parse(&text).map_err(|e| format!("{}：{e}", input.display()))?;
        let pipeline: Vec<&str> = self.passes.iter().map(String::as_str).collect();
        reg.run(&mut module, &pipeline).map_err(|e| format!("{}：{e}", input.display()))?;
        let asm = module.compile().map_err(|e| format!("{}：{e}", input.display()))?;
        if output.extension().is_some_and(|e| e == "o") {
            super::write(output, &self.object(&asm).map_err(|e| format!("{}（汇编生成的代码）：{e}", input.display()))?)
        } else {
            super::write(output, asm.as_bytes())
        }
    }

    /// 生成的汇编 ⇒ 目标文件。
    fn object(&self, asm: &str) -> Result<Vec<u8>, String> {
        crate::asm::Assembler::new(crate::asm::Options { attributes: None, relax: !self.no_relax, ..Default::default() }).assemble(asm).map_err(|e| e.to_string())
    }
}
