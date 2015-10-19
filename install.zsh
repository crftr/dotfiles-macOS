#!/bin/zsh
#
# author: Mike Herrera
# source: github.com/crftr/dotfiles/install.sh
#

# --- VIM ---------------------------------------

echo "VIM: symlinking .vimrc ..."
rm -f ~/.vimrc
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc

echo "VIM: downloading vim-plug ..."
curl -s -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "VIM: downloading and installing plugins ..."
vim +PlugInstall +qall

echo "FIN!"
