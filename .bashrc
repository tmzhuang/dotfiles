# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${GREEN}\u@\h:\w> ${RESET}"
TERM=xterm
# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# vi mode
set -o vi
# Free stop from ^S so that it can be used for forward-search-history
stty stop undef

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# added by travis gem
#[ -f /home/tianming/.travis/travis.sh ] && source /home/tianming/.travis/travis.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
