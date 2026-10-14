//! XTheadSync：同步与 TLB（解释器里都是空操作）。
use super::XtForm;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadsync", feature = "xtheadsync", form = XtForm)]
pub enum XTheadSync {
    #[isa("th.sfence.vmas", Sfence, 0x0400_000b, exec = |_c, _i| ())]
    SfenceVmas,
    #[isa("th.sync", Fixed, 0x0180_000b, exec = |_c, _i| ())]
    Sync,
    #[isa("th.sync.s", Fixed, 0x0190_000b, exec = |_c, _i| ())]
    SyncS,
    #[isa("th.sync.i", Fixed, 0x01a0_000b, exec = |_c, _i| ())]
    SyncI,
    #[isa("th.sync.is", Fixed, 0x01b0_000b, exec = |_c, _i| ())]
    SyncIs,
}
