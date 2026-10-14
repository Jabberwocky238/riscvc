; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/divmodsi4_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/divmodsi4_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [49 x i8] c"error in __divmodsi4: %d / %d = %d, expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"error in __divmodsi4: %d mod %d = %d, expected %d\0A\00", align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__divmodsi4(i32 noundef %a, i32 noundef %b, i32 noundef %expected_result, i32 noundef %expected_rem) local_unnamed_addr #0 {
entry:
  %rem = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %rem) #3
  %call = call i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, ptr noundef nonnull %rem) #4
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

declare dso_local i32 @__divmodsi4(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %rem.i67 = alloca i32, align 4
  %rem.i56 = alloca i32, align 4
  %rem.i45 = alloca i32, align 4
  %rem.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %rem.i) #3
  %call.i = call i32 @__divmodsi4(i32 noundef 0, i32 noundef 1, ptr noundef nonnull %rem.i) #4
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 1, i32 noundef %call.i, i32 noundef 0) #4
  br label %test__divmodsi4.exit.thread

if.end.i:                                         ; preds = %entry
  %0 = load i32, ptr %rem.i, align 4, !tbaa !6
  %cmp2.not.i = icmp eq i32 %0, 0
  br i1 %cmp2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef %0, i32 noundef 0) #4
  br label %test__divmodsi4.exit.thread

test__divmodsi4.exit.thread:                      ; preds = %if.then.i, %if.then3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i) #3
  br label %return

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %rem.i45) #3
  %call.i46 = call i32 @__divmodsi4(i32 noundef 0, i32 noundef -1, ptr noundef nonnull %rem.i45) #4
  %cmp.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %cmp.not.i47, label %if.end.i51, label %if.then.i48

if.then.i48:                                      ; preds = %if.end
  %call1.i49 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef -1, i32 noundef %call.i46, i32 noundef 0) #4
  br label %test__divmodsi4.exit55.thread

if.end.i51:                                       ; preds = %if.end
  %1 = load i32, ptr %rem.i45, align 4, !tbaa !6
  %cmp2.not.i52 = icmp eq i32 %1, 0
  br i1 %cmp2.not.i52, label %if.end4, label %if.then3.i53

if.then3.i53:                                     ; preds = %if.end.i51
  %call4.i54 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef -1, i32 noundef %1, i32 noundef 0) #4
  br label %test__divmodsi4.exit55.thread

test__divmodsi4.exit55.thread:                    ; preds = %if.then.i48, %if.then3.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i45) #3
  br label %return

if.end4:                                          ; preds = %if.end.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i45) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %rem.i56) #3
  %call.i57 = call i32 @__divmodsi4(i32 noundef 2, i32 noundef 1, ptr noundef nonnull %rem.i56) #4
  %cmp.not.i58 = icmp eq i32 %call.i57, 2
  br i1 %cmp.not.i58, label %if.end.i62, label %if.then.i59

if.then.i59:                                      ; preds = %if.end4
  %call1.i60 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 1, i32 noundef %call.i57, i32 noundef 2) #4
  br label %test__divmodsi4.exit66.thread

if.end.i62:                                       ; preds = %if.end4
  %2 = load i32, ptr %rem.i56, align 4, !tbaa !6
  %cmp2.not.i63 = icmp eq i32 %2, 0
  br i1 %cmp2.not.i63, label %if.end8, label %if.then3.i64

if.then3.i64:                                     ; preds = %if.end.i62
  %call4.i65 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef 1, i32 noundef %2, i32 noundef 0) #4
  br label %test__divmodsi4.exit66.thread

test__divmodsi4.exit66.thread:                    ; preds = %if.then.i59, %if.then3.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i56) #3
  br label %return

if.end8:                                          ; preds = %if.end.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i56) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %rem.i67) #3
  %call.i68 = call i32 @__divmodsi4(i32 noundef 2, i32 noundef -1, ptr noundef nonnull %rem.i67) #4
  %cmp.not.i69 = icmp eq i32 %call.i68, -2
  br i1 %cmp.not.i69, label %if.end.i73, label %if.then.i70

if.then.i70:                                      ; preds = %if.end8
  %call1.i71 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef -1, i32 noundef %call.i68, i32 noundef -2) #4
  br label %test__divmodsi4.exit77.thread

if.end.i73:                                       ; preds = %if.end8
  %3 = load i32, ptr %rem.i67, align 4, !tbaa !6
  %cmp2.not.i74 = icmp eq i32 %3, 0
  br i1 %cmp2.not.i74, label %if.end12, label %if.then3.i75

if.then3.i75:                                     ; preds = %if.end.i73
  %call4.i76 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef -1, i32 noundef %3, i32 noundef 0) #4
  br label %test__divmodsi4.exit77.thread

test__divmodsi4.exit77.thread:                    ; preds = %if.then.i70, %if.then3.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i67) #3
  br label %return

if.end12:                                         ; preds = %if.end.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %rem.i67) #3
  %call13 = call i32 @test__divmodsi4(i32 noundef -2, i32 noundef 1, i32 noundef -2, i32 noundef 0) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @test__divmodsi4(i32 noundef -2, i32 noundef -1, i32 noundef 2, i32 noundef 0) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %return

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @test__divmodsi4(i32 noundef 7, i32 noundef 5, i32 noundef 1, i32 noundef 2) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %return

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @test__divmodsi4(i32 noundef -7, i32 noundef 5, i32 noundef -1, i32 noundef -2) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %return

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @test__divmodsi4(i32 noundef 19, i32 noundef 5, i32 noundef 3, i32 noundef 4) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %return

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @test__divmodsi4(i32 noundef 19, i32 noundef -5, i32 noundef -3, i32 noundef 4) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end32
  %call37 = call i32 @test__divmodsi4(i32 noundef -2147483648, i32 noundef 8, i32 noundef -268435456, i32 noundef 0) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %return

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @test__divmodsi4(i32 noundef -2147483641, i32 noundef 8, i32 noundef -268435455, i32 noundef -1) #5
  br label %return

return:                                           ; preds = %test__divmodsi4.exit77.thread, %test__divmodsi4.exit66.thread, %test__divmodsi4.exit55.thread, %test__divmodsi4.exit.thread, %if.end40, %if.end36, %if.end32, %if.end28, %if.end24, %if.end20, %if.end16, %if.end12
  %retval.0 = phi i32 [ 1, %if.end36 ], [ 1, %test__divmodsi4.exit.thread ], [ 1, %test__divmodsi4.exit55.thread ], [ 1, %test__divmodsi4.exit66.thread ], [ 1, %test__divmodsi4.exit77.thread ], [ 1, %if.end12 ], [ 1, %if.end16 ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 1, %if.end28 ], [ 1, %if.end32 ], [ %call41, %if.end40 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
