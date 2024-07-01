#include <stdio.h>
#include <stdlib.h>
#define MAXN 30

typedef struct TreeNode *TreePoint;
struct TreeNode {
	int number;
	TreePoint left;
	TreePoint right;
};
typedef TreePoint Root;

Root BuildTree(int Inorder[], int Postorder[], int Size) {
	if (Size == 0) {
		return NULL;
	}

	Root root;
	root = (Root)malloc(sizeof(struct TreeNode));
	root->number = Postorder[Size - 1];
	root->left = NULL;
	root->right = NULL;

	int rootIndex;
	for (rootIndex = 0; rootIndex < Size; rootIndex++) {
		if (Inorder[rootIndex] == Postorder[Size - 1]) {
			break;
		}
	}

	root->left = BuildTree(Inorder, Postorder, rootIndex);
	root->right = BuildTree(Inorder + rootIndex + 1, Postorder + rootIndex, Size - rootIndex - 1);

	return root;
}


int main() {
	int Size;
	scanf("%d", &Size);

	int Inorder[MAXN], Postorder[MAXN];
	for(int i = 0; i < Size; i++) {
		scanf("%d", &Inorder[i]);
	}
	for(int i = 0; i < Size; i++) {
		scanf("%d", &Postorder[i]);
	}

	Root Tree = BuildTree(Inorder, Postorder, Size);

	
	TreePoint stack1[MAXN], stack2[MAXN];
	int tos1 = -1, tos2 = -1, level = 1;
	
	stack1[++tos1] = Tree; 
	while(tos1 != -1 || tos2!=-1){
		if(level % 2 == 1){
			level++;
			for(int i = tos1; i >= 0; i--){
				printf("%d ", stack1[i]->number);
				tos1--;
				if(stack1[i]->right != NULL)    stack2[++tos2] = stack1[i]->right ;
				if(stack1[i]->left != NULL)	stack2[++tos2] = stack1[i]->left;
			}
		}else{
			level++;
			for(int i = tos2; i >= 0; i--){
				printf("%d ", stack2[i]->number);
				tos2--;
				if(stack2[i]->left != NULL)	 stack1[++tos1] = stack2[i]->left;
				if(stack2[i]->right != NULL)	    stack1[++tos1] = stack2[i]->right;
			}
		}
	}
	
	return 0;
}
