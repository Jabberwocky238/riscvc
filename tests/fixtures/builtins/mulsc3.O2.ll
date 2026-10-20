; ModuleID = '../llvm-project/compiler-rt/lib/builtins/mulsc3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/mulsc3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local { float, float } @__mulsc3(float noundef %__a, float noundef %__b, float noundef %__c, float noundef %__d) local_unnamed_addr #0 {
entry:
  %mul = fmul float %__a, %__c
  %mul1 = fmul float %__b, %__d
  %mul2 = fmul float %__a, %__d
  %mul3 = fmul float %__b, %__c
  %sub = fsub float %mul, %mul1
  %add = fadd float %mul3, %mul2
  %0 = fcmp uno float %sub, 0.000000e+00
  %1 = fcmp uno float %add, 0.000000e+00
  %or.cond = and i1 %0, %1
  br i1 %or.cond, label %if.then, label %if.end49

if.then:                                          ; preds = %entry
  %2 = tail call float @llvm.fabs.f32(float %__a)
  %3 = fcmp oeq float %2, 0x7FF0000000000000
  %4 = tail call float @llvm.fabs.f32(float %__b)
  %5 = fcmp oeq float %4, 0x7FF0000000000000
  %or.cond98 = or i1 %3, %5
  br i1 %or.cond98, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.then
  %conv = uitofp i1 %3 to float
  %6 = tail call float @llvm.copysign.f32(float %conv, float %__a)
  %conv8 = uitofp i1 %5 to float
  %7 = tail call float @llvm.copysign.f32(float %conv8, float %__b)
  %8 = fcmp uno float %__c, 0.000000e+00
  %9 = tail call float @llvm.copysign.f32(float 0.000000e+00, float %__c)
  %__c.addr.0 = select i1 %8, float %9, float %__c
  %10 = fcmp uno float %__d, 0.000000e+00
  %11 = tail call float @llvm.copysign.f32(float 0.000000e+00, float %__d)
  %__d.addr.0 = select i1 %10, float %11, float %__d
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then6
  %__d.addr.1 = phi float [ %__d.addr.0, %if.then6 ], [ %__d, %if.then ]
  %__c.addr.1 = phi float [ %__c.addr.0, %if.then6 ], [ %__c, %if.then ]
  %__b.addr.0 = phi float [ %7, %if.then6 ], [ %__b, %if.then ]
  %__a.addr.0 = phi float [ %6, %if.then6 ], [ %__a, %if.then ]
  %12 = tail call float @llvm.fabs.f32(float %__c.addr.1)
  %13 = fcmp oeq float %12, 0x7FF0000000000000
  %14 = tail call float @llvm.fabs.f32(float %__d.addr.1)
  %15 = fcmp oeq float %14, 0x7FF0000000000000
  %or.cond100 = or i1 %15, %13
  br i1 %or.cond100, label %if.end23.thread, label %if.end23

if.end23.thread:                                  ; preds = %if.end12
  %conv16 = uitofp i1 %13 to float
  %16 = tail call float @llvm.copysign.f32(float %conv16, float %__c.addr.1)
  %conv18 = uitofp i1 %15 to float
  %17 = tail call float @llvm.copysign.f32(float %conv18, float %__d.addr.1)
  %18 = fcmp uno float %__a.addr.0, 0.000000e+00
  %19 = tail call float @llvm.copysign.f32(float 0.000000e+00, float %__a.addr.0)
  %__a.addr.1 = select i1 %18, float %19, float %__a.addr.0
  %20 = fcmp uno float %__b.addr.0, 0.000000e+00
  %21 = tail call float @llvm.copysign.f32(float 0.000000e+00, float %__b.addr.0)
  %__b.addr.1 = select i1 %20, float %21, float %__b.addr.0
  br label %if.then39

if.end23:                                         ; preds = %if.end12
  br i1 %or.cond98, label %if.then39, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end23
  %22 = tail call float @llvm.fabs.f32(float %mul)
  %23 = fcmp oeq float %22, 0x7FF0000000000000
  %24 = tail call float @llvm.fabs.f32(float %mul1)
  %25 = fcmp oeq float %24, 0x7FF0000000000000
  %or.cond102 = or i1 %23, %25
  %26 = tail call float @llvm.fabs.f32(float %mul2)
  %27 = fcmp oeq float %26, 0x7FF0000000000000
  %or.cond104 = or i1 %27, %or.cond102
  %28 = tail call float @llvm.fabs.f32(float %mul3)
  %29 = fcmp oeq float %28, 0x7FF0000000000000
  %or.cond106 = or i1 %29, %or.cond104
  br i1 %or.cond106, label %if.then28, label %if.end49

if.then28:                                        ; preds = %land.lhs.true24
  %30 = fcmp uno float %__a.addr.0, 0.000000e+00
  %31 = tail call float @llvm.copysign.f32(float 0.000000e+00, float %__a.addr.0)
  %__a.addr.3 = select i1 %30, float %31, float %__a.addr.0
  %32 = fcmp uno float %__b.addr.0, 0.000000e+00
  %33 = tail call float @llvm.copysign.f32(float 0.000000e+00, float %__b.addr.0)
  %__b.addr.3 = select i1 %32, float %33, float %__b.addr.0
  %34 = fcmp uno float %__c.addr.1, 0.000000e+00
  %35 = tail call float @llvm.copysign.f32(float 0.000000e+00, float %__c.addr.1)
  %__c.addr.3 = select i1 %34, float %35, float %__c.addr.1
  %36 = fcmp uno float %__d.addr.1, 0.000000e+00
  %37 = tail call float @llvm.copysign.f32(float 0.000000e+00, float %__d.addr.1)
  %__d.addr.3 = select i1 %36, float %37, float %__d.addr.1
  br label %if.then39

if.then39:                                        ; preds = %if.end23.thread, %if.end23, %if.then28
  %__d.addr.4 = phi float [ %__d.addr.1, %if.end23 ], [ %__d.addr.3, %if.then28 ], [ %17, %if.end23.thread ]
  %__c.addr.4 = phi float [ %__c.addr.1, %if.end23 ], [ %__c.addr.3, %if.then28 ], [ %16, %if.end23.thread ]
  %__b.addr.4 = phi float [ %__b.addr.0, %if.end23 ], [ %__b.addr.3, %if.then28 ], [ %__b.addr.1, %if.end23.thread ]
  %__a.addr.4 = phi float [ %__a.addr.0, %if.end23 ], [ %__a.addr.3, %if.then28 ], [ %__a.addr.1, %if.end23.thread ]
  %38 = fneg float %__d.addr.4
  %neg = fmul float %__b.addr.4, %38
  %39 = tail call float @llvm.fmuladd.f32(float %__a.addr.4, float %__c.addr.4, float %neg)
  %mul42 = fmul float %39, 0x7FF0000000000000
  %mul45 = fmul float %__c.addr.4, %__b.addr.4
  %40 = tail call float @llvm.fmuladd.f32(float %__a.addr.4, float %__d.addr.4, float %mul45)
  %mul46 = fmul float %40, 0x7FF0000000000000
  br label %if.end49

if.end49:                                         ; preds = %if.then39, %land.lhs.true24, %entry
  %z.sroa.6.1 = phi float [ %add, %entry ], [ %mul46, %if.then39 ], [ %add, %land.lhs.true24 ]
  %z.sroa.0.1 = phi float [ %sub, %entry ], [ %mul42, %if.then39 ], [ %sub, %land.lhs.true24 ]
  %.fca.0.insert = insertvalue { float, float } poison, float %z.sroa.0.1, 0
  %.fca.1.insert = insertvalue { float, float } %.fca.0.insert, float %z.sroa.6.1, 1
  ret { float, float } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
