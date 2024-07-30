#ifndef INTEL_FPGA_PCIE_DRIVER_IOCTL_H
#define INTEL_FPGA_PCIE_DRIVER_IOCTL_H

#ifdef __KERNEL__
  #include <linux/ioctl.h>
#else
  #include <sys/ioctl.h>
#endif

#define INTEL_ALTERA_IOC_MAGIC        0xED
#define INTEL_ALTERA_SET_BAR          0x01
#define INTEL_ALTERA_READ_CONF_WORD   0x02
#define INTEL_ALTERA_BAR_MAX_SIZE     0x03

#define INTEL_ALTERA_SET_BAR_IOCTL          _IOW(INTEL_ALTERA_IOC_MAGIC, INTEL_ALTERA_SET_BAR, struct intel_altera_ioctl_arg)
#define INTEL_ALTERA_READ_CONF_WORD_IOCTL   _IOR(INTEL_ALTERA_IOC_MAGIC, INTEL_ALTERA_READ_CONF_WORD, struct intel_altera_ioctl_arg)
#define INTEL_ALTERA_BAR_MAX_SIZE_IOCTL     _IOR(INTEL_ALTERA_IOC_MAGIC, INTEL_ALTERA_BAR_MAX_SIZE, struct intel_altera_ioctl_arg)

// intel_altera_ioctl_arg structure
struct intel_altera_ioctl_arg{
    unsigned int bar_num;
    unsigned int read_conf_offset;
    unsigned int read_conf_data;
    size_t bar_max_length;
};

#endif
