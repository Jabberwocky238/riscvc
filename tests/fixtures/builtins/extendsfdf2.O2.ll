; ModuleID = '../llvm-project/compiler-rt/lib/builtins/extendsfdf2.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/extendsfdf2.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local double @__extendsfdf2(float noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast float %a to i32
  %and.i.i = lshr i32 %0, 23
  %and.i40.i = and i32 %0, 8388607
  %trunc.i = trunc i32 %and.i.i to i8
  switch i8 %trunc.i, label %if.then.i [
    i8 -1, label %if.then11.i
    i8 0, label %if.else14.i
  ]

if.then.i:                                        ; preds = %entry
  %shr.i39.i = and i32 %and.i.i, 255
  %narrow.i = add nuw nsw i32 %shr.i39.i, 896
  %conv8.i = zext nneg i32 %and.i40.i to i64
  %shl.i = shl nuw nsw i64 %conv8.i, 29
  br label %__extendXfYf2__.exit

if.then11.i:                                      ; preds = %entry
  %conv12.i = zext nneg i32 %and.i40.i to i64
  %shl13.i = shl nuw nsw i64 %conv12.i, 29
  br label %__extendXfYf2__.exit

if.else14.i:                                      ; preds = %entry
  %tobool.not.i = icmp eq i32 %and.i40.i, 0
  br i1 %tobool.not.i, label %__extendXfYf2__.exit, label %if.then15.i

if.then15.i:                                      ; preds = %if.else14.i
  %1 = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, 8388608) %and.i40.i, i1 true)
  %add18.i = sub nuw nsw i32 905, %1
  %conv20.i = zext nneg i32 %and.i40.i to i64
  %add21.i = add nuw nsw i32 %1, 21
  %sh_prom.i = zext nneg i32 %add21.i to i64
  %shl22.i = shl i64 %conv20.i, %sh_prom.i
  %xor.i = xor i64 %shl22.i, 4503599627370496
  br label %__extendXfYf2__.exit

__extendXfYf2__.exit:                             ; preds = %if.then.i, %if.then11.i, %if.else14.i, %if.then15.i
  %dstSigFrac.0.i = phi i64 [ %shl.i, %if.then.i ], [ %shl13.i, %if.then11.i ], [ %xor.i, %if.then15.i ], [ 0, %if.else14.i ]
  %dstExp.0.shrunk.i = phi i32 [ %narrow.i, %if.then.i ], [ 2047, %if.then11.i ], [ %add18.i, %if.then15.i ], [ 0, %if.else14.i ]
  %shr.i.i = lshr i32 %0, 31
  %dstExp.0.i = zext nneg i32 %dstExp.0.shrunk.i to i64
  %conv.i = zext nneg i32 %shr.i.i to i64
  %shl.i.i = shl nuw i64 %conv.i, 63
  %shl1.i.i = shl nuw nsw i64 %dstExp.0.i, 52
  %or.i.i = or disjoint i64 %shl1.i.i, %shl.i.i
  %or2.i.i = or i64 %or.i.i, %dstSigFrac.0.i
  %2 = bitcast i64 %or2.i.i to double
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
