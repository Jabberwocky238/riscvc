; ModuleID = 'tests/programs/lists.c'
source_filename = "tests/programs/lists.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.Node = type { i32, ptr }
%struct.Tree = type { i32, ptr, ptr }

@pool = internal global [512 x %struct.Node] zeroinitializer, align 4
@used = internal unnamed_addr global i32 0, align 4
@tpool = internal global [512 x %struct.Tree] zeroinitializer, align 4
@tused = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %used.promoted = load i32, ptr @used, align 4, !tbaa !6
  br label %for.body

while.body.i:                                     ; preds = %for.body, %while.body.i
  %l.addr.08.i = phi ptr [ %0, %while.body.i ], [ %arrayidx.i, %for.body ]
  %prev.07.i = phi ptr [ %l.addr.08.i, %while.body.i ], [ null, %for.body ]
  %next.i = getelementptr inbounds nuw i8, ptr %l.addr.08.i, i32 4
  %0 = load ptr, ptr %next.i, align 4, !tbaa !10
  store ptr %prev.07.i, ptr %next.i, align 4, !tbaa !10
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %reverse.exit, label %while.body.i, !llvm.loop !14

reverse.exit:                                     ; preds = %while.body.i
  %1 = load i32, ptr %l.addr.08.i, align 4, !tbaa !16
  %call4 = tail call fastcc ptr @msort(ptr noundef nonnull %l.addr.08.i) #4
  %tobool.not49 = icmp eq ptr %call4, null
  br i1 %tobool.not49, label %for.end18, label %for.body7.preheader

for.body7.preheader:                              ; preds = %reverse.exit
  %next59 = getelementptr inbounds nuw i8, ptr %call4, i32 4
  %2 = load ptr, ptr %next59, align 4, !tbaa !10
  %tobool8.not60 = icmp eq ptr %2, null
  %.pre61 = load i32, ptr %call4, align 4, !tbaa !16
  br i1 %tobool8.not60, label %for.end18.loopexit, label %land.lhs.true

for.body:                                         ; preds = %entry, %for.body
  %i.048 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %root.047 = phi ptr [ null, %entry ], [ %call1, %for.body ]
  %s.046 = phi i32 [ 99, %entry ], [ %add, %for.body ]
  %l.045 = phi ptr [ null, %entry ], [ %arrayidx.i, %for.body ]
  %inc.i4344 = phi i32 [ %used.promoted, %entry ], [ %inc.i, %for.body ]
  %mul = mul i32 %s.046, 1664525
  %add = add i32 %mul, 1013904223
  %shr = lshr i32 %add, 16
  %rem.lhs.trunc = trunc nuw i32 %shr to i16
  %rem41 = urem i16 %rem.lhs.trunc, 1000
  %rem.zext = zext nneg i16 %rem41 to i32
  %inc.i = add nsw i32 %inc.i4344, 1
  store i32 %inc.i, ptr @used, align 4, !tbaa !6
  %arrayidx.i = getelementptr inbounds %struct.Node, ptr @pool, i32 %inc.i4344
  store i32 %rem.zext, ptr %arrayidx.i, align 4, !tbaa !16
  %next2.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i32 4
  store ptr %l.045, ptr %next2.i, align 4, !tbaa !10
  %call1 = tail call fastcc ptr @insert(ptr noundef %root.047, i32 noundef %rem.zext) #4
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 400
  br i1 %exitcond.not, label %while.body.i, label %for.body, !llvm.loop !17

land.lhs.true:                                    ; preds = %for.body7.preheader, %if.end
  %.pre63 = phi i32 [ %.pre, %if.end ], [ %.pre61, %for.body7.preheader ]
  %3 = phi ptr [ %5, %if.end ], [ %2, %for.body7.preheader ]
  %h.05062 = phi i32 [ %add15, %if.end ], [ %1, %for.body7.preheader ]
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %cmp12 = icmp sgt i32 %.pre63, %4
  br i1 %cmp12, label %cleanup22, label %if.end

if.end:                                           ; preds = %land.lhs.true
  %mul13 = mul i32 %h.05062, 3
  %add15 = add i32 %.pre63, %mul13
  %next = getelementptr inbounds nuw i8, ptr %3, i32 4
  %5 = load ptr, ptr %next, align 4, !tbaa !10
  %tobool8.not = icmp eq ptr %5, null
  %.pre = load i32, ptr %3, align 4, !tbaa !16
  br i1 %tobool8.not, label %for.end18.loopexit, label %land.lhs.true, !llvm.loop !18

for.end18.loopexit:                               ; preds = %if.end, %for.body7.preheader
  %h.050.lcssa = phi i32 [ %1, %for.body7.preheader ], [ %add15, %if.end ]
  %.pre.lcssa = phi i32 [ %.pre61, %for.body7.preheader ], [ %.pre, %if.end ]
  %mul1352 = mul i32 %h.050.lcssa, 3
  %add1553 = add i32 %.pre.lcssa, %mul1352
  br label %for.end18

for.end18:                                        ; preds = %for.end18.loopexit, %reverse.exit
  %h.0.lcssa = phi i32 [ %1, %reverse.exit ], [ %add1553, %for.end18.loopexit ]
  %call19 = tail call fastcc i32 @walk(ptr noundef %call1, i32 noundef 0) #4
  %call20 = tail call fastcc i32 @height(ptr noundef %call1) #4
  %shl = shl i32 %call20, 24
  %6 = xor i32 %call19, %h.0.lcssa
  %xor21 = xor i32 %6, %shl
  br label %cleanup22

cleanup22:                                        ; preds = %land.lhs.true, %for.end18
  %retval.1 = phi i32 [ %xor21, %for.end18 ], [ -1, %land.lhs.true ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc noundef ptr @insert(ptr noundef captures(address_is_null, ret: address, provenance) %t, i32 noundef range(i32 0, 1000) %k) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @tused, align 4, !tbaa !6
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @tused, align 4, !tbaa !6
  %arrayidx = getelementptr inbounds %struct.Tree, ptr @tpool, i32 %0
  store i32 %k, ptr %arrayidx, align 4, !tbaa !19
  %r = getelementptr inbounds nuw i8, ptr %arrayidx, i32 8
  store ptr null, ptr %r, align 4, !tbaa !22
  %l = getelementptr inbounds nuw i8, ptr %arrayidx, i32 4
  store ptr null, ptr %l, align 4, !tbaa !23
  br label %common.ret28

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %t, align 4, !tbaa !19
  %cmp = icmp slt i32 %k, %1
  br i1 %cmp, label %if.then2, label %if.else

common.ret28:                                     ; preds = %if.else, %if.then, %if.then7, %if.then2
  %common.ret28.op = phi ptr [ %t, %if.then7 ], [ %t, %if.then2 ], [ %t, %if.else ], [ %arrayidx, %if.then ]
  ret ptr %common.ret28.op

if.then2:                                         ; preds = %if.end
  %l3 = getelementptr inbounds nuw i8, ptr %t, i32 4
  %2 = load ptr, ptr %l3, align 4, !tbaa !23
  %call = tail call fastcc ptr @insert(ptr noundef %2, i32 noundef %k) #4
  store ptr %call, ptr %l3, align 4, !tbaa !23
  br label %common.ret28

if.else:                                          ; preds = %if.end
  %cmp6 = icmp sgt i32 %k, %1
  br i1 %cmp6, label %if.then7, label %common.ret28

if.then7:                                         ; preds = %if.else
  %r8 = getelementptr inbounds nuw i8, ptr %t, i32 8
  %3 = load ptr, ptr %r8, align 4, !tbaa !22
  %call9 = tail call fastcc ptr @insert(ptr noundef %3, i32 noundef %k) #4
  store ptr %call9, ptr %r8, align 4, !tbaa !22
  br label %common.ret28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc ptr @msort(ptr noundef %l) unnamed_addr #0 {
entry:
  %head.i = alloca %struct.Node, align 8
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %next = getelementptr inbounds nuw i8, ptr %l, i32 4
  %0 = load ptr, ptr %next, align 4, !tbaa !10
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %return, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %while.body
  %fast.024 = phi ptr [ %3, %while.body ], [ %0, %lor.lhs.false ]
  %slow.023 = phi ptr [ %2, %while.body ], [ %l, %lor.lhs.false ]
  %next4 = getelementptr inbounds nuw i8, ptr %fast.024, i32 4
  %1 = load ptr, ptr %next4, align 4, !tbaa !10
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %next6 = getelementptr inbounds nuw i8, ptr %slow.023, i32 4
  %2 = load ptr, ptr %next6, align 4, !tbaa !10
  %next8 = getelementptr inbounds nuw i8, ptr %1, i32 4
  %3 = load ptr, ptr %next8, align 4, !tbaa !10
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %while.end, label %land.rhs, !llvm.loop !24

while.end:                                        ; preds = %while.body, %land.rhs
  %slow.0.lcssa = phi ptr [ %2, %while.body ], [ %slow.023, %land.rhs ]
  %next9 = getelementptr inbounds nuw i8, ptr %slow.0.lcssa, i32 4
  %4 = load ptr, ptr %next9, align 4, !tbaa !10
  store ptr null, ptr %next9, align 4, !tbaa !10
  %call = tail call fastcc ptr @msort(ptr noundef nonnull %l) #4
  %call11 = tail call fastcc ptr @msort(ptr noundef %4) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %head.i) #5
  store i64 0, ptr %head.i, align 8
  %tobool22.i = icmp ne ptr %call, null
  %tobool123.i = icmp ne ptr %call11, null
  %5 = and i1 %tobool22.i, %tobool123.i
  br i1 %5, label %while.body.i, label %merge.exit

while.body.i:                                     ; preds = %while.end, %if.end.i
  %t.026.i = phi ptr [ %10, %if.end.i ], [ %head.i, %while.end ]
  %b.addr.025.i = phi ptr [ %b.addr.1.i, %if.end.i ], [ %call11, %while.end ]
  %a.addr.024.i = phi ptr [ %a.addr.1.i, %if.end.i ], [ %call, %while.end ]
  %6 = load i32, ptr %a.addr.024.i, align 4, !tbaa !16
  %7 = load i32, ptr %b.addr.025.i, align 4, !tbaa !16
  %cmp.not.i = icmp sgt i32 %6, %7
  %next4.i = getelementptr inbounds nuw i8, ptr %t.026.i, i32 4
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  store ptr %a.addr.024.i, ptr %next4.i, align 4, !tbaa !10
  %next3.i = getelementptr inbounds nuw i8, ptr %a.addr.024.i, i32 4
  %8 = load ptr, ptr %next3.i, align 4, !tbaa !10
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  store ptr %b.addr.025.i, ptr %next4.i, align 4, !tbaa !10
  %next5.i = getelementptr inbounds nuw i8, ptr %b.addr.025.i, i32 4
  %9 = load ptr, ptr %next5.i, align 4, !tbaa !10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %10 = phi ptr [ %a.addr.024.i, %if.then.i ], [ %b.addr.025.i, %if.else.i ]
  %a.addr.1.i = phi ptr [ %8, %if.then.i ], [ %a.addr.024.i, %if.else.i ]
  %b.addr.1.i = phi ptr [ %b.addr.025.i, %if.then.i ], [ %9, %if.else.i ]
  %tobool.i = icmp ne ptr %a.addr.1.i, null
  %tobool1.i = icmp ne ptr %b.addr.1.i, null
  %11 = select i1 %tobool.i, i1 %tobool1.i, i1 false
  br i1 %11, label %while.body.i, label %merge.exit, !llvm.loop !25

merge.exit:                                       ; preds = %if.end.i, %while.end
  %a.addr.0.lcssa.i = phi ptr [ %call, %while.end ], [ %a.addr.1.i, %if.end.i ]
  %b.addr.0.lcssa.i = phi ptr [ %call11, %while.end ], [ %b.addr.1.i, %if.end.i ]
  %t.0.lcssa.i = phi ptr [ %head.i, %while.end ], [ %10, %if.end.i ]
  %tobool.lcssa.i = phi i1 [ %tobool22.i, %while.end ], [ %tobool.i, %if.end.i ]
  %cond.i = select i1 %tobool.lcssa.i, ptr %a.addr.0.lcssa.i, ptr %b.addr.0.lcssa.i
  %next8.i = getelementptr inbounds nuw i8, ptr %t.0.lcssa.i, i32 4
  store ptr %cond.i, ptr %next8.i, align 4, !tbaa !10
  %next9.i = getelementptr inbounds nuw i8, ptr %head.i, i32 4
  %12 = load ptr, ptr %next9.i, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %head.i) #5
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %merge.exit
  %retval.0 = phi ptr [ %12, %merge.exit ], [ %l, %lor.lhs.false ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @walk(ptr noundef readonly captures(address_is_null) %t, i32 noundef %h) unnamed_addr #2 {
entry:
  %tobool.not6 = icmp eq ptr %t, null
  br i1 %tobool.not6, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry, %cond.true
  %h.tr8 = phi i32 [ %add, %cond.true ], [ %h, %entry ]
  %t.tr7 = phi ptr [ %0, %cond.true ], [ %t, %entry ]
  %r = getelementptr inbounds nuw i8, ptr %t.tr7, i32 8
  %0 = load ptr, ptr %r, align 4, !tbaa !22
  %l = getelementptr inbounds nuw i8, ptr %t.tr7, i32 4
  %1 = load ptr, ptr %l, align 4, !tbaa !23
  %call = tail call fastcc i32 @walk(ptr noundef %1, i32 noundef %h.tr8) #4
  %mul = mul i32 %call, 7
  %2 = load i32, ptr %t.tr7, align 4, !tbaa !19
  %add = add i32 %mul, %2
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.end:                                         ; preds = %cond.true, %entry
  %h.tr.lcssa = phi i32 [ %h, %entry ], [ %add, %cond.true ]
  ret i32 %h.tr.lcssa
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc range(i32 -2147483646, -2147483648) i32 @height(ptr noundef readonly captures(address_is_null) %t) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %common.ret6, label %if.end

common.ret6:                                      ; preds = %entry, %if.end
  %common.ret6.op = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %common.ret6.op

if.end:                                           ; preds = %entry
  %l = getelementptr inbounds nuw i8, ptr %t, i32 4
  %0 = load ptr, ptr %l, align 4, !tbaa !23
  %call = tail call fastcc i32 @height(ptr noundef %0) #4
  %r = getelementptr inbounds nuw i8, ptr %t, i32 8
  %1 = load ptr, ptr %r, align 4, !tbaa !22
  %call1 = tail call fastcc i32 @height(ptr noundef %1) #4
  %cond = tail call i32 @llvm.smax.i32(i32 %call, i32 %call1)
  %add = add nsw i32 %cond, 1
  br label %common.ret6
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!10 = !{!11, !12, i64 4}
!11 = !{!"Node", !7, i64 0, !12, i64 4}
!12 = !{!"p1 _ZTS4Node", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!11, !7, i64 0}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!20, !7, i64 0}
!20 = !{!"Tree", !7, i64 0, !21, i64 4, !21, i64 8}
!21 = !{!"p1 _ZTS4Tree", !13, i64 0}
!22 = !{!20, !21, i64 8}
!23 = !{!20, !21, i64 4}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
