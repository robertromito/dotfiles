#!/bin/bash
# Setup file for Windows Subsystem for Linux
grep -q ". dotfiles/bash/wsl.bash" ~/.bashrc || echo ". dotfiles/bash/wsl.bash" >> ~/.bashrc

dotdir=$(pwd)
ln_cmd='ln -sfn'

$ln_cmd $dotdir/git/.gitconfig ~/.gitconfig
$ln_cmd $dotdir/vim/.vimrc ~/.vimrc
