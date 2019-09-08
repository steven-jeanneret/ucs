#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

# Install ZSH
sudo apt install tilix -y > /dev/null

$DIR/restore.sh