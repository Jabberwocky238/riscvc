; ModuleID = 'tests/programs/bits.c'
source_filename = "tests/programs/bits.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i64, align 8
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i64, align 8
  store i32 0, ptr %h, align 4
  store i32 -559038737, ptr %x, align 4
  store i64 81985529216486895, ptr %y, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %x, align 4
  %mul = mul i32 %1, 69069
  %add = add i32 %mul, 1
  store i32 %add, ptr %x, align 4
  %2 = load i64, ptr %y, align 8
  %mul1 = mul i64 %2, 6364136223846793005
  %add2 = add i64 %mul1, 1442695040888963407
  store i64 %add2, ptr %y, align 8
  %3 = load i32, ptr %x, align 4
  %4 = load i32, ptr %i, align 4
  %rem = srem i32 %4, 32
  %shr = lshr i32 %3, %rem
  store i32 %shr, ptr %v, align 4
  %5 = load i64, ptr %y, align 8
  %6 = load i32, ptr %i, align 4
  %rem3 = srem i32 %6, 64
  %sh_prom = zext i32 %rem3 to i64
  %shr4 = lshr i64 %5, %sh_prom
  store i64 %shr4, ptr %w, align 8
  %7 = load i32, ptr %v, align 4
  %8 = call i32 @llvm.ctpop.i32(i32 %7)
  %9 = load i64, ptr %w, align 8
  %10 = call i64 @llvm.ctpop.i64(i64 %9)
  %cast = trunc i64 %10 to i32
  %mul5 = mul i32 %cast, 3
  %add6 = add i32 %8, %mul5
  %11 = load i32, ptr %h, align 4
  %add7 = add i32 %11, %add6
  store i32 %add7, ptr %h, align 4
  %12 = load i32, ptr %v, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i32, ptr %v, align 4
  %14 = call i32 @llvm.ctlz.i32(i32 %13, i1 true)
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ 32, %cond.false ]
  %15 = load i32, ptr %h, align 4
  %add8 = add i32 %15, %cond
  store i32 %add8, ptr %h, align 4
  %16 = load i64, ptr %w, align 8
  %tobool9 = icmp ne i64 %16, 0
  br i1 %tobool9, label %cond.true10, label %cond.false13

cond.true10:                                      ; preds = %cond.end
  %17 = load i64, ptr %w, align 8
  %18 = call i64 @llvm.cttz.i64(i64 %17, i1 true)
  %cast11 = trunc i64 %18 to i32
  %mul12 = mul i32 %cast11, 5
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.true10
  %cond15 = phi i32 [ %mul12, %cond.true10 ], [ 64, %cond.false13 ]
  %19 = load i32, ptr %h, align 4
  %add16 = add i32 %19, %cond15
  store i32 %add16, ptr %h, align 4
  %20 = load i32, ptr %v, align 4
  %21 = call i32 @llvm.cttz.i32(i32 %20, i1 true)
  %22 = add i32 %21, 1
  %iszero = icmp eq i32 %20, 0
  %ffs = select i1 %iszero, i32 0, i32 %22
  %23 = load i64, ptr %w, align 8
  %24 = call i64 @llvm.cttz.i64(i64 %23, i1 true)
  %25 = add i64 %24, 1
  %iszero17 = icmp eq i64 %23, 0
  %ffs18 = select i1 %iszero17, i64 0, i64 %25
  %cast19 = trunc i64 %ffs18 to i32
  %add20 = add i32 %ffs, %cast19
  %26 = load i32, ptr %h, align 4
  %add21 = add i32 %26, %add20
  store i32 %add21, ptr %h, align 4
  %27 = load i32, ptr %v, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = load i64, ptr %w, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29)
  %shr22 = lshr i64 %30, 17
  %conv = trunc i64 %shr22 to i32
  %add23 = add i32 %28, %conv
  %31 = load i32, ptr %h, align 4
  %xor = xor i32 %31, %add23
  store i32 %xor, ptr %h, align 4
  %32 = load i32, ptr %v, align 4
  %33 = load i32, ptr %i, align 4
  %call = call i32 @rotr(i32 noundef %32, i32 noundef %33) #3
  %34 = load i32, ptr %v, align 4
  %call24 = call i32 @rev32(i32 noundef %34) #3
  %xor25 = xor i32 %call, %call24
  %35 = load i32, ptr %h, align 4
  %add26 = add i32 %35, %xor25
  store i32 %add26, ptr %h, align 4
  %36 = load i32, ptr %v, align 4
  %shr27 = lshr i32 %36, 7
  %and = and i32 %shr27, 1023
  %37 = load i64, ptr %w, align 8
  %shr28 = lshr i64 %37, 40
  %and29 = and i64 %shr28, 4095
  %conv30 = trunc i64 %and29 to i32
  %shl = shl i32 %conv30, 10
  %or = or i32 %and, %shl
  %38 = load i32, ptr %h, align 4
  %add31 = add i32 %38, %or
  store i32 %add31, ptr %h, align 4
  %39 = load i32, ptr %h, align 4
  %shl32 = shl i32 %39, 1
  %40 = load i32, ptr %h, align 4
  %shr33 = lshr i32 %40, 31
  %or34 = or i32 %shl32, %shr33
  store i32 %or34, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end14
  %41 = load i32, ptr %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %42 = load i32, ptr %h, align 4
  ret i32 %42
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @rotr(i32 noundef %x, i32 noundef %r) #0 {
entry:
  %x.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %r.addr, align 4
  %and = and i32 %1, 31
  %shr = lshr i32 %0, %and
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %r.addr, align 4
  %sub = sub i32 0, %3
  %and1 = and i32 %sub, 31
  %shl = shl i32 %2, %and1
  %or = or i32 %shr, %shl
  ret i32 %or
}

; Function Attrs: noinline nounwind optnone
define internal i32 @rev32(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %shr = lshr i32 %0, 1
  %and = and i32 %shr, 1431655765
  %1 = load i32, ptr %x.addr, align 4
  %and1 = and i32 %1, 1431655765
  %shl = shl i32 %and1, 1
  %or = or i32 %and, %shl
  store i32 %or, ptr %x.addr, align 4
  %2 = load i32, ptr %x.addr, align 4
  %shr2 = lshr i32 %2, 2
  %and3 = and i32 %shr2, 858993459
  %3 = load i32, ptr %x.addr, align 4
  %and4 = and i32 %3, 858993459
  %shl5 = shl i32 %and4, 2
  %or6 = or i32 %and3, %shl5
  store i32 %or6, ptr %x.addr, align 4
  %4 = load i32, ptr %x.addr, align 4
  %shr7 = lshr i32 %4, 4
  %and8 = and i32 %shr7, 252645135
  %5 = load i32, ptr %x.addr, align 4
  %and9 = and i32 %5, 252645135
  %shl10 = shl i32 %and9, 4
  %or11 = or i32 %and8, %shl10
  store i32 %or11, ptr %x.addr, align 4
  %6 = load i32, ptr %x.addr, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin "no-builtins" }

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
