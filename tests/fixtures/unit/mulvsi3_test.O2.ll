; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/mulvsi3_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/mulvsi3_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [47 x i8] c"error in __mulvsi3: %d * %d = %d, expected %d\0A\00", align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__mulvsi3(i32 noundef %a, i32 noundef %b, i32 noundef %expected) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2
  %cmp = icmp ne i32 %call, %expected
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %a, i32 noundef %b, i32 noundef %call, i32 noundef %expected) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @__mulvsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 @__mulvsi3(i32 noundef 0, i32 noundef 0) #2
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %if.end, label %test__mulvsi3.exit

test__mulvsi3.exit:                               ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef %call.i, i32 noundef 0) #2
  br label %return

if.end:                                           ; preds = %entry
  %call.i153 = tail call i32 @__mulvsi3(i32 noundef 0, i32 noundef 1) #2
  %cmp.i154.not = icmp eq i32 %call.i153, 0
  br i1 %cmp.i154.not, label %if.end4, label %test__mulvsi3.exit158

test__mulvsi3.exit158:                            ; preds = %if.end
  %call1.i157 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 1, i32 noundef %call.i153, i32 noundef 0) #2
  br label %return

if.end4:                                          ; preds = %if.end
  %call.i159 = tail call i32 @__mulvsi3(i32 noundef 1, i32 noundef 0) #2
  %cmp.i160.not = icmp eq i32 %call.i159, 0
  br i1 %cmp.i160.not, label %if.end8, label %test__mulvsi3.exit164

test__mulvsi3.exit164:                            ; preds = %if.end4
  %call1.i163 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 0, i32 noundef %call.i159, i32 noundef 0) #2
  br label %return

if.end8:                                          ; preds = %if.end4
  %call.i165 = tail call i32 @__mulvsi3(i32 noundef 0, i32 noundef 10) #2
  %cmp.i166.not = icmp eq i32 %call.i165, 0
  br i1 %cmp.i166.not, label %if.end12, label %test__mulvsi3.exit170

test__mulvsi3.exit170:                            ; preds = %if.end8
  %call1.i169 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 10, i32 noundef %call.i165, i32 noundef 0) #2
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @test__mulvsi3(i32 noundef 10, i32 noundef 0, i32 noundef 0) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @test__mulvsi3(i32 noundef 0, i32 noundef 19088743, i32 noundef 0) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %return

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @test__mulvsi3(i32 noundef 19088743, i32 noundef 0, i32 noundef 0) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %return

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @test__mulvsi3(i32 noundef 0, i32 noundef -1, i32 noundef 0) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %return

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @test__mulvsi3(i32 noundef -1, i32 noundef 0, i32 noundef 0) #3
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %return

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @test__mulvsi3(i32 noundef 0, i32 noundef -10, i32 noundef 0) #3
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @test__mulvsi3(i32 noundef -10, i32 noundef 0, i32 noundef 0) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %return

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @test__mulvsi3(i32 noundef 0, i32 noundef -19088743, i32 noundef 0) #3
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %return

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @test__mulvsi3(i32 noundef -19088743, i32 noundef 0, i32 noundef 0) #3
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %return

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @test__mulvsi3(i32 noundef 1, i32 noundef 1, i32 noundef 1) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %return

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @test__mulvsi3(i32 noundef 1, i32 noundef 10, i32 noundef 10) #3
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %return

if.end56:                                         ; preds = %if.end52
  %call57 = tail call i32 @test__mulvsi3(i32 noundef 10, i32 noundef 1, i32 noundef 10) #3
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %return

if.end60:                                         ; preds = %if.end56
  %call61 = tail call i32 @test__mulvsi3(i32 noundef 1, i32 noundef 19088743, i32 noundef 19088743) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %return

if.end64:                                         ; preds = %if.end60
  %call65 = tail call i32 @test__mulvsi3(i32 noundef 19088743, i32 noundef 1, i32 noundef 19088743) #3
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %return

if.end68:                                         ; preds = %if.end64
  %call69 = tail call i32 @test__mulvsi3(i32 noundef 1, i32 noundef -1, i32 noundef -1) #3
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %return

if.end72:                                         ; preds = %if.end68
  %call73 = tail call i32 @test__mulvsi3(i32 noundef 1, i32 noundef -10, i32 noundef -10) #3
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %return

if.end76:                                         ; preds = %if.end72
  %call77 = tail call i32 @test__mulvsi3(i32 noundef -10, i32 noundef 1, i32 noundef -10) #3
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %return

if.end80:                                         ; preds = %if.end76
  %call81 = tail call i32 @test__mulvsi3(i32 noundef 1, i32 noundef -19088743, i32 noundef -19088743) #3
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %return

if.end84:                                         ; preds = %if.end80
  %call85 = tail call i32 @test__mulvsi3(i32 noundef -19088743, i32 noundef 1, i32 noundef -19088743) #3
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %return

if.end88:                                         ; preds = %if.end84
  %call89 = tail call i32 @test__mulvsi3(i32 noundef 2147483647, i32 noundef -1, i32 noundef -2147483647) #3
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %return

if.end92:                                         ; preds = %if.end88
  %call93 = tail call i32 @test__mulvsi3(i32 noundef -1, i32 noundef 2147483647, i32 noundef -2147483647) #3
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %return

if.end96:                                         ; preds = %if.end92
  %call97 = tail call i32 @test__mulvsi3(i32 noundef 2147483647, i32 noundef 0, i32 noundef 0) #3
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %return

if.end100:                                        ; preds = %if.end96
  %call101 = tail call i32 @test__mulvsi3(i32 noundef 0, i32 noundef 2147483647, i32 noundef 0) #3
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %return

if.end104:                                        ; preds = %if.end100
  %call105 = tail call i32 @test__mulvsi3(i32 noundef 2147483647, i32 noundef 1, i32 noundef 2147483647) #3
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %return

if.end108:                                        ; preds = %if.end104
  %call109 = tail call i32 @test__mulvsi3(i32 noundef 1, i32 noundef 2147483647, i32 noundef 2147483647) #3
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %return

if.end112:                                        ; preds = %if.end108
  %call113 = tail call i32 @test__mulvsi3(i32 noundef -2147483648, i32 noundef 0, i32 noundef 0) #3
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %return

if.end116:                                        ; preds = %if.end112
  %call117 = tail call i32 @test__mulvsi3(i32 noundef 0, i32 noundef -2147483648, i32 noundef 0) #3
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %return

if.end120:                                        ; preds = %if.end116
  %call121 = tail call i32 @test__mulvsi3(i32 noundef -2147483648, i32 noundef 1, i32 noundef -2147483648) #3
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %return

if.end124:                                        ; preds = %if.end120
  %call125 = tail call i32 @test__mulvsi3(i32 noundef 1, i32 noundef -2147483648, i32 noundef -2147483648) #3
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %return

if.end128:                                        ; preds = %if.end124
  %call129 = tail call i32 @test__mulvsi3(i32 noundef -2147483647, i32 noundef -1, i32 noundef 2147483647) #3
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %return

if.end132:                                        ; preds = %if.end128
  %call133 = tail call i32 @test__mulvsi3(i32 noundef -1, i32 noundef -2147483647, i32 noundef 2147483647) #3
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %return

if.end136:                                        ; preds = %if.end132
  %call137 = tail call i32 @test__mulvsi3(i32 noundef -2147483647, i32 noundef 0, i32 noundef 0) #3
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %return

if.end140:                                        ; preds = %if.end136
  %call141 = tail call i32 @test__mulvsi3(i32 noundef 0, i32 noundef -2147483647, i32 noundef 0) #3
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %return

if.end144:                                        ; preds = %if.end140
  %call145 = tail call i32 @test__mulvsi3(i32 noundef -2147483647, i32 noundef 1, i32 noundef -2147483647) #3
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %return

if.end148:                                        ; preds = %if.end144
  %call149 = tail call i32 @test__mulvsi3(i32 noundef 1, i32 noundef -2147483647, i32 noundef -2147483647) #3
  br label %return

return:                                           ; preds = %test__mulvsi3.exit170, %test__mulvsi3.exit164, %test__mulvsi3.exit158, %test__mulvsi3.exit, %if.end148, %if.end144, %if.end140, %if.end136, %if.end132, %if.end128, %if.end124, %if.end120, %if.end116, %if.end112, %if.end108, %if.end104, %if.end100, %if.end96, %if.end92, %if.end88, %if.end84, %if.end80, %if.end76, %if.end72, %if.end68, %if.end64, %if.end60, %if.end56, %if.end52, %if.end48, %if.end44, %if.end40, %if.end36, %if.end32, %if.end28, %if.end24, %if.end20, %if.end16, %if.end12
  %retval.0 = phi i32 [ 1, %if.end144 ], [ 1, %test__mulvsi3.exit ], [ 1, %test__mulvsi3.exit158 ], [ 1, %test__mulvsi3.exit164 ], [ 1, %test__mulvsi3.exit170 ], [ 1, %if.end12 ], [ 1, %if.end16 ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 1, %if.end28 ], [ 1, %if.end32 ], [ 1, %if.end36 ], [ 1, %if.end40 ], [ 1, %if.end44 ], [ 1, %if.end48 ], [ 1, %if.end52 ], [ 1, %if.end56 ], [ 1, %if.end60 ], [ 1, %if.end64 ], [ 1, %if.end68 ], [ 1, %if.end72 ], [ 1, %if.end76 ], [ 1, %if.end80 ], [ 1, %if.end84 ], [ 1, %if.end88 ], [ 1, %if.end92 ], [ 1, %if.end96 ], [ 1, %if.end100 ], [ 1, %if.end104 ], [ 1, %if.end108 ], [ 1, %if.end112 ], [ 1, %if.end116 ], [ 1, %if.end120 ], [ 1, %if.end124 ], [ 1, %if.end128 ], [ 1, %if.end132 ], [ 1, %if.end136 ], [ 1, %if.end140 ], [ %call149, %if.end148 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
