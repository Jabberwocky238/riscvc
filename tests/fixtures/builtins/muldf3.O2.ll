; ModuleID = '../llvm-project/compiler-rt/lib/builtins/muldf3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/muldf3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local double @__muldf3(double noundef %a, double noundef %b) local_unnamed_addr #0 {
entry:
  %0 = bitcast double %a to i64
  %shr.i = lshr i64 %0, 52
  %1 = trunc nuw nsw i64 %shr.i to i32
  %conv.i = and i32 %1, 2047
  %2 = bitcast double %b to i64
  %shr2.i = lshr i64 %2, 52
  %3 = trunc nuw nsw i64 %shr2.i to i32
  %conv4.i = and i32 %3, 2047
  %xor.i = xor i64 %2, %0
  %and7.i = and i64 %xor.i, -9223372036854775808
  %and9.i = and i64 %0, 4503599627370495
  %and11.i = and i64 %2, 4503599627370495
  %4 = add nsw i32 %conv.i, -2047
  %cmp.i = icmp ult i32 %4, -2046
  %5 = add nsw i32 %conv4.i, -2047
  %cmp14.i = icmp ult i32 %5, -2046
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp14.i
  br i1 %or.cond.i, label %if.then.i, label %if.end70.i

if.then.i:                                        ; preds = %entry
  %6 = tail call double @llvm.fabs.f64(double %a)
  %and17.i = bitcast double %6 to i64
  %7 = tail call double @llvm.fabs.f64(double %b)
  %and19.i = bitcast double %7 to i64
  %cmp20.i = icmp samesign ugt i64 %and17.i, 9218868437227405312
  br i1 %cmp20.i, label %if.then22.i, label %if.end.i

if.then22.i:                                      ; preds = %if.then.i
  %or.i = or i64 %0, 2251799813685248
  %8 = bitcast i64 %or.i to double
  br label %__mulXf3__.exit

if.end.i:                                         ; preds = %if.then.i
  %cmp25.i = icmp samesign ugt i64 %and19.i, 9218868437227405312
  br i1 %cmp25.i, label %if.then27.i, label %if.end31.i

if.then27.i:                                      ; preds = %if.end.i
  %or29.i = or i64 %2, 2251799813685248
  %9 = bitcast i64 %or29.i to double
  br label %__mulXf3__.exit

if.end31.i:                                       ; preds = %if.end.i
  %cmp32.i = icmp eq i64 %and17.i, 9218868437227405312
  br i1 %cmp32.i, label %if.then34.i, label %if.end39.i

if.then34.i:                                      ; preds = %if.end31.i
  %tobool.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool.not.i, label %__mulXf3__.exit, label %if.then35.i

if.then35.i:                                      ; preds = %if.then34.i
  %or36.i = or disjoint i64 %and7.i, 9218868437227405312
  %10 = bitcast i64 %or36.i to double
  br label %__mulXf3__.exit

if.end39.i:                                       ; preds = %if.end31.i
  %cmp40.i = icmp eq i64 %and19.i, 9218868437227405312
  %tobool43.not.i = icmp eq i64 %and17.i, 0
  br i1 %cmp40.i, label %if.then42.i, label %if.end49.i

if.then42.i:                                      ; preds = %if.end39.i
  br i1 %tobool43.not.i, label %__mulXf3__.exit, label %if.then44.i

if.then44.i:                                      ; preds = %if.then42.i
  %or45.i = or disjoint i64 %and7.i, 9218868437227405312
  %11 = bitcast i64 %or45.i to double
  br label %__mulXf3__.exit

if.end49.i:                                       ; preds = %if.end39.i
  br i1 %tobool43.not.i, label %if.then51.i, label %if.end53.i

if.then51.i:                                      ; preds = %if.end49.i
  %12 = bitcast i64 %and7.i to double
  br label %__mulXf3__.exit

if.end53.i:                                       ; preds = %if.end49.i
  %tobool54.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool54.not.i, label %if.then55.i, label %if.end57.i

if.then55.i:                                      ; preds = %if.end53.i
  %13 = bitcast i64 %and7.i to double
  br label %__mulXf3__.exit

if.end57.i:                                       ; preds = %if.end53.i
  %cmp58.i = icmp samesign ult i64 %and17.i, 4503599627370496
  br i1 %cmp58.i, label %if.then60.i, label %if.end62.i

if.then60.i:                                      ; preds = %if.end57.i
  %14 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and9.i, i1 true)
  %cast.i.i.i = trunc nuw nsw i64 %14 to i32
  %sub.i.i = add nsw i32 %cast.i.i.i, -11
  %sh_prom.i.i = zext nneg i32 %sub.i.i to i64
  %shl.i.i = shl i64 %and9.i, %sh_prom.i.i
  %sub2.i.i = sub nsw i32 12, %cast.i.i.i
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then60.i, %if.end57.i
  %aSignificand.0.i = phi i64 [ %shl.i.i, %if.then60.i ], [ %and9.i, %if.end57.i ]
  %scale.0.i = phi i32 [ %sub2.i.i, %if.then60.i ], [ 0, %if.end57.i ]
  %cmp63.i = icmp samesign ult i64 %and19.i, 4503599627370496
  br i1 %cmp63.i, label %if.then65.i, label %if.end70.i

if.then65.i:                                      ; preds = %if.end62.i
  %15 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and11.i, i1 true)
  %cast.i.i164.i = trunc nuw nsw i64 %15 to i32
  %sub.i165.i = add nsw i32 %cast.i.i164.i, -11
  %sh_prom.i166.i = zext nneg i32 %sub.i165.i to i64
  %shl.i167.i = shl i64 %and11.i, %sh_prom.i166.i
  %reass.sub = sub nsw i32 %scale.0.i, %cast.i.i164.i
  %add67.i = add nsw i32 %reass.sub, 12
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then65.i, %if.end62.i, %entry
  %aSignificand.2.i = phi i64 [ %and9.i, %entry ], [ %aSignificand.0.i, %if.end62.i ], [ %aSignificand.0.i, %if.then65.i ]
  %bSignificand.1.i = phi i64 [ %and11.i, %entry ], [ %and11.i, %if.end62.i ], [ %shl.i167.i, %if.then65.i ]
  %scale.3.i = phi i32 [ 0, %entry ], [ %scale.0.i, %if.end62.i ], [ %add67.i, %if.then65.i ]
  %or72.i = shl i64 %bSignificand.1.i, 11
  %and.i.i = and i64 %aSignificand.2.i, 4294967295
  %and1.i.i = and i64 %or72.i, 4294965248
  %mul.i.i = mul nuw i64 %and1.i.i, %and.i.i
  %shl.i = lshr i64 %or72.i, 32
  %shr.i.i = or i64 %shl.i, 2147483648
  %mul3.i.i = mul nuw i64 %shr.i.i, %and.i.i
  %or71.i = lshr i64 %aSignificand.2.i, 32
  %shr4.i.i = or i64 %or71.i, 1048576
  %mul6.i.i = mul nuw i64 %and1.i.i, %shr4.i.i
  %mul9.i.i = mul nuw i64 %shr.i.i, %shr4.i.i
  %and10.i.i = and i64 %mul.i.i, 4294965248
  %shr11.i.i = lshr i64 %mul.i.i, 32
  %and12.i.i = and i64 %mul3.i.i, 4294967295
  %and13.i.i = and i64 %mul6.i.i, 4294965248
  %add.i.i = add nuw nsw i64 %and13.i.i, %shr11.i.i
  %add14.i.i = add nuw nsw i64 %add.i.i, %and12.i.i
  %shl.i169.i = shl i64 %add14.i.i, 32
  %add15.i.i = or disjoint i64 %shl.i169.i, %and10.i.i
  %shr16.i.i = lshr i64 %mul3.i.i, 32
  %shr17.i.i = lshr i64 %mul6.i.i, 32
  %shr19.i.i = lshr i64 %add14.i.i, 32
  %add18.i.i = add nuw i64 %shr17.i.i, %mul9.i.i
  %add20.i.i = add nuw i64 %add18.i.i, %shr16.i.i
  %add21.i.i = add nuw i64 %add20.i.i, %shr19.i.i
  %add73.i = add nsw i32 %conv.i, -1023
  %sub74.i = add nsw i32 %add73.i, %conv4.i
  %add75.i = add nsw i32 %sub74.i, %scale.3.i
  %and76.i = and i64 %add21.i.i, 4503599627370496
  %tobool77.not.i = icmp eq i64 %and76.i, 0
  br i1 %tobool77.not.i, label %if.else79.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.end70.i
  %inc.i = add nsw i32 %add75.i, 1
  br label %if.end80.i

if.else79.i:                                      ; preds = %if.end70.i
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %add21.i.i, i64 %shl.i169.i, i64 1)
  %shl3.i.i = shl i64 %add15.i.i, 1
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else79.i, %if.then78.i
  %productHi.0.i = phi i64 [ %or.i.i, %if.else79.i ], [ %add21.i.i, %if.then78.i ]
  %productLo.0.i = phi i64 [ %shl3.i.i, %if.else79.i ], [ %add15.i.i, %if.then78.i ]
  %productExponent.0.i = phi i32 [ %add75.i, %if.else79.i ], [ %inc.i, %if.then78.i ]
  %cmp81.i = icmp sgt i32 %productExponent.0.i, 2046
  br i1 %cmp81.i, label %if.then83.i, label %if.end86.i

if.then83.i:                                      ; preds = %if.end80.i
  %or84.i = or disjoint i64 %and7.i, 9218868437227405312
  %16 = bitcast i64 %or84.i to double
  br label %__mulXf3__.exit

if.end86.i:                                       ; preds = %if.end80.i
  %cmp87.i = icmp slt i32 %productExponent.0.i, 1
  br i1 %cmp87.i, label %if.then89.i, label %if.else101.i

if.then89.i:                                      ; preds = %if.end86.i
  %sub91.i = sub nsw i32 1, %productExponent.0.i
  %cmp93.i = icmp samesign ult i32 %sub91.i, 64
  br i1 %cmp93.i, label %cleanup98.thread.i, label %cleanup98.i

cleanup98.thread.i:                               ; preds = %if.then89.i
  %sub.i170.i = add nsw i32 %productExponent.0.i, 63
  %sh_prom.i171.i = zext nneg i32 %sub.i170.i to i64
  %shl.i172.i = shl i64 %productLo.0.i, %sh_prom.i171.i
  %cmp1.i.i = icmp ne i64 %shl.i172.i, 0
  %shl4.i.i = shl i64 %productHi.0.i, %sh_prom.i171.i
  %sh_prom5.i.i = zext nneg i32 %sub91.i to i64
  %shr.i173.i = lshr i64 %productLo.0.i, %sh_prom5.i.i
  %or.i174.i = or i64 %shl4.i.i, %shr.i173.i
  %conv.i.i = zext i1 %cmp1.i.i to i64
  %or6.i.i = or i64 %or.i174.i, %conv.i.i
  %shr8.i.i = lshr i64 %productHi.0.i, %sh_prom5.i.i
  br label %if.end106.i

cleanup98.i:                                      ; preds = %if.then89.i
  %17 = bitcast i64 %and7.i to double
  br label %__mulXf3__.exit

if.else101.i:                                     ; preds = %if.end86.i
  %and102.i = and i64 %productHi.0.i, 4503599627370495
  %conv103.i = zext nneg i32 %productExponent.0.i to i64
  %shl104.i = shl nuw nsw i64 %conv103.i, 52
  %or105.i = or disjoint i64 %shl104.i, %and102.i
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.else101.i, %cleanup98.thread.i
  %productHi.2.i = phi i64 [ %shr8.i.i, %cleanup98.thread.i ], [ %or105.i, %if.else101.i ]
  %productLo.2.i = phi i64 [ %or6.i.i, %cleanup98.thread.i ], [ %productLo.0.i, %if.else101.i ]
  %or107.i = or i64 %productHi.2.i, %and7.i
  %cmp108.i = icmp ugt i64 %productLo.2.i, -9223372036854775808
  br i1 %cmp108.i, label %if.end112.thread.i, label %if.end112.i

if.end112.thread.i:                               ; preds = %if.end106.i
  %inc111.i = add i64 %or107.i, 1
  br label %if.end118.i

if.end112.i:                                      ; preds = %if.end106.i
  %cmp113.i = icmp eq i64 %productLo.2.i, -9223372036854775808
  br i1 %cmp113.i, label %if.then115.i, label %if.end118.i

if.then115.i:                                     ; preds = %if.end112.i
  %and116.i = and i64 %productHi.2.i, 1
  %add117.i = add i64 %or107.i, %and116.i
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then115.i, %if.end112.i, %if.end112.thread.i
  %productHi.4.i = phi i64 [ %add117.i, %if.then115.i ], [ %or107.i, %if.end112.i ], [ %inc111.i, %if.end112.thread.i ]
  %18 = bitcast i64 %productHi.4.i to double
  br label %__mulXf3__.exit

__mulXf3__.exit:                                  ; preds = %if.then22.i, %if.then27.i, %if.then34.i, %if.then35.i, %if.then42.i, %if.then44.i, %if.then51.i, %if.then55.i, %if.then83.i, %cleanup98.i, %if.end118.i
  %retval.4.i = phi double [ %17, %cleanup98.i ], [ %16, %if.then83.i ], [ %18, %if.end118.i ], [ 0x7FF8000000000000, %if.then42.i ], [ %13, %if.then55.i ], [ %12, %if.then51.i ], [ 0x7FF8000000000000, %if.then34.i ], [ %11, %if.then44.i ], [ %10, %if.then35.i ], [ %9, %if.then27.i ], [ %8, %if.then22.i ]
  ret double %retval.4.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
