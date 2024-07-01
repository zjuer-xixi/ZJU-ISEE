#include<stdio.h>
int main(){
    int V, E, K, flag = 1;
    scanf("%d %d",&V, &E);
    int adj_mat[V][V];
    int Vertex[V];
    for(int i = 0; i < V; i++){
        for(int j = 0; j < V; j++){
            adj_mat[i][j] = 0;
        }
    }
    for(int i = 1; i <= E; i++){
        int m, n;
        scanf("%d %d", &m, &n);
        adj_mat[m-1][n-1] = 1;
        adj_mat[n-1][m-1] = 1;
    }
    scanf("%d", &K);
    for(int i = 1; i <= K; i++){
        for(int i = 0; i < V; i++)
            Vertex[i] = 0;
		int VertexNum;
        scanf("%d", &VertexNum);
        int V1, V2;
        scanf("%d", &V1);
        for(int j = 1; j < VertexNum; j++){
            scanf("%d", &V2);
            if(adj_mat[V1-1][V2-1] == 0){
                flag = 0;
                break;
            }
            V1 = V2;
            Vertex[V1-1]++;
        }
        for(int i = 0; i < V; i++){
            if(Vertex[i] != 1)
                flag = 0;
        }
        if(flag == 0){
            printf("NO\n");
            flag = 1;
        }
       else{
           printf("YES\n");
       }
    }
}
