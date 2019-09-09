#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

pushd .
cd /tmp

sudo apt-get install -y chromium-browser > /dev/null
sudo apt-get install -y python3-pip > /dev/null
sudo apt-get install -y arandr > /dev/null
sudo apt-get install -y autorandr > /dev/null
sudo apt-get install -y lxappearance > /dev/null
sudo apt-get install -y arc-theme > /dev/null
sudo apt-get install -y htop > /dev/null
sudo apt-get install -y policykit-desktop-privileges > /dev/null
sudo apt-get install -y policykit-1-gnome > /dev/null
sudo apt-get install -y pasystray > /dev/null
sudo apt-get install -y maim > /dev/null
sudo apt-get install -y xclip > /dev/null
sudo apt-get install -y xfce4-clipman > /dev/null
sudo apt-get install -y feh > /dev/null
sudo apt-get install -y vlc > /dev/null
sudo apt-get install -y caffeine > /dev/null
sudo apt-get install -y gimp > /dev/null
sudo apt-get install -y neofetch > /dev/null
sudo apt-get install -y pinta > /dev/null
sudo apt-get install -y nemo > /dev/null


# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install -y apt-transport-https > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install -y code > /dev/null # or code-insiders

# Arc icon
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update > /dev/null
sudo apt-get install -y arc-icons > /dev/null

# Captain cursor
sudo add-apt-repository ppa:dyatlov-igor/la-capitaine
sudo apt-get update > /dev/null
sudo apt-get install -y la-capitaine-cursor-theme > /dev/null

# Cursor size
echo Xcursor.size: 16 >> ~/.Xresources

# Light
cd /tmp
wget https://github.com/haikarainen/light/releases/download/v1.2/light_1.2_amd64.deb
sudo dpkg -i light_1.2_amd64.deb  > /dev/null

# Playerctl
cd /tmp
wget https://github.com/acrisci/playerctl/releases/download/v2.0.2/playerctl-2.0.2_amd64.deb
sudo dpkg -i playerctl-2.0.2_amd64.deb  > /dev/null

# Nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs > /dev/null

## Config user permission
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo export PATH=~/.npm-global/bin:\$PATH >> ~/.profile
source ~/.profile

# Inotify problem
echo fs.inotify.max_user_watches = 524288 | sudo tee -a /etc/sysctl.conf

# S-tui
sudo pip3 install s-tui --user

sudo add-apt-repository ppa:peek-developers/stable
sudo apt-get update -y
sudo apt-get install -y peek

# Virtualenv wrapper
pip3 install virtualenv virtualenvwrapper --user

# Font, this repo is private.
cd /tmp
git clone https://github.com/steven-jeanneret/fonts.git
cd fonts
./install_font.sh


popd