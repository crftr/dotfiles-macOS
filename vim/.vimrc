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

map <silent> <C-E> :call ToggleVExplorer()<CR>

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
	if exists("t:expl_buf_num")
		let expl_win_num = bufwinnr(t:expl_buf_num)
		if expl_win_num != -1
			let cur_win_nr = winnr()
			exec expl_win_num . 'wincmd w'
			close
			exec cur_win_nr . 'wincmd w'
			unlet t:expl_buf_num
		else
			unlet t:expl_buf_num
		endif
	else
		exec '1wincmd w'
		Vexplore
		let t:expl_buf_num = bufnr("%")
	endif
endfunction
