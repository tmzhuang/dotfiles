# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

pathappend() {
  for ARG in "$@"
  do
    if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
      PATH="${PATH:+"$PATH:"}$ARG"
    fi
  done
}

pathprepend() {
  for ((i=$#; i>0; i--)); 
  do
    ARG=${!i}
    if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
      PATH="$ARG${PATH:+":$PATH"}"
    fi
  done
}

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${GREEN}\u@\h:\w> ${RESET}"
#PS1="\[\e[0;32m\]$ \[\e[0;0m\]"
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
pathappend $HOME/bin
### Added by the Heroku Toolbelt
pathprepend /usr/local/heroku/bin
pathprepend $HOME/.rbenv/bin
eval "$(rbenv init -)"

# Start the X server
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# Enable VirtualBox guest additions for Arch Linux
VBoxClient-all

# added by travis gem
[ -f /home/tianming/.travis/travis.sh ] && source /home/tianming/.travis/travis.sh
