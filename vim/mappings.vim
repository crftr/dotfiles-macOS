
let mapleader = "\<Space>"

" NERDTree
let NERDTreeShowHidden = 1   " Show dotfiles by default
let NERDTreeWinSize    = 40
map <silent> <C-e> :NERDTreeToggle<CR>

" incsearch.vim
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Format the entire file
nmap <leader>fef mmgg=G`m
