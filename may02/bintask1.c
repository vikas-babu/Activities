#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include"bintask1.h"

// Function to create a new node
struct Node* createNode(char data) {
    // Allocate memory for a new node
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    // Set the data of the new node
    newNode->data = data;
    // Initialize left and right children as NULL
    newNode->left = newNode->right = NULL;
    return newNode;
}

// Function to check if a character is an operator
int isOperator(char c) {
    return (c == '+' || c == '-' || c == '*' || c == '/');
}

// Function to build the binary tree from infix expression
struct Node* buildTree(char *exp) {
    struct Node *stack[100];
    int top = -1;
    struct Node *t, *t1, *t2;

    for (int i = 0; exp[i] != '\0'; i++) {
        if (isdigit(exp[i])) {
            // If the character is a digit, create a node for operand
            t = createNode(exp[i]);
            stack[++top] = t;
        } else if (isOperator(exp[i])) {
            // If the character is an operator, create a node for it
            t = createNode(exp[i]);
            // Pop the top two nodes from the stack as operands
            t1 = stack[top--];
            t2 = stack[top--];

            // Set the popped nodes as left and right children of the operator node
            t->right = t1;
            t->left = t2;

            // Push the operator node onto the stack
            stack[++top] = t;
        }
    }
    // Return the root of the binary tree (the top node of the stack)
    return stack[top];
}

// Function to perform in-order traversal and print the expression
void inOrderTraversal(struct Node* root) {
    if (root == NULL)
        return;
    if (!isOperator(root->data))
        // If the node is an operand, print its data
        printf("%c", root->data);
    else {
        // If the node is an operator, print opening parenthesis
        printf("(");
        // Traverse left subtree
        inOrderTraversal(root->left);
        // Print the operator
        printf("%c", root->data);
        // Traverse right subtree
        inOrderTraversal(root->right);
        // Print closing parenthesis
        printf(")");
    }
}

// Function to perform in-order traversal and evaluate expression
int evaluate(struct Node* root) {
    if (root == NULL)
        return 0;
    if (!isOperator(root->data))
        // If the node is an operand, return its integer value
        return root->data - '0';

    // Evaluate left and right subtrees recursively
    int leftVal = evaluate(root->left);
    int rightVal = evaluate(root->right);

    // Perform operation based on the operator
    switch (root->data) {
        case '+': return leftVal + rightVal;
        case '-': return leftVal - rightVal;
        case '*': return leftVal * rightVal;
        case '/': return leftVal / rightVal;
    }
    return 0;
}
