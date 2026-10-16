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
fn read(path: &std::path::Path) -> Result<Vec<u8>, String> {
    std::fs::read(path).map_err(|e| format!("{}：{e}", path.display()))
}

fn write(path: &std::path::Path, bytes: &[u8]) -> Result<(), String> {
    std::fs::write(path, bytes).map_err(|e| format!("{}：{e}", path.display()))
}

/// 并行的线程数（`-j`）。
#[derive(Clone, Copy)]
struct Jobs(std::num::NonZeroUsize);

impl Default for Jobs {
    /// CPU 数。
    fn default() -> Self {
        Self(std::thread::available_parallelism().unwrap_or(std::num::NonZeroUsize::MIN))
    }
}

impl Jobs {
    /// ⭐ 对每一项并行做 `f`，结果按原次序。线程从一个计数器取下一项（大小不一的任务也配得平）；一项或一个线程就不开线程。
    fn map<T: Sync, R: Send>(self, items: &[T], f: impl Fn(&T) -> R + Sync) -> Vec<R> {
        let n = self.0.get().min(items.len());
        if n <= 1 {
            return items.iter().map(f).collect();
        }
        let next = std::sync::atomic::AtomicUsize::new(0);
        let mut out: Vec<(usize, R)> = std::thread::scope(|s| {
            let workers: Vec<_> = (0..n)
                .map(|_| {
                    s.spawn(|| {
                        let mut done = Vec::new();
                        loop {
                            let i = next.fetch_add(1, std::sync::atomic::Ordering::Relaxed);
                            let Some(item) = items.get(i) else { break done };
                            done.push((i, f(item)));
                        }
                    })
                })
                .collect();
            workers.into_iter().flat_map(|w| w.join().expect("工作线程 panic")).collect()
        });
        out.sort_unstable_by_key(|(i, _)| *i);
        out.into_iter().map(|(_, r)| r).collect()
    }
}
