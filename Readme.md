# FPGA design and Linux PCIe driver for Gidel HawkEye 20G board

This repository contains basic PCIe design and Linux drivers for **Gidel HawkEye 20G** acceleration FPGA card. These refubished cards can be sometimes find on Ebay 
for reasonable price (~ 100 USD). Gidel does not provide any source codes neither pin layout of the board for public usage (for free). Only short datasheet is available.
There are a few models, FPGA Arria 10 GX with transceivers: -16 (160k LE), -48 (480k LE), I have obtained second one. Quite powerful HW for reasonable price. 
This card is primary intended for use as algorithm accelerator or 10GB+ SFFP transceiver. FPGA board has undocummented 3x16 pin connectors, but the assignment and logic level
is not known (needs to be investigated). JTAG connector is available to connect standard Altera USB Blaster.

What you can learn/evaluate on this board:
- PCIe, 10GB+ SFFP ethernet (transceivers)
- DDR4 Arria 10 interface
- DSP algorithm and more ...

**Tip:** FPGA card has only passive cooler on the main chip, attaching active fan cooler is highly recommended. I have measured almost ~ 70 - 80°C on passive cooler surface.

## A bit of information can be found here: 

Manufacturer: [https://gidel.com/product/hawkeye-arria-10-fpga-computation-accelerators/](https://gidel.com/product/hawkeye-arria-10-fpga-computation-accelerators/)

Short teardown: [https://github.com/connorwk/Recycled-FPGAs/wiki/Gidel-HawkEye-20G-Models](https://github.com/connorwk/Recycled-FPGAs/wiki/Gidel-HawkEye-20G-Models) 

Discussion 1: [https://www.reddit.com/r/FPGA/comments/s98k9b/yet_another_fpga_board_on_ebay_with_no/](https://www.reddit.com/r/FPGA/comments/s98k9b/yet_another_fpga_board_on_ebay_with_no/)

Discussion 2: [https://www.reddit.com/r/FPGA/comments/1e2sc7r/resources_for_gidel_boards/](https://www.reddit.com/r/FPGA/comments/1e2sc7r/resources_for_gidel_boards/)

## FPGA design:
FPGA design connects Intel Arria 10 PCIe hard core to the standard On-Chip memory (configured as RAM) in the Platform designer (QSYS).

![Platform designer](https://github.com/pavelfpl/gidel_hawkeye_pcie_design/blob/main/arria10-qsys-platform-designer.png)

FPGA PCIe transceiver pin allocation was found experimentally based on FPGA board layout reverse engineering. Exact PCIe ref clock pin assignment was found in several iteration
of the FPGA design. Pin planner layout: 

![Pin planner](https://github.com/pavelfpl/gidel_hawkeye_pcie_design/blob/main/arria10-pin-planner.png)

**Valid pin assignment matrix:**

![Pin matrix](https://github.com/pavelfpl/gidel_hawkeye_pcie_design/blob/main/arria10-pin-planner-2.png)

FPGA sof programming procedure:

![FPGA programming](https://github.com/pavelfpl/gidel_hawkeye_pcie_design/blob/main/arria10-sof-programming.png)

## Linux driver

Linux PCIe driver is delivered with user space driver for evaluation purposes. Driver is working in Memory-mapped mode without DMA, but DMA mode support is planned. DMA is supported
in Intel Arria 10 PCIe hard core.

- Linux kernel driver (tested with Linux 6.1): [Kernel driver](linux_drivers/intel_fpga_pcie_driver)
- User space driver for evaluation: [User space driver](linux_drivers/intel_fpga_pcie_user_driver)

### System prerequsities (Debian Linux):
- `sudo apt install build-essential`  (meta-package named build-essential that contains the GCC compiler and other libraries and utilities required for compiling software)
- `sudo apt install linux-headers-$(uname -r)`  (Install Linux kernel headers)
  
Commpilation is very easy, just issue: `make` and should produce similar output:  

```
make -C /lib/modules/6.1.0-0.deb11.21-amd64/build  "-Wno-error=date-time" M=/home/pavelf/gidel_hawkeye_design/linux_drivers/intel_fpga_pcie_driver  modules
make[1]: Vstupuje se do adresáře „/usr/src/linux-headers-6.1.0-0.deb11.21-amd64“
  CC [M]  /home/pavelf/gidel_hawkeye_design/linux_drivers/intel_fpga_pcie_driver/intel_fpga_pcie_driver.o
  MODPOST /home/pavelf/gidel_hawkeye_design/linux_drivers/intel_fpga_pcie_driver/Module.symvers
  CC [M]  /home/pavelf/gidel_hawkeye_design/linux_drivers/intel_fpga_pcie_driver/intel_fpga_pcie_driver.mod.o
  LD [M]  /home/pavelf/gidel_hawkeye_design/linux_drivers/intel_fpga_pcie_driver/intel_fpga_pcie_driver.ko
  BTF [M] /home/pavelf/gidel_hawkeye_design/linux_drivers/intel_fpga_pcie_driver/intel_fpga_pcie_driver.ko
Skipping BTF generation for /home/pavelf/gidel_hawkeye_design/linux_drivers/intel_fpga_pcie_driver/intel_fpga_pcie_driver.ko due to unavailability of vmlin
make[1]: Opouští se adresář „/usr/src/linux-headers-6.1.0-0.deb11.21-amd64“
```

Module called: `intel_fpga_pcie_driver.ko` can be loaded with:  
`sudo insmod intel_fpga_pcie_driver.ko`  
and unloaded by:  
`sudo rmmod intel_fpga_pcie_driver.ko`  

After FPGA programming Linux shoudl see following PCIe device:  

```
----------------
lspci -Qkxxxxnnv
----------------
01:00.0 Non-VGA unclassified device [0000]: Altera Corporation Device [1172:e003]
    Physical Slot: 4
    Flags: bus master, fast devsel, latency 0, IRQ 41, IOMMU group 33
    Memory at <unassigned> (64-bit, prefetchable)
    Memory at f3100000 (64-bit, prefetchable) [size=512K]
    Capabilities: <access denied>
    Kernel driver in use: intel_altera_pcie
    00: 72 11 03 e0 06 05 10 00 00 00 00 00 08 00 00 00
    10: 0c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    20: 0c 00 10 f3 00 00 00 00 00 00 00 00 00 00 00 00
    30: 00 00 00 00 50 00 00 00 00 00 00 00 0b 01 00 00
```

User space test utility generates simple test data pattern. This pattern will be stored in the On-Chip FPGA RAM memory and read back for comparison purposes:  
After `make` just issue this command: `sudo ./intel_altera_pcie_test` 





