#!/bin/bash
if [ -f "/usr/bin/flameshot" ]; then
echo "flameshot already installed"
else 
echo "installing flameshot"
sudo apt install flameshot -y
fi
