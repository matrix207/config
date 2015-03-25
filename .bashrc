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
alias blog='jekyll server'
alias ekey='xmodmap ~/.xmodmap'
alias vboxsetup='/etc/init.d/vboxdrv setup'
alias ddprog='while killall -USR1 dd; do sleep 5; done'

# Functions

sh-findpy() { find . -name '*.py' -exec grep -nHr "$1" {} \; ; }

sh-grepstr() { 
	search_path="$2";
	if [ $# -lt 2 ]; then
		search_path="."
	fi
	grep -r -l "$1" $search_path
}

sh-grepsrc() { 
	search_path="$2";
	if [ $# -lt 2 ]; then
		search_path="."
	fi
	grep -r -l --include=*.{h,c,cpp,sh,py,pl}  "$1" $search_path
}

sh-sumsrcsize() {
	search_path="$1";
	if [ $# -lt 1 ]; then
		search_path="."
	fi
	find $search_path \( -name "*.h" -or -name "*.c" -or -name "*.cpp" \) -printf %k"\n" | awk '{ sum += $1 } END { print sum "k"}'
}

sh-ipscan() {
	local ipaddr="$1";
	if [ $# -lt 1 ]; then
		ipaddr="192.168.1.1"
	fi
	nmap -v -sn $ipaddr/24 |grep 'report' |grep -v 'down' |awk '{print $NF}'
}

# enable color support of ls and also add handy aliases
#if [ "$TERM" != "dumb" ]; then
#    eval "`dircolors -b`"
#    alias ls='ls -bF --color=always'
#fi

# Disable touchpad, 0:disable, 1:enable
touchpad_set() {
    state=$1
    # cut by tab character -d$'\t'
    id=`xinput list |grep TouchPad |cut -d'=' -f2 |cut -d$'\t' -f1`
    xinput set-prop $id "Device Enabled" $state
}

export EDITOR=gvim

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
