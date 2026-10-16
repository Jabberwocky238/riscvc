; ModuleID = 'tests/programs/globals.c'
source_filename = "tests/programs/globals.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.anon = type { i8, i32, i16 }

@primes = internal constant [15 x i32] [i32 2, i32 3, i32 5, i32 7, i32 11, i32 13, i32 17, i32 19, i32 23, i32 29, i32 31, i32 37, i32 41, i32 43, i32 47], align 4
@counts = internal global [16 x i32] [i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@names = internal constant [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@grid = internal constant [4 x [5 x i16]] [[5 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5], [5 x i16] [i16 -1, i16 -2, i16 -3, i16 0, i16 0], [5 x i16] [i16 0, i16 0, i16 0, i16 0, i16 9], [5 x i16] [i16 7, i16 0, i16 0, i16 0, i16 0]], align 2
@.str = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@mixed = internal global [3 x { i8, [3 x i8], i32, i16, [2 x i8] }] [{ i8, [3 x i8], i32, i16, [2 x i8] } { i8 97, [3 x i8] zeroinitializer, i32 1, i16 2, [2 x i8] zeroinitializer }, { i8, [3 x i8], i32, i16, [2 x i8] } { i8 98, [3 x i8] zeroinitializer, i32 -3, i16 4, [2 x i8] zeroinitializer }, { i8, [3 x i8], i32, i16, [2 x i8] } { i8 99, [3 x i8] zeroinitializer, i32 5, i16 -6, [2 x i8] zeroinitializer }], align 4
@tick.n = internal global i32 100, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  %i15 = alloca i32, align 4
  %p = alloca ptr, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %flat = alloca ptr, align 4
  %i58 = alloca i32, align 4
  %i78 = alloca i32, align 4
  store i32 0, ptr %h, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr @primes, i32 0, i32 %1
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i32, ptr %i, align 4
  %arrayidx1 = getelementptr inbounds nuw [15 x i32], ptr @primes, i32 0, i32 %3
  %4 = load i32, ptr %arrayidx1, align 4
  %rem = srem i32 %4, 16
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr @counts, i32 0, i32 %rem
  %5 = load i32, ptr %arrayidx2, align 4
  %add = add nsw i32 %5, %2
  store i32 %add, ptr %arrayidx2, align 4
  %6 = load i32, ptr %h, align 4
  %mul = mul i32 %6, 7
  %7 = load i32, ptr %i, align 4
  %arrayidx3 = getelementptr inbounds nuw [15 x i32], ptr @primes, i32 0, i32 %7
  %8 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %mul, %8
  store i32 %add4, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr getelementptr (i8, ptr @counts, i64 20), align 4
  %add5 = add nsw i32 %10, 1000
  store i32 %add5, ptr getelementptr (i8, ptr @counts, i64 20), align 4
  store i32 0, ptr %i6, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc12, %for.end
  %11 = load i32, ptr %i6, align 4
  %cmp8 = icmp slt i32 %11, 16
  br i1 %cmp8, label %for.body9, label %for.end14

for.body9:                                        ; preds = %for.cond7
  %12 = load i32, ptr %i6, align 4
  %arrayidx10 = getelementptr inbounds [16 x i32], ptr @counts, i32 0, i32 %12
  %13 = load i32, ptr %arrayidx10, align 4
  %14 = load i32, ptr %i6, align 4
  %rem11 = srem i32 %14, 8
  %shl = shl i32 %13, %rem11
  %15 = load i32, ptr %h, align 4
  %xor = xor i32 %15, %shl
  store i32 %xor, ptr %h, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %16 = load i32, ptr %i6, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, ptr %i6, align 4
  br label %for.cond7, !llvm.loop !9

for.end14:                                        ; preds = %for.cond7
  store i32 0, ptr %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end14
  %17 = load i32, ptr %i15, align 4
  %cmp17 = icmp slt i32 %17, 6
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %18 = load i32, ptr %i15, align 4
  %arrayidx19 = getelementptr inbounds [6 x ptr], ptr @names, i32 0, i32 %18
  %19 = load ptr, ptr %arrayidx19, align 4
  store ptr %19, ptr %p, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc24, %for.body18
  %20 = load ptr, ptr %p, align 4
  %21 = load i8, ptr %20, align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %for.body21, label %for.end25

for.body21:                                       ; preds = %for.cond20
  %22 = load i32, ptr %h, align 4
  %mul22 = mul i32 %22, 31
  %23 = load ptr, ptr %p, align 4
  %24 = load i8, ptr %23, align 1
  %conv = zext i8 %24 to i32
  %add23 = add i32 %mul22, %conv
  store i32 %add23, ptr %h, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body21
  %25 = load ptr, ptr %p, align 4
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %p, align 4
  br label %for.cond20, !llvm.loop !10

for.end25:                                        ; preds = %for.cond20
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %26 = load i32, ptr %i15, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, ptr %i15, align 4
  br label %for.cond16, !llvm.loop !11

for.end28:                                        ; preds = %for.cond16
  store i32 0, ptr %r, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc48, %for.end28
  %27 = load i32, ptr %r, align 4
  %cmp30 = icmp slt i32 %27, 4
  br i1 %cmp30, label %for.body32, label %for.end50

for.body32:                                       ; preds = %for.cond29
  store i32 0, ptr %c, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc45, %for.body32
  %28 = load i32, ptr %c, align 4
  %cmp34 = icmp slt i32 %28, 5
  br i1 %cmp34, label %for.body36, label %for.end47

for.body36:                                       ; preds = %for.cond33
  %29 = load i32, ptr %r, align 4
  %arrayidx37 = getelementptr inbounds [4 x [5 x i16]], ptr @grid, i32 0, i32 %29
  %30 = load i32, ptr %c, align 4
  %arrayidx38 = getelementptr inbounds [5 x i16], ptr %arrayidx37, i32 0, i32 %30
  %31 = load i16, ptr %arrayidx38, align 2
  %conv39 = sext i16 %31 to i32
  %32 = load i32, ptr %r, align 4
  %add40 = add nsw i32 %32, 1
  %mul41 = mul nsw i32 %conv39, %add40
  %33 = load i32, ptr %c, align 4
  %add42 = add nsw i32 %33, 2
  %mul43 = mul nsw i32 %mul41, %add42
  %34 = load i32, ptr %h, align 4
  %add44 = add i32 %34, %mul43
  store i32 %add44, ptr %h, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %for.body36
  %35 = load i32, ptr %c, align 4
  %inc46 = add nsw i32 %35, 1
  store i32 %inc46, ptr %c, align 4
  br label %for.cond33, !llvm.loop !12

for.end47:                                        ; preds = %for.cond33
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %36 = load i32, ptr %r, align 4
  %inc49 = add nsw i32 %36, 1
  store i32 %inc49, ptr %r, align 4
  br label %for.cond29, !llvm.loop !13

for.end50:                                        ; preds = %for.cond29
  store ptr @grid, ptr %flat, align 4
  %37 = load ptr, ptr %flat, align 4
  %arrayidx51 = getelementptr inbounds i16, ptr %37, i32 7
  %38 = load i16, ptr %arrayidx51, align 2
  %conv52 = sext i16 %38 to i32
  %39 = load ptr, ptr %flat, align 4
  %arrayidx53 = getelementptr inbounds i16, ptr %39, i32 14
  %40 = load i16, ptr %arrayidx53, align 2
  %conv54 = sext i16 %40 to i32
  %mul55 = mul i32 %conv54, 3
  %add56 = add i32 %conv52, %mul55
  %41 = load i32, ptr %h, align 4
  %add57 = add i32 %41, %add56
  store i32 %add57, ptr %h, align 4
  store i32 0, ptr %i58, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc75, %for.end50
  %42 = load i32, ptr %i58, align 4
  %cmp60 = icmp slt i32 %42, 3
  br i1 %cmp60, label %for.body62, label %for.end77

for.body62:                                       ; preds = %for.cond59
  %43 = load i32, ptr %i58, align 4
  %arrayidx63 = getelementptr inbounds [3 x %struct.anon], ptr @mixed, i32 0, i32 %43
  %c64 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx63, i32 0, i32 0
  %44 = load i8, ptr %c64, align 4
  %conv65 = zext i8 %44 to i32
  %45 = load i32, ptr %i58, align 4
  %arrayidx66 = getelementptr inbounds [3 x %struct.anon], ptr @mixed, i32 0, i32 %45
  %i67 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx66, i32 0, i32 1
  %46 = load i32, ptr %i67, align 4
  %mul68 = mul i32 %46, 11
  %add69 = add i32 %conv65, %mul68
  %47 = load i32, ptr %i58, align 4
  %arrayidx70 = getelementptr inbounds [3 x %struct.anon], ptr @mixed, i32 0, i32 %47
  %s = getelementptr inbounds nuw %struct.anon, ptr %arrayidx70, i32 0, i32 2
  %48 = load i16, ptr %s, align 4
  %conv71 = sext i16 %48 to i32
  %mul72 = mul i32 %conv71, 13
  %add73 = add i32 %add69, %mul72
  %49 = load i32, ptr %h, align 4
  %add74 = add i32 %49, %add73
  store i32 %add74, ptr %h, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %for.body62
  %50 = load i32, ptr %i58, align 4
  %inc76 = add nsw i32 %50, 1
  store i32 %inc76, ptr %i58, align 4
  br label %for.cond59, !llvm.loop !14

for.end77:                                        ; preds = %for.cond59
  store i32 0, ptr %i78, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc84, %for.end77
  %51 = load i32, ptr %i78, align 4
  %cmp80 = icmp slt i32 %51, 5
  br i1 %cmp80, label %for.body82, label %for.end86

for.body82:                                       ; preds = %for.cond79
  %call = call i32 @tick() #1
  %52 = load i32, ptr %h, align 4
  %add83 = add i32 %52, %call
  store i32 %add83, ptr %h, align 4
  br label %for.inc84

for.inc84:                                        ; preds = %for.body82
  %53 = load i32, ptr %i78, align 4
  %inc85 = add nsw i32 %53, 1
  store i32 %inc85, ptr %i78, align 4
  br label %for.cond79, !llvm.loop !15

for.end86:                                        ; preds = %for.cond79
  %54 = load i32, ptr %h, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone
define internal i32 @tick() #0 {
entry:
  %0 = load i32, ptr @tick.n, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @tick.n, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nobuiltin "no-builtins" }

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
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
