#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

. $DIR/set_var.sh

for i in ${APPS[@]}; do
    sudo apt install -y $i > /dev/null
done
