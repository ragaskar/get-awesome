#puts port in path
export PATH=$PATH:/opt/local/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info
export EDITOR=vim

#shell colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad

#tab completion
if [ -f /opt/local/etc/bash_completion ]; then
   . /opt/local/etc/bash_completion
fi
complete -C ~/get-awesome/rake_completion -o default rake

alias gpp="git pull && git push"
alias grep="grep --color"
alias pair="~/get-awesome/pair $@"

#remove all gems
function uninstall_all_gems {
  INSTALLED_GEMS=`gem list --no-versions`;
  for gem_name in $INSTALLED_GEMS; do
sudo gem uninstall --a --ignore-dependencies $gem_name;
  done
}

# search for a running process
function show {
  ps -ax | grep -v grep | grep "$1";
}

#git branch display
function proml {
 local        BLUE="\[\033[0;34m\]"
 local         RED="\[\033[0;31m\]"
 local   LIGHT_RED="\[\033[1;31m\]"
 local       GREEN="\[\033[0;32m\]"
 local LIGHT_GREEN="\[\033[1;32m\]"
 local       YELLOW="\[\033[0;33m\]"
 local       WHITE="\[\033[1;37m\]"
 local  LIGHT_GRAY="\[\033[0;37m\]"
 local        GRAY="\[\033[1;30m\]"
 local       RESET="\[\033[0m\]"
 export PS1="$RESET\u@\h: \w$GREEN\$(parse_git_branch)$RESET$ "
}
function parse_git_branch {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
proml
