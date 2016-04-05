#!/bin/bash
ln -sfn ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sfn ~/.dotfiles/bash/.bash_profile ~/.bash_profile
ln -sfn ~/.dotfiles/bash/.bash_profile ~/.bashrc

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install git bash-completion bash-git-prompt todo-txt
