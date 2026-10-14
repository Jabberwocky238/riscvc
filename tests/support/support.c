/* riscvc 端到端对拍的桩：两边链同一份（clang -O2 编）。abort / exit ⇒ ebreak 停机，退出码在 a0。 */
#include <stddef.h>
typedef struct FILE FILE;
FILE *stderr, *stdout;
int printf(const char *f, ...) { (void)f; return 0; }
int fprintf(FILE *s, const char *f, ...) { (void)s; (void)f; return 0; }
int puts(const char *s) { (void)s; return 0; }
int putchar(int c) { return c; }
int fflush(FILE *s) { (void)s; return 0; }
__attribute__((noreturn)) void exit(int code) {
  register int a0 __asm__("a0") = code;
  for (;;) __asm__ volatile("ebreak" : : "r"(a0));
}
__attribute__((noreturn)) void abort(void) { exit(134); }
void *memcpy(void *d, const void *s, size_t n) { char *a = d; const char *b = s; while (n--) *a++ = *b++; return d; }
void *memmove(void *d, const void *s, size_t n) {
  char *a = d; const char *b = s;
  if (a < b) while (n--) *a++ = *b++;
  else while (n--) a[n] = b[n];
  return d;
}
void *memset(void *d, int c, size_t n) { char *a = d; while (n--) *a++ = (char)c; return d; }
int memcmp(const void *x, const void *y, size_t n) {
  const unsigned char *a = x, *b = y;
  for (; n; n--, a++, b++) if (*a != *b) return *a - *b;
  return 0;
}
size_t strlen(const char *s) { size_t n = 0; while (s[n]) n++; return n; }
int strcmp(const char *a, const char *b) { while (*a && *a == *b) a++, b++; return (unsigned char)*a - (unsigned char)*b; }
int abs(int x) { return x < 0 ? -x : x; }
long labs(long x) { return x < 0 ? -x : x; }
long long llabs(long long x) { return x < 0 ? -x : x; }
static unsigned seed = 1;
int rand(void) { seed = seed * 1103515245u + 12345u; return (int)(seed >> 1); }
void srand(unsigned s) { seed = s; }
double fabs(double x) { return __builtin_fabs(x); }
float fabsf(float x) { return __builtin_fabsf(x); }
double copysign(double x, double y) { return __builtin_copysign(x, y); }
float copysignf(float x, float y) { return __builtin_copysignf(x, y); }
