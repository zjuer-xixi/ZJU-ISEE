bool IsTopSeq( LGraph Graph, Vertex Seq[] ){
    int n = Graph->Nv;
    int indegree[n];
    for(int i = 0; i < n; i++){
        indegree[i] = 0;
    }
    for(int i = 0; i < n; i++){
        PtrToAdjVNode p = Graph->G[i].FirstEdge;
        while(p != NULL){
            indegree[p->AdjV]++;
            p = p->Next;
        }
    }
    for(int i = 0; i < n; i++){
        if(indegree[Seq[i]-1] != 0)
            return false;
        else{
            PtrToAdjVNode p = Graph->G[Seq[i]-1].FirstEdge;
            while(p != NULL){
                indegree[p->AdjV]--;
                p = p->Next;
            }
        }
    }
    return true;
}
