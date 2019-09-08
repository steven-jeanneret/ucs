#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt-get update > /dev/null
sudo apt-get install ulauncher -y > /dev/null

$DIR/restore.sh