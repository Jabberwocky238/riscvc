//! 对照用的 LLVM（⛔ 不是依赖）：`RISCVC_LLVM_BIN`，缺省 `../llvm-project/build/bin`（jw238 下 docc 的构建树）。
//! 找不到就说 SKIP、测试照过。
#![allow(dead_code)]
use std::path::PathBuf;
use std::process::{Command, Stdio};
use std::io::Write;

pub struct Llvm {
    bin: PathBuf,
}

impl Llvm {
    pub fn locate() -> Option<Self> {
        let bin = std::env::var_os("RISCVC_LLVM_BIN").map(PathBuf::from).unwrap_or_else(|| PathBuf::from(concat!(env!("CARGO_MANIFEST_DIR"), "/../llvm-project/build/bin")));
        if bin.join("llvm-mc").is_file() {
            Some(Self { bin })
        } else {
            eprintln!("SKIP：没有 LLVM（{}）", bin.display());
            None
        }
    }

    /// 跑一个 LLVM 工具，stdin 喂 `input`，回 (stdout, stderr)。
    pub fn run(&self, tool: &str, args: &[&str], input: &str) -> (String, String) {
        let mut child = Command::new(self.bin.join(tool)).args(args).stdin(Stdio::piped()).stdout(Stdio::piped()).stderr(Stdio::piped()).spawn().expect(tool);
        child.stdin.take().unwrap().write_all(input.as_bytes()).unwrap();
        let out = child.wait_with_output().unwrap();
        (String::from_utf8_lossy(&out.stdout).into_owned(), String::from_utf8_lossy(&out.stderr).into_owned())
    }
}

/// 确定性的伪随机（xorshift64*）。
pub struct Rng(pub u64);

impl Rng {
    pub fn next(&mut self) -> u64 {
        self.0 ^= self.0 >> 12;
        self.0 ^= self.0 << 25;
        self.0 ^= self.0 >> 27;
        self.0.wrapping_mul(0x2545_f491_4f6c_dd1d)
    }
}
