# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## History
#
# http://stackoverflow.com/questions/19454837/bash-histsize-vs-histfilesize

# Number of lines or commands that are stored in memory
export HISTSIZE=50000
# Number of lines or commands that are stored in the history file(.bash_history)
export HISTFILESIZE=50000
export HISTTIMEFORMAT='%y/%m/%d %H:%M:%S   '
export HISTIGNORE="ls*:history*:pwd"
# Ignore duplicate command
#export HISTCONTROL=ignoredups
# Ignore command start from space
#export HISTCONTROL=ignorespace
# Ignore duplicate command and command start from space
export HISTCONTROL=ignoreboth

## Color
#

# http://linux-sxs.org/housekeeping/lscolors.html
export LS_COLORS="no=00:fi=00:di=01;36:ln=01;34"

## Alias
#

[ -f ~/dotfiles/.bashrc.alias ] && source ~/dotfiles/.bashrc.alias

## OS specific configuration
#

case "${OSTYPE}" in
# MacOSX
darwin*)
    [ -f ~/dotfiles/.bashrc.osx ] && source ~/dotfiles/.bashrc.osx
    ;;
# Linux
linux*)
    [ -f ~/dotfiles/.bashrc.linux ] && source ~/dotfiles/.bashrc.linux
    ;;
esac

