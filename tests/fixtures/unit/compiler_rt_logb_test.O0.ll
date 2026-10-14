; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/compiler_rt_logb_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/compiler_rt_logb_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%union.anon.0 = type { double }
%union.anon = type { double }

@.str = private unnamed_addr constant [64 x i8] c"error: in __compiler_rt_logb(%a [%lX]) = %a [%lX] !=  %a [%lX]\0A\00", align 1
@cases = dso_local global [14 x double] [double 0x3EB0C6F7A0B5ED8D, double 0xBEB0C6F7A0B5ED8D, double 0x7FF8000000000000, double 0xFFF8000000000000, double 0x7FF0000000000000, double 0xFFF0000000000000, double -1.000000e+00, double -0.000000e+00, double 0.000000e+00, double 1.000000e+00, double -2.000000e+00, double 2.000000e+00, double -5.000000e-01, double 5.000000e-01], align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"skipped\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__compiler_rt_logb(double noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %crt_value = alloca double, align 8
  %libm_value = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %call = call double @__compiler_rt_logb(double noundef %0) #4
  store double %call, ptr %crt_value, align 8
  %1 = load double, ptr %x.addr, align 8
  %call1 = call double @logb(double noundef %1) #4
  store double %call1, ptr %libm_value, align 8
  %2 = load double, ptr %crt_value, align 8
  %3 = load double, ptr %libm_value, align 8
  %cmp = fcmp une double %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load double, ptr %crt_value, align 8
  %5 = call i1 @llvm.is.fpclass.f64(double %4, i32 3)
  br i1 %5, label %land.lhs.true2, label %if.then

land.lhs.true2:                                   ; preds = %land.lhs.true
  %6 = load double, ptr %libm_value, align 8
  %7 = call i1 @llvm.is.fpclass.f64(double %6, i32 3)
  br i1 %7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2, %land.lhs.true
  %8 = load double, ptr %x.addr, align 8
  %9 = load double, ptr %x.addr, align 8
  %call3 = call i64 @toRep(double noundef %9) #4
  %10 = load double, ptr %crt_value, align 8
  %11 = load double, ptr %crt_value, align 8
  %call4 = call i64 @toRep(double noundef %11) #4
  %12 = load double, ptr %libm_value, align 8
  %13 = load double, ptr %libm_value, align 8
  %call5 = call i64 @toRep(double noundef %13) #4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %8, i64 noundef %call3, double noundef %10, i64 noundef %call4, double noundef %12, i64 noundef %call5) #4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone
define internal double @__compiler_rt_logb(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %call = call double @__compiler_rt_logbX(double noundef %0) #4
  ret double %call
}

declare dso_local double @logb(double noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #2

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone
define internal i64 @toRep(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %rep = alloca %union.anon.0, align 8
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  store double %0, ptr %rep, align 8
  %1 = load i64, ptr %rep, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1) #4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone
define internal double @__compiler_rt_logbX(double noundef %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %rep = alloca i64, align 8
  %exp = alloca i32, align 4
  %shift = alloca i32, align 4
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %call = call i64 @toRep(double noundef %0) #4
  store i64 %call, ptr %rep, align 8
  %1 = load i64, ptr %rep, align 8
  %and = and i64 %1, 9218868437227405312
  %shr = lshr i64 %and, 52
  %conv = trunc i64 %shr to i32
  store i32 %conv, ptr %exp, align 4
  %2 = load i32, ptr %exp, align 4
  %cmp = icmp eq i32 %2, 2047
  br i1 %cmp, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %rep, align 8
  %and2 = and i64 %3, -9223372036854775808
  %cmp3 = icmp eq i64 %and2, 0
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load double, ptr %x.addr, align 8
  %5 = load double, ptr %x.addr, align 8
  %cmp5 = fcmp une double %4, %5
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load double, ptr %x.addr, align 8
  store double %6, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %7 = load double, ptr %x.addr, align 8
  %fneg = fneg double %7
  store double %fneg, ptr %retval, align 8
  br label %return

if.else8:                                         ; preds = %entry
  %8 = load double, ptr %x.addr, align 8
  %cmp9 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else8
  %call12 = call double @fromRep(i64 noundef -4503599627370496) #4
  store double %call12, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else8
  br label %if.end13

if.end13:                                         ; preds = %if.end
  %9 = load i32, ptr %exp, align 4
  %cmp14 = icmp ne i32 %9, 0
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.end13
  %10 = load i32, ptr %exp, align 4
  %sub = sub nsw i32 %10, 1023
  %conv17 = sitofp i32 %sub to double
  store double %conv17, ptr %retval, align 8
  br label %return

if.else18:                                        ; preds = %if.end13
  %11 = load i64, ptr %rep, align 8
  %and19 = and i64 %11, 9223372036854775807
  store i64 %and19, ptr %rep, align 8
  %call20 = call i32 @normalize(ptr noundef %rep) #4
  %sub21 = sub nsw i32 1, %call20
  store i32 %sub21, ptr %shift, align 4
  %12 = load i64, ptr %rep, align 8
  %and22 = and i64 %12, 9218868437227405312
  %shr23 = lshr i64 %and22, 52
  %conv24 = trunc i64 %shr23 to i32
  store i32 %conv24, ptr %exp, align 4
  %13 = load i32, ptr %exp, align 4
  %sub25 = sub nsw i32 %13, 1023
  %14 = load i32, ptr %shift, align 4
  %sub26 = sub nsw i32 %sub25, %14
  %conv27 = sitofp i32 %sub26 to double
  store double %conv27, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else18, %if.then16, %if.then11, %if.else, %if.then7
  %15 = load double, ptr %retval, align 8
  ret double %15
}

; Function Attrs: noinline nounwind optnone
define internal double @fromRep(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %rep = alloca %union.anon, align 8
  store i64 %x, ptr %x.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  store i64 %0, ptr %rep, align 8
  %1 = load double, ptr %rep, align 8
  ret double %1
}

; Function Attrs: noinline nounwind optnone
define internal i32 @normalize(ptr noundef %significand) #0 {
entry:
  %significand.addr = alloca ptr, align 4
  %shift = alloca i32, align 4
  store ptr %significand, ptr %significand.addr, align 4
  %0 = load ptr, ptr %significand.addr, align 4
  %1 = load i64, ptr %0, align 8
  %call = call i32 @rep_clz(i64 noundef %1) #4
  %call1 = call i32 @rep_clz(i64 noundef 4503599627370496) #4
  %sub = sub nsw i32 %call, %call1
  store i32 %sub, ptr %shift, align 4
  %2 = load i32, ptr %shift, align 4
  %3 = load ptr, ptr %significand.addr, align 4
  %4 = load i64, ptr %3, align 8
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 %4, %sh_prom
  store i64 %shl, ptr %3, align 8
  %5 = load i32, ptr %shift, align 4
  %sub2 = sub nsw i32 1, %5
  ret i32 %sub2
}

; Function Attrs: noinline nounwind optnone
define internal i32 @rep_clz(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %1 = call i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %cast = trunc i64 %1 to i32
  ret i32 %cast
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32f"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 0}
!6 = !{!"clang version 22.1.8"}
