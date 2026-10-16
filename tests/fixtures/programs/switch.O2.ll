; ModuleID = 'tests/programs/switch.c'
source_filename = "tests/programs/switch.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@fact = internal constant [17 x i8] c"\00\00\01\00\01\0A\03\00\00\01\07\01\06\01\F7\08\00", align 1
@squares = internal constant [32 x i8] c"\00\00\00\00\01\14\03\02\01\01\01\00\00\02\04\00\00\01\07\01\06\01\EF\00\03\03\05\00\00\03\08\00", align 1
@collatz = internal constant [50 x i8] c"\00\00\1B\00\01\00\00\02\01\00\03\03\02\04\00\02\06\04\02\08\01\01\01\01\02\09\05\00\02\06\05\07\0A\00\00\02\06\02\E5\03\00\00\03\01\00\00\02\06\02\DA", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @run(ptr noundef nonnull @fact) #4
  %mul = mul i32 %call, 7
  %call1 = tail call fastcc i32 @run(ptr noundef nonnull @squares) #4
  %mul2 = mul i32 %call1, 11
  %add = add i32 %mul2, %mul
  %call3 = tail call fastcc i32 @run(ptr noundef nonnull @collatz) #4
  %mul4 = mul i32 %call3, 13
  %add5 = add i32 %add, %mul4
  br label %for.body

for.cond.cleanup:                                 ; preds = %fall.exit
  %add20 = add i32 %add11, 26
  ret i32 %add20

for.body:                                         ; preds = %entry, %fall.exit
  %k.062 = phi i32 [ -1200, %entry ], [ %add12, %fall.exit ]
  %h.061 = phi i32 [ %add5, %entry ], [ %add11, %fall.exit ]
  %mul6 = mul i32 %h.061, 3
  switch i32 %k.062, label %sw.default.i [
    i32 -1000, label %fall.exit
    i32 -7, label %sparse.exit.thread
    i32 0, label %sparse.exit.thread44
    i32 13, label %sparse.exit.thread50
    i32 99, label %sparse.exit
    i32 100, label %sparse.exit
  ]

sparse.exit.thread44:                             ; preds = %for.body
  br label %fall.exit

sparse.exit.thread50:                             ; preds = %for.body
  br label %fall.exit

sw.default.i:                                     ; preds = %for.body
  %and.i = and i32 %k.062, 3
  br label %sparse.exit

sparse.exit.thread:                               ; preds = %for.body
  br label %fall.exit

sparse.exit:                                      ; preds = %for.body, %for.body, %sw.default.i
  %retval.0.i = phi i32 [ %and.i, %sw.default.i ], [ 5, %for.body ], [ 5, %for.body ]
  %add9 = add nsw i32 %k.062, 1200
  %rem.i.urem = urem i32 %add9, 6
  switch i32 %rem.i.urem, label %sw.default.i29 [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i28
    i32 2, label %fall.exit
    i32 3, label %sw.bb5.i27
    i32 4, label %sw.bb6.i26
  ]

sw.bb.i:                                          ; preds = %sparse.exit
  br label %fall.exit

sw.bb1.i28:                                       ; preds = %sparse.exit
  br label %fall.exit

sw.bb5.i27:                                       ; preds = %sparse.exit
  br label %fall.exit

sw.bb6.i26:                                       ; preds = %sparse.exit
  br label %fall.exit

sw.default.i29:                                   ; preds = %sparse.exit
  br label %fall.exit

fall.exit:                                        ; preds = %for.body, %sparse.exit.thread, %sparse.exit.thread50, %sparse.exit.thread44, %sparse.exit, %sw.bb.i, %sw.bb1.i28, %sw.bb5.i27, %sw.bb6.i26, %sw.default.i29
  %retval.0.i.pn = phi i32 [ %retval.0.i, %sw.bb6.i26 ], [ %retval.0.i, %sw.bb.i ], [ %retval.0.i, %sparse.exit ], [ 2, %sparse.exit.thread ], [ %retval.0.i, %sw.bb5.i27 ], [ %retval.0.i, %sw.bb1.i28 ], [ 3, %sparse.exit.thread44 ], [ 4, %sparse.exit.thread50 ], [ %retval.0.i, %sw.default.i29 ], [ 1, %for.body ]
  %r.3.i = phi i32 [ 0, %sw.bb6.i26 ], [ 111, %sw.bb.i ], [ 100, %sparse.exit ], [ 77, %sparse.exit.thread ], [ -15, %sw.bb5.i27 ], [ 110, %sw.bb1.i28 ], [ 111, %sparse.exit.thread44 ], [ 110, %sparse.exit.thread50 ], [ 77, %sw.default.i29 ], [ 100, %for.body ]
  %add834 = add i32 %retval.0.i.pn, %mul6
  %add11 = add i32 %add834, %r.3.i
  %add12 = add nsw i32 %k.062, 7
  %cmp = icmp slt i32 %k.062, 1193
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define internal fastcc i32 @run(ptr noundef readonly captures(none) %code) unnamed_addr #2 {
entry:
  %r = alloca [8 x i32], align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %r) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %r, i8 0, i32 32, i1 false)
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %steps.0164 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %pc.0163 = phi i32 [ 0, %entry ], [ %pc.2.ph, %for.inc ]
  %add.ptr = getelementptr inbounds i8, ptr %code, i32 %pc.0163
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !12
  switch i8 %0, label %cleanup110 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
    i8 2, label %sw.bb17
    i8 3, label %sw.bb28
    i8 4, label %sw.bb39
    i8 5, label %sw.bb50
    i8 9, label %sw.bb61
    i8 10, label %sw.bb73
    i8 11, label %sw.bb85
    i8 6, label %sw.bb93
    i8 7, label %sw.bb101
    i8 8, label %sw.bb106
  ]

sw.bb:                                            ; preds = %for.body
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %1 = load i8, ptr %arrayidx1, align 1, !tbaa !12
  %conv2 = sext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %2 = load i8, ptr %arrayidx3, align 1, !tbaa !12
  %idxprom = zext i8 %2 to i32
  %arrayidx4 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom
  store i32 %conv2, ptr %arrayidx4, align 4, !tbaa !6
  %add = add nsw i32 %pc.0163, 3
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %3 = load i8, ptr %arrayidx6, align 1, !tbaa !12
  %idxprom7 = zext i8 %3 to i32
  %arrayidx8 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom7
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 3
  %5 = load i8, ptr %arrayidx9, align 1, !tbaa !12
  %idxprom10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom10
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !6
  %add12 = add nsw i32 %6, %4
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %7 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %idxprom14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom14
  store i32 %add12, ptr %arrayidx15, align 4, !tbaa !6
  %add16 = add nsw i32 %pc.0163, 4
  br label %for.inc

sw.bb17:                                          ; preds = %for.body
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %8 = load i8, ptr %arrayidx18, align 1, !tbaa !12
  %idxprom19 = zext i8 %8 to i32
  %arrayidx20 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom19
  %9 = load i32, ptr %arrayidx20, align 4, !tbaa !6
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 3
  %10 = load i8, ptr %arrayidx21, align 1, !tbaa !12
  %idxprom22 = zext i8 %10 to i32
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom22
  %11 = load i32, ptr %arrayidx23, align 4, !tbaa !6
  %sub = sub nsw i32 %9, %11
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %12 = load i8, ptr %arrayidx24, align 1, !tbaa !12
  %idxprom25 = zext i8 %12 to i32
  %arrayidx26 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom25
  store i32 %sub, ptr %arrayidx26, align 4, !tbaa !6
  %add27 = add nsw i32 %pc.0163, 4
  br label %for.inc

sw.bb28:                                          ; preds = %for.body
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %13 = load i8, ptr %arrayidx29, align 1, !tbaa !12
  %idxprom30 = zext i8 %13 to i32
  %arrayidx31 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom30
  %14 = load i32, ptr %arrayidx31, align 4, !tbaa !6
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 3
  %15 = load i8, ptr %arrayidx32, align 1, !tbaa !12
  %idxprom33 = zext i8 %15 to i32
  %arrayidx34 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom33
  %16 = load i32, ptr %arrayidx34, align 4, !tbaa !6
  %mul = mul i32 %16, %14
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %17 = load i8, ptr %arrayidx35, align 1, !tbaa !12
  %idxprom36 = zext i8 %17 to i32
  %arrayidx37 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom36
  store i32 %mul, ptr %arrayidx37, align 4, !tbaa !6
  %add38 = add nsw i32 %pc.0163, 4
  br label %for.inc

sw.bb39:                                          ; preds = %for.body
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %18 = load i8, ptr %arrayidx40, align 1, !tbaa !12
  %idxprom41 = zext i8 %18 to i32
  %arrayidx42 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom41
  %19 = load i32, ptr %arrayidx42, align 4, !tbaa !6
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 3
  %20 = load i8, ptr %arrayidx43, align 1, !tbaa !12
  %idxprom44 = zext i8 %20 to i32
  %arrayidx45 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom44
  %21 = load i32, ptr %arrayidx45, align 4, !tbaa !6
  %xor = xor i32 %21, %19
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %22 = load i8, ptr %arrayidx46, align 1, !tbaa !12
  %idxprom47 = zext i8 %22 to i32
  %arrayidx48 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom47
  store i32 %xor, ptr %arrayidx48, align 4, !tbaa !6
  %add49 = add nsw i32 %pc.0163, 4
  br label %for.inc

sw.bb50:                                          ; preds = %for.body
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %23 = load i8, ptr %arrayidx51, align 1, !tbaa !12
  %idxprom52 = zext i8 %23 to i32
  %arrayidx53 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom52
  %24 = load i32, ptr %arrayidx53, align 4, !tbaa !6
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 3
  %25 = load i8, ptr %arrayidx54, align 1, !tbaa !12
  %idxprom55 = zext i8 %25 to i32
  %arrayidx56 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom55
  %26 = load i32, ptr %arrayidx56, align 4, !tbaa !6
  %and = and i32 %26, 31
  %shl = shl i32 %24, %and
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %27 = load i8, ptr %arrayidx57, align 1, !tbaa !12
  %idxprom58 = zext i8 %27 to i32
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom58
  store i32 %shl, ptr %arrayidx59, align 4, !tbaa !6
  %add60 = add nsw i32 %pc.0163, 4
  br label %for.inc

sw.bb61:                                          ; preds = %for.body
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %28 = load i8, ptr %arrayidx62, align 1, !tbaa !12
  %idxprom63 = zext i8 %28 to i32
  %arrayidx64 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom63
  %29 = load i32, ptr %arrayidx64, align 4, !tbaa !6
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 3
  %30 = load i8, ptr %arrayidx65, align 1, !tbaa !12
  %idxprom66 = zext i8 %30 to i32
  %arrayidx67 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom66
  %31 = load i32, ptr %arrayidx67, align 4, !tbaa !6
  %and68 = and i32 %31, %29
  %arrayidx69 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %32 = load i8, ptr %arrayidx69, align 1, !tbaa !12
  %idxprom70 = zext i8 %32 to i32
  %arrayidx71 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom70
  store i32 %and68, ptr %arrayidx71, align 4, !tbaa !6
  %add72 = add nsw i32 %pc.0163, 4
  br label %for.inc

sw.bb73:                                          ; preds = %for.body
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %33 = load i8, ptr %arrayidx74, align 1, !tbaa !12
  %idxprom75 = zext i8 %33 to i32
  %arrayidx76 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom75
  %34 = load i32, ptr %arrayidx76, align 4, !tbaa !6
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 3
  %35 = load i8, ptr %arrayidx77, align 1, !tbaa !12
  %idxprom78 = zext i8 %35 to i32
  %arrayidx79 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom78
  %36 = load i32, ptr %arrayidx79, align 4, !tbaa !6
  %and80 = and i32 %36, 31
  %shr = lshr i32 %34, %and80
  %arrayidx81 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %37 = load i8, ptr %arrayidx81, align 1, !tbaa !12
  %idxprom82 = zext i8 %37 to i32
  %arrayidx83 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom82
  store i32 %shr, ptr %arrayidx83, align 4, !tbaa !6
  %add84 = add nsw i32 %pc.0163, 4
  br label %for.inc

sw.bb85:                                          ; preds = %for.body
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %38 = load i8, ptr %arrayidx86, align 1, !tbaa !12
  %idxprom87 = zext i8 %38 to i32
  %arrayidx88 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom87
  %39 = load i32, ptr %arrayidx88, align 4, !tbaa !6
  %arrayidx89 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %40 = load i8, ptr %arrayidx89, align 1, !tbaa !12
  %idxprom90 = zext i8 %40 to i32
  %arrayidx91 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom90
  store i32 %39, ptr %arrayidx91, align 4, !tbaa !6
  %add92 = add nsw i32 %pc.0163, 3
  br label %for.inc

sw.bb93:                                          ; preds = %for.body
  %add94 = add nsw i32 %pc.0163, 3
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %41 = load i8, ptr %arrayidx95, align 1, !tbaa !12
  %idxprom96 = zext i8 %41 to i32
  %arrayidx97 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom96
  %42 = load i32, ptr %arrayidx97, align 4, !tbaa !6
  %tobool.not = icmp eq i32 %42, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %sw.bb93
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 2
  %43 = load i8, ptr %arrayidx98, align 1, !tbaa !12
  %conv99 = sext i8 %43 to i32
  %add100 = add nsw i32 %add94, %conv99
  br label %for.inc

sw.bb101:                                         ; preds = %for.body
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %44 = load i8, ptr %arrayidx102, align 1, !tbaa !12
  %idxprom103 = zext i8 %44 to i32
  %arrayidx104 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom103
  %45 = load i32, ptr %arrayidx104, align 4, !tbaa !6
  %dec = add nsw i32 %45, -1
  store i32 %dec, ptr %arrayidx104, align 4, !tbaa !6
  %add105 = add nsw i32 %pc.0163, 2
  br label %for.inc

sw.bb106:                                         ; preds = %for.body
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 1
  %46 = load i8, ptr %arrayidx107, align 1, !tbaa !12
  %idxprom108 = zext i8 %46 to i32
  %arrayidx109 = getelementptr inbounds nuw i32, ptr %r, i32 %idxprom108
  %47 = load i32, ptr %arrayidx109, align 4, !tbaa !6
  br label %cleanup110

for.inc:                                          ; preds = %sw.bb93, %if.then, %sw.bb101, %sw.bb85, %sw.bb73, %sw.bb61, %sw.bb50, %sw.bb39, %sw.bb28, %sw.bb17, %sw.bb5, %sw.bb
  %pc.2.ph = phi i32 [ %add105, %sw.bb101 ], [ %add94, %sw.bb93 ], [ %add100, %if.then ], [ %add92, %sw.bb85 ], [ %add84, %sw.bb73 ], [ %add72, %sw.bb61 ], [ %add60, %sw.bb50 ], [ %add49, %sw.bb39 ], [ %add38, %sw.bb28 ], [ %add27, %sw.bb17 ], [ %add16, %sw.bb5 ], [ %add, %sw.bb ]
  %inc = add nuw nsw i32 %steps.0164, 1
  %exitcond = icmp eq i32 %inc, 100000
  br i1 %exitcond, label %cleanup110, label %for.body, !llvm.loop !13

cleanup110:                                       ; preds = %for.body, %for.inc, %sw.bb106
  %spec.select = phi i32 [ %47, %sw.bb106 ], [ -2, %for.body ], [ -1, %for.inc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %r) #5
  ret i32 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !11}
