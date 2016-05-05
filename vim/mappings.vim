
let mapleader = "\<Space>"

" NERDTree
let NERDTreeShowHidden = 1   " Show dotfiles by default
let NERDTreeWinSize    = 40
map <silent> <C-e> :NERDTreeToggle<CR>

" Format the entire file
nmap <leader>fef mmgg=G`m
