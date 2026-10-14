#pragma once
#define INFINITY __builtin_inff()
#define NAN __builtin_nanf("")
#define HUGE_VAL __builtin_huge_val()
#define HUGE_VALF __builtin_huge_valf()
#define isnan(x) __builtin_isnan(x)
#define isinf(x) __builtin_isinf(x)
#define isfinite(x) __builtin_isfinite(x)
#define signbit(x) __builtin_signbit(x)
#define fpclassify(x) __builtin_fpclassify(FP_NAN, FP_INFINITE, FP_NORMAL, FP_SUBNORMAL, FP_ZERO, x)
#define FP_NAN 0
#define FP_INFINITE 1
#define FP_ZERO 2
#define FP_SUBNORMAL 3
#define FP_NORMAL 4
double fabs(double);
float fabsf(float);
double copysign(double, double);
float copysignf(float, float);
double fmax(double, double);
double fmin(double, double);
float fmaxf(float, float);
float fminf(float, float);
double logb(double);
float logbf(float);
double scalbn(double, int);
float scalbnf(float, int);
