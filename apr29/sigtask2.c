#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

void sigint_handler(int signum) {
    printf("\nCtrl+C pressed. Exiting gracefully.\n");
    exit(signum);
}

int main() {
    signal(SIGINT, sigint_handler);

    // program running infinitely
    while(1) {
        // Do something
    }

    return 0;
}
