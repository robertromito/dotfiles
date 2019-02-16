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
rm -rf $vim_plugins/ale ; git clone https://github.com/w0rp/ale.git $vim_plugins/ale
rm -rf $vim_plugins/jedi-vim ; git clone --recursive https://github.com/davidhalter/jedi-vim.git $vim_plugins/jedi-vim
rm -rf $vim_plugins/nerdtree ; git clone --recursive https://github.com/scrooloose/nerdtree.git $vim_plugins/nerdtree

# my website stuff
hugo_version=0.54.0
hugo_file=hugo_${hugo_version}_Linux-64bit.tar.gz
wget https://github.com/gohugoio/hugo/releases/download/v${hugo_version}/${hugo_file}
sudo tar -xzvf ${hugo_file} -C /usr/local/bin hugo
rm ${hugo_file}
