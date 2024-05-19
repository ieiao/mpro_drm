obj-m += mpro.o

# Default to running kernel's build directory if KDIR not set externally
KDIR ?= "/lib/modules/$(shell uname -r)/build"

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

install:
	$(MAKE) -C "$(KDIR)" M="$(CURDIR)" modules_install
	depmod -A

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
