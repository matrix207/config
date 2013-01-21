# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias pdf='/usr/bin/evince'

export EDITOR=gvim

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
