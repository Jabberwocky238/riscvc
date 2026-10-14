; ModuleID = '../llvm-project/compiler-rt/lib/builtins/umoddi3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/umoddi3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local i64 @__umoddi3(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %tobool.not.i = icmp eq i64 %b, 0
  br i1 %tobool.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %b, i1 true)
  %cast.i = trunc nuw nsw i64 %0 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry
  %cond.i = phi i32 [ %cast.i, %cond.true.i ], [ 64, %entry ]
  %tobool1.not.i = icmp eq i64 %a, 0
  br i1 %tobool1.not.i, label %cond.end5.i, label %cond.true2.i

cond.true2.i:                                     ; preds = %cond.end.i
  %1 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %a, i1 true)
  %cast3.i = trunc nuw nsw i64 %1 to i32
  br label %cond.end5.i

cond.end5.i:                                      ; preds = %cond.true2.i, %cond.end.i
  %cond6.i = phi i32 [ %cast3.i, %cond.true2.i ], [ 64, %cond.end.i ]
  %sub.i = sub nsw i32 %cond.i, %cond6.i
  %cmp.i = icmp ugt i32 %sub.i, 63
  br i1 %cmp.i, label %__umodXi3.exit, label %if.end.i

if.end.i:                                         ; preds = %cond.end5.i
  %cmp7.i = icmp eq i32 %sub.i, 63
  br i1 %cmp7.i, label %__umodXi3.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %sub.i, 1
  %sh_prom.i = zext nneg i32 %inc.i to i64
  %shr.i = lshr i64 %a, %sh_prom.i
  %sub10.i = sub nuw nsw i32 63, %sub.i
  %sh_prom11.i = zext nneg i32 %sub10.i to i64
  %shl.i = shl i64 %a, %sh_prom11.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.end9.i
  %carry.045.i = phi i64 [ 0, %if.end9.i ], [ %and.i, %for.body.i ]
  %r.044.i = phi i64 [ %shr.i, %if.end9.i ], [ %sub21.i, %for.body.i ]
  %sr.043.i = phi i32 [ %inc.i, %if.end9.i ], [ %dec.i, %for.body.i ]
  %n.addr.042.i = phi i64 [ %shl.i, %if.end9.i ], [ %or16.i, %for.body.i ]
  %or.i = tail call i64 @llvm.fshl.i64(i64 %r.044.i, i64 %n.addr.042.i, i64 1)
  %shl15.i = shl i64 %n.addr.042.i, 1
  %or16.i = or disjoint i64 %shl15.i, %carry.045.i
  %2 = xor i64 %or.i, -1
  %sub18.i = add i64 %b, %2
  %and.i = lshr i64 %sub18.i, 63
  %isneg.i = icmp slt i64 %sub18.i, 0
  %and20.i = select i1 %isneg.i, i64 %b, i64 0
  %sub21.i = sub i64 %or.i, %and20.i
  %dec.i = add nsw i32 %sr.043.i, -1
  %cmp12.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp12.not.i, label %__umodXi3.exit, label %for.body.i, !llvm.loop !10

__umodXi3.exit:                                   ; preds = %for.body.i, %cond.end5.i, %if.end.i
  %retval.0.i = phi i64 [ 0, %if.end.i ], [ %a, %cond.end5.i ], [ %sub21.i, %for.body.i ]
  ret i64 %retval.0.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
