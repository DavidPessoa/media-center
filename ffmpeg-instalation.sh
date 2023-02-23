#!/bin/bash

# Install git
apt-get update && apt-get install -y git gcc nasm pkg-config

# Clone jellyfin-ffmpeg repository
git clone https://github.com/jellyfin/jellyfin-ffmpeg.git

# Change directory into cloned repository
cd jellyfin-ffmpeg

# Run ./configure script
./configure