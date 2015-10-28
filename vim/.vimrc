call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'ctrlpvim/ctrlp.vim'	" Fuzzy search on filenames
Plug 'rking/ag.vim'		" Search within files

call plug#end()

set relativenumber
set number

" Highlighting for column 81+
let &colorcolumn=join(range(81,999),",")
