; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/atomic_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/atomic_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@a8 = dso_local global i8 0, align 1
@a16 = dso_local global i16 0, align 2
@a32 = dso_local global i32 0, align 4
@a64 = dso_local global i64 0, align 8
@b8 = dso_local global i8 0, align 1
@b16 = dso_local global i16 0, align 2
@b32 = dso_local global i32 0, align 4
@b64 = dso_local global i64 0, align 8
@test_loads.atomic_load_models = internal global [4 x i32] [i32 0, i32 1, i32 2, i32 5], align 4
@data = internal global [32 x i8] c"\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./", align 16
@test_stores.atomic_store_models = internal global [3 x i32] [i32 0, i32 3, i32 5], align 4
@test_exchanges.atomic_exchange_models = internal global [5 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5], align 4
@test_compare_exchanges.atomic_compare_exchange_models = internal global [6 x i32] [i32 0, i32 1, i32 2, i32 5, i32 3, i32 4], align 4
@test_fetch_op.atomic_fetch_models = internal global [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@.str = private unnamed_addr constant [36 x i8] c"size zero should never be lock-free\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"unaligned size=2 should not be lock-free\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unaligned size=4 should not be lock-free\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"unaligned size=8 should not be lock-free\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"unaligned size=16 should not be lock-free\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"aligned size=32 should not be lock-free\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"unaligned size=32 should not be lock-free\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"aligned size=3 should not be lock-free\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"aligned size=5 should not be lock-free\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"aligned size=6 should not be lock-free\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"aligned size=7 should not be lock-free\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"aligned size=9 should not be lock-free\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"aligned size=10 should not be lock-free\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"aligned size=11 should not be lock-free\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"aligned size=12 should not be lock-free\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"aligned size=13 should not be lock-free\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"aligned size=14 should not be lock-free\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"aligned size=15 should not be lock-free\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"aligned size=17 should not be lock-free\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local void @set_a_values(i64 noundef %value) #0 {
entry:
  %value.addr = alloca i64, align 8
  store i64 %value, ptr %value.addr, align 8
  %0 = load i64, ptr %value.addr, align 8
  %conv = trunc i64 %0 to i8
  store i8 %conv, ptr @a8, align 1
  %1 = load i64, ptr %value.addr, align 8
  %conv1 = trunc i64 %1 to i16
  store i16 %conv1, ptr @a16, align 2
  %2 = load i64, ptr %value.addr, align 8
  %conv2 = trunc i64 %2 to i32
  store i32 %conv2, ptr @a32, align 4
  %3 = load i64, ptr %value.addr, align 8
  store i64 %3, ptr @a64, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @set_b_values(i64 noundef %value) #0 {
entry:
  %value.addr = alloca i64, align 8
  store i64 %value, ptr %value.addr, align 8
  %0 = load i64, ptr %value.addr, align 8
  %conv = trunc i64 %0 to i8
  store i8 %conv, ptr @b8, align 1
  %1 = load i64, ptr %value.addr, align 8
  %conv1 = trunc i64 %1 to i16
  store i16 %conv1, ptr @b16, align 2
  %2 = load i64, ptr %value.addr, align 8
  %conv2 = trunc i64 %2 to i32
  store i32 %conv2, ptr @b32, align 4
  %3 = load i64, ptr %value.addr, align 8
  store i64 %3, ptr @b64, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @test_loads() #0 {
entry:
  %m = alloca i32, align 4
  %model = alloca i32, align 4
  %n = alloca i32, align 4
  %dst = alloca [32 x i8], align 16
  %n6 = alloca i32, align 4
  %dst10 = alloca [32 x i8], align 16
  store i32 0, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc56, %entry
  %0 = load i32, ptr %m, align 4
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end58

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %m, align 4
  %arrayidx = getelementptr inbounds [4 x i32], ptr @test_loads.atomic_load_models, i32 0, i32 %1
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %model, align 4
  store i32 1, ptr %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %n, align 4
  %cmp2 = icmp ule i32 %3, 32
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  call void @llvm.memset.p0.i32(ptr align 16 %dst, i8 0, i32 32, i1 false)
  %4 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 0
  %5 = load i32, ptr %model, align 4
  call void @__atomic_load(i32 noundef %4, ptr noundef @data, ptr noundef %arraydecay, i32 noundef %5) #5
  %arraydecay4 = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 0
  %6 = load i32, ptr %n, align 4
  %call = call i32 @memcmp(ptr noundef %arraydecay4, ptr noundef @data, i32 noundef %6) #5
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  store i32 1, ptr %n6, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc18, %for.end
  %8 = load i32, ptr %n6, align 4
  %cmp8 = icmp ult i32 %8, 32
  br i1 %cmp8, label %for.body9, label %for.end20

for.body9:                                        ; preds = %for.cond7
  call void @llvm.memset.p0.i32(ptr align 16 %dst10, i8 0, i32 32, i1 false)
  %9 = load i32, ptr %n6, align 4
  %arraydecay11 = getelementptr inbounds [32 x i8], ptr %dst10, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay11, i32 1
  %10 = load i32, ptr %model, align 4
  call void @__atomic_load(i32 noundef %9, ptr noundef getelementptr inbounds (i8, ptr @data, i32 1), ptr noundef %add.ptr, i32 noundef %10) #5
  %arraydecay12 = getelementptr inbounds [32 x i8], ptr %dst10, i32 0, i32 0
  %add.ptr13 = getelementptr inbounds i8, ptr %arraydecay12, i32 1
  %11 = load i32, ptr %n6, align 4
  %call14 = call i32 @memcmp(ptr noundef %add.ptr13, ptr noundef getelementptr inbounds (i8, ptr @data, i32 1), i32 noundef %11) #5
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body9
  call void @abort() #6
  unreachable

if.end17:                                         ; preds = %for.body9
  br label %for.inc18

for.inc18:                                        ; preds = %if.end17
  %12 = load i32, ptr %n6, align 4
  %inc19 = add nsw i32 %12, 1
  store i32 %inc19, ptr %n6, align 4
  br label %for.cond7, !llvm.loop !9

for.end20:                                        ; preds = %for.cond7
  %13 = load i32, ptr %m, align 4
  %conv = sext i32 %13 to i64
  %add = add nsw i64 4774735094265366601, %conv
  call void @set_a_values(i64 noundef %add) #5
  %14 = load i32, ptr %model, align 4
  %call21 = call zeroext i8 @__atomic_load_1(ptr noundef @a8, i32 noundef %14) #5
  %conv22 = zext i8 %call21 to i32
  %15 = load i32, ptr %m, align 4
  %conv23 = sext i32 %15 to i64
  %add24 = add nsw i64 4774735094265366601, %conv23
  %conv25 = trunc i64 %add24 to i8
  %conv26 = zext i8 %conv25 to i32
  %cmp27 = icmp ne i32 %conv22, %conv26
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end20
  call void @abort() #6
  unreachable

if.end30:                                         ; preds = %for.end20
  %16 = load i32, ptr %model, align 4
  %call31 = call zeroext i16 @__atomic_load_2(ptr noundef @a16, i32 noundef %16) #5
  %conv32 = zext i16 %call31 to i32
  %17 = load i32, ptr %m, align 4
  %conv33 = sext i32 %17 to i64
  %add34 = add nsw i64 4774735094265366601, %conv33
  %conv35 = trunc i64 %add34 to i16
  %conv36 = zext i16 %conv35 to i32
  %cmp37 = icmp ne i32 %conv32, %conv36
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end30
  call void @abort() #6
  unreachable

if.end40:                                         ; preds = %if.end30
  %18 = load i32, ptr %model, align 4
  %call41 = call i32 @__atomic_load_4(ptr noundef @a32, i32 noundef %18) #5
  %19 = load i32, ptr %m, align 4
  %conv42 = sext i32 %19 to i64
  %add43 = add nsw i64 4774735094265366601, %conv42
  %conv44 = trunc i64 %add43 to i32
  %cmp45 = icmp ne i32 %call41, %conv44
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end40
  call void @abort() #6
  unreachable

if.end48:                                         ; preds = %if.end40
  %20 = load i32, ptr %model, align 4
  %call49 = call i64 @__atomic_load_8(ptr noundef @a64, i32 noundef %20) #5
  %21 = load i32, ptr %m, align 4
  %conv50 = sext i32 %21 to i64
  %add51 = add nsw i64 4774735094265366601, %conv50
  %cmp52 = icmp ne i64 %call49, %add51
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end48
  call void @abort() #6
  unreachable

if.end55:                                         ; preds = %if.end48
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %22 = load i32, ptr %m, align 4
  %inc57 = add nsw i32 %22, 1
  store i32 %inc57, ptr %m, align 4
  br label %for.cond, !llvm.loop !10

for.end58:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #1

declare dso_local void @__atomic_load(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

declare dso_local zeroext i8 @__atomic_load_1(ptr noundef, i32 noundef) #2

declare dso_local zeroext i16 @__atomic_load_2(ptr noundef, i32 noundef) #2

declare dso_local i32 @__atomic_load_4(ptr noundef, i32 noundef) #2

declare dso_local i64 @__atomic_load_8(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define dso_local void @test_stores() #0 {
entry:
  %m = alloca i32, align 4
  %model = alloca i32, align 4
  %n = alloca i32, align 4
  %dst = alloca [32 x i8], align 16
  %n6 = alloca i32, align 4
  %dst10 = alloca [32 x i8], align 16
  store i32 0, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc61, %entry
  %0 = load i32, ptr %m, align 4
  %cmp = icmp ult i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end63

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %m, align 4
  %arrayidx = getelementptr inbounds [3 x i32], ptr @test_stores.atomic_store_models, i32 0, i32 %1
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %model, align 4
  store i32 1, ptr %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %n, align 4
  %cmp2 = icmp ule i32 %3, 32
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 0
  %5 = load i32, ptr %model, align 4
  call void @__atomic_store(i32 noundef %4, ptr noundef %arraydecay, ptr noundef @data, i32 noundef %5) #5
  %arraydecay4 = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 0
  %6 = load i32, ptr %n, align 4
  %call = call i32 @memcmp(ptr noundef @data, ptr noundef %arraydecay4, i32 noundef %6) #5
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1
  store i32 1, ptr %n6, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc18, %for.end
  %8 = load i32, ptr %n6, align 4
  %cmp8 = icmp ult i32 %8, 32
  br i1 %cmp8, label %for.body9, label %for.end20

for.body9:                                        ; preds = %for.cond7
  %9 = load i32, ptr %n6, align 4
  %arraydecay11 = getelementptr inbounds [32 x i8], ptr %dst10, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay11, i32 1
  %10 = load i32, ptr %model, align 4
  call void @__atomic_store(i32 noundef %9, ptr noundef %add.ptr, ptr noundef getelementptr inbounds (i8, ptr @data, i32 1), i32 noundef %10) #5
  %arraydecay12 = getelementptr inbounds [32 x i8], ptr %dst10, i32 0, i32 0
  %add.ptr13 = getelementptr inbounds i8, ptr %arraydecay12, i32 1
  %11 = load i32, ptr %n6, align 4
  %call14 = call i32 @memcmp(ptr noundef getelementptr inbounds (i8, ptr @data, i32 1), ptr noundef %add.ptr13, i32 noundef %11) #5
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body9
  call void @abort() #6
  unreachable

if.end17:                                         ; preds = %for.body9
  br label %for.inc18

for.inc18:                                        ; preds = %if.end17
  %12 = load i32, ptr %n6, align 4
  %inc19 = add nsw i32 %12, 1
  store i32 %inc19, ptr %n6, align 4
  br label %for.cond7, !llvm.loop !12

for.end20:                                        ; preds = %for.cond7
  %13 = load i32, ptr %m, align 4
  %conv = sext i32 %13 to i64
  %add = add nsw i64 4774735094265366601, %conv
  %conv21 = trunc i64 %add to i8
  %14 = load i32, ptr %model, align 4
  call void @__atomic_store_1(ptr noundef @a8, i8 noundef zeroext %conv21, i32 noundef %14) #5
  %15 = load i8, ptr @a8, align 1
  %conv22 = zext i8 %15 to i32
  %16 = load i32, ptr %m, align 4
  %conv23 = sext i32 %16 to i64
  %add24 = add nsw i64 4774735094265366601, %conv23
  %conv25 = trunc i64 %add24 to i8
  %conv26 = zext i8 %conv25 to i32
  %cmp27 = icmp ne i32 %conv22, %conv26
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end20
  call void @abort() #6
  unreachable

if.end30:                                         ; preds = %for.end20
  %17 = load i32, ptr %m, align 4
  %conv31 = sext i32 %17 to i64
  %add32 = add nsw i64 4774735094265366601, %conv31
  %conv33 = trunc i64 %add32 to i16
  %18 = load i32, ptr %model, align 4
  call void @__atomic_store_2(ptr noundef @a16, i16 noundef zeroext %conv33, i32 noundef %18) #5
  %19 = load i16, ptr @a16, align 2
  %conv34 = zext i16 %19 to i32
  %20 = load i32, ptr %m, align 4
  %conv35 = sext i32 %20 to i64
  %add36 = add nsw i64 4774735094265366601, %conv35
  %conv37 = trunc i64 %add36 to i16
  %conv38 = zext i16 %conv37 to i32
  %cmp39 = icmp ne i32 %conv34, %conv38
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end30
  call void @abort() #6
  unreachable

if.end42:                                         ; preds = %if.end30
  %21 = load i32, ptr %m, align 4
  %conv43 = sext i32 %21 to i64
  %add44 = add nsw i64 4774735094265366601, %conv43
  %conv45 = trunc i64 %add44 to i32
  %22 = load i32, ptr %model, align 4
  call void @__atomic_store_4(ptr noundef @a32, i32 noundef %conv45, i32 noundef %22) #5
  %23 = load i32, ptr @a32, align 4
  %24 = load i32, ptr %m, align 4
  %conv46 = sext i32 %24 to i64
  %add47 = add nsw i64 4774735094265366601, %conv46
  %conv48 = trunc i64 %add47 to i32
  %cmp49 = icmp ne i32 %23, %conv48
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end42
  call void @abort() #6
  unreachable

if.end52:                                         ; preds = %if.end42
  %25 = load i32, ptr %m, align 4
  %conv53 = sext i32 %25 to i64
  %add54 = add nsw i64 4774735094265366601, %conv53
  %26 = load i32, ptr %model, align 4
  call void @__atomic_store_8(ptr noundef @a64, i64 noundef %add54, i32 noundef %26) #5
  %27 = load i64, ptr @a64, align 8
  %28 = load i32, ptr %m, align 4
  %conv55 = sext i32 %28 to i64
  %add56 = add nsw i64 4774735094265366601, %conv55
  %cmp57 = icmp ne i64 %27, %add56
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end52
  call void @abort() #6
  unreachable

if.end60:                                         ; preds = %if.end52
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %29 = load i32, ptr %m, align 4
  %inc62 = add nsw i32 %29, 1
  store i32 %inc62, ptr %m, align 4
  br label %for.cond, !llvm.loop !13

for.end63:                                        ; preds = %for.cond
  ret void
}

declare dso_local void @__atomic_store(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare dso_local void @__atomic_store_1(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare dso_local void @__atomic_store_2(ptr noundef, i16 noundef zeroext, i32 noundef) #2

declare dso_local void @__atomic_store_4(ptr noundef, i32 noundef, i32 noundef) #2

declare dso_local void @__atomic_store_8(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define dso_local void @test_exchanges() #0 {
entry:
  %m = alloca i32, align 4
  %model = alloca i32, align 4
  %n = alloca i32, align 4
  %dst = alloca [32 x i8], align 16
  %old = alloca [32 x i8], align 16
  %i = alloca i32, align 4
  %i9 = alloca i32, align 4
  %n30 = alloca i32, align 4
  %dst35 = alloca [32 x i8], align 16
  %old36 = alloca [32 x i8], align 16
  %i37 = alloca i32, align 4
  %i51 = alloca i32, align 4
  call void @set_a_values(i64 noundef 4774735094265366601) #5
  store i32 0, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc125, %entry
  %0 = load i32, ptr %m, align 4
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end127

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %m, align 4
  %arrayidx = getelementptr inbounds [5 x i32], ptr @test_exchanges.atomic_exchange_models, i32 0, i32 %1
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %model, align 4
  store i32 1, ptr %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc27, %for.body
  %3 = load i32, ptr %n, align 4
  %cmp2 = icmp ule i32 %3, 32
  br i1 %cmp2, label %for.body3, label %for.end29

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %i, align 4
  %cmp5 = icmp ult i32 %4, 32
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %m, align 4
  %add = add nsw i32 %5, %6
  %conv = trunc i32 %add to i8
  %7 = load i32, ptr %i, align 4
  %arrayidx7 = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 %7
  store i8 %conv, ptr %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond4, !llvm.loop !14

for.end:                                          ; preds = %for.cond4
  %9 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %old, i32 0, i32 0
  %10 = load i32, ptr %model, align 4
  call void @__atomic_exchange(i32 noundef %9, ptr noundef %arraydecay, ptr noundef @data, ptr noundef %arraydecay8, i32 noundef %10) #5
  store i32 0, ptr %i9, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc24, %for.end
  %11 = load i32, ptr %i9, align 4
  %12 = load i32, ptr %n, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body13, label %for.end26

for.body13:                                       ; preds = %for.cond10
  %13 = load i32, ptr %i9, align 4
  %arrayidx14 = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 %13
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %15 = load i32, ptr %i9, align 4
  %add16 = add nsw i32 16, %15
  %cmp17 = icmp ne i32 %conv15, %add16
  br i1 %cmp17, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body13
  %16 = load i32, ptr %i9, align 4
  %arrayidx19 = getelementptr inbounds [32 x i8], ptr %old, i32 0, i32 %16
  %17 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %18 = load i32, ptr %i9, align 4
  %19 = load i32, ptr %m, align 4
  %add21 = add nsw i32 %18, %19
  %cmp22 = icmp ne i32 %conv20, %add21
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body13
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc24

for.inc24:                                        ; preds = %if.end
  %20 = load i32, ptr %i9, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, ptr %i9, align 4
  br label %for.cond10, !llvm.loop !15

for.end26:                                        ; preds = %for.cond10
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %21 = load i32, ptr %n, align 4
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, ptr %n, align 4
  br label %for.cond1, !llvm.loop !16

for.end29:                                        ; preds = %for.cond1
  store i32 1, ptr %n30, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc73, %for.end29
  %22 = load i32, ptr %n30, align 4
  %cmp32 = icmp ult i32 %22, 32
  br i1 %cmp32, label %for.body34, label %for.end75

for.body34:                                       ; preds = %for.cond31
  store i32 1, ptr %i37, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc45, %for.body34
  %23 = load i32, ptr %i37, align 4
  %cmp39 = icmp ult i32 %23, 32
  br i1 %cmp39, label %for.body41, label %for.end47

for.body41:                                       ; preds = %for.cond38
  %24 = load i32, ptr %i37, align 4
  %sub = sub nsw i32 %24, 1
  %25 = load i32, ptr %m, align 4
  %add42 = add nsw i32 %sub, %25
  %conv43 = trunc i32 %add42 to i8
  %26 = load i32, ptr %i37, align 4
  %arrayidx44 = getelementptr inbounds [32 x i8], ptr %dst35, i32 0, i32 %26
  store i8 %conv43, ptr %arrayidx44, align 1
  br label %for.inc45

for.inc45:                                        ; preds = %for.body41
  %27 = load i32, ptr %i37, align 4
  %inc46 = add nsw i32 %27, 1
  store i32 %inc46, ptr %i37, align 4
  br label %for.cond38, !llvm.loop !17

for.end47:                                        ; preds = %for.cond38
  %28 = load i32, ptr %n30, align 4
  %arraydecay48 = getelementptr inbounds [32 x i8], ptr %dst35, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay48, i32 1
  %arraydecay49 = getelementptr inbounds [32 x i8], ptr %old36, i32 0, i32 0
  %add.ptr50 = getelementptr inbounds i8, ptr %arraydecay49, i32 1
  %29 = load i32, ptr %model, align 4
  call void @__atomic_exchange(i32 noundef %28, ptr noundef %add.ptr, ptr noundef getelementptr inbounds (i8, ptr @data, i32 1), ptr noundef %add.ptr50, i32 noundef %29) #5
  store i32 1, ptr %i51, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc70, %for.end47
  %30 = load i32, ptr %i51, align 4
  %31 = load i32, ptr %n30, align 4
  %cmp53 = icmp slt i32 %30, %31
  br i1 %cmp53, label %for.body55, label %for.end72

for.body55:                                       ; preds = %for.cond52
  %32 = load i32, ptr %i51, align 4
  %arrayidx56 = getelementptr inbounds [32 x i8], ptr %dst35, i32 0, i32 %32
  %33 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %33 to i32
  %34 = load i32, ptr %i51, align 4
  %add58 = add nsw i32 16, %34
  %cmp59 = icmp ne i32 %conv57, %add58
  br i1 %cmp59, label %if.then68, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %for.body55
  %35 = load i32, ptr %i51, align 4
  %arrayidx62 = getelementptr inbounds [32 x i8], ptr %old36, i32 0, i32 %35
  %36 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %36 to i32
  %37 = load i32, ptr %i51, align 4
  %sub64 = sub nsw i32 %37, 1
  %38 = load i32, ptr %m, align 4
  %add65 = add nsw i32 %sub64, %38
  %cmp66 = icmp ne i32 %conv63, %add65
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %lor.lhs.false61, %for.body55
  call void @abort() #6
  unreachable

if.end69:                                         ; preds = %lor.lhs.false61
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %39 = load i32, ptr %i51, align 4
  %inc71 = add nsw i32 %39, 1
  store i32 %inc71, ptr %i51, align 4
  br label %for.cond52, !llvm.loop !18

for.end72:                                        ; preds = %for.cond52
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %40 = load i32, ptr %n30, align 4
  %inc74 = add nsw i32 %40, 1
  store i32 %inc74, ptr %n30, align 4
  br label %for.cond31, !llvm.loop !19

for.end75:                                        ; preds = %for.cond31
  %41 = load i32, ptr %m, align 4
  %conv76 = sext i32 %41 to i64
  %add77 = add nsw i64 4774735094265366601, %conv76
  %add78 = add nsw i64 %add77, 1
  %conv79 = trunc i64 %add78 to i8
  %42 = load i32, ptr %model, align 4
  %call = call zeroext i8 @__atomic_exchange_1(ptr noundef @a8, i8 noundef zeroext %conv79, i32 noundef %42) #5
  %conv80 = zext i8 %call to i32
  %43 = load i32, ptr %m, align 4
  %conv81 = sext i32 %43 to i64
  %add82 = add nsw i64 4774735094265366601, %conv81
  %conv83 = trunc i64 %add82 to i8
  %conv84 = zext i8 %conv83 to i32
  %cmp85 = icmp ne i32 %conv80, %conv84
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %for.end75
  call void @abort() #6
  unreachable

if.end88:                                         ; preds = %for.end75
  %44 = load i32, ptr %m, align 4
  %conv89 = sext i32 %44 to i64
  %add90 = add nsw i64 4774735094265366601, %conv89
  %add91 = add nsw i64 %add90, 1
  %conv92 = trunc i64 %add91 to i16
  %45 = load i32, ptr %model, align 4
  %call93 = call zeroext i16 @__atomic_exchange_2(ptr noundef @a16, i16 noundef zeroext %conv92, i32 noundef %45) #5
  %conv94 = zext i16 %call93 to i32
  %46 = load i32, ptr %m, align 4
  %conv95 = sext i32 %46 to i64
  %add96 = add nsw i64 4774735094265366601, %conv95
  %conv97 = trunc i64 %add96 to i16
  %conv98 = zext i16 %conv97 to i32
  %cmp99 = icmp ne i32 %conv94, %conv98
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end88
  call void @abort() #6
  unreachable

if.end102:                                        ; preds = %if.end88
  %47 = load i32, ptr %m, align 4
  %conv103 = sext i32 %47 to i64
  %add104 = add nsw i64 4774735094265366601, %conv103
  %add105 = add nsw i64 %add104, 1
  %conv106 = trunc i64 %add105 to i32
  %48 = load i32, ptr %model, align 4
  %call107 = call i32 @__atomic_exchange_4(ptr noundef @a32, i32 noundef %conv106, i32 noundef %48) #5
  %49 = load i32, ptr %m, align 4
  %conv108 = sext i32 %49 to i64
  %add109 = add nsw i64 4774735094265366601, %conv108
  %conv110 = trunc i64 %add109 to i32
  %cmp111 = icmp ne i32 %call107, %conv110
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end102
  call void @abort() #6
  unreachable

if.end114:                                        ; preds = %if.end102
  %50 = load i32, ptr %m, align 4
  %conv115 = sext i32 %50 to i64
  %add116 = add nsw i64 4774735094265366601, %conv115
  %add117 = add nsw i64 %add116, 1
  %51 = load i32, ptr %model, align 4
  %call118 = call i64 @__atomic_exchange_8(ptr noundef @a64, i64 noundef %add117, i32 noundef %51) #5
  %52 = load i32, ptr %m, align 4
  %conv119 = sext i32 %52 to i64
  %add120 = add nsw i64 4774735094265366601, %conv119
  %cmp121 = icmp ne i64 %call118, %add120
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end114
  call void @abort() #6
  unreachable

if.end124:                                        ; preds = %if.end114
  br label %for.inc125

for.inc125:                                       ; preds = %if.end124
  %53 = load i32, ptr %m, align 4
  %inc126 = add nsw i32 %53, 1
  store i32 %inc126, ptr %m, align 4
  br label %for.cond, !llvm.loop !20

for.end127:                                       ; preds = %for.cond
  ret void
}

declare dso_local void @__atomic_exchange(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare dso_local zeroext i8 @__atomic_exchange_1(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare dso_local zeroext i16 @__atomic_exchange_2(ptr noundef, i16 noundef zeroext, i32 noundef) #2

declare dso_local i32 @__atomic_exchange_4(ptr noundef, i32 noundef, i32 noundef) #2

declare dso_local i64 @__atomic_exchange_8(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define dso_local void @test_compare_exchanges() #0 {
entry:
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %m_succ = alloca i32, align 4
  %m_fail = alloca i32, align 4
  %n = alloca i32, align 4
  %dst = alloca [32 x i8], align 16
  %exp = alloca [32 x i8], align 16
  %n25 = alloca i32, align 4
  %dst29 = alloca [32 x i8], align 16
  %exp30 = alloca [32 x i8], align 16
  store i32 0, ptr %m1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc184, %entry
  %0 = load i32, ptr %m1, align 4
  %cmp = icmp ult i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end186

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %m2, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc181, %for.body
  %1 = load i32, ptr %m2, align 4
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end183

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %m1, align 4
  %arrayidx = getelementptr inbounds [6 x i32], ptr @test_compare_exchanges.atomic_compare_exchange_models, i32 0, i32 %2
  %3 = load i32, ptr %arrayidx, align 4
  store i32 %3, ptr %m_succ, align 4
  %4 = load i32, ptr %m2, align 4
  %arrayidx4 = getelementptr inbounds [6 x i32], ptr @test_compare_exchanges.atomic_compare_exchange_models, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx4, align 4
  store i32 %5, ptr %m_fail, align 4
  store i32 1, ptr %n, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %n, align 4
  %cmp6 = icmp ule i32 %6, 32
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  call void @llvm.memset.p0.i32(ptr align 16 %dst, i8 0, i32 32, i1 false)
  call void @llvm.memset.p0.i32(ptr align 16 %exp, i8 0, i32 32, i1 false)
  %7 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %exp, i32 0, i32 0
  %8 = load i32, ptr %m_succ, align 4
  %9 = load i32, ptr %m_fail, align 4
  %call = call i32 @__atomic_compare_exchange(i32 noundef %7, ptr noundef %arraydecay, ptr noundef %arraydecay8, ptr noundef @data, i32 noundef %8, i32 noundef %9) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body7
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body7
  %arraydecay9 = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 0
  %10 = load i32, ptr %n, align 4
  %call10 = call i32 @memcmp(ptr noundef %arraydecay9, ptr noundef @data, i32 noundef %10) #5
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call void @abort() #6
  unreachable

if.end13:                                         ; preds = %if.end
  %11 = load i32, ptr %n, align 4
  %arraydecay14 = getelementptr inbounds [32 x i8], ptr %dst, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [32 x i8], ptr %exp, i32 0, i32 0
  %12 = load i32, ptr %m_succ, align 4
  %13 = load i32, ptr %m_fail, align 4
  %call16 = call i32 @__atomic_compare_exchange(i32 noundef %11, ptr noundef %arraydecay14, ptr noundef %arraydecay15, ptr noundef @data, i32 noundef %12, i32 noundef %13) #5
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @abort() #6
  unreachable

if.end19:                                         ; preds = %if.end13
  %arraydecay20 = getelementptr inbounds [32 x i8], ptr %exp, i32 0, i32 0
  %14 = load i32, ptr %n, align 4
  %call21 = call i32 @memcmp(ptr noundef %arraydecay20, ptr noundef @data, i32 noundef %14) #5
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @abort() #6
  unreachable

if.end24:                                         ; preds = %if.end19
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %15 = load i32, ptr %n, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond5, !llvm.loop !21

for.end:                                          ; preds = %for.cond5
  store i32 1, ptr %n25, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc58, %for.end
  %16 = load i32, ptr %n25, align 4
  %cmp27 = icmp ult i32 %16, 32
  br i1 %cmp27, label %for.body28, label %for.end60

for.body28:                                       ; preds = %for.cond26
  call void @llvm.memset.p0.i32(ptr align 16 %dst29, i8 0, i32 32, i1 false)
  call void @llvm.memset.p0.i32(ptr align 16 %exp30, i8 0, i32 32, i1 false)
  %17 = load i32, ptr %n25, align 4
  %arraydecay31 = getelementptr inbounds [32 x i8], ptr %dst29, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay31, i32 1
  %arraydecay32 = getelementptr inbounds [32 x i8], ptr %exp30, i32 0, i32 0
  %add.ptr33 = getelementptr inbounds i8, ptr %arraydecay32, i32 1
  %18 = load i32, ptr %m_succ, align 4
  %19 = load i32, ptr %m_fail, align 4
  %call34 = call i32 @__atomic_compare_exchange(i32 noundef %17, ptr noundef %add.ptr, ptr noundef %add.ptr33, ptr noundef getelementptr inbounds (i8, ptr @data, i32 1), i32 noundef %18, i32 noundef %19) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %for.body28
  call void @abort() #6
  unreachable

if.end37:                                         ; preds = %for.body28
  %arraydecay38 = getelementptr inbounds [32 x i8], ptr %dst29, i32 0, i32 0
  %add.ptr39 = getelementptr inbounds i8, ptr %arraydecay38, i32 1
  %20 = load i32, ptr %n25, align 4
  %call40 = call i32 @memcmp(ptr noundef %add.ptr39, ptr noundef getelementptr inbounds (i8, ptr @data, i32 1), i32 noundef %20) #5
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end37
  call void @abort() #6
  unreachable

if.end43:                                         ; preds = %if.end37
  %21 = load i32, ptr %n25, align 4
  %arraydecay44 = getelementptr inbounds [32 x i8], ptr %dst29, i32 0, i32 0
  %add.ptr45 = getelementptr inbounds i8, ptr %arraydecay44, i32 1
  %arraydecay46 = getelementptr inbounds [32 x i8], ptr %exp30, i32 0, i32 0
  %add.ptr47 = getelementptr inbounds i8, ptr %arraydecay46, i32 1
  %22 = load i32, ptr %m_succ, align 4
  %23 = load i32, ptr %m_fail, align 4
  %call48 = call i32 @__atomic_compare_exchange(i32 noundef %21, ptr noundef %add.ptr45, ptr noundef %add.ptr47, ptr noundef getelementptr inbounds (i8, ptr @data, i32 1), i32 noundef %22, i32 noundef %23) #5
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end43
  call void @abort() #6
  unreachable

if.end51:                                         ; preds = %if.end43
  %arraydecay52 = getelementptr inbounds [32 x i8], ptr %exp30, i32 0, i32 0
  %add.ptr53 = getelementptr inbounds i8, ptr %arraydecay52, i32 1
  %24 = load i32, ptr %n25, align 4
  %call54 = call i32 @memcmp(ptr noundef %add.ptr53, ptr noundef getelementptr inbounds (i8, ptr @data, i32 1), i32 noundef %24) #5
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end51
  call void @abort() #6
  unreachable

if.end57:                                         ; preds = %if.end51
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %25 = load i32, ptr %n25, align 4
  %inc59 = add nsw i32 %25, 1
  store i32 %inc59, ptr %n25, align 4
  br label %for.cond26, !llvm.loop !22

for.end60:                                        ; preds = %for.cond26
  call void @set_a_values(i64 noundef 72340172838076673) #5
  call void @set_b_values(i64 noundef 144680345676153346) #5
  %26 = load i32, ptr %m1, align 4
  %conv = sext i32 %26 to i64
  %add = add nsw i64 4774735094265366601, %conv
  %conv61 = trunc i64 %add to i8
  %27 = load i32, ptr %m_succ, align 4
  %28 = load i32, ptr %m_fail, align 4
  %call62 = call zeroext i1 @__atomic_compare_exchange_1(ptr noundef @a8, ptr noundef @b8, i8 noundef zeroext %conv61, i32 noundef %27, i32 noundef %28) #5
  br i1 %call62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %for.end60
  call void @abort() #6
  unreachable

if.end64:                                         ; preds = %for.end60
  %29 = load i8, ptr @a8, align 1
  %conv65 = zext i8 %29 to i32
  %cmp66 = icmp ne i32 %conv65, 1
  br i1 %cmp66, label %if.then71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end64
  %30 = load i8, ptr @b8, align 1
  %conv68 = zext i8 %30 to i32
  %cmp69 = icmp ne i32 %conv68, 1
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %lor.lhs.false, %if.end64
  call void @abort() #6
  unreachable

if.end72:                                         ; preds = %lor.lhs.false
  %31 = load i32, ptr %m1, align 4
  %conv73 = sext i32 %31 to i64
  %add74 = add nsw i64 4774735094265366601, %conv73
  %conv75 = trunc i64 %add74 to i8
  %32 = load i32, ptr %m_succ, align 4
  %33 = load i32, ptr %m_fail, align 4
  %call76 = call zeroext i1 @__atomic_compare_exchange_1(ptr noundef @a8, ptr noundef @b8, i8 noundef zeroext %conv75, i32 noundef %32, i32 noundef %33) #5
  br i1 %call76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end72
  call void @abort() #6
  unreachable

if.end78:                                         ; preds = %if.end72
  %34 = load i8, ptr @a8, align 1
  %conv79 = zext i8 %34 to i32
  %35 = load i32, ptr %m1, align 4
  %conv80 = sext i32 %35 to i64
  %add81 = add nsw i64 4774735094265366601, %conv80
  %conv82 = trunc i64 %add81 to i8
  %conv83 = zext i8 %conv82 to i32
  %cmp84 = icmp ne i32 %conv79, %conv83
  br i1 %cmp84, label %if.then90, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.end78
  %36 = load i8, ptr @b8, align 1
  %conv87 = zext i8 %36 to i32
  %cmp88 = icmp ne i32 %conv87, 1
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %lor.lhs.false86, %if.end78
  call void @abort() #6
  unreachable

if.end91:                                         ; preds = %lor.lhs.false86
  %37 = load i32, ptr %m1, align 4
  %conv92 = sext i32 %37 to i64
  %add93 = add nsw i64 4774735094265366601, %conv92
  %conv94 = trunc i64 %add93 to i16
  %38 = load i32, ptr %m_succ, align 4
  %39 = load i32, ptr %m_fail, align 4
  %call95 = call zeroext i1 @__atomic_compare_exchange_2(ptr noundef @a16, ptr noundef @b16, i16 noundef zeroext %conv94, i32 noundef %38, i32 noundef %39) #5
  br i1 %call95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end91
  call void @abort() #6
  unreachable

if.end97:                                         ; preds = %if.end91
  %40 = load i16, ptr @a16, align 2
  %conv98 = zext i16 %40 to i32
  %cmp99 = icmp ne i32 %conv98, 257
  br i1 %cmp99, label %if.then105, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %if.end97
  %41 = load i16, ptr @b16, align 2
  %conv102 = zext i16 %41 to i32
  %cmp103 = icmp ne i32 %conv102, 257
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %lor.lhs.false101, %if.end97
  call void @abort() #6
  unreachable

if.end106:                                        ; preds = %lor.lhs.false101
  %42 = load i32, ptr %m1, align 4
  %conv107 = sext i32 %42 to i64
  %add108 = add nsw i64 4774735094265366601, %conv107
  %conv109 = trunc i64 %add108 to i16
  %43 = load i32, ptr %m_succ, align 4
  %44 = load i32, ptr %m_fail, align 4
  %call110 = call zeroext i1 @__atomic_compare_exchange_2(ptr noundef @a16, ptr noundef @b16, i16 noundef zeroext %conv109, i32 noundef %43, i32 noundef %44) #5
  br i1 %call110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end106
  call void @abort() #6
  unreachable

if.end112:                                        ; preds = %if.end106
  %45 = load i16, ptr @a16, align 2
  %conv113 = zext i16 %45 to i32
  %46 = load i32, ptr %m1, align 4
  %conv114 = sext i32 %46 to i64
  %add115 = add nsw i64 4774735094265366601, %conv114
  %conv116 = trunc i64 %add115 to i16
  %conv117 = zext i16 %conv116 to i32
  %cmp118 = icmp ne i32 %conv113, %conv117
  br i1 %cmp118, label %if.then124, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.end112
  %47 = load i16, ptr @b16, align 2
  %conv121 = zext i16 %47 to i32
  %cmp122 = icmp ne i32 %conv121, 257
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %lor.lhs.false120, %if.end112
  call void @abort() #6
  unreachable

if.end125:                                        ; preds = %lor.lhs.false120
  %48 = load i32, ptr %m1, align 4
  %conv126 = sext i32 %48 to i64
  %add127 = add nsw i64 4774735094265366601, %conv126
  %conv128 = trunc i64 %add127 to i32
  %49 = load i32, ptr %m_succ, align 4
  %50 = load i32, ptr %m_fail, align 4
  %call129 = call zeroext i1 @__atomic_compare_exchange_4(ptr noundef @a32, ptr noundef @b32, i32 noundef %conv128, i32 noundef %49, i32 noundef %50) #5
  br i1 %call129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.end125
  call void @abort() #6
  unreachable

if.end131:                                        ; preds = %if.end125
  %51 = load i32, ptr @a32, align 4
  %cmp132 = icmp ne i32 %51, 16843009
  br i1 %cmp132, label %if.then137, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %if.end131
  %52 = load i32, ptr @b32, align 4
  %cmp135 = icmp ne i32 %52, 16843009
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %lor.lhs.false134, %if.end131
  call void @abort() #6
  unreachable

if.end138:                                        ; preds = %lor.lhs.false134
  %53 = load i32, ptr %m1, align 4
  %conv139 = sext i32 %53 to i64
  %add140 = add nsw i64 4774735094265366601, %conv139
  %conv141 = trunc i64 %add140 to i32
  %54 = load i32, ptr %m_succ, align 4
  %55 = load i32, ptr %m_fail, align 4
  %call142 = call zeroext i1 @__atomic_compare_exchange_4(ptr noundef @a32, ptr noundef @b32, i32 noundef %conv141, i32 noundef %54, i32 noundef %55) #5
  br i1 %call142, label %if.end144, label %if.then143

if.then143:                                       ; preds = %if.end138
  call void @abort() #6
  unreachable

if.end144:                                        ; preds = %if.end138
  %56 = load i32, ptr @a32, align 4
  %57 = load i32, ptr %m1, align 4
  %conv145 = sext i32 %57 to i64
  %add146 = add nsw i64 4774735094265366601, %conv145
  %conv147 = trunc i64 %add146 to i32
  %cmp148 = icmp ne i32 %56, %conv147
  br i1 %cmp148, label %if.then153, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %if.end144
  %58 = load i32, ptr @b32, align 4
  %cmp151 = icmp ne i32 %58, 16843009
  br i1 %cmp151, label %if.then153, label %if.end154

if.then153:                                       ; preds = %lor.lhs.false150, %if.end144
  call void @abort() #6
  unreachable

if.end154:                                        ; preds = %lor.lhs.false150
  %59 = load i32, ptr %m1, align 4
  %conv155 = sext i32 %59 to i64
  %add156 = add nsw i64 4774735094265366601, %conv155
  %60 = load i32, ptr %m_succ, align 4
  %61 = load i32, ptr %m_fail, align 4
  %call157 = call zeroext i1 @__atomic_compare_exchange_8(ptr noundef @a64, ptr noundef @b64, i64 noundef %add156, i32 noundef %60, i32 noundef %61) #5
  br i1 %call157, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.end154
  call void @abort() #6
  unreachable

if.end159:                                        ; preds = %if.end154
  %62 = load i64, ptr @a64, align 8
  %cmp160 = icmp ne i64 %62, 72340172838076673
  br i1 %cmp160, label %if.then165, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %if.end159
  %63 = load i64, ptr @b64, align 8
  %cmp163 = icmp ne i64 %63, 72340172838076673
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %lor.lhs.false162, %if.end159
  call void @abort() #6
  unreachable

if.end166:                                        ; preds = %lor.lhs.false162
  %64 = load i32, ptr %m1, align 4
  %conv167 = sext i32 %64 to i64
  %add168 = add nsw i64 4774735094265366601, %conv167
  %65 = load i32, ptr %m_succ, align 4
  %66 = load i32, ptr %m_fail, align 4
  %call169 = call zeroext i1 @__atomic_compare_exchange_8(ptr noundef @a64, ptr noundef @b64, i64 noundef %add168, i32 noundef %65, i32 noundef %66) #5
  br i1 %call169, label %if.end171, label %if.then170

if.then170:                                       ; preds = %if.end166
  call void @abort() #6
  unreachable

if.end171:                                        ; preds = %if.end166
  %67 = load i64, ptr @a64, align 8
  %68 = load i32, ptr %m1, align 4
  %conv172 = sext i32 %68 to i64
  %add173 = add nsw i64 4774735094265366601, %conv172
  %cmp174 = icmp ne i64 %67, %add173
  br i1 %cmp174, label %if.then179, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %if.end171
  %69 = load i64, ptr @b64, align 8
  %cmp177 = icmp ne i64 %69, 72340172838076673
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %lor.lhs.false176, %if.end171
  call void @abort() #6
  unreachable

if.end180:                                        ; preds = %lor.lhs.false176
  br label %for.inc181

for.inc181:                                       ; preds = %if.end180
  %70 = load i32, ptr %m2, align 4
  %inc182 = add nsw i32 %70, 1
  store i32 %inc182, ptr %m2, align 4
  br label %for.cond1, !llvm.loop !23

for.end183:                                       ; preds = %for.cond1
  br label %for.inc184

for.inc184:                                       ; preds = %for.end183
  %71 = load i32, ptr %m1, align 4
  %inc185 = add nsw i32 %71, 1
  store i32 %inc185, ptr %m1, align 4
  br label %for.cond, !llvm.loop !24

for.end186:                                       ; preds = %for.cond
  ret void
}

declare dso_local i32 @__atomic_compare_exchange(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare dso_local zeroext i1 @__atomic_compare_exchange_1(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) #2

declare dso_local zeroext i1 @__atomic_compare_exchange_2(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) #2

declare dso_local zeroext i1 @__atomic_compare_exchange_4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local zeroext i1 @__atomic_compare_exchange_8(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define dso_local void @test_fetch_op() #0 {
entry:
  %m = alloca i32, align 4
  %model = alloca i32, align 4
  store i32 0, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %m, align 4
  %cmp = icmp ult i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %m, align 4
  %arrayidx = getelementptr inbounds [6 x i32], ptr @test_fetch_op.atomic_fetch_models, i32 0, i32 %1
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %model, align 4
  %3 = load i32, ptr %m, align 4
  %conv = sext i32 %3 to i64
  %add = add nsw i64 4774735094265366601, %conv
  call void @set_a_values(i64 noundef %add) #5
  call void @set_b_values(i64 noundef 0) #5
  %4 = load i32, ptr %model, align 4
  %call = call zeroext i8 @__atomic_fetch_add_1(ptr noundef @a8, i8 noundef zeroext 1, i32 noundef %4) #5
  store i8 %call, ptr @b8, align 1
  %5 = load i8, ptr @b8, align 1
  %conv1 = zext i8 %5 to i32
  %6 = load i32, ptr %m, align 4
  %conv2 = sext i32 %6 to i64
  %add3 = add nsw i64 4774735094265366601, %conv2
  %conv4 = trunc i64 %add3 to i8
  %conv5 = zext i8 %conv4 to i32
  %cmp6 = icmp ne i32 %conv1, %conv5
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i8, ptr @a8, align 1
  %conv8 = zext i8 %7 to i32
  %8 = load i32, ptr %m, align 4
  %conv9 = sext i32 %8 to i64
  %add10 = add nsw i64 4774735094265366601, %conv9
  %add11 = add nsw i64 %add10, 72340172838076673
  %conv12 = trunc i64 %add11 to i8
  %conv13 = zext i8 %conv12 to i32
  %cmp14 = icmp ne i32 %conv8, %conv13
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i32, ptr %model, align 4
  %call16 = call zeroext i16 @__atomic_fetch_add_2(ptr noundef @a16, i16 noundef zeroext 257, i32 noundef %9) #5
  store i16 %call16, ptr @b16, align 2
  %10 = load i16, ptr @b16, align 2
  %conv17 = zext i16 %10 to i32
  %11 = load i32, ptr %m, align 4
  %conv18 = sext i32 %11 to i64
  %add19 = add nsw i64 4774735094265366601, %conv18
  %conv20 = trunc i64 %add19 to i16
  %conv21 = zext i16 %conv20 to i32
  %cmp22 = icmp ne i32 %conv17, %conv21
  br i1 %cmp22, label %if.then33, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end
  %12 = load i16, ptr @a16, align 2
  %conv25 = zext i16 %12 to i32
  %13 = load i32, ptr %m, align 4
  %conv26 = sext i32 %13 to i64
  %add27 = add nsw i64 4774735094265366601, %conv26
  %add28 = add nsw i64 %add27, 72340172838076673
  %conv29 = trunc i64 %add28 to i16
  %conv30 = zext i16 %conv29 to i32
  %cmp31 = icmp ne i32 %conv25, %conv30
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false24, %if.end
  call void @abort() #6
  unreachable

if.end34:                                         ; preds = %lor.lhs.false24
  %14 = load i32, ptr %model, align 4
  %call35 = call i32 @__atomic_fetch_add_4(ptr noundef @a32, i32 noundef 16843009, i32 noundef %14) #5
  store i32 %call35, ptr @b32, align 4
  %15 = load i32, ptr @b32, align 4
  %16 = load i32, ptr %m, align 4
  %conv36 = sext i32 %16 to i64
  %add37 = add nsw i64 4774735094265366601, %conv36
  %conv38 = trunc i64 %add37 to i32
  %cmp39 = icmp ne i32 %15, %conv38
  br i1 %cmp39, label %if.then48, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end34
  %17 = load i32, ptr @a32, align 4
  %18 = load i32, ptr %m, align 4
  %conv42 = sext i32 %18 to i64
  %add43 = add nsw i64 4774735094265366601, %conv42
  %add44 = add nsw i64 %add43, 72340172838076673
  %conv45 = trunc i64 %add44 to i32
  %cmp46 = icmp ne i32 %17, %conv45
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false41, %if.end34
  call void @abort() #6
  unreachable

if.end49:                                         ; preds = %lor.lhs.false41
  %19 = load i32, ptr %model, align 4
  %call50 = call i64 @__atomic_fetch_add_8(ptr noundef @a64, i64 noundef 72340172838076673, i32 noundef %19) #5
  store i64 %call50, ptr @b64, align 8
  %20 = load i64, ptr @b64, align 8
  %21 = load i32, ptr %m, align 4
  %conv51 = sext i32 %21 to i64
  %add52 = add nsw i64 4774735094265366601, %conv51
  %cmp53 = icmp ne i64 %20, %add52
  br i1 %cmp53, label %if.then61, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end49
  %22 = load i64, ptr @a64, align 8
  %23 = load i32, ptr %m, align 4
  %conv56 = sext i32 %23 to i64
  %add57 = add nsw i64 4774735094265366601, %conv56
  %add58 = add nsw i64 %add57, 72340172838076673
  %cmp59 = icmp ne i64 %22, %add58
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %lor.lhs.false55, %if.end49
  call void @abort() #6
  unreachable

if.end62:                                         ; preds = %lor.lhs.false55
  %24 = load i32, ptr %m, align 4
  %conv63 = sext i32 %24 to i64
  %add64 = add nsw i64 4774735094265366601, %conv63
  call void @set_a_values(i64 noundef %add64) #5
  call void @set_b_values(i64 noundef 0) #5
  %25 = load i32, ptr %model, align 4
  %call65 = call zeroext i8 @__atomic_fetch_sub_1(ptr noundef @a8, i8 noundef zeroext 1, i32 noundef %25) #5
  store i8 %call65, ptr @b8, align 1
  %26 = load i8, ptr @b8, align 1
  %conv66 = zext i8 %26 to i32
  %27 = load i32, ptr %m, align 4
  %conv67 = sext i32 %27 to i64
  %add68 = add nsw i64 4774735094265366601, %conv67
  %conv69 = trunc i64 %add68 to i8
  %conv70 = zext i8 %conv69 to i32
  %cmp71 = icmp ne i32 %conv66, %conv70
  br i1 %cmp71, label %if.then81, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.end62
  %28 = load i8, ptr @a8, align 1
  %conv74 = zext i8 %28 to i32
  %29 = load i32, ptr %m, align 4
  %conv75 = sext i32 %29 to i64
  %add76 = add nsw i64 4774735094265366601, %conv75
  %sub = sub nsw i64 %add76, 72340172838076673
  %conv77 = trunc i64 %sub to i8
  %conv78 = zext i8 %conv77 to i32
  %cmp79 = icmp ne i32 %conv74, %conv78
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %lor.lhs.false73, %if.end62
  call void @abort() #6
  unreachable

if.end82:                                         ; preds = %lor.lhs.false73
  %30 = load i32, ptr %model, align 4
  %call83 = call zeroext i16 @__atomic_fetch_sub_2(ptr noundef @a16, i16 noundef zeroext 257, i32 noundef %30) #5
  store i16 %call83, ptr @b16, align 2
  %31 = load i16, ptr @b16, align 2
  %conv84 = zext i16 %31 to i32
  %32 = load i32, ptr %m, align 4
  %conv85 = sext i32 %32 to i64
  %add86 = add nsw i64 4774735094265366601, %conv85
  %conv87 = trunc i64 %add86 to i16
  %conv88 = zext i16 %conv87 to i32
  %cmp89 = icmp ne i32 %conv84, %conv88
  br i1 %cmp89, label %if.then100, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.end82
  %33 = load i16, ptr @a16, align 2
  %conv92 = zext i16 %33 to i32
  %34 = load i32, ptr %m, align 4
  %conv93 = sext i32 %34 to i64
  %add94 = add nsw i64 4774735094265366601, %conv93
  %sub95 = sub nsw i64 %add94, 72340172838076673
  %conv96 = trunc i64 %sub95 to i16
  %conv97 = zext i16 %conv96 to i32
  %cmp98 = icmp ne i32 %conv92, %conv97
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %lor.lhs.false91, %if.end82
  call void @abort() #6
  unreachable

if.end101:                                        ; preds = %lor.lhs.false91
  %35 = load i32, ptr %model, align 4
  %call102 = call i32 @__atomic_fetch_sub_4(ptr noundef @a32, i32 noundef 16843009, i32 noundef %35) #5
  store i32 %call102, ptr @b32, align 4
  %36 = load i32, ptr @b32, align 4
  %37 = load i32, ptr %m, align 4
  %conv103 = sext i32 %37 to i64
  %add104 = add nsw i64 4774735094265366601, %conv103
  %conv105 = trunc i64 %add104 to i32
  %cmp106 = icmp ne i32 %36, %conv105
  br i1 %cmp106, label %if.then115, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %if.end101
  %38 = load i32, ptr @a32, align 4
  %39 = load i32, ptr %m, align 4
  %conv109 = sext i32 %39 to i64
  %add110 = add nsw i64 4774735094265366601, %conv109
  %sub111 = sub nsw i64 %add110, 72340172838076673
  %conv112 = trunc i64 %sub111 to i32
  %cmp113 = icmp ne i32 %38, %conv112
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %lor.lhs.false108, %if.end101
  call void @abort() #6
  unreachable

if.end116:                                        ; preds = %lor.lhs.false108
  %40 = load i32, ptr %model, align 4
  %call117 = call i64 @__atomic_fetch_sub_8(ptr noundef @a64, i64 noundef 72340172838076673, i32 noundef %40) #5
  store i64 %call117, ptr @b64, align 8
  %41 = load i64, ptr @b64, align 8
  %42 = load i32, ptr %m, align 4
  %conv118 = sext i32 %42 to i64
  %add119 = add nsw i64 4774735094265366601, %conv118
  %cmp120 = icmp ne i64 %41, %add119
  br i1 %cmp120, label %if.then128, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %if.end116
  %43 = load i64, ptr @a64, align 8
  %44 = load i32, ptr %m, align 4
  %conv123 = sext i32 %44 to i64
  %add124 = add nsw i64 4774735094265366601, %conv123
  %sub125 = sub nsw i64 %add124, 72340172838076673
  %cmp126 = icmp ne i64 %43, %sub125
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %lor.lhs.false122, %if.end116
  call void @abort() #6
  unreachable

if.end129:                                        ; preds = %lor.lhs.false122
  %45 = load i32, ptr %m, align 4
  %conv130 = sext i32 %45 to i64
  %add131 = add nsw i64 4774735094265366601, %conv130
  call void @set_a_values(i64 noundef %add131) #5
  call void @set_b_values(i64 noundef 0) #5
  %46 = load i32, ptr %m, align 4
  %conv132 = sext i32 %46 to i64
  %add133 = add nsw i64 4774735094265366601, %conv132
  %conv134 = trunc i64 %add133 to i8
  %47 = load i32, ptr %model, align 4
  %call135 = call zeroext i8 @__atomic_fetch_and_1(ptr noundef @a8, i8 noundef zeroext %conv134, i32 noundef %47) #5
  store i8 %call135, ptr @b8, align 1
  %48 = load i8, ptr @b8, align 1
  %conv136 = zext i8 %48 to i32
  %49 = load i32, ptr %m, align 4
  %conv137 = sext i32 %49 to i64
  %add138 = add nsw i64 4774735094265366601, %conv137
  %conv139 = trunc i64 %add138 to i8
  %conv140 = zext i8 %conv139 to i32
  %cmp141 = icmp ne i32 %conv136, %conv140
  br i1 %cmp141, label %if.then151, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %if.end129
  %50 = load i8, ptr @a8, align 1
  %conv144 = zext i8 %50 to i32
  %51 = load i32, ptr %m, align 4
  %conv145 = sext i32 %51 to i64
  %add146 = add nsw i64 4774735094265366601, %conv145
  %conv147 = trunc i64 %add146 to i8
  %conv148 = zext i8 %conv147 to i32
  %cmp149 = icmp ne i32 %conv144, %conv148
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %lor.lhs.false143, %if.end129
  call void @abort() #6
  unreachable

if.end152:                                        ; preds = %lor.lhs.false143
  %52 = load i32, ptr %m, align 4
  %conv153 = sext i32 %52 to i64
  %add154 = add nsw i64 4774735094265366601, %conv153
  %conv155 = trunc i64 %add154 to i16
  %53 = load i32, ptr %model, align 4
  %call156 = call zeroext i16 @__atomic_fetch_and_2(ptr noundef @a16, i16 noundef zeroext %conv155, i32 noundef %53) #5
  store i16 %call156, ptr @b16, align 2
  %54 = load i16, ptr @b16, align 2
  %conv157 = zext i16 %54 to i32
  %55 = load i32, ptr %m, align 4
  %conv158 = sext i32 %55 to i64
  %add159 = add nsw i64 4774735094265366601, %conv158
  %conv160 = trunc i64 %add159 to i16
  %conv161 = zext i16 %conv160 to i32
  %cmp162 = icmp ne i32 %conv157, %conv161
  br i1 %cmp162, label %if.then172, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %if.end152
  %56 = load i16, ptr @a16, align 2
  %conv165 = zext i16 %56 to i32
  %57 = load i32, ptr %m, align 4
  %conv166 = sext i32 %57 to i64
  %add167 = add nsw i64 4774735094265366601, %conv166
  %conv168 = trunc i64 %add167 to i16
  %conv169 = zext i16 %conv168 to i32
  %cmp170 = icmp ne i32 %conv165, %conv169
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %lor.lhs.false164, %if.end152
  call void @abort() #6
  unreachable

if.end173:                                        ; preds = %lor.lhs.false164
  %58 = load i32, ptr %m, align 4
  %conv174 = sext i32 %58 to i64
  %add175 = add nsw i64 4774735094265366601, %conv174
  %conv176 = trunc i64 %add175 to i32
  %59 = load i32, ptr %model, align 4
  %call177 = call i32 @__atomic_fetch_and_4(ptr noundef @a32, i32 noundef %conv176, i32 noundef %59) #5
  store i32 %call177, ptr @b32, align 4
  %60 = load i32, ptr @b32, align 4
  %61 = load i32, ptr %m, align 4
  %conv178 = sext i32 %61 to i64
  %add179 = add nsw i64 4774735094265366601, %conv178
  %conv180 = trunc i64 %add179 to i32
  %cmp181 = icmp ne i32 %60, %conv180
  br i1 %cmp181, label %if.then189, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %if.end173
  %62 = load i32, ptr @a32, align 4
  %63 = load i32, ptr %m, align 4
  %conv184 = sext i32 %63 to i64
  %add185 = add nsw i64 4774735094265366601, %conv184
  %conv186 = trunc i64 %add185 to i32
  %cmp187 = icmp ne i32 %62, %conv186
  br i1 %cmp187, label %if.then189, label %if.end190

if.then189:                                       ; preds = %lor.lhs.false183, %if.end173
  call void @abort() #6
  unreachable

if.end190:                                        ; preds = %lor.lhs.false183
  %64 = load i32, ptr %m, align 4
  %conv191 = sext i32 %64 to i64
  %add192 = add nsw i64 4774735094265366601, %conv191
  %65 = load i32, ptr %model, align 4
  %call193 = call i64 @__atomic_fetch_and_8(ptr noundef @a64, i64 noundef %add192, i32 noundef %65) #5
  store i64 %call193, ptr @b64, align 8
  %66 = load i64, ptr @b64, align 8
  %67 = load i32, ptr %m, align 4
  %conv194 = sext i32 %67 to i64
  %add195 = add nsw i64 4774735094265366601, %conv194
  %cmp196 = icmp ne i64 %66, %add195
  br i1 %cmp196, label %if.then203, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %if.end190
  %68 = load i64, ptr @a64, align 8
  %69 = load i32, ptr %m, align 4
  %conv199 = sext i32 %69 to i64
  %add200 = add nsw i64 4774735094265366601, %conv199
  %cmp201 = icmp ne i64 %68, %add200
  br i1 %cmp201, label %if.then203, label %if.end204

if.then203:                                       ; preds = %lor.lhs.false198, %if.end190
  call void @abort() #6
  unreachable

if.end204:                                        ; preds = %lor.lhs.false198
  %70 = load i32, ptr %m, align 4
  %conv205 = sext i32 %70 to i64
  %add206 = add nsw i64 4774735094265366601, %conv205
  call void @set_a_values(i64 noundef %add206) #5
  call void @set_b_values(i64 noundef 0) #5
  %71 = load i32, ptr %model, align 4
  %call207 = call zeroext i8 @__atomic_fetch_or_1(ptr noundef @a8, i8 noundef zeroext 1, i32 noundef %71) #5
  store i8 %call207, ptr @b8, align 1
  %72 = load i8, ptr @b8, align 1
  %conv208 = zext i8 %72 to i32
  %73 = load i32, ptr %m, align 4
  %conv209 = sext i32 %73 to i64
  %add210 = add nsw i64 4774735094265366601, %conv209
  %conv211 = trunc i64 %add210 to i8
  %conv212 = zext i8 %conv211 to i32
  %cmp213 = icmp ne i32 %conv208, %conv212
  br i1 %cmp213, label %if.then223, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %if.end204
  %74 = load i8, ptr @a8, align 1
  %conv216 = zext i8 %74 to i32
  %75 = load i32, ptr %m, align 4
  %conv217 = sext i32 %75 to i64
  %add218 = add nsw i64 4774735094265366601, %conv217
  %or = or i64 %add218, 72340172838076673
  %conv219 = trunc i64 %or to i8
  %conv220 = zext i8 %conv219 to i32
  %cmp221 = icmp ne i32 %conv216, %conv220
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %lor.lhs.false215, %if.end204
  call void @abort() #6
  unreachable

if.end224:                                        ; preds = %lor.lhs.false215
  %76 = load i32, ptr %model, align 4
  %call225 = call zeroext i16 @__atomic_fetch_or_2(ptr noundef @a16, i16 noundef zeroext 257, i32 noundef %76) #5
  store i16 %call225, ptr @b16, align 2
  %77 = load i16, ptr @b16, align 2
  %conv226 = zext i16 %77 to i32
  %78 = load i32, ptr %m, align 4
  %conv227 = sext i32 %78 to i64
  %add228 = add nsw i64 4774735094265366601, %conv227
  %conv229 = trunc i64 %add228 to i16
  %conv230 = zext i16 %conv229 to i32
  %cmp231 = icmp ne i32 %conv226, %conv230
  br i1 %cmp231, label %if.then242, label %lor.lhs.false233

lor.lhs.false233:                                 ; preds = %if.end224
  %79 = load i16, ptr @a16, align 2
  %conv234 = zext i16 %79 to i32
  %80 = load i32, ptr %m, align 4
  %conv235 = sext i32 %80 to i64
  %add236 = add nsw i64 4774735094265366601, %conv235
  %or237 = or i64 %add236, 72340172838076673
  %conv238 = trunc i64 %or237 to i16
  %conv239 = zext i16 %conv238 to i32
  %cmp240 = icmp ne i32 %conv234, %conv239
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %lor.lhs.false233, %if.end224
  call void @abort() #6
  unreachable

if.end243:                                        ; preds = %lor.lhs.false233
  %81 = load i32, ptr %model, align 4
  %call244 = call i32 @__atomic_fetch_or_4(ptr noundef @a32, i32 noundef 16843009, i32 noundef %81) #5
  store i32 %call244, ptr @b32, align 4
  %82 = load i32, ptr @b32, align 4
  %83 = load i32, ptr %m, align 4
  %conv245 = sext i32 %83 to i64
  %add246 = add nsw i64 4774735094265366601, %conv245
  %conv247 = trunc i64 %add246 to i32
  %cmp248 = icmp ne i32 %82, %conv247
  br i1 %cmp248, label %if.then257, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %if.end243
  %84 = load i32, ptr @a32, align 4
  %85 = load i32, ptr %m, align 4
  %conv251 = sext i32 %85 to i64
  %add252 = add nsw i64 4774735094265366601, %conv251
  %or253 = or i64 %add252, 72340172838076673
  %conv254 = trunc i64 %or253 to i32
  %cmp255 = icmp ne i32 %84, %conv254
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %lor.lhs.false250, %if.end243
  call void @abort() #6
  unreachable

if.end258:                                        ; preds = %lor.lhs.false250
  %86 = load i32, ptr %model, align 4
  %call259 = call i64 @__atomic_fetch_or_8(ptr noundef @a64, i64 noundef 72340172838076673, i32 noundef %86) #5
  store i64 %call259, ptr @b64, align 8
  %87 = load i64, ptr @b64, align 8
  %88 = load i32, ptr %m, align 4
  %conv260 = sext i32 %88 to i64
  %add261 = add nsw i64 4774735094265366601, %conv260
  %cmp262 = icmp ne i64 %87, %add261
  br i1 %cmp262, label %if.then270, label %lor.lhs.false264

lor.lhs.false264:                                 ; preds = %if.end258
  %89 = load i64, ptr @a64, align 8
  %90 = load i32, ptr %m, align 4
  %conv265 = sext i32 %90 to i64
  %add266 = add nsw i64 4774735094265366601, %conv265
  %or267 = or i64 %add266, 72340172838076673
  %cmp268 = icmp ne i64 %89, %or267
  br i1 %cmp268, label %if.then270, label %if.end271

if.then270:                                       ; preds = %lor.lhs.false264, %if.end258
  call void @abort() #6
  unreachable

if.end271:                                        ; preds = %lor.lhs.false264
  %91 = load i32, ptr %m, align 4
  %conv272 = sext i32 %91 to i64
  %add273 = add nsw i64 4774735094265366601, %conv272
  call void @set_a_values(i64 noundef %add273) #5
  call void @set_b_values(i64 noundef 0) #5
  %92 = load i32, ptr %model, align 4
  %call274 = call zeroext i8 @__atomic_fetch_xor_1(ptr noundef @a8, i8 noundef zeroext 1, i32 noundef %92) #5
  store i8 %call274, ptr @b8, align 1
  %93 = load i8, ptr @b8, align 1
  %conv275 = zext i8 %93 to i32
  %94 = load i32, ptr %m, align 4
  %conv276 = sext i32 %94 to i64
  %add277 = add nsw i64 4774735094265366601, %conv276
  %conv278 = trunc i64 %add277 to i8
  %conv279 = zext i8 %conv278 to i32
  %cmp280 = icmp ne i32 %conv275, %conv279
  br i1 %cmp280, label %if.then290, label %lor.lhs.false282

lor.lhs.false282:                                 ; preds = %if.end271
  %95 = load i8, ptr @a8, align 1
  %conv283 = zext i8 %95 to i32
  %96 = load i32, ptr %m, align 4
  %conv284 = sext i32 %96 to i64
  %add285 = add nsw i64 4774735094265366601, %conv284
  %xor = xor i64 %add285, 72340172838076673
  %conv286 = trunc i64 %xor to i8
  %conv287 = zext i8 %conv286 to i32
  %cmp288 = icmp ne i32 %conv283, %conv287
  br i1 %cmp288, label %if.then290, label %if.end291

if.then290:                                       ; preds = %lor.lhs.false282, %if.end271
  call void @abort() #6
  unreachable

if.end291:                                        ; preds = %lor.lhs.false282
  %97 = load i32, ptr %model, align 4
  %call292 = call zeroext i16 @__atomic_fetch_xor_2(ptr noundef @a16, i16 noundef zeroext 257, i32 noundef %97) #5
  store i16 %call292, ptr @b16, align 2
  %98 = load i16, ptr @b16, align 2
  %conv293 = zext i16 %98 to i32
  %99 = load i32, ptr %m, align 4
  %conv294 = sext i32 %99 to i64
  %add295 = add nsw i64 4774735094265366601, %conv294
  %conv296 = trunc i64 %add295 to i16
  %conv297 = zext i16 %conv296 to i32
  %cmp298 = icmp ne i32 %conv293, %conv297
  br i1 %cmp298, label %if.then309, label %lor.lhs.false300

lor.lhs.false300:                                 ; preds = %if.end291
  %100 = load i16, ptr @a16, align 2
  %conv301 = zext i16 %100 to i32
  %101 = load i32, ptr %m, align 4
  %conv302 = sext i32 %101 to i64
  %add303 = add nsw i64 4774735094265366601, %conv302
  %xor304 = xor i64 %add303, 72340172838076673
  %conv305 = trunc i64 %xor304 to i16
  %conv306 = zext i16 %conv305 to i32
  %cmp307 = icmp ne i32 %conv301, %conv306
  br i1 %cmp307, label %if.then309, label %if.end310

if.then309:                                       ; preds = %lor.lhs.false300, %if.end291
  call void @abort() #6
  unreachable

if.end310:                                        ; preds = %lor.lhs.false300
  %102 = load i32, ptr %model, align 4
  %call311 = call i32 @__atomic_fetch_xor_4(ptr noundef @a32, i32 noundef 16843009, i32 noundef %102) #5
  store i32 %call311, ptr @b32, align 4
  %103 = load i32, ptr @b32, align 4
  %104 = load i32, ptr %m, align 4
  %conv312 = sext i32 %104 to i64
  %add313 = add nsw i64 4774735094265366601, %conv312
  %conv314 = trunc i64 %add313 to i32
  %cmp315 = icmp ne i32 %103, %conv314
  br i1 %cmp315, label %if.then324, label %lor.lhs.false317

lor.lhs.false317:                                 ; preds = %if.end310
  %105 = load i32, ptr @a32, align 4
  %106 = load i32, ptr %m, align 4
  %conv318 = sext i32 %106 to i64
  %add319 = add nsw i64 4774735094265366601, %conv318
  %xor320 = xor i64 %add319, 72340172838076673
  %conv321 = trunc i64 %xor320 to i32
  %cmp322 = icmp ne i32 %105, %conv321
  br i1 %cmp322, label %if.then324, label %if.end325

if.then324:                                       ; preds = %lor.lhs.false317, %if.end310
  call void @abort() #6
  unreachable

if.end325:                                        ; preds = %lor.lhs.false317
  %107 = load i32, ptr %model, align 4
  %call326 = call i64 @__atomic_fetch_xor_8(ptr noundef @a64, i64 noundef 72340172838076673, i32 noundef %107) #5
  store i64 %call326, ptr @b64, align 8
  %108 = load i64, ptr @b64, align 8
  %109 = load i32, ptr %m, align 4
  %conv327 = sext i32 %109 to i64
  %add328 = add nsw i64 4774735094265366601, %conv327
  %cmp329 = icmp ne i64 %108, %add328
  br i1 %cmp329, label %if.then337, label %lor.lhs.false331

lor.lhs.false331:                                 ; preds = %if.end325
  %110 = load i64, ptr @a64, align 8
  %111 = load i32, ptr %m, align 4
  %conv332 = sext i32 %111 to i64
  %add333 = add nsw i64 4774735094265366601, %conv332
  %xor334 = xor i64 %add333, 72340172838076673
  %cmp335 = icmp ne i64 %110, %xor334
  br i1 %cmp335, label %if.then337, label %if.end338

if.then337:                                       ; preds = %lor.lhs.false331, %if.end325
  call void @abort() #6
  unreachable

if.end338:                                        ; preds = %lor.lhs.false331
  %112 = load i32, ptr %m, align 4
  %conv339 = sext i32 %112 to i64
  %add340 = add nsw i64 4774735094265366601, %conv339
  call void @set_a_values(i64 noundef %add340) #5
  call void @set_b_values(i64 noundef 0) #5
  %113 = load i32, ptr %model, align 4
  %call341 = call zeroext i8 @__atomic_fetch_nand_1(ptr noundef @a8, i8 noundef zeroext 1, i32 noundef %113) #5
  store i8 %call341, ptr @b8, align 1
  %114 = load i8, ptr @b8, align 1
  %conv342 = zext i8 %114 to i32
  %115 = load i32, ptr %m, align 4
  %conv343 = sext i32 %115 to i64
  %add344 = add nsw i64 4774735094265366601, %conv343
  %conv345 = trunc i64 %add344 to i8
  %conv346 = zext i8 %conv345 to i32
  %cmp347 = icmp ne i32 %conv342, %conv346
  br i1 %cmp347, label %if.then357, label %lor.lhs.false349

lor.lhs.false349:                                 ; preds = %if.end338
  %116 = load i8, ptr @a8, align 1
  %conv350 = zext i8 %116 to i32
  %117 = load i32, ptr %m, align 4
  %conv351 = sext i32 %117 to i64
  %add352 = add nsw i64 4774735094265366601, %conv351
  %and = and i64 %add352, 72340172838076673
  %not = xor i64 %and, -1
  %conv353 = trunc i64 %not to i8
  %conv354 = zext i8 %conv353 to i32
  %cmp355 = icmp ne i32 %conv350, %conv354
  br i1 %cmp355, label %if.then357, label %if.end358

if.then357:                                       ; preds = %lor.lhs.false349, %if.end338
  call void @abort() #6
  unreachable

if.end358:                                        ; preds = %lor.lhs.false349
  %118 = load i32, ptr %model, align 4
  %call359 = call zeroext i16 @__atomic_fetch_nand_2(ptr noundef @a16, i16 noundef zeroext 257, i32 noundef %118) #5
  store i16 %call359, ptr @b16, align 2
  %119 = load i16, ptr @b16, align 2
  %conv360 = zext i16 %119 to i32
  %120 = load i32, ptr %m, align 4
  %conv361 = sext i32 %120 to i64
  %add362 = add nsw i64 4774735094265366601, %conv361
  %conv363 = trunc i64 %add362 to i16
  %conv364 = zext i16 %conv363 to i32
  %cmp365 = icmp ne i32 %conv360, %conv364
  br i1 %cmp365, label %if.then377, label %lor.lhs.false367

lor.lhs.false367:                                 ; preds = %if.end358
  %121 = load i16, ptr @a16, align 2
  %conv368 = zext i16 %121 to i32
  %122 = load i32, ptr %m, align 4
  %conv369 = sext i32 %122 to i64
  %add370 = add nsw i64 4774735094265366601, %conv369
  %and371 = and i64 %add370, 72340172838076673
  %not372 = xor i64 %and371, -1
  %conv373 = trunc i64 %not372 to i16
  %conv374 = zext i16 %conv373 to i32
  %cmp375 = icmp ne i32 %conv368, %conv374
  br i1 %cmp375, label %if.then377, label %if.end378

if.then377:                                       ; preds = %lor.lhs.false367, %if.end358
  call void @abort() #6
  unreachable

if.end378:                                        ; preds = %lor.lhs.false367
  %123 = load i32, ptr %model, align 4
  %call379 = call i32 @__atomic_fetch_nand_4(ptr noundef @a32, i32 noundef 16843009, i32 noundef %123) #5
  store i32 %call379, ptr @b32, align 4
  %124 = load i32, ptr @b32, align 4
  %125 = load i32, ptr %m, align 4
  %conv380 = sext i32 %125 to i64
  %add381 = add nsw i64 4774735094265366601, %conv380
  %conv382 = trunc i64 %add381 to i32
  %cmp383 = icmp ne i32 %124, %conv382
  br i1 %cmp383, label %if.then393, label %lor.lhs.false385

lor.lhs.false385:                                 ; preds = %if.end378
  %126 = load i32, ptr @a32, align 4
  %127 = load i32, ptr %m, align 4
  %conv386 = sext i32 %127 to i64
  %add387 = add nsw i64 4774735094265366601, %conv386
  %and388 = and i64 %add387, 72340172838076673
  %not389 = xor i64 %and388, -1
  %conv390 = trunc i64 %not389 to i32
  %cmp391 = icmp ne i32 %126, %conv390
  br i1 %cmp391, label %if.then393, label %if.end394

if.then393:                                       ; preds = %lor.lhs.false385, %if.end378
  call void @abort() #6
  unreachable

if.end394:                                        ; preds = %lor.lhs.false385
  %128 = load i32, ptr %model, align 4
  %call395 = call i64 @__atomic_fetch_nand_8(ptr noundef @a64, i64 noundef 72340172838076673, i32 noundef %128) #5
  store i64 %call395, ptr @b64, align 8
  %129 = load i64, ptr @b64, align 8
  %130 = load i32, ptr %m, align 4
  %conv396 = sext i32 %130 to i64
  %add397 = add nsw i64 4774735094265366601, %conv396
  %cmp398 = icmp ne i64 %129, %add397
  br i1 %cmp398, label %if.then407, label %lor.lhs.false400

lor.lhs.false400:                                 ; preds = %if.end394
  %131 = load i64, ptr @a64, align 8
  %132 = load i32, ptr %m, align 4
  %conv401 = sext i32 %132 to i64
  %add402 = add nsw i64 4774735094265366601, %conv401
  %and403 = and i64 %add402, 72340172838076673
  %not404 = xor i64 %and403, -1
  %cmp405 = icmp ne i64 %131, %not404
  br i1 %cmp405, label %if.then407, label %if.end408

if.then407:                                       ; preds = %lor.lhs.false400, %if.end394
  call void @abort() #6
  unreachable

if.end408:                                        ; preds = %lor.lhs.false400
  %133 = load i32, ptr %m, align 4
  %conv409 = sext i32 %133 to i64
  %add410 = add nsw i64 4774735094265366601, %conv409
  call void @set_a_values(i64 noundef %add410) #5
  %134 = load i32, ptr %model, align 4
  %call411 = call zeroext i8 @__atomic_fetch_add_1(ptr noundef @a8, i8 noundef zeroext 73, i32 noundef %134) #5
  %135 = load i8, ptr @a8, align 1
  %conv412 = zext i8 %135 to i32
  %136 = load i32, ptr %m, align 4
  %conv413 = sext i32 %136 to i64
  %add414 = add nsw i64 -8897273885178818414, %conv413
  %conv415 = trunc i64 %add414 to i8
  %conv416 = zext i8 %conv415 to i32
  %cmp417 = icmp ne i32 %conv412, %conv416
  br i1 %cmp417, label %if.then419, label %if.end420

if.then419:                                       ; preds = %if.end408
  call void @abort() #6
  unreachable

if.end420:                                        ; preds = %if.end408
  %137 = load i32, ptr %model, align 4
  %call421 = call zeroext i8 @__atomic_fetch_sub_1(ptr noundef @a8, i8 noundef zeroext 73, i32 noundef %137) #5
  %138 = load i8, ptr @a8, align 1
  %conv422 = zext i8 %138 to i32
  %139 = load i32, ptr %m, align 4
  %conv423 = sext i32 %139 to i64
  %add424 = add nsw i64 4774735094265366601, %conv423
  %conv425 = trunc i64 %add424 to i8
  %conv426 = zext i8 %conv425 to i32
  %cmp427 = icmp ne i32 %conv422, %conv426
  br i1 %cmp427, label %if.then429, label %if.end430

if.then429:                                       ; preds = %if.end420
  call void @abort() #6
  unreachable

if.end430:                                        ; preds = %if.end420
  %140 = load i32, ptr %model, align 4
  %call431 = call zeroext i16 @__atomic_fetch_add_2(ptr noundef @a16, i16 noundef zeroext 18505, i32 noundef %140) #5
  %141 = load i16, ptr @a16, align 2
  %conv432 = zext i16 %141 to i32
  %142 = load i32, ptr %m, align 4
  %conv433 = sext i32 %142 to i64
  %add434 = add nsw i64 -8897273885178818414, %conv433
  %conv435 = trunc i64 %add434 to i16
  %conv436 = zext i16 %conv435 to i32
  %cmp437 = icmp ne i32 %conv432, %conv436
  br i1 %cmp437, label %if.then439, label %if.end440

if.then439:                                       ; preds = %if.end430
  call void @abort() #6
  unreachable

if.end440:                                        ; preds = %if.end430
  %143 = load i32, ptr %model, align 4
  %call441 = call zeroext i16 @__atomic_fetch_sub_2(ptr noundef @a16, i16 noundef zeroext 18505, i32 noundef %143) #5
  %144 = load i16, ptr @a16, align 2
  %conv442 = zext i16 %144 to i32
  %145 = load i32, ptr %m, align 4
  %conv443 = sext i32 %145 to i64
  %add444 = add nsw i64 4774735094265366601, %conv443
  %conv445 = trunc i64 %add444 to i16
  %conv446 = zext i16 %conv445 to i32
  %cmp447 = icmp ne i32 %conv442, %conv446
  br i1 %cmp447, label %if.then449, label %if.end450

if.then449:                                       ; preds = %if.end440
  call void @abort() #6
  unreachable

if.end450:                                        ; preds = %if.end440
  %146 = load i32, ptr %model, align 4
  %call451 = call i32 @__atomic_fetch_add_4(ptr noundef @a32, i32 noundef 1179076681, i32 noundef %146) #5
  %147 = load i32, ptr @a32, align 4
  %148 = load i32, ptr %m, align 4
  %conv452 = sext i32 %148 to i64
  %add453 = add nsw i64 -8897273885178818414, %conv452
  %conv454 = trunc i64 %add453 to i32
  %cmp455 = icmp ne i32 %147, %conv454
  br i1 %cmp455, label %if.then457, label %if.end458

if.then457:                                       ; preds = %if.end450
  call void @abort() #6
  unreachable

if.end458:                                        ; preds = %if.end450
  %149 = load i32, ptr %model, align 4
  %call459 = call i32 @__atomic_fetch_sub_4(ptr noundef @a32, i32 noundef 1179076681, i32 noundef %149) #5
  %150 = load i32, ptr @a32, align 4
  %151 = load i32, ptr %m, align 4
  %conv460 = sext i32 %151 to i64
  %add461 = add nsw i64 4774735094265366601, %conv460
  %conv462 = trunc i64 %add461 to i32
  %cmp463 = icmp ne i32 %150, %conv462
  br i1 %cmp463, label %if.then465, label %if.end466

if.then465:                                       ; preds = %if.end458
  call void @abort() #6
  unreachable

if.end466:                                        ; preds = %if.end458
  %152 = load i32, ptr %model, align 4
  %call467 = call i64 @__atomic_fetch_add_8(ptr noundef @a64, i64 noundef 4774735094265366601, i32 noundef %152) #5
  %153 = load i64, ptr @a64, align 8
  %154 = load i32, ptr %m, align 4
  %conv468 = sext i32 %154 to i64
  %add469 = add nsw i64 -8897273885178818414, %conv468
  %cmp470 = icmp ne i64 %153, %add469
  br i1 %cmp470, label %if.then472, label %if.end473

if.then472:                                       ; preds = %if.end466
  call void @abort() #6
  unreachable

if.end473:                                        ; preds = %if.end466
  %155 = load i32, ptr %model, align 4
  %call474 = call i64 @__atomic_fetch_sub_8(ptr noundef @a64, i64 noundef 4774735094265366601, i32 noundef %155) #5
  %156 = load i64, ptr @a64, align 8
  %157 = load i32, ptr %m, align 4
  %conv475 = sext i32 %157 to i64
  %add476 = add nsw i64 4774735094265366601, %conv475
  %cmp477 = icmp ne i64 %156, %add476
  br i1 %cmp477, label %if.then479, label %if.end480

if.then479:                                       ; preds = %if.end473
  call void @abort() #6
  unreachable

if.end480:                                        ; preds = %if.end473
  br label %for.inc

for.inc:                                          ; preds = %if.end480
  %158 = load i32, ptr %m, align 4
  %inc = add nsw i32 %158, 1
  store i32 %inc, ptr %m, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local zeroext i8 @__atomic_fetch_add_1(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare dso_local zeroext i16 @__atomic_fetch_add_2(ptr noundef, i16 noundef zeroext, i32 noundef) #2

declare dso_local i32 @__atomic_fetch_add_4(ptr noundef, i32 noundef, i32 noundef) #2

declare dso_local i64 @__atomic_fetch_add_8(ptr noundef, i64 noundef, i32 noundef) #2

declare dso_local zeroext i8 @__atomic_fetch_sub_1(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare dso_local zeroext i16 @__atomic_fetch_sub_2(ptr noundef, i16 noundef zeroext, i32 noundef) #2

declare dso_local i32 @__atomic_fetch_sub_4(ptr noundef, i32 noundef, i32 noundef) #2

declare dso_local i64 @__atomic_fetch_sub_8(ptr noundef, i64 noundef, i32 noundef) #2

declare dso_local zeroext i8 @__atomic_fetch_and_1(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare dso_local zeroext i16 @__atomic_fetch_and_2(ptr noundef, i16 noundef zeroext, i32 noundef) #2

declare dso_local i32 @__atomic_fetch_and_4(ptr noundef, i32 noundef, i32 noundef) #2

declare dso_local i64 @__atomic_fetch_and_8(ptr noundef, i64 noundef, i32 noundef) #2

declare dso_local zeroext i8 @__atomic_fetch_or_1(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare dso_local zeroext i16 @__atomic_fetch_or_2(ptr noundef, i16 noundef zeroext, i32 noundef) #2

declare dso_local i32 @__atomic_fetch_or_4(ptr noundef, i32 noundef, i32 noundef) #2

declare dso_local i64 @__atomic_fetch_or_8(ptr noundef, i64 noundef, i32 noundef) #2

declare dso_local zeroext i8 @__atomic_fetch_xor_1(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare dso_local zeroext i16 @__atomic_fetch_xor_2(ptr noundef, i16 noundef zeroext, i32 noundef) #2

declare dso_local i32 @__atomic_fetch_xor_4(ptr noundef, i32 noundef, i32 noundef) #2

declare dso_local i64 @__atomic_fetch_xor_8(ptr noundef, i64 noundef, i32 noundef) #2

declare dso_local zeroext i8 @__atomic_fetch_nand_1(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare dso_local zeroext i16 @__atomic_fetch_nand_2(ptr noundef, i16 noundef zeroext, i32 noundef) #2

declare dso_local i32 @__atomic_fetch_nand_4(ptr noundef, i32 noundef, i32 noundef) #2

declare dso_local i64 @__atomic_fetch_nand_8(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define dso_local void @test_is_lock_free() #0 {
entry:
  %call = call zeroext i1 @__atomic_is_lock_free(i32 noundef 0, ptr noundef null) #5
  br i1 %call, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @llvm.trap()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %call1 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 0, ptr noundef inttoptr (i32 8 to ptr)) #5
  br i1 %call1, label %cond.false4, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %cond.end
  br i1 true, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %land.lhs.true2
  br label %cond.end5

cond.false4:                                      ; preds = %land.lhs.true2, %cond.end
  call void @llvm.trap()
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %call6 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 2, ptr noundef inttoptr (i32 1 to ptr)) #5
  br i1 %call6, label %cond.false9, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %cond.end5
  br i1 true, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %land.lhs.true7
  br label %cond.end10

cond.false9:                                      ; preds = %land.lhs.true7, %cond.end5
  call void @llvm.trap()
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %call11 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 4, ptr noundef inttoptr (i32 3 to ptr)) #5
  br i1 %call11, label %cond.false14, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %cond.end10
  br i1 true, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %land.lhs.true12
  br label %cond.end15

cond.false14:                                     ; preds = %land.lhs.true12, %cond.end10
  call void @llvm.trap()
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %call16 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 4, ptr noundef inttoptr (i32 2 to ptr)) #5
  br i1 %call16, label %cond.false19, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %cond.end15
  br i1 true, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %land.lhs.true17
  br label %cond.end20

cond.false19:                                     ; preds = %land.lhs.true17, %cond.end15
  call void @llvm.trap()
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %call21 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 4, ptr noundef inttoptr (i32 1 to ptr)) #5
  br i1 %call21, label %cond.false24, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %cond.end20
  br i1 true, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %land.lhs.true22
  br label %cond.end25

cond.false24:                                     ; preds = %land.lhs.true22, %cond.end20
  call void @llvm.trap()
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.true23
  %call26 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 8, ptr noundef inttoptr (i32 7 to ptr)) #5
  br i1 %call26, label %cond.false29, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %cond.end25
  br i1 true, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %land.lhs.true27
  br label %cond.end30

cond.false29:                                     ; preds = %land.lhs.true27, %cond.end25
  call void @llvm.trap()
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %cond.true28
  %call31 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 8, ptr noundef inttoptr (i32 4 to ptr)) #5
  br i1 %call31, label %cond.false34, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %cond.end30
  br i1 true, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %land.lhs.true32
  br label %cond.end35

cond.false34:                                     ; preds = %land.lhs.true32, %cond.end30
  call void @llvm.trap()
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.true33
  %call36 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 8, ptr noundef inttoptr (i32 2 to ptr)) #5
  br i1 %call36, label %cond.false39, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %cond.end35
  br i1 true, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %land.lhs.true37
  br label %cond.end40

cond.false39:                                     ; preds = %land.lhs.true37, %cond.end35
  call void @llvm.trap()
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %call41 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 8, ptr noundef inttoptr (i32 1 to ptr)) #5
  br i1 %call41, label %cond.false44, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %cond.end40
  br i1 true, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %land.lhs.true42
  br label %cond.end45

cond.false44:                                     ; preds = %land.lhs.true42, %cond.end40
  call void @llvm.trap()
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %call46 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef inttoptr (i32 15 to ptr)) #5
  br i1 %call46, label %cond.false49, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %cond.end45
  br i1 true, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %land.lhs.true47
  br label %cond.end50

cond.false49:                                     ; preds = %land.lhs.true47, %cond.end45
  call void @llvm.trap()
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true48
  %call51 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef inttoptr (i32 8 to ptr)) #5
  br i1 %call51, label %cond.false54, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %cond.end50
  br i1 true, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %land.lhs.true52
  br label %cond.end55

cond.false54:                                     ; preds = %land.lhs.true52, %cond.end50
  call void @llvm.trap()
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.true53
  %call56 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef inttoptr (i32 4 to ptr)) #5
  br i1 %call56, label %cond.false59, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %cond.end55
  br i1 true, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %land.lhs.true57
  br label %cond.end60

cond.false59:                                     ; preds = %land.lhs.true57, %cond.end55
  call void @llvm.trap()
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.true58
  %call61 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef inttoptr (i32 2 to ptr)) #5
  br i1 %call61, label %cond.false64, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %cond.end60
  br i1 true, label %cond.true63, label %cond.false64

cond.true63:                                      ; preds = %land.lhs.true62
  br label %cond.end65

cond.false64:                                     ; preds = %land.lhs.true62, %cond.end60
  call void @llvm.trap()
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false64, %cond.true63
  %call66 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef inttoptr (i32 1 to ptr)) #5
  br i1 %call66, label %cond.false69, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %cond.end65
  br i1 true, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %land.lhs.true67
  br label %cond.end70

cond.false69:                                     ; preds = %land.lhs.true67, %cond.end65
  call void @llvm.trap()
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %cond.true68
  %call71 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 32, ptr noundef null) #5
  br i1 %call71, label %cond.false74, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %cond.end70
  br i1 true, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %land.lhs.true72
  br label %cond.end75

cond.false74:                                     ; preds = %land.lhs.true72, %cond.end70
  call void @llvm.trap()
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %cond.true73
  %call76 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 32, ptr noundef inttoptr (i32 32 to ptr)) #5
  br i1 %call76, label %cond.false79, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %cond.end75
  br i1 true, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %land.lhs.true77
  br label %cond.end80

cond.false79:                                     ; preds = %land.lhs.true77, %cond.end75
  call void @llvm.trap()
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %cond.true78
  %call81 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 32, ptr noundef inttoptr (i32 31 to ptr)) #5
  br i1 %call81, label %cond.false84, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %cond.end80
  br i1 true, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %land.lhs.true82
  br label %cond.end85

cond.false84:                                     ; preds = %land.lhs.true82, %cond.end80
  call void @llvm.trap()
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.true83
  %call86 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 3, ptr noundef null) #5
  br i1 %call86, label %cond.false89, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %cond.end85
  br i1 true, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %land.lhs.true87
  br label %cond.end90

cond.false89:                                     ; preds = %land.lhs.true87, %cond.end85
  call void @llvm.trap()
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %cond.true88
  %call91 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 5, ptr noundef null) #5
  br i1 %call91, label %cond.false94, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %cond.end90
  br i1 true, label %cond.true93, label %cond.false94

cond.true93:                                      ; preds = %land.lhs.true92
  br label %cond.end95

cond.false94:                                     ; preds = %land.lhs.true92, %cond.end90
  call void @llvm.trap()
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false94, %cond.true93
  %call96 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 6, ptr noundef null) #5
  br i1 %call96, label %cond.false99, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %cond.end95
  br i1 true, label %cond.true98, label %cond.false99

cond.true98:                                      ; preds = %land.lhs.true97
  br label %cond.end100

cond.false99:                                     ; preds = %land.lhs.true97, %cond.end95
  call void @llvm.trap()
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false99, %cond.true98
  %call101 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 7, ptr noundef null) #5
  br i1 %call101, label %cond.false104, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %cond.end100
  br i1 true, label %cond.true103, label %cond.false104

cond.true103:                                     ; preds = %land.lhs.true102
  br label %cond.end105

cond.false104:                                    ; preds = %land.lhs.true102, %cond.end100
  call void @llvm.trap()
  br label %cond.end105

cond.end105:                                      ; preds = %cond.false104, %cond.true103
  %call106 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 9, ptr noundef null) #5
  br i1 %call106, label %cond.false109, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %cond.end105
  br i1 true, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %land.lhs.true107
  br label %cond.end110

cond.false109:                                    ; preds = %land.lhs.true107, %cond.end105
  call void @llvm.trap()
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %cond.true108
  %call111 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 10, ptr noundef null) #5
  br i1 %call111, label %cond.false114, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %cond.end110
  br i1 true, label %cond.true113, label %cond.false114

cond.true113:                                     ; preds = %land.lhs.true112
  br label %cond.end115

cond.false114:                                    ; preds = %land.lhs.true112, %cond.end110
  call void @llvm.trap()
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false114, %cond.true113
  %call116 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 11, ptr noundef null) #5
  br i1 %call116, label %cond.false119, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %cond.end115
  br i1 true, label %cond.true118, label %cond.false119

cond.true118:                                     ; preds = %land.lhs.true117
  br label %cond.end120

cond.false119:                                    ; preds = %land.lhs.true117, %cond.end115
  call void @llvm.trap()
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false119, %cond.true118
  %call121 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 12, ptr noundef null) #5
  br i1 %call121, label %cond.false124, label %land.lhs.true122

land.lhs.true122:                                 ; preds = %cond.end120
  br i1 true, label %cond.true123, label %cond.false124

cond.true123:                                     ; preds = %land.lhs.true122
  br label %cond.end125

cond.false124:                                    ; preds = %land.lhs.true122, %cond.end120
  call void @llvm.trap()
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.true123
  %call126 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 13, ptr noundef null) #5
  br i1 %call126, label %cond.false129, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %cond.end125
  br i1 true, label %cond.true128, label %cond.false129

cond.true128:                                     ; preds = %land.lhs.true127
  br label %cond.end130

cond.false129:                                    ; preds = %land.lhs.true127, %cond.end125
  call void @llvm.trap()
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false129, %cond.true128
  %call131 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 14, ptr noundef null) #5
  br i1 %call131, label %cond.false134, label %land.lhs.true132

land.lhs.true132:                                 ; preds = %cond.end130
  br i1 true, label %cond.true133, label %cond.false134

cond.true133:                                     ; preds = %land.lhs.true132
  br label %cond.end135

cond.false134:                                    ; preds = %land.lhs.true132, %cond.end130
  call void @llvm.trap()
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false134, %cond.true133
  %call136 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 15, ptr noundef null) #5
  br i1 %call136, label %cond.false139, label %land.lhs.true137

land.lhs.true137:                                 ; preds = %cond.end135
  br i1 true, label %cond.true138, label %cond.false139

cond.true138:                                     ; preds = %land.lhs.true137
  br label %cond.end140

cond.false139:                                    ; preds = %land.lhs.true137, %cond.end135
  call void @llvm.trap()
  br label %cond.end140

cond.end140:                                      ; preds = %cond.false139, %cond.true138
  %call141 = call zeroext i1 @__atomic_is_lock_free(i32 noundef 17, ptr noundef null) #5
  br i1 %call141, label %cond.false144, label %land.lhs.true142

land.lhs.true142:                                 ; preds = %cond.end140
  br i1 true, label %cond.true143, label %cond.false144

cond.true143:                                     ; preds = %land.lhs.true142
  br label %cond.end145

cond.false144:                                    ; preds = %land.lhs.true142, %cond.end140
  call void @llvm.trap()
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false144, %cond.true143
  ret void
}

declare dso_local zeroext i1 @__atomic_is_lock_free(i32 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  call void @test_loads() #5
  call void @test_stores() #5
  call void @test_exchanges() #5
  call void @test_compare_exchanges() #5
  call void @test_fetch_op() #5
  call void @test_is_lock_free() #5
  ret i32 0
}

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { noreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin noreturn "no-builtins" }

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
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
