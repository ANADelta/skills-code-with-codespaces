#!/bin/bash

# Update system and install sl
sudo apt-get update
sudo apt-get install -y sl

# Add /usr/games to PATH in .bashrc if not already present
if ! grep -q '/usr/games' ~/.bashrc; then
  echo 'export PATH="$PATH:/usr/games"' >> ~/.bashrc
fi

# Add /usr/games to current session PATH
export PATH="$PATH:/usr/games"

# Run sl to confirm it works
sl
