; ModuleID = 'tests/programs/strings.c'
source_filename = "tests/programs/strings.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"  42\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"+2147483647\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"123abc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"99999\00", align 1
@__const.main.nums = private unnamed_addr constant [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 4
@out = internal unnamed_addr global [4096 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"the quick brown fox\09jumps over\0Athe lazy dog  \00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %tmp.i84 = alloca [72 x i8], align 1
  %tmp.i = alloca [72 x i8], align 1
  br label %for.body

for.cond.cleanup:                                 ; preds = %itoa.exit
  %cmp14.i = icmp sgt i32 %add10, 1
  br i1 %cmp14.i, label %for.body.preheader.i, label %reverse.exit

for.body.preheader.i:                             ; preds = %for.cond.cleanup
  %j.013.i = add i32 %k.138.i, %add
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %j.016.i = phi i32 [ %j.0.i, %for.body.i ], [ %j.013.i, %for.body.preheader.i ]
  %i.015.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr inbounds nuw i8, ptr @out, i32 %i.015.i
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !10
  %arrayidx1.i = getelementptr inbounds i8, ptr @out, i32 %j.016.i
  %1 = load i8, ptr %arrayidx1.i, align 1, !tbaa !10
  store i8 %1, ptr %arrayidx.i, align 1, !tbaa !10
  store i8 %0, ptr %arrayidx1.i, align 1, !tbaa !10
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %j.0.i = add nsw i32 %j.016.i, -1
  %cmp.i = icmp slt i32 %inc.i, %j.0.i
  br i1 %cmp.i, label %for.body.i, label %reverse.exit, !llvm.loop !11

reverse.exit:                                     ; preds = %for.body.i, %for.cond.cleanup
  %2 = load i8, ptr @out, align 1, !tbaa !10
  %tobool.not12.i = icmp eq i8 %2, 0
  br i1 %tobool.not12.i, label %while.cond.preheader.i.preheader, label %for.body.i48

for.body.i48:                                     ; preds = %reverse.exit, %for.inc.i
  %3 = phi i8 [ %5, %for.inc.i ], [ %2, %reverse.exit ]
  %s.addr.013.i = phi ptr [ %incdec.ptr.i, %for.inc.i ], [ @out, %reverse.exit ]
  %4 = add i8 %3, -97
  %or.cond.i = icmp ult i8 %4, 26
  br i1 %or.cond.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i48
  %add.i = add nsw i8 %3, -32
  store i8 %add.i, ptr %s.addr.013.i, align 1, !tbaa !10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i48
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %s.addr.013.i, i32 1
  %5 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !10
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %while.cond.preheader.i.preheader, label %for.body.i48, !llvm.loop !13

while.cond.preheader.i.preheader:                 ; preds = %for.inc.i, %reverse.exit
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %while.cond.preheader.i.preheader, %for.inc.i50
  %i.032.i = phi i32 [ %inc10.i, %for.inc.i50 ], [ 0, %while.cond.preheader.i.preheader ]
  %6 = getelementptr inbounds nuw i8, ptr @.str.8, i32 %i.032.i
  %cmp.i49 = icmp eq i32 %i.032.i, 35
  br i1 %cmp.i49, label %while.cond.i, label %for.inc.i50

while.cond.i:                                     ; preds = %while.cond.preheader.i
  %arrayidx3.i.1 = getelementptr inbounds nuw i8, ptr %6, i32 1
  %7 = load i8, ptr %arrayidx3.i.1, align 1, !tbaa !10
  %cmp.i49.1 = icmp eq i8 %7, 97
  br i1 %cmp.i49.1, label %while.cond.i.1, label %for.inc.i50

while.cond.i.1:                                   ; preds = %while.cond.i
  %arrayidx3.i.2 = getelementptr inbounds nuw i8, ptr %6, i32 2
  %8 = load i8, ptr %arrayidx3.i.2, align 1, !tbaa !10
  %cmp.i49.2 = icmp eq i8 %8, 122
  br i1 %cmp.i49.2, label %while.cond.i.2, label %for.inc.i50

while.cond.i.2:                                   ; preds = %while.cond.i.1
  %arrayidx3.i.3 = getelementptr inbounds nuw i8, ptr %6, i32 3
  %9 = load i8, ptr %arrayidx3.i.3, align 1, !tbaa !10
  %cmp.i49.3 = icmp eq i8 %9, 121
  br i1 %cmp.i49.3, label %find.exit, label %for.inc.i50

for.inc.i50:                                      ; preds = %while.cond.i.2, %while.cond.i.1, %while.cond.i, %while.cond.preheader.i
  %inc10.i = add nuw nsw i32 %i.032.i, 1
  %tobool.not.i51 = icmp eq i32 %inc10.i, 45
  br i1 %tobool.not.i51, label %find.exit, label %while.cond.preheader.i, !llvm.loop !14

find.exit:                                        ; preds = %for.inc.i50, %while.cond.i.2
  %mul14 = phi i32 [ 35000, %while.cond.i.2 ], [ -1000, %for.inc.i50 ]
  br label %while.cond.preheader.i54

while.cond.preheader.i54:                         ; preds = %for.inc.i60, %find.exit
  %i.032.i55 = phi i32 [ 0, %find.exit ], [ %inc10.i61, %for.inc.i60 ]
  %10 = getelementptr inbounds nuw i8, ptr @.str.8, i32 %i.032.i55
  %cmp.i59 = icmp eq i32 %i.032.i55, 7
  br i1 %cmp.i59, label %while.cond.i63, label %for.inc.i60

while.cond.i63:                                   ; preds = %while.cond.preheader.i54
  %arrayidx3.i58.1 = getelementptr inbounds nuw i8, ptr %10, i32 1
  %11 = load i8, ptr %arrayidx3.i58.1, align 1, !tbaa !10
  %cmp.i59.1 = icmp eq i8 %11, 97
  br i1 %cmp.i59.1, label %while.cond.i63.1, label %for.inc.i60

while.cond.i63.1:                                 ; preds = %while.cond.i63
  %arrayidx3.i58.2 = getelementptr inbounds nuw i8, ptr %10, i32 2
  %12 = load i8, ptr %arrayidx3.i58.2, align 1, !tbaa !10
  %cmp.i59.2 = icmp eq i8 %12, 116
  br i1 %cmp.i59.2, label %find.exit67, label %for.inc.i60

for.inc.i60:                                      ; preds = %while.cond.i63.1, %while.cond.i63, %while.cond.preheader.i54
  %inc10.i61 = add nuw nsw i32 %i.032.i55, 1
  %tobool.not.i62 = icmp eq i32 %inc10.i61, 45
  br i1 %tobool.not.i62, label %find.exit67, label %while.cond.preheader.i54, !llvm.loop !14

find.exit67:                                      ; preds = %for.inc.i60, %while.cond.i63.1
  %13 = phi i32 [ 7, %while.cond.i63.1 ], [ -1, %for.inc.i60 ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.end.i, %find.exit67
  %n.0.i = phi i32 [ 0, %find.exit67 ], [ %spec.select.i, %lor.end.i ]
  %in.0.i = phi i1 [ false, %find.exit67 ], [ %.not.i, %lor.end.i ]
  %s.addr.0.i = phi ptr [ @.str.8, %find.exit67 ], [ %incdec.ptr.i69, %lor.end.i ]
  %in.0.not.i = xor i1 %in.0.i, true
  %14 = load i8, ptr %s.addr.0.i, align 1, !tbaa !10
  switch i8 %14, label %lor.rhs.i [
    i8 0, label %words.exit
    i8 32, label %lor.end.i
    i8 9, label %lor.end.i
    i8 10, label %lor.end.i
  ]

lor.rhs.i:                                        ; preds = %for.cond.i
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %for.cond.i, %for.cond.i, %for.cond.i
  %.not.i = phi i1 [ false, %for.cond.i ], [ false, %for.cond.i ], [ true, %lor.rhs.i ], [ false, %for.cond.i ]
  %or.cond.not.i = and i1 %.not.i, %in.0.not.i
  %inc.i68 = zext i1 %or.cond.not.i to i32
  %spec.select.i = add nuw nsw i32 %n.0.i, %inc.i68
  %incdec.ptr.i69 = getelementptr inbounds nuw i8, ptr %s.addr.0.i, i32 1
  br label %for.cond.i, !llvm.loop !15

words.exit:                                       ; preds = %for.cond.i
  %add16 = add nsw i32 %13, %mul14
  %mul18 = mul i32 %n.0.i, 7
  %add19 = add i32 %add16, %mul18
  %cmp22124 = icmp sgt i32 %add10, 0
  br i1 %cmp22124, label %for.body25, label %for.cond.cleanup24

for.body:                                         ; preds = %entry, %itoa.exit
  %at.0123 = phi i32 [ 0, %entry ], [ %add10, %itoa.exit ]
  %i.0122 = phi i32 [ 0, %entry ], [ %inc, %itoa.exit ]
  %arrayidx = getelementptr inbounds nuw ptr, ptr @__const.main.nums, i32 %i.0122
  %15 = load ptr, ptr %arrayidx, align 4, !tbaa !16
  br label %while.cond.i70

while.cond.i70:                                   ; preds = %while.body.i, %for.body
  %s.addr.0.i71 = phi ptr [ %15, %for.body ], [ %incdec.ptr.i75, %while.body.i ]
  %16 = load i8, ptr %s.addr.0.i71, align 1, !tbaa !10
  switch i8 %16, label %if.end.i [
    i8 32, label %while.body.i
    i8 45, label %if.then.i72
    i8 43, label %if.then.i72
  ]

while.body.i:                                     ; preds = %while.cond.i70
  %incdec.ptr.i75 = getelementptr inbounds nuw i8, ptr %s.addr.0.i71, i32 1
  br label %while.cond.i70, !llvm.loop !19

if.then.i72:                                      ; preds = %while.cond.i70, %while.cond.i70
  %incdec.ptr8.i = getelementptr inbounds nuw i8, ptr %s.addr.0.i71, i32 1
  %cmp10.i = icmp eq i8 %16, 45
  %cond.i = select i1 %cmp10.i, i32 -1, i32 1
  %.pre.i = load i8, ptr %incdec.ptr8.i, align 1, !tbaa !10
  br label %if.end.i

if.end.i:                                         ; preds = %while.cond.i70, %if.then.i72
  %17 = phi i8 [ %.pre.i, %if.then.i72 ], [ %16, %while.cond.i70 ]
  %s.addr.1.i = phi ptr [ %incdec.ptr8.i, %if.then.i72 ], [ %s.addr.0.i71, %while.cond.i70 ]
  %sign.0.i = phi i32 [ %cond.i, %if.then.i72 ], [ 1, %while.cond.i70 ]
  %18 = add i8 %17, -48
  %or.cond34.i = icmp ult i8 %18, 10
  br i1 %or.cond34.i, label %while.body19.i, label %my_atoi.exit

while.body19.i:                                   ; preds = %if.end.i, %while.body19.i
  %19 = phi i8 [ %20, %while.body19.i ], [ %17, %if.end.i ]
  %v.036.i = phi i32 [ %add.i73, %while.body19.i ], [ 0, %if.end.i ]
  %s.addr.235.i = phi ptr [ %incdec.ptr20.i, %while.body19.i ], [ %s.addr.1.i, %if.end.i ]
  %conv13.i = zext nneg i8 %19 to i32
  %mul.i = mul nsw i32 %v.036.i, 10
  %incdec.ptr20.i = getelementptr inbounds nuw i8, ptr %s.addr.235.i, i32 1
  %sub.i = add nsw i32 %conv13.i, -48
  %add.i73 = add i32 %sub.i, %mul.i
  %20 = load i8, ptr %incdec.ptr20.i, align 1, !tbaa !10
  %21 = add i8 %20, -48
  %or.cond.i74 = icmp ult i8 %21, 10
  br i1 %or.cond.i74, label %while.body19.i, label %while.end22.loopexit.i, !llvm.loop !20

while.end22.loopexit.i:                           ; preds = %while.body19.i
  %22 = mul nsw i32 %add.i73, %sign.0.i
  br label %my_atoi.exit

my_atoi.exit:                                     ; preds = %if.end.i, %while.end22.loopexit.i
  %v.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %22, %while.end22.loopexit.i ]
  %23 = tail call i32 @llvm.abs.i32(i32 %v.0.lcssa.i, i1 false)
  %cond.i85 = zext i32 %23 to i64
  %cmp.i100 = icmp slt i32 %v.0.lcssa.i, 0
  br label %for.body4

for.cond.cleanup3:                                ; preds = %itoa.exit113
  %conv7 = sext i32 %v.0.lcssa.i to i64
  %mul = mul nsw i64 %conv7, 1000003
  call void @llvm.lifetime.start.p0(ptr nonnull %tmp.i) #3
  %cond.i76 = tail call i64 @llvm.abs.i64(i64 range(i64 -2147490090450944, 2147490089450942) %mul, i1 true)
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %for.cond.cleanup3
  %u.0.i = phi i64 [ %cond.i76, %for.cond.cleanup3 ], [ %div.i, %do.body.i ]
  %n.0.i77 = phi i32 [ 0, %for.cond.cleanup3 ], [ %inc.i78, %do.body.i ]
  %u.0.i.frozen = freeze i64 %u.0.i
  %div.i = udiv i64 %u.0.i.frozen, 10
  %24 = mul i64 %div.i, 10
  %rem.i.decomposed = sub i64 %u.0.i.frozen, %24
  %conv2.i = trunc nuw nsw i64 %rem.i.decomposed to i8
  %cond10.i = or disjoint i8 %conv2.i, 48
  %inc.i78 = add nuw nsw i32 %n.0.i77, 1
  %arrayidx.i79 = getelementptr inbounds nuw i8, ptr %tmp.i, i32 %n.0.i77
  store i8 %cond10.i, ptr %arrayidx.i79, align 1, !tbaa !10
  %tobool13.not.i = icmp samesign ult i64 %u.0.i, 10
  br i1 %tobool13.not.i, label %do.end.i, label %do.body.i, !llvm.loop !21

do.end.i:                                         ; preds = %do.body.i
  %add.ptr8 = getelementptr inbounds i8, ptr @out, i32 %add
  br i1 %cmp.i100, label %if.then.i83, label %while.body.i82.preheader

if.then.i83:                                      ; preds = %do.end.i
  store i8 45, ptr %add.ptr8, align 1, !tbaa !10
  br label %while.body.i82.preheader

while.body.i82.preheader:                         ; preds = %if.then.i83, %do.end.i
  %k.138.i.ph = phi i32 [ 0, %do.end.i ], [ 1, %if.then.i83 ]
  br label %while.body.i82

while.body.i82:                                   ; preds = %while.body.i82.preheader, %while.body.i82
  %k.138.i = phi i32 [ %inc19.i, %while.body.i82 ], [ %k.138.i.ph, %while.body.i82.preheader ]
  %n.137.i = phi i32 [ %dec.i, %while.body.i82 ], [ %inc.i78, %while.body.i82.preheader ]
  %dec.i = add nsw i32 %n.137.i, -1
  %arrayidx18.i = getelementptr inbounds i8, ptr %tmp.i, i32 %dec.i
  %25 = load i8, ptr %arrayidx18.i, align 1, !tbaa !10
  %inc19.i = add nuw nsw i32 %k.138.i, 1
  %arrayidx20.i = getelementptr inbounds nuw i8, ptr %add.ptr8, i32 %k.138.i
  store i8 %25, ptr %arrayidx20.i, align 1, !tbaa !10
  %tobool17.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool17.not.i, label %itoa.exit, label %while.body.i82, !llvm.loop !22

itoa.exit:                                        ; preds = %while.body.i82
  %arrayidx21.i = getelementptr inbounds nuw i8, ptr %add.ptr8, i32 %inc19.i
  store i8 0, ptr %arrayidx21.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %tmp.i) #3
  %add10 = add nsw i32 %inc19.i, %add
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !23

for.body4:                                        ; preds = %my_atoi.exit, %itoa.exit113
  %at.1121 = phi i32 [ %at.0123, %my_atoi.exit ], [ %add, %itoa.exit113 ]
  %base.0120 = phi i32 [ 2, %my_atoi.exit ], [ %add6, %itoa.exit113 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %tmp.i84) #3
  %conv1.i = zext nneg i32 %base.0120 to i64
  br label %do.body.i86

do.body.i86:                                      ; preds = %do.body.i86, %for.body4
  %u.0.i87 = phi i64 [ %cond.i85, %for.body4 ], [ %div.i97, %do.body.i86 ]
  %n.0.i88 = phi i32 [ 0, %for.body4 ], [ %inc.i95, %do.body.i86 ]
  %u.0.i87.frozen = freeze i64 %u.0.i87
  %conv1.i.frozen = freeze i64 %conv1.i
  %div.i97 = udiv i64 %u.0.i87.frozen, %conv1.i.frozen
  %26 = mul i64 %div.i97, %conv1.i.frozen
  %rem.i89.decomposed = sub i64 %u.0.i87.frozen, %26
  %conv2.i90 = trunc nuw nsw i64 %rem.i89.decomposed to i32
  %cmp3.i91 = icmp samesign ult i32 %conv2.i90, 10
  %cond10.v.i92 = select i1 %cmp3.i91, i32 48, i32 87
  %cond10.i93 = add nuw nsw i32 %cond10.v.i92, %conv2.i90
  %conv11.i94 = trunc nuw nsw i32 %cond10.i93 to i8
  %inc.i95 = add nuw nsw i32 %n.0.i88, 1
  %arrayidx.i96 = getelementptr inbounds nuw i8, ptr %tmp.i84, i32 %n.0.i88
  store i8 %conv11.i94, ptr %arrayidx.i96, align 1, !tbaa !10
  %tobool13.not.i98 = icmp samesign ult i64 %u.0.i87, %conv1.i
  br i1 %tobool13.not.i98, label %do.end.i99, label %do.body.i86, !llvm.loop !21

do.end.i99:                                       ; preds = %do.body.i86
  %add.ptr = getelementptr inbounds i8, ptr @out, i32 %at.1121
  br i1 %cmp.i100, label %if.then.i112, label %while.body.i103.preheader

if.then.i112:                                     ; preds = %do.end.i99
  store i8 45, ptr %add.ptr, align 1, !tbaa !10
  br label %while.body.i103.preheader

while.body.i103.preheader:                        ; preds = %if.then.i112, %do.end.i99
  %k.138.i104.ph = phi i32 [ 0, %do.end.i99 ], [ 1, %if.then.i112 ]
  br label %while.body.i103

while.body.i103:                                  ; preds = %while.body.i103.preheader, %while.body.i103
  %k.138.i104 = phi i32 [ %inc19.i108, %while.body.i103 ], [ %k.138.i104.ph, %while.body.i103.preheader ]
  %n.137.i105 = phi i32 [ %dec.i106, %while.body.i103 ], [ %inc.i95, %while.body.i103.preheader ]
  %dec.i106 = add nsw i32 %n.137.i105, -1
  %arrayidx18.i107 = getelementptr inbounds i8, ptr %tmp.i84, i32 %dec.i106
  %27 = load i8, ptr %arrayidx18.i107, align 1, !tbaa !10
  %inc19.i108 = add nuw nsw i32 %k.138.i104, 1
  %arrayidx20.i109 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %k.138.i104
  store i8 %27, ptr %arrayidx20.i109, align 1, !tbaa !10
  %tobool17.not.i110 = icmp eq i32 %dec.i106, 0
  br i1 %tobool17.not.i110, label %itoa.exit113, label %while.body.i103, !llvm.loop !22

itoa.exit113:                                     ; preds = %while.body.i103
  %arrayidx21.i111 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %inc19.i108
  store i8 0, ptr %arrayidx21.i111, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %tmp.i84) #3
  %add = add nsw i32 %inc19.i108, %at.1121
  %add6 = add nuw nsw i32 %base.0120, 7
  %cmp2 = icmp samesign ult i32 %base.0120, 30
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3, !llvm.loop !24

for.cond.cleanup24:                               ; preds = %for.body25, %words.exit
  %h.0.lcssa = phi i32 [ %add19, %words.exit ], [ %add29, %for.body25 ]
  ret i32 %h.0.lcssa

for.body25:                                       ; preds = %words.exit, %for.body25
  %i20.0126 = phi i32 [ %inc31, %for.body25 ], [ 0, %words.exit ]
  %h.0125 = phi i32 [ %add29, %for.body25 ], [ %add19, %words.exit ]
  %mul26 = mul i32 %h.0125, 131
  %arrayidx27 = getelementptr inbounds nuw i8, ptr @out, i32 %i20.0126
  %28 = load i8, ptr %arrayidx27, align 1, !tbaa !10
  %conv28 = zext i8 %28 to i32
  %add29 = add i32 %mul26, %conv28
  %inc31 = add nuw nsw i32 %i20.0126, 1
  %cmp22 = icmp slt i32 %inc31, %add10
  br i1 %cmp22, label %for.body25, label %for.cond.cleanup24, !llvm.loop !25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
