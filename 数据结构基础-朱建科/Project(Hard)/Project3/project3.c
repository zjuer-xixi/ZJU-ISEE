#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#define IFN 1e9 
#define MaxSNum 1000

// Structure to represent a graph
typedef struct {
    int Nv;                        // Number of vertices
    int Ne;                        // Number of edges
    int Edge[MaxSNum + 1][MaxSNum + 1];  // 2D array to store edge weights
} StationGraph;

// Structure to store information for Dijkstra's algorithm
typedef struct record {
    int Dist[MaxSNum + 1];  // Distance array
    int Path[MaxSNum + 1];  // Path array
    int state[MaxSNum + 1]; // State array (visited or not)
} Record;

// Structure to represent a circle (used for backtracking)
typedef struct circle {
    int Path[MaxSNum + 1];  // Path array for circles
} Circle;

// Array of Circle structures
Circle circles[MaxSNum + 1];

// Global variables to store the min-circle information 
int path[MaxSNum + 1];
int a;
int aa[MaxSNum + 1];
int b;
int bb[MaxSNum + 1];

// Function prototypes
typedef StationGraph *GraphPoint;
GraphPoint InitialGraph(int Ne, int Nv);
void DeleteEdge(GraphPoint GraphS, Record backtrack[], Record route[]);
void Dijkstra(GraphPoint G, Record *route, int s);
void Second_shortest(GraphPoint GraphS, Record route[]);
int MinDistance(GraphPoint GraphS, Record backtrack[], Record *route);
int distance(int w, int v, GraphPoint GraphS, Record *route);

// Main function
int main() {
    int Nv, Ne;
    int u, v, w;
    scanf("%d %d", &Nv, &Ne);

    // Initialize the graph
    GraphPoint GraphS = InitialGraph(Ne, Nv);

    // Input edge weights into the graph
    for (int i = 1; i <= Ne; i++) {
        scanf("%d %d %d", &u, &v, &w);
        GraphS->Edge[u][v] = w;
    }

    // Initialize arrays for route and backtrack
    Record route[Ne + 2];
    Record backtrack[Nv * Nv];

    // Initialize the route array
    for (int i = 0; i <= Ne + 1; i++) {
        for (int j = 0; j <= Nv; j++) {
            route[i].Dist[j] = IFN;
            route[i].Path[j] = -1;
            route[i].state[j] = 0;
        }
    }

    // Initialize the backtrack array
    for (int i = 0; i < Nv * Nv; i++) {
        for (int j = 0; j <= Nv; j++) {
            backtrack[i].Dist[j] = IFN;
            backtrack[i].Path[j] = -1;
            backtrack[i].state[j] = 0;
        }
    }

    // Initialize path and circles arrays
    memset(path, -1, sizeof(path));
    for (int i = 0; i <= Ne; i++) {
        memset(circles[i].Path, -1, sizeof(circles[i].Path));
    }

    // Run Dijkstra's algorithm to find the shortest path
    Dijkstra(GraphS, &route[Ne + 1], 1);

    // Check for no second shortest path
    if (route[Ne + 1].Dist[Nv] == IFN || Nv <= 1 || Ne == 0) {
        printf("No second shortest road");
        return 0;
    }

    // Perform edge deletion and find the second shortest path
    DeleteEdge(GraphS, backtrack, route);
    Second_shortest(GraphS, route);
}

// Function to initialize a graph
GraphPoint InitialGraph(int Ne, int Nv) {
    GraphPoint p = (GraphPoint)malloc(sizeof(StationGraph));
    p->Nv = Nv;
    p->Ne = Ne;
    //initialize the distance of unconnected stations to infinite
    for (int i = 0; i <= MaxSNum; i++) {
        for (int j = 0; j <= MaxSNum; j++)
            p->Edge[i][j] = IFN;
    }
    return p;
}

// Function to delete edges and find the second shortest path
void DeleteEdge(GraphPoint GraphS, Record backtrack[], Record route[]) {
    int i, j, l = 0;

    // Run Dijkstra's algorithm to find the initial shortest path
    Dijkstra(GraphS, &route[l++], 1);

    // Iterate through all edges and temporarily remove each edge
    for (i = 1; i <= GraphS->Nv; i++) {
        for (j = 1; j <= GraphS->Nv; j++) {
            if (GraphS->Edge[i][j] < IFN) {
                int temp = GraphS->Edge[i][j];
                GraphS->Edge[i][j] = IFN;

                // Run Dijkstra's algorithm after edge removal
                Dijkstra(GraphS, &route[l], 1);

                // Restore the removed edge
                GraphS->Edge[i][j] = temp;

                // Check for the equality of the distances
                if (route[l].Dist[GraphS->Nv] == route[0].Dist[GraphS->Nv]) {
                    route[l].Dist[0] = -1;  //mark the path with circle
                    route[l].Dist[GraphS->Nv] += MinDistance(GraphS, backtrack, &route[l]);
                    for (int i = 0; i <= GraphS->Nv; i++) {
                        circles[l].Path[i] = path[i];
                    }
                    aa[l] = a;
                    bb[l] = b;
                }

                l++;
            }
        }
    }

    // Update the initial shortest path after all edge removals
    route[0].Dist[0] = -1;
    route[0].Dist[GraphS->Nv] += MinDistance(GraphS, backtrack, &route[0]);
    for (int i = 0; i <= GraphS->Nv; i++) {
        circles[0].Path[i] = path[i];
    }
    aa[0] = a;
    bb[0] = b;
}

// Function to perform Dijkstra's algorithm
void Dijkstra(GraphPoint G, Record *route, int s) {
    int i, v, w, min;
    int flag = 0;

    // Initialize distance array
    for (i = 1; i <= G->Nv; i++) {
        route->Dist[i] = G->Edge[s][i];
    }
    route->Dist[s] = 0;

    // Main loop of Dijkstra's algorithm
    for (;;) {
        min = IFN;

        // Find the minimum distance vertex
        for (i = 1; i <= G->Nv; i++) {
            if (route->state[i] == 0 && min > route->Dist[i]) {
                flag = 1;
                min = route->Dist[i];
                v = i;
            }
        }

        // Break if no unvisited vertex is found
        if (flag == 0)
            break;

        // Mark the selected vertex as visited
        route->state[v] = 1;
        flag = 0;

        // Update distances and paths
        for (w = 1; w <= G->Nv; w++) {
            if (!route->state[w] && (route->Dist[v] + G->Edge[v][w] <= route->Dist[w])) {
                route->Dist[w] = route->Dist[v] + G->Edge[v][w];
                route->Path[w] = v;
            }
        }
    }
}

// Function to find the second shortest path
void Second_shortest(GraphPoint GraphS, Record route[]) {
    int output[GraphS->Ne * 2];
    int min = IFN, index, v = GraphS->Nv, l = 0;
    int lmin = route[0].Dist[GraphS->Nv];

    // Find the index of the minimum distance path
    for (int i = 0; i <= GraphS->Ne; i++) {
        if (min > route[i].Dist[GraphS->Nv]) {
            min = route[i].Dist[GraphS->Nv];
            index = i;
        }
    }
    printf("\n%d", min);

    // Reconstruct the second shortest path to print 
    if (route[index].Dist[0] > 0) { 		//second shortest path without circle 
        //reverve the path into an array
		while (v != -1) {							
            output[l++] = v;
            v = route[index].Path[v];
        }
    } else {								//second shortest path with circle 
        //reverve the path into an array
		while (v != aa[index]) {
            output[l++] = v;
            v = route[index].Path[v];
        }
        while (v != bb[index]) {				
            output[l++] = v;
            v = circles[index].Path[v];
        }
        while (v != -1) {
            output[l++] = v;
            v = route[index].Path[v];
        }
    }

    // Print the second shortest path
    for (int i = l - 1; i >= 0; i--)
        printf(" %d", output[i]);
}

// Function to find the minimum distance during backtracking
int MinDistance(GraphPoint GraphS, Record backtrack[], Record *route) {
    int v = GraphS->Nv, w = route->Path[v], l = 0;
    int min = IFN;

    // Iterate through the path and find the minimum distance
    for (v = GraphS->Nv; v != 1; v = route->Path[v]) {
        for (w = route->Path[v]; w != -1; w = route->Path[w]) {
            // Run Dijkstra's algorithm for backtracking
            Dijkstra(GraphS, &backtrack[l++], v);

            // Update the minimum distance and path
            if (min > backtrack[l - 1].Dist[w] + distance(w, v, GraphS, route)) {
                min = backtrack[l - 1].Dist[w] + distance(w, v, GraphS, route);
                for (int i = 0; i <= GraphS->Nv; i++) {
                    path[i] = backtrack[l - 1].Path[i];
                }
                //store the min-circle information 
                a = w;
                b = v;
            }
        }
    }
    return min;
}

// Function to calculate the distance between two vertices
int distance(int w, int v, GraphPoint GraphS, Record *route) {
    int s1 = w, s2 = v, l = 0;

    // Calculate the distance by traversing the path
    while (s2 != s1) {
        l += GraphS->Edge[route->Path[s2]][s2];
        s2 = route->Path[s2];
    }
    return l;
}

