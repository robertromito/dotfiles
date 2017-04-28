#!/bin/bash
dotdir=~/.dotfiles
ln_cmd='ln -sfn'

$ln_cmd $dotdir/git/.gitconfig ~/.gitconfig
$ln_cmd $dotdir/bash/.bash_profile ~/.bash_profile
$ln_cmd $dotdir/bash/.bash_profile ~/.bashrc
$ln_cmd $dotdir/vim/.vimrc ~/.vimrc

$ln_cmd ~/.dotfiles/ssh-add-my-keys ~/ssh-add-my-keys
chmod 700 ~/.dotfiles/ssh-add-my-keys

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install git bash-completion bash-git-prompt todo-txt tree wget
