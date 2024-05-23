#include <stdio.h>
#include <time.h>
#include "bst.h"

int main() {
    // Start the clock
    clock_t start = clock();	
    struct node* root = NULL;

    // Insert some elements into the BST
    root = insert(root, 100);
    root = insert(root, 67);
    root = insert(root, 45);
    root = insert(root, 145);
    root = insert(root, 137);
    root = insert(root, 89);
    root = insert(root, 119);

    // Print the inorder traversal of the BST
    printf("Inorder traversal of BST: ");
    inorderTraversal(root);
    printf("\n");

    // Search for elements in the BST
    int searchKey = 119;
    if (search(root, searchKey)) {
        printf("%d found in the BST.\n", searchKey);
    } else {
        printf("%d not found in the BST.\n", searchKey);
    }

    searchKey = 188;
    if (search(root, searchKey)) {
        printf("%d found in the BST.\n", searchKey);
    } else {
        printf("%d not found in the BST.\n", searchKey);
    }
    // Stop the clock
    clock_t end = clock();

    // Calculate the elapsed time
    double time_taken = ((double)(end - start));
    printf("Time taken: %f seconds\n", time_taken); 

    return 0;
}
