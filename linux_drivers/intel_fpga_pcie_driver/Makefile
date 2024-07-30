obj-m := intel_fpga_pcie_driver.o

KERNEL_SRC_DIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
# Threat "__DATE__ and __TIME__ might prevent reproducible builds" as warnings instead of errors
ccflags-y += "-Wno-error=date-time"
all:
	make -C $(KERNEL_SRC_DIR) $(CFLAGS) $(ccflags-y) M=$(PWD)  modules
clean:
	make -C $(KERNEL_SRC_DIR) $(CFLAGS) $(ccflags-y) M=$(PWD)  clean
