#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <limits.h> // Include limits.h for INT_MIN and INT_MAX
#include <time.h>
#include "bsttask3.h"

// Main function
int main() {

    // Start the clock
    clock_t start = clock();
    struct Node* root = NULL; // Initialize the root node

    // Insert nodes into the binary tree
    root = insert(root, 5);
    insert(root, 3);
    insert(root, 7);
    insert(root, 2);
    insert(root, 4);
    insert(root, 6);
    insert(root, 8);

    // Check if the binary tree is a Binary Search Tree (BST)
    if (isBST(root, INT_MIN, INT_MAX)) { // Check if the tree is a BST using the isBST function
        printf("The binary tree is a Binary Search Tree (BST)\n");
    } else {
        printf("The binary tree is not a Binary Search Tree (BST)\n");
    }
    
    // Stop the clock
    clock_t end = clock();

    // Calculate the elapsed time
    double time_taken = ((double)(end - start));

    // Find the maximum depth (height) of the binary tree
    printf("Maximum depth (height) of the binary tree: %d\n", maxDepth(root));

    // Find the minimum value in the binary tree
    printf("Minimum value in the binary tree: %d\n", minValue(root));

    // Find the maximum value in the binary tree
    printf("Maximum value in the binary tree: %d\n", maxValue(root));

    //Print the time taken
    printf("Time taken: %f seconds\n", time_taken);
    return 0; // Return 0 to indicate successful execution
}
