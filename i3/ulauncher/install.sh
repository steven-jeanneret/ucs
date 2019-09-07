#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt update
sudo apt install ulauncher -y

$DIR/restore.sh