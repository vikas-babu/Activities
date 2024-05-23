#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <time.h>

void sigint_handler(int signum) {
    clock_t start=clock();
    printf("\nCtrl+C pressed. Exiting gracefully.\n");
    // Stop the clock
    clock_t end = clock();

    // Calculate the elapsed time
    double time_taken = ((double)(end - start));

    printf("Time taken: %f seconds\n", time_taken);

   // exit(signum);
}

int main() {

    signal(SIGINT, sigint_handler);
    
    // Your main program logic goes here
    // For demonstration, let's just keep the program running indefinitely
    while(1) {
        // Do something
    }

    return 0;
}
