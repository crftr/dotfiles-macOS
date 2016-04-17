"-- PLUGINS ----------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-ruby/vim-ruby'

Plug 'ctrlpvim/ctrlp.vim'    " Fuzzy search on filenames
Plug 'rking/ag.vim'          " Search within files

call plug#end()

"-- BEHAVIOR ---------------------------------------------------------
set nocompatible             " We're running Vim
set relativenumber
set number
set clipboard=unnamed        " Use the OSX clipboard

filetype on                  " Enable filetype detection
filetype plugin on           " Enable filetype-specific plugins
filetype indent on           " Enable filetype-specific indenting

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

"-- APPEARANCE -------------------------------------------------------
syntax on                    " Enable syntax highlighting
colorscheme sourcerer

set textwidth=80
set colorcolumn=+1

let g:netrw_banner    = 0    " No banner
let g:netrw_liststyle = 3    " 'tree' is the default listing style
let g:netrw_preview   = 1    " When previewing, use vertical splitting
let g:netrw_winsize   = -40  " When previewing, listing will use 40 cols
let g:netrw_browse_split = 4 " Open file in the previous window

"-- LOAD OTHERS ------------------------------------------------------
source ~/.vim/functions.vim
source ~/.vim/mappings.vim
