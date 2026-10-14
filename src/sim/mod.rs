//! RV32IMF + Zicsr 解释器：装 ELF、设寄存器、跑到返回。给代码生成做对拍用（同一份输入，两份编译产物比结果）。
//!
//! 浮点：舍入只做 RNE（`frm` 恒 0，`fcvt` 的 rtz 单独处理）；NaN 结果规范化成 `0x7fc00000`（同硬件）。
use crate::isa::{Inst, Op, Rm};
use std::collections::HashMap;

/// 停下的原因。
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Stop {
    /// 回到了返回地址。
    Returned,
    /// `unimp` / `ebreak` / `ecall` / 译不出的字。
    Trap(u32),
    /// 步数用完（死循环、跳到未定义函数的自己）。
    Limit,
}

/// 稀疏内存（4 KiB 一页，按需分配，未写过的读出 0）。
#[derive(Default, Clone)]
pub struct Memory {
    pages: HashMap<u32, Vec<u8>>,
}

impl Memory {
    /// 按页分段读（未写过的页读出 0）。
    pub fn read(&self, addr: u32, out: &mut [u8]) {
        let mut done = 0;
        while done < out.len() {
            let a = addr.wrapping_add(u32::try_from(done).unwrap_or(0));
            let at = (a & 0xfff) as usize;
            let n = (4096 - at).min(out.len() - done);
            match self.pages.get(&(a >> 12)) {
                Some(p) => out[done..done + n].copy_from_slice(&p[at..at + n]),
                None => out[done..done + n].fill(0),
            }
            done += n;
        }
    }

    pub fn write(&mut self, addr: u32, data: &[u8]) {
        let mut done = 0;
        while done < data.len() {
            let a = addr.wrapping_add(u32::try_from(done).unwrap_or(0));
            let at = (a & 0xfff) as usize;
            let n = (4096 - at).min(data.len() - done);
            self.pages.entry(a >> 12).or_insert_with(|| vec![0; 4096])[at..at + n].copy_from_slice(&data[done..done + n]);
            done += n;
        }
    }

    #[must_use]
    pub fn u32(&self, addr: u32) -> u32 {
        let mut b = [0; 4];
        self.read(addr, &mut b);
        u32::from_le_bytes(b)
    }
}

/// 处理器状态。
#[derive(Clone, Default)]
pub struct Cpu {
    pub x: [u32; 32],
    /// 浮点寄存器的位型。
    pub f: [u32; 32],
    pub pc: u32,
    pub mem: Memory,
    pub csr: HashMap<u16, u32>,
    pub steps: u64,
}

const NAN: u32 = 0x7fc0_0000;

impl Cpu {
    /// 把 ELF 的可装载节铺进内存；回入口。
    pub fn load(&mut self, elf: &[u8]) -> Result<u32, String> {
        use object::{Object, ObjectSection};
        let file = object::File::parse(elf).map_err(|e| e.to_string())?;
        for s in file.sections() {
            if s.address() == 0 || s.kind() == object::SectionKind::UninitializedData {
                continue;
            }
            if let Ok(data) = s.data() {
                self.mem.write(u32::try_from(s.address()).map_err(|e| e.to_string())?, data);
            }
        }
        Ok(u32::try_from(file.entry()).unwrap_or(0))
    }

    fn set(&mut self, rd: u8, v: u32) {
        if rd != 0 {
            self.x[rd as usize] = v;
        }
    }

    fn fv(&self, r: u8) -> f32 {
        f32::from_bits(self.f[r as usize])
    }

    fn fset(&mut self, r: u8, v: f32) {
        self.f[r as usize] = if v.is_nan() { NAN } else { v.to_bits() };
    }

    fn load_n(&self, addr: u32, n: usize) -> u32 {
        let mut b = [0u8; 4];
        self.mem.read(addr, &mut b[..n]);
        u32::from_le_bytes(b)
    }

    /// float ⇒ 有符号 / 无符号 32 位整数（截断，饱和；NaN 同 RISC-V：有符号 2³¹−1，无符号 2³²−1）。
    fn fcvt(v: f32, signed: bool, rm: Rm) -> u32 {
        let r = match rm {
            Rm::Rtz => v.trunc(),
            Rm::Rdn => v.floor(),
            Rm::Rup => v.ceil(),
            Rm::Rmm => v.round(),
            _ => v.round_ties_even(),
        };
        if signed {
            if v.is_nan() || r >= 2_147_483_648.0 {
                0x7fff_ffff
            } else if r < -2_147_483_648.0 {
                0x8000_0000
            } else {
                (r as i32).cast_unsigned()
            }
        } else if v.is_nan() || r >= 4_294_967_296.0 {
            0xffff_ffff
        } else if r <= 0.0 {
            0
        } else {
            r as u32
        }
    }

    fn fclass(v: f32) -> u32 {
        let b = v.to_bits();
        let neg = b >> 31 == 1;
        1 << match v.classify() {
            core::num::FpCategory::Infinite => if neg { 0 } else { 7 },
            core::num::FpCategory::Normal => if neg { 1 } else { 6 },
            core::num::FpCategory::Subnormal => if neg { 2 } else { 5 },
            core::num::FpCategory::Zero => if neg { 3 } else { 4 },
            core::num::FpCategory::Nan => if b & 0x0040_0000 == 0 { 8 } else { 9 },
        }
    }

    fn fminmax(a: f32, b: f32, max: bool) -> f32 {
        match (a.is_nan(), b.is_nan()) {
            (true, true) => f32::from_bits(NAN),
            (true, false) => b,
            (false, true) => a,
            _ if a == b => {
                // ±0：min 取负的、max 取正的
                if (a.to_bits() >> 31 == 1) != max { a } else { b }
            }
            _ => if (a < b) != max { a } else { b },
        }
    }

    /// 执行一条指令。
    pub fn step(&mut self) -> Result<(), Stop> {
        let w = self.mem.u32(self.pc);
        let i = Inst::try_from(w).map_err(|()| Stop::Trap(w))?;
        let (rs1, rs2) = (self.x[i.rs1 as usize], self.x[i.rs2 as usize]);
        let imm = i.imm.cast_unsigned();
        let mut next = self.pc.wrapping_add(4);
        let rm = Rm::try_from(u32::from(i.rm)).unwrap_or(Rm::Rne);
        match i.op {
            Op::Lui => self.set(i.rd, imm << 12),
            Op::Auipc => self.set(i.rd, self.pc.wrapping_add(imm << 12)),
            Op::Jal => {
                self.set(i.rd, next);
                next = self.pc.wrapping_add(imm);
            }
            Op::Jalr => {
                let t = rs1.wrapping_add(imm) & !1;
                self.set(i.rd, next);
                next = t;
            }
            Op::Beq | Op::Bne | Op::Blt | Op::Bge | Op::Bltu | Op::Bgeu => {
                let take = match i.op {
                    Op::Beq => rs1 == rs2,
                    Op::Bne => rs1 != rs2,
                    Op::Blt => rs1.cast_signed() < rs2.cast_signed(),
                    Op::Bge => rs1.cast_signed() >= rs2.cast_signed(),
                    Op::Bltu => rs1 < rs2,
                    _ => rs1 >= rs2,
                };
                if take {
                    next = self.pc.wrapping_add(imm);
                }
            }
            Op::Lb => self.set(i.rd, (self.load_n(rs1.wrapping_add(imm), 1) as u8 as i8 as i32).cast_unsigned()),
            Op::Lh => self.set(i.rd, (self.load_n(rs1.wrapping_add(imm), 2) as u16 as i16 as i32).cast_unsigned()),
            Op::Lw => self.set(i.rd, self.load_n(rs1.wrapping_add(imm), 4)),
            Op::Lbu => self.set(i.rd, self.load_n(rs1.wrapping_add(imm), 1)),
            Op::Lhu => self.set(i.rd, self.load_n(rs1.wrapping_add(imm), 2)),
            Op::Sb => self.mem.write(rs1.wrapping_add(imm), &rs2.to_le_bytes()[..1]),
            Op::Sh => self.mem.write(rs1.wrapping_add(imm), &rs2.to_le_bytes()[..2]),
            Op::Sw => self.mem.write(rs1.wrapping_add(imm), &rs2.to_le_bytes()),
            Op::Addi => self.set(i.rd, rs1.wrapping_add(imm)),
            Op::Slti => self.set(i.rd, u32::from(rs1.cast_signed() < i.imm)),
            Op::Sltiu => self.set(i.rd, u32::from(rs1 < imm)),
            Op::Xori => self.set(i.rd, rs1 ^ imm),
            Op::Ori => self.set(i.rd, rs1 | imm),
            Op::Andi => self.set(i.rd, rs1 & imm),
            Op::Slli => self.set(i.rd, rs1 << (imm & 31)),
            Op::Srli => self.set(i.rd, rs1 >> (imm & 31)),
            Op::Srai => self.set(i.rd, (rs1.cast_signed() >> (imm & 31)).cast_unsigned()),
            Op::Add => self.set(i.rd, rs1.wrapping_add(rs2)),
            Op::Sub => self.set(i.rd, rs1.wrapping_sub(rs2)),
            Op::Sll => self.set(i.rd, rs1 << (rs2 & 31)),
            Op::Slt => self.set(i.rd, u32::from(rs1.cast_signed() < rs2.cast_signed())),
            Op::Sltu => self.set(i.rd, u32::from(rs1 < rs2)),
            Op::Xor => self.set(i.rd, rs1 ^ rs2),
            Op::Srl => self.set(i.rd, rs1 >> (rs2 & 31)),
            Op::Sra => self.set(i.rd, (rs1.cast_signed() >> (rs2 & 31)).cast_unsigned()),
            Op::Or => self.set(i.rd, rs1 | rs2),
            Op::And => self.set(i.rd, rs1 & rs2),
            Op::Mul => self.set(i.rd, rs1.wrapping_mul(rs2)),
            Op::Mulh => self.set(i.rd, ((i64::from(rs1.cast_signed()) * i64::from(rs2.cast_signed())) >> 32) as u32),
            Op::Mulhsu => self.set(i.rd, ((i64::from(rs1.cast_signed()) * i64::from(rs2)) >> 32) as u32),
            Op::Mulhu => self.set(i.rd, ((u64::from(rs1) * u64::from(rs2)) >> 32) as u32),
            Op::Div => self.set(i.rd, match (rs1.cast_signed(), rs2.cast_signed()) {
                (_, 0) => u32::MAX,
                (i32::MIN, -1) => rs1,
                (a, b) => (a / b).cast_unsigned(),
            }),
            Op::Divu => self.set(i.rd, rs1.checked_div(rs2).unwrap_or(u32::MAX)),
            Op::Rem => self.set(i.rd, match (rs1.cast_signed(), rs2.cast_signed()) {
                (_, 0) => rs1,
                (i32::MIN, -1) => 0,
                (a, b) => (a % b).cast_unsigned(),
            }),
            Op::Remu => self.set(i.rd, if rs2 == 0 { rs1 } else { rs1 % rs2 }),
            Op::Fence | Op::FenceTso | Op::FenceI | Op::Wfi => {}
            Op::Ecall | Op::Ebreak | Op::Mret | Op::Sret => return Err(Stop::Trap(w)),
            Op::Csrrw | Op::Csrrs | Op::Csrrc | Op::Csrrwi | Op::Csrrsi | Op::Csrrci => {
                if i.op == Op::Csrrw && i.csr == 0xc00 && i.rd == 0 && i.rs1 == 0 {
                    return Err(Stop::Trap(w)); // unimp
                }
                let old = self.csr.get(&i.csr).copied().unwrap_or(0);
                let v = if matches!(i.op, Op::Csrrwi | Op::Csrrsi | Op::Csrrci) { u32::from(i.rs1) } else { rs1 };
                let new = match i.op {
                    Op::Csrrw | Op::Csrrwi => v,
                    Op::Csrrs | Op::Csrrsi => old | v,
                    _ => old & !v,
                };
                self.csr.insert(i.csr, new);
                self.set(i.rd, old);
            }
            Op::Flw => self.f[i.rd as usize] = self.load_n(rs1.wrapping_add(imm), 4),
            Op::Fsw => self.mem.write(rs1.wrapping_add(imm), &self.f[i.rs2 as usize].to_le_bytes()),
            Op::FaddS => self.fset(i.rd, self.fv(i.rs1) + self.fv(i.rs2)),
            Op::FsubS => self.fset(i.rd, self.fv(i.rs1) - self.fv(i.rs2)),
            Op::FmulS => self.fset(i.rd, self.fv(i.rs1) * self.fv(i.rs2)),
            Op::FdivS => self.fset(i.rd, self.fv(i.rs1) / self.fv(i.rs2)),
            Op::FsqrtS => self.fset(i.rd, self.fv(i.rs1).sqrt()),
            Op::FmaddS => self.fset(i.rd, self.fv(i.rs1).mul_add(self.fv(i.rs2), self.fv(i.rs3))),
            Op::FmsubS => self.fset(i.rd, self.fv(i.rs1).mul_add(self.fv(i.rs2), -self.fv(i.rs3))),
            Op::FnmsubS => self.fset(i.rd, (-self.fv(i.rs1)).mul_add(self.fv(i.rs2), self.fv(i.rs3))),
            Op::FnmaddS => self.fset(i.rd, (-self.fv(i.rs1)).mul_add(self.fv(i.rs2), -self.fv(i.rs3))),
            Op::FsgnjS | Op::FsgnjnS | Op::FsgnjxS => {
                let (a, b) = (self.f[i.rs1 as usize], self.f[i.rs2 as usize]);
                let s = match i.op {
                    Op::FsgnjS => b & 0x8000_0000,
                    Op::FsgnjnS => !b & 0x8000_0000,
                    _ => (a ^ b) & 0x8000_0000,
                };
                self.f[i.rd as usize] = (a & 0x7fff_ffff) | s;
            }
            Op::FminS | Op::FmaxS => self.fset(i.rd, Self::fminmax(self.fv(i.rs1), self.fv(i.rs2), i.op == Op::FmaxS)),
            Op::FcvtWS | Op::FcvtWuS => self.set(i.rd, Self::fcvt(self.fv(i.rs1), i.op == Op::FcvtWS, rm)),
            Op::FmvXW => self.set(i.rd, self.f[i.rs1 as usize]),
            Op::FmvWX => self.f[i.rd as usize] = rs1,
            Op::FeqS => self.set(i.rd, u32::from(self.fv(i.rs1) == self.fv(i.rs2))),
            Op::FltS => self.set(i.rd, u32::from(self.fv(i.rs1) < self.fv(i.rs2))),
            Op::FleS => self.set(i.rd, u32::from(self.fv(i.rs1) <= self.fv(i.rs2))),
            Op::FclassS => self.set(i.rd, Self::fclass(self.fv(i.rs1))),
            Op::FcvtSW => self.fset(i.rd, rs1.cast_signed() as f32),
            Op::FcvtSWu => self.fset(i.rd, rs1 as f32),
        }
        self.pc = next;
        self.steps += 1;
        Ok(())
    }

    /// 从 `entry` 跑到返回地址 `ret`（`ra` 设成它）或停下，最多 `limit` 步。
    pub fn run(&mut self, entry: u32, ret: u32, limit: u64) -> Stop {
        self.pc = entry;
        self.x[1] = ret;
        let start = self.steps;
        while self.pc != ret {
            if self.steps - start >= limit {
                return Stop::Limit;
            }
            if let Err(stop) = self.step() {
                return stop;
            }
        }
        Stop::Returned
    }
}
