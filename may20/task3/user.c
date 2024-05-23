#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <unistd.h>

#define DEVICE_PATH "/dev/mem_add_device"
#define MEM_SIZE (sizeof(int) * 3)
#define IOCTL_PERFORM_SUM 1

int main() {
    int fd;
    int *mapped_mem;
    int num1, num2;

    // Open the character device
    fd = open(DEVICE_PATH, O_RDWR);
    if (fd < 0) {
        perror("Failed to open the device");
        return EXIT_FAILURE;
    }

    // Map the device memory to user space
    mapped_mem = (int*)mmap(NULL, MEM_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (mapped_mem == MAP_FAILED) {
        perror("mmap failed");
        close(fd);
        return EXIT_FAILURE;
    }

    // Read two numbers from user
    printf("Enter first number: ");
    scanf("%d", &num1);
    printf("Enter second number: ");
    scanf("%d", &num2);

    // Write numbers to mapped memory
    mapped_mem[0] = num1;
    mapped_mem[1] = num2;

    // Trigger the kernel to perform the sum operation
    if (ioctl(fd,IOCTL_PERFORM_SUM, NULL) < 0) {
        perror("ioctl failed");
        munmap(mapped_mem, MEM_SIZE);
        close(fd);
        return EXIT_FAILURE;
    }

    // Read back the result
    printf("Sum: %d\n", mapped_mem[2]);

    // Unmap the memory and close the device
    munmap(mapped_mem, MEM_SIZE);
    close(fd);

    return EXIT_SUCCESS;
}
