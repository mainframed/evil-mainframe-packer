#!/bin/bash -eux
echo "=====> Installing virtualbox guest additions"
sudo DEBIAN_FRONTEND=noninteractive sudo apt-get install -y virtualbox-guest-x11