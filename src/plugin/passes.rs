//! 内置 pass。
use super::Pass;
use crate::ir::{Error, Module};

/// `dce`：删结果没人用、又没有副作用的指令（反复做到不再变）。
pub struct Dce;

impl Pass for Dce {
    fn name(&self) -> &str {
        "dce"
    }

    fn summary(&self) -> &str {
        "删结果没人用、没有副作用的指令"
    }

    fn run(&self, m: &mut Module) -> Result<(), Error> {
        for f in &mut m.functions {
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
                    break;
                }
            }
        }
        Ok(())
    }
}
