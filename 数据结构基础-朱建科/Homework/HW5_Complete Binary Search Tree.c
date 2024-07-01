#include <stdio.h>
#include <stdlib.h>
void buildCompleteBST(int *completeBST, int *nodes, int *index, int positon);
int main(){
    int num, position, index;
    int nodes[1000], *completeBST;
    scanf("%d", &num);
    for (int i = 0; i < num; ++i) {
        scanf("%d", &nodes[i]);
    }
    for (int i = 0; i < num - 1; ++i) {
        for (int j = 0; j < num - i - 1; ++j) {
            if (nodes[j] > nodes[j + 1]) {
                int temp = nodes[j];
                nodes[j] = nodes[j + 1];
                nodes[j + 1] = temp;
            }
        }
    }

    completeBST = (int *)malloc((num + 1) * sizeof(int));
    completeBST[0] = num;  
    position = 1, index = 0;

    buildCompleteBST(completeBST, nodes, &index, position);
    int flag = 0;
    for (int i = 1; i <= completeBST[0]; i++) {
        if (flag == 1) {
            printf(" ");
        }
        else
        	flag = 1;
        printf("%d", completeBST[i]);
    }
    return 0;
}
void buildCompleteBST(int *completeBST, int *nodes, int *index, int position) {
    if (position >= 1 && position <= completeBST[0] && (*index) != completeBST[0]) {
        buildCompleteBST(completeBST, nodes, position * 2, index);
        completeBST[position] = nodes[(*index)++];
        buildCompleteBST(completeBST, nodes, position * 2 + 1, index);
    }
    else 
    	return;
}

