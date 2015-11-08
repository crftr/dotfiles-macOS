# dotfiles

My dotfiles for OSX

## Pre-installation

#### Update VIM

The stock OS X El Capitan version of vim will not honor all `.vimrc` directives.
Save yourself the confusion of troubleshooting the incompatibilities -- install
over the system vim.

```bash
$ brew update
$ brew install vim --override-system-vi
```

## Install

Clone the repo locally
```bash
$ git clone git@github.com:crftr/dotfiles.git ~/dotfiles
```

Run the install script
```bash
$ ~/dotfiles/install.zsh
```
