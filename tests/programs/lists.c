// 链表与树：静态池分配、单链表反转、归并排序、二叉搜索树插入 / 中序遍历 / 高度。
#include <stdint.h>
#include <stddef.h>

typedef struct Node { int v; struct Node *next; } Node;
typedef struct Tree { int key; struct Tree *l, *r; } Tree;

static Node pool[512];
static int used;
static Tree tpool[512];
static int tused;

static Node *cons(int v, Node *next) { Node *n = &pool[used++]; n->v = v; n->next = next; return n; }

static Node *reverse(Node *l) {
    Node *prev = NULL;
    while (l) { Node *n = l->next; l->next = prev; prev = l; l = n; }
    return prev;
}

static Node *merge(Node *a, Node *b) {
    Node head = {0, NULL}, *t = &head;
    while (a && b) {
        if (a->v <= b->v) { t->next = a; a = a->next; } else { t->next = b; b = b->next; }
        t = t->next;
    }
    t->next = a ? a : b;
    return head.next;
}

static Node *msort(Node *l) {
    if (!l || !l->next) return l;
    Node *slow = l, *fast = l->next;
    while (fast && fast->next) { slow = slow->next; fast = fast->next->next; }
    Node *b = slow->next;
    slow->next = NULL;
    return merge(msort(l), msort(b));
}

static Tree *insert(Tree *t, int k) {
    if (!t) { t = &tpool[tused++]; t->key = k; t->l = t->r = NULL; return t; }
    if (k < t->key) t->l = insert(t->l, k); else if (k > t->key) t->r = insert(t->r, k);
    return t;
}

static uint32_t walk(const Tree *t, uint32_t h) { return t ? walk(t->r, walk(t->l, h) * 7u + (uint32_t)t->key) : h; }
static int height(const Tree *t) { if (!t) return 0; int a = height(t->l), b = height(t->r); return 1 + (a > b ? a : b); }

int main(void) {
    Node *l = NULL;
    uint32_t s = 99;
    Tree *root = NULL;
    for (int i = 0; i < 400; i++) {
        s = s * 1664525u + 1013904223u;
        int v = (int)(s >> 16) % 1000;
        l = cons(v, l);
        root = insert(root, v);
    }
    l = reverse(l);
    uint32_t h = (uint32_t)l->v;
    l = msort(l);
    for (Node *n = l; n; n = n->next) {
        if (n->next && n->v > n->next->v) return -1;
        h = h * 3 + (uint32_t)n->v;
    }
    return (int)(h ^ walk(root, 0) ^ (uint32_t)height(root) << 24);
}
