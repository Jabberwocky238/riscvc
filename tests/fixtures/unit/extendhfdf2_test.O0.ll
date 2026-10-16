; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/extendhfdf2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/extendhfdf2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [53 x i8] c"error in test__extendhfdf2(%#.4x) = %f, expected %f\0A\00", align 1
@assumption_1 = dso_local global [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__extendhfdf2(half noundef %a, i64 noundef %expected) #0 {
entry:
  %a.addr = alloca half, align 2
  %expected.addr = alloca i64, align 8
  %x = alloca double, align 8
  %ret = alloca i32, align 4
  store half %a, ptr %a.addr, align 2
  store i64 %expected, ptr %expected.addr, align 8
  %0 = load half, ptr %a.addr, align 2
  %call = call double @__extendhfdf2(half noundef %0) #2
  store double %call, ptr %x, align 8
  %1 = load double, ptr %x, align 8
  %2 = load i64, ptr %expected.addr, align 8
  %call1 = call i32 @compareResultD(double noundef %1, i64 noundef %2) #2
  store i32 %call1, ptr %ret, align 4
  %3 = load i32, ptr %ret, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load half, ptr %a.addr, align 2
  %call2 = call zeroext i16 @toRep16(half noundef %4) #2
  %conv = zext i16 %call2 to i32
  %5 = load double, ptr %x, align 8
  %6 = load i64, ptr %expected.addr, align 8
  %call3 = call double @fromRep64(i64 noundef %6) #2
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv, double noundef %5, double noundef %call3) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %ret, align 4
  ret i32 %7
}

declare dso_local double @__extendhfdf2(half noundef) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @compareResultD(double noundef %result, i64 noundef %expected) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca double, align 8
  %expected.addr = alloca i64, align 8
  %rep = alloca i64, align 8
  store double %result, ptr %result.addr, align 8
  store i64 %expected, ptr %expected.addr, align 8
  %0 = load double, ptr %result.addr, align 8
  %call = call i64 @toRep64(double noundef %0) #2
  store i64 %call, ptr %rep, align 8
  %1 = load i64, ptr %rep, align 8
  %2 = load i64, ptr %expected.addr, align 8
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %expected.addr, align 8
  %cmp1 = icmp eq i64 %3, 9221120237041090560
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.else
  %4 = load i64, ptr %rep, align 8
  %and = and i64 %4, 9218868437227405312
  %cmp3 = icmp eq i64 %and, 9218868437227405312
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then2
  %5 = load i64, ptr %rep, align 8
  %and4 = and i64 %5, 4503599627370495
  %cmp5 = icmp ugt i64 %and4, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone
define internal zeroext i16 @toRep16(half noundef %x) #0 {
entry:
  %x.addr = alloca half, align 2
  %ret = alloca i16, align 2
  store half %x, ptr %x.addr, align 2
  %call = call ptr @memcpy(ptr noundef %ret, ptr noundef %x.addr, i32 noundef 2) #2
  %0 = load i16, ptr %ret, align 2
  ret i16 %0
}

; Function Attrs: noinline nounwind optnone
define internal double @fromRep64(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %ret = alloca double, align 8
  store i64 %x, ptr %x.addr, align 8
  %call = call ptr @memcpy(ptr noundef %ret, ptr noundef %x.addr, i32 noundef 8) #2
  %0 = load double, ptr %ret, align 8
  ret double %0
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call half @makeQNaN16() #2
  %call1 = call i32 @test__extendhfdf2(half noundef %call, i64 noundef 9221120237041090560) #2
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call half @fromRep16(i16 noundef zeroext 32640) #2
  %call3 = call i32 @test__extendhfdf2(half noundef %call2, i64 noundef 9222809086901354496) #2
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = call half @makeInf16() #2
  %call8 = call i32 @test__extendhfdf2(half noundef %call7, i64 noundef 9218868437227405312) #2
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %call12 = call half @makeNegativeInf16() #2
  %call13 = call i32 @test__extendhfdf2(half noundef %call12, i64 noundef -4503599627370496) #2
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  store i32 1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %call17 = call half @fromRep16(i16 noundef zeroext 0) #2
  %call18 = call i32 @test__extendhfdf2(half noundef %call17, i64 noundef 0) #2
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  %call22 = call half @fromRep16(i16 noundef zeroext -32768) #2
  %call23 = call i32 @test__extendhfdf2(half noundef %call22, i64 noundef -9223372036854775808) #2
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  store i32 1, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end21
  %call27 = call half @fromRep16(i16 noundef zeroext 16968) #2
  %call28 = call i32 @test__extendhfdf2(half noundef %call27, i64 noundef 4614254477589872640) #2
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  store i32 1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end26
  %call32 = call half @fromRep16(i16 noundef zeroext -15800) #2
  %call33 = call i32 @test__extendhfdf2(half noundef %call32, i64 noundef -4609117559264903168) #2
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  store i32 1, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end31
  %call37 = call half @fromRep16(i16 noundef zeroext 28258) #2
  %call38 = call i32 @test__extendhfdf2(half noundef %call37, i64 noundef 4663908422700236800) #2
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  store i32 1, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end36
  %call42 = call half @fromRep16(i16 noundef zeroext 15360) #2
  %call43 = call i32 @test__extendhfdf2(half noundef %call42, i64 noundef 4607182418800017408) #2
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  store i32 1, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end41
  %call47 = call half @fromRep16(i16 noundef zeroext 1024) #2
  %call48 = call i32 @test__extendhfdf2(half noundef %call47, i64 noundef 4544132024016830464) #2
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  store i32 1, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end46
  %call52 = call half @fromRep16(i16 noundef zeroext 16) #2
  %call53 = call i32 @test__extendhfdf2(half noundef %call52, i64 noundef 4517110426252607488) #2
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  store i32 1, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end51
  %call57 = call half @fromRep16(i16 noundef zeroext 1) #2
  %call58 = call i32 @test__extendhfdf2(half noundef %call57, i64 noundef 4499096027743125504) #2
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  store i32 1, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.end56
  %call62 = call half @fromRep16(i16 noundef zeroext -32767) #2
  %call63 = call i32 @test__extendhfdf2(half noundef %call62, i64 noundef -4724276009111650304) #2
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end61
  store i32 1, ptr %retval, align 4
  br label %return

if.end66:                                         ; preds = %if.end61
  %call67 = call half @fromRep16(i16 noundef zeroext 1) #2
  %call68 = call i32 @test__extendhfdf2(half noundef %call67, i64 noundef 4499096027743125504) #2
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end66
  store i32 1, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.end66
  %call72 = call half @fromRep16(i16 noundef zeroext 31743) #2
  %call73 = call i32 @test__extendhfdf2(half noundef %call72, i64 noundef 4679235614791434240) #2
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end71
  store i32 1, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end71
  %call77 = call half @fromRep16(i16 noundef zeroext 31743) #2
  %call78 = call i32 @test__extendhfdf2(half noundef %call77, i64 noundef 4679235614791434240) #2
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end76
  store i32 1, ptr %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.end76
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end81, %if.then80, %if.then75, %if.then70, %if.then65, %if.then60, %if.then55, %if.then50, %if.then45, %if.then40, %if.then35, %if.then30, %if.then25, %if.then20, %if.then15, %if.then10, %if.then5, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone
define internal half @makeQNaN16() #0 {
entry:
  %call = call half @fromRep16(i16 noundef zeroext 32256) #2
  ret half %call
}

; Function Attrs: noinline nounwind optnone
define internal half @fromRep16(i16 noundef zeroext %x) #0 {
entry:
  %x.addr = alloca i16, align 2
  %ret = alloca half, align 2
  store i16 %x, ptr %x.addr, align 2
  %call = call ptr @memcpy(ptr noundef %ret, ptr noundef %x.addr, i32 noundef 2) #2
  %0 = load half, ptr %ret, align 2
  ret half %0
}

; Function Attrs: noinline nounwind optnone
define internal half @makeInf16() #0 {
entry:
  %call = call half @fromRep16(i16 noundef zeroext 31744) #2
  ret half %call
}

; Function Attrs: noinline nounwind optnone
define internal half @makeNegativeInf16() #0 {
entry:
  %call = call half @fromRep16(i16 noundef zeroext -1024) #2
  ret half %call
}

; Function Attrs: noinline nounwind optnone
define internal i64 @toRep64(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %ret = alloca i64, align 8
  store double %x, ptr %x.addr, align 8
  %call = call ptr @memcpy(ptr noundef %ret, ptr noundef %x.addr, i32 noundef 8) #2
  %0 = load i64, ptr %ret, align 8
  ret i64 %0
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) #1

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
