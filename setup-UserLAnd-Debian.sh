#!/bin/bash

#  Git, Python3 and essentials
echo "Setting up Git, Python3 and essentials"
sudo apt update -y
sudo apt install -y build-essential curl git wget pgp python-is-python3 python3-distutils python3-pip apt-transport-https

# Node.js
echo "Setting up Node.js..."
sudo apt update -y
sudo apt install -y nodejs npm

# AVR stuff
echo "Setting up AVR stuff..."
sudo apt update -y
sudo apt install -y gcc-avr avrdude

# Chromium browser
echo "Setting up Chromium browser..."
sudo apt install -y chromium
#chromium --no-sandbox
#Application menu: Chromium
# nano /usr/share/applications/chromium.desktop
# #modify Exec entry to:
# #...
# Exec=/usr/bin/chromium %U --no-sandbox
# #...
# #for root (unmodded OS):
# #...
# Exec=/usr/bin/chromium %U --no-sandbox
# #...
sed -i 's/chromium %U/chromium %U --no-sandbox/' /usr/share/applications/chromium.desktop

#Download and install VSCode
echo "Setting up VSCode..."
wget -O ~/code_stable_arm64.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-arm64'
sudo apt install -y ~/code_stable_arm64.deb
rm ~/code_stable_arm64.deb
#code --no-sandbox
#Application menu: VSCode
# nano /usr/share/applications/code.desktop
# #modify Exec entry to:
# #...
# Exec=/usr/share/code/code --unity-launch %F --no-sandbox
# #...
# #for root (unmodded OS):
# #...
# Exec=/usr/share/code/code --unity-launch %F --no-sandbox --user-data-dir ~/.vscode-data
# #...
sed -i 's/code --unity-launch %F/code --unity-launch %F --no-sandbox/' /usr/share/applications/code.desktop

## 3D Printing stuff
#echo "Setting up 3D Printing stuff..."
#sudo apt install -y locales-all *mesa* openscad prusa-slicer
#sudo dpkg-reconfigure locales

# Git config
echo "Done."
echo ""
echo "Don't forget Your Git config:"
echo "    git config --global user.name \"Your Name\""
echo "    git config --global user.email \"your.email-address@domain.com\""
echo ""

