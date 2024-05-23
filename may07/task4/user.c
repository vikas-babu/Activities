#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

#define DEVICE_PATH "/dev/reversed_string"

int main() {
    int fd;
    char input_string[100];
    char reversed_string[100];

    // Open the device file
    fd = open(DEVICE_PATH, O_RDWR);
    if (fd < 0) {
        perror("Failed to open the device file");
        return EXIT_FAILURE;
    }

    // Read input string from user
    printf("Enter a string: ");
    fgets(input_string, sizeof(input_string), stdin);
    input_string[strlen(input_string) - 1] = '\0'; // Remove newline character

    // Write input string to the device
    write(fd, input_string, strlen(input_string) + 1);

    // Read reversed string from the device
    read(fd, reversed_string, sizeof(reversed_string));

    // Print reversed string
    printf("Reversed string: %s\n", reversed_string);

    // Close the device file
    close(fd);

    return EXIT_SUCCESS;
}
