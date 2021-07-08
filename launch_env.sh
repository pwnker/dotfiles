#!/bin/bash
apt update
# install zsh
apt install zsh
chsh -s $(which zsh)

# clone config files
wget https://raw.githubusercontent.com/pwnker/dotfiles-and-scripts/main/.zshrc -P ~/
wget ttps://raw.githubusercontent.com/pwnker/dotfiles-and-scripts/main/.tmux.conf -P ~/

mkdir ~/.config/nvim/
wget ttps://raw.githubusercontent.com/pwnker/dotfiles-and-scripts/main/init.vim -P ~/.config/nvim/

# install tmux
apt install tmux

#install nvim
apt install neovim
