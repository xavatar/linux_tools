#!/bin/bash

# Created by: Xavatar <xavatar at outlook dot fr>

# Enable AUR
echo ""
echo "Enable AUR"
echo ""
sudo sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf"
pamac update

# Installation des logs divers
echo ""
echo "Installation des logs divers"
echo ""
pamac install ccache vim nodejs-nativefier whatsapp-nativefier


# Sublime Text
echo ""
echo "Installation Sublime Text"
echo ""
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
pamac update
pamac install sublime-text

# Teams
echo ""
echo "Installation Teams"
echo ""
sudo systemctl enable systemd-timesyncd.service
timedatectl set-ntp true
pamac install teams

# Download and install environment Gamaing
echo ""
echo "Download and install environment Gamaing"
echo ""
echo ""
echo "vulkan-headers-git"
echo ""
wget https://github.com/xavatar/vulkan-headers-git/releases/download/1.2.135/vulkan-headers-tkg-git-1.2.135.r0.gfb7f9c9-1-any.pkg.tar.xz
sudo pacman -U vulkan-headers-tkg-git-1.2.135.r0.gfb7f9c9-1-any.pkg.tar.xz
echo ""
echo "vulkan-icd-loader-git"
echo ""
wget https://github.com/xavatar/vulkan-icd-loader-git/releases/download/1.2.135.r2.gff44f21a0-1/lib32-vulkan-icd-loader-git-1.2.135.r2.gff44f21a0-1-x86_64.pkg.tar.xz
pacman -U lib32-vulkan-icd-loader-git-1.2.135.r2.gff44f21a0-1-x86_64.pkg.tar.xz
wget https://github.com/xavatar/vulkan-icd-loader-git/releases/download/1.2.135.r2.gff44f21a0/vulkan-icd-loader-git-1.2.135.r2.gff44f21a0-1-x86_64.pkg.tar.xz
pacman -U vulkan-icd-loader-git-1.2.135.r2.gff44f21a0-1-x86_64.pkg.tar.xz
pamac install vulkan-tools
echo ""
echo "Spirv + vkd3d"
echo ""
wget https://github.com/xavatar/spirv-tools-git/releases/download/2020.1.r39.g60104cd9-1/lib32-spirv-tools-tkg-git-2020.1.r39.g60104cd9-1-x86_64.pkg.tar.xz
pacman -U lib32-spirv-tools-tkg-git-2020.1.r39.g60104cd9-1-x86_64.pkg.tar.xz
wget https://github.com/xavatar/spirv-tools-git/releases/download/2020.1.r39.g60104cd9-1a/spirv-tools-tkg-git-2020.1.r39.g60104cd9-1-x86_64.pkg.tar.xz
pacman -U spirv-tools-tkg-git-2020.1.r39.g60104cd9-1-x86_64.pkg.tar.xz
wget https://github.com/xavatar/vkd3d-git/releases/download/1.1.r689.ga59f198-1/lib32-vkd3d-tkg-git-1.1.r689.ga59f198-1-x86_64.pkg.tar.xz
pacman -U lib32-vkd3d-tkg-git-1.1.r689.ga59f198-1-x86_64.pkg.tar.xz
wget https://github.com/xavatar/vkd3d-git/releases/download/1.1.r689.ga59f198-1a/vkd3d-tkg-git-1.1.r689.ga59f198-1-x86_64.pkg.tar.xz
pacman -U vkd3d-tkg-git-1.1.r689.ga59f198-1-x86_64.pkg.tar.xz
echo ""
echo "Wine Staging TKG"
echo ""
pamac install giflib lib32-giflib libpng lib32-libpng  libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal  lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse  libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib  lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite  libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt   lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader  lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3  lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs
wget https://github.com/xavatar/wine-staging-tkg/releases/download/git-5.4.r10.g7c7868f4-254/wine-tkg-staging-fsync-vkd3d-git-5.4.r10.g7c7868f4-254-x86_64.pkg.tar.xz
pacman -U wine-tkg-staging-fsync-vkd3d-git-5.4.r10.g7c7868f4-254-x86_64.pkg.tar.xz
echo ""
echo "Wine Staging TKG"
echo ""
pamac install lutris



