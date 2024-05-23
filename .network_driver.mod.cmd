savedcmd_/root/network_driver.mod := printf '%s\n'   network_driver.o | awk '!x[$$0]++ { print("/root/"$$0) }' > /root/network_driver.mod
