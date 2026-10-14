//! RV32I（与特权指令）：基础指令表，`#[derive(Isa)]` 生成；语义在解释器核心（`src/sim`）。
use super::{Inst, Style};
use crate::macros::Isa;
use core::fmt::Write;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "i", alias = alias)]
pub enum Rv32i {
    #[isa("lui", U, 0x37)]
    Lui,
    #[isa("auipc", U, 0x17)]
    Auipc,
    #[isa("jal", J, 0x6f)]
    Jal,
    #[isa("jalr", Jalr, 0x67)]
    Jalr,
    #[isa("beq", Branch, 0x63)]
    Beq,
    #[isa("bne", Branch, 0x1063)]
    Bne,
    #[isa("blt", Branch, 0x4063)]
    Blt,
    #[isa("bge", Branch, 0x5063)]
    Bge,
    #[isa("bltu", Branch, 0x6063)]
    Bltu,
    #[isa("bgeu", Branch, 0x7063)]
    Bgeu,
    #[isa("lb", Load, 0x03)]
    Lb,
    #[isa("lh", Load, 0x1003)]
    Lh,
    #[isa("lw", Load, 0x2003)]
    Lw,
    #[isa("lbu", Load, 0x4003)]
    Lbu,
    #[isa("lhu", Load, 0x5003)]
    Lhu,
    #[isa("sb", Store, 0x23)]
    Sb,
    #[isa("sh", Store, 0x1023)]
    Sh,
    #[isa("sw", Store, 0x2023)]
    Sw,
    #[isa("addi", Imm, 0x13)]
    Addi,
    #[isa("slti", Imm, 0x2013)]
    Slti,
    #[isa("sltiu", Imm, 0x3013)]
    Sltiu,
    #[isa("xori", Imm, 0x4013)]
    Xori,
    #[isa("ori", Imm, 0x6013)]
    Ori,
    #[isa("andi", Imm, 0x7013)]
    Andi,
    #[isa("slli", Shift, 0x1013)]
    Slli,
    #[isa("srli", Shift, 0x5013)]
    Srli,
    #[isa("srai", Shift, 0x4000_5013)]
    Srai,
    #[isa("add", R, 0x33)]
    Add,
    #[isa("sub", R, 0x4000_0033)]
    Sub,
    #[isa("sll", R, 0x1033)]
    Sll,
    #[isa("slt", R, 0x2033)]
    Slt,
    #[isa("sltu", R, 0x3033)]
    Sltu,
    #[isa("xor", R, 0x4033)]
    Xor,
    #[isa("srl", R, 0x5033)]
    Srl,
    #[isa("sra", R, 0x4000_5033)]
    Sra,
    #[isa("or", R, 0x6033)]
    Or,
    #[isa("and", R, 0x7033)]
    And,
    #[isa("fence", Fence, 0x0f)]
    Fence,
    #[isa("fence.tso", Fixed, 0x8330_000f)]
    FenceTso,
    #[isa("fence.i", Fixed, 0x100f)]
    FenceI,
    #[isa("ecall", Fixed, 0x73)]
    Ecall,
    #[isa("ebreak", Fixed, 0x0010_0073)]
    Ebreak,
    #[isa("mret", Fixed, 0x3020_0073)]
    Mret,
    #[isa("sret", Fixed, 0x1020_0073)]
    Sret,
    #[isa("wfi", Fixed, 0x1050_0073)]
    Wfi,
    #[isa("dret", Fixed, 0x7b20_0073)]
    Dret,
    #[isa("sfence.vma", Sfence, 0x1200_0073)]
    SfenceVma,
}

/// RV32I 的打印别名（LLVM `InstAlias` 里 EmitPriority ≠ 0 的那些）。
fn alias(i: &Inst<Rv32i>, pc: u64, s: Style) -> Option<(String, String)> {
    let x = |r| s.x(r);
    let (rd, rs1, rs2, imm) = (i.rd, i.rs1, i.rs2, i.imm);
    let mut out = String::new();
    let name = match (i.op, rd, rs1, rs2, imm) {
        (Rv32i::Addi, 0, 0, _, 0) => "nop",
        (Rv32i::Addi, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rd), s.imm(imm));
            "li"
        }
        (Rv32i::Addi, _, _, _, 0) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "mv"
        }
        (Rv32i::Xori, _, _, _, -1) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "not"
        }
        (Rv32i::Sub, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs2));
            "neg"
        }
        (Rv32i::Sltiu, _, _, _, 1) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "seqz"
        }
        (Rv32i::Sltu, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs2));
            "snez"
        }
        (Rv32i::Slt, _, _, 0, _) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "sltz"
        }
        (Rv32i::Slt, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs2));
            "sgtz"
        }
        // ⚠ 两个源都是 zero 时 LLVM 的取舍：`bge` 印 `blez`，`blt` 印 `bltz`
        (Rv32i::Bge, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rs2), s.target(pc, imm));
            "blez"
        }
        (Rv32i::Beq | Rv32i::Bne | Rv32i::Bge | Rv32i::Blt, _, _, 0, _) => {
            let _ = write!(out, "{}, {}", x(rs1), s.target(pc, imm));
            match i.op {
                Rv32i::Beq => "beqz",
                Rv32i::Bne => "bnez",
                Rv32i::Bge => "bgez",
                _ => "bltz",
            }
        }
        (Rv32i::Blt, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rs2), s.target(pc, imm));
            "bgtz"
        }
        (Rv32i::Jal, 0, ..) => {
            out = s.target(pc, imm);
            "j"
        }
        (Rv32i::Jal, 1, ..) => {
            out = s.target(pc, imm);
            "jal"
        }
        (Rv32i::Jalr, 0, 1, _, 0) => "ret",
        (Rv32i::Jalr, 0 | 1, ..) => {
            out = if imm == 0 { x(rs1) } else { format!("{}({})", s.imm(imm), x(rs1)) };
            if rd == 0 { "jr" } else { "jalr" }
        }
        (Rv32i::Jalr, _, _, _, 0) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "jalr"
        }
        (Rv32i::Andi, _, _, _, 0xff) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "zext.b"
        }
        (Rv32i::Fence, _, _, _, 0xff) => "fence",
        (Rv32i::SfenceVma, _, 0, 0, _) => "sfence.vma",
        (Rv32i::SfenceVma, _, _, 0, _) => {
            out = x(rs1);
            "sfence.vma"
        }
        _ => return None,
    };
    Some((String::from(name), out))
}

