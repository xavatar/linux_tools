#!/bin/bash

# Created by: Xavatar <xavatar at outlook dot fr>

# Enable AUR
echo "**********************"
echo "Enable AUR + MAJ"
echo "**********************"
sleep 3
sudo sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf"
sudo sed --in-place "s/#CheckAURUpdates/CheckAURUpdates/" "/etc/pamac.conf"
pamac update


# Enable repo.xavatar.com
echo "**********************"
echo "Enable repo.xavatar.com"
echo "**********************"
sleep 3
echo -e "\n[repo.xavatar.com]\nSigLevel = Optional TrustAll\nServer = https://repo.xavatar.com" | sudo tee -a /etc/pacman.conf
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


# Installation des logs compil TKG
echo ""
echo ""
echo "*****************************"
echo "Installation des logs compil TKG"
echo "*****************************"
# dep proton-tkg
pamac install python-fonttools
# dep faudio
pamac install lib32-aom
pamac install lib32-gsm
pamac install lib32-lame
pamac install lib32-libass
pamac install lib32-libbluray
pamac install meson-cross-x86-linux-gnu
pamac install lib32-glslang
pamac install lib32-shaderc
pamac install lib32-libplacebo
pamac install lib32-dav1d
pamac install lib32-libomxil-bellagio
pamac install lib32-opencore-amr
pamac install lib32-openjpeg2
pamac install lib32-x264
pamac install lib32-numactl
pamac install lib32-x265
pamac install lib32-xvidcore
pamac install lib32-ffmpeg
pamac install rhash
pamac install cmake
pamac install python-lxml
pamac install spirv-headers-git

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


# Download and install environment Gaming
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
pamac install vulkan-headers-tkg-git

echo ""
echo ""
echo "*****************************"
echo "Install vulkan-icd-loader-git"
echo "*****************************"
sleep 3
pamac install lib32-vulkan-icd-loader-git
pamac install vulkan-icd-loader-git
pamac install vulkan-tools

echo ""
echo ""
echo "*****************************"
echo "Install spirv + vkd3d"
echo "*****************************"
sleep 3
pamac install lib32-spirv-tools-tkg-git
pamac install spirv-tools-tkg-git
pamac install lib32-vkd3d-tkg-git
pamac install vkd3d-tkg-git

echo ""
echo ""
echo "*****************************"
echo "Install Wine Staging TKG"
echo "*****************************"
sleep 3
pamac install giflib lib32-giflib libpng lib32-libpng  libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal  lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse  libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib  lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite  libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt   lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader  lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3  lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs
pamac install wine-tkg-staging-fsync-vkd3d-git

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
pamac install mingw-w64-binutils
pamac install mingw-w64-headers
pamac install mingw-w64-winpthreads
pamac install mingw-w64-crt
pamac install mingw-w64-gcc


echo ""
echo ""
echo "*****************************"
echo " FINISH "
echo "*****************************"


