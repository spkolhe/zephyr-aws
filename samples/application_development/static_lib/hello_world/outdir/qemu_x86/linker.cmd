MEMORY
    {
    RAM (wx) : ORIGIN = 0x00100000, LENGTH = 192*1K
    IDT_LIST : ORIGIN = 0xFFFF1000, LENGTH = 2K
    MMU_LIST : ORIGIN = 0xFFFF2000, LENGTH = 1K
    }
  OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
  OUTPUT_ARCH(i386)
SECTIONS
 {

 _image_rom_start = 0x00100000;
 _image_text_start = 0x00100000;
 text () :
 {
 . = 0x0;
 *(.text_start)
 *(".text_start.*")
 *(.text)
 *(".text.*")
 *(.gnu.linkonce.t.*)
 *(.eh_frame)
 *(.init)
 *(.fini)
 *(.eini)
 KEEP(*(.openocd_dbg))
 KEEP(*(".openocd_dbg.*"))
 } > RAM
 _image_text_end = .;
 _image_rodata_start = .;
 devconfig () :
 {
  __devconfig_start = .;
  *(".devconfig.*")
  KEEP(*(SORT(".devconfig*")))
  __devconfig_end = .;
 } > RAM
 net_l2 () :
 {
  __net_l2_start = .;
  *(".net_l2.init")
  KEEP(*(SORT(".net_l2.init*")))
  __net_l2_end = .;
 } > RAM
 rodata () :
 {
 *(.rodata)
 *(".rodata.*")
 *(.gnu.linkonce.r.*)
 . = ALIGN(8);
 _idt_base_address = .;
 . += 256 * 8;
 . = ALIGN(4);
 _irq_to_interrupt_vector = .;
 . += 128;
 } > RAM
 _image_rodata_end = .;
 . = ALIGN(((4) << 10));
 _image_rom_end = .;
 _image_rom_size = _image_rom_end - _image_rom_start;


 app_datas () :
 {
  _image_ram_start = .;
  __app_ram_start = .;
  __app_data_ram_start = .;
  *(EXCLUDE_FILE (*libzephyr.a *kernel/lib.a) .data)
  *(EXCLUDE_FILE (*libzephyr.a *kernel/lib.a) ".data.*")
  __app_data_ram_end = .;
 } > RAM
 __app_data_rom_start = LOADADDR(app_datas);
 app_bss (NOLOAD ) :
 {
  __app_bss_start = .;
  *(EXCLUDE_FILE (*libzephyr.a *kernel/lib.a) .bss)
  *(EXCLUDE_FILE (*libzephyr.a *kernel/lib.a) ".bss.*")
  *(EXCLUDE_FILE (*libzephyr.a *kernel/lib.a) COMMON)
  __app_bss_end = .;
 } > RAM
 __app_bss_num_words = (__app_bss_end - __app_bss_start) >> 2;
 app_noinit (NOLOAD ) :
 {
  *(EXCLUDE_FILE (*libzephyr.a *kernel/lib.a) .noinit)
  *(EXCLUDE_FILE (*libzephyr.a *kernel/lib.a) ".noinit.*")
  . = ALIGN(((4) << 10));
 } > RAM
 __app_ram_end = .;
 __app_ram_size = __app_ram_end - __app_ram_start;
 datas () :
 {
 __kernel_ram_start = .;
 __data_ram_start = .;
 libzephyr.a (.data) kernel/lib.a (.data)
 libzephyr.a (".data.*") kernel/lib.a (".data.*")
 *(".kernel.*")
 KEEP(*(.tss))
 . = ALIGN(8);
 _gdt = .;
 . += 5 * 8;
 . = ALIGN(((4) << 10));
 __mmu_tables_start = .;
 KEEP(*(.mmu_data));
 __mmu_tables_end = .;
 . = ALIGN(4);
 } > RAM
 __data_rom_start = LOADADDR(datas);
 initlevel () :
 {
  __device_init_start = .; __device_PRE_KERNEL_1_start = .; KEEP(*(SORT(.init_PRE_KERNEL_1[0-9]))); KEEP(*(SORT(.init_PRE_KERNEL_1[1-9][0-9]))); __device_PRE_KERNEL_2_start = .; KEEP(*(SORT(.init_PRE_KERNEL_2[0-9]))); KEEP(*(SORT(.init_PRE_KERNEL_2[1-9][0-9]))); __device_POST_KERNEL_start = .; KEEP(*(SORT(.init_POST_KERNEL[0-9]))); KEEP(*(SORT(.init_POST_KERNEL[1-9][0-9]))); __device_APPLICATION_start = .; KEEP(*(SORT(.init_APPLICATION[0-9]))); KEEP(*(SORT(.init_APPLICATION[1-9][0-9]))); __device_init_end = .;
 } > RAM
 initlevel_error () :
 {
  KEEP(*(SORT(.init_[_A-Z0-9]*)))
 }
 ASSERT(SIZEOF(initlevel_error) == 0, "Undefined initialization levels used.")
 initshell () :
 {
  __shell_cmd_start = .; KEEP(*(".shell_*")); __shell_cmd_end = .;
 } > RAM
 _static_thread_area () : SUBALIGN(4)
 {
  _static_thread_data_list_start = .;
  KEEP(*(SORT("._static_thread_data.static.*")))
  _static_thread_data_list_end = .;
 } > RAM
 _k_timer_area () : SUBALIGN(4)
 {
  _k_timer_list_start = .;
  KEEP(*(SORT("._k_timer.static.*")))
  _k_timer_list_end = .;
 } > RAM
 _k_mem_slab_area () : SUBALIGN(4)
 {
  _k_mem_slab_list_start = .;
  KEEP(*(SORT("._k_mem_slab.static.*")))
  _k_mem_slab_list_end = .;
 } > RAM
 _k_mem_pool_area () : SUBALIGN(4)
 {
  KEEP(*(SORT("._k_memory_pool.struct*")))
  _k_mem_pool_list_start = .;
  KEEP(*(SORT("._k_mem_pool.static.*")))
  _k_mem_pool_list_end = .;
 } > RAM
 _k_sem_area () : SUBALIGN(4)
 {
  _k_sem_list_start = .;
  KEEP(*(SORT("._k_sem.static.*")))
  _k_sem_list_end = .;
 } > RAM
 _k_mutex_area () : SUBALIGN(4)
 {
  _k_mutex_list_start = .;
  KEEP(*(SORT("._k_mutex.static.*")))
  _k_mutex_list_end = .;
 } > RAM
 _k_alert_area () : SUBALIGN(4)
 {
  _k_alert_list_start = .;
  KEEP(*(SORT("._k_alert.static.*")))
  _k_alert_list_end = .;
 } > RAM
 _k_queue_area () : SUBALIGN(4)
 {
  _k_queue_list_start = .;
  KEEP(*(SORT("._k_queue.static.*")))
  _k_queue_list_end = .;
 } > RAM
 _k_stack_area () : SUBALIGN(4)
 {
  _k_stack_list_start = .;
  KEEP(*(SORT("._k_stack.static.*")))
  _k_stack_list_end = .;
 } > RAM
 _k_msgq_area () : SUBALIGN(4)
 {
  _k_msgq_list_start = .;
  KEEP(*(SORT("._k_msgq.static.*")))
  _k_msgq_list_end = .;
 } > RAM
 _k_mbox_area () : SUBALIGN(4)
 {
  _k_mbox_list_start = .;
  KEEP(*(SORT("._k_mbox.static.*")))
  _k_mbox_list_end = .;
 } > RAM
 _k_pipe_area () : SUBALIGN(4)
 {
  _k_pipe_list_start = .;
  KEEP(*(SORT("._k_pipe.static.*")))
  _k_pipe_list_end = .;
 } > RAM
 _k_work_area () : SUBALIGN(4)
 {
  _k_work_list_start = .;
  KEEP(*(SORT("._k_work.static.*")))
  _k_work_list_end = .;
 } > RAM
 _k_task_list () : SUBALIGN(4)
 {
  _k_task_list_start = .;
  *(._k_task_list.public.*)
  *(._k_task_list.private.*)
  _k_task_list_idle_start = .;
  *(._k_task_list.idle.*)
  KEEP(*(SORT("._k_task_list*")))
  _k_task_list_end = .;
 } > RAM
 _k_event_list () : SUBALIGN(4)
 {
  _k_event_list_start = .;
  *(._k_event_list.event.*)
  KEEP(*(SORT("._k_event_list*")))
  _k_event_list_end = .;
 } > RAM
 _k_memory_pool () : SUBALIGN(4)
 {
  *(._k_memory_pool.struct*)
  KEEP(*(SORT("._k_memory_pool.struct*")))
  _k_mem_pool_start = .;
  *(._k_memory_pool.*)
  KEEP(*(SORT("._k_memory_pool*")))
  _k_mem_pool_end = .;
 } > RAM
 _net_buf_pool_area () : SUBALIGN(4)
 {
  _net_buf_pool_list = .;
  KEEP(*(SORT("._net_buf_pool.static.*")))
 } > RAM
 net_if () : SUBALIGN(4)
 {
  __net_if_start = .;
  *(".net_if.*")
  KEEP(*(SORT(".net_if.*")))
  __net_if_end = .;
 } > RAM
 net_if_event () : SUBALIGN(4)
 {
  __net_if_event_start = .;
  *(".net_if_event.*")
  KEEP(*(SORT(".net_if_event.*")))
  __net_if_event_end = .;
 } > RAM
 net_l2_data () : SUBALIGN(4)
 {
  __net_l2_data_start = .;
  *(".net_l2.data")
  KEEP(*(SORT(".net_l2.data*")))
  __net_l2_data_end = .;
 } > RAM
 __data_ram_end = .;
 bss (NOLOAD ) :
 {
 . = ALIGN(4);
 __bss_start = .;
 libzephyr.a (.bss) kernel/lib.a (.bss)
 libzephyr.a (".bss.*") kernel/lib.a (".bss.*")
 libzephyr.a (COMMON) kernel/lib.a (COMMON)
 *(".kernel_bss.*")
 . = ALIGN(4);
 __bss_end = .;
 } > RAM
 __bss_num_words = (__bss_end - __bss_start) >> 2;
 noinit (NOLOAD ) :
 {
 libzephyr.a (.noinit) kernel/lib.a (.noinit)
 libzephyr.a (".noinit.*") kernel/lib.a (".noinit.*")
 *(".kernel_noinit.*")
 *(.stacks)
 *(".stacks.*")
 . = ALIGN(((4) << 10));
 } > RAM
 __kernel_ram_end = 0x00100000 + ((192) << 10);
 __kernel_ram_size = __kernel_ram_end - __kernel_ram_start;
 _image_ram_end = .;
 _image_ram_all = (0x00100000 + ((192) << 10)) - _image_ram_start;
 _end = .;

 intList () :
 {
 KEEP(*(.spurIsr))
 KEEP(*(.spurNoErrIsr))
 __INT_LIST_START__ = .;
 LONG((__INT_LIST_END__ - __INT_LIST_START__) / 0x18)
 KEEP(*(.intList))
 KEEP(*(.gnu.linkonce.intList.*))
 __INT_LIST_END__ = .;
 } > IDT_LIST
 mmulist () :
 {
 LONG((__MMU_LIST_END__ - __MMU_LIST_START__) / 0xc)
 LONG(__mmu_tables_start)
 __MMU_LIST_START__ = .;
 KEEP(*(.mmulist))
 __MMU_LIST_END__ = .;
 } > MMU_LIST
 }
