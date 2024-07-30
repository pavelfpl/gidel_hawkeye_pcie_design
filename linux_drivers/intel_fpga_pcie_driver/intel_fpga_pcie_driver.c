/*
 * Copyright (C) 2023 Pavel Fiala
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 */

// System includes
#include <linux/fs.h>
#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/sched.h>
#include <linux/version.h>

// Driver local includes
#include "intel_fpga_pcie_driver.h"

// Enable driver DEBUG option
// --------------------------
// #define CONST_PCIE_DRIVER_DEBUG
#define CONST_PCIE_DRIVER_MESSAGE_DEBUG
#define CONST_TIME_MEASUREMENT_DEBUG

#define DEVICE_MAJOR 0x0
static int device_major = DEVICE_MAJOR;
static int device_minor_count = 0;

/* Vendor ID */
static int vendor_id = ALTERA_PCIE_VID;
module_param(vendor_id, int, S_IRUGO);

 /* Device id */
static int device_id = ALTERA_PCIE_DID;
module_param(device_id, int, S_IRUGO);

// PCIe Driver function definition
static long intel_altera_pcie_ioctl(struct file *filp, unsigned int cmd, unsigned long arg);
static loff_t intel_altera_pcie_llseek (struct file *filp, loff_t off, int whence);
static ssize_t intel_altera_pcie_write(struct file *filp, const char __user *buf, size_t count, loff_t *f_pos);
static ssize_t intel_altera_pcie_read(struct file *filp, char __user *buf, size_t count, loff_t *f_pos);
static int intel_altera_pcie_open(struct inode *inode, struct file *filp);
static int intel_altera_pcie_release(struct inode *inode, struct file *filp);
static int init_chrdev(struct intel_altera_fpga_pcie_storage *pcie_ptr);
static void scan_pci_bars(struct intel_altera_fpga_pcie_storage *pcie_ptr, struct pci_dev *dev);
static int map_bars(struct intel_altera_fpga_pcie_storage *pcie_ptr, struct pci_dev *dev);
static void unmap_bars(struct intel_altera_fpga_pcie_storage *pcie_ptr, struct pci_dev *dev);
static int intel_altera_pcie_probe(struct pci_dev *dev, const struct pci_device_id *id);
static __exit void intel_altera_pcie_remove(struct pci_dev *dev);
static __init int intel_altera_fpga_pcie_init(void);
static __exit void intel_altera_fpga_pcie_exit(void);

// Set IOCTL cmd call
static long intel_altera_pcie_ioctl(struct file *filp, unsigned int cmd, unsigned long arg){

   struct intel_altera_fpga_pcie_storage *pcie_ptr = (struct intel_altera_fpga_pcie_storage *)filp->private_data;
   struct intel_altera_ioctl_arg kernel_arg = {0};

   // acquire a semaphore
   down(&pcie_ptr->sem);

   // Verify arg in user process
#if LINUX_VERSION_CODE < KERNEL_VERSION(5,0,0)
   if (access_ok(VERIFY_READ, (void __user *)arg, sizeof(struct intel_altera_ioctl_arg))){
#else
   if (access_ok(/* VERIFY_READ, */ (void __user *)arg, sizeof(struct intel_altera_ioctl_arg))){
#endif
       // copy ioctl arg from user space to kernel
       if (copy_from_user(&kernel_arg, (int __user *)arg, sizeof(struct intel_altera_ioctl_arg))){
           up(&pcie_ptr->sem);
           return -EFAULT;
       }
   } else {
     up(&pcie_ptr->sem);
     return -EFAULT;
   }

   // Check IOCTL cmd
   switch(cmd){
     case INTEL_ALTERA_SET_BAR_IOCTL:       // Select given IOBAR
        if(kernel_arg.bar_num >=0 && kernel_arg.bar_num < INTEL_ALTERA_PCIE_BAR_NUM_CNT){
           if(pcie_ptr->bar[kernel_arg.bar_num] != NULL){
              pcie_ptr->rw_bar_num = kernel_arg.bar_num;
           }else{
              dev_err(&pcie_ptr->pci_dev->dev, "Error: try to access of not initialized PCI BAR \n");
              up(&pcie_ptr->sem);
              return -EFAULT;
           }
        }else{
           dev_err(&pcie_ptr->pci_dev->dev, "Error: selected PCI BAR is out of range. \n");
           up(&pcie_ptr->sem);
           return -EFAULT;
        }
        break;
    case INTEL_ALTERA_READ_CONF_WORD_IOCTL:  // READ CONF word
       if(pci_read_config_dword(pcie_ptr->pci_dev, kernel_arg.read_conf_offset, &kernel_arg.read_conf_data) == 0){
#if LINUX_VERSION_CODE < KERNEL_VERSION(5,0,0)
          if(access_ok(VERIFY_WRITE, (void __user *)arg, sizeof(struct intel_altera_ioctl_arg))) {
#else
          if(access_ok(/* VERIFY_WRITE, */ (void __user *)arg, sizeof(struct intel_altera_ioctl_arg))) {
#endif
             // copy result back to the user
             if(copy_to_user((struct altera_ioctl_arg *)arg, &kernel_arg, sizeof(struct intel_altera_ioctl_arg))){
                up(&pcie_ptr->sem);
                return -EFAULT;
             }
          }else{
               up(&pcie_ptr->sem);
               return -EFAULT;
          }
       }else{
          dev_err(&pcie_ptr->pci_dev->dev, "Read PCI config word failed. \n");
          up(&pcie_ptr->sem);
          return -EFAULT;
       }
       break;
    case INTEL_ALTERA_BAR_MAX_SIZE_IOCTL:
          kernel_arg.bar_max_length = pcie_ptr->bar_length[pcie_ptr->rw_bar_num];
#if LINUX_VERSION_CODE < KERNEL_VERSION(5,0,0)
              if(access_ok(VERIFY_WRITE, (void __user *)arg, sizeof(struct intel_altera_ioctl_arg))){
#else
              if(access_ok(/* VERIFY_WRITE, */ (void __user *)arg, sizeof(struct intel_altera_ioctl_arg))) {
#endif
                // copy result back to the user
                if(copy_to_user((struct altera_ioctl_arg *)arg, &kernel_arg, sizeof(struct intel_altera_ioctl_arg))){
                   up(&pcie_ptr->sem);
                   return -EFAULT;
                }
           }else{
              dev_err(&pcie_ptr->pci_dev->dev, "Read selected BAR length failed. \n");
              up(&pcie_ptr->sem);
              return -EFAULT;
           }
           break;
    default:
       up(&pcie_ptr->sem);
       return -EINVAL;
   }

   // release semaphore
   up(&pcie_ptr->sem);

   return 0;
}

// Seek to given position
static loff_t intel_altera_pcie_llseek (struct file *filp, loff_t off, int whence){

    loff_t newpos;

    switch (whence) {
        case 0:   // SEEK_SET - set the off, starting from the beginning of the file
            newpos = off;
            break;
        case 1:   // SEEK_CUR - set the off, starting from the current file position
            newpos = filp->f_pos + off;
            break;
        case 2 :  // SEEK_END  - we shoudl not overlap PCI bar
            newpos = -1;
            break;
        default:
            return -EINVAL;
    }

    if (newpos < 0)
        return -EINVAL;

    filp->f_pos = newpos;

    return newpos;
}

// Write data to memory mapped device
static ssize_t intel_altera_pcie_write(struct file *filp, const char __user *buf, size_t count, loff_t *f_pos){

    int i=0;

    char *buffer_write = NULL;
    ssize_t bytes_written = 0;

    // Get private data
    struct intel_altera_fpga_pcie_storage *pcie_ptr = (struct intel_altera_fpga_pcie_storage *)filp->private_data;

#ifdef CONST_TIME_MEASUREMENT_DEBUG
    u64 start_time=0, stop_time=0, elapsed_time=0;
    start_time = ktime_get_ns();
#endif

    // acquire a semaphore
    down(&pcie_ptr->sem);

    // Error checking
    if ((*f_pos + count) > pcie_ptr->bar_length[pcie_ptr->rw_bar_num]) {
        dev_err(&pcie_ptr->pci_dev->dev, "Trying to write to the outside of the BAR. \n");
        up(&pcie_ptr->sem);
        return -1;
    }

    // Allocate the kernel buffer
    buffer_write = kmalloc(count * sizeof(char), GFP_KERNEL);

    // Check whether the user buffer is readable
#if LINUX_VERSION_CODE < KERNEL_VERSION(5,0,0)
    if (access_ok( VERIFY_READ, (void __user *)buf, count)) {
#else
    if (access_ok( /* VERIFY_READ, */ (void __user *)buf, count)) {
#endif
        // check the return value, if return not 0, copy imcompletely
        if (copy_from_user(buffer_write, buf, count)) {
            dev_err(&pcie_ptr->pci_dev->dev, "copy_from_user() failed. \n");
            up(&pcie_ptr->sem);
            return -1;
        }
    } else {
        dev_err(&pcie_ptr->pci_dev->dev, "access_ok() failed. \n");
        up(&pcie_ptr->sem);
        return -1;
    }

    // Check whether count and file position are multiple of 4
    if ((count % sizeof(u32) == 0) && (*f_pos % sizeof(u32) == 0)) {
        for(i=0;i<count;i+=4){
            // write 32 bits each time
            iowrite32(*(u32 *)(buffer_write+i), pcie_ptr->bar[pcie_ptr->rw_bar_num] + *f_pos);

            bytes_written += sizeof(u32);
            *f_pos += sizeof(u32);
        }
    } else {
        for(i=0;i<count;i++){
            // write 8 bits each time
            iowrite8(*(buffer_write+i), pcie_ptr->bar[pcie_ptr->rw_bar_num] + *f_pos);

            bytes_written += sizeof(u8);
            *f_pos += sizeof(u8);
        }
    }

    // free the kernel buffer after writing
    kfree(buffer_write);

    // release a semaphore
    up(&pcie_ptr->sem);

#ifdef CONST_TIME_MEASUREMENT_DEBUG
    stop_time = ktime_get_ns();
    elapsed_time = stop_time - start_time;
    dev_info(&pcie_ptr->pci_dev->dev, "WRITE elapsedTime : %llu\n", elapsed_time);
#endif

    // return the number of bytes written
    return bytes_written;
}

// Read data from memory mapped device
static ssize_t intel_altera_pcie_read(struct file *filp, char __user *buf, size_t count, loff_t *f_pos){

    int i=0;

    char *buffer_read = NULL;
    ssize_t bytes_read = 0;

    struct intel_altera_fpga_pcie_storage *pcie_ptr = (struct intel_altera_fpga_pcie_storage *)filp->private_data;

#ifdef CONST_TIME_MEASUREMENT_DEBUG
    u64 start_time=0, stop_time=0, elapsed_time=0;
    start_time = ktime_get_ns();
#endif

    // acquire a semaphore
    down(&pcie_ptr->sem);

    // error checking
    if ((*f_pos + count) > pcie_ptr->bar_length[pcie_ptr->rw_bar_num]) {
        dev_err(&pcie_ptr->pci_dev->dev, "Trying to read from the outside of the BAR. \n");
        up(&pcie_ptr->sem);
        return -1;
    }

    // Allocate kernel buffer for reading
    buffer_read = kmalloc(count * sizeof(char), GFP_KERNEL);

    // Check whether count and file position are multiple of 4
    if ((count % sizeof(u32) == 0) && (*f_pos % sizeof(u32) == 0)) {
        for(i=0;i<count;i+=4){
            // read 32 bits each time
            *(u32 *)(buffer_read+i) = ioread32(pcie_ptr->bar[pcie_ptr->rw_bar_num] + *f_pos);

            bytes_read += sizeof (u32);
            *f_pos += sizeof(u32);
        }
    } else {
        for(i=0;i<count;i++){
            // read 8 bits each time
            *(buffer_read+i) = ioread8(pcie_ptr->bar[pcie_ptr->rw_bar_num] + *f_pos);

            bytes_read += sizeof (u8);
            *f_pos += sizeof(u8);
        }
    }

    // Check the user buffer writable
#if LINUX_VERSION_CODE < KERNEL_VERSION(5,0,0)
    if (access_ok(VERIFY_WRITE, (void __user *)buf, bytes_read)) {
#else
    if (access_ok(/* VERIFY_WRITE, */ (void __user *)buf, bytes_read)) {
#endif
        // check the return value, if return not 0, copy imcompletely
        if (copy_to_user(buf, buffer_read, bytes_read)) {
            dev_err(&pcie_ptr->pci_dev->dev, "copy_to_user() failed. \n");
            up(&pcie_ptr->sem);
            return -1;
        }
    } else {
        dev_err(&pcie_ptr->pci_dev->dev, "access_ok() failed. \n");
        up(&pcie_ptr->sem);
        return -1;
    }

    // free the buffer after reading
    kfree(buffer_read);

    // release semaphore
    up(&pcie_ptr->sem);

#ifdef CONST_TIME_MEASUREMENT_DEBUG
    stop_time = ktime_get_ns();
    elapsed_time = stop_time - start_time;
    dev_info(&pcie_ptr->pci_dev->dev, "READ elapsedTime : %llu\n", elapsed_time);
#endif

    // return the number for bytes read
    return bytes_read;
}

// Open character device
static int intel_altera_pcie_open(struct inode *inode, struct file *filp){

    int i=0;

    struct intel_altera_fpga_pcie_storage *pcie_ptr = 0;

    pcie_ptr = container_of(inode->i_cdev, struct intel_altera_fpga_pcie_storage, c_dev);

    // acquire a semaphore
    down(&pcie_ptr->sem);

    filp->private_data = pcie_ptr;
    pcie_ptr->user_pid = current->pid;

    // Set first usable PCIe bar
    for (i = 0; i < INTEL_ALTERA_PCIE_BAR_NUM_CNT; i++) {
        if(pcie_ptr->bar[i] != NULL){
           pcie_ptr->rw_bar_num = i;
           break;
        }
    }

    // Or set manually for testing purposes ...
#ifdef CONST_PCIE_DRIVER_DEBUG
    pcie_ptr->rw_bar_num = 4;
#endif
    // release sempahore
    up(&pcie_ptr->sem);

    return 0;
}

// Close character device
static int intel_altera_pcie_release(struct inode *inode, struct file *filp){

   return 0;
}

// Defined operation on device driver
struct file_operations intel_altera_pcie_fops = {
    .owner          = THIS_MODULE,
    .read           = intel_altera_pcie_read,
    .write          = intel_altera_pcie_write,
    .open           = intel_altera_pcie_open,
    .release        = intel_altera_pcie_release,
    .unlocked_ioctl = intel_altera_pcie_ioctl,
    .llseek         = intel_altera_pcie_llseek
    // .mmap        = intel_altera_pcie_mmap,
};

// Initialize character device driver
static int  init_chrdev(struct intel_altera_fpga_pcie_storage *pcie_ptr){

    int ret = 0;
    int dev_minor = device_minor_count;

    if (device_major == 0) {
        // Register a range of char device numbers - the major number will be chosen dynamically
        ret = alloc_chrdev_region(&pcie_ptr->cdevno, 0, 1, INTEL_ALTERA_PCIE_DEVFILE);
        device_major = MAJOR(pcie_ptr->cdevno);
    } else {
        // Register character device - if device_major != 0
        pcie_ptr->cdevno = MKDEV(device_major, dev_minor);
        ret = register_chrdev_region(pcie_ptr->cdevno, 1, INTEL_ALTERA_PCIE_DEVFILE);
    }

    if (ret < 0){
        dev_err(&pcie_ptr->pci_dev->dev, "Cannot get major ID: %d", ret);
    }

    // Add & init character device
    cdev_init(&pcie_ptr->c_dev, &intel_altera_pcie_fops);
    pcie_ptr->c_dev.owner = THIS_MODULE;
    pcie_ptr->c_dev.ops = &intel_altera_pcie_fops;
    ret = cdev_add(&pcie_ptr->c_dev, pcie_ptr->cdevno, 1);

    if (ret){
        dev_err(&pcie_ptr->pci_dev->dev, "CDEV add error code: %d", ret);
        return -1;
    }

    device_minor_count++;

    return 0;
}

/* Scan_bars - PCI scan bars helper function */
static void scan_pci_bars(struct intel_altera_fpga_pcie_storage *pcie_ptr, struct pci_dev *dev){

    int i=0;

    for (i = 0; i < INTEL_ALTERA_PCIE_BAR_NUM_CNT; i++) {
         unsigned long bar_start = pci_resource_start(dev, i);  // Start pci resources
         unsigned long bar_end = pci_resource_end(dev, i);      // Stop pci resources
         unsigned long bar_flags = pci_resource_flags(dev, i);
         pcie_ptr->bar_length[i] = pci_resource_len(dev, i);
#ifdef CONST_PCIE_DRIVER_MESSAGE_DEBUG
         dev_info(&dev->dev, "PCIe BAR num: %d 0x%08lx-0x%08lx flags 0x%08lx, length %d", i, bar_start, bar_end, bar_flags, (int)pcie_ptr->bar_length[i]);
#endif
    }
}

/* Map bars - PCI map bars */
static int map_bars(struct intel_altera_fpga_pcie_storage *pcie_ptr, struct pci_dev *dev){

    int i=0;

    for (i = 0; i < INTEL_ALTERA_PCIE_BAR_NUM_CNT; i++) {

        unsigned long bar_start = pci_resource_start(dev, i);
        pcie_ptr->bar_length[i] = pci_resource_len(dev, i);
        if (pcie_ptr->bar_length[i] == 0) {
            pcie_ptr->bar[i] = NULL;
            continue;
        }

        pcie_ptr->bar[i] = ioremap(bar_start, pcie_ptr->bar_length[i]);

        if (!pcie_ptr->bar[i]) {
            dev_err(&dev->dev, "PCIe BAR num: %d cannot be mapped", i);
            return -1;
        } else {
#ifdef CONST_PCIE_DRIVER_MESSAGE_DEBUG
            dev_info(&dev->dev, "PCIe BAR num: %d, mapped to 0x%p, length %lu", i, pcie_ptr->bar[i], (long unsigned int)pcie_ptr->bar_length[i]);
#endif
            // Setting last bar as active one ...
            pcie_ptr->rw_bar_num = i;
        }
    }

    return 0;
}

/* Unmap bars - PCI unmap bars */
static void unmap_bars(struct intel_altera_fpga_pcie_storage *pcie_ptr, struct pci_dev *dev){

    int i=0;

    for (i = 0; i < INTEL_ALTERA_PCIE_BAR_NUM_CNT; i++) {
        if (pcie_ptr->bar[i]!=NULL){
            pci_iounmap(dev, pcie_ptr->bar[i]);
            pcie_ptr->bar[i] = NULL;
        }
    }
}

/* intel_altera_pcie_probe - PCIe probe function */
static int intel_altera_pcie_probe(struct pci_dev *dev, const struct pci_device_id *id){

    int ret = 0;

    struct intel_altera_fpga_pcie_storage *pcie_ptr = NULL;

    pcie_ptr = kzalloc(sizeof(struct intel_altera_fpga_pcie_storage), GFP_KERNEL);

    if (!pcie_ptr)
        goto err_pcie_ptr_alloc;

    // Set pointers & driver data
    pcie_ptr->user_task = current;
    pcie_ptr->pci_dev = dev;
    pci_set_drvdata(dev, pcie_ptr);

    // PCI enable device
    ret = pci_enable_device(dev);
    if (ret) {
        dev_err(&dev->dev, "pci_enable_device() call failed\n");
        goto err_pcie_enable;
    }

#ifdef CONST_PCIE_DRIVER_MESSAGE_DEBUG
    dev_info(&dev->dev, "pci_enable_device() call was successful");
#endif

    // PCI request regions
    ret = pci_request_regions(dev, INTEL_ALTERA_FPGA_PCIE_DRIVER_NAME);
    if (ret) {
       dev_err(&dev->dev, "pci_request_regions() failed\n");
       goto err_pcie_regions;
    }

    pci_set_master(dev);

    // PCI set master

    ret = pci_enable_msi(dev);
    if (ret) {
        dev_err(&dev->dev, "pci_enable_msi() failed\n");
        pcie_ptr->msi_enabled = 0;
    } else {
#ifdef CONST_PCIE_DRIVER_MESSAGE_DEBUG
        dev_info(&dev->dev, "pci_enable_msi() successful\n");
#endif
        pcie_ptr->msi_enabled = 1;
    }

#ifdef CONST_PCIE_DRIVER_MESSAGE_DEBUG
    pci_read_config_byte(dev, PCI_REVISION_ID, &pcie_ptr->revision);
    dev_info(&dev->dev, "PCIe revision id: %d",pcie_ptr->revision);
#endif

    // Scan PCI bars
    scan_pci_bars(pcie_ptr,dev);
    // Map PCI bars
    map_bars(pcie_ptr,dev);

    // Waitqueue for user process
    // init_waitqueue_head(&pcie_ptr->wait_q);

    /*
     * - sprintf() is unsafe because of buffer overflow. Using scnprintf instead
     * - sprintf(device_path, "%s%d", INTEL_ALTERA_PCIE_DEVFILE, MINOR(pcie_ptr->cdevno));
     */
    scnprintf(pcie_ptr->device_path, ALTERA_DEVICE_PATH_LEN, "intel_altera_pcie%d", MINOR(pcie_ptr->cdevno));

    // Init character device
    ret = init_chrdev(pcie_ptr);
    if(ret){
       dev_err(&dev->dev, "init_chrdev() call failed\n");
       goto err_init_chardev;
    }

    // Create class (udev) driver
    pcie_ptr->dev_class = class_create(THIS_MODULE, pcie_ptr->device_path);
    ret = IS_ERR(pcie_ptr->dev_class);

    if(ret){
       dev_err(&dev->dev, "dev_class create error\n");
       goto err_class;
    }

    // Create sysfs device
    pcie_ptr->device = device_create(pcie_ptr->dev_class, NULL, pcie_ptr->cdevno, NULL, pcie_ptr->device_path);

    ret = IS_ERR(pcie_ptr->device);

    if(ret){
       dev_err(&dev->dev, "device create error!\n");
       goto err_device;
    }

    // Initialize sempahore
    sema_init(&pcie_ptr->sem, 2);

    // Device initialized
    dev_info(&dev->dev, ": altera_pcie_probe() finished \n");

    return 0;

// Init error handling
err_device:
  dev_err(&dev->dev, "goto err_device");
  class_destroy(pcie_ptr->dev_class);
err_class:
  dev_err(&dev->dev, "goto err_class");
  unregister_chrdev_region(pcie_ptr->cdevno, 1);
  device_minor_count--;
err_init_chardev:
  dev_err(&dev->dev, "goto err_init_chardev");
err_pcie_regions:
  dev_err(&dev->dev, "goto err_pcie_regions");
  pci_disable_device(dev);
err_pcie_enable:
  dev_err(&dev->dev, "goto err_enable");
  kfree(pcie_ptr); pcie_ptr = NULL;
err_pcie_ptr_alloc:
  dev_err(&dev->dev, "goto err_pcie_ptr_alloc");
  // Return exit code
  return ret;
}

static void intel_altera_pcie_remove(struct pci_dev *dev){

    struct intel_altera_fpga_pcie_storage *pcie_ptr = pci_get_drvdata(dev);     // (struct intel_altera_fpga_pcie_storage *)

    unmap_bars(pcie_ptr, dev);

    if (pcie_ptr->msi_enabled) {
        pci_disable_msi(dev); pcie_ptr->msi_enabled = 0;
    }

    pci_release_regions(dev);
    pci_disable_device(dev);

    device_destroy(pcie_ptr->dev_class, pcie_ptr->cdevno);                      // device_unregister(pcie_ptr->device);
    class_destroy(pcie_ptr->dev_class);
    cdev_del(&pcie_ptr->c_dev);
    unregister_chrdev_region(pcie_ptr->cdevno, 1);
    device_minor_count--;

    kfree(pcie_ptr); pcie_ptr = NULL;

    dev_info(&dev->dev, ": altera_pcie_remove() finished \n");                  //  ,"__DATE__ " " __TIME__
}

static struct pci_device_id pci_ids[] = {
    { 0 },
    { 0 }
};

static struct pci_driver pcie_driver = {
    .name = INTEL_ALTERA_FPGA_PCIE_DRIVER_NAME,
    .id_table = pci_ids,
    .probe = intel_altera_pcie_probe,
    .remove = intel_altera_pcie_remove,
};

// PCIe driver init
static __init int intel_altera_fpga_pcie_init(void){

    int ret = 0;

    printk(KERN_DEBUG INTEL_ALTERA_FPGA_PCIE_DRIVER_NAME ": altera_pcie_init() entered\n");  // , " __DATE__ " " __TIME__ "

    pci_ids[0].vendor = vendor_id;
    pci_ids[0].device = device_id;
    pci_ids[0].subvendor = PCI_ANY_ID;
    pci_ids[0].subdevice = PCI_ANY_ID;

    ret = pci_register_driver(&pcie_driver);
    if (ret != 0){
        printk(KERN_ERR INTEL_ALTERA_FPGA_PCIE_DRIVER_NAME ": PCI driver registration failed\n");
    }

    return ret;
}

// PCIe driver deinit
static __exit void intel_altera_fpga_pcie_exit(void){

    pci_unregister_driver(&pcie_driver);

}

module_init(intel_altera_fpga_pcie_init);
module_exit(intel_altera_fpga_pcie_exit);

MODULE_AUTHOR("Pavel Fiala <pavelfpl@gmail.com>");
MODULE_DESCRIPTION("Intel FPGA Arria 10 PCIe driver without DMA");
MODULE_VERSION(INTEL_ALTERA_FPGA_PCIE_DRIVER_VERSION);
MODULE_LICENSE("Dual BSD/GPL");
MODULE_DEVICE_TABLE(pci, pci_ids);
