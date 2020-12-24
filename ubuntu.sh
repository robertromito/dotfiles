#!/bin/bash
# Setup file for Windows Subsystem for Linux
dotdir=$(pwd)

grep -q ". $HOME/dotfiles/bash/ubuntu.bash" ~/.bashrc || echo ". $HOME/dotfiles/bash/ubuntu.bash" >> ~/.bashrc

ln_cmd='ln -sfn'

# git stuff
$ln_cmd $dotdir/git/.gitconfig ~/.gitconfig

# terminator
mkdir -p ~/.config/terminator
$ln_cmd $dotdir/terminator/config ~/.config/terminator/config

sudo apt-get -y install powerline powerline-gitstatus
mkdir -p ~/.config/powerline
cp -r /usr/share/powerline/config_files/* ~/.config/powerline/

$ln_cmd $dotdir/tmux.conf ~/.tmux.conf
