case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PS1='\[\e[36m\][\D{%y/%m/%d} \A] \[\e[33m\]\W\[\e[0m\]\$ '

alias grep='grep --color -n '
alias mntk='sudo mount -t drvfs k:\\ /mnt/k -o noatime,uid=1000,gid=1000,metadata,umask=22,fmask=111'
alias umntk='sudo umount /mnt/k'

if [ "$(uname)" == "Darwin" ]; then
  alias ll='ls -laF -G'
elif [ "$(uname)" == "Linux" ]; then
  alias ll='ls -laF --color'
  shopt -s expand_aliases
  #set -o igncr
else
  echo Unknown OS
fi

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
