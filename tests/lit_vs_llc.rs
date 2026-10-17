//! LLVM 自己的测试对拍（`tests/fixtures/lit`，入库，`tools/lit.sh` 生成）：`CodeGen/RISCV` 的 `.ll`、
//! MLIR 导入器（`Target/LLVMIR/Import`）的 `.ll`、LLVM 方言翻译（`Target/LLVMIR`）的 `.mlir`。
//! 每份：riscvc 编 `.mlir`，对照是入库的 llc 产物 `.o`（⛔ 测试时不要 LLVM），函数级对拍见 [`llvm::call`]。
//!
//! 一个函数的结局：解析不了（整份）、编不了（单个函数，隔离着编：别的函数体先拿掉）、结果和 llc 不同、通过。
//! 结果不同的再在定义域里（[`Domain::Small`]）比一遍：也不同 ⇒「结果」（疑似错误代码）；一致 ⇒「域外」（只在
//! 移位量 ≥ 位宽、`cttz(0)` 这类 poison / 未定义行为的输入上不同，逐项核对过才登记）。
//! 预期失败登记在 `tests/fixtures/lit/xfail.txt`（`份/函数 原因`；整份的不写函数）：
//! ⛔ 不在表里却失败 = 回归；在表里却过了 = 表过时（同 lit 的 XPASS），两样都让测试失败。
//! `RISCVC_LIT_UPDATE=1` 按这次的结果重写表；核实过的项写成 `类：【说明】…`，重写时同一类的保留。
mod llvm;
use llvm::call::{Domain, Image, Lib, Pair, Sig};
use riscvc::ir::{Block, Module, Ty};
use std::collections::BTreeMap;
use std::path::Path;

/// 这一轮对拍跑的中端流水线。和 `riscvc llc` 的缺省同一处定义；要试别的串就改这里，
/// 改动会出现在 diff 里。
const PIPELINE: [&str; 4] = riscvc::opt::DEFAULT_PIPELINE;

/// 失败的一项：键（`份` 或 `份/函数`）⇒ 原因。
type Fails = BTreeMap<String, String>;

/// 一份 fixture 的对拍。
struct Case<'l> {
    lib: &'l Lib,
    /// 代码生成前跑哪串中端 pass。⛔ 由上面注进来，不从环境变量取：换流水线是改代码、
    /// 要进 diff 的事，不该靠外部开关悄悄改变一次运行的含义。
    passes: &'l [&'l str],
    key: String,
    mlir: String,
    theirs: Vec<u8>,
}

impl Case<'_> {
    /// 第一行、截短（表里一行一项）。
    fn why(e: &str) -> String {
        let line = e.lines().next().unwrap_or("").trim();
        line.chars().take(120).collect()
    }

    /// 只留第 `i` 个函数体编：Ok / Err(原因)，panic 也算 Err。
    fn alone(m: &mut Module, bodies: &mut [(Vec<Block>, Vec<Ty>)], i: usize) -> Result<(), String> {
        let f = &mut m.functions[i];
        (f.blocks, f.vals) = core::mem::take(&mut bodies[i]);
        let r = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| m.compile().map(drop).map_err(|e| e.to_string())));
        let f = &mut m.functions[i];
        bodies[i] = (core::mem::take(&mut f.blocks), core::mem::take(&mut f.vals));
        r.unwrap_or_else(|p| Err(format!("panic：{}", p.downcast_ref::<String>().map(String::as_str).or_else(|| p.downcast_ref::<&str>().copied()).unwrap_or("?"))))
    }

    /// 对拍这一份：（调用次数, 失败）。
    fn run(&self) -> (usize, Fails) {
        let mut fails = Fails::new();
        let runs = self.diff(&mut fails);
        (runs, fails)
    }

    /// 随机数：种子由「份/函数」定 ⇒ 一个函数的实参与同一份里别的函数跑了几次无关（⛔ 整份一个种子：前面的函数
    /// 多调一次，后面的实参就全变，登记了的 poison 项时有时无）。
    fn rng(key: &str) -> llvm::Rng {
        llvm::Rng(key.bytes().fold(0x5eed_1234_abcd_ef01, |h, b| (h ^ u64::from(b)).wrapping_mul(0x100_0000_01b3)))
    }

    fn diff(&self, fails: &mut Fails) -> usize {
        let parsed = std::panic::catch_unwind(|| Module::try_from(self.mlir.as_str()).map_err(|e| e.to_string()));
        let mut m = match parsed {
            Ok(Ok(m)) => m,
            Ok(Err(e)) => return Self::fail(fails, &self.key, &format!("解析：{e}")),
            Err(_) => return Self::fail(fails, &self.key, "解析：panic"),
        };
        // 中端 pass：拿这 600 多份真语料压它们——变换若改了语义，下面的对拍立刻会看见。
        let reg = riscvc::plugin::Registry::default();
        if let Err(e) = reg.run(&mut m, self.passes) {
            return Self::fail(fails, &self.key, &format!("pass：{e}"));
        }
        // 逐个函数隔离着编：编不了的留成声明
        let mut bodies: Vec<_> = m.functions.iter_mut().map(|f| (core::mem::take(&mut f.blocks), core::mem::take(&mut f.vals))).collect();
        let mut ok = vec![false; bodies.len()];
        for i in 0..bodies.len() {
            if bodies[i].0.is_empty() {
                continue;
            }
            match Self::alone(&mut m, &mut bodies, i) {
                Ok(()) => ok[i] = true,
                Err(e) => {
                    Self::fail(fails, &format!("{}/{}", self.key, m.functions[i].name), &format!("编译：{e}"));
                }
            }
        }
        for (i, (f, body)) in m.functions.iter_mut().zip(bodies).enumerate() {
            if ok[i] {
                (f.blocks, f.vals) = body;
            }
        }
        let ours = match m.compile().map_err(|e| e.to_string()).and_then(|asm| riscvc::asm::Assembler::new(riscvc::asm::Options::default()).assemble(&asm).map_err(|e| format!("汇编：{e}"))) {
            Ok(o) => o,
            Err(e) => return Self::fail(fails, &self.key, &format!("整份：{e}")),
        };
        let (a, b) = match (Image::link(self.lib, &self.key, &ours), Image::link(self.lib, &self.key, &self.theirs)) {
            (Ok(a), Ok(b)) => (a, b),
            (Err(e), _) | (_, Err(e)) => return Self::fail(fails, &self.key, &e),
        };
        let pair = Pair::new(&a, &b);
        let mut runs = 0;
        for f in m.functions.iter().filter(|f| !f.blocks.is_empty()) {
            let Some(sig) = Sig::of(&m, f) else { continue };
            let key = format!("{}/{}", self.key, f.name);
            let rng = &mut Self::rng(&key);
            match pair.compare(&sig, rng, 32, Domain::Any) {
                Ok(n) => runs += n,
                // 定义域里（小整数、普通浮点）再比一遍：一致 ⇒ 差异只在域外（移位量 ≥ 位宽一类 poison 的嫌疑），记成「域外」
                Err(e) => {
                    let class = if pair.compare(&sig, rng, 64, Domain::Small).is_ok() { "域外" } else { "结果" };
                    Self::fail(fails, &format!("{}/{}", self.key, f.name), &format!("{class}：{e}"));
                }
            }
        }
        runs
    }

    fn fail(fails: &mut Fails, key: &str, why: &str) -> usize {
        fails.insert(String::from(key), Self::why(why));
        0
    }
}

/// 预期失败表：`键 原因`，`#` 起头是注释。
fn xfail(path: &Path) -> Fails {
    std::fs::read_to_string(path)
        .unwrap_or_default()
        .lines()
        .filter(|l| !l.trim().is_empty() && !l.starts_with('#'))
        .map(|l| l.split_once(' ').map_or_else(|| (String::from(l), String::new()), |(k, w)| (String::from(k), String::from(w.trim()))))
        .collect()
}

#[test]
fn llvm_tests() {
    // 对照的 .o 是按 +m,+f,+zicsr（ilp32f）、⛔ C 编的；开了 C：两边一个压缩一个不压缩，执行到随机缓冲区（间接调用实参）的
    // 函数随压缩译码变，不可比（C 由 llc_vs_llc 覆盖：那边的 llc 跟着 feature 带 +c）
    if !cfg!(all(feature = "m", feature = "f")) || cfg!(feature = "c") {
        eprintln!("SKIP：对照产物按 rv32imf（无 C）编，这次的扩展不同");
        return;
    }
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures/lit");
    let lib = Lib::load();
    let mut cases = Vec::new();
    for dir in ["codegen", "import", "target"] {
        let Ok(entries) = std::fs::read_dir(root.join(dir)) else { continue };
        let mut files: Vec<_> = entries.map(|e| e.unwrap().path()).filter(|p| p.extension().is_some_and(|e| e == "mlir")).collect();
        files.sort();
        for p in files {
            let Ok(theirs) = std::fs::read(p.with_extension("o")) else { continue };
            let key = format!("{dir}/{}", p.file_stem().unwrap().to_string_lossy());
            cases.push(Case { lib: &lib, passes: &PIPELINE, key, mlir: std::fs::read_to_string(&p).unwrap(), theirs });
        }
    }
    if cases.is_empty() {
        eprintln!("SKIP：没有 fixture（先跑 tools/lit.sh）");
        return;
    }
    // panic 由 catch_unwind 记成失败，⛔ 不刷屏
    let hook = std::panic::take_hook();
    std::panic::set_hook(Box::new(|_| {}));
    // 各份并行：线程从计数器取下一份
    let next = std::sync::atomic::AtomicUsize::new(0);
    let threads = std::thread::available_parallelism().map_or(1, std::num::NonZeroUsize::get);
    let results: Vec<(usize, Fails)> = std::thread::scope(|s| {
        let workers: Vec<_> = (0..threads)
            .map(|_| {
                s.spawn(|| {
                    let mut out = Vec::new();
                    while let Some(c) = cases.get(next.fetch_add(1, std::sync::atomic::Ordering::Relaxed)) {
                        out.push(c.run());
                    }
                    out
                })
            })
            .collect();
        workers.into_iter().flat_map(|w| w.join().unwrap()).collect()
    });
    std::panic::set_hook(hook);
    let runs: usize = results.iter().map(|(n, _)| n).sum();
    let fails: Fails = results.into_iter().flat_map(|(_, f)| f).collect();

    let table = root.join("xfail.txt");
    let expected = xfail(&table);
    if std::env::var_os("RISCVC_LIT_UPDATE").is_some() {
        let mut out = String::from("# tests/lit_vs_llc.rs 的预期失败：`份/函数 类：原因`（整份的不写函数）。RISCVC_LIT_UPDATE=1 重写；`【…】` 是核实过的说明，同一类时保留。\n");
        for (k, why) in &fails {
            // 核实过的（带「【…】」的说明）且还是同一类的保留，别的用这次的
            let class = |w: &str| w.split_once('：').map(|(c, _)| String::from(c));
            let keep = expected.get(k).filter(|w| w.contains('【') && class(w) == class(why));
            out.push_str(&format!("{k} {}\n", keep.unwrap_or(why)));
        }
        std::fs::write(&table, out).unwrap();
    }
    let new: Vec<_> = fails.iter().filter(|(k, _)| !expected.contains_key(*k)).collect();
    let fixed: Vec<_> = expected.keys().filter(|k| !fails.contains_key(*k)).collect();
    for (k, why) in new.iter().take(40) {
        eprintln!("新失败 {k}：{why}");
    }
    for k in fixed.iter().take(40) {
        eprintln!("已经过了（从 xfail.txt 删掉）{k}");
    }
    eprintln!("{} 份、{runs} 次调用；失败 {}（预期 {}），新失败 {}，已过 {}", cases.len(), fails.len(), expected.len(), new.len(), fixed.len());
    if std::env::var_os("RISCVC_LIT_UPDATE").is_none() {
        assert!(new.is_empty() && fixed.is_empty(), "和 xfail.txt 对不上");
    }
}
