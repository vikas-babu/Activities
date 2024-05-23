#ifndef BTTASK1_H
#define BTTASK1_H

// Node structure definition
struct Node {
    int data;
    struct Node* left;
    struct Node* right;
};

// Function to create a new node
struct Node* createNode(int data);

// Function to insert a new node
struct Node* insert(struct Node* root, int data);

// Function to find the minimum value node in a subtree
struct Node* minValueNode(struct Node* node);

// Function to delete a node
struct Node* deleteNode(struct Node* root, int data);

// Function for inorder traversal
void inorder(struct Node* root);

#endif


