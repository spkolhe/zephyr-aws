cmd_drivers/timer/built-in.o :=  /home/tejas777/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/bin/i586-zephyr-elf/i586-zephyr-elf-ld -nostartfiles -nodefaultlibs -nostdlib -static   -r -o drivers/timer/built-in.o drivers/timer/hpet.o drivers/timer/sys_clock_init.o 