#PS1='\u@\h:$ '
#PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '
#PS1='\[\e]0;\w\a\]\[\e[32m\]hiyoko@\h \[\e[33m\]\w\[\e[0m\]\$ '
#export CYGWIN="winsimlinks:native"
#export DISPLAY=localhost:0
PS1='\[\e[36m\][\D{%y/%m/%d} \A] \[\e[33m\]\W\[\e[0m\]\$ '
#alias ll='ls -laF -G'
alias ll='ls -laF --color'
alias grep='grep --color -n '
PATH=$PATH:"/cygdrive/C/hiyoko/app/Java/jre1.8.0_144/bin"
export PATH
JAVA_HOME=/cygdrive/c/hiyoko/app/Java/jdk1.8.0_144
export JAVA_HOME
_JAVA_OPTIONS='-Dfile.encoding=UTF-8'
export _JAVA_OPTIONS
export LESS='-I -R -N -M -W -x2'
export LESSOPEN='| /usr/bin/src-hilite-lesspipe.sh %s'

