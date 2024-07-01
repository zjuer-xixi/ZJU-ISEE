#include <stdio.h>

int Find(int Label[], int n);
void Union(int Label[], int m, int n);

int main() {
    int N, m, n, components = 0;
    scanf("%d", &N);
    int Label[N + 1];

    for (int i = 0; i <= N; i++) {
        Label[i] = i;
    }

    char c;
    while ((c = getchar()) != 'S') {
        if (c == 'C') {
            scanf("%d %d", &m, &n);
            if (Find(Label, m) == Find(Label, n)) {
                printf("yes\n");
            } else {
                printf("no\n");
            }
        } else if (c == 'I') {
            scanf("%d %d", &m, &n);
            if (Find(Label, m) != Find(Label, n)) {
                Union(Label, m, n);
            }
        }
    }

    for (int i = 1; i <= N; i++) {
        if (Label[i] == i) {
            components++;
        }
    }

    if (components == 1) {
        printf("The network is connected.");
    } else {
        printf("There are %d components.\n", components);
    }

    return 0;
}

int Find(int Label[], int n) {
    if (Label[n] != n) {
        Label[n] = Find(Label, Label[n]);
    }
    return Label[n];
}

void Union(int Label[], int m, int n) {
    Label[Find(Label, n)] = Find(Label, m);
}
