# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mtest='mount -t cifs -o username=,passwd= //192.168.1.5/path'
alias ssht='ssh -f -NC -D7070 username@shell.cjb.net'
alias pdf='/usr/bin/evince'
alias svg='/usr/bin/eog'
alias img='/usr/bin/shotwell'
alias blog='jekyll --server'

export EDITOR=gvim

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
