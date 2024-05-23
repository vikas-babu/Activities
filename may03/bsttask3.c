#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "bsttask3.h"

// Function to create a new node
struct Node* createNode(int data) {
    // Allocate memory for a new node
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    // Set data and pointers
    newNode->data = data;
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode; // Return the newly created node
}

// Function to insert a new node into the binary tree
struct Node* insert(struct Node* root, int data) {
    if (root == NULL) {
        return createNode(data); // If tree is empty, create a new node and return it
    }
    if (data < root->data) {
        root->left = insert(root->left, data); // Insert into left subtree if data is less than current node
    } else if (data > root->data) {
        root->right = insert(root->right, data); // Insert into right subtree if data is greater than current node
    }
    return root; // Return the root of the modified tree
}

// Function to check if a binary tree is a Binary Search Tree (BST)
bool isBST(struct Node* root, int min, int max) {
    if (root == NULL) {
        return true; // Base case: An empty tree is a BST
    }
    if (root->data < min || root->data > max) {
        return false; // If current node's data violates the BST property, return false
    }
    // Recursively check left and right subtrees with updated min and max values
    return isBST(root->left, min, root->data - 1) && isBST(root->right, root->data + 1, max);
}

// Function to find the maximum depth (height) of a binary tree
int maxDepth(struct Node* root) {
    if (root == NULL) {
        return 0; // Base case: An empty tree has height 0
    }
    // Recursively calculate the depth of left and right subtrees
    int leftDepth = maxDepth(root->left);
    int rightDepth = maxDepth(root->right);
    // Return the maximum depth among left and right subtrees, plus 1 for the current node
    return (leftDepth > rightDepth) ? leftDepth + 1 : rightDepth + 1;
}

// Function to find the minimum value in a binary tree
int minValue(struct Node* root) {
    struct Node* current = root;
    while (current->left != NULL) {
        current = current->left; // Traverse to the leftmost node
    }
    return current->data; // Return the data of the leftmost node
}

// Function to find the maximum value in a binary tree
int maxValue(struct Node* root) {
    struct Node* current = root;
    while (current->right != NULL) {
        current = current->right; // Traverse to the rightmost node
    }
    return current->data; // Return the data of the rightmost node
}
