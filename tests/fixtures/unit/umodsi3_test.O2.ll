; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/umodsi3_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/umodsi3_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [48 x i8] c"error in __umodsi3: %X %% %X = %X, expected %X\0A\00", align 1
@tests = dso_local local_unnamed_addr global [132 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] [i32 0, i32 3, i32 0, i32 0], [4 x i32] [i32 0, i32 16, i32 0, i32 0], [4 x i32] [i32 0, i32 126239994, i32 0, i32 0], [4 x i32] [i32 0, i32 122138132, i32 0, i32 0], [4 x i32] [i32 0, i32 2147483647, i32 0, i32 0], [4 x i32] [i32 0, i32 -2147483648, i32 0, i32 0], [4 x i32] [i32 0, i32 -3, i32 0, i32 0], [4 x i32] [i32 0, i32 -2, i32 0, i32 0], [4 x i32] [i32 0, i32 -1, i32 0, i32 0], [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 1, i32 2, i32 1, i32 0], [4 x i32] [i32 1, i32 3, i32 1, i32 0], [4 x i32] [i32 1, i32 16, i32 1, i32 0], [4 x i32] [i32 1, i32 126239994, i32 1, i32 0], [4 x i32] [i32 1, i32 122138132, i32 1, i32 0], [4 x i32] [i32 1, i32 2147483647, i32 1, i32 0], [4 x i32] [i32 1, i32 -2147483648, i32 1, i32 0], [4 x i32] [i32 1, i32 -3, i32 1, i32 0], [4 x i32] [i32 1, i32 -2, i32 1, i32 0], [4 x i32] [i32 1, i32 -1, i32 1, i32 0], [4 x i32] [i32 2, i32 1, i32 0, i32 0], [4 x i32] [i32 2, i32 2, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 2, i32 0], [4 x i32] [i32 2, i32 16, i32 2, i32 0], [4 x i32] [i32 2, i32 126239994, i32 2, i32 0], [4 x i32] [i32 2, i32 122138132, i32 2, i32 0], [4 x i32] [i32 2, i32 2147483647, i32 2, i32 0], [4 x i32] [i32 2, i32 -2147483648, i32 2, i32 0], [4 x i32] [i32 2, i32 -3, i32 2, i32 0], [4 x i32] [i32 2, i32 -2, i32 2, i32 0], [4 x i32] [i32 2, i32 -1, i32 2, i32 0], [4 x i32] [i32 3, i32 1, i32 0, i32 0], [4 x i32] [i32 3, i32 2, i32 1, i32 0], [4 x i32] [i32 3, i32 3, i32 0, i32 0], [4 x i32] [i32 3, i32 16, i32 3, i32 0], [4 x i32] [i32 3, i32 126239994, i32 3, i32 0], [4 x i32] [i32 3, i32 122138132, i32 3, i32 0], [4 x i32] [i32 3, i32 2147483647, i32 3, i32 0], [4 x i32] [i32 3, i32 -2147483648, i32 3, i32 0], [4 x i32] [i32 3, i32 -3, i32 3, i32 0], [4 x i32] [i32 3, i32 -2, i32 3, i32 0], [4 x i32] [i32 3, i32 -1, i32 3, i32 0], [4 x i32] [i32 16, i32 1, i32 0, i32 0], [4 x i32] [i32 16, i32 2, i32 0, i32 0], [4 x i32] [i32 16, i32 3, i32 1, i32 0], [4 x i32] [i32 16, i32 16, i32 0, i32 0], [4 x i32] [i32 16, i32 126239994, i32 16, i32 0], [4 x i32] [i32 16, i32 122138132, i32 16, i32 0], [4 x i32] [i32 16, i32 2147483647, i32 16, i32 0], [4 x i32] [i32 16, i32 -2147483648, i32 16, i32 0], [4 x i32] [i32 16, i32 -3, i32 16, i32 0], [4 x i32] [i32 16, i32 -2, i32 16, i32 0], [4 x i32] [i32 16, i32 -1, i32 16, i32 0], [4 x i32] [i32 126239994, i32 1, i32 0, i32 0], [4 x i32] [i32 126239994, i32 2, i32 0, i32 0], [4 x i32] [i32 126239994, i32 3, i32 0, i32 0], [4 x i32] [i32 126239994, i32 16, i32 10, i32 0], [4 x i32] [i32 126239994, i32 126239994, i32 0, i32 0], [4 x i32] [i32 126239994, i32 122138132, i32 4101862, i32 0], [4 x i32] [i32 126239994, i32 2147483647, i32 126239994, i32 0], [4 x i32] [i32 126239994, i32 -2147483648, i32 126239994, i32 0], [4 x i32] [i32 126239994, i32 -3, i32 126239994, i32 0], [4 x i32] [i32 126239994, i32 -2, i32 126239994, i32 0], [4 x i32] [i32 126239994, i32 -1, i32 126239994, i32 0], [4 x i32] [i32 122138132, i32 1, i32 0, i32 0], [4 x i32] [i32 122138132, i32 2, i32 0, i32 0], [4 x i32] [i32 122138132, i32 3, i32 2, i32 0], [4 x i32] [i32 122138132, i32 16, i32 4, i32 0], [4 x i32] [i32 122138132, i32 126239994, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 122138132, i32 0, i32 0], [4 x i32] [i32 122138132, i32 2147483647, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 -2147483648, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 -3, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 -2, i32 122138132, i32 0], [4 x i32] [i32 122138132, i32 -1, i32 122138132, i32 0], [4 x i32] [i32 2147483647, i32 1, i32 0, i32 0], [4 x i32] [i32 2147483647, i32 2, i32 1, i32 0], [4 x i32] [i32 2147483647, i32 3, i32 1, i32 0], [4 x i32] [i32 2147483647, i32 16, i32 15, i32 0], [4 x i32] [i32 2147483647, i32 126239994, i32 1403749, i32 0], [4 x i32] [i32 2147483647, i32 122138132, i32 71135403, i32 0], [4 x i32] [i32 2147483647, i32 2147483647, i32 0, i32 0], [4 x i32] [i32 2147483647, i32 -2147483648, i32 2147483647, i32 0], [4 x i32] [i32 2147483647, i32 -3, i32 2147483647, i32 0], [4 x i32] [i32 2147483647, i32 -2, i32 2147483647, i32 0], [4 x i32] [i32 2147483647, i32 -1, i32 2147483647, i32 0], [4 x i32] [i32 -2147483648, i32 1, i32 0, i32 0], [4 x i32] [i32 -2147483648, i32 2, i32 0, i32 0], [4 x i32] [i32 -2147483648, i32 3, i32 2, i32 0], [4 x i32] [i32 -2147483648, i32 16, i32 0, i32 0], [4 x i32] [i32 -2147483648, i32 126239994, i32 1403750, i32 0], [4 x i32] [i32 -2147483648, i32 122138132, i32 71135404, i32 0], [4 x i32] [i32 -2147483648, i32 2147483647, i32 1, i32 0], [4 x i32] [i32 -2147483648, i32 -2147483648, i32 0, i32 0], [4 x i32] [i32 -2147483648, i32 -3, i32 -2147483648, i32 0], [4 x i32] [i32 -2147483648, i32 -2, i32 -2147483648, i32 0], [4 x i32] [i32 -2147483648, i32 -1, i32 -2147483648, i32 0], [4 x i32] [i32 -3, i32 1, i32 0, i32 0], [4 x i32] [i32 -3, i32 2, i32 1, i32 0], [4 x i32] [i32 -3, i32 3, i32 1, i32 0], [4 x i32] [i32 -3, i32 16, i32 13, i32 0], [4 x i32] [i32 -3, i32 126239994, i32 2807497, i32 0], [4 x i32] [i32 -3, i32 122138132, i32 20132673, i32 0], [4 x i32] [i32 -3, i32 2147483647, i32 2147483646, i32 0], [4 x i32] [i32 -3, i32 -2147483648, i32 2147483645, i32 0], [4 x i32] [i32 -3, i32 -3, i32 0, i32 0], [4 x i32] [i32 -3, i32 -2, i32 -3, i32 0], [4 x i32] [i32 -3, i32 -1, i32 -3, i32 0], [4 x i32] [i32 -2, i32 1, i32 0, i32 0], [4 x i32] [i32 -2, i32 2, i32 0, i32 0], [4 x i32] [i32 -2, i32 3, i32 2, i32 0], [4 x i32] [i32 -2, i32 16, i32 14, i32 0], [4 x i32] [i32 -2, i32 126239994, i32 2807498, i32 0], [4 x i32] [i32 -2, i32 122138132, i32 20132674, i32 0], [4 x i32] [i32 -2, i32 2147483647, i32 0, i32 0], [4 x i32] [i32 -2, i32 -2147483648, i32 2147483646, i32 0], [4 x i32] [i32 -2, i32 -3, i32 1, i32 0], [4 x i32] [i32 -2, i32 -2, i32 0, i32 0], [4 x i32] [i32 -2, i32 -1, i32 -2, i32 0], [4 x i32] [i32 -1, i32 1, i32 0, i32 0], [4 x i32] [i32 -1, i32 2, i32 1, i32 0], [4 x i32] [i32 -1, i32 3, i32 0, i32 0], [4 x i32] [i32 -1, i32 16, i32 15, i32 0], [4 x i32] [i32 -1, i32 126239994, i32 2807499, i32 0], [4 x i32] [i32 -1, i32 122138132, i32 20132675, i32 0], [4 x i32] [i32 -1, i32 2147483647, i32 1, i32 0], [4 x i32] [i32 -1, i32 -2147483648, i32 2147483647, i32 0], [4 x i32] [i32 -1, i32 -3, i32 2, i32 0], [4 x i32] [i32 -1, i32 -2, i32 1, i32 0], [4 x i32] [i32 -1, i32 -1, i32 0, i32 0]], align 4

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__umodsi3(i32 noundef %a, i32 noundef %b, i32 noundef %expected_r) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2
  %cmp = icmp ne i32 %call, %expected_r
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %a, i32 noundef %b, i32 noundef %call, i32 noundef %expected_r) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @__umodsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 132
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !10

for.body:                                         ; preds = %entry, %for.cond
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds nuw [4 x i32], ptr @tests, i32 %i.015
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %arrayidx, i32 4
  %1 = load i32, ptr %arrayidx3, align 4, !tbaa !6
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %arrayidx, i32 8
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !6
  %call.i = tail call i32 @__umodsi3(i32 noundef %0, i32 noundef %1) #2
  %cmp.i.not = icmp eq i32 %call.i, %2
  br i1 %cmp.i.not, label %for.cond, label %test__umodsi3.exit

test__umodsi3.exit:                               ; preds = %for.body
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %1, i32 noundef %call.i, i32 noundef %2) #2
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %test__umodsi3.exit
  %retval.0 = phi i32 [ 1, %test__umodsi3.exit ], [ 0, %for.cond ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

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
