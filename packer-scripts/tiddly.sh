#!/bin/bash -eux

#Install Tidly Wiki Gui
mkdir -p /home/evilmf/.local/share/
cd /home/evilmf/.local/share/
curl -s https://api.github.com/repos/Jermolene/TiddlyDesktop/releases | grep "browser_download_url.*zip"|grep linux64|grep -v prerelease |head -1|cut -d : -f 2,3|tr -d \"|wget -qi -
unzip *.zip
rm *.zip
mv TiddlyDesktop* TiddlyDesktop
