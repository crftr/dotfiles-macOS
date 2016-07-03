" https://github.com/christoomey/vim-tmux-runner
"
" A plugin to send commands from a vim buffer (or file)
" to an open tmux session
"
nnoremap <leader>va :VtrAttachToPane
nnoremap <leader>ror :VtrReorientRunner
nnoremap <leader>sc :VtrSendCommandToRunner
nnoremap <leader>sl :VtrSendLinesToRunner
vnoremap <leader>sl :VtrSendLinesToRunner
nnoremap <leader>or :VtrOpenRunner
nnoremap <leader>kr :VtrKillRunner
nnoremap <leader>fr :VtrFocusRunner
nnoremap <leader>dr :VtrDetachRunner
nnoremap <leader>cr :VtrClearRunner
nnoremap <leader>fc :VtrFlushCommand
nnoremap <leader>sf :VtrSendFile
