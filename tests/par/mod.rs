//! 测试里的并行：一组输入按核数分给线程（线程从计数器取下一项，同 `lit_vs_llc` 的写法），结果按输入的次序交回。
//! ⚠ 闭包里的东西各线程各用一份（临时文件按输入的序号取名，⛔ 共用一个路径）。
use std::num::NonZeroUsize;
use std::sync::atomic::{AtomicUsize, Ordering};

/// `items` 的每一项各算一次 `f`，结果与 `items` 同序。任何一项 panic ⇒ 整个调用 panic（测试照样失败）。
pub fn map<T: Sync, R: Send>(items: &[T], f: impl Fn(usize, &T) -> R + Sync) -> Vec<R> {
    let next = AtomicUsize::new(0);
    let threads = std::thread::available_parallelism().map_or(1, NonZeroUsize::get).min(items.len().max(1));
    let mut out: Vec<(usize, R)> = std::thread::scope(|s| {
        let workers: Vec<_> = (0..threads)
            .map(|_| {
                s.spawn(|| {
                    let mut got = Vec::new();
                    loop {
                        let k = next.fetch_add(1, Ordering::Relaxed);
                        let Some(item) = items.get(k) else { break };
                        got.push((k, f(k, item)));
                    }
                    got
                })
            })
            .collect();
        workers.into_iter().flat_map(|w| w.join().unwrap_or_else(|e| std::panic::resume_unwind(e))).collect()
    });
    out.sort_by_key(|(k, _)| *k);
    out.into_iter().map(|(_, r)| r).collect()
}
