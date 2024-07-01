#include <stdio.h>
#include <stdlib.h>

#define MAX_N 500
#define MAX_M 1099
#define IFN 6535

typedef struct {
    int v1, v2;
    long int w;
} Edge;

int subsets[MAX_N];
int t[MAX_M];
int Count = 0;

int cmp(const void *a, const void *b) {
    return ((Edge *)a)->w - ((Edge *)b)->w;
}

int find(int subsets[], int i) {
    if (subsets[i] != i)
        subsets[i] = find(subsets, subsets[i]);
    return subsets[i];
}

void Union(int subsets[], int x, int y) {
    subsets[find(subsets, y)] = x;
}

int kruskal(Edge edges[], int n, int m) {
    Count = 0;
    qsort(edges, m, sizeof(Edge), cmp);

    for (int i = 1; i <= n; i++)
        subsets[i] = i;

    long int Weight = 0;

    for (int i = 0; i < m; i++) {
        int v1 = edges[i].v1;
        int v2 = edges[i].v2;

        if (find(subsets, v1) != find(subsets, v2)) {
            Union(subsets, v1, v2);
            Weight += edges[i].w;
            t[Count++] = i;
        }

        if (Count == n - 1) break;
    }

    if (Count == n - 1)
        return Weight;
    else
        return -1;
}

int main() {
    int n, m;
    scanf("%d %d", &n, &m);
    Edge edges[m];
    Edge edgesCopy[m];

    for (int i = 0; i < m; i++) {
        scanf("%d %d %ld", &edges[i].v1, &edges[i].v2, &edges[i].w);
    }

    int min = kruskal(edges, n, m), min2;

    if (min != -1) {
        printf("%d\n", min);

        int unique = 1; 

        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < m; j++) {
                edgesCopy[j] = edges[j];
            }
            edgesCopy[t[i]].w = IFN;
            min2 = kruskal(edgesCopy, n, m);

            int edgeCount = 0;
            for (int k = 0; k < m; k++) {
                if (edgesCopy[k].w != IFN) {
                    edgeCount++;
                }
            }

            if (min == min2 && edgeCount == n - 1) {
                unique = 0; 
                break;
            }
        }

        if (unique) {
            printf("Yes\n");
        } else {
            printf("No\n");
        }

    } else {
        printf("No MST\n");
        int num = 0;
        for (int i = 1; i <= n; i++) {
            if (find(subsets, i) == i)
                num++;
        }
        printf("%d", num);
    }

    return 0;
}
