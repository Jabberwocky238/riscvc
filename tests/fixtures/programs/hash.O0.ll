; ModuleID = 'tests/programs/hash.c'
source_filename = "tests/programs/hash.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@buf = internal global [1027 x i8] zeroinitializer, align 1
@table = internal global [256 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 -1640531527, ptr %s, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1027
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %s, align 4
  %mul = mul i32 %1, 1664525
  %add = add i32 %mul, 1013904223
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = lshr i32 %2, 24
  %conv = trunc i32 %shr to i8
  %3 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [1027 x i8], ptr @buf, i32 0, i32 %3
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  call void @crc_init() #1
  store i32 0, ptr %h, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc13, %for.end
  %5 = load i32, ptr %n, align 4
  %cmp2 = icmp sle i32 %5, 1027
  br i1 %cmp2, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond1
  %6 = load i32, ptr %n, align 4
  %call = call i32 @crc32(ptr noundef @buf, i32 noundef %6) #1
  %7 = load i32, ptr %n, align 4
  %call5 = call i32 @fnv1a(ptr noundef @buf, i32 noundef %7) #1
  %call6 = call i32 @rotl(i32 noundef %call5, i32 noundef 7) #1
  %add7 = add i32 %call, %call6
  %8 = load i32, ptr %n, align 4
  %9 = load i32, ptr %n, align 4
  %call8 = call i32 @murmur3(ptr noundef @buf, i32 noundef %8, i32 noundef %9) #1
  %call9 = call i32 @rotl(i32 noundef %call8, i32 noundef 13) #1
  %add10 = add i32 %add7, %call9
  %10 = load i32, ptr %n, align 4
  %call11 = call i32 @adler32(ptr noundef @buf, i32 noundef %10) #1
  %add12 = add i32 %add10, %call11
  %11 = load i32, ptr %h, align 4
  %xor = xor i32 %11, %add12
  store i32 %xor, ptr %h, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4
  %12 = load i32, ptr %n, align 4
  %add14 = add nsw i32 %12, 97
  store i32 %add14, ptr %n, align 4
  br label %for.cond1, !llvm.loop !9

for.end15:                                        ; preds = %for.cond1
  %13 = load i32, ptr %h, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone
define internal void @crc_init() #0 {
entry:
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  store i32 %1, ptr %c, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %k, align 4
  %cmp2 = icmp slt i32 %2, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %c, align 4
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %4 = load i32, ptr %c, align 4
  %shr = lshr i32 %4, 1
  %xor = xor i32 -306674912, %shr
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  %5 = load i32, ptr %c, align 4
  %shr4 = lshr i32 %5, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %shr4, %cond.false ]
  store i32 %cond, ptr %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %6 = load i32, ptr %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  %7 = load i32, ptr %c, align 4
  %8 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @table, i32 0, i32 %8
  store i32 %7, ptr %arrayidx, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %9 = load i32, ptr %i, align 4
  %inc6 = add i32 %9, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal i32 @crc32(ptr noundef %p, i32 noundef %n) #0 {
entry:
  %p.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 -1, ptr %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %c, align 4
  %2 = load ptr, ptr %p.addr, align 4
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 4
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i32
  %xor = xor i32 %1, %conv
  %and = and i32 %xor, 255
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @table, i32 0, i32 %and
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i32, ptr %c, align 4
  %shr = lshr i32 %5, 8
  %xor1 = xor i32 %4, %shr
  store i32 %xor1, ptr %c, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %c, align 4
  %xor2 = xor i32 %6, -1
  ret i32 %xor2
}

; Function Attrs: noinline nounwind optnone
define internal i32 @rotl(i32 noundef %x, i32 noundef %r) #0 {
entry:
  %x.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %r.addr, align 4
  %shl = shl i32 %0, %1
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %r.addr, align 4
  %sub = sub nsw i32 32, %3
  %shr = lshr i32 %2, %sub
  %or = or i32 %shl, %shr
  ret i32 %or
}

; Function Attrs: noinline nounwind optnone
define internal i32 @fnv1a(ptr noundef %p, i32 noundef %n) #0 {
entry:
  %p.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 -2128831035, ptr %h, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p.addr, align 4
  %3 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds i8, ptr %2, i32 %3
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, ptr %h, align 4
  %xor = xor i32 %5, %conv
  store i32 %xor, ptr %h, align 4
  %6 = load i32, ptr %h, align 4
  %mul = mul i32 %6, 16777619
  store i32 %mul, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %h, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone
define internal i32 @murmur3(ptr noundef %p, i32 noundef %n, i32 noundef %seed) #0 {
entry:
  %p.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %seed.addr = alloca i32, align 4
  %h = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %blocks = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %k21 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %seed, ptr %seed.addr, align 4
  %0 = load i32, ptr %seed.addr, align 4
  store i32 %0, ptr %h, align 4
  store i32 -862048943, ptr %c1, align 4
  store i32 461845907, ptr %c2, align 4
  %1 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %1, 4
  store i32 %div, ptr %blocks, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %blocks, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p.addr, align 4
  %5 = load i32, ptr %i, align 4
  %mul = mul nsw i32 4, %5
  %arrayidx = getelementptr inbounds i8, ptr %4, i32 %mul
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %p.addr, align 4
  %8 = load i32, ptr %i, align 4
  %mul1 = mul nsw i32 4, %8
  %add = add nsw i32 %mul1, 1
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i32 %add
  %9 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  %10 = load ptr, ptr %p.addr, align 4
  %11 = load i32, ptr %i, align 4
  %mul4 = mul nsw i32 4, %11
  %add5 = add nsw i32 %mul4, 2
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i32 %add5
  %12 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  %shl8 = shl i32 %conv7, 16
  %or9 = or i32 %or, %shl8
  %13 = load ptr, ptr %p.addr, align 4
  %14 = load i32, ptr %i, align 4
  %mul10 = mul nsw i32 4, %14
  %add11 = add nsw i32 %mul10, 3
  %arrayidx12 = getelementptr inbounds i8, ptr %13, i32 %add11
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %shl14 = shl i32 %conv13, 24
  %or15 = or i32 %or9, %shl14
  store i32 %or15, ptr %k, align 4
  %16 = load i32, ptr %c1, align 4
  %17 = load i32, ptr %k, align 4
  %mul16 = mul i32 %17, %16
  store i32 %mul16, ptr %k, align 4
  %18 = load i32, ptr %k, align 4
  %call = call i32 @rotl(i32 noundef %18, i32 noundef 15) #1
  store i32 %call, ptr %k, align 4
  %19 = load i32, ptr %c2, align 4
  %20 = load i32, ptr %k, align 4
  %mul17 = mul i32 %20, %19
  store i32 %mul17, ptr %k, align 4
  %21 = load i32, ptr %k, align 4
  %22 = load i32, ptr %h, align 4
  %xor = xor i32 %22, %21
  store i32 %xor, ptr %h, align 4
  %23 = load i32, ptr %h, align 4
  %call18 = call i32 @rotl(i32 noundef %23, i32 noundef 13) #1
  store i32 %call18, ptr %h, align 4
  %24 = load i32, ptr %h, align 4
  %mul19 = mul i32 %24, 5
  %add20 = add i32 %mul19, -430675100
  store i32 %add20, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %k21, align 4
  %26 = load i32, ptr %n.addr, align 4
  %and = and i32 %26, 3
  switch i32 %and, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb28
    i32 1, label %sw.bb35
  ]

sw.bb:                                            ; preds = %for.end
  %27 = load ptr, ptr %p.addr, align 4
  %28 = load i32, ptr %blocks, align 4
  %mul22 = mul nsw i32 4, %28
  %add23 = add nsw i32 %mul22, 2
  %arrayidx24 = getelementptr inbounds i8, ptr %27, i32 %add23
  %29 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %29 to i32
  %shl26 = shl i32 %conv25, 16
  %30 = load i32, ptr %k21, align 4
  %xor27 = xor i32 %30, %shl26
  store i32 %xor27, ptr %k21, align 4
  br label %sw.bb28

sw.bb28:                                          ; preds = %for.end, %sw.bb
  %31 = load ptr, ptr %p.addr, align 4
  %32 = load i32, ptr %blocks, align 4
  %mul29 = mul nsw i32 4, %32
  %add30 = add nsw i32 %mul29, 1
  %arrayidx31 = getelementptr inbounds i8, ptr %31, i32 %add30
  %33 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %33 to i32
  %shl33 = shl i32 %conv32, 8
  %34 = load i32, ptr %k21, align 4
  %xor34 = xor i32 %34, %shl33
  store i32 %xor34, ptr %k21, align 4
  br label %sw.bb35

sw.bb35:                                          ; preds = %for.end, %sw.bb28
  %35 = load ptr, ptr %p.addr, align 4
  %36 = load i32, ptr %blocks, align 4
  %mul36 = mul nsw i32 4, %36
  %arrayidx37 = getelementptr inbounds i8, ptr %35, i32 %mul36
  %37 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %37 to i32
  %38 = load i32, ptr %k21, align 4
  %xor39 = xor i32 %38, %conv38
  store i32 %xor39, ptr %k21, align 4
  %39 = load i32, ptr %c1, align 4
  %40 = load i32, ptr %k21, align 4
  %mul40 = mul i32 %40, %39
  store i32 %mul40, ptr %k21, align 4
  %41 = load i32, ptr %k21, align 4
  %call41 = call i32 @rotl(i32 noundef %41, i32 noundef 15) #1
  store i32 %call41, ptr %k21, align 4
  %42 = load i32, ptr %c2, align 4
  %43 = load i32, ptr %k21, align 4
  %mul42 = mul i32 %43, %42
  store i32 %mul42, ptr %k21, align 4
  %44 = load i32, ptr %k21, align 4
  %45 = load i32, ptr %h, align 4
  %xor43 = xor i32 %45, %44
  store i32 %xor43, ptr %h, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %for.end
  %46 = load i32, ptr %n.addr, align 4
  %47 = load i32, ptr %h, align 4
  %xor44 = xor i32 %47, %46
  store i32 %xor44, ptr %h, align 4
  %48 = load i32, ptr %h, align 4
  %shr = lshr i32 %48, 16
  %49 = load i32, ptr %h, align 4
  %xor45 = xor i32 %49, %shr
  store i32 %xor45, ptr %h, align 4
  %50 = load i32, ptr %h, align 4
  %mul46 = mul i32 %50, -2048144789
  store i32 %mul46, ptr %h, align 4
  %51 = load i32, ptr %h, align 4
  %shr47 = lshr i32 %51, 13
  %52 = load i32, ptr %h, align 4
  %xor48 = xor i32 %52, %shr47
  store i32 %xor48, ptr %h, align 4
  %53 = load i32, ptr %h, align 4
  %mul49 = mul i32 %53, -1028477387
  store i32 %mul49, ptr %h, align 4
  %54 = load i32, ptr %h, align 4
  %shr50 = lshr i32 %54, 16
  %55 = load i32, ptr %h, align 4
  %xor51 = xor i32 %55, %shr50
  store i32 %xor51, ptr %h, align 4
  %56 = load i32, ptr %h, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone
define internal i32 @adler32(ptr noundef %p, i32 noundef %n) #0 {
entry:
  %p.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 1, ptr %a, align 4
  store i32 0, ptr %b, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %a, align 4
  %3 = load ptr, ptr %p.addr, align 4
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds i8, ptr %3, i32 %4
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add = add i32 %2, %conv
  %rem = urem i32 %add, 65521
  store i32 %rem, ptr %a, align 4
  %6 = load i32, ptr %b, align 4
  %7 = load i32, ptr %a, align 4
  %add1 = add i32 %6, %7
  %rem2 = urem i32 %add1, 65521
  store i32 %rem2, ptr %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %b, align 4
  %shl = shl i32 %9, 16
  %10 = load i32, ptr %a, align 4
  %or = or i32 %shl, %10
  ret i32 %or
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
