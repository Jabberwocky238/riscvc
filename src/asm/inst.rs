//! 指令与伪指令：操作数解析、伪指令展开（同 llvm-mc 的写法与展开）。
use super::fixup::Fix;
use super::lex::{Tok, Toks};
use super::{Assembler, Error, Expr, Modifier};
use crate::ext::Operand;
use crate::isa::{Csr, F, Form, Inst, Op, Rm, X};
use object::elf;

/// 一个操作数。
#[derive(Clone, Debug)]
pub enum Opnd {
    X(X),
    F(F),
    E(Expr),
    /// `imm(rs)`
    M(Expr, X),
}

impl Assembler<'_> {
    pub(super) fn instruction(&mut self, mnem: &str, rest: &str) -> Result<(), Error> {
        let toks = Toks::try_from(rest)?.split_commas();
        // 要符号的位置上，寄存器名也是符号（同 llvm-mc：`call zero`、`j a0`、`jal a0, a0`）
        let symbolic = match (mnem, mnem.parse::<Op>().map(Op::form), toks.len()) {
            ("jump", ..) => Some(0),
            ("j" | "jal" | "call" | "tail" | "la" | "lla" | "lga" | "la.tls.gd" | "la.tls.ie", ..) => toks.len().checked_sub(1),
            // `lw a2, sym` / `flw fa0, sym, t0` / `sw a0, sym, t0`：取存全局的伪指令
            (_, Ok(Form::Load | Form::FLoad), 2) | (_, Ok(Form::FLoad | Form::Store | Form::FStore), 3) => Some(1),
            _ => None,
        };
        let register = |n: &str| n.parse::<X>().is_ok() || n.parse::<F>().is_ok();
        let ops = toks
            .into_iter()
            .enumerate()
            .map(|(k, t)| match (symbolic == Some(k), t.tokens()) {
                (true, [Tok::Ident(name)]) if register(name) => Ok(Opnd::E(Expr::Sym(name.clone()))),
                _ => self.operand(t),
            })
            .collect::<Result<Vec<_>, _>>()?;
        if let Some(bytes) = self.extended(mnem, &ops)? {
            return self.bytes(&bytes);
        }
        if self.pseudo(mnem, &ops)? {
            return Ok(());
        }
        let op: Op = mnem.parse().map_err(|()| Error::Syntax(format!("不认识的指令 `{mnem}`")))?;
        self.real(op, &ops)
    }

    /// 扩展指令：操作数求值成常数 / 寄存器号，交给认这个助记符的扩展。没有扩展认 ⇒ `None`。
    fn extended(&mut self, mnem: &str, ops: &[Opnd]) -> Result<Option<Vec<u8>>, Error> {
        if self.exts.is_empty() {
            return Ok(None);
        }
        let mut plain = Vec::with_capacity(ops.len());
        for op in ops {
            plain.push(match op {
                Opnd::X(r) => Operand::X(r.0),
                Opnd::F(r) => Operand::F(r.0),
                Opnd::E(e) => match self.eval(e, 0).ok().and_then(|v| v.constant()) {
                    Some(k) => Operand::Imm(k),
                    None => return Ok(None),
                },
                Opnd::M(..) => return Ok(None),
            });
        }
        let exts = self.exts;
        exts.iter().find_map(|e| e.assemble(mnem, &plain).map(|r| r.map_err(|msg| Error::Syntax(format!("{}：{msg}", e.name()))))).transpose()
    }

    pub(super) fn operand(&mut self, t: Toks) -> Result<Opnd, Error> {
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
        // `foo@plt`：同不带（llvm-mc 一样出 CALL_PLT）
        let t = match toks {
            [head @ .., Tok::Punct('@'), Tok::Ident(p)] if p.eq_ignore_ascii_case("plt") => Toks::from_vec(head.to_vec()),
            _ => t,
        };
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
            // 常数地址 ⇒ `li`（同 llvm-mc）
            ("la" | "lla", [Opnd::X(rd), E(e)]) if self.eval(e, 0).is_ok_and(|v| v.constant().is_some()) => self.li(*rd, e)?,
            ("lla", [Opnd::X(rd), E(e)]) => self.pcrel(Fix::PcrelHi20, Op::Addi, rd.0, rd.0, e, true)?,
            // `.option pic` 下 `la` 走 GOT（同 llvm-mc）
            ("la", [Opnd::X(rd), E(e)]) if !self.pic => self.pcrel(Fix::PcrelHi20, Op::Addi, rd.0, rd.0, e, true)?,
            ("la" | "lga", [Opnd::X(rd), E(e)]) => self.pcrel(Fix::PcHi(elf::R_RISCV_GOT_HI20), Op::Lw, rd.0, rd.0, e, true)?,
            ("la.tls.gd", [Opnd::X(rd), E(e)]) => self.pcrel(Fix::PcHi(elf::R_RISCV_TLS_GD_HI20), Op::Addi, rd.0, rd.0, e, true)?,
            ("la.tls.ie", [Opnd::X(rd), E(e)]) => self.pcrel(Fix::PcHi(elf::R_RISCV_TLS_GOT_HI20), Op::Lw, rd.0, rd.0, e, true)?,
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
            ("frsr", [Opnd::X(rd)]) => self.emit(Inst { csr: Csr::FCSR.0, ..i(Op::Csrrs).x(rd.0, zero, 0) })?,
            ("fssr", [Opnd::X(rs)]) => self.emit(Inst { csr: Csr::FCSR.0, ..i(Op::Csrrw).x(zero, rs.0, 0) })?,
            ("fssr", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(Inst { csr: Csr::FCSR.0, ..i(Op::Csrrw).x(rd.0, rs.0, 0) })?,
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
            ("sbreak", []) => self.emit(i(Op::Ebreak))?,
            ("scall", []) => self.emit(i(Op::Ecall))?,
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
                let fix = match (op, e.modifier()) {
                    (_, None) => return self.imm(i, e, Fix::U20),
                    (Op::Lui, Some((Modifier::Hi, _))) => Fix::Hi20,
                    (Op::Lui, Some((Modifier::TprelHi, _))) => Fix::Reloc(elf::R_RISCV_TPREL_HI20),
                    (Op::Auipc, Some((Modifier::PcrelHi, _))) => Fix::PcrelHi20,
                    (Op::Auipc, Some((Modifier::GotPcrelHi, _))) => Fix::PcHi(elf::R_RISCV_GOT_HI20),
                    (Op::Auipc, Some((Modifier::TlsIePcrelHi, _))) => Fix::PcHi(elf::R_RISCV_TLS_GOT_HI20),
                    (Op::Auipc, Some((Modifier::TlsGdPcrelHi, _))) => Fix::PcHi(elf::R_RISCV_TLS_GD_HI20),
                    (Op::Auipc, Some((Modifier::TlsdescHi, _))) => Fix::PcHi(elf::R_RISCV_TLSDESC_HI20),
                    _ => return Err(bad()),
                };
                let Some((_, inner)) = e.modifier() else { return Err(bad()) };
                self.emit_fix(i, fix, inner.clone())?;
            }
            (Form::J, [Opnd::X(rd), E(t)]) => self.emit_fix(i.x(rd.0, 0, 0), Fix::Jal, t.clone())?,
            (Form::Jalr, [Opnd::X(rd), M(e, rs)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::Jalr, [Opnd::X(rd), M(e, rs), E(m)]) if let Some((Modifier::TlsdescCall, label)) = m.modifier() => {
                self.note(Fix::Reloc(elf::R_RISCV_TLSDESC_CALL), label.clone());
                self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?;
            }
            (Form::Jalr, [Opnd::X(rd), Opnd::X(rs), E(e)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::Branch, [Opnd::X(a), Opnd::X(b), E(t)]) => self.branch(op, a.0, b.0, t)?,
            (Form::Load, [Opnd::X(rd), M(e, rs)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::FLoad, [Opnd::F(rd), M(e, rs)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::Load, [Opnd::X(rd), E(e)]) => self.pcrel(Fix::PcrelHi20, op, rd.0, rd.0, e, true)?,
            (Form::FLoad, [Opnd::F(rd), E(e), Opnd::X(tmp)]) => self.pcrel(Fix::PcrelHi20, op, rd.0, tmp.0, e, true)?,
            (Form::Store, [Opnd::X(rs2), M(e, rs1)]) => self.imm(i.x(0, rs1.0, rs2.0), e, Fix::Store12)?,
            (Form::FStore, [Opnd::F(rs2), M(e, rs1)]) => self.imm(i.x(0, rs1.0, rs2.0), e, Fix::Store12)?,
            (Form::Store, [Opnd::X(rs2), E(e), Opnd::X(tmp)]) => self.pcrel(Fix::PcrelHi20, op, rs2.0, tmp.0, e, false)?,
            (Form::FStore, [Opnd::F(rs2), E(e), Opnd::X(tmp)]) => self.pcrel(Fix::PcrelHi20, op, rs2.0, tmp.0, e, false)?,
            (Form::Imm, [Opnd::X(rd), Opnd::X(rs), E(e)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Form::Shift, [Opnd::X(rd), Opnd::X(rs), E(e)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Shamt)?,
            (Form::R, [Opnd::X(rd), Opnd::X(a), Opnd::X(b)]) => self.emit(i.x(rd.0, a.0, b.0))?,
            (Form::R, [Opnd::X(rd), Opnd::X(a), Opnd::X(b), E(m)]) if op == Op::Add && let Some((Modifier::TprelAdd, sym)) = m.modifier() => {
                self.emit_fix(i.x(rd.0, a.0, b.0), Fix::Reloc(elf::R_RISCV_TPREL_ADD), sym.clone())?;
            }
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

    /// `.insn`：原始字（`.insn 值` / `.insn 长度, 值`）或按格式拼（`.insn r|r4|i|s|b|sb|u|j|uj opcode, …`）。
    pub(super) fn insn(&mut self, rest: &str) -> Result<(), Error> {
        let (kind, args) = rest.split_once(char::is_whitespace).unwrap_or((rest, ""));
        if !matches!(kind, "r" | "r4" | "i" | "s" | "b" | "sb" | "u" | "j" | "uj") {
            let a = Toks::try_from(rest)?.split_commas();
            let (len, value) = match a.as_slice() {
                [v] => {
                    let v = self.constant_arg(Some(v), "值")?;
                    // 同 llvm-mc：低两位不是 11 ⇒ 压缩的 2 字节；否则按值放得下的宽度
                    let len = match v.cast_unsigned() {
                        _ if v & 3 != 3 => 2,
                        u if u >> 32 == 0 => 4,
                        u if u >> 48 == 0 => 6,
                        _ => 8,
                    };
                    (len, v)
                }
                [n, v] => (self.constant_arg(Some(n), "长度")?, self.constant_arg(Some(v), "值")?),
                _ => return Err(Error::Syntax(String::from(".insn 长度, 值"))),
            };
            let len = usize::try_from(len).ok().filter(|n| matches!(n, 2 | 4 | 6 | 8)).ok_or_else(|| Error::Syntax(format!(".insn 长度 {len}")))?;
            return self.bytes(&value.to_le_bytes()[..len]);
        }
        let toks = Toks::try_from(args)?.split_commas();
        let mut it = toks.into_iter();
        let mut next = || it.next().ok_or_else(|| Error::Syntax(format!(".insn {kind} 的操作数不够")));
        let opcode = {
            let t = next()?;
            match t.tokens() {
                [Tok::Ident(name)] if let Some(v) = Self::opcode(name) => v,
                _ => u32::try_from(self.constant_arg(Some(&t), "opcode")?).unwrap_or_default(),
            }
        };
        let mut num = |me: &mut Self, what: &str| -> Result<u32, Error> { Ok(u32::try_from(me.constant_arg(Some(&next()?), what)? & 0xffff_ffff).unwrap_or_default()) };
        let reg = |o: &Opnd| -> Result<u32, Error> {
            match o {
                Opnd::X(r) => Ok(u32::from(r.0)),
                Opnd::F(r) => Ok(u32::from(r.0)),
                _ => Err(Error::Syntax(format!(".insn 要寄存器，见 {o:?}"))),
            }
        };
        match kind {
            "r" | "r4" => {
                let f3 = num(self, "funct3")?;
                let f7 = num(self, "funct7")?;
                let ops = it.map(|t| self.operand(t)).collect::<Result<Vec<_>, _>>()?;
                let w = match ops.as_slice() {
                    [rd, a, b] => opcode | reg(rd)? << 7 | f3 << 12 | reg(a)? << 15 | reg(b)? << 20 | f7 << 25,
                    [rd, a, b, c] => opcode | reg(rd)? << 7 | f3 << 12 | reg(a)? << 15 | reg(b)? << 20 | (f7 & 3) << 25 | reg(c)? << 27,
                    _ => return Err(Error::Syntax(String::from(".insn r 的寄存器个数"))),
                };
                self.word(w)
            }
            "i" | "s" => {
                let f3 = num(self, "funct3")?;
                let ops = it.map(|t| self.operand(t)).collect::<Result<Vec<_>, _>>()?;
                let (r, base, e) = match ops.as_slice() {
                    [r, Opnd::M(e, base)] => (reg(r)?, u32::from(base.0), e.clone()),
                    [r, b, Opnd::E(e)] if kind == "i" => (reg(r)?, reg(b)?, e.clone()),
                    _ => return Err(Error::Syntax(format!(".insn {kind} 的操作数：{ops:?}"))),
                };
                let w = if kind == "i" { opcode | r << 7 | f3 << 12 | base << 15 } else { opcode | f3 << 12 | base << 15 | r << 20 };
                self.imm_word(w, &e, if kind == "i" { Fix::Imm12 } else { Fix::Store12 })
            }
            "b" | "sb" => {
                let f3 = num(self, "funct3")?;
                let ops = it.map(|t| self.operand(t)).collect::<Result<Vec<_>, _>>()?;
                let [a, b, Opnd::E(t)] = ops.as_slice() else { return Err(Error::Syntax(String::from(".insn b 的操作数"))) };
                let w = opcode | f3 << 12 | reg(a)? << 15 | reg(b)? << 20;
                let t = t.clone();
                self.note(Fix::Branch, Self::target(t));
                self.word(w)
            }
            "u" | "j" | "uj" => {
                let ops = it.map(|t| self.operand(t)).collect::<Result<Vec<_>, _>>()?;
                let [rd, Opnd::E(e)] = ops.as_slice() else { return Err(Error::Syntax(format!(".insn {kind} 的操作数"))) };
                let w = opcode | reg(rd)? << 7;
                let e = e.clone();
                if kind == "u" {
                    self.imm_word(w, &e, Fix::U20)
                } else if let Some(k) = self.eval(&e, 0)?.constant() {
                    // ⚠ 同 llvm-mc：常数目标把 `k >> 1` 不打散、直接放进 31:12（`.insn j JAL, a0, 0x100` 跳到 0x80000）
                    self.word(w | (u32::try_from((k >> 1) & 0xf_ffff).unwrap_or_default() << 12))
                } else {
                    self.note(Fix::Jal, Self::target(e));
                    self.word(w)
                }
            }
            _ => unreachable!(),
        }
    }

    /// `.insn` 的跳转目标：常数 = 偏移（RV32 下按 32 位补码）。
    fn target(e: Expr) -> Expr {
        match e {
            Expr::Num(k) if k >= 1 << 31 && k < 1 << 32 => Expr::Num(k - (1 << 32)),
            e => e,
        }
    }

    /// `.insn` 的立即数位段：能算就填，算不了（`%lo(sym)`）记修补点。
    fn imm_word(&mut self, w: u32, e: &Expr, plain: Fix) -> Result<(), Error> {
        let form = match plain {
            Fix::Store12 => Form::Store,
            Fix::U20 => Form::U,
            _ => Form::Imm,
        };
        match self.eval(e, 0)?.constant().map(|k| Self::rv32(form, k)) {
            Some(k) if Inst::fits(form, k) => self.word(w | Inst::scatter(form, i32::try_from(k).unwrap_or_default())),
            Some(k) => Err(Error::Syntax(format!("立即数 {k} 超出范围"))),
            None => {
                let (fix, e) = match e.modifier() {
                    Some((Modifier::Lo, inner)) => (if plain == Fix::Store12 { Fix::Lo12S } else { Fix::Lo12I }, inner.clone()),
                    Some((Modifier::Hi, inner)) => (Fix::Hi20, inner.clone()),
                    _ => (plain, e.clone()),
                };
                self.note(fix, e);
                self.word(w)
            }
        }
    }

    /// `.insn` 的 opcode 名（同 llvm-mc 的 InsnDirectiveOpcode）。
    fn opcode(name: &str) -> Option<u32> {
        Some(match name {
            "LOAD" => 0x03,
            "LOAD_FP" => 0x07,
            "CUSTOM_0" => 0x0b,
            "MISC_MEM" => 0x0f,
            "OP_IMM" => 0x13,
            "AUIPC" => 0x17,
            "OP_IMM_32" => 0x1b,
            "STORE" => 0x23,
            "STORE_FP" => 0x27,
            "CUSTOM_1" => 0x2b,
            "AMO" => 0x2f,
            "OP" => 0x33,
            "LUI" => 0x37,
            "OP_32" => 0x3b,
            "MADD" => 0x43,
            "MSUB" => 0x47,
            "NMSUB" => 0x4b,
            "NMADD" => 0x4f,
            "OP_FP" => 0x53,
            "OP_V" => 0x57,
            "CUSTOM_2" => 0x5b,
            "BRANCH" => 0x63,
            "JALR" => 0x67,
            "JAL" => 0x6f,
            "SYSTEM" => 0x73,
            "OP_P" => 0x77,
            "CUSTOM_3" => 0x7b,
            _ => return None,
        })
    }

    /// 立即数位段：`%lo` / `%pcrel_lo` 走对应的修补点；普通表达式现在能算就直接填，算不了留到最后（必须是常数）。
    fn imm(&mut self, i: Inst, e: &Expr, plain: Fix) -> Result<(), Error> {
        let store = plain == Fix::Store12;
        let fix = match e.modifier() {
            None => None,
            // 常数上的 %lo / %hi 现在就折（`li a0, %lo(0x123456)`）
            Some((Modifier::Lo | Modifier::Hi, inner)) if self.eval(inner, 0)?.constant().is_some() => None,
            Some((Modifier::Lo, _)) => Some(if store { Fix::Lo12S } else { Fix::Lo12I }),
            Some((Modifier::PcrelLo, _)) => Some(if store { Fix::PcrelLo12S } else { Fix::PcrelLo12I }),
            Some((Modifier::TprelLo, _)) => Some(Fix::Reloc(if store { elf::R_RISCV_TPREL_LO12_S } else { elf::R_RISCV_TPREL_LO12_I })),
            Some((Modifier::TlsdescLoadLo, _)) => Some(Fix::Reloc(elf::R_RISCV_TLSDESC_LOAD_LO12)),
            Some((Modifier::TlsdescAddLo, _)) => Some(Fix::Reloc(elf::R_RISCV_TLSDESC_ADD_LO12)),
            Some((m, _)) => return Err(Error::Syntax(format!("这里不能用 {m:?}"))),
        };
        if let (Some(fix), Some((_, inner))) = (fix, e.modifier()) {
            return self.emit_fix(i, fix, inner.clone());
        }
        let form = match plain {
            Fix::Store12 => Form::Store,
            Fix::Shamt => Form::Shift,
            Fix::U20 => Form::U,
            _ => Form::Imm,
        };
        match self.eval(e, 0)?.constant().map(|k| Self::rv32(form, k)) {
            Some(k) if Inst::fits(form, k) => self.emit(i.with_imm(i32::try_from(k).unwrap_or_default())),
            Some(k) => Err(Error::Syntax(format!("立即数 {k} 超出范围"))),
            None => self.emit_fix(i, plain, e.clone()),
        }
    }

    /// RV32 的有符号立即数：`[2³¹, 2³²)` 当 32 位补码（同 llvm-mc 的 fixImmediateForRV32）。
    pub(super) const fn rv32(form: Form, k: i64) -> i64 {
        match form {
            Form::U | Form::Shift => k,
            _ if k >= 1 << 31 && k < 1 << 32 => k - (1 << 32),
            _ => k,
        }
    }

    /// 条件分支：目标在本文件、本节里能就地解析（或 `.option exact`）⇒ 一条；否则同 LLVM 扩成「反向分支跳过 + `j` 目标」。
    fn branch(&mut self, op: Op, a: u8, b: u8, t: &Expr) -> Result<(), Error> {
        if self.exact || self.resolvable(t) {
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
        if self.eval(t, 0).is_ok_and(|v| v.constant().is_some()) {
            return true;
        }
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
        // `li rd, %lo(sym)` / `%pcrel_lo(标号)` ⇒ `addi rd, zero, …`
        match e.modifier() {
            Some((Modifier::Lo, inner)) if self.eval(inner, 0)?.constant().is_none() => return self.emit_fix(Inst::new(Op::Addi).x(rd.0, 0, 0), Fix::Lo12I, inner.clone()),
            Some((Modifier::PcrelLo, inner)) => return self.emit_fix(Inst::new(Op::Addi).x(rd.0, 0, 0), Fix::PcrelLo12I, inner.clone()),
            _ => {}
        }
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
        // 同 RISCVMatInt：本要 lui + addi、又是偶数、去掉尾零后放得进 6 位 ⇒ `li` 小数 + `slli`（更好压缩）
        if lo != 0 && v & 1 == 0 {
            let tz = v.trailing_zeros();
            let shifted = v >> tz;
            if (-32..32).contains(&shifted) {
                self.emit(Inst::new(Op::Addi).x(rd.0, 0, 0).with_imm(shifted))?;
                return self.emit(Inst::new(Op::Slli).x(rd.0, rd.0, 0).with_imm(i32::try_from(tz).unwrap_or_default()));
            }
        }
        self.emit(Inst::new(Op::Lui).x(rd.0, 0, 0).with_imm(hi))?;
        if lo != 0 {
            self.emit(Inst::new(Op::Addi).x(rd.0, rd.0, 0).with_imm(lo))?;
        }
        Ok(())
    }

    /// `auipc tmp, %pcrel_hi(sym)`（或 GOT / TLS 的高位）+ `op reg, %pcrel_lo(.Lpcrel_hiN)(tmp)`：`lla` / `la` / 取全局 / 存全局。
    fn pcrel(&mut self, hi: Fix, op: Op, reg: u8, tmp: u8, e: &Expr, load: bool) -> Result<(), Error> {
        let label = self.pcrel_label();
        self.emit_fix(Inst::new(Op::Auipc).x(tmp, 0, 0), hi, e.clone())?;
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
