; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/udivmodsi4_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/udivmodsi4_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [50 x i8] c"error in __udivmodsi4: %u / %u = %u, expected %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"error in __udivmodsi4: %u mod %u = %u, expected %u\0A\00", align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__udivmodsi4(i32 noundef %a, i32 noundef %b, i32 noundef %expected_result, i32 noundef %expected_rem) local_unnamed_addr #0 {
entry:
  %rem = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %rem) #3
  %call = call i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, ptr noundef nonnull %rem) #4
  %cmp.not = icmp eq i32 %call, %expected_result
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %a, i32 noundef %b, i32 noundef %call, i32 noundef %expected_result) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %rem, align 4, !tbaa !6
  %cmp2.not = icmp eq i32 %0, %expected_rem
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %a, i32 noundef %b, i32 noundef %0, i32 noundef %expected_rem) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then3 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(ptr nonnull %rem) #3
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare dso_local i32 @__udivmodsi4(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %rem.i39 = alloca i32, align 4
  %rem.i28 = alloca i32, align 4
  %rem.i17 = alloca i32, align 4
  %rem.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %rem.i) #3
  %call.i = call i32 @__udivmodsi4(i32 noundef 0, i32 noundef 1, ptr noundef nonnull %rem.i) #4
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 1, i32 noundef %call.i, i32 noundef 0) #4
  br label %test__udivmodsi4.exit.thread

if.end.i:                                         ; preds = %entry
  %0 = load i32, ptr %rem.i, align 4, !tbaa !6
  %cmp2.not.i = icmp eq i32 %0, 0
  br i1 %cmp2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef %0, i32 noundef 0) #4
  br label %test__udivmodsi4.exit.thread

test__udivmodsi4.exit.thread:                     ; preds = %if.then.i, %if.then3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i) #3
  br label %return

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %rem.i17) #3
  %call.i18 = call i32 @__udivmodsi4(i32 noundef 2, i32 noundef 1, ptr noundef nonnull %rem.i17) #4
  %cmp.not.i19 = icmp eq i32 %call.i18, 2
  br i1 %cmp.not.i19, label %if.end.i23, label %if.then.i20

if.then.i20:                                      ; preds = %if.end
  %call1.i21 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 1, i32 noundef %call.i18, i32 noundef 2) #4
  br label %test__udivmodsi4.exit27.thread

if.end.i23:                                       ; preds = %if.end
  %1 = load i32, ptr %rem.i17, align 4, !tbaa !6
  %cmp2.not.i24 = icmp eq i32 %1, 0
  br i1 %cmp2.not.i24, label %if.end4, label %if.then3.i25

if.then3.i25:                                     ; preds = %if.end.i23
  %call4.i26 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef 1, i32 noundef %1, i32 noundef 0) #4
  br label %test__udivmodsi4.exit27.thread

test__udivmodsi4.exit27.thread:                   ; preds = %if.then.i20, %if.then3.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i17) #3
  br label %return

if.end4:                                          ; preds = %if.end.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i17) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %rem.i28) #3
  %call.i29 = call i32 @__udivmodsi4(i32 noundef 19, i32 noundef 5, ptr noundef nonnull %rem.i28) #4
  %cmp.not.i30 = icmp eq i32 %call.i29, 3
  br i1 %cmp.not.i30, label %if.end.i34, label %if.then.i31

if.then.i31:                                      ; preds = %if.end4
  %call1.i32 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 19, i32 noundef 5, i32 noundef %call.i29, i32 noundef 3) #4
  br label %test__udivmodsi4.exit38.thread

if.end.i34:                                       ; preds = %if.end4
  %2 = load i32, ptr %rem.i28, align 4, !tbaa !6
  %cmp2.not.i35 = icmp eq i32 %2, 4
  br i1 %cmp2.not.i35, label %if.end8, label %if.then3.i36

if.then3.i36:                                     ; preds = %if.end.i34
  %call4.i37 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef 19, i32 noundef 5, i32 noundef %2, i32 noundef 4) #4
  br label %test__udivmodsi4.exit38.thread

test__udivmodsi4.exit38.thread:                   ; preds = %if.then.i31, %if.then3.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i28) #3
  br label %return

if.end8:                                          ; preds = %if.end.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i28) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %rem.i39) #3
  %call.i40 = call i32 @__udivmodsi4(i32 noundef -2147483648, i32 noundef 8, ptr noundef nonnull %rem.i39) #4
  %cmp.not.i41 = icmp eq i32 %call.i40, 268435456
  br i1 %cmp.not.i41, label %if.end.i45, label %if.then.i42

if.then.i42:                                      ; preds = %if.end8
  %call1.i43 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef -2147483648, i32 noundef 8, i32 noundef %call.i40, i32 noundef 268435456) #4
  br label %test__udivmodsi4.exit49.thread

if.end.i45:                                       ; preds = %if.end8
  %3 = load i32, ptr %rem.i39, align 4, !tbaa !6
  %cmp2.not.i46 = icmp eq i32 %3, 0
  br i1 %cmp2.not.i46, label %if.end12, label %if.then3.i47

if.then3.i47:                                     ; preds = %if.end.i45
  %call4.i48 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef -2147483648, i32 noundef 8, i32 noundef %3, i32 noundef 0) #4
  br label %test__udivmodsi4.exit49.thread

test__udivmodsi4.exit49.thread:                   ; preds = %if.then.i42, %if.then3.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i39) #3
  br label %return

if.end12:                                         ; preds = %if.end.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i39) #3
  %call13 = call i32 @test__udivmodsi4(i32 noundef -2147483645, i32 noundef 8, i32 noundef 268435456, i32 noundef 3) #5
  br label %return

return:                                           ; preds = %test__udivmodsi4.exit49.thread, %test__udivmodsi4.exit38.thread, %test__udivmodsi4.exit27.thread, %test__udivmodsi4.exit.thread, %if.end12
  %retval.0 = phi i32 [ 1, %test__udivmodsi4.exit49.thread ], [ 1, %test__udivmodsi4.exit.thread ], [ 1, %test__udivmodsi4.exit27.thread ], [ 1, %test__udivmodsi4.exit38.thread ], [ %call13, %if.end12 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
