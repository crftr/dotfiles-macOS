# dotfiles

My dotfiles for OSX

## Pre-installation

First, install [Homebrew](http://brew.sh)
and [Xcode Command-Line Tools](https://goo.gl/rjiP5B).

Then:
```bash
brew tap Goles/battery

brew update && brew install  \
    git                      \
    vim --override-system-vi \
    the_silver_searcher      \
    tmux                     \
    battery

brew upgrade --cleanup && brew doctor
```

## Install

Clone the repo locally
```bash
git clone git@github.com:crftr/dotfiles.git ~/dotfiles
```

Run the install script
```bash
~/dotfiles/install.zsh
```
