//! 命令行：一条子命令一个目录（`src/cli/<名>/`：`#[derive(clap::Args)]` 的参数结构体 + `run(&self) -> ExitCode`）。
//! 这里只有树根与分派；`main.rs` 只有 `Cli::parse().command.run()`。
use clap::{Parser, Subcommand};
use std::process::ExitCode;

/// `子命令(目录) 参数结构体` ⇒ 模块声明、`Command` 枚举、分派。
macro_rules! subcommands {
    ($($variant:ident($module:ident) $args:ident),* $(,)?) => {
        $(mod $module;)*

        #[derive(Subcommand)]
        pub enum Command {
            $($variant($module::$args),)*
        }

        impl Command {
            #[must_use]
            pub fn run(&self) -> ExitCode {
                match self {
                    $(Self::$variant(c) => c.run(),)*
                }
            }
        }
    };
}

subcommands! {
    As(r#as) As,
    Ld(ld) Ld,
    Objdump(objdump) Objdump,
    Llc(llc) Llc,
}

#[derive(Parser)]
#[command(version, about = "纯 Rust 的 RV32IMF 工具链（⛔ 不依赖 LLVM）")]
pub struct Cli {
    #[command(subcommand)]
    pub command: Command,
}

/// 叶子命令的收尾：错误打到 stderr、给退出码。
fn finish(result: Result<(), String>) -> ExitCode {
    match result {
        Ok(()) => ExitCode::SUCCESS,
        Err(e) => {
            eprintln!("riscvc: {e}");
            ExitCode::FAILURE
        }
    }
}

/// 读文件，错误带上路径。
fn read(path: &std::path::Path) -> Result<Vec<u8>, String> {
    std::fs::read(path).map_err(|e| format!("{}：{e}", path.display()))
}

fn write(path: &std::path::Path, bytes: &[u8]) -> Result<(), String> {
    std::fs::write(path, bytes).map_err(|e| format!("{}：{e}", path.display()))
}
