#!/usr/bin/env bash
# AUTHOR:   bladrome
# FILE:     install.sh
# ROLE:     install myvim

mkdir -p ~/.config/nvim/
git clone --depth=1 https://github.com/junegunn/vim-plug.git ~/.config/nvim/autoload
cp init.vim ~/.config/nvim/
yay -S cscope nodejs
pip install -U pynvim
vim +PlugUpdate +qall
