//! `SHF_MERGE` 节的去重（同 lld 缺省 `-O1` 的 `MergeNoTailSection`）。
//!
//! ```text
//! 一个输出节里能合并的输入节（SHF_MERGE、项长 ≠ 0、大小 ≠ 0）按（标志, 项长, 字符串节再加对齐）分组；
//! 每组合成一个新的输入节，放在组里第一个成员的位置（OutputSection::finalizeInputSections）。
//! 切片：字符串节到 NUL 为止（一片含结尾的 NUL），否则按项长；哈希 = (xxh3_64(不含 NUL 的串 / 一项) as u32) >> 1。
//! 32 个分片按哈希的高 5 位分；片内按出现次序去重、按对齐排；各片依次接上（非空的片之间按对齐补齐）。
//! ```
//!
//! 成员节里的位置 ⇒ 合成节里的位置：找所在的片（片起点 ≤ 偏移的最后一片），片的输出偏移 + 片内偏移。
use super::input::{InSec, InSym, Obj, Place};
use super::{Linker, Piece};
use object::elf;
use std::collections::HashMap;
use xxhash_rust::xxh3::xxh3_64;

/// 分片数（同 lld）。
const SHARDS: usize = 32;

/// 一个成员节：合成节在哪、各片（输入起点, 输出偏移）。
#[derive(Clone, Debug)]
pub(super) struct Member {
    pub(super) syn: (usize, usize),
    pieces: Vec<(u64, u64)>,
}

impl Member {
    /// 成员节里的偏移 ⇒ 合成节里的偏移。
    #[must_use]
    pub(super) fn map(&self, off: u64) -> u64 {
        let k = self.pieces.partition_point(|&(input, _)| input <= off).saturating_sub(1);
        self.pieces.get(k).map_or(off, |&(input, output)| output + (off - input))
    }
}

/// 一组：合成节的属性与成员（文件, 节号）。
struct Group {
    flags: u64,
    entsize: u64,
    align: u64,
    ty: u32,
    name: String,
    members: Vec<(usize, usize)>,
    /// 合成节在合成文件里的节号。
    index: usize,
}

/// 一个分片：内容、（片数据 ⇒ 片内偏移）。
#[derive(Default)]
struct Shard {
    data: Vec<u8>,
    seen: HashMap<Vec<u8>, u64>,
}

impl Shard {
    /// 加一片（有了就回原偏移）：起点按对齐。
    fn add(&mut self, piece: &[u8], align: u64) -> u64 {
        if let Some(&at) = self.seen.get(piece) {
            return at;
        }
        let at = (self.data.len() as u64).next_multiple_of(align.max(1));
        self.data.resize(usize::try_from(at).unwrap_or_default(), 0);
        self.data.extend_from_slice(piece);
        self.seen.insert(piece.to_vec(), at);
        at
    }
}

impl InSec {
    /// lld 的 shouldMerge（`-O1`）：SHF_MERGE、项长 ≠ 0、大小 ≠ 0、不可写、有内容。
    fn mergeable(&self) -> bool {
        self.flags & u64::from(elf::SHF_MERGE) != 0 && self.entsize != 0 && self.size != 0 && self.flags & u64::from(elf::SHF_WRITE) == 0 && self.ty != elf::SHT_NOBITS && self.size.is_multiple_of(self.entsize)
    }

    /// 切片：（起点, 哈希的 31 位）。
    fn pieces(&self) -> Vec<(u64, u32)> {
        let (d, n) = (&self.data, usize::try_from(self.entsize).unwrap_or(1).max(1));
        let hash = |b: &[u8]| (xxh3_64(b) as u32) >> 1;
        let mut out = Vec::new();
        if self.flags & u64::from(elf::SHF_STRINGS) != 0 {
            let mut p = 0;
            while p < d.len() {
                // 到第一个全 0 的项为止（项长 1 = strlen）
                let mut size = 0;
                while p + size + n <= d.len() && d[p + size..p + size + n].iter().any(|&c| c != 0) {
                    size += n;
                }
                out.push((p as u64, hash(&d[p..p + size])));
                p += size + n;
            }
        } else {
            for p in (0..d.len()).step_by(n) {
                out.push((p as u64, hash(&d[p..p + n])));
            }
        }
        out
    }
}

impl Linker {
    /// ⭐ 合并各输出节里能合并的输入节（在 place 之后、layout 之前）。
    pub(super) fn merge(&mut self) {
        let file = self.objs.len();
        let mut syn = Obj { name: String::from("<merge>"), e_flags: 0, sections: vec![None], syms: vec![InSym { name: String::new(), place: Place::Undef, value: 0, size: 0, bind: 0, ty: 0, other: 0 }] };
        for out in 0..self.outs.len() {
            let mut groups: Vec<Group> = Vec::new();
            let mut pieces = Vec::new();
            for p in core::mem::take(&mut self.outs[out].pieces) {
                let Piece::Input(o, i) = p else {
                    pieces.push(p);
                    continue;
                };
                let s = self.objs[o].sections[i].as_ref().expect("放进来的都有");
                if !s.mergeable() {
                    pieces.push(p);
                    continue;
                }
                let strings = s.flags & u64::from(elf::SHF_STRINGS) != 0;
                let at = groups.iter().position(|g| g.flags == s.flags && g.entsize == s.entsize && (g.align == s.align || !strings));
                let g = match at {
                    Some(g) => g,
                    None => {
                        let index = syn.sections.len();
                        syn.sections.push(None);
                        groups.push(Group { flags: s.flags, entsize: s.entsize, align: s.align, ty: s.ty, name: s.name.clone(), members: Vec::new(), index });
                        pieces.push(Piece::Input(file, index));
                        groups.len() - 1
                    }
                };
                groups[g].align = groups[g].align.max(s.align);
                groups[g].members.push((o, i));
            }
            self.outs[out].pieces = pieces;
            for g in groups {
                let sec = self.finalize_merge(&g, file);
                syn.sections[g.index] = Some(sec);
            }
        }
        if syn.sections.len() > 1 {
            self.objs.push(syn);
        }
    }

    /// 一组 ⇒ 合成节的内容，并记下各成员的片映射（MergeNoTailSection::finalizeContents）。
    fn finalize_merge(&mut self, g: &Group, file: usize) -> InSec {
        let mut shards: Vec<Shard> = (0..SHARDS).map(|_| Shard::default()).collect();
        // （成员, 片的输入起点, 片号, 片内偏移）
        let mut placed: Vec<((usize, usize), u64, usize, u64)> = Vec::new();
        for &(o, i) in &g.members {
            let s = self.objs[o].sections[i].as_ref().expect("成员都有");
            let ps = s.pieces();
            for (k, &(start, hash)) in ps.iter().enumerate() {
                let end = ps.get(k + 1).map_or(s.data.len() as u64, |p| p.0);
                let shard = (hash >> 26) as usize;
                let at = shards[shard].add(&s.data[usize::try_from(start).unwrap_or_default()..usize::try_from(end).unwrap_or_default()], g.align);
                placed.push(((o, i), start, shard, at));
            }
        }
        // 各片的起点：非空的按对齐接上
        let mut offsets = [0u64; SHARDS];
        let mut off = 0u64;
        for (k, s) in shards.iter().enumerate() {
            if !s.data.is_empty() {
                off = off.next_multiple_of(g.align.max(1));
            }
            offsets[k] = off;
            off += s.data.len() as u64;
        }
        let mut data = vec![0u8; usize::try_from(off).unwrap_or_default()];
        for (k, s) in shards.iter().enumerate() {
            let at = usize::try_from(offsets[k]).unwrap_or_default();
            data[at..at + s.data.len()].copy_from_slice(&s.data);
        }
        for &(o, i) in &g.members {
            let pieces = placed.iter().filter(|p| p.0 == (o, i)).map(|&(_, start, shard, at)| (start, offsets[shard] + at)).collect();
            self.merged.insert((o, i), Member { syn: (file, g.index), pieces });
        }
        InSec { name: g.name.clone(), ty: g.ty, flags: g.flags, align: g.align, entsize: g.entsize, size: off, data, relocs: Vec::new() }
    }
}
