cmd_drivers/serial/uart_ns16550.o := /home/tejas777/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/bin/i586-zephyr-elf/i586-zephyr-elf-gcc -Wp,-MD,drivers/serial/.uart_ns16550.o.d  -nostdinc -isystem /home/tejas777/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/lib/i586-zephyr-elf/gcc/i586-zephyr-elf/6.2.0/include -isystem /home/tejas777/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/lib/i586-zephyr-elf/gcc/i586-zephyr-elf/6.2.0/include-fixed -I/home/tejas777/zephyr-zephyr-aws-1.9.2/kernel/include -I/home/tejas777/zephyr-zephyr-aws-1.9.2/arch/x86/include -I/home/tejas777/zephyr-zephyr-aws-1.9.2/arch/x86/soc/ia32 -I/home/tejas777/zephyr-zephyr-aws-1.9.2/boards/x86/qemu_x86  -I/home/tejas777/zephyr-zephyr-aws-1.9.2/include -I/home/tejas777/zephyr-zephyr-aws-1.9.2/include -I/home/tejas777/zephyr-zephyr-aws-1.9.2/samples/application_development/external_lib/outdir/qemu_x86/include/generated -include /home/tejas777/zephyr-zephyr-aws-1.9.2/samples/application_development/external_lib/outdir/qemu_x86/include/generated/autoconf.h  -I/home/tejas777/zephyr-zephyr-aws-1.9.2/lib/libc/minimal/include  -I/home/tejas777/zephyr-zephyr-aws-1.9.2/drivers/serial -Idrivers/serial -DKERNEL -D__ZEPHYR__=1 -c -g -std=c99 -Wall -Wformat -Wformat-security -D_FORTIFY_SOURCE=2 -Wno-format-zero-length -Wno-main -ffreestanding -Os -fno-asynchronous-unwind-tables -fno-pie -fno-pic -fno-stack-protector -ffunction-sections -fdata-sections -mpreferred-stack-boundary=2 -mno-sse -march=pentium -Wno-unused-but-set-variable -fno-reorder-functions -fno-defer-pop -Wno-pointer-sign -fno-strict-overflow -Werror=implicit-int   -I/home/tejas777/zephyr-zephyr-aws-1.9.2/include/drivers   -I/home/tejas777/zephyr-zephyr-aws-1.9.2/drivers    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(uart_ns16550)"  -D"KBUILD_MODNAME=KBUILD_STR(uart_ns16550)" -c -o drivers/serial/uart_ns16550.o /home/tejas777/zephyr-zephyr-aws-1.9.2/drivers/serial/uart_ns16550.c

source_drivers/serial/uart_ns16550.o := /home/tejas777/zephyr-zephyr-aws-1.9.2/drivers/serial/uart_ns16550.c

deps_drivers/serial/uart_ns16550.o := \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/uart/interrupt/driven.h) \
    $(wildcard include/config/uart/ns16550/dlf.h) \
    $(wildcard include/config/uart/ns16550/pci.h) \
    $(wildcard include/config/pci/enumeration.h) \
    $(wildcard include/config/uart/ns16750.h) \
    $(wildcard include/config/uart/ns16550/line/ctrl.h) \
    $(wildcard include/config/uart/ns16550/drv/cmd.h) \
    $(wildcard include/config/uart/ns16550/port/0.h) \
    $(wildcard include/config/uart/ns16550/port/0/pci.h) \
    $(wildcard include/config/uart/ns16550/port/0/baud/rate.h) \
    $(wildcard include/config/uart/ns16550/port/0/options.h) \
    $(wildcard include/config/uart/ns16550/port/0/dlf.h) \
    $(wildcard include/config/uart/ns16550/port/0/name.h) \
    $(wildcard include/config/kernel/init/priority/device.h) \
    $(wildcard include/config/uart/ns16550/port/0/irq/pri.h) \
    $(wildcard include/config/uart/ns16550/port/1.h) \
    $(wildcard include/config/uart/ns16550/port/1/pci.h) \
    $(wildcard include/config/uart/ns16550/port/1/baud/rate.h) \
    $(wildcard include/config/uart/ns16550/port/1/options.h) \
    $(wildcard include/config/uart/ns16550/port/1/dlf.h) \
    $(wildcard include/config/uart/ns16550/port/1/name.h) \
    $(wildcard include/config/uart/ns16550/port/1/irq/pri.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/lib/libc/minimal/include/errno.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/kernel.h \
    $(wildcard include/config/kernel/debug.h) \
    $(wildcard include/config/coop/enabled.h) \
    $(wildcard include/config/preempt/enabled.h) \
    $(wildcard include/config/num/coop/priorities.h) \
    $(wildcard include/config/num/preempt/priorities.h) \
    $(wildcard include/config/object/tracing.h) \
    $(wildcard include/config/poll.h) \
    $(wildcard include/config/thread/monitor.h) \
    $(wildcard include/config/sys/clock/exists.h) \
    $(wildcard include/config/thread/stack/info.h) \
    $(wildcard include/config/thread/custom/data.h) \
    $(wildcard include/config/errno.h) \
    $(wildcard include/config/main/stack/size.h) \
    $(wildcard include/config/idle/stack/size.h) \
    $(wildcard include/config/isr/stack/size.h) \
    $(wildcard include/config/system/workqueue/stack/size.h) \
    $(wildcard include/config/init/stacks.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/fp/sharing.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/sse.h) \
    $(wildcard include/config/tickless/kernel.h) \
    $(wildcard include/config/num/mbox/async/msgs.h) \
    $(wildcard include/config/multithreading.h) \
    $(wildcard include/config/cplusplus.h) \
  /home/tejas777/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/lib/i586-zephyr-elf/gcc/i586-zephyr-elf/6.2.0/include/stddef.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/zephyr/types.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/lib/libc/minimal/include/stdint.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/lib/libc/minimal/include/limits.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/toolchain.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/toolchain/gcc.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/application/memory.h) \
    $(wildcard include/config/isa/thumb.h) \
    $(wildcard include/config/isa/thumb2.h) \
    $(wildcard include/config/isa/arm.h) \
    $(wildcard include/config/nios2.h) \
    $(wildcard include/config/riscv32.h) \
    $(wildcard include/config/xtensa.h) \
    $(wildcard include/config/arc.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/toolchain/common.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/linker/sections.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/linker/section_tags.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/atomic.h \
    $(wildcard include/config/atomic/operations/builtin.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/misc/__assert.h \
    $(wildcard include/config/assert.h) \
    $(wildcard include/config/assert/level.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/misc/dlist.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/misc/slist.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/lib/libc/minimal/include/stdbool.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/misc/util.h \
    $(wildcard include/config/myfeature.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/kernel_version.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/drivers/rand32.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/arch/x86/include/kernel_arch_thread.h \
    $(wildcard include/config/gdb/info.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/sys_clock.h \
    $(wildcard include/config/sys/clock/hw/cycles/per/sec.h) \
    $(wildcard include/config/tickless/kernel/time/unit/in/micro/secs.h) \
    $(wildcard include/config/sys/clock/ticks/per/sec.h) \
    $(wildcard include/config/timer/reads/its/frequency/at/runtime.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/arch/cpu.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/arch/x86/arch.h \
    $(wildcard include/config/int/latency/benchmark.h) \
    $(wildcard include/config/x86/fixed/irq/mapping.h) \
    $(wildcard include/config/sys/power/management.h) \
    $(wildcard include/config/debug/info.h) \
    $(wildcard include/config/x86/stack/protection.h) \
    $(wildcard include/config/x86/kernel/oops.h) \
    $(wildcard include/config/x86/kernel/oops/vector.h) \
    $(wildcard include/config/x86/mmu.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/irq.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/arch/x86/irq_controller.h \
    $(wildcard include/config/mvic.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/drivers/sysapic.h \
    $(wildcard include/config/ioapic/num/rtes.h) \
    $(wildcard include/config/eoi/forwarding/bug.h) \
    $(wildcard include/config/loapic/base/address.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/drivers/ioapic.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/drivers/loapic.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/device.h \
    $(wildcard include/config/kernel/init/priority/default.h) \
    $(wildcard include/config/device/power/management.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/samples/application_development/external_lib/outdir/qemu_x86/include/generated/generated_dts_board.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/arch/x86/include/mmustructs.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/arch/x86/asm_inline.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/arch/x86/asm_inline_gcc.h \
    $(wildcard include/config/cmov.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/sys_io.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/arch/x86/addr_types.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/boards/x86/qemu_x86/board.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/arch/x86/soc/ia32/soc.h \
    $(wildcard include/config/ioapic.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/init.h \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/include/uart.h \
    $(wildcard include/config/uart/line/ctrl.h) \
    $(wildcard include/config/uart/drv/cmd.h) \
  /home/tejas777/zephyr-zephyr-aws-1.9.2/drivers/serial/uart_ns16550.h \

drivers/serial/uart_ns16550.o: $(deps_drivers/serial/uart_ns16550.o)

$(deps_drivers/serial/uart_ns16550.o):