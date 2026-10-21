; ModuleID = 'tests/programs-d/doubles.c'
source_filename = "tests/programs-d/doubles.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.anon = type <{ i8, double }>
%struct.dd = type { double, double }
%struct.di = type { double, i32 }
%struct.big = type { double, double, double }
%union.anon = type { double }

@vz = internal global double 0.000000e+00, align 8
@__const.main.xs = private unnamed_addr constant [10 x double] [double 1.500000e+00, double -2.250000e+00, double 1.000000e+300, double -1.000000e-300, double 3.000000e+00, double 1.000000e-01, double -0.000000e+00, double 7.750000e+00, double 0x419D6F3454800000, double -9.500000e+00], align 8
@__const.main.pk = private unnamed_addr constant %struct.anon <{ i8 1, double 2.500000e+00 }>, align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %h = alloca i32, align 4
  %nan = alloca double, align 8
  %inf = alloca double, align 8
  %one = alloca double, align 8
  %xs = alloca [10 x double], align 8
  %i = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %fa = alloca float, align 4
  %p = alloca %struct.dd, align 8
  %.compoundliteral = alloca %struct.dd, align 8
  %q = alloca %struct.di, align 8
  %r = alloca %struct.big, align 8
  %.compoundliteral107 = alloca %struct.big, align 8
  %byval-temp = alloca %struct.big, align 8
  %arr = alloca [64 x double], align 8
  %i120 = alloca i32, align 4
  %pk = alloca %struct.anon, align 1
  %pc = alloca ptr, align 4
  store i32 -2128831035, ptr %h, align 4
  %0 = load volatile double, ptr @vz, align 8
  %1 = load volatile double, ptr @vz, align 8
  %div = fdiv double %0, %1
  store double %div, ptr %nan, align 8
  %2 = load volatile double, ptr @vz, align 8
  %div1 = fdiv double 1.000000e+00, %2
  store double %div1, ptr %inf, align 8
  %3 = load volatile double, ptr @vz, align 8
  %add = fadd double %3, 1.000000e+00
  store double %add, ptr %one, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %xs, ptr align 8 @__const.main.xs, i32 80, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %arrayidx = getelementptr inbounds [10 x double], ptr %xs, i32 0, i32 %5
  %6 = load double, ptr %arrayidx, align 8
  store double %6, ptr %a, align 8
  %7 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %7, 7
  %add2 = add nsw i32 %mul, 3
  %rem = srem i32 %add2, 10
  %arrayidx3 = getelementptr inbounds [10 x double], ptr %xs, i32 0, i32 %rem
  %8 = load double, ptr %arrayidx3, align 8
  store double %8, ptr %b, align 8
  %9 = load i32, ptr %h, align 4
  %10 = load double, ptr %a, align 8
  %11 = load double, ptr %b, align 8
  %add4 = fadd double %10, %11
  %call = call i32 @bits(double noundef %add4) #5
  %call5 = call i32 @mix(i32 noundef %9, i32 noundef %call) #5
  store i32 %call5, ptr %h, align 4
  %12 = load i32, ptr %h, align 4
  %13 = load double, ptr %a, align 8
  %14 = load double, ptr %b, align 8
  %sub = fsub double %13, %14
  %call6 = call i32 @bits(double noundef %sub) #5
  %call7 = call i32 @mix(i32 noundef %12, i32 noundef %call6) #5
  store i32 %call7, ptr %h, align 4
  %15 = load i32, ptr %h, align 4
  %16 = load double, ptr %a, align 8
  %17 = load double, ptr %b, align 8
  %mul8 = fmul double %16, %17
  %call9 = call i32 @bits(double noundef %mul8) #5
  %call10 = call i32 @mix(i32 noundef %15, i32 noundef %call9) #5
  store i32 %call10, ptr %h, align 4
  %18 = load i32, ptr %h, align 4
  %19 = load double, ptr %a, align 8
  %20 = load double, ptr %b, align 8
  %cmp11 = fcmp oeq double %20, 0.000000e+00
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %21 = load double, ptr %b, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %21, %cond.false ]
  %div12 = fdiv double %19, %cond
  %call13 = call i32 @bits(double noundef %div12) #5
  %call14 = call i32 @mix(i32 noundef %18, i32 noundef %call13) #5
  store i32 %call14, ptr %h, align 4
  %22 = load i32, ptr %h, align 4
  %23 = load double, ptr %a, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = call double @llvm.sqrt.f64(double %24)
  %call15 = call i32 @bits(double noundef %25) #5
  %call16 = call i32 @mix(i32 noundef %22, i32 noundef %call15) #5
  store i32 %call16, ptr %h, align 4
  %26 = load i32, ptr %h, align 4
  %27 = load double, ptr %a, align 8
  %28 = load double, ptr %b, align 8
  %29 = load double, ptr %one, align 8
  %30 = call double @llvm.fma.f64(double %27, double %28, double %29)
  %call17 = call i32 @bits(double noundef %30) #5
  %call18 = call i32 @mix(i32 noundef %26, i32 noundef %call17) #5
  store i32 %call18, ptr %h, align 4
  %31 = load i32, ptr %h, align 4
  %32 = load double, ptr %a, align 8
  %33 = load double, ptr %b, align 8
  %34 = call double @llvm.copysign.f64(double %32, double %33)
  %call19 = call i32 @bits(double noundef %34) #5
  %call20 = call i32 @mix(i32 noundef %31, i32 noundef %call19) #5
  store i32 %call20, ptr %h, align 4
  %35 = load i32, ptr %h, align 4
  %36 = load double, ptr %a, align 8
  %37 = load double, ptr %b, align 8
  %38 = call double @llvm.minnum.f64(double %36, double %37)
  %call21 = call i32 @bits(double noundef %38) #5
  %call22 = call i32 @mix(i32 noundef %35, i32 noundef %call21) #5
  store i32 %call22, ptr %h, align 4
  %39 = load i32, ptr %h, align 4
  %40 = load double, ptr %a, align 8
  %41 = load double, ptr %nan, align 8
  %42 = call double @llvm.maxnum.f64(double %40, double %41)
  %call23 = call i32 @bits(double noundef %42) #5
  %call24 = call i32 @mix(i32 noundef %39, i32 noundef %call23) #5
  store i32 %call24, ptr %h, align 4
  %43 = load i32, ptr %h, align 4
  %44 = load double, ptr %a, align 8
  %45 = load double, ptr %b, align 8
  %cmp25 = fcmp olt double %44, %45
  %conv = zext i1 %cmp25 to i32
  %46 = load double, ptr %a, align 8
  %47 = load double, ptr %b, align 8
  %cmp26 = fcmp ole double %46, %47
  %conv27 = zext i1 %cmp26 to i32
  %shl = shl i32 %conv27, 1
  %or = or i32 %conv, %shl
  %48 = load double, ptr %a, align 8
  %49 = load double, ptr %b, align 8
  %cmp28 = fcmp oeq double %48, %49
  %conv29 = zext i1 %cmp28 to i32
  %shl30 = shl i32 %conv29, 2
  %or31 = or i32 %or, %shl30
  %50 = load double, ptr %a, align 8
  %51 = load double, ptr %b, align 8
  %cmp32 = fcmp une double %50, %51
  %conv33 = zext i1 %cmp32 to i32
  %shl34 = shl i32 %conv33, 3
  %or35 = or i32 %or31, %shl34
  %52 = load double, ptr %a, align 8
  %53 = load double, ptr %nan, align 8
  %cmp36 = fcmp ogt double %52, %53
  %conv37 = zext i1 %cmp36 to i32
  %shl38 = shl i32 %conv37, 4
  %or39 = or i32 %or35, %shl38
  %54 = load double, ptr %a, align 8
  %55 = load double, ptr %nan, align 8
  %cmp40 = fcmp uno double %54, %55
  %56 = zext i1 %cmp40 to i32
  %shl41 = shl i32 %56, 5
  %or42 = or i32 %or39, %shl41
  %57 = load double, ptr %b, align 8
  %58 = load double, ptr %a, align 8
  %cmp43 = fcmp oge double %57, %58
  %59 = zext i1 %cmp43 to i32
  %shl44 = shl i32 %59, 6
  %or45 = or i32 %or42, %shl44
  %60 = load double, ptr %a, align 8
  %61 = load double, ptr %b, align 8
  %cmp46 = fcmp one double %60, %61
  %62 = zext i1 %cmp46 to i32
  %shl47 = shl i32 %62, 7
  %or48 = or i32 %or45, %shl47
  %call49 = call i32 @mix(i32 noundef %43, i32 noundef %or48) #5
  store i32 %call49, ptr %h, align 4
  %63 = load i32, ptr %h, align 4
  %64 = load double, ptr %a, align 8
  %div50 = fdiv double %64, 1.000000e+290
  %conv51 = fptosi double %div50 to i32
  %call52 = call i32 @mix(i32 noundef %63, i32 noundef %conv51) #5
  store i32 %call52, ptr %h, align 4
  %65 = load i32, ptr %h, align 4
  %66 = load double, ptr %b, align 8
  %mul53 = fmul double %66, 1.000000e+03
  %conv54 = fptosi double %mul53 to i64
  %conv55 = trunc i64 %conv54 to i32
  %call56 = call i32 @mix(i32 noundef %65, i32 noundef %conv55) #5
  store i32 %call56, ptr %h, align 4
  %67 = load i32, ptr %h, align 4
  %68 = load double, ptr %a, align 8
  %mul57 = fmul double %68, 1.000000e+03
  %69 = call double @llvm.fabs.f64(double %mul57)
  %conv58 = fptoui double %69 to i64
  %shr = lshr i64 %conv58, 3
  %conv59 = trunc i64 %shr to i32
  %call60 = call i32 @mix(i32 noundef %67, i32 noundef %conv59) #5
  store i32 %call60, ptr %h, align 4
  %70 = load i32, ptr %h, align 4
  %71 = load i32, ptr %i, align 4
  %mul61 = mul nsw i32 %71, -77
  %conv62 = sitofp i32 %mul61 to double
  %call63 = call i32 @bits(double noundef %conv62) #5
  %call64 = call i32 @mix(i32 noundef %70, i32 noundef %call63) #5
  store i32 %call64, ptr %h, align 4
  %72 = load i32, ptr %h, align 4
  %73 = load i32, ptr %i, align 4
  %mul65 = mul i32 %73, -1640531527
  %conv66 = uitofp i32 %mul65 to double
  %call67 = call i32 @bits(double noundef %conv66) #5
  %call68 = call i32 @mix(i32 noundef %72, i32 noundef %call67) #5
  store i32 %call68, ptr %h, align 4
  %74 = load i32, ptr %h, align 4
  %75 = load i32, ptr %i, align 4
  %conv69 = sext i32 %75 to i64
  %conv70 = sitofp i64 %conv69 to double
  %mul71 = fmul double %conv70, 0x41F2345678900000
  %call72 = call i32 @bits(double noundef %mul71) #5
  %call73 = call i32 @mix(i32 noundef %74, i32 noundef %call72) #5
  store i32 %call73, ptr %h, align 4
  %76 = load double, ptr %a, align 8
  %conv74 = fptrunc double %76 to float
  store float %conv74, ptr %fa, align 4
  %77 = load i32, ptr %h, align 4
  %78 = load i32, ptr %fa, align 4
  %call75 = call i32 @mix(i32 noundef %77, i32 noundef %78) #5
  store i32 %call75, ptr %h, align 4
  %79 = load i32, ptr %h, align 4
  %80 = load float, ptr %fa, align 4
  %conv76 = fpext float %80 to double
  %mul77 = fmul double %conv76, 3.000000e+00
  %call78 = call i32 @bits(double noundef %mul77) #5
  %call79 = call i32 @mix(i32 noundef %79, i32 noundef %call78) #5
  store i32 %call79, ptr %h, align 4
  %81 = load i32, ptr %h, align 4
  %82 = load double, ptr %a, align 8
  %83 = load double, ptr %inf, align 8
  %mul80 = fmul double %82, %83
  %84 = call i1 @llvm.is.fpclass.f64(double %mul80, i32 3)
  %85 = zext i1 %84 to i32
  %86 = load double, ptr %a, align 8
  %87 = load double, ptr %inf, align 8
  %mul81 = fmul double %86, %87
  %88 = call i1 @llvm.is.fpclass.f64(double %mul81, i32 516)
  %89 = zext i1 %88 to i32
  %shl82 = shl i32 %89, 1
  %or83 = or i32 %85, %shl82
  %90 = load double, ptr %a, align 8
  %91 = call i1 @llvm.is.fpclass.f64(double %90, i32 504)
  %92 = zext i1 %91 to i32
  %shl84 = shl i32 %92, 2
  %or85 = or i32 %or83, %shl84
  %call86 = call i32 @mix(i32 noundef %81, i32 noundef %or85) #5
  store i32 %call86, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %93 = load i32, ptr %i, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %94 = load i32, ptr %h, align 4
  %call87 = call double @sum10(double noundef 1.000000e+00, double noundef 2.000000e+00, double noundef 3.000000e+00, double noundef 4.000000e+00, double noundef 5.000000e+00, double noundef 6.000000e+00, double noundef 7.000000e+00, double noundef 8.000000e+00, double noundef 9.000000e+00, double noundef 1.000000e+01, i32 noundef 11, double noundef 1.200000e+01, float noundef 1.350000e+01) #5
  %call88 = call i32 @bits(double noundef %call87) #5
  %call89 = call i32 @mix(i32 noundef %94, i32 noundef %call88) #5
  store i32 %call89, ptr %h, align 4
  %95 = load i32, ptr %h, align 4
  %call90 = call double (i32, ...) @vsum(i32 noundef 6, double noundef 1.250000e+00, i32 noundef 7, double noundef -3.500000e+00, i32 noundef 9, double noundef 1.000000e+10, i32 noundef 11) #5
  %call91 = call i32 @bits(double noundef %call90) #5
  %call92 = call i32 @mix(i32 noundef %95, i32 noundef %call91) #5
  store i32 %call92, ptr %h, align 4
  %a93 = getelementptr inbounds nuw %struct.dd, ptr %.compoundliteral, i32 0, i32 0
  store double 3.500000e+00, ptr %a93, align 8
  %b94 = getelementptr inbounds nuw %struct.dd, ptr %.compoundliteral, i32 0, i32 1
  store double -8.000000e+00, ptr %b94, align 8
  %96 = getelementptr inbounds nuw { double, double }, ptr %.compoundliteral, i32 0, i32 0
  %97 = load double, ptr %96, align 8
  %98 = getelementptr inbounds nuw { double, double }, ptr %.compoundliteral, i32 0, i32 1
  %99 = load double, ptr %98, align 8
  %call95 = call { double, double } @swapdd(double %97, double %99) #5
  %100 = getelementptr inbounds nuw { double, double }, ptr %p, i32 0, i32 0
  %101 = extractvalue { double, double } %call95, 0
  store double %101, ptr %100, align 8
  %102 = getelementptr inbounds nuw { double, double }, ptr %p, i32 0, i32 1
  %103 = extractvalue { double, double } %call95, 1
  store double %103, ptr %102, align 8
  %104 = load i32, ptr %h, align 4
  %a96 = getelementptr inbounds nuw %struct.dd, ptr %p, i32 0, i32 0
  %105 = load double, ptr %a96, align 8
  %call97 = call i32 @bits(double noundef %105) #5
  %b98 = getelementptr inbounds nuw %struct.dd, ptr %p, i32 0, i32 1
  %106 = load double, ptr %b98, align 8
  %call99 = call i32 @bits(double noundef %106) #5
  %xor = xor i32 %call97, %call99
  %call100 = call i32 @mix(i32 noundef %104, i32 noundef %xor) #5
  store i32 %call100, ptr %h, align 4
  %call101 = call { double, i32 } @mkdi(double noundef 1.000000e+01, i32 noundef 41) #5
  %107 = getelementptr inbounds nuw { double, i32 }, ptr %q, i32 0, i32 0
  %108 = extractvalue { double, i32 } %call101, 0
  store double %108, ptr %107, align 8
  %109 = getelementptr inbounds nuw { double, i32 }, ptr %q, i32 0, i32 1
  %110 = extractvalue { double, i32 } %call101, 1
  store i32 %110, ptr %109, align 8
  %111 = load i32, ptr %h, align 4
  %a102 = getelementptr inbounds nuw %struct.di, ptr %q, i32 0, i32 0
  %112 = load double, ptr %a102, align 8
  %call103 = call i32 @bits(double noundef %112) #5
  %b104 = getelementptr inbounds nuw %struct.di, ptr %q, i32 0, i32 1
  %113 = load i32, ptr %b104, align 8
  %xor105 = xor i32 %call103, %113
  %call106 = call i32 @mix(i32 noundef %111, i32 noundef %xor105) #5
  store i32 %call106, ptr %h, align 4
  %a108 = getelementptr inbounds nuw %struct.big, ptr %.compoundliteral107, i32 0, i32 0
  store double 1.000000e+00, ptr %a108, align 8
  %b109 = getelementptr inbounds nuw %struct.big, ptr %.compoundliteral107, i32 0, i32 1
  store double 2.000000e+00, ptr %b109, align 8
  %c = getelementptr inbounds nuw %struct.big, ptr %.compoundliteral107, i32 0, i32 2
  store double 3.000000e+00, ptr %c, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %byval-temp, ptr align 8 %.compoundliteral107, i32 24, i1 false)
  call void @scale(ptr dead_on_unwind writable sret(%struct.big) align 8 %r, ptr dead_on_return noundef %byval-temp, double noundef 2.500000e+00) #5
  %114 = load i32, ptr %h, align 4
  %a110 = getelementptr inbounds nuw %struct.big, ptr %r, i32 0, i32 0
  %115 = load double, ptr %a110, align 8
  %b111 = getelementptr inbounds nuw %struct.big, ptr %r, i32 0, i32 1
  %116 = load double, ptr %b111, align 8
  %add112 = fadd double %115, %116
  %c113 = getelementptr inbounds nuw %struct.big, ptr %r, i32 0, i32 2
  %117 = load double, ptr %c113, align 8
  %add114 = fadd double %add112, %117
  %call115 = call i32 @bits(double noundef %add114) #5
  %call116 = call i32 @mix(i32 noundef %114, i32 noundef %call115) #5
  store i32 %call116, ptr %h, align 4
  %118 = load i32, ptr %h, align 4
  %call117 = call double @keep(double noundef 1.000000e+02, ptr noundef @halve) #5
  %call118 = call i32 @bits(double noundef %call117) #5
  %call119 = call i32 @mix(i32 noundef %118, i32 noundef %call118) #5
  store i32 %call119, ptr %h, align 4
  store i32 0, ptr %i120, align 4
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc128, %for.end
  %119 = load i32, ptr %i120, align 4
  %cmp122 = icmp slt i32 %119, 64
  br i1 %cmp122, label %for.body124, label %for.end130

for.body124:                                      ; preds = %for.cond121
  %120 = load i32, ptr %i120, align 4
  %conv125 = sitofp i32 %120 to double
  %121 = call double @llvm.fmuladd.f64(double %conv125, double 3.700000e-01, double -5.000000e+00)
  %122 = load i32, ptr %i120, align 4
  %arrayidx127 = getelementptr inbounds [64 x double], ptr %arr, i32 0, i32 %122
  store double %121, ptr %arrayidx127, align 8
  br label %for.inc128

for.inc128:                                       ; preds = %for.body124
  %123 = load i32, ptr %i120, align 4
  %inc129 = add nsw i32 %123, 1
  store i32 %inc129, ptr %i120, align 4
  br label %for.cond121, !llvm.loop !9

for.end130:                                       ; preds = %for.cond121
  %124 = load i32, ptr %h, align 4
  %arraydecay = getelementptr inbounds [64 x double], ptr %arr, i32 0, i32 0
  %call131 = call double @pressure(ptr noundef %arraydecay, i32 noundef 64) #5
  %call132 = call i32 @bits(double noundef %call131) #5
  %call133 = call i32 @mix(i32 noundef %124, i32 noundef %call132) #5
  store i32 %call133, ptr %h, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %pk, ptr align 1 @__const.main.pk, i32 9, i1 false)
  store ptr %pk, ptr %pc, align 4
  %125 = load ptr, ptr %pc, align 4
  %arrayidx134 = getelementptr inbounds i8, ptr %125, i32 0
  store volatile i8 3, ptr %arrayidx134, align 1
  %d = getelementptr inbounds nuw %struct.anon, ptr %pk, i32 0, i32 1
  %126 = load double, ptr %d, align 1
  %c136 = getelementptr inbounds nuw %struct.anon, ptr %pk, i32 0, i32 0
  %127 = load i8, ptr %c136, align 1
  %conv137 = zext i8 %127 to i32
  %conv138 = sitofp i32 %conv137 to double
  %128 = call double @llvm.fmuladd.f64(double %126, double 3.000000e+00, double %conv138)
  %d139 = getelementptr inbounds nuw %struct.anon, ptr %pk, i32 0, i32 1
  store double %128, ptr %d139, align 1
  %129 = load i32, ptr %h, align 4
  %d140 = getelementptr inbounds nuw %struct.anon, ptr %pk, i32 0, i32 1
  %130 = load double, ptr %d140, align 1
  %call141 = call i32 @bits(double noundef %130) #5
  %call142 = call i32 @mix(i32 noundef %129, i32 noundef %call141) #5
  store i32 %call142, ptr %h, align 4
  %131 = load i32, ptr %h, align 4
  ret i32 %131
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @mix(i32 noundef %h, i32 noundef %v) #0 {
entry:
  %h.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %h.addr, align 4
  %1 = load i32, ptr %v.addr, align 4
  %xor = xor i32 %0, %1
  %mul = mul i32 %xor, 16777619
  %add = add i32 %mul, -1640531527
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone
define internal i32 @bits(double noundef %d) #0 {
entry:
  %d.addr = alloca double, align 8
  %x = alloca %union.anon, align 8
  store double %d, ptr %d.addr, align 8
  %0 = load double, ptr %d.addr, align 8
  store double %0, ptr %x, align 8
  %1 = load i64, ptr %x, align 8
  %conv = trunc i64 %1 to i32
  %2 = load i64, ptr %x, align 8
  %shr = lshr i64 %2, 32
  %conv1 = trunc i64 %shr to i32
  %xor = xor i32 %conv, %conv1
  ret i32 %xor
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal double @sum10(double noundef %a0, double noundef %a1, double noundef %a2, double noundef %a3, double noundef %a4, double noundef %a5, double noundef %a6, double noundef %a7, double noundef %a8, double noundef %a9, i32 noundef %k, double noundef %a10, float noundef %f) #0 {
entry:
  %a0.addr = alloca double, align 8
  %a1.addr = alloca double, align 8
  %a2.addr = alloca double, align 8
  %a3.addr = alloca double, align 8
  %a4.addr = alloca double, align 8
  %a5.addr = alloca double, align 8
  %a6.addr = alloca double, align 8
  %a7.addr = alloca double, align 8
  %a8.addr = alloca double, align 8
  %a9.addr = alloca double, align 8
  %k.addr = alloca i32, align 4
  %a10.addr = alloca double, align 8
  %f.addr = alloca float, align 4
  store double %a0, ptr %a0.addr, align 8
  store double %a1, ptr %a1.addr, align 8
  store double %a2, ptr %a2.addr, align 8
  store double %a3, ptr %a3.addr, align 8
  store double %a4, ptr %a4.addr, align 8
  store double %a5, ptr %a5.addr, align 8
  store double %a6, ptr %a6.addr, align 8
  store double %a7, ptr %a7.addr, align 8
  store double %a8, ptr %a8.addr, align 8
  store double %a9, ptr %a9.addr, align 8
  store i32 %k, ptr %k.addr, align 4
  store double %a10, ptr %a10.addr, align 8
  store float %f, ptr %f.addr, align 4
  %0 = load double, ptr %a0.addr, align 8
  %1 = load double, ptr %a1.addr, align 8
  %sub = fsub double %0, %1
  %2 = load double, ptr %a2.addr, align 8
  %3 = load double, ptr %a3.addr, align 8
  %4 = call double @llvm.fmuladd.f64(double %2, double %3, double %sub)
  %5 = load double, ptr %a4.addr, align 8
  %6 = load double, ptr %a5.addr, align 8
  %div = fdiv double %5, %6
  %sub1 = fsub double %4, %div
  %7 = load double, ptr %a6.addr, align 8
  %add = fadd double %sub1, %7
  %8 = load double, ptr %a7.addr, align 8
  %9 = call double @llvm.fmuladd.f64(double %8, double 5.000000e-01, double %add)
  %10 = load double, ptr %a8.addr, align 8
  %add2 = fadd double %9, %10
  %11 = load double, ptr %a9.addr, align 8
  %sub3 = fsub double %add2, %11
  %12 = load i32, ptr %k.addr, align 4
  %conv = sitofp i32 %12 to double
  %add4 = fadd double %sub3, %conv
  %13 = load double, ptr %a10.addr, align 8
  %14 = call double @llvm.fmuladd.f64(double %13, double 3.000000e+00, double %add4)
  %15 = load float, ptr %f.addr, align 4
  %conv5 = fpext float %15 to double
  %add6 = fadd double %14, %conv5
  ret double %add6
}

; Function Attrs: noinline nounwind optnone
define internal double @vsum(i32 noundef %n, ...) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ap = alloca ptr, align 4
  %s = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.va_start.p0(ptr %ap)
  store double 0.000000e+00, ptr %s, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %3 = load i32, ptr %argp.cur, align 4
  %conv = sitofp i32 %3 to double
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %argp.cur1 = load ptr, ptr %ap, align 4
  %4 = getelementptr inbounds i8, ptr %argp.cur1, i32 7
  %argp.cur1.aligned = call ptr @llvm.ptrmask.p0.i32(ptr %4, i32 -8)
  %argp.next2 = getelementptr inbounds i8, ptr %argp.cur1.aligned, i32 8
  store ptr %argp.next2, ptr %ap, align 4
  %5 = load double, ptr %argp.cur1.aligned, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv, %cond.true ], [ %5, %cond.false ]
  %6 = load double, ptr %s, align 8
  %add = fadd double %6, %cond
  store double %add, ptr %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @llvm.va_end.p0(ptr %ap)
  %8 = load double, ptr %s, align 8
  ret double %8
}

; Function Attrs: noinline nounwind optnone
define internal { double, double } @swapdd(double %0, double %1) #0 {
entry:
  %retval = alloca %struct.dd, align 8
  %x = alloca %struct.dd, align 8
  %2 = getelementptr inbounds nuw { double, double }, ptr %x, i32 0, i32 0
  store double %0, ptr %2, align 8
  %3 = getelementptr inbounds nuw { double, double }, ptr %x, i32 0, i32 1
  store double %1, ptr %3, align 8
  %a = getelementptr inbounds nuw %struct.dd, ptr %retval, i32 0, i32 0
  %b = getelementptr inbounds nuw %struct.dd, ptr %x, i32 0, i32 1
  %4 = load double, ptr %b, align 8
  %mul = fmul double %4, 2.000000e+00
  store double %mul, ptr %a, align 8
  %b1 = getelementptr inbounds nuw %struct.dd, ptr %retval, i32 0, i32 1
  %a2 = getelementptr inbounds nuw %struct.dd, ptr %x, i32 0, i32 0
  %5 = load double, ptr %a2, align 8
  %sub = fsub double %5, 1.000000e+00
  store double %sub, ptr %b1, align 8
  %6 = getelementptr inbounds nuw { double, double }, ptr %retval, i32 0, i32 0
  %7 = load double, ptr %6, align 8
  %8 = getelementptr inbounds nuw { double, double }, ptr %retval, i32 0, i32 1
  %9 = load double, ptr %8, align 8
  %10 = insertvalue { double, double } poison, double %7, 0
  %11 = insertvalue { double, double } %10, double %9, 1
  ret { double, double } %11
}

; Function Attrs: noinline nounwind optnone
define internal { double, i32 } @mkdi(double noundef %a, i32 noundef %b) #0 {
entry:
  %retval = alloca %struct.di, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca i32, align 4
  store double %a, ptr %a.addr, align 8
  store i32 %b, ptr %b.addr, align 4
  %a1 = getelementptr inbounds nuw %struct.di, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %a.addr, align 8
  %div = fdiv double %0, 3.000000e+00
  store double %div, ptr %a1, align 8
  %b2 = getelementptr inbounds nuw %struct.di, ptr %retval, i32 0, i32 1
  %1 = load i32, ptr %b.addr, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %b2, align 8
  %2 = getelementptr i8, ptr %retval, i32 12
  call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 4, i1 false)
  %3 = getelementptr inbounds nuw { double, i32 }, ptr %retval, i32 0, i32 0
  %4 = load double, ptr %3, align 8
  %5 = getelementptr inbounds nuw { double, i32 }, ptr %retval, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = insertvalue { double, i32 } poison, double %4, 0
  %8 = insertvalue { double, i32 } %7, i32 %6, 1
  ret { double, i32 } %8
}

; Function Attrs: noinline nounwind optnone
define internal void @scale(ptr dead_on_unwind noalias writable sret(%struct.big) align 8 %agg.result, ptr dead_on_return noundef %x, double noundef %k) #0 {
entry:
  %result.ptr = alloca ptr, align 4
  %x.indirect_addr = alloca ptr, align 4
  %k.addr = alloca double, align 8
  store ptr %agg.result, ptr %result.ptr, align 4
  store ptr %x, ptr %x.indirect_addr, align 4
  store double %k, ptr %k.addr, align 8
  %a = getelementptr inbounds nuw %struct.big, ptr %agg.result, i32 0, i32 0
  %a1 = getelementptr inbounds nuw %struct.big, ptr %x, i32 0, i32 0
  %0 = load double, ptr %a1, align 8
  %1 = load double, ptr %k.addr, align 8
  %mul = fmul double %0, %1
  store double %mul, ptr %a, align 8
  %b = getelementptr inbounds nuw %struct.big, ptr %agg.result, i32 0, i32 1
  %b2 = getelementptr inbounds nuw %struct.big, ptr %x, i32 0, i32 1
  %2 = load double, ptr %b2, align 8
  %3 = load double, ptr %k.addr, align 8
  %mul3 = fmul double %2, %3
  store double %mul3, ptr %b, align 8
  %c = getelementptr inbounds nuw %struct.big, ptr %agg.result, i32 0, i32 2
  %c4 = getelementptr inbounds nuw %struct.big, ptr %x, i32 0, i32 2
  %4 = load double, ptr %c4, align 8
  %5 = load double, ptr %k.addr, align 8
  %mul5 = fmul double %4, %5
  store double %mul5, ptr %c, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal double @keep(double noundef %x, ptr noundef %f) #0 {
entry:
  %x.addr = alloca double, align 8
  %f.addr = alloca ptr, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  store ptr %f, ptr %f.addr, align 4
  %0 = load ptr, ptr %f.addr, align 4
  %1 = load double, ptr %x.addr, align 8
  %call = call double %0(double noundef %1) #5
  store double %call, ptr %a, align 8
  %2 = load ptr, ptr %f.addr, align 4
  %3 = load double, ptr %a, align 8
  %call1 = call double %2(double noundef %3) #5
  store double %call1, ptr %b, align 8
  %4 = load ptr, ptr %f.addr, align 4
  %5 = load double, ptr %b, align 8
  %call2 = call double %4(double noundef %5) #5
  store double %call2, ptr %c, align 8
  %6 = load double, ptr %a, align 8
  %7 = load double, ptr %b, align 8
  %8 = call double @llvm.fmuladd.f64(double %7, double 2.000000e+00, double %6)
  %9 = load double, ptr %c, align 8
  %10 = call double @llvm.fmuladd.f64(double %9, double 3.000000e+00, double %8)
  %11 = load double, ptr %x.addr, align 8
  %add = fadd double %10, %11
  ret double %add
}

; Function Attrs: noinline nounwind optnone
define internal double @halve(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %1 = call double @llvm.fmuladd.f64(double %0, double 5.000000e-01, double 1.000000e+00)
  ret double %1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind optnone
define internal double @pressure(ptr noundef %v, i32 noundef %n) #0 {
entry:
  %v.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %e = alloca double, align 8
  %f = alloca double, align 8
  %g = alloca double, align 8
  %h = alloca double, align 8
  %i = alloca double, align 8
  %j = alloca double, align 8
  %k = alloca double, align 8
  %l = alloca double, align 8
  %m = alloca double, align 8
  %o = alloca double, align 8
  %p = alloca double, align 8
  %q = alloca double, align 8
  %r = alloca double, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  %u = alloca double, align 8
  %w = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %aa = alloca double, align 8
  %bb = alloca double, align 8
  %cc = alloca double, align 8
  %dd = alloca double, align 8
  %ee = alloca double, align 8
  %ff = alloca double, align 8
  %gg = alloca double, align 8
  %hh = alloca double, align 8
  %ii = alloca double, align 8
  %jj = alloca double, align 8
  %it = alloca i32, align 4
  %q0 = alloca double, align 8
  store ptr %v, ptr %v.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store double 0.000000e+00, ptr %a, align 8
  store double 1.000000e+00, ptr %b, align 8
  store double 2.000000e+00, ptr %c, align 8
  store double 3.000000e+00, ptr %d, align 8
  store double 4.000000e+00, ptr %e, align 8
  store double 5.000000e+00, ptr %f, align 8
  store double 6.000000e+00, ptr %g, align 8
  store double 7.000000e+00, ptr %h, align 8
  store double 8.000000e+00, ptr %i, align 8
  store double 9.000000e+00, ptr %j, align 8
  store double 1.000000e+01, ptr %k, align 8
  store double 1.100000e+01, ptr %l, align 8
  store double 1.200000e+01, ptr %m, align 8
  store double 1.300000e+01, ptr %o, align 8
  store double 1.400000e+01, ptr %p, align 8
  store double 1.500000e+01, ptr %q, align 8
  store double 1.600000e+01, ptr %r, align 8
  store double 1.700000e+01, ptr %s, align 8
  store double 1.800000e+01, ptr %t, align 8
  store double 1.900000e+01, ptr %u, align 8
  store double 2.000000e+01, ptr %w, align 8
  store double 2.100000e+01, ptr %x, align 8
  store double 2.200000e+01, ptr %y, align 8
  store double 2.300000e+01, ptr %z, align 8
  store double 2.400000e+01, ptr %aa, align 8
  store double 2.500000e+01, ptr %bb, align 8
  store double 2.600000e+01, ptr %cc, align 8
  store double 2.700000e+01, ptr %dd, align 8
  store double 2.800000e+01, ptr %ee, align 8
  store double 2.900000e+01, ptr %ff, align 8
  store double 3.000000e+01, ptr %gg, align 8
  store double 3.100000e+01, ptr %hh, align 8
  store double 3.200000e+01, ptr %ii, align 8
  store double 3.300000e+01, ptr %jj, align 8
  store i32 0, ptr %it, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %it, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %v.addr, align 4
  %3 = load i32, ptr %it, align 4
  %arrayidx = getelementptr inbounds double, ptr %2, i32 %3
  %4 = load double, ptr %arrayidx, align 8
  store double %4, ptr %q0, align 8
  %5 = load double, ptr %q0, align 8
  %6 = load double, ptr %a, align 8
  %add = fadd double %6, %5
  store double %add, ptr %a, align 8
  %7 = load double, ptr %b, align 8
  %mul = fmul double %7, 1.000100e+00
  store double %mul, ptr %b, align 8
  %8 = load double, ptr %q0, align 8
  %9 = load double, ptr %c, align 8
  %sub = fsub double %9, %8
  store double %sub, ptr %c, align 8
  %10 = load double, ptr %b, align 8
  %11 = load double, ptr %d, align 8
  %add1 = fadd double %11, %10
  store double %add1, ptr %d, align 8
  %12 = load double, ptr %c, align 8
  %13 = load double, ptr %e, align 8
  %14 = call double @llvm.fmuladd.f64(double %12, double 1.000000e-01, double %13)
  store double %14, ptr %e, align 8
  %15 = load double, ptr %d, align 8
  %16 = load double, ptr %f, align 8
  %neg = fneg double %15
  %17 = call double @llvm.fmuladd.f64(double %neg, double 1.000000e-02, double %16)
  store double %17, ptr %f, align 8
  %18 = load double, ptr %e, align 8
  %19 = load double, ptr %g, align 8
  %add4 = fadd double %19, %18
  store double %add4, ptr %g, align 8
  %20 = load double, ptr %f, align 8
  %21 = load double, ptr %h, align 8
  %sub5 = fsub double %21, %20
  store double %sub5, ptr %h, align 8
  %22 = load double, ptr %g, align 8
  %23 = load double, ptr %i, align 8
  %24 = call double @llvm.fmuladd.f64(double %22, double 5.000000e-01, double %23)
  store double %24, ptr %i, align 8
  %25 = load double, ptr %h, align 8
  %26 = load double, ptr %j, align 8
  %neg8 = fneg double %25
  %27 = call double @llvm.fmuladd.f64(double %neg8, double 5.000000e-01, double %26)
  store double %27, ptr %j, align 8
  %28 = load double, ptr %i, align 8
  %29 = load double, ptr %k, align 8
  %add9 = fadd double %29, %28
  store double %add9, ptr %k, align 8
  %30 = load double, ptr %j, align 8
  %31 = load double, ptr %l, align 8
  %add10 = fadd double %31, %30
  store double %add10, ptr %l, align 8
  %32 = load double, ptr %k, align 8
  %33 = load double, ptr %m, align 8
  %34 = call double @llvm.fmuladd.f64(double %32, double 2.500000e-01, double %33)
  store double %34, ptr %m, align 8
  %35 = load double, ptr %l, align 8
  %36 = load double, ptr %o, align 8
  %neg13 = fneg double %35
  %37 = call double @llvm.fmuladd.f64(double %neg13, double 2.500000e-01, double %36)
  store double %37, ptr %o, align 8
  %38 = load double, ptr %m, align 8
  %39 = load double, ptr %p, align 8
  %add14 = fadd double %39, %38
  store double %add14, ptr %p, align 8
  %40 = load double, ptr %o, align 8
  %41 = load double, ptr %q, align 8
  %sub15 = fsub double %41, %40
  store double %sub15, ptr %q, align 8
  %42 = load double, ptr %p, align 8
  %43 = load double, ptr %r, align 8
  %add16 = fadd double %43, %42
  store double %add16, ptr %r, align 8
  %44 = load double, ptr %q, align 8
  %45 = load double, ptr %s, align 8
  %sub17 = fsub double %45, %44
  store double %sub17, ptr %s, align 8
  %46 = load double, ptr %r, align 8
  %47 = load double, ptr %t, align 8
  %48 = call double @llvm.fmuladd.f64(double %46, double 1.250000e-01, double %47)
  store double %48, ptr %t, align 8
  %49 = load double, ptr %s, align 8
  %50 = load double, ptr %u, align 8
  %neg20 = fneg double %49
  %51 = call double @llvm.fmuladd.f64(double %neg20, double 1.250000e-01, double %50)
  store double %51, ptr %u, align 8
  %52 = load double, ptr %t, align 8
  %53 = load double, ptr %w, align 8
  %add21 = fadd double %53, %52
  store double %add21, ptr %w, align 8
  %54 = load double, ptr %u, align 8
  %55 = load double, ptr %x, align 8
  %sub22 = fsub double %55, %54
  store double %sub22, ptr %x, align 8
  %56 = load double, ptr %w, align 8
  %57 = load double, ptr %y, align 8
  %add23 = fadd double %57, %56
  store double %add23, ptr %y, align 8
  %58 = load double, ptr %x, align 8
  %59 = load double, ptr %z, align 8
  %sub24 = fsub double %59, %58
  store double %sub24, ptr %z, align 8
  %60 = load double, ptr %y, align 8
  %61 = load double, ptr %aa, align 8
  %add25 = fadd double %61, %60
  store double %add25, ptr %aa, align 8
  %62 = load double, ptr %z, align 8
  %63 = load double, ptr %bb, align 8
  %sub26 = fsub double %63, %62
  store double %sub26, ptr %bb, align 8
  %64 = load double, ptr %aa, align 8
  %65 = load double, ptr %cc, align 8
  %add27 = fadd double %65, %64
  store double %add27, ptr %cc, align 8
  %66 = load double, ptr %bb, align 8
  %67 = load double, ptr %dd, align 8
  %sub28 = fsub double %67, %66
  store double %sub28, ptr %dd, align 8
  %68 = load double, ptr %cc, align 8
  %69 = load double, ptr %ee, align 8
  %add29 = fadd double %69, %68
  store double %add29, ptr %ee, align 8
  %70 = load double, ptr %dd, align 8
  %71 = load double, ptr %ff, align 8
  %sub30 = fsub double %71, %70
  store double %sub30, ptr %ff, align 8
  %72 = load double, ptr %ee, align 8
  %73 = load double, ptr %gg, align 8
  %add31 = fadd double %73, %72
  store double %add31, ptr %gg, align 8
  %74 = load double, ptr %ff, align 8
  %75 = load double, ptr %hh, align 8
  %sub32 = fsub double %75, %74
  store double %sub32, ptr %hh, align 8
  %76 = load double, ptr %gg, align 8
  %77 = load double, ptr %ii, align 8
  %add33 = fadd double %77, %76
  store double %add33, ptr %ii, align 8
  %78 = load double, ptr %hh, align 8
  %79 = load double, ptr %jj, align 8
  %sub34 = fsub double %79, %78
  store double %sub34, ptr %jj, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, ptr %it, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, ptr %it, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %81 = load double, ptr %a, align 8
  %82 = load double, ptr %b, align 8
  %add35 = fadd double %81, %82
  %83 = load double, ptr %c, align 8
  %add36 = fadd double %add35, %83
  %84 = load double, ptr %d, align 8
  %add37 = fadd double %add36, %84
  %85 = load double, ptr %e, align 8
  %add38 = fadd double %add37, %85
  %86 = load double, ptr %f, align 8
  %add39 = fadd double %add38, %86
  %87 = load double, ptr %g, align 8
  %add40 = fadd double %add39, %87
  %88 = load double, ptr %h, align 8
  %add41 = fadd double %add40, %88
  %89 = load double, ptr %i, align 8
  %add42 = fadd double %add41, %89
  %90 = load double, ptr %j, align 8
  %add43 = fadd double %add42, %90
  %91 = load double, ptr %k, align 8
  %add44 = fadd double %add43, %91
  %92 = load double, ptr %l, align 8
  %add45 = fadd double %add44, %92
  %93 = load double, ptr %m, align 8
  %add46 = fadd double %add45, %93
  %94 = load double, ptr %o, align 8
  %add47 = fadd double %add46, %94
  %95 = load double, ptr %p, align 8
  %add48 = fadd double %add47, %95
  %96 = load double, ptr %q, align 8
  %add49 = fadd double %add48, %96
  %97 = load double, ptr %r, align 8
  %add50 = fadd double %add49, %97
  %98 = load double, ptr %s, align 8
  %add51 = fadd double %add50, %98
  %99 = load double, ptr %t, align 8
  %add52 = fadd double %add51, %99
  %100 = load double, ptr %u, align 8
  %add53 = fadd double %add52, %100
  %101 = load double, ptr %w, align 8
  %add54 = fadd double %add53, %101
  %102 = load double, ptr %x, align 8
  %add55 = fadd double %add54, %102
  %103 = load double, ptr %y, align 8
  %add56 = fadd double %add55, %103
  %104 = load double, ptr %z, align 8
  %add57 = fadd double %add56, %104
  %105 = load double, ptr %aa, align 8
  %add58 = fadd double %add57, %105
  %106 = load double, ptr %bb, align 8
  %add59 = fadd double %add58, %106
  %107 = load double, ptr %cc, align 8
  %add60 = fadd double %add59, %107
  %108 = load double, ptr %dd, align 8
  %add61 = fadd double %add60, %108
  %109 = load double, ptr %ee, align 8
  %add62 = fadd double %add61, %109
  %110 = load double, ptr %ff, align 8
  %add63 = fadd double %add62, %110
  %111 = load double, ptr %gg, align 8
  %add64 = fadd double %add63, %111
  %112 = load double, ptr %hh, align 8
  %add65 = fadd double %add64, %112
  %113 = load double, ptr %ii, align 8
  %add66 = fadd double %add65, %113
  %114 = load double, ptr %jj, align 8
  %add67 = fadd double %add66, %114
  ret double %add67
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i32(ptr, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+d,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_d2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 0}
!6 = !{!"clang version 22.1.8"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
