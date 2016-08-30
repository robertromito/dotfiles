#!/bin/bash
ln -sfn ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sfn ~/.dotfiles/bash/.bash_profile ~/.bash_profile
ln -sfn ~/.dotfiles/bash/.bash_profile ~/.bashrc
ln -sfn ~/.dotfiles/vim/.vimrc ~/.vimrc

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install git bash-completion bash-git-prompt todo-txt tree ag
