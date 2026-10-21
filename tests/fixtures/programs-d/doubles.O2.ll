; ModuleID = 'tests/programs-d/doubles.c'
source_filename = "tests/programs-d/doubles.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.big = type { double, double, double }

@vz = internal global double 0.000000e+00, align 8
@__const.main.xs = private unnamed_addr constant [10 x double] [double 1.500000e+00, double -2.250000e+00, double 1.000000e+300, double -1.000000e-300, double 3.000000e+00, double 1.000000e-01, double -0.000000e+00, double 7.750000e+00, double 0x419D6F3454800000, double -9.500000e+00], align 8

; Function Attrs: nofree norecurse nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %r = alloca %struct.big, align 8
  %byval-temp = alloca %struct.big, align 8
  %arr = alloca [64 x double], align 8
  %pk.sroa.0 = alloca i8, align 1
  %0 = load volatile double, ptr @vz, align 8, !tbaa !10
  %1 = load volatile double, ptr @vz, align 8, !tbaa !10
  %div = fdiv double %0, %1
  %2 = load volatile double, ptr @vz, align 8, !tbaa !10
  %div1 = fdiv double 1.000000e+00, %2
  %3 = load volatile double, ptr @vz, align 8, !tbaa !10
  %add = fadd double %3, 1.000000e+00
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %call90 = tail call double (i32, ...) @vsum(i32 poison, double noundef 1.250000e+00, i32 noundef 7, double noundef -3.500000e+00, i32 noundef 9, double noundef 1.000000e+10, i32 noundef 11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %r) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp) #9
  store double 1.000000e+00, ptr %byval-temp, align 8, !tbaa !10
  %.compoundliteral107.sroa.2.0.byval-temp.sroa_idx = getelementptr inbounds nuw i8, ptr %byval-temp, i32 8
  store double 2.000000e+00, ptr %.compoundliteral107.sroa.2.0.byval-temp.sroa_idx, align 8, !tbaa !10
  %.compoundliteral107.sroa.3.0.byval-temp.sroa_idx = getelementptr inbounds nuw i8, ptr %byval-temp, i32 16
  store double 3.000000e+00, ptr %.compoundliteral107.sroa.3.0.byval-temp.sroa_idx, align 8, !tbaa !10
  call fastcc void @scale(ptr dead_on_unwind writable sret(%struct.big) align 8 %r, ptr dead_on_return noundef %byval-temp) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp) #9
  %4 = load double, ptr %r, align 8, !tbaa !12
  %b111 = getelementptr inbounds nuw i8, ptr %r, i32 8
  %5 = load double, ptr %b111, align 8, !tbaa !14
  %c113 = getelementptr inbounds nuw i8, ptr %r, i32 16
  %6 = load double, ptr %c113, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %arr) #9
  br label %for.body125

for.body:                                         ; preds = %entry, %for.body
  %h.0349 = phi i32 [ -2128831035, %entry ], [ %add.i337, %for.body ]
  %i.0348 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds nuw double, ptr @__const.main.xs, i32 %i.0348
  %7 = load double, ptr %arrayidx, align 8, !tbaa !10
  %8 = trunc nuw nsw i32 %i.0348 to i8
  %9 = mul nuw i8 %8, 7
  %rem.lhs.trunc = add nuw i8 %9, 3
  %rem347 = urem i8 %rem.lhs.trunc, 10
  %rem.zext = zext nneg i8 %rem347 to i32
  %arrayidx3 = getelementptr inbounds nuw double, ptr @__const.main.xs, i32 %rem.zext
  %10 = load double, ptr %arrayidx3, align 8, !tbaa !10
  %add4 = fadd double %7, %10
  %11 = bitcast double %add4 to i64
  %shr.i242 = lshr i64 %11, 32
  %xor3.i243 = xor i64 %shr.i242, %11
  %xor.i244 = trunc i64 %xor3.i243 to i32
  %xor.i245 = xor i32 %h.0349, %xor.i244
  %mul.i246 = mul i32 %xor.i245, 16777619
  %add.i247 = add i32 %mul.i246, -1640531527
  %sub = fsub double %7, %10
  %12 = bitcast double %sub to i64
  %shr.i248 = lshr i64 %12, 32
  %xor3.i249 = xor i64 %shr.i248, %12
  %xor.i250 = trunc i64 %xor3.i249 to i32
  %xor.i251 = xor i32 %add.i247, %xor.i250
  %mul.i252 = mul i32 %xor.i251, 16777619
  %add.i253 = add i32 %mul.i252, -1640531527
  %mul8 = fmul double %7, %10
  %13 = bitcast double %mul8 to i64
  %shr.i254 = lshr i64 %13, 32
  %xor3.i255 = xor i64 %shr.i254, %13
  %xor.i256 = trunc i64 %xor3.i255 to i32
  %xor.i257 = xor i32 %add.i253, %xor.i256
  %mul.i258 = mul i32 %xor.i257, 16777619
  %add.i259 = add i32 %mul.i258, -1640531527
  %cmp11 = icmp eq i8 %rem347, 6
  %cond = select i1 %cmp11, double 1.000000e+00, double %10
  %div12 = fdiv double %7, %cond
  %14 = bitcast double %div12 to i64
  %shr.i260 = lshr i64 %14, 32
  %xor3.i261 = xor i64 %shr.i260, %14
  %xor.i262 = trunc i64 %xor3.i261 to i32
  %xor.i263 = xor i32 %add.i259, %xor.i262
  %mul.i264 = mul i32 %xor.i263, 16777619
  %add.i265 = add i32 %mul.i264, -1640531527
  %15 = tail call double @llvm.fabs.f64(double %7)
  %16 = tail call double @llvm.sqrt.f64(double %15)
  %17 = bitcast double %16 to i64
  %shr.i266 = lshr i64 %17, 32
  %xor3.i267 = xor i64 %shr.i266, %17
  %xor.i268 = trunc i64 %xor3.i267 to i32
  %xor.i269 = xor i32 %add.i265, %xor.i268
  %mul.i270 = mul i32 %xor.i269, 16777619
  %add.i271 = add i32 %mul.i270, -1640531527
  %18 = tail call double @llvm.fma.f64(double %7, double %10, double %add)
  %19 = bitcast double %18 to i64
  %shr.i272 = lshr i64 %19, 32
  %xor3.i273 = xor i64 %shr.i272, %19
  %xor.i274 = trunc i64 %xor3.i273 to i32
  %xor.i275 = xor i32 %add.i271, %xor.i274
  %mul.i276 = mul i32 %xor.i275, 16777619
  %add.i277 = add i32 %mul.i276, -1640531527
  %20 = tail call double @llvm.copysign.f64(double %7, double %10)
  %21 = bitcast double %20 to i64
  %shr.i278 = lshr i64 %21, 32
  %xor3.i279 = xor i64 %shr.i278, %21
  %xor.i280 = trunc i64 %xor3.i279 to i32
  %xor.i281 = xor i32 %add.i277, %xor.i280
  %mul.i282 = mul i32 %xor.i281, 16777619
  %add.i283 = add i32 %mul.i282, -1640531527
  %22 = tail call double @llvm.minnum.f64(double %7, double %10)
  %23 = bitcast double %22 to i64
  %shr.i284 = lshr i64 %23, 32
  %xor3.i285 = xor i64 %shr.i284, %23
  %xor.i286 = trunc i64 %xor3.i285 to i32
  %xor.i287 = xor i32 %add.i283, %xor.i286
  %mul.i288 = mul i32 %xor.i287, 16777619
  %add.i289 = add i32 %mul.i288, -1640531527
  %24 = tail call double @llvm.maxnum.f64(double %7, double %div)
  %25 = bitcast double %24 to i64
  %shr.i290 = lshr i64 %25, 32
  %xor3.i291 = xor i64 %shr.i290, %25
  %xor.i292 = trunc i64 %xor3.i291 to i32
  %xor.i293 = xor i32 %add.i289, %xor.i292
  %mul.i294 = mul i32 %xor.i293, 16777619
  %add.i295 = add i32 %mul.i294, -1640531527
  %cmp25 = fcmp olt double %7, %10
  %conv = zext i1 %cmp25 to i32
  %cmp26 = fcmp ole double %7, %10
  %shl = select i1 %cmp26, i32 2, i32 0
  %cmp28 = fcmp oeq double %7, %10
  %shl30 = select i1 %cmp28, i32 4, i32 0
  %cmp32 = fcmp une double %7, %10
  %shl34 = select i1 %cmp32, i32 8, i32 0
  %cmp36 = fcmp ogt double %7, %div
  %shl38 = select i1 %cmp36, i32 16, i32 0
  %cmp40 = fcmp uno double %7, %div
  %shl41 = select i1 %cmp40, i32 32, i32 0
  %shl44 = select i1 %cmp26, i32 64, i32 0
  %cmp46 = fcmp one double %7, %10
  %shl47 = select i1 %cmp46, i32 128, i32 0
  %or = or disjoint i32 %shl41, %shl38
  %or31 = or disjoint i32 %or, %conv
  %or35 = or disjoint i32 %or31, %shl
  %or39 = or disjoint i32 %or35, %shl30
  %or42 = or disjoint i32 %or39, %shl34
  %or45 = or i32 %or42, %shl44
  %or48 = or i32 %or45, %shl47
  %xor.i296 = xor i32 %add.i295, %or48
  %mul.i297 = mul i32 %xor.i296, 16777619
  %add.i298 = add i32 %mul.i297, -1640531527
  %div50 = fdiv double %7, 1.000000e+290
  %conv51 = fptosi double %div50 to i32
  %xor.i299 = xor i32 %add.i298, %conv51
  %mul.i300 = mul i32 %xor.i299, 16777619
  %add.i301 = add i32 %mul.i300, -1640531527
  %mul53 = fmul double %10, 1.000000e+03
  %conv54 = fptosi double %mul53 to i64
  %conv55 = trunc i64 %conv54 to i32
  %xor.i302 = xor i32 %add.i301, %conv55
  %mul.i303 = mul i32 %xor.i302, 16777619
  %add.i304 = add i32 %mul.i303, -1640531527
  %mul57 = fmul double %7, 1.000000e+03
  %26 = tail call double @llvm.fabs.f64(double %mul57)
  %conv58 = fptoui double %26 to i64
  %shr = lshr i64 %conv58, 3
  %conv59 = trunc i64 %shr to i32
  %xor.i305 = xor i32 %add.i304, %conv59
  %mul.i306 = mul i32 %xor.i305, 16777619
  %add.i307 = add i32 %mul.i306, -1640531527
  %mul61 = mul nsw i32 %i.0348, -77
  %conv62 = sitofp i32 %mul61 to double
  %27 = bitcast double %conv62 to i64
  %shr.i308 = lshr i64 %27, 32
  %xor3.i309 = xor i64 %shr.i308, %27
  %xor.i310 = trunc i64 %xor3.i309 to i32
  %xor.i311 = xor i32 %add.i307, %xor.i310
  %mul.i312 = mul i32 %xor.i311, 16777619
  %add.i313 = add i32 %mul.i312, -1640531527
  %mul65 = mul i32 %i.0348, -1640531527
  %conv66 = uitofp i32 %mul65 to double
  %28 = bitcast double %conv66 to i64
  %shr.i314 = lshr i64 %28, 32
  %xor3.i315 = xor i64 %shr.i314, %28
  %xor.i316 = trunc i64 %xor3.i315 to i32
  %xor.i317 = xor i32 %add.i313, %xor.i316
  %mul.i318 = mul i32 %xor.i317, 16777619
  %add.i319 = add i32 %mul.i318, -1640531527
  %conv70 = uitofp nneg i32 %i.0348 to double
  %mul71 = fmul double %conv70, 0x41F2345678900000
  %29 = bitcast double %mul71 to i64
  %shr.i320 = lshr i64 %29, 32
  %xor3.i321 = xor i64 %shr.i320, %29
  %xor.i322 = trunc i64 %xor3.i321 to i32
  %xor.i323 = xor i32 %add.i319, %xor.i322
  %mul.i324 = mul i32 %xor.i323, 16777619
  %add.i325 = add i32 %mul.i324, -1640531527
  %conv74 = fptrunc double %7 to float
  %30 = bitcast float %conv74 to i32
  %xor.i326 = xor i32 %add.i325, %30
  %mul.i327 = mul i32 %xor.i326, 16777619
  %add.i328 = add i32 %mul.i327, -1640531527
  %conv76 = fpext float %conv74 to double
  %mul77 = fmul double %conv76, 3.000000e+00
  %31 = bitcast double %mul77 to i64
  %shr.i329 = lshr i64 %31, 32
  %xor3.i330 = xor i64 %shr.i329, %31
  %xor.i331 = trunc i64 %xor3.i330 to i32
  %xor.i332 = xor i32 %add.i328, %xor.i331
  %mul.i333 = mul i32 %xor.i332, 16777619
  %add.i334 = add i32 %mul.i333, -1640531527
  %mul80 = fmul double %div1, %7
  %32 = fcmp uno double %mul80, 0.000000e+00
  %33 = zext i1 %32 to i32
  %34 = tail call double @llvm.fabs.f64(double %mul80)
  %35 = fcmp oeq double %34, 0x7FF0000000000000
  %shl82 = select i1 %35, i32 2, i32 0
  %36 = fcmp one double %15, 0x7FF0000000000000
  %shl84 = select i1 %36, i32 4, i32 0
  %or83 = or disjoint i32 %shl84, %33
  %or85 = or disjoint i32 %or83, %shl82
  %xor.i335 = xor i32 %add.i334, %or85
  %mul.i336 = mul i32 %xor.i335, 16777619
  %add.i337 = add i32 %mul.i336, -1640531527
  %inc = add nuw nsw i32 %i.0348, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !16

for.cond.cleanup124:                              ; preds = %for.body125
  %xor.i = xor i32 %add.i337, -352419840
  %mul.i = mul i32 %xor.i, 16777619
  %add.i = add i32 %mul.i, -1640531527
  %37 = bitcast double %call90 to i64
  %shr.i = lshr i64 %37, 32
  %xor3.i = xor i64 %shr.i, %37
  %xor.i220 = trunc i64 %xor3.i to i32
  %xor.i221 = xor i32 %add.i, %xor.i220
  %mul.i222 = mul i32 %xor.i221, 16777619
  %add.i223 = add i32 %mul.i222, -1640531527
  %xor.i224 = xor i32 %add.i223, -2144075776
  %mul.i225 = mul i32 %xor.i224, 16777619
  %add.i226 = add i32 %mul.i225, -1640531527
  %xor.i227 = xor i32 %add.i226, -358612949
  %mul.i228 = mul i32 %xor.i227, 16777619
  %add.i229 = add i32 %mul.i228, -1640531527
  %add112 = fadd double %4, %5
  %add114 = fadd double %add112, %6
  %38 = bitcast double %add114 to i64
  %shr.i230 = lshr i64 %38, 32
  %xor3.i231 = xor i64 %shr.i230, %38
  %xor.i232 = trunc i64 %xor3.i231 to i32
  %xor.i233 = xor i32 %add.i229, %xor.i232
  %mul.i234 = mul i32 %xor.i233, 16777619
  %add.i235 = add i32 %mul.i234, -1640531527
  %call117 = tail call fastcc double @keep() #8
  %39 = bitcast double %call117 to i64
  %shr.i236 = lshr i64 %39, 32
  %xor3.i237 = xor i64 %shr.i236, %39
  %xor.i238 = trunc i64 %xor3.i237 to i32
  %xor.i239 = xor i32 %add.i235, %xor.i238
  %mul.i240 = mul i32 %xor.i239, 16777619
  %add.i241 = add i32 %mul.i240, -1640531527
  %call132 = call fastcc double @pressure(ptr noundef %arr) #8
  %40 = bitcast double %call132 to i64
  %shr.i338 = lshr i64 %40, 32
  %xor3.i339 = xor i64 %shr.i338, %40
  %xor.i340 = trunc i64 %xor3.i339 to i32
  %xor.i341 = xor i32 %add.i241, %xor.i340
  %mul.i342 = mul i32 %xor.i341, 16777619
  %add.i343 = add i32 %mul.i342, -1640531527
  call void @llvm.lifetime.start.p0(ptr nonnull %pk.sroa.0)
  store volatile i8 3, ptr %pk.sroa.0, align 1, !tbaa !18
  %xor.i344 = xor i32 %add.i343, 1076166656
  %mul.i345 = mul i32 %xor.i344, 16777619
  %add.i346 = add i32 %mul.i345, -1640531527
  call void @llvm.lifetime.end.p0(ptr nonnull %pk.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %arr) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %r) #9
  ret i32 %add.i346

for.body125:                                      ; preds = %for.cond.cleanup, %for.body125
  %i120.0350 = phi i32 [ 0, %for.cond.cleanup ], [ %inc130, %for.body125 ]
  %conv126 = uitofp nneg i32 %i120.0350 to double
  %41 = tail call double @llvm.fmuladd.f64(double %conv126, double 3.700000e-01, double -5.000000e+00)
  %arrayidx128 = getelementptr inbounds nuw double, ptr %arr, i32 %i120.0350
  store double %41, ptr %arrayidx128, align 8, !tbaa !10
  %inc130 = add nuw nsw i32 %i120.0350, 1
  %exitcond351.not = icmp eq i32 %inc130, 64
  br i1 %exitcond351.not, label %for.cond.cleanup124, label %for.body125, !llvm.loop !19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define internal double @vsum(i32 %n, ...) unnamed_addr #3 {
cond.end.5:
  %ap = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %ap) #9
  call void @llvm.va_start.p0(ptr nonnull %ap)
  %ap.promoted = load ptr, ptr %ap, align 4
  %0 = getelementptr inbounds nuw i8, ptr %ap.promoted, i32 7
  %argp.cur1.aligned = call align 8 ptr @llvm.ptrmask.p0.i32(ptr nonnull %0, i32 -8)
  %argp.next2 = getelementptr inbounds nuw i8, ptr %argp.cur1.aligned, i32 8
  %1 = load double, ptr %argp.cur1.aligned, align 8, !tbaa !10
  %2 = load i32, ptr %argp.next2, align 8, !tbaa !6
  %argp.next2.2 = getelementptr inbounds nuw i8, ptr %argp.cur1.aligned, i32 24
  %3 = getelementptr inbounds nuw i8, ptr %argp.cur1.aligned, i32 16
  %4 = load double, ptr %3, align 8, !tbaa !10
  %5 = load i32, ptr %argp.next2.2, align 8, !tbaa !6
  %argp.next2.4 = getelementptr inbounds nuw i8, ptr %argp.cur1.aligned, i32 40
  %6 = getelementptr inbounds nuw i8, ptr %argp.cur1.aligned, i32 32
  %7 = load double, ptr %6, align 8, !tbaa !10
  %8 = load i32, ptr %argp.next2.4, align 8, !tbaa !6
  %conv.5 = sitofp i32 %8 to double
  %argp.next.5 = getelementptr inbounds nuw i8, ptr %argp.cur1.aligned, i32 44
  %add = fadd double %1, 0.000000e+00
  %conv.1 = sitofp i32 %2 to double
  %add.1 = fadd double %add, %conv.1
  %add.2 = fadd double %add.1, %4
  %conv.3 = sitofp i32 %5 to double
  %add.3 = fadd double %add.2, %conv.3
  %add.4 = fadd double %add.3, %7
  store ptr %argp.next.5, ptr %ap, align 4
  %add.5 = fadd double %add.4, %conv.5
  call void @llvm.va_end.p0(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %ap) #9
  ret double %add.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc void @scale(ptr dead_on_unwind noalias nonnull writable writeonly sret(%struct.big) align 8 captures(none) initializes((0, 24)) %agg.result, ptr dead_on_return noundef nonnull readonly captures(none) %x) unnamed_addr #4 {
entry:
  %0 = load double, ptr %x, align 8, !tbaa !12
  %mul = fmul double %0, 2.500000e+00
  store double %mul, ptr %agg.result, align 8, !tbaa !12
  %b = getelementptr inbounds nuw i8, ptr %agg.result, i32 8
  %b2 = getelementptr inbounds nuw i8, ptr %x, i32 8
  %1 = load double, ptr %b2, align 8, !tbaa !14
  %mul3 = fmul double %1, 2.500000e+00
  store double %mul3, ptr %b, align 8, !tbaa !14
  %c = getelementptr inbounds nuw i8, ptr %agg.result, i32 16
  %c4 = getelementptr inbounds nuw i8, ptr %x, i32 16
  %2 = load double, ptr %c4, align 8, !tbaa !15
  %mul5 = fmul double %2, 2.500000e+00
  store double %mul5, ptr %c, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none)
define internal fastcc noundef double @keep() unnamed_addr #5 {
entry:
  ret double 2.467500e+02
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read)
define internal fastcc double @pressure(ptr noundef nonnull readonly captures(none) %v) unnamed_addr #6 {
entry:
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %add35 = fadd double %mul, %add
  %add36 = fadd double %sub, %add35
  %add37 = fadd double %add1, %add36
  %add38 = fadd double %1, %add37
  %add39 = fadd double %2, %add38
  %add40 = fadd double %add4, %add39
  %add41 = fadd double %sub5, %add40
  %add42 = fadd double %3, %add41
  %add43 = fadd double %4, %add42
  %add44 = fadd double %add9, %add43
  %add45 = fadd double %add10, %add44
  %add46 = fadd double %5, %add45
  %add47 = fadd double %6, %add46
  %add48 = fadd double %add14, %add47
  %add49 = fadd double %sub15, %add48
  %add50 = fadd double %add16, %add49
  %add51 = fadd double %sub17, %add50
  %add52 = fadd double %7, %add51
  %add53 = fadd double %8, %add52
  %add54 = fadd double %add21, %add53
  %add55 = fadd double %sub22, %add54
  %add56 = fadd double %add23, %add55
  %add57 = fadd double %sub24, %add56
  %add58 = fadd double %add25, %add57
  %add59 = fadd double %sub26, %add58
  %add60 = fadd double %add27, %add59
  %add61 = fadd double %sub28, %add60
  %add62 = fadd double %add29, %add61
  %add63 = fadd double %sub30, %add62
  %add64 = fadd double %add31, %add63
  %add65 = fadd double %sub32, %add64
  %add66 = fadd double %add33, %add65
  %add67 = fadd double %sub34, %add66
  ret double %add67

for.body:                                         ; preds = %entry, %for.body
  %a.0170 = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %it.0169 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %jj.0168 = phi double [ 3.300000e+01, %entry ], [ %sub34, %for.body ]
  %ii.0167 = phi double [ 3.200000e+01, %entry ], [ %add33, %for.body ]
  %hh.0166 = phi double [ 3.100000e+01, %entry ], [ %sub32, %for.body ]
  %gg.0165 = phi double [ 3.000000e+01, %entry ], [ %add31, %for.body ]
  %ff.0164 = phi double [ 2.900000e+01, %entry ], [ %sub30, %for.body ]
  %ee.0163 = phi double [ 2.800000e+01, %entry ], [ %add29, %for.body ]
  %dd.0162 = phi double [ 2.700000e+01, %entry ], [ %sub28, %for.body ]
  %cc.0161 = phi double [ 2.600000e+01, %entry ], [ %add27, %for.body ]
  %bb.0160 = phi double [ 2.500000e+01, %entry ], [ %sub26, %for.body ]
  %aa.0159 = phi double [ 2.400000e+01, %entry ], [ %add25, %for.body ]
  %z.0158 = phi double [ 2.300000e+01, %entry ], [ %sub24, %for.body ]
  %y.0157 = phi double [ 2.200000e+01, %entry ], [ %add23, %for.body ]
  %x.0156 = phi double [ 2.100000e+01, %entry ], [ %sub22, %for.body ]
  %w.0155 = phi double [ 2.000000e+01, %entry ], [ %add21, %for.body ]
  %u.0154 = phi double [ 1.900000e+01, %entry ], [ %8, %for.body ]
  %t.0153 = phi double [ 1.800000e+01, %entry ], [ %7, %for.body ]
  %s.0152 = phi double [ 1.700000e+01, %entry ], [ %sub17, %for.body ]
  %r.0151 = phi double [ 1.600000e+01, %entry ], [ %add16, %for.body ]
  %q.0150 = phi double [ 1.500000e+01, %entry ], [ %sub15, %for.body ]
  %p.0149 = phi double [ 1.400000e+01, %entry ], [ %add14, %for.body ]
  %o.0148 = phi double [ 1.300000e+01, %entry ], [ %6, %for.body ]
  %m.0147 = phi double [ 1.200000e+01, %entry ], [ %5, %for.body ]
  %l.0146 = phi double [ 1.100000e+01, %entry ], [ %add10, %for.body ]
  %k.0145 = phi double [ 1.000000e+01, %entry ], [ %add9, %for.body ]
  %j.0144 = phi double [ 9.000000e+00, %entry ], [ %4, %for.body ]
  %i.0143 = phi double [ 8.000000e+00, %entry ], [ %3, %for.body ]
  %h.0142 = phi double [ 7.000000e+00, %entry ], [ %sub5, %for.body ]
  %g.0141 = phi double [ 6.000000e+00, %entry ], [ %add4, %for.body ]
  %f.0140 = phi double [ 5.000000e+00, %entry ], [ %2, %for.body ]
  %e.0139 = phi double [ 4.000000e+00, %entry ], [ %1, %for.body ]
  %d.0138 = phi double [ 3.000000e+00, %entry ], [ %add1, %for.body ]
  %c.0137 = phi double [ 2.000000e+00, %entry ], [ %sub, %for.body ]
  %b.0136 = phi double [ 1.000000e+00, %entry ], [ %mul, %for.body ]
  %arrayidx = getelementptr inbounds nuw double, ptr %v, i32 %it.0169
  %0 = load double, ptr %arrayidx, align 8, !tbaa !10
  %add = fadd double %a.0170, %0
  %mul = fmul double %b.0136, 1.000100e+00
  %sub = fsub double %c.0137, %0
  %add1 = fadd double %mul, %d.0138
  %1 = tail call double @llvm.fmuladd.f64(double %sub, double 1.000000e-01, double %e.0139)
  %neg = fneg double %add1
  %2 = tail call double @llvm.fmuladd.f64(double %neg, double 1.000000e-02, double %f.0140)
  %add4 = fadd double %g.0141, %1
  %sub5 = fsub double %h.0142, %2
  %3 = tail call double @llvm.fmuladd.f64(double %add4, double 5.000000e-01, double %i.0143)
  %neg8 = fneg double %sub5
  %4 = tail call double @llvm.fmuladd.f64(double %neg8, double 5.000000e-01, double %j.0144)
  %add9 = fadd double %k.0145, %3
  %add10 = fadd double %4, %l.0146
  %5 = tail call double @llvm.fmuladd.f64(double %add9, double 2.500000e-01, double %m.0147)
  %neg13 = fneg double %add10
  %6 = tail call double @llvm.fmuladd.f64(double %neg13, double 2.500000e-01, double %o.0148)
  %add14 = fadd double %p.0149, %5
  %sub15 = fsub double %q.0150, %6
  %add16 = fadd double %r.0151, %add14
  %sub17 = fsub double %s.0152, %sub15
  %7 = tail call double @llvm.fmuladd.f64(double %add16, double 1.250000e-01, double %t.0153)
  %neg20 = fneg double %sub17
  %8 = tail call double @llvm.fmuladd.f64(double %neg20, double 1.250000e-01, double %u.0154)
  %add21 = fadd double %w.0155, %7
  %sub22 = fsub double %x.0156, %8
  %add23 = fadd double %y.0157, %add21
  %sub24 = fsub double %z.0158, %sub22
  %add25 = fadd double %aa.0159, %add23
  %sub26 = fsub double %bb.0160, %sub24
  %add27 = fadd double %cc.0161, %add25
  %sub28 = fsub double %dd.0162, %sub26
  %add29 = fadd double %ee.0163, %add27
  %sub30 = fsub double %ff.0164, %sub28
  %add31 = fadd double %gg.0165, %add29
  %sub32 = fsub double %hh.0166, %sub30
  %add33 = fadd double %ii.0167, %add31
  %sub34 = fsub double %jj.0168, %sub32
  %inc = add nuw nsw i32 %it.0169, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i32(ptr, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

attributes #0 = { nofree norecurse nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+d,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind willreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+d,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+d,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+d,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree noinline norecurse nosync nounwind memory(argmem: read) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+d,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_d2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 0}
!5 = !{!"clang version 22.1.8"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"big", !11, i64 0, !11, i64 8, !11, i64 16}
!14 = !{!13, !11, i64 8}
!15 = !{!13, !11, i64 16}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!8, !8, i64 0}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
