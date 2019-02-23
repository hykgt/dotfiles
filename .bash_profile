#!/usr/bin/env bash
PS1='\[\e[36m\][\D{%y/%m/%d} \A] \[\e[33m\]\W\[\e[0m\]\$ '
if [ "$(uname)" == "Darwin" ]; then
  alias ll='ls -laF -G'
  export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
  export PATH=/usr/local/opt/openssl/bin:$PATH
elif [ "$(uname)" == "Linux" ]; then
  alias ll='ls -laF --color'
  export JAVA_HOME=/mnt/c/hiyoko/apps/Java/jdk1.8.0_192/bin
  export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
  export PATH=/mnt/c/hiyoko/apps/Java/jre1.8.0_192/bin:/mnt/c/hiyoko/apps/Java/jdk1.8.0_192/bin:$PATH
  #set -o igncr
else
  echo Unknown OS
fi
alias grep='grep --color -n '
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export LESS='-I -R -N -M -W -x2'
export SHELLOPTS

if [ -f ~/.remotes ]; then
  . ~/.remotes
fi

