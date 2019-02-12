#!/bin/bash
# Setup file for Windows Subsystem for Linux
dotdir=$(pwd)

grep -q ". $HOME/dotfiles/bash/wsl.bash" ~/.bashrc || echo ". $HOME/dotfiles/bash/wsl.bash" >> ~/.bashrc

ln_cmd='ln -sfn'

sudo $ln_cmd $dotdir/wsl/wsl.conf /etc/wsl.conf

# git stuff
$ln_cmd $dotdir/git/.gitconfig ~/.gitconfig
$ln_cmd $dotdir/git/.gitconfig-wsl ~/.gitconfig-wsl

# tmux stuff
$ln_cmd $dotdir/tmux.conf ~/.tmux.conf

# vim stuff
vim_plugins=~/.vim/pack/plugins/start
vim_colors=~/.vim/colors
$ln_cmd $dotdir/vim/.vimrc ~/.vimrc
mkdir -p $vim_plugins $vim_colors
git clone https://github.com/w0rp/ale.git $vim_plugins/ale
git clone https://github.com/davidhalter/jedi-vim.git $vim_plugins/jedi-vim
