; ModuleID = '../llvm-project/compiler-rt/lib/builtins/udivsi3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/udivsi3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local i32 @__udivsi3(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %b, i1 false)
  %1 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %a, i1 false)
  %sub.i = sub nsw i32 %0, %1
  %cmp.i = icmp ugt i32 %sub.i, 31
  br i1 %cmp.i, label %__udivXi3.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp6.i = icmp eq i32 %sub.i, 31
  br i1 %cmp6.i, label %__udivXi3.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %sub.i, 1
  %shr.i = lshr i32 %a, %inc.i
  %sub9.i = sub nuw nsw i32 31, %sub.i
  %shl.i = shl i32 %a, %sub9.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.end8.i
  %carry.047.i = phi i32 [ 0, %if.end8.i ], [ %and.i, %for.body.i ]
  %r.046.i = phi i32 [ %shr.i, %if.end8.i ], [ %sub19.i, %for.body.i ]
  %sr.045.i = phi i32 [ %inc.i, %if.end8.i ], [ %dec.i, %for.body.i ]
  %n.addr.044.i = phi i32 [ %shl.i, %if.end8.i ], [ %or14.i, %for.body.i ]
  %or.i = tail call i32 @llvm.fshl.i32(i32 %r.046.i, i32 %n.addr.044.i, i32 1)
  %shl13.i = shl i32 %n.addr.044.i, 1
  %or14.i = or disjoint i32 %shl13.i, %carry.047.i
  %2 = xor i32 %or.i, -1
  %sub16.i = add i32 %b, %2
  %and.i = lshr i32 %sub16.i, 31
  %isneg.i = icmp slt i32 %sub16.i, 0
  %and18.i = select i1 %isneg.i, i32 %b, i32 0
  %sub19.i = sub i32 %or.i, %and18.i
  %dec.i = add nsw i32 %sr.045.i, -1
  %cmp10.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp10.not.i, label %for.end.i, label %for.body.i, !llvm.loop !10

for.end.i:                                        ; preds = %for.body.i
  %shl20.i = shl i32 %or14.i, 1
  %or21.i = or disjoint i32 %and.i, %shl20.i
  br label %__udivXi3.exit

__udivXi3.exit:                                   ; preds = %entry, %if.end.i, %for.end.i
  %retval.0.i = phi i32 [ %or21.i, %for.end.i ], [ 0, %entry ], [ %a, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
