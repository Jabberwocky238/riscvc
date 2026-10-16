; ModuleID = 'tests/programs/bitint.c'
source_filename = "tests/programs/bitint.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@s = internal global i64 -7046029254386353131, align 8

; Function Attrs: noinline nounwind optnone
define dso_local void @mix128(ptr dead_on_unwind noalias writable sret(i128) align 8 %agg.result, ptr dead_on_return noundef %0, ptr dead_on_return noundef %1, i32 noundef %sh) #0 {
entry:
  %result.ptr = alloca ptr, align 4
  %a.addr = alloca i128, align 8
  %b.addr = alloca i128, align 8
  %sh.addr = alloca i32, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  %a = load i128, ptr %0, align 8
  %b = load i128, ptr %1, align 8
  store i128 %a, ptr %a.addr, align 8
  store i128 %b, ptr %b.addr, align 8
  store i32 %sh, ptr %sh.addr, align 4
  %2 = load i128, ptr %a.addr, align 8
  %3 = load i128, ptr %b.addr, align 8
  %mul = mul i128 %2, %3
  %4 = load i128, ptr %a.addr, align 8
  %5 = load i32, ptr %sh.addr, align 4
  %sh_prom = zext i32 %5 to i128
  %shl = shl i128 %4, %sh_prom
  %xor = xor i128 %mul, %shl
  %6 = load i128, ptr %b.addr, align 8
  %7 = load i32, ptr %sh.addr, align 4
  %sub = sub nsw i32 127, %7
  %sh_prom1 = zext i32 %sub to i128
  %shr = lshr i128 %6, %sh_prom1
  %xor2 = xor i128 %xor, %shr
  %8 = load i128, ptr %a.addr, align 8
  %9 = load i128, ptr %b.addr, align 8
  %add = add i128 %8, %9
  %xor3 = xor i128 %xor2, %add
  %10 = load i128, ptr %a.addr, align 8
  %11 = load i128, ptr %b.addr, align 8
  %sub4 = sub i128 %10, %11
  %xor5 = xor i128 %xor3, %sub4
  %12 = load i128, ptr %a.addr, align 8
  %shl6 = shl i128 %12, 37
  %xor7 = xor i128 %xor5, %shl6
  %13 = load i128, ptr %b.addr, align 8
  %shr8 = lshr i128 %13, 70
  %xor9 = xor i128 %xor7, %shr8
  %14 = load i128, ptr %a.addr, align 8
  %15 = load i32, ptr %sh.addr, align 4
  %sh_prom10 = zext i32 %15 to i128
  %shr11 = ashr i128 %14, %sh_prom10
  %xor12 = xor i128 %xor9, %shr11
  store i128 %xor12, ptr %agg.result, align 8
  %16 = load i128, ptr %agg.result, align 8
  store i128 %16, ptr %agg.result, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @sdiv128(ptr dead_on_unwind noalias writable sret(i128) align 8 %agg.result, ptr dead_on_return noundef %0, ptr dead_on_return noundef %1) #0 {
entry:
  %result.ptr = alloca ptr, align 4
  %a.addr = alloca i128, align 8
  %b.addr = alloca i128, align 8
  store ptr %agg.result, ptr %result.ptr, align 4
  %a = load i128, ptr %0, align 8
  %b = load i128, ptr %1, align 8
  store i128 %a, ptr %a.addr, align 8
  store i128 %b, ptr %b.addr, align 8
  %2 = load i128, ptr %a.addr, align 8
  %3 = load i128, ptr %b.addr, align 8
  %div = sdiv i128 %2, %3
  %4 = load i128, ptr %a.addr, align 8
  %5 = load i128, ptr %b.addr, align 8
  %rem = srem i128 %4, %5
  %add = add i128 %div, %rem
  store i128 %add, ptr %agg.result, align 8
  %6 = load i128, ptr %agg.result, align 8
  store i128 %6, ptr %agg.result, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @udiv128(ptr dead_on_unwind noalias writable sret(i128) align 8 %agg.result, ptr dead_on_return noundef %0, ptr dead_on_return noundef %1) #0 {
entry:
  %result.ptr = alloca ptr, align 4
  %a.addr = alloca i128, align 8
  %b.addr = alloca i128, align 8
  store ptr %agg.result, ptr %result.ptr, align 4
  %a = load i128, ptr %0, align 8
  %b = load i128, ptr %1, align 8
  store i128 %a, ptr %a.addr, align 8
  store i128 %b, ptr %b.addr, align 8
  %2 = load i128, ptr %a.addr, align 8
  %3 = load i128, ptr %b.addr, align 8
  %div = udiv i128 %2, %3
  %4 = load i128, ptr %a.addr, align 8
  %5 = load i128, ptr %b.addr, align 8
  %rem = urem i128 %4, %5
  %xor = xor i128 %div, %rem
  store i128 %xor, ptr %agg.result, align 8
  %6 = load i128, ptr %agg.result, align 8
  store i128 %6, ptr %agg.result, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @mix112(ptr dead_on_unwind noalias writable sret(i128) align 8 %agg.result, ptr dead_on_return noundef %0, ptr dead_on_return noundef %1, i32 noundef %sh) #0 {
entry:
  %result.ptr = alloca ptr, align 4
  %a.addr = alloca i128, align 8
  %b.addr = alloca i128, align 8
  %sh.addr = alloca i32, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  %2 = load i128, ptr %0, align 8
  %a = trunc i128 %2 to i112
  %3 = load i128, ptr %1, align 8
  %b = trunc i128 %3 to i112
  %storedv = sext i112 %a to i128
  store i128 %storedv, ptr %a.addr, align 8
  %storedv2 = sext i112 %b to i128
  store i128 %storedv2, ptr %b.addr, align 8
  store i32 %sh, ptr %sh.addr, align 4
  %4 = load i128, ptr %a.addr, align 8
  %loadedv = trunc i128 %4 to i112
  %5 = load i128, ptr %b.addr, align 8
  %loadedv3 = trunc i128 %5 to i112
  %mul = mul i112 %loadedv, %loadedv3
  %6 = load i128, ptr %a.addr, align 8
  %loadedv4 = trunc i128 %6 to i112
  %7 = load i32, ptr %sh.addr, align 4
  %sh_prom = zext i32 %7 to i112
  %shr = ashr i112 %loadedv4, %sh_prom
  %add = add i112 %mul, %shr
  %8 = load i128, ptr %b.addr, align 8
  %loadedv5 = trunc i128 %8 to i112
  %9 = load i32, ptr %sh.addr, align 4
  %div = sdiv i32 %9, 2
  %sh_prom6 = zext i32 %div to i112
  %shl = shl i112 %loadedv5, %sh_prom6
  %sub = sub i112 %add, %shl
  %10 = load i128, ptr %a.addr, align 8
  %loadedv7 = trunc i128 %10 to i112
  %11 = load i128, ptr %b.addr, align 8
  %loadedv8 = trunc i128 %11 to i112
  %shr9 = ashr i112 %loadedv8, 60
  %or = or i112 %shr9, 1
  %div10 = sdiv i112 %loadedv7, %or
  %add11 = add nsw i112 %sub, %div10
  %12 = load i128, ptr %a.addr, align 8
  %loadedv12 = trunc i128 %12 to i112
  %13 = load i128, ptr %b.addr, align 8
  %loadedv13 = trunc i128 %13 to i112
  %or14 = or i112 %loadedv13, 1
  %rem = srem i112 %loadedv12, %or14
  %add15 = add nsw i112 %add11, %rem
  %storedv16 = sext i112 %add15 to i128
  store i128 %storedv16, ptr %agg.result, align 8
  %14 = load i128, ptr %agg.result, align 8
  %loadedv17 = trunc i128 %14 to i112
  %storedv18 = sext i112 %loadedv17 to i128
  store i128 %storedv18, ptr %agg.result, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @mix96(ptr dead_on_unwind noalias writable sret(i128) align 8 %agg.result, ptr dead_on_return noundef %0, ptr dead_on_return noundef %1) #0 {
entry:
  %result.ptr = alloca ptr, align 4
  %a.addr = alloca i128, align 8
  %b.addr = alloca i128, align 8
  store ptr %agg.result, ptr %result.ptr, align 4
  %2 = load i128, ptr %0, align 8
  %a = trunc i128 %2 to i96
  %3 = load i128, ptr %1, align 8
  %b = trunc i128 %3 to i96
  %storedv = sext i96 %a to i128
  store i128 %storedv, ptr %a.addr, align 8
  %storedv2 = sext i96 %b to i128
  store i128 %storedv2, ptr %b.addr, align 8
  %4 = load i128, ptr %a.addr, align 8
  %loadedv = trunc i128 %4 to i96
  %5 = load i128, ptr %b.addr, align 8
  %loadedv3 = trunc i128 %5 to i96
  %mul = mul i96 %loadedv, %loadedv3
  %6 = load i128, ptr %a.addr, align 8
  %loadedv4 = trunc i128 %6 to i96
  %shr = ashr i96 %loadedv4, 50
  %sub = sub i96 %mul, %shr
  %7 = load i128, ptr %a.addr, align 8
  %loadedv5 = trunc i128 %7 to i96
  %8 = load i128, ptr %b.addr, align 8
  %loadedv6 = trunc i128 %8 to i96
  %or = or i96 %loadedv6, 1
  %div = sdiv i96 %loadedv5, %or
  %add = add nsw i96 %sub, %div
  %storedv7 = sext i96 %add to i128
  store i128 %storedv7, ptr %agg.result, align 8
  %9 = load i128, ptr %agg.result, align 8
  %loadedv8 = trunc i128 %9 to i96
  %storedv9 = sext i96 %loadedv8 to i128
  store i128 %storedv9, ptr %agg.result, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local zeroext i48 @mix48(i48 noundef zeroext %a, i48 noundef signext %b, i32 noundef %sh) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %sh.addr = alloca i32, align 4
  %storedv = zext i48 %a to i64
  store i64 %storedv, ptr %a.addr, align 8
  %storedv1 = sext i48 %b to i64
  store i64 %storedv1, ptr %b.addr, align 8
  store i32 %sh, ptr %sh.addr, align 4
  %0 = load i64, ptr %a.addr, align 8
  %loadedv = trunc i64 %0 to i48
  %1 = load i64, ptr %b.addr, align 8
  %loadedv2 = trunc i64 %1 to i48
  %mul = mul i48 %loadedv, %loadedv2
  %2 = load i64, ptr %b.addr, align 8
  %loadedv3 = trunc i64 %2 to i48
  %3 = load i32, ptr %sh.addr, align 4
  %sh_prom = zext i32 %3 to i48
  %shr = ashr i48 %loadedv3, %sh_prom
  %add = add i48 %mul, %shr
  %4 = load i64, ptr %a.addr, align 8
  %loadedv4 = trunc i64 %4 to i48
  %5 = load i64, ptr %b.addr, align 8
  %loadedv5 = trunc i64 %5 to i48
  %or = or i48 %loadedv5, 1
  %div = udiv i48 %loadedv4, %or
  %add6 = add i48 %add, %div
  %6 = load i64, ptr %b.addr, align 8
  %loadedv7 = trunc i64 %6 to i48
  %rem = srem i48 %loadedv7, 1000
  %add8 = add i48 %add6, %rem
  ret i48 %add8
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i128, align 8
  %tmp = alloca i128, align 8
  %b = alloca i128, align 8
  %tmp1 = alloca i128, align 8
  %sh = alloca i32, align 4
  %tmp2 = alloca i128, align 8
  %byval-temp = alloca i128, align 8
  %byval-temp3 = alloca i128, align 8
  %byval-temp4 = alloca i128, align 8
  %tmp9 = alloca i128, align 8
  %byval-temp10 = alloca i128, align 8
  %byval-temp11 = alloca i128, align 8
  %byval-temp12 = alloca i128, align 8
  %tmp20 = alloca i128, align 8
  %byval-temp21 = alloca i128, align 8
  %byval-temp22 = alloca i128, align 8
  %byval-temp23 = alloca i128, align 8
  %c = alloca i128, align 8
  %d = alloca i128, align 8
  %tmp35 = alloca i128, align 8
  %byval-temp36 = alloca i128, align 8
  %byval-temp38 = alloca i128, align 8
  %byval-temp42 = alloca i128, align 8
  %tmp48 = alloca i128, align 8
  %byval-temp49 = alloca i128, align 8
  %byval-temp51 = alloca i128, align 8
  %byval-temp55 = alloca i128, align 8
  store i32 0, ptr %h, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @make128(ptr dead_on_unwind writable sret(i128) align 8 %tmp) #1
  %1 = load i128, ptr %tmp, align 8
  store i128 %1, ptr %a, align 8
  call void @make128(ptr dead_on_unwind writable sret(i128) align 8 %tmp1) #1
  %2 = load i128, ptr %tmp1, align 8
  %or = or i128 %2, 1
  store i128 %or, ptr %b, align 8
  %call = call i64 @next() #1
  %rem = urem i64 %call, 128
  %conv = trunc i64 %rem to i32
  store i32 %conv, ptr %sh, align 4
  %3 = load i32, ptr %h, align 4
  %mul = mul i32 %3, 33
  %4 = load i128, ptr %a, align 8
  %5 = load i128, ptr %b, align 8
  %6 = load i32, ptr %sh, align 4
  store i128 %4, ptr %byval-temp, align 8
  store i128 %5, ptr %byval-temp3, align 8
  call void @mix128(ptr dead_on_unwind writable sret(i128) align 8 %tmp2, ptr dead_on_return noundef %byval-temp, ptr dead_on_return noundef %byval-temp3, i32 noundef %6) #1
  %7 = load i128, ptr %tmp2, align 8
  store i128 %7, ptr %byval-temp4, align 8
  %call5 = call i32 @fold(ptr dead_on_return noundef %byval-temp4) #1
  %add = add i32 %mul, %call5
  store i32 %add, ptr %h, align 4
  %8 = load i32, ptr %h, align 4
  %mul6 = mul i32 %8, 33
  %9 = load i128, ptr %a, align 8
  %10 = load i128, ptr %b, align 8
  %11 = load i32, ptr %i, align 4
  %mul7 = mul nsw i32 %11, 3
  %sh_prom = zext i32 %mul7 to i128
  %shr = lshr i128 %10, %sh_prom
  %or8 = or i128 %shr, 1
  store i128 %9, ptr %byval-temp10, align 8
  store i128 %or8, ptr %byval-temp11, align 8
  call void @sdiv128(ptr dead_on_unwind writable sret(i128) align 8 %tmp9, ptr dead_on_return noundef %byval-temp10, ptr dead_on_return noundef %byval-temp11) #1
  %12 = load i128, ptr %tmp9, align 8
  store i128 %12, ptr %byval-temp12, align 8
  %call13 = call i32 @fold(ptr dead_on_return noundef %byval-temp12) #1
  %add14 = add i32 %mul6, %call13
  store i32 %add14, ptr %h, align 4
  %13 = load i32, ptr %h, align 4
  %mul15 = mul i32 %13, 33
  %14 = load i128, ptr %a, align 8
  %15 = load i128, ptr %b, align 8
  %16 = load i32, ptr %i, align 4
  %mul16 = mul nsw i32 %16, 3
  %sh_prom17 = zext i32 %mul16 to i128
  %shr18 = lshr i128 %15, %sh_prom17
  %or19 = or i128 %shr18, 1
  store i128 %14, ptr %byval-temp21, align 8
  store i128 %or19, ptr %byval-temp22, align 8
  call void @udiv128(ptr dead_on_unwind writable sret(i128) align 8 %tmp20, ptr dead_on_return noundef %byval-temp21, ptr dead_on_return noundef %byval-temp22) #1
  %17 = load i128, ptr %tmp20, align 8
  store i128 %17, ptr %byval-temp23, align 8
  %call24 = call i32 @fold(ptr dead_on_return noundef %byval-temp23) #1
  %add25 = add i32 %mul15, %call24
  store i32 %add25, ptr %h, align 4
  %18 = load i128, ptr %a, align 8
  %conv26 = trunc i128 %18 to i112
  %storedv = sext i112 %conv26 to i128
  store i128 %storedv, ptr %c, align 8
  %19 = load i128, ptr %b, align 8
  %20 = load i32, ptr %i, align 4
  %mul27 = mul nsw i32 %20, 2
  %sh_prom28 = zext i32 %mul27 to i128
  %shr29 = lshr i128 %19, %sh_prom28
  %conv30 = trunc i128 %shr29 to i112
  %storedv31 = sext i112 %conv30 to i128
  store i128 %storedv31, ptr %d, align 8
  %21 = load i32, ptr %h, align 4
  %mul32 = mul i32 %21, 33
  %22 = load i128, ptr %c, align 8
  %loadedv = trunc i128 %22 to i112
  %23 = load i128, ptr %d, align 8
  %loadedv33 = trunc i128 %23 to i112
  %24 = load i32, ptr %sh, align 4
  %rem34 = srem i32 %24, 112
  %storedv37 = sext i112 %loadedv to i128
  store i128 %storedv37, ptr %byval-temp36, align 8
  %storedv39 = sext i112 %loadedv33 to i128
  store i128 %storedv39, ptr %byval-temp38, align 8
  call void @mix112(ptr dead_on_unwind writable sret(i128) align 8 %tmp35, ptr dead_on_return noundef %byval-temp36, ptr dead_on_return noundef %byval-temp38, i32 noundef %rem34) #1
  %25 = load i128, ptr %tmp35, align 8
  %loadedv40 = trunc i128 %25 to i112
  %conv41 = sext i112 %loadedv40 to i128
  store i128 %conv41, ptr %byval-temp42, align 8
  %call43 = call i32 @fold(ptr dead_on_return noundef %byval-temp42) #1
  %add44 = add i32 %mul32, %call43
  store i32 %add44, ptr %h, align 4
  %26 = load i32, ptr %h, align 4
  %mul45 = mul i32 %26, 33
  %27 = load i128, ptr %a, align 8
  %conv46 = trunc i128 %27 to i96
  %28 = load i128, ptr %b, align 8
  %conv47 = trunc i128 %28 to i96
  %storedv50 = sext i96 %conv46 to i128
  store i128 %storedv50, ptr %byval-temp49, align 8
  %storedv52 = sext i96 %conv47 to i128
  store i128 %storedv52, ptr %byval-temp51, align 8
  call void @mix96(ptr dead_on_unwind writable sret(i128) align 8 %tmp48, ptr dead_on_return noundef %byval-temp49, ptr dead_on_return noundef %byval-temp51) #1
  %29 = load i128, ptr %tmp48, align 8
  %loadedv53 = trunc i128 %29 to i96
  %conv54 = sext i96 %loadedv53 to i128
  store i128 %conv54, ptr %byval-temp55, align 8
  %call56 = call i32 @fold(ptr dead_on_return noundef %byval-temp55) #1
  %add57 = add i32 %mul45, %call56
  store i32 %add57, ptr %h, align 4
  %30 = load i32, ptr %h, align 4
  %mul58 = mul i32 %30, 33
  %31 = load i128, ptr %a, align 8
  %conv59 = trunc i128 %31 to i48
  %32 = load i128, ptr %b, align 8
  %conv60 = trunc i128 %32 to i48
  %33 = load i32, ptr %sh, align 4
  %rem61 = srem i32 %33, 48
  %call62 = call zeroext i48 @mix48(i48 noundef zeroext %conv59, i48 noundef signext %conv60, i32 noundef %rem61) #1
  %conv63 = trunc i48 %call62 to i32
  %add64 = add i32 %mul58, %conv63
  store i32 %add64, ptr %h, align 4
  %34 = load i128, ptr %a, align 8
  %35 = load i128, ptr %b, align 8
  %cmp65 = icmp ult i128 %34, %35
  %conv66 = zext i1 %cmp65 to i32
  %36 = load i128, ptr %a, align 8
  %37 = load i128, ptr %b, align 8
  %cmp67 = icmp slt i128 %36, %37
  %conv68 = zext i1 %cmp67 to i32
  %mul69 = mul nsw i32 %conv68, 2
  %add70 = add nsw i32 %conv66, %mul69
  %38 = load i128, ptr %c, align 8
  %loadedv71 = trunc i128 %38 to i112
  %39 = load i128, ptr %d, align 8
  %loadedv72 = trunc i128 %39 to i112
  %cmp73 = icmp sge i112 %loadedv71, %loadedv72
  %conv74 = zext i1 %cmp73 to i32
  %mul75 = mul nsw i32 %conv74, 4
  %add76 = add nsw i32 %add70, %mul75
  %40 = load i128, ptr %a, align 8
  %conv77 = trunc i128 %40 to i96
  %41 = load i128, ptr %b, align 8
  %conv78 = trunc i128 %41 to i96
  %cmp79 = icmp sgt i96 %conv77, %conv78
  %conv80 = zext i1 %cmp79 to i32
  %mul81 = mul nsw i32 %conv80, 8
  %add82 = add nsw i32 %add76, %mul81
  %42 = load i128, ptr %a, align 8
  %shr83 = ashr i128 %42, 120
  %conv84 = trunc i128 %shr83 to i8
  %conv85 = sext i8 %conv84 to i32
  %add86 = add i32 %add82, %conv85
  %43 = load i32, ptr %h, align 4
  %add87 = add i32 %43, %add86
  store i32 %add87, ptr %h, align 4
  %44 = load i128, ptr %c, align 8
  %loadedv88 = trunc i128 %44 to i112
  %shr89 = ashr i112 %loadedv88, 64
  %conv90 = trunc i112 %shr89 to i48
  %conv91 = trunc i48 %conv90 to i32
  %45 = load i128, ptr %d, align 8
  %loadedv92 = trunc i128 %45 to i112
  %conv93 = sext i112 %loadedv92 to i128
  %conv94 = trunc i128 %conv93 to i48
  %conv95 = trunc i48 %conv94 to i32
  %add96 = add i32 %conv91, %conv95
  %46 = load i32, ptr %h, align 4
  %add97 = add i32 %46, %add96
  store i32 %add97, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %48 = load i32, ptr %h, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone
define internal void @make128(ptr dead_on_unwind noalias writable sret(i128) align 8 %agg.result) #0 {
entry:
  %result.ptr = alloca ptr, align 4
  store ptr %agg.result, ptr %result.ptr, align 4
  %call = call i64 @next() #1
  %conv = zext i64 %call to i128
  %shl = shl i128 %conv, 64
  %call1 = call i64 @next() #1
  %conv2 = zext i64 %call1 to i128
  %or = or i128 %shl, %conv2
  store i128 %or, ptr %agg.result, align 8
  %0 = load i128, ptr %agg.result, align 8
  store i128 %0, ptr %agg.result, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal i64 @next() #0 {
entry:
  %0 = load i64, ptr @s, align 8
  %shl = shl i64 %0, 13
  %1 = load i64, ptr @s, align 8
  %xor = xor i64 %1, %shl
  store i64 %xor, ptr @s, align 8
  %2 = load i64, ptr @s, align 8
  %shr = lshr i64 %2, 7
  %3 = load i64, ptr @s, align 8
  %xor1 = xor i64 %3, %shr
  store i64 %xor1, ptr @s, align 8
  %4 = load i64, ptr @s, align 8
  %shl2 = shl i64 %4, 17
  %5 = load i64, ptr @s, align 8
  %xor3 = xor i64 %5, %shl2
  store i64 %xor3, ptr @s, align 8
  %6 = load i64, ptr @s, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone
define internal i32 @fold(ptr dead_on_return noundef %0) #0 {
entry:
  %v.addr = alloca i128, align 8
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %v = load i128, ptr %0, align 8
  store i128 %v, ptr %v.addr, align 8
  store i32 0, ptr %h, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %h, align 4
  %mul = mul i32 %2, 31
  %3 = load i128, ptr %v.addr, align 8
  %conv = trunc i128 %3 to i32
  %add = add i32 %mul, %conv
  store i32 %add, ptr %h, align 4
  %4 = load i128, ptr %v.addr, align 8
  %shr = lshr i128 %4, 32
  store i128 %shr, ptr %v.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %h, align 4
  ret i32 %6
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
