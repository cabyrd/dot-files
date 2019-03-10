#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Install Vundle and Configure vim
# -----------------------------------------------------------------------------
VUNDLE_PATH=~/.vim/bundle/Vundle.vim
if [ ! -d $VUNDLE_PATH ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_PATH
    vim +PluginInstall +qall
fi
