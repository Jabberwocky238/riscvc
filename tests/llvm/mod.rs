//! 对照用的 LLVM（⛔ 不是依赖）：`RISCVC_LLVM_BIN`，缺省 `../llvm-project/build/bin`（jw238 下 docc 的构建树）。
//! 找不到就说 SKIP、测试照过。
#![allow(dead_code)]
use std::path::PathBuf;
use std::process::{Command, Stdio};
use std::io::Write;

pub mod call;

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

    /// 工具所在的目录。
    pub fn bin(&self) -> &std::path::Path {
        &self.bin
    }

    /// 跑一个 LLVM 工具，stdin 喂 `input`，回 (stdout, stderr)。
    pub fn run(&self, tool: &str, args: &[&str], input: &str) -> (String, String) {
        let mut child = Command::new(self.bin.join(tool)).args(args).stdin(Stdio::piped()).stdout(Stdio::piped()).stderr(Stdio::piped()).spawn().expect(tool);
        child.stdin.take().unwrap().write_all(input.as_bytes()).unwrap();
        let out = child.wait_with_output().unwrap();
        (String::from_utf8_lossy(&out.stdout).into_owned(), String::from_utf8_lossy(&out.stderr).into_owned())
    }
}

/// 确定性的伪随机（xorshift64*）；`int` / `float` / `double` 偏向边界值。
pub struct Rng(pub u64);

impl Rng {
    pub fn next(&mut self) -> u64 {
        self.0 ^= self.0 >> 12;
        self.0 ^= self.0 << 25;
        self.0 ^= self.0 >> 27;
        self.0.wrapping_mul(0x2545_f491_4f6c_dd1d)
    }

    fn pick<T: Copy>(&mut self, xs: &[T]) -> T {
        xs[(self.next() % xs.len() as u64) as usize]
    }

    /// 低 `bits` 位。
    pub fn int(&mut self, bits: u32) -> u64 {
        let m = if bits >= 64 { u64::MAX } else { (1u64 << bits) - 1 };
        match self.next() % 3 {
            0 => self.pick(&[0, 1, 2, m, m >> 1, (m >> 1) + 1, m - 1, 0x80, 0x7f, 0xffff, 0x8000_0000, 0x7fff_ffff]) & m,
            1 => (self.next() % 64) & m,
            _ => self.next() & m,
        }
    }

    pub fn float(&mut self) -> u32 {
        match self.next() % 3 {
            0 => self.pick(&[0.0f32, -0.0, 1.0, -1.0, 0.5, 3.0, f32::MAX, f32::MIN_POSITIVE, 1e-40, f32::INFINITY, f32::NEG_INFINITY, f32::NAN, 16_777_217.0, 2_147_483_648.0, -2_147_483_904.0, 4_294_967_296.0]).to_bits(),
            1 => ((self.next() % 2000) as f32 - 1000.0).to_bits() ^ (self.next() as u32 & 0x7ff),
            _ => self.next() as u32,
        }
    }

    pub fn double(&mut self) -> u64 {
        match self.next() % 3 {
            0 => self.pick(&[0.0f64, -0.0, 1.0, -1.0, 0.5, 3.0, f64::MAX, f64::MIN_POSITIVE, 5e-324, f64::INFINITY, f64::NEG_INFINITY, f64::NAN, 9_007_199_254_740_993.0, 1e300, -1e-300, 4_294_967_296.0]).to_bits(),
            1 => ((self.next() % 2000) as f64 - 1000.0).to_bits() ^ (self.next() & 0xffff),
            _ => self.next(),
        }
    }
}
