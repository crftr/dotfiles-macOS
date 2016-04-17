#!/bin/zsh
#
# source: github.com/crftr/dotfiles/.install.zsh
#


echo "$fg[green]Symlinking dotfiles -----------------------"

for f in *; do
  BASE=`basename $f`;
  CWD=`pwd`
  # Don't link install script or dotfiles
  if [[ ("${BASE:0:1}" == ".")]]; then
    continue
  fi
  ln -sin "${CWD}/${BASE}" "${HOME}/.${BASE}"
done

echo "$fg[green]VIM ---------------------------------------"

echo "VIM: downloading vim-plug ..."
curl -s -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "VIM: downloading and installing plugins ..."
vim +PlugInstall +qall

echo "FIN!"
