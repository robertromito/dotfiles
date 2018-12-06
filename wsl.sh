#!/bin/bash
# Setup file for Windows Subsystem for Linux
grep -q ". $HOME/dotfiles/bash/wsl.bash" ~/.bashrc || echo ". $HOME/dotfiles/bash/wsl.bash" >> ~/.bashrc

dotdir=$(pwd)
ln_cmd='ln -sfn'

$ln_cmd $dotdir/git/.gitconfig ~/.gitconfig
$ln_cmd $dotdir/git/.gitconfig-wsl ~/.gitconfig-wsl
$ln_cmd $dotdir/vim/.vimrc ~/.vimrc

sudo $ln_cmd $dotdir/wsl/wsl.conf /etc/wsl.conf
