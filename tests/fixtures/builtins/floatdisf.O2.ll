; ModuleID = '../llvm-project/compiler-rt/lib/builtins/floatdisf.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/floatdisf.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local float @__floatdisf(i64 noundef %a) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp eq i64 %a, 0
  br i1 %cmp.i, label %__floatXiYf__.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %shr.i = ashr i64 %a, 63
  %xor.i = xor i64 %shr.i, %a
  %sub.i = sub i64 %xor.i, %shr.i
  %0 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %sub.i, i1 true)
  %cast.i.i = trunc nuw nsw i64 %0 to i32
  %sub1.i = sub nuw nsw i32 64, %cast.i.i
  %sub2.i = xor i32 %cast.i.i, 63
  %cmp3.i = icmp samesign ult i32 %cast.i.i, 40
  br i1 %cmp3.i, label %if.then4.i, label %if.else30.i

if.then4.i:                                       ; preds = %if.end.i
  switch i32 %cast.i.i, label %if.else9.i [
    i32 39, label %if.then6.i
    i32 38, label %if.end18.i
  ]

if.then6.i:                                       ; preds = %if.then4.i
  %shl.i = shl i64 %sub.i, 1
  br label %if.end18.i

if.else9.i:                                       ; preds = %if.then4.i
  %sub10.i = sub nuw nsw i32 38, %cast.i.i
  %sh_prom.i = zext nneg i32 %sub10.i to i64
  %shr11.i = lshr i64 %sub.i, %sh_prom.i
  %sub12.i = add nuw nsw i32 %cast.i.i, 26
  %sh_prom13.i = zext nneg i32 %sub12.i to i64
  %shr14.i = lshr i64 -1, %sh_prom13.i
  %and.i = and i64 %shr14.i, %sub.i
  %cmp15.i = icmp ne i64 %and.i, 0
  %conv16.i = zext i1 %cmp15.i to i64
  %or.i = or i64 %shr11.i, %conv16.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else9.i, %if.then6.i, %if.then4.i
  %a.addr.0.i = phi i64 [ %shl.i, %if.then6.i ], [ %sub.i, %if.then4.i ], [ %or.i, %if.else9.i ]
  %1 = trunc i64 %a.addr.0.i to i32
  %2 = lshr i32 %1, 2
  %conv21.i = and i32 %2, 1
  %conv22.i = zext nneg i32 %conv21.i to i64
  %or23.i = or i64 %a.addr.0.i, %conv22.i
  %inc.i = add nsw i64 %or23.i, 1
  %shr24.i = lshr i64 %inc.i, 2
  %3 = and i64 %inc.i, 67108864
  %tobool.not.i = icmp eq i64 %3, 0
  %extract.t66.i = trunc i64 %shr24.i to i32
  br i1 %tobool.not.i, label %if.end34.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end18.i
  %shr27.i = lshr i64 %inc.i, 3
  %extract.t.i = trunc i64 %shr27.i to i32
  br label %if.end34.i

if.else30.i:                                      ; preds = %if.end.i
  %sub31.i = add nsw i32 %cast.i.i, -40
  %sh_prom32.i = zext nneg i32 %sub31.i to i64
  %shl33.i = shl i64 %sub.i, %sh_prom32.i
  %extract.t67.i = trunc i64 %shl33.i to i32
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else30.i, %if.then26.i, %if.end18.i
  %e.0.i = phi i32 [ %sub1.i, %if.then26.i ], [ %sub2.i, %if.end18.i ], [ %sub2.i, %if.else30.i ]
  %a.addr.1.off0.i = phi i32 [ %extract.t.i, %if.then26.i ], [ %extract.t66.i, %if.end18.i ], [ %extract.t67.i, %if.else30.i ]
  %conv35.i = trunc nsw i64 %shr.i to i32
  %and36.i = and i32 %conv35.i, -2147483648
  %add.i = shl nuw nsw i32 %e.0.i, 23
  %shl37.i = add nuw nsw i32 %add.i, 1065353216
  %or38.i = or disjoint i32 %shl37.i, %and36.i
  %and40.i = and i32 %a.addr.1.off0.i, 8388607
  %or41.i = or disjoint i32 %or38.i, %and40.i
  %4 = bitcast i32 %or41.i to float
  br label %__floatXiYf__.exit

__floatXiYf__.exit:                               ; preds = %entry, %if.end34.i
  %retval.0.i = phi float [ %4, %if.end34.i ], [ 0.000000e+00, %entry ]
  ret float %retval.0.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
