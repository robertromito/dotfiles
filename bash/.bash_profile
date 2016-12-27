if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

export TODOTXT_DEFAULT_ACTION=ls
alias t="todo.sh -t -d ~/pwiki/.todo.cfg"
export EDITOR=vi
export JAVA_HOME=`/usr/libexec/java_home`
export PLANTUML_JAR=/usr/local/Cellar/plantuml/8048/libexec/plantuml.jar
