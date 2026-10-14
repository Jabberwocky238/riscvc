; ModuleID = '../llvm-project/compiler-rt/lib/builtins/truncsfhf2.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/truncsfhf2.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none)
define dso_local zeroext i16 @__truncsfhf2(float noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast float %a to i32
  %and.i.i = lshr i32 %0, 23
  %shr.i137.i = and i32 %and.i.i, 255
  %and.i138.i = and i32 %0, 8388607
  %1 = add nsw i32 %shr.i137.i, -113
  %or.cond.i = icmp ult i32 %1, 30
  br i1 %or.cond.i, label %if.then.i, label %if.else31.i

if.then.i:                                        ; preds = %entry
  %2 = trunc nuw nsw i32 %shr.i137.i to i16
  %shr.i = lshr i32 %and.i138.i, 13
  %conv8.i = trunc nuw nsw i32 %shr.i to i16
  %and.i = and i32 %0, 8191
  %cmp9.i = icmp samesign ugt i32 %and.i, 4096
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.then.i
  %inc.i = add nuw nsw i16 %conv8.i, 1
  br label %if.end20.i

if.else.i:                                        ; preds = %if.then.i
  %cmp12.i = icmp eq i32 %and.i, 4096
  br i1 %cmp12.i, label %if.then14.i, label %if.end20.i

if.then14.i:                                      ; preds = %if.else.i
  %and16.i = and i32 %shr.i, 1
  %add18.i = add nuw nsw i32 %and16.i, %shr.i
  %conv19.i = trunc nuw nsw i32 %add18.i to i16
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %if.else.i, %if.then11.i
  %dstSigFrac.0.i = phi i16 [ %inc.i, %if.then11.i ], [ %conv19.i, %if.then14.i ], [ %conv8.i, %if.else.i ]
  %cmp22.i = icmp samesign ugt i16 %dstSigFrac.0.i, 1023
  %dstSigFrac.1.i = select i1 %cmp22.i, i16 0, i16 %dstSigFrac.0.i
  %dstExp.0.v.i = select i1 %cmp22.i, i16 -111, i16 -112
  %dstExp.0.i = add nsw i16 %dstExp.0.v.i, %2
  br label %__truncXfYf2__.exit

if.else31.i:                                      ; preds = %entry
  %cmp32.i = icmp eq i32 %shr.i137.i, 255
  %tobool.i = icmp ne i32 %and.i138.i, 0
  %or.cond99.i = and i1 %tobool.i, %cmp32.i
  br i1 %or.cond99.i, label %if.then35.i, label %if.else41.i

if.then35.i:                                      ; preds = %if.else31.i
  %and36.i = lshr i32 %and.i138.i, 13
  %3 = trunc nuw nsw i32 %and36.i to i16
  %conv40.i = or i16 %3, 512
  br label %__truncXfYf2__.exit

if.else41.i:                                      ; preds = %if.else31.i
  %cmp42.i = icmp samesign ugt i32 %shr.i137.i, 142
  br i1 %cmp42.i, label %__truncXfYf2__.exit, label %if.else45.i

if.else45.i:                                      ; preds = %if.else41.i
  %tobool47.not.i = icmp eq i32 %shr.i137.i, 0
  %spec.select.i = select i1 %tobool47.not.i, i32 112, i32 113
  %shift.0.i = sub nsw i32 %spec.select.i, %shr.i137.i
  %cmp52.i = icmp sgt i32 %shift.0.i, 23
  br i1 %cmp52.i, label %__truncXfYf2__.exit, label %if.else55.i

if.else55.i:                                      ; preds = %if.else45.i
  %or49.i = or disjoint i32 %and.i138.i, 8388608
  %spec.select134.i = select i1 %tobool47.not.i, i32 %and.i138.i, i32 %or49.i
  %tobool56.not.i = icmp ne i32 %spec.select.i, %shr.i137.i
  %sub57.i = sub nsw i32 32, %shift.0.i
  %shl.i = shl i32 %spec.select134.i, %sub57.i
  %cmp58.i = icmp ne i32 %shl.i, 0
  %narrow.i = select i1 %tobool56.not.i, i1 %cmp58.i, i1 false
  %conv61.i = zext i1 %narrow.i to i32
  %shr60.i = lshr i32 %spec.select134.i, %shift.0.i
  %shr63.i = lshr i32 %shr60.i, 13
  %conv64.i = trunc nuw nsw i32 %shr63.i to i16
  %shr60.masked.i = and i32 %shr60.i, 8191
  %and66.i = or i32 %shr60.masked.i, %conv61.i
  %cmp67.i = icmp samesign ugt i32 %and66.i, 4096
  br i1 %cmp67.i, label %if.then69.i, label %if.else71.i

if.then69.i:                                      ; preds = %if.else55.i
  %inc70.i = add nuw nsw i16 %conv64.i, 1
  br label %if.end81.i

if.else71.i:                                      ; preds = %if.else55.i
  %cmp72.i = icmp eq i32 %and66.i, 4096
  br i1 %cmp72.i, label %if.then74.i, label %if.end81.i

if.then74.i:                                      ; preds = %if.else71.i
  %and76.i = and i32 %shr63.i, 1
  %add78.i = add nuw nsw i32 %and76.i, %shr63.i
  %conv79.i = trunc nuw nsw i32 %add78.i to i16
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then74.i, %if.else71.i, %if.then69.i
  %dstSigFrac.2.i = phi i16 [ %inc70.i, %if.then69.i ], [ %conv79.i, %if.then74.i ], [ %conv64.i, %if.else71.i ]
  %cmp83.i = icmp samesign ugt i16 %dstSigFrac.2.i, 1023
  %4 = xor i16 %dstSigFrac.2.i, 1024
  %spec.select135.i = select i1 %cmp83.i, i16 %4, i16 %dstSigFrac.2.i
  %spec.select136.i = zext i1 %cmp83.i to i16
  br label %__truncXfYf2__.exit

__truncXfYf2__.exit:                              ; preds = %if.end20.i, %if.then35.i, %if.else41.i, %if.else45.i, %if.end81.i
  %dstSigFrac.5.i = phi i16 [ %dstSigFrac.1.i, %if.end20.i ], [ %conv40.i, %if.then35.i ], [ 0, %if.else41.i ], [ %spec.select135.i, %if.end81.i ], [ 0, %if.else45.i ]
  %dstExp.3.i = phi i16 [ %dstExp.0.i, %if.end20.i ], [ 31, %if.then35.i ], [ 31, %if.else41.i ], [ %spec.select136.i, %if.end81.i ], [ 0, %if.else45.i ]
  %sh.diff.i = lshr i32 %0, 16
  %tr.sh.diff.i = trunc nuw i32 %sh.diff.i to i16
  %5 = and i16 %tr.sh.diff.i, -32768
  %6 = shl nuw nsw i16 %dstExp.3.i, 10
  %or6.i.i = or disjoint i16 %6, %5
  %or47.i.i = or i16 %or6.i.i, %dstSigFrac.5.i
  ret i16 %or47.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local zeroext i16 @__gnu_f2h_ieee(float noundef %a) local_unnamed_addr #1 {
entry:
  %call = tail call zeroext i16 @__truncsfhf2(float noundef %a) #2
  ret i16 %call
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nobuiltin "no-builtins" }

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
