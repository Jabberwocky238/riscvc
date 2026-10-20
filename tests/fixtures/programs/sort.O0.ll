; ModuleID = 'tests/programs/sort.c'
source_filename = "tests/programs/sort.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@z = internal global [300 x i32] zeroinitializer, align 4
@y = internal global [300 x i32] zeroinitializer, align 4
@x = internal global [300 x i32] zeroinitializer, align 4
@seed = internal global i32 12345, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %i3 = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 300
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @next() #1
  %rem = urem i32 %call, 2001
  %sub = sub nsw i32 %rem, 1000
  %1 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [300 x i32], ptr @z, i32 0, i32 %1
  store i32 %sub, ptr %arrayidx, align 4
  %2 = load i32, ptr %i, align 4
  %arrayidx1 = getelementptr inbounds [300 x i32], ptr @y, i32 0, i32 %2
  store i32 %sub, ptr %arrayidx1, align 4
  %3 = load i32, ptr %i, align 4
  %arrayidx2 = getelementptr inbounds [300 x i32], ptr @x, i32 0, i32 %3
  store i32 %sub, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  call void @quick(ptr noundef @x, i32 noundef 0, i32 noundef 299) #1
  call void @insertion(ptr noundef @y, i32 noundef 300) #1
  call void @heap(ptr noundef @z, i32 noundef 300) #1
  store i32 0, ptr %h, align 4
  store i32 0, ptr %i3, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc22, %for.end
  %5 = load i32, ptr %i3, align 4
  %cmp5 = icmp slt i32 %5, 300
  br i1 %cmp5, label %for.body6, label %for.end24

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i3, align 4
  %arrayidx7 = getelementptr inbounds [300 x i32], ptr @x, i32 0, i32 %6
  %7 = load i32, ptr %arrayidx7, align 4
  %8 = load i32, ptr %i3, align 4
  %arrayidx8 = getelementptr inbounds [300 x i32], ptr @y, i32 0, i32 %8
  %9 = load i32, ptr %arrayidx8, align 4
  %cmp9 = icmp ne i32 %7, %9
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body6
  %10 = load i32, ptr %i3, align 4
  %arrayidx10 = getelementptr inbounds [300 x i32], ptr @y, i32 0, i32 %10
  %11 = load i32, ptr %arrayidx10, align 4
  %12 = load i32, ptr %i3, align 4
  %arrayidx11 = getelementptr inbounds [300 x i32], ptr @z, i32 0, i32 %12
  %13 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp ne i32 %11, %13
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body6
  %14 = load i32, ptr %i3, align 4
  %add = add nsw i32 1000, %14
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %15 = load i32, ptr %i3, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %16 = load i32, ptr %i3, align 4
  %sub13 = sub nsw i32 %16, 1
  %arrayidx14 = getelementptr inbounds [300 x i32], ptr @x, i32 0, i32 %sub13
  %17 = load i32, ptr %arrayidx14, align 4
  %18 = load i32, ptr %i3, align 4
  %arrayidx15 = getelementptr inbounds [300 x i32], ptr @x, i32 0, i32 %18
  %19 = load i32, ptr %arrayidx15, align 4
  %cmp16 = icmp sgt i32 %17, %19
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  %20 = load i32, ptr %i3, align 4
  %add18 = add nsw i32 2000, %20
  store i32 %add18, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %land.lhs.true, %if.end
  %21 = load i32, ptr %h, align 4
  %mul = mul i32 %21, 31
  %22 = load i32, ptr %i3, align 4
  %arrayidx20 = getelementptr inbounds [300 x i32], ptr @x, i32 0, i32 %22
  %23 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %mul, %23
  store i32 %add21, ptr %h, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %if.end19
  %24 = load i32, ptr %i3, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, ptr %i3, align 4
  br label %for.cond4, !llvm.loop !9

for.end24:                                        ; preds = %for.cond4
  %25 = load i32, ptr %h, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end24, %if.then17, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone
define internal i32 @next() #0 {
entry:
  %0 = load i32, ptr @seed, align 4
  %shl = shl i32 %0, 13
  %1 = load i32, ptr @seed, align 4
  %xor = xor i32 %1, %shl
  store i32 %xor, ptr @seed, align 4
  %2 = load i32, ptr @seed, align 4
  %shr = lshr i32 %2, 17
  %3 = load i32, ptr @seed, align 4
  %xor1 = xor i32 %3, %shr
  store i32 %xor1, ptr @seed, align 4
  %4 = load i32, ptr @seed, align 4
  %shl2 = shl i32 %4, 5
  %5 = load i32, ptr @seed, align 4
  %xor3 = xor i32 %5, %shl2
  store i32 %xor3, ptr @seed, align 4
  %6 = load i32, ptr @seed, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone
define internal void @quick(ptr noundef %a, i32 noundef %lo, i32 noundef %hi) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store i32 %lo, ptr %lo.addr, align 4
  store i32 %hi, ptr %hi.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %entry
  %0 = load i32, ptr %lo.addr, align 4
  %1 = load i32, ptr %hi.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end25

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %a.addr, align 4
  %3 = load i32, ptr %lo.addr, align 4
  %4 = load i32, ptr %hi.addr, align 4
  %add = add nsw i32 %3, %4
  %div = sdiv i32 %add, 2
  %arrayidx = getelementptr inbounds i32, ptr %2, i32 %div
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %p, align 4
  %6 = load i32, ptr %lo.addr, align 4
  store i32 %6, ptr %i, align 4
  %7 = load i32, ptr %hi.addr, align 4
  store i32 %7, ptr %j, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.body
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %j, align 4
  %cmp2 = icmp sle i32 %8, %9
  br i1 %cmp2, label %while.body3, label %while.end20

while.body3:                                      ; preds = %while.cond1
  br label %while.cond4

while.cond4:                                      ; preds = %while.body7, %while.body3
  %10 = load ptr, ptr %a.addr, align 4
  %11 = load i32, ptr %i, align 4
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i32 %11
  %12 = load i32, ptr %arrayidx5, align 4
  %13 = load i32, ptr %p, align 4
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond4
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond4, !llvm.loop !10

while.end:                                        ; preds = %while.cond4
  br label %while.cond8

while.cond8:                                      ; preds = %while.body11, %while.end
  %15 = load ptr, ptr %a.addr, align 4
  %16 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds i32, ptr %15, i32 %16
  %17 = load i32, ptr %arrayidx9, align 4
  %18 = load i32, ptr %p, align 4
  %cmp10 = icmp sgt i32 %17, %18
  br i1 %cmp10, label %while.body11, label %while.end12

while.body11:                                     ; preds = %while.cond8
  %19 = load i32, ptr %j, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond8, !llvm.loop !11

while.end12:                                      ; preds = %while.cond8
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %j, align 4
  %cmp13 = icmp sle i32 %20, %21
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end12
  %22 = load ptr, ptr %a.addr, align 4
  %23 = load i32, ptr %i, align 4
  %arrayidx14 = getelementptr inbounds i32, ptr %22, i32 %23
  %24 = load i32, ptr %arrayidx14, align 4
  store i32 %24, ptr %t, align 4
  %25 = load ptr, ptr %a.addr, align 4
  %26 = load i32, ptr %j, align 4
  %arrayidx15 = getelementptr inbounds i32, ptr %25, i32 %26
  %27 = load i32, ptr %arrayidx15, align 4
  %28 = load ptr, ptr %a.addr, align 4
  %29 = load i32, ptr %i, align 4
  %arrayidx16 = getelementptr inbounds i32, ptr %28, i32 %29
  store i32 %27, ptr %arrayidx16, align 4
  %30 = load i32, ptr %t, align 4
  %31 = load ptr, ptr %a.addr, align 4
  %32 = load i32, ptr %j, align 4
  %arrayidx17 = getelementptr inbounds i32, ptr %31, i32 %32
  store i32 %30, ptr %arrayidx17, align 4
  %33 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %33, 1
  store i32 %inc18, ptr %i, align 4
  %34 = load i32, ptr %j, align 4
  %dec19 = add nsw i32 %34, -1
  store i32 %dec19, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end12
  br label %while.cond1, !llvm.loop !12

while.end20:                                      ; preds = %while.cond1
  %35 = load i32, ptr %j, align 4
  %36 = load i32, ptr %lo.addr, align 4
  %sub = sub nsw i32 %35, %36
  %37 = load i32, ptr %hi.addr, align 4
  %38 = load i32, ptr %i, align 4
  %sub21 = sub nsw i32 %37, %38
  %cmp22 = icmp slt i32 %sub, %sub21
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.end20
  %39 = load ptr, ptr %a.addr, align 4
  %40 = load i32, ptr %lo.addr, align 4
  %41 = load i32, ptr %j, align 4
  call void @quick(ptr noundef %39, i32 noundef %40, i32 noundef %41) #1
  %42 = load i32, ptr %i, align 4
  store i32 %42, ptr %lo.addr, align 4
  br label %if.end24

if.else:                                          ; preds = %while.end20
  %43 = load ptr, ptr %a.addr, align 4
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %hi.addr, align 4
  call void @quick(ptr noundef %43, i32 noundef %44, i32 noundef %45) #1
  %46 = load i32, ptr %j, align 4
  store i32 %46, ptr %hi.addr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  br label %while.cond, !llvm.loop !13

while.end25:                                      ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @insertion(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 4
  %3 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds i32, ptr %2, i32 %3
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %v, align 4
  %5 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %6 = load i32, ptr %j, align 4
  %cmp1 = icmp sge i32 %6, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %a.addr, align 4
  %8 = load i32, ptr %j, align 4
  %arrayidx2 = getelementptr inbounds i32, ptr %7, i32 %8
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = load i32, ptr %v, align 4
  %cmp3 = icmp sgt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %a.addr, align 4
  %13 = load i32, ptr %j, align 4
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i32 %13
  %14 = load i32, ptr %arrayidx4, align 4
  %15 = load ptr, ptr %a.addr, align 4
  %16 = load i32, ptr %j, align 4
  %add = add nsw i32 %16, 1
  %arrayidx5 = getelementptr inbounds i32, ptr %15, i32 %add
  store i32 %14, ptr %arrayidx5, align 4
  %17 = load i32, ptr %j, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %land.end
  %18 = load i32, ptr %v, align 4
  %19 = load ptr, ptr %a.addr, align 4
  %20 = load i32, ptr %j, align 4
  %add6 = add nsw i32 %20, 1
  %arrayidx7 = getelementptr inbounds i32, ptr %19, i32 %add6
  store i32 %18, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @heap(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %0, 2
  %sub = sub nsw i32 %div, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 4
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n.addr, align 4
  call void @sift(ptr noundef %2, i32 noundef %3, i32 noundef %4) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %n.addr, align 4
  %sub1 = sub nsw i32 %6, 1
  store i32 %sub1, ptr %k, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %7 = load i32, ptr %k, align 4
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %8 = load ptr, ptr %a.addr, align 4
  %arrayidx = getelementptr inbounds i32, ptr %8, i32 0
  %9 = load i32, ptr %arrayidx, align 4
  store i32 %9, ptr %t, align 4
  %10 = load ptr, ptr %a.addr, align 4
  %11 = load i32, ptr %k, align 4
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i32 %11
  %12 = load i32, ptr %arrayidx5, align 4
  %13 = load ptr, ptr %a.addr, align 4
  %arrayidx6 = getelementptr inbounds i32, ptr %13, i32 0
  store i32 %12, ptr %arrayidx6, align 4
  %14 = load i32, ptr %t, align 4
  %15 = load ptr, ptr %a.addr, align 4
  %16 = load i32, ptr %k, align 4
  %arrayidx7 = getelementptr inbounds i32, ptr %15, i32 %16
  store i32 %14, ptr %arrayidx7, align 4
  %17 = load ptr, ptr %a.addr, align 4
  %18 = load i32, ptr %k, align 4
  call void @sift(ptr noundef %17, i32 noundef 0, i32 noundef %18) #1
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %19 = load i32, ptr %k, align 4
  %dec9 = add nsw i32 %19, -1
  store i32 %dec9, ptr %k, align 4
  br label %for.cond2, !llvm.loop !17

for.end10:                                        ; preds = %for.cond2
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @sift(ptr noundef %a, i32 noundef %i, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %i.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %t = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %entry
  %0 = load i32, ptr %i.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  store i32 %add, ptr %l, align 4
  %1 = load i32, ptr %i.addr, align 4
  store i32 %1, ptr %m, align 4
  %2 = load i32, ptr %l, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 4
  %5 = load i32, ptr %l, align 4
  %arrayidx = getelementptr inbounds i32, ptr %4, i32 %5
  %6 = load i32, ptr %arrayidx, align 4
  %7 = load ptr, ptr %a.addr, align 4
  %8 = load i32, ptr %m, align 4
  %arrayidx1 = getelementptr inbounds i32, ptr %7, i32 %8
  %9 = load i32, ptr %arrayidx1, align 4
  %cmp2 = icmp sgt i32 %6, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, ptr %l, align 4
  store i32 %10, ptr %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.cond
  %11 = load i32, ptr %l, align 4
  %add3 = add nsw i32 %11, 1
  %12 = load i32, ptr %n.addr, align 4
  %cmp4 = icmp slt i32 %add3, %12
  br i1 %cmp4, label %land.lhs.true5, label %if.end12

land.lhs.true5:                                   ; preds = %if.end
  %13 = load ptr, ptr %a.addr, align 4
  %14 = load i32, ptr %l, align 4
  %add6 = add nsw i32 %14, 1
  %arrayidx7 = getelementptr inbounds i32, ptr %13, i32 %add6
  %15 = load i32, ptr %arrayidx7, align 4
  %16 = load ptr, ptr %a.addr, align 4
  %17 = load i32, ptr %m, align 4
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i32 %17
  %18 = load i32, ptr %arrayidx8, align 4
  %cmp9 = icmp sgt i32 %15, %18
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %land.lhs.true5
  %19 = load i32, ptr %l, align 4
  %add11 = add nsw i32 %19, 1
  store i32 %add11, ptr %m, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true5, %if.end
  %20 = load i32, ptr %m, align 4
  %21 = load i32, ptr %i.addr, align 4
  %cmp13 = icmp eq i32 %20, %21
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  ret void

if.end15:                                         ; preds = %if.end12
  %22 = load ptr, ptr %a.addr, align 4
  %23 = load i32, ptr %i.addr, align 4
  %arrayidx16 = getelementptr inbounds i32, ptr %22, i32 %23
  %24 = load i32, ptr %arrayidx16, align 4
  store i32 %24, ptr %t, align 4
  %25 = load ptr, ptr %a.addr, align 4
  %26 = load i32, ptr %m, align 4
  %arrayidx17 = getelementptr inbounds i32, ptr %25, i32 %26
  %27 = load i32, ptr %arrayidx17, align 4
  %28 = load ptr, ptr %a.addr, align 4
  %29 = load i32, ptr %i.addr, align 4
  %arrayidx18 = getelementptr inbounds i32, ptr %28, i32 %29
  store i32 %27, ptr %arrayidx18, align 4
  %30 = load i32, ptr %t, align 4
  %31 = load ptr, ptr %a.addr, align 4
  %32 = load i32, ptr %m, align 4
  %arrayidx19 = getelementptr inbounds i32, ptr %31, i32 %32
  store i32 %30, ptr %arrayidx19, align 4
  %33 = load i32, ptr %m, align 4
  store i32 %33, ptr %i.addr, align 4
  br label %for.cond
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
