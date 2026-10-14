//! 重定位名 ⇒ 编号（`.reloc` 用）：`R_RISCV_*`、厂商的非标准名、`R_RISCV_CUSTOMn`、`BFD_RELOC_*`。
use object::elf;

/// 一种重定位（`r_type`）。
pub struct RType(pub u32);

/// `名字 编号` ⇒ 查表。
macro_rules! names {
    ($($name:literal $v:expr,)*) => {
        impl RType {
            fn table(name: &str) -> Option<u32> {
                match name { $($name => Some($v),)* _ => None }
            }
        }
    };
}

names! {
    "R_RISCV_NONE" elf::R_RISCV_NONE,
    "R_RISCV_32" elf::R_RISCV_32,
    "R_RISCV_64" elf::R_RISCV_64,
    "R_RISCV_RELATIVE" elf::R_RISCV_RELATIVE,
    "R_RISCV_COPY" elf::R_RISCV_COPY,
    "R_RISCV_JUMP_SLOT" elf::R_RISCV_JUMP_SLOT,
    "R_RISCV_TLS_DTPMOD32" elf::R_RISCV_TLS_DTPMOD32,
    "R_RISCV_TLS_DTPMOD64" elf::R_RISCV_TLS_DTPMOD64,
    "R_RISCV_TLS_DTPREL32" elf::R_RISCV_TLS_DTPREL32,
    "R_RISCV_TLS_DTPREL64" elf::R_RISCV_TLS_DTPREL64,
    "R_RISCV_TLS_TPREL32" elf::R_RISCV_TLS_TPREL32,
    "R_RISCV_TLS_TPREL64" elf::R_RISCV_TLS_TPREL64,
    "R_RISCV_TLSDESC" 12,
    "R_RISCV_BRANCH" elf::R_RISCV_BRANCH,
    "R_RISCV_JAL" elf::R_RISCV_JAL,
    "R_RISCV_CALL" elf::R_RISCV_CALL,
    "R_RISCV_CALL_PLT" elf::R_RISCV_CALL_PLT,
    "R_RISCV_GOT_HI20" elf::R_RISCV_GOT_HI20,
    "R_RISCV_TLS_GOT_HI20" elf::R_RISCV_TLS_GOT_HI20,
    "R_RISCV_TLS_GD_HI20" elf::R_RISCV_TLS_GD_HI20,
    "R_RISCV_PCREL_HI20" elf::R_RISCV_PCREL_HI20,
    "R_RISCV_PCREL_LO12_I" elf::R_RISCV_PCREL_LO12_I,
    "R_RISCV_PCREL_LO12_S" elf::R_RISCV_PCREL_LO12_S,
    "R_RISCV_HI20" elf::R_RISCV_HI20,
    "R_RISCV_LO12_I" elf::R_RISCV_LO12_I,
    "R_RISCV_LO12_S" elf::R_RISCV_LO12_S,
    "R_RISCV_TPREL_HI20" elf::R_RISCV_TPREL_HI20,
    "R_RISCV_TPREL_LO12_I" elf::R_RISCV_TPREL_LO12_I,
    "R_RISCV_TPREL_LO12_S" elf::R_RISCV_TPREL_LO12_S,
    "R_RISCV_TPREL_ADD" elf::R_RISCV_TPREL_ADD,
    "R_RISCV_ADD8" elf::R_RISCV_ADD8,
    "R_RISCV_ADD16" elf::R_RISCV_ADD16,
    "R_RISCV_ADD32" elf::R_RISCV_ADD32,
    "R_RISCV_ADD64" elf::R_RISCV_ADD64,
    "R_RISCV_SUB8" elf::R_RISCV_SUB8,
    "R_RISCV_SUB16" elf::R_RISCV_SUB16,
    "R_RISCV_SUB32" elf::R_RISCV_SUB32,
    "R_RISCV_SUB64" elf::R_RISCV_SUB64,
    "R_RISCV_GOT32_PCREL" elf::R_RISCV_GOT32_PCREL,
    "R_RISCV_ALIGN" elf::R_RISCV_ALIGN,
    "R_RISCV_RVC_BRANCH" elf::R_RISCV_RVC_BRANCH,
    "R_RISCV_RVC_JUMP" elf::R_RISCV_RVC_JUMP,
    "R_RISCV_RELAX" elf::R_RISCV_RELAX,
    "R_RISCV_SUB6" elf::R_RISCV_SUB6,
    "R_RISCV_SET6" elf::R_RISCV_SET6,
    "R_RISCV_SET8" elf::R_RISCV_SET8,
    "R_RISCV_SET16" elf::R_RISCV_SET16,
    "R_RISCV_SET32" elf::R_RISCV_SET32,
    "R_RISCV_32_PCREL" elf::R_RISCV_32_PCREL,
    "R_RISCV_IRELATIVE" elf::R_RISCV_IRELATIVE,
    "R_RISCV_PLT32" elf::R_RISCV_PLT32,
    "R_RISCV_SET_ULEB128" elf::R_RISCV_SET_ULEB128,
    "R_RISCV_SUB_ULEB128" elf::R_RISCV_SUB_ULEB128,
    "R_RISCV_TLSDESC_HI20" elf::R_RISCV_TLSDESC_HI20,
    "R_RISCV_TLSDESC_LOAD_LO12" elf::R_RISCV_TLSDESC_LOAD_LO12,
    "R_RISCV_TLSDESC_ADD_LO12" elf::R_RISCV_TLSDESC_ADD_LO12,
    "R_RISCV_TLSDESC_CALL" elf::R_RISCV_TLSDESC_CALL,
    "R_RISCV_VENDOR" 191,
    // 厂商的非标准名（RISCV_nonstandard.def），编号与 CUSTOMn 共用
    "R_RISCV_QC_ABS20_U" 192,
    "R_RISCV_QC_E_BRANCH" 193,
    "R_RISCV_QC_E_32" 194,
    "R_RISCV_QC_E_CALL_PLT" 195,
    "R_RISCV_NDS_BRANCH_10" 241,
    "R_RISCV_CHERIOT1_COMPARTMENT_HI" 220,
    "R_RISCV_CHERIOT1_COMPARTMENT_LO_I" 221,
    "R_RISCV_CHERIOT1_COMPARTMENT_LO_S" 222,
    "R_RISCV_CHERIOT1_COMPARTMENT_SIZE" 223,
    "BFD_RELOC_NONE" elf::R_RISCV_NONE,
    "BFD_RELOC_32" elf::R_RISCV_32,
    "BFD_RELOC_64" elf::R_RISCV_64,
}

impl TryFrom<&str> for RType {
    type Error = ();

    /// 名字 ⇒ 编号；`R_RISCV_CUSTOM192` ~ `R_RISCV_CUSTOM255` 按数。
    fn try_from(name: &str) -> Result<Self, ()> {
        Self::table(name).or_else(|| name.strip_prefix("R_RISCV_CUSTOM")?.parse().ok().filter(|n| (192..=255).contains(n))).map(Self).ok_or(())
    }
}
