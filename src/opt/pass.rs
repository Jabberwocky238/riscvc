//! 中端的 pass 架构：分析按需算并缓存、变换声明自己保住了什么、管理器据此失效。
//!
//! ```text
//! Analysis          一个分析（如 [`super::Dom`]）：给定函数算出事实，⛔ 不改 IR
//! AnalysisManager   每个函数一份缓存：要用才算，算过就留
//! Preserved         变换的回执：这趟改动保住了哪些分析
//! FunctionPass      函数级变换；Module 级的用 [`PerFunction`] 包一下就成 `plugin::Pass`
//! ```
//!
//! ⛔ 不支持分析之间的嵌套依赖（那要么用内部可变、要么把管理器拆成两半借用）。需要别的分析的，
//! 自己算一份存进来（[`super::Dom`] 自带 [`super::Preds`] 就是这么做的）—— 分析都很便宜，重算好过把借用绕复杂。
use crate::ir::{Error, Function, Module};
use std::any::{Any, TypeId};
use std::collections::HashMap;

/// ⭐ 模块级 pass（`registry.run(m, &["名字", …])` 按名字跑；`riscvc llc --list-plugins` 列出来）。
///
/// 函数级的写 [`FunctionPass`]，用 [`PerFunction`] 包一下就是它。
pub trait Pass {
    /// 管线里用的名字（`--pass 名字`）。
    fn name(&self) -> &str;

    /// 一句话说明。
    fn summary(&self) -> &str {
        ""
    }

    fn run(&self, m: &mut Module) -> Result<(), Error>;
}

/// 一个分析：给定函数算出事实。
pub trait Analysis: Any + Sized {
    /// 名字（诊断用）。
    const NAME: &'static str;

    fn compute(f: &Function) -> Self;
}

/// 一趟变换保住了哪些分析。
pub enum Preserved {
    /// 什么都没改（或只改了不影响任何分析的东西）。
    All,
    /// 改了 CFG 之外的东西：块与边没动 ⇒ 支配类的分析仍然有效。
    Cfg,
    /// 全脏。
    None,
}

/// 一个函数的分析缓存。
#[derive(Default)]
pub struct AnalysisManager {
    cache: HashMap<TypeId, Box<dyn Any>>,
}

impl AnalysisManager {
    /// 要用才算，算过就留。
    pub fn get<A: Analysis>(&mut self, f: &Function) -> &A {
        self.cache.entry(TypeId::of::<A>()).or_insert_with(|| Box::new(A::compute(f))).downcast_ref().expect("按 TypeId 存的")
    }

    /// 按回执失效。⚠ `Cfg` 保住的是「块与边没动」的那些分析 —— 现在支配类都归这一档。
    pub fn invalidate(&mut self, p: &Preserved) {
        match p {
            Preserved::All | Preserved::Cfg => {}
            Preserved::None => self.cache.clear(),
        }
    }
}

/// 一个函数级变换。
pub trait FunctionPass {
    fn name(&self) -> &str;

    fn summary(&self) -> &str {
        ""
    }

    /// 改这个函数；回执说明保住了什么。
    fn run(&self, f: &mut Function, am: &mut AnalysisManager) -> Result<Preserved, Error>;
}

/// 把函数级变换包成模块级的 [`Pass`]：逐个函数跑，各自一份分析缓存。
pub struct PerFunction<P>(pub P);

impl<P: FunctionPass> Pass for PerFunction<P> {
    fn name(&self) -> &str {
        self.0.name()
    }

    fn summary(&self) -> &str {
        self.0.summary()
    }

    fn run(&self, m: &mut Module) -> Result<(), Error> {
        for f in &mut m.functions {
            if f.blocks.is_empty() {
                continue;
            }
            let mut am = AnalysisManager::default();
            let kept = self.0.run(f, &mut am)?;
            am.invalidate(&kept);
        }
        Ok(())
    }
}
