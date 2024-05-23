#include <linux/init.h>
#include <linux/module.h>
#include <linux/printk.h>
MODULE_LICENSE("GPL");
MODULE_LICENSE("RPS");

static int __init hello_init(void) {
	printk(KERN_INFO "Hello World\n");
	return 0;
}
static void __exit hello_exit(void) {
	printk(KERN_INFO "hello exit\n");
}
module_init(hello_init);
module_exit(hello_exit);

