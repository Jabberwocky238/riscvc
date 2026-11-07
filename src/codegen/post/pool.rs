//! 模块级常量池（[`crate::codegen::Options::pool`]）：要两条才能装的常量（`lui` + `addi`）改成一条
//! `lw rd, 偏移(基址)`，基址寄存器钉在池中间（`gp` / `tp` 一类不参与分配的寄存器）。
//!
//! ⭐ 为什么：发射字一类程序一个模块要上万个这样的常量，代码只能从 DDR 经指令缓存流进来；
//! 池在数据缓存里，一条 `lw` 比两条指令少 4 字节代码、少一条发射。
//!
//! * 一个基址够 1024 个字（偏移 −2048 … 2044，基址 = 池 + 4096·k + 2048）；按全模块的使用次数挑最多的进池。
//! * 不变式：本模块的代码里，基址寄存器总是装着本模块的池。
//!   - 用到池的函数在入口块最前面装一次（`lla 基址, 池 + 4096·k + 2048`，k 是本模块用到的每个基址）：调它的可能是别的模块；
//!   - ⭐ 本模块**每个**函数（用不用池都算）调了模块外的函数、或间接调用之后再装一次：别的模块可能把同一个寄存器
//!     钉在它自己的池上，⛔ 只在用池的函数里重装 —— 本模块的 `f` 不用池、调了外面的 `g`，回到调 `f` 的人那里基址就错了；
//!   - 尾调用模块外函数的本模块函数（`tail g` 直接回到调用者）不算「本模块」：调它之后也重装（传递地算到不动点）。
//! * 池在 `.rodata`，标号 [`LABEL`]（模块内局部）。
//!
//! 在近值窥孔（[`super::near`]）之后做：近值改掉的不进池。改完重新做分支松弛（入口多了两条）。
use super::{PFunc, PInst};
use crate::isa::{Inst, Opcode, Rv32i as IOp, X};
use core::fmt::Write;
use std::collections::{HashMap, HashSet};

/// 池的标号。
pub const LABEL: &str = ".Lriscvc_cpool";
/// 一个基址够的字数。
const PER_BASE: usize = 1024;

/// 一条 `li` 要两条机器指令。
const fn wide(k: i32) -> bool {
    !(k >= -2048 && k < 2048 || k & 0xfff == 0)
}

pub struct Pool<'a> {
    bases: &'a [u8],
    /// 调了不用重装的本模块函数：定义在本模块、尾调用只落在这些函数上。
    safe: HashSet<&'a str>,
    /// 池里第 n 个字。
    words: Vec<i32>,
    at: HashMap<i32, usize>,
}

impl<'a> Pool<'a> {
    /// 全模块按使用次数挑（次数相同按值，结果确定）；`funcs`：（函数名, 函数）。
    #[must_use]
    pub fn new(funcs: &[(&'a str, &PFunc)], bases: &'a [u8]) -> Self {
        let mut uses: HashMap<i32, usize> = HashMap::new();
        for i in funcs.iter().flat_map(|(_, f)| f.blocks.iter().flat_map(|b| b.insts.iter())) {
            if let PInst::Li(rd, k) = *i
                && rd != 0
                && wide(k)
            {
                *uses.entry(k).or_default() += 1;
            }
        }
        let mut words: Vec<(i32, usize)> = uses.into_iter().collect();
        words.sort_by_key(|&(k, n)| (core::cmp::Reverse(n), k));
        words.truncate(PER_BASE * bases.len());
        let words: Vec<i32> = words.into_iter().map(|(k, _)| k).collect();
        let at = words.iter().enumerate().map(|(n, &k)| (k, n)).collect();
        let mut safe: HashSet<&str> = funcs.iter().map(|&(n, _)| n).collect();
        loop {
            let leaky: Vec<&str> = funcs
                .iter()
                .filter(|&&(n, f)| safe.contains(n) && f.blocks.iter().any(|b| matches!(&b.term, super::Term::Tail(t) if !safe.contains(t.as_str()))))
                .map(|&(n, _)| n)
                .collect();
            if leaky.is_empty() {
                break;
            }
            leaky.into_iter().for_each(|n| {
                safe.remove(n);
            });
        }
        Self { bases, safe, words, at }
    }

    /// 第 k 个基址装的值：池 + 4096·k + 2048。
    fn anchor(k: usize) -> i64 {
        i64::try_from(4 * PER_BASE * k + 2048).unwrap_or(0)
    }

    /// ⭐ 改一个函数；返回改成 `lw` 的条数。
    pub fn apply(&self, f: &mut PFunc) -> usize {
        if self.words.is_empty() {
            return 0;
        }
        let mut changed = 0;
        for b in &mut f.blocks {
            for i in &mut b.insts {
                let PInst::Li(rd, k) = *i else { continue };
                let Some(&n) = self.at.get(&k).filter(|_| rd != 0 && wide(k)) else { continue };
                let (base, off) = (n / PER_BASE, i32::try_from(n % PER_BASE).unwrap_or(0) * 4 - 2048);
                *i = PInst::I(Inst::new(IOp::Lw).x(rd, self.bases[base], 0).with_imm(off));
                changed += 1;
            }
        }
        let set: Vec<PInst> = (0..self.words.len().div_ceil(PER_BASE)).map(|k| PInst::La(self.bases[k], String::from(LABEL), Self::anchor(k))).collect();
        // 调了模块外的函数 / 间接调用之后再装
        for b in &mut f.blocks {
            let mut k = 0;
            while k < b.insts.len() {
                let foreign = match &b.insts[k] {
                    PInst::Call(sym) => !self.safe.contains(sym.as_str()),
                    PInst::I(x) => matches!(x.op, Opcode::I(IOp::Jalr)) && x.rd == X::RA.0,
                    _ => false,
                };
                k += 1;
                if foreign {
                    b.insts.splice(k..k, set.iter().cloned());
                    k += set.len();
                }
            }
        }
        if changed > 0 {
            let entry = f.layout[0];
            f.blocks[entry].insts.splice(0..0, set);
        }
        f.relax();
        changed
    }

    /// 池本身（`.rodata`）；空池不出。
    #[must_use]
    pub fn data(&self) -> String {
        let mut text = String::new();
        if self.words.is_empty() {
            return text;
        }
        let _ = writeln!(text, "\t.section\t.rodata,\"a\",@progbits\n\t.p2align\t2, 0x0\n{LABEL}:");
        for k in &self.words {
            let _ = writeln!(text, "\t.word\t{k}");
        }
        text
    }
}
