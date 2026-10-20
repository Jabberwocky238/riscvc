; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/truncdfhf2_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/truncdfhf2_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [56 x i8] c"error in test__truncdfhf2(%lf) = %#.4x, expected %#.4x\0A\00", align 1
@assumption_1 = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__truncdfhf2(double noundef %a, i16 noundef zeroext %expected) local_unnamed_addr #0 {
entry:
  %x.addr.i = alloca half, align 2
  %ret.i = alloca i16, align 2
  %x.addr.i.i = alloca half, align 2
  %ret.i.i = alloca i16, align 2
  %call = tail call half @__truncdfhf2(double noundef %a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i)
  store half %call, ptr %x.addr.i.i, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i) #4
  %call.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i, ptr noundef nonnull %x.addr.i.i, i32 noundef 2) #3
  %0 = load i16, ptr %ret.i.i, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i)
  %cmp.i = icmp eq i16 %0, %expected
  br i1 %cmp.i, label %if.end, label %compareResultH.exit

compareResultH.exit:                              ; preds = %entry
  %conv.i = zext i16 %0 to i32
  %cmp4.i = icmp eq i16 %expected, 32256
  %and.i = and i32 %conv.i, 31744
  %cmp8.i = icmp eq i32 %and.i, 31744
  %or.cond.not21.i.not12 = and i1 %cmp4.i, %cmp8.i
  %and11.i = and i32 %conv.i, 1023
  %cmp12.not.i = icmp ne i32 %and11.i, 0
  %or.cond20.i.not = and i1 %cmp12.not.i, %or.cond.not21.i.not12
  br i1 %or.cond20.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %compareResultH.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i)
  store half %call, ptr %x.addr.i, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i) #4
  %call.i = call ptr @memcpy(ptr noundef nonnull %ret.i, ptr noundef nonnull %x.addr.i, i32 noundef 2) #3
  %1 = load i16, ptr %ret.i, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i)
  %conv = zext i16 %1 to i32
  %conv3 = zext i16 %expected to i32
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %a, i32 noundef %conv, i32 noundef %conv3) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %compareResultH.exit
  %retval.0.i11 = phi i32 [ 0, %compareResultH.exit ], [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0.i11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare dso_local half @__truncdfhf2(double noundef) local_unnamed_addr #2

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %x.addr.i.i145 = alloca half, align 2
  %ret.i.i146 = alloca i16, align 2
  %x.addr.i.i.i147 = alloca half, align 2
  %ret.i.i.i148 = alloca i16, align 2
  %x.addr.i.i142 = alloca i64, align 8
  %ret.i.i143 = alloca double, align 8
  %x.addr.i.i122 = alloca half, align 2
  %ret.i.i123 = alloca i16, align 2
  %x.addr.i.i.i124 = alloca half, align 2
  %ret.i.i.i125 = alloca i16, align 2
  %x.addr.i.i119 = alloca i64, align 8
  %ret.i.i120 = alloca double, align 8
  %x.addr.i.i99 = alloca half, align 2
  %ret.i.i100 = alloca i16, align 2
  %x.addr.i.i.i101 = alloca half, align 2
  %ret.i.i.i102 = alloca i16, align 2
  %x.addr.i.i96 = alloca i64, align 8
  %ret.i.i97 = alloca double, align 8
  %x.addr.i.i93 = alloca half, align 2
  %ret.i.i94 = alloca i16, align 2
  %x.addr.i.i.i = alloca half, align 2
  %ret.i.i.i = alloca i16, align 2
  %x.addr.i.i = alloca i64, align 8
  %ret.i.i = alloca double, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i)
  store i64 9221120237041090560, ptr %x.addr.i.i, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i) #4
  %call.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i, ptr noundef nonnull %x.addr.i.i, i32 noundef 8) #3
  %0 = load double, ptr %ret.i.i, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i)
  %call.i = call half @__truncdfhf2(double noundef %0) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i)
  store half %call.i, ptr %x.addr.i.i.i, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i) #4
  %call.i.i.i = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i, ptr noundef nonnull %x.addr.i.i.i, i32 noundef 2) #3
  %1 = load i16, ptr %ret.i.i.i, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i)
  %cmp.i.i = icmp eq i16 %1, 32256
  br i1 %cmp.i.i, label %if.end, label %compareResultH.exit.i

compareResultH.exit.i:                            ; preds = %entry
  %conv.i.i = zext i16 %1 to i32
  %and.i.i = and i32 %conv.i.i, 31744
  %cmp8.i.i = icmp eq i32 %and.i.i, 31744
  %and11.i.i = and i32 %conv.i.i, 1023
  %cmp12.not.i.i = icmp ne i32 %and11.i.i, 0
  %or.cond20.i.not.i = and i1 %cmp12.not.i.i, %cmp8.i.i
  br i1 %or.cond20.i.not.i, label %if.end, label %test__truncdfhf2.exit

test__truncdfhf2.exit:                            ; preds = %compareResultH.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i93)
  store half %call.i, ptr %x.addr.i.i93, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i94) #4
  %call.i.i95 = call ptr @memcpy(ptr noundef nonnull %ret.i.i94, ptr noundef nonnull %x.addr.i.i93, i32 noundef 2) #3
  %2 = load i16, ptr %ret.i.i94, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i94) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i93)
  %conv.i = zext i16 %2 to i32
  %call4.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %0, i32 noundef %conv.i, i32 noundef 32256) #3
  br label %return

if.end:                                           ; preds = %compareResultH.exit.i, %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i96)
  store i64 9218868437227438080, ptr %x.addr.i.i96, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i97) #4
  %call.i.i98 = call ptr @memcpy(ptr noundef nonnull %ret.i.i97, ptr noundef nonnull %x.addr.i.i96, i32 noundef 8) #3
  %3 = load double, ptr %ret.i.i97, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i97) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i96)
  %call.i103 = call half @__truncdfhf2(double noundef %3) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i101)
  store half %call.i103, ptr %x.addr.i.i.i101, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i102) #4
  %call.i.i.i104 = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i102, ptr noundef nonnull %x.addr.i.i.i101, i32 noundef 2) #3
  %4 = load i16, ptr %ret.i.i.i102, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i102) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i101)
  %cmp.i.i105 = icmp eq i16 %4, 32256
  br i1 %cmp.i.i105, label %if.end6, label %compareResultH.exit.i106

compareResultH.exit.i106:                         ; preds = %if.end
  %conv.i.i107 = zext i16 %4 to i32
  %and.i.i108 = and i32 %conv.i.i107, 31744
  %cmp8.i.i109 = icmp eq i32 %and.i.i108, 31744
  %and11.i.i110 = and i32 %conv.i.i107, 1023
  %cmp12.not.i.i111 = icmp ne i32 %and11.i.i110, 0
  %or.cond20.i.not.i112 = and i1 %cmp12.not.i.i111, %cmp8.i.i109
  br i1 %or.cond20.i.not.i112, label %if.end6, label %test__truncdfhf2.exit118

test__truncdfhf2.exit118:                         ; preds = %compareResultH.exit.i106
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i99)
  store half %call.i103, ptr %x.addr.i.i99, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i100) #4
  %call.i.i114 = call ptr @memcpy(ptr noundef nonnull %ret.i.i100, ptr noundef nonnull %x.addr.i.i99, i32 noundef 2) #3
  %5 = load i16, ptr %ret.i.i100, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i100) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i99)
  %conv.i115 = zext i16 %5 to i32
  %call4.i116 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %3, i32 noundef %conv.i115, i32 noundef 32256) #3
  br label %return

if.end6:                                          ; preds = %compareResultH.exit.i106, %if.end
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i119)
  store i64 9218868437227405312, ptr %x.addr.i.i119, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i120) #4
  %call.i.i121 = call ptr @memcpy(ptr noundef nonnull %ret.i.i120, ptr noundef nonnull %x.addr.i.i119, i32 noundef 8) #3
  %6 = load double, ptr %ret.i.i120, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i120) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i119)
  %call.i126 = call half @__truncdfhf2(double noundef %6) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i124)
  store half %call.i126, ptr %x.addr.i.i.i124, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i125) #4
  %call.i.i.i127 = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i125, ptr noundef nonnull %x.addr.i.i.i124, i32 noundef 2) #3
  %7 = load i16, ptr %ret.i.i.i125, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i125) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i124)
  %cmp.i.i128 = icmp eq i16 %7, 31744
  br i1 %cmp.i.i128, label %if.end11, label %test__truncdfhf2.exit141

test__truncdfhf2.exit141:                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i122)
  store half %call.i126, ptr %x.addr.i.i122, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i123) #4
  %call.i.i137 = call ptr @memcpy(ptr noundef nonnull %ret.i.i123, ptr noundef nonnull %x.addr.i.i122, i32 noundef 2) #3
  %8 = load i16, ptr %ret.i.i123, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i123) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i122)
  %conv.i138 = zext i16 %8 to i32
  %call4.i139 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %6, i32 noundef %conv.i138, i32 noundef 31744) #3
  br label %return

if.end11:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i142)
  store i64 9218868437227405312, ptr %x.addr.i.i142, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i143) #4
  %call.i.i144 = call ptr @memcpy(ptr noundef nonnull %ret.i.i143, ptr noundef nonnull %x.addr.i.i142, i32 noundef 8) #3
  %9 = load double, ptr %ret.i.i143, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i143) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i142)
  %fneg = fneg double %9
  %call.i149 = call half @__truncdfhf2(double noundef %fneg) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i.i147)
  store half %call.i149, ptr %x.addr.i.i.i147, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i.i148) #4
  %call.i.i.i150 = call ptr @memcpy(ptr noundef nonnull %ret.i.i.i148, ptr noundef nonnull %x.addr.i.i.i147, i32 noundef 2) #3
  %10 = load i16, ptr %ret.i.i.i148, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i.i148) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i.i147)
  %cmp.i.i151 = icmp eq i16 %10, -1024
  br i1 %cmp.i.i151, label %if.end16, label %test__truncdfhf2.exit164

test__truncdfhf2.exit164:                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(ptr nonnull %x.addr.i.i145)
  store half %call.i149, ptr %x.addr.i.i145, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %ret.i.i146) #4
  %call.i.i160 = call ptr @memcpy(ptr noundef nonnull %ret.i.i146, ptr noundef nonnull %x.addr.i.i145, i32 noundef 2) #3
  %11 = load i16, ptr %ret.i.i146, align 2, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %ret.i.i146) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %x.addr.i.i145)
  %conv.i161 = zext i16 %11 to i32
  %call4.i162 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %fneg, i32 noundef %conv.i161, i32 noundef 64512) #3
  br label %return

if.end16:                                         ; preds = %if.end11
  %call17 = call i32 @test__truncdfhf2(double noundef 0.000000e+00, i16 noundef zeroext 0) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %return

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @test__truncdfhf2(double noundef -0.000000e+00, i16 noundef zeroext -32768) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %return

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @test__truncdfhf2(double noundef 0x400921FB54411744, i16 noundef zeroext 16968) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %return

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @test__truncdfhf2(double noundef 0xC00921FB54411744, i16 noundef zeroext -15800) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %return

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @test__truncdfhf2(double noundef 0x7E79871248768763, i16 noundef zeroext 31744) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end32
  %call37 = call i32 @test__truncdfhf2(double noundef 0x40B9871248768763, i16 noundef zeroext 28258) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %return

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @test__truncdfhf2(double noundef 1.000000e+00, i16 noundef zeroext 15360) #5
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %return

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @test__truncdfhf2(double noundef 0x3F10000000000000, i16 noundef zeroext 1024) #5
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %return

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 @test__truncdfhf2(double noundef 0x3EB0000000000000, i16 noundef zeroext 16) #5
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %return

if.end52:                                         ; preds = %if.end48
  %call53 = call i32 @test__truncdfhf2(double noundef 0x3E70000000000000, i16 noundef zeroext 1) #5
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %return

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @test__truncdfhf2(double noundef 0xBE70000000000000, i16 noundef zeroext -32767) #5
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %return

if.end60:                                         ; preds = %if.end56
  %call61 = call i32 @test__truncdfhf2(double noundef 0x3E65000000000000, i16 noundef zeroext 1) #5
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %return

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @test__truncdfhf2(double noundef 0x3E60000000000000, i16 noundef zeroext 0) #5
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %return

if.end68:                                         ; preds = %if.end64
  %call69 = call i32 @test__truncdfhf2(double noundef 0xBE60000000000000, i16 noundef zeroext -32768) #5
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %return

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @test__truncdfhf2(double noundef 6.550400e+04, i16 noundef zeroext 31743) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %return

if.end76:                                         ; preds = %if.end72
  %call77 = call i32 @test__truncdfhf2(double noundef 6.551900e+04, i16 noundef zeroext 31743) #5
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %return

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @test__truncdfhf2(double noundef 6.552000e+04, i16 noundef zeroext 31744) #5
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %return

if.end84:                                         ; preds = %if.end80
  %call85 = call i32 @test__truncdfhf2(double noundef -6.552000e+04, i16 noundef zeroext -1024) #5
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %return

if.end88:                                         ; preds = %if.end84
  %call89 = call i32 @test__truncdfhf2(double noundef 6.553600e+04, i16 noundef zeroext 31744) #5
  br label %return

return:                                           ; preds = %test__truncdfhf2.exit164, %test__truncdfhf2.exit141, %test__truncdfhf2.exit118, %test__truncdfhf2.exit, %if.end88, %if.end84, %if.end80, %if.end76, %if.end72, %if.end68, %if.end64, %if.end60, %if.end56, %if.end52, %if.end48, %if.end44, %if.end40, %if.end36, %if.end32, %if.end28, %if.end24, %if.end20, %if.end16
  %retval.0 = phi i32 [ 1, %if.end84 ], [ 1, %test__truncdfhf2.exit ], [ 1, %test__truncdfhf2.exit118 ], [ 1, %test__truncdfhf2.exit141 ], [ 1, %test__truncdfhf2.exit164 ], [ 1, %if.end16 ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 1, %if.end28 ], [ 1, %if.end32 ], [ 1, %if.end36 ], [ 1, %if.end40 ], [ 1, %if.end44 ], [ 1, %if.end48 ], [ 1, %if.end52 ], [ 1, %if.end56 ], [ 1, %if.end60 ], [ 1, %if.end64 ], [ 1, %if.end68 ], [ 1, %if.end72 ], [ 1, %if.end76 ], [ 1, %if.end80 ], [ %call89, %if.end88 ]
  ret i32 %retval.0
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!11 = !{!"_Float16", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !8, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !8, i64 0}
