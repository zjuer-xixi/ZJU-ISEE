#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Macros for pasting tokens into the Infix array
#define paste1 {buffer[bufferTos + 1] = '\0'; Infix[++InfixTos].data = (char *)malloc(strlen(buffer) * sizeof(char)); strcpy(Infix[InfixTos].data, buffer); bufferTos = -1; Infix[InfixTos].category = 1;}
#define paste2 {buffer[bufferTos + 1] = '\0'; Infix[++InfixTos].data = (char *)malloc(strlen(buffer) * sizeof(char)); strcpy(Infix[InfixTos].data, buffer); bufferTos = -1; Infix[InfixTos].category = 2;}
#define paste3 {buffer[bufferTos + 1] = '\0'; Infix[++InfixTos].data = (char *)malloc(strlen(buffer) * sizeof(char)); strcpy(Infix[InfixTos].data, buffer); bufferTos = -1; Infix[InfixTos].category = 3;}
#define paste4 {buffer[bufferTos + 1] = '\0'; Infix[++InfixTos].data = (char *)malloc(strlen(buffer) * sizeof(char)); strcpy(Infix[InfixTos].data, buffer); bufferTos = -1; Infix[InfixTos].category = 4;}
#define paste5 {buffer[bufferTos + 1] = '\0'; Infix[++InfixTos].data = (char *)malloc(strlen(buffer) * sizeof(char)); strcpy(Infix[InfixTos].data, buffer); bufferTos = -1; Infix[InfixTos].category = 5;}
#define paste6 {buffer[bufferTos + 1] = '\0'; Infix[++InfixTos].data = (char *)malloc(strlen(buffer) * sizeof(char)); strcpy(Infix[InfixTos].data, buffer); bufferTos = -1; Infix[InfixTos].category = 6;}
#define paste7 {buffer[bufferTos + 1] = '\0'; Infix[++InfixTos].data = (char *)malloc(strlen(buffer) * sizeof(char)); strcpy(Infix[InfixTos].data, buffer); bufferTos = -1; Infix[InfixTos].category = 7;}
#define paste8 {buffer[bufferTos + 1] = '\0'; Infix[++InfixTos].data = (char *)malloc(strlen(buffer) * sizeof(char)); strcpy(Infix[InfixTos].data, buffer); bufferTos = -1; Infix[InfixTos].category = 8;}
#define paste9 {buffer[bufferTos + 1] = '\0'; Infix[++InfixTos].data = (char *)malloc(strlen(buffer) * sizeof(char)); strcpy(Infix[InfixTos].data, buffer); bufferTos = -1; Infix[InfixTos].category = 9;}

#define MAXN 100

// Structure definition for Infix expressions
typedef struct Infix *InfixPoint;
struct Infix {
	char *data;   // Data element
	int category; // Category of the element
};

// Structure definition for expression tree nodes
typedef struct TreeNode *TreePoint;
struct TreeNode {
	char *element;   // Data element
	TreePoint left;  // Left child
	TreePoint right; // Right child
	int category;    // Category of the element
};

// Structure definition for variable names
typedef struct Variables {
	char name[MAXN];
} Variables;

int length, flag = 0, sign1 = 0, sign2 = 0, sign3 = 0, sign4 = 0;

// Function to get the priority of an operator
int getPriority(char c);

// Comparison function for qsort
int compare(const void *a, const void *b);

// Check if a variable name is a duplicate
int isDuplicate(char *name, Variables *varArray, int count);

// Sort variable names alphabetically
int sortVariables(char *input, Variables *varArray);

// Determine the category of a character (operator, number, function, etc.)
int judge(char c);

// Build the Infix expression from the input string
void buildInfixExpression(char *input, InfixPoint Infix);

// Convert Infix expression to Postfix expression
void InfixToPostfix(TreePoint *Postfix, InfixPoint Infix);

// Build the expression tree from the Postfix expression
TreePoint buildExpressionTree(TreePoint *Postfix, int length);

// Perform automatic differentiation on the expression tree with respect to a variable
TreePoint automaticDifferentiation(TreePoint root, char *variable);

// Correct the expression tree for certain cases
TreePoint CorrectedTree(TreePoint root);

// Simplify the expression tree
TreePoint Simplify(TreePoint root);

// Create a node for the expression tree
TreePoint createNode(struct Infix unit);

// Create a derivative node for the expression tree
TreePoint createDerivativeNode(char *element, int category);

// Print the expression tree in order
void printTreeInOrder(TreePoint root);

// Main function for symbolic differentiation and simplification
int main() {
    // Declare an array to store the input expression
    char input[MAXN];
	printf("Please input your expression:");
    // Initialize loop variable i to 0 and read characters until newline
    int i = 0;
    while ((input[i++] = getchar()) != '\n');

    // Null-terminate the input string and set the length variable
    input[length = i - 1] = '\0';

    // Declare an array to store unique variables and get their count
    Variables varArray[MAXN];
    int number = sortVariables(input, varArray);

    // Declare arrays to store infix, postfix expressions, and build the expression tree
    struct Infix Infix[MAXN];
    buildInfixExpression(input, Infix);
    TreePoint Postfix[MAXN];
    InfixToPostfix(Postfix, Infix);

    // Build the expression tree from the postfix expression
    TreePoint root = buildExpressionTree(Postfix, length);

    // Print a newline for formatting
    printf("\n");

    // Loop through each unique variable and perform symbolic differentiation and simplification
    for (i = 0; i < number; i++) {
        // Derive the expression with respect to the current variable
        TreePoint derivativeRoot = automaticDifferentiation(root, varArray[i].name);

        // Correct the derivative tree
        TreePoint CorrectedRoot = CorrectedTree(derivativeRoot);

        // Simplify the corrected tree
        TreePoint simplifyRoot = Simplify(CorrectedRoot);

        // Print the variable name and its differentiated and simplified expression
        printf("%s : ", varArray[i].name);
        printTreeInOrder(simplifyRoot);

        // Reset flags for the next iteration
        flag = sign1 = sign2 = 0;

        // Print a newline for formatting
        printf("\n");
    }

    // Return 0 to indicate successful execution
    return 0;
}

// Function to compare two variables for qsort
int compare(const void *a, const void *b) {
    return strcmp(((Variables *)a)->name, ((Variables *)b)->name);
}

// Function to check if a variable name is a duplicate in the array
int isDuplicate(char *name, Variables *varArray, int count) {
    for (int i = 0; i < count; i++) {
        // Compare the current name with existing variable names
        if (strcmp(name, varArray[i].name) == 0) {
            return 1; // Return 1 if a duplicate is found
        }
    }
    return 0; // Return 0 if no duplicate is found
}


void buildInfixExpression(char *input, InfixPoint Infix) {
	char buffer[MAXN];          // Buffer to store characters forming a token
	int i = 0, bufferTos = -1, InfixTos = -1;  // Index variables for input string, buffer, and Infix array

	while (input[i] != '\0') {
		// Process operators (+, -, *)
		if (judge(input[i]) == 1 || judge(input[i]) == 3 || judge(input[i]) == 4) {
			buffer[++bufferTos] = input[i++];   // Add character to buffer and increment index
			paste1;  // Paste the token with category 1 into Infix array
		}
		// Process numbers (including negative numbers)
		else if (judge(input[i]) == 2) {
			// Check if it is a negative number or a regular number
			if (i == 0 || judge(input[i - 1]) <= 3) {
				do {
					buffer[++bufferTos] = input[i++];
				} while (judge(input[i]) == 5 || judge(input[i]) == 6);  // Continue adding digits or decimal point
				paste2;  // Paste the token with category 2 into Infix array
			} else {
				buffer[++bufferTos] = input[i++];  // Process regular number
				paste1;  // Paste the token with category 1 into Infix array
			}
		}
		// Process decimal numbers
		else if (judge(input[i]) == 5) {
			do {
				buffer[++bufferTos] = input[i++];
			} while (judge(input[i]) == 5);  // Continue adding digits to the decimal number
			paste2;  // Paste the token with category 2 into Infix array
		}
		// Process functions
		else if (judge(input[i]) == 6) {
			do {
				buffer[++bufferTos] = input[i++];
			} while (judge(input[i]) == 6);  // Continue adding characters forming the function name

			// Check for function with parentheses
			if (input[i] == '(') {
				buffer[bufferTos + 1] = '\0';  // Null-terminate the buffer
				// Check and paste the corresponding function token based on the function name
				if (strcmp(buffer, "cos") == 0) {
					bufferTos = -1;  // Reset buffer index
					i++;  // Move past the opening parenthesis
					do {
						buffer[++bufferTos] = input[i++];
					} while (input[i] != ')');  // Continue adding characters forming the function argument
					paste3;  // Paste the token with category 3 into Infix array
					i++;  // Move past the closing parenthesis
				} else if (strcmp(buffer, "sin") == 0) {
					// Similar logic for other functions
					bufferTos = -1;
					i++;
					do {
						buffer[++bufferTos] = input[i++];
					} while (input[i] != ')');
					paste4;
					i++;
				} else if (strcmp(buffer, "ln") == 0) {    // function ln()
					bufferTos = -1;
					i++;
					do {
						buffer[++bufferTos] = input[i++];
					} while (input[i] != ')');
					paste5;
					i++;
				} else if (strcmp(buffer, "exp") == 0) {	// function exp()
					bufferTos = -1;
					i++;
					do {
						buffer[++bufferTos] = input[i++];
					} while (input[i] != ')');
					paste6;
					i++;
				} else if (strcmp(buffer, "tan") == 0) {	// function tan()
					bufferTos = -1;
					i++;
					do {
						buffer[++bufferTos] = input[i++];
					} while (input[i] != ')');
					paste7;
					i++;
				} else if (strcmp(buffer, "pow") == 0) {	// function pow()
					bufferTos = -1;
					i++;
					do {
						buffer[++bufferTos] = input[i++];
					} while (input[i] != ')');
					paste8;
					i++;
				} else if (strcmp(buffer, "log") == 0) {	// function log()
					bufferTos = -1;
					i++;
					do {
						buffer[++bufferTos] = input[i++];
					} while (input[i] != ')');
					paste9;
					i++;
				}
			} else {
				paste2;  // Paste the token with category 2 into Infix array for variables
			}
		} else {
			i++;  // Move to the next character in the input string
		}
	}
	length = InfixTos + 1;  // Update the length of the Infix array
}


// Function to extract and sort variables from the input expression
int sortVariables(char *input, Variables *varArray) {
    // Initialize variable count to keep track of unique variables
    int count = 0;

    // Buffer to store variable names
    char buffer[MAXN];

    // Initialize the top of stack (tos) to -1 and loop variable i to 0
    int tos = -1, i = 0;
    
    // Loop until the end of the input string
    while (input[i] != '\0') {
        // Check if the current character is an alphabetic character
        if ((input[i] >= 'a' && input[i] <= 'z') || (input[i] >= 'A' && input[i] <= 'Z')) {
            // Extract the complete variable name
            while ((input[i] >= 'a' && input[i] <= 'z') || (input[i] >= 'A' && input[i] <= 'Z')) {
                buffer[++tos] = input[i++];
            }
            // Check if the variable is a function (followed by '(')
            if (input[i] == '(')
                tos = -1; // Reset the buffer if it's a function
            else {
                // Add null terminator to the buffer and check for duplicates
                buffer[++tos] = '\0';
                if (!isDuplicate(buffer, varArray, count)) {
                    // If not a duplicate, store the variable in the variable array
                    strcpy(varArray[count].name, buffer);
                    count++;
                }
                tos = -1; // Reset the buffer
            }
        }
        i++; // Move to the next character in the input string
    }
    // Sort the array of variables using the qsort function and the compare function
    qsort(varArray, count, sizeof(Variables), compare);

    // Return the count of unique variables
    return count;
}

void InfixToPostfix(TreePoint *Postfix, InfixPoint Infix) {
	TreePoint stack[MAXN];
	int stackTos = -1, i, j = 0; // Initialize top of stack

	// Convert the infix expression to Postfix
	for (i = 0; i < length; i++) {
		if (Infix[i].category == 1 && *(Infix[i].data) == '(') {
			stack[++stackTos] = createNode(Infix[i]); // Left parenthesis directly onto the stack
		} else if (Infix[i].category >= 2 && Infix[i].category <= 9) {
			Postfix[j++] = createNode(Infix[i]); // If it's an operand, directly add it to the Postfix expression
		} else if (Infix[i].category == 1 && *(Infix[i].data) != '(' && *(Infix[i].data) != ')') {
			while (stackTos != -1) {
				// Compare operator priorities to build Postfix expression
				if (getPriority(*(stack[stackTos]->element)) >= getPriority(*(Infix[i].data))) {
					Postfix[j++] = stack[stackTos]; // Add the top element to the Postfix expression
					stackTos--; // Pop the top element
				} else {
					break;
				}
			}
			stack[++stackTos] = createNode(Infix[i]); // Add current operator to the stack
		} else {
			// If it's a right parenthesis, pop all elements until left parenthesis is encountered
			while (*(stack[stackTos]->element) != '(') {
				Postfix[j++] = stack[stackTos]; // Add the remaining operators to the Postfix expression
				stackTos--; // Pop the element
			}
			stackTos--; // Pop the left parenthesis
		}
	}
	while (stackTos != -1) {
		Postfix[j++] = stack[stackTos]; // Add the remaining operators to the Postfix expression
		stackTos--; // Pop the element
	}
	length = j;
}

TreePoint buildExpressionTree(TreePoint *Postfix, int length) {
	TreePoint stack[MAXN];
	int stackTos = -1; // Initialize top of stack
	for(int i = 0; i < length; i++) {
		if(Postfix[i]->category != 1) {
			stack[++stackTos] = Postfix[i]; // Push operand onto the stack
		} else if(Postfix[i]->category == 1) {
			// Pop two elements from the stack and assign them as left and right children
			Postfix[i]->right = stack[stackTos--];
			Postfix[i]->left = stack[stackTos--];
			stack[++stackTos] = Postfix[i]; // Push the current node back to the stack
		}
	}
	return stack[0]; // Return the root of the built tree
}

// Function: automaticDifferentiation
// Description: Performs automatic differentiation on a given mathematical expression represented as a binary tree.
// Parameters:
//   - root: The root of the expression tree to be differentiated.
//   - variable: The variable with respect to which differentiation is performed.
// Returns: A new expression tree representing the derivative of the input expression.

TreePoint automaticDifferentiation(TreePoint root, char *variable) {
    int i, j;

    // Check if the current node is not NULL
    if (root) {
        // Create a new node for the derivative
        TreePoint derivativeRoot = (TreePoint)malloc(sizeof(struct TreeNode));
        derivativeRoot->element = (char *)malloc((strlen(root->element) + 10) * sizeof(char));

        // Check the category of the current node
        if (root->category == 1) {
            // Arithmetic operations (+, -, *, /, ^)
            if (strcmp(root->element, "+") == 0 || strcmp(root->element, "-") == 0) {
                derivativeRoot->element = (char *)malloc(strlen(root->element) * sizeof(char));
                strcpy(derivativeRoot->element, root->element);
                derivativeRoot->left = automaticDifferentiation(root->left, variable);
                derivativeRoot->right = automaticDifferentiation(root->right, variable);
            } else if (strcmp(root->element, "*") == 0) {
                // Product rule for multiplication
                derivativeRoot->element = "+";
                derivativeRoot->left = createDerivativeNode("*", 1);
                derivativeRoot->left->left = automaticDifferentiation(root->left, variable);
                derivativeRoot->left->right = root->right;
                derivativeRoot->right = createDerivativeNode("*", 1);
                derivativeRoot->right->left = root->left;
                derivativeRoot->right->right = automaticDifferentiation(root->right, variable);
            } else if (strcmp(root->element, "/") == 0) {
                // Quotient rule for division
                derivativeRoot->element = "-";
                derivativeRoot->left = createDerivativeNode("/", 1);
                derivativeRoot->left->left = automaticDifferentiation(root->left, variable);
                derivativeRoot->left->right = root->right;
                derivativeRoot->right = createDerivativeNode("/", 1);
                derivativeRoot->right->left = createDerivativeNode("*", 1);
                derivativeRoot->right->left->left = automaticDifferentiation(root->right, variable);
                derivativeRoot->right->left->right = root->left;
                derivativeRoot->right->right = createDerivativeNode("^", 1);
                derivativeRoot->right->right->left = root->right;
                derivativeRoot->right->right->right = createDerivativeNode("2", 2);
            } else if (strcmp(root->element, "^") == 0) {
                // Chain rule for power
                derivativeRoot->element = "+";
                derivativeRoot->left = createDerivativeNode("*", 1);
                derivativeRoot->left->left = createDerivativeNode("*", 1);
                derivativeRoot->left->left->left = automaticDifferentiation(root->right, variable);
                derivativeRoot->left->left->right = createDerivativeNode("^", 1);
                derivativeRoot->left->left->right->left = root->left;
                derivativeRoot->left->left->right->right = root->right;
                derivativeRoot->left->right = createDerivativeNode("\0", 0);
                derivativeRoot->left->right->left = createDerivativeNode("ln", -1);
                derivativeRoot->left->right->right = root->left;
                derivativeRoot->right = createDerivativeNode("*", 1);
                derivativeRoot->right->left = createDerivativeNode("*", 1);
                derivativeRoot->right->left->left = root->right;
                derivativeRoot->right->left->right = automaticDifferentiation(root->left, variable);
                derivativeRoot->right->right = createDerivativeNode("^", 1);
                derivativeRoot->right->right->left = root->left;
                derivativeRoot->right->right->right = createDerivativeNode("-", 1);
                derivativeRoot->right->right->right->left = root->right;
                derivativeRoot->right->right->right->right = createDerivativeNode("1", 2);
            }
        } else if (root->category == 2) {
            // Variable leaf node
            if (strcmp(root->element, variable) == 0) {
                derivativeRoot = createDerivativeNode("1", 2);
            } else {
                derivativeRoot = createDerivativeNode("0", 2);
            }
        } else if (root->category == 3) {
            // Trigonometric function: sin
            // Build the derivative tree using the chain rule
            char input[MAXN];
            struct Infix Infix[MAXN];
            TreePoint Postfix[MAXN];
            strcpy(derivativeRoot->element, "*");
            derivativeRoot->left = createDerivativeNode(root->element, 3);
            derivativeRoot->left->left = createDerivativeNode("-sin(", -1);
            derivativeRoot->left->right = createDerivativeNode(")", -1);
            for (i = 0, j = 0; i < strlen(root->element); i++) {
                input[j++] = root->element[i];
            }
            input[j] = '\n';
            length = j;
            buildInfixExpression(input, Infix);
            InfixToPostfix(Postfix, Infix);
            TreePoint p = (TreePoint)malloc(sizeof(struct TreeNode));
            p = buildExpressionTree(Postfix, length);
            derivativeRoot->right = automaticDifferentiation(p, variable);
        } else if (root->category == 4) {
            // Trigonometric function: cos
            // Build the derivative tree using the chain rule
            char input[MAXN];
            struct Infix Infix[MAXN];
            TreePoint Postfix[MAXN];
            strcpy(derivativeRoot->element, "*");
            derivativeRoot->left = createDerivativeNode(root->element, 3);
            derivativeRoot->left->left = createDerivativeNode("cos(", -1);
            derivativeRoot->left->right = createDerivativeNode(")", -1);
            for (i = 0, j = 0; i < strlen(root->element); i++) {
                input[j++] = root->element[i];
            }
            input[j] = '\n';
            length = j;
            buildInfixExpression(input, Infix);
            InfixToPostfix(Postfix, Infix);
            TreePoint p = (TreePoint)malloc(sizeof(struct TreeNode));
            p = buildExpressionTree(Postfix, length);
            derivativeRoot->right = automaticDifferentiation(p, variable);
        } else if (root->category == 5) {
            // Function: ln
            // Build the derivative tree using the chain rule
            char input[MAXN];
            struct Infix Infix[MAXN];
            TreePoint Postfix[MAXN];
            strcpy(derivativeRoot->element, "/");
            for (i = 0, j = 0; i < strlen(root->element); i++) {
                input[j++] = root->element[i];
            }
            input[j] = '\n';
            length = j;
            buildInfixExpression(input, Infix);
            InfixToPostfix(Postfix, Infix);
            TreePoint p = (TreePoint)malloc(sizeof(struct TreeNode));
            p = buildExpressionTree(Postfix, length);
            derivativeRoot->left = automaticDifferentiation(p, variable);
            derivativeRoot->right = p;
        } else if (root->category == 6) {
            // Function: exp
            // Build the derivative tree using the chain rule
            char input[MAXN];
            struct Infix Infix[MAXN];
            TreePoint Postfix[MAXN];
            strcpy(derivativeRoot->element, "*");
            for (i = 0, j = 0; i < strlen(root->element); i++) {
                input[j++] = root->element[i];
            }
            input[j] = '\n';
            length = j;
            buildInfixExpression(input, Infix);
            InfixToPostfix(Postfix, Infix);
            TreePoint p = (TreePoint)malloc(sizeof(struct TreeNode));
            p = buildExpressionTree(Postfix, length);
            derivativeRoot->left = automaticDifferentiation(p, variable);
            derivativeRoot->right = root;
        } else if (root->category == 7) {
            // Function: sqrt
            // Build the derivative tree using the chain rule
            char input[MAXN];
            struct Infix Infix[MAXN];
            TreePoint Postfix[MAXN];
            strcpy(derivativeRoot->element, "/");
            for (i = 0, j = 0; i < strlen(root->element); i++) {
                input[j++] = root->element[i];
            }
            input[j] = '\n';
            length = j;
            buildInfixExpression(input, Infix);
            InfixToPostfix(Postfix, Infix);
            TreePoint p = (TreePoint)malloc(sizeof(struct TreeNode));
            p = buildExpressionTree(Postfix, length);
            derivativeRoot->left = automaticDifferentiation(p, variable);
            derivativeRoot->right = createDerivativeNode("^", 1);
            derivativeRoot->right->left = root;
            derivativeRoot->right->left->category = 3;
            derivativeRoot->right->right = createDerivativeNode("2", 2);
        } else if (root->category == 8) {
            // Function: pow
            // Build the derivative tree using the chain rule
            char input1[MAXN], input2[MAXN];
            struct Infix Infix1[MAXN], Infix2[MAXN];
            TreePoint Postfix1[MAXN], Postfix2[MAXN];
            for (i = 0, j = 0; root->element[i] != ','; i++) {
                input1[j++] = root->element[i];
            }
            input1[j] = '\0';
            length = j;
            buildInfixExpression(input1, Infix1);
            InfixToPostfix(Postfix1, Infix1);
            TreePoint p1 = (TreePoint)malloc(sizeof(struct TreeNode));
            p1 = buildExpressionTree(Postfix1, length);
            for (i = length + 1, j = 0; i < strlen(root->element); i++) {
                input2[j++] = root->element[i];
            }
            input2[j] = '\0';
            length = j;
            buildInfixExpression(input2, Infix2);
            InfixToPostfix(Postfix2, Infix2);
            TreePoint p2 = (TreePoint)malloc(sizeof(struct TreeNode));
            p2 = buildExpressionTree(Postfix2, length);
            TreePoint p3 = createDerivativeNode("^", 1);
            p3->left = p1;
            p3->right = p2;
            derivativeRoot = automaticDifferentiation(p3, variable);
        } else if (root->category == 9) {
            // Function: atan2
            // Build the derivative tree using the chain rule
            char input1[MAXN], input2[MAXN];
            for (i = 0, j = 0; root->element[i] != ','; i++) {
                input1[j++] = root->element[i];
            }
            input1[j] = '\0';
            TreePoint p1 = (TreePoint)malloc(sizeof(struct TreeNode));
            p1 = createDerivativeNode(input1, 5);
            length = j;
            for (i = length + 1, j = 0; i < strlen(root->element); i++) {
                input2[j++] = root->element[i];
            }
            input2[j] = '\0';
            TreePoint p2 = (TreePoint)malloc(sizeof(struct TreeNode));
            p2 = createDerivativeNode(input2, 5);
            TreePoint p3 = createDerivativeNode("/", 1);
            p3->left = p2;
            p3->right = p1;
            derivativeRoot = automaticDifferentiation(p3, variable);
        }

        // Return the resulting derivative tree
        return derivativeRoot;
    }

    // Return NULL if the input tree is NULL
    return NULL;
}



// Function to correct the tree by adding derivative nodes to leaf nodes
TreePoint CorrectedTree(TreePoint root) {
	// Check if the current node is a leaf node
	if(root->left == NULL && root->right == NULL) {
		// If it's a leaf node, check its category for correction
		if(root->category == 3) {
			// Category 3: Trigonometric function (cos)
			root->left = createDerivativeNode("cos(", -1);
			root->right = createDerivativeNode(")", -1);
		} else if(root->category == 4) {
			// Category 4: Trigonometric function (sin)
			root->left = createDerivativeNode("sin(", -1);
			root->right = createDerivativeNode(")", -1);
		} else if(root->category == 5) {
			// Category 5: Natural logarithm (ln)
			root->left = createDerivativeNode("ln(", -1);
			root->right = createDerivativeNode(")", -1);
		} else if(root->category == 6) {
			// Category 6: Exponential function (exp)
			root->left = createDerivativeNode("exp(", -1);
			root->right = createDerivativeNode(")", -1);
		} else if(root->category == 7) {
			// Category 7: Tangent function (tan)
			root->left = createDerivativeNode("tan(", -1);
			root->right = createDerivativeNode(")", -1);
		} else if(root->category == 8) {
			// Category 8: Power function (pow)
			root->left = createDerivativeNode("pow(", -1);
			root->right = createDerivativeNode(")", -1);
		} else if(root->category == 9) {
			// Category 9: Logarithmic function (log)
			root->left = createDerivativeNode("log(", -1);
			root->right = createDerivativeNode(")", -1);
		}
	} else {
		// If the current node is not a leaf, recursively correct its left and right children
		root->left = CorrectedTree(root->left);
		root->right = CorrectedTree(root->right);
	}
	// Return the corrected tree
	return root;
}


// Function to simplify a mathematical expression represented as a binary tree
TreePoint Simplify(TreePoint root) {
	// Check if the current node is not NULL
	if(root) {
		// Recursively simplify the left and right subtrees
		root->left = Simplify(root->left);
		root->right = Simplify(root->right);

		// Check the operator at the current node
		if (strcmp(root->element, "+") == 0) {
			// Addition operator
			if (strcmp(root->left->element, "0") == 0 && strcmp(root->right->element, "0") == 0) {
				// Addition of zeros results in zero
				root = createDerivativeNode("0", 2);
			} else if (strcmp(root->left->element, "0") != 0 && strcmp(root->right->element, "0") == 0) {
				// Simplify: x + 0 = x
				TreePoint tmp = root;
				root = root->left;
				free(tmp);
			} else if (strcmp(root->left->element, "0") == 0 && strcmp(root->right->element, "0") != 0) {
				// Simplify: 0 + x = x
				TreePoint tmp = root;
				root = root->right;
				free(tmp);
			}
		} else if (strcmp(root->element, "-") == 0) {
			// Subtraction operator
			if(root->left) {
				// Check if the left child exists
				if (strcmp(root->left->element, "0") == 0 && strcmp(root->right->element, "0") == 0) {
					// Subtraction of zeros results in zero
					root = createDerivativeNode("0", 2);
				} else if (strcmp(root->left->element, "0") != 0 && strcmp(root->right->element, "0") == 0) {
					// Simplify: x - 0 = x
					TreePoint tmp = root;
					root = root->left;
					free(tmp);
				} else if (strcmp(root->left->element, "0") == 0 && strcmp(root->right->element, "0") != 0) {
					// Simplify: 0 - x = -x
					root->left = createDerivativeNode("\0", 0);
				} else if (strcmp(root->right->element, "\0") == 0) {
					// Simplify: x - (-y) = x + y
					if(strcmp(root->right->left->element, "-") == 0) {
						root->element = "+";
						TreePoint tmp = root->right->right;
						root->right = tmp;
						free(tmp);
					}
				} else {
					// Simplify: Evaluate if both children are constants
					if(root->left->category == 2 && *(root->left->element) >= '0' && *(root->left->element) <= '9' && root->right->category == 2 && *(root->right->element) >= '0' && *(root->right->element) <= '9') {
						int result = atoi(root->left->element) - atoi(root->right->element);
						itoa(result, root->element, 10);
						root->left = NULL;
						root->right = NULL;
						root->category = 2;
					}
				}
			} else {
				// If left child is NULL, set left child to 0
				root->left = createDerivativeNode("\0", 0);
			}
		} else if (strcmp(root->element, "*") == 0) {
			// Multiplication operator
			if (strcmp(root->left->element, "0") == 0 || strcmp(root->right->element, "0") == 0) {
				// Multiplication by zero results in zero
				root = createDerivativeNode("0", 2);
			} else if(strcmp(root->left->element, "1") == 0 && strcmp(root->right->element, "1") != 0) {
				// Simplify: 1 * x = x
				TreePoint tmp = root;
				root = root->right;
				free(tmp);
			} else if(strcmp(root->left->element, "1") != 0 && strcmp(root->right->element, "1") == 0) {
				// Simplify: x * 1 = x
				TreePoint tmp = root;
				root = root->left;
				free(tmp);
			} else if(strcmp(root->right->element, "/") == 0) {
				// Simplify: x * (1/y) = x / y
				if(strcmp(root->right->left->element, "1") == 0) {
					root->element = "/";
					TreePoint tmp = root->right;
					root->right = root->right->right;
					free(tmp);
				} else if(root->right->right->element == root->left->element) {
					TreePoint tmp = root;
					root = root->right->left;
					free(tmp);
				}
			} else if(strcmp(root->left->element, "/") == 0) {
				// Simplify: x * (1/y) = x / y
				if(strcmp(root->left->left->element, "1") == 0) {
					root->element = "/";
					TreePoint tmp1 = root->right;
					TreePoint tmp2 = root->left->right;
					root->right = tmp2;
					root->left = tmp1;
				} else if(root->right->element == root->left->right->element) {
					TreePoint tmp = root;
					root = root->left->left;
					free(tmp);
				}
			}else {
				// Simplify: Evaluate if both children are constants
				if(root->left->category == 2 && *(root->left->element) >= '0' && *(root->left->element) <= '9' && root->right->category == 2 && *(root->right->element) >= '0' && *(root->right->element) <= '9') {
					int result = atoi(root->left->element) * atoi(root->right->element);
					itoa(result, root->element, 10);
					root->left = NULL;
					root->right = NULL;
					root->category = 2;
				}
			}
		} else if (strcmp(root->element, "/") == 0) {
			// Division operator
			if (strcmp(root->left->element, "0") == 0) {
				// Division by zero results in zero
				root = createDerivativeNode("0", 2);
			} else if(strcmp(root->right->element, "1") == 0) {
				// Simplify: x / 1 = x
				TreePoint tmp = root;
				root = root->left;
				free(tmp);
			}
		} else if (strcmp(root->element, "^") == 0) {
			if (strcmp(root->right->element, "1") == 0){
				TreePoint tmp = root;
				root = root->left;
				free(tmp);
			}	
		} else {
			// If the current node does not match any operators, return the current node
			return root;
		}
	}
	// Return the simplified tree
	return root;
}

// Function to get the priority of an operator or operand
int getPriority(char c) {
    if (c == '(' || c == ')')
        return 0; // Parentheses have the lowest priority
    if (c == '+' || c == '-')
        return 1; // Addition and subtraction have higher priority than parentheses
    if (c == '*' || c == '/')
        return 2; // Multiplication and division have higher priority than addition and subtraction
    if (c == '^')
        return 3; // Exponentiation has the highest priority
    if (c == '\0' || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9'))
        return 4; // Variables, constants, and the end of the expression have the highest priority
    return -1; // Invalid character
}

// Function to categorize characters into different types
int judge(char c) {
    if (c == '+' || c == '*' || c == '/' || c == '^')
        return 1; // Operator for addition, multiplication, division, or exponentiation
    else if (c == '-')
        return 2; // Operator for subtraction
    else if (c == '(')
        return 3; // Opening parenthesis
    else if (c == ')')
        return 4; // Closing parenthesis
    else if (c >= '0' && c <= '9')
        return 5; // Numeric constant
    else if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))
        return 6; // Variable (assumed to be a single character)
    return -1; // Invalid character
}


// Function to create a tree node based on the provided Infix unit
TreePoint createNode(struct Infix unit) {
	TreePoint node;
	// Allocate memory for the tree node
	node = (TreePoint)malloc(sizeof(struct TreeNode));
	// Allocate memory for the element (data) of the node
	node->element = (char *)malloc(strlen(unit.data) * sizeof(char));
	// Copy the data from the Infix unit to the node's element
	strcpy(node->element, unit.data);
	// Initialize left and right children as NULL
	node->left = NULL;
	node->right = NULL;
	// Set the category of the node
	node->category = unit.category;
	return node;
}

// Function to create a derivative tree node with the specified element and category
TreePoint createDerivativeNode(char *element, int category) {
	TreePoint node;
	// Allocate memory for the tree node
	node = (TreePoint)malloc(sizeof(struct TreeNode));
	// Allocate memory for the element (data) of the node
	node->element = (char *)malloc(strlen(element) * sizeof(char));
	// Copy the specified element to the node's element
	strcpy(node->element, element);
	// Initialize left and right children as NULL
	node->left = NULL;
	node->right = NULL;
	// Set the category of the node
	node->category = category;
	return node;
}

// Function to print the tree in infix order with parentheses for correct precedence
void printTreeInOrder(TreePoint root) {
	if (root) {
		// If the current node is not a leaf node, add an opening parenthesis
		if (root->left && root->right && flag == 1 && getPriority(*(root->element)) > getPriority(*(root->left->element))) {
			printf("(");
			sign1++;
		} else if (root->left && root->right && flag == 0) {
			flag = 1;
		}

		// Recursively print the left subtree
		printTreeInOrder(root->left);

		// Print the current node's element
		printf("%s", root->element);

		// Recursively print the right subtree
		if (root->left && root->right && flag == 1 && getPriority(*(root->element)) >= getPriority(*(root->right->element)) && *(root->right->element) != ')') {
			printf("(");
			sign3++;
			printTreeInOrder(root->right);
			if(sign4 < sign3){
				printf(")");  // Added closing parenthesis here
				sign4++;
			}
			
		} else {
			printTreeInOrder(root->right);
		}

		// If the current node is not a leaf node, add a closing parenthesis
		if (root->left && root->right && sign2 < sign1) {
			printf(")");
			sign2++;
		}
	}
}
