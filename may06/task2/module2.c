#include <linux/init.h>
#include <linux/module.h>
#include <linux/kobject.h>
#include <linux/sysfs.h>
#include <linux/uaccess.h>

static int data;

static struct kobject *kobj;
static char *data_name = "my_data";

static ssize_t data_show(struct kobject *kobj, struct attribute *attr,
                          char *buf) {
  return sprintf(buf, "%d\n", data);
}

static ssize_t data_store(struct kobject *kobj, struct attribute *attr,
                           const char __user *user_buf, size_t count) {
  long tmp;
  int res;

  res = kstrtol(user_buf, 0, &tmp);
  if (res < 0)
    return res;

  data = tmp;
  return count;
}

// Use DEVICE_ATTR macro to define attribute
static struct attribute my_data_attr = {
    .name = "my_data",
    .mode = 0664,
};

static struct attribute *attrs[] = {
    &my_data_attr,
    NULL,
};

static struct attribute_group attr_group = {
    .attrs = attrs,
};

static int __init data_module_init(void) {
  int ret;

  kobj = kobject_create_and_add("my_data_module", NULL);
  if (!kobj)
    return -ENOMEM;

  ret = sysfs_create_group(kobj, &attr_group);
  if (ret) {
    kobject_put(kobj);
    return ret;
  }

  printk(KERN_INFO "Data module loaded!\n");
  return 0;
}

static void __exit data_module_exit(void) {
  sysfs_remove_group(kobj, &attr_group);
  kobject_put(kobj);

  printk(KERN_INFO "Data module unloaded!\n");
}

module_init(data_module_init);
module_exit(data_module_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("RPS");
MODULE_DESCRIPTION("A simple kernel module for data access through sysfs");

