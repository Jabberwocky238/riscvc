; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/mulsf3_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/mulsf3_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [57 x i8] c"error in test__mulsf3(%08x, %08x) = %08x, expected %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @test__mulsf3(i32 noundef %a_rep, i32 noundef %b_rep, i32 noundef %expected_rep) #0 {
entry:
  %a_rep.addr = alloca i32, align 4
  %b_rep.addr = alloca i32, align 4
  %expected_rep.addr = alloca i32, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %x = alloca float, align 4
  %ret = alloca i32, align 4
  store i32 %a_rep, ptr %a_rep.addr, align 4
  store i32 %b_rep, ptr %b_rep.addr, align 4
  store i32 %expected_rep, ptr %expected_rep.addr, align 4
  %0 = load i32, ptr %a_rep.addr, align 4
  %call = call float @fromRep32(i32 noundef %0) #2
  store float %call, ptr %a, align 4
  %1 = load i32, ptr %b_rep.addr, align 4
  %call1 = call float @fromRep32(i32 noundef %1) #2
  store float %call1, ptr %b, align 4
  %2 = load float, ptr %a, align 4
  %3 = load float, ptr %b, align 4
  %call2 = call float @__mulsf3(float noundef %2, float noundef %3) #2
  store float %call2, ptr %x, align 4
  %4 = load float, ptr %x, align 4
  %5 = load i32, ptr %expected_rep.addr, align 4
  %call3 = call i32 @compareResultF(float noundef %4, i32 noundef %5) #2
  store i32 %call3, ptr %ret, align 4
  %6 = load i32, ptr %ret, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %a_rep.addr, align 4
  %8 = load i32, ptr %b_rep.addr, align 4
  %9 = load float, ptr %x, align 4
  %call4 = call i32 @toRep32(float noundef %9) #2
  %10 = load i32, ptr %expected_rep.addr, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7, i32 noundef %8, i32 noundef %call4, i32 noundef %10) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %ret, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone
define internal float @fromRep32(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %ret = alloca float, align 4
  store i32 %x, ptr %x.addr, align 4
  %call = call ptr @memcpy(ptr noundef %ret, ptr noundef %x.addr, i32 noundef 4) #2
  %0 = load float, ptr %ret, align 4
  ret float %0
}

declare dso_local float @__mulsf3(float noundef, float noundef) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @compareResultF(float noundef %result, i32 noundef %expected) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca float, align 4
  %expected.addr = alloca i32, align 4
  %rep = alloca i32, align 4
  store float %result, ptr %result.addr, align 4
  store i32 %expected, ptr %expected.addr, align 4
  %0 = load float, ptr %result.addr, align 4
  %call = call i32 @toRep32(float noundef %0) #2
  store i32 %call, ptr %rep, align 4
  %1 = load i32, ptr %rep, align 4
  %2 = load i32, ptr %expected.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %expected.addr, align 4
  %cmp1 = icmp eq i32 %3, 2143289344
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.else
  %4 = load i32, ptr %rep, align 4
  %and = and i32 %4, 2139095040
  %cmp3 = icmp eq i32 %and, 2139095040
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then2
  %5 = load i32, ptr %rep, align 4
  %and4 = and i32 %5, 8388607
  %cmp5 = icmp ugt i32 %and4, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @toRep32(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  %ret = alloca i32, align 4
  store float %x, ptr %x.addr, align 4
  %call = call ptr @memcpy(ptr noundef %ret, ptr noundef %x.addr, i32 noundef 4) #2
  %0 = load i32, ptr %ret, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %status = alloca i32, align 4
  store i32 0, ptr %status, align 4
  %call = call i32 @test__mulsf3(i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  %0 = load i32, ptr %status, align 4
  %or = or i32 %0, %call
  store i32 %or, ptr %status, align 4
  %call1 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef 8388607, i32 noundef 0) #2
  %1 = load i32, ptr %status, align 4
  %or2 = or i32 %1, %call1
  store i32 %or2, ptr %status, align 4
  %call3 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef 16777215, i32 noundef 0) #2
  %2 = load i32, ptr %status, align 4
  %or4 = or i32 %2, %call3
  store i32 %or4, ptr %status, align 4
  %call5 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef 1065353216, i32 noundef 0) #2
  %3 = load i32, ptr %status, align 4
  %or6 = or i32 %3, %call5
  store i32 %or6, ptr %status, align 4
  %call7 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef 2130706431, i32 noundef 0) #2
  %4 = load i32, ptr %status, align 4
  %or8 = or i32 %4, %call7
  store i32 %or8, ptr %status, align 4
  %call9 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648) #2
  %5 = load i32, ptr %status, align 4
  %or10 = or i32 %5, %call9
  store i32 %or10, ptr %status, align 4
  %call11 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef -2147483646, i32 noundef -2147483648) #2
  %6 = load i32, ptr %status, align 4
  %or12 = or i32 %6, %call11
  store i32 %or12, ptr %status, align 4
  %call13 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef -2139095041, i32 noundef -2147483648) #2
  %7 = load i32, ptr %status, align 4
  %or14 = or i32 %7, %call13
  store i32 %or14, ptr %status, align 4
  %call15 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef -2139095039, i32 noundef -2147483648) #2
  %8 = load i32, ptr %status, align 4
  %or16 = or i32 %8, %call15
  store i32 %or16, ptr %status, align 4
  %call17 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef -2130706432, i32 noundef -2147483648) #2
  %9 = load i32, ptr %status, align 4
  %or18 = or i32 %9, %call17
  store i32 %or18, ptr %status, align 4
  %call19 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef -1069547520, i32 noundef -2147483648) #2
  %10 = load i32, ptr %status, align 4
  %or20 = or i32 %10, %call19
  store i32 %or20, ptr %status, align 4
  %call21 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef -25165825, i32 noundef -2147483648) #2
  %11 = load i32, ptr %status, align 4
  %or22 = or i32 %11, %call21
  store i32 %or22, ptr %status, align 4
  %call23 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef -16777216, i32 noundef -2147483648) #2
  %12 = load i32, ptr %status, align 4
  %or24 = or i32 %12, %call23
  store i32 %or24, ptr %status, align 4
  %call25 = call i32 @test__mulsf3(i32 noundef 0, i32 noundef -8388609, i32 noundef -2147483648) #2
  %13 = load i32, ptr %status, align 4
  %or26 = or i32 %13, %call25
  store i32 %or26, ptr %status, align 4
  %call27 = call i32 @test__mulsf3(i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %14 = load i32, ptr %status, align 4
  %or28 = or i32 %14, %call27
  store i32 %or28, ptr %status, align 4
  %call29 = call i32 @test__mulsf3(i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %15 = load i32, ptr %status, align 4
  %or30 = or i32 %15, %call29
  store i32 %or30, ptr %status, align 4
  %call31 = call i32 @test__mulsf3(i32 noundef 1, i32 noundef 1056964608, i32 noundef 0) #2
  %16 = load i32, ptr %status, align 4
  %or32 = or i32 %16, %call31
  store i32 %or32, ptr %status, align 4
  %call33 = call i32 @test__mulsf3(i32 noundef 1, i32 noundef 1065353215, i32 noundef 1) #2
  %17 = load i32, ptr %status, align 4
  %or34 = or i32 %17, %call33
  store i32 %or34, ptr %status, align 4
  %call35 = call i32 @test__mulsf3(i32 noundef 1, i32 noundef 1065353216, i32 noundef 1) #2
  %18 = load i32, ptr %status, align 4
  %or36 = or i32 %18, %call35
  store i32 %or36, ptr %status, align 4
  %call37 = call i32 @test__mulsf3(i32 noundef 1, i32 noundef 1073741824, i32 noundef 2) #2
  %19 = load i32, ptr %status, align 4
  %or38 = or i32 %19, %call37
  store i32 %or38, ptr %status, align 4
  %call39 = call i32 @test__mulsf3(i32 noundef 1, i32 noundef 2139095040, i32 noundef 2139095040) #2
  %20 = load i32, ptr %status, align 4
  %or40 = or i32 %20, %call39
  store i32 %or40, ptr %status, align 4
  %call41 = call i32 @test__mulsf3(i32 noundef 1, i32 noundef -1082130433, i32 noundef -2147483647) #2
  %21 = load i32, ptr %status, align 4
  %or42 = or i32 %21, %call41
  store i32 %or42, ptr %status, align 4
  %call43 = call i32 @test__mulsf3(i32 noundef 6, i32 noundef 1056964608, i32 noundef 3) #2
  %22 = load i32, ptr %status, align 4
  %or44 = or i32 %22, %call43
  store i32 %or44, ptr %status, align 4
  %call45 = call i32 @test__mulsf3(i32 noundef 6, i32 noundef -1090519040, i32 noundef -2147483645) #2
  %23 = load i32, ptr %status, align 4
  %or46 = or i32 %23, %call45
  store i32 %or46, ptr %status, align 4
  %call47 = call i32 @test__mulsf3(i32 noundef 8, i32 noundef 1040187392, i32 noundef 1) #2
  %24 = load i32, ptr %status, align 4
  %or48 = or i32 %24, %call47
  store i32 %or48, ptr %status, align 4
  %call49 = call i32 @test__mulsf3(i32 noundef 8388599, i32 noundef -2130706429, i32 noundef -2147483648) #2
  %25 = load i32, ptr %status, align 4
  %or50 = or i32 %25, %call49
  store i32 %or50, ptr %status, align 4
  %call51 = call i32 @test__mulsf3(i32 noundef 8388600, i32 noundef 1065353217, i32 noundef 8388601) #2
  %26 = load i32, ptr %status, align 4
  %or52 = or i32 %26, %call51
  store i32 %or52, ptr %status, align 4
  %call53 = call i32 @test__mulsf3(i32 noundef 8388600, i32 noundef 1065353224, i32 noundef 8388608) #2
  %27 = load i32, ptr %status, align 4
  %or54 = or i32 %27, %call53
  store i32 %or54, ptr %status, align 4
  %call55 = call i32 @test__mulsf3(i32 noundef 8388600, i32 noundef -1082130431, i32 noundef -2139095047) #2
  %28 = load i32, ptr %status, align 4
  %or56 = or i32 %28, %call55
  store i32 %or56, ptr %status, align 4
  %call57 = call i32 @test__mulsf3(i32 noundef 8388600, i32 noundef -1082130424, i32 noundef -2139095040) #2
  %29 = load i32, ptr %status, align 4
  %or58 = or i32 %29, %call57
  store i32 %or58, ptr %status, align 4
  %call59 = call i32 @test__mulsf3(i32 noundef 8388604, i32 noundef 1073741824, i32 noundef 16777208) #2
  %30 = load i32, ptr %status, align 4
  %or60 = or i32 %30, %call59
  store i32 %or60, ptr %status, align 4
  %call61 = call i32 @test__mulsf3(i32 noundef 8388606, i32 noundef 1065353212, i32 noundef 8388604) #2
  %31 = load i32, ptr %status, align 4
  %or62 = or i32 %31, %call61
  store i32 %or62, ptr %status, align 4
  %call63 = call i32 @test__mulsf3(i32 noundef 8388606, i32 noundef 1065353217, i32 noundef 8388607) #2
  %32 = load i32, ptr %status, align 4
  %or64 = or i32 %32, %call63
  store i32 %or64, ptr %status, align 4
  %call65 = call i32 @test__mulsf3(i32 noundef 8388606, i32 noundef -1082130431, i32 noundef -2139095041) #2
  %33 = load i32, ptr %status, align 4
  %or66 = or i32 %33, %call65
  store i32 %or66, ptr %status, align 4
  %call67 = call i32 @test__mulsf3(i32 noundef 8388607, i32 noundef 8388606, i32 noundef 0) #2
  %34 = load i32, ptr %status, align 4
  %or68 = or i32 %34, %call67
  store i32 %or68, ptr %status, align 4
  %call69 = call i32 @test__mulsf3(i32 noundef 8388607, i32 noundef 1065353217, i32 noundef 8388608) #2
  %35 = load i32, ptr %status, align 4
  %or70 = or i32 %35, %call69
  store i32 %or70, ptr %status, align 4
  %call71 = call i32 @test__mulsf3(i32 noundef 8388607, i32 noundef 1073741824, i32 noundef 16777214) #2
  %36 = load i32, ptr %status, align 4
  %or72 = or i32 %36, %call71
  store i32 %or72, ptr %status, align 4
  %call73 = call i32 @test__mulsf3(i32 noundef 8388608, i32 noundef 0, i32 noundef 0) #2
  %37 = load i32, ptr %status, align 4
  %or74 = or i32 %37, %call73
  store i32 %or74, ptr %status, align 4
  %call75 = call i32 @test__mulsf3(i32 noundef 8388608, i32 noundef 8388608, i32 noundef 0) #2
  %38 = load i32, ptr %status, align 4
  %or76 = or i32 %38, %call75
  store i32 %or76, ptr %status, align 4
  %call77 = call i32 @test__mulsf3(i32 noundef 8388608, i32 noundef 1065353214, i32 noundef 8388607) #2
  %39 = load i32, ptr %status, align 4
  %or78 = or i32 %39, %call77
  store i32 %or78, ptr %status, align 4
  %call79 = call i32 @test__mulsf3(i32 noundef 8388608, i32 noundef 2139095040, i32 noundef 2139095040) #2
  %40 = load i32, ptr %status, align 4
  %or80 = or i32 %40, %call79
  store i32 %or80, ptr %status, align 4
  %call81 = call i32 @test__mulsf3(i32 noundef 8388608, i32 noundef -2139095040, i32 noundef -2147483648) #2
  %41 = load i32, ptr %status, align 4
  %or82 = or i32 %41, %call81
  store i32 %or82, ptr %status, align 4
  %call83 = call i32 @test__mulsf3(i32 noundef 8388608, i32 noundef -1073741824, i32 noundef -2130706432) #2
  %42 = load i32, ptr %status, align 4
  %or84 = or i32 %42, %call83
  store i32 %or84, ptr %status, align 4
  %call85 = call i32 @test__mulsf3(i32 noundef 8388609, i32 noundef 1065353210, i32 noundef 8388606) #2
  %43 = load i32, ptr %status, align 4
  %or86 = or i32 %43, %call85
  store i32 %or86, ptr %status, align 4
  %call87 = call i32 @test__mulsf3(i32 noundef 8388609, i32 noundef 1065353214, i32 noundef 8388608) #2
  %44 = load i32, ptr %status, align 4
  %or88 = or i32 %44, %call87
  store i32 %or88, ptr %status, align 4
  %call89 = call i32 @test__mulsf3(i32 noundef 8388609, i32 noundef -1073741824, i32 noundef -2130706431) #2
  %45 = load i32, ptr %status, align 4
  %or90 = or i32 %45, %call89
  store i32 %or90, ptr %status, align 4
  %call91 = call i32 @test__mulsf3(i32 noundef 8388610, i32 noundef 1065353212, i32 noundef 8388608) #2
  %46 = load i32, ptr %status, align 4
  %or92 = or i32 %46, %call91
  store i32 %or92, ptr %status, align 4
  %call93 = call i32 @test__mulsf3(i32 noundef 16777208, i32 noundef 1056964608, i32 noundef 8388604) #2
  %47 = load i32, ptr %status, align 4
  %or94 = or i32 %47, %call93
  store i32 %or94, ptr %status, align 4
  %call95 = call i32 @test__mulsf3(i32 noundef 16777214, i32 noundef 1056964608, i32 noundef 8388607) #2
  %48 = load i32, ptr %status, align 4
  %or96 = or i32 %48, %call95
  store i32 %or96, ptr %status, align 4
  %call97 = call i32 @test__mulsf3(i32 noundef 16777214, i32 noundef -1090519040, i32 noundef -2139095041) #2
  %49 = load i32, ptr %status, align 4
  %or98 = or i32 %49, %call97
  store i32 %or98, ptr %status, align 4
  %call99 = call i32 @test__mulsf3(i32 noundef 16777215, i32 noundef 1056964608, i32 noundef 8388608) #2
  %50 = load i32, ptr %status, align 4
  %or100 = or i32 %50, %call99
  store i32 %or100, ptr %status, align 4
  %call101 = call i32 @test__mulsf3(i32 noundef 16777215, i32 noundef -1090519040, i32 noundef -2139095040) #2
  %51 = load i32, ptr %status, align 4
  %or102 = or i32 %51, %call101
  store i32 %or102, ptr %status, align 4
  %call103 = call i32 @test__mulsf3(i32 noundef 1056964608, i32 noundef -2147483647, i32 noundef -2147483648) #2
  %52 = load i32, ptr %status, align 4
  %or104 = or i32 %52, %call103
  store i32 %or104, ptr %status, align 4
  %call105 = call i32 @test__mulsf3(i32 noundef 1065353216, i32 noundef 8388605, i32 noundef 8388605) #2
  %53 = load i32, ptr %status, align 4
  %or106 = or i32 %53, %call105
  store i32 %or106, ptr %status, align 4
  %call107 = call i32 @test__mulsf3(i32 noundef 1065353216, i32 noundef 16777219, i32 noundef 16777219) #2
  %54 = load i32, ptr %status, align 4
  %or108 = or i32 %54, %call107
  store i32 %or108, ptr %status, align 4
  %call109 = call i32 @test__mulsf3(i32 noundef 1065353216, i32 noundef 1065353216, i32 noundef 1065353216) #2
  %55 = load i32, ptr %status, align 4
  %or110 = or i32 %55, %call109
  store i32 %or110, ptr %status, align 4
  %call111 = call i32 @test__mulsf3(i32 noundef 1065353216, i32 noundef 1073741824, i32 noundef 1073741824) #2
  %56 = load i32, ptr %status, align 4
  %or112 = or i32 %56, %call111
  store i32 %or112, ptr %status, align 4
  %call113 = call i32 @test__mulsf3(i32 noundef 1065353216, i32 noundef -2147483647, i32 noundef -2147483647) #2
  %57 = load i32, ptr %status, align 4
  %or114 = or i32 %57, %call113
  store i32 %or114, ptr %status, align 4
  %call115 = call i32 @test__mulsf3(i32 noundef 1065353216, i32 noundef -2147483639, i32 noundef -2147483639) #2
  %58 = load i32, ptr %status, align 4
  %or116 = or i32 %58, %call115
  store i32 %or116, ptr %status, align 4
  %call117 = call i32 @test__mulsf3(i32 noundef 1065353217, i32 noundef 1065353217, i32 noundef 1065353218) #2
  %59 = load i32, ptr %status, align 4
  %or118 = or i32 %59, %call117
  store i32 %or118, ptr %status, align 4
  %call119 = call i32 @test__mulsf3(i32 noundef 1065353217, i32 noundef -1082130431, i32 noundef -1082130430) #2
  %60 = load i32, ptr %status, align 4
  %or120 = or i32 %60, %call119
  store i32 %or120, ptr %status, align 4
  %call121 = call i32 @test__mulsf3(i32 noundef 1065353217, i32 noundef -1082130430, i32 noundef -1082130429) #2
  %61 = load i32, ptr %status, align 4
  %or122 = or i32 %61, %call121
  store i32 %or122, ptr %status, align 4
  %call123 = call i32 @test__mulsf3(i32 noundef 1065353218, i32 noundef 1065353217, i32 noundef 1065353219) #2
  %62 = load i32, ptr %status, align 4
  %or124 = or i32 %62, %call123
  store i32 %or124, ptr %status, align 4
  %call125 = call i32 @test__mulsf3(i32 noundef 1065353218, i32 noundef 2139095038, i32 noundef 2139095040) #2
  %63 = load i32, ptr %status, align 4
  %or126 = or i32 %63, %call125
  store i32 %or126, ptr %status, align 4
  %call127 = call i32 @test__mulsf3(i32 noundef 1065353217, i32 noundef 2139095038, i32 noundef 2139095040) #2
  %64 = load i32, ptr %status, align 4
  %or128 = or i32 %64, %call127
  store i32 %or128, ptr %status, align 4
  %call129 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef 8388608, i32 noundef 16777216) #2
  %65 = load i32, ptr %status, align 4
  %or130 = or i32 %65, %call129
  store i32 %or130, ptr %status, align 4
  %call131 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef 8388609, i32 noundef 16777217) #2
  %66 = load i32, ptr %status, align 4
  %or132 = or i32 %66, %call131
  store i32 %or132, ptr %status, align 4
  %call133 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef 1065353216, i32 noundef 1073741824) #2
  %67 = load i32, ptr %status, align 4
  %or134 = or i32 %67, %call133
  store i32 %or134, ptr %status, align 4
  %call135 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef 1077936128, i32 noundef 1086324736) #2
  %68 = load i32, ptr %status, align 4
  %or136 = or i32 %68, %call135
  store i32 %or136, ptr %status, align 4
  %call137 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef 2122317824, i32 noundef 2130706432) #2
  %69 = load i32, ptr %status, align 4
  %or138 = or i32 %69, %call137
  store i32 %or138, ptr %status, align 4
  %call139 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef 2130706431, i32 noundef 2139095039) #2
  %70 = load i32, ptr %status, align 4
  %or140 = or i32 %70, %call139
  store i32 %or140, ptr %status, align 4
  %call141 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef -2139095043, i32 noundef -2130706438) #2
  %71 = load i32, ptr %status, align 4
  %or142 = or i32 %71, %call141
  store i32 %or142, ptr %status, align 4
  %call143 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef -2139095037, i32 noundef -2130706429) #2
  %72 = load i32, ptr %status, align 4
  %or144 = or i32 %72, %call143
  store i32 %or144, ptr %status, align 4
  %call145 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef -2139095035, i32 noundef -2130706427) #2
  %73 = load i32, ptr %status, align 4
  %or146 = or i32 %73, %call145
  store i32 %or146, ptr %status, align 4
  %call147 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef -1082130432, i32 noundef -1073741824) #2
  %74 = load i32, ptr %status, align 4
  %or148 = or i32 %74, %call147
  store i32 %or148, ptr %status, align 4
  %call149 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef -25165827, i32 noundef -16777219) #2
  %75 = load i32, ptr %status, align 4
  %or150 = or i32 %75, %call149
  store i32 %or150, ptr %status, align 4
  %call151 = call i32 @test__mulsf3(i32 noundef 1073741824, i32 noundef -25165821, i32 noundef -16777213) #2
  %76 = load i32, ptr %status, align 4
  %or152 = or i32 %76, %call151
  store i32 %or152, ptr %status, align 4
  %call153 = call i32 @test__mulsf3(i32 noundef 1077936127, i32 noundef 1065353213, i32 noundef 1077936125) #2
  %77 = load i32, ptr %status, align 4
  %or154 = or i32 %77, %call153
  store i32 %or154, ptr %status, align 4
  %call155 = call i32 @test__mulsf3(i32 noundef 1077936127, i32 noundef 1065353214, i32 noundef 1077936126) #2
  %78 = load i32, ptr %status, align 4
  %or156 = or i32 %78, %call155
  store i32 %or156, ptr %status, align 4
  %call157 = call i32 @test__mulsf3(i32 noundef 1077936127, i32 noundef 1065353215, i32 noundef 1077936126) #2
  %79 = load i32, ptr %status, align 4
  %or158 = or i32 %79, %call157
  store i32 %or158, ptr %status, align 4
  %call159 = call i32 @test__mulsf3(i32 noundef 1077936127, i32 noundef -1082130435, i32 noundef -1069547523) #2
  %80 = load i32, ptr %status, align 4
  %or160 = or i32 %80, %call159
  store i32 %or160, ptr %status, align 4
  %call161 = call i32 @test__mulsf3(i32 noundef 1077936128, i32 noundef 2, i32 noundef 6) #2
  %81 = load i32, ptr %status, align 4
  %or162 = or i32 %81, %call161
  store i32 %or162, ptr %status, align 4
  %call163 = call i32 @test__mulsf3(i32 noundef 1077936128, i32 noundef 1073741824, i32 noundef 1086324736) #2
  %82 = load i32, ptr %status, align 4
  %or164 = or i32 %82, %call163
  store i32 %or164, ptr %status, align 4
  %call165 = call i32 @test__mulsf3(i32 noundef 1077936128, i32 noundef 1077936128, i32 noundef 1091567616) #2
  %83 = load i32, ptr %status, align 4
  %or166 = or i32 %83, %call165
  store i32 %or166, ptr %status, align 4
  %call167 = call i32 @test__mulsf3(i32 noundef 1077936128, i32 noundef -1073741824, i32 noundef -1061158912) #2
  %84 = load i32, ptr %status, align 4
  %or168 = or i32 %84, %call167
  store i32 %or168, ptr %status, align 4
  %call169 = call i32 @test__mulsf3(i32 noundef 1077936129, i32 noundef 1065353217, i32 noundef 1077936131) #2
  %85 = load i32, ptr %status, align 4
  %or170 = or i32 %85, %call169
  store i32 %or170, ptr %status, align 4
  %call171 = call i32 @test__mulsf3(i32 noundef 1077936129, i32 noundef 1065353219, i32 noundef 1077936134) #2
  %86 = load i32, ptr %status, align 4
  %or172 = or i32 %86, %call171
  store i32 %or172, ptr %status, align 4
  %call173 = call i32 @test__mulsf3(i32 noundef 1077936129, i32 noundef -1082130429, i32 noundef -1069547514) #2
  %87 = load i32, ptr %status, align 4
  %or174 = or i32 %87, %call173
  store i32 %or174, ptr %status, align 4
  %call175 = call i32 @test__mulsf3(i32 noundef 1082130432, i32 noundef 2, i32 noundef 8) #2
  %88 = load i32, ptr %status, align 4
  %or176 = or i32 %88, %call175
  store i32 %or176, ptr %status, align 4
  %call177 = call i32 @test__mulsf3(i32 noundef 1082130432, i32 noundef 2122317823, i32 noundef 2139095039) #2
  %89 = load i32, ptr %status, align 4
  %or178 = or i32 %89, %call177
  store i32 %or178, ptr %status, align 4
  %call179 = call i32 @test__mulsf3(i32 noundef 1082130432, i32 noundef -25165825, i32 noundef -8388609) #2
  %90 = load i32, ptr %status, align 4
  %or180 = or i32 %90, %call179
  store i32 %or180, ptr %status, align 4
  %call181 = call i32 @test__mulsf3(i32 noundef 1084227583, i32 noundef 1065353215, i32 noundef 1084227582) #2
  %91 = load i32, ptr %status, align 4
  %or182 = or i32 %91, %call181
  store i32 %or182, ptr %status, align 4
  %call183 = call i32 @test__mulsf3(i32 noundef 1084227584, i32 noundef 0, i32 noundef 0) #2
  %92 = load i32, ptr %status, align 4
  %or184 = or i32 %92, %call183
  store i32 %or184, ptr %status, align 4
  %call185 = call i32 @test__mulsf3(i32 noundef 1084227584, i32 noundef 2139095040, i32 noundef 2139095040) #2
  %93 = load i32, ptr %status, align 4
  %or186 = or i32 %93, %call185
  store i32 %or186, ptr %status, align 4
  %call187 = call i32 @test__mulsf3(i32 noundef 1084227585, i32 noundef 1065353217, i32 noundef 1084227586) #2
  %94 = load i32, ptr %status, align 4
  %or188 = or i32 %94, %call187
  store i32 %or188, ptr %status, align 4
  %call189 = call i32 @test__mulsf3(i32 noundef 1088421887, i32 noundef 1065353212, i32 noundef 1088421884) #2
  %95 = load i32, ptr %status, align 4
  %or190 = or i32 %95, %call189
  store i32 %or190, ptr %status, align 4
  %call191 = call i32 @test__mulsf3(i32 noundef 1088421887, i32 noundef 1065353215, i32 noundef 1088421886) #2
  %96 = load i32, ptr %status, align 4
  %or192 = or i32 %96, %call191
  store i32 %or192, ptr %status, align 4
  %call193 = call i32 @test__mulsf3(i32 noundef 1088421888, i32 noundef -2147483648, i32 noundef -2147483648) #2
  %97 = load i32, ptr %status, align 4
  %or194 = or i32 %97, %call193
  store i32 %or194, ptr %status, align 4
  %call195 = call i32 @test__mulsf3(i32 noundef 1088421888, i32 noundef -8388608, i32 noundef -8388608) #2
  %98 = load i32, ptr %status, align 4
  %or196 = or i32 %98, %call195
  store i32 %or196, ptr %status, align 4
  %call197 = call i32 @test__mulsf3(i32 noundef 1088421889, i32 noundef 1065353217, i32 noundef 1088421891) #2
  %99 = load i32, ptr %status, align 4
  %or198 = or i32 %99, %call197
  store i32 %or198, ptr %status, align 4
  %call199 = call i32 @test__mulsf3(i32 noundef 2122317821, i32 noundef 1082130432, i32 noundef 2139095037) #2
  %100 = load i32, ptr %status, align 4
  %or200 = or i32 %100, %call199
  store i32 %or200, ptr %status, align 4
  %call201 = call i32 @test__mulsf3(i32 noundef 2122317821, i32 noundef -1065353216, i32 noundef -8388611) #2
  %101 = load i32, ptr %status, align 4
  %or202 = or i32 %101, %call201
  store i32 %or202, ptr %status, align 4
  %call203 = call i32 @test__mulsf3(i32 noundef 2122317824, i32 noundef -1073741824, i32 noundef -16777216) #2
  %102 = load i32, ptr %status, align 4
  %or204 = or i32 %102, %call203
  store i32 %or204, ptr %status, align 4
  %call205 = call i32 @test__mulsf3(i32 noundef 2130706429, i32 noundef -1073741816, i32 noundef -8388608) #2
  %103 = load i32, ptr %status, align 4
  %or206 = or i32 %103, %call205
  store i32 %or206, ptr %status, align 4
  %call207 = call i32 @test__mulsf3(i32 noundef 2130706431, i32 noundef -1073741824, i32 noundef -8388609) #2
  %104 = load i32, ptr %status, align 4
  %or208 = or i32 %104, %call207
  store i32 %or208, ptr %status, align 4
  %call209 = call i32 @test__mulsf3(i32 noundef 2130706432, i32 noundef 0, i32 noundef 0) #2
  %105 = load i32, ptr %status, align 4
  %or210 = or i32 %105, %call209
  store i32 %or210, ptr %status, align 4
  %call211 = call i32 @test__mulsf3(i32 noundef 2130706432, i32 noundef 1073741824, i32 noundef 2139095040) #2
  %106 = load i32, ptr %status, align 4
  %or212 = or i32 %106, %call211
  store i32 %or212, ptr %status, align 4
  %call213 = call i32 @test__mulsf3(i32 noundef 2130706432, i32 noundef 2130706432, i32 noundef 2139095040) #2
  %107 = load i32, ptr %status, align 4
  %or214 = or i32 %107, %call213
  store i32 %or214, ptr %status, align 4
  %call215 = call i32 @test__mulsf3(i32 noundef 2130706432, i32 noundef 2139095038, i32 noundef 2139095040) #2
  %108 = load i32, ptr %status, align 4
  %or216 = or i32 %108, %call215
  store i32 %or216, ptr %status, align 4
  %call217 = call i32 @test__mulsf3(i32 noundef 2130706432, i32 noundef 2139095040, i32 noundef 2139095040) #2
  %109 = load i32, ptr %status, align 4
  %or218 = or i32 %109, %call217
  store i32 %or218, ptr %status, align 4
  %call219 = call i32 @test__mulsf3(i32 noundef 2130706432, i32 noundef -25165824, i32 noundef -8388608) #2
  %110 = load i32, ptr %status, align 4
  %or220 = or i32 %110, %call219
  store i32 %or220, ptr %status, align 4
  %call221 = call i32 @test__mulsf3(i32 noundef 2130706432, i32 noundef -25165820, i32 noundef -8388608) #2
  %111 = load i32, ptr %status, align 4
  %or222 = or i32 %111, %call221
  store i32 %or222, ptr %status, align 4
  %call223 = call i32 @test__mulsf3(i32 noundef 2130706432, i32 noundef -16777216, i32 noundef -8388608) #2
  %112 = load i32, ptr %status, align 4
  %or224 = or i32 %112, %call223
  store i32 %or224, ptr %status, align 4
  %call225 = call i32 @test__mulsf3(i32 noundef 2130706441, i32 noundef 2139095034, i32 noundef 2139095040) #2
  %113 = load i32, ptr %status, align 4
  %or226 = or i32 %113, %call225
  store i32 %or226, ptr %status, align 4
  %call227 = call i32 @test__mulsf3(i32 noundef 2130706441, i32 noundef -1061158910, i32 noundef -8388608) #2
  %114 = load i32, ptr %status, align 4
  %or228 = or i32 %114, %call227
  store i32 %or228, ptr %status, align 4
  %call229 = call i32 @test__mulsf3(i32 noundef 2139095039, i32 noundef 0, i32 noundef 0) #2
  %115 = load i32, ptr %status, align 4
  %or230 = or i32 %115, %call229
  store i32 %or230, ptr %status, align 4
  %call231 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef 8388607, i32 noundef 2139095040) #2
  %116 = load i32, ptr %status, align 4
  %or232 = or i32 %116, %call231
  store i32 %or232, ptr %status, align 4
  %call233 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef 16777215, i32 noundef 2139095040) #2
  %117 = load i32, ptr %status, align 4
  %or234 = or i32 %117, %call233
  store i32 %or234, ptr %status, align 4
  %call235 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef 1065353216, i32 noundef 2139095040) #2
  %118 = load i32, ptr %status, align 4
  %or236 = or i32 %118, %call235
  store i32 %or236, ptr %status, align 4
  %call237 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef 2130706431, i32 noundef 2139095040) #2
  %119 = load i32, ptr %status, align 4
  %or238 = or i32 %119, %call237
  store i32 %or238, ptr %status, align 4
  %call239 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef 2139095040, i32 noundef 2139095040) #2
  %120 = load i32, ptr %status, align 4
  %or240 = or i32 %120, %call239
  store i32 %or240, ptr %status, align 4
  %call241 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef -2147483646, i32 noundef -8388608) #2
  %121 = load i32, ptr %status, align 4
  %or242 = or i32 %121, %call241
  store i32 %or242, ptr %status, align 4
  %call243 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef -2139095041, i32 noundef -8388608) #2
  %122 = load i32, ptr %status, align 4
  %or244 = or i32 %122, %call243
  store i32 %or244, ptr %status, align 4
  %call245 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef -2139095039, i32 noundef -8388608) #2
  %123 = load i32, ptr %status, align 4
  %or246 = or i32 %123, %call245
  store i32 %or246, ptr %status, align 4
  %call247 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef -2130706432, i32 noundef -8388608) #2
  %124 = load i32, ptr %status, align 4
  %or248 = or i32 %124, %call247
  store i32 %or248, ptr %status, align 4
  %call249 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef -1069547520, i32 noundef -8388608) #2
  %125 = load i32, ptr %status, align 4
  %or250 = or i32 %125, %call249
  store i32 %or250, ptr %status, align 4
  %call251 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef -16777216, i32 noundef -8388608) #2
  %126 = load i32, ptr %status, align 4
  %or252 = or i32 %126, %call251
  store i32 %or252, ptr %status, align 4
  %call253 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef -8388609, i32 noundef -8388608) #2
  %127 = load i32, ptr %status, align 4
  %or254 = or i32 %127, %call253
  store i32 %or254, ptr %status, align 4
  %call255 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef -8388608, i32 noundef -8388608) #2
  %128 = load i32, ptr %status, align 4
  %or256 = or i32 %128, %call255
  store i32 %or256, ptr %status, align 4
  %call257 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef 0, i32 noundef -2147483648) #2
  %129 = load i32, ptr %status, align 4
  %or258 = or i32 %129, %call257
  store i32 %or258, ptr %status, align 4
  %call259 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef 1086324736, i32 noundef -2147483648) #2
  %130 = load i32, ptr %status, align 4
  %or260 = or i32 %130, %call259
  store i32 %or260, ptr %status, align 4
  %call261 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef 2139095039, i32 noundef -2147483648) #2
  %131 = load i32, ptr %status, align 4
  %or262 = or i32 %131, %call261
  store i32 %or262, ptr %status, align 4
  %call263 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef -2147483648, i32 noundef 0) #2
  %132 = load i32, ptr %status, align 4
  %or264 = or i32 %132, %call263
  store i32 %or264, ptr %status, align 4
  %call265 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef -2147483644, i32 noundef 0) #2
  %133 = load i32, ptr %status, align 4
  %or266 = or i32 %133, %call265
  store i32 %or266, ptr %status, align 4
  %call267 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef -2139095040, i32 noundef 0) #2
  %134 = load i32, ptr %status, align 4
  %or268 = or i32 %134, %call267
  store i32 %or268, ptr %status, align 4
  %call269 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef -1056964608, i32 noundef 0) #2
  %135 = load i32, ptr %status, align 4
  %or270 = or i32 %135, %call269
  store i32 %or270, ptr %status, align 4
  %call271 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef -25165824, i32 noundef 0) #2
  %136 = load i32, ptr %status, align 4
  %or272 = or i32 %136, %call271
  store i32 %or272, ptr %status, align 4
  %call273 = call i32 @test__mulsf3(i32 noundef -2147483647, i32 noundef 1, i32 noundef -2147483648) #2
  %137 = load i32, ptr %status, align 4
  %or274 = or i32 %137, %call273
  store i32 %or274, ptr %status, align 4
  %call275 = call i32 @test__mulsf3(i32 noundef -2147483647, i32 noundef 1084227584, i32 noundef -2147483643) #2
  %138 = load i32, ptr %status, align 4
  %or276 = or i32 %138, %call275
  store i32 %or276, ptr %status, align 4
  %call277 = call i32 @test__mulsf3(i32 noundef -2147483646, i32 noundef 1065353216, i32 noundef -2147483646) #2
  %139 = load i32, ptr %status, align 4
  %or278 = or i32 %139, %call277
  store i32 %or278, ptr %status, align 4
  %call279 = call i32 @test__mulsf3(i32 noundef -2147483645, i32 noundef 0, i32 noundef -2147483648) #2
  %140 = load i32, ptr %status, align 4
  %or280 = or i32 %140, %call279
  store i32 %or280, ptr %status, align 4
  %call281 = call i32 @test__mulsf3(i32 noundef -2147483645, i32 noundef 2139095040, i32 noundef -8388608) #2
  %141 = load i32, ptr %status, align 4
  %or282 = or i32 %141, %call281
  store i32 %or282, ptr %status, align 4
  %call283 = call i32 @test__mulsf3(i32 noundef -2147483644, i32 noundef -1082130432, i32 noundef 4) #2
  %142 = load i32, ptr %status, align 4
  %or284 = or i32 %142, %call283
  store i32 %or284, ptr %status, align 4
  %call285 = call i32 @test__mulsf3(i32 noundef -2147483640, i32 noundef 1040187392, i32 noundef -2147483647) #2
  %143 = load i32, ptr %status, align 4
  %or286 = or i32 %143, %call285
  store i32 %or286, ptr %status, align 4
  %call287 = call i32 @test__mulsf3(i32 noundef -2139095049, i32 noundef 16777219, i32 noundef -2147483648) #2
  %144 = load i32, ptr %status, align 4
  %or288 = or i32 %144, %call287
  store i32 %or288, ptr %status, align 4
  %call289 = call i32 @test__mulsf3(i32 noundef -2139095049, i32 noundef 1065353217, i32 noundef -2139095048) #2
  %145 = load i32, ptr %status, align 4
  %or290 = or i32 %145, %call289
  store i32 %or290, ptr %status, align 4
  %call291 = call i32 @test__mulsf3(i32 noundef -2139095043, i32 noundef -1073741824, i32 noundef 16777210) #2
  %146 = load i32, ptr %status, align 4
  %or292 = or i32 %146, %call291
  store i32 %or292, ptr %status, align 4
  %call293 = call i32 @test__mulsf3(i32 noundef -2139095041, i32 noundef 0, i32 noundef -2147483648) #2
  %147 = load i32, ptr %status, align 4
  %or294 = or i32 %147, %call293
  store i32 %or294, ptr %status, align 4
  %call295 = call i32 @test__mulsf3(i32 noundef -2139095041, i32 noundef 1065353217, i32 noundef -2139095040) #2
  %148 = load i32, ptr %status, align 4
  %or296 = or i32 %148, %call295
  store i32 %or296, ptr %status, align 4
  %call297 = call i32 @test__mulsf3(i32 noundef -2139095041, i32 noundef 2139095040, i32 noundef -8388608) #2
  %149 = load i32, ptr %status, align 4
  %or298 = or i32 %149, %call297
  store i32 %or298, ptr %status, align 4
  %call299 = call i32 @test__mulsf3(i32 noundef -2139095041, i32 noundef -2147483648, i32 noundef 0) #2
  %150 = load i32, ptr %status, align 4
  %or300 = or i32 %150, %call299
  store i32 %or300, ptr %status, align 4
  %call301 = call i32 @test__mulsf3(i32 noundef -2139095041, i32 noundef -2139095042, i32 noundef 0) #2
  %151 = load i32, ptr %status, align 4
  %or302 = or i32 %151, %call301
  store i32 %or302, ptr %status, align 4
  %call303 = call i32 @test__mulsf3(i32 noundef -2139095041, i32 noundef -1082130432, i32 noundef 8388607) #2
  %152 = load i32, ptr %status, align 4
  %or304 = or i32 %152, %call303
  store i32 %or304, ptr %status, align 4
  %call305 = call i32 @test__mulsf3(i32 noundef -2139095041, i32 noundef -8388608, i32 noundef 2139095040) #2
  %153 = load i32, ptr %status, align 4
  %or306 = or i32 %153, %call305
  store i32 %or306, ptr %status, align 4
  %call307 = call i32 @test__mulsf3(i32 noundef -2139095040, i32 noundef 8388608, i32 noundef -2147483648) #2
  %154 = load i32, ptr %status, align 4
  %or308 = or i32 %154, %call307
  store i32 %or308, ptr %status, align 4
  %call309 = call i32 @test__mulsf3(i32 noundef -2139095040, i32 noundef -2139095040, i32 noundef 0) #2
  %155 = load i32, ptr %status, align 4
  %or310 = or i32 %155, %call309
  store i32 %or310, ptr %status, align 4
  %call311 = call i32 @test__mulsf3(i32 noundef -2139095039, i32 noundef 0, i32 noundef -2147483648) #2
  %156 = load i32, ptr %status, align 4
  %or312 = or i32 %156, %call311
  store i32 %or312, ptr %status, align 4
  %call313 = call i32 @test__mulsf3(i32 noundef -2139095039, i32 noundef 2139095040, i32 noundef -8388608) #2
  %157 = load i32, ptr %status, align 4
  %or314 = or i32 %157, %call313
  store i32 %or314, ptr %status, align 4
  %call315 = call i32 @test__mulsf3(i32 noundef -2139095039, i32 noundef -1082130432, i32 noundef 8388609) #2
  %158 = load i32, ptr %status, align 4
  %or316 = or i32 %158, %call315
  store i32 %or316, ptr %status, align 4
  %call317 = call i32 @test__mulsf3(i32 noundef -2130706436, i32 noundef 1056964608, i32 noundef -2139095042) #2
  %159 = load i32, ptr %status, align 4
  %or318 = or i32 %159, %call317
  store i32 %or318, ptr %status, align 4
  %call319 = call i32 @test__mulsf3(i32 noundef -2130706436, i32 noundef -1090519040, i32 noundef 8388606) #2
  %160 = load i32, ptr %status, align 4
  %or320 = or i32 %160, %call319
  store i32 %or320, ptr %status, align 4
  %call321 = call i32 @test__mulsf3(i32 noundef -2130706434, i32 noundef 1065353216, i32 noundef -2130706434) #2
  %161 = load i32, ptr %status, align 4
  %or322 = or i32 %161, %call321
  store i32 %or322, ptr %status, align 4
  %call323 = call i32 @test__mulsf3(i32 noundef -2130706433, i32 noundef -2147483648, i32 noundef 0) #2
  %162 = load i32, ptr %status, align 4
  %or324 = or i32 %162, %call323
  store i32 %or324, ptr %status, align 4
  %call325 = call i32 @test__mulsf3(i32 noundef -2130706433, i32 noundef -8388608, i32 noundef 2139095040) #2
  %163 = load i32, ptr %status, align 4
  %or326 = or i32 %163, %call325
  store i32 %or326, ptr %status, align 4
  %call327 = call i32 @test__mulsf3(i32 noundef -2130706432, i32 noundef 0, i32 noundef -2147483648) #2
  %164 = load i32, ptr %status, align 4
  %or328 = or i32 %164, %call327
  store i32 %or328, ptr %status, align 4
  %call329 = call i32 @test__mulsf3(i32 noundef -2130706432, i32 noundef 2139095040, i32 noundef -8388608) #2
  %165 = load i32, ptr %status, align 4
  %or330 = or i32 %165, %call329
  store i32 %or330, ptr %status, align 4
  %call331 = call i32 @test__mulsf3(i32 noundef -1082130433, i32 noundef -8388609, i32 noundef 2139095038) #2
  %166 = load i32, ptr %status, align 4
  %or332 = or i32 %166, %call331
  store i32 %or332, ptr %status, align 4
  %call333 = call i32 @test__mulsf3(i32 noundef -1082130432, i32 noundef 9, i32 noundef -2147483639) #2
  %167 = load i32, ptr %status, align 4
  %or334 = or i32 %167, %call333
  store i32 %or334, ptr %status, align 4
  %call335 = call i32 @test__mulsf3(i32 noundef -1082130432, i32 noundef 8388617, i32 noundef -2139095031) #2
  %168 = load i32, ptr %status, align 4
  %or336 = or i32 %168, %call335
  store i32 %or336, ptr %status, align 4
  %call337 = call i32 @test__mulsf3(i32 noundef -1082130432, i32 noundef 1065353216, i32 noundef -1082130432) #2
  %169 = load i32, ptr %status, align 4
  %or338 = or i32 %169, %call337
  store i32 %or338, ptr %status, align 4
  %call339 = call i32 @test__mulsf3(i32 noundef -1082130432, i32 noundef 1073741824, i32 noundef -1073741824) #2
  %170 = load i32, ptr %status, align 4
  %or340 = or i32 %170, %call339
  store i32 %or340, ptr %status, align 4
  %call341 = call i32 @test__mulsf3(i32 noundef -1082130432, i32 noundef -1082130432, i32 noundef 1065353216) #2
  %171 = load i32, ptr %status, align 4
  %or342 = or i32 %171, %call341
  store i32 %or342, ptr %status, align 4
  %call343 = call i32 @test__mulsf3(i32 noundef -1082130432, i32 noundef -1073741824, i32 noundef 1073741824) #2
  %172 = load i32, ptr %status, align 4
  %or344 = or i32 %172, %call343
  store i32 %or344, ptr %status, align 4
  %call345 = call i32 @test__mulsf3(i32 noundef -1082130431, i32 noundef 1065353217, i32 noundef -1082130430) #2
  %173 = load i32, ptr %status, align 4
  %or346 = or i32 %173, %call345
  store i32 %or346, ptr %status, align 4
  %call347 = call i32 @test__mulsf3(i32 noundef -1082130431, i32 noundef -1082130431, i32 noundef 1065353218) #2
  %174 = load i32, ptr %status, align 4
  %or348 = or i32 %174, %call347
  store i32 %or348, ptr %status, align 4
  %call349 = call i32 @test__mulsf3(i32 noundef -1082130431, i32 noundef -1082130430, i32 noundef 1065353219) #2
  %175 = load i32, ptr %status, align 4
  %or350 = or i32 %175, %call349
  store i32 %or350, ptr %status, align 4
  %call351 = call i32 @test__mulsf3(i32 noundef -1082130430, i32 noundef 1065353217, i32 noundef -1082130429) #2
  %176 = load i32, ptr %status, align 4
  %or352 = or i32 %176, %call351
  store i32 %or352, ptr %status, align 4
  %call353 = call i32 @test__mulsf3(i32 noundef -1082130430, i32 noundef -1082130431, i32 noundef 1065353219) #2
  %177 = load i32, ptr %status, align 4
  %or354 = or i32 %177, %call353
  store i32 %or354, ptr %status, align 4
  %call355 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef 0, i32 noundef -2147483648) #2
  %178 = load i32, ptr %status, align 4
  %or356 = or i32 %178, %call355
  store i32 %or356, ptr %status, align 4
  %call357 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef 8388605, i32 noundef -2130706438) #2
  %179 = load i32, ptr %status, align 4
  %or358 = or i32 %179, %call357
  store i32 %or358, ptr %status, align 4
  %call359 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef 8388609, i32 noundef -2130706431) #2
  %180 = load i32, ptr %status, align 4
  %or360 = or i32 %180, %call359
  store i32 %or360, ptr %status, align 4
  %call361 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef 8388613, i32 noundef -2130706427) #2
  %181 = load i32, ptr %status, align 4
  %or362 = or i32 %181, %call361
  store i32 %or362, ptr %status, align 4
  %call363 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef 8388617, i32 noundef -2130706423) #2
  %182 = load i32, ptr %status, align 4
  %or364 = or i32 %182, %call363
  store i32 %or364, ptr %status, align 4
  %call365 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef 1077936128, i32 noundef -1061158912) #2
  %183 = load i32, ptr %status, align 4
  %or366 = or i32 %183, %call365
  store i32 %or366, ptr %status, align 4
  %call367 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef 2122317823, i32 noundef -16777217) #2
  %184 = load i32, ptr %status, align 4
  %or368 = or i32 %184, %call367
  store i32 %or368, ptr %status, align 4
  %call369 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef 2122317825, i32 noundef -16777215) #2
  %185 = load i32, ptr %status, align 4
  %or370 = or i32 %185, %call369
  store i32 %or370, ptr %status, align 4
  %call371 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef 2139095040, i32 noundef -8388608) #2
  %186 = load i32, ptr %status, align 4
  %or372 = or i32 %186, %call371
  store i32 %or372, ptr %status, align 4
  %call373 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef -1082130432, i32 noundef 1073741824) #2
  %187 = load i32, ptr %status, align 4
  %or374 = or i32 %187, %call373
  store i32 %or374, ptr %status, align 4
  %call375 = call i32 @test__mulsf3(i32 noundef -1073741824, i32 noundef -1069547520, i32 noundef 1086324736) #2
  %188 = load i32, ptr %status, align 4
  %or376 = or i32 %188, %call375
  store i32 %or376, ptr %status, align 4
  %call377 = call i32 @test__mulsf3(i32 noundef -1069547522, i32 noundef 2130706432, i32 noundef -8388608) #2
  %189 = load i32, ptr %status, align 4
  %or378 = or i32 %189, %call377
  store i32 %or378, ptr %status, align 4
  %call379 = call i32 @test__mulsf3(i32 noundef -1069547521, i32 noundef 1065353215, i32 noundef -1069547522) #2
  %190 = load i32, ptr %status, align 4
  %or380 = or i32 %190, %call379
  store i32 %or380, ptr %status, align 4
  %call381 = call i32 @test__mulsf3(i32 noundef -1069547520, i32 noundef 1077936128, i32 noundef -1055916032) #2
  %191 = load i32, ptr %status, align 4
  %or382 = or i32 %191, %call381
  store i32 %or382, ptr %status, align 4
  %call383 = call i32 @test__mulsf3(i32 noundef -1069547520, i32 noundef -1073741824, i32 noundef 1086324736) #2
  %192 = load i32, ptr %status, align 4
  %or384 = or i32 %192, %call383
  store i32 %or384, ptr %status, align 4
  %call385 = call i32 @test__mulsf3(i32 noundef -1069547520, i32 noundef -1069547520, i32 noundef 1091567616) #2
  %193 = load i32, ptr %status, align 4
  %or386 = or i32 %193, %call385
  store i32 %or386, ptr %status, align 4
  %call387 = call i32 @test__mulsf3(i32 noundef -1069547520, i32 noundef -16777216, i32 noundef 2139095040) #2
  %194 = load i32, ptr %status, align 4
  %or388 = or i32 %194, %call387
  store i32 %or388, ptr %status, align 4
  %call389 = call i32 @test__mulsf3(i32 noundef -1069547519, i32 noundef 1065353217, i32 noundef -1069547517) #2
  %195 = load i32, ptr %status, align 4
  %or390 = or i32 %195, %call389
  store i32 %or390, ptr %status, align 4
  %call391 = call i32 @test__mulsf3(i32 noundef -1065353216, i32 noundef 2122317823, i32 noundef -8388609) #2
  %196 = load i32, ptr %status, align 4
  %or392 = or i32 %196, %call391
  store i32 %or392, ptr %status, align 4
  %call393 = call i32 @test__mulsf3(i32 noundef -1065353216, i32 noundef -2147483648, i32 noundef 0) #2
  %197 = load i32, ptr %status, align 4
  %or394 = or i32 %197, %call393
  store i32 %or394, ptr %status, align 4
  %call395 = call i32 @test__mulsf3(i32 noundef -1065353216, i32 noundef -25165825, i32 noundef 2139095039) #2
  %198 = load i32, ptr %status, align 4
  %or396 = or i32 %198, %call395
  store i32 %or396, ptr %status, align 4
  %call397 = call i32 @test__mulsf3(i32 noundef -1065353216, i32 noundef -8388608, i32 noundef 2139095040) #2
  %199 = load i32, ptr %status, align 4
  %or398 = or i32 %199, %call397
  store i32 %or398, ptr %status, align 4
  %call399 = call i32 @test__mulsf3(i32 noundef -1063256066, i32 noundef -16777216, i32 noundef 2139095040) #2
  %200 = load i32, ptr %status, align 4
  %or400 = or i32 %200, %call399
  store i32 %or400, ptr %status, align 4
  %call401 = call i32 @test__mulsf3(i32 noundef -1063256065, i32 noundef -1082130433, i32 noundef 1084227582) #2
  %201 = load i32, ptr %status, align 4
  %or402 = or i32 %201, %call401
  store i32 %or402, ptr %status, align 4
  %call403 = call i32 @test__mulsf3(i32 noundef -1063256063, i32 noundef -1082130431, i32 noundef 1084227586) #2
  %202 = load i32, ptr %status, align 4
  %or404 = or i32 %202, %call403
  store i32 %or404, ptr %status, align 4
  %call405 = call i32 @test__mulsf3(i32 noundef -1059061767, i32 noundef 2130706432, i32 noundef -8388608) #2
  %203 = load i32, ptr %status, align 4
  %or406 = or i32 %203, %call405
  store i32 %or406, ptr %status, align 4
  %call407 = call i32 @test__mulsf3(i32 noundef -1055916032, i32 noundef 2130706432, i32 noundef -8388608) #2
  %204 = load i32, ptr %status, align 4
  %or408 = or i32 %204, %call407
  store i32 %or408, ptr %status, align 4
  %call409 = call i32 @test__mulsf3(i32 noundef -1055916031, i32 noundef -16777216, i32 noundef 2139095040) #2
  %205 = load i32, ptr %status, align 4
  %or410 = or i32 %205, %call409
  store i32 %or410, ptr %status, align 4
  %call411 = call i32 @test__mulsf3(i32 noundef -25165831, i32 noundef 2130706432, i32 noundef -8388608) #2
  %206 = load i32, ptr %status, align 4
  %or412 = or i32 %206, %call411
  store i32 %or412, ptr %status, align 4
  %call413 = call i32 @test__mulsf3(i32 noundef -25165831, i32 noundef -1065353217, i32 noundef 2139095032) #2
  %207 = load i32, ptr %status, align 4
  %or414 = or i32 %207, %call413
  store i32 %or414, ptr %status, align 4
  %call415 = call i32 @test__mulsf3(i32 noundef -25165827, i32 noundef 1082130432, i32 noundef -8388611) #2
  %208 = load i32, ptr %status, align 4
  %or416 = or i32 %208, %call415
  store i32 %or416, ptr %status, align 4
  %call417 = call i32 @test__mulsf3(i32 noundef -25165827, i32 noundef -1065353216, i32 noundef 2139095037) #2
  %209 = load i32, ptr %status, align 4
  %or418 = or i32 %209, %call417
  store i32 %or418, ptr %status, align 4
  %call419 = call i32 @test__mulsf3(i32 noundef -25165825, i32 noundef 0, i32 noundef -2147483648) #2
  %210 = load i32, ptr %status, align 4
  %or420 = or i32 %210, %call419
  store i32 %or420, ptr %status, align 4
  %call421 = call i32 @test__mulsf3(i32 noundef -25165825, i32 noundef 1073741825, i32 noundef -16777216) #2
  %211 = load i32, ptr %status, align 4
  %or422 = or i32 %211, %call421
  store i32 %or422, ptr %status, align 4
  %call423 = call i32 @test__mulsf3(i32 noundef -25165825, i32 noundef 2139095040, i32 noundef -8388608) #2
  %212 = load i32, ptr %status, align 4
  %or424 = or i32 %212, %call423
  store i32 %or424, ptr %status, align 4
  %call425 = call i32 @test__mulsf3(i32 noundef -25165824, i32 noundef 0, i32 noundef -2147483648) #2
  %213 = load i32, ptr %status, align 4
  %or426 = or i32 %213, %call425
  store i32 %or426, ptr %status, align 4
  %call427 = call i32 @test__mulsf3(i32 noundef -25165824, i32 noundef 2139095040, i32 noundef -8388608) #2
  %214 = load i32, ptr %status, align 4
  %or428 = or i32 %214, %call427
  store i32 %or428, ptr %status, align 4
  %call429 = call i32 @test__mulsf3(i32 noundef -16777225, i32 noundef 2122317825, i32 noundef -8388608) #2
  %215 = load i32, ptr %status, align 4
  %or430 = or i32 %215, %call429
  store i32 %or430, ptr %status, align 4
  %call431 = call i32 @test__mulsf3(i32 noundef -16777217, i32 noundef 1065353217, i32 noundef -16777216) #2
  %216 = load i32, ptr %status, align 4
  %or432 = or i32 %216, %call431
  store i32 %or432, ptr %status, align 4
  %call433 = call i32 @test__mulsf3(i32 noundef -16777217, i32 noundef -2147483648, i32 noundef 0) #2
  %217 = load i32, ptr %status, align 4
  %or434 = or i32 %217, %call433
  store i32 %or434, ptr %status, align 4
  %call435 = call i32 @test__mulsf3(i32 noundef -16777211, i32 noundef -16777215, i32 noundef 2139095040) #2
  %218 = load i32, ptr %status, align 4
  %or436 = or i32 %218, %call435
  store i32 %or436, ptr %status, align 4
  %call437 = call i32 @test__mulsf3(i32 noundef -8388611, i32 noundef 2130706432, i32 noundef -8388608) #2
  %219 = load i32, ptr %status, align 4
  %or438 = or i32 %219, %call437
  store i32 %or438, ptr %status, align 4
  %call439 = call i32 @test__mulsf3(i32 noundef -8388611, i32 noundef -1069547519, i32 noundef 2139095040) #2
  %220 = load i32, ptr %status, align 4
  %or440 = or i32 %220, %call439
  store i32 %or440, ptr %status, align 4
  %call441 = call i32 @test__mulsf3(i32 noundef -8388611, i32 noundef -16777215, i32 noundef 2139095040) #2
  %221 = load i32, ptr %status, align 4
  %or442 = or i32 %221, %call441
  store i32 %or442, ptr %status, align 4
  %call443 = call i32 @test__mulsf3(i32 noundef -8388609, i32 noundef -2147483648, i32 noundef 0) #2
  %222 = load i32, ptr %status, align 4
  %or444 = or i32 %222, %call443
  store i32 %or444, ptr %status, align 4
  %call445 = call i32 @test__mulsf3(i32 noundef -8388609, i32 noundef -8388609, i32 noundef 2139095040) #2
  %223 = load i32, ptr %status, align 4
  %or446 = or i32 %223, %call445
  store i32 %or446, ptr %status, align 4
  %call447 = call i32 @test__mulsf3(i32 noundef -8388609, i32 noundef -8388608, i32 noundef 2139095040) #2
  %224 = load i32, ptr %status, align 4
  %or448 = or i32 %224, %call447
  store i32 %or448, ptr %status, align 4
  %call449 = call i32 @test__mulsf3(i32 noundef -8388608, i32 noundef 1086324736, i32 noundef -8388608) #2
  %225 = load i32, ptr %status, align 4
  %or450 = or i32 %225, %call449
  store i32 %or450, ptr %status, align 4
  %call451 = call i32 @test__mulsf3(i32 noundef -8388608, i32 noundef 2139095040, i32 noundef -8388608) #2
  %226 = load i32, ptr %status, align 4
  %or452 = or i32 %226, %call451
  store i32 %or452, ptr %status, align 4
  %call453 = call i32 @test__mulsf3(i32 noundef -8388608, i32 noundef -2147483644, i32 noundef 2139095040) #2
  %227 = load i32, ptr %status, align 4
  %or454 = or i32 %227, %call453
  store i32 %or454, ptr %status, align 4
  %call455 = call i32 @test__mulsf3(i32 noundef -8388608, i32 noundef -2139095040, i32 noundef 2139095040) #2
  %228 = load i32, ptr %status, align 4
  %or456 = or i32 %228, %call455
  store i32 %or456, ptr %status, align 4
  %call457 = call i32 @test__mulsf3(i32 noundef -8388608, i32 noundef -1056964608, i32 noundef 2139095040) #2
  %229 = load i32, ptr %status, align 4
  %or458 = or i32 %229, %call457
  store i32 %or458, ptr %status, align 4
  %call459 = call i32 @test__mulsf3(i32 noundef -8388608, i32 noundef -25165824, i32 noundef 2139095040) #2
  %230 = load i32, ptr %status, align 4
  %or460 = or i32 %230, %call459
  store i32 %or460, ptr %status, align 4
  %call461 = call i32 @test__mulsf3(i32 noundef -8388608, i32 noundef -8388608, i32 noundef 2139095040) #2
  %231 = load i32, ptr %status, align 4
  %or462 = or i32 %231, %call461
  store i32 %or462, ptr %status, align 4
  %call463 = call i32 @test__mulsf3(i32 noundef 814313567, i32 noundef 250831760, i32 noundef 4281743) #2
  %232 = load i32, ptr %status, align 4
  %or464 = or i32 %232, %call463
  store i32 %or464, ptr %status, align 4
  %call465 = call i32 @test__mulsf3(i32 noundef 814313567, i32 noundef 244540304, i32 noundef 2592893) #2
  %233 = load i32, ptr %status, align 4
  %or466 = or i32 %233, %call465
  store i32 %or466, ptr %status, align 4
  %call467 = call i32 @test__mulsf3(i32 noundef 822702175, i32 noundef 250831760, i32 noundef 8563486) #2
  %234 = load i32, ptr %status, align 4
  %or468 = or i32 %234, %call467
  store i32 %or468, ptr %status, align 4
  %call469 = call i32 @test__mulsf3(i32 noundef 822702175, i32 noundef 244540304, i32 noundef 5185786) #2
  %235 = load i32, ptr %status, align 4
  %or470 = or i32 %235, %call469
  store i32 %or470, ptr %status, align 4
  %call471 = call i32 @test__mulsf3(i32 noundef 831090783, i32 noundef 250831760, i32 noundef 16952094) #2
  %236 = load i32, ptr %status, align 4
  %or472 = or i32 %236, %call471
  store i32 %or472, ptr %status, align 4
  %call473 = call i32 @test__mulsf3(i32 noundef 831090783, i32 noundef 244540304, i32 noundef 10371573) #2
  %237 = load i32, ptr %status, align 4
  %or474 = or i32 %237, %call473
  store i32 %or474, ptr %status, align 4
  %call475 = call i32 @test__mulsf3(i32 noundef -1333170081, i32 noundef 250831760, i32 noundef -2143201905) #2
  %238 = load i32, ptr %status, align 4
  %or476 = or i32 %238, %call475
  store i32 %or476, ptr %status, align 4
  %call477 = call i32 @test__mulsf3(i32 noundef -1333170081, i32 noundef 244540304, i32 noundef -2144890755) #2
  %239 = load i32, ptr %status, align 4
  %or478 = or i32 %239, %call477
  store i32 %or478, ptr %status, align 4
  %call479 = call i32 @test__mulsf3(i32 noundef -1324781473, i32 noundef 250831760, i32 noundef -2138920162) #2
  %240 = load i32, ptr %status, align 4
  %or480 = or i32 %240, %call479
  store i32 %or480, ptr %status, align 4
  %call481 = call i32 @test__mulsf3(i32 noundef -1324781473, i32 noundef 244540304, i32 noundef -2142297862) #2
  %241 = load i32, ptr %status, align 4
  %or482 = or i32 %241, %call481
  store i32 %or482, ptr %status, align 4
  %call483 = call i32 @test__mulsf3(i32 noundef -1316392865, i32 noundef 250831760, i32 noundef -2130531554) #2
  %242 = load i32, ptr %status, align 4
  %or484 = or i32 %242, %call483
  store i32 %or484, ptr %status, align 4
  %call485 = call i32 @test__mulsf3(i32 noundef -1316392865, i32 noundef 244540304, i32 noundef -2137112075) #2
  %243 = load i32, ptr %status, align 4
  %or486 = or i32 %243, %call485
  store i32 %or486, ptr %status, align 4
  %call487 = call i32 @test__mulsf3(i32 noundef 814313567, i32 noundef -1896651888, i32 noundef -2143201905) #2
  %244 = load i32, ptr %status, align 4
  %or488 = or i32 %244, %call487
  store i32 %or488, ptr %status, align 4
  %call489 = call i32 @test__mulsf3(i32 noundef 814313567, i32 noundef -1902943344, i32 noundef -2144890755) #2
  %245 = load i32, ptr %status, align 4
  %or490 = or i32 %245, %call489
  store i32 %or490, ptr %status, align 4
  %call491 = call i32 @test__mulsf3(i32 noundef 822702175, i32 noundef -1896651888, i32 noundef -2138920162) #2
  %246 = load i32, ptr %status, align 4
  %or492 = or i32 %246, %call491
  store i32 %or492, ptr %status, align 4
  %call493 = call i32 @test__mulsf3(i32 noundef 822702175, i32 noundef -1902943344, i32 noundef -2142297862) #2
  %247 = load i32, ptr %status, align 4
  %or494 = or i32 %247, %call493
  store i32 %or494, ptr %status, align 4
  %call495 = call i32 @test__mulsf3(i32 noundef 831090783, i32 noundef -1896651888, i32 noundef -2130531554) #2
  %248 = load i32, ptr %status, align 4
  %or496 = or i32 %248, %call495
  store i32 %or496, ptr %status, align 4
  %call497 = call i32 @test__mulsf3(i32 noundef 831090783, i32 noundef -1902943344, i32 noundef -2137112075) #2
  %249 = load i32, ptr %status, align 4
  %or498 = or i32 %249, %call497
  store i32 %or498, ptr %status, align 4
  %call499 = call i32 @test__mulsf3(i32 noundef -1333170081, i32 noundef -1896651888, i32 noundef 4281743) #2
  %250 = load i32, ptr %status, align 4
  %or500 = or i32 %250, %call499
  store i32 %or500, ptr %status, align 4
  %call501 = call i32 @test__mulsf3(i32 noundef -1333170081, i32 noundef -1902943344, i32 noundef 2592893) #2
  %251 = load i32, ptr %status, align 4
  %or502 = or i32 %251, %call501
  store i32 %or502, ptr %status, align 4
  %call503 = call i32 @test__mulsf3(i32 noundef -1324781473, i32 noundef -1896651888, i32 noundef 8563486) #2
  %252 = load i32, ptr %status, align 4
  %or504 = or i32 %252, %call503
  store i32 %or504, ptr %status, align 4
  %call505 = call i32 @test__mulsf3(i32 noundef -1324781473, i32 noundef -1902943344, i32 noundef 5185786) #2
  %253 = load i32, ptr %status, align 4
  %or506 = or i32 %253, %call505
  store i32 %or506, ptr %status, align 4
  %call507 = call i32 @test__mulsf3(i32 noundef -1316392865, i32 noundef -1896651888, i32 noundef 16952094) #2
  %254 = load i32, ptr %status, align 4
  %or508 = or i32 %254, %call507
  store i32 %or508, ptr %status, align 4
  %call509 = call i32 @test__mulsf3(i32 noundef -1316392865, i32 noundef -1902943344, i32 noundef 10371573) #2
  %255 = load i32, ptr %status, align 4
  %or510 = or i32 %255, %call509
  store i32 %or510, ptr %status, align 4
  %call511 = call i32 @test__mulsf3(i32 noundef 528482305, i32 noundef 532676608, i32 noundef 3145728) #2
  %256 = load i32, ptr %status, align 4
  %or512 = or i32 %256, %call511
  store i32 %or512, ptr %status, align 4
  %call513 = call i32 @test__mulsf3(i32 noundef 528482307, i32 noundef 532676608, i32 noundef 3145729) #2
  %257 = load i32, ptr %status, align 4
  %or514 = or i32 %257, %call513
  store i32 %or514, ptr %status, align 4
  %call515 = call i32 @test__mulsf3(i32 noundef 528482305, i32 noundef 532678656, i32 noundef 3146240) #2
  %258 = load i32, ptr %status, align 4
  %or516 = or i32 %258, %call515
  store i32 %or516, ptr %status, align 4
  %call517 = call i32 @test__mulsf3(i32 noundef 528482307, i32 noundef 532678656, i32 noundef 3146241) #2
  %259 = load i32, ptr %status, align 4
  %or518 = or i32 %259, %call517
  store i32 %or518, ptr %status, align 4
  %call519 = call i32 @test__mulsf3(i32 noundef 920934538, i32 noundef 699694269, i32 noundef 555810181) #2
  %260 = load i32, ptr %status, align 4
  %or520 = or i32 %260, %call519
  store i32 %or520, ptr %status, align 4
  %call521 = call i32 @test__mulsf3(i32 noundef 1072315174, i32 noundef 1061158912, i32 noundef 1068477532) #2
  %261 = load i32, ptr %status, align 4
  %or522 = or i32 %261, %call521
  store i32 %or522, ptr %status, align 4
  %call523 = call i32 @test__mulsf3(i32 noundef 1877621542, i32 noundef 1329594368, i32 noundef 2139095040) #2
  %262 = load i32, ptr %status, align 4
  %or524 = or i32 %262, %call523
  store i32 %or524, ptr %status, align 4
  %call525 = call i32 @test__mulsf3(i32 noundef 552221478, i32 noundef 515899392, i32 noundef 5756462) #2
  %263 = load i32, ptr %status, align 4
  %or526 = or i32 %263, %call525
  store i32 %or526, ptr %status, align 4
  %call527 = call i32 @test__mulsf3(i32 noundef 1066340795, i32 noundef 1069547520, i32 noundef 1071028888) #2
  %264 = load i32, ptr %status, align 4
  %or528 = or i32 %264, %call527
  store i32 %or528, ptr %status, align 4
  %call529 = call i32 @test__mulsf3(i32 noundef 1871647163, i32 noundef 1337982976, i32 noundef 2139095040) #2
  %265 = load i32, ptr %status, align 4
  %or530 = or i32 %265, %call529
  store i32 %or530, ptr %status, align 4
  %call531 = call i32 @test__mulsf3(i32 noundef 546247099, i32 noundef 524288000, i32 noundef 7032140) #2
  %266 = load i32, ptr %status, align 4
  %or532 = or i32 %266, %call531
  store i32 %or532, ptr %status, align 4
  %call533 = call i32 @test__mulsf3(i32 noundef 1066340795, i32 noundef 1065353216, i32 noundef 1066340795) #2
  %267 = load i32, ptr %status, align 4
  %or534 = or i32 %267, %call533
  store i32 %or534, ptr %status, align 4
  %call535 = call i32 @test__mulsf3(i32 noundef 1871647163, i32 noundef 1333788672, i32 noundef 2139095040) #2
  %268 = load i32, ptr %status, align 4
  %or536 = or i32 %268, %call535
  store i32 %or536, ptr %status, align 4
  %call537 = call i32 @test__mulsf3(i32 noundef 546247099, i32 noundef 520093696, i32 noundef 4688094) #2
  %269 = load i32, ptr %status, align 4
  %or538 = or i32 %269, %call537
  store i32 %or538, ptr %status, align 4
  %call539 = call i32 @test__mulsf3(i32 noundef 1066340795, i32 noundef 1071117453, i32 noundef 1072783647) #2
  %270 = load i32, ptr %status, align 4
  %or540 = or i32 %270, %call539
  store i32 %or540, ptr %status, align 4
  %call541 = call i32 @test__mulsf3(i32 noundef 1871647163, i32 noundef 1339552909, i32 noundef 2139095040) #2
  %271 = load i32, ptr %status, align 4
  %or542 = or i32 %271, %call541
  store i32 %or542, ptr %status, align 4
  %call543 = call i32 @test__mulsf3(i32 noundef 546247099, i32 noundef 525857933, i32 noundef 7909520) #2
  %272 = load i32, ptr %status, align 4
  %or544 = or i32 %272, %call543
  store i32 %or544, ptr %status, align 4
  %call545 = call i32 @test__mulsf3(i32 noundef 1066340795, i32 noundef 1067977587, i32 noundef 1069274130) #2
  %273 = load i32, ptr %status, align 4
  %or546 = or i32 %273, %call545
  store i32 %or546, ptr %status, align 4
  %call547 = call i32 @test__mulsf3(i32 noundef 1871647163, i32 noundef 1336413043, i32 noundef 2139095040) #2
  %274 = load i32, ptr %status, align 4
  %or548 = or i32 %274, %call547
  store i32 %or548, ptr %status, align 4
  %call549 = call i32 @test__mulsf3(i32 noundef 546247099, i32 noundef 522718067, i32 noundef 6154761) #2
  %275 = load i32, ptr %status, align 4
  %or550 = or i32 %275, %call549
  store i32 %or550, ptr %status, align 4
  %call551 = call i32 @test__mulsf3(i32 noundef 1066340795, i32 noundef 1066923149, i32 noundef 1068095554) #2
  %276 = load i32, ptr %status, align 4
  %or552 = or i32 %276, %call551
  store i32 %or552, ptr %status, align 4
  %call553 = call i32 @test__mulsf3(i32 noundef 1871647163, i32 noundef 1335358605, i32 noundef 2139095040) #2
  %277 = load i32, ptr %status, align 4
  %or554 = or i32 %277, %call553
  store i32 %or554, ptr %status, align 4
  %call555 = call i32 @test__mulsf3(i32 noundef 546247099, i32 noundef 521663629, i32 noundef 5565473) #2
  %278 = load i32, ptr %status, align 4
  %or556 = or i32 %278, %call555
  store i32 %or556, ptr %status, align 4
  %call557 = call i32 @test__mulsf3(i32 noundef 1066340795, i32 noundef 1063783283, i32 noundef 1065463416) #2
  %279 = load i32, ptr %status, align 4
  %or558 = or i32 %279, %call557
  store i32 %or558, ptr %status, align 4
  %call559 = call i32 @test__mulsf3(i32 noundef 1871647163, i32 noundef 1332218739, i32 noundef 2139095040) #2
  %280 = load i32, ptr %status, align 4
  %or560 = or i32 %280, %call559
  store i32 %or560, ptr %status, align 4
  %call561 = call i32 @test__mulsf3(i32 noundef 546247099, i32 noundef 518523763, i32 noundef 4249404) #2
  %281 = load i32, ptr %status, align 4
  %or562 = or i32 %281, %call561
  store i32 %or562, ptr %status, align 4
  %call563 = call i32 @test__mulsf3(i32 noundef 1073700312, i32 noundef 1063256064, i32 noundef 1071608349) #2
  %282 = load i32, ptr %status, align 4
  %or564 = or i32 %282, %call563
  store i32 %or564, ptr %status, align 4
  %call565 = call i32 @test__mulsf3(i32 noundef 1879006680, i32 noundef 1331691520, i32 noundef 2139095040) #2
  %283 = load i32, ptr %status, align 4
  %or566 = or i32 %283, %call565
  store i32 %or566, ptr %status, align 4
  %call567 = call i32 @test__mulsf3(i32 noundef 553606616, i32 noundef 517996544, i32 noundef 7321870) #2
  %284 = load i32, ptr %status, align 4
  %or568 = or i32 %284, %call567
  store i32 %or568, ptr %status, align 4
  %call569 = call i32 @test__mulsf3(i32 noundef 1073700312, i32 noundef 1058013184, i32 noundef 1066378442) #2
  %285 = load i32, ptr %status, align 4
  %or570 = or i32 %285, %call569
  store i32 %or570, ptr %status, align 4
  %call571 = call i32 @test__mulsf3(i32 noundef 1879006680, i32 noundef 1326448640, i32 noundef 2139095040) #2
  %286 = load i32, ptr %status, align 4
  %or572 = or i32 %286, %call571
  store i32 %or572, ptr %status, align 4
  %call573 = call i32 @test__mulsf3(i32 noundef 553606616, i32 noundef 512753664, i32 noundef 4706917) #2
  %287 = load i32, ptr %status, align 4
  %or574 = or i32 %287, %call573
  store i32 %or574, ptr %status, align 4
  %call575 = call i32 @test__mulsf3(i32 noundef 1073736043, i32 noundef 1065286467, i32 noundef 1073669317) #2
  %288 = load i32, ptr %status, align 4
  %or576 = or i32 %288, %call575
  store i32 %or576, ptr %status, align 4
  %call577 = call i32 @test__mulsf3(i32 noundef 1879042411, i32 noundef 1333721923, i32 noundef 2139095040) #2
  %289 = load i32, ptr %status, align 4
  %or578 = or i32 %289, %call577
  store i32 %or578, ptr %status, align 4
  %call579 = call i32 @test__mulsf3(i32 noundef 553642347, i32 noundef 520026947, i32 noundef 8352355) #2
  %290 = load i32, ptr %status, align 4
  %or580 = or i32 %290, %call579
  store i32 %or580, ptr %status, align 4
  %call581 = call i32 @test__mulsf3(i32 noundef 1073736043, i32 noundef 1057031357, i32 noundef 1065417051) #2
  %291 = load i32, ptr %status, align 4
  %or582 = or i32 %291, %call581
  store i32 %or582, ptr %status, align 4
  %call583 = call i32 @test__mulsf3(i32 noundef 1879042411, i32 noundef 1325466813, i32 noundef 2139095040) #2
  %292 = load i32, ptr %status, align 4
  %or584 = or i32 %292, %call583
  store i32 %or584, ptr %status, align 4
  %call585 = call i32 @test__mulsf3(i32 noundef 553642347, i32 noundef 511771837, i32 noundef 4226222) #2
  %293 = load i32, ptr %status, align 4
  %or586 = or i32 %293, %call585
  store i32 %or586, ptr %status, align 4
  %call587 = call i32 @test__mulsf3(i32 noundef 1066384311, i32 noundef 1067904505, i32 noundef 1069249194) #2
  %294 = load i32, ptr %status, align 4
  %or588 = or i32 %294, %call587
  store i32 %or588, ptr %status, align 4
  %call589 = call i32 @test__mulsf3(i32 noundef 1871690679, i32 noundef 1336339961, i32 noundef 2139095040) #2
  %295 = load i32, ptr %status, align 4
  %or590 = or i32 %295, %call589
  store i32 %or590, ptr %status, align 4
  %call591 = call i32 @test__mulsf3(i32 noundef 546290615, i32 noundef 522644985, i32 noundef 6142293) #2
  %296 = load i32, ptr %status, align 4
  %or592 = or i32 %296, %call591
  store i32 %or592, ptr %status, align 4
  %call593 = call i32 @test__mulsf3(i32 noundef 1066384311, i32 noundef 1071190535, i32 noundef 1072939131) #2
  %297 = load i32, ptr %status, align 4
  %or594 = or i32 %297, %call593
  store i32 %or594, ptr %status, align 4
  %call595 = call i32 @test__mulsf3(i32 noundef 1871690679, i32 noundef 1339625991, i32 noundef 2139095040) #2
  %298 = load i32, ptr %status, align 4
  %or596 = or i32 %298, %call595
  store i32 %or596, ptr %status, align 4
  %call597 = call i32 @test__mulsf3(i32 noundef 546290615, i32 noundef 525931015, i32 noundef 7987261) #2
  %299 = load i32, ptr %status, align 4
  %or598 = or i32 %299, %call597
  store i32 %or598, ptr %status, align 4
  %call599 = call i32 @test__mulsf3(i32 noundef 1066384311, i32 noundef 1066996231, i32 noundef 1068229279) #2
  %300 = load i32, ptr %status, align 4
  %or600 = or i32 %300, %call599
  store i32 %or600, ptr %status, align 4
  %call601 = call i32 @test__mulsf3(i32 noundef 1871690679, i32 noundef 1335431687, i32 noundef 2139095040) #2
  %301 = load i32, ptr %status, align 4
  %or602 = or i32 %301, %call601
  store i32 %or602, ptr %status, align 4
  %call603 = call i32 @test__mulsf3(i32 noundef 546290615, i32 noundef 521736711, i32 noundef 5632336) #2
  %302 = load i32, ptr %status, align 4
  %or604 = or i32 %302, %call603
  store i32 %or604, ptr %status, align 4
  %call605 = call i32 @test__mulsf3(i32 noundef 1066384311, i32 noundef 1063710201, i32 noundef 1065461827) #2
  %303 = load i32, ptr %status, align 4
  %or606 = or i32 %303, %call605
  store i32 %or606, ptr %status, align 4
  %call607 = call i32 @test__mulsf3(i32 noundef 1871690679, i32 noundef 1332145657, i32 noundef 2139095040) #2
  %304 = load i32, ptr %status, align 4
  %or608 = or i32 %304, %call607
  store i32 %or608, ptr %status, align 4
  %call609 = call i32 @test__mulsf3(i32 noundef 546290615, i32 noundef 518450681, i32 noundef 4248609) #2
  %305 = load i32, ptr %status, align 4
  %or610 = or i32 %305, %call609
  store i32 %or610, ptr %status, align 4
  %call611 = call i32 @test__mulsf3(i32 noundef 1071342323, i32 noundef 1064860101, i32 noundef 1070919734) #2
  %306 = load i32, ptr %status, align 4
  %or612 = or i32 %306, %call611
  store i32 %or612, ptr %status, align 4
  %call613 = call i32 @test__mulsf3(i32 noundef 1876648691, i32 noundef 1333295557, i32 noundef 2139095040) #2
  %307 = load i32, ptr %status, align 4
  %or614 = or i32 %307, %call613
  store i32 %or614, ptr %status, align 4
  %call615 = call i32 @test__mulsf3(i32 noundef 551248627, i32 noundef 519600581, i32 noundef 6977563) #2
  %308 = load i32, ptr %status, align 4
  %or616 = or i32 %308, %call615
  store i32 %or616, ptr %status, align 4
  %call617 = call i32 @test__mulsf3(i32 noundef 1068165701, i32 noundef 1066100595, i32 noundef 1069163657) #2
  %309 = load i32, ptr %status, align 4
  %or618 = or i32 %309, %call617
  store i32 %or618, ptr %status, align 4
  %call619 = call i32 @test__mulsf3(i32 noundef 1873472069, i32 noundef 1334536051, i32 noundef 2139095040) #2
  %310 = load i32, ptr %status, align 4
  %or620 = or i32 %310, %call619
  store i32 %or620, ptr %status, align 4
  %call621 = call i32 @test__mulsf3(i32 noundef 548072005, i32 noundef 520841075, i32 noundef 6099524) #2
  %311 = load i32, ptr %status, align 4
  %or622 = or i32 %311, %call621
  store i32 %or622, ptr %status, align 4
  %call623 = call i32 @test__mulsf3(i32 noundef 1068476396, i32 noundef 1066401792, i32 noundef 1069915370) #2
  %312 = load i32, ptr %status, align 4
  %or624 = or i32 %312, %call623
  store i32 %or624, ptr %status, align 4
  %call625 = call i32 @test__mulsf3(i32 noundef 1873782764, i32 noundef 1334837248, i32 noundef 2139095040) #2
  %313 = load i32, ptr %status, align 4
  %or626 = or i32 %313, %call625
  store i32 %or626, ptr %status, align 4
  %call627 = call i32 @test__mulsf3(i32 noundef 548382700, i32 noundef 521142272, i32 noundef 6475381) #2
  %314 = load i32, ptr %status, align 4
  %or628 = or i32 %314, %call627
  store i32 %or628, ptr %status, align 4
  %call629 = call i32 @test__mulsf3(i32 noundef 1070566541, i32 noundef 1059526213, i32 noundef 1065842366) #2
  %315 = load i32, ptr %status, align 4
  %or630 = or i32 %315, %call629
  store i32 %or630, ptr %status, align 4
  %call631 = call i32 @test__mulsf3(i32 noundef 1875872909, i32 noundef 1327961669, i32 noundef 2139095040) #2
  %316 = load i32, ptr %status, align 4
  %or632 = or i32 %316, %call631
  store i32 %or632, ptr %status, align 4
  %call633 = call i32 @test__mulsf3(i32 noundef 550472845, i32 noundef 514266693, i32 noundef 4438879) #2
  %317 = load i32, ptr %status, align 4
  %or634 = or i32 %317, %call633
  store i32 %or634, ptr %status, align 4
  %call635 = call i32 @test__mulsf3(i32 noundef 1069642735, i32 noundef 1066408719, i32 noundef 1071237970) #2
  %318 = load i32, ptr %status, align 4
  %or636 = or i32 %318, %call635
  store i32 %or636, ptr %status, align 4
  %call637 = call i32 @test__mulsf3(i32 noundef 1874949103, i32 noundef 1334844175, i32 noundef 2139095040) #2
  %319 = load i32, ptr %status, align 4
  %or638 = or i32 %319, %call637
  store i32 %or638, ptr %status, align 4
  %call639 = call i32 @test__mulsf3(i32 noundef 549549039, i32 noundef 521149199, i32 noundef 7136681) #2
  %320 = load i32, ptr %status, align 4
  %or640 = or i32 %320, %call639
  store i32 %or640, ptr %status, align 4
  %call641 = call i32 @test__mulsf3(i32 noundef 1068797235, i32 noundef 1061828091, i32 noundef 1066311037) #2
  %321 = load i32, ptr %status, align 4
  %or642 = or i32 %321, %call641
  store i32 %or642, ptr %status, align 4
  %call643 = call i32 @test__mulsf3(i32 noundef 1874103603, i32 noundef 1330263547, i32 noundef 2139095040) #2
  %322 = load i32, ptr %status, align 4
  %or644 = or i32 %322, %call643
  store i32 %or644, ptr %status, align 4
  %call645 = call i32 @test__mulsf3(i32 noundef 548703539, i32 noundef 516568571, i32 noundef 4673214) #2
  %323 = load i32, ptr %status, align 4
  %or646 = or i32 %323, %call645
  store i32 %or646, ptr %status, align 4
  %call647 = call i32 @test__mulsf3(i32 noundef 1070004347, i32 noundef 1063639373, i32 noundef 1068672298) #2
  %324 = load i32, ptr %status, align 4
  %or648 = or i32 %324, %call647
  store i32 %or648, ptr %status, align 4
  %call649 = call i32 @test__mulsf3(i32 noundef 1875310715, i32 noundef 1332074829, i32 noundef 2139095040) #2
  %325 = load i32, ptr %status, align 4
  %or650 = or i32 %325, %call649
  store i32 %or650, ptr %status, align 4
  %call651 = call i32 @test__mulsf3(i32 noundef 549910651, i32 noundef 518379853, i32 noundef 5853845) #2
  %326 = load i32, ptr %status, align 4
  %or652 = or i32 %326, %call651
  store i32 %or652, ptr %status, align 4
  %call653 = call i32 @test__mulsf3(i32 noundef 1065749223, i32 noundef 1066833705, i32 noundef 1067299602) #2
  %327 = load i32, ptr %status, align 4
  %or654 = or i32 %327, %call653
  store i32 %or654, ptr %status, align 4
  %call655 = call i32 @test__mulsf3(i32 noundef 1871055591, i32 noundef 1335269161, i32 noundef 2139095040) #2
  %328 = load i32, ptr %status, align 4
  %or656 = or i32 %328, %call655
  store i32 %or656, ptr %status, align 4
  %call657 = call i32 @test__mulsf3(i32 noundef 545655527, i32 noundef 521574185, i32 noundef 5167497) #2
  %329 = load i32, ptr %status, align 4
  %or658 = or i32 %329, %call657
  store i32 %or658, ptr %status, align 4
  %call659 = call i32 @test__mulsf3(i32 noundef 1065749223, i32 noundef 1069547520, i32 noundef 1070141530) #2
  %330 = load i32, ptr %status, align 4
  %or660 = or i32 %330, %call659
  store i32 %or660, ptr %status, align 4
  %call661 = call i32 @test__mulsf3(i32 noundef 1871055591, i32 noundef 1337982976, i32 noundef 2139095040) #2
  %331 = load i32, ptr %status, align 4
  %or662 = or i32 %331, %call661
  store i32 %or662, ptr %status, align 4
  %call663 = call i32 @test__mulsf3(i32 noundef 545655527, i32 noundef 524288000, i32 noundef 6588461) #2
  %332 = load i32, ptr %status, align 4
  %or664 = or i32 %332, %call663
  store i32 %or664, ptr %status, align 4
  %call665 = call i32 @test__mulsf3(i32 noundef 1065749223, i32 noundef 1072261335, i32 noundef 1072983459) #2
  %333 = load i32, ptr %status, align 4
  %or666 = or i32 %333, %call665
  store i32 %or666, ptr %status, align 4
  %call667 = call i32 @test__mulsf3(i32 noundef 1871055591, i32 noundef 1340696791, i32 noundef 2139095040) #2
  %334 = load i32, ptr %status, align 4
  %or668 = or i32 %334, %call667
  store i32 %or668, ptr %status, align 4
  %call669 = call i32 @test__mulsf3(i32 noundef 545655527, i32 noundef 527001815, i32 noundef 8009425) #2
  %335 = load i32, ptr %status, align 4
  %or670 = or i32 %335, %call669
  store i32 %or670, ptr %status, align 4
  %call671 = call i32 @test__mulsf3(i32 noundef 1065749223, i32 noundef 1065353216, i32 noundef 1065749223) #2
  %336 = load i32, ptr %status, align 4
  %or672 = or i32 %336, %call671
  store i32 %or672, ptr %status, align 4
  %call673 = call i32 @test__mulsf3(i32 noundef 1871055591, i32 noundef 1333788672, i32 noundef 2139095040) #2
  %337 = load i32, ptr %status, align 4
  %or674 = or i32 %337, %call673
  store i32 %or674, ptr %status, align 4
  %call675 = call i32 @test__mulsf3(i32 noundef 545655527, i32 noundef 520093696, i32 noundef 4392308) #2
  %338 = load i32, ptr %status, align 4
  %or676 = or i32 %338, %call675
  store i32 %or676, ptr %status, align 4
  %call677 = call i32 @test__mulsf3(i32 noundef 1065749223, i32 noundef 1068067031, i32 noundef 1068591151) #2
  %339 = load i32, ptr %status, align 4
  %or678 = or i32 %339, %call677
  store i32 %or678, ptr %status, align 4
  %call679 = call i32 @test__mulsf3(i32 noundef 1871055591, i32 noundef 1336502487, i32 noundef 2139095040) #2
  %340 = load i32, ptr %status, align 4
  %or680 = or i32 %340, %call679
  store i32 %or680, ptr %status, align 4
  %call681 = call i32 @test__mulsf3(i32 noundef 545655527, i32 noundef 522807511, i32 noundef 5813272) #2
  %341 = load i32, ptr %status, align 4
  %or682 = or i32 %341, %call681
  store i32 %or682, ptr %status, align 4
  %call683 = call i32 @test__mulsf3(i32 noundef 1065749223, i32 noundef 1071028009, i32 noundef 1071691910) #2
  %342 = load i32, ptr %status, align 4
  %or684 = or i32 %342, %call683
  store i32 %or684, ptr %status, align 4
  %call685 = call i32 @test__mulsf3(i32 noundef 1871055591, i32 noundef 1339463465, i32 noundef 2139095040) #2
  %343 = load i32, ptr %status, align 4
  %or686 = or i32 %343, %call685
  store i32 %or686, ptr %status, align 4
  %call687 = call i32 @test__mulsf3(i32 noundef 545655527, i32 noundef 525768489, i32 noundef 7363651) #2
  %344 = load i32, ptr %status, align 4
  %or688 = or i32 %344, %call687
  store i32 %or688, ptr %status, align 4
  %call689 = call i32 @test__mulsf3(i32 noundef 1067117789, i32 noundef 1068583797, i32 noundef 1071027934) #2
  %345 = load i32, ptr %status, align 4
  %or690 = or i32 %345, %call689
  store i32 %or690, ptr %status, align 4
  %call691 = call i32 @test__mulsf3(i32 noundef 1872424157, i32 noundef 1337019253, i32 noundef 2139095040) #2
  %346 = load i32, ptr %status, align 4
  %or692 = or i32 %346, %call691
  store i32 %or692, ptr %status, align 4
  %call693 = call i32 @test__mulsf3(i32 noundef 547024093, i32 noundef 523324277, i32 noundef 7031663) #2
  %347 = load i32, ptr %status, align 4
  %or694 = or i32 %347, %call693
  store i32 %or694, ptr %status, align 4
  %call695 = call i32 @test__mulsf3(i32 noundef 1067117789, i32 noundef 1070511243, i32 noundef 1073360825) #2
  %348 = load i32, ptr %status, align 4
  %or696 = or i32 %348, %call695
  store i32 %or696, ptr %status, align 4
  %call697 = call i32 @test__mulsf3(i32 noundef 1872424157, i32 noundef 1338946699, i32 noundef 2139095040) #2
  %349 = load i32, ptr %status, align 4
  %or698 = or i32 %349, %call697
  store i32 %or698, ptr %status, align 4
  %call699 = call i32 @test__mulsf3(i32 noundef 547024093, i32 noundef 525251723, i32 noundef 8198108) #2
  %350 = load i32, ptr %status, align 4
  %or700 = or i32 %350, %call699
  store i32 %or700, ptr %status, align 4
  %call701 = call i32 @test__mulsf3(i32 noundef 1067117789, i32 noundef 1069547520, i32 noundef 1072194380) #2
  %351 = load i32, ptr %status, align 4
  %or702 = or i32 %351, %call701
  store i32 %or702, ptr %status, align 4
  %call703 = call i32 @test__mulsf3(i32 noundef 1872424157, i32 noundef 1337982976, i32 noundef 2139095040) #2
  %352 = load i32, ptr %status, align 4
  %or704 = or i32 %352, %call703
  store i32 %or704, ptr %status, align 4
  %call705 = call i32 @test__mulsf3(i32 noundef 547024093, i32 noundef 524288000, i32 noundef 7614886) #2
  %353 = load i32, ptr %status, align 4
  %or706 = or i32 %353, %call705
  store i32 %or706, ptr %status, align 4
  %call707 = call i32 @test__mulsf3(i32 noundef 1071013318, i32 noundef 1061158912, i32 noundef 1067501140) #2
  %354 = load i32, ptr %status, align 4
  %or708 = or i32 %354, %call707
  store i32 %or708, ptr %status, align 4
  %call709 = call i32 @test__mulsf3(i32 noundef 1876319686, i32 noundef 1329594368, i32 noundef 2139095040) #2
  %355 = load i32, ptr %status, align 4
  %or710 = or i32 %355, %call709
  store i32 %or710, ptr %status, align 4
  %call711 = call i32 @test__mulsf3(i32 noundef 550919622, i32 noundef 515899392, i32 noundef 5268266) #2
  %356 = load i32, ptr %status, align 4
  %or712 = or i32 %356, %call711
  store i32 %or712, ptr %status, align 4
  %call713 = call i32 @test__mulsf3(i32 noundef 1072615171, i32 noundef 1063228331, i32 noundef 1070632980) #2
  %357 = load i32, ptr %status, align 4
  %or714 = or i32 %357, %call713
  store i32 %or714, ptr %status, align 4
  %call715 = call i32 @test__mulsf3(i32 noundef 1877921539, i32 noundef 1331663787, i32 noundef 2139095040) #2
  %358 = load i32, ptr %status, align 4
  %or716 = or i32 %358, %call715
  store i32 %or716, ptr %status, align 4
  %call717 = call i32 @test__mulsf3(i32 noundef 552521475, i32 noundef 517968811, i32 noundef 6834186) #2
  %359 = load i32, ptr %status, align 4
  %or718 = or i32 %359, %call717
  store i32 %or718, ptr %status, align 4
  %call719 = call i32 @test__mulsf3(i32 noundef 1072615171, i32 noundef 1059089493, i32 noundef 1066772080) #2
  %360 = load i32, ptr %status, align 4
  %or720 = or i32 %360, %call719
  store i32 %or720, ptr %status, align 4
  %call721 = call i32 @test__mulsf3(i32 noundef 1877921539, i32 noundef 1327524949, i32 noundef 2139095040) #2
  %361 = load i32, ptr %status, align 4
  %or722 = or i32 %361, %call721
  store i32 %or722, ptr %status, align 4
  %call723 = call i32 @test__mulsf3(i32 noundef 552521475, i32 noundef 513829973, i32 noundef 4903736) #2
  %362 = load i32, ptr %status, align 4
  %or724 = or i32 %362, %call723
  store i32 %or724, ptr %status, align 4
  %call725 = call i32 @test__mulsf3(i32 noundef 1066991341, i32 noundef 1063317787, i32 noundef 1065774887) #2
  %363 = load i32, ptr %status, align 4
  %or726 = or i32 %363, %call725
  store i32 %or726, ptr %status, align 4
  %call727 = call i32 @test__mulsf3(i32 noundef 1872297709, i32 noundef 1331753243, i32 noundef 2139095040) #2
  %364 = load i32, ptr %status, align 4
  %or728 = or i32 %364, %call727
  store i32 %or728, ptr %status, align 4
  %call729 = call i32 @test__mulsf3(i32 noundef 546897645, i32 noundef 518058267, i32 noundef 4405140) #2
  %365 = load i32, ptr %status, align 4
  %or730 = or i32 %365, %call729
  store i32 %or730, ptr %status, align 4
  %call731 = call i32 @test__mulsf3(i32 noundef 1067064221, i32 noundef 1067205301, i32 noundef 1069294072) #2
  %366 = load i32, ptr %status, align 4
  %or732 = or i32 %366, %call731
  store i32 %or732, ptr %status, align 4
  %call733 = call i32 @test__mulsf3(i32 noundef 1872370589, i32 noundef 1335640757, i32 noundef 2139095040) #2
  %367 = load i32, ptr %status, align 4
  %or734 = or i32 %367, %call733
  store i32 %or734, ptr %status, align 4
  %call735 = call i32 @test__mulsf3(i32 noundef 546970525, i32 noundef 521945781, i32 noundef 6164732) #2
  %368 = load i32, ptr %status, align 4
  %or736 = or i32 %368, %call735
  store i32 %or736, ptr %status, align 4
  %call737 = call i32 @test__mulsf3(i32 noundef 1067064221, i32 noundef 1063010997, i32 noundef 1065654243) #2
  %369 = load i32, ptr %status, align 4
  %or738 = or i32 %369, %call737
  store i32 %or738, ptr %status, align 4
  %call739 = call i32 @test__mulsf3(i32 noundef 1872370589, i32 noundef 1331446453, i32 noundef 2139095040) #2
  %370 = load i32, ptr %status, align 4
  %or740 = or i32 %370, %call739
  store i32 %or740, ptr %status, align 4
  %call741 = call i32 @test__mulsf3(i32 noundef 546970525, i32 noundef 517751477, i32 noundef 4344818) #2
  %371 = load i32, ptr %status, align 4
  %or742 = or i32 %371, %call741
  store i32 %or742, ptr %status, align 4
  %call743 = call i32 @test__mulsf3(i32 noundef 1066692676, i32 noundef 1063256064, i32 noundef 1065476668) #2
  %372 = load i32, ptr %status, align 4
  %or744 = or i32 %372, %call743
  store i32 %or744, ptr %status, align 4
  %call745 = call i32 @test__mulsf3(i32 noundef 1871999044, i32 noundef 1331691520, i32 noundef 2139095040) #2
  %373 = load i32, ptr %status, align 4
  %or746 = or i32 %373, %call745
  store i32 %or746, ptr %status, align 4
  %call747 = call i32 @test__mulsf3(i32 noundef 546598980, i32 noundef 517996544, i32 noundef 4256030) #2
  %374 = load i32, ptr %status, align 4
  %or748 = or i32 %374, %call747
  store i32 %or748, ptr %status, align 4
  %call749 = call i32 @test__mulsf3(i32 noundef 1067711351, i32 noundef 1064219065, i32 noundef 1066984864) #2
  %375 = load i32, ptr %status, align 4
  %or750 = or i32 %375, %call749
  store i32 %or750, ptr %status, align 4
  %call751 = call i32 @test__mulsf3(i32 noundef 1873017719, i32 noundef 1332654521, i32 noundef 2139095040) #2
  %376 = load i32, ptr %status, align 4
  %or752 = or i32 %376, %call751
  store i32 %or752, ptr %status, align 4
  %call753 = call i32 @test__mulsf3(i32 noundef 547617655, i32 noundef 518959545, i32 noundef 5010128) #2
  %377 = load i32, ptr %status, align 4
  %or754 = or i32 %377, %call753
  store i32 %or754, ptr %status, align 4
  %call755 = call i32 @test__mulsf3(i32 noundef 1068667359, i32 noundef 1061579295, i32 noundef 1066034905) #2
  %378 = load i32, ptr %status, align 4
  %or756 = or i32 %378, %call755
  store i32 %or756, ptr %status, align 4
  %call757 = call i32 @test__mulsf3(i32 noundef 1873973727, i32 noundef 1330014751, i32 noundef 2139095040) #2
  %379 = load i32, ptr %status, align 4
  %or758 = or i32 %379, %call757
  store i32 %or758, ptr %status, align 4
  %call759 = call i32 @test__mulsf3(i32 noundef 548573663, i32 noundef 516319775, i32 noundef 4535148) #2
  %380 = load i32, ptr %status, align 4
  %or760 = or i32 %380, %call759
  store i32 %or760, ptr %status, align 4
  %call761 = call i32 @test__mulsf3(i32 noundef 1071518677, i32 noundef 1064006275, i32 noundef 1070350219) #2
  %381 = load i32, ptr %status, align 4
  %or762 = or i32 %381, %call761
  store i32 %or762, ptr %status, align 4
  %call763 = call i32 @test__mulsf3(i32 noundef 1876825045, i32 noundef 1332441731, i32 noundef 2139095040) #2
  %382 = load i32, ptr %status, align 4
  %or764 = or i32 %382, %call763
  store i32 %or764, ptr %status, align 4
  %call765 = call i32 @test__mulsf3(i32 noundef 551424981, i32 noundef 518746755, i32 noundef 6692805) #2
  %383 = load i32, ptr %status, align 4
  %or766 = or i32 %383, %call765
  store i32 %or766, ptr %status, align 4
  %call767 = call i32 @test__mulsf3(i32 noundef 1070969361, i32 noundef 1065386255, i32 noundef 1071024519) #2
  %384 = load i32, ptr %status, align 4
  %or768 = or i32 %384, %call767
  store i32 %or768, ptr %status, align 4
  %call769 = call i32 @test__mulsf3(i32 noundef 1876275729, i32 noundef 1333821711, i32 noundef 2139095040) #2
  %385 = load i32, ptr %status, align 4
  %or770 = or i32 %385, %call769
  store i32 %or770, ptr %status, align 4
  %call771 = call i32 @test__mulsf3(i32 noundef 550875665, i32 noundef 520126735, i32 noundef 7029956) #2
  %386 = load i32, ptr %status, align 4
  %or772 = or i32 %386, %call771
  store i32 %or772, ptr %status, align 4
  %call773 = call i32 @test__mulsf3(i32 noundef 1070969361, i32 noundef 1061125873, i32 noundef 1067440594) #2
  %387 = load i32, ptr %status, align 4
  %or774 = or i32 %387, %call773
  store i32 %or774, ptr %status, align 4
  %call775 = call i32 @test__mulsf3(i32 noundef 1876275729, i32 noundef 1329561329, i32 noundef 2139095040) #2
  %388 = load i32, ptr %status, align 4
  %or776 = or i32 %388, %call775
  store i32 %or776, ptr %status, align 4
  %call777 = call i32 @test__mulsf3(i32 noundef 550875665, i32 noundef 515866353, i32 noundef 5237993) #2
  %389 = load i32, ptr %status, align 4
  %or778 = or i32 %389, %call777
  store i32 %or778, ptr %status, align 4
  %call779 = call i32 @test__mulsf3(i32 noundef 1068366788, i32 noundef 1061158912, i32 noundef 1065516243) #2
  %390 = load i32, ptr %status, align 4
  %or780 = or i32 %390, %call779
  store i32 %or780, ptr %status, align 4
  %call781 = call i32 @test__mulsf3(i32 noundef 1873673156, i32 noundef 1329594368, i32 noundef 2139095040) #2
  %391 = load i32, ptr %status, align 4
  %or782 = or i32 %391, %call781
  store i32 %or782, ptr %status, align 4
  %call783 = call i32 @test__mulsf3(i32 noundef 548273092, i32 noundef 515899392, i32 noundef 4275818) #2
  %392 = load i32, ptr %status, align 4
  %or784 = or i32 %392, %call783
  store i32 %or784, ptr %status, align 4
  %call785 = call i32 @test__mulsf3(i32 noundef 1070657283, i32 noundef 1065353216, i32 noundef 1070657283) #2
  %393 = load i32, ptr %status, align 4
  %or786 = or i32 %393, %call785
  store i32 %or786, ptr %status, align 4
  %call787 = call i32 @test__mulsf3(i32 noundef 1875963651, i32 noundef 1333788672, i32 noundef 2139095040) #2
  %394 = load i32, ptr %status, align 4
  %or788 = or i32 %394, %call787
  store i32 %or788, ptr %status, align 4
  %call789 = call i32 @test__mulsf3(i32 noundef 550563587, i32 noundef 520093696, i32 noundef 6846338) #2
  %395 = load i32, ptr %status, align 4
  %or790 = or i32 %395, %call789
  store i32 %or790, ptr %status, align 4
  %call791 = call i32 @test__mulsf3(i32 noundef 1070657283, i32 noundef 1065776043, i32 noundef 1071347461) #2
  %396 = load i32, ptr %status, align 4
  %or792 = or i32 %396, %call791
  store i32 %or792, ptr %status, align 4
  %call793 = call i32 @test__mulsf3(i32 noundef 1875963651, i32 noundef 1334211499, i32 noundef 2139095040) #2
  %397 = load i32, ptr %status, align 4
  %or794 = or i32 %397, %call793
  store i32 %or794, ptr %status, align 4
  %call795 = call i32 @test__mulsf3(i32 noundef 550563587, i32 noundef 520516523, i32 noundef 7191427) #2
  %398 = load i32, ptr %status, align 4
  %or796 = or i32 %398, %call795
  store i32 %or796, ptr %status, align 4
  %call797 = call i32 @test__mulsf3(i32 noundef 1070657283, i32 noundef 1064930389, i32 noundef 1070312194) #2
  %399 = load i32, ptr %status, align 4
  %or798 = or i32 %399, %call797
  store i32 %or798, ptr %status, align 4
  %call799 = call i32 @test__mulsf3(i32 noundef 1875963651, i32 noundef 1333365845, i32 noundef 2139095040) #2
  %400 = load i32, ptr %status, align 4
  %or800 = or i32 %400, %call799
  store i32 %or800, ptr %status, align 4
  %call801 = call i32 @test__mulsf3(i32 noundef 550563587, i32 noundef 519670869, i32 noundef 6673793) #2
  %401 = load i32, ptr %status, align 4
  %or802 = or i32 %401, %call801
  store i32 %or802, ptr %status, align 4
  %call803 = call i32 @test__mulsf3(i32 noundef 1071452545, i32 noundef 1066062207, i32 noundef 1072677041) #2
  %402 = load i32, ptr %status, align 4
  %or804 = or i32 %402, %call803
  store i32 %or804, ptr %status, align 4
  %call805 = call i32 @test__mulsf3(i32 noundef 1876758913, i32 noundef 1334497663, i32 noundef 2139095040) #2
  %403 = load i32, ptr %status, align 4
  %or806 = or i32 %403, %call805
  store i32 %or806, ptr %status, align 4
  %call807 = call i32 @test__mulsf3(i32 noundef 551358849, i32 noundef 520802687, i32 noundef 7856216) #2
  %404 = load i32, ptr %status, align 4
  %or808 = or i32 %404, %call807
  store i32 %or808, ptr %status, align 4
  %call809 = call i32 @test__mulsf3(i32 noundef 1071452545, i32 noundef 1064644225, i32 noundef 1070840297) #2
  %405 = load i32, ptr %status, align 4
  %or810 = or i32 %405, %call809
  store i32 %or810, ptr %status, align 4
  %call811 = call i32 @test__mulsf3(i32 noundef 1876758913, i32 noundef 1333079681, i32 noundef 2139095040) #2
  %406 = load i32, ptr %status, align 4
  %or812 = or i32 %406, %call811
  store i32 %or812, ptr %status, align 4
  %call813 = call i32 @test__mulsf3(i32 noundef 551358849, i32 noundef 519384705, i32 noundef 6937845) #2
  %407 = load i32, ptr %status, align 4
  %or814 = or i32 %407, %call813
  store i32 %or814, ptr %status, align 4
  %call815 = call i32 @test__mulsf3(i32 noundef 1066594246, i32 noundef 1067450368, i32 noundef 1069001656) #2
  %408 = load i32, ptr %status, align 4
  %or816 = or i32 %408, %call815
  store i32 %or816, ptr %status, align 4
  %call817 = call i32 @test__mulsf3(i32 noundef 1871900614, i32 noundef 1335885824, i32 noundef 2139095040) #2
  %409 = load i32, ptr %status, align 4
  %or818 = or i32 %409, %call817
  store i32 %or818, ptr %status, align 4
  %call819 = call i32 @test__mulsf3(i32 noundef 546500550, i32 noundef 522190848, i32 noundef 6018524) #2
  %410 = load i32, ptr %status, align 4
  %or820 = or i32 %410, %call819
  store i32 %or820, ptr %status, align 4
  %call821 = call i32 @test__mulsf3(i32 noundef 1071443942, i32 noundef 1061158912, i32 noundef 1067824108) #2
  %411 = load i32, ptr %status, align 4
  %or822 = or i32 %411, %call821
  store i32 %or822, ptr %status, align 4
  %call823 = call i32 @test__mulsf3(i32 noundef 1876750310, i32 noundef 1329594368, i32 noundef 2139095040) #2
  %412 = load i32, ptr %status, align 4
  %or824 = or i32 %412, %call823
  store i32 %or824, ptr %status, align 4
  %call825 = call i32 @test__mulsf3(i32 noundef 551350246, i32 noundef 515899392, i32 noundef 5429750) #2
  %413 = load i32, ptr %status, align 4
  %or826 = or i32 %413, %call825
  store i32 %or826, ptr %status, align 4
  %call827 = call i32 @test__mulsf3(i32 noundef 1068328199, i32 noundef 1067645111, i32 noundef 1071432905) #2
  %414 = load i32, ptr %status, align 4
  %or828 = or i32 %414, %call827
  store i32 %or828, ptr %status, align 4
  %call829 = call i32 @test__mulsf3(i32 noundef 1873634567, i32 noundef 1336080567, i32 noundef 2139095040) #2
  %415 = load i32, ptr %status, align 4
  %or830 = or i32 %415, %call829
  store i32 %or830, ptr %status, align 4
  %call831 = call i32 @test__mulsf3(i32 noundef 548234503, i32 noundef 522385591, i32 noundef 7234148) #2
  %416 = load i32, ptr %status, align 4
  %or832 = or i32 %416, %call831
  store i32 %or832, ptr %status, align 4
  %call833 = call i32 @test__mulsf3(i32 noundef 1068328199, i32 noundef 1063450807, i32 noundef 1067039654) #2
  %417 = load i32, ptr %status, align 4
  %or834 = or i32 %417, %call833
  store i32 %or834, ptr %status, align 4
  %call835 = call i32 @test__mulsf3(i32 noundef 1873634567, i32 noundef 1331886263, i32 noundef 2139095040) #2
  %418 = load i32, ptr %status, align 4
  %or836 = or i32 %418, %call835
  store i32 %or836, ptr %status, align 4
  %call837 = call i32 @test__mulsf3(i32 noundef 548234503, i32 noundef 518191287, i32 noundef 5037523) #2
  %419 = load i32, ptr %status, align 4
  %or838 = or i32 %419, %call837
  store i32 %or838, ptr %status, align 4
  %call839 = call i32 @test__mulsf3(i32 noundef 1069538923, i32 noundef 1065820605, i32 noundef 1070239527) #2
  %420 = load i32, ptr %status, align 4
  %or840 = or i32 %420, %call839
  store i32 %or840, ptr %status, align 4
  %call841 = call i32 @test__mulsf3(i32 noundef 1874845291, i32 noundef 1334256061, i32 noundef 2139095040) #2
  %421 = load i32, ptr %status, align 4
  %or842 = or i32 %421, %call841
  store i32 %or842, ptr %status, align 4
  %call843 = call i32 @test__mulsf3(i32 noundef 549445227, i32 noundef 520561085, i32 noundef 6637460) #2
  %422 = load i32, ptr %status, align 4
  %or844 = or i32 %422, %call843
  store i32 %or844, ptr %status, align 4
  %call845 = call i32 @test__mulsf3(i32 noundef 1069538923, i32 noundef 1061626301, i32 noundef 1066745646) #2
  %423 = load i32, ptr %status, align 4
  %or846 = or i32 %423, %call845
  store i32 %or846, ptr %status, align 4
  %call847 = call i32 @test__mulsf3(i32 noundef 1874845291, i32 noundef 1330061757, i32 noundef 2139095040) #2
  %424 = load i32, ptr %status, align 4
  %or848 = or i32 %424, %call847
  store i32 %or848, ptr %status, align 4
  %call849 = call i32 @test__mulsf3(i32 noundef 549445227, i32 noundef 516366781, i32 noundef 4890519) #2
  %425 = load i32, ptr %status, align 4
  %or850 = or i32 %425, %call849
  store i32 %or850, ptr %status, align 4
  %call851 = call i32 @test__mulsf3(i32 noundef 1072958900, i32 noundef 1061158912, i32 noundef 1068960327) #2
  %426 = load i32, ptr %status, align 4
  %or852 = or i32 %426, %call851
  store i32 %or852, ptr %status, align 4
  %call853 = call i32 @test__mulsf3(i32 noundef 1878265268, i32 noundef 1329594368, i32 noundef 2139095040) #2
  %427 = load i32, ptr %status, align 4
  %or854 = or i32 %427, %call853
  store i32 %or854, ptr %status, align 4
  %call855 = call i32 @test__mulsf3(i32 noundef 552865204, i32 noundef 515899392, i32 noundef 5997860) #2
  %428 = load i32, ptr %status, align 4
  %or856 = or i32 %428, %call855
  store i32 %or856, ptr %status, align 4
  %call857 = call i32 @test__mulsf3(i32 noundef 1072958900, i32 noundef 1063256064, i32 noundef 1070959614) #2
  %429 = load i32, ptr %status, align 4
  %or858 = or i32 %429, %call857
  store i32 %or858, ptr %status, align 4
  %call859 = call i32 @test__mulsf3(i32 noundef 1878265268, i32 noundef 1331691520, i32 noundef 2139095040) #2
  %430 = load i32, ptr %status, align 4
  %or860 = or i32 %430, %call859
  store i32 %or860, ptr %status, align 4
  %call861 = call i32 @test__mulsf3(i32 noundef 552865204, i32 noundef 517996544, i32 noundef 6997503) #2
  %431 = load i32, ptr %status, align 4
  %or862 = or i32 %431, %call861
  store i32 %or862, ptr %status, align 4
  %call863 = call i32 @test__mulsf3(i32 noundef 1067327699, i32 noundef 1066453157, i32 noundef 1068686540) #2
  %432 = load i32, ptr %status, align 4
  %or864 = or i32 %432, %call863
  store i32 %or864, ptr %status, align 4
  %call865 = call i32 @test__mulsf3(i32 noundef 1872634067, i32 noundef 1334888613, i32 noundef 2139095040) #2
  %433 = load i32, ptr %status, align 4
  %or866 = or i32 %433, %call865
  store i32 %or866, ptr %status, align 4
  %call867 = call i32 @test__mulsf3(i32 noundef 547234003, i32 noundef 521193637, i32 noundef 5860966) #2
  %434 = load i32, ptr %status, align 4
  %or868 = or i32 %434, %call867
  store i32 %or868, ptr %status, align 4
  %call869 = call i32 @test__mulsf3(i32 noundef 1067327699, i32 noundef 1069547520, i32 noundef 1072509244) #2
  %435 = load i32, ptr %status, align 4
  %or870 = or i32 %435, %call869
  store i32 %or870, ptr %status, align 4
  %call871 = call i32 @test__mulsf3(i32 noundef 1872634067, i32 noundef 1337982976, i32 noundef 2139095040) #2
  %436 = load i32, ptr %status, align 4
  %or872 = or i32 %436, %call871
  store i32 %or872, ptr %status, align 4
  %call873 = call i32 @test__mulsf3(i32 noundef 547234003, i32 noundef 524288000, i32 noundef 7772318) #2
  %437 = load i32, ptr %status, align 4
  %or874 = or i32 %437, %call873
  store i32 %or874, ptr %status, align 4
  %call875 = call i32 @test__mulsf3(i32 noundef 1067327699, i32 noundef 1062258853, i32 noundef 1065416347) #2
  %438 = load i32, ptr %status, align 4
  %or876 = or i32 %438, %call875
  store i32 %or876, ptr %status, align 4
  %call877 = call i32 @test__mulsf3(i32 noundef 1872634067, i32 noundef 1330694309, i32 noundef 2139095040) #2
  %439 = load i32, ptr %status, align 4
  %or878 = or i32 %439, %call877
  store i32 %or878, ptr %status, align 4
  %call879 = call i32 @test__mulsf3(i32 noundef 547234003, i32 noundef 516999333, i32 noundef 4225869) #2
  %440 = load i32, ptr %status, align 4
  %or880 = or i32 %440, %call879
  store i32 %or880, ptr %status, align 4
  %call881 = call i32 @test__mulsf3(i32 noundef 1065543233, i32 noundef 1066391103, i32 noundef 1066604630) #2
  %441 = load i32, ptr %status, align 4
  %or882 = or i32 %441, %call881
  store i32 %or882, ptr %status, align 4
  %call883 = call i32 @test__mulsf3(i32 noundef 1870849601, i32 noundef 1334826559, i32 noundef 2139095040) #2
  %442 = load i32, ptr %status, align 4
  %or884 = or i32 %442, %call883
  store i32 %or884, ptr %status, align 4
  %call885 = call i32 @test__mulsf3(i32 noundef 545449537, i32 noundef 521131583, i32 noundef 4820011) #2
  %443 = load i32, ptr %status, align 4
  %or886 = or i32 %443, %call885
  store i32 %or886, ptr %status, align 4
  %call887 = call i32 @test__mulsf3(i32 noundef 1067063553, i32 noundef 1066854145, i32 noundef 1068870504) #2
  %444 = load i32, ptr %status, align 4
  %or888 = or i32 %444, %call887
  store i32 %or888, ptr %status, align 4
  %call889 = call i32 @test__mulsf3(i32 noundef 1872369921, i32 noundef 1335289601, i32 noundef 2139095040) #2
  %445 = load i32, ptr %status, align 4
  %or890 = or i32 %445, %call889
  store i32 %or890, ptr %status, align 4
  %call891 = call i32 @test__mulsf3(i32 noundef 546969857, i32 noundef 521594625, i32 noundef 5952948) #2
  %446 = load i32, ptr %status, align 4
  %or892 = or i32 %446, %call891
  store i32 %or892, ptr %status, align 4
  %call893 = call i32 @test__mulsf3(i32 noundef 1067588257, i32 noundef 1065109857, i32 noundef 1067434158) #2
  %447 = load i32, ptr %status, align 4
  %or894 = or i32 %447, %call893
  store i32 %or894, ptr %status, align 4
  %call895 = call i32 @test__mulsf3(i32 noundef 1872894625, i32 noundef 1333545313, i32 noundef 2139095040) #2
  %448 = load i32, ptr %status, align 4
  %or896 = or i32 %448, %call895
  store i32 %or896, ptr %status, align 4
  %call897 = call i32 @test__mulsf3(i32 noundef 547494561, i32 noundef 519850337, i32 noundef 5234775) #2
  %449 = load i32, ptr %status, align 4
  %or898 = or i32 %449, %call897
  store i32 %or898, ptr %status, align 4
  %call899 = call i32 @test__mulsf3(i32 noundef 1070401383, i32 noundef 1064838231, i32 noundef 1069988935) #2
  %450 = load i32, ptr %status, align 4
  %or900 = or i32 %450, %call899
  store i32 %or900, ptr %status, align 4
  %call901 = call i32 @test__mulsf3(i32 noundef 1875707751, i32 noundef 1333273687, i32 noundef 2139095040) #2
  %451 = load i32, ptr %status, align 4
  %or902 = or i32 %451, %call901
  store i32 %or902, ptr %status, align 4
  %call903 = call i32 @test__mulsf3(i32 noundef 550307687, i32 noundef 519578711, i32 noundef 6512163) #2
  %452 = load i32, ptr %status, align 4
  %or904 = or i32 %452, %call903
  store i32 %or904, ptr %status, align 4
  %call905 = call i32 @test__mulsf3(i32 noundef 1069053409, i32 noundef 1066831393, i32 noundef 1071183606) #2
  %453 = load i32, ptr %status, align 4
  %or906 = or i32 %453, %call905
  store i32 %or906, ptr %status, align 4
  %call907 = call i32 @test__mulsf3(i32 noundef 1874359777, i32 noundef 1335266849, i32 noundef 2139095040) #2
  %454 = load i32, ptr %status, align 4
  %or908 = or i32 %454, %call907
  store i32 %or908, ptr %status, align 4
  %call909 = call i32 @test__mulsf3(i32 noundef 548959713, i32 noundef 521571873, i32 noundef 7109499) #2
  %455 = load i32, ptr %status, align 4
  %or910 = or i32 %455, %call909
  store i32 %or910, ptr %status, align 4
  %call911 = call i32 @test__mulsf3(i32 noundef 1069740247, i32 noundef 1063189785, i32 noundef 1068092821) #2
  %456 = load i32, ptr %status, align 4
  %or912 = or i32 %456, %call911
  store i32 %or912, ptr %status, align 4
  %call913 = call i32 @test__mulsf3(i32 noundef 1875046615, i32 noundef 1331625241, i32 noundef 2139095040) #2
  %457 = load i32, ptr %status, align 4
  %or914 = or i32 %457, %call913
  store i32 %or914, ptr %status, align 4
  %call915 = call i32 @test__mulsf3(i32 noundef 549646551, i32 noundef 517930265, i32 noundef 5564107) #2
  %458 = load i32, ptr %status, align 4
  %or916 = or i32 %458, %call915
  store i32 %or916, ptr %status, align 4
  %call917 = call i32 @test__mulsf3(i32 noundef 2139095038, i32 noundef 1065353217, i32 noundef 2139095040) #2
  %459 = load i32, ptr %status, align 4
  %or918 = or i32 %459, %call917
  store i32 %or918, ptr %status, align 4
  %call919 = call i32 @test__mulsf3(i32 noundef 3, i32 noundef -1072693249, i32 noundef -2147483641) #2
  %460 = load i32, ptr %status, align 4
  %or920 = or i32 %460, %call919
  store i32 %or920, ptr %status, align 4
  %call921 = call i32 @test__mulsf3(i32 noundef 3, i32 noundef 1074790399, i32 noundef 7) #2
  %461 = load i32, ptr %status, align 4
  %or922 = or i32 %461, %call921
  store i32 %or922, ptr %status, align 4
  %call923 = call i32 @test__mulsf3(i32 noundef -2147483645, i32 noundef -1072693249, i32 noundef 7) #2
  %462 = load i32, ptr %status, align 4
  %or924 = or i32 %462, %call923
  store i32 %or924, ptr %status, align 4
  %call925 = call i32 @test__mulsf3(i32 noundef -2147483645, i32 noundef 1074790399, i32 noundef -2147483641) #2
  %463 = load i32, ptr %status, align 4
  %or926 = or i32 %463, %call925
  store i32 %or926, ptr %status, align 4
  %call927 = call i32 @test__mulsf3(i32 noundef 3, i32 noundef -1072693251, i32 noundef -2147483641) #2
  %464 = load i32, ptr %status, align 4
  %or928 = or i32 %464, %call927
  store i32 %or928, ptr %status, align 4
  %call929 = call i32 @test__mulsf3(i32 noundef 3, i32 noundef 1074790397, i32 noundef 7) #2
  %465 = load i32, ptr %status, align 4
  %or930 = or i32 %465, %call929
  store i32 %or930, ptr %status, align 4
  %call931 = call i32 @test__mulsf3(i32 noundef -2147483645, i32 noundef -1072693251, i32 noundef 7) #2
  %466 = load i32, ptr %status, align 4
  %or932 = or i32 %466, %call931
  store i32 %or932, ptr %status, align 4
  %call933 = call i32 @test__mulsf3(i32 noundef -2147483645, i32 noundef 1074790397, i32 noundef -2147483641) #2
  %467 = load i32, ptr %status, align 4
  %or934 = or i32 %467, %call933
  store i32 %or934, ptr %status, align 4
  %call935 = call i32 @test__mulsf3(i32 noundef 1040187519, i32 noundef 24903680, i32 noundef 4128831) #2
  %468 = load i32, ptr %status, align 4
  %or936 = or i32 %468, %call935
  store i32 %or936, ptr %status, align 4
  %call937 = call i32 @test__mulsf3(i32 noundef -813695232, i32 noundef -1056964864, i32 noundef 1358953984) #2
  %469 = load i32, ptr %status, align 4
  %or938 = or i32 %469, %call937
  store i32 %or938, ptr %status, align 4
  %call939 = call i32 @test__mulsf3(i32 noundef 1071611648, i32 noundef 1073741568, i32 noundef 1080000033) #2
  %470 = load i32, ptr %status, align 4
  %or940 = or i32 %470, %call939
  store i32 %or940, ptr %status, align 4
  %call941 = call i32 @test__mulsf3(i32 noundef 431563076, i32 noundef 439418880, i32 noundef 1) #2
  %471 = load i32, ptr %status, align 4
  %or942 = or i32 %471, %call941
  store i32 %or942, ptr %status, align 4
  %call943 = call i32 @test__mulsf3(i32 noundef 436191240, i32 noundef 436215812, i32 noundef 1) #2
  %472 = load i32, ptr %status, align 4
  %or944 = or i32 %472, %call943
  store i32 %or944, ptr %status, align 4
  %call945 = call i32 @test__mulsf3(i32 noundef 2139095024, i32 noundef -1073741816, i32 noundef -8388608) #2
  %473 = load i32, ptr %status, align 4
  %or946 = or i32 %473, %call945
  store i32 %or946, ptr %status, align 4
  %call947 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef 0, i32 noundef 2143289344) #2
  %474 = load i32, ptr %status, align 4
  %or948 = or i32 %474, %call947
  store i32 %or948, ptr %status, align 4
  %call949 = call i32 @test__mulsf3(i32 noundef 2139095040, i32 noundef -2147483648, i32 noundef 2143289344) #2
  %475 = load i32, ptr %status, align 4
  %or950 = or i32 %475, %call949
  store i32 %or950, ptr %status, align 4
  %call951 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef 2139095040, i32 noundef 2143289344) #2
  %476 = load i32, ptr %status, align 4
  %or952 = or i32 %476, %call951
  store i32 %or952, ptr %status, align 4
  %call953 = call i32 @test__mulsf3(i32 noundef -2147483648, i32 noundef -8388608, i32 noundef 2143289344) #2
  %477 = load i32, ptr %status, align 4
  %or954 = or i32 %477, %call953
  store i32 %or954, ptr %status, align 4
  %call955 = call i32 @test__mulsf3(i32 noundef 1065353216, i32 noundef 2143289344, i32 noundef 2143289344) #2
  %478 = load i32, ptr %status, align 4
  %or956 = or i32 %478, %call955
  store i32 %or956, ptr %status, align 4
  %call957 = call i32 @test__mulsf3(i32 noundef 2143289344, i32 noundef 1065353216, i32 noundef 2143289344) #2
  %479 = load i32, ptr %status, align 4
  %or958 = or i32 %479, %call957
  store i32 %or958, ptr %status, align 4
  %call959 = call i32 @test__mulsf3(i32 noundef 2143289344, i32 noundef 2143289344, i32 noundef 2143289344) #2
  %480 = load i32, ptr %status, align 4
  %or960 = or i32 %480, %call959
  store i32 %or960, ptr %status, align 4
  %481 = load i32, ptr %status, align 4
  ret i32 %481
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
