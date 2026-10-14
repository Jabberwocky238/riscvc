//! 命令行：一条子命令一个目录（`src/cli/<名>/`：`#[derive(clap::Args)]` 的参数结构体 + `run(&self) -> ExitCode`）。
//! 这里只有树根与分派；`main.rs` 只有 `Cli::parse().command.run()`。
use clap::{Parser, Subcommand};
use std::process::ExitCode;

/// `#[cfg(组件)] 子命令(目录) 参数结构体` ⇒ 模块声明、`Command` 枚举、分派（子命令随组件的 feature 开关）。
macro_rules! subcommands {
    ($(#[$cfg:meta] $variant:ident($module:ident) $args:ident),* $(,)?) => {
        $(#[$cfg] mod $module;)*

        #[derive(Subcommand)]
        pub enum Command {
            $(#[$cfg] $variant($module::$args),)*
        }

        impl Command {
            #[must_use]
            pub fn run(&self) -> ExitCode {
                // 一个子命令都没开时枚举是空的：`match *self {}`
                match *self {
                    $(#[$cfg] Self::$variant(ref c) => c.run(),)*
                }
            }
        }
    };
}

subcommands! {
    #[cfg(feature = "asm")] As(r#as) As,
    #[cfg(feature = "link")] Ld(ld) Ld,
    #[cfg(feature = "objdump")] Objdump(objdump) Objdump,
    #[cfg(feature = "codegen")] Llc(llc) Llc,
}

#[derive(Parser)]
#[command(version, about = "纯 Rust 的 RV32IMF 工具链（⛔ 不依赖 LLVM）")]
pub struct Cli {
    #[command(subcommand)]
    pub command: Command,
}

/// 叶子命令的收尾：错误打到 stderr、给退出码。
#[allow(dead_code, reason = "一个子命令都没开时用不到")]
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
#[allow(dead_code, reason = "只开了不读文件的子命令时用不到")]
fn read(path: &std::path::Path) -> Result<Vec<u8>, String> {
    std::fs::read(path).map_err(|e| format!("{}：{e}", path.display()))
}

#[allow(dead_code, reason = "只开了不写文件的子命令时用不到")]
fn write(path: &std::path::Path, bytes: &[u8]) -> Result<(), String> {
    std::fs::write(path, bytes).map_err(|e| format!("{}：{e}", path.display()))
}
