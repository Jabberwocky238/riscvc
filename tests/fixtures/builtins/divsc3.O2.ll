; ModuleID = '../llvm-project/compiler-rt/lib/builtins/divsc3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/divsc3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local { float, float } @__divsc3(float noundef %__a, float noundef %__b, float noundef %__c, float noundef %__d) local_unnamed_addr #0 {
entry:
  %0 = tail call float @llvm.fabs.f32(float %__c)
  %1 = tail call float @llvm.fabs.f32(float %__d)
  %2 = fcmp uno float %__c, 0.000000e+00
  %cmp.i = fcmp olt float %0, %1
  %or.cond.i = or i1 %2, %cmp.i
  %cond.i = select i1 %or.cond.i, float %1, float %0
  %3 = bitcast float %cond.i to i32
  %and.i.i = lshr i32 %3, 23
  %cmp.i.i = icmp eq i32 %and.i.i, 255
  br i1 %cmp.i.i, label %__compiler_rt_logbf.exit, label %if.else5.i.i

if.else5.i.i:                                     ; preds = %entry
  %cmp6.i.i = fcmp oeq float %cond.i, 0.000000e+00
  br i1 %cmp6.i.i, label %__compiler_rt_logbf.exit, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else5.i.i
  %cmp11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp11.not.i.i, label %if.else15.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  %sub.i.i = add nsw i32 %and.i.i, -127
  %conv14.i.i = sitofp i32 %sub.i.i to float
  br label %__compiler_rt_logbf.exit

if.else15.i.i:                                    ; preds = %if.end10.i.i
  %4 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %3, i1 true)
  %sub.i.i.i = add nsw i32 %4, -8
  %shl.i.i.i = shl i32 %3, %sub.i.i.i
  %and19.i.i = lshr i32 %shl.i.i.i, 23
  %shr20.i.i = and i32 %and19.i.i, 255
  %reass.sub = sub nsw i32 %shr20.i.i, %4
  %sub22.i.i = add nsw i32 %reass.sub, -119
  %conv23.i.i = sitofp i32 %sub22.i.i to float
  br label %__compiler_rt_logbf.exit

__compiler_rt_logbf.exit:                         ; preds = %entry, %if.else5.i.i, %if.then13.i.i, %if.else15.i.i
  %retval.0.i.i = phi float [ %conv23.i.i, %if.else15.i.i ], [ 0xFFF0000000000000, %if.else5.i.i ], [ %conv14.i.i, %if.then13.i.i ], [ %cond.i, %entry ]
  %5 = tail call float @llvm.fabs.f32(float %retval.0.i.i)
  %6 = fcmp ueq float %5, 0x7FF0000000000000
  br i1 %6, label %if.end, label %if.then

if.then:                                          ; preds = %__compiler_rt_logbf.exit
  %conv = fptosi float %retval.0.i.i to i32
  %sub = sub nsw i32 0, %conv
  %7 = bitcast float %__c to i32
  %and.i.i132 = lshr i32 %7, 23
  %shr.i.i133 = and i32 %and.i.i132, 255
  %cmp.i.i134 = fcmp oeq float %__c, 0.000000e+00
  %cmp2.i.i135 = icmp eq i32 %shr.i.i133, 255
  %or.cond.i.i136 = or i1 %cmp.i.i134, %cmp2.i.i135
  br i1 %or.cond.i.i136, label %__compiler_rt_scalbnf.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then
  %and4.i.i = and i32 %7, 8388607
  %cmp5.i.i = icmp eq i32 %shr.i.i133, 0
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.end10.i.i137

if.then7.i.i:                                     ; preds = %if.end.i.i
  %8 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and4.i.i, i1 true)
  %sub.i.i.i138 = add nsw i32 %8, -8
  %shl.i.i.i139 = shl i32 %and4.i.i, %sub.i.i.i138
  %sub2.i.i.i = sub nsw i32 9, %8
  %and9.i.i = and i32 %shl.i.i.i139, -8388609
  br label %if.end10.i.i137

if.end10.i.i137:                                  ; preds = %if.then7.i.i, %if.end.i.i
  %sig.0.i.i = phi i32 [ %and9.i.i, %if.then7.i.i ], [ %and4.i.i, %if.end.i.i ]
  %exp.0.i.i = phi i32 [ %sub2.i.i.i, %if.then7.i.i ], [ %shr.i.i133, %if.end.i.i ]
  %exp.1.i.i = tail call i32 @llvm.sadd.sat.i32(i32 %exp.0.i.i, i32 range(i32 -2147483647, -2147483648) %sub)
  %and15.i.i = and i32 %7, -2147483648
  %cmp16.i.i = icmp sgt i32 %exp.1.i.i, 254
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.else.i.i

if.then18.i.i:                                    ; preds = %if.end10.i.i137
  %9 = tail call float @llvm.copysign.f32(float 0x47E0000000000000, float %__c)
  %mul.i.i = fmul float %9, 2.000000e+00
  br label %__compiler_rt_scalbnf.exit

if.else.i.i:                                      ; preds = %if.end10.i.i137
  %cmp20.i.i = icmp slt i32 %exp.1.i.i, 1
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.else33.i.i

if.then22.i.i:                                    ; preds = %if.else.i.i
  %or23.i.i = or i32 %sig.0.i.i, %and15.i.i
  %or24.i.i = or disjoint i32 %or23.i.i, 8388608
  %10 = bitcast i32 %or24.i.i to float
  %11 = tail call i32 @llvm.smax.i32(i32 %exp.1.i.i, i32 -125)
  %spec.store.select.i.i = shl nsw i32 %11, 23
  %shl.i.i = add nsw i32 %spec.store.select.i.i, 1056964608
  %12 = bitcast i32 %shl.i.i to float
  %mul32.i.i = fmul float %10, %12
  br label %__compiler_rt_scalbnf.exit

if.else33.i.i:                                    ; preds = %if.else.i.i
  %shl34.i.i = shl nuw nsw i32 %exp.1.i.i, 23
  %13 = or disjoint i32 %shl34.i.i, %and15.i.i
  %or36.i.i = or i32 %13, %sig.0.i.i
  %14 = bitcast i32 %or36.i.i to float
  br label %__compiler_rt_scalbnf.exit

__compiler_rt_scalbnf.exit:                       ; preds = %if.then, %if.then18.i.i, %if.then22.i.i, %if.else33.i.i
  %retval.1.i.i = phi float [ %__c, %if.then ], [ %mul.i.i, %if.then18.i.i ], [ %mul32.i.i, %if.then22.i.i ], [ %14, %if.else33.i.i ]
  %15 = bitcast float %__d to i32
  %and.i.i140 = lshr i32 %15, 23
  %shr.i.i141 = and i32 %and.i.i140, 255
  %cmp.i.i142 = fcmp oeq float %__d, 0.000000e+00
  %cmp2.i.i143 = icmp eq i32 %shr.i.i141, 255
  %or.cond.i.i144 = or i1 %cmp.i.i142, %cmp2.i.i143
  br i1 %or.cond.i.i144, label %if.end, label %if.end.i.i145

if.end.i.i145:                                    ; preds = %__compiler_rt_scalbnf.exit
  %and4.i.i146 = and i32 %15, 8388607
  %cmp5.i.i147 = icmp eq i32 %shr.i.i141, 0
  br i1 %cmp5.i.i147, label %if.then7.i.i168, label %if.end10.i.i148

if.then7.i.i168:                                  ; preds = %if.end.i.i145
  %16 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and4.i.i146, i1 true)
  %sub.i.i.i169 = add nsw i32 %16, -8
  %shl.i.i.i170 = shl i32 %and4.i.i146, %sub.i.i.i169
  %sub2.i.i.i171 = sub nsw i32 9, %16
  %and9.i.i172 = and i32 %shl.i.i.i170, -8388609
  br label %if.end10.i.i148

if.end10.i.i148:                                  ; preds = %if.then7.i.i168, %if.end.i.i145
  %sig.0.i.i149 = phi i32 [ %and9.i.i172, %if.then7.i.i168 ], [ %and4.i.i146, %if.end.i.i145 ]
  %exp.0.i.i150 = phi i32 [ %sub2.i.i.i171, %if.then7.i.i168 ], [ %shr.i.i141, %if.end.i.i145 ]
  %exp.1.i.i151 = tail call i32 @llvm.sadd.sat.i32(i32 %exp.0.i.i150, i32 range(i32 -2147483647, -2147483648) %sub)
  %and15.i.i152 = and i32 %15, -2147483648
  %cmp16.i.i153 = icmp sgt i32 %exp.1.i.i151, 254
  br i1 %cmp16.i.i153, label %if.then18.i.i166, label %if.else.i.i154

if.then18.i.i166:                                 ; preds = %if.end10.i.i148
  %17 = tail call float @llvm.copysign.f32(float 0x47E0000000000000, float %__d)
  %mul.i.i167 = fmul float %17, 2.000000e+00
  br label %if.end

if.else.i.i154:                                   ; preds = %if.end10.i.i148
  %cmp20.i.i155 = icmp slt i32 %exp.1.i.i151, 1
  br i1 %cmp20.i.i155, label %if.then22.i.i160, label %if.else33.i.i156

if.then22.i.i160:                                 ; preds = %if.else.i.i154
  %or23.i.i161 = or i32 %sig.0.i.i149, %and15.i.i152
  %or24.i.i162 = or disjoint i32 %or23.i.i161, 8388608
  %18 = bitcast i32 %or24.i.i162 to float
  %19 = tail call i32 @llvm.smax.i32(i32 %exp.1.i.i151, i32 -125)
  %spec.store.select.i.i163 = shl nsw i32 %19, 23
  %shl.i.i164 = add nsw i32 %spec.store.select.i.i163, 1056964608
  %20 = bitcast i32 %shl.i.i164 to float
  %mul32.i.i165 = fmul float %18, %20
  br label %if.end

if.else33.i.i156:                                 ; preds = %if.else.i.i154
  %shl34.i.i157 = shl nuw nsw i32 %exp.1.i.i151, 23
  %21 = or disjoint i32 %shl34.i.i157, %and15.i.i152
  %or36.i.i158 = or i32 %21, %sig.0.i.i149
  %22 = bitcast i32 %or36.i.i158 to float
  br label %if.end

if.end:                                           ; preds = %__compiler_rt_logbf.exit, %if.else33.i.i156, %if.then22.i.i160, %if.then18.i.i166, %__compiler_rt_scalbnf.exit
  %__c.addr.0 = phi float [ %retval.1.i.i, %if.else33.i.i156 ], [ %retval.1.i.i, %__compiler_rt_scalbnf.exit ], [ %retval.1.i.i, %if.then18.i.i166 ], [ %retval.1.i.i, %if.then22.i.i160 ], [ %__c, %__compiler_rt_logbf.exit ]
  %__d.addr.0 = phi float [ %22, %if.else33.i.i156 ], [ %__d, %__compiler_rt_scalbnf.exit ], [ %mul.i.i167, %if.then18.i.i166 ], [ %mul32.i.i165, %if.then22.i.i160 ], [ %__d, %__compiler_rt_logbf.exit ]
  %__ilogbw.0 = phi i32 [ %conv, %if.else33.i.i156 ], [ %conv, %__compiler_rt_scalbnf.exit ], [ %conv, %if.then18.i.i166 ], [ %conv, %if.then22.i.i160 ], [ 0, %__compiler_rt_logbf.exit ]
  %mul5 = fmul float %__d.addr.0, %__d.addr.0
  %23 = tail call float @llvm.fmuladd.f32(float %__c.addr.0, float %__c.addr.0, float %mul5)
  %mul6 = fmul float %__b, %__d.addr.0
  %24 = tail call float @llvm.fmuladd.f32(float %__a, float %__c.addr.0, float %mul6)
  %div = fdiv float %24, %23
  %sub7 = sub nsw i32 0, %__ilogbw.0
  %25 = bitcast float %div to i32
  %and.i.i174 = lshr i32 %25, 23
  %shr.i.i175 = and i32 %and.i.i174, 255
  %cmp.i.i176 = fcmp oeq float %div, 0.000000e+00
  %cmp2.i.i177 = icmp eq i32 %shr.i.i175, 255
  %or.cond.i.i178 = or i1 %cmp.i.i176, %cmp2.i.i177
  br i1 %or.cond.i.i178, label %__compiler_rt_scalbnf.exit207, label %if.end.i.i179

if.end.i.i179:                                    ; preds = %if.end
  %and4.i.i180 = and i32 %25, 8388607
  %cmp5.i.i181 = icmp eq i32 %shr.i.i175, 0
  br i1 %cmp5.i.i181, label %if.then7.i.i202, label %if.end10.i.i182

if.then7.i.i202:                                  ; preds = %if.end.i.i179
  %26 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and4.i.i180, i1 true)
  %sub.i.i.i203 = add nsw i32 %26, -8
  %shl.i.i.i204 = shl i32 %and4.i.i180, %sub.i.i.i203
  %sub2.i.i.i205 = sub nsw i32 9, %26
  %and9.i.i206 = and i32 %shl.i.i.i204, -8388609
  br label %if.end10.i.i182

if.end10.i.i182:                                  ; preds = %if.then7.i.i202, %if.end.i.i179
  %sig.0.i.i183 = phi i32 [ %and9.i.i206, %if.then7.i.i202 ], [ %and4.i.i180, %if.end.i.i179 ]
  %exp.0.i.i184 = phi i32 [ %sub2.i.i.i205, %if.then7.i.i202 ], [ %shr.i.i175, %if.end.i.i179 ]
  %exp.1.i.i185 = tail call i32 @llvm.sadd.sat.i32(i32 %exp.0.i.i184, i32 range(i32 -2147483647, -2147483648) %sub7)
  %and15.i.i186 = and i32 %25, -2147483648
  %cmp16.i.i187 = icmp sgt i32 %exp.1.i.i185, 254
  br i1 %cmp16.i.i187, label %if.then18.i.i200, label %if.else.i.i188

if.then18.i.i200:                                 ; preds = %if.end10.i.i182
  %27 = tail call float @llvm.copysign.f32(float 0x47E0000000000000, float %div)
  %mul.i.i201 = fmul float %27, 2.000000e+00
  br label %__compiler_rt_scalbnf.exit207

if.else.i.i188:                                   ; preds = %if.end10.i.i182
  %cmp20.i.i189 = icmp slt i32 %exp.1.i.i185, 1
  br i1 %cmp20.i.i189, label %if.then22.i.i194, label %if.else33.i.i190

if.then22.i.i194:                                 ; preds = %if.else.i.i188
  %or23.i.i195 = or i32 %sig.0.i.i183, %and15.i.i186
  %or24.i.i196 = or disjoint i32 %or23.i.i195, 8388608
  %28 = bitcast i32 %or24.i.i196 to float
  %29 = tail call i32 @llvm.smax.i32(i32 %exp.1.i.i185, i32 -125)
  %spec.store.select.i.i197 = shl nsw i32 %29, 23
  %shl.i.i198 = add nsw i32 %spec.store.select.i.i197, 1056964608
  %30 = bitcast i32 %shl.i.i198 to float
  %mul32.i.i199 = fmul float %28, %30
  br label %__compiler_rt_scalbnf.exit207

if.else33.i.i190:                                 ; preds = %if.else.i.i188
  %shl34.i.i191 = shl nuw nsw i32 %exp.1.i.i185, 23
  %31 = or disjoint i32 %shl34.i.i191, %and15.i.i186
  %or36.i.i192 = or i32 %31, %sig.0.i.i183
  %32 = bitcast i32 %or36.i.i192 to float
  br label %__compiler_rt_scalbnf.exit207

__compiler_rt_scalbnf.exit207:                    ; preds = %if.end, %if.then18.i.i200, %if.then22.i.i194, %if.else33.i.i190
  %retval.1.i.i193 = phi float [ %div, %if.end ], [ %mul.i.i201, %if.then18.i.i200 ], [ %mul32.i.i199, %if.then22.i.i194 ], [ %32, %if.else33.i.i190 ]
  %33 = fneg float %__d.addr.0
  %neg = fmul float %__a, %33
  %34 = tail call float @llvm.fmuladd.f32(float %__b, float %__c.addr.0, float %neg)
  %div10 = fdiv float %34, %23
  %35 = bitcast float %div10 to i32
  %and.i.i208 = lshr i32 %35, 23
  %shr.i.i209 = and i32 %and.i.i208, 255
  %cmp.i.i210 = fcmp oeq float %div10, 0.000000e+00
  %cmp2.i.i211 = icmp eq i32 %shr.i.i209, 255
  %or.cond.i.i212 = or i1 %cmp.i.i210, %cmp2.i.i211
  br i1 %or.cond.i.i212, label %__compiler_rt_scalbnf.exit241, label %if.end.i.i213

if.end.i.i213:                                    ; preds = %__compiler_rt_scalbnf.exit207
  %and4.i.i214 = and i32 %35, 8388607
  %cmp5.i.i215 = icmp eq i32 %shr.i.i209, 0
  br i1 %cmp5.i.i215, label %if.then7.i.i236, label %if.end10.i.i216

if.then7.i.i236:                                  ; preds = %if.end.i.i213
  %36 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %and4.i.i214, i1 true)
  %sub.i.i.i237 = add nsw i32 %36, -8
  %shl.i.i.i238 = shl i32 %and4.i.i214, %sub.i.i.i237
  %sub2.i.i.i239 = sub nsw i32 9, %36
  %and9.i.i240 = and i32 %shl.i.i.i238, -8388609
  br label %if.end10.i.i216

if.end10.i.i216:                                  ; preds = %if.then7.i.i236, %if.end.i.i213
  %sig.0.i.i217 = phi i32 [ %and9.i.i240, %if.then7.i.i236 ], [ %and4.i.i214, %if.end.i.i213 ]
  %exp.0.i.i218 = phi i32 [ %sub2.i.i.i239, %if.then7.i.i236 ], [ %shr.i.i209, %if.end.i.i213 ]
  %exp.1.i.i219 = tail call i32 @llvm.sadd.sat.i32(i32 %exp.0.i.i218, i32 range(i32 -2147483647, -2147483648) %sub7)
  %and15.i.i220 = and i32 %35, -2147483648
  %cmp16.i.i221 = icmp sgt i32 %exp.1.i.i219, 254
  br i1 %cmp16.i.i221, label %__compiler_rt_scalbnf.exit241.thread, label %if.else.i.i222

__compiler_rt_scalbnf.exit241.thread:             ; preds = %if.end10.i.i216
  %37 = tail call float @llvm.copysign.f32(float 0x47E0000000000000, float %div10)
  %mul.i.i235 = fmul float %37, 2.000000e+00
  br label %if.end61

if.else.i.i222:                                   ; preds = %if.end10.i.i216
  %cmp20.i.i223 = icmp slt i32 %exp.1.i.i219, 1
  br i1 %cmp20.i.i223, label %if.then22.i.i228, label %if.else33.i.i224

if.then22.i.i228:                                 ; preds = %if.else.i.i222
  %or23.i.i229 = or i32 %sig.0.i.i217, %and15.i.i220
  %or24.i.i230 = or disjoint i32 %or23.i.i229, 8388608
  %38 = bitcast i32 %or24.i.i230 to float
  %39 = tail call i32 @llvm.smax.i32(i32 %exp.1.i.i219, i32 -125)
  %spec.store.select.i.i231 = shl nsw i32 %39, 23
  %shl.i.i232 = add nsw i32 %spec.store.select.i.i231, 1056964608
  %40 = bitcast i32 %shl.i.i232 to float
  %mul32.i.i233 = fmul float %38, %40
  br label %__compiler_rt_scalbnf.exit241

if.else33.i.i224:                                 ; preds = %if.else.i.i222
  %shl34.i.i225 = shl nuw nsw i32 %exp.1.i.i219, 23
  %41 = or disjoint i32 %shl34.i.i225, %and15.i.i220
  %or36.i.i226 = or i32 %41, %sig.0.i.i217
  %42 = bitcast i32 %or36.i.i226 to float
  br label %__compiler_rt_scalbnf.exit241

__compiler_rt_scalbnf.exit241:                    ; preds = %__compiler_rt_scalbnf.exit207, %if.then22.i.i228, %if.else33.i.i224
  %retval.1.i.i227 = phi float [ %div10, %__compiler_rt_scalbnf.exit207 ], [ %42, %if.else33.i.i224 ], [ %mul32.i.i233, %if.then22.i.i228 ]
  %43 = fcmp uno float %retval.1.i.i193, 0.000000e+00
  %44 = fcmp uno float %retval.1.i.i227, 0.000000e+00
  %or.cond120 = select i1 %43, i1 %44, i1 false
  br i1 %or.cond120, label %if.then15, label %if.end61

if.then15:                                        ; preds = %__compiler_rt_scalbnf.exit241
  %cmp = fcmp oeq float %23, 0.000000e+00
  br i1 %cmp, label %land.lhs.true17, label %if.else

land.lhs.true17:                                  ; preds = %if.then15
  %45 = fcmp uno float %__a, 0.000000e+00
  %46 = fcmp uno float %__b, 0.000000e+00
  %or.cond121 = and i1 %45, %46
  br i1 %or.cond121, label %if.else, label %if.then18

if.then18:                                        ; preds = %land.lhs.true17
  %47 = tail call float @llvm.copysign.f32(float 0x7FF0000000000000, float %__c.addr.0)
  %mul = fmul float %__a, %47
  %mul20 = fmul float %__b, %47
  br label %if.end61

if.else:                                          ; preds = %land.lhs.true17, %if.then15
  %48 = tail call float @llvm.fabs.f32(float %__a)
  %49 = fcmp oeq float %48, 0x7FF0000000000000
  %50 = tail call float @llvm.fabs.f32(float %__b)
  %51 = fcmp oeq float %50, 0x7FF0000000000000
  %or.cond123 = or i1 %49, %51
  %or.cond123.not = xor i1 %or.cond123, true
  %52 = tail call float @llvm.fabs.f32(float %__c.addr.0)
  %53 = fcmp ueq float %52, 0x7FF0000000000000
  %or.cond125 = select i1 %or.cond123.not, i1 true, i1 %53
  %54 = tail call float @llvm.fabs.f32(float %__d.addr.0)
  %55 = fcmp ueq float %54, 0x7FF0000000000000
  %or.cond127 = select i1 %or.cond125, i1 true, i1 %55
  br i1 %or.cond127, label %if.else38, label %if.then25

if.then25:                                        ; preds = %if.else
  %conv26 = uitofp i1 %49 to float
  %56 = tail call float @llvm.copysign.f32(float %conv26, float %__a)
  %conv28 = uitofp i1 %51 to float
  %57 = tail call float @llvm.copysign.f32(float %conv28, float %__b)
  %mul30 = fmul float %57, %__d.addr.0
  %58 = tail call float @llvm.fmuladd.f32(float %56, float %__c.addr.0, float %mul30)
  %mul31 = fmul float %58, 0x7FF0000000000000
  %neg35 = fmul float %56, %33
  %59 = tail call float @llvm.fmuladd.f32(float %57, float %__c.addr.0, float %neg35)
  %mul36 = fmul float %59, 0x7FF0000000000000
  br label %if.end61

if.else38:                                        ; preds = %if.else
  %or.cond = fcmp une float %retval.0.i.i, 0x7FF0000000000000
  %60 = fcmp ueq float %48, 0x7FF0000000000000
  %or.cond129 = or i1 %60, %or.cond
  %61 = fcmp ueq float %50, 0x7FF0000000000000
  %or.cond131 = or i1 %61, %or.cond129
  br i1 %or.cond131, label %if.end61, label %if.then44

if.then44:                                        ; preds = %if.else38
  %62 = fcmp oeq float %52, 0x7FF0000000000000
  %conv46 = uitofp i1 %62 to float
  %63 = tail call float @llvm.copysign.f32(float %conv46, float %__c.addr.0)
  %64 = fcmp oeq float %54, 0x7FF0000000000000
  %conv48 = uitofp i1 %64 to float
  %65 = tail call float @llvm.copysign.f32(float %conv48, float %__d.addr.0)
  %mul50 = fmul float %__b, %65
  %66 = tail call float @llvm.fmuladd.f32(float %__a, float %63, float %mul50)
  %mul51 = fmul float %66, 0.000000e+00
  %67 = fneg float %65
  %neg55 = fmul float %__a, %67
  %68 = tail call float @llvm.fmuladd.f32(float %__b, float %63, float %neg55)
  %mul56 = fmul float %68, 0.000000e+00
  br label %if.end61

if.end61:                                         ; preds = %__compiler_rt_scalbnf.exit241.thread, %if.then18, %if.else38, %if.then44, %if.then25, %__compiler_rt_scalbnf.exit241
  %z.sroa.8.0 = phi float [ %mul36, %if.then25 ], [ %mul56, %if.then44 ], [ %mul20, %if.then18 ], [ %retval.1.i.i227, %__compiler_rt_scalbnf.exit241 ], [ %retval.1.i.i227, %if.else38 ], [ %mul.i.i235, %__compiler_rt_scalbnf.exit241.thread ]
  %z.sroa.0.0 = phi float [ %mul31, %if.then25 ], [ %mul51, %if.then44 ], [ %mul, %if.then18 ], [ %retval.1.i.i193, %__compiler_rt_scalbnf.exit241 ], [ %retval.1.i.i193, %if.else38 ], [ %retval.1.i.i193, %__compiler_rt_scalbnf.exit241.thread ]
  %.fca.0.insert = insertvalue { float, float } poison, float %z.sroa.0.0, 0
  %.fca.1.insert = insertvalue { float, float } %.fca.0.insert, float %z.sroa.8.0, 1
  ret { float, float } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
