; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/popcountdi2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/popcountdi2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [50 x i8] c"error in __popcountdi2(0x%llX) = %d, expected %d\0A\00", align 1
@assumption_1 = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1
@assumption_2 = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local i32 @naive_popcount(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %tobool.not5 = icmp eq i64 %a, 0
  br i1 %tobool.not5, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %r.07 = phi i32 [ %conv1, %for.body ], [ 0, %entry ]
  %a.addr.06 = phi i64 [ %shr, %for.body ], [ %a, %entry ]
  %0 = trunc i64 %a.addr.06 to i32
  %1 = and i32 %0, 1
  %conv1 = add i32 %1, %r.07
  %shr = lshr i64 %a.addr.06, 1
  %tobool.not = icmp eq i64 %shr, 0
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.body, %entry
  %r.0.lcssa = phi i32 [ 0, %entry ], [ %conv1, %for.body ]
  ret i32 %r.0.lcssa
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__popcountdi2(i64 noundef %a) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @__popcountdi2(i64 noundef %a) #3
  %tobool.not5.i = icmp eq i64 %a, 0
  br i1 %tobool.not5.i, label %naive_popcount.exit, label %for.body.i

for.body.i:                                       ; preds = %entry, %for.body.i
  %r.07.i = phi i32 [ %conv1.i, %for.body.i ], [ 0, %entry ]
  %a.addr.06.i = phi i64 [ %shr.i, %for.body.i ], [ %a, %entry ]
  %0 = trunc i64 %a.addr.06.i to i32
  %1 = and i32 %0, 1
  %conv1.i = add i32 %1, %r.07.i
  %shr.i = lshr i64 %a.addr.06.i, 1
  %tobool.not.i = icmp eq i64 %shr.i, 0
  br i1 %tobool.not.i, label %naive_popcount.exit, label %for.body.i, !llvm.loop !10

naive_popcount.exit:                              ; preds = %for.body.i, %entry
  %r.0.lcssa.i = phi i32 [ 0, %entry ], [ %conv1.i, %for.body.i ]
  %cmp = icmp ne i32 %call, %r.0.lcssa.i
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %naive_popcount.exit
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %a, i32 noundef %call, i32 noundef %r.0.lcssa.i) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %naive_popcount.exit
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @__popcountdi2(i64 noundef) local_unnamed_addr #2

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #1 {
entry:
  %call.i = tail call i32 @__popcountdi2(i64 noundef 0) #3
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %if.end, label %test__popcountdi2.exit

test__popcountdi2.exit:                           ; preds = %entry
  %call2.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef %call.i, i32 noundef 0) #3
  br label %return

if.end:                                           ; preds = %entry
  %call.i29 = tail call i32 @__popcountdi2(i64 noundef 1) #3
  %cmp.i30.not = icmp eq i32 %call.i29, 1
  br i1 %cmp.i30.not, label %if.end4, label %test__popcountdi2.exit34

test__popcountdi2.exit34:                         ; preds = %if.end
  %call2.i33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 1, i32 noundef %call.i29, i32 noundef 1) #3
  br label %return

if.end4:                                          ; preds = %if.end
  %call.i35 = tail call i32 @__popcountdi2(i64 noundef 2) #3
  %cmp.i43.not = icmp eq i32 %call.i35, 1
  br i1 %cmp.i43.not, label %if.end8, label %test__popcountdi2.exit47

test__popcountdi2.exit47:                         ; preds = %if.end4
  %call2.i46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 2, i32 noundef %call.i35, i32 noundef 1) #3
  br label %return

if.end8:                                          ; preds = %if.end4
  %call.i48 = tail call i32 @__popcountdi2(i64 noundef -3) #3
  %cmp.i56.not = icmp eq i32 %call.i48, 63
  br i1 %cmp.i56.not, label %if.end12, label %test__popcountdi2.exit60

test__popcountdi2.exit60:                         ; preds = %if.end8
  %call2.i59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef -3, i32 noundef %call.i48, i32 noundef 63) #3
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @test__popcountdi2(i64 noundef -2) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @test__popcountdi2(i64 noundef -1) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.body, label %return

for.cond:                                         ; preds = %naive_popcount.exit.i68
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %return, label %for.body, !llvm.loop !12

for.body:                                         ; preds = %if.end16, %for.cond
  %i.084 = phi i32 [ %inc, %for.cond ], [ 0, %if.end16 ]
  %call21 = tail call i32 @rand() #3
  %conv = sext i32 %call21 to i64
  %shl = shl nsw i64 %conv, 32
  %call22 = tail call i32 @rand() #3
  %conv23 = sext i32 %call22 to i64
  %or = or i64 %shl, %conv23
  %call.i61 = tail call i32 @__popcountdi2(i64 noundef %or) #3
  %tobool.not5.i.i = icmp eq i64 %or, 0
  br i1 %tobool.not5.i.i, label %naive_popcount.exit.i68, label %for.body.i.i62

for.body.i.i62:                                   ; preds = %for.body, %for.body.i.i62
  %r.07.i.i63 = phi i32 [ %conv1.i.i65, %for.body.i.i62 ], [ 0, %for.body ]
  %a.addr.06.i.i64 = phi i64 [ %shr.i.i66, %for.body.i.i62 ], [ %or, %for.body ]
  %0 = trunc i64 %a.addr.06.i.i64 to i32
  %1 = and i32 %0, 1
  %conv1.i.i65 = add i32 %1, %r.07.i.i63
  %shr.i.i66 = lshr i64 %a.addr.06.i.i64, 1
  %tobool.not.i.i67 = icmp eq i64 %shr.i.i66, 0
  br i1 %tobool.not.i.i67, label %naive_popcount.exit.i68, label %for.body.i.i62, !llvm.loop !10

naive_popcount.exit.i68:                          ; preds = %for.body.i.i62, %for.body
  %r.0.lcssa.i.i = phi i32 [ 0, %for.body ], [ %conv1.i.i65, %for.body.i.i62 ]
  %cmp.i69.not = icmp eq i32 %call.i61, %r.0.lcssa.i.i
  br i1 %cmp.i69.not, label %for.cond, label %test__popcountdi2.exit73

test__popcountdi2.exit73:                         ; preds = %naive_popcount.exit.i68
  %call2.i72 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %or, i32 noundef %call.i61, i32 noundef %r.0.lcssa.i.i) #3
  br label %return

return:                                           ; preds = %for.cond, %test__popcountdi2.exit73, %test__popcountdi2.exit60, %test__popcountdi2.exit47, %test__popcountdi2.exit34, %test__popcountdi2.exit, %if.end16, %if.end12
  %retval.1 = phi i32 [ 1, %if.end16 ], [ 1, %test__popcountdi2.exit ], [ 1, %test__popcountdi2.exit34 ], [ 1, %test__popcountdi2.exit47 ], [ 1, %test__popcountdi2.exit60 ], [ 1, %if.end12 ], [ 1, %test__popcountdi2.exit73 ], [ 0, %for.cond ]
  ret i32 %retval.1
}

declare dso_local i32 @rand() local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!12 = distinct !{!12, !11}
