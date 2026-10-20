; ModuleID = 'tests/programs/matrix.c'
source_filename = "tests/programs/matrix.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%union.anon = type { float }

@a = internal global [12 x [12 x i32]] zeroinitializer, align 4
@b = internal global [12 x [12 x i32]] zeroinitializer, align 4
@fa = internal global [12 x [12 x float]] zeroinitializer, align 4
@fb = internal global [12 x [12 x float]] zeroinitializer, align 4
@fc = internal global [12 x [12 x float]] zeroinitializer, align 4
@c = internal global [12 x [12 x i32]] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %i26 = alloca i32, align 4
  %j31 = alloca i32, align 4
  %d = alloca float, align 4
  %tr = alloca float, align 4
  %i50 = alloca i32, align 4
  %u1 = alloca %union.anon, align 4
  %u2 = alloca %union.anon, align 4
  store i32 7, ptr %s, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 12
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %s, align 4
  %mul = mul i32 %2, 1103515245
  %add = add i32 %mul, 12345
  store i32 %add, ptr %s, align 4
  %3 = load i32, ptr %s, align 4
  %shr = lshr i32 %3, 20
  %rem = srem i32 %shr, 17
  %sub = sub nsw i32 %rem, 8
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [12 x [12 x i32]], ptr @a, i32 0, i32 %4
  %5 = load i32, ptr %j, align 4
  %arrayidx4 = getelementptr inbounds [12 x i32], ptr %arrayidx, i32 0, i32 %5
  store i32 %sub, ptr %arrayidx4, align 4
  %6 = load i32, ptr %s, align 4
  %shr5 = lshr i32 %6, 8
  %rem6 = srem i32 %shr5, 13
  %sub7 = sub nsw i32 %rem6, 6
  %7 = load i32, ptr %i, align 4
  %arrayidx8 = getelementptr inbounds [12 x [12 x i32]], ptr @b, i32 0, i32 %7
  %8 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds [12 x i32], ptr %arrayidx8, i32 0, i32 %8
  store i32 %sub7, ptr %arrayidx9, align 4
  %9 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr inbounds [12 x [12 x i32]], ptr @a, i32 0, i32 %9
  %10 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds [12 x i32], ptr %arrayidx10, i32 0, i32 %10
  %11 = load i32, ptr %arrayidx11, align 4
  %conv = sitofp i32 %11 to float
  %mul12 = fmul float %conv, 2.500000e-01
  %12 = load i32, ptr %i, align 4
  %arrayidx13 = getelementptr inbounds [12 x [12 x float]], ptr @fa, i32 0, i32 %12
  %13 = load i32, ptr %j, align 4
  %arrayidx14 = getelementptr inbounds [12 x float], ptr %arrayidx13, i32 0, i32 %13
  store float %mul12, ptr %arrayidx14, align 4
  %14 = load i32, ptr %i, align 4
  %arrayidx15 = getelementptr inbounds [12 x [12 x i32]], ptr @b, i32 0, i32 %14
  %15 = load i32, ptr %j, align 4
  %arrayidx16 = getelementptr inbounds [12 x i32], ptr %arrayidx15, i32 0, i32 %15
  %16 = load i32, ptr %arrayidx16, align 4
  %conv17 = sitofp i32 %16 to float
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %j, align 4
  %cmp19 = icmp eq i32 %17, %18
  %19 = zext i1 %cmp19 to i64
  %cond = select i1 %cmp19, float 3.000000e+00, float 0.000000e+00
  %20 = call float @llvm.fmuladd.f32(float %conv17, float 5.000000e-01, float %cond)
  %21 = load i32, ptr %i, align 4
  %arrayidx21 = getelementptr inbounds [12 x [12 x float]], ptr @fb, i32 0, i32 %21
  %22 = load i32, ptr %j, align 4
  %arrayidx22 = getelementptr inbounds [12 x float], ptr %arrayidx21, i32 0, i32 %22
  store float %20, ptr %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, ptr %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %24, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end25:                                        ; preds = %for.cond
  call void @imul() #2
  call void @fmul() #2
  call void @transpose(ptr noundef @fc) #2
  store i32 0, ptr %h, align 4
  store i32 0, ptr %i26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc47, %for.end25
  %25 = load i32, ptr %i26, align 4
  %cmp28 = icmp slt i32 %25, 12
  br i1 %cmp28, label %for.body30, label %for.end49

for.body30:                                       ; preds = %for.cond27
  store i32 0, ptr %j31, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc44, %for.body30
  %26 = load i32, ptr %j31, align 4
  %cmp33 = icmp slt i32 %26, 12
  br i1 %cmp33, label %for.body35, label %for.end46

for.body35:                                       ; preds = %for.cond32
  %27 = load i32, ptr %h, align 4
  %mul36 = mul i32 %27, 33
  %28 = load i32, ptr %i26, align 4
  %arrayidx37 = getelementptr inbounds [12 x [12 x i32]], ptr @c, i32 0, i32 %28
  %29 = load i32, ptr %j31, align 4
  %arrayidx38 = getelementptr inbounds [12 x i32], ptr %arrayidx37, i32 0, i32 %29
  %30 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %mul36, %30
  store i32 %add39, ptr %h, align 4
  %31 = load i32, ptr %i26, align 4
  %arrayidx40 = getelementptr inbounds [12 x [12 x float]], ptr @fc, i32 0, i32 %31
  %32 = load i32, ptr %j31, align 4
  %arrayidx41 = getelementptr inbounds [12 x float], ptr %arrayidx40, i32 0, i32 %32
  %33 = load float, ptr %arrayidx41, align 4
  %mul42 = fmul float %33, 1.600000e+01
  %conv43 = fptosi float %mul42 to i32
  %34 = load i32, ptr %h, align 4
  %xor = xor i32 %34, %conv43
  store i32 %xor, ptr %h, align 4
  br label %for.inc44

for.inc44:                                        ; preds = %for.body35
  %35 = load i32, ptr %j31, align 4
  %inc45 = add nsw i32 %35, 1
  store i32 %inc45, ptr %j31, align 4
  br label %for.cond32, !llvm.loop !10

for.end46:                                        ; preds = %for.cond32
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %36 = load i32, ptr %i26, align 4
  %inc48 = add nsw i32 %36, 1
  store i32 %inc48, ptr %i26, align 4
  br label %for.cond27, !llvm.loop !11

for.end49:                                        ; preds = %for.cond27
  %call = call float @det(ptr noundef @fb) #2
  store float %call, ptr %d, align 4
  store float 0.000000e+00, ptr %tr, align 4
  store i32 0, ptr %i50, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc58, %for.end49
  %37 = load i32, ptr %i50, align 4
  %cmp52 = icmp slt i32 %37, 12
  br i1 %cmp52, label %for.body54, label %for.end60

for.body54:                                       ; preds = %for.cond51
  %38 = load i32, ptr %i50, align 4
  %arrayidx55 = getelementptr inbounds [12 x [12 x float]], ptr @fc, i32 0, i32 %38
  %39 = load i32, ptr %i50, align 4
  %arrayidx56 = getelementptr inbounds [12 x float], ptr %arrayidx55, i32 0, i32 %39
  %40 = load float, ptr %arrayidx56, align 4
  %41 = load float, ptr %tr, align 4
  %add57 = fadd float %41, %40
  store float %add57, ptr %tr, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body54
  %42 = load i32, ptr %i50, align 4
  %inc59 = add nsw i32 %42, 1
  store i32 %inc59, ptr %i50, align 4
  br label %for.cond51, !llvm.loop !12

for.end60:                                        ; preds = %for.cond51
  %43 = load float, ptr %d, align 4
  store float %43, ptr %u1, align 4
  %44 = load float, ptr %tr, align 4
  store float %44, ptr %u2, align 4
  %45 = load i32, ptr %h, align 4
  %46 = load i32, ptr %u1, align 4
  %xor61 = xor i32 %45, %46
  %47 = load i32, ptr %u2, align 4
  %shr62 = lshr i32 %47, 3
  %xor63 = xor i32 %xor61, %shr62
  ret i32 %xor63
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind optnone
define internal void @imul() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 12
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %s, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %2, 12
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [12 x [12 x i32]], ptr @a, i32 0, i32 %3
  %4 = load i32, ptr %k, align 4
  %arrayidx7 = getelementptr inbounds [12 x i32], ptr %arrayidx, i32 0, i32 %4
  %5 = load i32, ptr %arrayidx7, align 4
  %6 = load i32, ptr %k, align 4
  %arrayidx8 = getelementptr inbounds [12 x [12 x i32]], ptr @b, i32 0, i32 %6
  %7 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds [12 x i32], ptr %arrayidx8, i32 0, i32 %7
  %8 = load i32, ptr %arrayidx9, align 4
  %mul = mul nsw i32 %5, %8
  %9 = load i32, ptr %s, align 4
  %add = add nsw i32 %9, %mul
  store i32 %add, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %10 = load i32, ptr %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !13

for.end:                                          ; preds = %for.cond4
  %11 = load i32, ptr %s, align 4
  %12 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr inbounds [12 x [12 x i32]], ptr @c, i32 0, i32 %12
  %13 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds [12 x i32], ptr %arrayidx10, i32 0, i32 %13
  store i32 %11, ptr %arrayidx11, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %14 = load i32, ptr %j, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, ptr %j, align 4
  br label %for.cond1, !llvm.loop !14

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %15 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @fmul() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca float, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 12
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store float 0.000000e+00, ptr %s, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %2, 12
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [12 x [12 x float]], ptr @fa, i32 0, i32 %3
  %4 = load i32, ptr %k, align 4
  %arrayidx7 = getelementptr inbounds [12 x float], ptr %arrayidx, i32 0, i32 %4
  %5 = load float, ptr %arrayidx7, align 4
  %6 = load i32, ptr %k, align 4
  %arrayidx8 = getelementptr inbounds [12 x [12 x float]], ptr @fb, i32 0, i32 %6
  %7 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds [12 x float], ptr %arrayidx8, i32 0, i32 %7
  %8 = load float, ptr %arrayidx9, align 4
  %9 = load float, ptr %s, align 4
  %10 = call float @llvm.fmuladd.f32(float %5, float %8, float %9)
  store float %10, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %11 = load i32, ptr %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !16

for.end:                                          ; preds = %for.cond4
  %12 = load float, ptr %s, align 4
  %13 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr inbounds [12 x [12 x float]], ptr @fc, i32 0, i32 %13
  %14 = load i32, ptr %j, align 4
  %arrayidx11 = getelementptr inbounds [12 x float], ptr %arrayidx10, i32 0, i32 %14
  store float %12, ptr %arrayidx11, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %15 = load i32, ptr %j, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, ptr %j, align 4
  br label %for.cond1, !llvm.loop !17

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %16 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @transpose(ptr noundef %m) #0 {
entry:
  %m.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca float, align 4
  store ptr %m, ptr %m.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %2, 12
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %m.addr, align 4
  %4 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [12 x float], ptr %3, i32 %4
  %5 = load i32, ptr %j, align 4
  %arrayidx4 = getelementptr inbounds [12 x float], ptr %arrayidx, i32 0, i32 %5
  %6 = load float, ptr %arrayidx4, align 4
  store float %6, ptr %t, align 4
  %7 = load ptr, ptr %m.addr, align 4
  %8 = load i32, ptr %j, align 4
  %arrayidx5 = getelementptr inbounds [12 x float], ptr %7, i32 %8
  %9 = load i32, ptr %i, align 4
  %arrayidx6 = getelementptr inbounds [12 x float], ptr %arrayidx5, i32 0, i32 %9
  %10 = load float, ptr %arrayidx6, align 4
  %11 = load ptr, ptr %m.addr, align 4
  %12 = load i32, ptr %i, align 4
  %arrayidx7 = getelementptr inbounds [12 x float], ptr %11, i32 %12
  %13 = load i32, ptr %j, align 4
  %arrayidx8 = getelementptr inbounds [12 x float], ptr %arrayidx7, i32 0, i32 %13
  store float %10, ptr %arrayidx8, align 4
  %14 = load float, ptr %t, align 4
  %15 = load ptr, ptr %m.addr, align 4
  %16 = load i32, ptr %j, align 4
  %arrayidx9 = getelementptr inbounds [12 x float], ptr %15, i32 %16
  %17 = load i32, ptr %i, align 4
  %arrayidx10 = getelementptr inbounds [12 x float], ptr %arrayidx9, i32 0, i32 %17
  store float %14, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %18 = load i32, ptr %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !19

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal float @det(ptr noundef %m) #0 {
entry:
  %retval = alloca float, align 4
  %m.addr = alloca ptr, align 4
  %d = alloca float, align 4
  %col = alloca i32, align 4
  %piv = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca float, align 4
  %r32 = alloca i32, align 4
  %f = alloca float, align 4
  %k41 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 4
  store float 1.000000e+00, ptr %d, align 4
  store i32 0, ptr %col, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc56, %entry
  %0 = load i32, ptr %col, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end58

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %col, align 4
  store i32 %1, ptr %piv, align 4
  %2 = load i32, ptr %col, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, ptr %r, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %r, align 4
  %cmp2 = icmp slt i32 %3, 12
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %m.addr, align 4
  %5 = load i32, ptr %r, align 4
  %arrayidx = getelementptr inbounds [12 x float], ptr %4, i32 %5
  %6 = load i32, ptr %col, align 4
  %arrayidx4 = getelementptr inbounds [12 x float], ptr %arrayidx, i32 0, i32 %6
  %7 = load float, ptr %arrayidx4, align 4
  %8 = call float @llvm.fabs.f32(float %7)
  %9 = load ptr, ptr %m.addr, align 4
  %10 = load i32, ptr %piv, align 4
  %arrayidx5 = getelementptr inbounds [12 x float], ptr %9, i32 %10
  %11 = load i32, ptr %col, align 4
  %arrayidx6 = getelementptr inbounds [12 x float], ptr %arrayidx5, i32 0, i32 %11
  %12 = load float, ptr %arrayidx6, align 4
  %13 = call float @llvm.fabs.f32(float %12)
  %cmp7 = fcmp ogt float %8, %13
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %14 = load i32, ptr %r, align 4
  store i32 %14, ptr %piv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %r, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %r, align 4
  br label %for.cond1, !llvm.loop !21

for.end:                                          ; preds = %for.cond1
  %16 = load ptr, ptr %m.addr, align 4
  %17 = load i32, ptr %piv, align 4
  %arrayidx8 = getelementptr inbounds [12 x float], ptr %16, i32 %17
  %18 = load i32, ptr %col, align 4
  %arrayidx9 = getelementptr inbounds [12 x float], ptr %arrayidx8, i32 0, i32 %18
  %19 = load float, ptr %arrayidx9, align 4
  %cmp10 = fcmp oeq float %19, 0.000000e+00
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store float 0.000000e+00, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %for.end
  %20 = load i32, ptr %piv, align 4
  %21 = load i32, ptr %col, align 4
  %cmp13 = icmp ne i32 %20, %21
  br i1 %cmp13, label %if.then14, label %if.end29

if.then14:                                        ; preds = %if.end12
  store i32 0, ptr %k, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc26, %if.then14
  %22 = load i32, ptr %k, align 4
  %cmp16 = icmp slt i32 %22, 12
  br i1 %cmp16, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond15
  %23 = load ptr, ptr %m.addr, align 4
  %24 = load i32, ptr %col, align 4
  %arrayidx18 = getelementptr inbounds [12 x float], ptr %23, i32 %24
  %25 = load i32, ptr %k, align 4
  %arrayidx19 = getelementptr inbounds [12 x float], ptr %arrayidx18, i32 0, i32 %25
  %26 = load float, ptr %arrayidx19, align 4
  store float %26, ptr %t, align 4
  %27 = load ptr, ptr %m.addr, align 4
  %28 = load i32, ptr %piv, align 4
  %arrayidx20 = getelementptr inbounds [12 x float], ptr %27, i32 %28
  %29 = load i32, ptr %k, align 4
  %arrayidx21 = getelementptr inbounds [12 x float], ptr %arrayidx20, i32 0, i32 %29
  %30 = load float, ptr %arrayidx21, align 4
  %31 = load ptr, ptr %m.addr, align 4
  %32 = load i32, ptr %col, align 4
  %arrayidx22 = getelementptr inbounds [12 x float], ptr %31, i32 %32
  %33 = load i32, ptr %k, align 4
  %arrayidx23 = getelementptr inbounds [12 x float], ptr %arrayidx22, i32 0, i32 %33
  store float %30, ptr %arrayidx23, align 4
  %34 = load float, ptr %t, align 4
  %35 = load ptr, ptr %m.addr, align 4
  %36 = load i32, ptr %piv, align 4
  %arrayidx24 = getelementptr inbounds [12 x float], ptr %35, i32 %36
  %37 = load i32, ptr %k, align 4
  %arrayidx25 = getelementptr inbounds [12 x float], ptr %arrayidx24, i32 0, i32 %37
  store float %34, ptr %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body17
  %38 = load i32, ptr %k, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, ptr %k, align 4
  br label %for.cond15, !llvm.loop !22

for.end28:                                        ; preds = %for.cond15
  %39 = load float, ptr %d, align 4
  %fneg = fneg float %39
  store float %fneg, ptr %d, align 4
  br label %if.end29

if.end29:                                         ; preds = %for.end28, %if.end12
  %40 = load ptr, ptr %m.addr, align 4
  %41 = load i32, ptr %col, align 4
  %arrayidx30 = getelementptr inbounds [12 x float], ptr %40, i32 %41
  %42 = load i32, ptr %col, align 4
  %arrayidx31 = getelementptr inbounds [12 x float], ptr %arrayidx30, i32 0, i32 %42
  %43 = load float, ptr %arrayidx31, align 4
  %44 = load float, ptr %d, align 4
  %mul = fmul float %44, %43
  store float %mul, ptr %d, align 4
  %45 = load i32, ptr %col, align 4
  %add33 = add nsw i32 %45, 1
  store i32 %add33, ptr %r32, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc53, %if.end29
  %46 = load i32, ptr %r32, align 4
  %cmp35 = icmp slt i32 %46, 12
  br i1 %cmp35, label %for.body36, label %for.end55

for.body36:                                       ; preds = %for.cond34
  %47 = load ptr, ptr %m.addr, align 4
  %48 = load i32, ptr %r32, align 4
  %arrayidx37 = getelementptr inbounds [12 x float], ptr %47, i32 %48
  %49 = load i32, ptr %col, align 4
  %arrayidx38 = getelementptr inbounds [12 x float], ptr %arrayidx37, i32 0, i32 %49
  %50 = load float, ptr %arrayidx38, align 4
  %51 = load ptr, ptr %m.addr, align 4
  %52 = load i32, ptr %col, align 4
  %arrayidx39 = getelementptr inbounds [12 x float], ptr %51, i32 %52
  %53 = load i32, ptr %col, align 4
  %arrayidx40 = getelementptr inbounds [12 x float], ptr %arrayidx39, i32 0, i32 %53
  %54 = load float, ptr %arrayidx40, align 4
  %div = fdiv float %50, %54
  store float %div, ptr %f, align 4
  %55 = load i32, ptr %col, align 4
  store i32 %55, ptr %k41, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc50, %for.body36
  %56 = load i32, ptr %k41, align 4
  %cmp43 = icmp slt i32 %56, 12
  br i1 %cmp43, label %for.body44, label %for.end52

for.body44:                                       ; preds = %for.cond42
  %57 = load float, ptr %f, align 4
  %58 = load ptr, ptr %m.addr, align 4
  %59 = load i32, ptr %col, align 4
  %arrayidx45 = getelementptr inbounds [12 x float], ptr %58, i32 %59
  %60 = load i32, ptr %k41, align 4
  %arrayidx46 = getelementptr inbounds [12 x float], ptr %arrayidx45, i32 0, i32 %60
  %61 = load float, ptr %arrayidx46, align 4
  %62 = load ptr, ptr %m.addr, align 4
  %63 = load i32, ptr %r32, align 4
  %arrayidx48 = getelementptr inbounds [12 x float], ptr %62, i32 %63
  %64 = load i32, ptr %k41, align 4
  %arrayidx49 = getelementptr inbounds [12 x float], ptr %arrayidx48, i32 0, i32 %64
  %65 = load float, ptr %arrayidx49, align 4
  %neg = fneg float %57
  %66 = call float @llvm.fmuladd.f32(float %neg, float %61, float %65)
  store float %66, ptr %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.body44
  %67 = load i32, ptr %k41, align 4
  %inc51 = add nsw i32 %67, 1
  store i32 %inc51, ptr %k41, align 4
  br label %for.cond42, !llvm.loop !23

for.end52:                                        ; preds = %for.cond42
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %68 = load i32, ptr %r32, align 4
  %inc54 = add nsw i32 %68, 1
  store i32 %inc54, ptr %r32, align 4
  br label %for.cond34, !llvm.loop !24

for.end55:                                        ; preds = %for.cond34
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %69 = load i32, ptr %col, align 4
  %inc57 = add nsw i32 %69, 1
  store i32 %inc57, ptr %col, align 4
  br label %for.cond, !llvm.loop !25

for.end58:                                        ; preds = %for.cond
  %70 = load float, ptr %d, align 4
  store float %70, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end58, %if.then11
  %71 = load float, ptr %retval, align 4
  ret float %71
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
