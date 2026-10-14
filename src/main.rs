//! `riscvc`：命令行在 `riscvc::cli`（一条子命令一个目录）。
use clap::Parser;

fn main() -> std::process::ExitCode {
    riscvc::cli::Cli::parse().command.run()
}
