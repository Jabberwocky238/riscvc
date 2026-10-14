//! 指令与伪指令：操作数解析、伪指令展开（同 llvm-mc 的写法与展开）。
use super::fixup::Fix;
use super::lex::{Tok, Toks};
use super::{Assembler, Error, Expr, Modifier};
use crate::isa::{Csr, F, Form, Inst, Op, Rm, X};

/// 一个操作数。
#[derive(Clone, Debug)]
pub enum Opnd {
    X(X),
    F(F),
    E(Expr),
    /// `imm(rs)`
    M(Expr, X),
}

impl Assembler {
    pub(super) fn instruction(&mut self, mnem: &str, rest: &str) -> Result<(), Error> {
        let ops = Toks::try_from(rest)?.split_commas().into_iter().map(|t| self.operand(t)).collect::<Result<Vec<_>, _>>()?;
        if self.pseudo(mnem, &ops)? {
            return Ok(());
        }
        let op: Op = mnem.parse().map_err(|()| Error::Syntax(format!("不认识的指令 `{mnem}`")))?;
        self.real(op, &ops)
    }

    fn operand(&mut self, t: Toks) -> Result<Opnd, Error> {
        let toks = t.tokens();
        if let [Tok::Ident(s)] = toks {
            if let Ok(r) = s.parse::<X>() {
                return Ok(Opnd::X(r));
            }
            if let Ok(r) = s.parse::<F>() {
                return Ok(Opnd::F(r));
            }
        }
        if let [prefix @ .., Tok::Punct('('), Tok::Ident(r), Tok::Punct(')')] = toks
            && let Ok(base) = r.parse::<X>()
        {
            let e = if prefix.is_empty() { Expr::Num(0) } else { Toks::from_vec(prefix.to_vec()).expr(self)? };
            return Ok(Opnd::M(e, base));
        }
        let mut t = t;
        let e = t.expr(self)?;
        if !t.is_empty() {
            return Err(Error::Syntax(format!("操作数多出 {:?}", t.peek())));
        }
        Ok(Opnd::E(e))
    }

    /// 伪指令（及 GNU 的写法变体）。展开了回 `true`。
    #[allow(clippy::too_many_lines, reason = "一张伪指令表")]
    fn pseudo(&mut self, mnem: &str, ops: &[Opnd]) -> Result<bool, Error> {
        use Opnd::{E, M};
        let i = Inst::new;
        let zero = X::ZERO.0;
        match (mnem, ops) {
            ("nop", []) => self.emit(i(Op::Addi))?,
            ("li", [Opnd::X(rd), E(e)]) => self.li(*rd, e)?,
            ("la" | "lla", [Opnd::X(rd), E(e)]) => self.pcrel(Op::Addi, rd.0, rd.0, e, true)?,
            ("mv" | "move", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Addi).x(rd.0, rs.0, 0))?,
            ("not", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Xori).x(rd.0, rs.0, 0).with_imm(-1))?,
            ("neg", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Sub).x(rd.0, zero, rs.0))?,
            ("seqz", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Sltiu).x(rd.0, rs.0, 0).with_imm(1))?,
            ("snez", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Sltu).x(rd.0, zero, rs.0))?,
            ("sltz", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Slt).x(rd.0, rs.0, zero))?,
            ("sgtz", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Slt).x(rd.0, zero, rs.0))?,
            ("sgt" | "sgtu", [Opnd::X(rd), Opnd::X(a), Opnd::X(b)]) => self.emit(i(if mnem == "sgt" { Op::Slt } else { Op::Sltu }).x(rd.0, b.0, a.0))?,
            ("beqz" | "bnez" | "bgez" | "bltz", [Opnd::X(rs), E(t)]) => {
                let op = match mnem {
                    "beqz" => Op::Beq,
                    "bnez" => Op::Bne,
                    "bgez" => Op::Bge,
                    _ => Op::Blt,
                };
                self.branch(op, rs.0, zero, t)?;
            }
            ("blez" | "bgtz", [Opnd::X(rs), E(t)]) => self.branch(if mnem == "blez" { Op::Bge } else { Op::Blt }, zero, rs.0, t)?,
            ("bgt" | "ble" | "bgtu" | "bleu", [Opnd::X(a), Opnd::X(b), E(t)]) => {
                let op = match mnem {
                    "bgt" => Op::Blt,
                    "ble" => Op::Bge,
                    "bgtu" => Op::Bltu,
                    _ => Op::Bgeu,
                };
                self.branch(op, b.0, a.0, t)?;
            }
            ("j", [E(t)]) => self.emit_fix(i(Op::Jal), Fix::Jal, t.clone())?,
            ("jal", [E(t)]) => self.emit_fix(i(Op::Jal).x(X::RA.0, 0, 0), Fix::Jal, t.clone())?,
            ("jr", [Opnd::X(rs)]) => self.emit(i(Op::Jalr).x(zero, rs.0, 0))?,
            ("jr", [M(e, rs)] | [Opnd::X(rs), E(e)]) => self.imm(i(Op::Jalr).x(zero, rs.0, 0), e, Fix::Imm12)?,
            ("jalr", [Opnd::X(rs)]) => self.emit(i(Op::Jalr).x(X::RA.0, rs.0, 0))?,
            ("jalr", [M(e, rs)] | [Opnd::X(rs), E(e)]) => self.imm(i(Op::Jalr).x(X::RA.0, rs.0, 0), e, Fix::Imm12)?,
            ("jalr", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Jalr).x(rd.0, rs.0, 0))?,
            ("ret", []) => self.emit(i(Op::Jalr).x(zero, X::RA.0, 0))?,
            ("call", [E(t)]) => self.call(X::RA.0, X::RA.0, t)?,
            ("call", [Opnd::X(rd), E(t)]) => self.call(rd.0, rd.0, t)?,
            ("tail", [E(t)]) => self.call(zero, X::T1.0, t)?,
            ("jump", [E(t), Opnd::X(rt)]) => self.call(zero, rt.0, t)?,
            ("csrr", [Opnd::X(rd), c]) => self.emit(Inst { csr: self.csr(c)?, ..i(Op::Csrrs).x(rd.0, zero, 0) })?,
            ("csrw" | "csrs" | "csrc", [c, Opnd::X(rs)]) => {
                let op = match mnem {
                    "csrw" => Op::Csrrw,
                    "csrs" => Op::Csrrs,
                    _ => Op::Csrrc,
                };
                self.emit(Inst { csr: self.csr(c)?, ..i(op).x(zero, rs.0, 0) })?;
            }
            ("csrw" | "csrs" | "csrc" | "csrwi" | "csrsi" | "csrci", [c, E(e)]) => {
                let op = match mnem.trim_end_matches('i') {
                    "csrw" => Op::Csrrwi,
                    "csrs" => Op::Csrrsi,
                    _ => Op::Csrrci,
                };
                let u = self.uimm5(e)?;
                self.emit(Inst { csr: self.csr(c)?, ..i(op).x(zero, u, 0) })?;
            }
            ("frcsr" | "frrm" | "frflags" | "rdcycle" | "rdtime" | "rdinstret" | "rdcycleh" | "rdtimeh" | "rdinstreth", [Opnd::X(rd)]) => {
                let csr = match mnem {
                    "frcsr" => 0x3,
                    "frrm" => 0x2,
                    "frflags" => 0x1,
                    "rdcycle" => 0xc00,
                    "rdtime" => 0xc01,
                    "rdinstret" => 0xc02,
                    "rdcycleh" => 0xc80,
                    "rdtimeh" => 0xc81,
                    _ => 0xc82,
                };
                self.emit(Inst { csr, ..i(Op::Csrrs).x(rd.0, zero, 0) })?;
            }
            ("fscsr" | "fsrm" | "fsflags", [Opnd::X(rs)]) => self.emit(Inst { csr: Self::fcsr(mnem), ..i(Op::Csrrw).x(zero, rs.0, 0) })?,
            ("fscsr" | "fsrm" | "fsflags", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(Inst { csr: Self::fcsr(mnem), ..i(Op::Csrrw).x(rd.0, rs.0, 0) })?,
            ("fsrmi" | "fsflagsi", [E(e)]) => {
                let u = self.uimm5(e)?;
                self.emit(Inst { csr: Self::fcsr(mnem.trim_end_matches('i')), ..i(Op::Csrrwi).x(zero, u, 0) })?;
            }
            ("fsrmi" | "fsflagsi", [Opnd::X(rd), E(e)]) => {
                let u = self.uimm5(e)?;
                self.emit(Inst { csr: Self::fcsr(mnem.trim_end_matches('i')), ..i(Op::Csrrwi).x(rd.0, u, 0) })?;
            }
            ("fmv.s" | "fabs.s" | "fneg.s", [Opnd::F(rd), Opnd::F(rs)]) => {
                let op = match mnem {
                    "fmv.s" => Op::FsgnjS,
                    "fneg.s" => Op::FsgnjnS,
                    _ => Op::FsgnjxS,
                };
                self.emit(i(op).x(rd.0, rs.0, rs.0))?;
            }
            ("fgt.s" | "fge.s", [Opnd::X(rd), Opnd::F(a), Opnd::F(b)]) => self.emit(i(if mnem == "fgt.s" { Op::FltS } else { Op::FleS }).x(rd.0, b.0, a.0))?,
            ("fmv.x.s", [Opnd::X(rd), Opnd::F(rs)]) => self.emit(i(Op::FmvXW).x(rd.0, rs.0, 0))?,
            ("fmv.s.x", [Opnd::F(rd), Opnd::X(rs)]) => self.emit(i(Op::FmvWX).x(rd.0, rs.0, 0))?,
            ("zext.b", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Andi).x(rd.0, rs.0, 0).with_imm(0xff))?,
            ("zext.h" | "sext.h" | "sext.b", [Opnd::X(rd), Opnd::X(rs)]) => {
                let n = if mnem == "sext.b" { 24 } else { 16 };
                self.emit(i(Op::Slli).x(rd.0, rs.0, 0).with_imm(n))?;
                self.emit(i(if mnem == "zext.h" { Op::Srli } else { Op::Srai }).x(rd.0, rd.0, 0).with_imm(n))?;
            }
            ("unimp", []) => self.emit(Inst { csr: 0xc00, ..i(Op::Csrrw) })?,
            ("fence", []) => self.emit(i(Op::Fence).with_imm(0xff))?,
            _ => return Ok(false),
        }
        Ok(true)
    }

    /// 真指令：按格式取操作数。
    #[allow(clippy::too_many_lines, reason = "一种格式一支")]
    fn real(&mut self, op: Op, ops: &[Opnd]) -> Result<(), Error> {
        use Opnd::{E, M};
        let i = Inst::new(op);
        let form = op.form();
        let bad = || Error::Syntax(format!("`{op}` 的操作数不对：{ops:?}"));
        match (form, ops) {
            (Form::U, [Opnd::X(rd), E(e)]) => {
                let i = i.x(rd.0, 0, 0);
                match (op, e.modifier()) {
                    (Op::Lui, Some((Modifier::Hi, inner))) => self.emit_fix(i, Fix::Hi20, inner.clone())?,
                    (Op::Auipc, Some((Modifier::PcrelHi, inner))) => self.emit_fix(i, Fix::PcrelHi20, inner.clone())?,
                    (_, None) => self.imm(i, e, Fix::U20)?,
                    _ => return Err(bad()),
                }
            }
            (Form::J, [Opnd::X(rd), E(t)]) => self.emit_fix(i.x(rd.0, 0, 0), Fix::Jal, t.clone())?,
            (Form::Jalr, [Opnd::X(rd), M(e, rs)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::Jalr, [Opnd::X(rd), Opnd::X(rs), E(e)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::Branch, [Opnd::X(a), Opnd::X(b), E(t)]) => self.branch(op, a.0, b.0, t)?,
            (Form::Load, [Opnd::X(rd), M(e, rs)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::FLoad, [Opnd::F(rd), M(e, rs)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::Load, [Opnd::X(rd), E(e)]) => self.pcrel(op, rd.0, rd.0, e, true)?,
            (Form::FLoad, [Opnd::F(rd), E(e), Opnd::X(tmp)]) => self.pcrel(op, rd.0, tmp.0, e, true)?,
            (Form::Store, [Opnd::X(rs2), M(e, rs1)]) => self.imm(i.x(0, rs1.0, rs2.0), e, Fix::Store12)?,
            (Form::FStore, [Opnd::F(rs2), M(e, rs1)]) => self.imm(i.x(0, rs1.0, rs2.0), e, Fix::Store12)?,
            (Form::Store, [Opnd::X(rs2), E(e), Opnd::X(tmp)]) => self.pcrel(op, rs2.0, tmp.0, e, false)?,
            (Form::FStore, [Opnd::F(rs2), E(e), Opnd::X(tmp)]) => self.pcrel(op, rs2.0, tmp.0, e, false)?,
            (Form::Imm, [Opnd::X(rd), Opnd::X(rs), E(e)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::Shift, [Opnd::X(rd), Opnd::X(rs), E(e)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Shamt)?,
            (Form::R, [Opnd::X(rd), Opnd::X(a), Opnd::X(b)]) => self.emit(i.x(rd.0, a.0, b.0))?,
            // GNU 的写法：R 型助记符带立即数 ⇒ 对应的 I 型
            (Form::R, [Opnd::X(rd), Opnd::X(rs), E(e)]) => {
                let (op, fix) = match op {
                    Op::Add => (Op::Addi, Fix::Imm12),
                    Op::And => (Op::Andi, Fix::Imm12),
                    Op::Or => (Op::Ori, Fix::Imm12),
                    Op::Xor => (Op::Xori, Fix::Imm12),
                    Op::Slt => (Op::Slti, Fix::Imm12),
                    Op::Sltu => (Op::Sltiu, Fix::Imm12),
                    Op::Sll => (Op::Slli, Fix::Shamt),
                    Op::Srl => (Op::Srli, Fix::Shamt),
                    Op::Sra => (Op::Srai, Fix::Shamt),
                    _ => return Err(bad()),
                };
                self.imm(Inst::new(op).x(rd.0, rs.0, 0), e, fix)?;
            }
            (Form::Csr, [Opnd::X(rd), c, Opnd::X(rs)]) => self.emit(Inst { csr: self.csr(c)?, ..i.x(rd.0, rs.0, 0) })?,
            (Form::Csr | Form::CsrI, [Opnd::X(rd), c, E(e)]) => {
                let op = match op {
                    Op::Csrrw | Op::Csrrwi => Op::Csrrwi,
                    Op::Csrrs | Op::Csrrsi => Op::Csrrsi,
                    _ => Op::Csrrci,
                };
                let u = self.uimm5(e)?;
                self.emit(Inst { csr: self.csr(c)?, ..Inst::new(op).x(rd.0, u, 0) })?;
            }
            (Form::Fence, [E(p), E(s)]) => self.emit(i.with_imm(Self::fence_set(p)? << 4 | Self::fence_set(s)?))?,
            (Form::Fixed, []) => self.emit(i)?,
            (Form::Sfence, []) => self.emit(i)?,
            (Form::Sfence, [Opnd::X(a)]) => self.emit(i.x(0, a.0, 0))?,
            (Form::Sfence, [Opnd::X(a), Opnd::X(b)]) => self.emit(i.x(0, a.0, b.0))?,
            (Form::FR, [Opnd::F(rd), Opnd::F(a), Opnd::F(b)]) => self.emit(i.x(rd.0, a.0, b.0))?,
            (Form::FRrm, [Opnd::F(rd), Opnd::F(a), Opnd::F(b), rm @ ..]) => self.emit(Inst { rm: Self::rm(rm)?, ..i.x(rd.0, a.0, b.0) })?,
            (Form::FR1rm, [Opnd::F(rd), Opnd::F(a), rm @ ..]) => self.emit(Inst { rm: Self::rm(rm)?, ..i.x(rd.0, a.0, 0) })?,
            (Form::FCmp, [Opnd::X(rd), Opnd::F(a), Opnd::F(b)]) => self.emit(i.x(rd.0, a.0, b.0))?,
            (Form::FToX, [Opnd::X(rd), Opnd::F(a)]) => self.emit(i.x(rd.0, a.0, 0))?,
            (Form::XToF, [Opnd::F(rd), Opnd::X(a)]) => self.emit(i.x(rd.0, a.0, 0))?,
            (Form::FCvtXF, [Opnd::X(rd), Opnd::F(a), rm @ ..]) => self.emit(Inst { rm: Self::rm(rm)?, ..i.x(rd.0, a.0, 0) })?,
            (Form::FCvtFX, [Opnd::F(rd), Opnd::X(a), rm @ ..]) => self.emit(Inst { rm: Self::rm(rm)?, ..i.x(rd.0, a.0, 0) })?,
            (Form::R4, [Opnd::F(rd), Opnd::F(a), Opnd::F(b), Opnd::F(c), rm @ ..]) => self.emit(Inst { rs3: c.0, rm: Self::rm(rm)?, ..i.x(rd.0, a.0, b.0) })?,
            _ => return Err(bad()),
        }
        Ok(())
    }

    /// 立即数位段：`%lo` / `%pcrel_lo` 走对应的修补点；普通表达式现在能算就直接填，算不了留到最后（必须是常数）。
    fn imm(&mut self, i: Inst, e: &Expr, plain: Fix) -> Result<(), Error> {
        let store = plain == Fix::Store12;
        match e.modifier() {
            Some((Modifier::Lo, inner)) => return self.emit_fix(i, if store { Fix::Lo12S } else { Fix::Lo12I }, inner.clone()),
            Some((Modifier::PcrelLo, inner)) => return self.emit_fix(i, if store { Fix::PcrelLo12S } else { Fix::PcrelLo12I }, inner.clone()),
            Some((m, _)) => return Err(Error::Syntax(format!("这里不能用 {m:?}"))),
            None => {}
        }
        let form = match plain {
            Fix::Store12 => Form::Store,
            Fix::Shamt => Form::Shift,
            Fix::U20 => Form::U,
            _ => Form::Imm,
        };
        match self.eval(e, 0)?.constant() {
            Some(k) if Inst::fits(form, k) => self.emit(i.with_imm(i32::try_from(k).unwrap_or_default())),
            Some(k) => Err(Error::Syntax(format!("立即数 {k} 超出范围"))),
            None => self.emit_fix(i, plain, e.clone()),
        }
    }

    /// 条件分支：目标在本文件、本节里能就地解析 ⇒ 一条；否则同 LLVM 扩成「反向分支跳过 + `j` 目标」。
    fn branch(&mut self, op: Op, a: u8, b: u8, t: &Expr) -> Result<(), Error> {
        if self.resolvable(t) {
            return self.emit_fix(Inst::new(op).x(0, a, b), Fix::Branch, t.clone());
        }
        let inverse = match op {
            Op::Beq => Op::Bne,
            Op::Bne => Op::Beq,
            Op::Blt => Op::Bge,
            Op::Bge => Op::Blt,
            Op::Bltu => Op::Bgeu,
            _ => Op::Bltu,
        };
        self.emit(Inst::new(inverse).x(0, a, b).with_imm(8))?;
        self.emit_fix(Inst::new(Op::Jal), Fix::Jal, t.clone())
    }

    /// 分支目标能不能在汇编时解析：本文件定义的、不会被替换的标号（定义过的还得在本节）。
    fn resolvable(&self, t: &Expr) -> bool {
        let name = match t {
            Expr::Sym(n) => n,
            Expr::Bin(_, a, b) if matches!(**b, Expr::Num(_)) => match &**a {
                Expr::Sym(n) => n,
                _ => return true,
            },
            _ => return true,
        };
        let numeric = name.contains('\u{2}');
        let known = numeric || self.labels.contains(name.as_str()) || name.starts_with(".Ltmp");
        known && !self.preemptible(name) && self.label(name).is_none_or(|(s, _)| s == self.cur)
    }

    /// `li`：同 LLVM 的 RISCVMatInt（RV32）：12 位放得下就 `addi`，否则 `lui` + （低 12 位非零才有的）`addi`。
    fn li(&mut self, rd: X, e: &Expr) -> Result<(), Error> {
        let k = self.eval(e, 0)?.constant().ok_or_else(|| Error::Syntax(String::from("li 的操作数要是常数")))?;
        if !(i64::from(i32::MIN)..=i64::from(u32::MAX)).contains(&k) {
            return Err(Error::Syntax(format!("li {k} 放不进 32 位")));
        }
        let v = k as i32;
        let lo = (v << 20) >> 20;
        let hi = v.wrapping_sub(lo) >> 12 & 0xf_ffff;
        if hi == 0 {
            return self.emit(Inst::new(Op::Addi).x(rd.0, 0, 0).with_imm(lo));
        }
        self.emit(Inst::new(Op::Lui).x(rd.0, 0, 0).with_imm(hi))?;
        if lo != 0 {
            self.emit(Inst::new(Op::Addi).x(rd.0, rd.0, 0).with_imm(lo))?;
        }
        Ok(())
    }

    /// `auipc tmp, %pcrel_hi(sym)` + `op reg, %pcrel_lo(.Lpcrel_hiN)(tmp)`：`lla` / 取全局 / 存全局。
    fn pcrel(&mut self, op: Op, reg: u8, tmp: u8, e: &Expr, load: bool) -> Result<(), Error> {
        let label = self.pcrel_label();
        self.emit_fix(Inst::new(Op::Auipc).x(tmp, 0, 0), Fix::PcrelHi20, e.clone())?;
        let (i, fix) = if load { (Inst::new(op).x(reg, tmp, 0), Fix::PcrelLo12I) } else { (Inst::new(op).x(0, tmp, reg), Fix::PcrelLo12S) };
        self.emit_fix(i, fix, Expr::Sym(label))
    }

    /// `call` / `tail` / `jump`：`auipc base` + `jalr link, 0(base)`，一个 `CALL_PLT` 管两条。
    fn call(&mut self, link: u8, base: u8, t: &Expr) -> Result<(), Error> {
        self.emit_fix(Inst::new(Op::Auipc).x(base, 0, 0), Fix::Call, t.clone())?;
        self.emit(Inst::new(Op::Jalr).x(link, base, 0))
    }

    fn csr(&self, o: &Opnd) -> Result<u16, Error> {
        let Opnd::E(e) = o else { return Err(Error::Syntax(format!("要 CSR，见 {o:?}"))) };
        if let Expr::Sym(name) = e
            && let Ok(c) = name.parse::<Csr>()
        {
            return Ok(c.0);
        }
        let k = self.eval(e, 0)?.constant().ok_or_else(|| Error::Syntax(String::from("CSR 要名字或常数")))?;
        u16::try_from(k).ok().filter(|&c| c < 4096).ok_or_else(|| Error::Syntax(format!("CSR 编号 {k} 越界")))
    }

    fn uimm5(&self, e: &Expr) -> Result<u8, Error> {
        let k = self.eval(e, 0)?.constant().ok_or_else(|| Error::Syntax(String::from("要 5 位常数")))?;
        u8::try_from(k).ok().filter(|&u| u < 32).ok_or_else(|| Error::Syntax(format!("{k} 不是 5 位无符号数")))
    }

    const fn fcsr(mnem: &str) -> u16 {
        match mnem.as_bytes() {
            b"fsrm" => Csr::FRM.0,
            b"fsflags" => Csr::FFLAGS.0,
            _ => Csr::FCSR.0,
        }
    }

    /// 末尾可选的舍入模式（缺省 `dyn`）。
    fn rm(rest: &[Opnd]) -> Result<u8, Error> {
        match rest {
            [] => Ok(Rm::Dyn as u8),
            [Opnd::E(Expr::Sym(s))] => s.parse::<Rm>().map(|r| r as u8).map_err(|()| Error::Syntax(format!("不认识的舍入模式 `{s}`"))),
            _ => Err(Error::Syntax(format!("舍入模式写错：{rest:?}"))),
        }
    }

    /// `fence` 的 `iorw` 集合。
    fn fence_set(e: &Expr) -> Result<i32, Error> {
        match e {
            Expr::Sym(s) => s.chars().try_fold(0, |acc, c| {
                Ok(acc
                    | match c {
                        'i' => 8,
                        'o' => 4,
                        'r' => 2,
                        'w' => 1,
                        _ => return Err(Error::Syntax(format!("fence 集合 `{s}`"))),
                    })
            }),
            Expr::Num(0) => Ok(0),
            _ => Err(Error::Syntax(String::from("fence 集合"))),
        }
    }
}
