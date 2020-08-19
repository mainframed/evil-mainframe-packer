#!/bin/bash -eux
echo "=====> Installing VMWare tools"
sudo DEBIAN_FRONTEND=noninteractive sudo apt-get install -y open-vm-tools
