# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mtest='mount -t cifs -o username=,passwd= //192.168.1.5/path'
#alias ssht='ssh -f -NC -D7070 username@shell.cjb.net'
alias ssht='ssh -f -NC -D7070 dennisshell@216.194.70.6'
alias pdf='/usr/bin/evince'
alias svg='/usr/bin/eog'
alias img='/usr/bin/shotwell'
alias blog='jekyll --server'
alias ekey='xmodmap ~/.xmodmap'
alias vboxsetup='/etc/init.d/vboxdrv setup'
grepstr() { grep -r -l "$1" . ;}
grepsrc() { grep -r -l --include=*.{h,c}  "$1" . ;}

export EDITOR=gvim

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
