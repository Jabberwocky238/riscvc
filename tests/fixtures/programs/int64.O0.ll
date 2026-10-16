; ModuleID = 'tests/programs/int64.c'
source_filename = "tests/programs/int64.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@s = internal global i64 1311768467463790320, align 8

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %sh = alloca i32, align 4
  %r = alloca i64, align 8
  store i64 0, ptr %h, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @next() #2
  store i64 %call, ptr %a, align 8
  %call1 = call i64 @next() #2
  %or = or i64 %call1, 1
  store i64 %or, ptr %b, align 8
  %1 = load i64, ptr %a, align 8
  store i64 %1, ptr %x, align 8
  %2 = load i64, ptr %b, align 8
  %3 = load i32, ptr %i, align 4
  %rem = srem i32 %3, 40
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %2, %sh_prom
  %or2 = or i64 %shr, 1
  store i64 %or2, ptr %y, align 8
  %4 = load i32, ptr %i, align 4
  %rem3 = srem i32 %4, 64
  store i32 %rem3, ptr %sh, align 4
  %5 = load i64, ptr %a, align 8
  %6 = load i64, ptr %b, align 8
  %mul = mul i64 %5, %6
  %7 = load i64, ptr %h, align 8
  %add = add i64 %7, %mul
  store i64 %add, ptr %h, align 8
  %8 = load i64, ptr %a, align 8
  %9 = load i64, ptr %b, align 8
  %div = udiv i64 %8, %9
  %10 = load i64, ptr %a, align 8
  %11 = load i64, ptr %b, align 8
  %rem4 = urem i64 %10, %11
  %add5 = add i64 %div, %rem4
  %12 = load i64, ptr %h, align 8
  %xor = xor i64 %12, %add5
  store i64 %xor, ptr %h, align 8
  %13 = load i64, ptr %x, align 8
  %14 = load i64, ptr %y, align 8
  %div6 = sdiv i64 %13, %14
  %15 = load i64, ptr %x, align 8
  %16 = load i64, ptr %y, align 8
  %rem7 = srem i64 %15, %16
  %xor8 = xor i64 %div6, %rem7
  %17 = load i64, ptr %h, align 8
  %add9 = add i64 %17, %xor8
  store i64 %add9, ptr %h, align 8
  %18 = load i64, ptr %a, align 8
  %19 = load i32, ptr %sh, align 4
  %sh_prom10 = zext i32 %19 to i64
  %shl = shl i64 %18, %sh_prom10
  %20 = load i64, ptr %a, align 8
  %21 = load i32, ptr %sh, align 4
  %sh_prom11 = zext i32 %21 to i64
  %shr12 = lshr i64 %20, %sh_prom11
  %xor13 = xor i64 %shl, %shr12
  %22 = load i64, ptr %x, align 8
  %23 = load i32, ptr %sh, align 4
  %sh_prom14 = zext i32 %23 to i64
  %shr15 = ashr i64 %22, %sh_prom14
  %xor16 = xor i64 %xor13, %shr15
  %24 = load i64, ptr %h, align 8
  %add17 = add i64 %24, %xor16
  store i64 %add17, ptr %h, align 8
  %25 = load i64, ptr %a, align 8
  %26 = load i64, ptr %b, align 8
  %cmp18 = icmp ult i64 %25, %26
  %conv = zext i1 %cmp18 to i32
  %27 = load i64, ptr %x, align 8
  %28 = load i64, ptr %y, align 8
  %cmp19 = icmp slt i64 %27, %28
  %conv20 = zext i1 %cmp19 to i32
  %mul21 = mul nsw i32 %conv20, 2
  %add22 = add nsw i32 %conv, %mul21
  %29 = load i64, ptr %x, align 8
  %30 = load i64, ptr %y, align 8
  %cmp23 = icmp eq i64 %29, %30
  %conv24 = zext i1 %cmp23 to i32
  %mul25 = mul nsw i32 %conv24, 4
  %add26 = add nsw i32 %add22, %mul25
  %31 = load i64, ptr %a, align 8
  %32 = load i64, ptr %b, align 8
  %cmp27 = icmp uge i64 %31, %32
  %conv28 = zext i1 %cmp27 to i32
  %mul29 = mul nsw i32 %conv28, 8
  %add30 = add nsw i32 %add26, %mul29
  %conv31 = sext i32 %add30 to i64
  %33 = load i64, ptr %h, align 8
  %add32 = add i64 %33, %conv31
  store i64 %add32, ptr %h, align 8
  %34 = load i64, ptr %x, align 8
  %35 = load i64, ptr %y, align 8
  %36 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %34, i64 %35)
  %37 = extractvalue { i64, i1 } %36, 1
  %38 = extractvalue { i64, i1 } %36, 0
  store i64 %38, ptr %r, align 8
  %conv33 = zext i1 %37 to i64
  %39 = load i64, ptr %r, align 8
  %add34 = add i64 %conv33, %39
  %40 = load i64, ptr %h, align 8
  %add35 = add i64 %40, %add34
  store i64 %add35, ptr %h, align 8
  %41 = load i64, ptr %x, align 8
  %42 = load i64, ptr %y, align 8
  %43 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %41, i64 %42)
  %44 = extractvalue { i64, i1 } %43, 1
  %45 = extractvalue { i64, i1 } %43, 0
  store i64 %45, ptr %r, align 8
  %conv36 = zext i1 %44 to i64
  %mul37 = mul i64 %conv36, 3
  %46 = load i64, ptr %r, align 8
  %add38 = add i64 %mul37, %46
  %47 = load i64, ptr %h, align 8
  %add39 = add i64 %47, %add38
  store i64 %add39, ptr %h, align 8
  %48 = load i64, ptr %a, align 8
  %shr40 = lshr i64 %48, 32
  %conv41 = trunc i64 %shr40 to i32
  %conv42 = sext i32 %conv41 to i64
  %49 = load i64, ptr %b, align 8
  %conv43 = trunc i64 %49 to i16
  %conv44 = zext i16 %conv43 to i64
  %add45 = add i64 %conv42, %conv44
  %50 = load i64, ptr %a, align 8
  %conv46 = trunc i64 %50 to i8
  %conv47 = sext i8 %conv46 to i64
  %add48 = add i64 %add45, %conv47
  %51 = load i64, ptr %h, align 8
  %add49 = add i64 %51, %add48
  store i64 %add49, ptr %h, align 8
  %52 = load i64, ptr %h, align 8
  %shl50 = shl i64 %52, 13
  %53 = load i64, ptr %h, align 8
  %shr51 = lshr i64 %53, 51
  %or52 = or i64 %shl50, %shr51
  store i64 %or52, ptr %h, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, ptr %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %55 = load i64, ptr %h, align 8
  %56 = load i64, ptr %h, align 8
  %shr53 = lshr i64 %56, 32
  %xor54 = xor i64 %55, %shr53
  %conv55 = trunc i64 %xor54 to i32
  ret i32 %conv55
}

; Function Attrs: noinline nounwind optnone
define internal i64 @next() #0 {
entry:
  %0 = load i64, ptr @s, align 8
  %shl = shl i64 %0, 7
  %1 = load i64, ptr @s, align 8
  %xor = xor i64 %1, %shl
  store i64 %xor, ptr @s, align 8
  %2 = load i64, ptr @s, align 8
  %shr = lshr i64 %2, 9
  %3 = load i64, ptr @s, align 8
  %xor1 = xor i64 %3, %shr
  store i64 %xor1, ptr @s, align 8
  %4 = load i64, ptr @s, align 8
  ret i64 %4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

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
