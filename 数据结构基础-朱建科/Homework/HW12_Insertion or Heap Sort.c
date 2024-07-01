#include<stdio.h>
#include<stdbool.h>

int flag = 0;
int Same(int A[], int B[], int N);
void PercDown(int a[], int i, int n);

int main() {

	int N;
	scanf("%d", &N);

	int I[N], H[N], B[N];
	for (int i = 0; i < N; i++) {
		scanf("%d", &I[i]);
		H[i] = I[i];
	}
	for (int i = 0; i < N; i++)
		scanf("%d", &B[i]);

	int temp, i, j;
	for (i = 1; i < N; i++) {
		temp = I[i];
		for (j = i; j > 0 && I[j-1] > temp; j--)
			I[j] = I[j-1];
		I[j] = temp;

		if(Same(I,B,N)){
			flag++;
			continue;
		}
			
		if(flag == 1) {
			printf("Insertion Sort\n");
			printf("%d", I[0]);
			for(i = 1; i < N; i++)
				printf(" %d", I[i]);
			return 0;
		}
	}
	for (i = N / 2; i >= 0; i--) 
		PercDown(H, i, N);
	for (i = N - 1; i > 0; i--) {
		int t = H[0];
		H[0] = H[i];
		H[i] = t;
		PercDown(H, 0, i);
		
		if(Same(H,B,N)){
			flag++;
			continue;
		}

		if(flag == 1) {
			printf("Heap Sort\n");
			printf("%d", H[0]);
			for(i = 1; i < N; i++)
				printf(" %d", H[i]);
			return 0;
		}
		
	}
}

int Same(int A[], int B[], int N) {
	for (int i = 0; i < N; i++) {
		if (A[i] != B[i])
			return 0;
	}
	return 1;
}

void PercDown(int a[], int i, int n) {
	int child, tmp;
	for (tmp = a[i]; 2 * i + 1 < n; i = child) {
		child = 2 * i + 1;
		if (child != n - 1 && a[child + 1] > a[child])
			child++;
		if (a[child] > tmp)
			a[i] = a[child];
		else
			break;
	}
	a[i] = tmp;
}






