savedcmd_/root/LDD_Batch/vikas/may16/task1/data_transfer.ko := ld -r -m elf_x86_64 -z noexecstack --build-id=sha1  -T scripts/module.lds -o /root/LDD_Batch/vikas/may16/task1/data_transfer.ko /root/LDD_Batch/vikas/may16/task1/data_transfer.o /root/LDD_Batch/vikas/may16/task1/data_transfer.mod.o;  make -f ./arch/x86/Makefile.postlink /root/LDD_Batch/vikas/may16/task1/data_transfer.ko
