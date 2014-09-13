# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi


c_red='\e[31;1m'
c_green='\e[32;1m'
c_default='\e[m'
export PS1="\u@\h $c_green\W \$(if [ \$? != 0 ]; then echo \"$c_red\"; else echo \"$c_green\"; fi)\$ $c_default"
unset c_red c_green c_default
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --show-control-chars --color=auto -h'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep -n --color=auto'
    alias fgrep='fgrep -n --color=auto'
    alias egrep='egrep -n --color=auto'
else
    alias ls='ls --show-control-chars -h'
    alias grep='grep -n'
    alias fgrep='fgrep -n'
    alias egrep='egrep -n'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias clr='clear'
alias less='/usr/share/vim/vim74/macros/less.sh'
alias mkdir='mkdir -p -v'
alias mv='mv -i -v'
alias rm='rm -I -v'
alias gcc='gcc -std=c11 -Wall -pedantic'
alias g++='g++ -std=c++11 -Wall -pedantic'
alias clang='clang -std=c11 -Wall -pedantic'
alias clang++='clang++ -std=c++11 -Wall -pedantic'
alias arsync='rsync -zcvrR --delete'
alias pgerp='pgrep -l'

export EDITOR=vim
export CFLAGS="-std=c11 -Wall -pedantic"
export CPPFLAGS="-std=c++11 -Wall -pedantic"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
