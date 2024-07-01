#include <stdio.h>
#include <stdlib.h>

#define MaxVertices 10  /* maximum number of vertices */
typedef int Vertex;     /* vertices are numbered from 0 to MaxVertices-1 */
typedef struct VNode *PtrToVNode;
struct VNode {
    Vertex Vert;
    PtrToVNode Next;
};
typedef struct GNode *Graph;
struct GNode {
    int NumOfVertices;
    int NumOfEdges;
    PtrToVNode *Array;
};

Graph ReadG() { /* details omitted */
    int a,b;
    Graph G = (Graph)malloc(sizeof(struct GNode));
    scanf("%d%d",&G -> NumOfVertices,&G -> NumOfEdges);
    G -> Array = (PtrToVNode *)malloc(sizeof(PtrToVNode) * G -> NumOfVertices);
    for(int i = 0;i < G -> NumOfVertices;i ++) {
        G -> Array[i] = NULL;
    }
    for(int i = 0;i < G -> NumOfEdges;i ++) {
        scanf("%d%d",&a,&b);
        PtrToVNode p = (PtrToVNode)malloc(sizeof(struct VNode));
        p -> Vert = b;
        p -> Next = G -> Array[a];
        G -> Array[a] = p;
    }
    return G;
}

void PrintV( Vertex V ) {
   printf("%d ", V);
}

void StronglyConnectedComponents( Graph G, void (*visit)(Vertex V) );

int main() {
    Graph G = ReadG();
    StronglyConnectedComponents( G, PrintV );
    return 0;
}

int flag[MaxVertices] = {0};
int visited[MaxVertices] = {0};
int tour[MaxVertices] = {0};

void DFS(Graph G, Vertex V, int i);
void visitAndMark(Graph G, Vertex V, void (*visit)(Vertex V));

void StronglyConnectedComponents(Graph G, void (*visit)(Vertex V)) {
    for (int l = 0; l < G->NumOfVertices; l++) {
        if (flag[l] == 0) {
            visitAndMark(G, l, visit);
            printf("\n");
        }
        for(int i = 0; i < MaxVertices; i++)
            visited[i] = 0;
    }
}

void visitAndMark(Graph G, Vertex V, void (*visit)(Vertex V)) {
    visit(V);
    flag[V] = 1;
    DFS(G, V, 0);
    for (int i = 0; i < MaxVertices; i++) {
        if(i == V || visited[i] == 0)
            continue;
        else{
            DFS(G, i, 1);
            if(tour[V] == 1){
                visit(i);
                flag[i] = 1;
            }
            for(int j = 0; j < MaxVertices; j++)
                tour[i] = 0;
        }
    }
}

void DFS(Graph G, Vertex V, int i) {
    if(i == 0){
        visited[V] = 1;
        for (PtrToVNode w = G->Array[V]; w != NULL; w = w->Next) {
            if (!visited[w->Vert]) 
                DFS(G, w->Vert, 0);
        }
    }   
    if(i == 1){
        tour[V] = 1;
        for (PtrToVNode w = G->Array[V]; w != NULL; w = w->Next) {
            if (!tour[w->Vert]) 
                DFS(G, w->Vert, 1);
        }
    }   
}

