#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

. $DIR/set_var.sh

sudo apt-get install -y git > /dev/null
sudo apt-get install -y curl > /dev/null
sudo apt-get install -y wget > /dev/null