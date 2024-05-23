#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

#define DEVICE_PATH "/dev/calci"

int main() {
    int fd;
    int value1, value2;
    int result_add, result_sub, result_mul;
   // float result_div;

    // Open the device file
    fd = open(DEVICE_PATH, O_RDWR);
    if (fd < 0) {
        perror("Failed to open the device file");
        return EXIT_FAILURE;
    }

    // Read the first value from the user
    printf("Enter integer values: ");
    scanf("%d %d", &value1, &value2);

    int buffer[2]={value1,value2};
    // Write values to the device
    write(fd, &buffer, sizeof(int));
//    write(fd, &value2, sizeof(int));

    // Read results from the device
    read(fd, &result_add, sizeof(int));
    read(fd, &result_sub, sizeof(int));
    read(fd, &result_mul, sizeof(int));
 //   read(fd, &result_div, sizeof(float));

    // Print results
    printf("Results from kernel module:\n");
    printf("Addition: %d\n", result_add);
    printf("Subtraction: %d\n", result_sub);
    printf("Multiplication: %d\n", result_mul);
   // printf("Division: %.2f\n", result_div);

    // Close the device file
    close(fd);

    return EXIT_SUCCESS;
}
