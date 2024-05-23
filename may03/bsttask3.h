#ifndef BSTTASK3_H
#define BSTTASK3_H

// Node structure definition
struct Node {
    int data; // Data stored in the node
    struct Node* left; // Pointer to the left child node
    struct Node* right; // Pointer to the right child node
};

// Function to create a new node
struct Node* createNode(int data);

// Function to insert a new node into the binary tree
struct Node* insert(struct Node* root, int data);

// Function to check if a binary tree is a Binary Search Tree (BST)
bool isBST(struct Node* root, int min, int max);

// Function to find the minimum value in a binary tree
int minValue(struct Node* root);

// Function to find the maximum value in a binary tree
int maxValue(struct Node* root);

#endif
