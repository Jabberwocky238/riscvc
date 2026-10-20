; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/compiler_rt_logb_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/compiler_rt_logb_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [64 x i8] c"error: in __compiler_rt_logb(%a [%lX]) = %a [%lX] !=  %a [%lX]\0A\00", align 1
@cases = dso_local local_unnamed_addr global [14 x double] [double 0x3EB0C6F7A0B5ED8D, double 0xBEB0C6F7A0B5ED8D, double 0x7FF8000000000000, double 0xFFF8000000000000, double 0x7FF0000000000000, double 0xFFF0000000000000, double -1.000000e+00, double -0.000000e+00, double 0.000000e+00, double 1.000000e+00, double -2.000000e+00, double 2.000000e+00, double -5.000000e-01, double 5.000000e-01], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"skipped\0A\00", align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__compiler_rt_logb(double noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast double %x to i64
  %and.i.i = lshr i64 %0, 52
  %1 = trunc nuw nsw i64 %and.i.i to i32
  %conv.i.i = and i32 %1, 2047
  %cmp.i.i = icmp eq i32 %conv.i.i, 2047
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else8.i.i

if.then.i.i:                                      ; preds = %entry
  %cmp3.i.i = icmp sgt i64 %0, -1
  %cmp5.i.i = fcmp uno double %x, 0.000000e+00
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp3.i.i
  %fneg.i.i = fneg double %x
  %spec.select.i.i = select i1 %or.cond.i.i, double %x, double %fneg.i.i
  br label %__compiler_rt_logb.exit

if.else8.i.i:                                     ; preds = %entry
  %cmp9.i.i = fcmp oeq double %x, 0.000000e+00
  br i1 %cmp9.i.i, label %__compiler_rt_logb.exit, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else8.i.i
  %cmp14.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp14.not.i.i, label %if.else18.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  %sub.i.i = add nsw i32 %conv.i.i, -1023
  %conv17.i.i = sitofp i32 %sub.i.i to double
  br label %__compiler_rt_logb.exit

if.else18.i.i:                                    ; preds = %if.end13.i.i
  %2 = tail call double @llvm.fabs.f64(double %x)
  %and19.i.i = bitcast double %2 to i64
  %3 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and19.i.i, i1 true)
  %cast.i.i.i.i = trunc nuw nsw i64 %3 to i32
  %sub.i.i.i = add nsw i32 %cast.i.i.i.i, -11
  %sh_prom.i.i.i = zext nneg i32 %sub.i.i.i to i64
  %shl.i.i.i = shl i64 %and19.i.i, %sh_prom.i.i.i
  %and22.i.i = lshr i64 %shl.i.i.i, 52
  %4 = trunc nuw nsw i64 %and22.i.i to i32
  %conv24.i.i = and i32 %4, 2047
  %reass.sub = sub nsw i32 %conv24.i.i, %cast.i.i.i.i
  %sub26.i.i = add nsw i32 %reass.sub, -1012
  %conv27.i.i = sitofp i32 %sub26.i.i to double
  br label %__compiler_rt_logb.exit

__compiler_rt_logb.exit:                          ; preds = %if.then.i.i, %if.else8.i.i, %if.then16.i.i, %if.else18.i.i
  %retval.0.i.i = phi double [ %conv27.i.i, %if.else18.i.i ], [ %spec.select.i.i, %if.then.i.i ], [ %conv17.i.i, %if.then16.i.i ], [ 0xFFF0000000000000, %if.else8.i.i ]
  %call1 = tail call double @logb(double noundef %x) #4
  %cmp = fcmp une double %retval.0.i.i, %call1
  br i1 %cmp, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %__compiler_rt_logb.exit
  %5 = fcmp uno double %retval.0.i.i, 0.000000e+00
  %6 = fcmp uno double %call1, 0.000000e+00
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = bitcast double %retval.0.i.i to i64
  %8 = bitcast double %call1 to i64
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %x, i64 noundef %0, double noundef %retval.0.i.i, i64 noundef %7, double noundef %call1, i64 noundef %8) #4
  br label %cleanup

cleanup:                                          ; preds = %__compiler_rt_logb.exit, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %__compiler_rt_logb.exit ]
  ret i32 %retval.0
}

declare dso_local double @logb(double noundef) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
