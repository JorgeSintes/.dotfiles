#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
# export PS1="\e[0;32m\u@\h \W\$ \e[m"
if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01;32m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
    PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi

alias vim='nvim'
alias svim="sudo -E -s nvim"

export PATH="$PATH:/home/yorch/scripts"
alias config-git='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
