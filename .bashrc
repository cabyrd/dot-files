# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source /usr/share/git-core/contrib/completion/git-prompt.sh

Color_Off="\[\033[0m\]"       # Text Reset
Green="\[\033[0;32m\]"        # Green
BYellow="\[\033[1;33m\]"      # Yellow
BIRed="\[\033[1;91m\]"        # Red

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vi='vim'
alias vit='vim "+NERDTree"'
alias tree='tree -C'
alias c='clear'

export EDITOR=vim
export PS1='$(git branch &>/dev/null;\
    if [ $? -eq 0 ]; then \
        echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
        if [ "$?" -eq "0" ]; then \
            # @4 - Clean repository - nothing to commit
            echo "[\u@\h'$Green'"$(__git_ps1 " (%s)"); \
        else \
            # @5 - Changes to working tree
            echo "[\u@\h'$BIRed'"$(__git_ps1 " {%s}"); \
        fi) '$BYellow\\W$Color_Off']\$ "; \
    else \
        # @2 - Prompt when not in GIT repo
        echo "[\u@\h \W]\\$ "; \
    fi)'

if [ -d $HOME/.bash-env ]; then 
  for f in $HOME/.bash-env/*
  do
    . $f
  done
fi
