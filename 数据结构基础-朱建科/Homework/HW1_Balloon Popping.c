#include<stdio.h>
int main()
{
    int n, height, i, j;
    scanf("%d %d", &n, &height);
    int a[n];
    int number = 0, max_number = 0, coordinate = 1;
    for(i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }
    
    for(i = 0; i < n; i++)
    {
        for(j = i; j < n; j++)
        {
            if(a[j] - a[i] <= height)
                number++;
            else 
                break;
        }
        if(max_number < number){
            max_number = number;
            coordinate = a[j-1] ;
        }
        number = 0;
    }
    
    printf("%d %d",coordinate - height, max_number);
    return 0;    
}
