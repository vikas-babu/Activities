#include <unistd.h>
#include <sys/syscall.h>

#define DEVICE_PATH "/dev/syscall"
int main() {
    int arg1 = 10;
    char *arg2 = "Hello";
    long result = syscall(MY_CUSTOM_syscall_NR, arg1, arg2);
    if (result < 0) {
        perror("syscall");
        return 1;
    }
    return 0;
}
