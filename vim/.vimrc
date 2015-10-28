"-- PLUGINS ----------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'ctrlpvim/ctrlp.vim'	" Fuzzy search on filenames
Plug 'rking/ag.vim'		" Search within files

call plug#end()


"-- APPEARANCE -------------------------------------------------------
colorscheme sourcerer
syntax on

" Highlighting for column 81+
let &colorcolumn=join(range(81,999),",")

set relativenumber
set number
