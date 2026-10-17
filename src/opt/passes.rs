//! 内置的中端变换。
use super::{AnalysisManager, FunctionPass, PerFunction, Preserved};
use crate::ir::{Error, Function, Types};

/// `dce`：删结果没人用、又没有副作用的指令（反复做到不再变）。
pub struct DceImpl;

/// `dce` 作为模块级 pass。
pub type Dce = PerFunction<DceImpl>;

/// 内置 `dce` 的那一份（`Registry::default()` 注册的就是它）。
pub const DCE: Dce = PerFunction(DceImpl);

impl FunctionPass for DceImpl {
    fn name(&self) -> &str {
        "dce"
    }

    fn summary(&self) -> &str {
        "删结果没人用、没有副作用的指令"
    }

    fn run(&self, f: &mut Function, _tys: &Types, _am: &mut AnalysisManager) -> Result<Preserved, Error> {
        loop {
            let mut used = vec![false; f.vals.len()];
            for v in f.blocks.iter().flat_map(|b| &b.insts).flat_map(|i| i.op.operands()) {
                used[v.0 as usize] = true;
            }
            let before: usize = f.blocks.iter().map(|b| b.insts.len()).sum();
            for b in &mut f.blocks {
                b.insts.retain(|i| !i.op.pure() || i.result.is_none_or(|r| used[r.0 as usize]));
            }
            if f.blocks.iter().map(|b| b.insts.len()).sum::<usize>() == before {
                // ⛔ 只删指令、块与边没动 ⇒ 支配类分析仍然有效
                return Ok(Preserved::Cfg);
            }
        }
    }
}
