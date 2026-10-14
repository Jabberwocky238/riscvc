; ModuleID = '../llvm-project/compiler-rt/lib/builtins/comparesf2.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/comparesf2.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@__cmpsf2 = dso_local alias i32 (float, float), ptr @__lesf2
@__eqsf2 = dso_local alias i32 (float, float), ptr @__lesf2
@__ltsf2 = dso_local alias i32 (float, float), ptr @__lesf2
@__nesf2 = dso_local alias i32 (float, float), ptr @__lesf2
@__gtsf2 = dso_local alias i32 (float, float), ptr @__gesf2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local range(i32 -1, 2) i32 @__lesf2(float noundef %a, float noundef %b) #0 {
entry:
  %0 = bitcast float %a to i32
  %1 = bitcast float %b to i32
  %2 = tail call float @llvm.fabs.f32(float %a)
  %and.i = bitcast float %2 to i32
  %3 = tail call float @llvm.fabs.f32(float %b)
  %and2.i = bitcast float %3 to i32
  %cmp.i = icmp samesign ugt i32 %and.i, 2139095040
  %cmp3.i = icmp samesign ugt i32 %and2.i, 2139095040
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %__leXf2__.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %or.i = or i32 %and2.i, %and.i
  %cmp4.i = icmp eq i32 %or.i, 0
  br i1 %cmp4.i, label %__leXf2__.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %and7.i = and i32 %1, %0
  %cmp8.i = icmp sgt i32 %and7.i, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.else15.i

if.then9.i:                                       ; preds = %if.end6.i
  %cmp10.i = icmp slt i32 %0, %1
  br i1 %cmp10.i, label %__leXf2__.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then9.i
  %cmp12.i = icmp ne i32 %0, %1
  %..i = zext i1 %cmp12.i to i32
  br label %__leXf2__.exit

if.else15.i:                                      ; preds = %if.end6.i
  %cmp16.i = icmp sgt i32 %0, %1
  br i1 %cmp16.i, label %__leXf2__.exit, label %if.else18.i

if.else18.i:                                      ; preds = %if.else15.i
  %cmp19.i = icmp ne i32 %0, %1
  %.37.i = zext i1 %cmp19.i to i32
  br label %__leXf2__.exit

__leXf2__.exit:                                   ; preds = %entry, %if.end.i, %if.then9.i, %if.else.i, %if.else15.i, %if.else18.i
  %retval.0.i = phi i32 [ -1, %if.else15.i ], [ 1, %entry ], [ 0, %if.end.i ], [ %..i, %if.else.i ], [ -1, %if.then9.i ], [ %.37.i, %if.else18.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local range(i32 -1, 2) i32 @__gesf2(float noundef %a, float noundef %b) #0 {
entry:
  %0 = bitcast float %a to i32
  %1 = bitcast float %b to i32
  %2 = tail call float @llvm.fabs.f32(float %a)
  %and.i = bitcast float %2 to i32
  %3 = tail call float @llvm.fabs.f32(float %b)
  %and2.i = bitcast float %3 to i32
  %cmp.i = icmp samesign ugt i32 %and.i, 2139095040
  %cmp3.i = icmp samesign ugt i32 %and2.i, 2139095040
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %__geXf2__.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %or.i = or i32 %and2.i, %and.i
  %cmp4.i = icmp eq i32 %or.i, 0
  br i1 %cmp4.i, label %__geXf2__.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %and7.i = and i32 %1, %0
  %cmp8.i = icmp sgt i32 %and7.i, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.else15.i

if.then9.i:                                       ; preds = %if.end6.i
  %cmp10.i = icmp slt i32 %0, %1
  br i1 %cmp10.i, label %__geXf2__.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then9.i
  %cmp12.i = icmp ne i32 %0, %1
  %..i = zext i1 %cmp12.i to i32
  br label %__geXf2__.exit

if.else15.i:                                      ; preds = %if.end6.i
  %cmp16.i = icmp sgt i32 %0, %1
  br i1 %cmp16.i, label %__geXf2__.exit, label %if.else18.i

if.else18.i:                                      ; preds = %if.else15.i
  %cmp19.i = icmp ne i32 %0, %1
  %.37.i = zext i1 %cmp19.i to i32
  br label %__geXf2__.exit

__geXf2__.exit:                                   ; preds = %entry, %if.end.i, %if.then9.i, %if.else.i, %if.else15.i, %if.else18.i
  %retval.0.i = phi i32 [ -1, %if.else15.i ], [ -1, %entry ], [ 0, %if.end.i ], [ %..i, %if.else.i ], [ -1, %if.then9.i ], [ %.37.i, %if.else18.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local range(i32 0, 2) i32 @__unordsf2(float noundef %a, float noundef %b) local_unnamed_addr #0 {
entry:
  %0 = tail call float @llvm.fabs.f32(float %a)
  %and.i = bitcast float %0 to i32
  %1 = tail call float @llvm.fabs.f32(float %b)
  %and2.i = bitcast float %1 to i32
  %cmp.i = icmp samesign ugt i32 %and.i, 2139095040
  %cmp3.i = icmp samesign ugt i32 %and2.i, 2139095040
  %2 = select i1 %cmp.i, i1 true, i1 %cmp3.i
  %lor.ext.i = zext i1 %2 to i32
  ret i32 %lor.ext.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
