//! `riscvc llc`：MLIR（`llvm` 方言，通用形式）⇒ 汇编 `.s` 或目标文件 `.o`（按输出的扩展名）。
use std::path::PathBuf;
use std::process::ExitCode;

/// 编译：`.mlir`（mlir-opt --mlir-print-op-generic 的 llvm 方言）⇒ `.s` / `.o`（同 `mlir-translate | llc`）。
#[derive(clap::Args)]
pub struct Llc {
    input: PathBuf,
    /// 输出；扩展名 `.o` 出目标文件，其余出汇编。
    #[arg(short)]
    output: PathBuf,
}

impl Llc {
    pub fn run(&self) -> ExitCode {
        super::finish(self.exec())
    }

    fn exec(&self) -> Result<(), String> {
        let text = String::from_utf8(super::read(&self.input)?).map_err(|e| format!("{}：{e}", self.input.display()))?;
        let module = crate::ir::Module::try_from(text.as_str()).map_err(|e| format!("{}：{e}", self.input.display()))?;
        let asm = module.compile().map_err(|e| format!("{}：{e}", self.input.display()))?;
        if self.output.extension().is_some_and(|e| e == "o") {
            let obj = crate::asm::Assembler::new(crate::asm::Options { attributes: None, ..Default::default() }).assemble(&asm).map_err(|e| format!("{}（汇编生成的代码）：{e}", self.input.display()))?;
            super::write(&self.output, &obj)
        } else {
            super::write(&self.output, asm.as_bytes())
        }
    }
}
