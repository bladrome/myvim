#!/usr/bin/env bash
# AUTHOR:   bladrome
# FILE:     install.sh
# ROLE:     install myvim
cp .vimrc ~/.vimrc
cp .vim ~/.vim -a
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PlugInstall +qall
