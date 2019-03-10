#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Install bash_it
# -----------------------------------------------------------------------------
BASHIT_PATH=~/.bash_it
if [ ! -d $BASHIT_PATH ]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh --no-modify-config
fi
