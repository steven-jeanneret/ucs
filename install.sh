#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

. $DIR/set_var.sh

sudo apt-get update -y > /dev/null
sudo apt-get upgrade -y > /dev/null

for i in ${MODULES[@]}; do
    if [[ -f "$DIR/$i/install.sh" ]]; then  # Source : https://stackoverflow.com/questions/9772036/pass-all-variables-from-one-shell-script-to-another
        $DIR/$i/install.sh
    fi
done