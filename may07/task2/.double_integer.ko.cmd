savedcmd_/root/LDD_Batch/vikas/may07/task2/double_integer.ko := ld -r -m elf_x86_64 -z noexecstack --build-id=sha1  -T scripts/module.lds -o /root/LDD_Batch/vikas/may07/task2/double_integer.ko /root/LDD_Batch/vikas/may07/task2/double_integer.o /root/LDD_Batch/vikas/may07/task2/double_integer.mod.o;  make -f ./arch/x86/Makefile.postlink /root/LDD_Batch/vikas/may07/task2/double_integer.ko