; ModuleID = 'tests/programs/varargs.c'
source_filename = "tests/programs/varargs.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@buf = internal unnamed_addr global [256 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [18 x i8] c"x=%d y=%d %s%c|%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: nofree norecurse nosync nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i32, ...) @sum(i32 noundef 5, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5) #6
  %call1 = tail call i32 (i32, ...) @sum(i32 noundef 9, i32 noundef 9, i32 noundef -8, i32 noundef 7, i32 noundef -6, i32 noundef 5, i32 noundef -4, i32 noundef 3, i32 noundef -2, i32 noundef 1) #6
  %mul = mul i32 %call1, 3
  %add = add i32 %mul, %call
  %call2 = tail call i64 (i32, ...) @mixed(i32 poison, i32 noundef 10, i64 noundef 4886718345, double noundef 2.500000e+00, i32 noundef -3, i64 noundef -1, double noundef 1.250000e-01, i32 noundef 99) #6
  %shr = lshr i64 %call2, 32
  %xor15 = xor i64 %shr, %call2
  %xor = trunc i64 %xor15 to i32
  %add4 = add i32 %add, %xor
  %call5 = tail call i32 (ptr, ptr, ...) @fmt(ptr nonnull poison, ptr nonnull poison, i32 noundef 42, i32 noundef -2147483648, ptr noundef nonnull @.str.1, i32 noundef 33, i32 noundef 0) #6
  %cmp16 = icmp sgt i32 %call5, 0
  br i1 %cmp16, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %h.0.lcssa = phi i32 [ %add4, %entry ], [ %add9, %for.body ]
  ret i32 %h.0.lcssa

for.body:                                         ; preds = %entry, %for.body
  %i.018 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %h.017 = phi i32 [ %add9, %for.body ], [ %add4, %entry ]
  %mul7 = mul i32 %h.017, 37
  %arrayidx = getelementptr inbounds nuw i8, ptr @buf, i32 %i.018
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv8 = zext i8 %0 to i32
  %add9 = add i32 %mul7, %conv8
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %call5
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind
define internal i32 @sum(i32 noundef range(i32 5, 10) %n, ...) unnamed_addr #0 {
entry:
  %ap = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %ap) #7
  call void @llvm.va_start.p0(ptr nonnull %ap)
  %ap.promoted = load ptr, ptr %ap, align 4
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.va_end.p0(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %ap) #7
  ret i32 %add1

for.body:                                         ; preds = %entry, %for.body
  %i.08 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %s.07 = phi i32 [ 0, %entry ], [ %add1, %for.body ]
  %argp.next56 = phi ptr [ %ap.promoted, %entry ], [ %argp.next, %for.body ]
  %argp.next = getelementptr inbounds nuw i8, ptr %argp.next56, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %0 = load i32, ptr %argp.next56, align 4, !tbaa !6
  %add = add nuw nsw i32 %i.08, 1
  %mul = mul nsw i32 %0, %add
  %add1 = add nsw i32 %mul, %s.07
  %exitcond.not = icmp eq i32 %add, %n
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn
define internal i64 @mixed(i32 %n, ...) unnamed_addr #2 {
for.inc.6:
  %ap = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %ap) #7
  call void @llvm.va_start.p0(ptr nonnull %ap)
  %ap.promoted = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds nuw i8, ptr %ap.promoted, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %0 = load i32, ptr %ap.promoted, align 4, !tbaa !6
  %1 = getelementptr inbounds nuw i8, ptr %ap.promoted, i32 11
  %argp.cur2.aligned.1 = call align 8 ptr @llvm.ptrmask.p0.i32(ptr nonnull %1, i32 -8)
  %2 = load i64, ptr %argp.cur2.aligned.1, align 8, !tbaa !14
  %3 = getelementptr inbounds nuw i8, ptr %argp.cur2.aligned.1, i32 8
  %argp.next5.2 = getelementptr inbounds nuw i8, ptr %argp.cur2.aligned.1, i32 16
  %4 = load double, ptr %3, align 8, !tbaa !16
  %5 = load i32, ptr %argp.next5.2, align 8, !tbaa !6
  %6 = getelementptr inbounds nuw i8, ptr %argp.cur2.aligned.1, i32 24
  %7 = load i64, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds nuw i8, ptr %argp.cur2.aligned.1, i32 32
  %argp.next5.5 = getelementptr inbounds nuw i8, ptr %argp.cur2.aligned.1, i32 40
  %9 = load double, ptr %8, align 8, !tbaa !16
  %argp.next.6 = getelementptr inbounds nuw i8, ptr %argp.cur2.aligned.1, i32 44
  store ptr %argp.next.6, ptr %ap, align 4
  %conv = sext i32 %0 to i64
  %xor.1 = xor i64 %2, %conv
  %mul.2 = fmul double %4, 1.000000e+02
  %conv6.2 = fptosi double %mul.2 to i64
  %add7.2 = add nsw i64 %xor.1, %conv6.2
  %conv.3 = sext i32 %5 to i64
  %add.3 = add nsw i64 %add7.2, %conv.3
  %xor.4 = xor i64 %7, %add.3
  %mul.5 = fmul double %9, 1.000000e+02
  %conv6.5 = fptosi double %mul.5 to i64
  %add7.5 = add nsw i64 %xor.4, %conv6.5
  %10 = load i32, ptr %argp.next5.5, align 8, !tbaa !6
  %conv.6 = sext i32 %10 to i64
  %add.6 = add nsw i64 %add7.5, %conv.6
  call void @llvm.va_end.p0(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %ap) #7
  ret i64 %add.6
}

; Function Attrs: nofree norecurse nosync nounwind
define internal i32 @fmt(ptr readnone captures(none) %out, ptr readnone captures(none) %f, ...) unnamed_addr #0 {
entry:
  %ap = alloca ptr, align 4
  %t = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %ap) #7
  call void @llvm.va_start.p0(ptr nonnull %ap)
  %ap.promoted = load ptr, ptr %ap, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %entry
  %argp.next4085 = phi ptr [ %ap.promoted, %entry ], [ %argp.next4084, %for.inc47 ]
  %n.0 = phi i32 [ 0, %entry ], [ %n.4, %for.inc47 ]
  %f.addr.0 = phi ptr [ @.str, %entry ], [ %incdec.ptr48, %for.inc47 ]
  %0 = load i8, ptr %f.addr.0, align 1, !tbaa !10
  switch i8 %0, label %if.then [
    i8 0, label %for.end49
    i8 37, label %if.end
  ]

if.then:                                          ; preds = %for.cond
  %inc = add nsw i32 %n.0, 1
  %arrayidx = getelementptr inbounds i8, ptr @buf, i32 %n.0
  store i8 %0, ptr %arrayidx, align 1, !tbaa !10
  br label %for.inc47

if.end:                                           ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %f.addr.0, i32 1
  %1 = load i8, ptr %incdec.ptr, align 1, !tbaa !10
  switch i8 %1, label %for.inc47 [
    i8 100, label %if.then5
    i8 115, label %if.then25
    i8 99, label %if.then38
  ]

if.then5:                                         ; preds = %if.end
  %argp.next = getelementptr inbounds nuw i8, ptr %argp.next4085, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %2 = load i32, ptr %argp.next4085, align 4, !tbaa !6
  %cond = call i32 @llvm.abs.i32(i32 %2, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %t) #7
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then5
  %u.0 = phi i32 [ %cond, %if.then5 ], [ %div, %do.body ]
  %k.0 = phi i32 [ 0, %if.then5 ], [ %inc9, %do.body ]
  %u.0.frozen = freeze i32 %u.0
  %div = udiv i32 %u.0.frozen, 10
  %3 = mul i32 %div, 10
  %rem.decomposed = sub i32 %u.0.frozen, %3
  %4 = trunc nuw nsw i32 %rem.decomposed to i8
  %conv8 = or disjoint i8 %4, 48
  %inc9 = add nuw nsw i32 %k.0, 1
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %t, i32 %k.0
  store i8 %conv8, ptr %arrayidx10, align 1, !tbaa !10
  %tobool11.not = icmp ult i32 %u.0, 10
  br i1 %tobool11.not, label %do.end, label %do.body, !llvm.loop !18

do.end:                                           ; preds = %do.body
  %cmp6 = icmp slt i32 %2, 0
  br i1 %cmp6, label %if.then14, label %while.body.preheader

if.then14:                                        ; preds = %do.end
  %inc15 = add nsw i32 %n.0, 1
  %arrayidx16 = getelementptr inbounds i8, ptr @buf, i32 %n.0
  store i8 45, ptr %arrayidx16, align 1, !tbaa !10
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then14, %do.end
  %n.282.ph = phi i32 [ %n.0, %do.end ], [ %inc15, %if.then14 ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %k.183 = phi i32 [ %dec, %while.body ], [ %inc9, %while.body.preheader ]
  %n.282 = phi i32 [ %inc20, %while.body ], [ %n.282.ph, %while.body.preheader ]
  %dec = add nsw i32 %k.183, -1
  %arrayidx19 = getelementptr inbounds i8, ptr %t, i32 %dec
  %5 = load i8, ptr %arrayidx19, align 1, !tbaa !10
  %inc20 = add nsw i32 %n.282, 1
  %arrayidx21 = getelementptr inbounds i8, ptr @buf, i32 %n.282
  store i8 %5, ptr %arrayidx21, align 1, !tbaa !10
  %tobool18.not = icmp eq i32 %dec, 0
  br i1 %tobool18.not, label %while.end, label %while.body, !llvm.loop !19

while.end:                                        ; preds = %while.body
  call void @llvm.lifetime.end.p0(ptr nonnull %t) #7
  br label %for.inc47

if.then25:                                        ; preds = %if.end
  %argp.next27 = getelementptr inbounds nuw i8, ptr %argp.next4085, i32 4
  store ptr %argp.next27, ptr %ap, align 4
  %6 = load ptr, ptr %argp.next4085, align 4, !tbaa !20
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %tobool29.not79 = icmp eq i8 %7, 0
  br i1 %tobool29.not79, label %for.inc47, label %for.body30

for.body30:                                       ; preds = %if.then25, %for.body30
  %8 = phi i8 [ %9, %for.body30 ], [ %7, %if.then25 ]
  %s.081 = phi ptr [ %incdec.ptr33, %for.body30 ], [ %6, %if.then25 ]
  %n.380 = phi i32 [ %inc31, %for.body30 ], [ %n.0, %if.then25 ]
  %inc31 = add nsw i32 %n.380, 1
  %arrayidx32 = getelementptr inbounds i8, ptr @buf, i32 %n.380
  store i8 %8, ptr %arrayidx32, align 1, !tbaa !10
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %s.081, i32 1
  %9 = load i8, ptr %incdec.ptr33, align 1, !tbaa !10
  %tobool29.not = icmp eq i8 %9, 0
  br i1 %tobool29.not, label %for.inc47, label %for.body30, !llvm.loop !23

if.then38:                                        ; preds = %if.end
  %argp.next40 = getelementptr inbounds nuw i8, ptr %argp.next4085, i32 4
  store ptr %argp.next40, ptr %ap, align 4
  %10 = load i32, ptr %argp.next4085, align 4, !tbaa !6
  %conv41 = trunc i32 %10 to i8
  %inc42 = add nsw i32 %n.0, 1
  %arrayidx43 = getelementptr inbounds i8, ptr @buf, i32 %n.0
  store i8 %conv41, ptr %arrayidx43, align 1, !tbaa !10
  br label %for.inc47

for.inc47:                                        ; preds = %for.body30, %if.then25, %if.end, %while.end, %if.then38, %if.then
  %argp.next4084 = phi ptr [ %argp.next4085, %if.then ], [ %argp.next, %while.end ], [ %argp.next4085, %if.end ], [ %argp.next40, %if.then38 ], [ %argp.next27, %if.then25 ], [ %argp.next27, %for.body30 ]
  %n.4 = phi i32 [ %inc, %if.then ], [ %inc20, %while.end ], [ %n.0, %if.end ], [ %inc42, %if.then38 ], [ %n.0, %if.then25 ], [ %inc31, %for.body30 ]
  %f.addr.1 = phi ptr [ %f.addr.0, %if.then ], [ %incdec.ptr, %while.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.then38 ], [ %incdec.ptr, %if.then25 ], [ %incdec.ptr, %for.body30 ]
  %incdec.ptr48 = getelementptr inbounds nuw i8, ptr %f.addr.1, i32 1
  br label %for.cond, !llvm.loop !24

for.end49:                                        ; preds = %for.cond
  call void @llvm.va_end.p0(ptr nonnull %ap)
  %arrayidx50 = getelementptr inbounds i8, ptr @buf, i32 %n.0
  store i8 0, ptr %arrayidx50, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %ap) #7
  ret i32 %n.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i32(ptr, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !8, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !8, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !22, i64 0}
!22 = !{!"any pointer", !8, i64 0}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
