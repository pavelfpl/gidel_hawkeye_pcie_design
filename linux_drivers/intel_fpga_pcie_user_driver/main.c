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

#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>

/*
 * ----------------
 * lspci -Qkxxxxnnv
 * ----------------
 * 01:00.0 Non-VGA unclassified device [0000]: Altera Corporation Device [1172:e003]
 *       Physical Slot: 4
 *       Flags: bus master, fast devsel, latency 0, IRQ 41, IOMMU group 33
 *       Memory at <unassigned> (64-bit, prefetchable)
 *       Memory at f3100000 (64-bit, prefetchable) [size=512K]
 *       Capabilities: <access denied>
 *       Kernel driver in use: intel_altera_pcie
 *       00: 72 11 03 e0 06 05 10 00 00 00 00 00 08 00 00 00
 *       10: 0c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 *       20: 0c 00 10 f3 00 00 00 00 00 00 00 00 00 00 00 00
 *       30: 00 00 00 00 50 00 00 00 00 00 00 00 0b 01 00 00
 **/

// ------------------------------------------------
// IOCLT include - intel_fpga_pcie_driver_ioctl ...
// ------------------------------------------------
#include "intel_fpga_pcie_driver_ioctl.h"

#define CONST_RW_BUFFER_SIZE (16*32768)
#define CONST_PRINT_ITEMS 256

int main(void){

  int fd_0 = 0;
  int match = 1;

  unsigned char buffer_write[CONST_RW_BUFFER_SIZE];
  unsigned char buffer_read[CONST_RW_BUFFER_SIZE];
  struct intel_altera_ioctl_arg ioctl_arg = {0};

  // Initialize write & read bufffer for test / simple pattern /
  for(int i=0;i<CONST_RW_BUFFER_SIZE;i++){
      buffer_write[i] = (i % 256);
      buffer_read[i] = 0;
      //printf("%x\n",buffer_write[i]);
  }

  /*
  printf("%d\n", *(unsigned int *)(buffer_write+1));
  printf("%d\n", ((unsigned int *)buffer_write)[2]);
  */

  // Open /dev/altera_msgdma_rd0 / O_RDWR ...
  if((fd_0 = open("/dev/intel_altera_pcie0",O_RDWR)) == -1){
      printf("ERROR: could not open \"/dev/intel_altera_pcie0\"...\n");
      close(fd_0);
      return(1);
  }

  // Test IOCTL cmd
  ioctl_arg.bar_num = 4;
  // Set active IOBAR
  ioctl(fd_0,INTEL_ALTERA_SET_BAR_IOCTL,&ioctl_arg);
  // Read driver conf word: lspci -Qkxxxxnnv and print
  ioctl_arg.read_conf_offset = 0; ioctl_arg.read_conf_data = 0; ioctl_arg.bar_max_length = 0;
  ioctl(fd_0,INTEL_ALTERA_READ_CONF_WORD_IOCTL,&ioctl_arg);
  printf("PCI conf dword at offset: %d, 0x%x\n",ioctl_arg.read_conf_offset, ioctl_arg.read_conf_data);
  ioctl(fd_0,INTEL_ALTERA_BAR_MAX_SIZE_IOCTL,&ioctl_arg);
  printf("Selected PCI BAR length: %ld\n",ioctl_arg.bar_max_length);

  if(ioctl_arg.bar_max_length < CONST_RW_BUFFER_SIZE){
     printf("Buffer size size overlaps BAR size - exit ...\n");
     close(fd_0);
     return(1);
  }

  // Write buffer
  if(write(fd_0,buffer_write,CONST_RW_BUFFER_SIZE)!=CONST_RW_BUFFER_SIZE){
      printf("ERROR: write buffer ...\n");
      close(fd_0);
      return(1);
  }

  // Seek back
  int ret = lseek(fd_0, -CONST_RW_BUFFER_SIZE, SEEK_CUR);
  printf("Seek back: %d\n",ret);
  // Read driver conf word: lspci -Qkxxxxnnv


  // Read buffer
  if(read(fd_0,buffer_read,CONST_RW_BUFFER_SIZE)!=CONST_RW_BUFFER_SIZE){
      printf("ERROR: read buffer ...\n");
      close(fd_0);
      return(1);
  }

  // Print buffer - first 256 ...
  for(int i=0;i<CONST_PRINT_ITEMS;i++){
      printf("Item: %d, 0x%x\n",i, buffer_read[i]);
  }

  // Print buffer - last 256 ...
  for(int i=CONST_RW_BUFFER_SIZE-CONST_PRINT_ITEMS;i<CONST_RW_BUFFER_SIZE;i++){
      printf("Item: %d, 0x%x\n",i, buffer_read[i]);
  }

  // Compare result
  for(int i=0;i<CONST_RW_BUFFER_SIZE;i++){
      if(buffer_read[i]!=buffer_write[i]){
         printf("Item %d does not match [read: 0x%x, write: 0x%x]\n",i, buffer_read[i], buffer_write[i]);
         match = 0;
     }
  }

  // Check result ...
  if(match){
    printf("-- Result: all items are matching - PASSEED --\n");
  }else{
    printf("-- Result: read / write test - FAILED--\n");
  }

  // Close descriptor
  close(fd_0);

  return(0);
}
