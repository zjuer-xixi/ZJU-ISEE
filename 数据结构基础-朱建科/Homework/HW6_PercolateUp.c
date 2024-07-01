void PercolateUp(int p, PriorityQueue H) {
    int i = p;
    int X = H->Elements[i];
    while (i > 1 && H->Elements[i / 2] > X) {
        H->Elements[i] = H->Elements[i / 2];
        i = i / 2;
    }
    H->Elements[i] = X;
}

void PercolateDown(int p, PriorityQueue H) {
    int child;
    int temp = H->Elements[p];
    while (2 * p <= H->Size) {
        child = 2 * p;
        if (child + 1 <= H->Size && H->Elements[child + 1] < H->Elements[child]) {
            child++;
        }
        if (H->Elements[child] < temp) {
            H->Elements[p] = H->Elements[child];
        } else {
            break;
        }
        p = child;
    }
    H->Elements[p] = temp;
}
