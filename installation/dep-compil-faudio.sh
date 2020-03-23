#!/bin/bash

# Created by: Xavatar <xavatar at outlook dot fr>
# Script Compil Faudio

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
pamac install lib32-x264>=159
pamac install lib32-x265
pamac install lib32-xvidcore

pamac install lib32-ffmpeg

