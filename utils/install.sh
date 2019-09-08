#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

. $DIR/set_var.sh

for i in ${APPS[@]}; do
    sudo apt-get install -y $i > /dev/null
done

# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code # or code-insiders

# Arc icon
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install -y arc-icons

# Captain cursor
sudo add-apt-repository ppa:dyatlov-igor/la-capitaine
sudo apt update
sudo apt install -y la-capitaine-cursor-theme

# Cursor size
echo Xcursor.size: 16 >> ~/.Xresources

# Light
cd /tmp
wget https://github.com/haikarainen/light/releases/download/v1.2/light_1.2_amd64.deb
sudo dpkg -i light_1.2_amd64.deb

# Playerctl
cd /tmp
wget https://github.com/acrisci/playerctl/releases/download/v2.0.2/playerctl-2.0.2_amd64.deb
sudo dpkg -i playerctl-2.0.2.amd64.deb

# Nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs

## Config user permission
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo export PATH=~/.npm-global/bin:\$PATH >> ~/.profile
source ~/.profile

# Inotify problem
echo fs.inotify.max_user_watches = 524288 | sudo tee -a /etc/sysctl.conf
