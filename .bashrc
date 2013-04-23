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

export EDITOR=gvim

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
