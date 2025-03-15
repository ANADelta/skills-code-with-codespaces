#!/bin/bash

sudo apt-get update
sudo apt-get install -y sl
echo "export PATH=\$PATH:/usr/games" >> ~/.bashrc
source ~/.bashrc