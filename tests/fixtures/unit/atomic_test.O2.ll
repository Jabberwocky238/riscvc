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
@test_loads.atomic_load_models = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 5], align 4
@data = internal global [32 x i8] c"\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./", align 16
@test_stores.atomic_store_models = internal unnamed_addr constant [3 x i32] [i32 0, i32 3, i32 5], align 4
@test_exchanges.atomic_exchange_models = internal unnamed_addr constant [5 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5], align 4
@test_compare_exchanges.atomic_compare_exchange_models = internal unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 5, i32 3, i32 4], align 4
@test_fetch_op.atomic_fetch_models = internal unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local void @set_a_values(i64 noundef %value) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %value to i8
  store i8 %conv, ptr @a8, align 1, !tbaa !10
  %conv1 = trunc i64 %value to i16
  store i16 %conv1, ptr @a16, align 2, !tbaa !11
  %conv2 = trunc i64 %value to i32
  store i32 %conv2, ptr @a32, align 4, !tbaa !6
  store i64 %value, ptr @a64, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local void @set_b_values(i64 noundef %value) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %value to i8
  store i8 %conv, ptr @b8, align 1, !tbaa !10
  %conv1 = trunc i64 %value to i16
  store i16 %conv1, ptr @b16, align 2, !tbaa !11
  %conv2 = trunc i64 %value to i32
  store i32 %conv2, ptr @b32, align 4, !tbaa !6
  store i64 %value, ptr @b64, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind
define dso_local void @test_loads() local_unnamed_addr #1 {
entry:
  %dst = alloca [32 x i8], align 16
  %dst12 = alloca [32 x i8], align 16
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst12, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end50
  %inc59 = add nuw nsw i32 %m.081, 1
  %exitcond83.not = icmp eq i32 %inc59, 4
  br i1 %exitcond83.not, label %for.cond.cleanup, label %for.body, !llvm.loop !15

for.cond.cleanup:                                 ; preds = %for.cond
  ret void

for.body:                                         ; preds = %entry, %for.cond
  %m.081 = phi i32 [ 0, %entry ], [ %inc59, %for.cond ]
  %arrayidx = getelementptr inbounds nuw i32, ptr @test_loads.atomic_load_models, i32 %m.081
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  br label %for.body4

for.body4:                                        ; preds = %for.body, %if.end
  %n.079 = phi i32 [ 1, %for.body ], [ %inc, %if.end ]
  call void @llvm.lifetime.start.p0(ptr nonnull %dst) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 16 dereferenceable(32) %dst, i8 0, i32 32, i1 false)
  call void @__atomic_load(i32 noundef %n.079, ptr noundef nonnull @data, ptr noundef nonnull %dst, i32 noundef %0) #8
  %call = call i32 @memcmp(ptr noundef nonnull %dst, ptr noundef nonnull @data, i32 noundef %n.079) #8
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body4
  call void @abort() #9
  unreachable

if.end:                                           ; preds = %for.body4
  call void @llvm.lifetime.end.p0(ptr nonnull %dst) #7
  %inc = add nuw nsw i32 %n.079, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.body11, label %for.body4, !llvm.loop !17

for.cond.cleanup10:                               ; preds = %if.end19
  %conv = zext nneg i32 %m.081 to i64
  %add = add nuw nsw i64 %conv, 4774735094265366601
  %conv.i = trunc i64 %add to i8
  store i8 %conv.i, ptr @a8, align 1, !tbaa !10
  %conv1.i = trunc i64 %add to i16
  store i16 %conv1.i, ptr @a16, align 2, !tbaa !11
  %conv2.i = trunc i64 %add to i32
  store i32 %conv2.i, ptr @a32, align 4, !tbaa !6
  store i64 %add, ptr @a64, align 8, !tbaa !13
  %call23 = call zeroext i8 @__atomic_load_1(ptr noundef nonnull @a8, i32 noundef %0) #8
  %conv24 = zext i8 %call23 to i32
  %conv28 = and i32 %conv2.i, 79
  %cmp29.not = icmp eq i32 %conv28, %conv24
  br i1 %cmp29.not, label %if.end32, label %if.then31

for.body11:                                       ; preds = %if.end, %if.end19
  %n7.080 = phi i32 [ %inc21, %if.end19 ], [ 1, %if.end ]
  call void @llvm.lifetime.start.p0(ptr nonnull %dst12) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 16 dereferenceable(32) %dst12, i8 0, i32 32, i1 false)
  call void @__atomic_load(i32 noundef %n7.080, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @data, i32 1), ptr noundef nonnull %add.ptr, i32 noundef %0) #8
  %call16 = call i32 @memcmp(ptr noundef nonnull %add.ptr, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @data, i32 1), i32 noundef %n7.080) #8
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %for.body11
  call void @abort() #9
  unreachable

if.end19:                                         ; preds = %for.body11
  call void @llvm.lifetime.end.p0(ptr nonnull %dst12) #7
  %inc21 = add nuw nsw i32 %n7.080, 1
  %exitcond82.not = icmp eq i32 %inc21, 32
  br i1 %exitcond82.not, label %for.cond.cleanup10, label %for.body11, !llvm.loop !18

if.then31:                                        ; preds = %for.cond.cleanup10
  call void @abort() #9
  unreachable

if.end32:                                         ; preds = %for.cond.cleanup10
  %call33 = call zeroext i16 @__atomic_load_2(ptr noundef nonnull @a16, i32 noundef %0) #8
  %conv34 = zext i16 %call33 to i32
  %conv38 = and i32 %conv2.i, 18511
  %cmp39.not = icmp eq i32 %conv38, %conv34
  br i1 %cmp39.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end32
  call void @abort() #9
  unreachable

if.end42:                                         ; preds = %if.end32
  %call43 = call i32 @__atomic_load_4(ptr noundef nonnull @a32, i32 noundef %0) #8
  %cmp47.not = icmp eq i32 %call43, %conv2.i
  br i1 %cmp47.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end42
  call void @abort() #9
  unreachable

if.end50:                                         ; preds = %if.end42
  %call51 = call i64 @__atomic_load_8(ptr noundef nonnull @a64, i32 noundef %0) #8
  %cmp54.not = icmp eq i64 %call51, %add
  br i1 %cmp54.not, label %for.cond, label %if.then56

if.then56:                                        ; preds = %if.end50
  call void @abort() #9
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #3

declare dso_local void @__atomic_load(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare dso_local void @abort() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare dso_local zeroext i8 @__atomic_load_1(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i16 @__atomic_load_2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @__atomic_load_4(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i64 @__atomic_load_8(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @test_stores() local_unnamed_addr #1 {
entry:
  %dst = alloca [32 x i8], align 16
  %dst12 = alloca [32 x i8], align 16
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst12, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end54
  %inc64 = add nuw nsw i32 %m.089, 1
  %exitcond91.not = icmp eq i32 %inc64, 3
  br i1 %exitcond91.not, label %for.cond.cleanup, label %for.body, !llvm.loop !19

for.cond.cleanup:                                 ; preds = %for.cond
  ret void

for.body:                                         ; preds = %entry, %for.cond
  %m.089 = phi i32 [ 0, %entry ], [ %inc64, %for.cond ]
  %arrayidx = getelementptr inbounds nuw i32, ptr @test_stores.atomic_store_models, i32 %m.089
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  br label %for.body4

for.body4:                                        ; preds = %for.body, %if.end
  %n.087 = phi i32 [ 1, %for.body ], [ %inc, %if.end ]
  call void @llvm.lifetime.start.p0(ptr nonnull %dst) #7
  call void @__atomic_store(i32 noundef %n.087, ptr noundef nonnull %dst, ptr noundef nonnull @data, i32 noundef %0) #8
  %call = call i32 @memcmp(ptr noundef nonnull @data, ptr noundef nonnull %dst, i32 noundef %n.087) #8
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body4
  call void @abort() #9
  unreachable

if.end:                                           ; preds = %for.body4
  call void @llvm.lifetime.end.p0(ptr nonnull %dst) #7
  %inc = add nuw nsw i32 %n.087, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.body11, label %for.body4, !llvm.loop !20

for.cond.cleanup10:                               ; preds = %if.end19
  %conv = zext nneg i32 %m.089 to i64
  %add = add nuw nsw i64 %conv, 4774735094265366601
  %conv23 = trunc i64 %add to i8
  call void @__atomic_store_1(ptr noundef nonnull @a8, i8 noundef zeroext %conv23, i32 noundef %0) #8
  %1 = load i8, ptr @a8, align 1, !tbaa !10
  %conv24 = zext i8 %1 to i32
  %2 = trunc i64 %add to i32
  %conv28 = and i32 %2, 79
  %cmp29.not = icmp eq i32 %conv28, %conv24
  br i1 %cmp29.not, label %if.end32, label %if.then31

for.body11:                                       ; preds = %if.end, %if.end19
  %n7.088 = phi i32 [ %inc21, %if.end19 ], [ 1, %if.end ]
  call void @llvm.lifetime.start.p0(ptr nonnull %dst12) #7
  call void @__atomic_store(i32 noundef %n7.088, ptr noundef nonnull %add.ptr, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @data, i32 1), i32 noundef %0) #8
  %call16 = call i32 @memcmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @data, i32 1), ptr noundef nonnull %add.ptr, i32 noundef %n7.088) #8
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %for.body11
  call void @abort() #9
  unreachable

if.end19:                                         ; preds = %for.body11
  call void @llvm.lifetime.end.p0(ptr nonnull %dst12) #7
  %inc21 = add nuw nsw i32 %n7.088, 1
  %exitcond90.not = icmp eq i32 %inc21, 32
  br i1 %exitcond90.not, label %for.cond.cleanup10, label %for.body11, !llvm.loop !21

if.then31:                                        ; preds = %for.cond.cleanup10
  call void @abort() #9
  unreachable

if.end32:                                         ; preds = %for.cond.cleanup10
  %conv35 = trunc i64 %add to i16
  call void @__atomic_store_2(ptr noundef nonnull @a16, i16 noundef zeroext %conv35, i32 noundef %0) #8
  %3 = load i16, ptr @a16, align 2, !tbaa !11
  %conv36 = zext i16 %3 to i32
  %conv40 = and i32 %2, 18511
  %cmp41.not = icmp eq i32 %conv40, %conv36
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end32
  call void @abort() #9
  unreachable

if.end44:                                         ; preds = %if.end32
  call void @__atomic_store_4(ptr noundef nonnull @a32, i32 noundef %2, i32 noundef %0) #8
  %4 = load i32, ptr @a32, align 4, !tbaa !6
  %cmp51.not = icmp eq i32 %4, %2
  br i1 %cmp51.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end44
  call void @abort() #9
  unreachable

if.end54:                                         ; preds = %if.end44
  call void @__atomic_store_8(ptr noundef nonnull @a64, i64 noundef %add, i32 noundef %0) #8
  %5 = load i64, ptr @a64, align 8, !tbaa !13
  %cmp59.not = icmp eq i64 %5, %add
  br i1 %cmp59.not, label %for.cond, label %if.then61

if.then61:                                        ; preds = %if.end54
  call void @abort() #9
  unreachable
}

declare dso_local void @__atomic_store(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local void @__atomic_store_1(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local void @__atomic_store_2(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local void @__atomic_store_4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local void @__atomic_store_8(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @test_exchanges() local_unnamed_addr #1 {
entry:
  %dst = alloca [32 x i8], align 16
  %old = alloca [32 x i8], align 16
  %dst39 = alloca [32 x i8], align 16
  %old40 = alloca [32 x i8], align 16
  store i8 73, ptr @a8, align 1, !tbaa !10
  store i16 18505, ptr @a16, align 2, !tbaa !11
  store i32 1179076681, ptr @a32, align 4, !tbaa !6
  store i64 4774735094265366601, ptr @a64, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst39, i32 1
  %add.ptr55 = getelementptr inbounds nuw i8, ptr %old40, i32 1
  %arrayidx9.1 = getelementptr inbounds nuw i8, ptr %dst, i32 1
  %arrayidx9.2 = getelementptr inbounds nuw i8, ptr %dst, i32 2
  %arrayidx9.3 = getelementptr inbounds nuw i8, ptr %dst, i32 3
  %arrayidx9.4 = getelementptr inbounds nuw i8, ptr %dst, i32 4
  %arrayidx9.5 = getelementptr inbounds nuw i8, ptr %dst, i32 5
  %arrayidx9.6 = getelementptr inbounds nuw i8, ptr %dst, i32 6
  %arrayidx9.7 = getelementptr inbounds nuw i8, ptr %dst, i32 7
  %arrayidx9.8 = getelementptr inbounds nuw i8, ptr %dst, i32 8
  %arrayidx9.9 = getelementptr inbounds nuw i8, ptr %dst, i32 9
  %arrayidx9.10 = getelementptr inbounds nuw i8, ptr %dst, i32 10
  %arrayidx9.11 = getelementptr inbounds nuw i8, ptr %dst, i32 11
  %arrayidx9.12 = getelementptr inbounds nuw i8, ptr %dst, i32 12
  %arrayidx9.13 = getelementptr inbounds nuw i8, ptr %dst, i32 13
  %arrayidx9.14 = getelementptr inbounds nuw i8, ptr %dst, i32 14
  %arrayidx9.15 = getelementptr inbounds nuw i8, ptr %dst, i32 15
  %arrayidx9.16 = getelementptr inbounds nuw i8, ptr %dst, i32 16
  %arrayidx9.17 = getelementptr inbounds nuw i8, ptr %dst, i32 17
  %arrayidx9.18 = getelementptr inbounds nuw i8, ptr %dst, i32 18
  %arrayidx9.19 = getelementptr inbounds nuw i8, ptr %dst, i32 19
  %arrayidx9.20 = getelementptr inbounds nuw i8, ptr %dst, i32 20
  %arrayidx9.21 = getelementptr inbounds nuw i8, ptr %dst, i32 21
  %arrayidx9.22 = getelementptr inbounds nuw i8, ptr %dst, i32 22
  %arrayidx9.23 = getelementptr inbounds nuw i8, ptr %dst, i32 23
  %arrayidx9.24 = getelementptr inbounds nuw i8, ptr %dst, i32 24
  %arrayidx9.25 = getelementptr inbounds nuw i8, ptr %dst, i32 25
  %arrayidx9.26 = getelementptr inbounds nuw i8, ptr %dst, i32 26
  %arrayidx9.27 = getelementptr inbounds nuw i8, ptr %dst, i32 27
  %arrayidx9.28 = getelementptr inbounds nuw i8, ptr %dst, i32 28
  %arrayidx9.29 = getelementptr inbounds nuw i8, ptr %dst, i32 29
  %arrayidx9.30 = getelementptr inbounds nuw i8, ptr %dst, i32 30
  %arrayidx9.31 = getelementptr inbounds nuw i8, ptr %dst, i32 31
  %arrayidx49.1 = getelementptr inbounds nuw i8, ptr %dst39, i32 2
  %arrayidx49.2 = getelementptr inbounds nuw i8, ptr %dst39, i32 3
  %arrayidx49.3 = getelementptr inbounds nuw i8, ptr %dst39, i32 4
  %arrayidx49.4 = getelementptr inbounds nuw i8, ptr %dst39, i32 5
  %arrayidx49.5 = getelementptr inbounds nuw i8, ptr %dst39, i32 6
  %arrayidx49.6 = getelementptr inbounds nuw i8, ptr %dst39, i32 7
  %arrayidx49.7 = getelementptr inbounds nuw i8, ptr %dst39, i32 8
  %arrayidx49.8 = getelementptr inbounds nuw i8, ptr %dst39, i32 9
  %arrayidx49.9 = getelementptr inbounds nuw i8, ptr %dst39, i32 10
  %arrayidx49.10 = getelementptr inbounds nuw i8, ptr %dst39, i32 11
  %arrayidx49.11 = getelementptr inbounds nuw i8, ptr %dst39, i32 12
  %arrayidx49.12 = getelementptr inbounds nuw i8, ptr %dst39, i32 13
  %arrayidx49.13 = getelementptr inbounds nuw i8, ptr %dst39, i32 14
  %arrayidx49.14 = getelementptr inbounds nuw i8, ptr %dst39, i32 15
  %arrayidx49.15 = getelementptr inbounds nuw i8, ptr %dst39, i32 16
  %arrayidx49.16 = getelementptr inbounds nuw i8, ptr %dst39, i32 17
  %arrayidx49.17 = getelementptr inbounds nuw i8, ptr %dst39, i32 18
  %arrayidx49.18 = getelementptr inbounds nuw i8, ptr %dst39, i32 19
  %arrayidx49.19 = getelementptr inbounds nuw i8, ptr %dst39, i32 20
  %arrayidx49.20 = getelementptr inbounds nuw i8, ptr %dst39, i32 21
  %arrayidx49.21 = getelementptr inbounds nuw i8, ptr %dst39, i32 22
  %arrayidx49.22 = getelementptr inbounds nuw i8, ptr %dst39, i32 23
  %arrayidx49.23 = getelementptr inbounds nuw i8, ptr %dst39, i32 24
  %arrayidx49.24 = getelementptr inbounds nuw i8, ptr %dst39, i32 25
  %arrayidx49.25 = getelementptr inbounds nuw i8, ptr %dst39, i32 26
  %arrayidx49.26 = getelementptr inbounds nuw i8, ptr %dst39, i32 27
  %arrayidx49.27 = getelementptr inbounds nuw i8, ptr %dst39, i32 28
  %arrayidx49.28 = getelementptr inbounds nuw i8, ptr %dst39, i32 29
  %arrayidx49.29 = getelementptr inbounds nuw i8, ptr %dst39, i32 30
  %arrayidx49.30 = getelementptr inbounds nuw i8, ptr %dst39, i32 31
  br label %for.body

for.cond:                                         ; preds = %if.end120
  %exitcond187.not = icmp eq i32 %add.1, 5
  br i1 %exitcond187.not, label %for.cond.cleanup, label %for.body, !llvm.loop !22

for.cond.cleanup:                                 ; preds = %for.cond
  ret void

for.body:                                         ; preds = %entry, %for.cond
  %m.0182 = phi i32 [ 0, %entry ], [ %add.1, %for.cond ]
  %arrayidx = getelementptr inbounds nuw i32, ptr @test_exchanges.atomic_exchange_models, i32 %m.0182
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  %conv = trunc nuw nsw i32 %m.0182 to i8
  %add.1 = add nuw nsw i32 %m.0182, 1
  %conv.1 = trunc nuw nsw i32 %add.1 to i8
  %1 = trunc i32 %m.0182 to i8
  %conv.2 = add i8 %1, 2
  %2 = trunc i32 %m.0182 to i8
  %conv.3 = add i8 %2, 3
  %3 = trunc i32 %m.0182 to i8
  %conv.4 = add i8 %3, 4
  %4 = trunc i32 %m.0182 to i8
  %conv.5 = add i8 %4, 5
  %5 = trunc i32 %m.0182 to i8
  %conv.6 = add i8 %5, 6
  %6 = trunc i32 %m.0182 to i8
  %conv.7 = add i8 %6, 7
  %7 = trunc i32 %m.0182 to i8
  %conv.8 = add i8 %7, 8
  %8 = trunc i32 %m.0182 to i8
  %conv.9 = add i8 %8, 9
  %9 = trunc i32 %m.0182 to i8
  %conv.10 = add i8 %9, 10
  %10 = trunc i32 %m.0182 to i8
  %conv.11 = add i8 %10, 11
  %11 = trunc i32 %m.0182 to i8
  %conv.12 = add i8 %11, 12
  %12 = trunc i32 %m.0182 to i8
  %conv.13 = add i8 %12, 13
  %13 = trunc i32 %m.0182 to i8
  %conv.14 = add i8 %13, 14
  %14 = trunc i32 %m.0182 to i8
  %conv.15 = add i8 %14, 15
  %15 = trunc i32 %m.0182 to i8
  %conv.16 = add i8 %15, 16
  %16 = trunc i32 %m.0182 to i8
  %conv.17 = add i8 %16, 17
  %17 = trunc i32 %m.0182 to i8
  %conv.18 = add i8 %17, 18
  %18 = trunc i32 %m.0182 to i8
  %conv.19 = add i8 %18, 19
  %19 = trunc i32 %m.0182 to i8
  %conv.20 = add i8 %19, 20
  %20 = trunc i32 %m.0182 to i8
  %conv.21 = add i8 %20, 21
  %21 = trunc i32 %m.0182 to i8
  %conv.22 = add i8 %21, 22
  %22 = trunc i32 %m.0182 to i8
  %conv.23 = add i8 %22, 23
  %23 = trunc i32 %m.0182 to i8
  %conv.24 = add i8 %23, 24
  %24 = trunc i32 %m.0182 to i8
  %conv.25 = add i8 %24, 25
  %25 = trunc i32 %m.0182 to i8
  %conv.26 = add i8 %25, 26
  %26 = trunc i32 %m.0182 to i8
  %conv.27 = add i8 %26, 27
  %27 = trunc i32 %m.0182 to i8
  %conv.28 = add i8 %27, 28
  %28 = trunc i32 %m.0182 to i8
  %conv.29 = add i8 %28, 29
  %29 = trunc i32 %m.0182 to i8
  %conv.30 = add i8 %29, 30
  %30 = trunc i32 %m.0182 to i8
  %conv.31 = add i8 %30, 31
  br label %for.body4

for.cond34.preheader:                             ; preds = %for.cond.cleanup15
  %sub70 = add nsw i32 %m.0182, -1
  %conv48 = trunc i32 %m.0182 to i8
  %31 = trunc i32 %m.0182 to i8
  %conv48.1 = add i8 %31, 1
  %32 = trunc i32 %m.0182 to i8
  %conv48.2 = add i8 %32, 2
  %33 = trunc i32 %m.0182 to i8
  %conv48.3 = add i8 %33, 3
  %34 = trunc i32 %m.0182 to i8
  %conv48.4 = add i8 %34, 4
  %35 = trunc i32 %m.0182 to i8
  %conv48.5 = add i8 %35, 5
  %36 = trunc i32 %m.0182 to i8
  %conv48.6 = add i8 %36, 6
  %37 = trunc i32 %m.0182 to i8
  %conv48.7 = add i8 %37, 7
  %38 = trunc i32 %m.0182 to i8
  %conv48.8 = add i8 %38, 8
  %39 = trunc i32 %m.0182 to i8
  %conv48.9 = add i8 %39, 9
  %40 = trunc i32 %m.0182 to i8
  %conv48.10 = add i8 %40, 10
  %41 = trunc i32 %m.0182 to i8
  %conv48.11 = add i8 %41, 11
  %42 = trunc i32 %m.0182 to i8
  %conv48.12 = add i8 %42, 12
  %43 = trunc i32 %m.0182 to i8
  %conv48.13 = add i8 %43, 13
  %44 = trunc i32 %m.0182 to i8
  %conv48.14 = add i8 %44, 14
  %45 = trunc i32 %m.0182 to i8
  %conv48.15 = add i8 %45, 15
  %46 = trunc i32 %m.0182 to i8
  %conv48.16 = add i8 %46, 16
  %47 = trunc i32 %m.0182 to i8
  %conv48.17 = add i8 %47, 17
  %48 = trunc i32 %m.0182 to i8
  %conv48.18 = add i8 %48, 18
  %49 = trunc i32 %m.0182 to i8
  %conv48.19 = add i8 %49, 19
  %50 = trunc i32 %m.0182 to i8
  %conv48.20 = add i8 %50, 20
  %51 = trunc i32 %m.0182 to i8
  %conv48.21 = add i8 %51, 21
  %52 = trunc i32 %m.0182 to i8
  %conv48.22 = add i8 %52, 22
  %53 = trunc i32 %m.0182 to i8
  %conv48.23 = add i8 %53, 23
  %54 = trunc i32 %m.0182 to i8
  %conv48.24 = add i8 %54, 24
  %55 = trunc i32 %m.0182 to i8
  %conv48.25 = add i8 %55, 25
  %56 = trunc i32 %m.0182 to i8
  %conv48.26 = add i8 %56, 26
  %57 = trunc i32 %m.0182 to i8
  %conv48.27 = add i8 %57, 27
  %58 = trunc i32 %m.0182 to i8
  %conv48.28 = add i8 %58, 28
  %59 = trunc i32 %m.0182 to i8
  %conv48.29 = add i8 %59, 29
  %60 = trunc i32 %m.0182 to i8
  %conv48.30 = add i8 %60, 30
  br label %for.body38

for.body4:                                        ; preds = %for.body, %for.cond.cleanup15
  %n.0177 = phi i32 [ 1, %for.body ], [ %inc31, %for.cond.cleanup15 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %dst) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %old) #7
  store i8 %conv, ptr %dst, align 16, !tbaa !10
  store i8 %conv.1, ptr %arrayidx9.1, align 1, !tbaa !10
  store i8 %conv.2, ptr %arrayidx9.2, align 2, !tbaa !10
  store i8 %conv.3, ptr %arrayidx9.3, align 1, !tbaa !10
  store i8 %conv.4, ptr %arrayidx9.4, align 4, !tbaa !10
  store i8 %conv.5, ptr %arrayidx9.5, align 1, !tbaa !10
  store i8 %conv.6, ptr %arrayidx9.6, align 2, !tbaa !10
  store i8 %conv.7, ptr %arrayidx9.7, align 1, !tbaa !10
  store i8 %conv.8, ptr %arrayidx9.8, align 8, !tbaa !10
  store i8 %conv.9, ptr %arrayidx9.9, align 1, !tbaa !10
  store i8 %conv.10, ptr %arrayidx9.10, align 2, !tbaa !10
  store i8 %conv.11, ptr %arrayidx9.11, align 1, !tbaa !10
  store i8 %conv.12, ptr %arrayidx9.12, align 4, !tbaa !10
  store i8 %conv.13, ptr %arrayidx9.13, align 1, !tbaa !10
  store i8 %conv.14, ptr %arrayidx9.14, align 2, !tbaa !10
  store i8 %conv.15, ptr %arrayidx9.15, align 1, !tbaa !10
  store i8 %conv.16, ptr %arrayidx9.16, align 16, !tbaa !10
  store i8 %conv.17, ptr %arrayidx9.17, align 1, !tbaa !10
  store i8 %conv.18, ptr %arrayidx9.18, align 2, !tbaa !10
  store i8 %conv.19, ptr %arrayidx9.19, align 1, !tbaa !10
  store i8 %conv.20, ptr %arrayidx9.20, align 4, !tbaa !10
  store i8 %conv.21, ptr %arrayidx9.21, align 1, !tbaa !10
  store i8 %conv.22, ptr %arrayidx9.22, align 2, !tbaa !10
  store i8 %conv.23, ptr %arrayidx9.23, align 1, !tbaa !10
  store i8 %conv.24, ptr %arrayidx9.24, align 8, !tbaa !10
  store i8 %conv.25, ptr %arrayidx9.25, align 1, !tbaa !10
  store i8 %conv.26, ptr %arrayidx9.26, align 2, !tbaa !10
  store i8 %conv.27, ptr %arrayidx9.27, align 1, !tbaa !10
  store i8 %conv.28, ptr %arrayidx9.28, align 4, !tbaa !10
  store i8 %conv.29, ptr %arrayidx9.29, align 1, !tbaa !10
  store i8 %conv.30, ptr %arrayidx9.30, align 2, !tbaa !10
  store i8 %conv.31, ptr %arrayidx9.31, align 1, !tbaa !10
  call void @__atomic_exchange(i32 noundef %n.0177, ptr noundef nonnull %dst, ptr noundef nonnull @data, ptr noundef nonnull %old, i32 noundef %0) #8
  br label %for.body16

for.cond12:                                       ; preds = %lor.lhs.false
  %inc28 = add nuw nsw i32 %i11.0176, 1
  %exitcond.not = icmp eq i32 %inc28, %n.0177
  br i1 %exitcond.not, label %for.cond.cleanup15, label %for.body16, !llvm.loop !23

for.cond.cleanup15:                               ; preds = %for.cond12
  call void @llvm.lifetime.end.p0(ptr nonnull %old) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %dst) #7
  %inc31 = add nuw nsw i32 %n.0177, 1
  %exitcond183.not = icmp eq i32 %inc31, 33
  br i1 %exitcond183.not, label %for.cond34.preheader, label %for.body4, !llvm.loop !24

for.body16:                                       ; preds = %for.body4, %for.cond12
  %i11.0176 = phi i32 [ 0, %for.body4 ], [ %inc28, %for.cond12 ]
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %dst, i32 %i11.0176
  %61 = load i8, ptr %arrayidx17, align 1, !tbaa !10
  %conv18 = zext i8 %61 to i32
  %add19 = add nuw nsw i32 %i11.0176, 16
  %cmp20.not = icmp eq i32 %add19, %conv18
  br i1 %cmp20.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body16
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %old, i32 %i11.0176
  %62 = load i8, ptr %arrayidx22, align 1, !tbaa !10
  %conv23 = zext i8 %62 to i32
  %add24 = add nuw nsw i32 %i11.0176, %m.0182
  %cmp25.not = icmp eq i32 %add24, %conv23
  br i1 %cmp25.not, label %for.cond12, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body16
  call void @abort() #9
  unreachable

for.cond.cleanup37:                               ; preds = %for.cond.cleanup60
  %conv82 = zext nneg i32 %m.0182 to i64
  %add83 = add nuw nsw i64 %conv82, 4774735094265366601
  %add84 = add nuw nsw i64 %conv82, 4774735094265366602
  %conv85 = trunc i64 %add84 to i8
  %call = call zeroext i8 @__atomic_exchange_1(ptr noundef nonnull @a8, i8 noundef zeroext %conv85, i32 noundef %0) #8
  %conv86 = zext i8 %call to i32
  %conv89 = trunc i64 %add83 to i32
  %conv90 = and i32 %conv89, 95
  %cmp91.not = icmp eq i32 %conv90, %conv86
  br i1 %cmp91.not, label %if.end94, label %if.then93

for.body38:                                       ; preds = %for.cond34.preheader, %for.cond.cleanup60
  %n33.0181 = phi i32 [ 1, %for.cond34.preheader ], [ %inc80, %for.cond.cleanup60 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %dst39) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %old40) #7
  store i8 %conv48, ptr %add.ptr, align 1, !tbaa !10
  store i8 %conv48.1, ptr %arrayidx49.1, align 2, !tbaa !10
  store i8 %conv48.2, ptr %arrayidx49.2, align 1, !tbaa !10
  store i8 %conv48.3, ptr %arrayidx49.3, align 4, !tbaa !10
  store i8 %conv48.4, ptr %arrayidx49.4, align 1, !tbaa !10
  store i8 %conv48.5, ptr %arrayidx49.5, align 2, !tbaa !10
  store i8 %conv48.6, ptr %arrayidx49.6, align 1, !tbaa !10
  store i8 %conv48.7, ptr %arrayidx49.7, align 8, !tbaa !10
  store i8 %conv48.8, ptr %arrayidx49.8, align 1, !tbaa !10
  store i8 %conv48.9, ptr %arrayidx49.9, align 2, !tbaa !10
  store i8 %conv48.10, ptr %arrayidx49.10, align 1, !tbaa !10
  store i8 %conv48.11, ptr %arrayidx49.11, align 4, !tbaa !10
  store i8 %conv48.12, ptr %arrayidx49.12, align 1, !tbaa !10
  store i8 %conv48.13, ptr %arrayidx49.13, align 2, !tbaa !10
  store i8 %conv48.14, ptr %arrayidx49.14, align 1, !tbaa !10
  store i8 %conv48.15, ptr %arrayidx49.15, align 16, !tbaa !10
  store i8 %conv48.16, ptr %arrayidx49.16, align 1, !tbaa !10
  store i8 %conv48.17, ptr %arrayidx49.17, align 2, !tbaa !10
  store i8 %conv48.18, ptr %arrayidx49.18, align 1, !tbaa !10
  store i8 %conv48.19, ptr %arrayidx49.19, align 4, !tbaa !10
  store i8 %conv48.20, ptr %arrayidx49.20, align 1, !tbaa !10
  store i8 %conv48.21, ptr %arrayidx49.21, align 2, !tbaa !10
  store i8 %conv48.22, ptr %arrayidx49.22, align 1, !tbaa !10
  store i8 %conv48.23, ptr %arrayidx49.23, align 8, !tbaa !10
  store i8 %conv48.24, ptr %arrayidx49.24, align 1, !tbaa !10
  store i8 %conv48.25, ptr %arrayidx49.25, align 2, !tbaa !10
  store i8 %conv48.26, ptr %arrayidx49.26, align 1, !tbaa !10
  store i8 %conv48.27, ptr %arrayidx49.27, align 4, !tbaa !10
  store i8 %conv48.28, ptr %arrayidx49.28, align 1, !tbaa !10
  store i8 %conv48.29, ptr %arrayidx49.29, align 2, !tbaa !10
  store i8 %conv48.30, ptr %arrayidx49.30, align 1, !tbaa !10
  call void @__atomic_exchange(i32 noundef %n33.0181, ptr noundef nonnull %add.ptr, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @data, i32 1), ptr noundef nonnull %add.ptr55, i32 noundef %0) #8
  %cmp58179 = icmp samesign ugt i32 %n33.0181, 1
  br i1 %cmp58179, label %for.body61, label %for.cond.cleanup60

for.cond57:                                       ; preds = %lor.lhs.false67
  %inc77 = add nuw nsw i32 %i56.0180, 1
  %exitcond185.not = icmp eq i32 %inc77, %n33.0181
  br i1 %exitcond185.not, label %for.cond.cleanup60, label %for.body61, !llvm.loop !25

for.cond.cleanup60:                               ; preds = %for.cond57, %for.body38
  call void @llvm.lifetime.end.p0(ptr nonnull %old40) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %dst39) #7
  %inc80 = add nuw nsw i32 %n33.0181, 1
  %exitcond186.not = icmp eq i32 %inc80, 32
  br i1 %exitcond186.not, label %for.cond.cleanup37, label %for.body38, !llvm.loop !26

for.body61:                                       ; preds = %for.body38, %for.cond57
  %i56.0180 = phi i32 [ %inc77, %for.cond57 ], [ 1, %for.body38 ]
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %dst39, i32 %i56.0180
  %63 = load i8, ptr %arrayidx62, align 1, !tbaa !10
  %conv63 = zext i8 %63 to i32
  %add64 = add nuw nsw i32 %i56.0180, 16
  %cmp65.not = icmp eq i32 %add64, %conv63
  br i1 %cmp65.not, label %lor.lhs.false67, label %if.then74

lor.lhs.false67:                                  ; preds = %for.body61
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %old40, i32 %i56.0180
  %64 = load i8, ptr %arrayidx68, align 1, !tbaa !10
  %conv69 = zext i8 %64 to i32
  %add71 = add nsw i32 %sub70, %i56.0180
  %cmp72.not = icmp eq i32 %add71, %conv69
  br i1 %cmp72.not, label %for.cond57, label %if.then74

if.then74:                                        ; preds = %lor.lhs.false67, %for.body61
  call void @abort() #9
  unreachable

if.then93:                                        ; preds = %for.cond.cleanup37
  call void @abort() #9
  unreachable

if.end94:                                         ; preds = %for.cond.cleanup37
  %conv98 = trunc i64 %add84 to i16
  %call99 = call zeroext i16 @__atomic_exchange_2(ptr noundef nonnull @a16, i16 noundef zeroext %conv98, i32 noundef %0) #8
  %conv100 = zext i16 %call99 to i32
  %conv104 = and i32 %conv89, 18527
  %cmp105.not = icmp eq i32 %conv104, %conv100
  br i1 %cmp105.not, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.end94
  call void @abort() #9
  unreachable

if.end108:                                        ; preds = %if.end94
  %conv112 = trunc i64 %add84 to i32
  %call113 = call i32 @__atomic_exchange_4(ptr noundef nonnull @a32, i32 noundef %conv112, i32 noundef %0) #8
  %cmp117.not = icmp eq i32 %call113, %conv89
  br i1 %cmp117.not, label %if.end120, label %if.then119

if.then119:                                       ; preds = %if.end108
  call void @abort() #9
  unreachable

if.end120:                                        ; preds = %if.end108
  %call124 = call i64 @__atomic_exchange_8(ptr noundef nonnull @a64, i64 noundef %add84, i32 noundef %0) #8
  %cmp127.not = icmp eq i64 %call124, %add83
  br i1 %cmp127.not, label %for.cond, label %if.then129

if.then129:                                       ; preds = %if.end120
  call void @abort() #9
  unreachable
}

declare dso_local void @__atomic_exchange(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i8 @__atomic_exchange_1(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i16 @__atomic_exchange_2(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @__atomic_exchange_4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i64 @__atomic_exchange_8(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @test_compare_exchanges() local_unnamed_addr #1 {
entry:
  %dst = alloca [32 x i8], align 16
  %exp = alloca [32 x i8], align 16
  %dst32 = alloca [32 x i8], align 16
  %exp33 = alloca [32 x i8], align 16
  %add.ptr = getelementptr inbounds nuw i8, ptr %dst32, i32 1
  %add.ptr36 = getelementptr inbounds nuw i8, ptr %exp33, i32 1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup3
  %m1.0248 = phi i32 [ 0, %entry ], [ %inc188, %for.cond.cleanup3 ]
  %arrayidx = getelementptr inbounds nuw i32, ptr @test_compare_exchanges.atomic_compare_exchange_models, i32 %m1.0248
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  %conv = zext nneg i32 %m1.0248 to i64
  %add = add nuw nsw i64 %conv, 4774735094265366601
  %conv64 = trunc i64 %add to i8
  %1 = trunc i64 %add to i32
  %conv86 = and i32 %1, 95
  %conv97 = trunc i64 %add to i16
  %conv120 = and i32 %1, 18527
  br label %for.body4

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  ret void

for.cond1:                                        ; preds = %if.end174
  %inc185 = add nuw nsw i32 %m2.0247, 1
  %exitcond250.not = icmp eq i32 %inc185, 4
  br i1 %exitcond250.not, label %for.cond.cleanup3, label %for.body4, !llvm.loop !27

for.cond.cleanup3:                                ; preds = %for.cond1
  %inc188 = add nuw nsw i32 %m1.0248, 1
  %exitcond251.not = icmp eq i32 %inc188, 6
  br i1 %exitcond251.not, label %for.cond.cleanup, label %for.cond1.preheader, !llvm.loop !28

for.body4:                                        ; preds = %for.cond1.preheader, %for.cond1
  %m2.0247 = phi i32 [ 0, %for.cond1.preheader ], [ %inc185, %for.cond1 ]
  %arrayidx5 = getelementptr inbounds nuw i32, ptr @test_compare_exchanges.atomic_compare_exchange_models, i32 %m2.0247
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !6
  br label %for.body9

for.body9:                                        ; preds = %for.body4, %if.end26
  %n.0245 = phi i32 [ 1, %for.body4 ], [ %inc, %if.end26 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %dst) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 16 dereferenceable(32) %dst, i8 0, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %exp) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 16 dereferenceable(32) %exp, i8 0, i32 32, i1 false)
  %call = call i32 @__atomic_compare_exchange(i32 noundef %n.0245, ptr noundef nonnull %dst, ptr noundef nonnull %exp, ptr noundef nonnull @data, i32 noundef %0, i32 noundef %2) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  call void @abort() #9
  unreachable

if.end:                                           ; preds = %for.body9
  %call12 = call i32 @memcmp(ptr noundef nonnull %dst, ptr noundef nonnull @data, i32 noundef %n.0245) #8
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @abort() #9
  unreachable

if.end15:                                         ; preds = %if.end
  %call18 = call i32 @__atomic_compare_exchange(i32 noundef %n.0245, ptr noundef nonnull %dst, ptr noundef nonnull %exp, ptr noundef nonnull @data, i32 noundef %0, i32 noundef %2) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end15
  call void @abort() #9
  unreachable

if.end21:                                         ; preds = %if.end15
  %call23 = call i32 @memcmp(ptr noundef nonnull %exp, ptr noundef nonnull @data, i32 noundef %n.0245) #8
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @abort() #9
  unreachable

if.end26:                                         ; preds = %if.end21
  call void @llvm.lifetime.end.p0(ptr nonnull %exp) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %dst) #7
  %inc = add nuw nsw i32 %n.0245, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.body31, label %for.body9, !llvm.loop !29

for.cond.cleanup30:                               ; preds = %if.end60
  store i8 1, ptr @a8, align 1, !tbaa !10
  store i16 257, ptr @a16, align 2, !tbaa !11
  store i32 16843009, ptr @a32, align 4, !tbaa !6
  store i64 72340172838076673, ptr @a64, align 8, !tbaa !13
  store i8 2, ptr @b8, align 1, !tbaa !10
  store i16 514, ptr @b16, align 2, !tbaa !11
  store i32 33686018, ptr @b32, align 4, !tbaa !6
  store i64 144680345676153346, ptr @b64, align 8, !tbaa !13
  %call65 = call zeroext i1 @__atomic_compare_exchange_1(ptr noundef nonnull @a8, ptr noundef nonnull @b8, i8 noundef zeroext %conv64, i32 noundef %0, i32 noundef %2) #8
  br i1 %call65, label %if.then66, label %if.end67

for.body31:                                       ; preds = %if.end26, %if.end60
  %n27.0246 = phi i32 [ %inc62, %if.end60 ], [ 1, %if.end26 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %dst32) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 16 dereferenceable(32) %dst32, i8 0, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %exp33) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 16 dereferenceable(32) %exp33, i8 0, i32 32, i1 false)
  %call37 = call i32 @__atomic_compare_exchange(i32 noundef %n27.0246, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr36, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @data, i32 1), i32 noundef %0, i32 noundef %2) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body31
  call void @abort() #9
  unreachable

if.end40:                                         ; preds = %for.body31
  %call43 = call i32 @memcmp(ptr noundef nonnull %add.ptr, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @data, i32 1), i32 noundef %n27.0246) #8
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end40
  call void @abort() #9
  unreachable

if.end46:                                         ; preds = %if.end40
  %call51 = call i32 @__atomic_compare_exchange(i32 noundef %n27.0246, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr36, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @data, i32 1), i32 noundef %0, i32 noundef %2) #8
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end46
  call void @abort() #9
  unreachable

if.end54:                                         ; preds = %if.end46
  %call57 = call i32 @memcmp(ptr noundef nonnull %add.ptr36, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @data, i32 1), i32 noundef %n27.0246) #8
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end54
  call void @abort() #9
  unreachable

if.end60:                                         ; preds = %if.end54
  call void @llvm.lifetime.end.p0(ptr nonnull %exp33) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %dst32) #7
  %inc62 = add nuw nsw i32 %n27.0246, 1
  %exitcond249.not = icmp eq i32 %inc62, 32
  br i1 %exitcond249.not, label %for.cond.cleanup30, label %for.body31, !llvm.loop !30

if.then66:                                        ; preds = %for.cond.cleanup30
  call void @abort() #9
  unreachable

if.end67:                                         ; preds = %for.cond.cleanup30
  %3 = load i8, ptr @a8, align 1, !tbaa !10
  %cmp69 = icmp ne i8 %3, 1
  %4 = load i8, ptr @b8, align 1
  %cmp72 = icmp ne i8 %4, 1
  %or.cond = select i1 %cmp69, i1 true, i1 %cmp72
  br i1 %or.cond, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end67
  call void @abort() #9
  unreachable

if.end75:                                         ; preds = %if.end67
  %call79 = call zeroext i1 @__atomic_compare_exchange_1(ptr noundef nonnull @a8, ptr noundef nonnull @b8, i8 noundef zeroext %conv64, i32 noundef %0, i32 noundef %2) #8
  br i1 %call79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end75
  call void @abort() #9
  unreachable

if.end81:                                         ; preds = %if.end75
  %5 = load i8, ptr @a8, align 1, !tbaa !10
  %conv82 = zext i8 %5 to i32
  %cmp87 = icmp ne i32 %conv86, %conv82
  %6 = load i8, ptr @b8, align 1
  %cmp91 = icmp ne i8 %6, 1
  %or.cond190 = select i1 %cmp87, i1 true, i1 %cmp91
  br i1 %or.cond190, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end81
  call void @abort() #9
  unreachable

if.end94:                                         ; preds = %if.end81
  %call98 = call zeroext i1 @__atomic_compare_exchange_2(ptr noundef nonnull @a16, ptr noundef nonnull @b16, i16 noundef zeroext %conv97, i32 noundef %0, i32 noundef %2) #8
  br i1 %call98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end94
  call void @abort() #9
  unreachable

if.end100:                                        ; preds = %if.end94
  %7 = load i16, ptr @a16, align 2, !tbaa !11
  %cmp102 = icmp ne i16 %7, 257
  %8 = load i16, ptr @b16, align 2
  %cmp106 = icmp ne i16 %8, 257
  %or.cond191 = select i1 %cmp102, i1 true, i1 %cmp106
  br i1 %or.cond191, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end100
  call void @abort() #9
  unreachable

if.end109:                                        ; preds = %if.end100
  %call113 = call zeroext i1 @__atomic_compare_exchange_2(ptr noundef nonnull @a16, ptr noundef nonnull @b16, i16 noundef zeroext %conv97, i32 noundef %0, i32 noundef %2) #8
  br i1 %call113, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.end109
  call void @abort() #9
  unreachable

if.end115:                                        ; preds = %if.end109
  %9 = load i16, ptr @a16, align 2, !tbaa !11
  %conv116 = zext i16 %9 to i32
  %cmp121 = icmp ne i32 %conv120, %conv116
  %10 = load i16, ptr @b16, align 2
  %cmp125 = icmp ne i16 %10, 257
  %or.cond192 = select i1 %cmp121, i1 true, i1 %cmp125
  br i1 %or.cond192, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end115
  call void @abort() #9
  unreachable

if.end128:                                        ; preds = %if.end115
  %call132 = call zeroext i1 @__atomic_compare_exchange_4(ptr noundef nonnull @a32, ptr noundef nonnull @b32, i32 noundef %1, i32 noundef %0, i32 noundef %2) #8
  br i1 %call132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end128
  call void @abort() #9
  unreachable

if.end134:                                        ; preds = %if.end128
  %11 = load i32, ptr @a32, align 4, !tbaa !6
  %cmp135 = icmp ne i32 %11, 16843009
  %12 = load i32, ptr @b32, align 4
  %cmp138 = icmp ne i32 %12, 16843009
  %or.cond193 = select i1 %cmp135, i1 true, i1 %cmp138
  br i1 %or.cond193, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end134
  call void @abort() #9
  unreachable

if.end141:                                        ; preds = %if.end134
  %call145 = call zeroext i1 @__atomic_compare_exchange_4(ptr noundef nonnull @a32, ptr noundef nonnull @b32, i32 noundef %1, i32 noundef %0, i32 noundef %2) #8
  br i1 %call145, label %if.end147, label %if.then146

if.then146:                                       ; preds = %if.end141
  call void @abort() #9
  unreachable

if.end147:                                        ; preds = %if.end141
  %13 = load i32, ptr @a32, align 4, !tbaa !6
  %cmp151 = icmp ne i32 %13, %1
  %14 = load i32, ptr @b32, align 4
  %cmp154 = icmp ne i32 %14, 16843009
  %or.cond194 = select i1 %cmp151, i1 true, i1 %cmp154
  br i1 %or.cond194, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.end147
  call void @abort() #9
  unreachable

if.end157:                                        ; preds = %if.end147
  %call160 = call zeroext i1 @__atomic_compare_exchange_8(ptr noundef nonnull @a64, ptr noundef nonnull @b64, i64 noundef %add, i32 noundef %0, i32 noundef %2) #8
  br i1 %call160, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end157
  call void @abort() #9
  unreachable

if.end162:                                        ; preds = %if.end157
  %15 = load i64, ptr @a64, align 8, !tbaa !13
  %cmp163 = icmp ne i64 %15, 72340172838076673
  %16 = load i64, ptr @b64, align 8
  %cmp166 = icmp ne i64 %16, 72340172838076673
  %or.cond195 = select i1 %cmp163, i1 true, i1 %cmp166
  br i1 %or.cond195, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end162
  call void @abort() #9
  unreachable

if.end169:                                        ; preds = %if.end162
  %call172 = call zeroext i1 @__atomic_compare_exchange_8(ptr noundef nonnull @a64, ptr noundef nonnull @b64, i64 noundef %add, i32 noundef %0, i32 noundef %2) #8
  br i1 %call172, label %if.end174, label %if.then173

if.then173:                                       ; preds = %if.end169
  call void @abort() #9
  unreachable

if.end174:                                        ; preds = %if.end169
  %17 = load i64, ptr @a64, align 8, !tbaa !13
  %cmp177 = icmp ne i64 %17, %add
  %18 = load i64, ptr @b64, align 8
  %cmp180 = icmp ne i64 %18, 72340172838076673
  %or.cond196 = select i1 %cmp177, i1 true, i1 %cmp180
  br i1 %or.cond196, label %if.then182, label %for.cond1

if.then182:                                       ; preds = %if.end174
  call void @abort() #9
  unreachable
}

declare dso_local i32 @__atomic_compare_exchange(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i1 @__atomic_compare_exchange_1(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i1 @__atomic_compare_exchange_2(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i1 @__atomic_compare_exchange_4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i1 @__atomic_compare_exchange_8(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @test_fetch_op() local_unnamed_addr #1 {
entry:
  br label %for.body

for.cond:                                         ; preds = %if.end473
  %inc = add nuw nsw i32 %m.0612, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !31

for.cond.cleanup:                                 ; preds = %for.cond
  ret void

for.body:                                         ; preds = %entry, %for.cond
  %m.0612 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds nuw i32, ptr @test_fetch_op.atomic_fetch_models, i32 %m.0612
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  %conv = zext nneg i32 %m.0612 to i64
  %add = add nuw nsw i64 %conv, 4774735094265366601
  %conv.i = trunc i64 %add to i8
  store i8 %conv.i, ptr @a8, align 1, !tbaa !10
  %conv1.i = trunc i64 %add to i16
  store i16 %conv1.i, ptr @a16, align 2, !tbaa !11
  %conv2.i = trunc i64 %add to i32
  store i32 %conv2.i, ptr @a32, align 4, !tbaa !6
  store i64 %add, ptr @a64, align 8, !tbaa !13
  store i8 0, ptr @b8, align 1, !tbaa !10
  store i16 0, ptr @b16, align 2, !tbaa !11
  store i32 0, ptr @b32, align 4, !tbaa !6
  store i64 0, ptr @b64, align 8, !tbaa !13
  %call = tail call zeroext i8 @__atomic_fetch_add_1(ptr noundef nonnull @a8, i8 noundef zeroext 1, i32 noundef %0) #8
  store i8 %call, ptr @b8, align 1, !tbaa !10
  %conv1 = zext i8 %call to i32
  %conv5 = and i32 %conv2.i, 95
  %cmp6.not = icmp eq i32 %conv5, %conv1
  br i1 %cmp6.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %1 = load i8, ptr @a8, align 1, !tbaa !10
  %conv8 = zext i8 %1 to i32
  %add11 = add nuw nsw i64 %conv, 4847075267103443274
  %conv12 = trunc i64 %add11 to i32
  %conv13 = and i32 %conv12, 95
  %cmp14.not = icmp eq i32 %conv13, %conv8
  br i1 %cmp14.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  tail call void @abort() #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call16 = tail call zeroext i16 @__atomic_fetch_add_2(ptr noundef nonnull @a16, i16 noundef zeroext 257, i32 noundef %0) #8
  store i16 %call16, ptr @b16, align 2, !tbaa !11
  %conv17 = zext i16 %call16 to i32
  %conv21 = and i32 %conv2.i, 18527
  %cmp22.not = icmp eq i32 %conv21, %conv17
  br i1 %cmp22.not, label %lor.lhs.false24, label %if.then33

lor.lhs.false24:                                  ; preds = %if.end
  %2 = load i16, ptr @a16, align 2, !tbaa !11
  %conv25 = zext i16 %2 to i32
  %conv30 = and i32 %conv12, 18783
  %cmp31.not = icmp eq i32 %conv30, %conv25
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false24, %if.end
  tail call void @abort() #9
  unreachable

if.end34:                                         ; preds = %lor.lhs.false24
  %call35 = tail call i32 @__atomic_fetch_add_4(ptr noundef nonnull @a32, i32 noundef 16843009, i32 noundef %0) #8
  store i32 %call35, ptr @b32, align 4, !tbaa !6
  %cmp39.not = icmp eq i32 %call35, %conv2.i
  %3 = load i32, ptr @a32, align 4
  %cmp46.not = icmp eq i32 %3, %conv12
  %or.cond = select i1 %cmp39.not, i1 %cmp46.not, i1 false
  br i1 %or.cond, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end34
  tail call void @abort() #9
  unreachable

if.end49:                                         ; preds = %if.end34
  %call50 = tail call i64 @__atomic_fetch_add_8(ptr noundef nonnull @a64, i64 noundef 72340172838076673, i32 noundef %0) #8
  store i64 %call50, ptr @b64, align 8, !tbaa !13
  %cmp53.not = icmp eq i64 %call50, %add
  %4 = load i64, ptr @a64, align 8
  %cmp59.not = icmp eq i64 %4, %add11
  %or.cond581 = select i1 %cmp53.not, i1 %cmp59.not, i1 false
  br i1 %or.cond581, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end49
  tail call void @abort() #9
  unreachable

if.end62:                                         ; preds = %if.end49
  store i8 %conv.i, ptr @a8, align 1, !tbaa !10
  store i16 %conv1.i, ptr @a16, align 2, !tbaa !11
  store i32 %conv2.i, ptr @a32, align 4, !tbaa !6
  store i64 %add, ptr @a64, align 8, !tbaa !13
  store i8 0, ptr @b8, align 1, !tbaa !10
  store i16 0, ptr @b16, align 2, !tbaa !11
  store i32 0, ptr @b32, align 4, !tbaa !6
  store i64 0, ptr @b64, align 8, !tbaa !13
  %call65 = tail call zeroext i8 @__atomic_fetch_sub_1(ptr noundef nonnull @a8, i8 noundef zeroext 1, i32 noundef %0) #8
  store i8 %call65, ptr @b8, align 1, !tbaa !10
  %cmp71.not = icmp eq i8 %call, %call65
  br i1 %cmp71.not, label %lor.lhs.false73, label %if.then81

lor.lhs.false73:                                  ; preds = %if.end62
  %5 = load i8, ptr @a8, align 1, !tbaa !10
  %conv74 = zext i8 %5 to i32
  %sub = or disjoint i64 %conv, 4702394921427289928
  %conv77 = trunc i64 %sub to i32
  %conv78 = and i32 %conv77, 79
  %cmp79.not = icmp eq i32 %conv78, %conv74
  br i1 %cmp79.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false73, %if.end62
  tail call void @abort() #9
  unreachable

if.end82:                                         ; preds = %lor.lhs.false73
  %call83 = tail call zeroext i16 @__atomic_fetch_sub_2(ptr noundef nonnull @a16, i16 noundef zeroext 257, i32 noundef %0) #8
  store i16 %call83, ptr @b16, align 2, !tbaa !11
  %cmp89.not = icmp eq i16 %call16, %call83
  br i1 %cmp89.not, label %lor.lhs.false91, label %if.then100

lor.lhs.false91:                                  ; preds = %if.end82
  %6 = load i16, ptr @a16, align 2, !tbaa !11
  %conv92 = zext i16 %6 to i32
  %conv97 = and i32 %conv77, 18255
  %cmp98.not = icmp eq i32 %conv97, %conv92
  br i1 %cmp98.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %lor.lhs.false91, %if.end82
  tail call void @abort() #9
  unreachable

if.end101:                                        ; preds = %lor.lhs.false91
  %call102 = tail call i32 @__atomic_fetch_sub_4(ptr noundef nonnull @a32, i32 noundef 16843009, i32 noundef %0) #8
  store i32 %call102, ptr @b32, align 4, !tbaa !6
  %cmp106.not = icmp eq i32 %call102, %conv2.i
  %7 = load i32, ptr @a32, align 4
  %cmp113.not = icmp eq i32 %7, %conv77
  %or.cond582 = select i1 %cmp106.not, i1 %cmp113.not, i1 false
  br i1 %or.cond582, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end101
  tail call void @abort() #9
  unreachable

if.end116:                                        ; preds = %if.end101
  %call117 = tail call i64 @__atomic_fetch_sub_8(ptr noundef nonnull @a64, i64 noundef 72340172838076673, i32 noundef %0) #8
  store i64 %call117, ptr @b64, align 8, !tbaa !13
  %cmp120.not = icmp eq i64 %call117, %add
  %8 = load i64, ptr @a64, align 8
  %cmp126.not = icmp eq i64 %8, %sub
  %or.cond583 = select i1 %cmp120.not, i1 %cmp126.not, i1 false
  br i1 %or.cond583, label %if.end129, label %if.then128

if.then128:                                       ; preds = %if.end116
  tail call void @abort() #9
  unreachable

if.end129:                                        ; preds = %if.end116
  store i8 %conv.i, ptr @a8, align 1, !tbaa !10
  store i16 %conv1.i, ptr @a16, align 2, !tbaa !11
  store i32 %conv2.i, ptr @a32, align 4, !tbaa !6
  store i64 %add, ptr @a64, align 8, !tbaa !13
  store i8 0, ptr @b8, align 1, !tbaa !10
  store i16 0, ptr @b16, align 2, !tbaa !11
  store i32 0, ptr @b32, align 4, !tbaa !6
  store i64 0, ptr @b64, align 8, !tbaa !13
  %call135 = tail call zeroext i8 @__atomic_fetch_and_1(ptr noundef nonnull @a8, i8 noundef zeroext %conv.i, i32 noundef %0) #8
  store i8 %call135, ptr @b8, align 1, !tbaa !10
  %cmp141.not = icmp eq i8 %call, %call135
  %9 = load i8, ptr @a8, align 1
  %cmp149.not = icmp eq i8 %call, %9
  %or.cond584 = select i1 %cmp141.not, i1 %cmp149.not, i1 false
  br i1 %or.cond584, label %if.end152, label %if.then151

if.then151:                                       ; preds = %if.end129
  tail call void @abort() #9
  unreachable

if.end152:                                        ; preds = %if.end129
  %call156 = tail call zeroext i16 @__atomic_fetch_and_2(ptr noundef nonnull @a16, i16 noundef zeroext %conv1.i, i32 noundef %0) #8
  store i16 %call156, ptr @b16, align 2, !tbaa !11
  %cmp162.not = icmp eq i16 %call16, %call156
  %10 = load i16, ptr @a16, align 2
  %cmp170.not = icmp eq i16 %call16, %10
  %or.cond585 = select i1 %cmp162.not, i1 %cmp170.not, i1 false
  br i1 %or.cond585, label %if.end173, label %if.then172

if.then172:                                       ; preds = %if.end152
  tail call void @abort() #9
  unreachable

if.end173:                                        ; preds = %if.end152
  %call177 = tail call i32 @__atomic_fetch_and_4(ptr noundef nonnull @a32, i32 noundef %conv2.i, i32 noundef %0) #8
  store i32 %call177, ptr @b32, align 4, !tbaa !6
  %cmp181.not = icmp eq i32 %call177, %conv2.i
  %11 = load i32, ptr @a32, align 4
  %cmp187.not = icmp eq i32 %11, %conv2.i
  %or.cond586 = select i1 %cmp181.not, i1 %cmp187.not, i1 false
  br i1 %or.cond586, label %if.end190, label %if.then189

if.then189:                                       ; preds = %if.end173
  tail call void @abort() #9
  unreachable

if.end190:                                        ; preds = %if.end173
  %call193 = tail call i64 @__atomic_fetch_and_8(ptr noundef nonnull @a64, i64 noundef %add, i32 noundef %0) #8
  store i64 %call193, ptr @b64, align 8, !tbaa !13
  %cmp196.not = icmp eq i64 %call193, %add
  %12 = load i64, ptr @a64, align 8
  %cmp201.not = icmp eq i64 %12, %add
  %or.cond587 = select i1 %cmp196.not, i1 %cmp201.not, i1 false
  br i1 %or.cond587, label %if.end204, label %if.then203

if.then203:                                       ; preds = %if.end190
  tail call void @abort() #9
  unreachable

if.end204:                                        ; preds = %if.end190
  store i8 %conv.i, ptr @a8, align 1, !tbaa !10
  store i16 %conv1.i, ptr @a16, align 2, !tbaa !11
  store i32 %conv2.i, ptr @a32, align 4, !tbaa !6
  store i64 %add, ptr @a64, align 8, !tbaa !13
  store i8 0, ptr @b8, align 1, !tbaa !10
  store i16 0, ptr @b16, align 2, !tbaa !11
  store i32 0, ptr @b32, align 4, !tbaa !6
  store i64 0, ptr @b64, align 8, !tbaa !13
  %call207 = tail call zeroext i8 @__atomic_fetch_or_1(ptr noundef nonnull @a8, i8 noundef zeroext 1, i32 noundef %0) #8
  store i8 %call207, ptr @b8, align 1, !tbaa !10
  %cmp213.not = icmp eq i8 %call, %call207
  br i1 %cmp213.not, label %lor.lhs.false215, label %if.then223

lor.lhs.false215:                                 ; preds = %if.end204
  %13 = load i8, ptr @a8, align 1, !tbaa !10
  %conv216 = zext i8 %13 to i32
  %or = or i64 %add, 72340172838076673
  %conv219 = trunc i64 %or to i32
  %conv220 = and i32 %conv219, 95
  %cmp221.not = icmp eq i32 %conv220, %conv216
  br i1 %cmp221.not, label %if.end224, label %if.then223

if.then223:                                       ; preds = %lor.lhs.false215, %if.end204
  tail call void @abort() #9
  unreachable

if.end224:                                        ; preds = %lor.lhs.false215
  %call225 = tail call zeroext i16 @__atomic_fetch_or_2(ptr noundef nonnull @a16, i16 noundef zeroext 257, i32 noundef %0) #8
  store i16 %call225, ptr @b16, align 2, !tbaa !11
  %cmp231.not = icmp eq i16 %call16, %call225
  br i1 %cmp231.not, label %lor.lhs.false233, label %if.then242

lor.lhs.false233:                                 ; preds = %if.end224
  %14 = load i16, ptr @a16, align 2, !tbaa !11
  %conv234 = zext i16 %14 to i32
  %conv239 = and i32 %conv219, 18783
  %cmp240.not = icmp eq i32 %conv239, %conv234
  br i1 %cmp240.not, label %if.end243, label %if.then242

if.then242:                                       ; preds = %lor.lhs.false233, %if.end224
  tail call void @abort() #9
  unreachable

if.end243:                                        ; preds = %lor.lhs.false233
  %call244 = tail call i32 @__atomic_fetch_or_4(ptr noundef nonnull @a32, i32 noundef 16843009, i32 noundef %0) #8
  store i32 %call244, ptr @b32, align 4, !tbaa !6
  %cmp248.not = icmp eq i32 %call244, %conv2.i
  %15 = load i32, ptr @a32, align 4
  %cmp255.not = icmp eq i32 %15, %conv219
  %or.cond588 = select i1 %cmp248.not, i1 %cmp255.not, i1 false
  br i1 %or.cond588, label %if.end258, label %if.then257

if.then257:                                       ; preds = %if.end243
  tail call void @abort() #9
  unreachable

if.end258:                                        ; preds = %if.end243
  %call259 = tail call i64 @__atomic_fetch_or_8(ptr noundef nonnull @a64, i64 noundef 72340172838076673, i32 noundef %0) #8
  store i64 %call259, ptr @b64, align 8, !tbaa !13
  %cmp262.not = icmp eq i64 %call259, %add
  %16 = load i64, ptr @a64, align 8
  %cmp268.not = icmp eq i64 %16, %or
  %or.cond589 = select i1 %cmp262.not, i1 %cmp268.not, i1 false
  br i1 %or.cond589, label %if.end271, label %if.then270

if.then270:                                       ; preds = %if.end258
  tail call void @abort() #9
  unreachable

if.end271:                                        ; preds = %if.end258
  store i8 %conv.i, ptr @a8, align 1, !tbaa !10
  store i16 %conv1.i, ptr @a16, align 2, !tbaa !11
  store i32 %conv2.i, ptr @a32, align 4, !tbaa !6
  store i64 %add, ptr @a64, align 8, !tbaa !13
  store i8 0, ptr @b8, align 1, !tbaa !10
  store i16 0, ptr @b16, align 2, !tbaa !11
  store i32 0, ptr @b32, align 4, !tbaa !6
  store i64 0, ptr @b64, align 8, !tbaa !13
  %call274 = tail call zeroext i8 @__atomic_fetch_xor_1(ptr noundef nonnull @a8, i8 noundef zeroext 1, i32 noundef %0) #8
  store i8 %call274, ptr @b8, align 1, !tbaa !10
  %cmp280.not = icmp eq i8 %call, %call274
  br i1 %cmp280.not, label %lor.lhs.false282, label %if.then290

lor.lhs.false282:                                 ; preds = %if.end271
  %17 = load i8, ptr @a8, align 1, !tbaa !10
  %conv283 = zext i8 %17 to i32
  %xor = xor i64 %add, 72340172838076673
  %conv286 = trunc i64 %xor to i32
  %conv287 = and i32 %conv286, 95
  %cmp288.not = icmp eq i32 %conv287, %conv283
  br i1 %cmp288.not, label %if.end291, label %if.then290

if.then290:                                       ; preds = %lor.lhs.false282, %if.end271
  tail call void @abort() #9
  unreachable

if.end291:                                        ; preds = %lor.lhs.false282
  %call292 = tail call zeroext i16 @__atomic_fetch_xor_2(ptr noundef nonnull @a16, i16 noundef zeroext 257, i32 noundef %0) #8
  store i16 %call292, ptr @b16, align 2, !tbaa !11
  %cmp298.not = icmp eq i16 %call16, %call292
  br i1 %cmp298.not, label %lor.lhs.false300, label %if.then309

lor.lhs.false300:                                 ; preds = %if.end291
  %18 = load i16, ptr @a16, align 2, !tbaa !11
  %conv301 = zext i16 %18 to i32
  %conv306 = and i32 %conv286, 18783
  %cmp307.not = icmp eq i32 %conv306, %conv301
  br i1 %cmp307.not, label %if.end310, label %if.then309

if.then309:                                       ; preds = %lor.lhs.false300, %if.end291
  tail call void @abort() #9
  unreachable

if.end310:                                        ; preds = %lor.lhs.false300
  %call311 = tail call i32 @__atomic_fetch_xor_4(ptr noundef nonnull @a32, i32 noundef 16843009, i32 noundef %0) #8
  store i32 %call311, ptr @b32, align 4, !tbaa !6
  %cmp315.not = icmp eq i32 %call311, %conv2.i
  %19 = load i32, ptr @a32, align 4
  %cmp322.not = icmp eq i32 %19, %conv286
  %or.cond590 = select i1 %cmp315.not, i1 %cmp322.not, i1 false
  br i1 %or.cond590, label %if.end325, label %if.then324

if.then324:                                       ; preds = %if.end310
  tail call void @abort() #9
  unreachable

if.end325:                                        ; preds = %if.end310
  %call326 = tail call i64 @__atomic_fetch_xor_8(ptr noundef nonnull @a64, i64 noundef 72340172838076673, i32 noundef %0) #8
  store i64 %call326, ptr @b64, align 8, !tbaa !13
  %cmp329.not = icmp eq i64 %call326, %add
  %20 = load i64, ptr @a64, align 8
  %cmp335.not = icmp eq i64 %20, %xor
  %or.cond591 = select i1 %cmp329.not, i1 %cmp335.not, i1 false
  br i1 %or.cond591, label %if.end338, label %if.then337

if.then337:                                       ; preds = %if.end325
  tail call void @abort() #9
  unreachable

if.end338:                                        ; preds = %if.end325
  store i8 %conv.i, ptr @a8, align 1, !tbaa !10
  store i16 %conv1.i, ptr @a16, align 2, !tbaa !11
  store i32 %conv2.i, ptr @a32, align 4, !tbaa !6
  store i64 %add, ptr @a64, align 8, !tbaa !13
  store i8 0, ptr @b8, align 1, !tbaa !10
  store i16 0, ptr @b16, align 2, !tbaa !11
  store i32 0, ptr @b32, align 4, !tbaa !6
  store i64 0, ptr @b64, align 8, !tbaa !13
  %call341 = tail call zeroext i8 @__atomic_fetch_nand_1(ptr noundef nonnull @a8, i8 noundef zeroext 1, i32 noundef %0) #8
  store i8 %call341, ptr @b8, align 1, !tbaa !10
  %cmp347.not = icmp eq i8 %call, %call341
  br i1 %cmp347.not, label %lor.lhs.false349, label %if.then357

lor.lhs.false349:                                 ; preds = %if.end338
  %21 = load i8, ptr @a8, align 1, !tbaa !10
  %22 = and i64 %add, 1
  %not = xor i64 %22, -281479271743489
  %23 = trunc i64 %not to i8
  %cmp355.not = icmp eq i8 %21, %23
  br i1 %cmp355.not, label %if.end358, label %if.then357

if.then357:                                       ; preds = %lor.lhs.false349, %if.end338
  tail call void @abort() #9
  unreachable

if.end358:                                        ; preds = %lor.lhs.false349
  %call359 = tail call zeroext i16 @__atomic_fetch_nand_2(ptr noundef nonnull @a16, i16 noundef zeroext 257, i32 noundef %0) #8
  store i16 %call359, ptr @b16, align 2, !tbaa !11
  %cmp365.not = icmp eq i16 %call16, %call359
  br i1 %cmp365.not, label %lor.lhs.false367, label %if.then377

lor.lhs.false367:                                 ; preds = %if.end358
  %24 = load i16, ptr @a16, align 2, !tbaa !11
  %25 = trunc i64 %not to i16
  %cmp375.not = icmp eq i16 %24, %25
  br i1 %cmp375.not, label %if.end378, label %if.then377

if.then377:                                       ; preds = %lor.lhs.false367, %if.end358
  tail call void @abort() #9
  unreachable

if.end378:                                        ; preds = %lor.lhs.false367
  %call379 = tail call i32 @__atomic_fetch_nand_4(ptr noundef nonnull @a32, i32 noundef 16843009, i32 noundef %0) #8
  store i32 %call379, ptr @b32, align 4, !tbaa !6
  %cmp383.not = icmp eq i32 %call379, %conv2.i
  %26 = load i32, ptr @a32, align 4
  %conv390 = trunc i64 %not to i32
  %cmp391.not = icmp eq i32 %26, %conv390
  %or.cond592 = select i1 %cmp383.not, i1 %cmp391.not, i1 false
  br i1 %or.cond592, label %if.end394, label %if.then393

if.then393:                                       ; preds = %if.end378
  tail call void @abort() #9
  unreachable

if.end394:                                        ; preds = %if.end378
  %call395 = tail call i64 @__atomic_fetch_nand_8(ptr noundef nonnull @a64, i64 noundef 72340172838076673, i32 noundef %0) #8
  store i64 %call395, ptr @b64, align 8, !tbaa !13
  %cmp398.not = icmp eq i64 %call395, %add
  %27 = load i64, ptr @a64, align 8
  %cmp405.not = icmp eq i64 %27, %not
  %or.cond593 = select i1 %cmp398.not, i1 %cmp405.not, i1 false
  br i1 %or.cond593, label %if.end408, label %if.then407

if.then407:                                       ; preds = %if.end394
  tail call void @abort() #9
  unreachable

if.end408:                                        ; preds = %if.end394
  store i8 %conv.i, ptr @a8, align 1, !tbaa !10
  store i16 %conv1.i, ptr @a16, align 2, !tbaa !11
  store i32 %conv2.i, ptr @a32, align 4, !tbaa !6
  store i64 %add, ptr @a64, align 8, !tbaa !13
  %call411 = tail call zeroext i8 @__atomic_fetch_add_1(ptr noundef nonnull @a8, i8 noundef zeroext 73, i32 noundef %0) #8
  %28 = load i8, ptr @a8, align 1, !tbaa !10
  %conv412 = zext i8 %28 to i32
  %add414 = add nuw nsw i64 %conv, -8897273885178818414
  %conv415 = trunc i64 %add414 to i32
  %conv416 = and i32 %conv415, 159
  %cmp417.not = icmp eq i32 %conv416, %conv412
  br i1 %cmp417.not, label %if.end420, label %if.then419

if.then419:                                       ; preds = %if.end408
  tail call void @abort() #9
  unreachable

if.end420:                                        ; preds = %if.end408
  %call421 = tail call zeroext i8 @__atomic_fetch_sub_1(ptr noundef nonnull @a8, i8 noundef zeroext 73, i32 noundef %0) #8
  %29 = load i8, ptr @a8, align 1, !tbaa !10
  %cmp427.not = icmp eq i8 %call, %29
  br i1 %cmp427.not, label %if.end430, label %if.then429

if.then429:                                       ; preds = %if.end420
  tail call void @abort() #9
  unreachable

if.end430:                                        ; preds = %if.end420
  %call431 = tail call zeroext i16 @__atomic_fetch_add_2(ptr noundef nonnull @a16, i16 noundef zeroext 18505, i32 noundef %0) #8
  %30 = load i16, ptr @a16, align 2, !tbaa !11
  %conv432 = zext i16 %30 to i32
  %conv436 = and i32 %conv415, 37023
  %cmp437.not = icmp eq i32 %conv436, %conv432
  br i1 %cmp437.not, label %if.end440, label %if.then439

if.then439:                                       ; preds = %if.end430
  tail call void @abort() #9
  unreachable

if.end440:                                        ; preds = %if.end430
  %call441 = tail call zeroext i16 @__atomic_fetch_sub_2(ptr noundef nonnull @a16, i16 noundef zeroext 18505, i32 noundef %0) #8
  %31 = load i16, ptr @a16, align 2, !tbaa !11
  %cmp447.not = icmp eq i16 %call16, %31
  br i1 %cmp447.not, label %if.end450, label %if.then449

if.then449:                                       ; preds = %if.end440
  tail call void @abort() #9
  unreachable

if.end450:                                        ; preds = %if.end440
  %call451 = tail call i32 @__atomic_fetch_add_4(ptr noundef nonnull @a32, i32 noundef 1179076681, i32 noundef %0) #8
  %32 = load i32, ptr @a32, align 4, !tbaa !6
  %cmp455.not = icmp eq i32 %32, %conv415
  br i1 %cmp455.not, label %if.end458, label %if.then457

if.then457:                                       ; preds = %if.end450
  tail call void @abort() #9
  unreachable

if.end458:                                        ; preds = %if.end450
  %call459 = tail call i32 @__atomic_fetch_sub_4(ptr noundef nonnull @a32, i32 noundef 1179076681, i32 noundef %0) #8
  %33 = load i32, ptr @a32, align 4, !tbaa !6
  %cmp463.not = icmp eq i32 %33, %conv2.i
  br i1 %cmp463.not, label %if.end466, label %if.then465

if.then465:                                       ; preds = %if.end458
  tail call void @abort() #9
  unreachable

if.end466:                                        ; preds = %if.end458
  %call467 = tail call i64 @__atomic_fetch_add_8(ptr noundef nonnull @a64, i64 noundef 4774735094265366601, i32 noundef %0) #8
  %34 = load i64, ptr @a64, align 8, !tbaa !13
  %cmp470.not = icmp eq i64 %34, %add414
  br i1 %cmp470.not, label %if.end473, label %if.then472

if.then472:                                       ; preds = %if.end466
  tail call void @abort() #9
  unreachable

if.end473:                                        ; preds = %if.end466
  %call474 = tail call i64 @__atomic_fetch_sub_8(ptr noundef nonnull @a64, i64 noundef 4774735094265366601, i32 noundef %0) #8
  %35 = load i64, ptr @a64, align 8, !tbaa !13
  %cmp477.not = icmp eq i64 %35, %add
  br i1 %cmp477.not, label %for.cond, label %if.then479

if.then479:                                       ; preds = %if.end473
  tail call void @abort() #9
  unreachable
}

declare dso_local zeroext i8 @__atomic_fetch_add_1(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i16 @__atomic_fetch_add_2(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @__atomic_fetch_add_4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i64 @__atomic_fetch_add_8(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i8 @__atomic_fetch_sub_1(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i16 @__atomic_fetch_sub_2(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @__atomic_fetch_sub_4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i64 @__atomic_fetch_sub_8(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i8 @__atomic_fetch_and_1(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i16 @__atomic_fetch_and_2(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @__atomic_fetch_and_4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i64 @__atomic_fetch_and_8(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i8 @__atomic_fetch_or_1(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i16 @__atomic_fetch_or_2(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @__atomic_fetch_or_4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i64 @__atomic_fetch_or_8(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i8 @__atomic_fetch_xor_1(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i16 @__atomic_fetch_xor_2(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @__atomic_fetch_xor_4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i64 @__atomic_fetch_xor_8(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i8 @__atomic_fetch_nand_1(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local zeroext i16 @__atomic_fetch_nand_2(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @__atomic_fetch_nand_4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i64 @__atomic_fetch_nand_8(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local void @test_is_lock_free() local_unnamed_addr #1 {
entry:
  %call = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 0, ptr noundef null) #8
  br i1 %call, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  tail call void @llvm.trap()
  unreachable

cond.end:                                         ; preds = %entry
  %call1 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 0, ptr noundef nonnull inttoptr (i32 8 to ptr)) #8
  br i1 %call1, label %cond.false4, label %cond.end5

cond.false4:                                      ; preds = %cond.end
  tail call void @llvm.trap()
  unreachable

cond.end5:                                        ; preds = %cond.end
  %call6 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 2, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  br i1 %call6, label %cond.false9, label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  tail call void @llvm.trap()
  unreachable

cond.end10:                                       ; preds = %cond.end5
  %call11 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 4, ptr noundef nonnull inttoptr (i32 3 to ptr)) #8
  br i1 %call11, label %cond.false14, label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  tail call void @llvm.trap()
  unreachable

cond.end15:                                       ; preds = %cond.end10
  %call16 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 4, ptr noundef nonnull inttoptr (i32 2 to ptr)) #8
  br i1 %call16, label %cond.false19, label %cond.end20

cond.false19:                                     ; preds = %cond.end15
  tail call void @llvm.trap()
  unreachable

cond.end20:                                       ; preds = %cond.end15
  %call21 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 4, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  br i1 %call21, label %cond.false24, label %cond.end25

cond.false24:                                     ; preds = %cond.end20
  tail call void @llvm.trap()
  unreachable

cond.end25:                                       ; preds = %cond.end20
  %call26 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 8, ptr noundef nonnull inttoptr (i32 7 to ptr)) #8
  br i1 %call26, label %cond.false29, label %cond.end30

cond.false29:                                     ; preds = %cond.end25
  tail call void @llvm.trap()
  unreachable

cond.end30:                                       ; preds = %cond.end25
  %call31 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 8, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br i1 %call31, label %cond.false34, label %cond.end35

cond.false34:                                     ; preds = %cond.end30
  tail call void @llvm.trap()
  unreachable

cond.end35:                                       ; preds = %cond.end30
  %call36 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 8, ptr noundef nonnull inttoptr (i32 2 to ptr)) #8
  br i1 %call36, label %cond.false39, label %cond.end40

cond.false39:                                     ; preds = %cond.end35
  tail call void @llvm.trap()
  unreachable

cond.end40:                                       ; preds = %cond.end35
  %call41 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 8, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  br i1 %call41, label %cond.false44, label %cond.end45

cond.false44:                                     ; preds = %cond.end40
  tail call void @llvm.trap()
  unreachable

cond.end45:                                       ; preds = %cond.end40
  %call46 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef nonnull inttoptr (i32 15 to ptr)) #8
  br i1 %call46, label %cond.false49, label %cond.end50

cond.false49:                                     ; preds = %cond.end45
  tail call void @llvm.trap()
  unreachable

cond.end50:                                       ; preds = %cond.end45
  %call51 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef nonnull inttoptr (i32 8 to ptr)) #8
  br i1 %call51, label %cond.false54, label %cond.end55

cond.false54:                                     ; preds = %cond.end50
  tail call void @llvm.trap()
  unreachable

cond.end55:                                       ; preds = %cond.end50
  %call56 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br i1 %call56, label %cond.false59, label %cond.end60

cond.false59:                                     ; preds = %cond.end55
  tail call void @llvm.trap()
  unreachable

cond.end60:                                       ; preds = %cond.end55
  %call61 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef nonnull inttoptr (i32 2 to ptr)) #8
  br i1 %call61, label %cond.false64, label %cond.end65

cond.false64:                                     ; preds = %cond.end60
  tail call void @llvm.trap()
  unreachable

cond.end65:                                       ; preds = %cond.end60
  %call66 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 16, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  br i1 %call66, label %cond.false69, label %cond.end70

cond.false69:                                     ; preds = %cond.end65
  tail call void @llvm.trap()
  unreachable

cond.end70:                                       ; preds = %cond.end65
  %call71 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 32, ptr noundef null) #8
  br i1 %call71, label %cond.false74, label %cond.end75

cond.false74:                                     ; preds = %cond.end70
  tail call void @llvm.trap()
  unreachable

cond.end75:                                       ; preds = %cond.end70
  %call76 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 32, ptr noundef nonnull inttoptr (i32 32 to ptr)) #8
  br i1 %call76, label %cond.false79, label %cond.end80

cond.false79:                                     ; preds = %cond.end75
  tail call void @llvm.trap()
  unreachable

cond.end80:                                       ; preds = %cond.end75
  %call81 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 32, ptr noundef nonnull inttoptr (i32 31 to ptr)) #8
  br i1 %call81, label %cond.false84, label %cond.end85

cond.false84:                                     ; preds = %cond.end80
  tail call void @llvm.trap()
  unreachable

cond.end85:                                       ; preds = %cond.end80
  %call86 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 3, ptr noundef null) #8
  br i1 %call86, label %cond.false89, label %cond.end90

cond.false89:                                     ; preds = %cond.end85
  tail call void @llvm.trap()
  unreachable

cond.end90:                                       ; preds = %cond.end85
  %call91 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 5, ptr noundef null) #8
  br i1 %call91, label %cond.false94, label %cond.end95

cond.false94:                                     ; preds = %cond.end90
  tail call void @llvm.trap()
  unreachable

cond.end95:                                       ; preds = %cond.end90
  %call96 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 6, ptr noundef null) #8
  br i1 %call96, label %cond.false99, label %cond.end100

cond.false99:                                     ; preds = %cond.end95
  tail call void @llvm.trap()
  unreachable

cond.end100:                                      ; preds = %cond.end95
  %call101 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 7, ptr noundef null) #8
  br i1 %call101, label %cond.false104, label %cond.end105

cond.false104:                                    ; preds = %cond.end100
  tail call void @llvm.trap()
  unreachable

cond.end105:                                      ; preds = %cond.end100
  %call106 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 9, ptr noundef null) #8
  br i1 %call106, label %cond.false109, label %cond.end110

cond.false109:                                    ; preds = %cond.end105
  tail call void @llvm.trap()
  unreachable

cond.end110:                                      ; preds = %cond.end105
  %call111 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 10, ptr noundef null) #8
  br i1 %call111, label %cond.false114, label %cond.end115

cond.false114:                                    ; preds = %cond.end110
  tail call void @llvm.trap()
  unreachable

cond.end115:                                      ; preds = %cond.end110
  %call116 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 11, ptr noundef null) #8
  br i1 %call116, label %cond.false119, label %cond.end120

cond.false119:                                    ; preds = %cond.end115
  tail call void @llvm.trap()
  unreachable

cond.end120:                                      ; preds = %cond.end115
  %call121 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 12, ptr noundef null) #8
  br i1 %call121, label %cond.false124, label %cond.end125

cond.false124:                                    ; preds = %cond.end120
  tail call void @llvm.trap()
  unreachable

cond.end125:                                      ; preds = %cond.end120
  %call126 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 13, ptr noundef null) #8
  br i1 %call126, label %cond.false129, label %cond.end130

cond.false129:                                    ; preds = %cond.end125
  tail call void @llvm.trap()
  unreachable

cond.end130:                                      ; preds = %cond.end125
  %call131 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 14, ptr noundef null) #8
  br i1 %call131, label %cond.false134, label %cond.end135

cond.false134:                                    ; preds = %cond.end130
  tail call void @llvm.trap()
  unreachable

cond.end135:                                      ; preds = %cond.end130
  %call136 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 15, ptr noundef null) #8
  br i1 %call136, label %cond.false139, label %cond.end140

cond.false139:                                    ; preds = %cond.end135
  tail call void @llvm.trap()
  unreachable

cond.end140:                                      ; preds = %cond.end135
  %call141 = tail call zeroext i1 @__atomic_is_lock_free(i32 noundef 17, ptr noundef null) #8
  br i1 %call141, label %cond.false144, label %cond.end145

cond.false144:                                    ; preds = %cond.end140
  tail call void @llvm.trap()
  unreachable

cond.end145:                                      ; preds = %cond.end140
  ret void
}

declare dso_local zeroext i1 @__atomic_is_lock_free(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  tail call void @test_loads() #10
  tail call void @test_stores() #10
  tail call void @test_exchanges() #10
  tail call void @test_compare_exchanges() #10
  tail call void @test_fetch_op() #10
  tail call void @test_is_lock_free() #10
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #5 = { noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }

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
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
