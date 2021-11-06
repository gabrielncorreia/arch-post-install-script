#!/bin/sh

# Updating the system:
yes | sudo pacman -Syu

# Installing useful things
yes | sudo pacman -S --needed git base-devel
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yes | sudo pacman -Sy exfat-utils fuse-exfat a52dec faac faad2 flac jasper lame libdca libdv gst-libav libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins libdvdcss libdvdread libdvdnav gecko-mediaplayer dvd+rw-tools dvdauthor dvgrab pulseaudio-equalizer-
yes | sudo pacman -Sy fuse-exfat

# Installing fonts:
yes | sudo pacman -S ttf-fira-code
yes | sudo pacman -Sy adobe-source-han-sans-otc-fonts otf-ipafont
yes | sudo pacman -Sy ttf-dejavu 
yay -Sy ttf-ms-fonts 
yay -Sy ttf-vista-fonts 
yay -Sy ttf-liberation adobe-source-sans-pro-fonts ttf-ubuntu-font-family helvetica-neue ttf-hellvetica adobe-base-14-fonts
yes | sudo pacman -Sy ttf-hack
yes | sudo pacman -Sy mpv
yay -Sy franz-bin
yay -Sy feedreader-beta

# Installing useful apps
yay -Sy vscodium-bin
yay -Sy onlyoffice-bin
yes | sudo pacman -Sy gimp
# instalar a extensão do diolinux
yes | sudo pacman -Sy frei0r-plugins dvdauthor vlc
# yay -Sy kdenlive

yay -Sy brave-bin
# yay -Sy zoom
# yes | sudo pacman -Sy lutris
# yay -Sy slack-desktop

# oh my zsh:
yes | sudo pacman -Sy zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# To increase responsiveness:
sudo tee -a /etc/sysctl.d/99-sysctl.conf <<-EOF
vm.swappiness=1
vm.vfs_cache_pressure=50
vm.dirty_background_bytes=16777216
vm.dirty_bytes=50331648
EOF
