#!/bin/zsh

echo "$fg[green]VIM ---------------------------------------"

echo "VIM: linking dotfiles"
rm -rf ~/.vim ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc

echo "VIM: downloading vim-plug ..."
curl -s -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "VIM: downloading and installing plugins ..."
vim +PlugInstall +qall

echo "$fg[green]TMUX --------------------------------------"

echo "TMUX: linking dotfiles"
rm -f ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

echo "INSTALLATION COMPLETE"
