# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac


GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${GREEN}\u@\h:\w$ ${RESET}"
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
HISTSIZE=
HISTFILESIZE=
# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# vi mode
set -o vi
VISUAL=vim
EDITOR="$VISUAL"
SYSTEMD_EDITOR="$VISUAL"

# Free stop from ^S so that it can be used for forward-search-history
stty stop undef

# Add user bin
PATH=$HOME/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PYENV_ROOT=$HOME/.pyenv
PATH=$HOME/.rbenv/bin:$PATH
PATH=$PYENV_ROOT/bin:$PATH
PATH=/opt/codesonar-4.4p0/codesonar/bin:$PATH
TERM=xterm

PYTHONSTARTUP=~/.startup.py

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(pyenv virtualenv-init -)"
PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Start the X server
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
