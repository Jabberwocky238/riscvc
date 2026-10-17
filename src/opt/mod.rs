//! 中端：在内部 IR（[`crate::ir`]）上做的分析与变换。
//!
//! ⚠ 和 [`crate::codegen::opt`] 分清：那一层跑在**机器 IR**（虚拟寄存器、`MOp`）上，分配前后各一轮；
//! 这一层跑在**指令选择之前**的 SSA IR 上，和目标无关。
//!
//! ```text
//! analysis   支配树 / 支配边界（[`Dom`]）、前驱（[`Preds`]）—— 不改 IR，只回答事实
//! transform  变换，按 `plugin::Pass` 注册进流水线（`registry.run(m, &["mem2reg", …])`）
//! ```
//!
//! ⭐ 这个 IR 是 **SSA + 块参数**（⛔ 没有 phi：前驱在跳转处传实参）。所以 LLVM 里「插一个 phi」在这里是
//! 「给块加一个参数 + 在**每个**前驱的跳转处补一个实参」。任何改 CFG 的变换都要维护这条不变式。
/// ⭐ 不另外指定时跑的那串：mem2reg 把 alloca 提成 SSA 值，gvn 吃掉它暴露出来的
/// 冗余计算，sccp 收掉条件已知的分支与走不到的块，dce 收尾。
/// CLI 的缺省与 lit 对拍共用这一处定义。
pub const DEFAULT_PIPELINE: [&str; 4] = ["mem2reg", "gvn", "sccp", "dce"];

mod dom;
mod gvn;
mod licm;
mod mem2reg;
mod pass;
mod passes;
mod sccp;
mod simplify;

pub use dom::{Dom, Preds};
pub use pass::{Analysis, AnalysisManager, FunctionPass, Pass, PerFunction, Preserved};
pub use gvn::{GVN, Gvn, GvnImpl};
pub use licm::{LICM, Licm, LicmImpl};
pub use mem2reg::{MEM2REG, Mem2Reg, Mem2RegImpl};
pub use passes::{DCE, Dce, DceImpl};
pub use sccp::{SCCP, Sccp, SccpImpl};
pub use simplify::{SIMPLIFY, Simplify, SimplifyImpl};
