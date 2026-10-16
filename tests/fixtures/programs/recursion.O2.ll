; ModuleID = 'tests/programs/recursion.c'
source_filename = "tests/programs/recursion.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@cols = internal unnamed_addr global [8 x i32] zeroinitializer, align 4
@memo = internal unnamed_addr global [32 x [32 x i32]] zeroinitializer, align 4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ack(i32 noundef 2, i32 noundef 3) #3
  %call1 = tail call fastcc i32 @ack(i32 noundef 3, i32 noundef 3) #3
  %call3 = tail call fastcc i32 @fib(i32 noundef 20) #3
  %call6 = tail call fastcc i32 @hanoi(i32 noundef 12, i32 noundef 1, i32 noundef 3, i32 noundef 2) #3
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %cond.false.i.i, %entry
  %n.tr.i = phi i32 [ 301, %entry ], [ %sub.i.i, %cond.false.i.i ]
  switch i32 %n.tr.i, label %cond.false.i.i [
    i32 0, label %is_even.exit
    i32 1, label %is_even.exit.loopexit
  ]

cond.false.i.i:                                   ; preds = %tailrecurse.i
  %sub.i.i = add i32 %n.tr.i, -2
  br label %tailrecurse.i

is_even.exit.loopexit:                            ; preds = %tailrecurse.i
  br label %is_even.exit

is_even.exit:                                     ; preds = %tailrecurse.i, %is_even.exit.loopexit
  %cond.i = phi i32 [ 0, %is_even.exit.loopexit ], [ 2, %tailrecurse.i ]
  %mul = mul i32 %call, 1000
  %add = add i32 %mul, %call1
  %mul2 = mul i32 %add, 31
  %add4 = add i32 %mul2, %call3
  %mul5 = mul i32 %add4, 31
  %add7 = add i32 %mul5, %call6
  %mul8 = mul i32 %add7, 31
  %add11 = add i32 %cond.i, %mul8
  %0 = mul i32 %add11, 31
  %mul14 = add i32 %0, 31
  %call15 = tail call fastcc i32 @queens(i32 noundef 0) #3
  %add16 = add i32 %mul14, %call15
  %mul17 = mul i32 %add16, 31
  %call18 = tail call fastcc i32 @choose(i32 noundef 30, i32 noundef 15) #3
  %add19 = add i32 %mul17, %call18
  ret i32 %add19
}

; Function Attrs: nofree nosync nounwind memory(none)
define internal fastcc range(i32 -2147483647, -2147483648) i32 @ack(i32 noundef range(i32 0, 4) %m, i32 noundef %n) unnamed_addr #1 {
entry:
  %cmp15 = icmp eq i32 %m, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %tailrecurse.backedge, %entry
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %n.tr.be, %tailrecurse.backedge ]
  %add = add nsw i32 %n.tr.lcssa, 1
  ret i32 %add

cond.false:                                       ; preds = %entry, %tailrecurse.backedge
  %n.tr17 = phi i32 [ %n.tr.be, %tailrecurse.backedge ], [ %n, %entry ]
  %m.tr16 = phi i32 [ %m.tr.be, %tailrecurse.backedge ], [ %m, %entry ]
  %cmp1 = icmp eq i32 %n.tr17, 0
  br i1 %cmp1, label %tailrecurse.backedge, label %cond.false3

tailrecurse.backedge:                             ; preds = %cond.false, %cond.false3
  %n.tr.be = phi i32 [ %call6, %cond.false3 ], [ 1, %cond.false ]
  %m.tr.be = add nsw i32 %m.tr16, -1
  %cmp = icmp eq i32 %m.tr.be, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.false3:                                      ; preds = %cond.false
  %sub5 = add nsw i32 %n.tr17, -1
  %call6 = tail call fastcc i32 @ack(i32 noundef %m.tr16, i32 noundef %sub5) #3
  br label %tailrecurse.backedge
}

; Function Attrs: nofree nosync nounwind memory(none)
define internal fastcc i32 @fib(i32 noundef %n) unnamed_addr #1 {
entry:
  %cmp6 = icmp slt i32 %n, 2
  br i1 %cmp6, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry, %cond.false
  %n.tr8 = phi i32 [ %sub1, %cond.false ], [ %n, %entry ]
  %accumulator.tr7 = phi i32 [ %add, %cond.false ], [ 0, %entry ]
  %sub = add nsw i32 %n.tr8, -1
  %call = tail call fastcc i32 @fib(i32 noundef %sub) #3
  %sub1 = add nsw i32 %n.tr8, -2
  %add = add nsw i32 %call, %accumulator.tr7
  %cmp = icmp samesign ult i32 %n.tr8, 4
  br i1 %cmp, label %cond.end, label %cond.false

cond.end:                                         ; preds = %cond.false, %entry
  %accumulator.tr.lcssa = phi i32 [ 0, %entry ], [ %add, %cond.false ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub1, %cond.false ]
  %accumulator.ret.tr = add nsw i32 %n.tr.lcssa, %accumulator.tr.lcssa
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree nosync nounwind memory(none)
define internal fastcc i32 @hanoi(i32 noundef %n, i32 noundef range(i32 1, 4) %from, i32 noundef range(i32 1, 4) %to, i32 noundef range(i32 1, 4) %via) unnamed_addr #1 {
entry:
  %cmp9 = icmp eq i32 %n, 0
  br i1 %cmp9, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry, %cond.false
  %via.tr13 = phi i32 [ %from.tr12, %cond.false ], [ %via, %entry ]
  %from.tr12 = phi i32 [ %via.tr13, %cond.false ], [ %from, %entry ]
  %n.tr11 = phi i32 [ %sub, %cond.false ], [ %n, %entry ]
  %accumulator.tr10 = phi i32 [ %add3, %cond.false ], [ 0, %entry ]
  %sub = add nsw i32 %n.tr11, -1
  %call = tail call fastcc i32 @hanoi(i32 noundef %sub, i32 noundef %from.tr12, i32 noundef %via.tr13, i32 noundef %to) #3
  %add = add i32 %accumulator.tr10, 1
  %add3 = add i32 %add, %call
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %cond.end, label %cond.false

cond.end:                                         ; preds = %cond.false, %entry
  %accumulator.tr.lcssa = phi i32 [ 0, %entry ], [ %add3, %cond.false ]
  ret i32 %accumulator.tr.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @queens(i32 noundef range(i32 0, 9) %row) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %row, 8
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp342.not = icmp eq i32 %row, 0
  %arrayidx18 = getelementptr inbounds nuw i32, ptr @cols, i32 %row
  %add = add nuw nsw i32 %row, 1
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond.preheader, %if.end20
  %c.045 = phi i32 [ 0, %for.cond.preheader ], [ %inc22, %if.end20 ]
  %n.044 = phi i32 [ 0, %for.cond.preheader ], [ %n.1, %if.end20 ]
  br i1 %cmp342.not, label %if.then17, label %for.body5

for.cond.cleanup4:                                ; preds = %land.end15
  br i1 %cmp14, label %if.then17, label %if.end20

for.body5:                                        ; preds = %for.cond2.preheader, %land.end15
  %r.043 = phi i32 [ %inc, %land.end15 ], [ 0, %for.cond2.preheader ]
  %arrayidx = getelementptr inbounds nuw i32, ptr @cols, i32 %r.043
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !6
  %cmp6.not = icmp eq i32 %0, %c.045
  br i1 %cmp6.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body5
  %sub = sub nsw i32 %0, %c.045
  %sub8 = sub nsw i32 %row, %r.043
  %cmp9.not = icmp eq i32 %sub, %sub8
  br i1 %cmp9.not, label %if.end20, label %land.end15

land.end15:                                       ; preds = %land.lhs.true
  %sub12 = sub nsw i32 %c.045, %0
  %cmp14 = icmp ne i32 %sub12, %sub8
  %inc = add nuw nsw i32 %r.043, 1
  %cmp3 = icmp samesign ult i32 %inc, %row
  %1 = select i1 %cmp3, i1 %cmp14, i1 false
  br i1 %1, label %for.body5, label %for.cond.cleanup4, !llvm.loop !10

if.then17:                                        ; preds = %for.cond2.preheader, %for.cond.cleanup4
  store i32 %c.045, ptr %arrayidx18, align 4, !tbaa !6
  %call = tail call fastcc i32 @queens(i32 noundef %add) #3
  %add19 = add nsw i32 %call, %n.044
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true, %for.body5, %if.then17, %for.cond.cleanup4
  %n.1 = phi i32 [ %add19, %if.then17 ], [ %n.044, %for.cond.cleanup4 ], [ %n.044, %for.body5 ], [ %n.044, %land.lhs.true ]
  %inc22 = add nuw nsw i32 %c.045, 1
  %exitcond.not = icmp eq i32 %inc22, 8
  br i1 %exitcond.not, label %return, label %for.cond2.preheader, !llvm.loop !12

return:                                           ; preds = %if.end20, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %n.1, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @choose(i32 noundef %n, i32 noundef %k) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %k, 0
  %cmp1 = icmp eq i32 %k, %n
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %common.ret23, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [32 x i32], ptr @memo, i32 %n
  %arrayidx2 = getelementptr inbounds i32, ptr %arrayidx, i32 %k
  %0 = load i32, ptr %arrayidx2, align 4, !tbaa !6
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end6, label %common.ret23

common.ret23:                                     ; preds = %if.end, %entry, %if.end6
  %common.ret23.op = phi i32 [ %add, %if.end6 ], [ 1, %entry ], [ %0, %if.end ]
  ret i32 %common.ret23.op

if.end6:                                          ; preds = %if.end
  %sub = add nsw i32 %n, -1
  %sub7 = add nsw i32 %k, -1
  %call = tail call fastcc i32 @choose(i32 noundef %sub, i32 noundef %sub7) #3
  %call9 = tail call fastcc i32 @choose(i32 noundef %sub, i32 noundef %k) #3
  %add = add i32 %call9, %call
  store i32 %add, ptr %arrayidx2, align 4, !tbaa !6
  br label %common.ret23
}

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree nosync nounwind memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nobuiltin "no-builtins" }

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
!12 = distinct !{!12, !11}
