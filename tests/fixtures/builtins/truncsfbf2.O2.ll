; ModuleID = '../llvm-project/compiler-rt/lib/builtins/truncsfbf2.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/truncsfbf2.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local bfloat @__truncsfbf2(float noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast float %a to i32
  %and.i.i = lshr i32 %0, 23
  %shr.i172.i = and i32 %and.i.i, 255
  %and.i173.i = and i32 %0, 8388607
  %1 = and i32 %0, 65535
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %conv5.i = trunc nuw nsw i32 %shr.i172.i to i16
  %shr6.i = lshr exact i32 %and.i173.i, 16
  %conv7.i = trunc nuw nsw i32 %shr6.i to i16
  br label %__truncXfYf2__.exit

if.end.i:                                         ; preds = %entry
  %call2.off.i = add nsw i32 %shr.i172.i, -1
  %switch.i = icmp ult i32 %call2.off.i, 254
  br i1 %switch.i, label %if.then14.i, label %if.else41.i

if.then14.i:                                      ; preds = %if.end.i
  %conv15.i = trunc nuw nsw i32 %shr.i172.i to i16
  %shr16.i = lshr i32 %and.i173.i, 16
  %conv17.i = trunc nuw nsw i32 %shr16.i to i16
  %cmp18.i = icmp samesign ugt i32 %1, 32768
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.then14.i
  %inc.i = add nuw nsw i16 %conv17.i, 1
  br label %if.end30.i

if.else.i:                                        ; preds = %if.then14.i
  %cmp21.i = icmp eq i32 %1, 32768
  br i1 %cmp21.i, label %if.then23.i, label %if.end30.i

if.then23.i:                                      ; preds = %if.else.i
  %and25.i = and i32 %shr16.i, 1
  %add27.i = add nuw nsw i32 %and25.i, %shr16.i
  %conv28.i = trunc nuw nsw i32 %add27.i to i16
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then23.i, %if.else.i, %if.then20.i
  %dstSigFrac.0.i = phi i16 [ %inc.i, %if.then20.i ], [ %conv28.i, %if.then23.i ], [ %conv17.i, %if.else.i ]
  %cmp32.i = icmp samesign ugt i16 %dstSigFrac.0.i, 127
  %dstSigFrac.1.i = select i1 %cmp32.i, i16 0, i16 %dstSigFrac.0.i
  %conv37.i = zext i1 %cmp32.i to i16
  %dstExp.0.i = add nuw nsw i16 %conv37.i, %conv15.i
  br label %__truncXfYf2__.exit

if.else41.i:                                      ; preds = %if.end.i
  %cmp42.i = icmp eq i32 %shr.i172.i, 255
  %tobool.i = icmp ne i32 %and.i173.i, 0
  %or.cond129.i = and i1 %tobool.i, %cmp42.i
  br i1 %or.cond129.i, label %if.then45.i, label %if.else51.i

if.then45.i:                                      ; preds = %if.else41.i
  %and46.i = lshr i32 %and.i173.i, 16
  %2 = trunc nuw nsw i32 %and46.i to i16
  %conv50.i = or i16 %2, 64
  br label %__truncXfYf2__.exit

if.else51.i:                                      ; preds = %if.else41.i
  %trunc.i = trunc i32 %and.i.i to i8
  switch i8 %trunc.i, label %if.then58.i [
    i8 -1, label %__truncXfYf2__.exit
    i8 0, label %if.end61.i
  ]

if.then58.i:                                      ; preds = %if.else51.i
  %or59.i = or disjoint i32 %and.i173.i, 8388608
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then58.i, %if.else51.i
  %significand.0.i = phi i32 [ %or59.i, %if.then58.i ], [ %and.i173.i, %if.else51.i ]
  %.pn.i = phi i32 [ 1, %if.then58.i ], [ 0, %if.else51.i ]
  %shift.0.i = sub nsw i32 %.pn.i, %shr.i172.i
  %tobool66.not.i = icmp ne i32 %.pn.i, %shr.i172.i
  %sub67.i = sub nsw i32 32, %shift.0.i
  %shl68.i = shl i32 %significand.0.i, %sub67.i
  %cmp69.i = icmp ne i32 %shl68.i, 0
  %narrow.i = select i1 %tobool66.not.i, i1 %cmp69.i, i1 false
  %conv72.i = zext i1 %narrow.i to i32
  %shr71.i = lshr i32 %significand.0.i, %shift.0.i
  %shr74.i = lshr i32 %shr71.i, 16
  %conv75.i = trunc nuw nsw i32 %shr74.i to i16
  %shr71.masked.i = and i32 %shr71.i, 65535
  %and77.i = or i32 %shr71.masked.i, %conv72.i
  %cmp78.i = icmp samesign ugt i32 %and77.i, 32768
  br i1 %cmp78.i, label %if.then80.i, label %if.else82.i

if.then80.i:                                      ; preds = %if.end61.i
  %inc81.i = add nuw nsw i16 %conv75.i, 1
  br label %if.end92.i

if.else82.i:                                      ; preds = %if.end61.i
  %cmp83.i = icmp eq i32 %and77.i, 32768
  br i1 %cmp83.i, label %if.then85.i, label %if.end92.i

if.then85.i:                                      ; preds = %if.else82.i
  %and87.i = and i32 %shr74.i, 1
  %add89.i = add nuw nsw i32 %and87.i, %shr74.i
  %conv90.i = trunc nuw nsw i32 %add89.i to i16
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then85.i, %if.else82.i, %if.then80.i
  %dstSigFrac.2.i = phi i16 [ %inc81.i, %if.then80.i ], [ %conv90.i, %if.then85.i ], [ %conv75.i, %if.else82.i ]
  %cmp94.i = icmp samesign ugt i16 %dstSigFrac.2.i, 127
  %3 = xor i16 %dstSigFrac.2.i, 128
  %spec.select.i = select i1 %cmp94.i, i16 %3, i16 %dstSigFrac.2.i
  %spec.select171.i = zext i1 %cmp94.i to i16
  br label %__truncXfYf2__.exit

__truncXfYf2__.exit:                              ; preds = %if.then.i, %if.end30.i, %if.then45.i, %if.else51.i, %if.end92.i
  %dstExp.3.sink.i = phi i16 [ %conv5.i, %if.then.i ], [ %dstExp.0.i, %if.end30.i ], [ 255, %if.then45.i ], [ %spec.select171.i, %if.end92.i ], [ 255, %if.else51.i ]
  %dstSigFrac.5.sink.i = phi i16 [ %conv7.i, %if.then.i ], [ %dstSigFrac.1.i, %if.end30.i ], [ %conv50.i, %if.then45.i ], [ %spec.select.i, %if.end92.i ], [ 0, %if.else51.i ]
  %sh.diff.i = lshr i32 %0, 16
  %tr.sh.diff.i = trunc nuw i32 %sh.diff.i to i16
  %4 = and i16 %tr.sh.diff.i, -32768
  %5 = shl nuw nsw i16 %dstExp.3.sink.i, 7
  %or6.i174.i = or disjoint i16 %5, %4
  %or47.i175.i = or i16 %or6.i174.i, %dstSigFrac.5.sink.i
  %retval.0.i = bitcast i16 %or47.i175.i to bfloat
  ret bfloat %retval.0.i
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
