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