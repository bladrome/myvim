#!/usr/bin/env bash
# AUTHOR:   bladrome
# FILE:     install.sh
# ROLE:     install myvim
cp .vimrc ~/.vimrc
cp .vim ~/.vim -a
vim +BundleInstall +qall
