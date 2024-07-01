/* Author: Lu ZeXi;  ID: 3220102478;  No.02 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define IFN 99999

int index; // Global variable to store the index of the minimum element

// Function declarations
double FindMin(int array[], int status[], int M);
void Print(int output[], int tos);

int main() {
    int N, M;
    scanf("%d %d", &N, &M);

    int status[M], output[N], tos = -1;

    // Initialize status and output arrays
    for (int k = 0; k < M; k++)
        status[k] = 0;
    for (int k = 0; k < N; k++)
        output[k] = 0;

    int array[M];

    // Input elements into the array
    for (int i = 0; i < M; i++) {
        scanf("%d", &array[i]);
    }

    double num;

    for (int i = 1; i <= N - M; i++) {
        num = FindMin(array, status, M);

        // If FindMin returns 0.5, reset status and output arrays, and print
        if (num == 0.5) {
            for (int k = 0; k < M; k++)
                status[k] = 0;
            Print(output, tos);
            for (int k = 0; k < N; k++)
                output[k] = 0;
            tos = -1;
            num = FindMin(array, status, M);
        }

        output[++tos] = num;
        scanf("%d", &array[index]);

        // Update status based on the comparison with the newly input element
        if (array[index] < num)
            status[index] = 1;
    }

    for (int i = 1; i <= M; i++) {
        num = FindMin(array, status, M);

        // If FindMin returns 0.5, reset status and output arrays, and print
        if (num == 0.5) {
            for (int j = 0; j < M; j++) {
                if (status[j] == 1)
                    status[j] = 0;
            }
            Print(output, tos);
            for (int k = 0; k < N; k++)
                output[k] = 0;
            tos = -1;
            num = FindMin(array, status, M);
        }

        output[++tos] = num;
        array[index] = IFN;
    }

    // Print the final output
    Print(output, tos);
}

// Function to find the minimum element in the array based on the status
double FindMin(int array[], int status[], int M) {
    double min = IFN;
    index = -1;

    // Iterate through the array to find the minimum element
    for (int i = 0; i < M; i++) {
        if (status[i] == 0) {
            if (min > array[i]) {
                min = array[i];
                index = i;
            }
        }
    }

    // If no minimum element is found, return 0.5
    if (min == IFN)
        return 0.5;
    else
        return min;
}

// Function to print the elements in the output array
void Print(int output[], int tos) {
    printf("%d", output[0]);
    for (int i = 1; i <= tos; i++)
        printf(" %d", output[i]);
    printf("\n");
}

