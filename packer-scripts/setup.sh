
#!/bin/bash -eux
echo "======> Adding Evil user to sudoers"
# Add vagrant user to sudoers.
echo "evilmf      ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Disable daily apt unattended updates.
echo "======> Disabling Periodic updates"
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

# Fix for login issues related to lack of randomness
# https://bugs.kali.org/view.php?id=4994
#apt-get update
echo "======> Updating and upgrading Kali"
DEBIAN_FRONTEND=noninteractive apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" upgrade -y
echo "======> Installing 3270 suite, tnftp and haveged"
DEBIAN_FRONTEND=noninteractive apt-get -y install x3270 fonts-3270 c3270 s3270 xfonts-x3270-misc tnftp haveged
systemctl enable haveged
sed -i "/default-user-image/c\default-user-image = \/home\/evilmf\/.face.png" /etc/lightdm/lightdm-gtk-greeter.conf