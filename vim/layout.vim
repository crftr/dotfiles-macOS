" Automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Zoom a vim pane
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>

" Re-balance all vim panes
nnoremap <leader>= :wincmd =<cr>
