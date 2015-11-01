# base-files version 3.7-1

# To pick up the latest recommended .bashrc content,
# look in /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# Shell Options
# #############

# See man bash for more options...

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# Use case-insensitive filename globbing
# shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
# shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell


# Completion options
# ##################

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1

# If this shell is interactive, turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# case $- in
#   *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion ;;
# esac


# History Options
# ###############

# Don't put duplicate lines in the history.
export HISTCONTROL="ignoredups"

# Ignore some controlling instructions
export HISTIGNORE="[   ]*:&:bg:fg:exit"

# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
# Source from ~/.bash_aliases
#if [ -f ~/.bash_aliases ];
#then . ~/.bash_aliases
#fi

# Functions
# #########

# Some example functions
function settitle() { echo -ne "\e]2;$@\a\e]1;$@\a"; }

# Sets bash for vi mode
set -o vi

# Customize color for ls
LS_COLORS='tw=01;30:ow=01;34'
export LS_COLORS

# PATH additions
# export PATH=$PATH:$HOME/sdk/tools/
# export PATH=$PATH:$HOME/sdk/platform-tools/
# export PATH=$PATH:$HOME/eclipse/
#export PATH=$PATH:$HOME/bin/
#export PATH=/cygdrive/c/Program\ Files\ \(x86\)/Java/jdk1.8.0_25/bin/:$PATH
#export CLASSPATH="C:\\Program Files (x86)\\Java\\jre7\\lib\\ext\\junit-4.10.jar;"$CLASSPATH

# Run fortune at startup
#fortune -a

# Python
#PYTHONPATH=$HOME/lib/python
#EDITOR=vim
#export PYTHONPATH EDITOR

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour

# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty -X --group-directories-first'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #

# Custom stuff
# alias vi='screen -t "vim" vim'
alias vi='vim'
alias info='info --vi-keys'
# alias irssi='screen irssi -c irc.freenode.net -n tzhuang'
alias irssi='irssi -c irc.freenode.net -n tzhuang'

# Reloads ~/.bashrc
alias ref='. ~/.bashrc'

# Junit
alias junit='java org.junit.runner.JUnitCore '

alias heroku='heroku.bat'
