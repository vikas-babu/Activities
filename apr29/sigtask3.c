#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

void sigsegv_handler(int signum) {
    printf("\nSegmentation fault occurred. Exiting.\n");
    exit(signum);
}

int main() {
    signal(SIGSEGV, sigsegv_handler);

    // Trigger segmentation fault
    int *ptr = NULL;
    *ptr = 10;

    return 0;
}
