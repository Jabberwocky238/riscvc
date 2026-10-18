//! RV32 解释器：装 ELF、设寄存器、跑到返回。给代码生成做对拍用（同一份输入，两份编译产物比结果）。
//!
//! 核心只执行 RV32I；M / Zmmul / F / Zicsr 的语义在 `src/feature/`，与自定义扩展一样经 [`Module`] 执行：
//! [`Cpu::step_on`] / [`Cpu::run_on`] 先问给的扩展、再问内置扩展（按 cargo feature），访存先问 [`Device`]（MMIO）；
//! [`Cpu::step`] / [`Cpu::run`] = 只挂内置扩展。
use crate::ext::{Device, Exec, Module};
use crate::isa::{Inst, Rv32i as Op};
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

    /// 读 `n` 字节（小端拼成 u32）：设备先答，没有设备认就读内存。
    pub(crate) fn load_n(&mut self, devs: &mut [&mut dyn Device], addr: u32, n: usize) -> u32 {
        let mut b = [0u8; 4];
        if !devs.iter_mut().any(|d| d.load(addr, &mut b[..n])) {
            self.mem.read(addr, &mut b[..n]);
        }
        u32::from_le_bytes(b)
    }

    /// 写：设备先收，没有设备认就写内存。
    pub(crate) fn store(&mut self, devs: &mut [&mut dyn Device], addr: u32, data: &[u8]) {
        if !devs.iter_mut().any(|d| d.store(addr, data)) {
            self.mem.write(addr, data);
        }
    }

    /// 执行一条指令（只挂内置扩展）。
    pub fn step(&mut self) -> Result<(), Stop> {
        self.step_on(&mut [], &mut [])
    }

    /// ⭐ 执行一条指令：pc 处的字节先给扩展认（给的、再内置的；认了就由它执行），再走 RV32I；访存经设备。
    pub fn step_on(&mut self, exts: &mut [&mut dyn Module], devs: &mut [&mut dyn Device]) -> Result<(), Stop> {
        let mut window = [0; 8];
        self.mem.read(self.pc, &mut window);
        // 给的扩展先认，再内置的（src/feature）
        let n = match exts.iter_mut().find(|e| e.decode(&window).is_some()) {
            Some(e) => {
                let n = e.decode(&window).unwrap_or(4);
                let mut cx = Exec::new(self, devs);
                e.execute(&mut cx, &window[..n.min(8)])?;
                Some((n, cx.next))
            }
            None => match crate::feature::decode(&window) {
                Some(n) => {
                    let mut cx = Exec::new(self, devs);
                    crate::feature::execute(&mut cx, &window[..n.min(8)])?;
                    Some((n, cx.next))
                }
                None => None,
            },
        };
        if let Some((n, next)) = n {
            self.pc = next.unwrap_or_else(|| self.pc.wrapping_add(u32::try_from(n).unwrap_or(4)));
            self.steps += 1;
            return Ok(());
        }
        // 扩展都不认 ⇒ RV32I（⛔ 再问一遍扩展）
        let w = u32::from_le_bytes([window[0], window[1], window[2], window[3]]);
        self.pc = self.exec_base(w, 4, devs)?;
        self.steps += 1;
        Ok(())
    }

    /// ⭐ 执行一条 RV32I 的 32 位指令，指令长 `len` 字节（压缩指令还原出来的是 2：`jal` 的返回地址、顺序的下一条都按它算）。
    /// 回下一条的 pc。⚠ 不动 `pc` 与步数（调用方定）。
    pub(crate) fn exec(&mut self, devs: &mut [&mut dyn Device], w: u32, len: u32) -> Result<u32, Stop> {
        // 内置扩展（M、F、Zicsr …）的 32 位指令
        let window = { let mut b = [0u8; 8]; b[..4].copy_from_slice(&w.to_le_bytes()); b };
        if crate::feature::decode(&window) == Some(4) {
            let mut cx = Exec::new(self, devs);
            crate::feature::execute(&mut cx, &window[..4])?;
            let next = cx.next;
            return Ok(next.unwrap_or_else(|| self.pc.wrapping_add(len)));
        }
        self.exec_base(w, len, devs)
    }

    /// RV32I 的一条（`exec` 去掉扩展那一步）。
    fn exec_base(&mut self, w: u32, len: u32, devs: &mut [&mut dyn Device]) -> Result<u32, Stop> {
        let i = Inst::<Op>::try_from(w).map_err(|()| Stop::Trap(w))?;
        let (rs1, rs2) = (self.x[i.rs1 as usize], self.x[i.rs2 as usize]);
        let imm = i.imm.cast_unsigned();
        let mut next = self.pc.wrapping_add(len);
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
            Op::Lb | Op::Lh | Op::Lw | Op::Lbu | Op::Lhu => {
                let n = match i.op {
                    Op::Lb | Op::Lbu => 1,
                    Op::Lh | Op::Lhu => 2,
                    _ => 4,
                };
                let v = self.load_n(devs, rs1.wrapping_add(imm), n);
                self.set(i.rd, match i.op {
                    Op::Lb => (v as u8 as i8 as i32).cast_unsigned(),
                    Op::Lh => (v as u16 as i16 as i32).cast_unsigned(),
                    _ => v,
                });
            }
            Op::Sb => self.store(devs, rs1.wrapping_add(imm), &rs2.to_le_bytes()[..1]),
            Op::Sh => self.store(devs, rs1.wrapping_add(imm), &rs2.to_le_bytes()[..2]),
            Op::Sw => self.store(devs, rs1.wrapping_add(imm), &rs2.to_le_bytes()),
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
            Op::Fence | Op::FenceTso | Op::FenceI | Op::Wfi | Op::SfenceVma => {}
            Op::Ecall | Op::Ebreak | Op::Mret | Op::Sret | Op::Dret => return Err(Stop::Trap(w)),
        }
        Ok(next)
    }

    /// 从 `entry` 跑到返回地址 `ret`（`ra` 设成它）或停下，最多 `limit` 步（只挂内置扩展）。
    pub fn run(&mut self, entry: u32, ret: u32, limit: u64) -> Stop {
        self.run_on(entry, ret, limit, &mut [], &mut [])
    }

    /// 同 [`Self::run`]，挂上扩展与设备（[`Self::step_on`]）。
    pub fn run_on(&mut self, entry: u32, ret: u32, limit: u64, exts: &mut [&mut dyn Module], devs: &mut [&mut dyn Device]) -> Stop {
        self.pc = entry;
        self.x[1] = ret;
        let start = self.steps;
        while self.pc != ret {
            if self.steps - start >= limit {
                return Stop::Limit;
            }
            if let Err(stop) = self.step_on(exts, devs) {
                return stop;
            }
        }
        Stop::Returned
    }
}
