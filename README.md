# dotfiles

My dotfiles for OSX.  Currently included:
* [tmux](https://tmux.github.io/)
* [vim](http://vim.org)

## Pre-installation

First, install [Homebrew](http://brew.sh),
and [Xcode Command-Line Tools](https://goo.gl/rjiP5B),
and [Nerd Fonts](https://nerdfonts.com/).

Then:
```bash
brew tap Goles/battery

brew update && brew install       \
    git                           \
    tig                           \
    vim --with-override-system-vi \
    the_silver_searcher           \
    ctags                         \
    tmux                          \
    battery                       \
    reattach-to-user-namespace

brew doctor

gem install bundler gem-ctags
gem ctags
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
