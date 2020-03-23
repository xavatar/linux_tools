#!/bin/bash

# Created by: Xavatar <xavatar at outlook dot fr>

# Enable AUR
echo "**********************"
echo "Enable AUR"
echo "**********************"
sleep 3
sudo sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf"
pamac update

# Installation des logs divers
echo ""
echo ""
echo "*****************************"
echo "Installation des logs divers"
echo "*****************************"
sleep 3
pamac install ccache vim 
pamac install github-desktop-bin
pamac install nodejs-nativefier 
pamac install whatsapp-nativefier


# Sublime Text
echo ""
echo ""
echo "*****************************"
echo "Installation Sublime Text"
echo "*****************************"
sleep 3
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
pamac update
pamac install sublime-text

# Teams
echo ""
echo ""
echo "*****************************"
echo "Install Teams"
echo "*****************************"
sleep 3
sudo systemctl enable systemd-timesyncd.service
timedatectl set-ntp true
pamac install teams

# Download and install environment Gamaing
echo ""
echo ""
echo "*****************************"
echo "Download and install environment Gaming"
echo "*****************************"
echo ""

echo "*****************************"
echo "Install vulkan-headers-git"
echo "*****************************"
sleep 3
wget https://github.com/xavatar/vulkan-headers-git/releases/download/1.2.135/vulkan-headers-tkg-git-1.2.135.r0.gfb7f9c9-1-any.pkg.tar.xz
sudo pacman -U vulkan-headers-tkg-git-1.2.135.r0.gfb7f9c9-1-any.pkg.tar.xz

echo ""
echo ""
echo "*****************************"
echo "Install vulkan-icd-loader-git"
echo "*****************************"
sleep 3
wget https://github.com/xavatar/vulkan-icd-loader-git/releases/download/1.2.135.r2.gff44f21a0-1/lib32-vulkan-icd-loader-git-1.2.135.r2.gff44f21a0-1-x86_64.pkg.tar.xz
sudo pacman -U lib32-vulkan-icd-loader-git-1.2.135.r2.gff44f21a0-1-x86_64.pkg.tar.xz
wget https://github.com/xavatar/vulkan-icd-loader-git/releases/download/1.2.135.r2.gff44f21a0/vulkan-icd-loader-git-1.2.135.r2.gff44f21a0-1-x86_64.pkg.tar.xz
sudo pacman -U vulkan-icd-loader-git-1.2.135.r2.gff44f21a0-1-x86_64.pkg.tar.xz
pamac install vulkan-tools

echo ""
echo ""
echo "*****************************"
echo "Install spirv + vkd3d"
echo "*****************************"
sleep 3
wget https://github.com/xavatar/spirv-tools-git/releases/download/2020.1.r39.g60104cd9-1/lib32-spirv-tools-tkg-git-2020.1.r39.g60104cd9-1-x86_64.pkg.tar.xz
sudo pacman -U lib32-spirv-tools-tkg-git-2020.1.r39.g60104cd9-1-x86_64.pkg.tar.xz
wget https://github.com/xavatar/spirv-tools-git/releases/download/2020.1.r39.g60104cd9-1a/spirv-tools-tkg-git-2020.1.r39.g60104cd9-1-x86_64.pkg.tar.xz
sudo pacman -U spirv-tools-tkg-git-2020.1.r39.g60104cd9-1-x86_64.pkg.tar.xz
wget https://github.com/xavatar/vkd3d-git/releases/download/1.1.r689.ga59f198-1/lib32-vkd3d-tkg-git-1.1.r689.ga59f198-1-x86_64.pkg.tar.xz
sudo pacman -U lib32-vkd3d-tkg-git-1.1.r689.ga59f198-1-x86_64.pkg.tar.xz
wget https://github.com/xavatar/vkd3d-git/releases/download/1.1.r689.ga59f198-1a/vkd3d-tkg-git-1.1.r689.ga59f198-1-x86_64.pkg.tar.xz
sudo pacman -U vkd3d-tkg-git-1.1.r689.ga59f198-1-x86_64.pkg.tar.xz

echo ""
echo ""
echo "*****************************"
echo "Install Wine Staging TKG"
echo "*****************************"
sleep 3
pamac install giflib lib32-giflib libpng lib32-libpng  libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal  lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse  libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib  lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite  libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt   lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader  lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3  lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs
wget https://github.com/xavatar/wine-staging-tkg/releases/download/git-5.4.r10.g7c7868f4-254/wine-tkg-staging-fsync-vkd3d-git-5.4.r10.g7c7868f4-254-x86_64.pkg.tar.xz
sudo pacman -U wine-tkg-staging-fsync-vkd3d-git-5.4.r10.g7c7868f4-254-x86_64.pkg.tar.xz

echo ""
echo ""
echo "*****************************"
echo "Install Lutris"
echo "*****************************"
sleep 3
pamac install lutris

echo ""
echo ""
echo "*****************************"
echo "Install mingw-w64-gcc"
echo "*****************************"
sleep 3
wget https://github.com/xavatar/mingw/releases/download/2.34-1/mingw-w64-binutils-2.34-1-x86_64.pkg.tar.xz
wget https://github.com/xavatar/mingw/releases/download/7.0.0-1a/mingw-w64-headers-7.0.0-1-any.pkg.tar.xz
wget https://github.com/xavatar/mingw/releases/download/7.0.0-1b/mingw-w64-winpthreads-7.0.0-1-any.pkg.tar.xz
wget https://github.com/xavatar/mingw/releases/download/7.0.0-1/mingw-w64-crt-7.0.0-1-any.pkg.tar.xz
wget https://github.com/xavatar/mingw/releases/download/9.3.0-1/mingw-w64-gcc-9.3.0-1-x86_64.pkg.tar.xz
sudo pacman -U mingw-w64-binutils-2.34-1-x86_64.pkg.tar.xz
sudo pacman -U mingw-w64-headers-7.0.0-1-any.pkg.tar.xz
sudo pacman -U mingw-w64-winpthreads-7.0.0-1-any.pkg.tar.xz
sudo pacman -U mingw-w64-crt-7.0.0-1-any.pkg.tar.xz
sudo pacman -U mingw-w64-gcc-9.3.0-1-x86_64.pkg.tar.xz

echo ""
echo ""
echo "*****************************"
echo "Install proton-tkg"
echo "*****************************"
sleep 3
wget https://github.com/xavatar/proton-tkg/releases/download/5.4.r10.g7c7868f4/proton_tkg_5.4.r10.g7c7868f4.tar.gz
mkdir -p ~/.steam/root/compatibilitytools.d
tar xvfz proton_tkg_5.4.r10.g7c7868f4.tar.gz
mv proton_tkg_5.4.r10.g7c7868f4 ~/.steam/root/compatibilitytools.d

echo ""
echo ""
echo "*****************************"
echo " FINISH "
echo "*****************************"


