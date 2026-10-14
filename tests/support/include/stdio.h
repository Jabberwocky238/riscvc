/* riscvc 端到端对拍的最小 libc：输出全吞掉（判据只看 main 的返回值）。 */
#pragma once
#include <stddef.h>
typedef struct FILE FILE;
extern FILE *stderr, *stdout;
int printf(const char *, ...);
int fprintf(FILE *, const char *, ...);
int puts(const char *);
int putchar(int);
int fflush(FILE *);
