; ModuleID = 'tests/programs/strings.c'
source_filename = "tests/programs/strings.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"  42\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"+2147483647\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"123abc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"99999\00", align 1
@__const.main.nums = private unnamed_addr constant [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@out = internal global [4096 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"the quick brown fox\09jumps over\0Athe lazy dog  \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"lazy\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"cat\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %nums = alloca [8 x ptr], align 4
  %at = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %base = alloca i32, align 4
  %text = alloca ptr, align 4
  %h = alloca i32, align 4
  %i19 = alloca i32, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %nums, ptr align 4 @__const.main.nums, i32 32, i1 false)
  store i32 0, ptr %at, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds nuw [8 x ptr], ptr %nums, i32 0, i32 %1
  %2 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @my_atoi(ptr noundef %2) #2
  store i32 %call, ptr %v, align 4
  store i32 2, ptr %base, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %base, align 4
  %cmp2 = icmp sle i32 %3, 36
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %v, align 4
  %conv = sext i32 %4 to i64
  %5 = load i32, ptr %base, align 4
  %6 = load i32, ptr %at, align 4
  %add.ptr = getelementptr inbounds i8, ptr @out, i32 %6
  %call4 = call i32 @itoa(i64 noundef %conv, i32 noundef %5, ptr noundef %add.ptr) #2
  %7 = load i32, ptr %at, align 4
  %add = add nsw i32 %7, %call4
  store i32 %add, ptr %at, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, ptr %base, align 4
  %add5 = add nsw i32 %8, 7
  store i32 %add5, ptr %base, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  %9 = load i32, ptr %v, align 4
  %conv6 = sext i32 %9 to i64
  %mul = mul nsw i64 %conv6, 1000003
  %10 = load i32, ptr %at, align 4
  %add.ptr7 = getelementptr inbounds i8, ptr @out, i32 %10
  %call8 = call i32 @itoa(i64 noundef %mul, i32 noundef 10, ptr noundef %add.ptr7) #2
  %11 = load i32, ptr %at, align 4
  %add9 = add nsw i32 %11, %call8
  store i32 %add9, ptr %at, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end11:                                        ; preds = %for.cond
  %13 = load i32, ptr %at, align 4
  call void @reverse(ptr noundef @out, i32 noundef %13) #2
  call void @upper(ptr noundef @out) #2
  store ptr @.str.8, ptr %text, align 4
  %14 = load ptr, ptr %text, align 4
  %call12 = call i32 @find(ptr noundef %14, ptr noundef @.str.9) #2
  %mul13 = mul i32 %call12, 1000
  %15 = load ptr, ptr %text, align 4
  %call14 = call i32 @find(ptr noundef %15, ptr noundef @.str.10) #2
  %add15 = add i32 %mul13, %call14
  %16 = load ptr, ptr %text, align 4
  %call16 = call i32 @words(ptr noundef %16) #2
  %mul17 = mul i32 %call16, 7
  %add18 = add i32 %add15, %mul17
  store i32 %add18, ptr %h, align 4
  store i32 0, ptr %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %for.end11
  %17 = load i32, ptr %i19, align 4
  %18 = load i32, ptr %at, align 4
  %cmp21 = icmp slt i32 %17, %18
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %19 = load i32, ptr %h, align 4
  %mul24 = mul i32 %19, 131
  %20 = load i32, ptr %i19, align 4
  %arrayidx25 = getelementptr inbounds [4096 x i8], ptr @out, i32 0, i32 %20
  %21 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %21 to i32
  %add27 = add i32 %mul24, %conv26
  store i32 %add27, ptr %h, align 4
  br label %for.inc28

for.inc28:                                        ; preds = %for.body23
  %22 = load i32, ptr %i19, align 4
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, ptr %i19, align 4
  br label %for.cond20, !llvm.loop !10

for.end30:                                        ; preds = %for.cond20
  %23 = load i32, ptr %h, align 4
  ret i32 %23
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @my_atoi(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 4
  %sign = alloca i32, align 4
  %v = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 4
  store i32 1, ptr %sign, align 4
  store i32 0, ptr %v, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 4
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %s.addr, align 4
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %3 = load ptr, ptr %s.addr, align 4
  %4 = load i8, ptr %3, align 1
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %5 = load ptr, ptr %s.addr, align 4
  %6 = load i8, ptr %5, align 1
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 43
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %7 = load ptr, ptr %s.addr, align 4
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %7, i32 1
  store ptr %incdec.ptr8, ptr %s.addr, align 4
  %8 = load i8, ptr %7, align 1
  %conv9 = zext i8 %8 to i32
  %cmp10 = icmp eq i32 %conv9, 45
  %9 = zext i1 %cmp10 to i64
  %cond = select i1 %cmp10, i32 -1, i32 1
  store i32 %cond, ptr %sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %while.cond12

while.cond12:                                     ; preds = %while.body19, %if.end
  %10 = load ptr, ptr %s.addr, align 4
  %11 = load i8, ptr %10, align 1
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp sge i32 %conv13, 48
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond12
  %12 = load ptr, ptr %s.addr, align 4
  %13 = load i8, ptr %12, align 1
  %conv16 = zext i8 %13 to i32
  %cmp17 = icmp sle i32 %conv16, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond12
  %14 = phi i1 [ false, %while.cond12 ], [ %cmp17, %land.rhs ]
  br i1 %14, label %while.body19, label %while.end22

while.body19:                                     ; preds = %land.end
  %15 = load i32, ptr %v, align 4
  %mul = mul nsw i32 %15, 10
  %16 = load ptr, ptr %s.addr, align 4
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr20, ptr %s.addr, align 4
  %17 = load i8, ptr %16, align 1
  %conv21 = zext i8 %17 to i32
  %sub = sub nsw i32 %conv21, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, ptr %v, align 4
  br label %while.cond12, !llvm.loop !12

while.end22:                                      ; preds = %land.end
  %18 = load i32, ptr %sign, align 4
  %19 = load i32, ptr %v, align 4
  %mul23 = mul nsw i32 %18, %19
  ret i32 %mul23
}

; Function Attrs: noinline nounwind optnone
define internal i32 @itoa(i64 noundef %v, i32 noundef %base, ptr noundef %out) #0 {
entry:
  %v.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 4
  %tmp = alloca [72 x i8], align 1
  %n = alloca i32, align 4
  %neg = alloca i32, align 4
  %u = alloca i64, align 8
  %d = alloca i32, align 4
  %k = alloca i32, align 4
  store i64 %v, ptr %v.addr, align 8
  store i32 %base, ptr %base.addr, align 4
  store ptr %out, ptr %out.addr, align 4
  store i32 0, ptr %n, align 4
  %0 = load i64, ptr %v.addr, align 8
  %cmp = icmp slt i64 %0, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %neg, align 4
  %1 = load i32, ptr %neg, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %v.addr, align 8
  %sub = sub i64 0, %2
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %v.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %3, %cond.false ]
  store i64 %cond, ptr %u, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %4 = load i64, ptr %u, align 8
  %5 = load i32, ptr %base.addr, align 4
  %conv1 = sext i32 %5 to i64
  %rem = urem i64 %4, %conv1
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, ptr %d, align 4
  %6 = load i32, ptr %d, align 4
  %cmp3 = icmp slt i32 %6, 10
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %do.body
  %7 = load i32, ptr %d, align 4
  %add = add nsw i32 48, %7
  br label %cond.end9

cond.false6:                                      ; preds = %do.body
  %8 = load i32, ptr %d, align 4
  %add7 = add nsw i32 97, %8
  %sub8 = sub nsw i32 %add7, 10
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false6, %cond.true5
  %cond10 = phi i32 [ %add, %cond.true5 ], [ %sub8, %cond.false6 ]
  %conv11 = trunc i32 %cond10 to i8
  %9 = load i32, ptr %n, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %n, align 4
  %arrayidx = getelementptr inbounds [72 x i8], ptr %tmp, i32 0, i32 %9
  store i8 %conv11, ptr %arrayidx, align 1
  %10 = load i32, ptr %base.addr, align 4
  %conv12 = sext i32 %10 to i64
  %11 = load i64, ptr %u, align 8
  %div = udiv i64 %11, %conv12
  store i64 %div, ptr %u, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end9
  %12 = load i64, ptr %u, align 8
  %tobool13 = icmp ne i64 %12, 0
  br i1 %tobool13, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %k, align 4
  %13 = load i32, ptr %neg, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %14 = load ptr, ptr %out.addr, align 4
  %15 = load i32, ptr %k, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, ptr %k, align 4
  %arrayidx16 = getelementptr inbounds i8, ptr %14, i32 %15
  store i8 45, ptr %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %16 = load i32, ptr %n, align 4
  %tobool17 = icmp ne i32 %16, 0
  br i1 %tobool17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, ptr %n, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %n, align 4
  %arrayidx18 = getelementptr inbounds [72 x i8], ptr %tmp, i32 0, i32 %dec
  %18 = load i8, ptr %arrayidx18, align 1
  %19 = load ptr, ptr %out.addr, align 4
  %20 = load i32, ptr %k, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, ptr %k, align 4
  %arrayidx20 = getelementptr inbounds i8, ptr %19, i32 %20
  store i8 %18, ptr %arrayidx20, align 1
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %21 = load ptr, ptr %out.addr, align 4
  %22 = load i32, ptr %k, align 4
  %arrayidx21 = getelementptr inbounds i8, ptr %21, i32 %22
  store i8 0, ptr %arrayidx21, align 1
  %23 = load i32, ptr %k, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone
define internal void @reverse(ptr noundef %s, i32 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  %0 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s.addr, align 4
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds i8, ptr %3, i32 %4
  %5 = load i8, ptr %arrayidx, align 1
  store i8 %5, ptr %t, align 1
  %6 = load ptr, ptr %s.addr, align 4
  %7 = load i32, ptr %j, align 4
  %arrayidx1 = getelementptr inbounds i8, ptr %6, i32 %7
  %8 = load i8, ptr %arrayidx1, align 1
  %9 = load ptr, ptr %s.addr, align 4
  %10 = load i32, ptr %i, align 4
  %arrayidx2 = getelementptr inbounds i8, ptr %9, i32 %10
  store i8 %8, ptr %arrayidx2, align 1
  %11 = load i8, ptr %t, align 1
  %12 = load ptr, ptr %s.addr, align 4
  %13 = load i32, ptr %j, align 4
  %arrayidx3 = getelementptr inbounds i8, ptr %12, i32 %13
  store i8 %11, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @upper(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 4
  store ptr %s, ptr %s.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %s.addr, align 4
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 4
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %s.addr, align 4
  %5 = load i8, ptr %4, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %s.addr, align 4
  %7 = load i8, ptr %6, align 1
  %conv5 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv5, 97
  %add = add nsw i32 %sub, 65
  %conv6 = trunc i32 %add to i8
  %8 = load ptr, ptr %s.addr, align 4
  store i8 %conv6, ptr %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %s.addr, align 4
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal i32 @find(ptr noundef %hay, ptr noundef %needle) #0 {
entry:
  %retval = alloca i32, align 4
  %hay.addr = alloca ptr, align 4
  %needle.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %hay, ptr %hay.addr, align 4
  store ptr %needle, ptr %needle.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %hay.addr, align 4
  %1 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds i8, ptr %0, i32 %1
  %2 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load ptr, ptr %needle.addr, align 4
  %4 = load i32, ptr %j, align 4
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i32 %4
  %5 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %5 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %hay.addr, align 4
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %j, align 4
  %add = add nsw i32 %7, %8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i32 %add
  %9 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %9 to i32
  %10 = load ptr, ptr %needle.addr, align 4
  %11 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds i8, ptr %10, i32 %11
  %12 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv4, %conv6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %land.end
  %15 = load ptr, ptr %needle.addr, align 4
  %16 = load i32, ptr %j, align 4
  %arrayidx8 = getelementptr inbounds i8, ptr %15, i32 %16
  %17 = load i8, ptr %arrayidx8, align 1
  %tobool9 = icmp ne i8 %17, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %18 = load i32, ptr %i, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %19, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone
define internal i32 @words(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 4
  %n = alloca i32, align 4
  %in = alloca i32, align 4
  %sp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 4
  store i32 0, ptr %n, align 4
  store i32 0, ptr %in, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %s.addr, align 4
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 4
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load ptr, ptr %s.addr, align 4
  %5 = load i8, ptr %4, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %s.addr, align 4
  %7 = load i8, ptr %6, align 1
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %for.body
  %8 = phi i1 [ true, %lor.lhs.false ], [ true, %for.body ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, ptr %sp, align 4
  %9 = load i32, ptr %sp, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.end
  %10 = load i32, ptr %in, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, ptr %n, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.end
  %12 = load i32, ptr %sp, align 4
  %tobool10 = icmp ne i32 %12, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %in, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %s.addr, align 4
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %n, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
