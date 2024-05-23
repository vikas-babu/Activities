#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "bttask1.h"
int main() {

    // Start the clock
    clock_t start = clock();

    // Initialize the root node
    struct Node* root = NULL;
    // Insert nodes into the BST
    root = insert(root, 26);
    insert(root, 19);
    insert(root, 29);
    insert(root, 67);
    insert(root, 14);
    insert(root, 3);
    insert(root, 98);

    // Print the inorder traversal of the BST
    printf("In-order traversal: ");
    inorder(root);
    printf("\n");

    // Delete a node from the BST
    printf("Deleting node with value 26\n");
    root = deleteNode(root, 26);

    // Print the inorder traversal after deletion
    printf("In-order traversal after deletion: ");
    inorder(root);
    printf("\n");
    // Stop the clock
    clock_t end = clock();
    double time_taken = ((double)(end-start));
    printf("Time Taken:%f\n",time_taken);
    return 0;
}
