; ModuleID = 'tests/programs/varargs.c'
source_filename = "tests/programs/varargs.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@buf = internal global [256 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [18 x i8] c"x=%d y=%d %s%c|%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i32, align 4
  %m = alloca i64, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 (i32, ...) @sum(i32 noundef 5, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5) #3
  %call1 = call i32 (i32, ...) @sum(i32 noundef 9, i32 noundef 9, i32 noundef -8, i32 noundef 7, i32 noundef -6, i32 noundef 5, i32 noundef -4, i32 noundef 3, i32 noundef -2, i32 noundef 1) #3
  %mul = mul i32 %call1, 3
  %add = add i32 %call, %mul
  store i32 %add, ptr %h, align 4
  %call2 = call i64 (i32, ...) @mixed(i32 noundef 7, i32 noundef 10, i64 noundef 4886718345, double noundef 2.500000e+00, i32 noundef -3, i64 noundef -1, double noundef 1.250000e-01, i32 noundef 99) #3
  store i64 %call2, ptr %m, align 8
  %0 = load i64, ptr %m, align 8
  %conv = trunc i64 %0 to i32
  %1 = load i64, ptr %m, align 8
  %shr = ashr i64 %1, 32
  %conv3 = trunc i64 %shr to i32
  %xor = xor i32 %conv, %conv3
  %2 = load i32, ptr %h, align 4
  %add4 = add i32 %2, %xor
  store i32 %add4, ptr %h, align 4
  %call5 = call i32 (ptr, ptr, ...) @fmt(ptr noundef @buf, ptr noundef @.str, i32 noundef 42, i32 noundef -2147483648, ptr noundef @.str.1, i32 noundef 33, i32 noundef 0) #3
  store i32 %call5, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %h, align 4
  %mul7 = mul i32 %5, 37
  %6 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [256 x i8], ptr @buf, i32 0, i32 %6
  %7 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %7 to i32
  %add9 = add i32 %mul7, %conv8
  store i32 %add9, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %h, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone
define internal i32 @sum(i32 noundef %n, ...) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ap = alloca ptr, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.va_start.p0(ptr %ap)
  store i32 0, ptr %s, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %2 = load i32, ptr %argp.cur, align 4
  %3 = load i32, ptr %i, align 4
  %add = add nsw i32 %3, 1
  %mul = mul nsw i32 %2, %add
  %4 = load i32, ptr %s, align 4
  %add1 = add nsw i32 %4, %mul
  store i32 %add1, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.va_end.p0(ptr %ap)
  %6 = load i32, ptr %s, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone
define internal i64 @mixed(i32 noundef %n, ...) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ap = alloca ptr, align 4
  %s = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.va_start.p0(ptr %ap)
  store i64 0, ptr %s, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %rem = srem i32 %2, 3
  switch i32 %rem, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %for.body
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %3 = load i32, ptr %argp.cur, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, ptr %s, align 8
  %add = add nsw i64 %4, %conv
  store i64 %add, ptr %s, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.body
  %argp.cur2 = load ptr, ptr %ap, align 4
  %5 = getelementptr inbounds i8, ptr %argp.cur2, i32 7
  %argp.cur2.aligned = call ptr @llvm.ptrmask.p0.i32(ptr %5, i32 -8)
  %argp.next3 = getelementptr inbounds i8, ptr %argp.cur2.aligned, i32 8
  store ptr %argp.next3, ptr %ap, align 4
  %6 = load i64, ptr %argp.cur2.aligned, align 8
  %7 = load i64, ptr %s, align 8
  %xor = xor i64 %7, %6
  store i64 %xor, ptr %s, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %argp.cur4 = load ptr, ptr %ap, align 4
  %8 = getelementptr inbounds i8, ptr %argp.cur4, i32 7
  %argp.cur4.aligned = call ptr @llvm.ptrmask.p0.i32(ptr %8, i32 -8)
  %argp.next5 = getelementptr inbounds i8, ptr %argp.cur4.aligned, i32 8
  store ptr %argp.next5, ptr %ap, align 4
  %9 = load double, ptr %argp.cur4.aligned, align 8
  %mul = fmul double %9, 1.000000e+02
  %conv6 = fptosi double %mul to i64
  %10 = load i64, ptr %s, align 8
  %add7 = add nsw i64 %10, %conv6
  store i64 %add7, ptr %s, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @llvm.va_end.p0(ptr %ap)
  %12 = load i64, ptr %s, align 8
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone
define internal i32 @fmt(ptr noundef %out, ptr noundef %f, ...) #0 {
entry:
  %out.addr = alloca ptr, align 4
  %f.addr = alloca ptr, align 4
  %ap = alloca ptr, align 4
  %n = alloca i32, align 4
  %v = alloca i32, align 4
  %u = alloca i32, align 4
  %t = alloca [12 x i8], align 1
  %k = alloca i32, align 4
  %s = alloca ptr, align 4
  store ptr %out, ptr %out.addr, align 4
  store ptr %f, ptr %f.addr, align 4
  call void @llvm.va_start.p0(ptr %ap)
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %entry
  %0 = load ptr, ptr %f.addr, align 4
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %f.addr, align 4
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %f.addr, align 4
  %5 = load i8, ptr %4, align 1
  %6 = load ptr, ptr %out.addr, align 4
  %7 = load i32, ptr %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %n, align 4
  %arrayidx = getelementptr inbounds i8, ptr %6, i32 %7
  store i8 %5, ptr %arrayidx, align 1
  br label %for.inc47

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %f.addr, align 4
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %f.addr, align 4
  %9 = load ptr, ptr %f.addr, align 4
  %10 = load i8, ptr %9, align 1
  %conv2 = zext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv2, 100
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %11 = load i32, ptr %argp.cur, align 4
  store i32 %11, ptr %v, align 4
  %12 = load i32, ptr %v, align 4
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %13 = load i32, ptr %v, align 4
  %sub = sub i32 0, %13
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %14 = load i32, ptr %v, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, ptr %u, align 4
  store i32 0, ptr %k, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %15 = load i32, ptr %u, align 4
  %rem = urem i32 %15, 10
  %add = add i32 48, %rem
  %conv8 = trunc i32 %add to i8
  %16 = load i32, ptr %k, align 4
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, ptr %k, align 4
  %arrayidx10 = getelementptr inbounds [12 x i8], ptr %t, i32 0, i32 %16
  store i8 %conv8, ptr %arrayidx10, align 1
  %17 = load i32, ptr %u, align 4
  %div = udiv i32 %17, 10
  store i32 %div, ptr %u, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load i32, ptr %u, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
  %19 = load i32, ptr %v, align 4
  %cmp12 = icmp slt i32 %19, 0
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %do.end
  %20 = load ptr, ptr %out.addr, align 4
  %21 = load i32, ptr %n, align 4
  %inc15 = add nsw i32 %21, 1
  store i32 %inc15, ptr %n, align 4
  %arrayidx16 = getelementptr inbounds i8, ptr %20, i32 %21
  store i8 45, ptr %arrayidx16, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end17
  %22 = load i32, ptr %k, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, ptr %k, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %k, align 4
  %arrayidx19 = getelementptr inbounds [12 x i8], ptr %t, i32 0, i32 %dec
  %24 = load i8, ptr %arrayidx19, align 1
  %25 = load ptr, ptr %out.addr, align 4
  %26 = load i32, ptr %n, align 4
  %inc20 = add nsw i32 %26, 1
  store i32 %inc20, ptr %n, align 4
  %arrayidx21 = getelementptr inbounds i8, ptr %25, i32 %26
  store i8 %24, ptr %arrayidx21, align 1
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  %27 = load ptr, ptr %f.addr, align 4
  %28 = load i8, ptr %27, align 1
  %conv22 = zext i8 %28 to i32
  %cmp23 = icmp eq i32 %conv22, 115
  br i1 %cmp23, label %if.then25, label %if.else34

if.then25:                                        ; preds = %if.else
  %argp.cur26 = load ptr, ptr %ap, align 4
  %argp.next27 = getelementptr inbounds i8, ptr %argp.cur26, i32 4
  store ptr %argp.next27, ptr %ap, align 4
  %29 = load ptr, ptr %argp.cur26, align 4
  store ptr %29, ptr %s, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %if.then25
  %30 = load ptr, ptr %s, align 4
  %31 = load i8, ptr %30, align 1
  %tobool29 = icmp ne i8 %31, 0
  br i1 %tobool29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %32 = load ptr, ptr %s, align 4
  %33 = load i8, ptr %32, align 1
  %34 = load ptr, ptr %out.addr, align 4
  %35 = load i32, ptr %n, align 4
  %inc31 = add nsw i32 %35, 1
  store i32 %inc31, ptr %n, align 4
  %arrayidx32 = getelementptr inbounds i8, ptr %34, i32 %35
  store i8 %33, ptr %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body30
  %36 = load ptr, ptr %s, align 4
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %36, i32 1
  store ptr %incdec.ptr33, ptr %s, align 4
  br label %for.cond28, !llvm.loop !13

for.end:                                          ; preds = %for.cond28
  br label %if.end45

if.else34:                                        ; preds = %if.else
  %37 = load ptr, ptr %f.addr, align 4
  %38 = load i8, ptr %37, align 1
  %conv35 = zext i8 %38 to i32
  %cmp36 = icmp eq i32 %conv35, 99
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.else34
  %argp.cur39 = load ptr, ptr %ap, align 4
  %argp.next40 = getelementptr inbounds i8, ptr %argp.cur39, i32 4
  store ptr %argp.next40, ptr %ap, align 4
  %39 = load i32, ptr %argp.cur39, align 4
  %conv41 = trunc i32 %39 to i8
  %40 = load ptr, ptr %out.addr, align 4
  %41 = load i32, ptr %n, align 4
  %inc42 = add nsw i32 %41, 1
  store i32 %inc42, ptr %n, align 4
  %arrayidx43 = getelementptr inbounds i8, ptr %40, i32 %41
  store i8 %conv41, ptr %arrayidx43, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.else34
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %while.end
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46, %if.then
  %42 = load ptr, ptr %f.addr, align 4
  %incdec.ptr48 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %incdec.ptr48, ptr %f.addr, align 4
  br label %for.cond, !llvm.loop !14

for.end49:                                        ; preds = %for.cond
  call void @llvm.va_end.p0(ptr %ap)
  %43 = load ptr, ptr %out.addr, align 4
  %44 = load i32, ptr %n, align 4
  %arrayidx50 = getelementptr inbounds i8, ptr %43, i32 %44
  store i8 0, ptr %arrayidx50, align 1
  %45 = load i32, ptr %n, align 4
  ret i32 %45
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i32(ptr, i32) #2

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
