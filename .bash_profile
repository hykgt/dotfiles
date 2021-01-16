#!/usr/bin/env bash
PS1='\[\e[36m\][\D{%y/%m/%d} \A] \[\e[33m\]\W\[\e[0m\]\$ '
if [ "$(uname)" == "Darwin" ]; then
  alias ll='ls -laF -G'
  export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
  PATH=/usr/local/opt/openssl/bin:$PATH
elif [ "$(uname)" == "Linux" ]; then
  alias ll='ls -laF --color'
  export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
  #export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
  PATH=/mnt/c/hiyoko/apps:$PATH
  #shopt -s expand_aliases
  #set -o igncr
else
  echo Unknown OS
fi
alias grep='grep --color -n '
alias mntk='sudo mount -t drvfs k:\\ /mnt/k -o noatime,uid=1000,gid=1000,metadata,umask=22,fmask=111'
alias umntk='sudo umount /mnt/k'
export PATH
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export LESS='-I -R -N -M -W -x2'
export SHELLOPTS

if [ -f ~/.remotes ]; then
  . ~/.remotes
fi

