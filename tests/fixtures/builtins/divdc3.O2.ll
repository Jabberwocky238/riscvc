; ModuleID = '../llvm-project/compiler-rt/lib/builtins/divdc3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/divdc3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @__divdc3(ptr dead_on_unwind noalias writable writeonly sret({ double, double }) align 8 captures(none) initializes((0, 16)) %agg.result, double noundef %__a, double noundef %__b, double noundef %__c, double noundef %__d) local_unnamed_addr #0 {
entry:
  %0 = tail call double @llvm.fabs.f64(double %__c)
  %1 = tail call double @llvm.fabs.f64(double %__d)
  %2 = fcmp uno double %__c, 0.000000e+00
  %cmp.i.i = fcmp olt double %0, %1
  %or.cond.i.i = or i1 %2, %cmp.i.i
  %cond.i.i = select i1 %or.cond.i.i, double %1, double %0
  %3 = bitcast double %cond.i.i to i64
  %and.i.i = lshr i64 %3, 52
  %4 = trunc nuw nsw i64 %and.i.i to i32
  %cmp.i.i132 = icmp eq i64 %and.i.i, 2047
  br i1 %cmp.i.i132, label %__compiler_rt_logb.exit, label %if.else8.i.i

if.else8.i.i:                                     ; preds = %entry
  %cmp9.i.i = fcmp oeq double %cond.i.i, 0.000000e+00
  br i1 %cmp9.i.i, label %__compiler_rt_logb.exit, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else8.i.i
  %cmp14.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %cmp14.not.i.i, label %if.else18.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  %sub.i.i = add nsw i32 %4, -1023
  %conv17.i.i = sitofp i32 %sub.i.i to double
  br label %__compiler_rt_logb.exit

if.else18.i.i:                                    ; preds = %if.end13.i.i
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %cast.i.i.i.i = trunc nuw nsw i64 %5 to i32
  %sub.i.i.i = add nsw i32 %cast.i.i.i.i, -11
  %sh_prom.i.i.i = zext nneg i32 %sub.i.i.i to i64
  %shl.i.i.i = shl i64 %3, %sh_prom.i.i.i
  %and22.i.i = lshr i64 %shl.i.i.i, 52
  %6 = trunc nuw nsw i64 %and22.i.i to i32
  %conv24.i.i = and i32 %6, 2047
  %reass.sub = sub nsw i32 %conv24.i.i, %cast.i.i.i.i
  %sub26.i.i = add nsw i32 %reass.sub, -1012
  %conv27.i.i = sitofp i32 %sub26.i.i to double
  br label %__compiler_rt_logb.exit

__compiler_rt_logb.exit:                          ; preds = %entry, %if.else8.i.i, %if.then16.i.i, %if.else18.i.i
  %retval.0.i.i = phi double [ %conv27.i.i, %if.else18.i.i ], [ 0xFFF0000000000000, %if.else8.i.i ], [ %conv17.i.i, %if.then16.i.i ], [ %cond.i.i, %entry ]
  %7 = tail call double @llvm.fabs.f64(double %retval.0.i.i)
  %8 = fcmp ueq double %7, 0x7FF0000000000000
  br i1 %8, label %if.end, label %if.then

if.then:                                          ; preds = %__compiler_rt_logb.exit
  %conv = fptosi double %retval.0.i.i to i32
  %sub = sub nsw i32 0, %conv
  %9 = bitcast double %__c to i64
  %and.i.i134 = lshr i64 %9, 52
  %10 = trunc nuw nsw i64 %and.i.i134 to i32
  %conv.i.i135 = and i32 %10, 2047
  %cmp.i.i136 = fcmp oeq double %__c, 0.000000e+00
  %cmp2.i.i = icmp eq i32 %conv.i.i135, 2047
  %or.cond.i.i137 = select i1 %cmp.i.i136, i1 true, i1 %cmp2.i.i
  br i1 %or.cond.i.i137, label %__compiler_rt_scalbn.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then
  %and4.i.i = and i64 %9, 4503599627370495
  %cmp5.i.i138 = icmp eq i32 %conv.i.i135, 0
  br i1 %cmp5.i.i138, label %if.then7.i.i, label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  %11 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and4.i.i, i1 true)
  %cast.i.i.i.i139 = trunc nuw nsw i64 %11 to i32
  %sub.i.i.i140 = add nsw i32 %cast.i.i.i.i139, -11
  %sh_prom.i.i.i141 = zext nneg i32 %sub.i.i.i140 to i64
  %shl.i.i.i142 = shl i64 %and4.i.i, %sh_prom.i.i.i141
  %sub2.i.i.i = sub nsw i32 12, %cast.i.i.i.i139
  %and9.i.i = and i64 %shl.i.i.i142, -4503599627370497
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i, %if.end.i.i
  %sig.0.i.i = phi i64 [ %and9.i.i, %if.then7.i.i ], [ %and4.i.i, %if.end.i.i ]
  %exp.0.i.i = phi i32 [ %sub2.i.i.i, %if.then7.i.i ], [ %conv.i.i135, %if.end.i.i ]
  %exp.1.i.i = tail call i32 @llvm.sadd.sat.i32(i32 %exp.0.i.i, i32 range(i32 -2147483647, -2147483648) %sub)
  %and15.i.i = and i64 %9, -9223372036854775808
  %cmp16.i.i = icmp sgt i32 %exp.1.i.i, 2046
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.else.i.i

if.then18.i.i:                                    ; preds = %if.end10.i.i
  %12 = tail call double @llvm.copysign.f64(double 0x7FE0000000000000, double %__c)
  %mul.i.i = fmul double %12, 2.000000e+00
  br label %__compiler_rt_scalbn.exit

if.else.i.i:                                      ; preds = %if.end10.i.i
  %cmp20.i.i = icmp slt i32 %exp.1.i.i, 1
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.else34.i.i

if.then22.i.i:                                    ; preds = %if.else.i.i
  %or23.i.i = or i64 %sig.0.i.i, %and15.i.i
  %or24.i.i = or disjoint i64 %or23.i.i, 4503599627370496
  %13 = bitcast i64 %or24.i.i to double
  %14 = tail call i32 @llvm.smax.i32(i32 %exp.1.i.i, i32 -1021)
  %spec.store.select.i.i = add nsw i32 %14, 1022
  %conv31.i.i = zext nneg i32 %spec.store.select.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv31.i.i, 52
  %15 = bitcast i64 %shl.i.i to double
  %mul33.i.i = fmul double %13, %15
  br label %__compiler_rt_scalbn.exit

if.else34.i.i:                                    ; preds = %if.else.i.i
  %conv35.i.i = zext nneg i32 %exp.1.i.i to i64
  %shl36.i.i = shl nuw nsw i64 %conv35.i.i, 52
  %16 = or disjoint i64 %shl36.i.i, %and15.i.i
  %or38.i.i = or i64 %16, %sig.0.i.i
  %17 = bitcast i64 %or38.i.i to double
  br label %__compiler_rt_scalbn.exit

__compiler_rt_scalbn.exit:                        ; preds = %if.then, %if.then18.i.i, %if.then22.i.i, %if.else34.i.i
  %retval.1.i.i = phi double [ %__c, %if.then ], [ %mul.i.i, %if.then18.i.i ], [ %mul33.i.i, %if.then22.i.i ], [ %17, %if.else34.i.i ]
  %18 = bitcast double %__d to i64
  %and.i.i143 = lshr i64 %18, 52
  %19 = trunc nuw nsw i64 %and.i.i143 to i32
  %conv.i.i144 = and i32 %19, 2047
  %cmp.i.i145 = fcmp oeq double %__d, 0.000000e+00
  %cmp2.i.i146 = icmp eq i32 %conv.i.i144, 2047
  %or.cond.i.i147 = select i1 %cmp.i.i145, i1 true, i1 %cmp2.i.i146
  br i1 %or.cond.i.i147, label %if.end, label %if.end.i.i148

if.end.i.i148:                                    ; preds = %__compiler_rt_scalbn.exit
  %and4.i.i149 = and i64 %18, 4503599627370495
  %cmp5.i.i150 = icmp eq i32 %conv.i.i144, 0
  br i1 %cmp5.i.i150, label %if.then7.i.i173, label %if.end10.i.i151

if.then7.i.i173:                                  ; preds = %if.end.i.i148
  %20 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and4.i.i149, i1 true)
  %cast.i.i.i.i174 = trunc nuw nsw i64 %20 to i32
  %sub.i.i.i175 = add nsw i32 %cast.i.i.i.i174, -11
  %sh_prom.i.i.i176 = zext nneg i32 %sub.i.i.i175 to i64
  %shl.i.i.i177 = shl i64 %and4.i.i149, %sh_prom.i.i.i176
  %sub2.i.i.i178 = sub nsw i32 12, %cast.i.i.i.i174
  %and9.i.i179 = and i64 %shl.i.i.i177, -4503599627370497
  br label %if.end10.i.i151

if.end10.i.i151:                                  ; preds = %if.then7.i.i173, %if.end.i.i148
  %sig.0.i.i152 = phi i64 [ %and9.i.i179, %if.then7.i.i173 ], [ %and4.i.i149, %if.end.i.i148 ]
  %exp.0.i.i153 = phi i32 [ %sub2.i.i.i178, %if.then7.i.i173 ], [ %conv.i.i144, %if.end.i.i148 ]
  %exp.1.i.i154 = tail call i32 @llvm.sadd.sat.i32(i32 %exp.0.i.i153, i32 range(i32 -2147483647, -2147483648) %sub)
  %and15.i.i155 = and i64 %18, -9223372036854775808
  %cmp16.i.i156 = icmp sgt i32 %exp.1.i.i154, 2046
  br i1 %cmp16.i.i156, label %if.then18.i.i171, label %if.else.i.i157

if.then18.i.i171:                                 ; preds = %if.end10.i.i151
  %21 = tail call double @llvm.copysign.f64(double 0x7FE0000000000000, double %__d)
  %mul.i.i172 = fmul double %21, 2.000000e+00
  br label %if.end

if.else.i.i157:                                   ; preds = %if.end10.i.i151
  %cmp20.i.i158 = icmp slt i32 %exp.1.i.i154, 1
  br i1 %cmp20.i.i158, label %if.then22.i.i164, label %if.else34.i.i159

if.then22.i.i164:                                 ; preds = %if.else.i.i157
  %or23.i.i165 = or i64 %sig.0.i.i152, %and15.i.i155
  %or24.i.i166 = or disjoint i64 %or23.i.i165, 4503599627370496
  %22 = bitcast i64 %or24.i.i166 to double
  %23 = tail call i32 @llvm.smax.i32(i32 %exp.1.i.i154, i32 -1021)
  %spec.store.select.i.i167 = add nsw i32 %23, 1022
  %conv31.i.i168 = zext nneg i32 %spec.store.select.i.i167 to i64
  %shl.i.i169 = shl nuw nsw i64 %conv31.i.i168, 52
  %24 = bitcast i64 %shl.i.i169 to double
  %mul33.i.i170 = fmul double %22, %24
  br label %if.end

if.else34.i.i159:                                 ; preds = %if.else.i.i157
  %conv35.i.i160 = zext nneg i32 %exp.1.i.i154 to i64
  %shl36.i.i161 = shl nuw nsw i64 %conv35.i.i160, 52
  %25 = or disjoint i64 %shl36.i.i161, %and15.i.i155
  %or38.i.i162 = or i64 %25, %sig.0.i.i152
  %26 = bitcast i64 %or38.i.i162 to double
  br label %if.end

if.end:                                           ; preds = %__compiler_rt_logb.exit, %if.else34.i.i159, %if.then22.i.i164, %if.then18.i.i171, %__compiler_rt_scalbn.exit
  %__c.addr.0 = phi double [ %retval.1.i.i, %if.else34.i.i159 ], [ %retval.1.i.i, %__compiler_rt_scalbn.exit ], [ %retval.1.i.i, %if.then18.i.i171 ], [ %retval.1.i.i, %if.then22.i.i164 ], [ %__c, %__compiler_rt_logb.exit ]
  %__d.addr.0 = phi double [ %26, %if.else34.i.i159 ], [ %__d, %__compiler_rt_scalbn.exit ], [ %mul.i.i172, %if.then18.i.i171 ], [ %mul33.i.i170, %if.then22.i.i164 ], [ %__d, %__compiler_rt_logb.exit ]
  %__ilogbw.0 = phi i32 [ %conv, %if.else34.i.i159 ], [ %conv, %__compiler_rt_scalbn.exit ], [ %conv, %if.then18.i.i171 ], [ %conv, %if.then22.i.i164 ], [ 0, %__compiler_rt_logb.exit ]
  %mul5 = fmul double %__d.addr.0, %__d.addr.0
  %27 = tail call double @llvm.fmuladd.f64(double %__c.addr.0, double %__c.addr.0, double %mul5)
  %mul6 = fmul double %__b, %__d.addr.0
  %28 = tail call double @llvm.fmuladd.f64(double %__a, double %__c.addr.0, double %mul6)
  %div = fdiv double %28, %27
  %sub7 = sub nsw i32 0, %__ilogbw.0
  %29 = bitcast double %div to i64
  %and.i.i181 = lshr i64 %29, 52
  %30 = trunc nuw nsw i64 %and.i.i181 to i32
  %conv.i.i182 = and i32 %30, 2047
  %cmp.i.i183 = fcmp oeq double %div, 0.000000e+00
  %cmp2.i.i184 = icmp eq i32 %conv.i.i182, 2047
  %or.cond.i.i185 = select i1 %cmp.i.i183, i1 true, i1 %cmp2.i.i184
  br i1 %or.cond.i.i185, label %__compiler_rt_scalbn.exit218, label %if.end.i.i186

if.end.i.i186:                                    ; preds = %if.end
  %and4.i.i187 = and i64 %29, 4503599627370495
  %cmp5.i.i188 = icmp eq i32 %conv.i.i182, 0
  br i1 %cmp5.i.i188, label %if.then7.i.i211, label %if.end10.i.i189

if.then7.i.i211:                                  ; preds = %if.end.i.i186
  %31 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and4.i.i187, i1 true)
  %cast.i.i.i.i212 = trunc nuw nsw i64 %31 to i32
  %sub.i.i.i213 = add nsw i32 %cast.i.i.i.i212, -11
  %sh_prom.i.i.i214 = zext nneg i32 %sub.i.i.i213 to i64
  %shl.i.i.i215 = shl i64 %and4.i.i187, %sh_prom.i.i.i214
  %sub2.i.i.i216 = sub nsw i32 12, %cast.i.i.i.i212
  %and9.i.i217 = and i64 %shl.i.i.i215, -4503599627370497
  br label %if.end10.i.i189

if.end10.i.i189:                                  ; preds = %if.then7.i.i211, %if.end.i.i186
  %sig.0.i.i190 = phi i64 [ %and9.i.i217, %if.then7.i.i211 ], [ %and4.i.i187, %if.end.i.i186 ]
  %exp.0.i.i191 = phi i32 [ %sub2.i.i.i216, %if.then7.i.i211 ], [ %conv.i.i182, %if.end.i.i186 ]
  %exp.1.i.i192 = tail call i32 @llvm.sadd.sat.i32(i32 %exp.0.i.i191, i32 range(i32 -2147483647, -2147483648) %sub7)
  %and15.i.i193 = and i64 %29, -9223372036854775808
  %cmp16.i.i194 = icmp sgt i32 %exp.1.i.i192, 2046
  br i1 %cmp16.i.i194, label %if.then18.i.i209, label %if.else.i.i195

if.then18.i.i209:                                 ; preds = %if.end10.i.i189
  %32 = tail call double @llvm.copysign.f64(double 0x7FE0000000000000, double %div)
  %mul.i.i210 = fmul double %32, 2.000000e+00
  br label %__compiler_rt_scalbn.exit218

if.else.i.i195:                                   ; preds = %if.end10.i.i189
  %cmp20.i.i196 = icmp slt i32 %exp.1.i.i192, 1
  br i1 %cmp20.i.i196, label %if.then22.i.i202, label %if.else34.i.i197

if.then22.i.i202:                                 ; preds = %if.else.i.i195
  %or23.i.i203 = or i64 %sig.0.i.i190, %and15.i.i193
  %or24.i.i204 = or disjoint i64 %or23.i.i203, 4503599627370496
  %33 = bitcast i64 %or24.i.i204 to double
  %34 = tail call i32 @llvm.smax.i32(i32 %exp.1.i.i192, i32 -1021)
  %spec.store.select.i.i205 = add nsw i32 %34, 1022
  %conv31.i.i206 = zext nneg i32 %spec.store.select.i.i205 to i64
  %shl.i.i207 = shl nuw nsw i64 %conv31.i.i206, 52
  %35 = bitcast i64 %shl.i.i207 to double
  %mul33.i.i208 = fmul double %33, %35
  br label %__compiler_rt_scalbn.exit218

if.else34.i.i197:                                 ; preds = %if.else.i.i195
  %conv35.i.i198 = zext nneg i32 %exp.1.i.i192 to i64
  %shl36.i.i199 = shl nuw nsw i64 %conv35.i.i198, 52
  %36 = or disjoint i64 %shl36.i.i199, %and15.i.i193
  %or38.i.i200 = or i64 %36, %sig.0.i.i190
  %37 = bitcast i64 %or38.i.i200 to double
  br label %__compiler_rt_scalbn.exit218

__compiler_rt_scalbn.exit218:                     ; preds = %if.end, %if.then18.i.i209, %if.then22.i.i202, %if.else34.i.i197
  %retval.1.i.i201 = phi double [ %div, %if.end ], [ %mul.i.i210, %if.then18.i.i209 ], [ %mul33.i.i208, %if.then22.i.i202 ], [ %37, %if.else34.i.i197 ]
  %38 = fneg double %__d.addr.0
  %neg = fmul double %__a, %38
  %39 = tail call double @llvm.fmuladd.f64(double %__b, double %__c.addr.0, double %neg)
  %div10 = fdiv double %39, %27
  %40 = bitcast double %div10 to i64
  %and.i.i219 = lshr i64 %40, 52
  %41 = trunc nuw nsw i64 %and.i.i219 to i32
  %conv.i.i220 = and i32 %41, 2047
  %cmp.i.i221 = fcmp oeq double %div10, 0.000000e+00
  %cmp2.i.i222 = icmp eq i32 %conv.i.i220, 2047
  %or.cond.i.i223 = select i1 %cmp.i.i221, i1 true, i1 %cmp2.i.i222
  br i1 %or.cond.i.i223, label %__compiler_rt_scalbn.exit256, label %if.end.i.i224

if.end.i.i224:                                    ; preds = %__compiler_rt_scalbn.exit218
  %and4.i.i225 = and i64 %40, 4503599627370495
  %cmp5.i.i226 = icmp eq i32 %conv.i.i220, 0
  br i1 %cmp5.i.i226, label %if.then7.i.i249, label %if.end10.i.i227

if.then7.i.i249:                                  ; preds = %if.end.i.i224
  %42 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and4.i.i225, i1 true)
  %cast.i.i.i.i250 = trunc nuw nsw i64 %42 to i32
  %sub.i.i.i251 = add nsw i32 %cast.i.i.i.i250, -11
  %sh_prom.i.i.i252 = zext nneg i32 %sub.i.i.i251 to i64
  %shl.i.i.i253 = shl i64 %and4.i.i225, %sh_prom.i.i.i252
  %sub2.i.i.i254 = sub nsw i32 12, %cast.i.i.i.i250
  %and9.i.i255 = and i64 %shl.i.i.i253, -4503599627370497
  br label %if.end10.i.i227

if.end10.i.i227:                                  ; preds = %if.then7.i.i249, %if.end.i.i224
  %sig.0.i.i228 = phi i64 [ %and9.i.i255, %if.then7.i.i249 ], [ %and4.i.i225, %if.end.i.i224 ]
  %exp.0.i.i229 = phi i32 [ %sub2.i.i.i254, %if.then7.i.i249 ], [ %conv.i.i220, %if.end.i.i224 ]
  %exp.1.i.i230 = tail call i32 @llvm.sadd.sat.i32(i32 %exp.0.i.i229, i32 range(i32 -2147483647, -2147483648) %sub7)
  %and15.i.i231 = and i64 %40, -9223372036854775808
  %cmp16.i.i232 = icmp sgt i32 %exp.1.i.i230, 2046
  br i1 %cmp16.i.i232, label %__compiler_rt_scalbn.exit256.thread, label %if.else.i.i233

__compiler_rt_scalbn.exit256.thread:              ; preds = %if.end10.i.i227
  %43 = tail call double @llvm.copysign.f64(double 0x7FE0000000000000, double %div10)
  %mul.i.i248 = fmul double %43, 2.000000e+00
  br label %if.end57

if.else.i.i233:                                   ; preds = %if.end10.i.i227
  %cmp20.i.i234 = icmp slt i32 %exp.1.i.i230, 1
  br i1 %cmp20.i.i234, label %if.then22.i.i240, label %if.else34.i.i235

if.then22.i.i240:                                 ; preds = %if.else.i.i233
  %or23.i.i241 = or i64 %sig.0.i.i228, %and15.i.i231
  %or24.i.i242 = or disjoint i64 %or23.i.i241, 4503599627370496
  %44 = bitcast i64 %or24.i.i242 to double
  %45 = tail call i32 @llvm.smax.i32(i32 %exp.1.i.i230, i32 -1021)
  %spec.store.select.i.i243 = add nsw i32 %45, 1022
  %conv31.i.i244 = zext nneg i32 %spec.store.select.i.i243 to i64
  %shl.i.i245 = shl nuw nsw i64 %conv31.i.i244, 52
  %46 = bitcast i64 %shl.i.i245 to double
  %mul33.i.i246 = fmul double %44, %46
  br label %__compiler_rt_scalbn.exit256

if.else34.i.i235:                                 ; preds = %if.else.i.i233
  %conv35.i.i236 = zext nneg i32 %exp.1.i.i230 to i64
  %shl36.i.i237 = shl nuw nsw i64 %conv35.i.i236, 52
  %47 = or disjoint i64 %shl36.i.i237, %and15.i.i231
  %or38.i.i238 = or i64 %47, %sig.0.i.i228
  %48 = bitcast i64 %or38.i.i238 to double
  br label %__compiler_rt_scalbn.exit256

__compiler_rt_scalbn.exit256:                     ; preds = %__compiler_rt_scalbn.exit218, %if.then22.i.i240, %if.else34.i.i235
  %retval.1.i.i239 = phi double [ %div10, %__compiler_rt_scalbn.exit218 ], [ %48, %if.else34.i.i235 ], [ %mul33.i.i246, %if.then22.i.i240 ]
  %49 = fcmp uno double %retval.1.i.i201, 0.000000e+00
  %50 = fcmp uno double %retval.1.i.i239, 0.000000e+00
  %or.cond120 = select i1 %49, i1 %50, i1 false
  br i1 %or.cond120, label %if.then15, label %if.end57

if.then15:                                        ; preds = %__compiler_rt_scalbn.exit256
  %cmp = fcmp oeq double %27, 0.000000e+00
  br i1 %cmp, label %land.lhs.true17, label %if.else

land.lhs.true17:                                  ; preds = %if.then15
  %51 = fcmp uno double %__a, 0.000000e+00
  %52 = fcmp uno double %__b, 0.000000e+00
  %or.cond121 = and i1 %51, %52
  br i1 %or.cond121, label %if.else, label %if.then18

if.then18:                                        ; preds = %land.lhs.true17
  %53 = tail call double @llvm.copysign.f64(double 0x7FF0000000000000, double %__c.addr.0)
  %mul = fmul double %__a, %53
  %mul20 = fmul double %__b, %53
  br label %if.end57

if.else:                                          ; preds = %land.lhs.true17, %if.then15
  %54 = tail call double @llvm.fabs.f64(double %__a)
  %55 = fcmp une double %54, 0x7FF0000000000000
  %56 = tail call double @llvm.fabs.f64(double %__b)
  %57 = fcmp une double %56, 0x7FF0000000000000
  %or.cond123.not260 = and i1 %55, %57
  %58 = tail call double @llvm.fabs.f64(double %__c.addr.0)
  %59 = fcmp ueq double %58, 0x7FF0000000000000
  %or.cond125 = select i1 %or.cond123.not260, i1 true, i1 %59
  %60 = tail call double @llvm.fabs.f64(double %__d.addr.0)
  %61 = fcmp ueq double %60, 0x7FF0000000000000
  %or.cond127 = select i1 %or.cond125, i1 true, i1 %61
  br i1 %or.cond127, label %if.else36, label %if.then25

if.then25:                                        ; preds = %if.else
  %cond = select i1 %55, double 0.000000e+00, double 1.000000e+00
  %62 = tail call double @llvm.copysign.f64(double %cond, double %__a)
  %cond26 = select i1 %57, double 0.000000e+00, double 1.000000e+00
  %63 = tail call double @llvm.copysign.f64(double %cond26, double %__b)
  %mul28 = fmul double %63, %__d.addr.0
  %64 = tail call double @llvm.fmuladd.f64(double %62, double %__c.addr.0, double %mul28)
  %mul29 = fmul double %64, 0x7FF0000000000000
  %neg33 = fmul double %62, %38
  %65 = tail call double @llvm.fmuladd.f64(double %63, double %__c.addr.0, double %neg33)
  %mul34 = fmul double %65, 0x7FF0000000000000
  br label %if.end57

if.else36:                                        ; preds = %if.else
  %or.cond = fcmp une double %retval.0.i.i, 0x7FF0000000000000
  %66 = fcmp ueq double %54, 0x7FF0000000000000
  %or.cond129 = or i1 %66, %or.cond
  %67 = fcmp ueq double %56, 0x7FF0000000000000
  %or.cond131 = or i1 %67, %or.cond129
  br i1 %or.cond131, label %if.end57, label %if.then42

if.then42:                                        ; preds = %if.else36
  %68 = fcmp oeq double %58, 0x7FF0000000000000
  %cond43 = select i1 %68, double 1.000000e+00, double 0.000000e+00
  %69 = tail call double @llvm.copysign.f64(double %cond43, double %__c.addr.0)
  %70 = fcmp oeq double %60, 0x7FF0000000000000
  %cond44 = select i1 %70, double 1.000000e+00, double 0.000000e+00
  %71 = tail call double @llvm.copysign.f64(double %cond44, double %__d.addr.0)
  %mul46 = fmul double %__b, %71
  %72 = tail call double @llvm.fmuladd.f64(double %__a, double %69, double %mul46)
  %mul47 = fmul double %72, 0.000000e+00
  %73 = fneg double %71
  %neg51 = fmul double %__a, %73
  %74 = tail call double @llvm.fmuladd.f64(double %__b, double %69, double %neg51)
  %mul52 = fmul double %74, 0.000000e+00
  br label %if.end57

if.end57:                                         ; preds = %__compiler_rt_scalbn.exit256.thread, %if.then18, %if.else36, %if.then42, %if.then25, %__compiler_rt_scalbn.exit256
  %z.sroa.8.0 = phi double [ %mul34, %if.then25 ], [ %mul52, %if.then42 ], [ %mul20, %if.then18 ], [ %retval.1.i.i239, %__compiler_rt_scalbn.exit256 ], [ %retval.1.i.i239, %if.else36 ], [ %mul.i.i248, %__compiler_rt_scalbn.exit256.thread ]
  %z.sroa.0.0 = phi double [ %mul29, %if.then25 ], [ %mul47, %if.then42 ], [ %mul, %if.then18 ], [ %retval.1.i.i201, %__compiler_rt_scalbn.exit256 ], [ %retval.1.i.i201, %if.else36 ], [ %retval.1.i.i201, %__compiler_rt_scalbn.exit256.thread ]
  %agg.result.imagp = getelementptr inbounds nuw i8, ptr %agg.result, i32 8
  store double %z.sroa.0.0, ptr %agg.result, align 8
  store double %z.sroa.8.0, ptr %agg.result.imagp, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
