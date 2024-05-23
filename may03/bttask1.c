#include <stdio.h>
#include <stdlib.h>
#include "bttask1.h"

// Function to create a new node
struct Node* createNode(int data) {
    // Allocate memory for a new node
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    // Set data and pointers
    newNode->data = data;
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode;
}

// Function to insert a new node
struct Node* insert(struct Node* root, int data) {
    // If tree is empty, create a new node and return it
    if (root == NULL) {
        return createNode(data);
    }
    // If data is less than root, insert in left subtree
    if (data < root->data) {
        root->left = insert(root->left, data);
    }
    // If data is greater than root, insert in right subtree
    else if (data > root->data) {
        root->right = insert(root->right, data);
    }
    return root;
}

// Function to find the minimum value node in a subtree
struct Node* minValueNode(struct Node* node) {
    // Loop through left children to find the minimum value
    struct Node* current = node;
    while (current && current->left != NULL) {
        current = current->left;
    }
    return current;
}

// Function to delete a node
struct Node* deleteNode(struct Node* root, int data) {
    // Base case: If tree is empty or node is not found, return root
    if (root == NULL) {
        return root;
    }
    // If data is smaller than root, go to left subtree
    if (data < root->data) {
        root->left = deleteNode(root->left, data);
    }
    // If data is greater than root, go to right subtree
    else if (data > root->data) {
        root->right = deleteNode(root->right, data);
    }
    // If data is same as root's data, then this is the node to be deleted
    else {
        // Node with only one child or no child
        if (root->left == NULL) {
            struct Node* temp = root->right;
            free(root);
            return temp;
        } else if (root->right == NULL) {
            struct Node* temp = root->left;
            free(root);
            return temp;
        }
        // Node with two children: Get the inorder successor (smallest in the right subtree)
        struct Node* temp = minValueNode(root->right);
        // Copy the inorder successor's content to this node
        root->data = temp->data;
        // Delete the inorder successor
        root->right = deleteNode(root->right, temp->data);
    }
    return root;
}

// Function to search for a node with given data
struct Node* search(struct Node* root, int data) {
    // Base cases: root is null or data is present at root
    if (root == NULL || root->data == data) {
        return root;
    }
    // Data is greater than root's data, so search in right subtree
    if (data > root->data) {
        return search(root->right, data);
    }
    // Data is smaller than root's data, so search in left subtree
    return search(root->left, data);
}

// Function for inorder traversal
void inorder(struct Node* root) {
    // Base case: If tree is empty, return
    if (root != NULL) {
        // Traverse left subtree
        inorder(root->left);
        // Print root data
        printf("%d ", root->data);
        // Traverse right subtree
        inorder(root->right);
    }
}

