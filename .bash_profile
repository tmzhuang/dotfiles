#pathappend() {
  #for ARG in "$@"
  #do
    #if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
      #export PATH="${PATH:+"$PATH:"}$ARG"
    #fi
  #done
#}

#pathprepend() {
  #for ((i=$#; i>0; i--)); 
  #do
    #ARG=${!i}
    #if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
      #export PATH="$ARG${PATH:+":$PATH"}"
    #fi
  #done
#}

export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=
export HISTFILESIZE=

# Set editor
export VISUAL=vim
export EDITOR="$VISUAL"
export SYSTEMD_EDITOR="$VISUAL"

# Add user bin
### Added by the Heroku Toolbelt
#pathprepend /usr/local/heroku/bin
#pathprepend $HOME/.rbenv/bin
#eval "$(rbenv init -)"
export PATH="$HOME/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Virtualbox opengl
export LD_PRELOAD=/usr/lib/VBoxOGL.so

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Start the X server
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
