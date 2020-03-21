#!/bin/bash

# Created by: Xavatar <xavatar at outlook dot fr>

# Enable AUR
sudo sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf"

# Install mingw
pamac install mingw-w64-crt-bin
pamac install mingw-w64-binutils-bin
pamac install mingw-w64-winpthreads-bin
pamac install mingw-w64-headers-bin
pamac install mingw-w64-gcc-bin