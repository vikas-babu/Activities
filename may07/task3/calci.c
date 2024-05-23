#include <linux/init.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

#define DEVICE_NAME "calci"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");

static int major;
static int value1;
static int value2;
static int result_add;
static int result_sub;
static int result_mul;
//static float result_div;

static int device_open(struct inode *inode, struct file *file) {
    printk(KERN_INFO "Device opened\n");
    return 0;
}

static int device_release(struct inode *inode, struct file *file) {
    printk(KERN_INFO "Device closed\n");
    return 0;
}

static void add(int a, int b) {
    result_add = a + b;
}

static void sub(int a, int b) {
    result_sub = a - b;
}

static void mul(int a, int b) {
    result_mul = a * b;
}

/*static void div(int a, int b) {
        result_div = (float) a/b;
}*/

static ssize_t device_read(struct file *filp, char *buffer, size_t length, loff_t *offset) {
    // Copy results to user space
    copy_to_user(buffer, &result_add, sizeof(int));
    buffer += sizeof(int);
    copy_to_user(buffer, &result_sub, sizeof(int));
    buffer += sizeof(int);
    copy_to_user(buffer, &result_mul, sizeof(int));
    buffer += sizeof(int);
   // copy_to_user(buffer, &result_div, sizeof(float));

    // Print results
    printk(KERN_INFO "Result of addition: %d\n", result_add);
    printk(KERN_INFO "Result of subtraction: %d\n", result_sub);
    printk(KERN_INFO "Result of multiplication: %d\n", result_mul);
    //printk(KERN_INFO "Result of division: %.2f\n", result_div);

    return sizeof(int) * 3 ;
}

static ssize_t device_write(struct file *filp, const char *buffer, size_t length, loff_t *offset) {
    copy_from_user(&value1, buffer, sizeof(int));
    copy_from_user(&value2, buffer + sizeof(int), sizeof(int));

    // Perform arithmetic operations
    add(value1, value2);
    sub(value1, value2);
    mul(value1, value2);
    //div(value1, value2);

    // Print results
    printk(KERN_INFO "Received values: %d, %d\n", value1, value2);

    return sizeof(int) * 2;
}

static struct file_operations fops = {
    .read = device_read,
    .write = device_write,
    .open = device_open,
    .release = device_release,
};

static int __init calci_init(void) {
    major = register_chrdev(0, DEVICE_NAME, &fops);
    if (major < 0) {
        printk(KERN_ALERT "Registering char device failed with %d\n", major);
        return major;
    }
    printk(KERN_INFO "Calci: Device registered with major number %d\n", major);
    return 0;
}

static void __exit calci_exit(void) {
    unregister_chrdev(major, DEVICE_NAME);
    printk(KERN_INFO "Calci: Device unregistered\n");
}

module_init(calci_init);
module_exit(calci_exit);
