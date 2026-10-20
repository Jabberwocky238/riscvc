; ModuleID = '../llvm-project/compiler-rt/lib/builtins/addsf3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/addsf3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: nounwind
define dso_local float @__addsf3(float noundef %a, float noundef %b) local_unnamed_addr #0 {
entry:
  %0 = bitcast float %a to i32
  %1 = bitcast float %b to i32
  %2 = tail call float @llvm.fabs.f32(float %a)
  %and.i = bitcast float %2 to i32
  %3 = tail call float @llvm.fabs.f32(float %b)
  %and2.i = bitcast float %3 to i32
  %4 = add nsw i32 %and.i, -2139095040
  %cmp.i = icmp ult i32 %4, -2139095039
  %5 = add nsw i32 %and2.i, -2139095040
  %cmp4.i = icmp ult i32 %5, -2139095039
  %or.cond231.i = select i1 %cmp.i, i1 true, i1 %cmp4.i
  br i1 %or.cond231.i, label %if.then.i, label %if.end38.i

if.then.i:                                        ; preds = %entry
  %cmp5.i = icmp samesign ugt i32 %and.i, 2139095040
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  %or.i = or i32 %0, 4194304
  %6 = bitcast i32 %or.i to float
  br label %__addXf3__.exit

if.end.i:                                         ; preds = %if.then.i
  %cmp9.i = icmp samesign ugt i32 %and2.i, 2139095040
  br i1 %cmp9.i, label %if.then10.i, label %if.end14.i

if.then10.i:                                      ; preds = %if.end.i
  %or12.i = or i32 %1, 4194304
  %7 = bitcast i32 %or12.i to float
  br label %__addXf3__.exit

if.end14.i:                                       ; preds = %if.end.i
  %cmp15.i = icmp eq i32 %and.i, 2139095040
  br i1 %cmp15.i, label %if.then16.i, label %if.end22.i

if.then16.i:                                      ; preds = %if.end14.i
  %xor.i = xor i32 %1, %0
  %cmp19.i = icmp eq i32 %xor.i, -2147483648
  %spec.select257.i = select i1 %cmp19.i, float 0x7FF8000000000000, float %a
  br label %__addXf3__.exit

if.end22.i:                                       ; preds = %if.end14.i
  %cmp23.i = icmp eq i32 %and2.i, 2139095040
  br i1 %cmp23.i, label %__addXf3__.exit, label %if.end25.i

if.end25.i:                                       ; preds = %if.end22.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  %tobool27.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then26.i, label %if.end34.i

if.then26.i:                                      ; preds = %if.end25.i
  br i1 %tobool27.not.i, label %if.then28.i, label %__addXf3__.exit

if.then28.i:                                      ; preds = %if.then26.i
  %and31.i = and i32 %1, %0
  %8 = bitcast i32 %and31.i to float
  br label %__addXf3__.exit

if.end34.i:                                       ; preds = %if.end25.i
  br i1 %tobool27.not.i, label %__addXf3__.exit, label %if.end38.i

if.end38.i:                                       ; preds = %if.end34.i, %entry
  %cmp39.i = icmp samesign ugt i32 %and2.i, %and.i
  %spec.select.i = select i1 %cmp39.i, i32 %0, i32 %1
  %spec.select232.i = select i1 %cmp39.i, i32 %1, i32 %0
  %shr.i = lshr i32 %spec.select232.i, 23
  %and42.i = and i32 %shr.i, 255
  %shr43.i = lshr i32 %spec.select.i, 23
  %and44.i = and i32 %shr43.i, 255
  %and45.i = and i32 %spec.select232.i, 8388607
  %and46.i = and i32 %spec.select.i, 8388607
  %cmp47.i = icmp eq i32 %and42.i, 0
  br i1 %cmp47.i, label %if.then48.i, label %if.end50.i

if.then48.i:                                      ; preds = %if.end38.i
  %9 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and45.i, i1 true)
  %sub.i.i = add nsw i32 %9, -8
  %shl.i.i = shl i32 %and45.i, %sub.i.i
  %sub2.i.i = sub nsw i32 9, %9
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.end38.i
  %aSignificand.0.i = phi i32 [ %shl.i.i, %if.then48.i ], [ %and45.i, %if.end38.i ]
  %aExponent.0.i = phi i32 [ %sub2.i.i, %if.then48.i ], [ %and42.i, %if.end38.i ]
  %cmp51.i = icmp eq i32 %and44.i, 0
  br i1 %cmp51.i, label %if.then52.i, label %if.end54.i

if.then52.i:                                      ; preds = %if.end50.i
  %10 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and46.i, i1 true)
  %sub.i236.i = add nsw i32 %10, -8
  %shl.i237.i = shl i32 %and46.i, %sub.i236.i
  %sub2.i238.i = sub nsw i32 9, %10
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then52.i, %if.end50.i
  %bSignificand.0.i = phi i32 [ %shl.i237.i, %if.then52.i ], [ %and46.i, %if.end50.i ]
  %bExponent.0.i = phi i32 [ %sub2.i238.i, %if.then52.i ], [ %and44.i, %if.end50.i ]
  %and55.i = and i32 %spec.select232.i, -2147483648
  %xor56.i = xor i32 %1, %0
  %tobool58.not.i = icmp sgt i32 %xor56.i, -1
  %or59.i = shl i32 %aSignificand.0.i, 3
  %shl.i = or i32 %or59.i, 67108864
  %or60.i = shl i32 %bSignificand.0.i, 3
  %shl61.i = or i32 %or60.i, 67108864
  %sub62.i = sub nsw i32 %aExponent.0.i, %bExponent.0.i
  %tobool63.not.i = icmp eq i32 %aExponent.0.i, %bExponent.0.i
  br i1 %tobool63.not.i, label %if.end75.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end54.i
  %cmp65.i = icmp ult i32 %sub62.i, 32
  br i1 %cmp65.i, label %if.then66.i, label %if.end75.i

if.then66.i:                                      ; preds = %if.then64.i
  %sub67.i = sub nuw nsw i32 32, %sub62.i
  %shl68.i = shl i32 %shl61.i, %sub67.i
  %cmp69.i = icmp ne i32 %shl68.i, 0
  %shr71.i = lshr i32 %shl61.i, %sub62.i
  %conv.i = zext i1 %cmp69.i to i32
  %or72.i = or i32 %shr71.i, %conv.i
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then66.i, %if.then64.i, %if.end54.i
  %bSignificand.1.i = phi i32 [ %shl61.i, %if.end54.i ], [ %or72.i, %if.then66.i ], [ 1, %if.then64.i ]
  br i1 %tobool58.not.i, label %if.else93.i, label %if.then77.i

if.then77.i:                                      ; preds = %if.end75.i
  %sub78.i = sub i32 %shl.i, %bSignificand.1.i
  %cmp79.i = icmp eq i32 %shl.i, %bSignificand.1.i
  br i1 %cmp79.i, label %__addXf3__.exit, label %if.end83.i

if.end83.i:                                       ; preds = %if.then77.i
  %cmp84.i = icmp ult i32 %sub78.i, 67108864
  br i1 %cmp84.i, label %if.end107.thread.i, label %if.end107.i

if.end107.thread.i:                               ; preds = %if.end83.i
  %11 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %sub78.i, i1 true)
  %sub89.i = add nsw i32 %11, -5
  %shl90.i = shl i32 %sub78.i, %sub89.i
  %sub91.i = sub nsw i32 %aExponent.0.i, %sub89.i
  br label %if.end113.i

if.else93.i:                                      ; preds = %if.end75.i
  %add.i = add i32 %bSignificand.1.i, %shl.i
  %and94.i = and i32 %add.i, 134217728
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.end107.i, label %if.then96.i

if.then96.i:                                      ; preds = %if.else93.i
  %and98.i = and i32 %bSignificand.1.i, 1
  %shr101.i = lshr i32 %add.i, 1
  %or104.i = or i32 %shr101.i, %and98.i
  %add105.i = add nsw i32 %aExponent.0.i, 1
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then96.i, %if.else93.i, %if.end83.i
  %aSignificand.1.i = phi i32 [ %add.i, %if.else93.i ], [ %or104.i, %if.then96.i ], [ %sub78.i, %if.end83.i ]
  %aExponent.1.i = phi i32 [ %aExponent.0.i, %if.else93.i ], [ %add105.i, %if.then96.i ], [ %aExponent.0.i, %if.end83.i ]
  %cmp108.i = icmp sgt i32 %aExponent.1.i, 254
  br i1 %cmp108.i, label %if.then110.i, label %if.end113.i

if.then110.i:                                     ; preds = %if.end107.i
  %or111.i = or disjoint i32 %and55.i, 2139095040
  %12 = bitcast i32 %or111.i to float
  br label %__addXf3__.exit

if.end113.i:                                      ; preds = %if.end107.i, %if.end107.thread.i
  %aExponent.1252.i = phi i32 [ %sub91.i, %if.end107.thread.i ], [ %aExponent.1.i, %if.end107.i ]
  %aSignificand.1251.i = phi i32 [ %shl90.i, %if.end107.thread.i ], [ %aSignificand.1.i, %if.end107.i ]
  %cmp114.i = icmp slt i32 %aExponent.1252.i, 1
  br i1 %cmp114.i, label %if.then116.i, label %if.end129.i

if.then116.i:                                     ; preds = %if.end113.i
  %sub118.i = sub nsw i32 1, %aExponent.1252.i
  %sub120.i = add nsw i32 %aExponent.1252.i, 31
  %shl121.i = shl i32 %aSignificand.1251.i, %sub120.i
  %cmp122.i = icmp ne i32 %shl121.i, 0
  %shr125.i = lshr i32 %aSignificand.1251.i, %sub118.i
  %conv127.i = zext i1 %cmp122.i to i32
  %or128.i = or i32 %shr125.i, %conv127.i
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then116.i, %if.end113.i
  %aSignificand.2.i = phi i32 [ %or128.i, %if.then116.i ], [ %aSignificand.1251.i, %if.end113.i ]
  %aExponent.2.i = phi i32 [ 0, %if.then116.i ], [ %aExponent.1252.i, %if.end113.i ]
  %and130.i = and i32 %aSignificand.2.i, 7
  %shr131.i = lshr i32 %aSignificand.2.i, 3
  %and132.i = and i32 %shr131.i, 8388607
  %shl133.i = shl nuw nsw i32 %aExponent.2.i, 23
  %or134.i = or disjoint i32 %and132.i, %shl133.i
  %or135.i = or disjoint i32 %or134.i, %and55.i
  %call136.i = tail call i32 @__fe_getround() #4
  switch i32 %call136.i, label %sw.epilog.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb147.i
    i32 2, label %sw.bb153.i
  ]

sw.bb.i:                                          ; preds = %if.end129.i
  %cmp137.i = icmp samesign ugt i32 %and130.i, 4
  %inc.i = zext i1 %cmp137.i to i32
  %spec.select233.i = add i32 %or135.i, %inc.i
  %cmp141.i = icmp eq i32 %and130.i, 4
  br i1 %cmp141.i, label %sw.epilog.thread.i, label %sw.epilog.i

sw.epilog.thread.i:                               ; preds = %sw.bb.i
  %and144.i = and i32 %shr131.i, 1
  %add145.i = add i32 %or135.i, %and144.i
  br label %if.then161.i

sw.bb147.i:                                       ; preds = %if.end129.i
  %tobool148.i = icmp ne i32 %and55.i, 0
  %tobool149.i = icmp ne i32 %and130.i, 0
  %or.cond.i = select i1 %tobool148.i, i1 %tobool149.i, i1 false
  %inc151.i = zext i1 %or.cond.i to i32
  %spec.select234.i = add nsw i32 %or135.i, %inc151.i
  br label %sw.epilog.i

sw.bb153.i:                                       ; preds = %if.end129.i
  %tobool154.i = icmp eq i32 %and55.i, 0
  %tobool156.i = icmp ne i32 %and130.i, 0
  %or.cond175.i = select i1 %tobool154.i, i1 %tobool156.i, i1 false
  %inc158.i = zext i1 %or.cond175.i to i32
  %spec.select235.i = add nuw i32 %or135.i, %inc158.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb153.i, %sw.bb147.i, %sw.bb.i, %if.end129.i
  %result.1.i = phi i32 [ %or135.i, %if.end129.i ], [ %spec.select235.i, %sw.bb153.i ], [ %spec.select233.i, %sw.bb.i ], [ %spec.select234.i, %sw.bb147.i ]
  %tobool160.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool160.not.i, label %if.end163.i, label %if.then161.i

if.then161.i:                                     ; preds = %sw.epilog.i, %sw.epilog.thread.i
  %result.1255.i = phi i32 [ %add145.i, %sw.epilog.thread.i ], [ %result.1.i, %sw.epilog.i ]
  %call162.i = tail call i32 @__fe_raise_inexact() #4
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then161.i, %sw.epilog.i
  %result.1256.i = phi i32 [ %result.1255.i, %if.then161.i ], [ %result.1.i, %sw.epilog.i ]
  %13 = bitcast i32 %result.1256.i to float
  br label %__addXf3__.exit

__addXf3__.exit:                                  ; preds = %if.then6.i, %if.then10.i, %if.then16.i, %if.end22.i, %if.then26.i, %if.then28.i, %if.end34.i, %if.then77.i, %if.then110.i, %if.end163.i
  %retval.1.i = phi float [ %6, %if.then6.i ], [ %7, %if.then10.i ], [ 0.000000e+00, %if.then77.i ], [ %8, %if.then28.i ], [ %spec.select257.i, %if.then16.i ], [ %a, %if.end34.i ], [ %b, %if.then26.i ], [ %b, %if.end22.i ], [ %13, %if.end163.i ], [ %12, %if.then110.i ]
  ret float %retval.1.i
}

declare dso_local i32 @__fe_getround() local_unnamed_addr #1

declare dso_local i32 @__fe_raise_inexact() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
