//! 命令行：一条子命令一个文件（`src/cli/<名>.rs`：`#[derive(clap::Args)]` 的参数结构体 + `run(&self) -> ExitCode`）。
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
/// `--march`：架构串（`rv32imf_zicsr`、`rv32i2p1_m2p0_c2p0`）或 `-mattr` 写法（`+m,+f,+xtheadcmo`）；不给 ⇒ 缺省目标。
fn target(spec: Option<&str>) -> Result<crate::feature::Target<'static>, String> {
    spec.map_or_else(|| Ok(crate::feature::Target::default()), crate::feature::Target::parse)
}

fn read(path: &std::path::Path) -> Result<Vec<u8>, String> {
    std::fs::read(path).map_err(|e| format!("{}：{e}", path.display()))
}

fn write(path: &std::path::Path, bytes: &[u8]) -> Result<(), String> {
    std::fs::write(path, bytes).map_err(|e| format!("{}：{e}", path.display()))
}

/// ⭐ 对每一项并行做 `f`，结果按原次序：交给 moremath 的执行器（`-j` 的那个 `ThreadMulti`，解析 / pass 也用它），
/// 每个工作线程取下一项（大小不一的任务也配得平）。
trait Each: moremath::Executor {
    fn each<'t, T: Sync, R: Send + 't>(&self, items: &'t [T], f: &'t (impl Fn(&T) -> R + Sync)) -> Vec<R> {
        self.execute(items.iter().map(|item| move || f(item)).collect())
    }
}

impl<X: moremath::Executor> Each for X {}
