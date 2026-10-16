; ModuleID = 'tests/programs/structs.c'
source_filename = "tests/programs/structs.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.P16 = type { i16, i16 }
%struct.Cf = type { float, float }
%struct.P32 = type { i32, i32 }
%struct.Big = type { [6 x i32], i8 }
%struct.Bits = type { i32 }
%struct.Box = type { %struct.P32, %struct.P32 }
%union.anon = type { float }

@__const.main.q = private unnamed_addr constant %struct.P16 { i16 3, i16 -7 }, align 2
@__const.main.z = private unnamed_addr constant %struct.Cf { float 1.000000e+00, float 5.000000e-01 }, align 4
@__const.main.w = private unnamed_addr constant %struct.Cf { float 7.500000e-01, float -2.500000e-01 }, align 4
@__const.main.big = private unnamed_addr constant { [6 x i32], i8, [3 x i8] } { [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], i8 107, [3 x i8] zeroinitializer }, align 4
@__const.main.bits = private unnamed_addr constant { i8, i8, i8, i8 } { i8 37, i8 -29, i8 46, i8 -81 }, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %acc = alloca %struct.P32, align 4
  %q = alloca %struct.P16, align 2
  %z = alloca %struct.Cf, align 4
  %w = alloca %struct.Cf, align 4
  %big = alloca %struct.Big, align 4
  %bits = alloca %struct.Bits, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca %struct.P32, align 4
  %.compoundliteral = alloca %struct.P32, align 4
  %tmp1 = alloca %struct.P16, align 2
  %tmp3 = alloca %struct.Cf, align 4
  %box = alloca %struct.Box, align 4
  %byval-temp = alloca %struct.Box, align 4
  %byval-temp15 = alloca %struct.Big, align 4
  %re = alloca %union.anon, align 4
  %im = alloca %union.anon, align 4
  call void @llvm.memset.p0.i32(ptr align 4 %acc, i8 0, i32 8, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %q, ptr align 2 @__const.main.q, i32 4, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %z, ptr align 4 @__const.main.z, i32 8, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %w, ptr align 4 @__const.main.w, i32 8, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %big, ptr align 4 @__const.main.big, i32 28, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %bits, ptr align 4 @__const.main.bits, i32 4, i1 false)
  store i32 0, ptr %h, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %x = getelementptr inbounds nuw %struct.P32, ptr %.compoundliteral, i32 0, i32 0
  %1 = load i32, ptr %i, align 4
  store i32 %1, ptr %x, align 4
  %y = getelementptr inbounds nuw %struct.P32, ptr %.compoundliteral, i32 0, i32 1
  %2 = load i32, ptr %i, align 4
  %mul = mul nsw i32 -2, %2
  store i32 %mul, ptr %y, align 4
  %3 = load [2 x i32], ptr %acc, align 4
  %4 = load [2 x i32], ptr %.compoundliteral, align 4
  %call = call [2 x i32] @add([2 x i32] %3, [2 x i32] %4) #4
  store [2 x i32] %call, ptr %tmp, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %acc, ptr align 4 %tmp, i32 8, i1 false)
  %5 = load i32, ptr %q, align 2
  %call2 = call i32 @swap16(i32 %5) #4
  store i32 %call2, ptr %tmp1, align 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %q, ptr align 2 %tmp1, i32 4, i1 false)
  %6 = getelementptr inbounds nuw { float, float }, ptr %z, i32 0, i32 0
  %7 = load float, ptr %6, align 4
  %8 = getelementptr inbounds nuw { float, float }, ptr %z, i32 0, i32 1
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw { float, float }, ptr %w, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = getelementptr inbounds nuw { float, float }, ptr %w, i32 0, i32 1
  %13 = load float, ptr %12, align 4
  %call4 = call { float, float } @cmul(float %7, float %9, float %11, float %13) #4
  %14 = getelementptr inbounds nuw { float, float }, ptr %tmp3, i32 0, i32 0
  %15 = extractvalue { float, float } %call4, 0
  store float %15, ptr %14, align 4
  %16 = getelementptr inbounds nuw { float, float }, ptr %tmp3, i32 0, i32 1
  %17 = extractvalue { float, float } %call4, 1
  store float %17, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %z, ptr align 4 %tmp3, i32 8, i1 false)
  %lo = getelementptr inbounds nuw %struct.Box, ptr %box, i32 0, i32 0
  %x5 = getelementptr inbounds nuw %struct.P32, ptr %lo, i32 0, i32 0
  %18 = load i32, ptr %i, align 4
  store i32 %18, ptr %x5, align 4
  %y6 = getelementptr inbounds nuw %struct.P32, ptr %lo, i32 0, i32 1
  %19 = load i32, ptr %i, align 4
  %sub = sub nsw i32 0, %19
  store i32 %sub, ptr %y6, align 4
  %hi = getelementptr inbounds nuw %struct.Box, ptr %box, i32 0, i32 1
  %x7 = getelementptr inbounds nuw %struct.P32, ptr %hi, i32 0, i32 0
  %20 = load i32, ptr %i, align 4
  %mul8 = mul nsw i32 3, %20
  %add = add nsw i32 %mul8, 1
  store i32 %add, ptr %x7, align 4
  %y9 = getelementptr inbounds nuw %struct.P32, ptr %hi, i32 0, i32 1
  %21 = load i32, ptr %i, align 4
  %add10 = add nsw i32 %21, 5
  store i32 %add10, ptr %y9, align 4
  %22 = load i32, ptr %h, align 4
  %mul11 = mul i32 %22, 17
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %byval-temp, ptr align 4 %box, i32 16, i1 false)
  %call12 = call i32 @area(ptr dead_on_return noundef %byval-temp) #4
  %add13 = add i32 %mul11, %call12
  store i32 %add13, ptr %h, align 4
  %23 = load i32, ptr %i, align 4
  %rem = srem i32 %23, 3
  %cmp14 = icmp eq i32 %rem, 0
  %24 = zext i1 %cmp14 to i64
  %cond = select i1 %cmp14, i32 -1, i32 1
  call void @scale(ptr noundef %big, i32 noundef %cond) #4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %byval-temp15, ptr align 4 %big, i32 28, i1 false)
  %call16 = call i32 @sum_big(ptr dead_on_return noundef %byval-temp15) #4
  %25 = load i32, ptr %h, align 4
  %add17 = add i32 %25, %call16
  store i32 %add17, ptr %h, align 4
  %bf.load = load i32, ptr %bits, align 4
  %bf.lshr = lshr i32 %bf.load, 3
  %bf.clear = and i32 %bf.lshr, 127
  %add18 = add nsw i32 %bf.clear, 13
  %and = and i32 %add18, 127
  %bf.load19 = load i32, ptr %bits, align 4
  %bf.value = and i32 %and, 127
  %bf.shl = shl i32 %bf.value, 3
  %bf.clear20 = and i32 %bf.load19, -1017
  %bf.set = or i32 %bf.clear20, %bf.shl
  store i32 %bf.set, ptr %bits, align 4
  %26 = load i32, ptr %i, align 4
  %mul21 = mul i32 %26, 37
  %bf.load22 = load i32, ptr %bits, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 10
  %bf.clear24 = and i32 %bf.lshr23, 4095
  %xor = xor i32 %bf.clear24, %mul21
  %bf.load25 = load i32, ptr %bits, align 4
  %bf.value26 = and i32 %xor, 4095
  %bf.shl27 = shl i32 %bf.value26, 10
  %bf.clear28 = and i32 %bf.load25, -4193281
  %bf.set29 = or i32 %bf.clear28, %bf.shl27
  store i32 %bf.set29, ptr %bits, align 4
  %coerce.dive = getelementptr inbounds nuw %struct.Bits, ptr %bits, i32 0, i32 0
  %27 = load i32, ptr %coerce.dive, align 4
  %call30 = call i32 @pack(i32 %27) #4
  %28 = load i32, ptr %h, align 4
  %xor31 = xor i32 %28, %call30
  store i32 %xor31, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %re32 = getelementptr inbounds nuw %struct.Cf, ptr %z, i32 0, i32 0
  %30 = load float, ptr %re32, align 4
  store float %30, ptr %re, align 4
  %im33 = getelementptr inbounds nuw %struct.Cf, ptr %z, i32 0, i32 1
  %31 = load float, ptr %im33, align 4
  store float %31, ptr %im, align 4
  %32 = load i32, ptr %h, align 4
  %x34 = getelementptr inbounds nuw %struct.P32, ptr %acc, i32 0, i32 0
  %33 = load i32, ptr %x34, align 4
  %mul35 = mul i32 %33, 3
  %add36 = add i32 %32, %mul35
  %y37 = getelementptr inbounds nuw %struct.P32, ptr %acc, i32 0, i32 1
  %34 = load i32, ptr %y37, align 4
  %add38 = add i32 %add36, %34
  %x39 = getelementptr inbounds nuw %struct.P16, ptr %q, i32 0, i32 0
  %35 = load i16, ptr %x39, align 2
  %conv = sext i16 %35 to i32
  %mul40 = mul i32 %conv, 5
  %add41 = add i32 %add38, %mul40
  %y42 = getelementptr inbounds nuw %struct.P16, ptr %q, i32 0, i32 1
  %36 = load i16, ptr %y42, align 2
  %conv43 = sext i16 %36 to i32
  %add44 = add i32 %add41, %conv43
  %37 = load i32, ptr %re, align 4
  %shr = lshr i32 %37, 7
  %add45 = add i32 %add44, %shr
  %38 = load i32, ptr %im, align 4
  %shr46 = lshr i32 %38, 9
  %add47 = add i32 %add45, %shr46
  ret i32 %add47
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal [2 x i32] @add([2 x i32] %a.coerce, [2 x i32] %b.coerce) #0 {
entry:
  %retval = alloca %struct.P32, align 4
  %a = alloca %struct.P32, align 4
  %b = alloca %struct.P32, align 4
  store [2 x i32] %a.coerce, ptr %a, align 4
  store [2 x i32] %b.coerce, ptr %b, align 4
  %x = getelementptr inbounds nuw %struct.P32, ptr %retval, i32 0, i32 0
  %x1 = getelementptr inbounds nuw %struct.P32, ptr %a, i32 0, i32 0
  %0 = load i32, ptr %x1, align 4
  %x2 = getelementptr inbounds nuw %struct.P32, ptr %b, i32 0, i32 0
  %1 = load i32, ptr %x2, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %x, align 4
  %y = getelementptr inbounds nuw %struct.P32, ptr %retval, i32 0, i32 1
  %y3 = getelementptr inbounds nuw %struct.P32, ptr %a, i32 0, i32 1
  %2 = load i32, ptr %y3, align 4
  %y4 = getelementptr inbounds nuw %struct.P32, ptr %b, i32 0, i32 1
  %3 = load i32, ptr %y4, align 4
  %add5 = add nsw i32 %2, %3
  store i32 %add5, ptr %y, align 4
  %4 = load [2 x i32], ptr %retval, align 4
  ret [2 x i32] %4
}

; Function Attrs: noinline nounwind optnone
define internal i32 @swap16(i32 %p.coerce) #0 {
entry:
  %retval = alloca %struct.P16, align 2
  %p = alloca %struct.P16, align 2
  store i32 %p.coerce, ptr %p, align 2
  %x = getelementptr inbounds nuw %struct.P16, ptr %retval, i32 0, i32 0
  %y = getelementptr inbounds nuw %struct.P16, ptr %p, i32 0, i32 1
  %0 = load i16, ptr %y, align 2
  store i16 %0, ptr %x, align 2
  %y1 = getelementptr inbounds nuw %struct.P16, ptr %retval, i32 0, i32 1
  %x2 = getelementptr inbounds nuw %struct.P16, ptr %p, i32 0, i32 0
  %1 = load i16, ptr %x2, align 2
  store i16 %1, ptr %y1, align 2
  %2 = load i32, ptr %retval, align 2
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone
define internal { float, float } @cmul(float %0, float %1, float %2, float %3) #0 {
entry:
  %retval = alloca %struct.Cf, align 4
  %a = alloca %struct.Cf, align 4
  %b = alloca %struct.Cf, align 4
  %4 = getelementptr inbounds nuw { float, float }, ptr %a, i32 0, i32 0
  store float %0, ptr %4, align 4
  %5 = getelementptr inbounds nuw { float, float }, ptr %a, i32 0, i32 1
  store float %1, ptr %5, align 4
  %6 = getelementptr inbounds nuw { float, float }, ptr %b, i32 0, i32 0
  store float %2, ptr %6, align 4
  %7 = getelementptr inbounds nuw { float, float }, ptr %b, i32 0, i32 1
  store float %3, ptr %7, align 4
  %re = getelementptr inbounds nuw %struct.Cf, ptr %retval, i32 0, i32 0
  %re2 = getelementptr inbounds nuw %struct.Cf, ptr %a, i32 0, i32 0
  %8 = load float, ptr %re2, align 4
  %re3 = getelementptr inbounds nuw %struct.Cf, ptr %b, i32 0, i32 0
  %9 = load float, ptr %re3, align 4
  %im = getelementptr inbounds nuw %struct.Cf, ptr %a, i32 0, i32 1
  %10 = load float, ptr %im, align 4
  %im4 = getelementptr inbounds nuw %struct.Cf, ptr %b, i32 0, i32 1
  %11 = load float, ptr %im4, align 4
  %mul5 = fmul float %10, %11
  %neg = fneg float %mul5
  %12 = call float @llvm.fmuladd.f32(float %8, float %9, float %neg)
  store float %12, ptr %re, align 4
  %im6 = getelementptr inbounds nuw %struct.Cf, ptr %retval, i32 0, i32 1
  %re7 = getelementptr inbounds nuw %struct.Cf, ptr %a, i32 0, i32 0
  %13 = load float, ptr %re7, align 4
  %im8 = getelementptr inbounds nuw %struct.Cf, ptr %b, i32 0, i32 1
  %14 = load float, ptr %im8, align 4
  %im9 = getelementptr inbounds nuw %struct.Cf, ptr %a, i32 0, i32 1
  %15 = load float, ptr %im9, align 4
  %re10 = getelementptr inbounds nuw %struct.Cf, ptr %b, i32 0, i32 0
  %16 = load float, ptr %re10, align 4
  %mul11 = fmul float %15, %16
  %17 = call float @llvm.fmuladd.f32(float %13, float %14, float %mul11)
  store float %17, ptr %im6, align 4
  %18 = getelementptr inbounds nuw { float, float }, ptr %retval, i32 0, i32 0
  %19 = load float, ptr %18, align 4
  %20 = getelementptr inbounds nuw { float, float }, ptr %retval, i32 0, i32 1
  %21 = load float, ptr %20, align 4
  %22 = insertvalue { float, float } poison, float %19, 0
  %23 = insertvalue { float, float } %22, float %21, 1
  ret { float, float } %23
}

; Function Attrs: noinline nounwind optnone
define internal i32 @area(ptr dead_on_return noundef %b) #0 {
entry:
  %b.indirect_addr = alloca ptr, align 4
  store ptr %b, ptr %b.indirect_addr, align 4
  %hi = getelementptr inbounds nuw %struct.Box, ptr %b, i32 0, i32 1
  %x = getelementptr inbounds nuw %struct.P32, ptr %hi, i32 0, i32 0
  %0 = load i32, ptr %x, align 4
  %lo = getelementptr inbounds nuw %struct.Box, ptr %b, i32 0, i32 0
  %x1 = getelementptr inbounds nuw %struct.P32, ptr %lo, i32 0, i32 0
  %1 = load i32, ptr %x1, align 4
  %sub = sub nsw i32 %0, %1
  %hi2 = getelementptr inbounds nuw %struct.Box, ptr %b, i32 0, i32 1
  %y = getelementptr inbounds nuw %struct.P32, ptr %hi2, i32 0, i32 1
  %2 = load i32, ptr %y, align 4
  %lo3 = getelementptr inbounds nuw %struct.Box, ptr %b, i32 0, i32 0
  %y4 = getelementptr inbounds nuw %struct.P32, ptr %lo3, i32 0, i32 1
  %3 = load i32, ptr %y4, align 4
  %sub5 = sub nsw i32 %2, %3
  %mul = mul nsw i32 %sub, %sub5
  ret i32 %mul
}

; Function Attrs: noinline nounwind optnone
define internal void @scale(ptr noundef %b, i32 noundef %k) #0 {
entry:
  %b.addr = alloca ptr, align 4
  %k.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %k.addr, align 4
  %2 = load ptr, ptr %b.addr, align 4
  %v = getelementptr inbounds nuw %struct.Big, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [6 x i32], ptr %v, i32 0, i32 %3
  %4 = load i32, ptr %arrayidx, align 4
  %mul = mul nsw i32 %4, %1
  store i32 %mul, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal i32 @sum_big(ptr dead_on_return noundef %b) #0 {
entry:
  %b.indirect_addr = alloca ptr, align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %b, ptr %b.indirect_addr, align 4
  %tag = getelementptr inbounds nuw %struct.Big, ptr %b, i32 0, i32 1
  %0 = load i8, ptr %tag, align 4
  %conv = zext i8 %0 to i32
  store i32 %conv, ptr %s, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %v = getelementptr inbounds nuw %struct.Big, ptr %b, i32 0, i32 0
  %2 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [6 x i32], ptr %v, i32 0, i32 %2
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load i32, ptr %i, align 4
  %add = add nsw i32 %4, 1
  %mul = mul nsw i32 %3, %add
  %5 = load i32, ptr %s, align 4
  %add2 = add nsw i32 %5, %mul
  store i32 %add2, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %s, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone
define internal i32 @pack(i32 %b.coerce) #0 {
entry:
  %b = alloca %struct.Bits, align 4
  %coerce.dive = getelementptr inbounds nuw %struct.Bits, ptr %b, i32 0, i32 0
  store i32 %b.coerce, ptr %coerce.dive, align 4
  %bf.load = load i32, ptr %b, align 4
  %bf.clear = and i32 %bf.load, 7
  %bf.load1 = load i32, ptr %b, align 4
  %bf.lshr = lshr i32 %bf.load1, 3
  %bf.clear2 = and i32 %bf.lshr, 127
  %shl = shl i32 %bf.clear2, 3
  %or = or i32 %bf.clear, %shl
  %bf.load3 = load i32, ptr %b, align 4
  %bf.lshr4 = lshr i32 %bf.load3, 10
  %bf.clear5 = and i32 %bf.lshr4, 4095
  %shl6 = shl i32 %bf.clear5, 10
  %or7 = or i32 %or, %shl6
  %bf.load8 = load i32, ptr %b, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 22
  %shl10 = shl i32 %bf.lshr9, 22
  %or11 = or i32 %or7, %shl10
  ret i32 %or11
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin "no-builtins" }

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
