cmd_drivers/interrupt_controller/built-in.o :=  /home/tejas777/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/bin/i586-zephyr-elf/i586-zephyr-elf-ld -nostartfiles -nodefaultlibs -nostdlib -static   -r -o drivers/interrupt_controller/built-in.o drivers/interrupt_controller/i8259.o drivers/interrupt_controller/loapic_intr.o drivers/interrupt_controller/system_apic.o drivers/interrupt_controller/ioapic_intr.o 
