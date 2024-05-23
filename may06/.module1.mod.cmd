savedcmd_/root/LDD_Batch/vikas/may06/module1.mod := printf '%s\n'   module1.o | awk '!x[$$0]++ { print("/root/LDD_Batch/vikas/may06/"$$0) }' > /root/LDD_Batch/vikas/may06/module1.mod
