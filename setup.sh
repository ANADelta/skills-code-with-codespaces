#!/bin/bash

# Update package list and install 'sl'
sudo apt-get update
sudo apt-get install -y sl

# Add /usr/games to PATH in .bashrc if not already present
if ! grep -q "/usr/games" ~/.bashrc; then
  echo 'export PATH="$PATH:/usr/games"' >> ~/.bashrc
fi

# Add /usr/games to current PATH for immediate use
export PATH="$PATH:/usr/games"

# Run 'sl' to test it works
sl
