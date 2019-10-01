# dotfiles-macOS

My dotfiles for macOS.  Currently included:
* [tmux](https://tmux.github.io)
* [vim](https://www.vim.org/)
* [spacemacs](http://spacemacs.org)

## Pre-installation

First install [Homebrew](http://brew.sh),
[ZSH and Oh My Zsh](https://ohmyz.sh),
[Xcode Command-Line Tools](https://goo.gl/rjiP5B),
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
