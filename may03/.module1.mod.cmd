savedcmd_/root/LDD_Batch/vikas/may03/module1.mod := printf '%s\n'   module1.o | awk '!x[$$0]++ { print("/root/LDD_Batch/vikas/may03/"$$0) }' > /root/LDD_Batch/vikas/may03/module1.mod
