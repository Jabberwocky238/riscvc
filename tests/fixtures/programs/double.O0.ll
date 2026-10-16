; ModuleID = 'tests/programs/double.c'
source_filename = "tests/programs/double.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%union.anon = type { double }

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i64, align 8
  %pi = alloca double, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %f = alloca float, align 4
  store i64 0, ptr %h, align 8
  store double 0.000000e+00, ptr %pi, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %k, align 4
  %rem = srem i32 %1, 2
  %tobool = icmp ne i32 %rem, 0
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, double -4.000000e+00, double 4.000000e+00
  %3 = load i32, ptr %k, align 4
  %mul = mul nsw i32 2, %3
  %add = add nsw i32 %mul, 1
  %conv = sitofp i32 %add to double
  %div = fdiv double %cond, %conv
  %4 = load double, ptr %pi, align 8
  %add1 = fadd double %4, %div
  store double %add1, ptr %pi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 -20, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc53, %for.end
  %6 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %6, 20
  br i1 %cmp3, label %for.body5, label %for.end55

for.body5:                                        ; preds = %for.cond2
  %7 = load i32, ptr %i, align 4
  %conv6 = sitofp i32 %7 to double
  %8 = call double @llvm.fmuladd.f64(double %conv6, double 1.250000e+00, double 5.000000e-01)
  store double %8, ptr %x, align 8
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %i, align 4
  %mul8 = mul nsw i32 %9, %10
  %11 = load i32, ptr %i, align 4
  %mul9 = mul nsw i32 %mul8, %11
  %conv10 = sitofp i32 %mul9 to double
  %div11 = fdiv double %conv10, 9.000000e+00
  store double %div11, ptr %y, align 8
  %12 = load double, ptr %x, align 8
  %13 = load double, ptr %y, align 8
  %mul12 = fmul double %12, %13
  %call = call i64 @bits(double noundef %mul12) #2
  %14 = load double, ptr %x, align 8
  %15 = load double, ptr %y, align 8
  %cmp13 = fcmp oeq double %15, 0.000000e+00
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body5
  br label %cond.end

cond.false:                                       ; preds = %for.body5
  %16 = load double, ptr %y, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi double [ 3.000000e+00, %cond.true ], [ %16, %cond.false ]
  %div16 = fdiv double %14, %cond15
  %call17 = call i64 @bits(double noundef %div16) #2
  %xor = xor i64 %call, %call17
  %17 = load double, ptr %x, align 8
  %18 = load double, ptr %y, align 8
  %sub = fsub double %17, %18
  %call18 = call i64 @bits(double noundef %sub) #2
  %xor19 = xor i64 %xor, %call18
  %19 = load i64, ptr %h, align 8
  %add20 = add i64 %19, %xor19
  store i64 %add20, ptr %h, align 8
  %20 = load double, ptr %x, align 8
  %21 = load double, ptr %y, align 8
  %cmp21 = fcmp olt double %20, %21
  %conv22 = zext i1 %cmp21 to i32
  %conv23 = sext i32 %conv22 to i64
  %22 = load double, ptr %x, align 8
  %23 = load double, ptr %y, align 8
  %cmp24 = fcmp oge double %22, %23
  %conv25 = zext i1 %cmp24 to i32
  %conv26 = sext i32 %conv25 to i64
  %mul27 = mul i64 %conv26, 2
  %add28 = add i64 %conv23, %mul27
  %24 = load double, ptr %x, align 8
  %25 = load double, ptr %y, align 8
  %cmp29 = fcmp une double %24, %25
  %conv30 = zext i1 %cmp29 to i32
  %conv31 = sext i32 %conv30 to i64
  %mul32 = mul i64 %conv31, 4
  %add33 = add i64 %add28, %mul32
  %26 = load i64, ptr %h, align 8
  %add34 = add i64 %26, %add33
  store i64 %add34, ptr %h, align 8
  %27 = load double, ptr %y, align 8
  %mul35 = fmul double %27, 1.000000e+06
  %conv36 = fptosi double %mul35 to i64
  %28 = load double, ptr %x, align 8
  %conv37 = fptosi double %28 to i32
  %conv38 = sext i32 %conv37 to i64
  %add39 = add i64 %conv36, %conv38
  %29 = load i32, ptr %i, align 4
  %add40 = add nsw i32 %29, 20
  %conv41 = zext i32 %add40 to i64
  %add42 = add i64 %add39, %conv41
  %30 = load i64, ptr %h, align 8
  %add43 = add i64 %30, %add42
  store i64 %add43, ptr %h, align 8
  %31 = load double, ptr %y, align 8
  %conv44 = fptrunc double %31 to float
  store float %conv44, ptr %f, align 4
  %32 = load float, ptr %f, align 4
  %conv45 = fpext float %32 to double
  %call46 = call i64 @bits(double noundef %conv45) #2
  %33 = load double, ptr %x, align 8
  %mul47 = fmul double %33, 1.000000e+09
  %conv48 = fptosi double %mul47 to i64
  %conv49 = sitofp i64 %conv48 to double
  %call50 = call i64 @bits(double noundef %conv49) #2
  %add51 = add i64 %call46, %call50
  %34 = load i64, ptr %h, align 8
  %add52 = add i64 %34, %add51
  store i64 %add52, ptr %h, align 8
  %35 = load i64, ptr %h, align 8
  %shl = shl i64 %35, 7
  %36 = load i64, ptr %h, align 8
  %shr = lshr i64 %36, 57
  %or = or i64 %shl, %shr
  store i64 %or, ptr %h, align 8
  br label %for.inc53

for.inc53:                                        ; preds = %cond.end
  %37 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %37, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond2, !llvm.loop !9

for.end55:                                        ; preds = %for.cond2
  %38 = load double, ptr %pi, align 8
  %call56 = call i64 @bits(double noundef %38) #2
  %39 = load i64, ptr %h, align 8
  %add57 = add i64 %39, %call56
  store i64 %add57, ptr %h, align 8
  %40 = load i64, ptr %h, align 8
  %41 = load i64, ptr %h, align 8
  %shr58 = lshr i64 %41, 32
  %xor59 = xor i64 %40, %shr58
  %conv60 = trunc i64 %xor59 to i32
  ret i32 %conv60
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone
define internal i64 @bits(double noundef %d) #0 {
entry:
  %d.addr = alloca double, align 8
  %u = alloca %union.anon, align 8
  store double %d, ptr %d.addr, align 8
  %0 = load double, ptr %d.addr, align 8
  store double %0, ptr %u, align 8
  %1 = load i64, ptr %u, align 8
  ret i64 %1
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
