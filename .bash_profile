#!/usr/bin/env bash
#PS1='\u@\h:$ '
#PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '
PS1='\[\e[36m\][\D{%y/%m/%d} \A] \[\e[33m\]\W\[\e[0m\]\$ '
PATH=$PATH:"/cygdrive/C/hiyoko/app/Java/jre1.8.0_144/bin"
export PATH
if [ "$(uname)" == "Darwin" ]; then
  alias ll='ls -laF -G'
  export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
  export PATH=/usr/local/opt/openssl/bin:$PATH
elif [ "$(expr substr $(uname) 1 6)" == "CYGWIN" ]; then
  alias ll='ls -laF --color'
  export JAVA_HOME=/cygdrive/c/hiyoko/app/Java/jdk1.8.0_144
  export LESSOPEN='| /usr/bin/src-hilite-lesspipe.sh %s'
else
  echo Unknown OS
fi
alias grep='grep --color -n '
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export LESS='-I -R -N -M -W -x2'

if [ -f ~/.remotes ]; then
  . ~/.remotes
fi

