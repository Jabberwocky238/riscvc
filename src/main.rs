//! `riscvc`：命令行在 `riscvc::cli`（一条子命令一个目录）。
use clap::Parser;

#[allow(unreachable_code, reason = "一个子命令都没开时 Command 是空枚举")]
fn main() -> std::process::ExitCode {
    riscvc::cli::Cli::parse().command.run()
}
