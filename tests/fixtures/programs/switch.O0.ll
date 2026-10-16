; ModuleID = 'tests/programs/switch.c'
source_filename = "tests/programs/switch.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@fact = internal constant [17 x i8] c"\00\00\01\00\01\0A\03\00\00\01\07\01\06\01\F7\08\00", align 1
@squares = internal constant [32 x i8] c"\00\00\00\00\01\14\03\02\01\01\01\00\00\02\04\00\00\01\07\01\06\01\EF\00\03\03\05\00\00\03\08\00", align 1
@collatz = internal constant [50 x i8] c"\00\00\1B\00\01\00\00\02\01\00\03\03\02\04\00\02\06\04\02\08\01\01\01\01\02\09\05\00\02\06\05\07\0A\00\00\02\06\02\E5\03\00\00\03\01\00\00\02\06\02\DA", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i32, align 4
  %k = alloca i32, align 4
  %call = call i32 @run(ptr noundef @fact) #2
  %mul = mul i32 %call, 7
  %call1 = call i32 @run(ptr noundef @squares) #2
  %mul2 = mul i32 %call1, 11
  %add = add i32 %mul, %mul2
  %call3 = call i32 @run(ptr noundef @collatz) #2
  %mul4 = mul i32 %call3, 13
  %add5 = add i32 %add, %mul4
  store i32 %add5, ptr %h, align 4
  store i32 -1200, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %0, 1200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %h, align 4
  %mul6 = mul i32 %1, 3
  %2 = load i32, ptr %k, align 4
  %call7 = call i32 @sparse(i32 noundef %2) #2
  %add8 = add i32 %mul6, %call7
  %3 = load i32, ptr %k, align 4
  %add9 = add nsw i32 %3, 1200
  %call10 = call i32 @fall(i32 noundef %add9) #2
  %add11 = add i32 %add8, %call10
  store i32 %add11, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %k, align 4
  %add12 = add nsw i32 %4, 7
  store i32 %add12, ptr %k, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call13 = call i32 @sparse(i32 noundef 4096) #2
  %call14 = call i32 @sparse(i32 noundef 65537) #2
  %add15 = add i32 %call13, %call14
  %call16 = call i32 @sparse(i32 noundef 1073741824) #2
  %add17 = add i32 %add15, %call16
  %call18 = call i32 @sparse(i32 noundef 100) #2
  %add19 = add i32 %add17, %call18
  %5 = load i32, ptr %h, align 4
  %add20 = add i32 %5, %add19
  store i32 %add20, ptr %h, align 4
  %6 = load i32, ptr %h, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone
define internal i32 @run(ptr noundef %code) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca ptr, align 4
  %r = alloca [8 x i32], align 4
  %pc = alloca i32, align 4
  %steps = alloca i32, align 4
  %c = alloca ptr, align 4
  store ptr %code, ptr %code.addr, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %r, i8 0, i32 32, i1 false)
  store i32 0, ptr %pc, align 4
  store i32 0, ptr %steps, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %code.addr, align 4
  %2 = load i32, ptr %pc, align 4
  %add.ptr = getelementptr inbounds i8, ptr %1, i32 %2
  store ptr %add.ptr, ptr %c, align 4
  %3 = load ptr, ptr %c, align 4
  %arrayidx = getelementptr inbounds i8, ptr %3, i32 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb17
    i32 3, label %sw.bb28
    i32 4, label %sw.bb39
    i32 5, label %sw.bb50
    i32 9, label %sw.bb61
    i32 10, label %sw.bb73
    i32 11, label %sw.bb85
    i32 6, label %sw.bb93
    i32 7, label %sw.bb101
    i32 8, label %sw.bb106
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load ptr, ptr %c, align 4
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i32 2
  %6 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %6 to i32
  %7 = load ptr, ptr %c, align 4
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i32 1
  %8 = load i8, ptr %arrayidx3, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx4 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom
  store i32 %conv2, ptr %arrayidx4, align 4
  %9 = load i32, ptr %pc, align 4
  %add = add nsw i32 %9, 3
  store i32 %add, ptr %pc, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.body
  %10 = load ptr, ptr %c, align 4
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i32 2
  %11 = load i8, ptr %arrayidx6, align 1
  %idxprom7 = zext i8 %11 to i32
  %arrayidx8 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom7
  %12 = load i32, ptr %arrayidx8, align 4
  %13 = load ptr, ptr %c, align 4
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i32 3
  %14 = load i8, ptr %arrayidx9, align 1
  %idxprom10 = zext i8 %14 to i32
  %arrayidx11 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom10
  %15 = load i32, ptr %arrayidx11, align 4
  %add12 = add nsw i32 %12, %15
  %16 = load ptr, ptr %c, align 4
  %arrayidx13 = getelementptr inbounds i8, ptr %16, i32 1
  %17 = load i8, ptr %arrayidx13, align 1
  %idxprom14 = zext i8 %17 to i32
  %arrayidx15 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom14
  store i32 %add12, ptr %arrayidx15, align 4
  %18 = load i32, ptr %pc, align 4
  %add16 = add nsw i32 %18, 4
  store i32 %add16, ptr %pc, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %for.body
  %19 = load ptr, ptr %c, align 4
  %arrayidx18 = getelementptr inbounds i8, ptr %19, i32 2
  %20 = load i8, ptr %arrayidx18, align 1
  %idxprom19 = zext i8 %20 to i32
  %arrayidx20 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom19
  %21 = load i32, ptr %arrayidx20, align 4
  %22 = load ptr, ptr %c, align 4
  %arrayidx21 = getelementptr inbounds i8, ptr %22, i32 3
  %23 = load i8, ptr %arrayidx21, align 1
  %idxprom22 = zext i8 %23 to i32
  %arrayidx23 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom22
  %24 = load i32, ptr %arrayidx23, align 4
  %sub = sub nsw i32 %21, %24
  %25 = load ptr, ptr %c, align 4
  %arrayidx24 = getelementptr inbounds i8, ptr %25, i32 1
  %26 = load i8, ptr %arrayidx24, align 1
  %idxprom25 = zext i8 %26 to i32
  %arrayidx26 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom25
  store i32 %sub, ptr %arrayidx26, align 4
  %27 = load i32, ptr %pc, align 4
  %add27 = add nsw i32 %27, 4
  store i32 %add27, ptr %pc, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %for.body
  %28 = load ptr, ptr %c, align 4
  %arrayidx29 = getelementptr inbounds i8, ptr %28, i32 2
  %29 = load i8, ptr %arrayidx29, align 1
  %idxprom30 = zext i8 %29 to i32
  %arrayidx31 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom30
  %30 = load i32, ptr %arrayidx31, align 4
  %31 = load ptr, ptr %c, align 4
  %arrayidx32 = getelementptr inbounds i8, ptr %31, i32 3
  %32 = load i8, ptr %arrayidx32, align 1
  %idxprom33 = zext i8 %32 to i32
  %arrayidx34 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom33
  %33 = load i32, ptr %arrayidx34, align 4
  %mul = mul i32 %30, %33
  %34 = load ptr, ptr %c, align 4
  %arrayidx35 = getelementptr inbounds i8, ptr %34, i32 1
  %35 = load i8, ptr %arrayidx35, align 1
  %idxprom36 = zext i8 %35 to i32
  %arrayidx37 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom36
  store i32 %mul, ptr %arrayidx37, align 4
  %36 = load i32, ptr %pc, align 4
  %add38 = add nsw i32 %36, 4
  store i32 %add38, ptr %pc, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %for.body
  %37 = load ptr, ptr %c, align 4
  %arrayidx40 = getelementptr inbounds i8, ptr %37, i32 2
  %38 = load i8, ptr %arrayidx40, align 1
  %idxprom41 = zext i8 %38 to i32
  %arrayidx42 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom41
  %39 = load i32, ptr %arrayidx42, align 4
  %40 = load ptr, ptr %c, align 4
  %arrayidx43 = getelementptr inbounds i8, ptr %40, i32 3
  %41 = load i8, ptr %arrayidx43, align 1
  %idxprom44 = zext i8 %41 to i32
  %arrayidx45 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom44
  %42 = load i32, ptr %arrayidx45, align 4
  %xor = xor i32 %39, %42
  %43 = load ptr, ptr %c, align 4
  %arrayidx46 = getelementptr inbounds i8, ptr %43, i32 1
  %44 = load i8, ptr %arrayidx46, align 1
  %idxprom47 = zext i8 %44 to i32
  %arrayidx48 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom47
  store i32 %xor, ptr %arrayidx48, align 4
  %45 = load i32, ptr %pc, align 4
  %add49 = add nsw i32 %45, 4
  store i32 %add49, ptr %pc, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %for.body
  %46 = load ptr, ptr %c, align 4
  %arrayidx51 = getelementptr inbounds i8, ptr %46, i32 2
  %47 = load i8, ptr %arrayidx51, align 1
  %idxprom52 = zext i8 %47 to i32
  %arrayidx53 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom52
  %48 = load i32, ptr %arrayidx53, align 4
  %49 = load ptr, ptr %c, align 4
  %arrayidx54 = getelementptr inbounds i8, ptr %49, i32 3
  %50 = load i8, ptr %arrayidx54, align 1
  %idxprom55 = zext i8 %50 to i32
  %arrayidx56 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom55
  %51 = load i32, ptr %arrayidx56, align 4
  %and = and i32 %51, 31
  %shl = shl i32 %48, %and
  %52 = load ptr, ptr %c, align 4
  %arrayidx57 = getelementptr inbounds i8, ptr %52, i32 1
  %53 = load i8, ptr %arrayidx57, align 1
  %idxprom58 = zext i8 %53 to i32
  %arrayidx59 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom58
  store i32 %shl, ptr %arrayidx59, align 4
  %54 = load i32, ptr %pc, align 4
  %add60 = add nsw i32 %54, 4
  store i32 %add60, ptr %pc, align 4
  br label %sw.epilog

sw.bb61:                                          ; preds = %for.body
  %55 = load ptr, ptr %c, align 4
  %arrayidx62 = getelementptr inbounds i8, ptr %55, i32 2
  %56 = load i8, ptr %arrayidx62, align 1
  %idxprom63 = zext i8 %56 to i32
  %arrayidx64 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom63
  %57 = load i32, ptr %arrayidx64, align 4
  %58 = load ptr, ptr %c, align 4
  %arrayidx65 = getelementptr inbounds i8, ptr %58, i32 3
  %59 = load i8, ptr %arrayidx65, align 1
  %idxprom66 = zext i8 %59 to i32
  %arrayidx67 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom66
  %60 = load i32, ptr %arrayidx67, align 4
  %and68 = and i32 %57, %60
  %61 = load ptr, ptr %c, align 4
  %arrayidx69 = getelementptr inbounds i8, ptr %61, i32 1
  %62 = load i8, ptr %arrayidx69, align 1
  %idxprom70 = zext i8 %62 to i32
  %arrayidx71 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom70
  store i32 %and68, ptr %arrayidx71, align 4
  %63 = load i32, ptr %pc, align 4
  %add72 = add nsw i32 %63, 4
  store i32 %add72, ptr %pc, align 4
  br label %sw.epilog

sw.bb73:                                          ; preds = %for.body
  %64 = load ptr, ptr %c, align 4
  %arrayidx74 = getelementptr inbounds i8, ptr %64, i32 2
  %65 = load i8, ptr %arrayidx74, align 1
  %idxprom75 = zext i8 %65 to i32
  %arrayidx76 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom75
  %66 = load i32, ptr %arrayidx76, align 4
  %67 = load ptr, ptr %c, align 4
  %arrayidx77 = getelementptr inbounds i8, ptr %67, i32 3
  %68 = load i8, ptr %arrayidx77, align 1
  %idxprom78 = zext i8 %68 to i32
  %arrayidx79 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom78
  %69 = load i32, ptr %arrayidx79, align 4
  %and80 = and i32 %69, 31
  %shr = lshr i32 %66, %and80
  %70 = load ptr, ptr %c, align 4
  %arrayidx81 = getelementptr inbounds i8, ptr %70, i32 1
  %71 = load i8, ptr %arrayidx81, align 1
  %idxprom82 = zext i8 %71 to i32
  %arrayidx83 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom82
  store i32 %shr, ptr %arrayidx83, align 4
  %72 = load i32, ptr %pc, align 4
  %add84 = add nsw i32 %72, 4
  store i32 %add84, ptr %pc, align 4
  br label %sw.epilog

sw.bb85:                                          ; preds = %for.body
  %73 = load ptr, ptr %c, align 4
  %arrayidx86 = getelementptr inbounds i8, ptr %73, i32 2
  %74 = load i8, ptr %arrayidx86, align 1
  %idxprom87 = zext i8 %74 to i32
  %arrayidx88 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom87
  %75 = load i32, ptr %arrayidx88, align 4
  %76 = load ptr, ptr %c, align 4
  %arrayidx89 = getelementptr inbounds i8, ptr %76, i32 1
  %77 = load i8, ptr %arrayidx89, align 1
  %idxprom90 = zext i8 %77 to i32
  %arrayidx91 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom90
  store i32 %75, ptr %arrayidx91, align 4
  %78 = load i32, ptr %pc, align 4
  %add92 = add nsw i32 %78, 3
  store i32 %add92, ptr %pc, align 4
  br label %sw.epilog

sw.bb93:                                          ; preds = %for.body
  %79 = load i32, ptr %pc, align 4
  %add94 = add nsw i32 %79, 3
  store i32 %add94, ptr %pc, align 4
  %80 = load ptr, ptr %c, align 4
  %arrayidx95 = getelementptr inbounds i8, ptr %80, i32 1
  %81 = load i8, ptr %arrayidx95, align 1
  %idxprom96 = zext i8 %81 to i32
  %arrayidx97 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom96
  %82 = load i32, ptr %arrayidx97, align 4
  %tobool = icmp ne i32 %82, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb93
  %83 = load ptr, ptr %c, align 4
  %arrayidx98 = getelementptr inbounds i8, ptr %83, i32 2
  %84 = load i8, ptr %arrayidx98, align 1
  %conv99 = sext i8 %84 to i32
  %85 = load i32, ptr %pc, align 4
  %add100 = add nsw i32 %85, %conv99
  store i32 %add100, ptr %pc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb93
  br label %sw.epilog

sw.bb101:                                         ; preds = %for.body
  %86 = load ptr, ptr %c, align 4
  %arrayidx102 = getelementptr inbounds i8, ptr %86, i32 1
  %87 = load i8, ptr %arrayidx102, align 1
  %idxprom103 = zext i8 %87 to i32
  %arrayidx104 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom103
  %88 = load i32, ptr %arrayidx104, align 4
  %dec = add nsw i32 %88, -1
  store i32 %dec, ptr %arrayidx104, align 4
  %89 = load i32, ptr %pc, align 4
  %add105 = add nsw i32 %89, 2
  store i32 %add105, ptr %pc, align 4
  br label %sw.epilog

sw.bb106:                                         ; preds = %for.body
  %90 = load ptr, ptr %c, align 4
  %arrayidx107 = getelementptr inbounds i8, ptr %90, i32 1
  %91 = load i8, ptr %arrayidx107, align 1
  %idxprom108 = zext i8 %91 to i32
  %arrayidx109 = getelementptr inbounds nuw [8 x i32], ptr %r, i32 0, i32 %idxprom108
  %92 = load i32, ptr %arrayidx109, align 4
  store i32 %92, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %for.body
  store i32 -2, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb101, %if.end, %sw.bb85, %sw.bb73, %sw.bb61, %sw.bb50, %sw.bb39, %sw.bb28, %sw.bb17, %sw.bb5, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %93 = load i32, ptr %steps, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, ptr %steps, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %sw.default, %sw.bb106
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

; Function Attrs: noinline nounwind optnone
define internal i32 @sparse(i32 noundef %k) #0 {
entry:
  %retval = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load i32, ptr %k.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -1000, label %sw.bb
    i32 -7, label %sw.bb1
    i32 0, label %sw.bb2
    i32 13, label %sw.bb3
    i32 99, label %sw.bb4
    i32 100, label %sw.bb4
    i32 4096, label %sw.bb5
    i32 65537, label %sw.bb6
    i32 1073741824, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry, %entry
  store i32 5, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 8, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, ptr %k.addr, align 4
  %and = and i32 %1, 3
  store i32 %and, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone
define internal i32 @fall(i32 noundef %k) #0 {
entry:
  %k.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4
  store i32 0, ptr %r, align 4
  %0 = load i32, ptr %k.addr, align 4
  %rem = srem i32 %0, 6
  switch i32 %rem, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %r, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %r, align 4
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %sw.bb
  %2 = load i32, ptr %r, align 4
  %add2 = add nsw i32 %2, 10
  store i32 %add2, ptr %r, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %sw.bb1
  %3 = load i32, ptr %r, align 4
  %add4 = add nsw i32 %3, 100
  store i32 %add4, ptr %r, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %4 = load i32, ptr %r, align 4
  %sub = sub nsw i32 %4, 5
  store i32 %sub, ptr %r, align 4
  br label %sw.bb6

sw.bb6:                                           ; preds = %entry, %sw.bb5
  %5 = load i32, ptr %r, align 4
  %mul = mul nsw i32 %5, 3
  store i32 %mul, ptr %r, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 77, ptr %r, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb3
  %6 = load i32, ptr %r, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
