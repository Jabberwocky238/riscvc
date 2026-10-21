//! XTheadCmo：缓存维护（解释器里都是空操作：没有缓存模型）。
use super::XtForm;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadcmo", form = XtForm)]
pub enum XTheadCmo {
    #[isa("th.dcache.csw", Rs1, 0x0210000b, exec = |_c, _i| ())]
    DcacheCsw,
    #[isa("th.dcache.isw", Rs1, 0x0220000b, exec = |_c, _i| ())]
    DcacheIsw,
    #[isa("th.dcache.cisw", Rs1, 0x0230000b, exec = |_c, _i| ())]
    DcacheCisw,
    #[isa("th.dcache.cval1", Rs1, 0x0240000b, exec = |_c, _i| ())]
    DcacheCval1,
    #[isa("th.dcache.cva", Rs1, 0x0250000b, exec = |_c, _i| ())]
    DcacheCva,
    #[isa("th.dcache.iva", Rs1, 0x0260000b, exec = |_c, _i| ())]
    DcacheIva,
    #[isa("th.dcache.civa", Rs1, 0x0270000b, exec = |_c, _i| ())]
    DcacheCiva,
    #[isa("th.dcache.cpal1", Rs1, 0x0280000b, exec = |_c, _i| ())]
    DcacheCpal1,
    #[isa("th.dcache.cpa", Rs1, 0x0290000b, exec = |_c, _i| ())]
    DcacheCpa,
    #[isa("th.dcache.ipa", Rs1, 0x02a0000b, exec = |_c, _i| ())]
    DcacheIpa,
    #[isa("th.dcache.cipa", Rs1, 0x02b0000b, exec = |_c, _i| ())]
    DcacheCipa,
    #[isa("th.icache.iva", Rs1, 0x0300000b, exec = |_c, _i| ())]
    IcacheIva,
    #[isa("th.icache.ipa", Rs1, 0x0380000b, exec = |_c, _i| ())]
    IcacheIpa,
    #[isa("th.dcache.call", Fixed, 0x0010000b, exec = |_c, _i| ())]
    DcacheCall,
    #[isa("th.dcache.iall", Fixed, 0x0020000b, exec = |_c, _i| ())]
    DcacheIall,
    #[isa("th.dcache.ciall", Fixed, 0x0030000b, exec = |_c, _i| ())]
    DcacheCiall,
    #[isa("th.icache.iall", Fixed, 0x0100000b, exec = |_c, _i| ())]
    IcacheIall,
    #[isa("th.icache.ialls", Fixed, 0x0110000b, exec = |_c, _i| ())]
    IcacheIalls,
    #[isa("th.l2cache.call", Fixed, 0x0150000b, exec = |_c, _i| ())]
    L2cacheCall,
    #[isa("th.l2cache.iall", Fixed, 0x0160000b, exec = |_c, _i| ())]
    L2cacheIall,
    #[isa("th.l2cache.ciall", Fixed, 0x0170000b, exec = |_c, _i| ())]
    L2cacheCiall,
}
