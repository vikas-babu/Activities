#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <string.h>

#define DEVICE_PATH "/dev/mem_my_device"
#define MEMORY_SIZE 4096  // 4KB

int main() {
    int fd = open(DEVICE_PATH, O_RDWR);
    if (fd < 0) {
        perror("open");
        return -1;
    }

    void *mapped_memory = mmap(NULL, MEMORY_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (mapped_memory == MAP_FAILED) {
        perror("mmap");
        close(fd);
        return -1;
    }

    // Example: Writing to the mapped memory
    strcpy((char *)mapped_memory, "Hello from user space!");
    int len=strlen((char *)mapped_memory);
    write(fd,(char *)mapped_memory,len);
    // Example: Reading from the mapped memory
    printf("Read from device: %s\n", (char *)mapped_memory);
    printf("length of the string:%d\n",len);

    if (munmap(mapped_memory, MEMORY_SIZE) == -1) {
        perror("munmap");
    }

    close(fd);
    return 0;
}

