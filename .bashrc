# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias less='/usr/share/vim/vim81/macros/less.sh'
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
c_red='\[\e[31;1m\]'
c_green='\[\e[32;1m\]'
c_default='\[\e[m\]'
export PS1="[\u@\h]\w\n\$(if [ \$? != 0 ]; then echo \"$c_red\"; else echo \"$c_green\"; fi)\$ $c_default"
unset c_red c_green c_default
source /etc/profile.d/cnf.sh
PATH="$PATH:/home/sahib/.local/bin"
export HISTCONTROL="ignoredups:$HISTCONTROL"
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AUTH_SOCK" == "" ]]; then
    eval "$(< ~/.ssh-agent-thing)"
fi
alias ssh='TERM=xterm ssh'
export GEM_HOME="$HOME/gems"
export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

# opam configuration
test -r /home/sahib/.opam/opam-init/init.sh && . /home/sahib/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
