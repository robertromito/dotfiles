#!/bin/bash
# Setup for macOS
dotdir=$(pwd)
ln_cmd='ln -sfn'

$ln_cmd $dotdir/git/.gitconfig ~/.gitconfig
$ln_cmd $dotdir/bash/.bash_profile ~/.bash_profile
$ln_cmd $dotdir/bash/.bash_profile ~/.bashrc
$ln_cmd $dotdir/vim/.vimrc ~/.vimrc

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install git bash-completion bash-git-prompt tree wget
