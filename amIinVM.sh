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

# Loop through each target and check if it exists
for target in "${targets[@]}"; do
    if [ -e "$target" ]; then
        echo "Found: $target"
    else
        echo "Not found: $target"
    fi
done
