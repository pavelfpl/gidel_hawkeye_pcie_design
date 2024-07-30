TARGET = intel_altera_pcie_test

CFLAGS = -static -g -Wall -std=c99 -std=gnu99
LDFLAGS =  -g -Wall  

CC = gcc 

all: $(TARGET)
$(TARGET): main.o
	$(CC) $(LDFLAGS)   $^ -o $@  
%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) *.a *.o *~
