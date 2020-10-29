#!/bin/bash -eux
echo "======> Adding VPN for Virtual Classes"
chown root:root /tmp/evilmf.conf
mv /tmp/evilmf.conf /etc/openvpn/client
echo "======> Creating Dummy Open VPN creds"
touch /etc/openvpn/client/up.txt
echo "name" > /etc/openvpn/client/up
echo "password" >> /etc/openvpn/client/up
echo "======> Enabling openvpn with evilmf.conf"
chmod 0600 /etc/openvpn/client/*
systemctl enable openvpn-client@evilmf
echo "======> Adding evilmf to /etc/hosts"
echo "172.27.27.83 evilmf" >> /etc/hosts
echo "172.27.27.83 evilmf.evilmainframes.com" >> /etc/hosts
echo "======> Done with virtual edition"