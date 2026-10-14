//! 链接器（ld.lld 的子集，RV32、静态、可执行）：目标文件 + 链接脚本 ⇒ ELF。
//!
//! ```text
//! input   读目标文件（节、符号、重定位）
//! resolve 全局符号：强 / 弱 / COMMON / 未定义
//! place   按脚本把输入节分给输出节；没被脚本点名的（孤儿）同 lld 按名字归并、按类别插位
//! layout  定地址：`.`、ALIGN、AT、符号赋值
//! reloc   施加 RISC-V 重定位
//! write   写 ELF（节表 + 程序头；装载器按节表铺）
//! ```
mod input;
mod reloc;
pub mod script;
mod write;

use input::{InSec, InSym, Obj, Place};
use object::elf;
use script::{Assign, Cmd, Item, LExpr, OutSec, Script};
use std::collections::HashMap;

#[derive(Debug, thiserror::Error)]
pub enum Error {
    #[error("输入：{0}")]
    Input(String),
    #[error("链接脚本：{0}")]
    Script(String),
    #[error("{0}")]
    Link(String),
    #[error("{0}")]
    Io(#[from] std::io::Error),
}

/// 链接选项（对应 ld.lld 的开关）。
#[derive(Clone, Debug, Default)]
pub struct Options {
    /// `-T`：链接脚本文本。
    pub script: Option<String>,
    /// `-e`：入口（符号名或数）。
    pub entry: Option<String>,
    /// `-s`：不写符号表。
    pub strip: bool,
    /// `--unresolved-symbols=ignore-all`：未定义符号当 0。
    pub allow_undefined: bool,
}

/// 一段输出节的内容。
#[derive(Clone, Debug)]
enum Piece {
    /// （文件, 节号）
    Input(usize, usize),
    Assign(Assign),
    Data(u8, LExpr),
}

/// 输出节。
#[derive(Clone, Debug)]
pub struct Out {
    pub name: String,
    pub ty: u32,
    pub flags: u64,
    pub align: u64,
    /// 项长：输入节的都一样就沿用，否则 0（同 lld）。
    pub entsize: u64,
    pub addr: u64,
    pub lma: u64,
    pub size: u64,
    pieces: Vec<Piece>,
    script: Option<OutSec>,
    pub data: Vec<u8>,
    /// lld 的 sortRank（孤儿插位用）。
    rank: u32,
    /// 有输入节放进来（lld 的 `hasInputSections`）。
    inputs: bool,
}

impl Out {
    fn new(name: &str, script: Option<OutSec>) -> Self {
        Self { name: String::from(name), ty: elf::SHT_PROGBITS, flags: 0, align: 1, entsize: 0, addr: 0, lma: 0, size: 0, pieces: Vec::new(), script, data: Vec::new(), rank: 0, inputs: false }
    }

    /// 同 lld 的 `getSectionRank`（RISC-V、无 `-Ttext` 一类、`-z relro`）：位越高的类别越靠后。
    fn rank(&self) -> u32 {
        const NOT_ADDR_SET: u32 = 1 << 27;
        const NOT_ALLOC: u32 = 1 << 26;
        const WRITE: u32 = 1 << 14;
        const EXEC_WRITE: u32 = 1 << 13;
        const EXEC: u32 = 1 << 12;
        const RODATA: u32 = 1 << 11;
        const LARGE: u32 = 1 << 9;
        const NOT_RELRO: u32 = 1 << 8;
        const NOT_TLS: u32 = 1 << 7;
        const BSS: u32 = 1 << 6;
        let f = |bit: u32| self.flags & u64::from(bit) != 0;
        let mut rank = NOT_ADDR_SET;
        if !f(elf::SHF_ALLOC) {
            return rank | NOT_ALLOC;
        }
        let (exec, write) = (f(elf::SHF_EXECINSTR), f(elf::SHF_WRITE));
        if !write && !exec {
            rank |= LARGE;
            rank |= match self.ty {
                elf::SHT_NOTE => 3,
                elf::SHT_PROGBITS => RODATA,
                _ => 4,
            };
        } else if exec {
            rank |= if write { EXEC_WRITE } else { EXEC };
        } else {
            rank |= WRITE;
            if !f(elf::SHF_TLS) {
                rank |= NOT_TLS;
            }
            let relro = f(elf::SHF_TLS)
                || matches!(self.ty, elf::SHT_INIT_ARRAY | elf::SHT_FINI_ARRAY | elf::SHT_PREINIT_ARRAY)
                || matches!(self.name.as_str(), ".data.rel.ro" | ".bss.rel.ro" | ".ctors" | ".dtors" | ".jcr" | ".eh_frame" | ".fini_array" | ".init_array" | ".preinit_array");
            if !relro {
                rank |= NOT_RELRO;
            }
        }
        if self.ty == elf::SHT_NOBITS {
            rank |= BSS;
        }
        if self.name == ".sdata" || (self.ty == elf::SHT_NOBITS && self.name != ".sbss") {
            rank |= 1;
        }
        rank
    }
}

/// 命令序列里的一项。
#[derive(Clone, Debug)]
enum Slot {
    Assign(Assign),
    Out(usize),
}

/// 定义的强弱（符号决议用）。
#[derive(Clone, Copy, PartialEq, Eq)]
enum Strength {
    Strong,
    Weak,
    Common,
}

impl Strength {
    fn of(s: &InSym) -> Self {
        match (s.place, s.bind) {
            (Place::Common(_), _) => Self::Common,
            (_, elf::STB_WEAK) => Self::Weak,
            _ => Self::Strong,
        }
    }
}

/// 全局符号的定义。
#[derive(Clone, Copy, Debug)]
enum Def {
    /// （文件, 符号下标）
    Obj(usize, usize),
    /// 脚本里赋的值。
    Script(u64),
}

pub struct Linker {
    opts: Options,
    objs: Vec<Obj>,
    script: Script,
    globals: HashMap<String, Def>,
    /// 全局名的出现次序（写符号表时稳定）。
    order: Vec<String>,
    pub outs: Vec<Out>,
    /// 命令序列（输出节与顶层赋值交错；孤儿已插好位）。
    slots: Vec<Slot>,
    /// （文件, 节号）⇒（输出节, 地址）。`None` = 丢弃。
    placed: HashMap<(usize, usize), Option<(usize, u64)>>,
    pub entry: u64,
}

impl Linker {
    /// ⭐ 一次链接：输入（名字, 字节）⇒ ELF 字节。
    pub fn link(opts: Options, inputs: &[(&str, &[u8])]) -> Result<Vec<u8>, Error> {
        let script = opts.script.as_deref().map(Script::try_from).transpose()?.unwrap_or_default();
        let objs = inputs.iter().map(|&(n, b)| Obj::try_from((n, b))).collect::<Result<Vec<_>, _>>()?;
        let mut l = Self { opts, objs, script, globals: HashMap::new(), order: Vec::new(), outs: Vec::new(), slots: Vec::new(), placed: HashMap::new(), entry: 0 };
        l.resolve()?;
        l.commons();
        l.place();
        l.layout()?;
        l.relocate()?;
        l.write()
    }

    /// 全局符号：强定义唯一；弱让强；COMMON 让定义、COMMON 之间取大的。
    fn resolve(&mut self) -> Result<(), Error> {
        for (o, obj) in self.objs.iter().enumerate() {
            for (i, s) in obj.syms.iter().enumerate().skip(1) {
                if s.local() || s.name.is_empty() {
                    continue;
                }
                if !self.globals.contains_key(&s.name) && !self.order.contains(&s.name) {
                    self.order.push(s.name.clone());
                }
                if s.place == Place::Undef {
                    continue;
                }
                let new = Def::Obj(o, i);
                match self.globals.get(&s.name).copied() {
                    None => {
                        self.globals.insert(s.name.clone(), new);
                    }
                    Some(Def::Obj(po, pi)) => {
                        let p = &self.objs[po].syms[pi];
                        let replace = match (Strength::of(p), Strength::of(s)) {
                            (Strength::Strong, Strength::Strong) => return Err(Error::Link(format!("符号 `{}` 重复定义：{} 与 {}", s.name, self.objs[po].name, obj.name))),
                            (Strength::Weak, Strength::Strong | Strength::Common) | (Strength::Common, Strength::Strong) => true,
                            (Strength::Common, Strength::Common) => s.size > p.size,
                            _ => false,
                        };
                        if replace {
                            self.globals.insert(s.name.clone(), new);
                        }
                    }
                    Some(Def::Script(_)) => {}
                }
            }
        }
        Ok(())
    }

    /// COMMON 符号 ⇒ 一个合成文件里的 NOBITS 节（脚本的 `COMMON` 模式点名它）。
    fn commons(&mut self) {
        let mut obj = Obj { name: String::from("<COMMON>"), e_flags: 0, sections: vec![None], syms: vec![InSym { name: String::new(), place: Place::Undef, value: 0, size: 0, bind: 0, ty: 0, other: 0 }] };
        let o = self.objs.len();
        for name in &self.order {
            let Some(Def::Obj(so, si)) = self.globals.get(name).copied() else { continue };
            let s = &self.objs[so].syms[si];
            let Place::Common(align) = s.place else { continue };
            obj.sections.push(Some(InSec { name: String::from("COMMON"), ty: elf::SHT_NOBITS, flags: u64::from(elf::SHF_ALLOC | elf::SHF_WRITE), align: align.max(1), entsize: 0, data: Vec::new(), size: s.size, relocs: Vec::new() }));
            obj.syms.push(InSym { name: name.clone(), place: Place::Section(obj.sections.len() - 1), value: 0, size: s.size, bind: elf::STB_GLOBAL, ty: elf::STT_OBJECT, other: s.other });
            self.globals.insert(name.clone(), Def::Obj(o, obj.syms.len() - 1));
        }
        self.objs.push(obj);
    }

    /// 输入节 ⇒ 输出节：先按脚本（第一条命中的描述），剩下的孤儿按名字归并，再同 lld 的 `findOrphanPos` 插位。
    fn place(&mut self) {
        let mut taken: HashMap<(usize, usize), ()> = HashMap::new();
        for cmd in self.script.cmds.clone() {
            let sec = match cmd {
                Cmd::Assign(a) => {
                    self.slots.push(Slot::Assign(a));
                    continue;
                }
                Cmd::Section(sec) => sec,
            };
            let discard = sec.name == "/DISCARD/";
            let mut out = Out::new(&sec.name, Some(sec.clone()));
            for item in &sec.items {
                match item {
                    Item::Input(desc) => {
                        for (o, obj) in self.objs.iter().enumerate() {
                            let file = obj.name.rsplit('/').next().unwrap_or(&obj.name);
                            if !script::glob(&desc.file, file) && !script::glob(&desc.file, &obj.name) {
                                continue;
                            }
                            for (i, s) in obj.sections.iter().enumerate() {
                                let Some(s) = s else { continue };
                                if taken.contains_key(&(o, i)) || !desc.sections.iter().any(|p| script::glob(p, &s.name)) {
                                    continue;
                                }
                                taken.insert((o, i), ());
                                if discard {
                                    self.placed.insert((o, i), None);
                                } else {
                                    out.pieces.push(Piece::Input(o, i));
                                }
                            }
                        }
                    }
                    Item::Assign(a) => out.pieces.push(Piece::Assign(a.clone())),
                    Item::Data(n, e) => out.pieces.push(Piece::Data(*n, e.clone())),
                }
            }
            if !discard {
                self.outs.push(out);
                self.slots.push(Slot::Out(self.outs.len() - 1));
            }
        }
        // 孤儿：按名字归并（同 lld 的 getOutputSectionName + findByName：有 SECTIONS 时不改名，
        // 与脚本里同名的输出节也算），按出现次序
        let first_orphan = self.outs.len();
        let has_sections = self.script.cmds.iter().any(|c| matches!(c, Cmd::Section(_)));
        for (o, obj) in self.objs.iter().enumerate() {
            for (i, s) in obj.sections.iter().enumerate() {
                let Some(s) = s else { continue };
                if taken.contains_key(&(o, i)) || s.ty == elf::SHT_RISCV_ATTRIBUTES || (!s.alloc() && s.size == 0) {
                    continue;
                }
                let name = Self::orphan_name(&s.name, has_sections);
                let at = match self.outs.iter().position(|out| out.name == name) {
                    Some(at) => at,
                    None => {
                        self.outs.push(Out::new(name, None));
                        self.outs.len() - 1
                    }
                };
                self.outs[at].pieces.push(Piece::Input(o, i));
            }
        }
        // 各输出节的类型、标志、对齐（取自输入节）；脚本里的空节继承前一个非空节的 ALLOC | WRITE（同 lld 的 adjustOutputSections）
        let mut inherited = u64::from(elf::SHF_ALLOC);
        let order: Vec<usize> = self.slots.iter().filter_map(|s| if let Slot::Out(i) = s { Some(*i) } else { None }).chain(first_orphan..self.outs.len()).collect();
        let mut dropped = Vec::new();
        for idx in order {
            let (mut ty, mut flags, mut align, mut inputs) = (elf::SHT_NOBITS, 0u64, 1u64, false);
            let mut entsize: Option<u64> = None;
            for p in &self.outs[idx].pieces {
                match p {
                    Piece::Input(o, i) => {
                        let s = self.objs[*o].sections[*i].as_ref().expect("放进来的都有");
                        inputs = true;
                        // 同 lld 的 commitSection：输入的标志全或起来（SHF_MERGE / SHF_STRINGS 也带上），只去掉组
                        flags |= s.flags & !u64::from(elf::SHF_GROUP);
                        align = align.max(s.align);
                        entsize = Some(if entsize.is_none_or(|e| e == s.entsize) { s.entsize } else { 0 });
                        if s.ty != elf::SHT_NOBITS && (ty == elf::SHT_NOBITS || s.ty != elf::SHT_PROGBITS) {
                            ty = s.ty;
                        }
                    }
                    Piece::Data(..) => ty = elf::SHT_PROGBITS,
                    Piece::Assign(_) => {}
                }
            }
            let out = &mut self.outs[idx];
            let noload = out.script.as_ref().is_some_and(|s| s.noload);
            if inputs {
                inherited = flags;
            } else {
                // 只有没点中任何东西的输入描述（和没人用的 PROVIDE）⇒ 丢掉
                let only_empty = out.pieces.iter().all(|p| matches!(p, Piece::Assign(a) if a.provide));
                if only_empty {
                    dropped.push(idx);
                    continue;
                }
                flags = inherited & u64::from(elf::SHF_ALLOC | elf::SHF_WRITE);
                ty = elf::SHT_PROGBITS;
            }
            if noload {
                ty = elf::SHT_NOBITS;
            }
            out.ty = ty;
            out.flags = flags;
            out.align = align;
            out.entsize = entsize.unwrap_or(0);
            out.inputs = inputs;
            out.rank = out.rank();
        }
        self.slots.retain(|s| !matches!(s, Slot::Out(i) if dropped.contains(i)));
        // 孤儿插位：先按 rank 稳定排序，同 rank 的一组一起插
        let mut orphans: Vec<usize> = (first_orphan..self.outs.len()).collect();
        orphans.sort_by_key(|&i| self.outs[i].rank);
        // `b`：跳过开头那条 `. = 地址`（lld 的特例）
        let begin = usize::from(matches!(self.slots.first(), Some(Slot::Assign(a)) if a.name == "."));
        let mut k = 0;
        while k < orphans.len() {
            let rank = self.outs[orphans[k]].rank;
            let group: Vec<usize> = orphans[k..].iter().copied().take_while(|&i| self.outs[i].rank == rank).collect();
            k += group.len();
            let pos = self.orphan_pos(begin, orphans[k - group.len()]);
            for (n, g) in group.into_iter().enumerate() {
                self.slots.insert(pos + n, Slot::Out(g));
            }
        }
    }

    /// lld 的 `findOrphanPos`：找 rank 最接近（异或后前导零最多）的锚，rank 不小于锚就往后挪过同样接近的，否则放在锚前。
    fn orphan_pos(&self, begin: usize, orphan: usize) -> usize {
        let sec = &self.outs[orphan];
        let e = self.slots.len();
        if sec.flags & u64::from(elf::SHF_ALLOC) == 0 {
            return e;
        }
        let proximity = |slot: &Slot| -> i32 {
            match slot {
                Slot::Out(j) if self.outs[*j].inputs => i32::try_from((sec.rank ^ self.outs[*j].rank).leading_zeros()).unwrap_or(32),
                _ => -1,
            }
        };
        let has_inputs = |slot: &Slot| matches!(slot, Slot::Out(j) if self.outs[*j].inputs);
        let (mut max, mut i) = (0, e);
        for j in begin..e {
            let p = proximity(&self.slots[j]);
            let Slot::Out(jo) = self.slots[j] else { continue };
            if p > max || (p == max && p >= 0 && self.outs[jo].rank <= sec.rank) {
                max = p;
                i = j;
            }
        }
        if i == e {
            return e;
        }
        let Slot::Out(anchor) = self.slots[i] else { return e };
        if self.outs[anchor].rank <= sec.rank {
            i += 1;
            let mut j = i;
            while j < e {
                if has_inputs(&self.slots[j]) {
                    if proximity(&self.slots[j]) != max {
                        break;
                    }
                    i = j + 1;
                }
                j += 1;
            }
        } else {
            while i > begin && !has_inputs(&self.slots[i - 1]) {
                i -= 1;
            }
        }
        if !self.slots[i..].iter().any(has_inputs) {
            return e;
        }
        while i < e && matches!(&self.slots[i], Slot::Assign(a) if a.name != ".") {
            i += 1;
        }
        i
    }

    /// 同 lld 的 `getOutputSectionName`：`COMMON` ⇒ `.bss`；有 SECTIONS 时原名；否则 `.text.foo` ⇒ `.text` 等。
    fn orphan_name(name: &str, has_sections: bool) -> &str {
        if name == "COMMON" {
            return ".bss";
        }
        if has_sections {
            return name;
        }
        const PREFIXES: &[&str] = &[".text", ".rodata", ".data.rel.ro", ".data", ".bss.rel.ro", ".bss", ".sdata", ".sbss", ".srodata", ".init_array", ".fini_array", ".tbss", ".tdata"];
        PREFIXES.iter().find(|p| name == **p || name.starts_with(&format!("{p}."))).map_or(name, |p| p)
    }

    /// 定地址：按命令序列走一遍 `.`（输出节、顶层赋值交错）。
    fn layout(&mut self) -> Result<(), Error> {
        let mut dot = 0u64;
        let mut syms: HashMap<String, u64> = HashMap::new();
        let mut lma_offset: Option<i64> = None;
        for slot in self.slots.clone() {
            let idx = match slot {
                Slot::Assign(a) => {
                    self.assign(&a, &mut dot, &mut syms, None)?;
                    continue;
                }
                Slot::Out(idx) => idx,
            };
            let sec = self.outs[idx].script.clone();
            let alloc = self.outs[idx].flags & u64::from(elf::SHF_ALLOC) != 0;
            let mut align = self.outs[idx].align;
            if let Some(a) = sec.as_ref().and_then(|s| s.align.as_ref()) {
                align = align.max(self.eval(a, dot, &syms)?);
            }
            let start = if !alloc {
                0
            } else if let Some(e) = sec.as_ref().and_then(|s| s.addr.as_ref()) {
                self.eval(e, dot, &syms)?
            } else {
                dot.next_multiple_of(align)
            };
            if let Some(e) = sec.as_ref().and_then(|s| s.lma.as_ref()) {
                lma_offset = Some(self.eval(e, start, &syms)?.cast_signed() - start.cast_signed());
            }
            let mut here = start;
            for p in self.outs[idx].pieces.clone() {
                match p {
                    Piece::Input(o, i) => {
                        let s = self.objs[o].sections[i].as_ref().expect("放进来的都有");
                        here = here.next_multiple_of(s.align);
                        self.placed.insert((o, i), Some((idx, here)));
                        here += s.size;
                    }
                    Piece::Assign(a) => self.assign(&a, &mut here, &mut syms, Some(start))?,
                    Piece::Data(n, _) => here += u64::from(n),
                }
            }
            let out = &mut self.outs[idx];
            out.align = align;
            out.addr = start;
            out.size = here - start;
            out.lma = if alloc { start.wrapping_add_signed(lma_offset.unwrap_or(0)) } else { 0 };
            if alloc {
                dot = here;
            }
        }
        for (name, v) in syms {
            self.globals.insert(name.clone(), Def::Script(v));
            if !self.order.contains(&name) {
                self.order.push(name);
            }
        }
        // 节内容：输入节的字节、数据项（LONG 等的值要等地址都定了才算）
        for slot in self.slots.clone() {
            let Slot::Out(idx) = slot else { continue };
            if self.outs[idx].ty == elf::SHT_NOBITS {
                continue;
            }
            let mut data = vec![0u8; usize::try_from(self.outs[idx].size).unwrap_or_default()];
            let start = self.outs[idx].addr;
            let mut here = start;
            for p in self.outs[idx].pieces.clone() {
                match p {
                    Piece::Input(o, i) => {
                        let s = self.objs[o].sections[i].as_ref().expect("放进来的都有");
                        here = here.next_multiple_of(s.align);
                        if s.ty != elf::SHT_NOBITS {
                            let at = usize::try_from(here - start).unwrap_or_default();
                            data[at..at + s.data.len()].copy_from_slice(&s.data);
                        }
                        here += s.size;
                    }
                    Piece::Assign(a) => self.assign(&a, &mut here, &mut HashMap::new(), Some(start))?,
                    Piece::Data(n, e) => {
                        let v = self.eval(&e, here, &HashMap::new())?;
                        let at = usize::try_from(here - start).unwrap_or_default();
                        data[at..at + usize::from(n)].copy_from_slice(&v.to_le_bytes()[..usize::from(n)]);
                        here += u64::from(n);
                    }
                }
            }
            self.outs[idx].data = data;
        }
        self.entry = self.entry()?;
        Ok(())
    }

    /// 执行一条赋值。`section` = 在输出节里（`.` 的赋值只能往前走）。
    fn assign(&self, a: &Assign, dot: &mut u64, syms: &mut HashMap<String, u64>, section: Option<u64>) -> Result<(), Error> {
        let v = self.eval(&a.value, *dot, syms)?;
        let cur = if a.name == "." { *dot } else { syms.get(&a.name).copied().unwrap_or(0) };
        let v = match a.op.compound() {
            None => v,
            Some(op) => op.apply(cur, v)?,
        };
        if a.name == "." {
            if section.is_some() && v < *dot {
                return Err(Error::Script(format!("`.` 不能往回走（{:#x} → {v:#x}）", *dot)));
            }
            *dot = v;
        } else if a.provide {
            // PROVIDE：只在有人引用、又没别处定义时生效
            if !self.globals.contains_key(&a.name) && self.order.contains(&a.name) {
                syms.insert(a.name.clone(), v);
            }
        } else {
            syms.insert(a.name.clone(), v);
        }
        Ok(())
    }

    fn eval(&self, e: &LExpr, dot: u64, syms: &HashMap<String, u64>) -> Result<u64, Error> {
        let ev = |x: &LExpr| self.eval(x, dot, syms);
        Ok(match e {
            LExpr::Num(v) => *v,
            LExpr::Dot => dot,
            LExpr::Sym(name) => match syms.get(name) {
                Some(v) => *v,
                None => self.global(name).ok_or_else(|| Error::Script(format!("脚本里的 `{name}` 还没定义")))?,
            },
            LExpr::Neg(a) => ev(a)?.wrapping_neg(),
            LExpr::Not(a) => !ev(a)?,
            LExpr::Bin(op, a, b) => op.apply(ev(a)?, ev(b)?)?,
            LExpr::Cond(c, a, b) => {
                if ev(c)? != 0 {
                    ev(a)?
                } else {
                    ev(b)?
                }
            }
            LExpr::Align(a, base) => {
                let a = ev(a)?.max(1);
                let base = match base {
                    Some(b) => ev(b)?,
                    None => dot,
                };
                base.next_multiple_of(a)
            }
            LExpr::Of(f, name) => {
                let out = self.outs.iter().find(|o| o.name == *name).ok_or_else(|| Error::Script(format!("{f:?}({name})：没有这个输出节")))?;
                match f {
                    script::Of::Addr => out.addr,
                    script::Of::Sizeof => out.size,
                    script::Of::Loadaddr => out.lma,
                    script::Of::Alignof => out.align,
                }
            }
            LExpr::Defined(name) => u64::from(syms.contains_key(name) || self.globals.contains_key(name)),
            LExpr::Max(a, b) => ev(a)?.max(ev(b)?),
            LExpr::Min(a, b) => ev(a)?.min(ev(b)?),
        })
    }

    /// 入口：`-e` > `ENTRY` > `_start`；都没有就 0（同 lld，只警告）。
    fn entry(&self) -> Result<u64, Error> {
        let parse = |s: &str| {
            let s = s.trim();
            s.strip_prefix("0x").map_or_else(|| s.parse().ok(), |h| u64::from_str_radix(h, 16).ok())
        };
        if let Some(e) = &self.opts.entry {
            return parse(e).or_else(|| self.global(e)).ok_or_else(|| Error::Link(format!("入口 `{e}` 没定义")));
        }
        if let Some(e) = &self.script.entry {
            return match e {
                LExpr::Sym(name) => Ok(self.global(name).unwrap_or_else(|| {
                    eprintln!("riscvc ld: 警告：找不到入口符号 `{name}`，入口记 0");
                    0
                })),
                e => self.eval(e, 0, &HashMap::new()),
            };
        }
        Ok(self.global("_start").unwrap_or(0))
    }

    /// 全局符号的地址（未定义 ⇒ None）。
    fn global(&self, name: &str) -> Option<u64> {
        match self.globals.get(name)? {
            Def::Script(v) => Some(*v),
            Def::Obj(o, i) => self.sym_value(*o, &self.objs[*o].syms[*i]),
        }
    }

    /// 某文件里一个符号（按它自己的定义）的地址。
    fn sym_value(&self, o: usize, s: &InSym) -> Option<u64> {
        match s.place {
            Place::Abs => Some(s.value),
            Place::Section(i) => self.placed.get(&(o, i)).map(|p| p.map_or(0, |(_, a)| a + s.value)),
            Place::Undef | Place::Common(_) => None,
        }
    }

    /// 重定位里引用的符号 ⇒ 地址；`None` = 未定义（弱引用或 `--unresolved-symbols=ignore-all`）。
    fn target(&self, o: usize, idx: usize) -> Result<Option<u64>, Error> {
        let s = &self.objs[o].syms[idx];
        if s.local() {
            return self.sym_value(o, s).map(Some).ok_or_else(|| Error::Link(format!("{}：局部符号 `{}` 没地址", self.objs[o].name, s.name)));
        }
        match self.global(&s.name) {
            Some(v) => Ok(Some(v)),
            None if s.bind == elf::STB_WEAK || self.opts.allow_undefined => Ok(None),
            None => Err(Error::Link(format!("未定义的符号 `{}`（{} 引用）", s.name, self.objs[o].name))),
        }
    }
}
