; ModuleID = 'tests/programs/lists.c'
source_filename = "tests/programs/lists.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.Node = type { i32, ptr }
%struct.Tree = type { i32, ptr, ptr }

@pool = internal global [512 x %struct.Node] zeroinitializer, align 4
@used = internal global i32 0, align 4
@tpool = internal global [512 x %struct.Tree] zeroinitializer, align 4
@tused = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %l = alloca ptr, align 4
  %s = alloca i32, align 4
  %root = alloca ptr, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %h = alloca i32, align 4
  %n = alloca ptr, align 4
  store ptr null, ptr %l, align 4
  store i32 99, ptr %s, align 4
  store ptr null, ptr %root, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %s, align 4
  %mul = mul i32 %1, 1664525
  %add = add i32 %mul, 1013904223
  store i32 %add, ptr %s, align 4
  %2 = load i32, ptr %s, align 4
  %shr = lshr i32 %2, 16
  %rem = srem i32 %shr, 1000
  store i32 %rem, ptr %v, align 4
  %3 = load i32, ptr %v, align 4
  %4 = load ptr, ptr %l, align 4
  %call = call ptr @cons(i32 noundef %3, ptr noundef %4) #2
  store ptr %call, ptr %l, align 4
  %5 = load ptr, ptr %root, align 4
  %6 = load i32, ptr %v, align 4
  %call1 = call ptr @insert(ptr noundef %5, i32 noundef %6) #2
  store ptr %call1, ptr %root, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %l, align 4
  %call2 = call ptr @reverse(ptr noundef %8) #2
  store ptr %call2, ptr %l, align 4
  %9 = load ptr, ptr %l, align 4
  %v3 = getelementptr inbounds nuw %struct.Node, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %v3, align 4
  store i32 %10, ptr %h, align 4
  %11 = load ptr, ptr %l, align 4
  %call4 = call ptr @msort(ptr noundef %11) #2
  store ptr %call4, ptr %l, align 4
  %12 = load ptr, ptr %l, align 4
  store ptr %12, ptr %n, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.end
  %13 = load ptr, ptr %n, align 4
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %for.body6, label %for.end17

for.body6:                                        ; preds = %for.cond5
  %14 = load ptr, ptr %n, align 4
  %next = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %next, align 4
  %tobool7 = icmp ne ptr %15, null
  br i1 %tobool7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %16 = load ptr, ptr %n, align 4
  %v8 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %v8, align 4
  %18 = load ptr, ptr %n, align 4
  %next9 = getelementptr inbounds nuw %struct.Node, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %next9, align 4
  %v10 = getelementptr inbounds nuw %struct.Node, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %v10, align 4
  %cmp11 = icmp sgt i32 %17, %20
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body6
  %21 = load i32, ptr %h, align 4
  %mul12 = mul i32 %21, 3
  %22 = load ptr, ptr %n, align 4
  %v13 = getelementptr inbounds nuw %struct.Node, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %v13, align 4
  %add14 = add i32 %mul12, %23
  store i32 %add14, ptr %h, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %24 = load ptr, ptr %n, align 4
  %next16 = getelementptr inbounds nuw %struct.Node, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %next16, align 4
  store ptr %25, ptr %n, align 4
  br label %for.cond5, !llvm.loop !9

for.end17:                                        ; preds = %for.cond5
  %26 = load i32, ptr %h, align 4
  %27 = load ptr, ptr %root, align 4
  %call18 = call i32 @walk(ptr noundef %27, i32 noundef 0) #2
  %xor = xor i32 %26, %call18
  %28 = load ptr, ptr %root, align 4
  %call19 = call i32 @height(ptr noundef %28) #2
  %shl = shl i32 %call19, 24
  %xor20 = xor i32 %xor, %shl
  store i32 %xor20, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end17, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone
define internal ptr @cons(i32 noundef %v, ptr noundef %next) #0 {
entry:
  %v.addr = alloca i32, align 4
  %next.addr = alloca ptr, align 4
  %n = alloca ptr, align 4
  store i32 %v, ptr %v.addr, align 4
  store ptr %next, ptr %next.addr, align 4
  %0 = load i32, ptr @used, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @used, align 4
  %arrayidx = getelementptr inbounds [512 x %struct.Node], ptr @pool, i32 0, i32 %0
  store ptr %arrayidx, ptr %n, align 4
  %1 = load i32, ptr %v.addr, align 4
  %2 = load ptr, ptr %n, align 4
  %v1 = getelementptr inbounds nuw %struct.Node, ptr %2, i32 0, i32 0
  store i32 %1, ptr %v1, align 4
  %3 = load ptr, ptr %next.addr, align 4
  %4 = load ptr, ptr %n, align 4
  %next2 = getelementptr inbounds nuw %struct.Node, ptr %4, i32 0, i32 1
  store ptr %3, ptr %next2, align 4
  %5 = load ptr, ptr %n, align 4
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone
define internal ptr @insert(ptr noundef %t, i32 noundef %k) #0 {
entry:
  %retval = alloca ptr, align 4
  %t.addr = alloca ptr, align 4
  %k.addr = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load ptr, ptr %t.addr, align 4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @tused, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @tused, align 4
  %arrayidx = getelementptr inbounds [512 x %struct.Tree], ptr @tpool, i32 0, i32 %1
  store ptr %arrayidx, ptr %t.addr, align 4
  %2 = load i32, ptr %k.addr, align 4
  %3 = load ptr, ptr %t.addr, align 4
  %key = getelementptr inbounds nuw %struct.Tree, ptr %3, i32 0, i32 0
  store i32 %2, ptr %key, align 4
  %4 = load ptr, ptr %t.addr, align 4
  %r = getelementptr inbounds nuw %struct.Tree, ptr %4, i32 0, i32 2
  store ptr null, ptr %r, align 4
  %5 = load ptr, ptr %t.addr, align 4
  %l = getelementptr inbounds nuw %struct.Tree, ptr %5, i32 0, i32 1
  store ptr null, ptr %l, align 4
  %6 = load ptr, ptr %t.addr, align 4
  store ptr %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %k.addr, align 4
  %8 = load ptr, ptr %t.addr, align 4
  %key1 = getelementptr inbounds nuw %struct.Tree, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %key1, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %t.addr, align 4
  %l3 = getelementptr inbounds nuw %struct.Tree, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %l3, align 4
  %12 = load i32, ptr %k.addr, align 4
  %call = call ptr @insert(ptr noundef %11, i32 noundef %12) #2
  %13 = load ptr, ptr %t.addr, align 4
  %l4 = getelementptr inbounds nuw %struct.Tree, ptr %13, i32 0, i32 1
  store ptr %call, ptr %l4, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %14 = load i32, ptr %k.addr, align 4
  %15 = load ptr, ptr %t.addr, align 4
  %key5 = getelementptr inbounds nuw %struct.Tree, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %key5, align 4
  %cmp6 = icmp sgt i32 %14, %16
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.else
  %17 = load ptr, ptr %t.addr, align 4
  %r8 = getelementptr inbounds nuw %struct.Tree, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %r8, align 4
  %19 = load i32, ptr %k.addr, align 4
  %call9 = call ptr @insert(ptr noundef %18, i32 noundef %19) #2
  %20 = load ptr, ptr %t.addr, align 4
  %r10 = getelementptr inbounds nuw %struct.Tree, ptr %20, i32 0, i32 2
  store ptr %call9, ptr %r10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then2
  %21 = load ptr, ptr %t.addr, align 4
  store ptr %21, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %22 = load ptr, ptr %retval, align 4
  ret ptr %22
}

; Function Attrs: noinline nounwind optnone
define internal ptr @reverse(ptr noundef %l) #0 {
entry:
  %l.addr = alloca ptr, align 4
  %prev = alloca ptr, align 4
  %n = alloca ptr, align 4
  store ptr %l, ptr %l.addr, align 4
  store ptr null, ptr %prev, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %l.addr, align 4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %l.addr, align 4
  %next = getelementptr inbounds nuw %struct.Node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next, align 4
  store ptr %2, ptr %n, align 4
  %3 = load ptr, ptr %prev, align 4
  %4 = load ptr, ptr %l.addr, align 4
  %next1 = getelementptr inbounds nuw %struct.Node, ptr %4, i32 0, i32 1
  store ptr %3, ptr %next1, align 4
  %5 = load ptr, ptr %l.addr, align 4
  store ptr %5, ptr %prev, align 4
  %6 = load ptr, ptr %n, align 4
  store ptr %6, ptr %l.addr, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %prev, align 4
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone
define internal ptr @msort(ptr noundef %l) #0 {
entry:
  %retval = alloca ptr, align 4
  %l.addr = alloca ptr, align 4
  %slow = alloca ptr, align 4
  %fast = alloca ptr, align 4
  %b = alloca ptr, align 4
  store ptr %l, ptr %l.addr, align 4
  %0 = load ptr, ptr %l.addr, align 4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %l.addr, align 4
  %next = getelementptr inbounds nuw %struct.Node, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next, align 4
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %l.addr, align 4
  store ptr %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %l.addr, align 4
  store ptr %4, ptr %slow, align 4
  %5 = load ptr, ptr %l.addr, align 4
  %next2 = getelementptr inbounds nuw %struct.Node, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %next2, align 4
  store ptr %6, ptr %fast, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load ptr, ptr %fast, align 4
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %fast, align 4
  %next4 = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %next4, align 4
  %tobool5 = icmp ne ptr %9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool5, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %slow, align 4
  %next6 = getelementptr inbounds nuw %struct.Node, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %next6, align 4
  store ptr %12, ptr %slow, align 4
  %13 = load ptr, ptr %fast, align 4
  %next7 = getelementptr inbounds nuw %struct.Node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next7, align 4
  %next8 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %next8, align 4
  store ptr %15, ptr %fast, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %land.end
  %16 = load ptr, ptr %slow, align 4
  %next9 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %next9, align 4
  store ptr %17, ptr %b, align 4
  %18 = load ptr, ptr %slow, align 4
  %next10 = getelementptr inbounds nuw %struct.Node, ptr %18, i32 0, i32 1
  store ptr null, ptr %next10, align 4
  %19 = load ptr, ptr %l.addr, align 4
  %call = call ptr @msort(ptr noundef %19) #2
  %20 = load ptr, ptr %b, align 4
  %call11 = call ptr @msort(ptr noundef %20) #2
  %call12 = call ptr @merge(ptr noundef %call, ptr noundef %call11) #2
  store ptr %call12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %21 = load ptr, ptr %retval, align 4
  ret ptr %21
}

; Function Attrs: noinline nounwind optnone
define internal i32 @walk(ptr noundef %t, i32 noundef %h) #0 {
entry:
  %t.addr = alloca ptr, align 4
  %h.addr = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  %0 = load ptr, ptr %t.addr, align 4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %t.addr, align 4
  %r = getelementptr inbounds nuw %struct.Tree, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %r, align 4
  %3 = load ptr, ptr %t.addr, align 4
  %l = getelementptr inbounds nuw %struct.Tree, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %l, align 4
  %5 = load i32, ptr %h.addr, align 4
  %call = call i32 @walk(ptr noundef %4, i32 noundef %5) #2
  %mul = mul i32 %call, 7
  %6 = load ptr, ptr %t.addr, align 4
  %key = getelementptr inbounds nuw %struct.Tree, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %key, align 4
  %add = add i32 %mul, %7
  %call1 = call i32 @walk(ptr noundef %2, i32 noundef %add) #2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, ptr %h.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %8, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone
define internal i32 @height(ptr noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 4
  %0 = load ptr, ptr %t.addr, align 4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %t.addr, align 4
  %l = getelementptr inbounds nuw %struct.Tree, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %l, align 4
  %call = call i32 @height(ptr noundef %2) #2
  store i32 %call, ptr %a, align 4
  %3 = load ptr, ptr %t.addr, align 4
  %r = getelementptr inbounds nuw %struct.Tree, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %r, align 4
  %call1 = call i32 @height(ptr noundef %4) #2
  store i32 %call1, ptr %b, align 4
  %5 = load i32, ptr %a, align 4
  %6 = load i32, ptr %b, align 4
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load i32, ptr %a, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load i32, ptr %b, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  %add = add nsw i32 1, %cond
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone
define internal ptr @merge(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %head = alloca %struct.Node, align 4
  %t = alloca ptr, align 4
  store ptr %a, ptr %a.addr, align 4
  store ptr %b, ptr %b.addr, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %head, i8 0, i32 8, i1 false)
  store ptr %head, ptr %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %a.addr, align 4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %b.addr, align 4
  %tobool1 = icmp ne ptr %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load ptr, ptr %a.addr, align 4
  %v = getelementptr inbounds nuw %struct.Node, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %v, align 4
  %5 = load ptr, ptr %b.addr, align 4
  %v2 = getelementptr inbounds nuw %struct.Node, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %v2, align 4
  %cmp = icmp sle i32 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %a.addr, align 4
  %8 = load ptr, ptr %t, align 4
  %next = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 1
  store ptr %7, ptr %next, align 4
  %9 = load ptr, ptr %a.addr, align 4
  %next3 = getelementptr inbounds nuw %struct.Node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next3, align 4
  store ptr %10, ptr %a.addr, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %11 = load ptr, ptr %b.addr, align 4
  %12 = load ptr, ptr %t, align 4
  %next4 = getelementptr inbounds nuw %struct.Node, ptr %12, i32 0, i32 1
  store ptr %11, ptr %next4, align 4
  %13 = load ptr, ptr %b.addr, align 4
  %next5 = getelementptr inbounds nuw %struct.Node, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %next5, align 4
  store ptr %14, ptr %b.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %t, align 4
  %next6 = getelementptr inbounds nuw %struct.Node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %next6, align 4
  store ptr %16, ptr %t, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %a.addr, align 4
  %tobool7 = icmp ne ptr %17, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %18 = load ptr, ptr %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %19 = load ptr, ptr %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %18, %cond.true ], [ %19, %cond.false ]
  %20 = load ptr, ptr %t, align 4
  %next8 = getelementptr inbounds nuw %struct.Node, ptr %20, i32 0, i32 1
  store ptr %cond, ptr %next8, align 4
  %next9 = getelementptr inbounds nuw %struct.Node, ptr %head, i32 0, i32 1
  %21 = load ptr, ptr %next9, align 4
  ret ptr %21
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
