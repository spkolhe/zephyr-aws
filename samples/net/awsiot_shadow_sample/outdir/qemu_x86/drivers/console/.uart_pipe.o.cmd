cmd_drivers/console/uart_pipe.o := /home/shubham/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/bin/i586-zephyr-elf/i586-zephyr-elf-gcc -Wp,-MD,drivers/console/.uart_pipe.o.d  -nostdinc -isystem /home/shubham/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/lib/i586-zephyr-elf/gcc/i586-zephyr-elf/6.2.0/include -isystem /home/shubham/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/lib/i586-zephyr-elf/gcc/i586-zephyr-elf/6.2.0/include-fixed -I/home/shubham/zephyr-zephyr/kernel/include -I/home/shubham/zephyr-zephyr/arch/x86/include -I/home/shubham/zephyr-zephyr/arch/x86/soc/ia32 -I/home/shubham/zephyr-zephyr/boards/x86/qemu_x86  -I/home/shubham/zephyr-zephyr/include -I/home/shubham/zephyr-zephyr/include -I/home/shubham/zephyr-zephyr/samples/net/awsiot_shadow_sample/outdir/qemu_x86/include/generated -include /home/shubham/zephyr-zephyr/samples/net/awsiot_shadow_sample/outdir/qemu_x86/include/generated/autoconf.h  -I/home/shubham/zephyr-zephyr/ext/lib/crypto/mbedtls/include -I/home/shubham/zephyr-zephyr/ext/lib/crypto/mbedtls/configs -I/home/shubham/zephyr-zephyr/ext/lib/awsiot/include -I/home/shubham/zephyr-zephyr/lib/libc/minimal/include  -I/home/shubham/zephyr-zephyr/drivers/console -Idrivers/console -DKERNEL -D__ZEPHYR__=1 -c -g -std=c99 -Wall -Wformat -Wformat-security -D_FORTIFY_SOURCE=2 -Wno-format-zero-length -Wno-main -ffreestanding -Os -fno-asynchronous-unwind-tables -fno-pie -fno-pic -fno-stack-protector -ffunction-sections -fdata-sections -mpreferred-stack-boundary=2 -mno-sse -march=pentium -Wno-unused-but-set-variable -fno-reorder-functions -fno-defer-pop -Wno-pointer-sign -fno-strict-overflow -Werror=implicit-int   -I/home/shubham/zephyr-zephyr/include/drivers    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(uart_pipe)"  -D"KBUILD_MODNAME=KBUILD_STR(uart_pipe)" -c -o drivers/console/uart_pipe.o /home/shubham/zephyr-zephyr/drivers/console/uart_pipe.c

source_drivers/console/uart_pipe.o := /home/shubham/zephyr-zephyr/drivers/console/uart_pipe.c

deps_drivers/console/uart_pipe.o := \
    $(wildcard include/config/uart/pipe/on/dev/name.h) \
  /home/shubham/zephyr-zephyr/include/kernel.h \
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
  /home/shubham/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/lib/i586-zephyr-elf/gcc/i586-zephyr-elf/6.2.0/include/stddef.h \
  /home/shubham/zephyr-zephyr/include/zephyr/types.h \
  /home/shubham/zephyr-zephyr/lib/libc/minimal/include/stdint.h \
  /home/shubham/zephyr-zephyr/lib/libc/minimal/include/limits.h \
  /home/shubham/zephyr-zephyr/include/toolchain.h \
  /home/shubham/zephyr-zephyr/include/toolchain/gcc.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/application/memory.h) \
    $(wildcard include/config/isa/thumb.h) \
    $(wildcard include/config/isa/thumb2.h) \
    $(wildcard include/config/isa/arm.h) \
    $(wildcard include/config/nios2.h) \
    $(wildcard include/config/riscv32.h) \
    $(wildcard include/config/xtensa.h) \
    $(wildcard include/config/arc.h) \
  /home/shubham/zephyr-zephyr/include/toolchain/common.h \
  /home/shubham/zephyr-zephyr/include/linker/sections.h \
  /home/shubham/zephyr-zephyr/include/linker/section_tags.h \
  /home/shubham/zephyr-zephyr/include/atomic.h \
    $(wildcard include/config/atomic/operations/builtin.h) \
  /home/shubham/zephyr-zephyr/lib/libc/minimal/include/errno.h \
  /home/shubham/zephyr-zephyr/include/misc/__assert.h \
    $(wildcard include/config/assert.h) \
    $(wildcard include/config/assert/level.h) \
  /home/shubham/zephyr-zephyr/include/misc/dlist.h \
  /home/shubham/zephyr-zephyr/include/misc/slist.h \
  /home/shubham/zephyr-zephyr/lib/libc/minimal/include/stdbool.h \
  /home/shubham/zephyr-zephyr/include/misc/util.h \
    $(wildcard include/config/myfeature.h) \
  /home/shubham/zephyr-zephyr/include/kernel_version.h \
  /home/shubham/zephyr-zephyr/include/drivers/rand32.h \
  /home/shubham/zephyr-zephyr/arch/x86/include/kernel_arch_thread.h \
    $(wildcard include/config/gdb/info.h) \
  /home/shubham/zephyr-zephyr/include/sys_clock.h \
    $(wildcard include/config/sys/clock/hw/cycles/per/sec.h) \
    $(wildcard include/config/tickless/kernel/time/unit/in/micro/secs.h) \
    $(wildcard include/config/sys/clock/ticks/per/sec.h) \
    $(wildcard include/config/timer/reads/its/frequency/at/runtime.h) \
  /home/shubham/zephyr-zephyr/include/arch/cpu.h \
  /home/shubham/zephyr-zephyr/include/arch/x86/arch.h \
    $(wildcard include/config/int/latency/benchmark.h) \
    $(wildcard include/config/x86/fixed/irq/mapping.h) \
    $(wildcard include/config/sys/power/management.h) \
    $(wildcard include/config/debug/info.h) \
    $(wildcard include/config/x86/stack/protection.h) \
    $(wildcard include/config/x86/kernel/oops.h) \
    $(wildcard include/config/x86/kernel/oops/vector.h) \
    $(wildcard include/config/x86/mmu.h) \
  /home/shubham/zephyr-zephyr/include/irq.h \
  /home/shubham/zephyr-zephyr/include/arch/x86/irq_controller.h \
    $(wildcard include/config/mvic.h) \
  /home/shubham/zephyr-zephyr/include/drivers/sysapic.h \
    $(wildcard include/config/ioapic/num/rtes.h) \
    $(wildcard include/config/eoi/forwarding/bug.h) \
    $(wildcard include/config/loapic/base/address.h) \
  /home/shubham/zephyr-zephyr/include/drivers/ioapic.h \
  /home/shubham/zephyr-zephyr/include/drivers/loapic.h \
  /home/shubham/zephyr-zephyr/include/device.h \
    $(wildcard include/config/kernel/init/priority/default.h) \
    $(wildcard include/config/device/power/management.h) \
  /home/shubham/zephyr-zephyr/samples/net/awsiot_shadow_sample/outdir/qemu_x86/include/generated/generated_dts_board.h \
  /home/shubham/zephyr-zephyr/arch/x86/include/mmustructs.h \
  /home/shubham/zephyr-zephyr/include/arch/x86/asm_inline.h \
  /home/shubham/zephyr-zephyr/include/arch/x86/asm_inline_gcc.h \
    $(wildcard include/config/cmov.h) \
  /home/shubham/zephyr-zephyr/include/sys_io.h \
  /home/shubham/zephyr-zephyr/include/arch/x86/addr_types.h \
  /home/shubham/zephyr-zephyr/boards/x86/qemu_x86/board.h \
  /home/shubham/zephyr-zephyr/arch/x86/soc/ia32/soc.h \
    $(wildcard include/config/ioapic.h) \
  /home/shubham/zephyr-zephyr/include/uart.h \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/uart/interrupt/driven.h) \
    $(wildcard include/config/uart/line/ctrl.h) \
    $(wildcard include/config/uart/drv/cmd.h) \
  /home/shubham/zephyr-zephyr/include/drivers/console/uart_pipe.h \
  /home/shubham/zephyr-zephyr/lib/libc/minimal/include/stdlib.h \
  /home/shubham/zephyr-zephyr/include/misc/printk.h \
  /home/shubham/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/lib/i586-zephyr-elf/gcc/i586-zephyr-elf/6.2.0/include/stdarg.h \
  /home/shubham/zephyr-zephyr/lib/libc/minimal/include/inttypes.h \

drivers/console/uart_pipe.o: $(deps_drivers/console/uart_pipe.o)

$(deps_drivers/console/uart_pipe.o):
