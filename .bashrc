#!/usr/bin/env bash

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
#export BASH_IT_THEME='bobby'
export BASH_IT_THEME='powerline'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

export EDITOR=vim

# Load Bash It
source $BASH_IT/bash_it.sh

# User specific aliases and functions
alias vi='vim'
alias vit='vim "+NERDTree"'
alias tree='tree -C'
alias c='clear'

#Remap caps <--> ctrl
setxkbmap -layout us -option ctrl:nocaps

