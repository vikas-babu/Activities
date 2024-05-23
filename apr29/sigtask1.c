#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

// Global variables to store the numbers
int num1, num2;

// Signal handler function for SIGINT (Ctrl+C)
void sigint_handler(int signum) {
    printf("\nCaught SIGINT: Adding two numbers\n");
    printf("Result of addition: %d+%d:%d\n", num1, num2, num1 + num2);
    exit(EXIT_SUCCESS);
}

// Signal handler function for SIGTSTP (Ctrl+Z)
void sigtstp_handler(int signum) {
    printf("\nCaught SIGTSTP: Subtracting two numbers\n");
    printf("Result of subtraction: %d-%d:%d\n", num1, num2, num1 - num2);
    exit(EXIT_SUCCESS);
}
int main() {
    // Register the signal handler for SIGINT
    signal(SIGINT, SIG_IGN);
    
    // Register the signal handler for SIGTSTP
    signal(SIGTSTP, sigtstp_handler);

    // Input two numbers
    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);

    // Infinite loop to keep the program running
    while (1) {
        // Do nothing...
    }

    return 0;
}
