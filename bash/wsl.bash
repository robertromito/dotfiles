export DOCKER_HOST=tcp://localhost:2375
export EDITOR=vi

. ~/dotfiles/git/git-completion.bash
. ~/dotfiles/git/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=verbose
export GIT_PS1_SHOWCOLORHINTS=1

export PS1='\w$(__git_ps1 " (%s)")\$ '
