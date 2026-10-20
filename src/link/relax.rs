//! 链接松弛（同 lld 的 `RISCV::relaxOnce` / `finalizeRelax`，RV32、无 C、缺省不做 gp 松弛）。
//!
//! ```text
//! 每一轮（地址都按上一轮排好）：可执行输出节里的每个输入节，按重定位次序算各条要删的字节数（累计 = deltas），
//!   R_RISCV_ALIGN                  删掉超出对齐所需的 nop（--no-relax 也做）
//!   CALL / CALL_PLT + RELAX        auipc + jalr ⇒ c.j / c.jal（输入开了 C、±2 KiB 内）或 jal（±1 MiB 内）；第 4 轮起只许删得更少，防振荡
//!   HI20 / LO12_I / LO12_S + RELAX 值放得进 12 位 ⇒ 删 lui、lo12 改用 x0
//! 同时按「锚」（符号的起点与终点）更新本节符号的值与大小。有变化就重排地址、再来一轮（最多 30 轮）。
//! 定下来以后改写节内容（删字节、写 jal / nop）、重定位的位置与类型、符号的值与大小。
//! ```
//! ⛔ 不做：TLS 的 tprel / tlsdesc 松弛（目标是静态可执行文件、无 TLS）、`--relax-gp`（lld 缺省也不做）、压缩指令。
use super::input::Place;
use super::{Def, Error, Linker, Piece};
use object::elf;

/// 松弛后的改写。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) enum Rewrite {
    None,
    /// `auipc + jalr` ⇒ 这个 `jal` 字。
    Jal(u32),
    /// `auipc + jalr` ⇒ 这个 `c.j` / `c.jal`（开了 C、±2 KiB 内）。
    Rvc(u16),
    /// 这条（`lui`）删掉。
    Drop,
    /// lo12 改用 x0（I / S 型）。
    X0I,
    X0S,
}

/// 一个输入节的松弛状态（lld 的 RelaxAux）。
#[derive(Clone, Debug, Default)]
pub(super) struct Aux {
    /// 参与的重定位：在 `InSec::relocs` 里的下标（去掉 NONE、厂商对；--no-relax 时也去掉 RELAX）。
    rels: Vec<usize>,
    /// 到这条为止累计删掉的字节数。
    deltas: Vec<u32>,
    kinds: Vec<Rewrite>,
    /// 锚：（节内偏移, 符号下标, 是不是终点），按（偏移, 终点）排。
    anchors: Vec<(u64, usize, bool)>,
}

/// 内部重定位类型：lo12 改用 x0（同 lld 的 INTERNAL_R_RISCV_X0REL_I / _S）。
pub(super) const X0REL_I: u32 = 0x1_0001;
pub(super) const X0REL_S: u32 = 0x1_0002;

impl Linker {
    /// 节在可执行输出节里的输入节（文件, 节号），按输出次序。
    fn exec_inputs(&self) -> Vec<(usize, usize)> {
        let mut out = Vec::new();
        for slot in &self.slots {
            let super::Slot::Out(idx) = *slot else { continue };
            if self.outs[idx].flags & u64::from(elf::SHF_EXECINSTR) == 0 {
                continue;
            }
            out.extend(self.outs[idx].pieces.iter().filter_map(|p| if let Piece::Input(o, i) = *p { Some((o, i)) } else { None }));
        }
        out
    }

    /// 锚与参与的重定位（lld 的 initSymbolAnchors）。
    fn init_relax(&mut self) {
        for (o, i) in self.exec_inputs() {
            let Some(sec) = self.objs[o].sections[i].as_ref() else { continue };
            let mut rels = Vec::new();
            let mut k = 0;
            while k < sec.relocs.len() {
                let t = sec.relocs[k].r_type;
                // 厂商对（R_RISCV_VENDOR = 191 + 紧跟的那条）不参与
                if t == 191 {
                    k += 2;
                    continue;
                }
                if t != elf::R_RISCV_NONE && (t != elf::R_RISCV_RELAX || !self.opts.no_relax) {
                    rels.push(k);
                }
                k += 1;
            }
            let mut anchors = Vec::new();
            for (idx, s) in self.objs[o].syms.iter().enumerate() {
                if s.place != Place::Section(i) {
                    continue;
                }
                // 全局符号只算胜出的那个定义
                let prevailing = s.local() || matches!(self.globals.get(&s.name), Some(Def::Obj(go, gi)) if (*go, *gi) == (o, idx));
                if prevailing {
                    anchors.push((s.value, idx, false));
                    anchors.push((s.value + s.size, idx, true));
                }
            }
            anchors.sort_by_key(|&(off, _, end)| (off, end));
            let n = rels.len();
            self.relax.insert((o, i), Aux { rels, deltas: vec![0; n], kinds: vec![Rewrite::None; n], anchors });
        }
    }

    /// ⭐ 松弛直到不再变化（在 layout 之后），再改写；最后重排一次。
    pub(super) fn relax_all(&mut self) -> Result<(), Error> {
        self.init_relax();
        if self.relax.values().all(|a| a.rels.is_empty()) {
            self.relax.clear();
            return Ok(());
        }
        for pass in 0..30 {
            if !self.relax_once(pass)? {
                break;
            }
            self.layout()?;
        }
        self.finalize_relax();
        self.layout()
    }

    /// 一轮（lld 的 relax）：回有没有变化。
    fn relax_once(&mut self, pass: u32) -> Result<bool, Error> {
        let mut changed = false;
        for (o, i) in self.exec_inputs() {
            let Some(mut aux) = self.relax.remove(&(o, i)) else { continue };
            let sec_addr = self.placed.get(&(o, i)).copied().flatten().map_or(0, |(_, a)| a);
            let relocs = self.objs[o].sections[i].as_ref().map(|s| s.relocs.clone()).unwrap_or_default();
            let data = self.objs[o].sections[i].as_ref().map(|s| s.data.clone()).unwrap_or_default();
            let relaxable = |k: usize| aux.rels.get(k + 1).is_some_and(|&n| relocs[n].r_type == elf::R_RISCV_RELAX);
            let mut delta = 0u64;
            let mut sa = 0;
            for k in 0..aux.rels.len() {
                let r = relocs[aux.rels[k]];
                let loc = sec_addr + r.offset - delta;
                let cur = u64::from(aux.deltas[k]);
                let mut remove = 0u64;
                aux.kinds[k] = Rewrite::None;
                match r.r_type {
                    elf::R_RISCV_ALIGN => {
                        let addend = r.addend.cast_unsigned();
                        let next = loc + addend;
                        let align = (addend + 2).next_power_of_two();
                        let at = (loc + align - 1) & !(align - 1);
                        if next < at {
                            return Err(Error::Link(format!("{}：R_RISCV_ALIGN 只有 {addend} 字节可删，凑不出 {align} 字节对齐", self.objs[o].name)));
                        }
                        remove = next - at;
                    }
                    elf::R_RISCV_CALL | elf::R_RISCV_CALL_PLT if relaxable(k) => {
                        // 第 4 轮起只许删得更少（上一轮删的是 cur − delta）
                        remove = if pass < 4 { 6 } else { cur - delta };
                        let dest = self.target(o, r.sym)?.unwrap_or(0).wrapping_add_signed(r.addend);
                        let displace = dest.wrapping_sub(loc).cast_signed() as i32 as i64;
                        let at = usize::try_from(r.offset).unwrap_or_default();
                        let jalr = data.get(at + 4..at + 8).map_or(0, |b| u32::from_le_bytes([b[0], b[1], b[2], b[3]]));
                        let rd = (jalr >> 7) & 31;
                        // 同 lld 的 relaxCall：这个输入开了 C（EF_RISCV_RVC）、±2 KiB 内 ⇒ c.j（rd = x0）/ c.jal（rd = ra，只有 RV32）
                        let rvc = self.objs[o].e_flags & elf::EF_RISCV_RVC != 0 && (-2048..2048).contains(&displace);
                        if remove >= 6 && rvc && rd == 0 {
                            aux.kinds[k] = Rewrite::Rvc(0xa001);
                            remove = 6;
                        } else if remove >= 6 && rvc && rd == 1 {
                            aux.kinds[k] = Rewrite::Rvc(0x2001);
                            remove = 6;
                        } else if remove >= 4 && (-(1 << 20)..1 << 20).contains(&displace) {
                            aux.kinds[k] = Rewrite::Jal(0x6f | rd << 7);
                            remove = 4;
                        } else {
                            remove = 0;
                        }
                    }
                    elf::R_RISCV_HI20 | elf::R_RISCV_LO12_I | elf::R_RISCV_LO12_S if relaxable(k) => {
                        let v = self.target(o, r.sym)?.unwrap_or(0).wrapping_add_signed(r.addend).cast_signed();
                        if (-2048..2048).contains(&v) {
                            match r.r_type {
                                elf::R_RISCV_HI20 => {
                                    aux.kinds[k] = Rewrite::Drop;
                                    remove = 4;
                                }
                                elf::R_RISCV_LO12_I => aux.kinds[k] = Rewrite::X0I,
                                _ => aux.kinds[k] = Rewrite::X0S,
                            }
                        }
                    }
                    _ => {}
                }
                // 偏移 ≤ 这条的锚：前面那些重定位删掉的（delta）减掉
                while let Some(&(off, idx, end)) = aux.anchors.get(sa)
                    && off <= r.offset
                {
                    self.anchor(o, idx, off, delta, end);
                    sa += 1;
                }
                delta += remove;
                if delta != cur {
                    aux.deltas[k] = u32::try_from(delta).map_err(|_| Error::Link(String::from("松弛删掉的字节太多")))?;
                    changed = true;
                }
            }
            for &(off, idx, end) in &aux.anchors[sa..] {
                self.anchor(o, idx, off, delta, end);
            }
            self.relax.insert((o, i), aux);
        }
        Ok(changed)
    }

    /// 锚 ⇒ 符号的新值 / 新大小（起点：值 = 偏移 − delta；终点：大小 = 偏移 − delta − 值）。
    fn anchor(&mut self, o: usize, idx: usize, off: u64, delta: u64, end: bool) {
        let s = &self.objs[o].syms[idx];
        let cur = self.relaxed.get(&(o, idx)).copied().unwrap_or((s.value, s.size));
        let new = if end { (cur.0, off - delta - cur.0) } else { (off - delta, cur.1) };
        self.relaxed.insert((o, idx), new);
    }

    /// 这个输入节删掉了多少字节（排地址用）。
    pub(super) fn dropped(&self, o: usize, i: usize) -> u64 {
        self.relax.get(&(o, i)).and_then(|a| a.deltas.last()).map_or(0, |&d| u64::from(d))
    }

    /// 改写（lld 的 finalizeRelax）：节内容、重定位的位置与类型、符号的值与大小。
    fn finalize_relax(&mut self) {
        let relaxed = core::mem::take(&mut self.relaxed);
        for ((o, idx), (v, size)) in relaxed {
            let s = &mut self.objs[o].syms[idx];
            s.value = v;
            s.size = size;
        }
        for ((o, i), aux) in core::mem::take(&mut self.relax) {
            let Some(sec) = self.objs[o].sections[i].as_mut() else { continue };
            let Some(&total) = aux.deltas.last() else { continue };
            let old = core::mem::take(&mut sec.data);
            let mut new = Vec::with_capacity(old.len());
            let (mut offset, mut delta) = (0usize, 0u32);
            for (k, &ri) in aux.rels.iter().enumerate() {
                let remove = aux.deltas[k] - delta;
                delta = aux.deltas[k];
                if remove == 0 && aux.kinds[k] == Rewrite::None {
                    continue;
                }
                let r = sec.relocs[ri];
                let at = usize::try_from(r.offset).unwrap_or_default();
                new.extend_from_slice(&old[offset..at]);
                let mut skip = 0usize;
                if r.r_type == elf::R_RISCV_ALIGN {
                    // 删的或留的不是 4 的倍数：在 nop 中间，重写 nop 序列
                    let addend = r.addend.cast_unsigned();
                    if remove % 4 != 0 || addend % 4 != 0 {
                        skip = usize::try_from(addend - u64::from(remove)).unwrap_or_default();
                        let mut j = 0;
                        while j + 4 <= skip {
                            new.extend_from_slice(&0x13u32.to_le_bytes());
                            j += 4;
                        }
                        if j != skip {
                            new.extend_from_slice(&1u16.to_le_bytes());
                        }
                    }
                } else if let Rewrite::Jal(w) = aux.kinds[k] {
                    skip = 4;
                    new.extend_from_slice(&w.to_le_bytes());
                } else if let Rewrite::Rvc(h) = aux.kinds[k] {
                    skip = 2;
                    new.extend_from_slice(&h.to_le_bytes());
                }
                // 删的是这条处的前 `remove` 个字节（ALIGN 的 4 的倍数：留下的 nop 由下一段照抄）
                offset = at + skip + remove as usize;
            }
            new.extend_from_slice(&old[offset..]);
            // 重定位：位置减去前面（偏移更小的）删掉的；类型按改写
            let shift = |off: u64| -> u64 {
                let k = aux.rels.iter().rposition(|&ri| sec.relocs[ri].offset < off);
                off - k.map_or(0, |k| u64::from(aux.deltas[k]))
            };
            let offsets: Vec<u64> = sec.relocs.iter().map(|r| shift(r.offset)).collect();
            for (r, off) in sec.relocs.iter_mut().zip(offsets) {
                r.offset = off;
            }
            for (k, &ri) in aux.rels.iter().enumerate() {
                let r = &mut sec.relocs[ri];
                r.r_type = match aux.kinds[k] {
                    Rewrite::None => r.r_type,
                    Rewrite::Jal(_) => elf::R_RISCV_JAL,
                    Rewrite::Rvc(_) => elf::R_RISCV_RVC_JUMP,
                    Rewrite::Drop => elf::R_RISCV_RELAX,
                    Rewrite::X0I => X0REL_I,
                    Rewrite::X0S => X0REL_S,
                };
            }
            sec.size -= u64::from(total);
            sec.data = new;
        }
    }
}
