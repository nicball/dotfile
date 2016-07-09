alias clr='clear'
alias less='/usr/share/vim/vim74/macros/less.sh'
alias mkdir='mkdir -p -v'
alias mv='mv -i -v'
alias rm='rm -I -v'
alias arsync='rsync -zcvrR --delete'
alias pgerp='pgrep -l'

export EDITOR=vim
export CFLAGS="-std=c11 -Wall -pedantic"
export CPPFLAGS="-std=c++11 -Wall -pedantic"

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/.local/lib" ]; then
    export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
fi

c_red='\[\e[31;1m\]'
c_green='\[\e[32;1m\]'
c_default='\[\e[m\]'
export PS1="[\u@\h]\w\n\$(if [ \$? != 0 ]; then echo \"$c_red\"; else echo \"$c_green\"; fi)\$ $c_default"
unset c_red c_green c_default
