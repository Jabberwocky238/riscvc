//! `riscvc llc`：MLIR（`llvm` 方言，通用形式；有高层方言的先经 mlirpass 下降）⇒ 汇编 `.s` 或目标文件 `.o`。
//!
//! ⭐ 并行（`-j`）：两层，都在这里（代码生成本身是串行的 `Module::compile`）。
//! ```text
//! 各输入     读 + 解析 + pass              一个输入一个任务
//! 各分段     Module::compile              每个输入按函数切成连续几段（按指令数配平），段外的函数只留声明，
//!                                         全局 / 别名只给最后一段 ⇒ 各段的汇编按次序拼起来 = 串行编的（逐字节）
//! 各输入     拼汇编 + 汇编 + 写出           一个输入一个任务
//! ```
use super::Jobs;
use crate::ir::{Block, Module, Ty};
use crate::plugin::Registry;
use std::path::{Path, PathBuf};
use std::process::ExitCode;

/// 编译：`.mlir`（mlir-opt --mlir-print-op-generic 的 llvm 方言）⇒ `.s` / `.o`（同 `mlir-translate | llc`）。
#[derive(clap::Args)]
pub struct Llc {
    /// 输入（可以多个，并行编）。
    #[arg(required_unless_present = "list_plugins")]
    inputs: Vec<PathBuf>,
    /// 输出。一个输入：扩展名 `.o` 出目标文件，其余出汇编；多个输入：目录，各出 `<名>.o`（`--emit asm` 出 `<名>.s`）。
    #[arg(short, required_unless_present = "list_plugins")]
    output: Option<PathBuf>,
    /// 出什么（缺省：一个输入看 `-o` 的扩展名，多个输入出目标文件）。
    #[arg(long, value_enum)]
    emit: Option<Emit>,
    /// 并行的线程数（缺省：CPU 数）。
    #[arg(short, long)]
    jobs: Option<std::num::NonZeroUsize>,
    /// 代码生成前在内部 IR 上跑的 pass（按给的次序，可重复）。给了就整条取代缺省的那串。
    #[arg(long = "pass")]
    passes: Vec<String>,
    /// 高层方言（func / arith / scf / memref …）下降成 llvm 方言的 mlirpass 流水线（缺省 `plugin::LOWERING`）。
    #[arg(long)]
    lowering: Option<String>,
    /// ⛔ 不跑中端 pass（`llc` 本身不优化，要逐条对着它看代码时用这个）。
    #[arg(long)]
    no_opt: bool,
    /// 列出注册的方言与 pass。
    #[arg(long)]
    list_plugins: bool,
    /// `-mattr=-relax`：出目标文件时 ⛔ 出 `R_RISCV_RELAX` / `R_RISCV_ALIGN`（缺省同 llc 开着松弛）。
    #[arg(long)]
    no_relax: bool,
    /// 目标（`-march` / `--mattr` 写法，同 `riscvc as`）：决定乘除走不走 libcall、浮点走不走软浮点；缺省 `rv32imf_zicsr_zmmul`。
    #[arg(long)]
    march: Option<String>,
}

#[derive(Clone, Copy, PartialEq, Eq, clap::ValueEnum)]
enum Emit {
    Asm,
    Obj,
}

/// 一个输入的一段：只带这段函数体的模块。
struct Shard {
    input: usize,
    module: Module,
}

impl Llc {
    pub fn run(&self) -> ExitCode {
        super::finish(self.exec())
    }

    fn exec(&self) -> Result<(), String> {
        if self.list_plugins {
            let reg = Registry::default();
            println!("方言：{}", reg.dialects().map(|d| d.namespace()).collect::<Vec<_>>().join(", "));
            for p in reg.passes() {
                println!("pass {:16} {}", p.name(), p.summary());
            }
            return Ok(());
        }
        let Some(output) = &self.output else { return Err(String::from("要 -o")) };
        let jobs = self.jobs.map_or_else(Jobs::default, Jobs);
        let outputs = self.outputs(output)?;
        let modules = jobs.map(&self.inputs, |input| self.parse(input)).into_iter().collect::<Result<Vec<_>, _>>()?;
        let per = jobs.0.get().div_ceil(modules.len()).max(1);
        let shards: Vec<Shard> = modules.into_iter().enumerate().flat_map(|(input, m)| Self::split(m, per).into_iter().map(move |module| Shard { input, module })).collect();
        // 目标（模块引用不跨线程 ⇒ 各线程自己按 `--march` 再取一份）
        super::target(self.march.as_deref())?;
        let compile = |m: &Module| -> Result<String, String> {
            let target = super::target(self.march.as_deref())?;
            m.compile_with(&crate::codegen::Options { target, ..Default::default() }).map_err(|e| e.to_string())
        };
        let asm = jobs.map(&shards, |s| compile(&s.module).map_err(|e| format!("{}：{e}", self.inputs[s.input].display())));
        // 拼：每个输入的各段按次序接起来，第一段之后去掉段头（空模块编出来的那几行属性）
        let head = compile(&Module::default())?;
        let mut texts = vec![String::new(); self.inputs.len()];
        for (s, text) in shards.iter().zip(asm) {
            let text = text?;
            let out = &mut texts[s.input];
            out.push_str(if out.is_empty() { &text } else { text.strip_prefix(head.as_str()).unwrap_or(&text) });
        }
        let work: Vec<(usize, String)> = texts.into_iter().enumerate().collect();
        jobs.map(&work, |(i, asm)| self.finish(&self.inputs[*i], &outputs[*i], asm)).into_iter().collect()
    }

    /// 各输入的输出路径与出什么。
    fn outputs(&self, output: &Path) -> Result<Vec<(PathBuf, Emit)>, String> {
        if let [_] = self.inputs.as_slice() {
            let emit = self.emit.unwrap_or(if output.extension().is_some_and(|e| e == "o") { Emit::Obj } else { Emit::Asm });
            return Ok(vec![(output.to_path_buf(), emit)]);
        }
        let emit = self.emit.unwrap_or(Emit::Obj);
        std::fs::create_dir_all(output).map_err(|e| format!("{}：{e}", output.display()))?;
        let mut seen = std::collections::HashSet::new();
        self.inputs
            .iter()
            .map(|input| {
                let stem = input.file_stem().ok_or_else(|| format!("{}：没有文件名", input.display()))?;
                // ⛔ with_extension：`x.O2` 的 `.O2` 会被当成扩展名换掉
                let out = output.join(format!("{}.{}", stem.to_string_lossy(), if emit == Emit::Obj { "o" } else { "s" }));
                // 两个输入同名 ⇒ 后一个会盖掉前一个
                if !seen.insert(out.clone()) {
                    return Err(format!("{}：输出 {} 与别的输入重名", input.display(), out.display()));
                }
                Ok((out, emit))
            })
            .collect()
    }

    /// 读 + 解析 + pass（每个任务自己一份注册表：插件不要求 `Sync`）。
    fn parse(&self, input: &Path) -> Result<Module, String> {
        let mut reg = Registry::default();
        if let Some(p) = &self.lowering {
            reg.lowering(p);
        }
        let text = String::from_utf8(super::read(input)?).map_err(|e| format!("{}：{e}", input.display()))?;
        let mut module = reg.parse(&text).map_err(|e| format!("{}：{e}", input.display()))?;
        let pipeline: Vec<&str> = match (self.no_opt, self.passes.is_empty()) {
            (true, _) => Vec::new(),
            // 缺省这一串：mem2reg 把 alloca 提成 SSA 值，gvn 吃掉它暴露出来的冗余计算，
            // dce 收尾。⛔ `--pass` 一旦给了就整条取代它。
            (false, true) => riscvc::opt::DEFAULT_PIPELINE.to_vec(),
            (false, false) => self.passes.iter().map(String::as_str).collect(),
        };
        reg.run(&mut module, &pipeline).map_err(|e| format!("{}：{e}", input.display()))?;
        Ok(module)
    }

    /// 按函数切成至多 `n` 段连续的（按指令数配平）。函数体搬进各段，⛔ 不拷贝；段外的函数是声明，函数下标不变。
    fn split(mut m: Module, n: usize) -> Vec<Module> {
        let bodies: Vec<(Vec<Block>, Vec<Ty>)> = m.functions.iter_mut().map(|f| (core::mem::take(&mut f.blocks), core::mem::take(&mut f.vals))).collect();
        let weight: Vec<usize> = bodies.iter().map(|(b, _)| b.iter().map(|b| b.insts.len()).sum()).collect();
        let total: usize = weight.iter().sum();
        let n = n.min(weight.iter().filter(|&&w| w > 0).count()).max(1);
        let (globals, aliases) = (core::mem::take(&mut m.globals), core::mem::take(&mut m.aliases));
        let mut shards: Vec<Module> = (0..n).map(|_| m.clone()).collect();
        let mut at = 0;
        for (i, ((blocks, vals), w)) in bodies.into_iter().zip(weight).enumerate() {
            let k = (at * n / total.max(1)).min(n - 1);
            at += w;
            let f = &mut shards[k].functions[i];
            (f.blocks, f.vals) = (blocks, vals);
        }
        let last = shards.last_mut().expect("至少一段");
        (last.globals, last.aliases) = (globals, aliases);
        shards
    }

    /// 一个输入的汇编 ⇒ 写出（目标文件先汇编）。
    fn finish(&self, input: &Path, (output, emit): &(PathBuf, Emit), asm: &str) -> Result<(), String> {
        match emit {
            Emit::Obj => super::write(output, &self.object(asm).map_err(|e| format!("{}（汇编生成的代码）：{e}", input.display()))?),
            Emit::Asm => super::write(output, asm.as_bytes()),
        }
    }

    /// 生成的汇编 ⇒ 目标文件。
    fn object(&self, asm: &str) -> Result<Vec<u8>, String> {
        crate::asm::Assembler::new().options(crate::asm::Options { attributes: None, relax: !self.no_relax, ..Default::default() }).target(super::target(self.march.as_deref())?).assemble(asm).map_err(|e| e.to_string())
    }
}
