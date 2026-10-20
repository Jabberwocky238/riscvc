; ModuleID = '../llvm-project/compiler-rt/lib/builtins/extendbfsf2.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/extendbfsf2.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local float @__extendbfsf2(i16 noundef zeroext %a) local_unnamed_addr #0 {
entry:
  %0 = lshr i16 %a, 7
  %1 = and i16 %a, 127
  %trunc.i = trunc i16 %0 to i8
  switch i8 %trunc.i, label %if.then.i [
    i8 -1, label %if.then14.i
    i8 0, label %if.else17.i
  ]

if.then.i:                                        ; preds = %entry
  %2 = and i16 %0, 255
  %conv4.i = zext nneg i16 %2 to i32
  %conv10.i = zext nneg i16 %1 to i32
  %shl.i = shl nuw nsw i32 %conv10.i, 16
  %3 = shl nuw nsw i32 %conv4.i, 23
  br label %__extendXfYf2__.exit

if.then14.i:                                      ; preds = %entry
  %conv15.i = zext nneg i16 %1 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 16
  br label %__extendXfYf2__.exit

if.else17.i:                                      ; preds = %entry
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %__extendXfYf2__.exit, label %if.then18.i

if.then18.i:                                      ; preds = %if.else17.i
  %conv19.i = zext nneg i16 %1 to i32
  %shl20.i = shl nuw nsw i32 %conv19.i, 16
  br label %__extendXfYf2__.exit

__extendXfYf2__.exit:                             ; preds = %if.then.i, %if.then14.i, %if.else17.i, %if.then18.i
  %dstSigFrac.0.i = phi i32 [ %shl.i, %if.then.i ], [ %shl16.i, %if.then14.i ], [ %shl20.i, %if.then18.i ], [ 0, %if.else17.i ]
  %dstExp.0.i = phi i32 [ %3, %if.then.i ], [ 2139095040, %if.then14.i ], [ 0, %if.then18.i ], [ 0, %if.else17.i ]
  %4 = lshr i16 %a, 15
  %conv.i = zext nneg i16 %4 to i32
  %shl.i.i = shl nuw i32 %conv.i, 31
  %or.i.i = or disjoint i32 %dstSigFrac.0.i, %shl.i.i
  %or2.i.i = add nuw nsw i32 %or.i.i, %dstExp.0.i
  %5 = bitcast i32 %or2.i.i to float
  ret float %5
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
