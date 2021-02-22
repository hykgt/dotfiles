if [ "$(uname)" == "Darwin" ]; then
  export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
  PATH=/usr/local/opt/openssl/bin:$PATH
elif [ "$(uname)" == "Linux" ]; then
  #export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
  export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
  PATH=/mnt/c/hiyoko/apps:$PATH
else
  echo Unknown OS
fi

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

#export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'
#Not required on ubuntu: export SHELLOPTS
export LESS='-I -R -N -M -W -x2'

if [ -f ~/.remotes ]; then
  . ~/.remotes
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

