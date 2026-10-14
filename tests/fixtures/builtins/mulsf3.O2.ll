; ModuleID = '../llvm-project/compiler-rt/lib/builtins/mulsf3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/mulsf3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local float @__mulsf3(float noundef %a, float noundef %b) local_unnamed_addr #0 {
entry:
  %0 = bitcast float %a to i32
  %shr.i = lshr i32 %0, 23
  %and.i = and i32 %shr.i, 255
  %1 = bitcast float %b to i32
  %shr2.i = lshr i32 %1, 23
  %and3.i = and i32 %shr2.i, 255
  %xor.i = xor i32 %1, %0
  %and6.i = and i32 %xor.i, -2147483648
  %and8.i = and i32 %0, 8388607
  %and10.i = and i32 %1, 8388607
  %2 = add nsw i32 %and.i, -255
  %cmp.i = icmp ult i32 %2, -254
  %3 = add nsw i32 %and3.i, -255
  %cmp12.i = icmp ult i32 %3, -254
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp12.i
  br i1 %or.cond.i, label %if.then.i, label %if.end61.i

if.then.i:                                        ; preds = %entry
  %4 = tail call float @llvm.fabs.f32(float %a)
  %and14.i = bitcast float %4 to i32
  %5 = tail call float @llvm.fabs.f32(float %b)
  %and16.i = bitcast float %5 to i32
  %cmp17.i = icmp samesign ugt i32 %and14.i, 2139095040
  br i1 %cmp17.i, label %if.then18.i, label %if.end.i

if.then18.i:                                      ; preds = %if.then.i
  %or.i = or i32 %0, 4194304
  %6 = bitcast i32 %or.i to float
  br label %__mulXf3__.exit

if.end.i:                                         ; preds = %if.then.i
  %cmp21.i = icmp samesign ugt i32 %and16.i, 2139095040
  br i1 %cmp21.i, label %if.then22.i, label %if.end26.i

if.then22.i:                                      ; preds = %if.end.i
  %or24.i = or i32 %1, 4194304
  %7 = bitcast i32 %or24.i to float
  br label %__mulXf3__.exit

if.end26.i:                                       ; preds = %if.end.i
  %cmp27.i = icmp eq i32 %and14.i, 2139095040
  br i1 %cmp27.i, label %if.then28.i, label %if.end33.i

if.then28.i:                                      ; preds = %if.end26.i
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %__mulXf3__.exit, label %if.then29.i

if.then29.i:                                      ; preds = %if.then28.i
  %or30.i = or disjoint i32 %and6.i, 2139095040
  %8 = bitcast i32 %or30.i to float
  br label %__mulXf3__.exit

if.end33.i:                                       ; preds = %if.end26.i
  %cmp34.i = icmp eq i32 %and16.i, 2139095040
  %tobool36.not.i = icmp eq i32 %and14.i, 0
  br i1 %cmp34.i, label %if.then35.i, label %if.end42.i

if.then35.i:                                      ; preds = %if.end33.i
  br i1 %tobool36.not.i, label %__mulXf3__.exit, label %if.then37.i

if.then37.i:                                      ; preds = %if.then35.i
  %or38.i = or disjoint i32 %and6.i, 2139095040
  %9 = bitcast i32 %or38.i to float
  br label %__mulXf3__.exit

if.end42.i:                                       ; preds = %if.end33.i
  br i1 %tobool36.not.i, label %if.then44.i, label %if.end46.i

if.then44.i:                                      ; preds = %if.end42.i
  %10 = bitcast i32 %and6.i to float
  br label %__mulXf3__.exit

if.end46.i:                                       ; preds = %if.end42.i
  %tobool47.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %if.end50.i

if.then48.i:                                      ; preds = %if.end46.i
  %11 = bitcast i32 %and6.i to float
  br label %__mulXf3__.exit

if.end50.i:                                       ; preds = %if.end46.i
  %cmp51.i = icmp samesign ult i32 %and14.i, 8388608
  br i1 %cmp51.i, label %if.then52.i, label %if.end54.i

if.then52.i:                                      ; preds = %if.end50.i
  %12 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and8.i, i1 true)
  %sub.i.i = add nsw i32 %12, -8
  %shl.i.i = shl i32 %and8.i, %sub.i.i
  %sub2.i.i = sub nsw i32 9, %12
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then52.i, %if.end50.i
  %aSignificand.0.i = phi i32 [ %shl.i.i, %if.then52.i ], [ %and8.i, %if.end50.i ]
  %scale.0.i = phi i32 [ %sub2.i.i, %if.then52.i ], [ 0, %if.end50.i ]
  %cmp55.i = icmp samesign ult i32 %and16.i, 8388608
  br i1 %cmp55.i, label %if.then56.i, label %if.end61.i

if.then56.i:                                      ; preds = %if.end54.i
  %13 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and10.i, i1 true)
  %sub.i147.i = add nsw i32 %13, -8
  %shl.i148.i = shl i32 %and10.i, %sub.i147.i
  %reass.sub = sub nsw i32 %scale.0.i, %13
  %add58.i = add nsw i32 %reass.sub, 9
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then56.i, %if.end54.i, %entry
  %aSignificand.2.i = phi i32 [ %and8.i, %entry ], [ %aSignificand.0.i, %if.end54.i ], [ %aSignificand.0.i, %if.then56.i ]
  %bSignificand.1.i = phi i32 [ %and10.i, %entry ], [ %and10.i, %if.end54.i ], [ %shl.i148.i, %if.then56.i ]
  %scale.3.i = phi i32 [ 0, %entry ], [ %scale.0.i, %if.end54.i ], [ %add58.i, %if.then56.i ]
  %or62.i = or i32 %aSignificand.2.i, 8388608
  %or63.i = shl i32 %bSignificand.1.i, 8
  %shl.i = or i32 %or63.i, -2147483648
  %conv.i.i = zext i32 %or62.i to i64
  %conv1.i.i = zext i32 %shl.i to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc nuw i64 %shr.i.i to i32
  %conv3.i.i = trunc i64 %mul.i.i to i32
  %add64.i = add nsw i32 %and.i, -127
  %sub65.i = add nsw i32 %add64.i, %and3.i
  %add66.i = add nsw i32 %sub65.i, %scale.3.i
  %and67.i = and i32 %conv2.i.i, 8388608
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.else70.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.end61.i
  %inc.i = add nsw i32 %add66.i, 1
  br label %if.end71.i

if.else70.i:                                      ; preds = %if.end61.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %conv2.i.i, i32 %conv3.i.i, i32 1)
  %shl1.i.i = shl i32 %conv3.i.i, 1
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else70.i, %if.then69.i
  %productHi.0.i = phi i32 [ %or.i.i, %if.else70.i ], [ %conv2.i.i, %if.then69.i ]
  %productLo.0.i = phi i32 [ %shl1.i.i, %if.else70.i ], [ %conv3.i.i, %if.then69.i ]
  %productExponent.0.i = phi i32 [ %add66.i, %if.else70.i ], [ %inc.i, %if.then69.i ]
  %cmp72.i = icmp sgt i32 %productExponent.0.i, 254
  br i1 %cmp72.i, label %if.then73.i, label %if.end76.i

if.then73.i:                                      ; preds = %if.end71.i
  %or74.i = or disjoint i32 %and6.i, 2139095040
  %14 = bitcast i32 %or74.i to float
  br label %__mulXf3__.exit

if.end76.i:                                       ; preds = %if.end71.i
  %cmp77.i = icmp slt i32 %productExponent.0.i, 1
  br i1 %cmp77.i, label %if.then78.i, label %if.else87.i

if.then78.i:                                      ; preds = %if.end76.i
  %sub79.i = sub nsw i32 1, %productExponent.0.i
  %cmp80.i = icmp samesign ult i32 %sub79.i, 32
  br i1 %cmp80.i, label %cleanup84.thread.i, label %cleanup84.i

cleanup84.thread.i:                               ; preds = %if.then78.i
  %sub.i150.i = add nsw i32 %productExponent.0.i, 31
  %shl.i151.i = shl i32 %productLo.0.i, %sub.i150.i
  %cmp1.i.i = icmp ne i32 %shl.i151.i, 0
  %shl3.i.i = shl i32 %productHi.0.i, %sub.i150.i
  %shr.i152.i = lshr i32 %productLo.0.i, %sub79.i
  %or.i153.i = add nuw nsw i32 %shl3.i.i, %shr.i152.i
  %conv.i154.i = zext i1 %cmp1.i.i to i32
  %or4.i.i = or i32 %or.i153.i, %conv.i154.i
  %shr5.i.i = lshr i32 %productHi.0.i, %sub79.i
  br label %if.end91.i

cleanup84.i:                                      ; preds = %if.then78.i
  %15 = bitcast i32 %and6.i to float
  br label %__mulXf3__.exit

if.else87.i:                                      ; preds = %if.end76.i
  %and88.i = and i32 %productHi.0.i, 8388607
  %shl89.i = shl nuw nsw i32 %productExponent.0.i, 23
  %or90.i = or disjoint i32 %shl89.i, %and88.i
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.else87.i, %cleanup84.thread.i
  %productHi.2.i = phi i32 [ %shr5.i.i, %cleanup84.thread.i ], [ %or90.i, %if.else87.i ]
  %productLo.2.i = phi i32 [ %or4.i.i, %cleanup84.thread.i ], [ %productLo.0.i, %if.else87.i ]
  %or92.i = or i32 %productHi.2.i, %and6.i
  %cmp93.i = icmp ugt i32 %productLo.2.i, -2147483648
  br i1 %cmp93.i, label %if.end96.thread.i, label %if.end96.i

if.end96.thread.i:                                ; preds = %if.end91.i
  %inc95.i = add i32 %or92.i, 1
  br label %if.end101.i

if.end96.i:                                       ; preds = %if.end91.i
  %cmp97.i = icmp eq i32 %productLo.2.i, -2147483648
  br i1 %cmp97.i, label %if.then98.i, label %if.end101.i

if.then98.i:                                      ; preds = %if.end96.i
  %and99.i = and i32 %productHi.2.i, 1
  %add100.i = add i32 %or92.i, %and99.i
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then98.i, %if.end96.i, %if.end96.thread.i
  %productHi.4.i = phi i32 [ %add100.i, %if.then98.i ], [ %or92.i, %if.end96.i ], [ %inc95.i, %if.end96.thread.i ]
  %16 = bitcast i32 %productHi.4.i to float
  br label %__mulXf3__.exit

__mulXf3__.exit:                                  ; preds = %if.then18.i, %if.then22.i, %if.then28.i, %if.then29.i, %if.then35.i, %if.then37.i, %if.then44.i, %if.then48.i, %if.then73.i, %cleanup84.i, %if.end101.i
  %retval.4.i = phi float [ %15, %cleanup84.i ], [ %14, %if.then73.i ], [ %16, %if.end101.i ], [ 0x7FF8000000000000, %if.then35.i ], [ %11, %if.then48.i ], [ %10, %if.then44.i ], [ 0x7FF8000000000000, %if.then28.i ], [ %9, %if.then37.i ], [ %8, %if.then29.i ], [ %7, %if.then22.i ], [ %6, %if.then18.i ]
  ret float %retval.4.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
