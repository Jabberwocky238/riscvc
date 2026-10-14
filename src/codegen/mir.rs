//! 机器 IR：一条 = 一条（或一小段固定的）RV32IMF 指令，寄存器是虚拟寄存器或固定的物理寄存器；
//! 实现 regalloc2 的 `Function`。
use crate::isa::Op as IOp;
use regalloc2::{Block, Function, Inst as RInst, InstRange, Operand, PReg, PRegSet, RegClass, VReg};

/// 一个寄存器引用：虚拟寄存器（交给 regalloc2），或不参与分配的物理寄存器（`zero` / `sp`）。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum R {
    V(VReg),
    /// 物理整数寄存器号。
    P(u8),
}

impl R {
    pub const ZERO: Self = Self::P(0);
}

/// 地址：基址寄存器 + 偏移，或栈帧对象 + 偏移（帧布局定了才知道相对 `sp` 的偏移）。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Base {
    Reg(R),
    /// 栈帧对象（alloca、按值传参的拷贝）。
    Frame(u32),
    /// 调用方栈上的传入参数区（相对进入函数时的 `sp`）。
    Incoming,
    /// 本函数的出参区（相对当前 `sp`）。
    Outgoing,
}

/// 一条机器指令。寄存器操作数的次序见各变体（`defs` 在前，`uses` 在后）。
#[derive(Clone, Debug, PartialEq)]
pub enum MOp {
    /// `op rd, rs1, rs2`（R 型、浮点 R / R4 型、比较、转换：按 isa 的格式取寄存器个数）。舍入模式在 `rm`。
    Reg(IOp, u8),
    /// `op rd, rs1, imm`
    Imm(IOp, i32),
    /// `li rd, imm`（32 位常数，展开同汇编器）
    Li(i32),
    /// `lla rd, 符号 + 偏移`
    La(String, i64),
    /// 取栈帧对象 / 入参区的地址：`addi rd, sp, 偏移`
    Addr(Base, i32),
    /// `op rd, 偏移(基址)`；基址是寄存器时它是最后一个 use。
    Load(IOp, Base, i32),
    /// `op rs, 偏移(基址)`；值是第一个 use，寄存器基址是第二个。
    Store(IOp, Base, i32),
    /// 函数入口：定义各参数（固定寄存器）。
    Args,
    /// 调用：直接调用（符号）或间接（最后一个 use 是目标地址）。
    Call(Option<String>),
    /// 返回（uses 是固定在返回寄存器上的值）。
    Ret,
    /// 无条件跳转（块参数经 regalloc2 的 branch args 传）。
    Jump(Block),
    /// 条件跳转：`op rs1, rs2` 成立去 `t`，否则去 `f`。
    Branch(IOp, Block, Block),
    /// 永不到达（`unreachable`）：不出代码。
    Unreachable,
    /// `unimp`（`llvm.trap`）。
    Trap,
    /// `fence`
    Fence,
    /// 动态调整 `sp`：`sub sp, sp, rs`（动态 alloca）后，`rd = sp + 出参区大小`。
    SpAlloc,
    /// `stacksave`：`rd = sp`；`stackrestore`：`sp = rs`。
    SpSave,
    SpRestore,
}

/// 一条机器指令与它的寄存器。
#[derive(Clone, Debug)]
pub struct MInst {
    pub op: MOp,
    pub defs: Vec<R>,
    pub uses: Vec<R>,
    /// 固定寄存器约束（与 `defs` / `uses` 一一对应，`None` = 任意）。
    pub fixed_defs: Vec<Option<PReg>>,
    pub fixed_uses: Vec<Option<PReg>>,
    /// 调用的破坏集。
    pub clobbers: PRegSet,
    /// regalloc2 看到的操作数（`finish` 时由上面几项算出）。
    pub operands: Vec<Operand>,
}

impl MInst {
    #[must_use]
    pub fn new(op: MOp, defs: Vec<R>, uses: Vec<R>) -> Self {
        let (nd, nu) = (defs.len(), uses.len());
        Self { op, defs, uses, fixed_defs: vec![None; nd], fixed_uses: vec![None; nu], clobbers: PRegSet::empty(), operands: Vec::new() }
    }

    /// 算 regalloc2 的操作数：只收虚拟寄存器（物理的 `zero` / `sp` 不参与分配）。
    fn finish(&mut self) {
        let mut ops = Vec::new();
        for (r, f) in self.defs.iter().zip(&self.fixed_defs) {
            if let R::V(v) = r {
                ops.push(f.map_or_else(|| Operand::reg_def(*v), |p| Operand::reg_fixed_def(*v, p)));
            }
        }
        for (r, f) in self.uses.iter().zip(&self.fixed_uses) {
            if let R::V(v) = r {
                ops.push(f.map_or_else(|| Operand::reg_use(*v), |p| Operand::reg_fixed_use(*v, p)));
            }
        }
        self.operands = ops;
    }

    fn is_term(&self) -> bool {
        matches!(self.op, MOp::Ret | MOp::Jump(_) | MOp::Branch(..) | MOp::Unreachable)
    }
}

/// 一个机器块：指令与块参数（跳转时由前驱的 branch args 填）。
#[derive(Clone, Debug, Default)]
pub struct MBlock {
    pub params: Vec<VReg>,
    pub insts: Vec<MInst>,
    /// 各后继的实参（与 `succs` 同序）。
    pub args: Vec<Vec<VReg>>,
    pub succs: Vec<Block>,
    pub preds: Vec<Block>,
}

/// 一个函数的机器 IR（平铺：regalloc2 要全局的指令下标）。
pub struct MFunc {
    pub blocks: Vec<MBlock>,
    /// 平铺后的指令与各块的下标范围。
    pub insts: Vec<MInst>,
    pub ranges: Vec<InstRange>,
    pub vregs: usize,
}

impl MFunc {
    /// 从各块组装：补前驱、平铺指令、算操作数。
    #[must_use]
    pub fn new(mut blocks: Vec<MBlock>, vregs: usize) -> Self {
        for b in &mut blocks {
            b.preds.clear();
        }
        for i in 0..blocks.len() {
            for s in blocks[i].succs.clone() {
                blocks[s.index()].preds.push(Block::new(i));
            }
        }
        let mut insts = Vec::new();
        let mut ranges = Vec::new();
        for b in blocks.iter_mut() {
            let start = insts.len();
            for mut inst in core::mem::take(&mut b.insts) {
                inst.finish();
                insts.push(inst);
            }
            ranges.push(InstRange::new(RInst::new(start), RInst::new(insts.len())));
        }
        Self { blocks, insts, ranges, vregs }
    }
}

impl Function for MFunc {
    fn num_insts(&self) -> usize {
        self.insts.len()
    }

    fn num_blocks(&self) -> usize {
        self.blocks.len()
    }

    fn entry_block(&self) -> Block {
        Block::new(0)
    }

    fn block_insns(&self, block: Block) -> InstRange {
        self.ranges[block.index()]
    }

    fn block_succs(&self, block: Block) -> &[Block] {
        &self.blocks[block.index()].succs
    }

    fn block_preds(&self, block: Block) -> &[Block] {
        &self.blocks[block.index()].preds
    }

    fn block_params(&self, block: Block) -> &[VReg] {
        &self.blocks[block.index()].params
    }

    fn is_ret(&self, insn: RInst) -> bool {
        matches!(self.insts[insn.index()].op, MOp::Ret | MOp::Unreachable)
    }

    fn is_branch(&self, insn: RInst) -> bool {
        matches!(self.insts[insn.index()].op, MOp::Jump(_) | MOp::Branch(..))
    }

    fn branch_blockparams(&self, block: Block, _insn: RInst, succ_idx: usize) -> &[VReg] {
        &self.blocks[block.index()].args[succ_idx]
    }

    fn inst_operands(&self, insn: RInst) -> &[Operand] {
        &self.insts[insn.index()].operands
    }

    fn inst_clobbers(&self, insn: RInst) -> PRegSet {
        self.insts[insn.index()].clobbers
    }

    fn num_vregs(&self) -> usize {
        self.vregs
    }

    fn spillslot_size(&self, _: RegClass) -> usize {
        1
    }
}

impl MFunc {
    /// 平铺后的终结指令检查（每块最后一条必须是终结指令，前面不能有）。
    #[must_use]
    pub fn well_formed(&self) -> bool {
        self.ranges.iter().all(|r| {
            let n = r.len();
            n > 0 && (0..n).all(|k| self.insts[r.first().index() + k].is_term() == (k == n - 1))
        })
    }
}
