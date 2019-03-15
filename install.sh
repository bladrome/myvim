#!/usr/bin/env bash
# AUTHOR:   bladrome
# FILE:     install.sh
# ROLE:     install myvim
cp .vimrc ~/.vimrc
cp .vim ~/.vim -a
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall
