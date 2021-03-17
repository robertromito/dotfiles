#!/bin/bash
# Setup for macOS
dotdir=$(pwd)
ln_cmd='ln -sfn'

$ln_cmd $dotdir/git/.gitconfig ~/.gitconfig
$ln_cmd $dotdir/git/.gitconfig-macos ~/.gitconfig-macos
$ln_cmd $dotdir/tmux.conf ~/.tmux.conf
