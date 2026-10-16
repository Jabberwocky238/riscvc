//! 机器 IR：一条 = 一条（或一小段固定的）RV32IMF 指令，寄存器是虚拟寄存器或固定的物理寄存器；
//! 实现 regalloc2 的 `Function`。
use crate::isa::{Opcode, Rv32i as IOp};
use regalloc2::{Block, Function, Inst as RInst, InstRange, Operand, PReg, PRegSet, RegClass, VReg};

/// 一个寄存器引用：虚拟寄存器（交给 regalloc2），或不参与分配的物理寄存器（`zero` / `sp`）。
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum R {
    V(VReg),
    /// 物理整数寄存器号。
    P(u8),
}

impl R {
    pub const ZERO: Self = Self::P(0);
}

/// 地址：基址寄存器 + 偏移，或栈帧对象 + 偏移（帧布局定了才知道相对 `sp` 的偏移）。
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
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
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum MOp {
    /// `op rd, rs1, rs2`（R 型、浮点 R / R4 型、比较、转换：按 isa 的格式取寄存器个数）。舍入模式在 `rm`。
    Reg(Opcode, u8),
    /// `op rd, rs1, imm`
    Imm(IOp, i32),
    /// `select`（同 LLVM 的 Select_GPR 伪指令）：uses = `[a, b, 真值…, 假值…]`，defs 逐个绑定真值
    /// （[`Rule::Reuse`]）；`op a, b` 不成立时把假值搬进去。分配之后展开成「`b<op>` 跳过 + `mv`」。
    Select(IOp),
    /// `li rd, imm`（32 位常数，展开同汇编器）
    Li(i32),
    /// `lla rd, 符号 + 偏移`
    La(String, i64),
    /// 取栈帧对象 / 入参区的地址：`addi rd, sp, 偏移`
    Addr(Base, i32),
    /// `op rd, 偏移(基址)`；基址是寄存器时它是最后一个 use。
    Load(Opcode, Base, i32),
    /// `op rs, 偏移(基址)`；值是第一个 use，寄存器基址是第二个。
    Store(Opcode, Base, i32),
    /// 函数入口：定义各参数（固定寄存器）。
    Args,
    /// 调用：直接调用（符号）或间接（最后一个 use 是目标地址）。
    Call(Option<String>),
    /// 返回（uses 是固定在返回寄存器上的值）。
    Ret,
    /// 尾调用：拆掉本函数的帧后跳去（uses 同 [`MOp::Call`] 的实参；见 `opt::tail`）。
    Tail(String),
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

/// 一个寄存器操作数的分配约束。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Rule {
    Any,
    /// 固定在这个物理寄存器上（调用约定）。
    Fixed(PReg),
    /// 定义与第几个使用分到同一个寄存器（`select` 的目的寄存器绑定真值）。只用在定义上。
    Reuse(usize),
}

/// 一条机器指令与它的寄存器。
#[derive(Clone, Debug)]
pub struct MInst {
    pub op: MOp,
    pub defs: Vec<R>,
    pub uses: Vec<R>,
    /// 分配约束，与 `defs` / `uses` 一一对应（经 [`MInst::def_on`] / [`MInst::use_on`] 成对加）。
    pub def_rules: Vec<Rule>,
    pub use_rules: Vec<Rule>,
    /// 调用的破坏集。
    pub clobbers: PRegSet,
    /// regalloc2 看到的操作数（`finish` 时由上面几项算出）。
    pub operands: Vec<Operand>,
}

impl MInst {
    #[must_use]
    pub fn new(op: MOp, defs: Vec<R>, uses: Vec<R>) -> Self {
        let (nd, nu) = (defs.len(), uses.len());
        Self { op, defs, uses, def_rules: vec![Rule::Any; nd], use_rules: vec![Rule::Any; nu], clobbers: PRegSet::empty(), operands: Vec::new() }
    }

    /// 加一个定义。
    pub fn def_on(&mut self, r: R, rule: Rule) {
        self.defs.push(r);
        self.def_rules.push(rule);
    }

    /// 加一个使用。
    pub fn use_on(&mut self, r: R, rule: Rule) {
        self.uses.push(r);
        self.use_rules.push(rule);
    }

    /// 第 `j` 个使用必须留在虚拟寄存器上（有固定约束，或被某个定义绑定）：⛔ 换成 `zero` 之类的物理寄存器。
    #[must_use]
    pub fn pinned(&self, j: usize) -> bool {
        self.use_rules[j] != Rule::Any || self.def_rules.contains(&Rule::Reuse(j))
    }

    /// 第 `j` 个使用在 regalloc2 操作数表里的下标（虚拟的定义在前、虚拟的使用在后）。
    fn operand_of_use(&self, j: usize) -> usize {
        let virt = |r: &&R| matches!(r, R::V(_));
        self.defs.iter().filter(virt).count() + self.uses[..j].iter().filter(virt).count()
    }

    /// 算 regalloc2 的操作数：只收虚拟寄存器（物理的 `zero` / `sp` 不参与分配）。
    fn finish(&mut self) {
        let mut ops = Vec::new();
        for (r, rule) in self.defs.iter().zip(&self.def_rules) {
            if let R::V(v) = *r {
                ops.push(match *rule {
                    Rule::Any => Operand::reg_def(v),
                    Rule::Fixed(p) => Operand::reg_fixed_def(v, p),
                    Rule::Reuse(j) => Operand::reg_reuse_def(v, self.operand_of_use(j)),
                });
            }
        }
        for (r, rule) in self.uses.iter().zip(&self.use_rules) {
            if let R::V(v) = *r {
                ops.push(match *rule {
                    Rule::Fixed(p) => Operand::reg_fixed_use(v, p),
                    _ => Operand::reg_use(v),
                });
            }
        }
        self.operands = ops;
    }

    /// 纯的：只算出 `defs`，没有别的作用（定义没人用就能删）。
    #[must_use]
    pub fn pure(&self) -> bool {
        matches!(self.op, MOp::Reg(..) | MOp::Imm(..) | MOp::Li(_) | MOp::La(..) | MOp::Addr(..) | MOp::Select(_))
    }

    /// 定义的唯一一个虚拟寄存器（没有固定约束）：pass 能改名、能顶替的那种。
    #[must_use]
    pub fn def(&self) -> Option<VReg> {
        match (self.defs.as_slice(), self.def_rules.as_slice()) {
            ([R::V(v)], [Rule::Any]) => Some(*v),
            _ => None,
        }
    }

    fn is_term(&self) -> bool {
        matches!(self.op, MOp::Ret | MOp::Tail(_) | MOp::Jump(_) | MOp::Branch(..) | MOp::Unreachable)
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
    /// 从各块组装（pass 已跑完，见 [`super::opt`]）：补前驱、平铺指令、算操作数。
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
        matches!(self.insts[insn.index()].op, MOp::Ret | MOp::Tail(_) | MOp::Unreachable)
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
