//! 机器 IR：一条 = 一条（或一小段固定的）RV32IMF 指令，寄存器是虚拟寄存器或固定的物理寄存器；
//! 实现 regalloc2 的 `Function`。
use crate::isa::{Opcode, Rv32i as IOp};
use crate::regalloc::{Block, Function, Inst as RInst, InstRange, Operand, PReg, PRegSet, RegClass, VReg};
use smallvec::SmallVec;

/// `VReg` 没有 `Ord`，排序借它的编号。
fn regalloc2_key(v: &VReg) -> (u8, usize) {
    (v.class() as u8, v.vreg())
}

/// 一条指令的寄存器（内联放 3 个：调用、`select` 这种多的才上堆）。
pub type Regs = SmallVec<[R; 3]>;
/// 与 [`Regs`] 一一对应的约束。
pub type Rules = SmallVec<[Rule; 3]>;

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
    /// 跳转表的间接跳转：`jr rs`（最后一个 use 是从表里取出的目标地址），后继是表里的各块。
    /// ⛔ 这些边上不传块参数（见 `isel::switch` 的判据）。
    JumpTable(Vec<Block>),
    /// 永不到达（`unreachable`）：不出代码。
    Unreachable,
    /// `unimp`（`llvm.trap`）。
    Trap,
    /// `ebreak`（`llvm.debugtrap`，同 llc）。
    Break,
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
    pub defs: Regs,
    pub uses: Regs,
    /// 分配约束，与 `defs` / `uses` 一一对应（经 [`MInst::def_on`] / [`MInst::use_on`] 成对加）。
    pub def_rules: Rules,
    pub use_rules: Rules,
    /// 调用的破坏集。
    pub clobbers: PRegSet,
    /// regalloc2 看到的操作数（`finish` 时由上面几项算出）。
    pub operands: SmallVec<[Operand; 4]>,
}

impl MInst {
    #[must_use]
    pub fn new(op: MOp, defs: &[R], uses: &[R]) -> Self {
        Self {
            op,
            defs: Regs::from_slice(defs),
            uses: Regs::from_slice(uses),
            def_rules: Rules::from_elem(Rule::Any, defs.len()),
            use_rules: Rules::from_elem(Rule::Any, uses.len()),
            clobbers: PRegSet::empty(),
            operands: SmallVec::new(),
        }
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
        let mut ops = SmallVec::new();
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
    /// ⚠ 没有定义的（`csrw` / `fsflags` 一类只写状态的）不算。
    pub fn pure(&self) -> bool {
        !self.defs.is_empty() && matches!(self.op, MOp::Reg(..) | MOp::Imm(..) | MOp::Li(_) | MOp::La(..) | MOp::Addr(..) | MOp::Select(_))
    }

    /// 定义的唯一一个虚拟寄存器（没有固定约束）：pass 能改名、能顶替的那种。
    #[must_use]
    pub fn def(&self) -> Option<VReg> {
        match (self.defs.as_slice(), self.def_rules.as_slice()) {
            ([R::V(v)], [Rule::Any]) => Some(*v),
            _ => None,
        }
    }

    /// 这条指令的种类名（诊断归类用）。
    #[must_use]
    pub fn kind(op: &MOp) -> &'static str {
        match op {
            MOp::Reg(..) => "Reg",
            MOp::Imm(..) => "Imm",
            MOp::Select(_) => "Select",
            MOp::Li(_) => "Li",
            MOp::La(..) => "La",
            MOp::Addr(..) => "Addr",
            MOp::Load(..) => "Load",
            MOp::Store(..) => "Store",
            MOp::Args => "Args",
            MOp::Call(_) => "Call",
            MOp::Ret => "Ret",
            MOp::Tail(_) => "Tail",
            MOp::Jump(_) => "Jump",
            MOp::Branch(..) => "Branch",
            MOp::JumpTable(_) => "JumpTable",
            MOp::Unreachable => "Unreachable",
            MOp::Trap => "Trap",
            MOp::Break => "Break",
            MOp::Fence => "Fence",
            MOp::SpAlloc => "SpAlloc",
            MOp::SpSave => "SpSave",
            MOp::SpRestore => "SpRestore",
        }
    }

    /// 这条指令上有几个固定约束的使用会赔掉一条搬运。两种来由，合起来就是 Ion 的
    /// 「多固定寄存器」（见 `alloc/ion/liveranges.rs` 的 505 行与 `fixup_multi_fixed_vregs`）：
    ///
    /// * **甲**：同一个 vreg 带着多于一个固定约束（`f(x, x)`，真传了两次，没办法）；
    /// * **乙**：使用被固定在某个 preg 上，而这条指令**同时破坏**那个 preg，且这个值
    ///   **之后还活着** —— 也就是「实参在调用之后还要用」。`live_after` 由调用方给。
    ///
    /// ⭐ 乙是大头。它不是分配器的毛病：值要进 `a0`，而 `a0` 被调用破坏，只能另存一份再搬。
    #[must_use]
    pub fn multi_fixed(&self, live_after: &impl Fn(VReg) -> bool) -> (usize, usize) {
        let mut fixed: SmallVec<[VReg; 4]> = SmallVec::new();
        let mut clobbered = 0;
        for (r, rule) in self.uses.iter().zip(&self.use_rules) {
            if let (R::V(v), Rule::Fixed(p)) = (r, rule) {
                fixed.push(*v);
                if self.clobbers.contains(*p) && live_after(*v) {
                    clobbered += 1;
                }
            }
        }
        fixed.sort_unstable_by_key(regalloc2_key);
        let dup = fixed.windows(2).filter(|w| w[0] == w[1]).count();
        (dup, clobbered)
    }

    fn is_term(&self) -> bool {
        matches!(self.op, MOp::Ret | MOp::Tail(_) | MOp::Jump(_) | MOp::Branch(..) | MOp::JumpTable(_) | MOp::Unreachable)
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
        matches!(self.insts[insn.index()].op, MOp::Jump(_) | MOp::Branch(..) | MOp::JumpTable(_))
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
