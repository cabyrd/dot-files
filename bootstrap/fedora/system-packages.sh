#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Install basic system packages
# -----------------------------------------------------------------------------
sudo dnf install -y bash-completion     \
                    ctags               \
                    curl                \
                    direnv              \
                    gcc                 \
                    gcc-c++             \
                    golang              \
                    gpg                 \
                    make                \
                    patch               \
                    pipenv              \
                    powerline           \
                    task                \
                    the_silver_searcher \
                    tmux                \
                    tmux-powerline      \
                    tree                \
                    unzip               \
                    which               \
                    vim-enhanced        \
                    zip


# -----------------------------------------------------------------------------
# Install bash_it
# -----------------------------------------------------------------------------
BASHIT_PATH=~/.bash_it
if [ ! -d $BASHIT_PATH ]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh --no-modify-config
fi


# -----------------------------------------------------------------------------
# Install Vundle and Configure vim
# -----------------------------------------------------------------------------
VUNDLE_PATH=~/.vim/bundle/Vundle.vim
if [ ! -d $VUNDLE_PATH ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_PATH
    vim +PluginInstall +qall
fi
