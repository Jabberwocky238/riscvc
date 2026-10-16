//! RISC-V 重定位（静态可执行）。松弛在这之前（relax.rs）做完：这里的 `R_RISCV_RELAX` / `R_RISCV_ALIGN` 只是空操作。
use super::{Error, Linker};
use crate::isa::Base;
use object::elf;

impl Linker {
    pub(super) fn relocate(&mut self) -> Result<(), Error> {
        for o in 0..self.objs.len() {
            for i in 0..self.objs[o].sections.len() {
                let Some(Some((out, base))) = self.placed.get(&(o, i)).copied() else { continue };
                let Some(sec) = &self.objs[o].sections[i] else { continue };
                if self.outs.get(out).is_none_or(|s| s.ty == elf::SHT_NOBITS) {
                    continue;
                }
                for r in sec.relocs.clone() {
                    // 松弛提示（`R_RISCV_RELAX` / `R_RISCV_ALIGN`，带的是 0 号空符号）与 NONE：⛔ 不做松弛，空操作（同 lld --no-relax）
                    if matches!(r.r_type, elf::R_RISCV_NONE | elf::R_RISCV_RELAX | elf::R_RISCV_ALIGN) {
                        continue;
                    }
                    let p = base + r.offset;
                    let at = usize::try_from(p - self.outs[out].addr).unwrap_or_default();
                    let target = self.target_at(o, r.sym, r.addend)?;
                    let s = target.unwrap_or(0);
                    let v = s.wrapping_add_signed(r.addend);
                    // 未定义符号的跳转 / 调用同 lld：跳到自己（死循环，⛔ 不溢出）
                    let jump = matches!(r.r_type, elf::R_RISCV_BRANCH | elf::R_RISCV_JAL | elf::R_RISCV_RVC_BRANCH | elf::R_RISCV_RVC_JUMP | elf::R_RISCV_CALL | elf::R_RISCV_CALL_PLT | elf::R_RISCV_PLT32);
                    let pc = if target.is_none() && jump { r.addend } else { v.wrapping_sub(p).cast_signed() };
                    let data = &mut self.outs[out].data;
                    let range = |bits: u32, x: i64| -> Result<(), Error> {
                        if x < -(1 << (bits - 1)) || x >= 1 << (bits - 1) {
                            let name = &self.objs[o].syms[r.sym].name;
                            return Err(Error::Link(format!("{}：{} 处到 `{name}` 的距离 {x} 超出 {bits} 位（类型 {}）", self.objs[o].name, sec.name, r.r_type)));
                        }
                        Ok(())
                    };
                    match r.r_type {
                        elf::R_RISCV_NONE | elf::R_RISCV_RELAX | elf::R_RISCV_ALIGN => {}
                        elf::R_RISCV_32 => Self::put(data, at, 4, v),
                        elf::R_RISCV_64 => Self::put(data, at, 8, v),
                        elf::R_RISCV_32_PCREL | elf::R_RISCV_PLT32 => Self::put(data, at, 4, pc.cast_unsigned()),
                        elf::R_RISCV_HI20 => Self::field(data, at, Base::U, Self::hi20(v.cast_signed())),
                        elf::R_RISCV_LO12_I => Self::field(data, at, Base::Imm, Self::lo12(v.cast_signed())),
                        elf::R_RISCV_LO12_S => Self::field(data, at, Base::Store, Self::lo12(v.cast_signed())),
                        // 松弛后：lui 删了，lo12 改用 x0（rs1 清 0）
                        super::relax::X0REL_I | super::relax::X0REL_S => {
                            let w = Self::get(data, at, 4) & !(31 << 15);
                            Self::put(data, at, 4, w);
                            let form = if r.r_type == super::relax::X0REL_I { Base::Imm } else { Base::Store };
                            Self::field(data, at, form, Self::lo12(v.cast_signed()));
                        }
                        elf::R_RISCV_PCREL_HI20 => {
                            range(32, pc)?;
                            Self::field(data, at, Base::U, Self::hi20(pc));
                        }
                        elf::R_RISCV_PCREL_LO12_I | elf::R_RISCV_PCREL_LO12_S => {
                            // 符号是 auipc 那条的标号：取那里的 PCREL_HI20 的目标
                            let hi_at = s - base;
                            let hi = sec
                                .relocs
                                .iter()
                                .find(|h| h.offset == hi_at && h.r_type == elf::R_RISCV_PCREL_HI20)
                                .ok_or_else(|| Error::Link(format!("{}：{} 的 %pcrel_lo 在 {hi_at:#x} 处找不到 %pcrel_hi", self.objs[o].name, sec.name)))?;
                            let target = self.target_at(o, hi.sym, hi.addend)?.unwrap_or(0).wrapping_add_signed(hi.addend);
                            let d = target.wrapping_sub(s).cast_signed();
                            let form = if r.r_type == elf::R_RISCV_PCREL_LO12_I { Base::Imm } else { Base::Store };
                            let data = &mut self.outs[out].data;
                            Self::field(data, at, form, Self::lo12(d));
                        }
                        elf::R_RISCV_BRANCH => {
                            range(13, pc)?;
                            Self::field(data, at, Base::Branch, pc as i32);
                        }
                        elf::R_RISCV_JAL => {
                            range(21, pc)?;
                            Self::field(data, at, Base::J, pc as i32);
                        }
                        // 压缩的跳转：16 位里清掉偏移的位再填（同 lld）
                        elf::R_RISCV_RVC_BRANCH | elf::R_RISCV_RVC_JUMP => {
                            let branch = r.r_type == elf::R_RISCV_RVC_BRANCH;
                            range(if branch { 9 } else { 12 }, pc)?;
                            let bits = if branch { crate::feature::Compressed::branch_bits(pc) } else { crate::feature::Compressed::jump_bits(pc) };
                            let bits = bits.ok_or_else(|| Error::Link(format!("{}：{} 处的压缩跳转距离 {pc} 不是偶数", self.objs[o].name, sec.name)))?;
                            let h = u16::try_from(Self::get(data, at, 2)).unwrap_or_default() & if branch { 0xe383 } else { 0xe003 };
                            Self::put(data, at, 2, u64::from(h | bits));
                        }
                        elf::R_RISCV_CALL | elf::R_RISCV_CALL_PLT => {
                            range(32, pc)?;
                            Self::field(data, at, Base::U, Self::hi20(pc));
                            Self::field(data, at + 4, Base::Imm, Self::lo12(pc));
                        }
                        elf::R_RISCV_ADD8 | elf::R_RISCV_ADD16 | elf::R_RISCV_ADD32 | elf::R_RISCV_ADD64 | elf::R_RISCV_SUB8 | elf::R_RISCV_SUB16 | elf::R_RISCV_SUB32 | elf::R_RISCV_SUB64 => {
                            let n = match r.r_type {
                                elf::R_RISCV_ADD8 | elf::R_RISCV_SUB8 => 1,
                                elf::R_RISCV_ADD16 | elf::R_RISCV_SUB16 => 2,
                                elf::R_RISCV_ADD32 | elf::R_RISCV_SUB32 => 4,
                                _ => 8,
                            };
                            let old = Self::get(data, at, n);
                            let add = matches!(r.r_type, elf::R_RISCV_ADD8 | elf::R_RISCV_ADD16 | elf::R_RISCV_ADD32 | elf::R_RISCV_ADD64);
                            Self::put(data, at, n, if add { old.wrapping_add(v) } else { old.wrapping_sub(v) });
                        }
                        elf::R_RISCV_SUB6 => data[at] = (data[at] & 0xc0) | (data[at].wrapping_sub(u8::try_from(v & 0x3f).unwrap_or_default()) & 0x3f),
                        elf::R_RISCV_SET6 => data[at] = (data[at] & 0xc0) | u8::try_from(v & 0x3f).unwrap_or_default(),
                        elf::R_RISCV_SET8 => Self::put(data, at, 1, v),
                        elf::R_RISCV_SET16 => Self::put(data, at, 2, v),
                        elf::R_RISCV_SET32 => Self::put(data, at, 4, v),
                        t => return Err(Error::Link(format!("{}：{} 里不支持的重定位类型 {t}", self.objs[o].name, sec.name))),
                    }
                }
            }
        }
        Ok(())
    }

    fn hi20(v: i64) -> i32 {
        ((v as i32).wrapping_add(0x800)) >> 12
    }

    fn lo12(v: i64) -> i32 {
        ((v as i32) << 20) >> 20
    }

    /// 改写 `at` 处那条指令的立即数位段（先清再填）。
    fn field(data: &mut [u8], at: usize, form: Base, imm: i32) {
        let mask = match form {
            Base::U | Base::J => 0xffff_f000,
            Base::Imm => 0xfff0_0000,
            _ => 0xfe00_0f80,
        };
        let w = u32::from_le_bytes(data[at..at + 4].try_into().expect("4 字节"));
        let w = (w & !mask) | form.scatter(imm);
        data[at..at + 4].copy_from_slice(&w.to_le_bytes());
    }

    fn get(data: &[u8], at: usize, n: usize) -> u64 {
        let mut b = [0u8; 8];
        b[..n].copy_from_slice(&data[at..at + n]);
        u64::from_le_bytes(b)
    }

    fn put(data: &mut [u8], at: usize, n: usize, v: u64) {
        data[at..at + n].copy_from_slice(&v.to_le_bytes()[..n]);
    }
}
