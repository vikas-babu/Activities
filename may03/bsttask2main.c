#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "bsttask2.h"

int main() {

    // Start the clock
    clock_t start = clock();
    // Initialize the root node
    struct Node* root = NULL;

    // Insert nodes into the BST
    root = insert(root, 5);
    insert(root, 3);
    insert(root, 7);
    insert(root, 2);
    insert(root, 4);
    insert(root, 6);
    insert(root, 8);

    // Print the preorder traversal of the BST
    printf("Pre-order traversal: ");
    preorder(root);
    printf("\n");

    // Print the postorder traversal of the BST
    printf("Post-order traversal: ");
    postorder(root);
    printf("\n");

    // Example of searching for a node with value 3
    int searchData = 3;
    struct Node* searchResult = search(root, searchData);
    if (searchResult != NULL) {
        printf("Node with value %d found in the tree.\n", searchData);
    } else {
        printf("Node with value %d not found in the tree.\n", searchData);
    }

    // Example of deleting a node with value 5
    printf("Deleting node with value 5\n");
    root = deleteNode(root, 5);

    // Print the preorder traversal after deletion
    printf("Pre-order traversal after deletion: ");
    preorder(root);
    printf("\n");

    // Print the postorder traversal after deletion
    printf("Post-order traversal after deletion: ");
    postorder(root);
    printf("\n");

    // Stop the clock
    clock_t end = clock();

    // Calculate the elapsed time
    double time_taken = ((double)(end - start));
    printf("Time taken: %f seconds\n", time_taken);

    return 0;
}
