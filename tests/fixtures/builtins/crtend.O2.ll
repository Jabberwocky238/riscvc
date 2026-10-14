; ModuleID = '../llvm-project/compiler-rt/lib/builtins/crtend.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/crtend.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@__EH_FRAME_LIST_END__ = hidden constant [1 x i32] zeroinitializer, section ".eh_frame", align 4
@__CTOR_LIST_END__ = hidden global [1 x ptr] zeroinitializer, section ".ctors", align 4
@__DTOR_LIST_END__ = hidden global [1 x ptr] zeroinitializer, section ".dtors", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__CTOR_LIST_END__, ptr @__DTOR_LIST_END__, ptr @__EH_FRAME_LIST_END__], section "llvm.metadata"

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32f"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 0}
!5 = !{!"clang version 22.1.8"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
