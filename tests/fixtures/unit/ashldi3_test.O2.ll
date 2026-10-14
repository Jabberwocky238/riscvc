; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/ashldi3_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/ashldi3_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [54 x i8] c"error in __ashldi3: %llX << %d = %llX, expected %llX\0A\00", align 1
@assumption_1 = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__ashldi3(i64 noundef %a, i32 noundef %b, i64 noundef %expected) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2
  %cmp = icmp ne i64 %call, %expected
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %a, i32 noundef %b, i64 noundef %call1, i64 noundef %expected) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i64 @__ashldi3(i64 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i64 @__ashldi3(i64 noundef 81985529216486895, i32 noundef 0) #2
  %cmp.i.not = icmp eq i64 %call.i, 81985529216486895
  br i1 %cmp.i.not, label %if.end, label %test__ashldi3.exit

test__ashldi3.exit:                               ; preds = %entry
  %call1.i = tail call i64 @__ashldi3(i64 noundef 81985529216486895, i32 noundef 0) #2
  %call2.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 81985529216486895, i32 noundef 0, i64 noundef %call1.i, i64 noundef 81985529216486895) #2
  br label %return

if.end:                                           ; preds = %entry
  %call.i69 = tail call i64 @__ashldi3(i64 noundef 81985529216486895, i32 noundef 1) #2
  %cmp.i70.not = icmp eq i64 %call.i69, 163971058432973790
  br i1 %cmp.i70.not, label %if.end4, label %test__ashldi3.exit75

test__ashldi3.exit75:                             ; preds = %if.end
  %call1.i73 = tail call i64 @__ashldi3(i64 noundef 81985529216486895, i32 noundef 1) #2
  %call2.i74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 81985529216486895, i32 noundef 1, i64 noundef %call1.i73, i64 noundef 163971058432973790) #2
  br label %return

if.end4:                                          ; preds = %if.end
  %call.i76 = tail call i64 @__ashldi3(i64 noundef 81985529216486895, i32 noundef 2) #2
  %cmp.i77.not = icmp eq i64 %call.i76, 327942116865947580
  br i1 %cmp.i77.not, label %if.end8, label %test__ashldi3.exit82

test__ashldi3.exit82:                             ; preds = %if.end4
  %call1.i80 = tail call i64 @__ashldi3(i64 noundef 81985529216486895, i32 noundef 2) #2
  %call2.i81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 81985529216486895, i32 noundef 2, i64 noundef %call1.i80, i64 noundef 327942116865947580) #2
  br label %return

if.end8:                                          ; preds = %if.end4
  %call.i83 = tail call i64 @__ashldi3(i64 noundef 81985529216486895, i32 noundef 3) #2
  %cmp.i84.not = icmp eq i64 %call.i83, 655884233731895160
  br i1 %cmp.i84.not, label %if.end12, label %test__ashldi3.exit89

test__ashldi3.exit89:                             ; preds = %if.end8
  %call1.i87 = tail call i64 @__ashldi3(i64 noundef 81985529216486895, i32 noundef 3) #2
  %call2.i88 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef 81985529216486895, i32 noundef 3, i64 noundef %call1.i87, i64 noundef 655884233731895160) #2
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 4, i64 noundef 1311768467463790320) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 28, i64 noundef 8690466096660086784) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %return

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 29, i64 noundef -1065811880389378048) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %return

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 30, i64 noundef -2131623760778756096) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %return

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 31, i64 noundef -4263247521557512192) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %return

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 32, i64 noundef -8526495043115024384) #3
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 33, i64 noundef 1393753987479502848) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %return

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 34, i64 noundef 2787507974959005696) #3
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %return

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 35, i64 noundef 5575015949918011392) #3
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %return

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 36, i64 noundef -7296712173873528832) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %return

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 60, i64 noundef -1152921504606846976) #3
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %return

if.end56:                                         ; preds = %if.end52
  %call57 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 61, i64 noundef -2305843009213693952) #3
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %return

if.end60:                                         ; preds = %if.end56
  %call61 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 62, i64 noundef -4611686018427387904) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %return

if.end64:                                         ; preds = %if.end60
  %call65 = tail call i32 @test__ashldi3(i64 noundef 81985529216486895, i32 noundef 63, i64 noundef -9223372036854775808) #3
  br label %return

return:                                           ; preds = %test__ashldi3.exit89, %test__ashldi3.exit82, %test__ashldi3.exit75, %test__ashldi3.exit, %if.end64, %if.end60, %if.end56, %if.end52, %if.end48, %if.end44, %if.end40, %if.end36, %if.end32, %if.end28, %if.end24, %if.end20, %if.end16, %if.end12
  %retval.0 = phi i32 [ 1, %if.end60 ], [ 1, %test__ashldi3.exit ], [ 1, %test__ashldi3.exit75 ], [ 1, %test__ashldi3.exit82 ], [ 1, %test__ashldi3.exit89 ], [ 1, %if.end12 ], [ 1, %if.end16 ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 1, %if.end28 ], [ 1, %if.end32 ], [ 1, %if.end36 ], [ 1, %if.end40 ], [ 1, %if.end44 ], [ 1, %if.end48 ], [ 1, %if.end52 ], [ 1, %if.end56 ], [ %call65, %if.end64 ]
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
