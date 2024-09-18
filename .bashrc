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

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

alias vim='nvim'
alias svim="sudo -E -s nvim"

export PATH="$PATH:/home/yorch/scripts"
export PATH="$PATH:/usr/local/lib/node-v21.6.2/bin"

# alias pyenv="source ~/venvs/\$(ls ~/venvs/ | fzf -1)/bin/activate"
# alias pyenv="VENV_PATH=\$(find ~/venvs -mindepth 1 -maxdepth 1 -type d | fzf -1); tmux set-environment VENV_PATH \"\$VENV_PATH\"; source \$VENV_PATH/bin/activate"
# if [ -n "$VENV_PATH" ] && [ -d "$VENV_PATH" ]; then
# source "$VENV_PATH/bin/activate"
# fi
# alias pylenv="source \$(find  -path '*/bin/activate' | xargs -n1 dirname | xargs -n1 dirname | fzf -1)/bin/activate"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# lilypond
export PATH=/home/yorch/.local/bin:$PATH

# uv
. "$HOME/.cargo/env"

xset r rate 300 40
