#!/bin/bash

# List of files and directories to search for
targets=(
	"/etc/vmware-tools/"
	"/etc/qemu/"
	"/etc/virtualbox/"
	"/var/lib/libvirt/"
	"/var/log/vmware/"
	"/usr/bin/vmware-user-suid-wrapper"
	"/usr/sbin/VBoxService"
	"/var/run/vboxadd-service.sh"
	"/etc/init.d/vboxadd-service"
	"/usr/bin/vboxcontrol"
)

RED='\033[0;31m'
NC='\033[0m'

# Loop through each target and check if it exists
for target in "${targets[@]}"; do
	if [ -e "$target" ]; then
    	echo -e "${RED}Found: $target${NC}"
	else
    	echo "Not found: $target"
	fi
done

