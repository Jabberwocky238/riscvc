; ModuleID = '../llvm-project/compiler-rt/lib/builtins/gcc_personality_v0.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/gcc_personality_v0.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@.str = private unnamed_addr constant [62 x i8] c"../llvm-project/compiler-rt/lib/builtins/gcc_personality_v0.c\00", align 1
@__func__.readEncodedPointer = private unnamed_addr constant [19 x i8] c"readEncodedPointer\00", align 1

; Function Attrs: nounwind
define dso_local range(i32 7, 9) i32 @__gcc_personality_v0(i32 noundef %version, i32 noundef %actions, i64 noundef %exceptionClass, ptr noundef %exceptionObject, ptr noundef %context) local_unnamed_addr #0 {
entry:
  %lsda = alloca ptr, align 4
  %p = alloca ptr, align 4
  %and = and i32 %actions, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(ptr nonnull %lsda) #4
  %call1 = tail call ptr @_Unwind_GetLanguageSpecificData(ptr noundef %context) #5
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %cleanup52, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @_Unwind_GetIP(ptr noundef %context) #5
  %call6 = tail call i32 @_Unwind_GetRegionStart(ptr noundef %context) #5
  %0 = xor i32 %call6, -1
  %sub7 = add i32 %call5, %0
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %call1, i32 1
  store ptr %incdec.ptr, ptr %lsda, align 4, !tbaa !10
  %1 = load i8, ptr %call1, align 1, !tbaa !13
  %cmp8.not = icmp eq i8 %1, -1
  br i1 %cmp8.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end4
  %call11 = call fastcc i32 @readEncodedPointer(ptr noundef %lsda, i8 noundef zeroext %1) #6
  %.pre = load ptr, ptr %lsda, align 4, !tbaa !10
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end4
  %2 = phi ptr [ %.pre, %if.then10 ], [ %incdec.ptr, %if.end4 ]
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr13, ptr %lsda, align 4, !tbaa !10
  %3 = load i8, ptr %2, align 1, !tbaa !13
  %cmp15.not = icmp eq i8 %3, -1
  br i1 %cmp15.not, label %if.end19, label %do.body.i

do.body.i:                                        ; preds = %if.end12, %do.body.i
  %p.0.i = phi ptr [ %incdec.ptr.i, %do.body.i ], [ %incdec.ptr13, %if.end12 ]
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %p.0.i, i32 1
  %4 = load i8, ptr %p.0.i, align 1, !tbaa !13
  %tobool.not.i = icmp sgt i8 %4, -1
  br i1 %tobool.not.i, label %if.end19, label %do.body.i, !llvm.loop !14

if.end19:                                         ; preds = %do.body.i, %if.end12
  %5 = phi ptr [ %incdec.ptr13, %if.end12 ], [ %incdec.ptr.i, %do.body.i ]
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %incdec.ptr20, ptr %lsda, align 4, !tbaa !10
  %6 = load i8, ptr %5, align 1, !tbaa !13
  br label %do.body.i72

do.body.i72:                                      ; preds = %do.body.i72, %if.end19
  %shift.0.i73 = phi i32 [ 0, %if.end19 ], [ %add.i80, %do.body.i72 ]
  %result.0.i74 = phi i32 [ 0, %if.end19 ], [ %or.i79, %do.body.i72 ]
  %p.0.i75 = phi ptr [ %incdec.ptr20, %if.end19 ], [ %incdec.ptr.i76, %do.body.i72 ]
  %incdec.ptr.i76 = getelementptr inbounds nuw i8, ptr %p.0.i75, i32 1
  %7 = load i8, ptr %p.0.i75, align 1, !tbaa !13
  %8 = and i8 %7, 127
  %and.i77 = zext nneg i8 %8 to i32
  %shl.i78 = shl i32 %and.i77, %shift.0.i73
  %or.i79 = or i32 %shl.i78, %result.0.i74
  %add.i80 = add i32 %shift.0.i73, 7
  %tobool.not.i81 = icmp sgt i8 %7, -1
  br i1 %tobool.not.i81, label %readULEB128.exit82, label %do.body.i72, !llvm.loop !14

readULEB128.exit82:                               ; preds = %do.body.i72
  %add.ptr = getelementptr inbounds nuw i8, ptr %incdec.ptr.i76, i32 %or.i79
  call void @llvm.lifetime.start.p0(ptr nonnull %p) #4
  store ptr %incdec.ptr.i76, ptr %p, align 4, !tbaa !10
  %cmp2295.not = icmp eq i32 %or.i79, 0
  br i1 %cmp2295.not, label %cleanup42, label %while.body

while.body:                                       ; preds = %readULEB128.exit82, %cleanup
  %call24 = call fastcc i32 @readEncodedPointer(ptr noundef %p, i8 noundef zeroext %6) #6
  %call25 = call fastcc i32 @readEncodedPointer(ptr noundef %p, i8 noundef zeroext %6) #6
  %call26 = call fastcc i32 @readEncodedPointer(ptr noundef %p, i8 noundef zeroext %6) #6
  %9 = load ptr, ptr %p, align 4, !tbaa !10
  br label %do.body.i83

do.body.i83:                                      ; preds = %do.body.i83, %while.body
  %p.0.i86 = phi ptr [ %9, %while.body ], [ %incdec.ptr.i87, %do.body.i83 ]
  %incdec.ptr.i87 = getelementptr inbounds nuw i8, ptr %p.0.i86, i32 1
  %10 = load i8, ptr %p.0.i86, align 1, !tbaa !13
  %tobool.not.i92 = icmp sgt i8 %10, -1
  br i1 %tobool.not.i92, label %readULEB128.exit93, label %do.body.i83, !llvm.loop !14

readULEB128.exit93:                               ; preds = %do.body.i83
  store ptr %incdec.ptr.i87, ptr %p, align 4, !tbaa !10
  %cmp28 = icmp eq i32 %call26, 0
  br i1 %cmp28, label %cleanup, label %if.end31, !llvm.loop !16

if.end31:                                         ; preds = %readULEB128.exit93
  %cmp32.not = icmp ule i32 %call24, %sub7
  %add = add i32 %call25, %call24
  %cmp34 = icmp ult i32 %sub7, %add
  %or.cond = select i1 %cmp32.not, i1 %cmp34, i1 false
  br i1 %or.cond, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end31
  %11 = ptrtoint ptr %exceptionObject to i32
  tail call void @_Unwind_SetGR(ptr noundef %context, i32 noundef 10, i32 noundef %11) #5
  tail call void @_Unwind_SetGR(ptr noundef %context, i32 noundef 11, i32 noundef 0) #5
  %add37 = add i32 %call26, %call6
  tail call void @_Unwind_SetIP(ptr noundef %context, i32 noundef %add37) #5
  br label %cleanup42

cleanup:                                          ; preds = %if.end31, %readULEB128.exit93
  %cmp22 = icmp ult ptr %incdec.ptr.i87, %add.ptr
  br i1 %cmp22, label %while.body, label %cleanup42

cleanup42:                                        ; preds = %cleanup, %readULEB128.exit82, %cleanup.thread
  %retval.2 = phi i32 [ 7, %cleanup.thread ], [ 8, %readULEB128.exit82 ], [ 8, %cleanup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %p) #4
  br label %cleanup52

cleanup52:                                        ; preds = %if.end, %cleanup42
  %retval.3 = phi i32 [ %retval.2, %cleanup42 ], [ 8, %if.end ]
  call void @llvm.lifetime.end.p0(ptr nonnull %lsda) #4
  br label %return

return:                                           ; preds = %entry, %cleanup52
  %retval.4 = phi i32 [ %retval.3, %cleanup52 ], [ 8, %entry ]
  ret i32 %retval.4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare dso_local ptr @_Unwind_GetLanguageSpecificData(ptr noundef) local_unnamed_addr #2

declare dso_local i32 @_Unwind_GetIP(ptr noundef) local_unnamed_addr #2

declare dso_local i32 @_Unwind_GetRegionStart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc i32 @readEncodedPointer(ptr noundef nonnull captures(none) %data, i8 noundef zeroext %encoding) unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %data, align 4, !tbaa !10
  %conv = zext i8 %encoding to i32
  %cmp = icmp eq i8 %encoding, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %conv, 15
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %do.body.i
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
    i32 10, label %sw.bb12
    i32 11, label %sw.bb15
    i32 12, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end
  %1 = load i32, ptr %0, align 4, !tbaa !6
  %add.ptr = getelementptr inbounds nuw i8, ptr %0, i32 4
  br label %sw.epilog

do.body.i:                                        ; preds = %if.end, %do.body.i
  %shift.0.i = phi i32 [ %add.i, %do.body.i ], [ 0, %if.end ]
  %result.0.i = phi i32 [ %or.i, %do.body.i ], [ 0, %if.end ]
  %p.0.i = phi ptr [ %incdec.ptr.i, %do.body.i ], [ %0, %if.end ]
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %p.0.i, i32 1
  %2 = load i8, ptr %p.0.i, align 1, !tbaa !13
  %3 = and i8 %2, 127
  %and.i = zext nneg i8 %3 to i32
  %shl.i = shl i32 %and.i, %shift.0.i
  %or.i = or i32 %shl.i, %result.0.i
  %add.i = add i32 %shift.0.i, 7
  %tobool.not.i = icmp sgt i8 %2, -1
  br i1 %tobool.not.i, label %sw.epilog, label %do.body.i, !llvm.loop !14

sw.bb4:                                           ; preds = %if.end
  %4 = load i16, ptr %0, align 2, !tbaa !17
  %conv5 = zext i16 %4 to i32
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %0, i32 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %5 = load i32, ptr %0, align 4, !tbaa !6
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %0, i32 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %6 = load i64, ptr %0, align 8, !tbaa !19
  %conv10 = trunc i64 %6 to i32
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %0, i32 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %7 = load i16, ptr %0, align 2, !tbaa !17
  %conv13 = sext i16 %7 to i32
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %0, i32 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %8 = load i32, ptr %0, align 4, !tbaa !6
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %0, i32 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %9 = load i64, ptr %0, align 8, !tbaa !19
  %conv18 = trunc i64 %9 to i32
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %0, i32 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  tail call void @__compilerrt_abort_impl(ptr noundef nonnull @.str, i32 noundef 166, ptr noundef nonnull @__func__.readEncodedPointer) #7
  unreachable

sw.epilog:                                        ; preds = %do.body.i, %sw.bb17, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb7, %sw.bb4, %sw.bb
  %p.0 = phi ptr [ %add.ptr, %sw.bb ], [ %add.ptr19, %sw.bb17 ], [ %add.ptr6, %sw.bb4 ], [ %add.ptr8, %sw.bb7 ], [ %add.ptr11, %sw.bb9 ], [ %add.ptr14, %sw.bb12 ], [ %add.ptr16, %sw.bb15 ], [ %incdec.ptr.i, %do.body.i ]
  %result.0 = phi i32 [ %1, %sw.bb ], [ %conv18, %sw.bb17 ], [ %conv5, %sw.bb4 ], [ %5, %sw.bb7 ], [ %conv10, %sw.bb9 ], [ %conv13, %sw.bb12 ], [ %8, %sw.bb15 ], [ %or.i, %do.body.i ]
  %and22 = lshr i32 %conv, 4
  %10 = and i32 %and22, 7
  switch i32 %10, label %sw.default25 [
    i32 0, label %sw.epilog26
    i32 1, label %sw.bb23
  ]

sw.bb23:                                          ; preds = %sw.epilog
  %11 = ptrtoint ptr %0 to i32
  %add = add i32 %result.0, %11
  br label %sw.epilog26

sw.default25:                                     ; preds = %sw.epilog
  tail call void @__compilerrt_abort_impl(ptr noundef nonnull @.str, i32 noundef 184, ptr noundef nonnull @__func__.readEncodedPointer) #7
  unreachable

sw.epilog26:                                      ; preds = %sw.bb23, %sw.epilog
  %result.1 = phi i32 [ %result.0, %sw.epilog ], [ %add, %sw.bb23 ]
  %tobool.not = icmp sgt i8 %encoding, -1
  br i1 %tobool.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %sw.epilog26
  %12 = inttoptr i32 %result.1 to ptr
  %13 = load i32, ptr %12, align 4, !tbaa !6
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %sw.epilog26
  %result.2 = phi i32 [ %13, %if.then29 ], [ %result.1, %sw.epilog26 ]
  store ptr %p.0, ptr %data, align 4, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end30
  %retval.0 = phi i32 [ %result.2, %if.end30 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local void @_Unwind_SetGR(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @_Unwind_SetIP(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare dso_local void @__compilerrt_abort_impl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin noreturn nounwind "no-builtins" }

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
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long long", !8, i64 0}
