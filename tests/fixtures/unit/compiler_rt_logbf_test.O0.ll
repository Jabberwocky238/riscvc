; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/compiler_rt_logbf_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/compiler_rt_logbf_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%union.anon = type { float }
%union.anon.0 = type { float }

@.str = private unnamed_addr constant [61 x i8] c"error: in __compiler_rt_logb(%a [%X]) = %a [%X] !=  %a [%X]\0A\00", align 1
@cases = dso_local global [14 x double] [double 0x3EB0C6F7A0B5ED8D, double 0xBEB0C6F7A0B5ED8D, double 0x7FF8000000000000, double 0xFFF8000000000000, double 0x7FF0000000000000, double 0xFFF0000000000000, double -1.000000e+00, double -0.000000e+00, double 0.000000e+00, double 1.000000e+00, double -2.000000e+00, double 2.000000e+00, double -5.000000e-01, double 5.000000e-01], align 8

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__compiler_rt_logbf(float noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca float, align 4
  %crt_value = alloca float, align 4
  %libm_value = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  %0 = load float, ptr %x.addr, align 4
  %call = call float @__compiler_rt_logbf(float noundef %0) #4
  store float %call, ptr %crt_value, align 4
  %1 = load float, ptr %x.addr, align 4
  %call1 = call float @logbf(float noundef %1) #4
  store float %call1, ptr %libm_value, align 4
  %2 = load float, ptr %crt_value, align 4
  %3 = load float, ptr %libm_value, align 4
  %cmp = fcmp une float %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load float, ptr %crt_value, align 4
  %5 = call i1 @llvm.is.fpclass.f32(float %4, i32 3)
  br i1 %5, label %land.lhs.true2, label %if.then

land.lhs.true2:                                   ; preds = %land.lhs.true
  %6 = load float, ptr %libm_value, align 4
  %7 = call i1 @llvm.is.fpclass.f32(float %6, i32 3)
  br i1 %7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2, %land.lhs.true
  %8 = load float, ptr %x.addr, align 4
  %conv = fpext float %8 to double
  %9 = load float, ptr %x.addr, align 4
  %call3 = call i32 @toRep(float noundef %9) #4
  %10 = load float, ptr %crt_value, align 4
  %conv4 = fpext float %10 to double
  %11 = load float, ptr %crt_value, align 4
  %call5 = call i32 @toRep(float noundef %11) #4
  %12 = load float, ptr %libm_value, align 4
  %conv6 = fpext float %12 to double
  %13 = load float, ptr %libm_value, align 4
  %call7 = call i32 @toRep(float noundef %13) #4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv, i32 noundef %call3, double noundef %conv4, i32 noundef %call5, double noundef %conv6, i32 noundef %call7) #4
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
define internal float @__compiler_rt_logbf(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  %0 = load float, ptr %x.addr, align 4
  %call = call float @__compiler_rt_logbX(float noundef %0) #4
  ret float %call
}

declare dso_local float @logbf(float noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #2

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @toRep(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  %rep = alloca %union.anon, align 4
  store float %x, ptr %x.addr, align 4
  %0 = load float, ptr %x.addr, align 4
  store float %0, ptr %rep, align 4
  %1 = load i32, ptr %rep, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 14, ptr %N, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds nuw [14 x double], ptr @cases, i32 0, i32 %1
  %2 = load double, ptr %arrayidx, align 8
  %conv = fptrunc double %2 to float
  %call = call i32 @test__compiler_rt_logbf(float noundef %conv) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 -2147483648, ptr %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %for.end
  %4 = load i32, ptr %x, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %x, align 4
  %call2 = call float @fromRep(i32 noundef %5) #4
  %call3 = call i32 @test__compiler_rt_logbf(float noundef %call2) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %while.body
  %6 = load i32, ptr %x, align 4
  %xor = xor i32 -2147483648, %6
  %call7 = call float @fromRep(i32 noundef %xor) #4
  %call8 = call i32 @test__compiler_rt_logbf(float noundef %call7) #4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %7 = load i32, ptr %x, align 4
  %shr = lshr i32 %7, 1
  store i32 %shr, ptr %x, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  store i32 -536870912, ptr %x, align 4
  br label %while.cond12

while.cond12:                                     ; preds = %if.end25, %while.end
  %8 = load i32, ptr %x, align 4
  %tobool13 = icmp ne i32 %8, 0
  br i1 %tobool13, label %while.body14, label %while.end27

while.body14:                                     ; preds = %while.cond12
  %9 = load i32, ptr %x, align 4
  %call15 = call float @fromRep(i32 noundef %9) #4
  %call16 = call i32 @test__compiler_rt_logbf(float noundef %call15) #4
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.body14
  store i32 1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %while.body14
  %10 = load i32, ptr %x, align 4
  %xor20 = xor i32 -2147483648, %10
  %call21 = call float @fromRep(i32 noundef %xor20) #4
  %call22 = call i32 @test__compiler_rt_logbf(float noundef %call21) #4
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  store i32 1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end19
  %11 = load i32, ptr %x, align 4
  %shr26 = lshr i32 %11, 1
  store i32 %shr26, ptr %x, align 4
  br label %while.cond12, !llvm.loop !10

while.end27:                                      ; preds = %while.cond12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end27, %if.then24, %if.then18, %if.then10, %if.then5, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone
define internal float @fromRep(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %rep = alloca %union.anon.0, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %rep, align 4
  %1 = load float, ptr %rep, align 4
  ret float %1
}

; Function Attrs: noinline nounwind optnone
define internal float @__compiler_rt_logbX(float noundef %x) #0 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %rep = alloca i32, align 4
  %exp = alloca i32, align 4
  %shift = alloca i32, align 4
  store float %x, ptr %x.addr, align 4
  %0 = load float, ptr %x.addr, align 4
  %call = call i32 @toRep(float noundef %0) #4
  store i32 %call, ptr %rep, align 4
  %1 = load i32, ptr %rep, align 4
  %and = and i32 %1, 2139095040
  %shr = lshr i32 %and, 23
  store i32 %shr, ptr %exp, align 4
  %2 = load i32, ptr %exp, align 4
  %cmp = icmp eq i32 %2, 255
  br i1 %cmp, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rep, align 4
  %and1 = and i32 %3, -2147483648
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load float, ptr %x.addr, align 4
  %5 = load float, ptr %x.addr, align 4
  %cmp3 = fcmp une float %4, %5
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load float, ptr %x.addr, align 4
  store float %6, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %7 = load float, ptr %x.addr, align 4
  %fneg = fneg float %7
  store float %fneg, ptr %retval, align 4
  br label %return

if.else5:                                         ; preds = %entry
  %8 = load float, ptr %x.addr, align 4
  %conv = fpext float %8 to double
  %cmp6 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else5
  %call9 = call float @fromRep(i32 noundef -8388608) #4
  store float %call9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else5
  br label %if.end10

if.end10:                                         ; preds = %if.end
  %9 = load i32, ptr %exp, align 4
  %cmp11 = icmp ne i32 %9, 0
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.end10
  %10 = load i32, ptr %exp, align 4
  %sub = sub nsw i32 %10, 127
  %conv14 = sitofp i32 %sub to float
  store float %conv14, ptr %retval, align 4
  br label %return

if.else15:                                        ; preds = %if.end10
  %11 = load i32, ptr %rep, align 4
  %and16 = and i32 %11, 2147483647
  store i32 %and16, ptr %rep, align 4
  %call17 = call i32 @normalize(ptr noundef %rep) #4
  %sub18 = sub nsw i32 1, %call17
  store i32 %sub18, ptr %shift, align 4
  %12 = load i32, ptr %rep, align 4
  %and19 = and i32 %12, 2139095040
  %shr20 = lshr i32 %and19, 23
  store i32 %shr20, ptr %exp, align 4
  %13 = load i32, ptr %exp, align 4
  %sub21 = sub nsw i32 %13, 127
  %14 = load i32, ptr %shift, align 4
  %sub22 = sub nsw i32 %sub21, %14
  %conv23 = sitofp i32 %sub22 to float
  store float %conv23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else15, %if.then13, %if.then8, %if.else, %if.then4
  %15 = load float, ptr %retval, align 4
  ret float %15
}

; Function Attrs: noinline nounwind optnone
define internal i32 @normalize(ptr noundef %significand) #0 {
entry:
  %significand.addr = alloca ptr, align 4
  %shift = alloca i32, align 4
  store ptr %significand, ptr %significand.addr, align 4
  %0 = load ptr, ptr %significand.addr, align 4
  %1 = load i32, ptr %0, align 4
  %call = call i32 @rep_clz(i32 noundef %1) #4
  %call1 = call i32 @rep_clz(i32 noundef 8388608) #4
  %sub = sub nsw i32 %call, %call1
  store i32 %sub, ptr %shift, align 4
  %2 = load i32, ptr %shift, align 4
  %3 = load ptr, ptr %significand.addr, align 4
  %4 = load i32, ptr %3, align 4
  %shl = shl i32 %4, %2
  store i32 %shl, ptr %3, align 4
  %5 = load i32, ptr %shift, align 4
  %sub2 = sub nsw i32 1, %5
  ret i32 %sub2
}

; Function Attrs: noinline nounwind optnone
define internal i32 @rep_clz(i32 noundef %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true)
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
