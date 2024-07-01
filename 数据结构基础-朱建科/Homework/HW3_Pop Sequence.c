#include<stdio.h>
#include<stdlib.h>
struct stack_record{
    int stack_size;
    int tos;
    int *array;  
};
typedef struct stack_record *STACK;

STACK create_stack(int max_size);

int main(){
    int M, N, K;
    scanf("%d %d %d", &M, &N, &K);
        
    STACK s;
    
    int i, j, number, sequence;
    
	for(i = 1; i <= K; i++ ){
    	sequence = 1;
    	s = create_stack(M);
    	for(j = 1; j <= N; j++){
    		scanf("%d", &number);
    		while(s->tos <= M - 1){
    			if(s->tos == -1 || s->array[s->tos] != number)
    				if(s->tos < M - 1)
						s->array[++s->tos] = sequence++;
					else{
						printf("NO\n");
						s->tos++;
                		break;
					}
				else{
					s->tos--;
					break;
				}		
			}	
            if(s->tos <= M - 1 && j == N){
                printf("YES\n");
            }
		} 
	}
    
    return 0;
}

STACK create_stack(int max_size){
	STACK s;
	s = (STACK)malloc(sizeof(struct stack_record));
	s->array = (int *)malloc(sizeof(int) * max_size);
	s->tos = -1;
	s->stack_size = max_size;
	return s;
}
