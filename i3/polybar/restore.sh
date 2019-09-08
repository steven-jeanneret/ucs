#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

. $DIR/set_var.sh

mkdir -p ~/.config/polybar

if [[ -f "$FILE" ]]; then  # Source : https://stackoverflow.com/questions/9772036/pass-all-variables-from-one-shell-script-to-another
    cp $FILE $FILE.bak
    echo $FILE backuped as $FILE.bak
fi

if [[ -f "$FILE2" ]]; then  # Source : https://stackoverflow.com/questions/9772036/pass-all-variables-from-one-shell-script-to-another
    cp $FILE2 $FILE2.bak
    echo $FILE2 backuped as $FILE2.bak
fi

echo $FILE imported
cp $DEST $FILE

echo $FILE2 imported
cp $DEST2 $FILE2