#!/bin/bash -eux
#echo "=====> Updating x3270 Fonts"
#export DISPLAY=:0.0
#xset fp rehash
# Install the tools

echo "=====> Making Desktop Launchers Executable"
chmod +x /home/evilmf/Desktop/*.desktop

echo "=====> Installing Public Tools"
mkdir -p /home/evilmf/Tools
cd /home/evilmf/Tools
git clone https://github.com/mainframed/TShOcker.git
git clone https://github.com/zedsec390/tn3270lib.git
git clone https://github.com/zedsec390/shells-payloads
git clone https://github.com/zedsec390/NJElib.git
git clone https://github.com/zedsec390/masking.git
git clone https://github.com/bigendiansmalls/racfdbparse.git
git clone https://github.com/bigendiansmalls/passticket-tools.git
git clone https://github.com/mainframed/Enumeration.git
git clone https://github.com/mainframed/x3270.nice.git
git clone https://github.com/mainframed/netEBCDICat.git
git clone https://github.com/mainframed/CATMAP.git
git clone https://github.com/mainframed/cicspwn.git
git clone https://github.com/mainframed/Shells.git
git clone https://github.com/mainframed/logica.git
git clone https://github.com/mainframed/SETn3270.git
git clone https://github.com/mainframed/Privesc.git
git clone https://github.com/sensepost/birp.git
git clone https://github.com/Tdasu-Mainframes/GATOR.git


echo "=====> Face................ OFF!"
ln -sf ~/.face ~/.face.icon
ln -sf ~/.face ~/.face.png

echo "=====> Making links to desktop folders"
ln -sf /home/evilmf/Labs ~/Desktop
ln -sf /home/evilmf/Tools ~/Desktop