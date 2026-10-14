; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/divdf3_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/divdf3_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [61 x i8] c"error in test__divdf3(%.20e, %.20e) = %.20e, expected %.20e\0A\00", align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__divdf3(double noundef %a, double noundef %b, i64 noundef %expected) local_unnamed_addr #0 {
entry:
  %x.addr.i = alloca i64, align 8
  %ret.i = alloca double, align 8
  %x.addr.i.i = alloca double, align 8
  %ret.i.i = alloca i64, align 8
  %call = tail call double @__divdf3(double noundef %a, double noundef %b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i)
  store double %call, ptr %x.addr.i.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i) #4
  %call.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i, ptr noundef nonnull %x.addr.i.i, i32 noundef 8) #3
  %0 = load i64, ptr %ret.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i)
  %cmp.i = icmp eq i64 %0, %expected
  br i1 %cmp.i, label %if.end, label %compareResultD.exit

compareResultD.exit:                              ; preds = %entry
  %cmp1.i = icmp eq i64 %expected, 9221120237041090560
  %and.i = and i64 %0, 9218868437227405312
  %cmp3.i = icmp eq i64 %and.i, 9218868437227405312
  %or.cond.not13.i.not12 = and i1 %cmp1.i, %cmp3.i
  %and4.i = and i64 %0, 4503599627370495
  %cmp5.not.i = icmp ne i64 %and4.i, 0
  %or.cond12.i.not = and i1 %cmp5.not.i, %or.cond.not13.i.not12
  br i1 %or.cond12.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %compareResultD.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i)
  store i64 %expected, ptr %x.addr.i, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i) #4
  %call.i = call ptr @memcpy(ptr noundef nonnull %ret.i, ptr noundef nonnull %x.addr.i, i32 noundef 8) #3
  %1 = load double, ptr %ret.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %a, double noundef %b, double noundef %call, double noundef %1) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %compareResultD.exit
  %retval.0.i11 = phi i32 [ 0, %compareResultD.exit ], [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0.i11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare dso_local double @__divdf3(double noundef, double noundef) local_unnamed_addr #2

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %x.addr.i.i212 = alloca i64, align 8
  %ret.i.i213 = alloca double, align 8
  %x.addr.i.i209 = alloca i64, align 8
  %ret.i.i210 = alloca double, align 8
  %x.addr.i.i206 = alloca i64, align 8
  %ret.i.i207 = alloca double, align 8
  %x.addr.i.i203 = alloca i64, align 8
  %ret.i.i204 = alloca double, align 8
  %x.addr.i.i200 = alloca i64, align 8
  %ret.i.i201 = alloca double, align 8
  %x.addr.i.i197 = alloca i64, align 8
  %ret.i.i198 = alloca double, align 8
  %x.addr.i.i194 = alloca i64, align 8
  %ret.i.i195 = alloca double, align 8
  %x.addr.i.i191 = alloca i64, align 8
  %ret.i.i192 = alloca double, align 8
  %x.addr.i.i173 = alloca i64, align 8
  %ret.i.i174 = alloca double, align 8
  %x.addr.i.i.i175 = alloca double, align 8
  %ret.i.i.i176 = alloca i64, align 8
  %x.addr.i.i170 = alloca i64, align 8
  %ret.i.i171 = alloca double, align 8
  %x.addr.i.i152 = alloca i64, align 8
  %ret.i.i153 = alloca double, align 8
  %x.addr.i.i.i154 = alloca double, align 8
  %ret.i.i.i155 = alloca i64, align 8
  %x.addr.i.i149 = alloca i64, align 8
  %ret.i.i150 = alloca double, align 8
  %x.addr.i.i131 = alloca i64, align 8
  %ret.i.i132 = alloca double, align 8
  %x.addr.i.i.i133 = alloca double, align 8
  %ret.i.i.i134 = alloca i64, align 8
  %x.addr.i.i128 = alloca i64, align 8
  %ret.i.i129 = alloca double, align 8
  %x.addr.i.i125 = alloca i64, align 8
  %ret.i.i126 = alloca double, align 8
  %x.addr.i.i.i = alloca double, align 8
  %ret.i.i.i = alloca i64, align 8
  %x.addr.i.i = alloca i64, align 8
  %ret.i.i = alloca double, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i)
  store i64 9221120237041090560, ptr %x.addr.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i) #4
  %call.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i, ptr noundef nonnull %x.addr.i.i, i32 noundef 8) #3
  %0 = load double, ptr %ret.i.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i)
  %call.i = call double @__divdf3(double noundef %0, double noundef 3.000000e+00) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i)
  store double %call.i, ptr %x.addr.i.i.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i) #4
  %call.i.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i, ptr noundef nonnull %x.addr.i.i.i, i32 noundef 8) #3
  %1 = load i64, ptr %ret.i.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i)
  %cmp.i.i = icmp eq i64 %1, 9221120237041090560
  br i1 %cmp.i.i, label %if.end, label %compareResultD.exit.i

compareResultD.exit.i:                            ; preds = %entry
  %and.i.i = and i64 %1, 9218868437227405312
  %cmp3.i.i = icmp eq i64 %and.i.i, 9218868437227405312
  %and4.i.i = and i64 %1, 4503599627370495
  %cmp5.not.i.i = icmp ne i64 %and4.i.i, 0
  %or.cond12.i.not.i = and i1 %cmp5.not.i.i, %cmp3.i.i
  br i1 %or.cond12.i.not.i, label %if.end, label %test__divdf3.exit

test__divdf3.exit:                                ; preds = %compareResultD.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i125)
  store i64 9221120237041090560, ptr %x.addr.i.i125, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i126) #4
  %call.i.i127 = call ptr @memcpy(ptr noundef nonnull %ret.i.i126, ptr noundef nonnull %x.addr.i.i125, i32 noundef 8) #3
  %2 = load double, ptr %ret.i.i126, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i126) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i125)
  %call3.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %0, double noundef 3.000000e+00, double noundef %call.i, double noundef %2) #3
  br label %return

if.end:                                           ; preds = %compareResultD.exit.i, %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i128)
  store i64 9218868437227405603, ptr %x.addr.i.i128, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i129) #4
  %call.i.i130 = call ptr @memcpy(ptr noundef nonnull %ret.i.i129, ptr noundef nonnull %x.addr.i.i128, i32 noundef 8) #3
  %3 = load double, ptr %ret.i.i129, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i129) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i128)
  %call.i135 = call double @__divdf3(double noundef %3, double noundef 3.000000e+00) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i133)
  store double %call.i135, ptr %x.addr.i.i.i133, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i134) #4
  %call.i.i.i136 = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i134, ptr noundef nonnull %x.addr.i.i.i133, i32 noundef 8) #3
  %4 = load i64, ptr %ret.i.i.i134, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i134) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i133)
  %cmp.i.i137 = icmp eq i64 %4, 9221120237041090560
  br i1 %cmp.i.i137, label %if.end6, label %compareResultD.exit.i138

compareResultD.exit.i138:                         ; preds = %if.end
  %and.i.i139 = and i64 %4, 9218868437227405312
  %cmp3.i.i140 = icmp eq i64 %and.i.i139, 9218868437227405312
  %and4.i.i141 = and i64 %4, 4503599627370495
  %cmp5.not.i.i142 = icmp ne i64 %and4.i.i141, 0
  %or.cond12.i.not.i143 = and i1 %cmp5.not.i.i142, %cmp3.i.i140
  br i1 %or.cond12.i.not.i143, label %if.end6, label %test__divdf3.exit148

test__divdf3.exit148:                             ; preds = %compareResultD.exit.i138
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i131)
  store i64 9221120237041090560, ptr %x.addr.i.i131, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i132) #4
  %call.i.i145 = call ptr @memcpy(ptr noundef nonnull %ret.i.i132, ptr noundef nonnull %x.addr.i.i131, i32 noundef 8) #3
  %5 = load double, ptr %ret.i.i132, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i132) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i131)
  %call3.i146 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %3, double noundef 3.000000e+00, double noundef %call.i135, double noundef %5) #3
  br label %return

if.end6:                                          ; preds = %compareResultD.exit.i138, %if.end
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i149)
  store i64 9221120237041090560, ptr %x.addr.i.i149, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i150) #4
  %call.i.i151 = call ptr @memcpy(ptr noundef nonnull %ret.i.i150, ptr noundef nonnull %x.addr.i.i149, i32 noundef 8) #3
  %6 = load double, ptr %ret.i.i150, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i150) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i149)
  %call.i156 = call double @__divdf3(double noundef 3.000000e+00, double noundef %6) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i154)
  store double %call.i156, ptr %x.addr.i.i.i154, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i155) #4
  %call.i.i.i157 = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i155, ptr noundef nonnull %x.addr.i.i.i154, i32 noundef 8) #3
  %7 = load i64, ptr %ret.i.i.i155, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i155) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i154)
  %cmp.i.i158 = icmp eq i64 %7, 9221120237041090560
  br i1 %cmp.i.i158, label %if.end11, label %compareResultD.exit.i159

compareResultD.exit.i159:                         ; preds = %if.end6
  %and.i.i160 = and i64 %7, 9218868437227405312
  %cmp3.i.i161 = icmp eq i64 %and.i.i160, 9218868437227405312
  %and4.i.i162 = and i64 %7, 4503599627370495
  %cmp5.not.i.i163 = icmp ne i64 %and4.i.i162, 0
  %or.cond12.i.not.i164 = and i1 %cmp5.not.i.i163, %cmp3.i.i161
  br i1 %or.cond12.i.not.i164, label %if.end11, label %test__divdf3.exit169

test__divdf3.exit169:                             ; preds = %compareResultD.exit.i159
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i152)
  store i64 9221120237041090560, ptr %x.addr.i.i152, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i153) #4
  %call.i.i166 = call ptr @memcpy(ptr noundef nonnull %ret.i.i153, ptr noundef nonnull %x.addr.i.i152, i32 noundef 8) #3
  %8 = load double, ptr %ret.i.i153, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i153) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i152)
  %call3.i167 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 3.000000e+00, double noundef %6, double noundef %call.i156, double noundef %8) #3
  br label %return

if.end11:                                         ; preds = %compareResultD.exit.i159, %if.end6
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i170)
  store i64 9218868437227405603, ptr %x.addr.i.i170, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i171) #4
  %call.i.i172 = call ptr @memcpy(ptr noundef nonnull %ret.i.i171, ptr noundef nonnull %x.addr.i.i170, i32 noundef 8) #3
  %9 = load double, ptr %ret.i.i171, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i171) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i170)
  %call.i177 = call double @__divdf3(double noundef 3.000000e+00, double noundef %9) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i175)
  store double %call.i177, ptr %x.addr.i.i.i175, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i176) #4
  %call.i.i.i178 = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i176, ptr noundef nonnull %x.addr.i.i.i175, i32 noundef 8) #3
  %10 = load i64, ptr %ret.i.i.i176, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i176) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i175)
  %cmp.i.i179 = icmp eq i64 %10, 9221120237041090560
  br i1 %cmp.i.i179, label %if.end16, label %compareResultD.exit.i180

compareResultD.exit.i180:                         ; preds = %if.end11
  %and.i.i181 = and i64 %10, 9218868437227405312
  %cmp3.i.i182 = icmp eq i64 %and.i.i181, 9218868437227405312
  %and4.i.i183 = and i64 %10, 4503599627370495
  %cmp5.not.i.i184 = icmp ne i64 %and4.i.i183, 0
  %or.cond12.i.not.i185 = and i1 %cmp5.not.i.i184, %cmp3.i.i182
  br i1 %or.cond12.i.not.i185, label %if.end16, label %test__divdf3.exit190

test__divdf3.exit190:                             ; preds = %compareResultD.exit.i180
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i173)
  store i64 9221120237041090560, ptr %x.addr.i.i173, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i174) #4
  %call.i.i187 = call ptr @memcpy(ptr noundef nonnull %ret.i.i174, ptr noundef nonnull %x.addr.i.i173, i32 noundef 8) #3
  %11 = load double, ptr %ret.i.i174, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i174) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i173)
  %call3.i188 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 3.000000e+00, double noundef %9, double noundef %call.i177, double noundef %11) #3
  br label %return

if.end16:                                         ; preds = %compareResultD.exit.i180, %if.end11
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i191)
  store i64 9218868437227405312, ptr %x.addr.i.i191, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i192) #4
  %call.i.i193 = call ptr @memcpy(ptr noundef nonnull %ret.i.i192, ptr noundef nonnull %x.addr.i.i191, i32 noundef 8) #3
  %12 = load double, ptr %ret.i.i192, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i192) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i191)
  %call18 = call i32 @test__divdf3(double noundef %12, double noundef 3.000000e+00, i64 noundef 9218868437227405312) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %return

if.end21:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i194)
  store i64 9218868437227405312, ptr %x.addr.i.i194, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i195) #4
  %call.i.i196 = call ptr @memcpy(ptr noundef nonnull %ret.i.i195, ptr noundef nonnull %x.addr.i.i194, i32 noundef 8) #3
  %13 = load double, ptr %ret.i.i195, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i195) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i194)
  %call23 = call i32 @test__divdf3(double noundef %13, double noundef -3.000000e+00, i64 noundef -4503599627370496) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %return

if.end26:                                         ; preds = %if.end21
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i197)
  store i64 -4503599627370496, ptr %x.addr.i.i197, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i198) #4
  %call.i.i199 = call ptr @memcpy(ptr noundef nonnull %ret.i.i198, ptr noundef nonnull %x.addr.i.i197, i32 noundef 8) #3
  %14 = load double, ptr %ret.i.i198, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i198) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i197)
  %call28 = call i32 @test__divdf3(double noundef %14, double noundef 3.000000e+00, i64 noundef -4503599627370496) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %return

if.end31:                                         ; preds = %if.end26
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i200)
  store i64 -4503599627370496, ptr %x.addr.i.i200, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i201) #4
  %call.i.i202 = call ptr @memcpy(ptr noundef nonnull %ret.i.i201, ptr noundef nonnull %x.addr.i.i200, i32 noundef 8) #3
  %15 = load double, ptr %ret.i.i201, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i201) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i200)
  %call33 = call i32 @test__divdf3(double noundef %15, double noundef -3.000000e+00, i64 noundef 9218868437227405312) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end31
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i203)
  store i64 9218868437227405312, ptr %x.addr.i.i203, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i204) #4
  %call.i.i205 = call ptr @memcpy(ptr noundef nonnull %ret.i.i204, ptr noundef nonnull %x.addr.i.i203, i32 noundef 8) #3
  %16 = load double, ptr %ret.i.i204, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i204) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i203)
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i206)
  store i64 9218868437227405312, ptr %x.addr.i.i206, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i207) #4
  %call.i.i208 = call ptr @memcpy(ptr noundef nonnull %ret.i.i207, ptr noundef nonnull %x.addr.i.i206, i32 noundef 8) #3
  %17 = load double, ptr %ret.i.i207, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i207) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i206)
  %call39 = call i32 @test__divdf3(double noundef %16, double noundef %17, i64 noundef 9221120237041090560) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %return

if.end42:                                         ; preds = %if.end36
  %call43 = call i32 @test__divdf3(double noundef 0.000000e+00, double noundef 0.000000e+00, i64 noundef 9221120237041090560) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %return

if.end46:                                         ; preds = %if.end42
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i209)
  store i64 9218868437227405312, ptr %x.addr.i.i209, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i210) #4
  %call.i.i211 = call ptr @memcpy(ptr noundef nonnull %ret.i.i210, ptr noundef nonnull %x.addr.i.i209, i32 noundef 8) #3
  %18 = load double, ptr %ret.i.i210, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i210) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i209)
  %call48 = call i32 @test__divdf3(double noundef 0.000000e+00, double noundef %18, i64 noundef 0) #5
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %return

if.end51:                                         ; preds = %if.end46
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i212)
  store i64 9218868437227405312, ptr %x.addr.i.i212, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i213) #4
  %call.i.i214 = call ptr @memcpy(ptr noundef nonnull %ret.i.i213, ptr noundef nonnull %x.addr.i.i212, i32 noundef 8) #3
  %19 = load double, ptr %ret.i.i213, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i213) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i212)
  %call53 = call i32 @test__divdf3(double noundef %19, double noundef 0.000000e+00, i64 noundef 9218868437227405312) #5
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %return

if.end56:                                         ; preds = %if.end51
  %call57 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 0.000000e+00, i64 noundef 9218868437227405312) #5
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %return

if.end60:                                         ; preds = %if.end56
  %call61 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef -0.000000e+00, i64 noundef -4503599627370496) #5
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %return

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @test__divdf3(double noundef -1.000000e+00, double noundef 0.000000e+00, i64 noundef -4503599627370496) #5
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %return

if.end68:                                         ; preds = %if.end64
  %call69 = call i32 @test__divdf3(double noundef -1.000000e+00, double noundef -0.000000e+00, i64 noundef 9218868437227405312) #5
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %return

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 3.000000e+00, i64 noundef 4599676419421066581) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %return

if.end76:                                         ; preds = %if.end72
  %call77 = call i32 @test__divdf3(double noundef 0x20000000000000, double noundef 2.000000e+00, i64 noundef 4503599627370496) #5
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %return

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 4607182418800017408) #5
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %return

if.end84:                                         ; preds = %if.end80
  %call85 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 0x3FF0000000100000, i64 noundef 4607182418797920256) #5
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %return

if.end88:                                         ; preds = %if.end84
  %call89 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 2.000000e+00, i64 noundef 2251799813685248) #5
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %return

if.end92:                                         ; preds = %if.end88
  %call93 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 0x4330000000000000, i64 noundef 1) #5
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %return

if.end96:                                         ; preds = %if.end92
  %call97 = call i32 @test__divdf3(double noundef 0x16DFDC239DD64735, double noundef 0x84BFFF9364C0843F, i64 noundef -3310184691120799823) #5
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %return

if.end100:                                        ; preds = %if.end96
  %call101 = call i32 @test__divdf3(double noundef 0xF1978ABB261D47C8, double noundef 0x509FB01D537CC5AE, i64 noundef -2240604497976220701) #5
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %return

if.end104:                                        ; preds = %if.end100
  %call105 = call i32 @test__divdf3(double noundef 0x894DA7DFE6048B8B, double noundef 0x19DFFC7EA3FF60A4, i64 noundef -5810299790845108694) #5
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %return

if.end108:                                        ; preds = %if.end104
  %call109 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 5.000000e+01, i64 noundef 90071992547410) #5
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %return

if.end112:                                        ; preds = %if.end108
  %call113 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 0x4280028000000000, i64 noundef 2047) #5
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %return

if.end116:                                        ; preds = %if.end112
  %call117 = call i32 @test__divdf3(double noundef 0x10000000000000, double noundef 0x4330028000000000, i64 noundef 1) #5
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %return

if.end120:                                        ; preds = %if.end116
  %call121 = call i32 @test__divdf3(double noundef 1.000000e+00, double noundef 0x3FEFFFFFFFFFFFFF, i64 noundef 4607182418800017409) #5
  br label %return

return:                                           ; preds = %test__divdf3.exit190, %test__divdf3.exit169, %test__divdf3.exit148, %test__divdf3.exit, %if.end120, %if.end116, %if.end112, %if.end108, %if.end104, %if.end100, %if.end96, %if.end92, %if.end88, %if.end84, %if.end80, %if.end76, %if.end72, %if.end68, %if.end64, %if.end60, %if.end56, %if.end51, %if.end46, %if.end42, %if.end36, %if.end31, %if.end26, %if.end21, %if.end16
  %retval.0 = phi i32 [ 1, %if.end116 ], [ 1, %test__divdf3.exit ], [ 1, %test__divdf3.exit148 ], [ 1, %test__divdf3.exit169 ], [ 1, %test__divdf3.exit190 ], [ 1, %if.end16 ], [ 1, %if.end21 ], [ 1, %if.end26 ], [ 1, %if.end31 ], [ 1, %if.end36 ], [ 1, %if.end42 ], [ 1, %if.end46 ], [ 1, %if.end51 ], [ 1, %if.end56 ], [ 1, %if.end60 ], [ 1, %if.end64 ], [ 1, %if.end68 ], [ 1, %if.end72 ], [ 1, %if.end76 ], [ 1, %if.end80 ], [ 1, %if.end84 ], [ 1, %if.end88 ], [ 1, %if.end92 ], [ 1, %if.end96 ], [ 1, %if.end100 ], [ 1, %if.end104 ], [ 1, %if.end108 ], [ 1, %if.end112 ], [ %call121, %if.end120 ]
  ret i32 %retval.0
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32f"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 0}
!5 = !{!"clang version 22.1.8"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long long", !8, i64 0}
