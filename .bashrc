# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Override cd and create bd
# Source: http://mhoffman.github.io/2015/05/21/how-to-navigate-directories-with-the-shell.html
# Use bd like popd
# bd also accepts a number n as an argument which let’s you step back n directories at a time
# If cd arg is a file, will open with system editor

function cd() {
  if [ "$#" = "0" ]
  then
  pushd ${HOME} > /dev/null
  elif [ -f "${1}" ]
  then
    ${EDITOR} ${1}
  else
  pushd "$1" > /dev/null
  fi
}

function bd(){
  if [ "$#" = "0" ]
  then
    popd > /dev/null
  else
    for i in $(seq ${1})
    do
      popd > /dev/null
    done
  fi
}

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${GREEN}\u@\h:\w> ${RESET}"
TERM=xterm
CDPATH=$CDPATH:~/proj/crank
# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar
# automatically corrects small typos in directory names and jumps to the best guess of existing directories
shopt -s cdspell

# vi mode
set -o vi
# Free stop from ^S so that it can be used for forward-search-history
stty stop undef

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# added by travis gem
#[ -f /home/tianming/.travis/travis.sh ] && source /home/tianming/.travis/travis.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
