; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/absvsi2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/absvsi2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [53 x i8] c"error in __absvsi2(0x%X) = %d, expected positive %d\0A\00", align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__absvsi2(i32 noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @__absvsi2(i32 noundef %a) #3
  %spec.select = tail call i32 @llvm.abs.i32(i32 %a, i1 true)
  %cmp1 = icmp ne i32 %call, %spec.select
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %entry
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %a, i32 noundef %call, i32 noundef %spec.select) #3
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then3
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

declare dso_local i32 @__absvsi2(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @__absvsi2(i32 noundef 0) #3
  %cmp1.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.i.not, label %if.end, label %test__absvsi2.exit

test__absvsi2.exit:                               ; preds = %entry
  %call4.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %call.i, i32 noundef 0) #3
  br label %return

if.end:                                           ; preds = %entry
  %call.i39 = tail call i32 @__absvsi2(i32 noundef 1) #3
  %cmp1.i40.not = icmp eq i32 %call.i39, 1
  br i1 %cmp1.i40.not, label %if.end4, label %test__absvsi2.exit44

test__absvsi2.exit44:                             ; preds = %if.end
  %call4.i43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %call.i39, i32 noundef 1) #3
  br label %return

if.end4:                                          ; preds = %if.end
  %call.i45 = tail call i32 @__absvsi2(i32 noundef 2) #3
  %cmp1.i46.not = icmp eq i32 %call.i45, 2
  br i1 %cmp1.i46.not, label %if.end8, label %test__absvsi2.exit50

test__absvsi2.exit50:                             ; preds = %if.end4
  %call4.i49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef %call.i45, i32 noundef 2) #3
  br label %return

if.end8:                                          ; preds = %if.end4
  %call.i51 = tail call i32 @__absvsi2(i32 noundef 2147483646) #3
  %cmp1.i52.not = icmp eq i32 %call.i51, 2147483646
  br i1 %cmp1.i52.not, label %if.end12, label %test__absvsi2.exit56

test__absvsi2.exit56:                             ; preds = %if.end8
  %call4.i55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 2147483646, i32 noundef %call.i51, i32 noundef 2147483646) #3
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @test__absvsi2(i32 noundef 2147483647) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @test__absvsi2(i32 noundef -2147483647) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %return

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @test__absvsi2(i32 noundef -2147483646) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %return

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @test__absvsi2(i32 noundef -2) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %return

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @test__absvsi2(i32 noundef -1) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.body, label %return

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %return, label %for.body, !llvm.loop !10

for.body:                                         ; preds = %if.end28, %for.cond
  %i.065 = phi i32 [ %inc, %for.cond ], [ 0, %if.end28 ]
  %call33 = tail call i32 @rand() #3
  %call34 = tail call i32 @test__absvsi2(i32 noundef %call33) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond, label %return

return:                                           ; preds = %for.body, %for.cond, %test__absvsi2.exit56, %test__absvsi2.exit50, %test__absvsi2.exit44, %test__absvsi2.exit, %if.end28, %if.end24, %if.end20, %if.end16, %if.end12
  %retval.1 = phi i32 [ 1, %if.end28 ], [ 1, %test__absvsi2.exit ], [ 1, %test__absvsi2.exit44 ], [ 1, %test__absvsi2.exit50 ], [ 1, %test__absvsi2.exit56 ], [ 1, %if.end12 ], [ 1, %if.end16 ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 0, %for.cond ], [ 1, %for.body ]
  ret i32 %retval.1
}

declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

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
