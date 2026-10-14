; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/divdf3_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/divdf3_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [61 x i8] c"error in test__divdf3(%.20e, %.20e) = %.20e, expected %.20e\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__divdf3(double noundef %a, double noundef %b, i64 noundef %expected) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %expected.addr = alloca i64, align 8
  %x = alloca double, align 8
  %ret = alloca i32, align 4
  store double %a, ptr %a.addr, align 8
  store double %b, ptr %b.addr, align 8
  store i64 %expected, ptr %expected.addr, align 8
  %0 = load double, ptr %a.addr, align 8
  %1 = load double, ptr %b.addr, align 8
  %call = call double @__divdf3(double noundef %0, double noundef %1) #2
  store double %call, ptr %x, align 8
  %2 = load double, ptr %x, align 8
  %3 = load i64, ptr %expected.addr, align 8
  %call1 = call i32 @compareResultD(double noundef %2, i64 noundef %3) #2
  store i32 %call1, ptr %ret, align 4
  %4 = load i32, ptr %ret, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load double, ptr %a.addr, align 8
  %6 = load double, ptr %b.addr, align 8
  %7 = load double, ptr %x, align 8
  %8 = load i64, ptr %expected.addr, align 8
  %call2 = call double @fromRep64(i64 noundef %8) #2
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %5, double noundef %6, double noundef %7, double noundef %call2) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %ret, align 4
  ret i32 %9
}

declare dso_local double @__divdf3(double noundef, double noundef) #1

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
  %call = call double @makeQNaN64() #2
  %call1 = call i32 @test__divdf3(double noundef %call, double noundef 3.000000e+00, i64 noundef 9221120237041090560) #2
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call double @makeNaN64(i64 noundef 291) #2
  %call3 = call i32 @test__divdf3(double noundef %call2, double noundef 3.000000e+00, i64 noundef 9221120237041090560) #2
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = call double @makeQNaN64() #2
  %call8 = call i32 @test__divdf3(double noundef 3.000000e+00, double noundef %call7, i64 noundef 9221120237041090560) #2
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %call12 = call double @makeNaN64(i64 noundef 291) #2
  %call13 = call i32 @test__divdf3(double noundef 3.000000e+00, double noundef %call12, i64 noundef 9221120237041090560) #2
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  store i32 1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %call17 = call double @makeInf64() #2
  %call18 = call i32 @test__divdf3(double noundef %call17, double noundef 3.000000e+00, i64 noundef 9218868437227405312) #2
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  %call22 = call double @makeInf64() #2
  %call23 = call i32 @test__divdf3(double noundef %call22, double noundef -3.000000e+00, i64 noundef -4503599627370496) #2
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  store i32 1, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end21
  %call27 = call double @makeNegativeInf64() #2
  %call28 = call i32 @test__divdf3(double noundef %call27, double noundef 3.000000e+00, i64 noundef -4503599627370496) #2
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  store i32 1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end26
  %call32 = call double @makeNegativeInf64() #2
  %call33 = call i32 @test__divdf3(double noundef %call32, double noundef -3.000000e+00, i64 noundef 9218868437227405312) #2
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  store i32 1, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end31
  %call37 = call double @makeInf64() #2
  %call38 = call double @makeInf64() #2
  %call39 = call i32 @test__divdf3(double noundef %call37, double noundef %call38, i64 noundef 9221120237041090560) #2
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end36
  store i32 1, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end36
  %call43 = call i32 @test__divdf3(double noundef 0.000000e+00, double noundef 0.000000e+00, i64 noundef 9221120237041090560) #2
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  store i32 1, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end42
  %call47 = call double @makeInf64() #2
  %call48 = call i32 @test__divdf3(double noundef 0.000000e+00, double noundef %call47, i64 noundef 0) #2
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  store i32 1, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end46
  %call52 = call double @makeInf64() #2
  %call53 = call i32 @test__divdf3(double noundef %call52, double noundef 0.000000e+00, i64 noundef 9218868437227405312) #2
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  store i32 1, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end51
  %call57 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 0.000000e+00, i64 noundef 9218868437227405312) #2
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end56
  store i32 1, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end56
  %call61 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef -0.000000e+00, i64 noundef -4503599627370496) #2
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  store i32 1, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @test__divdf3(double noundef -1.000000e+00, double noundef 0.000000e+00, i64 noundef -4503599627370496) #2
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end64
  store i32 1, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.end64
  %call69 = call i32 @test__divdf3(double noundef -1.000000e+00, double noundef -0.000000e+00, i64 noundef 9218868437227405312) #2
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  store i32 1, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 3.000000e+00, i64 noundef 4599676419421066581) #2
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  store i32 1, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end72
  %call77 = call i32 @test__divdf3(double noundef 0x20000000000000, double noundef 2.000000e+00, i64 noundef 4503599627370496) #2
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  store i32 1, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 4607182418800017408) #2
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  store i32 1, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end80
  %call85 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 0x3FF0000000100000, i64 noundef 4607182418797920256) #2
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  store i32 1, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end84
  %call89 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 2.000000e+00, i64 noundef 2251799813685248) #2
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  store i32 1, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.end88
  %call93 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 0x4330000000000000, i64 noundef 1) #2
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  store i32 1, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end92
  %call97 = call i32 @test__divdf3(double noundef 0x16DFDC239DD64735, double noundef 0x84BFFF9364C0843F, i64 noundef -3310184691120799823) #2
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  store i32 1, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end96
  %call101 = call i32 @test__divdf3(double noundef 0xF1978ABB261D47C8, double noundef 0x509FB01D537CC5AE, i64 noundef -2240604497976220701) #2
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end100
  store i32 1, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end100
  %call105 = call i32 @test__divdf3(double noundef 0x894DA7DFE6048B8B, double noundef 0x19DFFC7EA3FF60A4, i64 noundef -5810299790845108694) #2
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  store i32 1, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.end104
  %call109 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 5.000000e+01, i64 noundef 90071992547410) #2
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end108
  store i32 1, ptr %retval, align 4
  br label %return

if.end112:                                        ; preds = %if.end108
  %call113 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 0x4280028000000000, i64 noundef 2047) #2
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end112
  store i32 1, ptr %retval, align 4
  br label %return

if.end116:                                        ; preds = %if.end112
  %call117 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 0x4330028000000000, i64 noundef 1) #2
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end116
  store i32 1, ptr %retval, align 4
  br label %return

if.end120:                                        ; preds = %if.end116
  %call121 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 0x3FEFFFFFFFFFFFFF, i64 noundef 4607182418800017409) #2
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end120
  store i32 1, ptr %retval, align 4
  br label %return

if.end124:                                        ; preds = %if.end120
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end124, %if.then123, %if.then119, %if.then115, %if.then111, %if.then107, %if.then103, %if.then99, %if.then95, %if.then91, %if.then87, %if.then83, %if.then79, %if.then75, %if.then71, %if.then67, %if.then63, %if.then59, %if.then55, %if.then50, %if.then45, %if.then41, %if.then35, %if.then30, %if.then25, %if.then20, %if.then15, %if.then10, %if.then5, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone
define internal double @makeQNaN64() #0 {
entry:
  %call = call double @fromRep64(i64 noundef 9221120237041090560) #2
  ret double %call
}

; Function Attrs: noinline nounwind optnone
define internal double @makeNaN64(i64 noundef %rand) #0 {
entry:
  %rand.addr = alloca i64, align 8
  store i64 %rand, ptr %rand.addr, align 8
  %0 = load i64, ptr %rand.addr, align 8
  %and = and i64 %0, 4503599627370495
  %or = or i64 9218868437227405312, %and
  %call = call double @fromRep64(i64 noundef %or) #2
  ret double %call
}

; Function Attrs: noinline nounwind optnone
define internal double @makeInf64() #0 {
entry:
  %call = call double @fromRep64(i64 noundef 9218868437227405312) #2
  ret double %call
}

; Function Attrs: noinline nounwind optnone
define internal double @makeNegativeInf64() #0 {
entry:
  %call = call double @fromRep64(i64 noundef -4503599627370496) #2
  ret double %call
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
