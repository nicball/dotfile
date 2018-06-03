# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias less='/usr/share/vim/vim80/macros/less.sh'
alias mkdir='mkdir -p -v'
alias mv='mv -i -v'
alias rm='rm -I -v'
alias pgrep='pgrep -l'
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -ah --color=auto'
alias ll='ls -lh --color=auto'
alias fuck='git commit -am "$(curl -s http://whatthecommit.com/index.txt)"'

export EDITOR=vim
export CFLAGS="-Wall -pedantic"
export CPPFLAGS="-std=c++14 -Wall -pedantic"

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

c_red='\[\e[31;1m\]'
c_green='\[\e[32;1m\]'
c_default='\[\e[m\]'
export PS1="[\u@\h]\w\n\$(if [ \$? != 0 ]; then echo \"$c_red\"; else echo \"$c_green\"; fi)\$ $c_default"
unset c_red c_green c_default

shopt -s autocd
source /etc/profile.d/cnf.sh

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
PATH="$PATH:/home/sahib/.local/bin"

eval "$(pandoc --bash-completion)"
