//! 临时：target/corpus/mlir 全部转成内部 IR。
fn main() {
    let (mut ok, mut bad) = (0, 0);
    let mut errs = std::collections::BTreeMap::<String, usize>::new();
    for e in std::fs::read_dir("target/corpus/mlir").unwrap() {
        let p = e.unwrap().path();
        let text = std::fs::read_to_string(&p).unwrap();
        match riscvc::ir::Module::try_from(text.as_str()) {
            Ok(_) => ok += 1,
            Err(e) => {
                bad += 1;
                let s = e.to_string();
                let k = s.split('：').last().unwrap_or("").chars().take(80).collect::<String>();
                *errs.entry(k).or_default() += 1;
                if bad < 4 { println!("{}: {s}", p.display()); }
            }
        }
    }
    for (k, n) in errs { println!("{n:4} {k}"); }
    println!("ok {ok} bad {bad}");
}
