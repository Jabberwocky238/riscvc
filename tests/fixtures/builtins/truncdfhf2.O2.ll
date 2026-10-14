; ModuleID = '../llvm-project/compiler-rt/lib/builtins/truncdfhf2.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/truncdfhf2.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local zeroext i16 @__truncdfhf2(double noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast double %a to i64
  %and.i.i = lshr i64 %0, 52
  %shr.i139.i = and i64 %and.i.i, 2047
  %and.i140.i = and i64 %0, 4503599627370495
  %conv4.i = trunc nuw nsw i64 %shr.i139.i to i32
  %1 = add nsw i32 %conv4.i, -1009
  %or.cond.i = icmp ult i32 %1, 30
  br i1 %or.cond.i, label %if.then.i, label %if.else32.i

if.then.i:                                        ; preds = %entry
  %2 = trunc nuw nsw i64 %shr.i139.i to i16
  %shr.i = lshr i64 %and.i140.i, 42
  %conv9.i = trunc nuw nsw i64 %shr.i to i16
  %and.i = and i64 %0, 4398046511103
  %cmp10.i = icmp samesign ugt i64 %and.i, 2199023255552
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.then.i
  %inc.i = add nuw nsw i16 %conv9.i, 1
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then.i
  %cmp13.i = icmp eq i64 %and.i, 2199023255552
  br i1 %cmp13.i, label %if.then15.i, label %if.end21.i

if.then15.i:                                      ; preds = %if.else.i
  %and17.i = and i16 %conv9.i, 1
  %add19.i = add nuw nsw i16 %and17.i, %conv9.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then15.i, %if.else.i, %if.then12.i
  %dstSigFrac.0.i = phi i16 [ %inc.i, %if.then12.i ], [ %add19.i, %if.then15.i ], [ %conv9.i, %if.else.i ]
  %cmp23.i = icmp samesign ugt i16 %dstSigFrac.0.i, 1023
  %dstSigFrac.1.i = select i1 %cmp23.i, i16 0, i16 %dstSigFrac.0.i
  %dstExp.0.v.i = select i1 %cmp23.i, i16 -1007, i16 -1008
  %dstExp.0.i = add nsw i16 %dstExp.0.v.i, %2
  br label %__truncXfYf2__.exit

if.else32.i:                                      ; preds = %entry
  %cmp33.i = icmp eq i64 %shr.i139.i, 2047
  %tobool.i = icmp ne i64 %and.i140.i, 0
  %or.cond103.i = and i1 %tobool.i, %cmp33.i
  br i1 %or.cond103.i, label %if.then36.i, label %if.else42.i

if.then36.i:                                      ; preds = %if.else32.i
  %and37.i = lshr i64 %and.i140.i, 42
  %3 = trunc nuw nsw i64 %and37.i to i16
  %conv41.i = or i16 %3, 512
  br label %__truncXfYf2__.exit

if.else42.i:                                      ; preds = %if.else32.i
  %cmp44.i = icmp samesign ugt i32 %conv4.i, 1038
  br i1 %cmp44.i, label %__truncXfYf2__.exit, label %if.else47.i

if.else47.i:                                      ; preds = %if.else42.i
  %tobool50.not.i = icmp eq i64 %shr.i139.i, 0
  %or52.i = or disjoint i64 %and.i140.i, 4503599627370496
  %.pn.i = select i1 %tobool50.not.i, i32 1008, i32 1009
  %significand.0.i = select i1 %tobool50.not.i, i64 %and.i140.i, i64 %or52.i
  %shift.0.i = sub nsw i32 %.pn.i, %conv4.i
  %cmp55.i = icmp sgt i32 %shift.0.i, 52
  br i1 %cmp55.i, label %__truncXfYf2__.exit, label %if.else58.i

if.else58.i:                                      ; preds = %if.else47.i
  %tobool59.not.i = icmp eq i32 %.pn.i, %conv4.i
  br i1 %tobool59.not.i, label %land.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.else58.i
  %sub60.i = sub nsw i32 64, %shift.0.i
  %sh_prom.i = zext nneg i32 %sub60.i to i64
  %shl.i = shl i64 %significand.0.i, %sh_prom.i
  %cmp61.i = icmp ne i64 %shl.i, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.else58.i
  %4 = phi i1 [ false, %if.else58.i ], [ %cmp61.i, %land.rhs.i ]
  %sh_prom63.i = zext nneg i32 %shift.0.i to i64
  %shr64.i = lshr i64 %significand.0.i, %sh_prom63.i
  %conv65.i = zext i1 %4 to i64
  %shr67.i = lshr i64 %shr64.i, 42
  %conv68.i = trunc nuw nsw i64 %shr67.i to i16
  %shr64.masked.i = and i64 %shr64.i, 4398046511103
  %and70.i = or i64 %shr64.masked.i, %conv65.i
  %cmp71.i = icmp samesign ugt i64 %and70.i, 2199023255552
  br i1 %cmp71.i, label %if.then73.i, label %if.else75.i

if.then73.i:                                      ; preds = %land.end.i
  %inc74.i = add nuw nsw i16 %conv68.i, 1
  br label %if.end85.i

if.else75.i:                                      ; preds = %land.end.i
  %cmp76.i = icmp eq i64 %and70.i, 2199023255552
  br i1 %cmp76.i, label %if.then78.i, label %if.end85.i

if.then78.i:                                      ; preds = %if.else75.i
  %and80.i = and i16 %conv68.i, 1
  %add82.i = add nuw nsw i16 %and80.i, %conv68.i
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then78.i, %if.else75.i, %if.then73.i
  %dstSigFrac.2.i = phi i16 [ %inc74.i, %if.then73.i ], [ %add82.i, %if.then78.i ], [ %conv68.i, %if.else75.i ]
  %cmp87.i = icmp samesign ugt i16 %dstSigFrac.2.i, 1023
  %5 = xor i16 %dstSigFrac.2.i, 1024
  %spec.select.i = select i1 %cmp87.i, i16 %5, i16 %dstSigFrac.2.i
  %spec.select138.i = zext i1 %cmp87.i to i16
  br label %__truncXfYf2__.exit

__truncXfYf2__.exit:                              ; preds = %if.end21.i, %if.then36.i, %if.else42.i, %if.else47.i, %if.end85.i
  %dstSigFrac.5.i = phi i16 [ %dstSigFrac.1.i, %if.end21.i ], [ %conv41.i, %if.then36.i ], [ 0, %if.else42.i ], [ %spec.select.i, %if.end85.i ], [ 0, %if.else47.i ]
  %dstExp.3.i = phi i16 [ %dstExp.0.i, %if.end21.i ], [ 31, %if.then36.i ], [ 31, %if.else42.i ], [ %spec.select138.i, %if.end85.i ], [ 0, %if.else47.i ]
  %sh.diff.i = lshr i64 %0, 48
  %tr.sh.diff.i = trunc nuw i64 %sh.diff.i to i16
  %6 = and i16 %tr.sh.diff.i, -32768
  %7 = shl nuw nsw i16 %dstExp.3.i, 10
  %or6.i.i = or disjoint i16 %7, %6
  %or47.i.i = or i16 %or6.i.i, %dstSigFrac.5.i
  ret i16 %or47.i.i
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }

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
