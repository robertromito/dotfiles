#!/bin/bash
# Setup file for Windows Subsystem for Linux
dotdir=$(pwd)

ln_cmd='ln -sfn'

$ln_cmd $dotdir/zsh/zsh.rc ~/.zshrc
$ln_cmd $dotdir/git/.gitconfig ~/.gitconfig
$ln_cmd $dotdir/tmux.conf ~/.tmux.conf
