#!/bin/bash
DIR="$(dirname "$0" )"  # Source : https://stackoverflow.com/questions/38978650/run-a-script-in-the-same-directory-as-the-current-script

# Install ZSH
sudo apt install zsh -y > /dev/null
chsh -s /bin/zsh $USER

# Install Oh My ZSH
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh > /dev/null

# Install Auto-suggest
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/ > /dev/null

# Install ZSH-highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/ > /dev/null

# Install Space ship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt/ > /dev/null

$DIR/restore.sh