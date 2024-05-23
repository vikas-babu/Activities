#include<stdio.h>
#include<time.h>
int main() {
	clock_t start=clock();
	int sum=0;
	int n=100000;
	int i;
	/*for(i=0;i<n;i++){
		sum +=i;
	}*/
	for(i=0;i<n;i +=2){
		sum +=i;
		if(i+1<n){
			sum +=i+1;
		}
	}
	clock_t end=clock();

	double time_taken = ((double)(end - start)); // / CLOCKS_PER_SEC;

        printf("Sum of first 100000 numbers: %d\n", sum);
        printf("Time taken: %f seconds\n", time_taken);

	return 0;
}
