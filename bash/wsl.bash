# Make typing be vim-ish
export EDITOR=vi
set -o vi

# So I can use docker running on the Windows side
export DOCKER_HOST=tcp://localhost:2375

# Git prompt stuff
. ~/dotfiles/git/git-completion.bash
. ~/dotfiles/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=verbose
export GIT_PS1_SHOWCOLORHINTS=1

export PS1='\w$(__git_ps1 " (%s)")
[\!] \$ '

alias ssha='eval $(ssh-agent); ~/dotfiles/ssh-init'

export TODOTXT_DEFAULT_ACTION=ls
alias t='~/pwiki/todotxtcli/todo.sh -d ~/pwiki/.todo.cfg'

# Auto start/detect ssh agent. 
# Thanks MS! https://code.visualstudio.com/docs/remote/troubleshooting#_wsl-tips
echo "Setting up ssh-agent"
if [ -z "$SSH_AUTH_SOCK" ]
then
   echo "SSH_AUTH_SOCK not setup. Checking for running agents."
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]
   then
        echo "No agents running. Launching a new one."
        ssh-agent -s &> ~/.ssh/ssh-agent
   fi
   eval `cat ~/.ssh/ssh-agent`
fi
