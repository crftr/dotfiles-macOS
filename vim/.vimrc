"-- PLUGINS ----------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-ruby/vim-ruby'

Plug 'ctrlpvim/ctrlp.vim'    " Fuzzy search on filenames
Plug 'rking/ag.vim'          " Search within files

call plug#end()

"-- BEHAVIOR ---------------------------------------------------------
set nocompatible             " We're running Vim, not Vi!
set relativenumber
set number

filetype on                  " Enable filetype detection
filetype plugin on           " Enable filetype-specific plugins
filetype indent on           " Enable filetype-specific indenting

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

"-- APPEARANCE -------------------------------------------------------
syntax on                    " Enable syntax highlighting
colorscheme sourcerer

" Highlighting for column 81+
let &colorcolumn=join(range(81,999),",")

