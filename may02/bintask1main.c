#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include"bintask1.h"

int main() {
    // Start the clock
    clock_t start = clock();

    char exp[100];
    // Prompt user to enter infix expression
    printf("Enter the infix expression: ");
    scanf("%s", exp);

    // Build the binary tree from the infix expression
    struct Node* root = buildTree(exp);
    
    // Stop the clock
    clock_t end = clock();

    // Calculate the elapsed time
    double time_taken = ((double)(end - start));
    // Print the infix expression using in-order traversal
    printf("Infix Expression: ");
    inOrderTraversal(root);

    // Evaluate the expression and print the result
    printf("\nResult: %d\n", evaluate(root));

    //print the calculated time in how much time the code lines are executed
    printf("Time taken: %f seconds\n", time_taken);

    return 0;
}

