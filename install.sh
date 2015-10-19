#!/bin/bash
#
# author: Mike Herrera
# source: github.com/crftr/dotfiles/install.sh
#
# Let's configure your applications!
#

# --- VIM ---------------------------------------

# Create the necessary symlink 
rm -f ~/.vimrc
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc

# Download vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Download and install VIM plugins
vim +PlugInstall +qall
