; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/fixunssfsi_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/fixunssfsi_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [45 x i8] c"error in __fixunssfsi(%A) = %X, expected %X\0A\00", align 1
@assumption_2 = dso_local global [1 x i8] zeroinitializer, align 1
@assumption_3 = dso_local global [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__fixunssfsi(float noundef %a, i32 noundef %expected) #0 {
entry:
  %a.addr = alloca float, align 4
  %expected.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store float %a, ptr %a.addr, align 4
  store i32 %expected, ptr %expected.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  %call = call i32 @__fixunssfsi(float noundef %0) #2
  store i32 %call, ptr %x, align 4
  %1 = load i32, ptr %x, align 4
  %2 = load i32, ptr %expected.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load float, ptr %a.addr, align 4
  %conv = fpext float %3 to double
  %4 = load i32, ptr %x, align 4
  %5 = load i32, ptr %expected.addr, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv, i32 noundef %4, i32 noundef %5) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %x, align 4
  %7 = load i32, ptr %expected.addr, align 4
  %cmp2 = icmp ne i32 %6, %7
  %conv3 = zext i1 %cmp2 to i32
  ret i32 %conv3
}

declare dso_local i32 @__fixunssfsi(float noundef) #1

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @test__fixunssfsi(float noundef 0.000000e+00, i32 noundef 0) #2
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @test__fixunssfsi(float noundef 5.000000e-01, i32 noundef 0) #2
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @test__fixunssfsi(float noundef 0x3FEFAE1480000000, i32 noundef 0) #2
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @test__fixunssfsi(float noundef 1.000000e+00, i32 noundef 1) #2
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @test__fixunssfsi(float noundef 1.500000e+00, i32 noundef 1) #2
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @test__fixunssfsi(float noundef 0x3FFFD70A40000000, i32 noundef 1) #2
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @test__fixunssfsi(float noundef 2.000000e+00, i32 noundef 2) #2
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @test__fixunssfsi(float noundef 0x4000147AE0000000, i32 noundef 2) #2
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @test__fixunssfsi(float noundef -5.000000e-01, i32 noundef 0) #2
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @test__fixunssfsi(float noundef 0xBFEFAE1480000000, i32 noundef 0) #2
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  store i32 1, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end32
  %call37 = call i32 @test__fixunssfsi(float noundef -1.000000e+00, i32 noundef 0) #2
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  store i32 1, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @test__fixunssfsi(float noundef -1.500000e+00, i32 noundef 0) #2
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 1, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @test__fixunssfsi(float noundef 0xBFFFD70A40000000, i32 noundef 0) #2
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  store i32 1, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 @test__fixunssfsi(float noundef -2.000000e+00, i32 noundef 0) #2
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  store i32 1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end48
  %call53 = call i32 @test__fixunssfsi(float noundef 0xC000147AE0000000, i32 noundef 0) #2
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  store i32 1, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @test__fixunssfsi(float noundef 0x41E0000000000000, i32 noundef -2147483648) #2
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  store i32 1, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end56
  %call61 = call i32 @test__fixunssfsi(float noundef 0x41F0000000000000, i32 noundef -1) #2
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  store i32 1, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @test__fixunssfsi(float noundef 0x41EFFFFFE0000000, i32 noundef -256) #2
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  store i32 1, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end64
  %call69 = call i32 @test__fixunssfsi(float noundef 0x41DFFFFFE0000000, i32 noundef 2147483520) #2
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  store i32 1, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @test__fixunssfsi(float noundef 0x41DFFFFFC0000000, i32 noundef 2147483392) #2
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  store i32 1, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end72
  %call77 = call i32 @test__fixunssfsi(float noundef 0xC1DFFFFFE0000000, i32 noundef 0) #2
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  store i32 1, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @test__fixunssfsi(float noundef 0xC1DFFFFFC0000000, i32 noundef 0) #2
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  store i32 1, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end80
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end84, %if.then83, %if.then79, %if.then75, %if.then71, %if.then67, %if.then63, %if.then59, %if.then55, %if.then51, %if.then47, %if.then43, %if.then39, %if.then35, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32f"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 0}
!6 = !{!"clang version 22.1.8"}
