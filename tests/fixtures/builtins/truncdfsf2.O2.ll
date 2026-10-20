; ModuleID = '../llvm-project/compiler-rt/lib/builtins/truncdfsf2.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/truncdfsf2.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local float @__truncdfsf2(double noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast double %a to i64
  %and.i.i = lshr i64 %0, 52
  %shr.i124.i = and i64 %and.i.i, 2047
  %and.i125.i = and i64 %0, 4503599627370495
  %conv4.i = trunc nuw nsw i64 %shr.i124.i to i32
  %1 = add nsw i32 %conv4.i, -897
  %or.cond.i = icmp ult i32 %1, 254
  br i1 %or.cond.i, label %if.then.i, label %if.else23.i

if.then.i:                                        ; preds = %entry
  %shr.i = lshr i64 %and.i125.i, 29
  %conv8.i = trunc nuw nsw i64 %shr.i to i32
  %and.i = and i64 %0, 536870911
  %cmp9.i = icmp samesign ugt i64 %and.i, 268435456
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.then.i
  %inc.i = add nuw nsw i32 %conv8.i, 1
  br label %if.end17.i

if.else.i:                                        ; preds = %if.then.i
  %cmp12.i = icmp eq i64 %and.i, 268435456
  br i1 %cmp12.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %if.else.i
  %and15.i = and i32 %conv8.i, 1
  %add16.i = add nuw nsw i32 %and15.i, %conv8.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.else.i, %if.then11.i
  %dstSigFrac.0.i = phi i32 [ %inc.i, %if.then11.i ], [ %add16.i, %if.then14.i ], [ %conv8.i, %if.else.i ]
  %cmp18.i = icmp samesign ugt i32 %dstSigFrac.0.i, 8388607
  %spec.select.i = select i1 %cmp18.i, i32 0, i32 %dstSigFrac.0.i
  %spec.select121.v.i = select i1 %cmp18.i, i32 -895, i32 -896
  %spec.select121.i = add nsw i32 %spec.select121.v.i, %conv4.i
  br label %__truncXfYf2__.exit

if.else23.i:                                      ; preds = %entry
  %cmp24.i = icmp eq i64 %shr.i124.i, 2047
  %tobool.i = icmp ne i64 %and.i125.i, 0
  %or.cond86.i = and i1 %tobool.i, %cmp24.i
  br i1 %or.cond86.i, label %if.then27.i, label %if.else33.i

if.then27.i:                                      ; preds = %if.else23.i
  %and28.i = lshr i64 %and.i125.i, 29
  %2 = trunc nuw nsw i64 %and28.i to i32
  %conv32.i = or i32 %2, 4194304
  br label %__truncXfYf2__.exit

if.else33.i:                                      ; preds = %if.else23.i
  %cmp35.i = icmp samesign ugt i32 %conv4.i, 1150
  br i1 %cmp35.i, label %__truncXfYf2__.exit, label %if.else38.i

if.else38.i:                                      ; preds = %if.else33.i
  %tobool41.not.i = icmp eq i64 %shr.i124.i, 0
  %or43.i = or disjoint i64 %and.i125.i, 4503599627370496
  %.pn.i = select i1 %tobool41.not.i, i32 896, i32 897
  %significand.0.i = select i1 %tobool41.not.i, i64 %and.i125.i, i64 %or43.i
  %shift.0.i = sub nsw i32 %.pn.i, %conv4.i
  %cmp46.i = icmp sgt i32 %shift.0.i, 52
  br i1 %cmp46.i, label %__truncXfYf2__.exit, label %if.else49.i

if.else49.i:                                      ; preds = %if.else38.i
  %tobool50.not.i = icmp eq i32 %.pn.i, %conv4.i
  br i1 %tobool50.not.i, label %land.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.else49.i
  %sub51.i = sub nsw i32 64, %shift.0.i
  %sh_prom.i = zext nneg i32 %sub51.i to i64
  %shl.i = shl i64 %significand.0.i, %sh_prom.i
  %cmp52.i = icmp ne i64 %shl.i, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.else49.i
  %3 = phi i1 [ false, %if.else49.i ], [ %cmp52.i, %land.rhs.i ]
  %sh_prom54.i = zext nneg i32 %shift.0.i to i64
  %shr55.i = lshr i64 %significand.0.i, %sh_prom54.i
  %conv56.i = zext i1 %3 to i64
  %shr58.i = lshr i64 %shr55.i, 29
  %conv59.i = trunc nuw nsw i64 %shr58.i to i32
  %shr55.masked.i = and i64 %shr55.i, 536870911
  %and61.i = or i64 %shr55.masked.i, %conv56.i
  %cmp62.i = icmp samesign ugt i64 %and61.i, 268435456
  br i1 %cmp62.i, label %if.then64.i, label %if.else66.i

if.then64.i:                                      ; preds = %land.end.i
  %inc65.i = add nuw nsw i32 %conv59.i, 1
  br label %if.end73.i

if.else66.i:                                      ; preds = %land.end.i
  %cmp67.i = icmp eq i64 %and61.i, 268435456
  br i1 %cmp67.i, label %if.then69.i, label %if.end73.i

if.then69.i:                                      ; preds = %if.else66.i
  %and70.i = and i32 %conv59.i, 1
  %add71.i = add nuw nsw i32 %and70.i, %conv59.i
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then69.i, %if.else66.i, %if.then64.i
  %dstSigFrac.2.i = phi i32 [ %inc65.i, %if.then64.i ], [ %add71.i, %if.then69.i ], [ %conv59.i, %if.else66.i ]
  %cmp74.i = icmp samesign ugt i32 %dstSigFrac.2.i, 8388607
  %xor78.i = xor i32 %dstSigFrac.2.i, 8388608
  %spec.select122.i = select i1 %cmp74.i, i32 %xor78.i, i32 %dstSigFrac.2.i
  %spec.select123.i = zext i1 %cmp74.i to i32
  br label %__truncXfYf2__.exit

__truncXfYf2__.exit:                              ; preds = %if.end17.i, %if.then27.i, %if.else33.i, %if.else38.i, %if.end73.i
  %dstSigFrac.5.i = phi i32 [ %spec.select.i, %if.end17.i ], [ %conv32.i, %if.then27.i ], [ 0, %if.else33.i ], [ %spec.select122.i, %if.end73.i ], [ 0, %if.else38.i ]
  %dstExp.3.i = phi i32 [ %spec.select121.i, %if.end17.i ], [ 255, %if.then27.i ], [ 255, %if.else33.i ], [ %spec.select123.i, %if.end73.i ], [ 0, %if.else38.i ]
  %sh.diff.i = lshr i64 %0, 32
  %tr.sh.diff.i = trunc nuw i64 %sh.diff.i to i32
  %shl.i.i = and i32 %tr.sh.diff.i, -2147483648
  %shl1.i.i = shl nuw nsw i32 %dstExp.3.i, 23
  %or.i.i = or disjoint i32 %shl1.i.i, %shl.i.i
  %or2.i.i = or i32 %or.i.i, %dstSigFrac.5.i
  %4 = bitcast i32 %or2.i.i to float
  ret float %4
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

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
