; ModuleID = 'tests/programs/double.c'
source_filename = "tests/programs/double.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %pi.096 = phi double [ 0.000000e+00, %entry ], [ %add1, %for.body ]
  %k.095 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %rem = and i32 %k.095, 1
  %tobool.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool.not, double 4.000000e+00, double -4.000000e+00
  %mul = shl nuw nsw i32 %k.095, 1
  %add = or disjoint i32 %mul, 1
  %conv = uitofp nneg i32 %add to double
  %div = fdiv double %cond, %conv
  %add1 = fadd double %pi.096, %div
  %inc = add nuw nsw i32 %k.095, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %for.body6, label %for.body, !llvm.loop !10

for.cond.cleanup5:                                ; preds = %for.body6
  %0 = bitcast double %add1 to i64
  %add58 = add i64 %or, %0
  %shr59 = lshr i64 %add58, 32
  %xor60 = xor i64 %shr59, %add58
  %conv61 = trunc i64 %xor60 to i32
  ret i32 %conv61

for.body6:                                        ; preds = %for.body, %for.body6
  %h.098 = phi i64 [ %or, %for.body6 ], [ 0, %for.body ]
  %i.097 = phi i32 [ %inc55, %for.body6 ], [ -20, %for.body ]
  %conv7 = sitofp i32 %i.097 to double
  %1 = tail call double @llvm.fmuladd.f64(double %conv7, double 1.250000e+00, double 5.000000e-01)
  %mul9 = mul nsw i32 %i.097, %i.097
  %mul10 = mul nsw i32 %mul9, %i.097
  %conv11 = sitofp i32 %mul10 to double
  %div12 = fdiv double %conv11, 9.000000e+00
  %mul13 = fmul double %1, %div12
  %2 = bitcast double %mul13 to i64
  %cmp14 = fcmp oeq double %div12, 0.000000e+00
  %cond16 = select i1 %cmp14, double 3.000000e+00, double %div12
  %div17 = fdiv double %1, %cond16
  %3 = bitcast double %div17 to i64
  %sub = fsub double %1, %div12
  %4 = bitcast double %sub to i64
  %xor = xor i64 %4, %2
  %xor20 = xor i64 %xor, %3
  %cmp22 = fcmp olt double %1, %div12
  %conv24 = zext i1 %cmp22 to i64
  %cmp25 = fcmp oge double %1, %div12
  %mul28 = select i1 %cmp25, i64 2, i64 0
  %add29 = or disjoint i64 %mul28, %conv24
  %cmp30 = fcmp une double %1, %div12
  %mul33 = select i1 %cmp30, i64 4, i64 0
  %mul36 = fmul double %div12, 1.000000e+06
  %conv37 = fptosi double %mul36 to i64
  %conv38 = fptosi double %1 to i32
  %conv39 = sext i32 %conv38 to i64
  %add41 = add nsw i32 %i.097, 20
  %conv42 = zext i32 %add41 to i64
  %conv45 = fptrunc double %div12 to float
  %conv46 = fpext float %conv45 to double
  %5 = bitcast double %conv46 to i64
  %mul48 = fmul double %1, 1.000000e+09
  %conv49 = fptosi double %mul48 to i64
  %conv50 = sitofp i64 %conv49 to double
  %6 = bitcast double %conv50 to i64
  %add21 = add i64 %h.098, %conv42
  %add34 = add i64 %add21, %conv39
  %add35 = add i64 %add34, %6
  %add40 = add i64 %add35, %conv37
  %add43 = add i64 %add40, %mul33
  %add44 = add i64 %add43, %5
  %add52 = add i64 %add44, %add29
  %add53 = add i64 %add52, %xor20
  %or = tail call i64 @llvm.fshl.i64(i64 %add53, i64 %add53, i64 7)
  %inc55 = add nsw i32 %i.097, 1
  %exitcond99.not = icmp eq i32 %inc55, 20
  br i1 %exitcond99.not, label %for.cond.cleanup5, label %for.body6, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
