#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

void sigusr1_handler(int signum) {
    printf("\nCustom signal SIGUSR1 received.\n");
}

int main() {
    signal(SIGUSR1, sigusr1_handler);

    // Periodically generate custom signal
    while(1) {
        printf("Generating custom signal SIGUSR1...\n");
        kill(getpid(), SIGUSR1);
        sleep(5); // Wait for 5 seconds
    }

    return 0;
}
