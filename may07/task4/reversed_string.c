#include <linux/init.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/uaccess.h>
#include <linux/string.h>

#define DEVICE_NAME "reversed_string"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");

static int major;
static char input_string[100];
static char reversed_string[100];

static int device_open(struct inode *inode, struct file *file) {
    printk(KERN_INFO "Device opened\n");
    return 0;
}

static int device_release(struct inode *inode, struct file *file) {
    printk(KERN_INFO "Device closed\n");
    return 0;
}

static void reverse_string(char *str) {
    int i, j;
    char temp;
    for (i = 0, j = strlen(str) - 1; i < j; i++, j--) {
        temp = str[i];
        str[i] = str[j];
        str[j] = temp;
    }
}

static ssize_t device_read(struct file *filp, char *buffer, size_t length, loff_t *offset) {
    copy_to_user(buffer, reversed_string, strlen(reversed_string) + 1);
    printk(KERN_INFO "Reversed string sent to user space: %s\n", reversed_string);
    return strlen(reversed_string) + 1;
}

static ssize_t device_write(struct file *filp, const char *buffer, size_t length, loff_t *offset) {
    strcpy(input_string, buffer);
    reverse_string(input_string);
    strcpy(reversed_string, input_string);
    printk(KERN_INFO "Input string received from user space: %s\n", input_string);
    return length;
}

static struct file_operations fops = {
    .read = device_read,
    .write = device_write,
    .open = device_open,
    .release = device_release,
};

static int __init reverse_string_init(void) {
    major = register_chrdev(0, DEVICE_NAME, &fops);
    if (major < 0) {
        printk(KERN_ALERT "Registering char device failed with %d\n", major);
        return major;
    }
    printk(KERN_INFO "reverse string: Device registered with major number %d\n", major);
    return 0;
}

static void __exit reverse_string_exit(void) {
    unregister_chrdev(major, DEVICE_NAME);
    printk(KERN_INFO "reverse string: Device unregistered\n");
}

module_init(reverse_string_init);
module_exit(reverse_string_exit);
