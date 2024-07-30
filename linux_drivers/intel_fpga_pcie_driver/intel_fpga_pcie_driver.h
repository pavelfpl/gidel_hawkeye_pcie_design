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

#ifndef INTEL_FPGA_PCIE_DRIVER_H
#define INTEL_FPGA_PCIE_DRIVER_H

#include <linux/cdev.h>
#include <linux/pci.h>
#include <linux/semaphore.h>

/* Include IOCTL header */
#include "intel_fpga_pcie_driver_ioctl.h"

/* Define PCIE driver version */
#define INTEL_ALTERA_FPGA_PCIE_DRIVER_VERSION "0.1"
/* Define PCIE driver name */
#define INTEL_ALTERA_FPGA_PCIE_DRIVER_NAME "intel_altera_pcie"
/* Define PCIE devfile name */
#define INTEL_ALTERA_PCIE_DEVFILE "intel_altera_pcie"
/* Define MAX number of bars of FPGA PCIE IP */
#define INTEL_ALTERA_PCIE_BAR_NUM_CNT 6
/* Define DEVICE ID */
#define ALTERA_PCIE_DID 0xE003
/* Define VENDOR ID */
#define ALTERA_PCIE_VID 0x1172
/* Define max device length */
#define ALTERA_DEVICE_PATH_LEN 100

/* PCIe driver structure */
struct intel_altera_fpga_pcie_storage {
    struct task_struct *user_task;
    struct pci_dev *pci_dev;
    struct class *dev_class;
    struct device *device;
    void * __iomem bar[INTEL_ALTERA_PCIE_BAR_NUM_CNT];
    size_t bar_length[INTEL_ALTERA_PCIE_BAR_NUM_CNT];
    u32 rw_bar_num;
    u8 revision;
    char msi_enabled;
    dev_t cdevno;
    int user_pid;
    struct cdev c_dev;
    struct semaphore sem;
    char device_path[ALTERA_DEVICE_PATH_LEN];

    // wait_queue_head_t wait_q;
    // atomic_t status;

};

#endif /* INTEL_FPGA_PCIE_DRIVER_H */
