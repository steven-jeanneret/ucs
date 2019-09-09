#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

. $DIR/set_var.sh

echo $FILE conf restored
sudo mkdir /etc/X11/xorg.conf.d/
sudo cp $DEST $FILE