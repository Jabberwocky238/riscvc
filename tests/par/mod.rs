//! 测试里的并行：一组输入交给 moremath 的 `ThreadMulti`（每个工作线程取下一项，同 `riscvc llc -j`），结果按输入的次序交回。
//! ⚠ 闭包里的东西各线程各用一份（临时文件按输入的序号取名，⛔ 共用一个路径）。
use moremath::{Executor, ThreadMulti};

/// `items` 的每一项各算一次 `f`，结果与 `items` 同序。任何一项 panic ⇒ 整个调用 panic（测试照样失败）。
pub fn map<T: Sync, R: Send>(items: &[T], f: impl Fn(usize, &T) -> R + Sync) -> Vec<R> {
    let f = &f;
    ThreadMulti::default().execute(items.iter().enumerate().map(|(k, item)| move || f(k, item)).collect())
}
