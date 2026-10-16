// 矩阵：int 与 float 的乘法、转置、行列式（高斯消元，float）、迹。
#include <stdint.h>

#define N 12
static int a[N][N], b[N][N], c[N][N];
static float fa[N][N], fb[N][N], fc[N][N];

static void imul(void) {
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) {
            int s = 0;
            for (int k = 0; k < N; k++) s += a[i][k] * b[k][j];
            c[i][j] = s;
        }
}

static void fmul(void) {
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) {
            float s = 0;
            for (int k = 0; k < N; k++) s += fa[i][k] * fb[k][j];
            fc[i][j] = s;
        }
}

static void transpose(float m[N][N]) {
    for (int i = 0; i < N; i++)
        for (int j = i + 1; j < N; j++) { float t = m[i][j]; m[i][j] = m[j][i]; m[j][i] = t; }
}

static float det(float m[N][N]) {
    float d = 1;
    for (int col = 0; col < N; col++) {
        int piv = col;
        for (int r = col + 1; r < N; r++) if (__builtin_fabsf(m[r][col]) > __builtin_fabsf(m[piv][col])) piv = r;
        if (m[piv][col] == 0) return 0;
        if (piv != col) { for (int k = 0; k < N; k++) { float t = m[col][k]; m[col][k] = m[piv][k]; m[piv][k] = t; } d = -d; }
        d *= m[col][col];
        for (int r = col + 1; r < N; r++) {
            float f = m[r][col] / m[col][col];
            for (int k = col; k < N; k++) m[r][k] -= f * m[col][k];
        }
    }
    return d;
}

int main(void) {
    uint32_t s = 7;
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) {
            s = s * 1103515245u + 12345u;
            a[i][j] = (int)(s >> 20) % 17 - 8;
            b[i][j] = (int)(s >> 8) % 13 - 6;
            fa[i][j] = (float)a[i][j] * 0.25f;
            fb[i][j] = (float)b[i][j] * 0.5f + (i == j ? 3.0f : 0.0f);
        }
    imul();
    fmul();
    transpose(fc);
    uint32_t h = 0;
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) {
            h = h * 33 + (uint32_t)c[i][j];
            h ^= (uint32_t)(int)(fc[i][j] * 16.0f);
        }
    float d = det(fb);
    float tr = 0;
    for (int i = 0; i < N; i++) tr += fc[i][i];
    union { float f; uint32_t u; } u1 = {d}, u2 = {tr};
    return (int)(h ^ u1.u ^ (u2.u >> 3));
}
