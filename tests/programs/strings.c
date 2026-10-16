// 字符串：自己写的 atoi / itoa（各进制）/ 反转 / 查找子串 / 单词计数 / 大小写，结果拼进一个缓冲区再哈希。
#include <stdint.h>

static int my_atoi(const char *s) {
    int sign = 1, v = 0;
    while (*s == ' ') s++;
    if (*s == '-' || *s == '+') sign = *s++ == '-' ? -1 : 1;
    while (*s >= '0' && *s <= '9') v = v * 10 + (*s++ - '0');
    return sign * v;
}

static int itoa(int64_t v, int base, char *out) {
    char tmp[72];
    int n = 0, neg = v < 0;
    uint64_t u = neg ? (uint64_t)0 - (uint64_t)v : (uint64_t)v;
    do { int d = (int)(u % (uint64_t)base); tmp[n++] = (char)(d < 10 ? '0' + d : 'a' + d - 10); u /= (uint64_t)base; } while (u);
    int k = 0;
    if (neg) out[k++] = '-';
    while (n) out[k++] = tmp[--n];
    out[k] = 0;
    return k;
}

static void reverse(char *s, int n) {
    for (int i = 0, j = n - 1; i < j; i++, j--) { char t = s[i]; s[i] = s[j]; s[j] = t; }
}

static int find(const char *hay, const char *needle) {
    for (int i = 0; hay[i]; i++) {
        int j = 0;
        while (needle[j] && hay[i + j] == needle[j]) j++;
        if (!needle[j]) return i;
    }
    return -1;
}

static int words(const char *s) {
    int n = 0, in = 0;
    for (; *s; s++) {
        int sp = *s == ' ' || *s == '\t' || *s == '\n';
        if (!sp && !in) n++;
        in = !sp;
    }
    return n;
}

static void upper(char *s) {
    for (; *s; s++) if (*s >= 'a' && *s <= 'z') *s = (char)(*s - 'a' + 'A');
}

static char out[4096];

int main(void) {
    const char *nums[] = {"0", "-1", "  42", "+2147483647", "-2147483648", "123abc", "-0", "99999"};
    int at = 0;
    for (unsigned i = 0; i < sizeof nums / sizeof *nums; i++) {
        int v = my_atoi(nums[i]);
        for (int base = 2; base <= 36; base += 7) at += itoa(v, base, out + at);
        at += itoa((int64_t)v * 1000003, 10, out + at);
    }
    reverse(out, at);
    upper(out);
    const char *text = "the quick brown fox\tjumps over\nthe lazy dog  ";
    uint32_t h = (uint32_t)find(text, "lazy") * 1000u + (uint32_t)find(text, "cat") + (uint32_t)words(text) * 7u;
    for (int i = 0; i < at; i++) h = h * 131 + (uint8_t)out[i];
    return (int)h;
}
