#!/bin/zsh

# VIM
echo ""
echo "VIM: linking dotfiles"
rm -rf ~/.vim ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc

echo "VIM: downloading vim-plug ..."
curl -s -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "VIM: downloading and installing plugins ..."
vim +PlugInstall +qall

# TMUX
echo ""
echo "TMUX: linking dotfiles"
rm -f ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# BIN
echo ""
echo "BIN: linking bin scripts"
rm -f /usr/local/bin/tat
ln -s ~/dotfiles/bin/tat /usr/local/bin/tat

# That's all folks...
echo "\n\nINSTALLATION COMPLETE\n\n"
