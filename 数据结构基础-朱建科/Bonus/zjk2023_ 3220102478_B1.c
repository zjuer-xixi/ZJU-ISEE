/* Author: Lu ZeXi;  ID: 3220102478;  No.01 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    int N;
    scanf("%d", &N);

    // Stacks to simulate two queues
    int s1[N], s2[N];
    int tos1 = -1, tos2 = -1;

    // Initialize stacks with zeros
    memset(s1, 0, sizeof(s1));
    memset(s2, 0, sizeof(s2));

    int number, time = 0;
    char op;

    for (int i = 1; i <= N; i++) {
        getchar();
        scanf("%c", &op);

        if (op == 'I') {
            // 'I' operation (enqueue)
            scanf("%d", &number);
            s1[++tos1] = number;
        } else if (op == 'O') {
            // 'O' operation (dequeue)

            if (tos2 == -1) {
                // Transfer elements from s1 to s2 if s2 is empty
                while (tos1 != -1) {
                    s2[++tos2] = s1[tos1--];
                    time += 2;
                }
                time++;

                // Print the dequeued element and time taken
                if (tos2 != -1)
                    printf("%d %d\n", s2[tos2--], time);
                else
                    printf("ERROR\n");

                time = 0;
            } else {
                // Pop from s2 and print the dequeued element with time taken
                printf("%d 1\n", s2[tos2--]);
            }
        }
    }

    return 0;
}

