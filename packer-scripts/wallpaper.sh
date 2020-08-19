#!/bin/bash -eux

echo "=====> Updating Wallpapers"
echo "=====> Setting up folders"
mkdir /usr/share/backgrounds/evilmf
cp /home/evilmf/Pictures/evil* /usr/share/backgrounds/evilmf
chown -R root:root /usr/share/backgrounds/evilmf
chmod 644 /usr/share/backgrounds/evilmf/*
echo "=====> Removing Files"
rm -f /usr/share/backgrounds/kali-16x9/*
mv /usr/share/desktop-base/kali-theme/login/background /usr/share/desktop-base/kali-theme/login/background.old
echo "=====> Creating Links"
cd /usr/share/backgrounds/kali-16x9/
ln -s ../evilmf/evil_wallpaper.png /usr/share/backgrounds/kali-16x9/default 
ln -s ../evilmf/evil_wallpaper_text.png /usr/share/backgrounds/kali-16x9/kali-blue-matrix.png 
ln -s ../evilmf/evil_wallpaper_blue_waves.png /usr/share/backgrounds/kali-16x9/kali-blur.png 
ln -s ../evilmf/evil_wallpaper_dark.png /usr/share/backgrounds/kali-16x9/kali-dark.png 
ln -s ../evilmf/evil_wallpaper_oops_all_tapedrives.png /usr/share/backgrounds/kali-16x9/kali-grid.png 
ln -s ../evilmf/evil_wallpaper_729-blue.png /usr/share/backgrounds/kali-16x9/kali-light.png 
ln -s ../evilmf/evil_wallpaper_blue_waves.png /usr/share/backgrounds/kali-16x9/kali-logo.png 
ln -s ../evilmf/evil_wallpaper_texture.png /usr/share/backgrounds/kali-16x9/kali-mesh.png 
ln -s ../evilmf/evil_wallpaper_80a_neon.png /usr/share/backgrounds/kali-16x9/kali-neon.png 
ln -s ../evilmf/evil_wallpaper_gold.png /usr/share/backgrounds/kali-16x9/kali-rings.png 
ln -s ../evilmf/evil_wallpaper_tapedrives.png /usr/share/backgrounds/kali-16x9/kali-strips.png 
ln -s ../evilmf/evil_wallpaper_729.png /usr/share/backgrounds/kali-16x9/kali-trail.png 
cd /usr/share/desktop-base/kali-theme/login/
ln -s ../../../backgrounds/evilmf/evil_wallpaper_blue_waves.png /usr/share/desktop-base/kali-theme/login/background
ln -s ../../../backgrounds/evilmf/evil_wallpaper_blue_waves.svg /usr/share/desktop-base/kali-theme/login/background.svg
echo "=====> Done Updating Wallpapers"