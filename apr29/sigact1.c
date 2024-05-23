#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

// Signal handler function void sigint handler(int signum)
void sigint_handler(int signum){
    printf("Caught SIGINT %d\n", signum);
    //Custom handling for SIGINT
    // For example, cleanup or graceful shutdown
    exit(signum);
}

int main(){
    // Define the struct for the signal action /
   //signal(SIGINT, sigint hanler);
   struct sigaction sa;
   sa.sa_handler = sigint_handler; 
   sigemptyset(&sa.sa_mask);
   // Set the signal handler function mask
   // Clear the signal // No special flags
   sa.sa_flags = 0;

   // Register the signal handler for SIGINT
   if (sigaction (SIGINT, &sa, NULL)== -1){
       perror("sigaction"); 
       exit(EXIT_FAILURE);
   }
   printf("Signal handler registered for SIGINT. Press Ctrl+C to trigger. \n");
   // Loop indefinitely 
   while (1){
      // Do something.
   }
   return EXIT_SUCCESS;
 }
