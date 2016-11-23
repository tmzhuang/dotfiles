# #######

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
alias ll='ls -alF'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #

# Custom stuff
# alias vi='screen -t "vim" vim'
alias vi='vim'
alias xclip='xclip -selection c'
alias sudo='sudo -E '
alias info='info --vi-keys'
# alias irssi='screen irssi -c irc.freenode.net -n tzhuang'
alias irssi='irssi -c irc.freenode.net -n tzhuang'

# Reloads ~/.bashrc
alias ref='. ~/.bashrc'

alias git='hub'

# Termite
alias here='pwd | xclip'
alias there='cd `xclip -o`'

# Gradle
alias gradle='gw'
alias gt='gw -DDEBUG=true test'
alias jda='jdb -attach 5005'
