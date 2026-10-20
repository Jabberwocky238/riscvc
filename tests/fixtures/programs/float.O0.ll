; ModuleID = 'tests/programs/float.c'
source_filename = "tests/programs/float.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%union.anon = type { float }

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i32, align 4
  %acc = alloca float, align 4
  %nan = alloca float, align 4
  %i = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %e = alloca float, align 4
  %term = alloca float, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %h, align 4
  store float 0.000000e+00, ptr %acc, align 4
  store float 0x7FF8000000000000, ptr %nan, align 4
  store i32 -50, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = sitofp i32 %1 to float
  %2 = call float @llvm.fmuladd.f32(float %conv, float 0x3FD7AE1480000000, float 0x3F847AE140000000)
  store float %2, ptr %x, align 4
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %3, %4
  %conv1 = sitofp i32 %mul to float
  %div = fdiv float %conv1, 7.000000e+00
  %sub = fsub float %div, 3.000000e+00
  store float %sub, ptr %y, align 4
  %5 = load float, ptr %x, align 4
  %6 = load float, ptr %y, align 4
  %7 = load float, ptr %x, align 4
  %8 = load float, ptr %y, align 4
  %cmp3 = fcmp oeq float %8, 0.000000e+00
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load float, ptr %y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 1.000000e+00, %cond.true ], [ %9, %cond.false ]
  %div5 = fdiv float %7, %cond
  %neg = fneg float %div5
  %10 = call float @llvm.fmuladd.f32(float %5, float %6, float %neg)
  %11 = load float, ptr %acc, align 4
  %add = fadd float %11, %10
  store float %add, ptr %acc, align 4
  %12 = load float, ptr %x, align 4
  %13 = call float @llvm.fabs.f32(float %12)
  %call = call float @sqrtf(float noundef %13) #3
  %call6 = call i32 @bits(float noundef %call) #4
  %14 = load i32, ptr %h, align 4
  %add7 = add i32 %14, %call6
  store i32 %add7, ptr %h, align 4
  %15 = load float, ptr %x, align 4
  %16 = load float, ptr %y, align 4
  %17 = load float, ptr %acc, align 4
  %call8 = call float @fmaf(float noundef %15, float noundef %16, float noundef %17) #3
  %call9 = call i32 @bits(float noundef %call8) #4
  %18 = load i32, ptr %h, align 4
  %xor = xor i32 %18, %call9
  store i32 %xor, ptr %h, align 4
  %19 = load float, ptr %x, align 4
  %20 = load float, ptr %y, align 4
  %cmp10 = fcmp olt float %19, %20
  %conv11 = zext i1 %cmp10 to i32
  %21 = load float, ptr %x, align 4
  %22 = load float, ptr %y, align 4
  %cmp12 = fcmp ole float %21, %22
  %conv13 = zext i1 %cmp12 to i32
  %mul14 = mul i32 %conv13, 2
  %add15 = add i32 %conv11, %mul14
  %23 = load float, ptr %x, align 4
  %24 = load float, ptr %y, align 4
  %cmp16 = fcmp oeq float %23, %24
  %conv17 = zext i1 %cmp16 to i32
  %mul18 = mul i32 %conv17, 4
  %add19 = add i32 %add15, %mul18
  %25 = load float, ptr %x, align 4
  %cmp20 = fcmp olt float 0x7FF8000000000000, %25
  %conv21 = zext i1 %cmp20 to i32
  %mul22 = mul i32 %conv21, 8
  %add23 = add i32 %add19, %mul22
  %26 = load float, ptr %x, align 4
  %cmp24 = fcmp une float 0x7FF8000000000000, %26
  %conv25 = zext i1 %cmp24 to i32
  %mul26 = mul i32 %conv25, 16
  %add27 = add i32 %add23, %mul26
  %27 = load i32, ptr %h, align 4
  %add28 = add i32 %27, %add27
  store i32 %add28, ptr %h, align 4
  %28 = load float, ptr %x, align 4
  %mul29 = fmul float %28, 1.000000e+03
  %conv30 = fptosi float %mul29 to i32
  %29 = load float, ptr %y, align 4
  %30 = call float @llvm.fabs.f32(float %29)
  %mul31 = fmul float %30, 1.000000e+02
  %conv32 = fptoui float %mul31 to i32
  %add33 = add i32 %conv30, %conv32
  %31 = load i32, ptr %h, align 4
  %add34 = add i32 %31, %add33
  store i32 %add34, ptr %h, align 4
  %32 = load float, ptr %y, align 4
  %mul35 = fmul float %32, 3.000000e+00
  %conv36 = fptosi float %mul35 to i32
  %conv37 = sitofp i32 %conv36 to float
  %call38 = call i32 @bits(float noundef %conv37) #4
  %33 = load i32, ptr %i, align 4
  %add39 = add nsw i32 %33, 50
  %conv40 = uitofp i32 %add39 to float
  %mul41 = fmul float %conv40, 1.500000e+00
  %call42 = call i32 @bits(float noundef %mul41) #4
  %add43 = add i32 %call38, %call42
  %34 = load i32, ptr %h, align 4
  %add44 = add i32 %34, %add43
  store i32 %add44, ptr %h, align 4
  %35 = load float, ptr %x, align 4
  %36 = load float, ptr %y, align 4
  %37 = call float @llvm.minnum.f32(float %35, float %36)
  %call45 = call i32 @bits(float noundef %37) #4
  %38 = load float, ptr %x, align 4
  %39 = call float @llvm.maxnum.f32(float %38, float 0x7FF8000000000000)
  %call46 = call i32 @bits(float noundef %39) #4
  %xor47 = xor i32 %call45, %call46
  %40 = load i32, ptr %h, align 4
  %add48 = add i32 %40, %xor47
  store i32 %add48, ptr %h, align 4
  %41 = load float, ptr %x, align 4
  %call49 = call float @poly(float noundef %41) #4
  %call50 = call i32 @bits(float noundef %call49) #4
  %shr = lshr i32 %call50, 3
  %42 = load i32, ptr %h, align 4
  %add51 = add i32 %42, %shr
  store i32 %add51, ptr %h, align 4
  %43 = load i32, ptr %h, align 4
  %shl = shl i32 %43, 3
  %44 = load i32, ptr %h, align 4
  %shr52 = lshr i32 %44, 29
  %or = or i32 %shl, %shr52
  store i32 %or, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %45 = load i32, ptr %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store float 1.000000e+00, ptr %e, align 4
  store float 1.000000e+00, ptr %term, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc60, %for.end
  %46 = load i32, ptr %k, align 4
  %cmp54 = icmp slt i32 %46, 15
  br i1 %cmp54, label %for.body56, label %for.end62

for.body56:                                       ; preds = %for.cond53
  %47 = load i32, ptr %k, align 4
  %conv57 = sitofp i32 %47 to float
  %48 = load float, ptr %term, align 4
  %div58 = fdiv float %48, %conv57
  store float %div58, ptr %term, align 4
  %49 = load float, ptr %term, align 4
  %50 = load float, ptr %e, align 4
  %add59 = fadd float %50, %49
  store float %add59, ptr %e, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.body56
  %51 = load i32, ptr %k, align 4
  %inc61 = add nsw i32 %51, 1
  store i32 %inc61, ptr %k, align 4
  br label %for.cond53, !llvm.loop !9

for.end62:                                        ; preds = %for.cond53
  %52 = load float, ptr %e, align 4
  %call63 = call i32 @bits(float noundef %52) #4
  %call64 = call float @newton_sqrt(float noundef 2.000000e+00) #4
  %call65 = call i32 @bits(float noundef %call64) #4
  %add66 = add i32 %call63, %call65
  %53 = load float, ptr %acc, align 4
  %call67 = call i32 @bits(float noundef %53) #4
  %add68 = add i32 %add66, %call67
  %54 = load i32, ptr %h, align 4
  %add69 = add i32 %54, %add68
  store i32 %add69, ptr %h, align 4
  %55 = load i32, ptr %h, align 4
  ret i32 %55
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @bits(float noundef %f) #0 {
entry:
  %f.addr = alloca float, align 4
  %u = alloca %union.anon, align 4
  store float %f, ptr %f.addr, align 4
  %0 = load float, ptr %f.addr, align 4
  store float %0, ptr %u, align 4
  %1 = load i32, ptr %u, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nounwind
declare dso_local float @fmaf(float noundef, float noundef, float noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

; Function Attrs: noinline nounwind optnone
define internal float @poly(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  %0 = load float, ptr %x.addr, align 4
  %1 = call float @llvm.fmuladd.f32(float 0x3FB99999A0000000, float %0, float 0xBFD3333340000000)
  %2 = load float, ptr %x.addr, align 4
  %3 = call float @llvm.fmuladd.f32(float %1, float %2, float 0x3FFB333340000000)
  %4 = load float, ptr %x.addr, align 4
  %5 = call float @llvm.fmuladd.f32(float %3, float %4, float -2.000000e+00)
  ret float %5
}

; Function Attrs: noinline nounwind optnone
define internal float @newton_sqrt(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  %g = alloca float, align 4
  %i = alloca i32, align 4
  store float %x, ptr %x.addr, align 4
  %0 = load float, ptr %x.addr, align 4
  %cmp = fcmp ogt float %0, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load float, ptr %x.addr, align 4
  %div = fdiv float %1, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %div, %cond.true ], [ 1.000000e+00, %cond.false ]
  store float %cond, ptr %g, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %2 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %2, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load float, ptr %g, align 4
  %4 = load float, ptr %x.addr, align 4
  %5 = load float, ptr %g, align 4
  %div2 = fdiv float %4, %5
  %add = fadd float %3, %div2
  %mul = fmul float 5.000000e-01, %add
  store float %mul, ptr %g, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load float, ptr %g, align 4
  ret float %7
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
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
