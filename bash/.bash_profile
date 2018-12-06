if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

export TODOTXT_DEFAULT_ACTION=ls
export TODOHOME=~/pwiki/todo.txt_cli-2.10
export EDITOR=vi

chmod 755 $TODOHOME/todo.sh
alias t="$TODOHOME/todo.sh -t -d ~/pwiki/.todo.cfg"
