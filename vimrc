"-- PLUGINS ----------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-ruby/vim-ruby'

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'    " Fuzzy search on filenames
Plug 'rking/ag.vim'          " Search within files

call plug#end()

"-- BEHAVIOR ---------------------------------------------------------
set nocompatible             " We're running Vim
set hidden
set clipboard=unnamed        " Use the OSX clipboard

filetype on                  " Enable filetype detection
filetype plugin on           " Enable filetype-specific plugins
filetype indent on           " Enable filetype-specific indenting

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" Backups are cool, just don't write them all over the place
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

let NERDTreeShowHidden=1     " Show dotfiles by default

"-- APPEARANCE -------------------------------------------------------
syntax on                    " Enable syntax highlighting
colorscheme sourcerer

set relativenumber
set number
set textwidth=80
set colorcolumn=+1

"-- LOAD OTHERS ------------------------------------------------------
source ~/.vim/mappings.vim
