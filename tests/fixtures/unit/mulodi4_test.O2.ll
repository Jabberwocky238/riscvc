; ModuleID = '../llvm-project/compiler-rt/test/builtins/Unit/mulodi4_test.c'
source_filename = "../llvm-project/compiler-rt/test/builtins/Unit/mulodi4_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [45 x i8] c"error in __mulodi4: overflow=%d expected=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"error in __mulodi4: 0x%llX * 0x%llX = 0x%llX (overflow=%d), expected 0x%llX (overflow=%d)\0A\00", align 1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @test__mulodi4(i64 noundef %a, i64 noundef %b, i64 noundef %expected, i32 noundef %expected_overflow) local_unnamed_addr #0 {
entry:
  %ov = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %ov) #3
  %call = call i64 @__mulodi4(i64 noundef %a, i64 noundef %b, ptr noundef nonnull %ov) #4
  %0 = load i32, ptr %ov, align 4, !tbaa !6
  %cmp.not = icmp eq i32 %0, %expected_overflow
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %expected_overflow) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool.not = icmp ne i32 %expected_overflow, 0
  %cmp2.not = icmp eq i64 %call, %expected
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.else
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef %a, i64 noundef %b, i64 noundef %call, i32 noundef 0, i64 noundef %expected, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.else, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.else ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(ptr nonnull %ov) #3
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare dso_local i64 @__mulodi4(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %ov.i279 = alloca i32, align 4
  %ov.i268 = alloca i32, align 4
  %ov.i257 = alloca i32, align 4
  %ov.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %ov.i) #3
  %call.i = call i64 @__mulodi4(i64 noundef 0, i64 noundef 0, ptr noundef nonnull %ov.i) #4
  %0 = load i32, ptr %ov.i, align 4, !tbaa !6
  %cmp.not.i = icmp eq i32 %0, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef 0) #4
  br label %if.end

if.else.i:                                        ; preds = %entry
  %cmp2.not.i = icmp eq i64 %call.i, 0
  br i1 %cmp2.not.i, label %if.end, label %test__mulodi4.exit

test__mulodi4.exit:                               ; preds = %if.else.i
  %call4.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 0, i64 noundef %call.i, i32 noundef 0, i64 noundef 0, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %ov.i) #3
  br label %return

if.end:                                           ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(ptr nonnull %ov.i) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %ov.i257) #3
  %call.i258 = call i64 @__mulodi4(i64 noundef 0, i64 noundef 1, ptr noundef nonnull %ov.i257) #4
  %1 = load i32, ptr %ov.i257, align 4, !tbaa !6
  %cmp.not.i259 = icmp eq i32 %1, 0
  br i1 %cmp.not.i259, label %if.else.i263, label %if.then.i260

if.then.i260:                                     ; preds = %if.end
  %call1.i261 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %1, i32 noundef 0) #4
  br label %if.end4

if.else.i263:                                     ; preds = %if.end
  %cmp2.not.i264 = icmp eq i64 %call.i258, 0
  br i1 %cmp2.not.i264, label %if.end4, label %test__mulodi4.exit267

test__mulodi4.exit267:                            ; preds = %if.else.i263
  %call4.i266 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 1, i64 noundef %call.i258, i32 noundef 0, i64 noundef 0, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %ov.i257) #3
  br label %return

if.end4:                                          ; preds = %if.else.i263, %if.then.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %ov.i257) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %ov.i268) #3
  %call.i269 = call i64 @__mulodi4(i64 noundef 1, i64 noundef 0, ptr noundef nonnull %ov.i268) #4
  %2 = load i32, ptr %ov.i268, align 4, !tbaa !6
  %cmp.not.i270 = icmp eq i32 %2, 0
  br i1 %cmp.not.i270, label %if.else.i274, label %if.then.i271

if.then.i271:                                     ; preds = %if.end4
  %call1.i272 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %2, i32 noundef 0) #4
  br label %if.end8

if.else.i274:                                     ; preds = %if.end4
  %cmp2.not.i275 = icmp eq i64 %call.i269, 0
  br i1 %cmp2.not.i275, label %if.end8, label %test__mulodi4.exit278

test__mulodi4.exit278:                            ; preds = %if.else.i274
  %call4.i277 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 0, i64 noundef %call.i269, i32 noundef 0, i64 noundef 0, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %ov.i268) #3
  br label %return

if.end8:                                          ; preds = %if.else.i274, %if.then.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %ov.i268) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %ov.i279) #3
  %call.i280 = call i64 @__mulodi4(i64 noundef 0, i64 noundef 10, ptr noundef nonnull %ov.i279) #4
  %3 = load i32, ptr %ov.i279, align 4, !tbaa !6
  %cmp.not.i281 = icmp eq i32 %3, 0
  br i1 %cmp.not.i281, label %if.else.i285, label %if.then.i282

if.then.i282:                                     ; preds = %if.end8
  %call1.i283 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 0) #4
  br label %if.end12

if.else.i285:                                     ; preds = %if.end8
  %cmp2.not.i286 = icmp eq i64 %call.i280, 0
  br i1 %cmp2.not.i286, label %if.end12, label %test__mulodi4.exit289

test__mulodi4.exit289:                            ; preds = %if.else.i285
  %call4.i288 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 10, i64 noundef %call.i280, i32 noundef 0, i64 noundef 0, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %ov.i279) #3
  br label %return

if.end12:                                         ; preds = %if.else.i285, %if.then.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %ov.i279) #3
  %call13 = call i32 @test__mulodi4(i64 noundef 10, i64 noundef 0, i64 noundef 0, i32 noundef 0) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @test__mulodi4(i64 noundef 0, i64 noundef 81985529216486895, i64 noundef 0, i32 noundef 0) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %return

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @test__mulodi4(i64 noundef 81985529216486895, i64 noundef 0, i64 noundef 0, i32 noundef 0) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %return

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @test__mulodi4(i64 noundef 0, i64 noundef -1, i64 noundef 0, i32 noundef 0) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %return

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @test__mulodi4(i64 noundef -1, i64 noundef 0, i64 noundef 0, i32 noundef 0) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %return

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @test__mulodi4(i64 noundef 0, i64 noundef -10, i64 noundef 0, i32 noundef 0) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %return

if.end36:                                         ; preds = %if.end32
  %call37 = call i32 @test__mulodi4(i64 noundef -10, i64 noundef 0, i64 noundef 0, i32 noundef 0) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %return

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @test__mulodi4(i64 noundef 0, i64 noundef -81985529216486895, i64 noundef 0, i32 noundef 0) #5
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %return

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @test__mulodi4(i64 noundef -81985529216486895, i64 noundef 0, i64 noundef 0, i32 noundef 0) #5
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %return

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 @test__mulodi4(i64 noundef 1, i64 noundef 1, i64 noundef 1, i32 noundef 0) #5
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %return

if.end52:                                         ; preds = %if.end48
  %call53 = call i32 @test__mulodi4(i64 noundef 1, i64 noundef 10, i64 noundef 10, i32 noundef 0) #5
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %return

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @test__mulodi4(i64 noundef 10, i64 noundef 1, i64 noundef 10, i32 noundef 0) #5
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %return

if.end60:                                         ; preds = %if.end56
  %call61 = call i32 @test__mulodi4(i64 noundef 1, i64 noundef 81985529216486895, i64 noundef 81985529216486895, i32 noundef 0) #5
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %return

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @test__mulodi4(i64 noundef 81985529216486895, i64 noundef 1, i64 noundef 81985529216486895, i32 noundef 0) #5
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %return

if.end68:                                         ; preds = %if.end64
  %call69 = call i32 @test__mulodi4(i64 noundef 1, i64 noundef -1, i64 noundef -1, i32 noundef 0) #5
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %return

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @test__mulodi4(i64 noundef 1, i64 noundef -10, i64 noundef -10, i32 noundef 0) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %return

if.end76:                                         ; preds = %if.end72
  %call77 = call i32 @test__mulodi4(i64 noundef -10, i64 noundef 1, i64 noundef -10, i32 noundef 0) #5
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %return

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @test__mulodi4(i64 noundef 1, i64 noundef -81985529216486895, i64 noundef -81985529216486895, i32 noundef 0) #5
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %return

if.end84:                                         ; preds = %if.end80
  %call85 = call i32 @test__mulodi4(i64 noundef -81985529216486895, i64 noundef 1, i64 noundef -81985529216486895, i32 noundef 0) #5
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %return

if.end88:                                         ; preds = %if.end84
  %call89 = call i32 @test__mulodi4(i64 noundef 3037000499, i64 noundef 3037000499, i64 noundef 9223372030926249001, i32 noundef 0) #5
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %return

if.end92:                                         ; preds = %if.end88
  %call93 = call i32 @test__mulodi4(i64 noundef -3037000499, i64 noundef 3037000499, i64 noundef -9223372030926249001, i32 noundef 0) #5
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %return

if.end96:                                         ; preds = %if.end92
  %call97 = call i32 @test__mulodi4(i64 noundef 3037000499, i64 noundef -3037000499, i64 noundef -9223372030926249001, i32 noundef 0) #5
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %return

if.end100:                                        ; preds = %if.end96
  %call101 = call i32 @test__mulodi4(i64 noundef -3037000499, i64 noundef -3037000499, i64 noundef 9223372030926249001, i32 noundef 0) #5
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %return

if.end104:                                        ; preds = %if.end100
  %call105 = call i32 @test__mulodi4(i64 noundef 4398046511103, i64 noundef 2097152, i64 noundef 9223372036852678656, i32 noundef 0) #5
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %return

if.end108:                                        ; preds = %if.end104
  %call109 = call i32 @test__mulodi4(i64 noundef -4398046511103, i64 noundef 2097152, i64 noundef -9223372036852678656, i32 noundef 0) #5
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %return

if.end112:                                        ; preds = %if.end108
  %call113 = call i32 @test__mulodi4(i64 noundef 4398046511103, i64 noundef -2097152, i64 noundef -9223372036852678656, i32 noundef 0) #5
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %return

if.end116:                                        ; preds = %if.end112
  %call117 = call i32 @test__mulodi4(i64 noundef -4398046511103, i64 noundef -2097152, i64 noundef 9223372036852678656, i32 noundef 0) #5
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %return

if.end120:                                        ; preds = %if.end116
  %call121 = call i32 @test__mulodi4(i64 noundef 2097152, i64 noundef 4398046511103, i64 noundef 9223372036852678656, i32 noundef 0) #5
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %return

if.end124:                                        ; preds = %if.end120
  %call125 = call i32 @test__mulodi4(i64 noundef -2097152, i64 noundef 4398046511103, i64 noundef -9223372036852678656, i32 noundef 0) #5
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %return

if.end128:                                        ; preds = %if.end124
  %call129 = call i32 @test__mulodi4(i64 noundef 2097152, i64 noundef -4398046511103, i64 noundef -9223372036852678656, i32 noundef 0) #5
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %return

if.end132:                                        ; preds = %if.end128
  %call133 = call i32 @test__mulodi4(i64 noundef -2097152, i64 noundef -4398046511103, i64 noundef 9223372036852678656, i32 noundef 0) #5
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %return

if.end136:                                        ; preds = %if.end132
  %call137 = call i32 @test__mulodi4(i64 noundef 9223372036854775807, i64 noundef -2, i64 noundef 2, i32 noundef 1) #5
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %return

if.end140:                                        ; preds = %if.end136
  %call141 = call i32 @test__mulodi4(i64 noundef -2, i64 noundef 9223372036854775807, i64 noundef 2, i32 noundef 1) #5
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %return

if.end144:                                        ; preds = %if.end140
  %call145 = call i32 @test__mulodi4(i64 noundef 9223372036854775807, i64 noundef -1, i64 noundef -9223372036854775807, i32 noundef 0) #5
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %return

if.end148:                                        ; preds = %if.end144
  %call149 = call i32 @test__mulodi4(i64 noundef -1, i64 noundef 9223372036854775807, i64 noundef -9223372036854775807, i32 noundef 0) #5
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %return

if.end152:                                        ; preds = %if.end148
  %call153 = call i32 @test__mulodi4(i64 noundef 9223372036854775807, i64 noundef 0, i64 noundef 0, i32 noundef 0) #5
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %return

if.end156:                                        ; preds = %if.end152
  %call157 = call i32 @test__mulodi4(i64 noundef 0, i64 noundef 9223372036854775807, i64 noundef 0, i32 noundef 0) #5
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %return

if.end160:                                        ; preds = %if.end156
  %call161 = call i32 @test__mulodi4(i64 noundef 9223372036854775807, i64 noundef 1, i64 noundef 9223372036854775807, i32 noundef 0) #5
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %return

if.end164:                                        ; preds = %if.end160
  %call165 = call i32 @test__mulodi4(i64 noundef 1, i64 noundef 9223372036854775807, i64 noundef 9223372036854775807, i32 noundef 0) #5
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %return

if.end168:                                        ; preds = %if.end164
  %call169 = call i32 @test__mulodi4(i64 noundef 9223372036854775807, i64 noundef 2, i64 noundef -9223372036854775807, i32 noundef 1) #5
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %return

if.end172:                                        ; preds = %if.end168
  %call173 = call i32 @test__mulodi4(i64 noundef 2, i64 noundef 9223372036854775807, i64 noundef -9223372036854775807, i32 noundef 1) #5
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %return

if.end176:                                        ; preds = %if.end172
  %call177 = call i32 @test__mulodi4(i64 noundef -9223372036854775808, i64 noundef -2, i64 noundef -9223372036854775808, i32 noundef 1) #5
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %return

if.end180:                                        ; preds = %if.end176
  %call181 = call i32 @test__mulodi4(i64 noundef -2, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i32 noundef 1) #5
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %return

if.end184:                                        ; preds = %if.end180
  %call185 = call i32 @test__mulodi4(i64 noundef -9223372036854775808, i64 noundef -1, i64 noundef -9223372036854775808, i32 noundef 1) #5
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %return

if.end188:                                        ; preds = %if.end184
  %call189 = call i32 @test__mulodi4(i64 noundef -1, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i32 noundef 1) #5
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %return

if.end192:                                        ; preds = %if.end188
  %call193 = call i32 @test__mulodi4(i64 noundef -9223372036854775808, i64 noundef 0, i64 noundef 0, i32 noundef 0) #5
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end196, label %return

if.end196:                                        ; preds = %if.end192
  %call197 = call i32 @test__mulodi4(i64 noundef 0, i64 noundef -9223372036854775808, i64 noundef 0, i32 noundef 0) #5
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end200, label %return

if.end200:                                        ; preds = %if.end196
  %call201 = call i32 @test__mulodi4(i64 noundef -9223372036854775808, i64 noundef 1, i64 noundef -9223372036854775808, i32 noundef 0) #5
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end204, label %return

if.end204:                                        ; preds = %if.end200
  %call205 = call i32 @test__mulodi4(i64 noundef 1, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i32 noundef 0) #5
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end208, label %return

if.end208:                                        ; preds = %if.end204
  %call209 = call i32 @test__mulodi4(i64 noundef -9223372036854775808, i64 noundef 2, i64 noundef -9223372036854775808, i32 noundef 1) #5
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end212, label %return

if.end212:                                        ; preds = %if.end208
  %call213 = call i32 @test__mulodi4(i64 noundef 2, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i32 noundef 1) #5
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end216, label %return

if.end216:                                        ; preds = %if.end212
  %call217 = call i32 @test__mulodi4(i64 noundef -9223372036854775807, i64 noundef -2, i64 noundef -9223372036854775807, i32 noundef 1) #5
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.end220, label %return

if.end220:                                        ; preds = %if.end216
  %call221 = call i32 @test__mulodi4(i64 noundef -2, i64 noundef -9223372036854775807, i64 noundef -9223372036854775807, i32 noundef 1) #5
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end224, label %return

if.end224:                                        ; preds = %if.end220
  %call225 = call i32 @test__mulodi4(i64 noundef -9223372036854775807, i64 noundef -1, i64 noundef 9223372036854775807, i32 noundef 0) #5
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %return

if.end228:                                        ; preds = %if.end224
  %call229 = call i32 @test__mulodi4(i64 noundef -1, i64 noundef -9223372036854775807, i64 noundef 9223372036854775807, i32 noundef 0) #5
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end232, label %return

if.end232:                                        ; preds = %if.end228
  %call233 = call i32 @test__mulodi4(i64 noundef -9223372036854775807, i64 noundef 0, i64 noundef 0, i32 noundef 0) #5
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end236, label %return

if.end236:                                        ; preds = %if.end232
  %call237 = call i32 @test__mulodi4(i64 noundef 0, i64 noundef -9223372036854775807, i64 noundef 0, i32 noundef 0) #5
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end240, label %return

if.end240:                                        ; preds = %if.end236
  %call241 = call i32 @test__mulodi4(i64 noundef -9223372036854775807, i64 noundef 1, i64 noundef -9223372036854775807, i32 noundef 0) #5
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end244, label %return

if.end244:                                        ; preds = %if.end240
  %call245 = call i32 @test__mulodi4(i64 noundef 1, i64 noundef -9223372036854775807, i64 noundef -9223372036854775807, i32 noundef 0) #5
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %if.end248, label %return

if.end248:                                        ; preds = %if.end244
  %call249 = call i32 @test__mulodi4(i64 noundef -9223372036854775807, i64 noundef 2, i64 noundef -9223372036854775808, i32 noundef 1) #5
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end252, label %return

if.end252:                                        ; preds = %if.end248
  %call253 = call i32 @test__mulodi4(i64 noundef 2, i64 noundef -9223372036854775807, i64 noundef -9223372036854775808, i32 noundef 1) #5
  br label %return

return:                                           ; preds = %test__mulodi4.exit289, %test__mulodi4.exit278, %test__mulodi4.exit267, %test__mulodi4.exit, %if.end252, %if.end248, %if.end244, %if.end240, %if.end236, %if.end232, %if.end228, %if.end224, %if.end220, %if.end216, %if.end212, %if.end208, %if.end204, %if.end200, %if.end196, %if.end192, %if.end188, %if.end184, %if.end180, %if.end176, %if.end172, %if.end168, %if.end164, %if.end160, %if.end156, %if.end152, %if.end148, %if.end144, %if.end140, %if.end136, %if.end132, %if.end128, %if.end124, %if.end120, %if.end116, %if.end112, %if.end108, %if.end104, %if.end100, %if.end96, %if.end92, %if.end88, %if.end84, %if.end80, %if.end76, %if.end72, %if.end68, %if.end64, %if.end60, %if.end56, %if.end52, %if.end48, %if.end44, %if.end40, %if.end36, %if.end32, %if.end28, %if.end24, %if.end20, %if.end16, %if.end12
  %retval.0 = phi i32 [ 1, %if.end248 ], [ 1, %test__mulodi4.exit ], [ 1, %test__mulodi4.exit267 ], [ 1, %test__mulodi4.exit278 ], [ 1, %test__mulodi4.exit289 ], [ 1, %if.end12 ], [ 1, %if.end16 ], [ 1, %if.end20 ], [ 1, %if.end24 ], [ 1, %if.end28 ], [ 1, %if.end32 ], [ 1, %if.end36 ], [ 1, %if.end40 ], [ 1, %if.end44 ], [ 1, %if.end48 ], [ 1, %if.end52 ], [ 1, %if.end56 ], [ 1, %if.end60 ], [ 1, %if.end64 ], [ 1, %if.end68 ], [ 1, %if.end72 ], [ 1, %if.end76 ], [ 1, %if.end80 ], [ 1, %if.end84 ], [ 1, %if.end88 ], [ 1, %if.end92 ], [ 1, %if.end96 ], [ 1, %if.end100 ], [ 1, %if.end104 ], [ 1, %if.end108 ], [ 1, %if.end112 ], [ 1, %if.end116 ], [ 1, %if.end120 ], [ 1, %if.end124 ], [ 1, %if.end128 ], [ 1, %if.end132 ], [ 1, %if.end136 ], [ 1, %if.end140 ], [ 1, %if.end144 ], [ 1, %if.end148 ], [ 1, %if.end152 ], [ 1, %if.end156 ], [ 1, %if.end160 ], [ 1, %if.end164 ], [ 1, %if.end168 ], [ 1, %if.end172 ], [ 1, %if.end176 ], [ 1, %if.end180 ], [ 1, %if.end184 ], [ 1, %if.end188 ], [ 1, %if.end192 ], [ 1, %if.end196 ], [ 1, %if.end200 ], [ 1, %if.end204 ], [ 1, %if.end208 ], [ 1, %if.end212 ], [ 1, %if.end216 ], [ 1, %if.end220 ], [ 1, %if.end224 ], [ 1, %if.end228 ], [ 1, %if.end232 ], [ 1, %if.end236 ], [ 1, %if.end240 ], [ 1, %if.end244 ], [ %call253, %if.end252 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
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
