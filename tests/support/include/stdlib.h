#pragma once
#include <stddef.h>
void abort(void) __attribute__((noreturn));
void exit(int) __attribute__((noreturn));
int abs(int);
long labs(long);
long long llabs(long long);
int rand(void);
void srand(unsigned);
