#include<stdio.h>
#include<stdlib.h>
#include<signal.h>

//Signal handler for SIGFPE
void sigfpe_handler(int signum) {
	printf("caught SIGFPE: floating point exception\n");
	//handling the exception such as logging and graceful shutdown"
	exit(EXIT_FAILURE); //-1//0
}

int main() {

	//Register the signal handler
	if(signal(SIGFPE,sigfpe_handler)==SIG_ERR) {
		perror("unable to setup up signal handler\n");
		exit(EXIT_FAILURE);
	}

	//peform floating type exception
	float result = 1/0;

	//printing result
	printf("result is %f\n",result);

        return EXIT_SUCCESS;
}

