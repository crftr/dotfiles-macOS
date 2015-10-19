# VIM

Currently using [`vim-plug`](https://github.com/junegunn/vim-plug) as a package manager.

## Install

From the terminal

```bash
# Create the necessary symlink 
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc

# Download vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Now open `vim` and download/install the plugins

```
:PlugInstall
```
