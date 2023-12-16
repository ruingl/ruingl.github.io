#!/bin/bash

# Copyright 2023 ruingl

# Replace these variables with your actual GitHub details
USERNAME="ruingl"
REPO="ruingl.github.io"
GPG_KEY_URL="https://github.com/$USERNAME/$REPO/raw/main/public_key.asc"

# Add the repository to sources.list for arm64 architecture
echo "deb [arch=arm64] https://github.com/$USERNAME/$REPO/ ./" > sources.list
termux-fix-shebang sources.list  # Ensure correct shebang for Termux

# Import the GPG key directly from GitHub
wget -O - $GPG_KEY_URL | gpg --import -

# Update and install packages
pkg update
