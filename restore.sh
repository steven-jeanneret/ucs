#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

. $DIR/set_var.sh

for i in ${MODULES[@]}; do
    if [[ -f "$DIR/$i/restore.sh" ]]; then  # Source : https://stackoverflow.com/questions/9772036/pass-all-variables-from-one-shell-script-to-another
        $DIR/$i/restore.sh
    fi
done