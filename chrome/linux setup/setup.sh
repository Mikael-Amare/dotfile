#!/bin/zsh
# Created by: Mikael Amare
# Created on: Sept 2024
# Zsh terminal dotfiles and setup script

brew update
brew upgrade -y

# common programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y

# install NeoVim from source
mkdir temp
cd temp || exit
sudo apt-get install ninja-build gettext cmake unzip curl -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd .. || exit
cd .. || exit
sudo rm -r ./temp

# install languages, bun and Java
curl -fsSL https://bun.sh/install | Zsh
# shellcheck source=/dev/null
source ~/.bashrc
sudo apt install -y default-jdk
