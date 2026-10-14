; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/clzdi2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/clzdi2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [45 x i8] c"error in __clzdi2(0x%llX) = %d, expected %d\0A\00", align 1
@assumption_1 = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__clzdi2(i64 noundef %a, i32 noundef %expected) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @__clzdi2(i64 noundef %a) #2
  %cmp = icmp ne i32 %call, %expected
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %a, i32 noundef %call, i32 noundef %expected) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @__clzdi2(i64 noundef) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @__clzdi2(i64 noundef 1) #2
  %cmp.i.not = icmp eq i32 %call.i, 63
  br i1 %cmp.i.not, label %if.end, label %test__clzdi2.exit

test__clzdi2.exit:                                ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 1, i32 noundef %call.i, i32 noundef 63) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i53 = tail call i32 @__clzdi2(i64 noundef 2) #2
  %cmp.i54.not = icmp eq i32 %call.i53, 62
  br i1 %cmp.i54.not, label %if.end4, label %test__clzdi2.exit58

test__clzdi2.exit58:                              ; preds = %if.end
  %call1.i57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 2, i32 noundef %call.i53, i32 noundef 62) #2
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i59 = tail call i32 @__clzdi2(i64 noundef 3) #2
  %cmp.i60.not = icmp eq i32 %call.i59, 62
  br i1 %cmp.i60.not, label %if.end8, label %test__clzdi2.exit64

test__clzdi2.exit64:                              ; preds = %if.end4
  %call1.i63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 3, i32 noundef %call.i59, i32 noundef 62) #2
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i65 = tail call i32 @__clzdi2(i64 noundef 4) #2
  %cmp.i66.not = icmp eq i32 %call.i65, 61
  br i1 %cmp.i66.not, label %if.end12, label %test__clzdi2.exit70

test__clzdi2.exit70:                              ; preds = %if.end8
  %call1.i69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 4, i32 noundef %call.i65, i32 noundef 61) #2
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @test__clzdi2(i64 noundef 5, i32 noundef 61) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @test__clzdi2(i64 noundef 10, i32 noundef 60) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @test__clzdi2(i64 noundef 268435466, i32 noundef 35) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @test__clzdi2(i64 noundef 536870922, i32 noundef 34) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %cleanup

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @test__clzdi2(i64 noundef 1610612746, i32 noundef 33) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @test__clzdi2(i64 noundef 2147483658, i32 noundef 32) #3
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %cleanup

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @test__clzdi2(i64 noundef 5499705622538, i32 noundef 21) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %cleanup

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @test__clzdi2(i64 noundef 144120687781478410, i32 noundef 6) #3
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %cleanup

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @test__clzdi2(i64 noundef 8214571220029407242, i32 noundef 1) #3
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %cleanup

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @test__clzdi2(i64 noundef -9079251349073297398, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %test__clzdi2.exit70, %test__clzdi2.exit64, %test__clzdi2.exit58, %test__clzdi2.exit, %if.end48, %if.end44, %if.end40, %if.end36, %if.end32, %if.end28, %if.end24, %if.end20, %if.end16, %if.end12
  %retval.0 = phi i32 [ 1, %if.end44 ], [ 1, %test__clzdi2.exit ], [ 1, %test__clzdi2.exit58 ], [ 1, %test__clzdi2.exit64 ], [ 1, %test__clzdi2.exit70 ], [ 1, %if.end12 ], [ 1, %if.end16 ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 1, %if.end28 ], [ 1, %if.end32 ], [ 1, %if.end36 ], [ 1, %if.end40 ], [ %call49, %if.end48 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

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
