#!/bin/zsh
# Created by: Mikael Amare
# Created on: Sept 2024
# Zsh terminal dotfiles and setup script

echo $SHELL

if [ -n "$ZSH_VERSION" ]; then
    echo "Running in zsh"
elif [ -n "$BASH_VERSION" ]; then
    echo "Running in bash"
else
    echo "Unsupported shell"
fi

brew update
brew upgrade -y

# common programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y

# install NeoVim
brew install neovim

# install languages, bun and Java
curl -fsSL https://bun.sh/install | Zsh
# shellcheck source=/dev/null
source ~/.zshrc
brew install -y default-jdk
