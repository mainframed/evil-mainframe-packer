#!/bin/bash -eux
echo "======> Adding VPN for Virtual Classes"
chown root:root /tmp/evilmf.conf
mv /tmp/evilmf.conf /etc/openvpn/client
echo "======> Creating Dummy Open VPN creds"
echo "name" > /etc/openvpn/client/up.txt
echo "password" >> /etc/openvpn/client/up.txt
echo "======> Enabling openvpn with evilmf.conf"
chmod 0600 /etc/openvpn/client/*
systemctl enable openvpn-client@evilmf
echo "======> Adding evilmf to /etc/hosts"
echo "172.27.27.83 evilmf evilmf.evilmainframe.com" >> /etc/hosts
echo "======> Done with virtual edition"
