#include <linux/init.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

#define DEVICE_NAME "add_values"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");

#define DEVICE_PATH "/dev/add_values"

static int major;
static int value1, value2, result;

static int device_open(struct inode *inode, struct file *file) {
    printk(KERN_INFO "Device opened\n");
    return 0;
}

static int device_release(struct inode *inode, struct file *file) {
    printk(KERN_INFO "Device closed\n");
    return 0;
}

static ssize_t device_read(struct file *filp, char *buffer, size_t length, loff_t *offset) {
    copy_to_user(buffer, &result, sizeof(int));
    printk(KERN_INFO "Result sent to user space: %d\n", result);
    return sizeof(int);
}

static ssize_t device_write(struct file *filp, const char *buffer, size_t length, loff_t *offset) {
    copy_from_user(&value1, buffer, sizeof(int));
    copy_from_user(&value2, buffer+sizeof(int), sizeof(int));
    printk(KERN_INFO "Result received from user space: %d and %d \n", value1,value2);
    result = value1 + value2; // Add the value
    return sizeof(int);
}

static struct file_operations fops = {
    .read = device_read,
    .write = device_write,
    .open = device_open,
    .release = device_release,
};

static int __init add_values_init(void) {
    major = register_chrdev(0, DEVICE_NAME, &fops);
    if (major < 0) {
        printk(KERN_ALERT "Registering char device failed with %d\n", major);
        return major;
    }
    printk(KERN_INFO "Adding Integer: Device registered with major number %d\n", major);
    return 0;
}

static void __exit add_values_exit(void) {
    unregister_chrdev(major, DEVICE_NAME);
    printk(KERN_INFO "Adding Integer: Device unregistered\n");
}

module_init(add_values_init);
module_exit(add_values_exit);
