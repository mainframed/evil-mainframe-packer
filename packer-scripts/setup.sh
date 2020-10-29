
#!/bin/bash -eux
echo "======> Adding Evil user to sudoers"
echo "evilmf      ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

echo "======> Disabling Periodic updates"
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

echo "======> Updating and upgrading Kali"
DEBIAN_FRONTEND=noninteractive apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" upgrade -y

echo "======> Installing 3270 suite, tnftp and haveged, pip, cool retro term, etc"
DEBIAN_FRONTEND=noninteractive apt-get -y install x3270 fonts-3270 c3270 s3270 xfonts-x3270-misc tnftp haveged python3-pip ncat open-vm-tools-desktop cool-retro-term openvpn
systemctl enable haveged

echo "======> Adding EM logo to lightdm"
sed -i "/default-user-image/c\default-user-image = \/home\/evilmf\/.face.png" /etc/lightdm/lightdm-gtk-greeter.conf

echo "======> Zeroing out remaining space to make compression better"
dd if=/dev/zero of=/EMPTY bs=1M | true
rm -f /EMPTY

echo "======> Installing Oh my zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/evilmf/.oh-my-zsh
cp /home/evilmf/.oh-my-zsh/templates/zshrc.zsh-template /home/evilmf/.zshrc
chown -R evilmf:evilmf /home/evilmf/.oh-my-zsh
chown -R evilmf:evilmf /home/evilmf/.zshrc
sudo chsh -s /bin/zsh evilmf
echo "# Some nice aliases for the class" >> /home/evilmf/.zshrc
echo "alias pbcopy='xsel --clipboard --input'" >> /home/evilmf/.zshrc
echo "alias pbpaste='xsel --clipboard --output'" >> /home/evilmf/.zshrc
echo "alias please=sudo" >> /home/evilmf/.zshrc
echo "alias sorry='sudo $(fc -ln -1)'" >> /home/evilmf/.zshrc
echo "alias 'open'='xdg-open'" >> /home/evilmf/.zshrc

echo "======> Fixing x3270 font warnings"
echo "# Next line needed for x3270 fonts" >> /home/evilmf/.bashrc
echo "xset fp rehash" >> /home/evilmf/.bashrc
echo "# Next line needed for x3270 fonts" >> /home/evilmf/.zshrc
echo "xset fp rehash" >> /home/evilmf/.zshrc
