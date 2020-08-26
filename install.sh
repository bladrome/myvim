#!/usr/bin/env bash
# AUTHOR:   bladrome
# FILE:     install.sh
# ROLE:     install myvim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp init.vim ~/.config/nvim/
yay -S cscope nodejs
pip install -U pynvim
vim +PlugUpdate +qall
