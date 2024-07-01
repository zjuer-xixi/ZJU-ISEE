#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define maxn 1000 
#define inf 1e6 

struct node {
    int pren[maxn];
    int postn[maxn];
};

struct node nds[maxn];

int capacity[maxn][maxn] = {0};
int flow[maxn][maxn];
int source, target, ans, id;
int to[17576];

int stringToNumber(char *s) {
    int d = 0;
    while (*s) {
        d = d * 26 + *s - 'A';
        s++;
    }
    return to[d] ? to[d] : (to[d] = ++id);
}

bool canAdjust() {
    bool vis[maxn] = {false};
    int toflow[maxn], pre[maxn];
    int head;

    for (int i = 0; i < maxn; ++i) {
        vis[i] = false;
        toflow[i] = 0;
        pre[i] = -1;
    }

    toflow[source] = inf;
    vis[source] = true;

    int queue[maxn];
    int front = 0, rear = 0;

    queue[rear++] = source;

    while (front < rear) {
        head = queue[front++];

        for (int i = 0; i < maxn; ++i) {
            if (!vis[i] && capacity[head][i] > flow[head][i]) {
                pre[i] = head;
                vis[i] = true;
                toflow[i] = toflow[head] < (capacity[head][i] - flow[head][i]) ? toflow[head] : (capacity[head][i] - flow[head][i]);

                if (i == target) {
                    ans += toflow[target];

                    int temp = target;
                    while (pre[temp] != -1) {
                        flow[pre[temp]][temp] += toflow[target];
                        flow[temp][pre[temp]] -= toflow[target];
                        temp = pre[temp];
                    }
                    return true;
                }

                queue[rear++] = i;
            }
        }
    }

    return false;
}

int main() {
    int N, cap;
    char s1[50], s2[50];

    scanf("%s %s %d", s1, s2, &N);
    source = stringToNumber(s1);
    target = stringToNumber(s2);


    memset(capacity, 0, sizeof(capacity));
    memset(flow, 0, sizeof(flow));

    while (N--) {
        scanf("%s %s %d", s1, s2, &cap);
        capacity[stringToNumber(s1)][stringToNumber(s2)] = cap;
    }
    ans = 0;
    while (canAdjust()) {
    }

    printf("%d\n", ans);

    return 0;
}

