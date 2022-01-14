#!/bin/bash
# Setup file for Windows Subsystem for Linux
dotdir=$(pwd)

# This needs to be a cp instead of a link because I change the root mount in /etc/wsl.conf
sudo cp $dotdir/wsl/wsl.conf /etc/wsl.conf

ln_cmd='ln -sfn'

# git stuff
$ln_cmd $dotdir/git/.gitconfig ~/.gitconfig
$ln_cmd $dotdir/git/.gitconfig-wsl ~/.gitconfig-wsl

# tmux stuff
$ln_cmd $dotdir/tmux.conf ~/.tmux.conf

