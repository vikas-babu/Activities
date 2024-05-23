#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/sysmacros.h>

#define DEVICE_NAME "/dev/spin_data_transfer"

struct user_data {
  int value;
  char message[20];
};

int main() {
  int fd;
  struct user_data data_to_write = {42, "Hello, Kernel!"};
  struct user_data data_read;
  char device_path[256];
  int major_number;

  // Find the major number of the device
  FILE *proc_devices = fopen("/proc/devices", "r");
  if (proc_devices == NULL) {
    perror("Failed to open /proc/devices");
    return -1;
  }

  while (fscanf(proc_devices, "%d %s", &major_number, device_path) != EOF) {
    if (strcmp(device_path, DEVICE_NAME + 5) == 0) { // Skip "/dev/" part
      break;
    }
  }
  fclose(proc_devices);

  if (strcmp(device_path, DEVICE_NAME + 5) != 0) {
    fprintf(stderr, "Device %s not found in /proc/devices\n", DEVICE_NAME);
    return -1;
  }

  // Create the device node dynamically
  snprintf(device_path, sizeof(device_path), "/dev/%s", DEVICE_NAME + 5);
  if (mknod(device_path, S_IFCHR | 0666, makedev(major_number, 0)) < 0) {
    perror("Failed to create device node");
    return -1;
  }

  // Open the device
  fd = open(device_path, O_RDWR);
  if (fd < 0) {
    perror("Failed to open the device");
    return -1;
  }

  // Write to the device
  if (write(fd, &data_to_write, sizeof(data_to_write)) != sizeof(data_to_write)) {
    perror("Failed to write the data");
    close(fd);
    return -1;
  }

  printf("Data written: value = %d, message = %s\n", data_to_write.value, data_to_write.message);

  // Read from the device
  if (read(fd, &data_read, sizeof(data_read)) != sizeof(data_read)) {
    perror("Failed to read the data");
    close(fd);
    return -1;
  }

  printf("Data read: value = %d, message = %s\n", data_read.value, data_read.message);

  // Close the device
  close(fd);


  return 0;
}
