#include<stdio.h>
#define MAXN 1000
#define INF 100000

int Find(int status[], int HashTable[], int N);
void Update(int status[], int HashTable[], int N);

int main(){
    int N;
    scanf("%d", &N);
    
    int HashTable[MAXN] = {0}, status[MAXN] = {0}, output[MAXN] = {0};
    
    for(int i = 0; i < N; i++){
        scanf("%d", &HashTable[i]);
        if(HashTable[i] > 0 && HashTable[i] % N == i)
            status[i] = 1;
        else
            status[i] = 0;
    }
    for(int i = 0; i < N; i++){
        output[i] = Find(status, HashTable, N);
        Update(status, HashTable, N);
    }
    printf("%d", output[0]);
    for(int i = 1; i < N; i++){
        if(output[i] > 0)
            printf(" %d", output[i]);
    }
    return 0;
}

int Find(int status[], int HashTable[], int N){
    int min = INF, index = -1;
    for(int i = 0; i < N; i++){
        if(status[i] == 1){
            if(min > HashTable[i]){
                min = HashTable[i];
                index = i;
            }
        }
    }
    if(index != -1)
        status[index] = 3;
    return min == INF ? -1 : min;
}

void Update(int status[], int HashTable[], int N){
    for(int i = 0; i < N; i++){
        if(status[i] == 0 && HashTable[i] > 0){
            status[i] = 1;
            int j = HashTable[i] % N;
            if(j > i){
                for(j = HashTable[i] % N - N; j < i; j++){
                    int k = j;
                    if(k < 0)
                        k = k + N;
                    if(status[k] != 3){
                        status[i] = 0;
                        break;
                    }            
                }
            } else {
                for(j = HashTable[i] % N; j < i; j++){
                    if(status[j] != 3){
                        status[i] = 0;
                        break;
                    }
                }
            }       
        }
    }
}
