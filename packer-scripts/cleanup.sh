#!/bin/bash -eux

echo "=====> Cleanup"
# Apt cleanup.
DEBIAN_FRONTEND=noninteractive apt-get autoremove
DEBIAN_FRONTEND=noninteractive apt-get clean

# Disable root account over SSH
echo "=====> Deleting root access over ssh"
sed -i '/PermitRootLogin yes/d' /etc/ssh/sshd_config
echo "=====> Disabling SSH daemon"
systemctl disable ssh.service