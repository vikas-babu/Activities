#ifndef BINTASK1_H
#define BINTASK1_H


// Structure for binary tree node
struct Node {
    char data;          
    struct Node *left;  
    struct Node *right;
};

//Function to ceate a new node
struct Node* createNode(char data);

// Function to check if a character is an operator
int isOperator(char c);

// Function to build the binary tree from infix expression
struct Node* buildTree(char *exp);

// Function to perform in-order traversal and print the expression
void inOrderTraversal(struct Node* root);

// Function to perform in-order traversal and evaluate expression
int evaluate(struct Node* root);

#endif
