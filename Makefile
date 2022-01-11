#
# Makefile for the virtual touchscreen driver.
#

KERNEL_SRC ?= /lib/modules/`uname -r`/build

obj-m := virtual_touchscreen.o

SRC := $(shell pwd)

default:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

clean:
	rm -f *.o *.cmd *.mod.c .*.o* .*.ko* *~ *.ko Module.markers modules.order Module.symvers 
	rm -rf .tmp_versions/
