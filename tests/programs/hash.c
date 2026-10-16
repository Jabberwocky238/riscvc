// 哈希：CRC32（运行时建表）、FNV-1a、MurmurHash3 x86_32、Adler-32，喂同一段伪随机字节。
#include <stdint.h>

static uint32_t table[256];

static void crc_init(void) {
    for (uint32_t i = 0; i < 256; i++) {
        uint32_t c = i;
        for (int k = 0; k < 8; k++) c = c & 1 ? 0xedb88320u ^ (c >> 1) : c >> 1;
        table[i] = c;
    }
}

static uint32_t crc32(const uint8_t *p, int n) {
    uint32_t c = 0xffffffffu;
    while (n--) c = table[(c ^ *p++) & 0xff] ^ (c >> 8);
    return c ^ 0xffffffffu;
}

static uint32_t fnv1a(const uint8_t *p, int n) {
    uint32_t h = 2166136261u;
    for (int i = 0; i < n; i++) { h ^= p[i]; h *= 16777619u; }
    return h;
}

static uint32_t rotl(uint32_t x, int r) { return (x << r) | (x >> (32 - r)); }

static uint32_t murmur3(const uint8_t *p, int n, uint32_t seed) {
    uint32_t h = seed, c1 = 0xcc9e2d51u, c2 = 0x1b873593u;
    int blocks = n / 4;
    for (int i = 0; i < blocks; i++) {
        uint32_t k = (uint32_t)p[4 * i] | (uint32_t)p[4 * i + 1] << 8 | (uint32_t)p[4 * i + 2] << 16 | (uint32_t)p[4 * i + 3] << 24;
        k *= c1; k = rotl(k, 15); k *= c2;
        h ^= k; h = rotl(h, 13); h = h * 5 + 0xe6546b64u;
    }
    uint32_t k = 0;
    switch (n & 3) {
    case 3: k ^= (uint32_t)p[4 * blocks + 2] << 16; // fallthrough
    case 2: k ^= (uint32_t)p[4 * blocks + 1] << 8;  // fallthrough
    case 1: k ^= p[4 * blocks]; k *= c1; k = rotl(k, 15); k *= c2; h ^= k;
    }
    h ^= (uint32_t)n;
    h ^= h >> 16; h *= 0x85ebca6bu; h ^= h >> 13; h *= 0xc2b2ae35u; h ^= h >> 16;
    return h;
}

static uint32_t adler32(const uint8_t *p, int n) {
    uint32_t a = 1, b = 0;
    for (int i = 0; i < n; i++) { a = (a + p[i]) % 65521; b = (b + a) % 65521; }
    return b << 16 | a;
}

static uint8_t buf[1027];

int main(void) {
    uint32_t s = 0x9e3779b9u;
    for (int i = 0; i < (int)sizeof buf; i++) { s = s * 1664525u + 1013904223u; buf[i] = (uint8_t)(s >> 24); }
    crc_init();
    uint32_t h = 0;
    for (int n = 0; n <= (int)sizeof buf; n += 97)
        h ^= crc32(buf, n) + rotl(fnv1a(buf, n), 7) + rotl(murmur3(buf, n, (uint32_t)n), 13) + adler32(buf, n);
    return (int)h;
}
