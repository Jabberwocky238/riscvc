//! 指令与伪指令：操作数解析、伪指令展开（同 llvm-mc 的写法与展开）。
use super::fixup::Fix;
use super::lex::{Cur, Tok, Toks};
use super::{Assembler, Error, Expr, Modifier};
use crate::ext::{Args, Emit, Field, Operand};
use crate::isa::{F, Base, Inst, Rv32i as Op, X};
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
        let line = Toks::try_from(rest)?;
        let toks = line.commas();
        // 要符号的位置上，寄存器名也是符号（同 llvm-mc：`call zero`、`j a0`、`jal a0, a0`）
        let symbolic = match (mnem, mnem.parse::<Op>().map(|o| o.form()), toks.len()) {
            ("jump", ..) => Some(0),
            ("j" | "jal" | "call" | "tail" | "la" | "lla" | "lga" | "la.tls.gd" | "la.tls.ie", ..) => toks.len().checked_sub(1),
            // `lw a2, sym` / `flw fa0, sym, t0` / `sw a0, sym, t0`：取存全局的伪指令
            (_, Ok(Base::Load), 2) | (_, Ok(Base::Store), 3) => Some(1),
            _ => None,
        };
        let register = |n: &str| n.parse::<X>().is_ok() || n.parse::<F>().is_ok();
        let ops = toks
            .into_iter()
            .enumerate()
            .map(|(k, t)| match (symbolic == Some(k), t.tokens()) {
                (true, [Tok::Ident(name)]) if register(name) => Ok(Opnd::E(Expr::Sym(String::from(*name)))),
                _ => self.operand(t),
            })
            .collect::<Result<Vec<_>, _>>()?;
        // 显式的压缩跳转跳到符号：长度留到布局（⛔ 交给 C 扩展只能编常数偏移）
        if let ("c.j" | "c.jal", [Opnd::E(t)]) | ("c.beqz" | "c.bnez", [Opnd::X(_), Opnd::E(t)]) = (mnem, ops.as_slice())
            && self.folded(t).is_none()
        {
            use super::layout::Flow;
            let flow = match (mnem, ops.as_slice()) {
                ("c.j", _) => Flow::Jump(0),
                ("c.jal", _) => Flow::Jump(X::RA.0),
                (_, [Opnd::X(rs), _]) => Flow::Branch(if mnem == "c.beqz" { Op::Beq } else { Op::Bne }, rs.0, 0),
                _ => unreachable!(),
            };
            return self.compressed_flow(flow, &t.clone());
        }
        if self.extended(mnem, rest, &ops)? {
            return Ok(());
        }
        if self.pseudo(mnem, &ops)? {
            return Ok(());
        }
        let op: Op = mnem.parse().map_err(|()| Error::Syntax(format!("不认识的指令 `{mnem}`")))?;
        self.real(op, &ops)
    }

    /// 扩展指令（给的、再内置的 M / Zmmul / F / Zicsr）：认这个助记符的扩展出字节、修补点或文本展开。没有扩展认 ⇒ `false`。
    fn extended(&mut self, mnem: &str, rest: &str, ops: &[Opnd]) -> Result<bool, Error> {
        let plain: Vec<Operand> = ops
            .iter()
            .map(|op| match op {
                Opnd::X(r) => Operand::X(r.0),
                Opnd::F(r) => Operand::F(r.0),
                Opnd::E(e) => match (self.folded(e), e) {
                    (Some(k), _) => Operand::Imm(k),
                    (None, Expr::Sym(n)) => Operand::Sym(n.clone()),
                    (None, e) => Operand::Expr(self.pin(e)),
                },
                Opnd::M(e, base) => Operand::Mem(self.folded(e).map_or_else(|| self.pin(e), Expr::Num), base.0),
            })
            .collect();
        let raw = Self::raw_args(rest);
        let args = Args { ops: &plain, raw: &raw };
        // 借出扩展表再放回：⛔ 不克隆（每条指令一次）
        let exts = core::mem::take(&mut self.exts);
        // 只问可能认这个助记符的那几个：头一次问一遍 `knows` 记成位掩码，之后查表
        let mask = match self.known.get(mnem) {
            Some(&m) => m,
            None => {
                let m = if exts.len() > 32 { u32::MAX } else { exts.iter().enumerate().filter(|(_, e)| e.knows(mnem)).fold(0, |a, (k, _)| a | 1 << k) };
                self.known.insert(String::from(mnem), m);
                m
            }
        };
        let hit = exts.iter().enumerate().filter(|(k, _)| mask >> k & 1 != 0).find_map(|(k, e)| e.assemble(mnem, &args).map(|r| (k, r)));
        self.exts = exts;
        let Some((k, out)) = hit else { return Ok(false) };
        match out.map_err(|msg| Error::Syntax(format!("{}：{msg}", self.exts[k].name())))? {
            // 内置扩展的 4 字节标准指令（flw / fsw …）也压
            Emit::Bytes(b) if b.len() == 4 => self.instruction_word(u32::from_le_bytes([b[0], b[1], b[2], b[3]]))?,
            Emit::Bytes(b) => self.bytes(&b)?,
            Emit::Fixed(b, fixups) => {
                let start = self.here();
                for f in fixups {
                    let (kind, e) = Self::field(f.field, &f.expr)?;
                    self.note_at(start + f.offset as u64, kind, e);
                }
                self.bytes(&b)?;
            }
            Emit::Text(t) => {
                let label = format!(".Lpcrel_hi{}", self.temp);
                self.temp += 1;
                for line in t.replace("$L", &label).lines() {
                    self.statement(line.trim())?;
                }
            }
        }
        Ok(true)
    }

    /// 汇编时就能定的常数；开着松弛时常数上的 `%hi` / `%lo` 不算（要出 0 号符号 + 常数的重定位，同 llvm-mc）。
    fn folded(&self, e: &Expr) -> Option<i64> {
        if self.mode.relax && matches!(e.modifier(), Some((Modifier::Lo | Modifier::Hi, _))) {
            return None;
        }
        self.eval(e, 0).ok()?.constant()
    }

    /// 扩展给的位段 + 表达式（最外层的修饰符）⇒ 内部的修补点种类。
    fn field(field: Field, e: &Expr) -> Result<(Fix, Expr), Error> {
        let store = field == Field::S;
        let (kind, inner) = match (field, e.modifier()) {
            (Field::I | Field::S, Some((Modifier::Lo, inner))) => (if store { Fix::Lo12S } else { Fix::Lo12I }, inner),
            (Field::I | Field::S, Some((Modifier::PcrelLo, inner))) => (if store { Fix::PcrelLo12S } else { Fix::PcrelLo12I }, inner),
            (Field::I | Field::S, Some((Modifier::TprelLo, inner))) => (Fix::Reloc(if store { elf::R_RISCV_TPREL_LO12_S } else { elf::R_RISCV_TPREL_LO12_I }), inner),
            (Field::U, Some((Modifier::Hi, inner))) => (Fix::Hi20, inner),
            (Field::U, Some((Modifier::PcrelHi, inner))) => (Fix::PcrelHi20, inner),
            (_, Some((m, _))) => return Err(Error::Syntax(format!("这里不能用 {m:?}"))),
            (Field::I, None) => (Fix::Imm12, e),
            (Field::S, None) => (Fix::Store12, e),
            (Field::U, None) => (Fix::U20, e),
            (Field::B, None) => (Fix::Branch, e),
            (Field::J, None) => (Fix::Jal, e),
        };
        Ok((kind, inner.clone()))
    }

    /// 操作数原文（按最外层的逗号分，括号与引号里的不分）—— 借 `rest` 的切片，⛔ 不复制。
    fn raw_args(rest: &str) -> Vec<&str> {
        let (mut out, mut depth, mut quote, mut start) = (Vec::new(), 0i32, false, 0);
        for (i, c) in rest.char_indices() {
            match c {
                '"' => quote = !quote,
                '(' if !quote => depth += 1,
                ')' if !quote => depth -= 1,
                ',' if !quote && depth == 0 => {
                    out.push(rest[start..i].trim());
                    start = i + c.len_utf8();
                }
                _ => {}
            }
        }
        let last = rest[start..].trim();
        if !last.is_empty() || !out.is_empty() {
            out.push(last);
        }
        out
    }

    pub(super) fn operand(&mut self, t: Cur<'_, '_>) -> Result<Opnd, Error> {
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
            let e = if prefix.is_empty() { Expr::Num(0) } else { Cur::new(prefix).expr(self)? };
            return Ok(Opnd::M(e, base));
        }
        // `foo@plt`：同不带（llvm-mc 一样出 CALL_PLT）
        let t = match toks {
            [head @ .., Tok::Punct('@'), Tok::Ident(p)] if p.eq_ignore_ascii_case("plt") => Cur::new(head),
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
            ("la", [Opnd::X(rd), E(e)]) if !self.mode.pic => self.pcrel(Fix::PcrelHi20, Op::Addi, rd.0, rd.0, e, true)?,
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
            ("j", [E(t)]) => self.jump(0, t)?,
            ("jal", [E(t)]) => self.jump(X::RA.0, t)?,
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
            ("zext.b", [Opnd::X(rd), Opnd::X(rs)]) => self.emit(i(Op::Andi).x(rd.0, rs.0, 0).with_imm(0xff))?,
            ("zext.h" | "sext.h" | "sext.b", [Opnd::X(rd), Opnd::X(rs)]) => {
                let n = if mnem == "sext.b" { 24 } else { 16 };
                self.emit(i(Op::Slli).x(rd.0, rs.0, 0).with_imm(n))?;
                self.emit(i(if mnem == "zext.h" { Op::Srli } else { Op::Srai }).x(rd.0, rd.0, 0).with_imm(n))?;
            }
            ("sbreak", []) => self.emit(i(Op::Ebreak))?,
            ("scall", []) => self.emit(i(Op::Ecall))?,
            // `csrrw zero, cycle, zero`：不管开没开 Zicsr 都认（同 llvm-mc）
            ("unimp", []) => self.instruction_word(0xc000_1073)?,
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
            (Base::U, [Opnd::X(rd), E(e)]) => {
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
            (Base::J, [Opnd::X(rd), E(t)]) => self.jump(rd.0, t)?,
            (Base::Jalr, [Opnd::X(rd), M(e, rs)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Base::Jalr, [Opnd::X(rd), M(e, rs), E(m)]) if let Some((Modifier::TlsdescCall, label)) = m.modifier() => {
                self.note(Fix::Reloc(elf::R_RISCV_TLSDESC_CALL), label.clone());
                self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?;
            }
            (Base::Jalr, [Opnd::X(rd), Opnd::X(rs), E(e)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Base::Branch, [Opnd::X(a), Opnd::X(b), E(t)]) => self.branch(op, a.0, b.0, t)?,
            (Base::Load, [Opnd::X(rd), M(e, rs)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Base::Load, [Opnd::X(rd), E(e)]) => self.pcrel(Fix::PcrelHi20, op, rd.0, rd.0, e, true)?,
            (Base::Store, [Opnd::X(rs2), M(e, rs1)]) => self.imm(i.x(0, rs1.0, rs2.0), e, Fix::Store12)?,
            (Base::Store, [Opnd::X(rs2), E(e), Opnd::X(tmp)]) => self.pcrel(Fix::PcrelHi20, op, rs2.0, tmp.0, e, false)?,
            (Base::Imm, [Opnd::X(rd), Opnd::X(rs), E(e)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Imm12)?,
            (Base::Shift, [Opnd::X(rd), Opnd::X(rs), E(e)]) => self.imm(i.x(rd.0, rs.0, 0), e, Fix::Shamt)?,
            (Base::R, [Opnd::X(rd), Opnd::X(a), Opnd::X(b)]) => self.emit(i.x(rd.0, a.0, b.0))?,
            (Base::R, [Opnd::X(rd), Opnd::X(a), Opnd::X(b), E(m)]) if op == Op::Add && let Some((Modifier::TprelAdd, sym)) = m.modifier() => {
                self.emit_fix(i.x(rd.0, a.0, b.0), Fix::Reloc(elf::R_RISCV_TPREL_ADD), sym.clone())?;
            }
            // GNU 的写法：R 型助记符带立即数 ⇒ 对应的 I 型
            (Base::R, [Opnd::X(rd), Opnd::X(rs), E(e)]) => {
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
            (Base::Fence, [E(p), E(s)]) => self.emit(i.with_imm(Self::fence_set(p)? << 4 | Self::fence_set(s)?))?,
            (Base::Fixed, []) => self.emit(i)?,
            (Base::Sfence, []) => self.emit(i)?,
            (Base::Sfence, [Opnd::X(a)]) => self.emit(i.x(0, a.0, 0))?,
            (Base::Sfence, [Opnd::X(a), Opnd::X(b)]) => self.emit(i.x(0, a.0, b.0))?,
            _ => return Err(bad()),
        }
        Ok(())
    }

    /// `.insn`：原始字（`.insn 值` / `.insn 长度, 值`）或按格式拼（`.insn r|r4|i|s|b|sb|u|j|uj opcode, …`）。
    pub(super) fn insn(&mut self, rest: &str) -> Result<(), Error> {
        let (kind, args) = rest.split_once(char::is_whitespace).unwrap_or((rest, ""));
        if matches!(kind, "cr" | "ci" | "ciw" | "css" | "cl" | "cs" | "ca" | "cb" | "cj") {
            return self.insn_c(kind, args);
        }
        if !matches!(kind, "r" | "r4" | "i" | "s" | "b" | "sb" | "u" | "j" | "uj") {
            let line = Toks::try_from(rest)?;
            let a = line.commas();
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
        let line = Toks::try_from(args)?;
        let toks = line.commas();
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
                self.note(Fix::Branch, Self::jump_target(t));
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
                    self.note(Fix::Jal, Self::jump_target(e));
                    self.word(w)
                }
            }
            _ => unreachable!(),
        }
    }

    /// `.insn` 的跳转目标：常数 = 偏移（RV32 下按 32 位补码）。
    fn jump_target(e: Expr) -> Expr {
        match e {
            Expr::Num(k) if k >= 1 << 31 && k < 1 << 32 => Expr::Num(k - (1 << 32)),
            e => e,
        }
    }

    /// `.insn` 的立即数位段：能算就填，算不了（`%lo(sym)`）记修补点。
    fn imm_word(&mut self, w: u32, e: &Expr, plain: Fix) -> Result<(), Error> {
        let form = match plain {
            Fix::Store12 => Base::Store,
            Fix::U20 => Base::U,
            _ => Base::Imm,
        };
        match self.folded(e).map(|k| Self::rv32(form, k)) {
            Some(k) if form.fits(k) => self.word(w | form.scatter(i32::try_from(k).unwrap_or_default())),
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

    /// `.insn` 的压缩格式（同 LLVM 的 DirectiveInsnC*）：`cr opcode, funct4, rd, rs2` · `ci opcode, funct3, rd, simm6` ·
    /// `ciw opcode, funct3, rd', uimm8` · `css opcode, funct3, rs2, uimm6` · `cl opcode, funct3, rd', uimm5(rs1')` ·
    /// `cs opcode, funct3, rs2', uimm5(rs1')` · `ca opcode, funct6, funct2, rd', rs2'` · `cb opcode, funct3, rs1', 目标` ·
    /// `cj opcode, funct3, 目标`。立即数按原样放进各自的位段（cb / cj 的是偏移，散布同 c.beqz / c.j）；`'` = x8..x15 / f8..f15。
    fn insn_c(&mut self, kind: &str, args: &str) -> Result<(), Error> {
        let line = Toks::try_from(args)?;
        let ops = line.commas();
        let (op, rest) = ops.split_first().ok_or_else(|| Error::Syntax(format!(".insn {kind} 的操作数不够")))?;
        let opcode = match op.tokens() {
            [Tok::Ident(n)] if let Some(k) = ["C0", "C1", "C2"].iter().position(|c| c == n) => k as u16,
            _ => u16::try_from(self.constant_arg(Some(op), "opcode")? & 3).unwrap_or_default(),
        };
        let ops = rest.iter().map(|t| self.operand(t.clone())).collect::<Result<Vec<_>, _>>()?;
        let bad = || Error::Syntax(format!(".insn {kind} 的操作数：{ops:?}"));
        let k = |me: &Self, o: &Opnd| -> Result<u16, Error> {
            match o {
                Opnd::E(e) => Ok(me.eval(e, 0)?.constant().map_or(0, |v| v as u16)),
                _ => Err(bad()),
            }
        };
        let reg = |o: &Opnd| match o {
            Opnd::X(r) => Ok(u16::from(r.0)),
            Opnd::F(r) => Ok(u16::from(r.0)),
            _ => Err(bad()),
        };
        let creg = |o: &Opnd| reg(o).and_then(|r| if (8..16).contains(&r) { Ok(r - 8) } else { Err(Error::Syntax(format!(".insn {kind} 的寄存器要是 x8..x15 / f8..f15"))) });
        let mem = |me: &Self, o: &Opnd| match o {
            Opnd::M(e, b) => Ok((me.eval(e, 0)?.constant().map_or(0, |v| v as u16), u16::from(b.0))),
            _ => Err(bad()),
        };
        let h = match (kind, ops.as_slice()) {
            ("cr", [f4, rd, rs2]) => (k(self, f4)? & 0xf) << 12 | reg(rd)? << 7 | reg(rs2)? << 2,
            ("ci", [f3, rd, i]) => {
                let v = k(self, i)?;
                (k(self, f3)? & 7) << 13 | (v >> 5 & 1) << 12 | reg(rd)? << 7 | (v & 0x1f) << 2
            }
            ("ciw", [f3, rd, i]) => (k(self, f3)? & 7) << 13 | (k(self, i)? & 0xff) << 5 | creg(rd)? << 2,
            ("css", [f3, rs2, i]) => (k(self, f3)? & 7) << 13 | (k(self, i)? & 0x3f) << 7 | reg(rs2)? << 2,
            ("cl" | "cs", [f3, r, m]) => {
                let (v, b) = mem(self, m)?;
                let b = if (8..16).contains(&b) { b - 8 } else { return Err(bad()) };
                (k(self, f3)? & 7) << 13 | (v >> 2 & 7) << 10 | b << 7 | (v & 3) << 5 | creg(r)? << 2
            }
            ("ca", [f6, f2, rd, rs2]) => (k(self, f6)? & 0x3f) << 10 | creg(rd)? << 7 | (k(self, f2)? & 3) << 5 | creg(rs2)? << 2,
            ("cb" | "cj", [f3, rest @ ..]) => {
                let (rs1, t) = match (kind, rest) {
                    ("cb", [r, Opnd::E(t)]) => (creg(r)? << 7, t),
                    ("cj", [Opnd::E(t)]) => (0, t),
                    _ => return Err(bad()),
                };
                let w = (k(self, f3)? & 7) << 13 | rs1 | opcode;
                let fix = if kind == "cb" { Fix::RvcBranch } else { Fix::RvcJump };
                // 常数目标 = 偏移（按 32 位补码）；符号 ⇒ 修补点
                return match self.folded(t) {
                    Some(d) => {
                        let d = Self::rv32(Base::Branch, d);
                        let bits = if kind == "cb" { crate::feature::Compressed::branch_bits(d) } else { crate::feature::Compressed::jump_bits(d) };
                        self.bytes(&(w | bits.ok_or_else(|| Error::Syntax(format!(".insn {kind} 的偏移 {d} 放不下")))?).to_le_bytes())
                    }
                    None => {
                        self.note(fix, t.clone());
                        self.bytes(&w.to_le_bytes())
                    }
                };
            }
            _ => return Err(bad()),
        };
        self.bytes(&(h | opcode).to_le_bytes())
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
            // 开着松弛时常数上的也出重定位（0 号符号 + 常数，同 llvm-mc）
            Some((Modifier::Lo | Modifier::Hi, inner)) if !self.mode.relax && self.eval(inner, 0)?.constant().is_some() => None,
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
            Fix::Store12 => Base::Store,
            Fix::Shamt => Base::Shift,
            Fix::U20 => Base::U,
            _ => Base::Imm,
        };
        match self.eval(e, 0)?.constant().map(|k| Self::rv32(form, k)) {
            Some(k) if form.fits(k) => self.emit_imm(i.with_imm(i32::try_from(k).unwrap_or_default()), e),
            Some(k) => Err(Error::Syntax(format!("立即数 {k} 超出范围"))),
            None => self.emit_fix(i, plain, e.clone()),
        }
    }

    /// RV32 的有符号立即数：`[2³¹, 2³²)` 当 32 位补码（同 llvm-mc 的 fixImmediateForRV32）。
    pub(super) const fn rv32(form: Base, k: i64) -> i64 {
        match form {
            Base::U | Base::Shift => k,
            _ if k >= 1 << 31 && k < 1 << 32 => k - (1 << 32),
            _ => k,
        }
    }

    /// 条件分支：常数目标 ⇒ 就是偏移，现在就编（能压就压）；`.option exact` ⇒ 原样一条；目标本文件解析得了 ⇒ 长度留到布局（[`super::layout`]）；
    /// 解析不了 ⇒ 现在就出长形式「反向分支跳过 + jal」（同 llvm-mc 把解析不了的放宽；反向的那条能压就压）。
    fn branch(&mut self, op: Op, a: u8, b: u8, t: &Expr) -> Result<(), Error> {
        use super::layout::Flow;
        if let Some(k) = self.folded(t) {
            return self.constant_target(Inst::new(op).x(0, a, b), Base::Branch, k);
        }
        if self.mode.exact {
            return self.emit_fix(Inst::new(op).x(0, a, b), Fix::Branch, t.clone());
        }
        if self.resolvable(t) {
            // 目标是裸符号才从 16 位起（同 LLVM 的 isBareSymbolRef：`.L+16` 一类不压）
            return self.flow(Flow::Branch(op, a, b), t, matches!(t, Expr::Sym(_)));
        }
        self.long_branch(op, a, b, t)
    }

    /// 跳转的常数目标 = 偏移（同 llvm-mc：`jal 2046`、`beq a0, a1, 102`；按 RV32 的补码读）：不是修补点、⛔ 放宽，
    /// 放不下就报错；能压就压。
    fn constant_target(&mut self, i: Inst, form: Base, k: i64) -> Result<(), Error> {
        let k = Self::rv32(form, k);
        if !form.fits(k) {
            return Err(Error::Syntax(format!("跳转距离 {k} 超出 {form:?} 的范围")));
        }
        self.emit(i.with_imm(i32::try_from(k).unwrap_or_default()))
    }

    /// 长形式「反向分支跳过 + jal」（反向的能压成 16 位 ⇒ 跳过 6 字节，否则 8）。
    fn long_branch(&mut self, op: Op, a: u8, b: u8, t: &Expr) -> Result<(), Error> {
        let inverse = op.inverted().expect("条件分支");
        let short = crate::feature::Compressed::compress(u32::from(Inst::new(inverse).x(0, a, b).with_imm(6))).filter(|_| self.mode.rvc);
        match short {
            Some(h) => self.bytes(&h.to_le_bytes())?,
            None => self.emit_wide(Inst::new(inverse).x(0, a, b).with_imm(8))?,
        }
        self.emit_fix(Inst::new(Op::Jal), Fix::Jal, t.clone())
    }

    /// `jal rd, 目标`：rd 是 x0 / ra、目标本文件解析得了、开着 rvc ⇒ 长度留到布局（可能是 c.j / c.jal）。
    fn jump(&mut self, rd: u8, t: &Expr) -> Result<(), Error> {
        if let Some(k) = self.folded(t) {
            return self.constant_target(Inst::new(Op::Jal).x(rd, 0, 0), Base::J, k);
        }
        if self.mode.rvc && !self.mode.exact && matches!(rd, 0 | 1) && matches!(t, Expr::Sym(_)) && self.resolvable(t) {
            return self.flow(super::layout::Flow::Jump(rd), t, true);
        }
        self.emit_fix(Inst::new(Op::Jal).x(rd, 0, 0), Fix::Jal, t.clone())
    }

    /// 显式的 `c.j` / `c.jal` / `c.beqz` / `c.bnez` 跳到符号：exact ⇒ 原样 16 位；本文件解析得了 ⇒ 布局（从 16 位起）；
    /// 解析不了 ⇒ 同 llvm-mc 放宽（`c.j` ⇒ jal，`c.beqz` ⇒ 长形式）。
    fn compressed_flow(&mut self, flow: super::layout::Flow, t: &Expr) -> Result<(), Error> {
        use super::layout::Flow;
        if self.mode.exact {
            let (w, fix) = match flow {
                Flow::Branch(op, a, b) => (u32::from(Inst::new(op).x(0, a, b)), Fix::RvcBranch),
                Flow::Jump(rd) => (u32::from(Inst::new(Op::Jal).x(rd, 0, 0)), Fix::RvcJump),
            };
            let h = crate::feature::Compressed::compress(w).ok_or_else(|| Error::Syntax(String::from("寄存器放不进压缩格式")))?;
            self.note(fix, t.clone());
            return self.bytes(&h.to_le_bytes());
        }
        if self.resolvable(t) {
            return self.flow(flow, t, true);
        }
        match flow {
            Flow::Branch(op, a, b) => self.long_branch(op, a, b, t),
            Flow::Jump(rd) => self.emit_fix(Inst::new(Op::Jal).x(rd, 0, 0), Fix::Jal, t.clone()),
        }
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
            Some((Modifier::Lo, inner)) if self.mode.relax || self.eval(inner, 0)?.constant().is_none() => return self.emit_fix(Inst::new(Op::Addi).x(rd.0, 0, 0), Fix::Lo12I, inner.clone()),
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
            return self.emit_imm(Inst::new(Op::Addi).x(rd.0, 0, 0).with_imm(lo), e);
        }
        // 同 RISCVMatInt：本要 lui + addi、又是偶数、去掉尾零后放得进 6 位 ⇒ `li` 小数 + `slli`（更好压缩）
        if lo != 0 && v & 1 == 0 {
            let tz = v.trailing_zeros();
            let shifted = v >> tz;
            if (-32..32).contains(&shifted) {
                self.emit_imm(Inst::new(Op::Addi).x(rd.0, 0, 0).with_imm(shifted), e)?;
                return self.emit_imm(Inst::new(Op::Slli).x(rd.0, rd.0, 0).with_imm(i32::try_from(tz).unwrap_or_default()), e);
            }
        }
        self.emit_imm(Inst::new(Op::Lui).x(rd.0, 0, 0).with_imm(hi), e)?;
        if lo != 0 {
            self.emit_imm(Inst::new(Op::Addi).x(rd.0, rd.0, 0).with_imm(lo), e)?;
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
        self.note(Fix::Call, t.clone());
        self.emit_wide(Inst::new(Op::Auipc).x(base, 0, 0))?;
        self.emit_wide(Inst::new(Op::Jalr).x(link, base, 0))
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
