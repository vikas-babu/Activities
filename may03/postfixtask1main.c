#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <time.h>
#include <ctype.h>
#include "postfixtask1.h"


int main() {
    // Start the clock
    clock_t start = clock();

    char infix[100];
    printf("Enter infix expression: ");
    fgets(infix, sizeof(infix), stdin);

    // Convert infix to postfix
    char* postfix = infixToPostfix(infix);
    printf("Postfix expression: %s\n", postfix);

    // Evaluate postfix expression
    int result = evaluatePostfix(postfix);
    printf("Result: %d\n", result);

    free(postfix); // Free memory allocated for postfix expression
    
    // Stop the clock
    clock_t end = clock();
 
    // Calculate the elapsed time
    
    double time_taken = ((double)(end - start));
    printf("Time taken: %f seconds\n", time_taken);    
    return 0;
}
