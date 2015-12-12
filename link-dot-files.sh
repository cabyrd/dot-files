#!/bin/sh
LINK_ABS_PATH=`realpath $0`
DOT_PATH=`dirname $LINK_ABS_PATH`
ln -sf ${DOT_PATH}/.bashrc ~/.bashrc
ln -sf ${DOT_PATH}/.vimrc ~/.vimrc
ln -sf ${DOT_PATH}/.tmux.conf ~/.tmux.conf
